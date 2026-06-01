inline.NumInlined: 207
inline.NumDeleted: 57
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TIFFOffsetAndDirNumber = type { i64, i32 }
%union._UInt64Aligned_t = type { double }

@TIFFReadDirectory.module = internal constant [18 x i8] c"TIFFReadDirectory\00", align 16
@.str = private unnamed_addr constant [39 x i8] c"Failed to read directory at offset %lu\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Failed to allocate memory for counting IFD data size at reading\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Compression\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Unknown field with tag %u (0x%x) encountered\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Registering anonymous field with tag %u (0x%x) failed\00", align 1
@.str.5 = private unnamed_addr constant [84 x i8] c"Planarconfig tag value assumed incorrect, assuming data is contig instead of chunky\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ImageLength\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"unknown tagname\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Invalid data type for tag %s\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Ignoring %s since BitsPerSample tag not found\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Ignoring %s because BitsPerSample=%u>24\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Photometric tag is missing, assuming data is YCbCr\00", align 1
@.str.12 = private unnamed_addr constant [79 x i8] c"Photometric tag value assumed incorrect, assuming data is YCbCr instead of RGB\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"BitsPerSample tag is missing, assuming 8 bits per sample\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"SamplesPerPixel tag is missing, assuming correct SamplesPerPixel value is 3\00", align 1
@.str.15 = private unnamed_addr constant [76 x i8] c"SamplesPerPixel tag is missing, applying correct SamplesPerPixel value of 3\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Cannot handle zero number of %s\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"tiles\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"strips\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"TileOffsets\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"StripOffsets\00", align 1
@.str.21 = private unnamed_addr constant [140 x i8] c"Sum of Photometric type-related color channels and ExtraSamples doesn't match SamplesPerPixel. Defining non-color channels as ExtraSamples.\00", align 1
@.str.22 = private unnamed_addr constant [82 x i8] c"Failed to allocate memory for temporary new sampleinfo array (%u 16 bit elements)\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"Colormap\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"StripByteCounts\00", align 1
@.str.25 = private unnamed_addr constant [89 x i8] c"TIFF directory is missing required \22StripByteCounts\22 field, calculating from imagelength\00", align 1
@.str.26 = private unnamed_addr constant [73 x i8] c"Bogus \22StripByteCounts\22 field, ignoring and calculating from imagelength\00", align 1
@.str.27 = private unnamed_addr constant [73 x i8] c"Wrong \22StripByteCounts\22 field, ignoring and calculating from imagelength\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"Cannot handle zero scanline size\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"Cannot handle zero tile size\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Cannot handle zero strip size\00", align 1
@TIFFReadCustomDirectory.module = internal constant [24 x i8] c"TIFFReadCustomDirectory\00", align 16
@.str.31 = private unnamed_addr constant [46 x i8] c"Failed to read custom directory at offset %lu\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"Wrong data type %u for \22%s\22; tag ignored\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"_TIFFCheckDirNumberAndOffset\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Not enough memory\00", align 1
@.str.35 = private unnamed_addr constant [72 x i8] c"TIFF directory %d has IFD looping to directory %u at offset 0x%lx (%lu)\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"Insertion in tif_map_dir_offset_to_number failed\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"Insertion in tif_map_dir_number_to_offset failed\00", align 1
@.str.38 = private unnamed_addr constant [44 x i8] c"Cannot handle more than %u TIFF directories\00", align 1
@.str.39 = private unnamed_addr constant [46 x i8] c"malloc(sizeof(TIFFOffsetAndDirNumber)) failed\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"_TIFFRemoveEntryFromDirectoryListByOffset\00", align 1
@.str.41 = private unnamed_addr constant [94 x i8] c"Unexpectedly tif_map_dir_number_to_offset is missing but tif_map_dir_offset_to_number exists.\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"Incorrect count for \22%s\22\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Incompatible type for \22%s\22\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"IO error during reading of \22%s\22\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"Incorrect value for \22%s\22\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"Cannot handle different values per sample for \22%s\22\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"Sanity check on size of \22%s\22 value failed\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"Out of memory reading of \22%s\22\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"Incorrect count for \22%s\22; tag ignored\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"Incompatible type for \22%s\22; tag ignored\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"IO error during reading of \22%s\22; tag ignored\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"Incorrect value for \22%s\22; tag ignored\00", align 1
@.str.53 = private unnamed_addr constant [64 x i8] c"Cannot handle different values per sample for \22%s\22; tag ignored\00", align 1
@.str.54 = private unnamed_addr constant [55 x i8] c"Sanity check on size of \22%s\22 value failed; tag ignored\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"Out of memory reading of \22%s\22; tag ignored\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"EvaluateIFDdatasizeReading\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"Too large IFD data size\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"ReadDirEntryArray\00", align 1
@.str.59 = private unnamed_addr constant [108 x i8] c"Requested memory size for tag %d (0x%x) %u is greater than filesize %lu. Memory not allocated, tag not read\00", align 1
@.str.60 = private unnamed_addr constant [66 x i8] c"Failed to allocate memory for %s (%ld elements of %ld bytes each)\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"TIFFReadDirEntryArray\00", align 1
@TIFFReadDirectoryCheckOrder.module = internal constant [28 x i8] c"TIFFReadDirectoryCheckOrder\00", align 16
@.str.62 = private unnamed_addr constant [63 x i8] c"Invalid TIFF directory; tags are not sorted in ascending order\00", align 1
@EstimateStripByteCounts.module = internal constant [24 x i8] c"EstimateStripByteCounts\00", align 16
@.str.63 = private unnamed_addr constant [100 x i8] c"Requested memory size for StripByteCounts of %lu is greater than filesize %lu. Memory not allocated\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"for \22StripByteCounts\22 array\00", align 1
@.str.65 = private unnamed_addr constant [45 x i8] c"Cannot determine size of unknown tag type %u\00", align 1
@MissingRequired.module = internal constant [16 x i8] c"MissingRequired\00", align 16
@.str.66 = private unnamed_addr constant [46 x i8] c"TIFF directory is missing required \22%s\22 field\00", align 1
@.str.67 = private unnamed_addr constant [64 x i8] c"incorrect count for field \22%s\22 (%lu, expecting %u); tag ignored\00", align 1
@.str.68 = private unnamed_addr constant [64 x i8] c"incorrect count for field \22%s\22 (%lu, expecting %u); tag trimmed\00", align 1
@TIFFFetchDirectory.module = internal constant [19 x i8] c"TIFFFetchDirectory\00", align 16
@.str.69 = private unnamed_addr constant [40 x i8] c"%s: Seek error accessing TIFF directory\00", align 1
@.str.70 = private unnamed_addr constant [38 x i8] c"%s: Can not read TIFF directory count\00", align 1
@.str.71 = private unnamed_addr constant [80 x i8] c"Sanity check on directory count failed, this is probably not a valid IFD offset\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"to read TIFF directory\00", align 1
@.str.73 = private unnamed_addr constant [36 x i8] c"%.100s: Can not read TIFF directory\00", align 1
@.str.74 = private unnamed_addr constant [34 x i8] c"Can not read TIFF directory count\00", align 1
@.str.75 = private unnamed_addr constant [75 x i8] c"Sanity check on directory count failed, zero tag directories not supported\00", align 1
@.str.76 = private unnamed_addr constant [124 x i8] c"Requested memory size for TIFF directory of %lu is greater than filesize %lu. Memory not allocated, TIFF directory not read\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"Can not read TIFF directory\00", align 1
@.str.78 = private constant [19 x i8] c"TIFFFetchNormalTag\00", align 16
@.str.79 = private unnamed_addr constant [31 x i8] c"No definition found for tag %u\00", align 1
@.str.80 = private unnamed_addr constant [109 x i8] c"Defined set_get_field_type of custom tag %u (%s) is TIFF_SETGET_UNDEFINED and thus tag is not read from file\00", align 1
@.str.81 = private unnamed_addr constant [131 x i8] c"ASCII value for tag \22%s\22 contains null byte in value; value incorrectly truncated during reading due to implementation limitations\00", align 1
@.str.82 = private unnamed_addr constant [74 x i8] c"ASCII value for tag \22%s\22 does not end in null byte. Forcing it to be null\00", align 1
@.str.83 = private unnamed_addr constant [52 x i8] c"incorrect count for field \22%s\22, expected 2, got %lu\00", align 1
@.str.84 = private unnamed_addr constant [53 x i8] c"incorrect count for field \22%s\22, expected %d, got %lu\00", align 1
@.str.85 = private unnamed_addr constant [86 x i8] c"ASCII value for ASCII array tag \22%s\22 does not end in null byte. Forcing it to be null\00", align 1
@TIFFFetchStripThing.module = internal constant [20 x i8] c"TIFFFetchStripThing\00", align 16
@.str.86 = private unnamed_addr constant [38 x i8] c"LIBTIFF_STRILE_ARRAY_MAX_RESIZE_COUNT\00", align 1
@.str.87 = private unnamed_addr constant [95 x i8] c"Requested memory size for StripArray of %lu is greater than filesize %lu. Memory not allocated\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"for strip array\00", align 1
@TIFFFetchSubjectDistance.module = internal constant [25 x i8] c"TIFFFetchSubjectDistance\00", align 16
@.str.89 = private unnamed_addr constant [16 x i8] c"SubjectDistance\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"allocChoppedUpStripArrays\00", align 1
@.str.91 = private unnamed_addr constant [113 x i8] c"Requested memory size for StripByteCount and StripOffsets %lu is greater than filesize %lu. Memory not allocated\00", align 1
@.str.92 = private unnamed_addr constant [36 x i8] c"for chopped \22StripByteCounts\22 array\00", align 1
@.str.93 = private unnamed_addr constant [33 x i8] c"for chopped \22StripOffsets\22 array\00", align 1
@_TIFFFetchStrileValue.module = internal constant [22 x i8] c"_TIFFFetchStrileValue\00", align 16
@.str.94 = private unnamed_addr constant [15 x i8] c"File too short\00", align 1
@.str.95 = private unnamed_addr constant [50 x i8] c"Cannot allocate strip offset and bytecount arrays\00", align 1
@_TIFFPartialReadStripArray.module = internal constant [27 x i8] c"_TIFFPartialReadStripArray\00", align 16
@.str.96 = private unnamed_addr constant [52 x i8] c"Invalid type for [Strip|Tile][Offset/ByteCount] tag\00", align 1
@.str.97 = private unnamed_addr constant [38 x i8] c"Cannot read offset/size for strile %d\00", align 1
@.str.98 = private unnamed_addr constant [46 x i8] c"Cannot read offset/size for strile around ~%d\00", align 1
@switch.table._TIFFGetStrileOffsetOrByteCountValue = private unnamed_addr constant [15 x i64] [i64 2, i64 4, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 8, i64 8], align 8

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @TIFFReadDirectory(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca i16, align 2                      ; 6 uses
  %i.d = alloca i16, align 2                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !7    ; 4 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.k, align 8, !tbaa !27
  br label %bb.gu

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !28
  %i.n = add i32 %i.m, 1
  %i.o = tail call i32 @_TIFFCheckDirNumberAndOffset(ptr noundef nonnull %0, i32 noundef %i.n, i64 noundef %i.i)
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.gu, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call fastcc zeroext i16 @TIFFFetchDirectory(ptr noundef nonnull %0, i64 noundef %i.i, ptr noundef %i.b, ptr noundef nonnull %i.h) ; 18 uses
  %.not457 = icmp eq i16 %i.p, 0
  br i1 %.not457, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFReadDirectory.module, ptr noundef nonnull @.str, i64 noundef %i.i) #15
  br label %bb.gu

