Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hdrenc?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%struct.anon = type { ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"hdr\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"HDR (Radiance RGBE format) image\00", align 1
@.compoundliteral = internal constant [2 x i32] [i32 175, i32 -1], align 4
@ff_hdr_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, { %struct.anon, [8 x i8] } } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 258, i32 1052674, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 96, i32 8, ptr null, ptr null, ptr null, ptr @hdr_encode_init, %union.anon { ptr @hdr_encode_frame }, ptr @hdr_encode_close, ptr null, ptr null, ptr null, ptr null, ptr null, { %struct.anon, [8 x i8] } { %struct.anon { ptr null, ptr @.compoundliteral }, [8 x i8] zeroinitializer } }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"#?RADIANCE\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"SOFTWARE=lavc\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"PIXASPECT=%f\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"FORMAT=32-bit_rle_rgbe\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"-Y %d +X %d\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @hdr_encode_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = shl nsw i32 %i.d, 2
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @av_calloc(i64 noundef %i.f, i64 noundef 1) #7 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !31
  %.not = icmp eq ptr %i.g, null
  %. = select i1 %.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @hdr_encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29
  %i.k = mul nsw i32 %i.j, %i.f
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3
  %i.n = add nsw i64 %i.h, 1024
  %i.o = add nsw i64 %i.n, %i.m
  %i.p = tail call i32 @ff_get_encode_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %i.o, i32 noundef 0) #7 ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.s, ptr noundef nonnull align 1 dereferenceable(11) @.str.2, i64 11, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.t, ptr noundef nonnull align 1 dereferenceable(14) @.str.3, i64 14, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 25 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %.sroa.01.0.insert.insert.i = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32) ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.01.0.insert.insert.i to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.01.0.insert.insert.i, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.x = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.y = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.z = fdiv nsz double %i.x, %i.y
  %i.aa = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.u, i64 noundef 32, ptr noundef nonnull @.str.4, double noundef %i.z) #7
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 0)
  %.0113.idx = zext nneg i32 %narrow to i64
  %.0113 = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0113.idx ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.0113, ptr noundef nonnull align 1 dereferenceable(24) @.str.5, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0113, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.e, align 4, !tbaa !47
  %i.ad = load i32, ptr %i.i, align 8, !tbaa !29
  %i.ae = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ab, i64 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %i.ac, i32 noundef %i.ad) #7
  %narrow114 = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 0)
  %.1.idx = zext nneg i32 %narrow114 to i64
  %.1 = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.1.idx ; 2 uses
  %i.af = load i32, ptr %i.e, align 4, !tbaa !47
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph127, label %._crit_edge

