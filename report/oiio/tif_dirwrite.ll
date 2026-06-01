inline.NumInlined: 125
inline.NumDeleted: 53
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@TIFFDeferStrileArrayWriting.module = internal constant [28 x i8] c"TIFFDeferStrileArrayWriting\00", align 16
@.str = private unnamed_addr constant [30 x i8] c"File opened in read-only mode\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Directory has already been written\00", align 1
@_TIFFRewriteField.module = internal constant [15 x i8] c"TIFFResetField\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Memory mapped files not currently supported for this operation.\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Attempt to reset field on directory not already on disk.\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"%s: Seek error accessing TIFF directory\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"%s: Can not read TIFF directory count\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"%s: Can not read TIFF directory entry.\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%s: Could not find tag %u.\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"for field buffer.\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Value exceeds 32bit range of output type.\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Value exceeds 16bit range of output type.\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Unhandled type conversion.\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Error writing directory link\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"%s: Can not write TIFF directory entry.\00", align 1
@TIFFRewriteDirectorySec.module = internal constant [21 x i8] c"TIFFRewriteDirectory\00", align 16
@.str.14 = private unnamed_addr constant [27 x i8] c"Error updating TIFF header\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"tif->tif_diroff exceeds 32 bit range allowed for Classic TIFF\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Error fetching directory count\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Error fetching directory link\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"Sanity check on tag count failed, likely corrupt TIFF\00", align 1
@TIFFWriteDirectorySec.module = internal constant [22 x i8] c"TIFFWriteDirectorySec\00", align 16
@.str.19 = private unnamed_addr constant [43 x i8] c"Error post-encoding before directory write\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"Error flushing data before directory write\00", align 1
@.str.21 = private unnamed_addr constant [103 x i8] c"Creating TIFF with legacy Deflate codec identifier, COMPRESSION_ADOBE_DEFLATE is more widely supported\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"Cannot write tag %u (%s)\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"TIFFLib: _TIFFWriteDirectorySec()\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"Rational2Double: .set_get_field_type is not 4 but %d\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"Maximum TIFF file size exceeded\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"Cannot find SubIFD tag\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"IO error writing directory at seek to offset\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"IO error writing directory\00", align 1
@.str.31 = private unnamed_addr constant [73 x i8] c"tif_curdircount is TIFF_NON_EXISTENT_DIR_NUMBER, not expected !! Line %d\00", align 1
@.str.32 = private unnamed_addr constant [68 x i8] c"Starting directory %u at offset 0x%lx (%lu) might cause an IFD loop\00", align 1
@TIFFWriteDirectoryTagData.module = internal constant [26 x i8] c"TIFFWriteDirectoryTagData\00", align 16
@.str.33 = private unnamed_addr constant [26 x i8] c"IO error writing tag data\00", align 1
@.str.34 = private unnamed_addr constant [67 x i8] c"libtiff does not allow writing more than 2147483647 bytes in a tag\00", align 1
@TIFFWriteDirectoryTagCheckedRational.module = internal constant [37 x i8] c"TIFFWriteDirectoryTagCheckedRational\00", align 16
@.str.35 = private unnamed_addr constant [26 x i8] c"Negative value is illegal\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"Not-a-number value is illegal\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"TIFFLib: DoubleToRational()\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c" Negative Value for Unsigned Rational given.\00", align 1
@.str.39 = private unnamed_addr constant [91 x i8] c" Num or Denom exceeds ULONG: val=%14.6f, num=%12lu, denom=%12lu | num2=%12lu, denom2=%12lu\00", align 1
@TIFFWriteDirectoryTagShortPerSample.module = internal constant [36 x i8] c"TIFFWriteDirectoryTagShortPerSample\00", align 16
@TIFFWriteDirectoryTagLongLong8Array.module = internal constant [36 x i8] c"TIFFWriteDirectoryTagLongLong8Array\00", align 16
@.str.40 = private unnamed_addr constant [61 x i8] c"Attempt to write value larger than 0xFFFFFFFF in LONG array.\00", align 1
@.str.41 = private unnamed_addr constant [58 x i8] c"Attempt to write value larger than 0xFFFF in SHORT array.\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"TIFFWriteDirectoryTagCheckedLong8Array\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"LONG8 not allowed for ClassicTIFF\00", align 1
@TIFFWriteDirectoryTagColormap.module = internal constant [30 x i8] c"TIFFWriteDirectoryTagColormap\00", align 16
@TIFFWriteDirectoryTagSampleformatArray.module = internal constant [39 x i8] c"TIFFWriteDirectoryTagSampleformatArray\00", align 16
@TIFFWriteDirectoryTagCheckedRationalArray.module = internal constant [42 x i8] c"TIFFWriteDirectoryTagCheckedRationalArray\00", align 16
@TIFFWriteDirectoryTagTransferfunction.module = internal constant [38 x i8] c"TIFFWriteDirectoryTagTransferfunction\00", align 16
@.str.44 = private unnamed_addr constant [60 x i8] c"Too few TransferFunctions provided. Tag not written to file\00", align 1
@TIFFWriteDirectoryTagSubifd.module = internal constant [28 x i8] c"TIFFWriteDirectoryTagSubifd\00", align 16
@.str.45 = private unnamed_addr constant [29 x i8] c"Illegal value for SubIFD tag\00", align 1
@TIFFWriteDirectoryTagLong8Array.module = internal constant [32 x i8] c"TIFFWriteDirectoryTagLong8Array\00", align 16
@.str.46 = private unnamed_addr constant [123 x i8] c"Attempt to write unsigned long value %lu larger than 0xFFFFFFFF for tag %d in Classic TIFF file. TIFF file writing aborted\00", align 1
@TIFFWriteDirectoryTagSlong8Array.module = internal constant [33 x i8] c"TIFFWriteDirectoryTagSlong8Array\00", align 16
@.str.47 = private unnamed_addr constant [137 x i8] c"Attempt to write signed long value %li larger than 0x7FFFFFFF (2147483647) for tag %d in Classic TIFF file. TIFF writing to file aborted\00", align 1
@.str.48 = private unnamed_addr constant [139 x i8] c"Attempt to write signed long value %li smaller than 0x80000000 (-2147483648) for tag %d in Classic TIFF file. TIFF writing to file aborted\00", align 1
@.str.49 = private unnamed_addr constant [40 x i8] c"TIFFWriteDirectoryTagCheckedSlong8Array\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"SLONG8 not allowed for ClassicTIFF\00", align 1
@TIFFWriteDirectoryTagCheckedRationalDoubleArray.module = internal constant [48 x i8] c"TIFFWriteDirectoryTagCheckedRationalDoubleArray\00", align 16
@TIFFWriteDirectoryTagCheckedSrationalDoubleArray.module = internal constant [49 x i8] c"TIFFWriteDirectoryTagCheckedSrationalDoubleArray\00", align 16
@.str.51 = private unnamed_addr constant [29 x i8] c"TIFFLib: DoubleToSrational()\00", align 1
@.str.52 = private unnamed_addr constant [90 x i8] c" Num or Denom exceeds LONG: val=%14.6f, num=%12lu, denom=%12lu | num2=%12lu, denom2=%12lu\00", align 1
@TIFFWriteDirectoryTagCheckedSrationalArray.module = internal constant [43 x i8] c"TIFFWriteDirectoryTagCheckedSrationalArray\00", align 16
@TIFFWriteDirectoryTagIfdIfd8Array.module = internal constant [34 x i8] c"TIFFWriteDirectoryTagIfdIfd8Array\00", align 16
@.str.53 = private unnamed_addr constant [68 x i8] c"Attempt to write value larger than 0xFFFFFFFF in Classic TIFF file.\00", align 1
@TIFFLinkDirectory.module = internal constant [18 x i8] c"TIFFLinkDirectory\00", align 16
@.str.54 = private unnamed_addr constant [36 x i8] c"Error writing SubIFD directory link\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"Error writing TIFF header\00", align 1
@switch.table._TIFFRewriteField = private unnamed_addr constant [14 x i32] [i32 3, i32 4, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16], align 4