bb.f:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.l, align 8, !tbaa !28
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.l, align 8, !tbaa !28
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !29   ; 8 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.013.i = phi ptr [ %i.s, %bb.f ], [ %i.y, %bb.i ] ; 2 uses
  %.0812.i = phi i16 [ 0, %bb.f ], [ %i.x, %bb.i ]
  %.0911.i = phi i32 [ 0, %bb.f ], [ %i.w, %bb.i ]
  %i.t = load i16, ptr %.013.i, align 8, !tbaa !30
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = icmp ugt i32 %.0911.i, %i.u
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef %0, ptr noundef nonnull @TIFFReadDirectoryCheckOrder.module, ptr noundef nonnull @.str.62) #15
  br label %TIFFReadDirectoryCheckOrder.exit.preheader

bb.i:                                             ; preds = %bb.g
  %i.w = add nuw nsw i32 %i.u, 1
  %i.x = add nuw i16 %.0812.i, 1                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i, i64 32
  %exitcond.not.i = icmp eq i16 %i.x, %i.p
  br i1 %exitcond.not.i, label %TIFFReadDirectoryCheckOrder.exit.preheader, label %bb.g

TIFFReadDirectoryCheckOrder.exit.preheader:       ; preds = %bb.i, %bb.h
  %i.z = add i16 %i.p, -2
  br label %TIFFReadDirectoryCheckOrder.exit

