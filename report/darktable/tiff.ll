Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/tiff?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
@.str.7 = private unnamed_addr constant [37 x i8] c"plugins/imageio/format/tiff/compress\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"plugins/imageio/format/tiff/compresslevel\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"plugins/imageio/format/tiff/shortfile\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"image/tiff\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"tif\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"TIFF\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"bpp\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@gui_init.texts = internal global [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr null], align 16
@.str.15 = private unnamed_addr constant [6 x i8] c"8 bit\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"16 bit\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"32 bit (float)\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"bit depth\00", align 1
@gui_init.texts.19 = internal global [3 x ptr] [ptr @.str.20, ptr @.str.21, ptr null], align 16
@.str.20 = private unnamed_addr constant [17 x i8] c"unsigned integer\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"floating point\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"pixel type\00", align 1
@gui_init.texts.23 = internal global [4 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr null], align 16
@.str.24 = private unnamed_addr constant [13 x i8] c"uncompressed\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"deflate\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"deflate with predictor\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"compression level\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@gui_init.texts.30 = internal global [3 x ptr] [ptr @.str.31, ptr @.str.32, ptr null], align 16
@.str.31 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"B&W as grayscale\00", align 1
@.str.34 = private unnamed_addr constant [66 x i8] c"saving as grayscale will reduce the size for black & white images\00", align 1
@.str.35 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/darktable/darktable/src/imageio/format/tiff.c\00", align 1
@__FUNCTION__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 4
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @write_image(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr nofree noundef readonly captures(address_is_null) %10, i32 noundef %11) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i16, align 2                      ; 94 uses
  %i.d = alloca [64 x float], align 16            ; 4 uses
  %12 = alloca %struct._GHashTableIter, align 8   ; 6 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !11
  %i.g = tail call ptr @dt_colorspaces_get_output_profile(i32 noundef %7, i32 noundef %3, ptr noundef %4) #15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1032
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %i.j = call i32 @cmsSaveProfileToMem(ptr noundef %i.i, ptr noundef null, ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !11   ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = zext i32 %i.k to i64
  %i.m = call noalias ptr @malloc(i64 noundef %i.l) #16 ; 3 uses
  %.not578 = icmp eq ptr %i.m, null
  br i1 %.not578, label %.thread689, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 @cmsSaveProfileToMem(ptr noundef %i.i, ptr noundef nonnull %i.m, ptr noundef nonnull %i.a) #15 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0489 = phi ptr [ %i.m, %bb.c ], [ null, %bb.a ] ; 7 uses
  %i.o = icmp ne i32 %11, 0
  %i.p = icmp ne ptr %10, null
  %or.cond = and i1 %i.p, %i.o
  br i1 %or.cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 336
  %.0501750 = load ptr, ptr %i.q, align 8, !tbaa !84 ; 2 uses
  %.not579751 = icmp eq ptr %.0501750, null
  br i1 %.not579751, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.0501753 = phi ptr [ %.0501, %.lr.ph ], [ %.0501750, %bb.e ] ; 2 uses
  %.0502752 = phi i16 [ %i.w, %.lr.ph ], [ 1, %bb.e ]
  %i.r = load ptr, ptr %.0501753, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 520
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !102
  %i.u = call i32 @g_hash_table_size(ptr noundef %i.t) #15
  %i.v = trunc i32 %i.u to i16
  %i.w = add i16 %.0502752, %i.v                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0501753, i64 8
  %.0501 = load ptr, ptr %i.x, align 8, !tbaa !84 ; 2 uses
  %.not579 = icmp eq ptr %.0501, null
  br i1 %.not579, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.0502.lcssa = phi i16 [ 1, %bb.e ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.y = zext i16 %.0502.lcssa to i32             ; 3 uses
  %i.z = call ptr @TIFFOpen(ptr noundef %1, ptr noundef nonnull @.str) #15 ; 6 uses
  %.not580 = icmp eq ptr %i.z, null
  br i1 %.not580, label %.thread689, label %bb.f

.thread:                                          ; preds = %bb.d
  %i.aa = call ptr @TIFFOpen(ptr noundef %1, ptr noundef nonnull @.str) #15 ; 2 uses
  %.not580626 = icmp eq ptr %i.aa, null
  br i1 %.not580626, label %.thread689, label %.thread628

bb.f:                                             ; preds = %._crit_edge
  %i.ab = icmp ugt i16 %.0502.lcssa, 1
  br i1 %i.ab, label %bb.g, label %.thread628

bb.g:                                             ; preds = %bb.f
  %i.ac = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.z, i32 noundef 254, i32 noundef 2) #15 ; 0 uses
  %i.ad = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #15
  %i.ae = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.z, i32 noundef 285, ptr noundef %i.ad) #15 ; 0 uses
  %i.af = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.z, i32 noundef 297, i32 noundef 0, i32 noundef %i.y) #15 ; 0 uses
  br label %bb.h