; Function Attrs: nounwind uwtable
define noundef range(i32 0, 2) i32 @TIFFWriteDirectory(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @TIFFWriteDirectorySec(ptr noundef %0, i32 noundef 1, i32 noundef 1, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @TIFFWriteDirectorySec(ptr noundef %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2, ptr noundef writeonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i16, align 2                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i64, align 8                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 8 uses
  %i.j = alloca i64, align 8                      ; 8 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = alloca i16, align 2                      ; 6 uses
  %i.m = alloca i16, align 2                      ; 8 uses
  %i.n = alloca i16, align 2                      ; 6 uses
  %i.o = alloca i32, align 4                      ; 8 uses
  %i.p = alloca i32, align 4                      ; 6 uses
  %i.q = alloca i16, align 2                      ; 8 uses
  %i.r = alloca i16, align 2                      ; 6 uses
  %i.s = alloca i16, align 2                      ; 8 uses
  %i.t = alloca i16, align 2                      ; 6 uses
  %i.u = alloca i16, align 2                      ; 8 uses
  %i.v = alloca i16, align 2                      ; 6 uses
  %i.w = alloca i16, align 2                      ; 8 uses
  %i.x = alloca i16, align 2                      ; 6 uses
  %i.y = alloca i32, align 4                      ; 6 uses
  %i.z = alloca i32, align 4                      ; 167 uses
  %i.aa = alloca i16, align 2                     ; 5 uses
  %i.ab = alloca ptr, align 8                     ; 5 uses
  %i.ac = alloca ptr, align 8                     ; 5 uses
  %i.ad = alloca i16, align 2                     ; 5 uses
  %i.ae = alloca i32, align 4                     ; 5 uses
  %i.af = alloca i32, align 4                     ; 5 uses
  %i.ag = alloca ptr, align 8                     ; 5 uses
  %i.ah = alloca i32, align 4                     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.thread1135, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.al = tail call i32 @_TIFFFillStriles(ptr noundef nonnull %0) #8 ; 0 uses
  %.not = icmp eq i32 %2, 0                       ; 3 uses
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !27 ; 2 uses
  %i.ao = and i32 %i.an, 4096
  %.not591 = icmp eq i32 %i.ao, 0
  br i1 %.not591, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = and i32 %i.an, -4097
  store i32 %i.ap, ptr %i.am, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !28
  %i.as = tail call i32 %i.ar(ptr noundef nonnull %0) #8
  %.not592 = icmp eq i32 %i.as, 0
  br i1 %.not592, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFWriteDirectorySec.module, ptr noundef nonnull @.str.19) #8
  br label %.thread1135

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !29
  tail call void %i.au(ptr noundef nonnull %0) #8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !30
  %i.ax = icmp slt i64 %i.aw, 1
  %.pre1437 = load i32, ptr %i.am, align 8, !tbaa !27 ; 2 uses
  %i.ay = and i32 %.pre1437, 64
  %.not593 = icmp eq i32 %i.ay, 0
  %or.cond1684 = select i1 %i.ax, i1 true, i1 %.not593
  br i1 %or.cond1684, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #8
  %.not594 = icmp eq i32 %i.az, 0
  br i1 %.not594, label %bb.h, label %._crit_edge1436

._crit_edge1436:                                  ; preds = %bb.g
  %.pre = load i32, ptr %i.am, align 8, !tbaa !27
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFWriteDirectorySec.module, ptr noundef nonnull @.str.20) #8
  br label %.thread1135

bb.i:                                             ; preds = %._crit_edge1436, %bb.f
  %i.ba = phi i32 [ %.pre, %._crit_edge1436 ], [ %.pre1437, %bb.f ] ; 3 uses
  %i.bb = and i32 %i.ba, 512
  %.not595 = icmp eq i32 %i.bb, 0
  br i1 %.not595, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31 ; 2 uses
  %.not596 = icmp eq ptr %i.bd, null
  br i1 %.not596, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.bd) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i8 0, i64 48, i1 false)
  %.pre1438 = load i32, ptr %i.am, align 8, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.be = phi i32 [ %.pre1438, %bb.k ], [ %i.ba, %bb.j ], [ %i.ba, %bb.i ]
  %i.bf = and i32 %i.be, -81
  store i32 %i.bf, ptr %i.am, align 8, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 24 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !3
  %i.bi = and i32 %i.bh, 128
  %.not597 = icmp eq i32 %i.bi, 0
  br i1 %.not597, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !32
  %i.bl = icmp eq i16 %i.bk, -32590
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFWriteDirectorySec.module, ptr noundef nonnull @.str.21) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.not598 = icmp eq i32 %1, 0                    ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 58 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 87 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 18 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 10 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
end_hunk_0
begin_hunk_1_@_TIFFRewriteField:bb.a
  br label %bb.dj