TIFFReadDirectoryCheckOrder.exit:                 ; preds = %TIFFReadDirectoryCheckOrder.exit.preheader, %._crit_edge
  %.0425668 = phi i16 [ %.0423664, %._crit_edge ], [ 0, %TIFFReadDirectoryCheckOrder.exit.preheader ] ; 3 uses
  %.0426667 = phi ptr [ %i.ab, %._crit_edge ], [ %i.s, %TIFFReadDirectoryCheckOrder.exit.preheader ] ; 2 uses
  %i.aa = sub i16 %i.z, %.0425668
  %i.ab = getelementptr inbounds nuw i8, ptr %.0426667, i64 32 ; 3 uses
  %.0423664 = add nuw i16 %.0425668, 1            ; 5 uses
  %i.ac = icmp ult i16 %.0423664, %i.p
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %TIFFReadDirectoryCheckOrder.exit
  %i.ad = xor i16 %.0425668, -1
  %i.ae = add i16 %i.p, %i.ad
  %i.af = load i16, ptr %.0426667, align 8, !tbaa !30 ; 5 uses
  %xtraiter = and i16 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %bb.k
  %.0423666.prol = phi i16 [ %.0423.prol, %bb.k ], [ %.0423664, %.lr.ph ]
  %.0424665.prol = phi ptr [ %i.aj, %bb.k ], [ %i.ab, %.lr.ph ] ; 3 uses
  %prol.iter = phi i16 [ %prol.iter.next, %bb.k ], [ 0, %.lr.ph ]
  %i.ag = load i16, ptr %.0424665.prol, align 8, !tbaa !30
  %i.ah = icmp eq i16 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.prol.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %.0424665.prol, i64 24
  store i8 1, ptr %i.ai, align 8, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.prol.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %.0424665.prol, i64 32 ; 2 uses
  %.0423.prol = add nuw i16 %.0423666.prol, 1     ; 2 uses
  %prol.iter.next = add i16 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i16 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !32