.thread628:                                       ; preds = %.thread, %bb.f
  %.1503627631 = phi i32 [ %i.y, %bb.f ], [ 1, %.thread ]
  %i.ag = phi ptr [ %i.z, %bb.f ], [ %i.aa, %.thread ] ; 2 uses
  %i.ah = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.ag, i32 noundef 254, i32 noundef 0) #15 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.thread628, %bb.g
  %i.ai = phi i1 [ false, %.thread628 ], [ true, %bb.g ]
  %.1503627630 = phi i32 [ %.1503627631, %.thread628 ], [ %i.y, %bb.g ] ; 2 uses
  %i.aj = phi ptr [ %i.ag, %.thread628 ], [ %i.z, %bb.g ] ; 29 uses
  %i.ak = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 269, ptr noundef %1) #15 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !19
  switch i32 %i.am, label %bb.m [
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.an = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 259, i32 noundef 8) #15 ; 0 uses
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.ao = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 259, i32 noundef 8) #15 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !20
  switch i32 %i.aq, label %bb.l [
    i32 32, label %.sink.split
    i32 16, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !21
  %.not581 = icmp eq i32 %i.as, 0
  br i1 %.not581, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.j, %bb.k
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.j, %bb.k, %bb.i
  %.sink.sink = phi i32 [ 1, %bb.i ], [ 2, %bb.l ], [ 3, %bb.j ], [ 3, %bb.k ]
  %i.at = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 317, i32 noundef %.sink.sink) #15 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.av = load i32, ptr %i.au, align 8, !tbaa !22
  %i.aw = and i32 %i.av, 65535
  %i.ax = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 65557, i32 noundef %i.aw) #15 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.h
  %.not582 = icmp eq ptr %.0489, null
  br i1 %.not582, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !11
  %i.az = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 34675, i32 noundef %i.ay, ptr noundef nonnull %.0489) #15 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store volatile i16 3, ptr %i.c, align 2, !tbaa !103
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !23
  %.not583 = icmp eq i32 %i.bb, 0
  br i1 %.not583, label %.thread634, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !104 ; 4 uses
  %i.be = icmp sgt i32 %i.bd, 4
  br i1 %i.be, label %bb.q, label %.thread633

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !105
  %.fr1179 = freeze i32 %i.bg                     ; 7 uses
  %i.bh = icmp sgt i32 %.fr1179, 4
  br i1 %i.bh, label %bb.r, label %.thread633