.lr.ph127:                                        ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 68
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %.2.lcssa = phi ptr [ %.1, %bb.b ], [ %.5, %.loopexit ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !50
  %i.ao = or i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !50
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !49
  %i.aq = ptrtoint ptr %.2.lcssa to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = trunc i64 %i.as to i32
  tail call void @av_shrink_packet(ptr noundef %1, i32 noundef %i.at) #7
  store i32 1, ptr %3, align 4, !tbaa !51
  br label %bb.n

bb.c:                                             ; preds = %.lr.ph127, %.loopexit
  %.063126 = phi i32 [ 0, %.lr.ph127 ], [ %i.lx, %.loopexit ] ; 4 uses
  %.2125 = phi ptr [ %.1, %.lr.ph127 ], [ %.5, %.loopexit ] ; 7 uses
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !52
  %i.av = load i32, ptr %i.aj, align 8, !tbaa !51
  %i.aw = mul nsw i32 %i.av, %.063126
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %2, align 8, !tbaa !52
  %i.ba = load i32, ptr %i.ai, align 8, !tbaa !51
  %i.bb = mul nsw i32 %i.ba, %.063126
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = load ptr, ptr %i.ak, align 8, !tbaa !52
  %i.bf = load i32, ptr %i.al, align 4, !tbaa !51
  %i.bg = mul nsw i32 %i.bf, %.063126
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.i, align 8, !tbaa !29  ; 2 uses
  %i.bk = add i32 %i.bj, -32768
  %or.cond = icmp ult i32 %i.bk, -32760
  br i1 %or.cond, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.bl = icmp sgt i32 %i.bj, 0
  br i1 %i.bl, label %.lr.ph124, label %.loopexit

.lr.ph124:                                        ; preds = %.preheader, %float2rgbe.exit
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %float2rgbe.exit ], [ 0, %.preheader ] ; 4 uses
  %.3122 = phi ptr [ %i.cb, %float2rgbe.exit ], [ %.2125, %.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv138
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !53 ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv138
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !53 ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv138
  %i.br = load float, ptr %i.bq, align 4, !tbaa !53 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.bs = fcmp nsz ogt float %i.bn, %i.bp
  %i.bt = select nsz i1 %i.bs, float %i.bn, float %i.bp ; 2 uses
  %i.bu = fcmp nsz ogt float %i.bt, %i.br
  %..i = select nsz i1 %i.bu, float %i.bt, float %i.br ; 3 uses
  %i.bv = fcmp nsz olt float %..i, 1.000000e-32
  br i1 %i.bv, label %float2rgbe.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph124
  %i.bw = call nsz float @frexpf(float noundef %..i, ptr noundef nonnull %i.b) #7
  %i.bx = fmul nsz float %i.bw, 2.560000e+02
  %i.by = fdiv nsz float %i.bx, %..i              ; 2 uses
  %i.bz = fmul nsz float %i.br, %i.by
  %i.ca = fptosi float %i.bz to i32
  %4 = load i32, ptr %i.b, align 4, !tbaa !51     ; 2 uses
  %5 = add nsw i32 %4, 128
  %6 = insertelement <4 x float> poison, float %i.bn, i64 0
  %7 = insertelement <4 x float> %6, float %i.bp, i64 1
  %8 = insertelement <2 x float> poison, float %i.by, i64 0
  %9 = insertelement <4 x i32> poison, i32 %i.ca, i64 2 ; 2 uses
  %10 = insertelement <4 x i32> %9, i32 %5, i64 3
  %11 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %12 = fmul nsz <4 x float> %7, %11
  %13 = fptosi <4 x float> %12 to <4 x i32>       ; 2 uses
  %14 = shufflevector <4 x i32> %13, <4 x i32> %10, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %15 = icmp ult <4 x i32> %14, splat (i32 256)
  %16 = insertelement <4 x i32> %9, i32 %4, i64 3
  %17 = shufflevector <4 x i32> %13, <4 x i32> %16, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %18 = icmp sgt <4 x i32> %17, <i32 -1, i32 -1, i32 -1, i32 -129>
  %19 = sext <4 x i1> %18 to <4 x i8>
  %20 = trunc <4 x i32> %14 to <4 x i8>
  %21 = select <4 x i1> %15, <4 x i8> %20, <4 x i8> %19
  br label %float2rgbe.exit

float2rgbe.exit:                                  ; preds = %.lr.ph124, %bb.d
  %22 = phi <4 x i8> [ %21, %bb.d ], [ zeroinitializer, %.lr.ph124 ]
  store <4 x i8> %22, ptr %.3122, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.cb = getelementptr inbounds nuw i8, ptr %.3122, i64 4 ; 2 uses
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.cc = load i32, ptr %i.i, align 8, !tbaa !29
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next139, %i.cd
  br i1 %i.ce, label %.lr.ph124, label %.loopexit, !llvm.loop !32

bb.e:                                             ; preds = %bb.c
  store i8 2, ptr %.2125, align 1, !tbaa !54
  %i.cf = getelementptr inbounds nuw i8, ptr %.2125, i64 1
  store i8 2, ptr %i.cf, align 1, !tbaa !54
  %i.cg = getelementptr inbounds nuw i8, ptr %.2125, i64 2
  %i.ch = load i32, ptr %i.i, align 8, !tbaa !29
  %i.ci = lshr i32 %i.ch, 8
  %i.cj = trunc i32 %i.ci to i8
  store i8 %i.cj, ptr %i.cg, align 1, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %.2125, i64 3
  %i.cl = load i32, ptr %i.i, align 8, !tbaa !29
  %i.cm = trunc i32 %i.cl to i8
  store i8 %i.cm, ptr %i.ck, align 1, !tbaa !54
  %i.cn = getelementptr inbounds nuw i8, ptr %.2125, i64 4 ; 3 uses
  %i.co = load i32, ptr %i.i, align 8, !tbaa !29
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph, label %.loopexit

.preheader115:                                    ; preds = %float2rgbe.exit86
  %i.cq = icmp sgt i32 %i.dj, 0
  br i1 %i.cq, label %.preheader115.split, label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %float2rgbe.exit86
  %indvars.iv = phi i64 [ %indvars.iv.next, %float2rgbe.exit86 ], [ 0, %bb.e ] ; 5 uses
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.cs = shl nuw nsw i64 %indvars.iv, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !53 ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !53 ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !53 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.da = fcmp nsz ogt float %i.cv, %i.cx
  %i.db = select nsz i1 %i.da, float %i.cv, float %i.cx ; 2 uses
  %i.dc = fcmp nsz ogt float %i.db, %i.cz
  %..i69 = select nsz i1 %i.dc, float %i.db, float %i.cz ; 3 uses
  %i.dd = fcmp nsz olt float %..i69, 1.000000e-32
  br i1 %i.dd, label %float2rgbe.exit86, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.de = call nsz float @frexpf(float noundef %..i69, ptr noundef nonnull %i.a) #7
  %i.df = fmul nsz float %i.de, 2.560000e+02
  %i.dg = fdiv nsz float %i.df, %..i69            ; 2 uses
  %i.dh = fmul nsz float %i.cz, %i.dg
  %i.di = fptosi float %i.dh to i32
  %23 = load i32, ptr %i.a, align 4, !tbaa !51    ; 2 uses
  %24 = add nsw i32 %23, 128
  %25 = insertelement <4 x float> poison, float %i.cv, i64 0
  %26 = insertelement <4 x float> %25, float %i.cx, i64 1
  %27 = insertelement <2 x float> poison, float %i.dg, i64 0
  %28 = insertelement <4 x i32> poison, i32 %i.di, i64 2 ; 2 uses
  %29 = insertelement <4 x i32> %28, i32 %24, i64 3
  %30 = shufflevector <2 x float> %27, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %31 = fmul nsz <4 x float> %26, %30
  %32 = fptosi <4 x float> %31 to <4 x i32>       ; 2 uses
  %33 = shufflevector <4 x i32> %32, <4 x i32> %29, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %34 = icmp ult <4 x i32> %33, splat (i32 256)
  %35 = insertelement <4 x i32> %28, i32 %23, i64 3
  %36 = shufflevector <4 x i32> %32, <4 x i32> %35, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %37 = icmp sgt <4 x i32> %36, <i32 -1, i32 -1, i32 -1, i32 -129>
  %38 = sext <4 x i1> %37 to <4 x i8>
  %39 = trunc <4 x i32> %33 to <4 x i8>
  %40 = select <4 x i1> %34, <4 x i8> %39, <4 x i8> %38
  br label %float2rgbe.exit86

float2rgbe.exit86:                                ; preds = %.lr.ph, %bb.f
  %41 = phi <4 x i8> [ %40, %bb.f ], [ zeroinitializer, %.lr.ph ]
  store <4 x i8> %41, ptr %i.ct, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dj = load i32, ptr %i.i, align 8, !tbaa !29  ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next, %i.dk
  br i1 %i.dl, label %.lr.ph, label %.preheader115, !llvm.loop !33

.preheader115.split:                              ; preds = %.preheader115, %rle.exit
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %rle.exit ], [ 0, %.preheader115 ] ; 4 uses
  %.4120 = phi ptr [ %.12, %rle.exit ], [ %i.cn, %.preheader115 ] ; 2 uses
  %i.dm = load ptr, ptr %i.d, align 8, !tbaa !31  ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv135 ; 33 uses
  %i.do = load i32, ptr %i.i, align 8, !tbaa !29  ; 5 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.preheader.preheader.i, label %rle.exit