bb.y:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 2
  store i16 %i.bk, ptr %i.d, align 2
  %i.bl = load i32, ptr %i.l, align 8, !tbaa !27  ; 2 uses
  %i.bm = and i32 %i.bl, 128
  %.not316 = icmp eq i32 %i.bm, 0
  br i1 %.not316, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @TIFFSwabShort(ptr noundef nonnull %i.d) #8
  %.pre400 = load i32, ptr %i.l, align 8, !tbaa !27
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bn = phi i32 [ %.pre400, %bb.z ], [ %i.bl, %bb.y ] ; 3 uses
  %i.bo = and i32 %i.bn, 524288
  %.not317 = icmp eq i32 %i.bo, 0
  br i1 %.not317, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bq = load i32, ptr %i.bp, align 4            ; 2 uses
  store i32 %i.bq, ptr %i.h, align 4
  %i.br = and i32 %i.bn, 128
  %.not318 = icmp eq i32 %i.br, 0
  br i1 %.not318, label %.thread428, label %bb.ac

.thread428:                                       ; preds = %bb.ab
  %i.bs = zext i32 %i.bq to i64
  store i64 %i.bs, ptr %i.e, align 8, !tbaa !73
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bu = load i32, ptr %i.bt, align 8
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  call void @TIFFSwabLong(ptr noundef nonnull %i.h) #8
  %.pre402 = load i32, ptr %i.h, align 4, !tbaa !3
  %.pre403 = load i32, ptr %i.l, align 8, !tbaa !27
  %.pre409 = and i32 %.pre403, 128
  %i.bv = icmp eq i32 %.pre409, 0
  %i.bw = zext i32 %.pre402 to i64
  store i64 %i.bw, ptr %i.e, align 8, !tbaa !73
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.by = load i32, ptr %i.bx, align 8            ; 2 uses
  store i32 %i.by, ptr %i.h, align 4
  br i1 %i.bv, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @TIFFSwabLong(ptr noundef nonnull %i.h) #8
  %.pre404 = load i32, ptr %i.h, align 4, !tbaa !3
  br label %bb.ae

