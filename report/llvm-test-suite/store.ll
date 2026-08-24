Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/store?download=true
inline.NumInlined: 24
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.layer_data = type { i32, [2048 x i8], ptr, [16 x i8], i32, ptr, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }

@progressive_sequence = external local_unnamed_addr global i32, align 4
@progressive_frame = external local_unnamed_addr global i32, align 4
@Frame_Store_Flag = external local_unnamed_addr global i32, align 4
@Output_Picture_Filename = external local_unnamed_addr global ptr, align 8
@Coded_Picture_Width = external local_unnamed_addr global i32, align 4
@vertical_size = external local_unnamed_addr global i32, align 4
@Output_Type = external local_unnamed_addr global i32, align 4
@horizontal_size = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s.Y\00", align 1
@chroma_format = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s.U\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s.V\00", align 1
@Quiet_Flag = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"saving %s\0A\00", align 1
@outfile = internal unnamed_addr global i32 0, align 4
@Error_Text = external global [256 x i8], align 16
@.str.4 = private unnamed_addr constant [20 x i8] c"Couldn't create %s\0A\00", align 1
@obfr = internal global [4096 x i8] zeroinitializer, align 16
@optr = internal unnamed_addr global ptr null, align 8
@store_sif.u422 = internal unnamed_addr global ptr null, align 8
@store_sif.v422 = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"4:4:4 not supported for SIF format\00", align 1
@Coded_Picture_Height = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".SIF\00", align 1
@Clip = external local_unnamed_addr global ptr, align 8
@store_ppm_tga.u422 = internal unnamed_addr global ptr null, align 8
@store_ppm_tga.v422 = internal unnamed_addr global ptr null, align 8
@store_ppm_tga.u444 = internal unnamed_addr global ptr null, align 8
@store_ppm_tga.v444 = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c".tga\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".ppm\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"P6\0A%d %d\0A255\0A\00", align 1
@Inverse_Table_6_9 = external local_unnamed_addr global [8 x [4 x i32]], align 16
@matrix_coefficients = external local_unnamed_addr global i32, align 4
@base = external local_unnamed_addr global %struct.layer_data, align 8