.preheader.preheader.i:                           ; preds = %.preheader115.split
  %i.dq = zext nneg i32 %i.do to i64
  %scevgep160.a = getelementptr i8, ptr %i.dm, i64 %indvars.iv135
  %i.dr = getelementptr i8, ptr %i.dm, i64 %indvars.iv135
  %scevgep162 = getelementptr i8, ptr %i.dr, i64 -3
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %.preheader.preheader.i
  %.6 = phi ptr [ %.4120, %.preheader.preheader.i ], [ %.8, %bb.m ] ; 5 uses
  %.05577.i = phi i32 [ 0, %.preheader.preheader.i ], [ %.3.i, %bb.m ] ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i, %.preheader.i
  %.05269.i = phi i32 [ %.05577.i, %.preheader.i ], [ %i.ds, %.critedge.i ]
  %.05468.i = phi i32 [ 0, %.preheader.i ], [ %.1.lcssa.i, %.critedge.i ] ; 4 uses
  %i.ds = add nsw i32 %.05468.i, %.05269.i        ; 11 uses
  %i.dt = add nsw i32 %i.ds, 1                    ; 2 uses
  %i.du = icmp slt i32 %i.dt, %i.do
  br i1 %i.du, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.dv = shl nsw i32 %i.ds, 2
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %i.dn, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !54
  %i.dz = sext i32 %i.dt to i64
  %i.ea = sext i32 %i.ds to i64
  %invariant.op.i = sub nsw i64 %i.dq, %i.ea
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv80.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next81.i, %bb.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ %i.dz, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.eb = shl nsw i64 %indvars.iv.i, 2
  %i.ec = getelementptr inbounds i8, ptr %i.dn, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !54
  %i.ee = icmp eq i8 %i.dy, %i.ed
  br i1 %i.ee, label %bb.i, label %.critedge.loopexit.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 3 uses
  %i.ef = icmp slt i64 %indvars.iv.next81.i, %invariant.op.i
  %i.eg = icmp samesign ult i64 %indvars.iv80.i, 126
  %or.cond.i = select i1 %i.ef, i1 %i.eg, i1 false
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %bb.h, label %.critedge.loopexit.i, !llvm.loop !34