bb.ae:                                            ; preds = %.thread428, %bb.ad, %bb.ac
  %i.bz = phi i32 [ %.pre404, %bb.ad ], [ %i.by, %bb.ac ], [ %i.bu, %.thread428 ]
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  store i64 %i.ca, ptr %i.f, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %bb.ai

bb.af:                                            ; preds = %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cc = load i64, ptr %i.cb, align 4
  store i64 %i.cc, ptr %i.e, align 8
  %i.cd = and i32 %i.bn, 128
  %.not320 = icmp eq i32 %i.cd, 0
  br i1 %.not320, label %.thread430, label %bb.ag

.thread430:                                       ; preds = %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cf = load i64, ptr %i.ce, align 4            ; 2 uses
  store i64 %i.cf, ptr %i.f, align 8
  br label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @TIFFSwabLong8(ptr noundef nonnull %i.e) #8
  %.pre401 = load i32, ptr %i.l, align 8, !tbaa !27
  %.pre414 = and i32 %.pre401, 128
  %i.cg = icmp eq i32 %.pre414, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ci = load i64, ptr %i.ch, align 4            ; 2 uses
  store i64 %i.ci, ptr %i.f, align 8
  br i1 %i.cg, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @TIFFSwabLong8(ptr noundef nonnull %i.f) #8
  %.pre405 = load i64, ptr %i.f, align 8, !tbaa !73
  br label %bb.ai