.prol.loopexit:                                   ; preds = %bb.k, %.lr.ph
  %.0423666.unr = phi i16 [ %.0423664, %.lr.ph ], [ %.0423.prol, %bb.k ]
  %.0424665.unr = phi ptr [ %i.ab, %.lr.ph ], [ %i.aj, %bb.k ]
  %i.ak = icmp ult i16 %i.aa, 3
  br i1 %i.ak, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.s
  %.0423666 = phi i16 [ %.0423.3, %bb.s ], [ %.0423666.unr, %.prol.loopexit ]
  %.0424665 = phi ptr [ %i.ba, %bb.s ], [ %.0424665.unr, %.prol.loopexit ] ; 9 uses
  %i.al = load i16, ptr %.0424665, align 8, !tbaa !30
  %i.am = icmp eq i16 %i.af, %i.al
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.new
  %i.an = getelementptr inbounds nuw i8, ptr %.0424665, i64 24
  store i8 1, ptr %i.an, align 8, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.new, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.0424665, i64 32
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !30
  %i.aq = icmp eq i16 %i.af, %i.ap
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %.0424665, i64 56
  store i8 1, ptr %i.ar, align 8, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %.0424665, i64 64
  %i.at = load i16, ptr %i.as, align 8, !tbaa !30
  %i.au = icmp eq i16 %i.af, %i.at
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.0424665, i64 88
  store i8 1, ptr %i.av, align 8, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.0424665, i64 96
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !30
  %i.ay = icmp eq i16 %i.af, %i.ax
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %.0424665, i64 120
  store i8 1, ptr %i.az, align 8, !tbaa !31
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %.0424665, i64 128
  %.0423.3 = add nuw i16 %.0423666, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i16 %.0423.3, %i.p
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %bb.s, %TIFFReadDirectoryCheckOrder.exit
  %exitcond701.not = icmp eq i16 %.0423664, %i.p
  br i1 %exitcond701.not, label %bb.t, label %TIFFReadDirectoryCheckOrder.exit

bb.t:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !34
  %i.bd = and i32 %i.bc, -68157505
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !34
  tail call void @TIFFFreeDirectory(ptr noundef %0) #15
  %i.be = tail call i32 @TIFFDefaultDirectory(ptr noundef %0) #15 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 11 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 409
  store i8 1, ptr %i.bg, align 1, !tbaa !35
  %i.bh = zext i16 %i.p to i64
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %i.bi) #15 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !36
  %i.bl = icmp eq ptr %i.bj, null
  br i1 %i.bl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFReadDirectory.module, ptr noundef nonnull @.str.1) #15
  br label %thread-pre-split632

bb.v:                                             ; preds = %bb.t
  %i.bm = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 284, i32 noundef 1) #15 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.02.i = phi i16 [ 0, %bb.v ], [ %i.bq, %bb.x ]
  %.081.i = phi ptr [ %i.s, %bb.v ], [ %i.bp, %bb.x ] ; 4 uses
  %i.bn = load i16, ptr %.081.i, align 8, !tbaa !30
  %i.bo = icmp eq i16 %i.bn, 277
  br i1 %i.bo, label %TIFFReadDirectoryFindEntry.exit, label %bb.x