.critedge.loopexit.i:                             ; preds = %bb.i, %bb.h
  %.1.lcssa.ph.in.i = phi i64 [ %indvars.iv80.i, %bb.h ], [ %indvars.iv.next81.i, %bb.i ]
  %.1.lcssa.ph.i = trunc i64 %.1.lcssa.ph.in.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.g
  %.1.lcssa.i = phi i32 [ 1, %bb.g ], [ %.1.lcssa.ph.i, %.critedge.loopexit.i ] ; 5 uses
  %i.eh = icmp samesign ult i32 %.1.lcssa.i, 4
  %i.ei = icmp slt i32 %i.ds, %i.do
  %i.ej = and i1 %i.ei, %i.eh
  br i1 %i.ej, label %bb.g, label %bb.j, !llvm.loop !35

bb.j:                                             ; preds = %.critedge.i
  %i.ek = icmp sgt i32 %.05468.i, 1
  %i.el = sub nsw i32 %i.ds, %.05577.i
  %i.em = icmp eq i32 %.05468.i, %i.el
  %or.cond61.i = select i1 %i.ek, i1 %i.em, i1 false
  br i1 %or.cond61.i, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j
  %i.en = trunc nuw nsw i32 %.05468.i to i8
  %i.eo = or disjoint i8 %i.en, -128
  %i.ep = shl nsw i32 %.05577.i, 2
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr %i.dn, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !54
  store i8 %i.eo, ptr %.6, align 1
  %.sroa.7.0..sroa_idx63.i = getelementptr inbounds nuw i8, ptr %.6, i64 1
  store i8 %i.es, ptr %.sroa.7.0..sroa_idx63.i, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %.6, i64 2
  br label %._crit_edge75.i

bb.k:                                             ; preds = %bb.j
  %i.eu = icmp slt i32 %.05577.i, %i.ds
  br i1 %i.eu, label %.lr.ph74.i, label %._crit_edge75.i