bb.ai:                                            ; preds = %.thread430, %bb.ag, %bb.ah, %bb.ae
  %i.cj = phi i64 [ %i.ci, %bb.ag ], [ %.pre405, %bb.ah ], [ %i.ca, %bb.ae ], [ %i.cf, %.thread430 ]
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = load i64, ptr %i.e, align 8
  %i.cm = icmp eq i64 %i.cl, 0
  %or.cond = select i1 %i.ck, i1 %i.cm, i1 false
  %i.cn = load i16, ptr %i.d, align 2
  %i.co = icmp eq i16 %i.cn, 0
  %or.cond7 = select i1 %or.cond, i1 %i.co, i1 false
  br i1 %or.cond7, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  switch i16 %1, label %bb.al [
    i16 324, label %bb.ak
    i16 273, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  %i.cp = load i32, ptr %i.l, align 8, !tbaa !27
  %i.cq = and i32 %i.cp, 524288
  %.not325 = icmp eq i32 %i.cq, 0
  %i.cr = select i1 %.not325, i16 4, i16 16
  br label %.sink.split

bb.al:                                            ; preds = %bb.aj
  %i.cs = icmp sgt i64 %3, 1                      ; 2 uses
  %i.ct = icmp eq i16 %1, 279
  %or.cond13 = and i1 %i.ct, %i.cs
  br i1 %or.cond13, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cu = icmp eq i16 %1, 325
  %or.cond16 = and i1 %i.cu, %i.cs
  br i1 %or.cond16, label %.thread359, label %.sink.split

bb.an:                                            ; preds = %bb.al
  %i.cv = call i64 @TIFFStripSize64(ptr noundef nonnull %0) #8
  %i.cw = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %.val352 = load i16, ptr %i.cw, align 8, !tbaa !32
  %i.cx = call fastcc i32 @WriteAsLong8(i16 %.val352, i64 noundef %i.cv)
  %.not322 = icmp eq i32 %i.cx, 0
  br i1 %.not322, label %bb.ao, label %.sink.split

.thread359:                                       ; preds = %bb.am
  %i.cy = call i64 @TIFFTileSize64(ptr noundef nonnull %0) #8
  %i.cz = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %.val = load i16, ptr %i.cz, align 8, !tbaa !32
  %i.da = call fastcc i32 @WriteAsLong8(i16 %.val, i64 noundef %i.cy)
  %.not322361 = icmp eq i32 %i.da, 0
  br i1 %.not322361, label %bb.ap, label %.sink.split

bb.ao:                                            ; preds = %bb.an
  %i.db = call i64 @TIFFStripSize64(ptr noundef nonnull %0) #8
  %.val354 = load i16, ptr %i.cw, align 8, !tbaa !32
  %i.dc = call fastcc i32 @WriteAsLong4(i16 %.val354, i64 noundef %i.db)
  br label %bb.aq

bb.ap:                                            ; preds = %.thread359
  %i.dd = call i64 @TIFFTileSize64(ptr noundef nonnull %0) #8
  %.val353 = load i16, ptr %i.cz, align 8, !tbaa !32
  %i.de = call fastcc i32 @WriteAsLong4(i16 %.val353, i64 noundef %i.dd)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0288 = phi i32 [ %i.dc, %bb.ao ], [ %i.de, %bb.ap ]
  %.0288.fr = freeze i32 %.0288
  %.not323 = icmp eq i32 %.0288.fr, 0
  %spec.select = select i1 %.not323, i16 3, i16 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.an, %bb.am, %.thread359, %bb.aq, %bb.ak
  %.sink = phi i16 [ %i.cr, %bb.ak ], [ 16, %.thread359 ], [ 16, %bb.an ], [ 16, %bb.am ], [ %spec.select, %bb.aq ]
  store i16 %.sink, ptr %i.d, align 2, !tbaa !44
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %bb.ai
  %i.df = call i32 @TIFFDataWidth(i32 noundef %2) #8
  %i.dg = icmp eq i32 %i.df, 8
  br i1 %i.dg, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.dh = load i32, ptr %i.l, align 8, !tbaa !27
  %i.di = and i32 %i.dh, 524288
  %.not326 = icmp eq i32 %i.di, 0
  br i1 %.not326, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  switch i32 %2, label %bb.aw [
    i32 16, label %bb.au
    i32 17, label %bb.bc
    i32 18, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  %i.dj = load i16, ptr %i.d, align 2, !tbaa !44
  %i.dk = icmp eq i16 %i.dj, 3
  %i.dl = select i1 %i.dk, i32 3, i32 4
  br label %bb.bc

bb.av:                                            ; preds = %bb.at
  br label %bb.bc

bb.aw:                                            ; preds = %bb.at
  br label %bb.bc

bb.ax:                                            ; preds = %bb.as, %bb.ar
  switch i32 %2, label %bb.bc [
    i32 16, label %bb.ay
    i32 17, label %bb.az
    i32 18, label %bb.ba
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.dm = load i16, ptr %i.d, align 2, !tbaa !44
  %switch.tableidx = add i16 %i.dm, -3            ; 2 uses
  %5 = icmp ult i16 %switch.tableidx, 14
  br i1 %5, label %bb.bb, label %bb.bc

bb.az:                                            ; preds = %bb.ax
  %6 = load i16, ptr %i.d, align 2, !tbaa !44
  %switch.selectcmp = icmp eq i16 %6, 9
  %switch.select = select i1 %switch.selectcmp, i32 9, i32 17
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ax
  %i.dn = load i16, ptr %i.d, align 2, !tbaa !44
  %switch.selectcmp.a = icmp eq i16 %i.dn, 13
  %switch.select.a = select i1 %switch.selectcmp.a, i32 13, i32 18
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  %7 = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._TIFFRewriteField, i64 %7
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ay, %bb.ba, %bb.az, %bb.ax, %bb.at, %bb.au, %bb.av, %bb.aw
  %.0291 = phi i32 [ %switch.load, %bb.bb ], [ %switch.select, %bb.az ], [ %switch.select.a, %bb.ba ], [ 9, %bb.at ], [ %i.dl, %bb.au ], [ %2, %bb.aw ], [ 13, %bb.av ], [ 16, %bb.ay ], [ %2, %bb.ax ] ; 21 uses
  %i.do = call i32 @TIFFDataWidth(i32 noundef %.0291) #8
  %i.dp = sext i32 %i.do to i64
  %i.dq = call ptr @_TIFFCheckMalloc(ptr noundef nonnull %0, i64 noundef %3, i64 noundef %i.dp, ptr noundef nonnull @.str.8) #8 ; 19 uses
  %.not327 = icmp eq ptr %i.dq, null
  br i1 %.not327, label %bb.dj, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dr = icmp eq i32 %.0291, %2
  br i1 %i.dr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ds = call i32 @TIFFDataWidth(i32 noundef %2) #8
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul nsw i64 %3, %i.dt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr align 1 %4, i64 %i.du, i1 false)
  br label %.critedge

bb.bf:                                            ; preds = %bb.bd
  %i.dv = icmp eq i32 %.0291, 9
  %i.dw = icmp eq i32 %2, 17
  %or.cond36 = and i1 %i.dw, %i.dv
  br i1 %or.cond36, label %.preheader, label %bb.bi

.preheader:                                       ; preds = %bb.bf
  %.not333391 = icmp sgt i64 %3, 0
  br i1 %.not333391, label %.lr.ph393, label %.critedge

bb.bg:                                            ; preds = %.lr.ph393
  %i.dx = add nuw nsw i64 %.0287392, 1            ; 2 uses
  %exitcond397.not = icmp eq i64 %i.dx, %3
  br i1 %exitcond397.not, label %.critedge, label %.lr.ph393

.lr.ph393:                                        ; preds = %.preheader, %bb.bg
  %.0287392 = phi i64 [ %i.dx, %bb.bg ], [ 0, %.preheader ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0287392
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !73 ; 2 uses
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.0287392
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !3
  %i.ec = add i64 %i.dz, 2147483648
  %.not332 = icmp ult i64 %i.ec, 4294967296
  br i1 %.not332, label %bb.bg, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph393
  call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.dq) #8
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.9) #8
  br label %bb.dj

bb.bi:                                            ; preds = %bb.bf
  %i.ed = icmp eq i32 %.0291, 4
  %i.ee = icmp eq i32 %2, 16                      ; 2 uses
  %or.cond38 = and i1 %i.ee, %i.ed
  br i1 %or.cond38, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ef = icmp eq i32 %.0291, 13
  %i.eg = icmp eq i32 %2, 18
  %or.cond40 = and i1 %i.eg, %i.ef
  br i1 %or.cond40, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.not331387 = icmp sgt i64 %3, 0
  br i1 %.not331387, label %.lr.ph390, label %.critedge

bb.bl:                                            ; preds = %.lr.ph390
  %i.eh = add nuw nsw i64 %.0286388, 1            ; 2 uses
  %exitcond396.not = icmp eq i64 %i.eh, %3
  br i1 %exitcond396.not, label %.critedge, label %.lr.ph390

.lr.ph390:                                        ; preds = %bb.bk, %bb.bl
  %.0286388 = phi i64 [ %i.eh, %bb.bl ], [ 0, %bb.bk ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0286388
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !73 ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.0286388
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !3
  %.not330 = icmp ult i64 %i.ej, 4294967296
  br i1 %.not330, label %bb.bl, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph390
  call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.dq) #8
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.9) #8
  br label %bb.dj