end_hunk_0
begin_hunk_1_@_TIFFRemoveEntryFromDirectoryListByOffset:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.critedge
  %.2 = phi i32 [ %.1, %.critedge ], [ 1, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i64 @TIFFGetStrileOffset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null)
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define i64 @TIFFGetStrileOffsetWithErr(ptr noundef %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2)
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef writeonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = icmp ne ptr %4, null                     ; 4 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = and i32 %i.j, 83886080
  %or.cond31 = icmp eq i32 %i.k, 16777216
  br i1 %or.cond31, label %bb.d, label %_TIFFFetchStrileValue.exit

bb.d:                                             ; preds = %bb.c
  %i.l = and i32 %i.j, 33554432
  %.not28 = icmp eq i32 %i.l, 0
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !37   ; 2 uses
  %i.o = icmp ult i64 %i.n, 5
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = tail call fastcc range(i32 0, 2) i32 @_TIFFFillStrilesInternal(ptr noundef nonnull %0, i32 noundef 1)
  %i.q = icmp eq i32 %i.p, 0
  %or.cond = and i1 %i.h, %i.q
  br i1 %or.cond, label %bb.g, label %_TIFFFetchStrileValue.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %4, align 4, !tbaa !3
  br label %_TIFFFetchStrileValue.exit

bb.h:                                             ; preds = %bb.e
  %i.r = zext i32 %1 to i64                       ; 4 uses
  %.not.i = icmp ugt i64 %i.n, %i.r
  br i1 %.not.i, label %bb.i, label %bb.az

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !164  ; 5 uses
  %.not85.i = icmp ult i32 %1, %i.t
  br i1 %.not85.i, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = icmp ugt i32 %1, 1000000
  br i1 %i.u, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.z = tail call i64 %i.w(ptr noundef %i.y) #15, !inline_history !165
  %i.aa = lshr i64 %i.z, 2
  %.not86.i = icmp samesign ult i64 %i.aa, %i.r
  br i1 %.not86.i, label %bb.l, label %.critedgethread-pre-split.i

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFFetchStrileValue.module, ptr noundef nonnull @.str.94) #15
  br label %bb.az

.critedgethread-pre-split.i:                      ; preds = %bb.k
  %.pr.i = load i32, ptr %i.s, align 8, !tbaa !164
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedgethread-pre-split.i, %bb.j
  %i.ab = phi i32 [ %.pr.i, %.critedgethread-pre-split.i ], [ %i.t, %bb.j ]
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !139 ; 3 uses
  %i.af = icmp ult i32 %i.ae, 1048576
  %or.cond.i = select i1 %i.ac, i1 %i.af, i1 false
  br i1 %or.cond.i, label %bb.m, label %.critedge._crit_edge.i

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %i.ag = add i32 %1, 1                           ; 2 uses
  %i.ah = tail call i32 @llvm.umax.i32(i32 %i.ag, i32 524288)
  %i.ai = icmp ult i32 %i.ag, 2147483647
  %i.aj = zext i1 %i.ai to i32
  %spec.select.i = shl nuw i32 %i.ah, %i.aj
  %i.ak = tail call i32 @llvm.umin.i32(i32 %spec.select.i, i32 %i.ae)
  br label %bb.m

bb.m:                                             ; preds = %.critedge._crit_edge.i, %.critedge.i
  %.175.i = phi i32 [ %i.ak, %.critedge._crit_edge.i ], [ %i.ae, %.critedge.i ] ; 3 uses
  %i.al = zext i32 %.175.i to i64
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !146
  %i.ap = tail call ptr @_TIFFreallocExt(ptr noundef nonnull %0, ptr noundef %i.ao, i64 noundef %i.am) #15 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 6 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !140
  %i.as = tail call ptr @_TIFFreallocExt(ptr noundef nonnull %0, ptr noundef %i.ar, i64 noundef %i.am) #15 ; 4 uses
  %.not95.i = icmp eq ptr %i.ap, null
  br i1 %.not95.i, label %bb.n, label %.thread108.i

bb.n:                                             ; preds = %bb.m
  %.not94.i = icmp eq ptr %i.as, null
  br i1 %.not94.i, label %.thread.i, label %bb.o

.thread108.i:                                     ; preds = %bb.m
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !146
  %.not94109.i = icmp eq ptr %i.as, null
  br i1 %.not94109.i, label %.thread.i, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !140
  br label %.thread.i