bb.r:                                             ; preds = %bb.q
  store volatile i16 1, ptr %i.c, align 2, !tbaa !103
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !20
  switch i32 %i.bj, label %.preheader738.preheader [
    i32 32, label %.preheader739.preheader
    i32 16, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !21
  %.not584 = icmp eq i32 %i.bl, 0
  br i1 %.not584, label %.preheader741.preheader, label %.preheader739.preheader

.preheader739.preheader:                          ; preds = %bb.r, %bb.s
  %smax = add nsw i32 %.fr1179, -1
  %i.bm = zext nneg i32 %.fr1179 to i64
  %smax900 = add nsw i32 %i.bd, -1
  %wide.trip.count901 = zext nneg i32 %smax900 to i64
  %wide.trip.count895 = zext nneg i32 %smax to i64
  br label %.preheader739

.preheader739:                                    ; preds = %.preheader739.preheader, %._crit_edge760
  %indvars.iv897 = phi i64 [ 1, %.preheader739.preheader ], [ %indvars.iv.next898, %._crit_edge760 ] ; 2 uses
  %i.bn = mul nuw nsw i64 %indvars.iv897, %i.bm
  br label %bb.t

._crit_edge760:                                   ; preds = %bb.y
  %indvars.iv.next898 = add nuw nsw i64 %indvars.iv897, 1 ; 2 uses
  %exitcond902.not = icmp eq i64 %indvars.iv.next898, %wide.trip.count901
  br i1 %exitcond902.not, label %.thread633, label %.preheader739

bb.t:                                             ; preds = %.preheader739, %bb.y
  %indvars.iv892 = phi i64 [ 1, %.preheader739 ], [ %indvars.iv.next893, %bb.y ] ; 2 uses
  %.0..0..0..0.219 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.bo = icmp eq i16 %.0..0..0..0.219, 3
  br i1 %i.bo, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = add nuw nsw i64 %indvars.iv892, %i.bn
  %i.bq = shl i64 %i.bp, 2
  %i.br = and i64 %i.bq, 4294967292
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.br ; 2 uses
  %i.bt = load <2 x float>, ptr %i.bs, align 4, !tbaa !106 ; 2 uses
  %i.bu = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bt, splat (float 1.000000e-03)
  %i.bv = select <2 x i1> %i.bu, <2 x float> %i.bt, <2 x float> splat (float 1.000000e-03) ; 2 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  %i.bx = extractelement <2 x float> %i.bv, i64 1 ; 2 uses
  %i.by = fdiv reassoc nsz arcp contract afn float %i.bw, %i.bx
  %i.bz = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.by)
  %i.ca = fcmp reassoc nsz arcp contract afn ogt float %i.bz, 1.010000e+00
  br i1 %i.ca, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !106 ; 2 uses
  %i.cd = fcmp reassoc nsz arcp contract afn ogt float %i.cc, 1.000000e-03
  %i.ce = select reassoc nsz arcp contract afn i1 %i.cd, float %i.cc, float 1.000000e-03 ; 2 uses
  %i.cf = fdiv reassoc nsz arcp contract afn float %i.bw, %i.ce
  %i.cg = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cf)
  %i.ch = fcmp reassoc nsz arcp contract afn ogt float %i.cg, 1.010000e+00
  br i1 %i.ch, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = fdiv reassoc nsz arcp contract afn float %i.bx, %i.ce
  %i.cj = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ci)
  %i.ck = fcmp reassoc nsz arcp contract afn ogt float %i.cj, 1.010000e+00
  br i1 %i.ck, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  store volatile i16 3, ptr %i.c, align 2, !tbaa !103
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.t
  %indvars.iv.next893 = add nuw nsw i64 %indvars.iv892, 1 ; 2 uses
  %exitcond896.not = icmp eq i64 %indvars.iv.next893, %wide.trip.count895
  br i1 %exitcond896.not, label %._crit_edge760, label %bb.t

.preheader741.preheader:                          ; preds = %bb.s
  %i.cl = add nsw i32 %i.bd, -1
  %13 = add nsw i32 %.fr1179, -1                  ; 2 uses
  %i.cm = zext nneg i32 %.fr1179 to i64
  %wide.trip.count890 = zext nneg i32 %i.cl to i64
  %wide.trip.count = zext i32 %13 to i64
  %14 = add nsw i64 %wide.trip.count, -1          ; 3 uses
  %xtraiter = and i64 %14, 1
  %15 = icmp eq i32 %13, 2
  %unroll_iter = and i64 %14, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1132 = trunc i64 %14 to i1
  br label %.preheader741

.preheader741:                                    ; preds = %.preheader741.preheader, %._crit_edge756
  %indvars.iv887 = phi i64 [ 1, %.preheader741.preheader ], [ %indvars.iv.next888, %._crit_edge756 ] ; 2 uses
  %i.cn = mul nuw nsw i64 %indvars.iv887, %i.cm   ; 3 uses
  br i1 %15, label %.epil.preheader, label %.preheader741.new

.preheader741.new:                                ; preds = %.preheader741
  %invariant.op = add nuw nsw i64 1, %i.cn
  br label %bb.ad

._crit_edge756.unr-lcssa:                         ; preds = %bb.an
  br i1 %lcmp.mod.not, label %._crit_edge756, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge756.unr-lcssa, %.preheader741
  %indvars.iv.epil.init = phi i64 [ 1, %.preheader741 ], [ %indvars.iv.next.1, %._crit_edge756.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1132)
  %.0..0..0..0.220.epil = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.co = icmp eq i16 %.0..0..0..0.220.epil, 3
  br i1 %i.co, label %._crit_edge756, label %bb.z

bb.z:                                             ; preds = %.epil.preheader
  %i.cp = add nuw nsw i64 %indvars.iv.epil.init, %i.cn
  %i.cq = shl i64 %i.cp, 2
  %i.cr = and i64 %i.cq, 4294967292
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cr ; 3 uses
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !103
  %i.cu = zext i16 %i.ct to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !103
  %i.cx = zext i16 %i.cw to i32                   ; 2 uses
  %i.cy = add nsw i32 %i.cu, -166                 ; 2 uses
  %i.cz = sub nsw i32 %i.cy, %i.cx
  %i.da = icmp ult i32 %i.cz, -331
  br i1 %i.da, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !103
  %i.dd = zext i16 %i.dc to i32                   ; 2 uses
  %i.de = sub nsw i32 %i.cy, %i.dd
  %i.df = icmp ult i32 %i.de, -331
  br i1 %i.df, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dg = add nsw i32 %i.cx, -166
  %i.dh = sub nsw i32 %i.dg, %i.dd
  %i.di = icmp ult i32 %i.dh, -331
  br i1 %i.di, label %bb.ac, label %._crit_edge756

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  store volatile i16 3, ptr %i.c, align 2, !tbaa !103
  br label %._crit_edge756