; Function Attrs: nounwind uwtable
define dso_local void @Write_Frame(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i32, ptr @progressive_sequence, align 4, !tbaa !4
  %i.c = icmp ne i32 %i.b, 0
  %i.d = load i32, ptr @progressive_frame, align 4
  %i.e = icmp ne i32 %i.d, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  %i.f = load i32, ptr @Frame_Store_Flag, align 4
  %i.g = icmp ne i32 %i.f, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.g
  %i.h = load ptr, ptr @Output_Picture_Filename, align 8, !tbaa !8 ; 2 uses
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.h, i32 noundef %1, i32 noundef 102) #10 ; 0 uses
  %i.j = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.k = load i32, ptr @vertical_size, align 4, !tbaa !4
  call fastcc void @store_one(ptr noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef %i.j, i32 noundef %i.k)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.h, i32 noundef %1, i32 noundef 97) #10 ; 0 uses
  %i.m = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.n = shl i32 %i.m, 1
  %i.o = load i32, ptr @vertical_size, align 4, !tbaa !4
  %i.p = ashr i32 %i.o, 1
  call fastcc void @store_one(ptr noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef %i.n, i32 noundef %i.p)
  %i.q = load ptr, ptr @Output_Picture_Filename, align 8, !tbaa !8
  %i.r = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.q, i32 noundef %1, i32 noundef 98) #10 ; 0 uses
  %i.s = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4 ; 2 uses
  %i.t = shl i32 %i.s, 1
  %i.u = load i32, ptr @vertical_size, align 4, !tbaa !4
  %i.v = ashr i32 %i.u, 1
  call fastcc void @store_one(ptr noundef %i.a, ptr noundef %0, i32 noundef %i.s, i32 noundef %i.t, i32 noundef %i.v)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @store_one(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 8 uses
  %i.b = load i32, ptr @Output_Type, align 4, !tbaa !4
  switch i32 %i.b, label %bb.y [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.w
    i32 3, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.c = load i32, ptr @horizontal_size, align 4, !tbaa !4 ; 2 uses
  %i.d = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %0) #10 ; 0 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !8
  call fastcc void @store_yuv1(ptr noundef %i.a, ptr noundef %i.e, i32 noundef %2, i32 noundef %3, i32 noundef %i.c, i32 noundef %4)
  %i.f = load i32, ptr @chroma_format, align 4, !tbaa !4 ; 2 uses
  %.not.i = icmp ne i32 %i.f, 3
  %i.g = zext i1 %.not.i to i32                   ; 3 uses
  %.023.i = ashr i32 %2, %i.g                     ; 2 uses
  %.022.i = ashr i32 %3, %i.g                     ; 2 uses
  %.0.i = ashr i32 %i.c, %i.g                     ; 2 uses
  %i.h = icmp eq i32 %i.f, 1
  %i.i = zext i1 %i.h to i32
  %.021.i = ashr i32 %4, %i.i                     ; 2 uses
  %i.j = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %0) #10 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  call fastcc void @store_yuv1(ptr noundef %i.a, ptr noundef %i.l, i32 noundef %.023.i, i32 noundef %.022.i, i32 noundef %.0.i, i32 noundef %.021.i)
  %i.m = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %0) #10 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  call fastcc void @store_yuv1(ptr noundef %i.a, ptr noundef %i.o, i32 noundef %.023.i, i32 noundef %.022.i, i32 noundef %.0.i, i32 noundef %.021.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.p = load i32, ptr @chroma_format, align 4, !tbaa !4 ; 2 uses
  %i.q = icmp eq i32 %i.p, 3
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @Error(ptr noundef nonnull @.str.5) #10
  %.pr.i = load i32, ptr @chroma_format, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %.pr.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  store ptr %i.u, ptr @store_sif.u422, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  store ptr %i.w, ptr @store_sif.v422, align 8, !tbaa !8
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr @store_sif.u422, align 8, !tbaa !8
  %.not.i19 = icmp eq ptr %i.x, null
  br i1 %.not.i19, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %i.z = ashr i32 %i.y, 1
  %i.aa = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %i.ab = mul nsw i32 %i.z, %i.aa
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #11 ; 2 uses
  store ptr %i.ad, ptr @store_sif.u422, align 8, !tbaa !8
  %.not31.i = icmp eq ptr %i.ad, null
  br i1 %.not31.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  %.pre.i = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %.pre48.i = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %.pre52.i = ashr i32 %.pre.i, 1
  %.pre53.i = mul nsw i32 %.pre52.i, %.pre48.i
  %.pre55.i = sext i32 %.pre53.i to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi56.i = phi i64 [ %.pre55.i, %bb.i ], [ %i.ac, %bb.h ]
  %i.ae = tail call noalias ptr @malloc(i64 noundef %.pre-phi56.i) #11 ; 2 uses
  store ptr %i.ae, ptr @store_sif.v422, align 8, !tbaa !8
  %.not32.i = icmp eq ptr %i.ae, null
  br i1 %.not32.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8
  %i.ah = load ptr, ptr @store_sif.u422, align 8, !tbaa !8
  tail call fastcc void @conv420to422(ptr noundef %i.ag, ptr noundef %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8
  %i.ak = load ptr, ptr @store_sif.v422, align 8, !tbaa !8
  tail call fastcc void @conv420to422(ptr noundef %i.aj, ptr noundef %i.ak)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %endptr.i = getelementptr inbounds i8, ptr %0, i64 %strlen.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.7, i64 5, i1 false)
  %i.al = load i32, ptr @Quiet_Flag, align 4, !tbaa !4
  %.not33.i = icmp eq i32 %i.al, 0
  br i1 %.not33.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.an = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 47) #12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = select i1 %.not.i.i, ptr %0, ptr %i.ao
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.am, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.ap) #10 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ar = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef 577, i32 noundef 438) #10 ; 2 uses
  store i32 %i.ar, ptr @outfile, align 4, !tbaa !4
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.at = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %0) #10 ; 0 uses
  tail call void @Error(ptr noundef nonnull @Error_Text) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr @obfr, ptr @optr, align 8, !tbaa !8
  %i.au = icmp sgt i32 %4, 0
  br i1 %i.au, label %.lr.ph44.i, label %._crit_edge45.thread.i