bb.bn:                                            ; preds = %bb.bj
  %i.em = icmp eq i32 %.0291, 3
  %or.cond42 = and i1 %i.ee, %i.em
  br i1 %or.cond42, label %.preheader377, label %bb.bq

.preheader377:                                    ; preds = %bb.bn
  %.not329384 = icmp sgt i64 %3, 0
  br i1 %.not329384, label %.lr.ph386, label %.critedge

bb.bo:                                            ; preds = %.lr.ph386
  %i.en = add nuw nsw i64 %.0385, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.en, %3
  br i1 %exitcond.not, label %.critedge, label %.lr.ph386

.lr.ph386:                                        ; preds = %.preheader377, %bb.bo
  %.0385 = phi i64 [ %i.en, %bb.bo ], [ 0, %.preheader377 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0385
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !73 ; 2 uses
  %i.eq = trunc i64 %i.ep to i16
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %.0385
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !44
  %.not328 = icmp ult i64 %i.ep, 65536
  br i1 %.not328, label %bb.bo, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph386
  call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.dq) #8
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.10) #8
  br label %bb.dj

bb.bq:                                            ; preds = %bb.bn
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFRewriteField.module, ptr noundef nonnull @.str.11) #8
  br label %bb.dj

.critedge:                                        ; preds = %bb.bo, %bb.bl, %bb.bg, %.preheader377, %bb.bk, %.preheader, %bb.be
  %i.es = call i32 @TIFFDataWidth(i32 noundef %.0291) #8
  %i.et = icmp sgt i32 %i.es, 1
  br i1 %i.et, label %bb.br, label %bb.by