._crit_edge756:                                   ; preds = %.epil.preheader, %bb.ab, %bb.ac, %._crit_edge756.unr-lcssa
  %indvars.iv.next888 = add nuw nsw i64 %indvars.iv887, 1 ; 2 uses
  %exitcond891.not = icmp eq i64 %indvars.iv.next888, %wide.trip.count890
  br i1 %exitcond891.not, label %.thread633, label %.preheader741

bb.ad:                                            ; preds = %bb.an, %.preheader741.new
  %indvars.iv = phi i64 [ 1, %.preheader741.new ], [ %indvars.iv.next.1, %bb.an ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader741.new ], [ %niter.next.1, %bb.an ]
  %.0..0..0..0.220 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.dj = icmp eq i16 %.0..0..0..0.220, 3
  br i1 %i.dj, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dk = add nuw nsw i64 %indvars.iv, %i.cn
  %i.dl = shl i64 %i.dk, 2
  %i.dm = and i64 %i.dl, 4294967292
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.dm ; 3 uses
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !103
  %i.dp = zext i16 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !103
  %i.ds = zext i16 %i.dr to i32                   ; 2 uses
  %i.dt = add nsw i32 %i.dp, -166                 ; 2 uses
  %i.du = sub nsw i32 %i.dt, %i.ds
  %i.dv = icmp ult i32 %i.du, -331
  br i1 %i.dv, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !103
  %i.dy = zext i16 %i.dx to i32                   ; 2 uses
  %i.dz = sub nsw i32 %i.dt, %i.dy
  %i.ea = icmp ult i32 %i.dz, -331
  br i1 %i.ea, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = add nsw i32 %i.ds, -166
  %i.ec = sub nsw i32 %i.eb, %i.dy
  %i.ed = icmp ult i32 %i.ec, -331
  br i1 %i.ed, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  store volatile i16 3, ptr %i.c, align 2, !tbaa !103
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.ad
  %.0..0..0..0.220.1 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.ee = icmp eq i16 %.0..0..0..0.220.1, 3
  br i1 %i.ee, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op
  %i.ef = shl i64 %.reass, 2
  %i.eg = and i64 %i.ef, 4294967292
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.eg ; 3 uses
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !103
  %i.ej = zext i16 %i.ei to i32
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !103
  %i.em = zext i16 %i.el to i32                   ; 2 uses
  %i.en = add nsw i32 %i.ej, -166                 ; 2 uses
  %i.eo = sub nsw i32 %i.en, %i.em
  %i.ep = icmp ult i32 %i.eo, -331
  br i1 %i.ep, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !103
  %i.es = zext i16 %i.er to i32                   ; 2 uses
  %i.et = sub nsw i32 %i.en, %i.es
  %i.eu = icmp ult i32 %i.et, -331
  br i1 %i.eu, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ev = add nsw i32 %i.em, -166
  %i.ew = sub nsw i32 %i.ev, %i.es
  %i.ex = icmp ult i32 %i.ew, -331
  br i1 %i.ex, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  store volatile i16 3, ptr %i.c, align 2, !tbaa !103
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ai
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge756.unr-lcssa, label %bb.ad

.preheader738.preheader:                          ; preds = %bb.r
  %smax906 = add nsw i32 %.fr1179, -1             ; 2 uses
  %i.ey = zext nneg i32 %.fr1179 to i64
  %smax912 = add nsw i32 %i.bd, -1
  %wide.trip.count913 = zext nneg i32 %smax912 to i64
  %wide.trip.count907 = zext i32 %smax906 to i64
  %16 = add nsw i64 %wide.trip.count907, -1       ; 3 uses
  %xtraiter1134 = and i64 %16, 1
  %17 = icmp eq i32 %smax906, 2
  %unroll_iter1137 = and i64 %16, -2
  %lcmp.mod1135.not = icmp eq i64 %xtraiter1134, 0
  %lcmp.mod1136 = trunc i64 %16 to i1
  br label %.preheader738