bb.p:                                             ; preds = %.thread108.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !140
  store i32 %.175.i, ptr %i.s, align 8, !tbaa !164
  %i.at = zext i32 %i.t to i64                    ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.at
  %i.av = sub i32 %.175.i, %i.t
  %i.aw = zext i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.au, i8 -1, i64 %i.ax, i1 false)
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !140
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.at
  %i.ba = load i32, ptr %i.s, align 8, !tbaa !164
  %i.bb = sub i32 %i.ba, %i.t
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 -1, i64 %i.bd, i1 false)
  br label %bb.q

.thread.i:                                        ; preds = %bb.o, %.thread108.i, %bb.n
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFFetchStrileValue.module, ptr noundef nonnull @.str.95) #15
  %i.be = load ptr, ptr %i.an, align 8, !tbaa !146
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef %i.be) #15
  store ptr null, ptr %i.an, align 8, !tbaa !146
  %i.bf = load ptr, ptr %i.aq, align 8, !tbaa !140
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef %i.bf) #15
  store ptr null, ptr %i.aq, align 8, !tbaa !140
  store i32 0, ptr %i.s, align 8, !tbaa !164
  br label %bb.q

bb.q:                                             ; preds = %.thread.i, %bb.p, %bb.i
  %i.bg = load ptr, ptr %3, align 8, !tbaa !100   ; 10 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.az, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = load i32, ptr %i.s, align 8, !tbaa !164 ; 4 uses
  %.not87.i = icmp ult i32 %1, %i.bi
  br i1 %.not87.i, label %bb.s, label %bb.az

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.r
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !85
  %i.bl = icmp eq i64 %i.bk, -1
  br i1 %i.bl, label %bb.t, label %_TIFFFetchStrileValue.exit

bb.t:                                             ; preds = %bb.s
  %i.bm = load i32, ptr %i.i, align 8, !tbaa !34  ; 2 uses
  %i.bn = and i32 %i.bm, 128
  %.not.i.i = icmp eq i32 %i.bn, 0                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !46
  %switch.tableidx = add i16 %i.bp, -3            ; 3 uses
  %5 = icmp ult i16 %switch.tableidx, 15
  %switch.shifted = lshr i16 24579, %switch.tableidx
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond52 = select i1 %5, i1 %switch.lobit, i1 false
  br i1 %or.cond52, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFPartialReadStripArray.module, ptr noundef nonnull @.str.96) #15
  %i.bq = sext i32 %1 to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bq
  store i64 0, ptr %i.br, align 8, !tbaa !85
  br label %bb.ay

bb.v:                                             ; preds = %bb.t
  %6 = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._TIFFGetStrileOffsetOrByteCountValue, i64 %6
  %switch.load = load i64, ptr %switch.gep, align 8 ; 6 uses
  %i.bs = and i32 %i.bm, 524288
  %.not116.i.i = icmp eq i32 %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %.not116.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !53 ; 2 uses
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !85
  br i1 %.not.i.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @TIFFSwabLong8(ptr noundef nonnull %i.b) #15
  %.pr.i.i = load i64, ptr %i.b, align 8, !tbaa !85
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.bv = load i32, ptr %i.bt, align 8, !tbaa !53 ; 2 uses
  store i32 %i.bv, ptr %i.c, align 4, !tbaa !3
  br i1 %.not.i.i, label %.thread.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @TIFFSwabLong(ptr noundef nonnull %i.c) #15
  %.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !3
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.z, %bb.y
  %i.bw = phi i32 [ %i.bv, %bb.y ], [ %.pre.i.i, %bb.z ]
  %i.bx = zext i32 %i.bw to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.ac

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.by = phi i64 [ %i.bu, %bb.w ], [ %.pr.i.i, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFPartialReadStripArray.module, ptr noundef nonnull @.str.97, i32 noundef %1) #15
  %i.ca = sext i32 %1 to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.ca
  store i64 0, ptr %i.cb, align 8, !tbaa !85
  br label %bb.ay