bb.br:                                            ; preds = %.critedge
  %i.eu = load i32, ptr %i.l, align 8, !tbaa !27
  %i.ev = and i32 %i.eu, 128
  %.not334 = icmp eq i32 %i.ev, 0
  br i1 %.not334, label %bb.by, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ew = call i32 @TIFFDataWidth(i32 noundef %.0291) #8
  %i.ex = icmp eq i32 %i.ew, 2
  br i1 %i.ex, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @TIFFSwabArrayOfShort(ptr noundef nonnull %i.dq, i64 noundef %3) #8
  br label %bb.by

bb.bu:                                            ; preds = %bb.bs
  %i.ey = call i32 @TIFFDataWidth(i32 noundef %.0291) #8
  %i.ez = icmp eq i32 %i.ey, 4
  br i1 %i.ez, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void @TIFFSwabArrayOfLong(ptr noundef nonnull %i.dq, i64 noundef %3) #8
  br label %bb.by

bb.bw:                                            ; preds = %bb.bu
  %i.fa = call i32 @TIFFDataWidth(i32 noundef %.0291) #8
  %i.fb = icmp eq i32 %i.fa, 8
  br i1 %i.fb, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @TIFFSwabArrayOfLong8(ptr noundef nonnull %i.dq, i64 noundef %3) #8
  br label %bb.by

bb.by:                                            ; preds = %bb.bt, %bb.bw, %bb.bx, %bb.bv, %bb.br, %.critedge
  %i.fc = load i32, ptr %i.l, align 8, !tbaa !27
  %i.fd = and i32 %i.fc, 524288
  %.not335 = icmp eq i32 %i.fd, 0
  %i.fe = call i32 @TIFFDataWidth(i32 noundef %.0291) #8
  %i.ff = sext i32 %i.fe to i64
  %i.fg = mul nsw i64 %3, %i.ff                   ; 2 uses
  br i1 %.not335, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.fh = icmp slt i64 %i.fg, 5
  br i1 %i.fh, label %.sink.split438, label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.fi = icmp slt i64 %i.fg, 9
  br i1 %i.fi, label %.sink.split438, label %bb.cb

.sink.split438:                                   ; preds = %bb.ca, %bb.bz
  %.sink440 = phi i64 [ 8, %bb.bz ], [ 12, %bb.ca ]
  %i.fj = add i64 %.2294.lcssa, %.sink440
  store i64 %i.fj, ptr %i.f, align 8, !tbaa !73
  br label %bb.cb

bb.cb:                                            ; preds = %.sink.split438, %bb.ca, %bb.bz
  %.not336 = phi i1 [ true, %bb.bz ], [ true, %bb.ca ], [ false, %.sink.split438 ]
  switch i16 %1, label %bb.cl [
    i16 324, label %bb.cc
    i16 273, label %bb.cc
    i16 325, label %bb.ch
    i16 279, label %bb.ch
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !115
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 258 ; 2 uses
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !116
  %i.fp = icmp eq i16 %i.fo, 0
  br i1 %i.fp, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
end_hunk_1