.preheader738:                                    ; preds = %.preheader738.preheader, %._crit_edge764
  %indvars.iv909 = phi i64 [ 1, %.preheader738.preheader ], [ %indvars.iv.next910, %._crit_edge764 ] ; 2 uses
  %i.ez = mul nuw nsw i64 %indvars.iv909, %i.ey   ; 3 uses
  br i1 %17, label %.epil.preheader1133, label %.preheader738.new

.preheader738.new:                                ; preds = %.preheader738
  %invariant.op1202 = add nuw nsw i64 1, %i.ez
  br label %bb.as

._crit_edge764.unr-lcssa:                         ; preds = %bb.bc
  br i1 %lcmp.mod1135.not, label %._crit_edge764, label %.epil.preheader1133

.epil.preheader1133:                              ; preds = %._crit_edge764.unr-lcssa, %.preheader738
  %indvars.iv903.epil.init = phi i64 [ 1, %.preheader738 ], [ %indvars.iv.next904.1, %._crit_edge764.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1136)
  %.0..0..0..0.221.epil = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.fa = icmp eq i16 %.0..0..0..0.221.epil, 3
  br i1 %i.fa, label %._crit_edge764, label %bb.ao

bb.ao:                                            ; preds = %.epil.preheader1133
  %i.fb = add nuw nsw i64 %indvars.iv903.epil.init, %i.ez
  %i.fc = shl i64 %i.fb, 2
  %i.fd = and i64 %i.fc, 4294967292
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 %i.fd ; 3 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !107
  %i.fg = zext i8 %i.ff to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !107
  %i.fj = zext i8 %i.fi to i32                    ; 2 uses
  %i.fk = add nsw i32 %i.fg, -3                   ; 2 uses
  %i.fl = sub nsw i32 %i.fk, %i.fj
  %i.fm = icmp ult i32 %i.fl, -5
  br i1 %i.fm, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !107
  %i.fp = zext i8 %i.fo to i32                    ; 2 uses
  %i.fq = sub nsw i32 %i.fk, %i.fp
  %i.fr = icmp ult i32 %i.fq, -5
  br i1 %i.fr, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fs = add nsw i32 %i.fj, -3
  %i.ft = sub nsw i32 %i.fs, %i.fp
  %i.fu = icmp ult i32 %i.ft, -5
  br i1 %i.fu, label %bb.ar, label %._crit_edge764

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  store volatile i16 3, ptr %i.c, align 2, !tbaa !103
  br label %._crit_edge764

._crit_edge764:                                   ; preds = %.epil.preheader1133, %bb.aq, %bb.ar, %._crit_edge764.unr-lcssa
  %indvars.iv.next910 = add nuw nsw i64 %indvars.iv909, 1 ; 2 uses
  %exitcond914.not = icmp eq i64 %indvars.iv.next910, %wide.trip.count913
  br i1 %exitcond914.not, label %.thread633, label %.preheader738

bb.as:                                            ; preds = %bb.bc, %.preheader738.new
  %indvars.iv903 = phi i64 [ 1, %.preheader738.new ], [ %indvars.iv.next904.1, %bb.bc ] ; 3 uses
  %niter1138 = phi i64 [ 0, %.preheader738.new ], [ %niter1138.next.1, %bb.bc ]
  %.0..0..0..0.221 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.fv = icmp eq i16 %.0..0..0..0.221, 3
  br i1 %i.fv, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fw = add nuw nsw i64 %indvars.iv903, %i.ez
  %i.fx = shl i64 %i.fw, 2
  %i.fy = and i64 %i.fx, 4294967292
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 %i.fy ; 3 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !107
  %i.gb = zext i8 %i.ga to i32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !107
  %i.ge = zext i8 %i.gd to i32                    ; 2 uses
  %i.gf = add nsw i32 %i.gb, -3                   ; 2 uses
  %i.gg = sub nsw i32 %i.gf, %i.ge
  %i.gh = icmp ult i32 %i.gg, -5
  br i1 %i.gh, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !107
  %i.gk = zext i8 %i.gj to i32                    ; 2 uses
  %i.gl = sub nsw i32 %i.gf, %i.gk
  %i.gm = icmp ult i32 %i.gl, -5
  br i1 %i.gm, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gn = add nsw i32 %i.ge, -3
  %i.go = sub nsw i32 %i.gn, %i.gk
  %i.gp = icmp ult i32 %i.go, -5
  br i1 %i.gp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  store volatile i16 3, ptr %i.c, align 2, !tbaa !103
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.as
  %.0..0..0..0.221.1 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.gq = icmp eq i16 %.0..0..0..0.221.1, 3
  br i1 %i.gq, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.reass1203 = add nuw nsw i64 %indvars.iv903, %invariant.op1202
  %i.gr = shl i64 %.reass1203, 2
  %i.gs = and i64 %i.gr, 4294967292
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 %i.gs ; 3 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !107
  %i.gv = zext i8 %i.gu to i32
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !107
  %i.gy = zext i8 %i.gx to i32                    ; 2 uses
  %i.gz = add nsw i32 %i.gv, -3                   ; 2 uses
  %i.ha = sub nsw i32 %i.gz, %i.gy
  %i.hb = icmp ult i32 %i.ha, -5
  br i1 %i.hb, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !107
  %i.he = zext i8 %i.hd to i32                    ; 2 uses
  %i.hf = sub nsw i32 %i.gz, %i.he
  %i.hg = icmp ult i32 %i.hf, -5
  br i1 %i.hg, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hh = add nsw i32 %i.gy, -3
  %i.hi = sub nsw i32 %i.hh, %i.he
  %i.hj = icmp ult i32 %i.hi, -5
  br i1 %i.hj, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  store volatile i16 3, ptr %i.c, align 2, !tbaa !103
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.ax
  %indvars.iv.next904.1 = add nuw nsw i64 %indvars.iv903, 2 ; 2 uses
  %niter1138.next.1 = add i64 %niter1138, 2       ; 2 uses
  %niter1138.ncmp.1 = icmp eq i64 %niter1138.next.1, %unroll_iter1137
  br i1 %niter1138.ncmp.1, label %._crit_edge764.unr-lcssa, label %bb.as