.lr.ph74.i:                                       ; preds = %bb.k, %._crit_edge.i
  %.9 = phi ptr [ %.10, %._crit_edge.i ], [ %.6, %bb.k ] ; 3 uses
  %.272.i = phi i32 [ %i.ku, %._crit_edge.i ], [ %.05577.i, %bb.k ] ; 3 uses
  %i.ev = sub nsw i32 %i.ds, %.272.i              ; 4 uses
  %i.ew = tail call i32 @llvm.smin.i32(i32 %i.ev, i32 128) ; 3 uses
  %i.ex = trunc nuw i32 %i.ew to i8
  store i8 %i.ex, ptr %.9, align 1, !tbaa !54
  %i.ey = getelementptr i8, ptr %.9, i64 1        ; 8 uses
  %i.ez = icmp sgt i32 %i.ev, 0
  br i1 %i.ez, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.lr.ph74.i
  %i.fa = sext i32 %.272.i to i64                 ; 31 uses
  %wide.trip.count.i = zext nneg i32 %i.ew to i64 ; 9 uses
  %min.iters.check = icmp slt i32 %i.ev, 9
  br i1 %min.iters.check, label %.lr.ph71.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.9, i64 1
  %scevgep159 = getelementptr i8, ptr %scevgep, i64 %wide.trip.count.i
  %i.fb = shl nsw i64 %i.fa, 2
  %scevgep161 = getelementptr i8, ptr %scevgep160.a, i64 %i.fb
  %i.fc = add nsw i64 %i.fa, %wide.trip.count.i
  %i.fd = shl nsw i64 %i.fc, 2
  %scevgep163 = getelementptr i8, ptr %scevgep162, i64 %i.fd
  %bound0 = icmp ult ptr %i.ey, %scevgep163
  %bound1 = icmp ult ptr %scevgep161, %scevgep159
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph71.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check164 = icmp slt i32 %i.ev, 17
  br i1 %min.iters.check164, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fe = and i64 %wide.trip.count.i, 15          ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 0
  %i.fg = select i1 %i.ff, i64 16, i64 %i.fe      ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.fg  ; 4 uses
  %i.fh = getelementptr i8, ptr %i.ey, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 18 uses
  %next.gep = getelementptr i8, ptr %i.ey, i64 %index
  %i.fi = or disjoint i64 %index, 1
  %i.fj = or disjoint i64 %index, 2
  %i.fk = or disjoint i64 %index, 3
  %i.fl = or disjoint i64 %index, 4
  %i.fm = or disjoint i64 %index, 5
  %i.fn = or disjoint i64 %index, 6
  %i.fo = or disjoint i64 %index, 7
  %i.fp = or disjoint i64 %index, 8
  %i.fq = or disjoint i64 %index, 9
  %i.fr = or disjoint i64 %index, 10
  %i.fs = or disjoint i64 %index, 11
  %i.ft = or disjoint i64 %index, 12
  %i.fu = or disjoint i64 %index, 13
  %i.fv = or disjoint i64 %index, 14
  %i.fw = or disjoint i64 %index, 15
  %i.fx = add nsw i64 %index, %i.fa
  %i.fy = add nsw i64 %i.fi, %i.fa
  %i.fz = add nsw i64 %i.fj, %i.fa
  %i.ga = add nsw i64 %i.fk, %i.fa
  %i.gb = add nsw i64 %i.fl, %i.fa
  %i.gc = add nsw i64 %i.fm, %i.fa
  %i.gd = add nsw i64 %i.fn, %i.fa
  %i.ge = add nsw i64 %i.fo, %i.fa
  %i.gf = add nsw i64 %i.fp, %i.fa
  %i.gg = add nsw i64 %i.fq, %i.fa
  %i.gh = add nsw i64 %i.fr, %i.fa
  %i.gi = add nsw i64 %i.fs, %i.fa
  %i.gj = add nsw i64 %i.ft, %i.fa
  %i.gk = add nsw i64 %i.fu, %i.fa
  %i.gl = add nsw i64 %i.fv, %i.fa
  %i.gm = add nsw i64 %i.fw, %i.fa
  %i.gn = shl nsw i64 %i.fx, 2
  %i.go = shl nsw i64 %i.fy, 2
  %i.gp = shl nsw i64 %i.fz, 2
  %i.gq = shl nsw i64 %i.ga, 2
  %i.gr = shl nsw i64 %i.gb, 2
  %i.gs = shl nsw i64 %i.gc, 2
  %i.gt = shl nsw i64 %i.gd, 2
  %i.gu = shl nsw i64 %i.ge, 2
  %i.gv = shl nsw i64 %i.gf, 2
  %i.gw = shl nsw i64 %i.gg, 2
  %i.gx = shl nsw i64 %i.gh, 2
  %i.gy = shl nsw i64 %i.gi, 2
  %i.gz = shl nsw i64 %i.gj, 2
  %i.ha = shl nsw i64 %i.gk, 2
  %i.hb = shl nsw i64 %i.gl, 2
  %i.hc = shl nsw i64 %i.gm, 2
  %i.hd = getelementptr inbounds i8, ptr %i.dn, i64 %i.gn
  %i.he = getelementptr inbounds i8, ptr %i.dn, i64 %i.go
  %i.hf = getelementptr inbounds i8, ptr %i.dn, i64 %i.gp
  %i.hg = getelementptr inbounds i8, ptr %i.dn, i64 %i.gq
  %i.hh = getelementptr inbounds i8, ptr %i.dn, i64 %i.gr
  %i.hi = getelementptr inbounds i8, ptr %i.dn, i64 %i.gs
  %i.hj = getelementptr inbounds i8, ptr %i.dn, i64 %i.gt
  %i.hk = getelementptr inbounds i8, ptr %i.dn, i64 %i.gu
  %i.hl = getelementptr inbounds i8, ptr %i.dn, i64 %i.gv
