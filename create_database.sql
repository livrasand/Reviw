BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Publication" (
	"PublicationId"	INTEGER,
	"VersionNumber"	INTEGER,
	"Type"	INTEGER,
	"Title"	TEXT,
	"TitleRich"	TEXT,
	"RootSymbol"	TEXT,
	"RootYear"	INTEGER,
	"RootMepsLanguageIndex"	INTEGER,
	"ShortTitle"	TEXT,
	"ShortTitleRich"	TEXT,
	"DisplayTitle"	TEXT,
	"DisplayTitleRich"	TEXT,
	"ReferenceTitle"	TEXT,
	"ReferenceTitleRich"	TEXT,
	"UndatedReferenceTitle"	TEXT,
	"UndatedReferenceTitleRich"	TEXT,
	"Symbol"	TEXT NOT NULL,
	"UndatedSymbol"	TEXT,
	"UniqueSymbol"	TEXT,
	"EnglishSymbol"	TEXT,
	"UniqueEnglishSymbol"	TEXT NOT NULL,
	"IssueTagNumber"	TEXT,
	"IssueNumber"	INTEGER,
	"Variation"	TEXT,
	"Year"	INTEGER NOT NULL,
	"VolumeNumber"	INTEGER,
	"MepsLanguageIndex"	INTEGER NOT NULL,
	"PublicationType"	TEXT,
	"PublicationCategorySymbol"	TEXT,
	"BibleVersionForCitations"	TEXT,
	"HasPublicationChapterNumbers"	BOOLEAN,
	"HasPublicationSectionNumbers"	BOOLEAN,
	"FirstDatedTextDateOffset"	DATE,
	"LastDatedTextDateOffset"	DATE,
	"MepsBuildNumber"	INTEGER,
	PRIMARY KEY("PublicationId")
);
CREATE TABLE IF NOT EXISTS "PublicationCategory" (
	"PublicationCategoryId"	INTEGER,
	"PublicationId"	,
	"Category"	TEXT,
	PRIMARY KEY("PublicationCategoryId"),
	FOREIGN KEY("PublicationId") REFERENCES "Publication"("PublicationId")
);
CREATE TABLE IF NOT EXISTS "PublicationYear" (
	"PublicationYearId"	INTEGER,
	"PublicationId"	,
	"Year"	INTEGER,
	PRIMARY KEY("PublicationYearId"),
	FOREIGN KEY("PublicationId") REFERENCES "Publication"("PublicationId")
);
CREATE TABLE IF NOT EXISTS "PublicationIssueProperty" (
	"PublicationIssuePropertyId"	INTEGER,
	"PublicationId"	INTEGER,
	"Title"	TEXT,
	"TitleRich"	TEXT,
	"UndatedTitle"	TEXT,
	"UndatedTitleRich"	TEXT,
	"CoverTitle"	TEXT,
	"CoverTitleRich"	TEXT,
	"Symbol"	TEXT,
	"UndatedSymbol"	TEXT,
	PRIMARY KEY("PublicationIssuePropertyId"),
	FOREIGN KEY("PublicationId") REFERENCES "Publication"("PublicationId")
);
CREATE TABLE IF NOT EXISTS "PublicationIssueAttribute" (
	"PublicationIssueAttributeId"	INTEGER,
	"PublicationId"	INTEGER,
	"Attribute"	TEXT,
	PRIMARY KEY("PublicationIssueAttributeId"),
	FOREIGN KEY("PublicationId") REFERENCES "Publication"("PublicationId")
);
CREATE TABLE IF NOT EXISTS "PublicationAttribute" (
	"PublicationAttributeId"	INTEGER,
	"PublicationId"	INTEGER,
	"Attribute"	TEXT,
	PRIMARY KEY("PublicationAttributeId"),
	FOREIGN KEY("PublicationId") REFERENCES "Publication"("PublicationId")
);
CREATE TABLE IF NOT EXISTS "RefPublication" (
	"RefPublicationId"	INTEGER,
	"VersionNumber"	INTEGER,
	"Type"	INTEGER,
	"Title"	TEXT,
	"TitleRich"	TEXT,
	"RootSymbol"	TEXT,
	"RootYear"	INTEGER,
	"RootMepsLanguageIndex"	INTEGER,
	"ShortTitle"	TEXT,
	"ShortTitleRich"	TEXT,
	"DisplayTitle"	TEXT,
	"DisplayTitleRich"	TEXT,
	"ReferenceTitle"	TEXT,
	"ReferenceTitleRich"	TEXT,
	"UndatedReferenceTitle"	TEXT,
	"UndatedReferenceTitleRich"	TEXT,
	"Symbol"	TEXT NOT NULL,
	"UndatedSymbol"	TEXT,
	"UniqueSymbol"	TEXT,
	"EnglishSymbol"	TEXT,
	"UniqueEnglishSymbol"	TEXT NOT NULL,
	"IssueTagNumber"	TEXT,
	"IssueNumber"	INTEGER,
	"Variation"	TEXT,
	"Year"	INTEGER NOT NULL,
	"VolumeNumber"	INTEGER,
	"MepsLanguageIndex"	INTEGER NOT NULL,
	"PublicationType"	TEXT,
	"PublicationCategorySymbol"	TEXT,
	"BibleVersionForCitations"	TEXT,
	"HasPublicationChapterNumbers"	BOOLEAN,
	"HasPublicationSectionNumbers"	BOOLEAN,
	"FirstDatedTextDateOffset"	DATE,
	"LastDatedTextDateOffset"	DATE,
	"MepsBuildNumber"	INTEGER,
	PRIMARY KEY("RefPublicationId")
);
CREATE TABLE IF NOT EXISTS "Document" (
	"DocumentId"	INTEGER,
	"PublicationId"	INTEGER,
	"MepsDocumentId"	INTEGER,
	"MepsLanguageIndex"	INTEGER,
	"Class"	TEXT,
	"Type"	INTEGER,
	"SectionNumber"	INTEGER,
	"ChapterNumber"	INTEGER,
	"Title"	TEXT,
	"TitleRich"	TEXT,
	"TocTitle"	TEXT,
	"TocTitleRich"	TEXT,
	"ContextTitle"	TEXT,
	"ContextTitleRich"	TEXT,
	"FeatureTitle"	TEXT,
	"FeatureTitleRich"	TEXT,
	"Subtitle"	TEXT,
	"SubtitleRich"	TEXT,
	"FeatureSubtitle"	TEXT,
	"FeatureSubtitleRich"	TEXT,
	"Content"	BLOB,
	"FirstFootnoteId"	INTEGER,
	"LastFootnoteId"	INTEGER,
	"FirstBibleCitationId"	INTEGER,
	"LastBibleCitationId"	INTEGER,
	"ParagraphCount"	INTEGER,
	"HasMediaLinks"	BOOLEAN,
	"HasLinks"	BOOLEAN,
	"FirstPageNumber"	INTEGER,
	"LastPageNumber"	INTEGER,
	"ContentLength"	INTEGER,
	"PreferredPresentation"	TEXT,
	"ContentReworkedDate"	TEXT,
	"HasPronunciationGuide"	BOOLEAN,
	PRIMARY KEY("DocumentId"),
	FOREIGN KEY("PublicationId") REFERENCES "Publication"("PublicationId")
);
CREATE TABLE IF NOT EXISTS "RelatedDocument" (
	"RelatedDocumentId"	INTEGER,
	"DocumentId"	INTEGER,
	"MepsDocumentId"	INTEGER,
	"RelationshipType"	INTEGER,
	PRIMARY KEY("RelatedDocumentId"),
	FOREIGN KEY("DocumentId") REFERENCES "Document"("DocumentId")
);
CREATE TABLE IF NOT EXISTS "Footnote" (
	"FootnoteId"	INTEGER,
	"DocumentId"	INTEGER,
	"FootnoteIndex"	INTEGER,
	"Type"	INTEGER,
	"Content"	BLOB,
	"BibleVerseId"	INTEGER,
	"ParagraphOrdinal"	INTEGER,
	PRIMARY KEY("FootnoteId"),
	FOREIGN KEY("DocumentId") REFERENCES "Document"("DocumentId"),
	FOREIGN KEY("BibleVerseId") REFERENCES "BibleVerse"("BibleVerseId")
);
CREATE TABLE IF NOT EXISTS "Endnote" (
	"EndnoteId"	INTEGER,
	"DocumentId"	INTEGER,
	"TextId"	INTEGER,
	"Label"	TEXT,
	"LabelRich"	TEXT,
	"Content"	BLOB,
	PRIMARY KEY("EndnoteId"),
	FOREIGN KEY("DocumentId") REFERENCES "Document"("DocumentId")
);
CREATE TABLE IF NOT EXISTS "DocumentEndnote" (
	"DocumentEndnoteId"	INTEGER,
	"DocumentId"	INTEGER,
	"EndnoteIndex"	INTEGER,
	"ParagraphOrdinal"	INTEGER,
	"EndnoteId"	INTEGER,
	PRIMARY KEY("DocumentEndnoteId"),
	FOREIGN KEY("DocumentId") REFERENCES "Document"("DocumentId"),
	FOREIGN KEY("EndnoteId") REFERENCES "Endnote"("EndnoteId")
);
CREATE TABLE IF NOT EXISTS "Question" (
	"QuestionId"	INTEGER,
	"DocumentId"	INTEGER,
	"QuestionIndex"	INTEGER,
	"Content"	BLOB,
	"ParagraphOrdinal"	INTEGER,
	"TargetParagraphOrdinal"	INTEGER,
	"TargetParagraphNumberLabel"	INTEGER,
	PRIMARY KEY("QuestionId"),
	FOREIGN KEY("DocumentId") REFERENCES "Document"("DocumentId")
);
CREATE TABLE IF NOT EXISTS "Extract" (
	"ExtractId"	INTEGER,
	"Link"	TEXT,
	"Caption"	TEXT,
	"CaptionRich"	TEXT,
	"Content"	BLOB,
	"RefPublicationId"	INTEGER,
	"RefMepsDocumentId"	INTEGER,
	"RefMepsDocumentClass"	INTEGER,
	"RefBeginParagraphOrdinal"	INTEGER,
	"RefEndParagraphOrdinal"	INTEGER,
	PRIMARY KEY("ExtractId"),
	FOREIGN KEY("RefPublicationId") REFERENCES "RefPublication"("RefPublicationId")
);
CREATE TABLE IF NOT EXISTS "InternalLink" (
	"InternalLinkId"	INTEGER,
	"Link"	TEXT,
	"Caption"	TEXT,
	"CaptionRich"	TEXT,
	"MepsDocumentId"	INTEGER,
	"BeginParagraphOrdinal"	INTEGER,
	"EndParagraphOrdinal"	INTEGER,
	PRIMARY KEY("InternalLinkId")
);
CREATE TABLE IF NOT EXISTS "BibleCitation" (
	"BibleCitationId"	INTEGER,
	"DocumentId"	INTEGER,
	"BlockNumber"	INTEGER,
	"ElementNumber"	INTEGER,
	"FirstBibleVerseId"	INTEGER,
	"LastBibleVerseId"	INTEGER,
	"BibleVerseId"	INTEGER,
	"ParagraphOrdinal"	INTEGER,
	"MarginalClassification"	INTEGER,
	PRIMARY KEY("BibleCitationId"),
	FOREIGN KEY("DocumentId") REFERENCES "Document"("DocumentId"),
	FOREIGN KEY("FirstBibleVerseId") REFERENCES "BibleVerse"("BibleVerseId"),
	FOREIGN KEY("LastBibleVerseId") REFERENCES "BibleVerse"("BibleVerseId"),
	FOREIGN KEY("BibleVerseId") REFERENCES "BibleVerse"("BibleVerseId")
);
CREATE TABLE IF NOT EXISTS "TextUnit" (
	"TextUnitId"	INTEGER,
	"Type"	TEXT,
	"Id"	INTEGER,
	PRIMARY KEY("TextUnitId")
);
CREATE TABLE IF NOT EXISTS "SearchIndexBibleVerse" (
	"SearchIndexBibleVerseId"	INTEGER,
	"WordId"	INTEGER,
	"TextUnitCount"	INTEGER,
	"WordOccurrenceCount"	INTEGER,
	"TextUnitIndices"	BLOB,
	"PositionalList"	BLOB,
	"PositionalListIndex"	BLOB,
	PRIMARY KEY("SearchIndexBibleVerseId"),
	FOREIGN KEY("WordId") REFERENCES "Word"("WordId")
);
CREATE TABLE IF NOT EXISTS "SearchIndexDocument" (
	"SearchIndexDocumentId"	INTEGER,
	"WordId"	INTEGER,
	"TextUnitCount"	INTEGER,
	"WordOccurrenceCount"	INTEGER,
	"TextUnitIndices"	BLOB,
	"PositionalList"	BLOB,
	"PositionalListIndex"	BLOB,
	PRIMARY KEY("SearchIndexDocumentId"),
	FOREIGN KEY("WordId") REFERENCES "word"("WordId")
);
CREATE TABLE IF NOT EXISTS "SearchTextRangeBibleVerse" (
	"TextUnitId"	INTEGER,
	"TextPositions"	BLOB,
	"TextLengths"	BLOB,
	PRIMARY KEY("TextUnitId")
);
CREATE TABLE IF NOT EXISTS "SearchTextRangeDocument" (
	"TextUnitId"	INTEGER,
	"TextPositions"	BLOB,
	"TextLengths"	BLOB,
	"ScopeParagraphData"	BLOB,
	PRIMARY KEY("TextUnitId")
);
CREATE TABLE IF NOT EXISTS "Asset" (
	"AssetId"	INTEGER,
	"FilePath"	TEXT,
	"Type"	TEXT,
	"VersionNumber"	INTEGER,
	PRIMARY KEY("AssetId")
);
CREATE TABLE IF NOT EXISTS "Multimedia" (
	"MultimediaId"	INTEGER,
	"LinkMultimediaId"	INTEGER,
	"DataType"	INTEGER,
	"MajorType"	INTEGER,
	"MinorType"	INTEGER,
	"Width"	INTEGER,
	"Height"	INTEGER,
	"MimeType"	TEXT,
	"Label"	TEXT,
	"LabelRich"	TEXT,
	"Caption"	TEXT,
	"CaptionRich"	TEXT,
	"CaptionContent"	BLOB,
	"CreditLine"	TEXT,
	"CreditLineRich"	TEXT,
	"CreditLineContent"	BLOB,
	"CategoryType"	INTEGER,
	"FilePath"	TEXT,
	"KeySymbol"	STRING,
	"Track"	INTEGER,
	"MepsDocumentId"	INTEGER,
	"MepsLanguageIndex"	INTEGER,
	"IssueTagNumber"	INTEGER,
	"SuppressZoom"	BOOLEAN,
	"SizeConstraint"	TEXT,
	PRIMARY KEY("MultimediaId")
);
CREATE TABLE IF NOT EXISTS "ExtractMultimedia" (
	"ExtractMultimediaId"	INTEGER,
	"RefMepsDocumentId"	INTEGER NOT NULL,
	"RefMepsDocumentClass"	INTEGER NOT NULL,
	"DataType"	INTEGER,
	"MajorType"	INTEGER,
	"MinorType"	INTEGER,
	"Width"	INTEGER,
	"Height"	INTEGER,
	"MimeType"	TEXT NOT NULL,
	"Label"	TEXT NOT NULL,
	"LabelRich"	TEXT,
	"Caption"	TEXT NOT NULL,
	"CaptionRich"	TEXT,
	"CaptionContent"	BLOB,
	"CreditLine"	TEXT,
	"CreditLineRich"	TEXT,
	"CreditLineContent"	BLOB,
	"CategoryType"	INTEGER NOT NULL,
	"FilePath"	TEXT NOT NULL,
	"KeySymbol"	STRING,
	"Track"	INTEGER,
	"MepsDocumentId"	INTEGER,
	"MepsLanguageIndex"	INTEGER,
	"IssueTagNumber"	INTEGER,
	"SuppressZoom"	BOOLEAN,
	"SizeConstraint"	TEXT,
	PRIMARY KEY("ExtractMultimediaId")
);
CREATE TABLE IF NOT EXISTS "PublicationView" (
	"PublicationViewId"	INTEGER,
	"Name"	TEXT,
	"Symbol"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("PublicationViewId")
);
CREATE TABLE IF NOT EXISTS "PublicationViewItemDocument" (
	"PublicationViewItemDocumentId"	INTEGER,
	"PublicationViewItemId"	INTEGER,
	"DocumentId"	INTEGER,
	PRIMARY KEY("PublicationViewItemDocumentId"),
	FOREIGN KEY("PublicationViewItemId") REFERENCES "PublicationViewItem"("PublicationViewItemId")
);
CREATE TABLE IF NOT EXISTS "PublicationViewItem" (
	"PublicationViewItemId"	INTEGER,
	"PublicationViewId"	INTEGER,
	"ParentPublicationViewItemId"	INTEGER,
	"Title"	TEXT,
	"TitleRich"	TEXT,
	"SchemaType"	INTEGER,
	"ChildTemplateSchemaType"	INTEGER,
	"DefaultDocumentId"	INTEGER,
	PRIMARY KEY("PublicationViewItemId"),
	FOREIGN KEY("PublicationViewId") REFERENCES "PublicationView"("PublicationViewId")
);
CREATE TABLE IF NOT EXISTS "PublicationViewItemField" (
	"PublicationViewItemFieldId"	INTEGER,
	"PublicationViewItemId"	INTEGER,
	"Value"	TEXT,
	"ValueRich"	TEXT,
	"Type"	TEXT,
	PRIMARY KEY("PublicationViewItemFieldId"),
	FOREIGN KEY("PublicationViewItemId") REFERENCES "PublicationViewItem"("PublicationViewItemId")
);
CREATE TABLE IF NOT EXISTS "PublicationViewSchema" (
	"PublicationViewSchemaId"	INTEGER,
	"SchemaType"	INTEGER,
	"DataType"	TEXT,
	PRIMARY KEY("PublicationViewSchemaId")
);
CREATE TABLE IF NOT EXISTS "Word" (
	"WordId"	INTEGER,
	"Word"	TEXT,
	"Reading"	TEXT,
	PRIMARY KEY("WordId")
);
CREATE TABLE IF NOT EXISTS "Topic" (
	"TopicId"	INTEGER,
	"Topic"	TEXT,
	"DisplayTopic"	TEXT,
	"DisplayTopicRich"	TEXT,
	PRIMARY KEY("TopicId")
);
CREATE TABLE IF NOT EXISTS "TopicDocument" (
	"TopicDocumentId"	INTEGER,
	"DocumentId"	INTEGER,
	"TopicId"	INTEGER,
	PRIMARY KEY("TopicDocumentId"),
	FOREIGN KEY("DocumentId") REFERENCES "Document"("DocumentId"),
	FOREIGN KEY("TopicId") REFERENCES "Topic"("TopicId")
);
CREATE TABLE IF NOT EXISTS "DatedText" (
	"DatedTextId"	INTEGER,
	"DocumentId"	INTEGER,
	"Link"	TEXT,
	"FirstDateOffset"	DATE,
	"LastDateOffset"	DATE,
	"FirstFootnoteId"	INTEGER,
	"LastFootnoteId"	INTEGER,
	"FirstBibleCitationId"	INTEGER,
	"LastBibleCitationId"	INTEGER,
	"BeginParagraphOrdinal"	INTEGER,
	"EndParagraphOrdinal"	INTEGER,
	"Caption"	TEXT,
	"CaptionRich"	TEXT,
	"Content"	BLOB,
	PRIMARY KEY("DatedTextId")
);
CREATE TABLE IF NOT EXISTS "DocumentParagraph" (
	"DocumentParagraphId"	INTEGER,
	"DocumentId"	INTEGER,
	"ParagraphIndex"	INTEGER,
	"ParagraphNumberLabel"	INTEGER,
	"BeginPosition"	INTEGER,
	"EndPosition"	INTEGER,
	PRIMARY KEY("DocumentParagraphId"),
	FOREIGN KEY("DocumentId") REFERENCES "Document"("DocumentId")
);
CREATE TABLE IF NOT EXISTS "DocumentInternalLink" (
	"DocumentInternalLinkId"	INTEGER,
	"DocumentId"	INTEGER,
	"InternalLinkId"	INTEGER,
	"BeginParagraphOrdinal"	INTEGER,
	"EndParagraphOrdinal"	INTEGER,
	PRIMARY KEY("DocumentInternalLinkId"),
	FOREIGN KEY("InternalLinkId") REFERENCES "InternalLink"("InternalLinkId"),
	FOREIGN KEY("DocumentId") REFERENCES "Document"("DocumentId")
);
CREATE TABLE IF NOT EXISTS "DocumentExtract" (
	"DocumentExtractId"	INTEGER,
	"DocumentId"	INTEGER,
	"ExtractId"	INTEGER,
	"BeginParagraphOrdinal"	INTEGER,
	"EndParagraphOrdinal"	INTEGER,
	PRIMARY KEY("DocumentExtractId"),
	FOREIGN KEY("ExtractId") REFERENCES "Extract"("ExtractId"),
	FOREIGN KEY("DocumentId") REFERENCES "Document"("DocumentId")
);
CREATE TABLE IF NOT EXISTS "DocumentMultimedia" (
	"DocumentMultimediaId"	INTEGER,
	"DocumentId"	INTEGER,
	"MultimediaId"	INTEGER,
	"BeginParagraphOrdinal"	INTEGER,
	"EndParagraphOrdinal"	INTEGER,
	PRIMARY KEY("DocumentMultimediaId"),
	FOREIGN KEY("MultimediaId") REFERENCES "Multimedia"("MultimediaId"),
	FOREIGN KEY("DocumentId") REFERENCES "Document"("DocumentId")
);
CREATE TABLE IF NOT EXISTS "ParagraphCommentary" (
	"ParagraphCommentaryId"	INTEGER,
	"CommentaryType"	INTEGER,
	"Label"	TEXT,
	"Content"	BLOB,
	PRIMARY KEY("ParagraphCommentaryId")
);
CREATE TABLE IF NOT EXISTS "ParagraphCommentaryMap" (
	"ParagraphCommentaryMapId"	INTEGER,
	"MepsDocumentId"	INTEGER,
	"BeginParagraphOrdinal"	INTEGER,
	"EndParagraphOrdinal"	INTEGER,
	"ParagraphCommentaryId"	INTEGER,
	PRIMARY KEY("ParagraphCommentaryMapId"),
	FOREIGN KEY("ParagraphCommentaryId") REFERENCES "ParagraphCommentary"("ParagraphCommentaryId")
);
CREATE TABLE IF NOT EXISTS "VideoMarker" (
	"VideoMarkerId"	INTEGER,
	"MultimediaId"	INTEGER,
	"Label"	TEXT,
	"LabelRich"	TEXT,
	"Caption"	TEXT,
	"CaptionRich"	TEXT,
	"Style"	TEXT,
	"SegmentFormat"	INTEGER,
	"StartTimeTicks"	INTEGER,
	"DurationTicks"	INTEGER,
	"StartFrame"	INTEGER,
	"FrameCount"	INTEGER,
	"BeginTransitionDurationTicks"	INTEGER,
	"EndTransitionDurationTicks"	INTEGER,
	"BeginTransitionFrameCount"	INTEGER,
	"EndTransitionFrameCount"	INTEGER,
	PRIMARY KEY("VideoMarkerId"),
	FOREIGN KEY("MultimediaId") REFERENCES "Multimedia"("MultimediaId")
);
CREATE TABLE IF NOT EXISTS "ExtractVideoMarker" (
	"ExtractVideoMarkerId"	INTEGER,
	"ExtractMultimediaId"	INTEGER,
	"Label"	TEXT NOT NULL,
	"LabelRich"	TEXT,
	"Caption"	TEXT,
	"CaptionRich"	TEXT,
	"Style"	TEXT,
	"SegmentFormat"	INTEGER,
	"StartTimeTicks"	INTEGER NOT NULL,
	"DurationTicks"	INTEGER NOT NULL,
	"StartFrame"	INTEGER,
	"FrameCount"	INTEGER,
	"BeginTransitionDurationTicks"	INTEGER,
	"EndTransitionDurationTicks"	INTEGER NOT NULL,
	"BeginTransitionFrameCount"	INTEGER,
	"EndTransitionFrameCount"	INTEGER,
	PRIMARY KEY("ExtractVideoMarkerId"),
	FOREIGN KEY("ExtractMultimediaId") REFERENCES "ExtractMultimedia"("ExtractMultimediaId")
);
CREATE TABLE IF NOT EXISTS "ExtractVideoMarkerRange" (
	"ExtractVideoMarkerRangeId"	INTEGER,
	"ExtractId"	INTEGER,
	"FirstExtractVideoMarkerId"	INTEGER,
	"LastExtractVideoMarkerId"	INTEGER,
	PRIMARY KEY("ExtractVideoMarkerRangeId"),
	FOREIGN KEY("FirstExtractVideoMarkerId") REFERENCES "ExtractVideoMarker"("ExtractVideoMarkerId"),
	FOREIGN KEY("LastExtractVideoMarkerId") REFERENCES "ExtractVideoMarker"("ExtractVideoMarkerId"),
	FOREIGN KEY("ExtractId") REFERENCES "Extract"("ExtractId")
);
CREATE TABLE IF NOT EXISTS "VideoMarkerParagraphLocation" (
	"VideoMarkerParagraphLocationId"	INTEGER,
	"DocumentParagraphId"	INTEGER,
	"VideoMarkerId"	INTEGER,
	PRIMARY KEY("VideoMarkerParagraphLocationId"),
	FOREIGN KEY("DocumentParagraphId") REFERENCES "DocumentParagraph"("DocumentParagraphId"),
	FOREIGN KEY("VideoMarkerId") REFERENCES "VideoMarker"("VideoMarkerId")
);
CREATE TABLE IF NOT EXISTS "VerseCommentary" (
	"VerseCommentaryId"	INTEGER,
	"CommentaryType"	INTEGER,
	"Label"	TEXT,
	"Content"	BLOB,
	PRIMARY KEY("VerseCommentaryId")
);
CREATE TABLE IF NOT EXISTS "VerseCommentaryMap" (
	"VerseCommentaryMapId"	INTEGER,
	"BibleVerseId"	INTEGER,
	"VerseCommentaryId"	INTEGER,
	PRIMARY KEY("VerseCommentaryMapId"),
	FOREIGN KEY("BibleVerseId") REFERENCES "BibleVerse"("BibleVerseId"),
	FOREIGN KEY("VerseCommentaryId") REFERENCES "VerseCommentary"("VerseCommentaryId")
);
CREATE TABLE IF NOT EXISTS "android_metadata" (
	"locale"	TEXT DEFAULT 'en_US'
);
INSERT INTO "PublicationYear" VALUES (1,1,'');
INSERT INTO "PublicationView" VALUES (1,'Publication Documents','jwpub');
INSERT INTO "PublicationViewSchema" VALUES (1,0,'name');
INSERT INTO "android_metadata" VALUES ('en_US');
CREATE INDEX IF NOT EXISTS "idx_SearchIndexBibleVerse" ON "SearchIndexBibleVerse" (
	"WordId"
);
CREATE INDEX IF NOT EXISTS "idx_SearchIndexDocument" ON "SearchIndexDocument" (
	"WordId"
);
CREATE INDEX IF NOT EXISTS "idx_Word" ON "Word" (
	"Word",
	"Reading"
);
CREATE INDEX IF NOT EXISTS "idx_Topic" ON "Topic" (
	"Topic"
);
CREATE INDEX IF NOT EXISTS "idx_ParagraphCommentary" ON "ParagraphCommentary" (
	"CommentaryType"
);
CREATE INDEX IF NOT EXISTS "idx_ParagraphCommentaryMap" ON "ParagraphCommentaryMap" (
	"MEPSDocumentId",
	"ParagraphCommentaryId",
	"BeginParagraphOrdinal",
	"EndParagraphOrdinal"
);
CREATE INDEX IF NOT EXISTS "idx_VideoMarkerParagraphLocation" ON "VideoMarkerParagraphLocation" (
	"DocumentParagraphId",
	"VideoMarkerId"
);
CREATE INDEX IF NOT EXISTS "idx_DocumentMultimedia" ON "DocumentMultimedia" (
	"DocumentId",
	"MultimediaId"
);
CREATE INDEX IF NOT EXISTS "idx_DocumentExtract" ON "DocumentExtract" (
	"DocumentId",
	"ExtractId"
);
CREATE INDEX IF NOT EXISTS "idx_PublicationViewItem" ON "PublicationViewItem" (
	"DefaultDocumentId"
);
CREATE INDEX IF NOT EXISTS "idx_VerseCommentary" ON "VerseCommentary" (
	"CommentaryType"
);
CREATE INDEX IF NOT EXISTS "idx_VerseCommentaryMap" ON "VerseCommentaryMap" (
	"BibleVerseId",
	"VerseCommentaryId"
);
CREATE INDEX IF NOT EXISTS "idx_Extract_Link_RefPublicationId" ON "Extract" (
	"Link",
	"RefPublicationId"
);
CREATE INDEX IF NOT EXISTS "idx_ExtractVideoMarker_ExtractMultimediaId" ON "ExtractVideoMarker" (
	"ExtractMultimediaId"
);
CREATE INDEX IF NOT EXISTS "idx_ExtractMultimedia_RefMepsDocumentId" ON "ExtractMultimedia" (
	"RefMepsDocumentId"
);
CREATE INDEX IF NOT EXISTS "idx_ExtractMultimedia_ExtractMultimediaId_MajorType_MinorType" ON "ExtractMultimedia" (
	"RefMepsDocumentId",
	"MajorType",
	"MinorType"
);
CREATE INDEX IF NOT EXISTS "idx_ExtractVideoMarkerRange_ExtractId" ON "ExtractVideoMarkerRange" (
	"ExtractId"
);
CREATE INDEX IF NOT EXISTS "idx_ExtractVideoMarkerRange_FirstExtractVideoMarkerId" ON "ExtractVideoMarkerRange" (
	"FirstExtractVideoMarkerId"
);
CREATE INDEX IF NOT EXISTS "idx_ExtractVideoMarkerRange_LastExtractVideoMarkerId" ON "ExtractVideoMarkerRange" (
	"LastExtractVideoMarkerId"
);
COMMIT;