.thread633:                                       ; preds = %._crit_edge756, %._crit_edge760, %._crit_edge764, %bb.p, %bb.q
  %.0..0..0..0.222 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.hk = icmp eq i16 %.0..0..0..0.222, 3
  br i1 %i.hk, label %bb.bd, label %.thread634

bb.bd:                                            ; preds = %.thread633
  %i.hl = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !108
  %i.hm = and i32 %i.hl, 262144
  %.not587 = icmp eq i32 %i.hm, 0
  br i1 %.not587, label %.thread634, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.2, ptr noundef %1) #15
  br label %.thread634

.thread634:                                       ; preds = %bb.o, %bb.bd, %bb.be, %.thread633
  %.0..0..0..0.223 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.hn = zext i16 %.0..0..0..0.223 to i32
  %i.ho = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 277, i32 noundef %i.hn) #15 ; 0 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 8 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !20
  %i.hr = and i32 %i.hq, 65535
  %i.hs = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 258, i32 noundef %i.hr) #15 ; 0 uses
  %i.ht = load i32, ptr %i.hp, align 4, !tbaa !20
  switch i32 %i.ht, label %.fold.split [
    i32 32, label %bb.bg
    i32 16, label %bb.bf
  ]

bb.bf:                                            ; preds = %.thread634
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !21
  %.not588 = icmp eq i32 %i.hv, 0
  %i.hw = select i1 %.not588, i32 1, i32 3
  br label %bb.bg

.fold.split:                                      ; preds = %.thread634
  br label %bb.bg

bb.bg:                                            ; preds = %.thread634, %.fold.split, %bb.bf
  %i.hx = phi i32 [ 3, %.thread634 ], [ %i.hw, %bb.bf ], [ 1, %.fold.split ]
  %i.hy = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 339, i32 noundef %i.hx) #15 ; 0 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !105
  %i.ib = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 256, i32 noundef %i.ia) #15 ; 0 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !104
  %i.ie = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 257, i32 noundef %i.id) #15 ; 0 uses
  %.0..0..0..0.224 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.if = icmp eq i16 %.0..0..0..0.224, 3
  %. = select i1 %i.if, i32 2, i32 1
  %i.ig = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 262, i32 noundef %.) #15 ; 0 uses
  %i.ih = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 284, i32 noundef 1) #15 ; 0 uses
  %i.ii = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 274, i32 noundef 1) #15 ; 0 uses
  %i.ij = call i32 @TIFFDefaultStripSize(ptr noundef nonnull %i.aj, i32 noundef 0) #15
  %i.ik = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 278, i32 noundef %i.ij) #15 ; 0 uses
  %i.il = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.3) #15
  %i.im = sitofp reassoc nsz arcp contract afn i32 %i.il to float
  %i.in = fpext reassoc nsz arcp contract afn float %i.im to double ; 4 uses
  %i.io = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 282, double noundef %i.in) #15 ; 0 uses
  %i.ip = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 283, double noundef %i.in) #15 ; 0 uses
  %i.iq = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 296, i32 noundef 2) #15 ; 0 uses
  %i.ir = load i32, ptr %i.hz, align 8, !tbaa !105
  %.0..0..0..0.225 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.is = zext i16 %.0..0..0..0.225 to i32
  %i.it = mul nsw i32 %i.ir, %i.is
  %i.iu = load i32, ptr %i.hp, align 4, !tbaa !20 ; 2 uses
  %i.iv = mul nsw i32 %i.it, %i.iu
  %i.iw = sdiv i32 %i.iv, 8
  %i.ix = sext i32 %i.iw to i64
  %i.iy = call noalias ptr @malloc(i64 noundef %i.ix) #16 ; 21 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %.thread701, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  switch i32 %i.iu, label %bb.bm [
    i32 32, label %.preheader728
    i32 16, label %bb.bj
  ]