.lr.ph44.i:                                       ; preds = %bb.q
  %i.av = sext i32 %2 to i64
  %i.aw = ashr i32 %2, 1
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = load i32, ptr @horizontal_size, align 4, !tbaa !4 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph44.split.preheader.i, label %._crit_edge45.thread.i

.lr.ph44.split.preheader.i:                       ; preds = %.lr.ph44.i
  %i.ba = ashr i32 %3, 1
  %i.bb = sext i32 %3 to i64
  %i.bc = sext i32 %i.ba to i64
  %wide.trip.count.i = zext nneg i32 %4 to i64
  br label %.lr.ph44.split.i

.lr.ph44.split.i:                                 ; preds = %._crit_edge.i, %.lr.ph44.split.preheader.i
  %i.bd = phi ptr [ @obfr, %.lr.ph44.split.preheader.i ], [ %i.cx, %._crit_edge.i ] ; 2 uses
  %i.be = phi i32 [ %i.ay, %.lr.ph44.split.preheader.i ], [ %i.cy, %._crit_edge.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph44.split.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph44.split.i
  %i.bg = load ptr, ptr @store_sif.v422, align 8, !tbaa !8
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ax
  %i.bi = mul nsw i64 %indvars.iv.i, %i.bc        ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  %i.bk = load ptr, ptr @store_sif.u422, align 8, !tbaa !8
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.ax
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bi
  %i.bn = load ptr, ptr %1, align 8, !tbaa !8
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.av
  %i.bp = mul nsw i64 %indvars.iv.i, %i.bb
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bp
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %putbyte.exit37.i, %.lr.ph.preheader.i
  %i.br = phi ptr [ %i.ct, %putbyte.exit37.i ], [ %i.bd, %.lr.ph.preheader.i ] ; 2 uses
  %.041.i = phi ptr [ %i.cg, %putbyte.exit37.i ], [ %i.bj, %.lr.ph.preheader.i ] ; 2 uses
  %.02640.i = phi ptr [ %i.bs, %putbyte.exit37.i ], [ %i.bm, %.lr.ph.preheader.i ] ; 2 uses
  %.02739.i = phi ptr [ %i.cn, %putbyte.exit37.i ], [ %i.bq, %.lr.ph.preheader.i ] ; 3 uses
  %.02838.i = phi i32 [ %i.cu, %putbyte.exit37.i ], [ 0, %.lr.ph.preheader.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.02640.i, i64 1
  %i.bt = load i8, ptr %.02640.i, align 1, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 1 ; 2 uses
  store ptr %i.bu, ptr @optr, align 8, !tbaa !8
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !13
  %i.bv = icmp eq ptr %i.bu, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.bv, label %bb.r, label %.lr.ph.putbyte.exit_crit_edge.i

.lr.ph.putbyte.exit_crit_edge.i:                  ; preds = %.lr.ph.i
  %.pre.i.a = load ptr, ptr @optr, align 8, !tbaa !8
  br label %putbyte.exit.i

bb.r:                                             ; preds = %.lr.ph.i
  %i.bw = load i32, ptr @outfile, align 4, !tbaa !4
  %i.bx = tail call i64 @write(i32 noundef %i.bw, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  br label %putbyte.exit.i

putbyte.exit.i:                                   ; preds = %bb.r, %.lr.ph.putbyte.exit_crit_edge.i
  %i.by = phi ptr [ %.pre.i.a, %.lr.ph.putbyte.exit_crit_edge.i ], [ @obfr, %bb.r ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.02739.i, i64 1
  %i.ca = load i8, ptr %.02739.i, align 1, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 3 uses
  store ptr %i.cb, ptr @optr, align 8, !tbaa !8
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !13
  %i.cc = icmp eq ptr %i.cb, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.cc, label %bb.s, label %putbyte.exit35.i

bb.s:                                             ; preds = %putbyte.exit.i
  %i.cd = load i32, ptr @outfile, align 4, !tbaa !4
  %i.ce = tail call i64 @write(i32 noundef %i.cd, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  br label %putbyte.exit35.i

putbyte.exit35.i:                                 ; preds = %bb.s, %putbyte.exit.i
  %i.cf = phi ptr [ %i.cb, %putbyte.exit.i ], [ @obfr, %bb.s ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.041.i, i64 1
  %i.ch = load i8, ptr %.041.i, align 1, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 1 ; 3 uses
  store ptr %i.ci, ptr @optr, align 8, !tbaa !8
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !13
  %i.cj = icmp eq ptr %i.ci, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.cj, label %bb.t, label %putbyte.exit36.i

bb.t:                                             ; preds = %putbyte.exit35.i
  %i.ck = load i32, ptr @outfile, align 4, !tbaa !4
  %i.cl = tail call i64 @write(i32 noundef %i.ck, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  br label %putbyte.exit36.i

putbyte.exit36.i:                                 ; preds = %bb.t, %putbyte.exit35.i
  %i.cm = phi ptr [ %i.ci, %putbyte.exit35.i ], [ @obfr, %bb.t ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02739.i, i64 2
  %i.co = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 3 uses
  store ptr %i.cp, ptr @optr, align 8, !tbaa !8
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !13
  %i.cq = icmp eq ptr %i.cp, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.cq, label %bb.u, label %putbyte.exit37.i

bb.u:                                             ; preds = %putbyte.exit36.i
  %i.cr = load i32, ptr @outfile, align 4, !tbaa !4
  %i.cs = tail call i64 @write(i32 noundef %i.cr, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  store ptr @obfr, ptr @optr, align 8, !tbaa !8
  br label %putbyte.exit37.i

putbyte.exit37.i:                                 ; preds = %bb.u, %putbyte.exit36.i
  %i.ct = phi ptr [ %i.cp, %putbyte.exit36.i ], [ @obfr, %bb.u ] ; 2 uses
  %i.cu = add nuw nsw i32 %.02838.i, 2            ; 2 uses
  %i.cv = load i32, ptr @horizontal_size, align 4, !tbaa !4 ; 2 uses
  %i.cw = icmp slt i32 %i.cu, %i.cv
  br i1 %i.cw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %putbyte.exit37.i, %.lr.ph44.split.i
  %i.cx = phi ptr [ %i.bd, %.lr.ph44.split.i ], [ %i.ct, %putbyte.exit37.i ] ; 3 uses
  %i.cy = phi i32 [ %i.be, %.lr.ph44.split.i ], [ %i.cv, %putbyte.exit37.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge45.i, label %.lr.ph44.split.i, !llvm.loop !16

._crit_edge45.thread.i:                           ; preds = %.lr.ph44.i, %bb.q
  %.pre4960.i = load i32, ptr @outfile, align 4, !tbaa !4
  br label %store_sif.exit

._crit_edge45.i:                                  ; preds = %._crit_edge.i
  %.not34.i = icmp eq ptr %i.cx, @obfr
  %.pre49.i = load i32, ptr @outfile, align 4, !tbaa !4 ; 2 uses
  br i1 %.not34.i, label %store_sif.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge45.i
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cz, ptrtoint (ptr @obfr to i64)
  %i.db = tail call i64 @write(i32 noundef %.pre49.i, ptr noundef nonnull @obfr, i64 noundef %i.da) #10 ; 0 uses
  %.pre48.i.a = load i32, ptr @outfile, align 4, !tbaa !4
  br label %store_sif.exit

store_sif.exit:                                   ; preds = %._crit_edge45.thread.i, %._crit_edge45.i, %bb.v
  %i.dc = phi i32 [ %.pre48.i.a, %bb.v ], [ %.pre49.i, %._crit_edge45.i ], [ %.pre4960.i, %._crit_edge45.thread.i ]
  %i.dd = tail call i32 @close(i32 noundef %i.dc) #10 ; 0 uses
  br label %bb.y

bb.w:                                             ; preds = %bb.a
  tail call fastcc void @store_ppm_tga(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 1)
  br label %bb.y

bb.x:                                             ; preds = %bb.a
  tail call fastcc void @store_ppm_tga(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0)
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %bb.x, %bb.w, %store_sif.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @store_ppm_tga(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i32, ptr @chroma_format, align 4, !tbaa !4 ; 3 uses
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  store ptr %i.e, ptr @store_ppm_tga.u444, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  store ptr %i.g, ptr @store_ppm_tga.v444, align 8, !tbaa !8
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %i.b, 1
  %.pre103 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4 ; 3 uses
  %.pre105 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4 ; 3 uses
  br i1 %i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.j = ashr i32 %.pre103, 1
  %i.k = mul nsw i32 %i.j, %.pre105
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #11 ; 2 uses
  store ptr %i.m, ptr @store_ppm_tga.u422, align 8, !tbaa !8
  %.not62 = icmp eq ptr %i.m, null
  br i1 %.not62, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  %.pre = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4 ; 2 uses
  %.pre101 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4 ; 2 uses
  %.pre114 = ashr i32 %.pre, 1
  %.pre115 = mul nsw i32 %.pre114, %.pre101
  %.pre117 = sext i32 %.pre115 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi118 = phi i64 [ %.pre117, %bb.f ], [ %i.l, %bb.e ]
  %6 = phi i32 [ %.pre101, %bb.f ], [ %.pre105, %bb.e ]
  %7 = phi i32 [ %.pre, %bb.f ], [ %.pre103, %bb.e ]
  %i.n = tail call noalias ptr @malloc(i64 noundef %.pre-phi118) #11 ; 2 uses
  store ptr %i.n, ptr @store_ppm_tga.v422, align 8, !tbaa !8
  %.not63 = icmp eq ptr %i.n, null
  br i1 %.not63, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  %.pre102 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %.pre104 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %8 = phi i32 [ %6, %bb.g ], [ %.pre104, %bb.h ], [ %.pre105, %bb.d ]
  %9 = phi i32 [ %7, %bb.g ], [ %.pre102, %bb.h ], [ %.pre103, %bb.d ]
  %i.o = mul nsw i32 %8, %9
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #11 ; 2 uses
  store ptr %i.q, ptr @store_ppm_tga.u444, align 8, !tbaa !8
  %.not64 = icmp eq ptr %i.q, null
  br i1 %.not64, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  %.pre106 = load i32, ptr @Coded_Picture_Width, align 4, !tbaa !4
  %.pre107 = load i32, ptr @Coded_Picture_Height, align 4, !tbaa !4
  %.pre119 = mul nsw i32 %.pre107, %.pre106
  %.pre121 = sext i32 %.pre119 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi122 = phi i64 [ %.pre121, %bb.j ], [ %i.p, %bb.i ]
  %i.r = tail call noalias ptr @malloc(i64 noundef %.pre-phi122) #11 ; 2 uses
  store ptr %i.r, ptr @store_ppm_tga.v444, align 8, !tbaa !8
  %.not65 = icmp eq ptr %i.r, null
  br i1 %.not65, label %bb.l, label %thread-pre-split

bb.l:                                             ; preds = %bb.k
  tail call void @Error(ptr noundef nonnull @.str.6) #10
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.l, %bb.k
  %.pr = load i32, ptr @chroma_format, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %thread-pre-split, %bb.c
  %i.s = phi i32 [ %.pr, %thread-pre-split ], [ %i.b, %bb.c ]
  %i.t = icmp eq i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.x = load ptr, ptr @store_ppm_tga.u422, align 8, !tbaa !8 ; 2 uses
  tail call fastcc void @conv420to422(ptr noundef %i.v, ptr noundef %i.x)
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.z = load ptr, ptr @store_ppm_tga.v422, align 8, !tbaa !8 ; 2 uses
  tail call fastcc void @conv420to422(ptr noundef %i.y, ptr noundef %i.z)
  %i.aa = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !8
  tail call fastcc void @conv422to444(ptr noundef %i.x, ptr noundef %i.aa)
  %i.ab = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !8
  tail call fastcc void @conv422to444(ptr noundef %i.z, ptr noundef %i.ab)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ac = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !8
  tail call fastcc void @conv422to444(ptr noundef %i.v, ptr noundef %i.ac)
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.ae = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !8
  tail call fastcc void @conv422to444(ptr noundef %i.ad, ptr noundef %i.ae)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.b
  %.not66 = icmp eq i32 %5, 0                     ; 3 uses
  %i.af = select i1 %.not66, ptr @.str.9, ptr @.str.8
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %endptr = getelementptr inbounds i8, ptr %0, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr, ptr noundef nonnull align 1 dereferenceable(5) %i.af, i64 5, i1 false)
  %i.ag = load i32, ptr @Quiet_Flag, align 4, !tbaa !4
  %.not67 = icmp eq i32 %i.ag, 0
  br i1 %.not67, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ai = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 47) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = select i1 %.not.i, ptr %0, ptr %i.aj
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.ak) #10 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.am = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef 577, i32 noundef 438) #10 ; 2 uses
  store i32 %i.am, ptr @outfile, align 4, !tbaa !4
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ao = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Error_Text, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %0) #10 ; 0 uses
  tail call void @Error(ptr noundef nonnull @Error_Text) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr @obfr, ptr @optr, align 8, !tbaa !8
  br i1 %.not66, label %bb.u, label %putbyte.exit72

putbyte.exit72:                                   ; preds = %bb.t
  store <8 x i8> <i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0>, ptr @obfr, align 16, !tbaa !13
  store <4 x i8> zeroinitializer, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 8), align 8, !tbaa !13
  %.pre.a = load i32, ptr @horizontal_size, align 4, !tbaa !4 ; 2 uses
  %i.ap = trunc i32 %.pre.a to i8
  store i8 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 12), align 4, !tbaa !13
  %i.aq = lshr i32 %.pre.a, 8
  %i.ar = trunc i32 %i.aq to i8
  store i8 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 13), align 1, !tbaa !13
  %i.as = trunc i32 %4 to i8
  store i8 %i.as, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 14), align 2, !tbaa !13
  %i.at = lshr i32 %4, 8
  %i.au = trunc i32 %i.at to i8
  store i8 %i.au, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 15), align 1, !tbaa !13
  store i8 24, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 16), align 16, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 18), ptr @optr, align 8, !tbaa !8
  store i8 32, ptr getelementptr inbounds nuw (i8, ptr @obfr, i64 17), align 1, !tbaa !13
  br label %putbyte.exit73