end_hunk_0
begin_hunk_1_@hdr_encode_frame:bb.a
.lr.ph71.i.prol.loopexit:                         ; preds = %.lr.ph71.i.prol, %.lr.ph71.i.preheader
  %.lcssa173.unr = phi ptr [ poison, %.lr.ph71.i.preheader ], [ %i.jf, %.lr.ph71.i.prol ]
  %.11.unr = phi ptr [ %.11.ph, %.lr.ph71.i.preheader ], [ %i.jf, %.lr.ph71.i.prol ]
  %indvars.iv85.i.unr = phi i64 [ %indvars.iv85.i.ph, %.lr.ph71.i.preheader ], [ %indvars.iv.next86.i.prol, %.lr.ph71.i.prol ]
  %i.jg = sub nsw i64 %indvars.iv85.i.ph, %wide.trip.count.i
  %i.jh = icmp ugt i64 %i.jg, -4
  br i1 %i.jh, label %._crit_edge.i, label %.lr.ph71.i.preheader.new

.lr.ph71.i.preheader.new:                         ; preds = %.lr.ph71.i.prol.loopexit
  %invariant.op193 = add nsw i64 1, %i.fa
  %invariant.op195 = add nsw i64 2, %i.fa
  %invariant.op197 = add nsw i64 3, %i.fa
  br label %.lr.ph71.i

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ji = and i64 %wide.trip.count.i, 7           ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 0
  %i.jk = select i1 %i.jj, i64 8, i64 %i.ji
  %n.vec165 = sub nsw i64 %wide.trip.count.i, %i.jk ; 3 uses
  %i.jl = getelementptr i8, ptr %i.ey, i64 %n.vec165
  %invariant.op = add i64 1, %i.fa
  %invariant.op181 = add i64 2, %i.fa
  %invariant.op183 = add i64 3, %i.fa
  %invariant.op185 = add i64 4, %i.fa
  %invariant.op187 = add i64 5, %i.fa
  %invariant.op189 = add i64 6, %i.fa
  %invariant.op191 = add i64 7, %i.fa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index166 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next168, %vec.epilog.vector.body ] ; 10 uses
  %next.gep167 = getelementptr i8, ptr %i.ey, i64 %index166
  %i.jm = add nsw i64 %index166, %i.fa
  %.reass = add i64 %index166, %invariant.op
  %.reass182 = add i64 %index166, %invariant.op181
  %.reass184 = add i64 %index166, %invariant.op183
  %.reass186 = add i64 %index166, %invariant.op185
  %.reass188 = add i64 %index166, %invariant.op187
  %.reass190 = add i64 %index166, %invariant.op189
  %.reass192 = add i64 %index166, %invariant.op191
  %i.jn = shl nsw i64 %i.jm, 2
  %i.jo = shl nsw i64 %.reass, 2
  %i.jp = shl nsw i64 %.reass182, 2
  %i.jq = shl nsw i64 %.reass184, 2
  %i.jr = shl nsw i64 %.reass186, 2
  %i.js = shl nsw i64 %.reass188, 2
  %i.jt = shl nsw i64 %.reass190, 2
  %i.ju = shl nsw i64 %.reass192, 2
  %i.jv = getelementptr inbounds i8, ptr %i.dn, i64 %i.jn
  %i.jw = getelementptr inbounds i8, ptr %i.dn, i64 %i.jo
  %i.jx = getelementptr inbounds i8, ptr %i.dn, i64 %i.jp
  %i.jy = getelementptr inbounds i8, ptr %i.dn, i64 %i.jq
  %i.jz = getelementptr inbounds i8, ptr %i.dn, i64 %i.jr
  %i.ka = getelementptr inbounds i8, ptr %i.dn, i64 %i.js
  %i.kb = getelementptr inbounds i8, ptr %i.dn, i64 %i.jt
  %i.kc = getelementptr inbounds i8, ptr %i.dn, i64 %i.ju
  %i.kd = load i8, ptr %i.jv, align 1, !tbaa !54, !alias.scope !56
  %i.ke = load i8, ptr %i.jw, align 1, !tbaa !54, !alias.scope !56
  %i.kf = load i8, ptr %i.jx, align 1, !tbaa !54, !alias.scope !56
  %i.kg = load i8, ptr %i.jy, align 1, !tbaa !54, !alias.scope !56
  %i.kh = load i8, ptr %i.jz, align 1, !tbaa !54, !alias.scope !56
  %i.ki = load i8, ptr %i.ka, align 1, !tbaa !54, !alias.scope !56
  %i.kj = load i8, ptr %i.kb, align 1, !tbaa !54, !alias.scope !56
  %i.kk = load i8, ptr %i.kc, align 1, !tbaa !54, !alias.scope !56
  %i.kl = insertelement <8 x i8> poison, i8 %i.kd, i64 0
  %i.km = insertelement <8 x i8> %i.kl, i8 %i.ke, i64 1
  %i.kn = insertelement <8 x i8> %i.km, i8 %i.kf, i64 2
  %i.ko = insertelement <8 x i8> %i.kn, i8 %i.kg, i64 3
  %i.kp = insertelement <8 x i8> %i.ko, i8 %i.kh, i64 4
  %i.kq = insertelement <8 x i8> %i.kp, i8 %i.ki, i64 5
  %i.kr = insertelement <8 x i8> %i.kq, i8 %i.kj, i64 6
  %i.ks = insertelement <8 x i8> %i.kr, i8 %i.kk, i64 7
  store <8 x i8> %i.ks, ptr %next.gep167, align 1, !tbaa !54, !alias.scope !57, !noalias !56
  %index.next168 = add nuw i64 %index166, 8       ; 2 uses
  %i.kt = icmp eq i64 %index.next168, %n.vec165
  br i1 %i.kt, label %.lr.ph71.i.preheader, label %vec.epilog.vector.body, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.lr.ph71.i.prol.loopexit, %.lr.ph71.i, %.lr.ph74.i
  %.10 = phi ptr [ %i.ey, %.lr.ph74.i ], [ %.lcssa173.unr, %.lr.ph71.i.prol.loopexit ], [ %i.lm, %.lr.ph71.i ] ; 2 uses
  %i.ku = add nsw i32 %i.ew, %.272.i              ; 3 uses
  %i.kv = icmp slt i32 %i.ku, %i.ds
  br i1 %i.kv, label %.lr.ph74.i, label %._crit_edge75.i, !llvm.loop !42