.preheader728:                                    ; preds = %bb.bh
  %i.ja = load i32, ptr %i.ic, align 4, !tbaa !104
  %i.jb = icmp sgt i32 %i.ja, 0
  br i1 %i.jb, label %.lr.ph791, label %.thread635

bb.bi:                                            ; preds = %._crit_edge789
  %indvars.iv.next928 = add nuw nsw i64 %indvars.iv927, 1 ; 2 uses
  %i.jc = load i32, ptr %i.ic, align 4, !tbaa !104
  %i.jd = sext i32 %i.jc to i64
  %i.je = icmp slt i64 %indvars.iv.next928, %i.jd
  br i1 %i.je, label %.lr.ph791, label %.thread635

.lr.ph791:                                        ; preds = %.preheader728, %bb.bi
  %indvars.iv927 = phi i64 [ %indvars.iv.next928, %bb.bi ], [ 0, %.preheader728 ] ; 3 uses
  %i.jf = load i32, ptr %i.hz, align 8, !tbaa !105
  %i.jg = freeze i32 %i.jf                        ; 5 uses
  %i.jh = icmp sgt i32 %i.jg, 0
  br i1 %i.jh, label %.lr.ph788.preheader, label %._crit_edge789

.lr.ph788.preheader:                              ; preds = %.lr.ph791
  %i.ji = shl nuw nsw i64 %indvars.iv927, 2
  %i.jj = zext nneg i32 %i.jg to i64
  %i.jk = mul i64 %i.ji, %i.jj
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jk ; 2 uses
  %xtraiter1149 = and i32 %i.jg, 3                ; 3 uses
  %i.jm = icmp ult i32 %i.jg, 4
  br i1 %i.jm, label %.lr.ph788.epil.preheader, label %.lr.ph788.preheader.new

.lr.ph788.preheader.new:                          ; preds = %.lr.ph788.preheader
  %unroll_iter1153 = and i32 %i.jg, 2147483644
  br label %.lr.ph788

._crit_edge789.loopexit.unr-lcssa:                ; preds = %.lr.ph788
  %lcmp.mod1151.not = icmp eq i32 %xtraiter1149, 0
  br i1 %lcmp.mod1151.not, label %._crit_edge789, label %.lr.ph788.epil.preheader

.lr.ph788.epil.preheader:                         ; preds = %._crit_edge789.loopexit.unr-lcssa, %.lr.ph788.preheader
  %.0486785.epil.init = phi ptr [ %i.iy, %.lr.ph788.preheader ], [ %i.kn, %._crit_edge789.loopexit.unr-lcssa ]
  %.0487784.epil.init = phi ptr [ %i.jl, %.lr.ph788.preheader ], [ %i.kl, %._crit_edge789.loopexit.unr-lcssa ]
  %lcmp.mod1152 = icmp ne i32 %xtraiter1149, 0
  call void @llvm.assume(i1 %lcmp.mod1152)
  br label %.lr.ph788.epil

.lr.ph788.epil:                                   ; preds = %.lr.ph788.epil, %.lr.ph788.epil.preheader
  %.0486785.epil = phi ptr [ %i.jr, %.lr.ph788.epil ], [ %.0486785.epil.init, %.lr.ph788.epil.preheader ] ; 2 uses
  %.0487784.epil = phi ptr [ %i.jp, %.lr.ph788.epil ], [ %.0487784.epil.init, %.lr.ph788.epil.preheader ] ; 2 uses
  %epil.iter1150 = phi i32 [ %epil.iter1150.next, %.lr.ph788.epil ], [ 0, %.lr.ph788.epil.preheader ]
  %.0..0..0..0.226.epil = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.jn = zext i16 %.0..0..0..0.226.epil to i64
  %i.jo = shl nuw nsw i64 %i.jn, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0486785.epil, ptr align 4 %.0487784.epil, i64 %i.jo, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %.0487784.epil, i64 16
  %.0..0..0..0.227.epil = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.jq = zext i16 %.0..0..0..0.227.epil to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.0486785.epil, i64 %i.jq
  %epil.iter1150.next = add i32 %epil.iter1150, 1 ; 2 uses
  %epil.iter1150.cmp.not = icmp eq i32 %epil.iter1150.next, %xtraiter1149
  br i1 %epil.iter1150.cmp.not, label %._crit_edge789, label %.lr.ph788.epil, !llvm.loop !79