bb.u:                                             ; preds = %bb.t
  %i.av = load i32, ptr @horizontal_size, align 4, !tbaa !4
  %i.aw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.av, i32 noundef %4) #10 ; 0 uses
  %i.ax = load i8, ptr %i.a, align 16, !tbaa !13  ; 2 uses
  %.not6884 = icmp eq i8 %i.ax, 0
  br i1 %.not6884, label %putbyte.exit73, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %.pre101.a = load ptr, ptr @optr, align 8, !tbaa !8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %putbyte.exit74
  %i.ay = phi ptr [ %.pre101.a, %.lr.ph.preheader ], [ %i.be, %putbyte.exit74 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %putbyte.exit74 ]
  %i.az = phi i8 [ %i.ax, %.lr.ph.preheader ], [ %i.bg, %putbyte.exit74 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  store ptr %i.ba, ptr @optr, align 8, !tbaa !8
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !13
  %i.bb = icmp eq ptr %i.ba, getelementptr inbounds nuw (i8, ptr @obfr, i64 4096)
  br i1 %i.bb, label %bb.v, label %putbyte.exit74

bb.v:                                             ; preds = %.lr.ph
  %i.bc = load i32, ptr @outfile, align 4, !tbaa !4
  %i.bd = tail call i64 @write(i32 noundef %i.bc, ptr noundef nonnull @obfr, i64 noundef 4096) #10 ; 0 uses
  store ptr @obfr, ptr @optr, align 8, !tbaa !8
  br label %putbyte.exit74

putbyte.exit74:                                   ; preds = %.lr.ph, %bb.v
  %i.be = phi ptr [ %i.ba, %.lr.ph ], [ @obfr, %bb.v ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !13  ; 2 uses
  %.not68 = icmp eq i8 %i.bg, 0
  br i1 %.not68, label %putbyte.exit73, label %.lr.ph, !llvm.loop !18

putbyte.exit73:                                   ; preds = %putbyte.exit74, %putbyte.exit72, %bb.u
  %i.bh = load i32, ptr @matrix_coefficients, align 4, !tbaa !4
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [16 x i8], ptr @Inverse_Table_6_9, i64 %i.bi ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 16, !tbaa !4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4  ; 2 uses
  %i.bn = icmp sgt i32 %4, 0
  br i1 %i.bn, label %.lr.ph93, label %._crit_edge94

.lr.ph93:                                         ; preds = %putbyte.exit73
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !4
  %i.bs = sext i32 %2 to i64                      ; 3 uses
  %factor.op.mul = sub i32 0, %i.br               ; 2 uses
  %factor.op.mul86 = sub i32 0, %i.bp             ; 2 uses
  %i.bt = load i32, ptr @horizontal_size, align 4, !tbaa !4 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph93.split.preheader, label %._crit_edge94

.lr.ph93.split.preheader:                         ; preds = %.lr.ph93
  %i.bv = sext i32 %3 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph93.split

.lr.ph93.split:                                   ; preds = %.lr.ph93.split.preheader, %._crit_edge
  %i.bw = phi i32 [ %i.bt, %.lr.ph93.split.preheader ], [ %i.gk, %._crit_edge ] ; 2 uses
  %indvars.iv98 = phi i64 [ 0, %.lr.ph93.split.preheader ], [ %indvars.iv.next99, %._crit_edge ] ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph91, label %._crit_edge

.lr.ph91:                                         ; preds = %.lr.ph93.split
  %i.by = load ptr, ptr @store_ppm_tga.v444, align 8, !tbaa !8
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.bs
  %i.ca = mul nsw i64 %indvars.iv98, %i.bv        ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 %i.ca ; 2 uses
  %i.cc = load ptr, ptr @store_ppm_tga.u444, align 8, !tbaa !8
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %i.bs
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.ca ; 2 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !8
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bs
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.ca ; 2 uses
  %.pre103.a = load ptr, ptr @optr, align 8, !tbaa !8 ; 2 uses
  br i1 %.not66, label %.lr.ph91.split.us, label %.lr.ph91.split

.lr.ph91.split.us:                                ; preds = %.lr.ph91, %putbyte.exit77.us
  %i.ci = phi ptr [ %i.ef, %putbyte.exit77.us ], [ %.pre103.a, %.lr.ph91 ] ; 2 uses
  %.090.us = phi ptr [ %i.cn, %putbyte.exit77.us ], [ %i.cb, %.lr.ph91 ] ; 2 uses
  %.05589.us = phi ptr [ %i.cj, %putbyte.exit77.us ], [ %i.ce, %.lr.ph91 ] ; 2 uses
  %.05688.us = phi ptr [ %i.cr, %putbyte.exit77.us ], [ %i.ch, %.lr.ph91 ] ; 2 uses
  %.05787.us = phi i32 [ %i.eg, %putbyte.exit77.us ], [ 0, %.lr.ph91 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.05589.us, i64 1
  %i.ck = load i8, ptr %.05589.us, align 1, !tbaa !13
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nsw i32 %i.cl, -128                 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.090.us, i64 1
  %i.co = load i8, ptr %.090.us, align 1, !tbaa !13
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, -128                 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.05688.us, i64 1
  %i.cs = load i8, ptr %.05688.us, align 1, !tbaa !13
  %i.ct = zext i8 %i.cs to i32
  %i.cu = mul nuw nsw i32 %i.ct, 76309            ; 2 uses
  %i.cv = add nsw i32 %i.cu, -1220944             ; 2 uses
  %i.cw = load ptr, ptr @Clip, align 8, !tbaa !8  ; 3 uses
  %i.cx = mul nsw i32 %i.cq, %i.bk
  %i.cy = add i32 %i.cx, 32768
  %i.cz = add i32 %i.cy, %i.cv
  %i.da = ashr i32 %i.cz, 16
  %i.db = sext i32 %i.da to i64
end_hunk_0