bb.ac:                                            ; preds = %bb.aa, %.thread.i.i
  %.0107122.i.i = phi i64 [ %i.bx, %.thread.i.i ], [ %i.by, %bb.aa ] ; 2 uses
  %i.cc = sext i32 %1 to i64                      ; 3 uses
  %i.cd = mul nsw i64 %switch.load, %i.cc
  %i.ce = add i64 %.0107122.i.i, %i.cd            ; 4 uses
  %i.cf = and i64 %i.ce, -4096                    ; 5 uses
  %i.cg = add i64 %i.cf, 4096                     ; 2 uses
  %i.ch = add i64 %i.ce, %switch.load
  %i.ci = icmp ugt i64 %i.ch, %i.cg
  %i.cj = add i64 %i.cf, 8192
  %spec.select.i.i = select i1 %i.ci, i64 %i.cj, i64 %i.cg
  %i.ck = zext i32 %i.bi to i64
  %i.cl = mul nuw nsw i64 %switch.load, %i.ck
  %i.cm = add nuw i64 %.0107122.i.i, %i.cl
  %.1.i.i = call i64 @llvm.umin.i64(i64 %i.cm, i64 %spec.select.i.i) ; 3 uses
  %.not117.i.i = icmp ult i64 %i.cf, %.1.i.i
  br i1 %.not117.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFPartialReadStripArray.module, ptr noundef nonnull @.str.97, i32 noundef %1) #15
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.cc
  store i64 0, ptr %i.cn, align 8, !tbaa !85
  br label %bb.ay

bb.ae:                                            ; preds = %bb.ac
  %i.co = call i32 @_TIFFSeekOK(ptr noundef nonnull %0, i64 noundef %i.cf) #15
  %.not118.i.i = icmp eq i32 %i.co, 0
  br i1 %.not118.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.cc
  store i64 0, ptr %i.cp, align 8, !tbaa !85
  br label %bb.ay

bb.ag:                                            ; preds = %bb.ae
  %i.cq = sub i64 %.1.i.i, %i.cf                  ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !88
  %i.cv = call i64 %i.cs(ptr noundef %i.cu, ptr noundef nonnull %i.a, i64 noundef %i.cq) #15, !inline_history !166
  %i.cw = icmp slt i64 %i.cv, %i.cq
  br i1 %i.cw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFPartialReadStripArray.module, ptr noundef nonnull @.str.98, i32 noundef %1) #15
  br label %bb.ay

bb.ai:                                            ; preds = %bb.ag
  %i.cx = and i64 %i.ce, 4095                     ; 2 uses
  %i.cy = call range(i64 1, 65) i64 @llvm.cttz.i64(i64 %switch.load, i1 true)
  %i.cz = lshr i64 %i.cx, %i.cy
  %i.da = trunc nuw nsw i64 %i.cz to i32
  %spec.select120.i.i = call i32 @llvm.smin.i32(i32 %1, i32 %i.da) ; 2 uses
  %i.db = sub nsw i32 %1, %spec.select120.i.i     ; 2 uses
  %i.dc = icmp ult i32 %i.db, %i.bi
  br i1 %i.dc, label %.lr.ph.i.i, label %_TIFFPartialReadStripArray.exit.i

.lr.ph.i.i:                                       ; preds = %bb.ai
  %.0105.i.i = sub i32 0, %spec.select120.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cx
  %i.de = sext i32 %.0105.i.i to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ax, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.de, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ax ] ; 2 uses
  %i.df = phi i32 [ %i.db, %.lr.ph.i.i ], [ %i.ee, %bb.ax ] ; 4 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.dg = mul nsw i64 %indvars.iv.next.i.i, %switch.load
  %i.dh = add i64 %i.dg, %i.ce
  %.not119.i.i = icmp ugt i64 %i.dh, %.1.i.i
  br i1 %.not119.i.i, label %_TIFFPartialReadStripArray.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.di = load i16, ptr %i.bo, align 2, !tbaa !46
  %i.dj = mul nsw i64 %indvars.iv.i.i, %switch.load
  %i.dk = getelementptr inbounds i8, ptr %i.dd, i64 %i.dj ; 4 uses
  switch i16 %i.di, label %bb.au [
    i16 3, label %bb.al
    i16 4, label %bb.ao
    i16 16, label %bb.ar
  ]

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.dl = load i16, ptr %i.dk, align 1            ; 2 uses
  store i16 %i.dl, ptr %i.d, align 2
  br i1 %.not.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @TIFFSwabShort(ptr noundef nonnull %i.d) #15
  %.pre128.i.i = load i16, ptr %i.d, align 2, !tbaa !39
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dm = phi i16 [ %.pre128.i.i, %bb.am ], [ %i.dl, %bb.al ]
  %i.dn = zext i16 %i.dm to i64
  %i.do = sext i32 %i.df to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.do
  store i64 %i.dn, ptr %i.dp, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.ax

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.dq = load i32, ptr %i.dk, align 1            ; 2 uses
  store i32 %i.dq, ptr %i.e, align 4
  br i1 %.not.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @TIFFSwabLong(ptr noundef nonnull %i.e) #15
  %.pre127.i.i = load i32, ptr %i.e, align 4, !tbaa !3
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dr = phi i32 [ %.pre127.i.i, %bb.ap ], [ %i.dq, %bb.ao ]
  %i.ds = zext i32 %i.dr to i64
  %i.dt = sext i32 %i.df to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.dt
  store i64 %i.ds, ptr %i.du, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %bb.ax