._crit_edge789:                                   ; preds = %._crit_edge789.loopexit.unr-lcssa, %.lr.ph788.epil, %.lr.ph791
  %i.js = trunc nuw nsw i64 %indvars.iv927 to i32
  %i.jt = call i32 @TIFFWriteScanline(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.iy, i32 noundef %i.js, i16 noundef zeroext 0) #15
  %.not594 = icmp eq i32 %i.jt, -1
  br i1 %.not594, label %.thread701, label %bb.bi

.lr.ph788:                                        ; preds = %.lr.ph788, %.lr.ph788.preheader.new
  %.0486785 = phi ptr [ %i.iy, %.lr.ph788.preheader.new ], [ %i.kn, %.lr.ph788 ] ; 2 uses
  %.0487784 = phi ptr [ %i.jl, %.lr.ph788.preheader.new ], [ %i.kl, %.lr.ph788 ] ; 5 uses
  %niter1154 = phi i32 [ 0, %.lr.ph788.preheader.new ], [ %niter1154.next.3, %.lr.ph788 ]
  %.0..0..0..0.226 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.ju = zext i16 %.0..0..0..0.226 to i64
  %i.jv = shl nuw nsw i64 %i.ju, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0486785, ptr align 4 %.0487784, i64 %i.jv, i1 false)
  %i.jw = getelementptr inbounds nuw i8, ptr %.0487784, i64 16
  %.0..0..0..0.227 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.jx = zext i16 %.0..0..0..0.227 to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.0486785, i64 %i.jx ; 2 uses
  %.0..0..0..0.226.1 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.jz = zext i16 %.0..0..0..0.226.1 to i64
  %i.ka = shl nuw nsw i64 %i.jz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jy, ptr nonnull align 4 %i.jw, i64 %i.ka, i1 false)
  %i.kb = getelementptr inbounds nuw i8, ptr %.0487784, i64 32
  %.0..0..0..0.227.1 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.kc = zext i16 %.0..0..0..0.227.1 to i64
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.kc ; 2 uses
  %.0..0..0..0.226.2 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.ke = zext i16 %.0..0..0..0.226.2 to i64
  %i.kf = shl nuw nsw i64 %i.ke, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.kd, ptr nonnull align 4 %i.kb, i64 %i.kf, i1 false)
  %i.kg = getelementptr inbounds nuw i8, ptr %.0487784, i64 48
  %.0..0..0..0.227.2 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.kh = zext i16 %.0..0..0..0.227.2 to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.kh ; 2 uses
  %.0..0..0..0.226.3 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.kj = zext i16 %.0..0..0..0.226.3 to i64
  %i.kk = shl nuw nsw i64 %i.kj, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ki, ptr nonnull align 4 %i.kg, i64 %i.kk, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %.0487784, i64 64 ; 2 uses
  %.0..0..0..0.227.3 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.km = zext i16 %.0..0..0..0.227.3 to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.km ; 2 uses
  %niter1154.next.3 = add i32 %niter1154, 4       ; 2 uses
  %niter1154.ncmp.3 = icmp eq i32 %niter1154.next.3, %unroll_iter1153
  br i1 %niter1154.ncmp.3, label %._crit_edge789.loopexit.unr-lcssa, label %.lr.ph788

bb.bj:                                            ; preds = %bb.bh
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !21
  %.not589 = icmp eq i32 %i.kp, 0
  %i.kq = load i32, ptr %i.ic, align 4, !tbaa !104
  %i.kr = icmp sgt i32 %i.kq, 0                   ; 2 uses
  br i1 %.not589, label %.preheader731, label %.preheader735

.preheader735:                                    ; preds = %bb.bj
  br i1 %i.kr, label %.lr.ph775, label %.thread635

bb.bk:                                            ; preds = %._crit_edge773
  %indvars.iv.next920 = add nuw nsw i64 %indvars.iv919, 1 ; 2 uses
end_hunk_0