.lr.ph71.i:                                       ; preds = %.lr.ph71.i, %.lr.ph71.i.preheader.new
  %.11 = phi ptr [ %.11.unr, %.lr.ph71.i.preheader.new ], [ %i.lm, %.lr.ph71.i ] ; 5 uses
  %indvars.iv85.i = phi i64 [ %indvars.iv85.i.unr, %.lr.ph71.i.preheader.new ], [ %indvars.iv.next86.i.3, %.lr.ph71.i ] ; 5 uses
  %i.kw = add nsw i64 %indvars.iv85.i, %i.fa
  %i.kx = shl nsw i64 %i.kw, 2
  %i.ky = getelementptr inbounds i8, ptr %i.dn, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !54
  store i8 %i.kz, ptr %.11, align 1, !tbaa !54
  %i.la = getelementptr inbounds nuw i8, ptr %.11, i64 1
  %.reass194 = add nsw i64 %indvars.iv85.i, %invariant.op193
  %i.lb = shl nsw i64 %.reass194, 2
  %i.lc = getelementptr inbounds i8, ptr %i.dn, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !54
  store i8 %i.ld, ptr %i.la, align 1, !tbaa !54
  %i.le = getelementptr inbounds nuw i8, ptr %.11, i64 2
  %.reass196 = add nsw i64 %indvars.iv85.i, %invariant.op195
  %i.lf = shl nsw i64 %.reass196, 2
  %i.lg = getelementptr inbounds i8, ptr %i.dn, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !54
  store i8 %i.lh, ptr %i.le, align 1, !tbaa !54
  %i.li = getelementptr inbounds nuw i8, ptr %.11, i64 3
  %.reass198 = add nsw i64 %indvars.iv85.i, %invariant.op197
  %i.lj = shl nsw i64 %.reass198, 2
  %i.lk = getelementptr inbounds i8, ptr %i.dn, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !54
  store i8 %i.ll, ptr %i.li, align 1, !tbaa !54
  %i.lm = getelementptr inbounds nuw i8, ptr %.11, i64 4 ; 2 uses
  %indvars.iv.next86.i.3 = add nuw nsw i64 %indvars.iv85.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next86.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph71.i, !llvm.loop !43