bb.ar:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.dv = load i64, ptr %i.dk, align 1            ; 2 uses
  store i64 %i.dv, ptr %i.f, align 8
  br i1 %.not.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @TIFFSwabLong8(ptr noundef nonnull %i.f) #15
  %.pre126.i.i = load i64, ptr %i.f, align 8, !tbaa !85
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dw = phi i64 [ %.pre126.i.i, %bb.as ], [ %i.dv, %bb.ar ]
  %i.dx = sext i32 %i.df to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.dx
  store i64 %i.dw, ptr %i.dy, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %bb.ax

bb.au:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %i.dz = load i64, ptr %i.dk, align 1            ; 2 uses
  store i64 %i.dz, ptr %i.g, align 8
  br i1 %.not.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @TIFFSwabLong8(ptr noundef nonnull %i.g) #15
  %.pre129.i.i = load i64, ptr %i.g, align 8, !tbaa !85
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ea = phi i64 [ %.pre129.i.i, %bb.av ], [ %i.dz, %bb.au ]
  %i.eb = sext i32 %i.df to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.eb
  store i64 %i.ea, ptr %i.ec, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.at, %bb.aq, %bb.an
  %i.ed = trunc i64 %indvars.iv.next.i.i to i32
  %i.ee = add i32 %1, %i.ed                       ; 2 uses
  %i.ef = icmp ult i32 %i.ee, %i.bi
  br i1 %i.ef, label %bb.aj, label %_TIFFPartialReadStripArray.exit.i

_TIFFPartialReadStripArray.exit.i:                ; preds = %bb.ax, %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_TIFFFetchStrileValue.exit

bb.ay:                                            ; preds = %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.eg = load ptr, ptr %3, align 8, !tbaa !100
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.r
  store i64 0, ptr %i.eh, align 8, !tbaa !85
  br label %bb.az

bb.az:                                            ; preds = %bb.h, %bb.q, %bb.ay, %bb.r, %bb.l
  br i1 %i.h, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az
  store i32 1, ptr %4, align 4, !tbaa !3
  br label %bb.bf

_TIFFFetchStrileValue.exit:                       ; preds = %_TIFFPartialReadStripArray.exit.i, %bb.s, %bb.g, %bb.f, %bb.c
  %i.ei = load ptr, ptr %3, align 8, !tbaa !100   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_TIFFFetchStrileValue.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !139
  %.not30 = icmp ult i32 %1, %i.el
  br i1 %.not30, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_TIFFFetchStrileValue.exit
  br i1 %i.h, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  store i32 1, ptr %4, align 4, !tbaa !3
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb
  %i.em = zext i32 %1 to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !85
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bc, %bb.bd, %bb.az, %bb.ba, %bb.be
  %.0 = phi i64 [ 0, %bb.az ], [ %i.eo, %bb.be ], [ 0, %bb.ba ], [ 0, %bb.bd ], [ 0, %bb.bc ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @TIFFGetStrileByteCountWithErr(ptr noundef %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = tail call fastcc i64 @_TIFFGetStrileOffsetOrByteCountValue(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2)
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_TIFFFillStrilesInternal(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = and i32 %i.b, 83886080
  %or.cond = icmp eq i32 %i.c, 16777216
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 33554432
  %.not28 = icmp eq i32 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !146 ; 2 uses
  br i1 %.not28, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef %.pre) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !140
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef %i.f) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.phi.trans.insert, i8 0, i64 20, i1 false)
  %i.g = load i32, ptr %i.a, align 8, !tbaa !34
  %i.h = and i32 %i.g, -33554433
  store i32 %i.h, ptr %i.a, align 8, !tbaa !34
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %.pre, null
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.thread, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = load i64, ptr %i.k, align 8, !tbaa !167
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !139
  %i.q = tail call fastcc i32 @TIFFFetchStripThing(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef %i.p, ptr noundef nonnull %i.n) ; 2 uses
  %.not31 = icmp eq i32 %1, 0
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.s = load i32, ptr %i.o, align 4, !tbaa !139
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.u = tail call fastcc i32 @TIFFFetchStripThing(ptr noundef nonnull %0, ptr noundef nonnull %i.r, i32 noundef %i.s, ptr noundef nonnull %i.t)
  %.not32 = icmp eq i32 %i.u, 0
  %spec.select33 = select i1 %.not32, i32 0, i32 %i.q
end_hunk_1