._crit_edge75.i:                                  ; preds = %._crit_edge.i, %bb.k, %.thread.i
  %.7 = phi ptr [ %i.et, %.thread.i ], [ %.6, %bb.k ], [ %.10, %._crit_edge.i ] ; 4 uses
  %.2.lcssa.i = phi i32 [ %i.ds, %.thread.i ], [ %.05577.i, %bb.k ], [ %i.ku, %._crit_edge.i ] ; 2 uses
  %i.ln = icmp samesign ugt i32 %.1.lcssa.i, 3
  br i1 %i.ln, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge75.i
  %i.lo = trunc i32 %.1.lcssa.i to i8
  %i.lp = xor i8 %i.lo, -128
  %i.lq = shl nsw i32 %i.ds, 2
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds i8, ptr %i.dn, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !54
  store i8 %i.lp, ptr %.7, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.7, i64 1
  store i8 %i.lt, ptr %.sroa.7.0..sroa_idx.i, align 1
  %i.lu = getelementptr inbounds nuw i8, ptr %.7, i64 2
  %i.lv = add nsw i32 %.2.lcssa.i, %.1.lcssa.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge75.i
  %.8 = phi ptr [ %i.lu, %bb.l ], [ %.7, %._crit_edge75.i ] ; 2 uses
  %.3.i = phi i32 [ %i.lv, %bb.l ], [ %.2.lcssa.i, %._crit_edge75.i ] ; 2 uses
  %i.lw = icmp slt i32 %.3.i, %i.do
  br i1 %i.lw, label %.preheader.i, label %rle.exit, !llvm.loop !44

rle.exit:                                         ; preds = %bb.m, %.preheader115.split
  %.12 = phi ptr [ %.4120, %.preheader115.split ], [ %.8, %bb.m ] ; 2 uses
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next136, 4
  br i1 %exitcond.not, label %.loopexit, label %.preheader115.split, !llvm.loop !45

.loopexit:                                        ; preds = %rle.exit, %float2rgbe.exit, %bb.e, %.preheader115, %.preheader
  %.5 = phi ptr [ %i.cn, %.preheader115 ], [ %.2125, %.preheader ], [ %i.cn, %bb.e ], [ %i.cb, %float2rgbe.exit ], [ %.12, %rle.exit ] ; 2 uses
  %i.lx = add nuw nsw i32 %.063126, 1             ; 2 uses
  %i.ly = load i32, ptr %i.e, align 4, !tbaa !47
  %i.lz = icmp slt i32 %i.lx, %i.ly
  br i1 %i.lz, label %bb.c, label %._crit_edge, !llvm.loop !46

bb.n:                                             ; preds = %bb.a, %._crit_edge
  %.064 = phi i32 [ 0, %._crit_edge ], [ %i.p, %bb.a ]
  ret i32 %.064
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @hdr_encode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  tail call void @av_freep(ptr noundef %i.b) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @av_shrink_packet(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare float @frexpf(float noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 112}
!30 = !{!"HDREncContext", !14, i64 0}
!31 = !{!30, !14, i64 0}
!32 = distinct !{!32, !55}
!33 = distinct !{!33, !55}
!34 = distinct !{!34, !55}
!35 = distinct !{!35, !55}
!36 = distinct !{!36, !"LVerDomain"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !55, !58, !59}
!40 = distinct !{!40, !61}
!41 = distinct !{!41, !55, !58, !59}
!42 = distinct !{!42, !55}
!43 = distinct !{!43, !55, !58}
!44 = distinct !{!44, !55}
!45 = distinct !{!45, !55, !62}
!46 = distinct !{!46, !55}
!47 = !{!27, !6, i64 116}
!48 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!49 = !{!48, !14, i64 24}
!50 = !{!48, !6, i64 40}
!51 = !{!6, !6, i64 0}
!52 = !{!14, !14, i64 0}
!53 = !{!16, !16, i64 0}
!54 = !{!5, !5, i64 0}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!37}
!57 = !{!38}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !{!"branch_weights", i32 8, i32 8}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_1
