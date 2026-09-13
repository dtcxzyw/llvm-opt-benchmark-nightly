Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_dblur?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"dblur\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Apply Directional Blur filter.\00", align 1
@dblur_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@pix_fmts = internal constant [61 x i32] [i32 79, i32 5, i32 31, i32 14, i32 32, i32 78, i32 4, i32 33, i32 0, i32 13, i32 12, i32 138, i32 7, i32 6, i32 60, i32 70, i32 66, i32 62, i32 64, i32 68, i32 123, i32 127, i32 131, i32 153, i32 125, i32 129, i32 133, i32 45, i32 47, i32 49, i32 81, i32 83, i32 85, i32 87, i32 89, i32 91, i32 185, i32 187, i32 93, i32 95, i32 97, i32 71, i32 73, i32 75, i32 135, i32 137, i32 77, i32 111, i32 163, i32 161, i32 113, i32 8, i32 173, i32 168, i32 166, i32 181, i32 30, i32 183, i32 175, i32 177, i32 -1], align 16
@ff_vf_dblur = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @dblur_inputs, ptr @ff_video_default_filterpad, ptr @dblur_class, i32 65536, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @pix_fmts }, i32 96, i32 0, ptr @ff_filter_process_command, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@dblur_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @dblur_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"set angle\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"set radius\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"planes\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"set planes to filter\00", align 1
@dblur_options = internal constant <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 8, i32 5, { double } { double 4.500000e+01 }, double 0.000000e+00, double 3.600000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 12, i32 5, { double } { double 5.000000e+00 }, double 0.000000e+00, double 8.192000e+03, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 16, i32 2, %union.anon.2 { i64 15 }, double 0.000000e+00, double 1.500000e+01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @av_freep(ptr noundef nonnull %i.c) #7
  ret void
}

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load float, ptr %i.i, align 8, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.l = load float, ptr %i.k, align 4, !tbaa !74 ; 4 uses
  %i.m = fpext nsz float %i.j to double
  %i.n = fmul nsz double %i.m, f0x400921FB54442D18
  %i.o = fdiv nsz double %i.n, 1.800000e+02
  %i.p = fptrunc nsz double %i.o to float
  %sincos.i = tail call nsz { float, float } @llvm.sincos.f32(float %i.p) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0 ; 2 uses
  %cos.i = extractvalue { float, float } %sincos.i, 1 ; 2 uses
  %i.q = fmul nsz float %i.l, %cos.i              ; 2 uses
  %i.r = fmul nsz float %i.q, %i.q
  %i.s = fmul nsz float %i.l, %sin.i              ; 2 uses
  %i.t = fmul nsz float %i.s, %i.s
  %i.u = fmul nsz float %cos.i, %sin.i
  %i.v = fmul nsz float %i.l, %i.u
  %i.w = fmul nsz float %i.l, %i.v                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store float %i.w, ptr %i.x, align 4, !tbaa !75
  %i.y = fadd nsz float %i.r, 2.500000e-01
  %i.z = tail call nsz float @llvm.sqrt.f32(float %i.y) ; 2 uses
  %i.aa = fadd nsz float %i.t, 2.500000e-01
  %i.ab = tail call nsz float @llvm.sqrt.f32(float %i.aa) ; 2 uses
  %i.ac = fadd nsz float %i.z, 5.000000e-01       ; 2 uses
  %i.ad = fadd nsz float %i.ab, 5.000000e-01      ; 2 uses
  %i.ae = tail call nsz float @llvm.fabs.f32(float %i.w)
  %i.af = fneg nsz float %i.ae
  %i.ag = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float %i.ad, float %i.af) ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.ai = fsub nsz float %i.ag, %i.ac
  %i.aj = fsub nsz float %i.ag, %i.ad
  %i.ak = fsub nsz float %i.z, %i.ag
  %i.al = fadd nsz float %i.ab, %i.ak
  %i.am = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.ai, i64 1
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 2
  %i.ao = insertelement <4 x float> %i.an, float %i.al, i64 3
  %i.ap = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ar = fdiv nsz <4 x float> %i.ao, %i.aq
  store <4 x float> %i.ar, ptr %i.ah, align 4, !tbaa !76
  %i.as = tail call i32 @av_frame_is_writable(ptr noundef %1) #7
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.au = load i32, ptr %i.at, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !33
  %i.ax = tail call ptr @ff_get_video_buffer(ptr noundef %i.h, i32 noundef %i.au, i32 noundef %i.aw) #7 ; 3 uses
  %.not167 = icmp eq ptr %i.ax, null
  br i1 %.not167, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @av_frame_free(ptr noundef nonnull %i.a) #7
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.ay = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.ax, ptr noundef %1) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0155 = phi ptr [ %i.ax, %bb.d ], [ %1, %bb.a ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !34
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph, label %._crit_edge221

.lr.ph:                                           ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0155, i64 64 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv251 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next252, %.loopexit ] ; 16 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv251
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !35 ; 12 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv251
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !35 ; 28 uses
  %i.bm = load ptr, ptr %i.be, align 8, !tbaa !36 ; 5 uses
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !69  ; 6 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv251
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !77 ; 6 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.0155, i64 %indvars.iv251
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !77 ; 4 uses
  %i.bs = load i32, ptr %i.bf, align 8, !tbaa !78
  %i.bt = trunc nuw nsw i64 %indvars.iv251 to i32
  %i.bu = shl nuw i32 1, %i.bt
  %i.bv = and i32 %i.bs, %i.bu
  %.not169 = icmp eq i32 %i.bv, 0
  br i1 %.not169, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not170 = icmp eq ptr %.0155, %i.bn
  br i1 %.not170, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv251
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !35
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv251
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !35
  %i.cb = load i32, ptr %i.bg, align 8, !tbaa !37
  %i.cc = add nsw i32 %i.cb, 7
  %i.cd = sdiv i32 %i.cc, 8
  %i.ce = mul nsw i32 %i.cd, %i.bl
  tail call void @av_image_copy_plane(ptr noundef %i.br, i32 noundef %i.bx, ptr noundef %i.bp, i32 noundef %i.ca, i32 noundef %i.ce, i32 noundef %i.bj) #7
  br label %.loopexit

bb.i:                                             ; preds = %bb.f
  %i.cf = load i32, ptr %i.bg, align 8, !tbaa !37 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 8
  br i1 %i.cg, label %.preheader184, label %bb.j

.preheader184:                                    ; preds = %bb.i
  %i.ch = icmp sgt i32 %i.bj, 0
  br i1 %i.ch, label %.preheader175.lr.ph, label %.loopexit185

.preheader175.lr.ph:                              ; preds = %.preheader184
  %i.ci = icmp sgt i32 %i.bl, 0
  %i.cj = sext i32 %i.bl to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv251
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !35 ; 2 uses
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  br i1 %i.ci, label %.preheader175.preheader, label %.loopexit185

.preheader175.preheader:                          ; preds = %.preheader175.lr.ph
  %wide.trip.count234 = zext nneg i32 %i.bl to i64 ; 7 uses
  %i.co = shl nuw nsw i64 %i.cj, 2
  %i.cp = add nsw i32 %i.bj, -1
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = mul i64 %i.co, %i.cq
  %i.cs = shl nuw nsw i64 %wide.trip.count234, 2
  %i.ct = getelementptr i8, ptr %i.bm, i64 %i.cr
  %scevgep = getelementptr i8, ptr %i.ct, i64 %i.cs
  %i.cu = mul nsw i64 %i.cn, %i.cq
  %i.cv = getelementptr i8, ptr %i.bp, i64 %i.cu
  %scevgep287 = getelementptr i8, ptr %i.cv, i64 %wide.trip.count234
  %min.iters.check289 = icmp ult i32 %i.bl, 8
  %bound0 = icmp ult ptr %i.bm, %scevgep287
  %bound1 = icmp ult ptr %i.bp, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.cm, 0
  %i.cw = or i1 %found.conflict, %stride.check
  %n.vec291 = and i64 %wide.trip.count234, 2147483640 ; 3 uses
  %cmp.n298 = icmp eq i64 %n.vec291, %wide.trip.count234
  %xtraiter318 = and i64 %wide.trip.count234, 3   ; 2 uses
  %lcmp.mod319.not = icmp eq i64 %xtraiter318, 0
  br label %.preheader175

.preheader175:                                    ; preds = %.preheader175.preheader, %._crit_edge200
  %.0136203 = phi i32 [ %i.ec, %._crit_edge200 ], [ 0, %.preheader175.preheader ]
  %.0147202 = phi ptr [ %i.eb, %._crit_edge200 ], [ %i.bp, %.preheader175.preheader ] ; 7 uses
  %.0148201 = phi ptr [ %i.ea, %._crit_edge200 ], [ %i.bm, %.preheader175.preheader ] ; 7 uses
  %brmerge = select i1 %min.iters.check289, i1 true, i1 %i.cw
  br i1 %brmerge, label %scalar.ph288.preheader, label %vector.body292

vector.body292:                                   ; preds = %.preheader175, %vector.body292
  %index293 = phi i64 [ %index.next296, %vector.body292 ], [ 0, %.preheader175 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0147202, i64 %index293 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %wide.load294 = load <4 x i8>, ptr %i.cx, align 1, !tbaa !79, !alias.scope !80
  %wide.load295 = load <4 x i8>, ptr %i.cy, align 1, !tbaa !79, !alias.scope !80
  %i.cz = uitofp <4 x i8> %wide.load294 to <4 x float>
  %i.da = uitofp <4 x i8> %wide.load295 to <4 x float>
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.0148201, i64 %index293 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <4 x float> %i.cz, ptr %i.db, align 4, !tbaa !76, !alias.scope !81, !noalias !80
  store <4 x float> %i.da, ptr %i.dc, align 4, !tbaa !76, !alias.scope !81, !noalias !80
  %index.next296 = add nuw i64 %index293, 8       ; 2 uses
  %i.dd = icmp eq i64 %index.next296, %n.vec291
  br i1 %i.dd, label %middle.block297, label %vector.body292, !llvm.loop !41

middle.block297:                                  ; preds = %vector.body292
  br i1 %cmp.n298, label %._crit_edge200, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %.preheader175, %middle.block297
  %indvars.iv231.ph = phi i64 [ %n.vec291, %middle.block297 ], [ 0, %.preheader175 ] ; 3 uses
  br i1 %lcmp.mod319.not, label %scalar.ph288.prol.loopexit, label %scalar.ph288.prol

scalar.ph288.prol:                                ; preds = %scalar.ph288.preheader, %scalar.ph288.prol
  %indvars.iv231.prol = phi i64 [ %indvars.iv.next232.prol, %scalar.ph288.prol ], [ %indvars.iv231.ph, %scalar.ph288.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph288.prol ], [ 0, %scalar.ph288.preheader ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0147202, i64 %indvars.iv231.prol
  %i.df = load i8, ptr %i.de, align 1, !tbaa !79
  %i.dg = uitofp nsz i8 %i.df to float
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.0148201, i64 %indvars.iv231.prol
  store float %i.dg, ptr %i.dh, align 4, !tbaa !76
  %indvars.iv.next232.prol = add nuw nsw i64 %indvars.iv231.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter318
  br i1 %prol.iter.cmp.not, label %scalar.ph288.prol.loopexit, label %scalar.ph288.prol, !llvm.loop !42

scalar.ph288.prol.loopexit:                       ; preds = %scalar.ph288.prol, %scalar.ph288.preheader
  %indvars.iv231.unr = phi i64 [ %indvars.iv231.ph, %scalar.ph288.preheader ], [ %indvars.iv.next232.prol, %scalar.ph288.prol ]
  %i.di = sub nsw i64 %indvars.iv231.ph, %wide.trip.count234
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %._crit_edge200, label %scalar.ph288

scalar.ph288:                                     ; preds = %scalar.ph288.prol.loopexit, %scalar.ph288
  %indvars.iv231 = phi i64 [ %indvars.iv.next232.3, %scalar.ph288 ], [ %indvars.iv231.unr, %scalar.ph288.prol.loopexit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0147202, i64 %indvars.iv231
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !79
  %i.dm = uitofp nsz i8 %i.dl to float
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.0148201, i64 %indvars.iv231
  store float %i.dm, ptr %i.dn, align 4, !tbaa !76
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0147202, i64 %indvars.iv.next232
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !79
  %i.dq = uitofp nsz i8 %i.dp to float
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.0148201, i64 %indvars.iv.next232
  store float %i.dq, ptr %i.dr, align 4, !tbaa !76
  %indvars.iv.next232.1 = add nuw nsw i64 %indvars.iv231, 2 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0147202, i64 %indvars.iv.next232.1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !79
  %i.du = uitofp nsz i8 %i.dt to float
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.0148201, i64 %indvars.iv.next232.1
  store float %i.du, ptr %i.dv, align 4, !tbaa !76
  %indvars.iv.next232.2 = add nuw nsw i64 %indvars.iv231, 3 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0147202, i64 %indvars.iv.next232.2
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !79
  %i.dy = uitofp nsz i8 %i.dx to float
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.0148201, i64 %indvars.iv.next232.2
  store float %i.dy, ptr %i.dz, align 4, !tbaa !76
  %indvars.iv.next232.3 = add nuw nsw i64 %indvars.iv231, 4 ; 2 uses
  %exitcond235.not.3 = icmp eq i64 %indvars.iv.next232.3, %wide.trip.count234
  br i1 %exitcond235.not.3, label %._crit_edge200, label %scalar.ph288, !llvm.loop !43

._crit_edge200:                                   ; preds = %scalar.ph288.prol.loopexit, %scalar.ph288, %middle.block297
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.0148201, i64 %i.cj
  %i.eb = getelementptr inbounds i8, ptr %.0147202, i64 %i.cn
  %i.ec = add nuw nsw i32 %.0136203, 1            ; 2 uses
  %exitcond236.not = icmp eq i32 %i.ec, %i.bj
  br i1 %exitcond236.not, label %.loopexit185, label %.preheader175, !llvm.loop !44

bb.j:                                             ; preds = %bb.i
  %i.ed = icmp slt i32 %i.cf, 17
  %i.ee = icmp sgt i32 %i.bj, 0                   ; 2 uses
  br i1 %i.ed, label %.preheader186, label %.preheader188

.preheader188:                                    ; preds = %bb.j
  br i1 %i.ee, label %.preheader177.lr.ph, label %.loopexit185

.preheader177.lr.ph:                              ; preds = %.preheader188
  %i.ef = icmp sgt i32 %i.bl, 0
  %i.eg = sext i32 %i.bl to i64                   ; 2 uses
  %i.eh = shl nuw nsw i64 %i.eg, 2                ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv251
  br i1 %i.ef, label %.preheader177.preheader, label %.loopexit185

.preheader177.preheader:                          ; preds = %.preheader177.lr.ph
  %xtraiter = and i32 %i.bl, 3                    ; 3 uses
  %i.ek = icmp ult i32 %i.bl, 4
  %unroll_iter = and i32 %i.bl, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod317 = icmp ne i32 %xtraiter, 0
  br label %.preheader177

.preheader186:                                    ; preds = %bb.j
  br i1 %i.ee, label %.preheader176.lr.ph, label %.loopexit185

.preheader176.lr.ph:                              ; preds = %.preheader186
  %i.el = icmp sgt i32 %i.bl, 0
  %i.em = sext i32 %i.bl to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv251
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !35
  %i.eq = sdiv i32 %i.ep, 2
  %i.er = sext i32 %i.eq to i64
  br i1 %i.el, label %.preheader176.preheader, label %.loopexit185

.preheader176.preheader:                          ; preds = %.preheader176.lr.ph
  %wide.trip.count = zext nneg i32 %i.bl to i64   ; 3 uses
  %min.iters.check301 = icmp ult i32 %i.bl, 8
  %n.vec303 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n310 = icmp eq i64 %n.vec303, %wide.trip.count
  br label %.preheader176

.preheader176:                                    ; preds = %.preheader176.preheader, %._crit_edge195
  %.1137198 = phi i32 [ %i.ff, %._crit_edge195 ], [ 0, %.preheader176.preheader ]
  %.0146197 = phi ptr [ %i.fe, %._crit_edge195 ], [ %i.bp, %.preheader176.preheader ] ; 3 uses
  %.1149196 = phi ptr [ %i.fd, %._crit_edge195 ], [ %i.bm, %.preheader176.preheader ] ; 3 uses
  br i1 %min.iters.check301, label %scalar.ph300.preheader, label %vector.body304

vector.body304:                                   ; preds = %.preheader176, %vector.body304
  %index305 = phi i64 [ %index.next308, %vector.body304 ], [ 0, %.preheader176 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %.0146197, i64 %index305 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %wide.load306 = load <4 x i16>, ptr %i.es, align 2, !tbaa !87
  %wide.load307 = load <4 x i16>, ptr %i.et, align 2, !tbaa !87
  %i.eu = uitofp <4 x i16> %wide.load306 to <4 x float>
  %i.ev = uitofp <4 x i16> %wide.load307 to <4 x float>
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.1149196, i64 %index305 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <4 x float> %i.eu, ptr %i.ew, align 4, !tbaa !76
  store <4 x float> %i.ev, ptr %i.ex, align 4, !tbaa !76
  %index.next308 = add nuw i64 %index305, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next308, %n.vec303
  br i1 %i.ey, label %middle.block309, label %vector.body304, !llvm.loop !45

middle.block309:                                  ; preds = %vector.body304
  br i1 %cmp.n310, label %._crit_edge195, label %scalar.ph300.preheader

scalar.ph300.preheader:                           ; preds = %.preheader176, %middle.block309
  %indvars.iv.ph = phi i64 [ 0, %.preheader176 ], [ %n.vec303, %middle.block309 ]
  br label %scalar.ph300

scalar.ph300:                                     ; preds = %scalar.ph300.preheader, %scalar.ph300
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph300 ], [ %indvars.iv.ph, %scalar.ph300.preheader ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %.0146197, i64 %indvars.iv
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !87
  %i.fb = uitofp nsz i16 %i.fa to float
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.1149196, i64 %indvars.iv
  store float %i.fb, ptr %i.fc, align 4, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond229.not, label %._crit_edge195, label %scalar.ph300, !llvm.loop !46

._crit_edge195:                                   ; preds = %scalar.ph300, %middle.block309
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.1149196, i64 %i.em
  %i.fe = getelementptr inbounds [2 x i8], ptr %.0146197, i64 %i.er
  %i.ff = add nuw nsw i32 %.1137198, 1            ; 2 uses
  %exitcond230.not = icmp eq i32 %i.ff, %i.bj
  br i1 %exitcond230.not, label %.loopexit185, label %.preheader176, !llvm.loop !47

.preheader177:                                    ; preds = %.preheader177.preheader, %._crit_edge
  %.2138193 = phi i32 [ %i.fl, %._crit_edge ], [ 0, %.preheader177.preheader ]
  %.0145192 = phi ptr [ %i.fk, %._crit_edge ], [ %i.bp, %.preheader177.preheader ] ; 6 uses
  %.2150191 = phi ptr [ %i.fg, %._crit_edge ], [ %i.bm, %.preheader177.preheader ] ; 6 uses
  br i1 %i.ek, label %.epil.preheader, label %.preheader177.new

.preheader177.new:                                ; preds = %.preheader177, %.preheader177.new
  %niter = phi i32 [ %niter.next.3, %.preheader177.new ], [ 0, %.preheader177 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.2150191, ptr align 4 %.0145192, i64 %i.eh, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.2150191, ptr align 4 %.0145192, i64 %i.eh, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.2150191, ptr align 4 %.0145192, i64 %i.eh, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.2150191, ptr align 4 %.0145192, i64 %i.eh, i1 false)
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader177.new, !llvm.loop !48

._crit_edge.unr-lcssa:                            ; preds = %.preheader177.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader177
  tail call void @llvm.assume(i1 %lcmp.mod317)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.2150191, ptr align 4 %.0145192, i64 %i.eh, i1 false)
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.k, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.k, %._crit_edge.unr-lcssa
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.2150191, i64 %i.eg
  %i.fh = load i32, ptr %i.ej, align 4, !tbaa !35
  %i.fi = sdiv i32 %i.fh, 4
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %.0145192, i64 %i.fj
  %i.fl = add nuw nsw i32 %.2138193, 1            ; 2 uses
  %exitcond227.not = icmp eq i32 %i.fl, %i.bj
  br i1 %exitcond227.not, label %.loopexit185, label %.preheader177, !llvm.loop !50

.loopexit185:                                     ; preds = %._crit_edge, %._crit_edge195, %._crit_edge200, %.preheader188, %.preheader177.lr.ph, %.preheader186, %.preheader176.lr.ph, %.preheader184, %.preheader175.lr.ph
  %.val = load ptr, ptr %i.d, align 8, !tbaa !19  ; 8 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv251
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !35 ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.val, i64 60
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv251
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !35 ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !88 ; 12 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !89 ; 12 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !90 ; 14 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.fz = load float, ptr %i.fy, align 8, !tbaa !91 ; 14 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !36 ; 10 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.val, i64 36
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !75
  %i.ge = fcmp nsz ogt float %i.gd, 0.000000e+00
  %i.gf = icmp sgt i32 %i.fr, 1
  %i.gg = icmp sgt i32 %i.fo, 0
  %or.cond.i.i = and i1 %i.gg, %i.gf              ; 2 uses
  br i1 %i.ge, label %.preheader.i.i, label %.preheader2.i.i

.preheader2.i.i:                                  ; preds = %.loopexit185
  br i1 %or.cond.i.i, label %.lr.ph.preheader.i.i, label %diriir2d.exit

.lr.ph.preheader.i.i:                             ; preds = %.preheader2.i.i
  %i.gh = zext nneg i32 %i.fo to i64              ; 11 uses
  %wide.trip.count.i.i = zext nneg i32 %i.fr to i64
  %invariant.gep69.i.i = getelementptr [4 x i8], ptr %i.gb, i64 %i.gh
  %i.gi = add nsw i64 %i.gh, -1                   ; 2 uses
  %xtraiter320 = and i64 %i.gh, 1
  %lcmp.mod321.not = icmp eq i64 %xtraiter320, 0
  %indvars.iv.i.i.prol = add nsw i64 %i.gh, -1    ; 3 uses
  %i.gj = icmp eq i64 %i.gi, 0
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.loopexit185
  br i1 %or.cond.i.i, label %.lr.ph19.preheader.i.i, label %diriir2d.exit

.lr.ph19.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.gk = zext nneg i32 %i.fo to i64              ; 11 uses
  %wide.trip.count54.i.i = zext nneg i32 %i.fr to i64
  %i.gl = add nsw i64 %i.gk, -1                   ; 2 uses
  %xtraiter331 = and i64 %i.gk, 1
  %i.gm = icmp eq i64 %i.gl, 0
  %unroll_iter335 = and i64 %i.gk, 2147483646
  %lcmp.mod333.not = icmp eq i64 %xtraiter331, 0
  %lcmp.mod334 = trunc i32 %i.fo to i1
  br label %.lr.ph19.i.i

.lr.ph27.preheader.i.i:                           ; preds = %._crit_edge20.i.i
  %i.gn = add nsw i32 %i.fr, -2
  %i.go = zext nneg i32 %i.gn to i64
  %invariant.gep83.i.i = getelementptr [4 x i8], ptr %i.gb, i64 %i.gk
  %xtraiter339 = and i64 %i.gk, 1
  %lcmp.mod340.not = icmp eq i64 %xtraiter339, 0
  %indvars.iv56.i.i.prol = add nsw i64 %i.gk, -1  ; 3 uses
  %i.gp = icmp eq i64 %i.gl, 0
  br label %.lr.ph27.i.i

.lr.ph19.i.i:                                     ; preds = %._crit_edge20.i.i, %.lr.ph19.preheader.i.i
  %indvars.iv51.i.i = phi i64 [ 1, %.lr.ph19.preheader.i.i ], [ %indvars.iv.next52.i.i, %._crit_edge20.i.i ] ; 3 uses
  %i.gq = mul nuw nsw i64 %indvars.iv51.i.i, %i.gk
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gq ; 4 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !76 ; 2 uses
  %i.gt = fmul nsz float %i.fz, %i.gs
  %i.gu = tail call nsz float @llvm.fmuladd.f32(float %i.fx, float %i.gs, float %i.gt) ; 2 uses
  %2 = add nsw i64 %indvars.iv51.i.i, -1
  %3 = mul nuw nsw i64 %2, %i.gk
  %invariant.gep77.i.i = getelementptr [4 x i8], ptr %i.gb, i64 %3 ; 3 uses
  br i1 %i.gm, label %.epil.preheader330, label %.lr.ph19.i.i.new

._crit_edge20.i.i.unr-lcssa:                      ; preds = %.lr.ph19.i.i.new
  br i1 %lcmp.mod333.not, label %._crit_edge20.i.i, label %.epil.preheader330

.epil.preheader330:                               ; preds = %._crit_edge20.i.i.unr-lcssa, %.lr.ph19.i.i
  %indvars.iv46.i.i.epil.init = phi i64 [ 0, %.lr.ph19.i.i ], [ %indvars.iv.next47.i.i.1, %._crit_edge20.i.i.unr-lcssa ] ; 2 uses
  %.017316.i.i.epil.init = phi float [ %i.gu, %.lr.ph19.i.i ], [ %i.hp, %._crit_edge20.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod334)
  %gep76.i.i.epil = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv46.i.i.epil.init ; 2 uses
  %i.gv = load float, ptr %gep76.i.i.epil, align 4, !tbaa !76
  %gep78.i.i.epil = getelementptr [4 x i8], ptr %invariant.gep77.i.i, i64 %indvars.iv46.i.i.epil.init
  %i.gw = load float, ptr %gep78.i.i.epil, align 4, !tbaa !76
  %i.gx = fmul nsz float %i.fv, %i.gw
  %i.gy = tail call nsz float @llvm.fmuladd.f32(float %i.ft, float %i.gv, float %i.gx)
  %i.gz = fadd nsz float %.017316.i.i.epil.init, %i.gy
  store float %i.gz, ptr %gep76.i.i.epil, align 4, !tbaa !76
  br label %._crit_edge20.i.i

._crit_edge20.i.i:                                ; preds = %._crit_edge20.i.i.unr-lcssa, %.epil.preheader330
  %indvars.iv.next52.i.i = add nuw nsw i64 %indvars.iv51.i.i, 1 ; 2 uses
  %exitcond55.not.i.i = icmp eq i64 %indvars.iv.next52.i.i, %wide.trip.count54.i.i
  br i1 %exitcond55.not.i.i, label %.lr.ph27.preheader.i.i, label %.lr.ph19.i.i, !llvm.loop !51

.lr.ph19.i.i.new:                                 ; preds = %.lr.ph19.i.i, %.lr.ph19.i.i.new
  %indvars.iv46.i.i = phi i64 [ %indvars.iv.next47.i.i.1, %.lr.ph19.i.i.new ], [ 0, %.lr.ph19.i.i ] ; 4 uses
  %.017316.i.i = phi float [ %i.hp, %.lr.ph19.i.i.new ], [ %i.gu, %.lr.ph19.i.i ]
  %niter336 = phi i64 [ %niter336.next.1, %.lr.ph19.i.i.new ], [ 0, %.lr.ph19.i.i ]
  %gep76.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv46.i.i ; 2 uses
  %i.ha = load float, ptr %gep76.i.i, align 4, !tbaa !76
  %gep78.i.i = getelementptr [4 x i8], ptr %invariant.gep77.i.i, i64 %indvars.iv46.i.i ; 2 uses
  %i.hb = load float, ptr %gep78.i.i, align 4, !tbaa !76
  %i.hc = fmul nsz float %i.fv, %i.hb
  %i.hd = tail call nsz float @llvm.fmuladd.f32(float %i.ft, float %i.ha, float %i.hc)
  %i.he = fadd nsz float %.017316.i.i, %i.hd      ; 2 uses
  store float %i.he, ptr %gep76.i.i, align 4, !tbaa !76
  %i.hf = load float, ptr %gep78.i.i, align 4, !tbaa !76
  %i.hg = fmul nsz float %i.fz, %i.hf
  %i.hh = tail call nsz float @llvm.fmuladd.f32(float %i.fx, float %i.he, float %i.hg)
  %indvars.iv.next47.i.i = or disjoint i64 %indvars.iv46.i.i, 1 ; 2 uses
  %gep76.i.i.1 = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv.next47.i.i ; 2 uses
  %i.hi = load float, ptr %gep76.i.i.1, align 4, !tbaa !76
  %gep78.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep77.i.i, i64 %indvars.iv.next47.i.i ; 2 uses
  %i.hj = load float, ptr %gep78.i.i.1, align 4, !tbaa !76
  %i.hk = fmul nsz float %i.fv, %i.hj
  %i.hl = tail call nsz float @llvm.fmuladd.f32(float %i.ft, float %i.hi, float %i.hk)
  %i.hm = fadd nsz float %i.hh, %i.hl             ; 2 uses
  store float %i.hm, ptr %gep76.i.i.1, align 4, !tbaa !76
  %i.hn = load float, ptr %gep78.i.i.1, align 4, !tbaa !76
  %i.ho = fmul nsz float %i.fz, %i.hn
  %i.hp = tail call nsz float @llvm.fmuladd.f32(float %i.fx, float %i.hm, float %i.ho) ; 2 uses
  %indvars.iv.next47.i.i.1 = add nuw nsw i64 %indvars.iv46.i.i, 2 ; 2 uses
  %niter336.next.1 = add i64 %niter336, 2         ; 2 uses
  %niter336.ncmp.1 = icmp eq i64 %niter336.next.1, %unroll_iter335
  br i1 %niter336.ncmp.1, label %._crit_edge20.i.i.unr-lcssa, label %.lr.ph19.i.i.new, !llvm.loop !52

.lr.ph27.i.i:                                     ; preds = %._crit_edge28.i.i, %.lr.ph27.preheader.i.i
  %indvars.iv59.i.i = phi i64 [ %i.go, %.lr.ph27.preheader.i.i ], [ %indvars.iv.next60.i.i, %._crit_edge28.i.i ] ; 4 uses
  %i.hq = mul nsw i64 %indvars.iv59.i.i, %i.gk    ; 2 uses
  %gep84.i.i = getelementptr [4 x i8], ptr %invariant.gep83.i.i, i64 %i.hq
  %i.hr = getelementptr i8, ptr %gep84.i.i, i64 -4
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !76 ; 2 uses
  %i.ht = fmul nsz float %i.fz, %i.hs
  %i.hu = tail call nsz float @llvm.fmuladd.f32(float %i.fx, float %i.hs, float %i.ht) ; 2 uses
  %i.hv = add nuw nsw i64 %indvars.iv59.i.i, 1
  %i.hw = mul nuw nsw i64 %i.hv, %i.gk
  %invariant.gep79.i.i = getelementptr [4 x i8], ptr %i.gb, i64 %i.hq ; 3 uses
  %invariant.gep81.i.i = getelementptr [4 x i8], ptr %i.gb, i64 %i.hw ; 3 uses
  br i1 %lcmp.mod340.not, label %.prol.loopexit338, label %.prol.loopexit338.unr-lcssa

.prol.loopexit338.unr-lcssa:                      ; preds = %.lr.ph27.i.i
  %gep80.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep79.i.i, i64 %indvars.iv56.i.i.prol ; 2 uses
  %i.hx = load float, ptr %gep80.i.i.prol, align 4, !tbaa !76
  %gep82.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep81.i.i, i64 %indvars.iv56.i.i.prol ; 2 uses
  %i.hy = load float, ptr %gep82.i.i.prol, align 4, !tbaa !76
  %i.hz = fmul nsz float %i.fv, %i.hy
  %i.ia = tail call nsz float @llvm.fmuladd.f32(float %i.ft, float %i.hx, float %i.hz)
  %i.ib = fadd nsz float %i.hu, %i.ia             ; 2 uses
  store float %i.ib, ptr %gep80.i.i.prol, align 4, !tbaa !76
  %i.ic = load float, ptr %gep82.i.i.prol, align 4, !tbaa !76
  %i.id = fmul nsz float %i.fz, %i.ic
  %i.ie = tail call nsz float @llvm.fmuladd.f32(float %i.fx, float %i.ib, float %i.id)
  br label %.prol.loopexit338

.prol.loopexit338:                                ; preds = %.prol.loopexit338.unr-lcssa, %.lr.ph27.i.i
  %indvars.iv56.in.i.i.unr = phi i64 [ %i.gk, %.lr.ph27.i.i ], [ %indvars.iv56.i.i.prol, %.prol.loopexit338.unr-lcssa ]
  %.124.i.i.unr = phi float [ %i.hu, %.lr.ph27.i.i ], [ %i.ie, %.prol.loopexit338.unr-lcssa ]
  br i1 %i.gp, label %._crit_edge28.i.i, label %.lr.ph27.i.i.new

._crit_edge28.i.i:                                ; preds = %.lr.ph27.i.i.new, %.prol.loopexit338
  %indvars.iv.next60.i.i = add nsw i64 %indvars.iv59.i.i, -1
  %i.if = icmp sgt i64 %indvars.iv59.i.i, 0
  br i1 %i.if, label %.lr.ph27.i.i, label %diriir2d.exit, !llvm.loop !53

.lr.ph27.i.i.new:                                 ; preds = %.prol.loopexit338, %.lr.ph27.i.i.new
  %indvars.iv56.in.i.i = phi i64 [ %indvars.iv56.i.i.1, %.lr.ph27.i.i.new ], [ %indvars.iv56.in.i.i.unr, %.prol.loopexit338 ] ; 3 uses
  %.124.i.i = phi float [ %i.iv, %.lr.ph27.i.i.new ], [ %.124.i.i.unr, %.prol.loopexit338 ]
  %indvars.iv56.i.i = add nsw i64 %indvars.iv56.in.i.i, -1 ; 2 uses
  %gep80.i.i = getelementptr [4 x i8], ptr %invariant.gep79.i.i, i64 %indvars.iv56.i.i ; 2 uses
  %i.ig = load float, ptr %gep80.i.i, align 4, !tbaa !76
  %gep82.i.i = getelementptr [4 x i8], ptr %invariant.gep81.i.i, i64 %indvars.iv56.i.i ; 2 uses
  %i.ih = load float, ptr %gep82.i.i, align 4, !tbaa !76
  %i.ii = fmul nsz float %i.fv, %i.ih
  %i.ij = tail call nsz float @llvm.fmuladd.f32(float %i.ft, float %i.ig, float %i.ii)
  %i.ik = fadd nsz float %.124.i.i, %i.ij         ; 2 uses
  store float %i.ik, ptr %gep80.i.i, align 4, !tbaa !76
  %i.il = load float, ptr %gep82.i.i, align 4, !tbaa !76
  %i.im = fmul nsz float %i.fz, %i.il
  %i.in = tail call nsz float @llvm.fmuladd.f32(float %i.fx, float %i.ik, float %i.im)
  %indvars.iv56.i.i.1 = add nsw i64 %indvars.iv56.in.i.i, -2 ; 3 uses
  %gep80.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep79.i.i, i64 %indvars.iv56.i.i.1 ; 2 uses
  %i.io = load float, ptr %gep80.i.i.1, align 4, !tbaa !76
  %gep82.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep81.i.i, i64 %indvars.iv56.i.i.1 ; 2 uses
  %i.ip = load float, ptr %gep82.i.i.1, align 4, !tbaa !76
  %i.iq = fmul nsz float %i.fv, %i.ip
  %i.ir = tail call nsz float @llvm.fmuladd.f32(float %i.ft, float %i.io, float %i.iq)
  %i.is = fadd nsz float %i.in, %i.ir             ; 2 uses
  store float %i.is, ptr %gep80.i.i.1, align 4, !tbaa !76
  %i.it = load float, ptr %gep82.i.i.1, align 4, !tbaa !76
  %i.iu = fmul nsz float %i.fz, %i.it
  %i.iv = tail call nsz float @llvm.fmuladd.f32(float %i.fx, float %i.is, float %i.iu)
  %i.iw = icmp sgt i64 %indvars.iv56.in.i.i, 2
  br i1 %i.iw, label %.lr.ph27.i.i.new, label %._crit_edge28.i.i, !llvm.loop !54

.lr.ph11.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %i.ix = add nsw i32 %i.fr, -2
  %i.iy = zext nneg i32 %i.ix to i64
  %xtraiter324 = and i64 %i.gh, 1
  %i.iz = icmp eq i64 %i.gi, 0
  %unroll_iter328 = and i64 %i.gh, 2147483646
  %lcmp.mod326.not = icmp eq i64 %xtraiter324, 0
  %lcmp.mod327 = trunc i32 %i.fo to i1
  br label %.lr.ph11.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.preheader.i.i
  %indvars.iv35.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next36.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ja = mul nuw nsw i64 %indvars.iv35.i.i, %i.gh ; 2 uses
  %gep70.i.i = getelementptr [4 x i8], ptr %invariant.gep69.i.i, i64 %i.ja
  %i.jb = getelementptr i8, ptr %gep70.i.i, i64 -4
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !76 ; 2 uses
  %i.jd = fmul nsz float %i.fz, %i.jc
  %i.je = tail call nsz float @llvm.fmuladd.f32(float %i.fx, float %i.jc, float %i.jd) ; 2 uses
  %i.jf = add nsw i64 %indvars.iv35.i.i, -1
  %i.jg = mul nuw nsw i64 %i.jf, %i.gh
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.gb, i64 %i.ja ; 3 uses
  %invariant.gep67.i.i = getelementptr [4 x i8], ptr %i.gb, i64 %i.jg ; 3 uses
  br i1 %lcmp.mod321.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i
  %gep.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i.prol ; 2 uses
  %i.jh = load float, ptr %gep.i.i.prol, align 4, !tbaa !76
  %gep68.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep67.i.i, i64 %indvars.iv.i.i.prol ; 2 uses
  %i.ji = load float, ptr %gep68.i.i.prol, align 4, !tbaa !76
  %i.jj = fmul nsz float %i.fv, %i.ji
  %i.jk = tail call nsz float @llvm.fmuladd.f32(float %i.ft, float %i.jh, float %i.jj)
  %i.jl = fadd nsz float %i.je, %i.jk             ; 2 uses
  store float %i.jl, ptr %gep.i.i.prol, align 4, !tbaa !76
  %i.jm = load float, ptr %gep68.i.i.prol, align 4, !tbaa !76
  %i.jn = fmul nsz float %i.fz, %i.jm
  %i.jo = tail call nsz float @llvm.fmuladd.f32(float %i.fx, float %i.jl, float %i.jn)
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.in.i.i.unr = phi i64 [ %i.gh, %.lr.ph.i.i ], [ %indvars.iv.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.23.i.i.unr = phi float [ %i.je, %.lr.ph.i.i ], [ %i.jo, %.prol.loopexit.unr-lcssa ]
  br i1 %i.gj, label %._crit_edge.i.i, label %.lr.ph.i.i.new

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.new, %.prol.loopexit
  %indvars.iv.next36.i.i = add nuw nsw i64 %indvars.iv35.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next36.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph11.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !55

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %indvars.iv.in.i.i = phi i64 [ %indvars.iv.i.i.1, %.lr.ph.i.i.new ], [ %indvars.iv.in.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.23.i.i = phi float [ %i.ke, %.lr.ph.i.i.new ], [ %.23.i.i.unr, %.prol.loopexit ]
  %indvars.iv.i.i = add nsw i64 %indvars.iv.in.i.i, -1 ; 2 uses
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.jp = load float, ptr %gep.i.i, align 4, !tbaa !76
  %gep68.i.i = getelementptr [4 x i8], ptr %invariant.gep67.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.jq = load float, ptr %gep68.i.i, align 4, !tbaa !76
  %i.jr = fmul nsz float %i.fv, %i.jq
  %i.js = tail call nsz float @llvm.fmuladd.f32(float %i.ft, float %i.jp, float %i.jr)
  %i.jt = fadd nsz float %.23.i.i, %i.js          ; 2 uses
  store float %i.jt, ptr %gep.i.i, align 4, !tbaa !76
  %i.ju = load float, ptr %gep68.i.i, align 4, !tbaa !76
  %i.jv = fmul nsz float %i.fz, %i.ju
  %i.jw = tail call nsz float @llvm.fmuladd.f32(float %i.fx, float %i.jt, float %i.jv)
  %indvars.iv.i.i.1 = add nsw i64 %indvars.iv.in.i.i, -2 ; 3 uses
  %gep.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i.1 ; 2 uses
  %i.jx = load float, ptr %gep.i.i.1, align 4, !tbaa !76
  %gep68.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep67.i.i, i64 %indvars.iv.i.i.1 ; 2 uses
  %i.jy = load float, ptr %gep68.i.i.1, align 4, !tbaa !76
  %i.jz = fmul nsz float %i.fv, %i.jy
  %i.ka = tail call nsz float @llvm.fmuladd.f32(float %i.ft, float %i.jx, float %i.jz)
  %i.kb = fadd nsz float %i.jw, %i.ka             ; 2 uses
  store float %i.kb, ptr %gep.i.i.1, align 4, !tbaa !76
  %i.kc = load float, ptr %gep68.i.i.1, align 4, !tbaa !76
  %i.kd = fmul nsz float %i.fz, %i.kc
  %i.ke = tail call nsz float @llvm.fmuladd.f32(float %i.fx, float %i.kb, float %i.kd)
  %i.kf = icmp sgt i64 %indvars.iv.in.i.i, 2
  br i1 %i.kf, label %.lr.ph.i.i.new, label %._crit_edge.i.i, !llvm.loop !56

.lr.ph11.i.i:                                     ; preds = %._crit_edge12.i.i, %.lr.ph11.preheader.i.i
  %indvars.iv43.i.i = phi i64 [ %i.iy, %.lr.ph11.preheader.i.i ], [ %indvars.iv.next44.i.i, %._crit_edge12.i.i ] ; 4 uses
  %i.kg = mul nsw i64 %indvars.iv43.i.i, %i.gh
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.kg ; 4 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !76 ; 2 uses
  %i.kj = fmul nsz float %i.fz, %i.ki
  %i.kk = tail call nsz float @llvm.fmuladd.f32(float %i.fx, float %i.ki, float %i.kj) ; 2 uses
  %i.kl = add nuw nsw i64 %indvars.iv43.i.i, 1
  %i.km = mul nuw nsw i64 %i.kl, %i.gh
  %invariant.gep73.i.i = getelementptr [4 x i8], ptr %i.gb, i64 %i.km ; 3 uses
  br i1 %i.iz, label %.epil.preheader323, label %.lr.ph11.i.i.new

._crit_edge12.i.i.unr-lcssa:                      ; preds = %.lr.ph11.i.i.new
  br i1 %lcmp.mod326.not, label %._crit_edge12.i.i, label %.epil.preheader323

.epil.preheader323:                               ; preds = %._crit_edge12.i.i.unr-lcssa, %.lr.ph11.i.i
  %indvars.iv38.i.i.epil.init = phi i64 [ 0, %.lr.ph11.i.i ], [ %indvars.iv.next39.i.i.1, %._crit_edge12.i.i.unr-lcssa ] ; 2 uses
  %.38.i.i.epil.init = phi float [ %i.kk, %.lr.ph11.i.i ], [ %i.li, %._crit_edge12.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod327)
  %gep72.i.i.epil = getelementptr [4 x i8], ptr %i.kh, i64 %indvars.iv38.i.i.epil.init ; 2 uses
  %i.kn = load float, ptr %gep72.i.i.epil, align 4, !tbaa !76
  %gep74.i.i.epil = getelementptr [4 x i8], ptr %invariant.gep73.i.i, i64 %indvars.iv38.i.i.epil.init
  %i.ko = load float, ptr %gep74.i.i.epil, align 4, !tbaa !76
  %i.kp = fmul nsz float %i.fv, %i.ko
  %i.kq = tail call nsz float @llvm.fmuladd.f32(float %i.ft, float %i.kn, float %i.kp)
  %i.kr = fadd nsz float %.38.i.i.epil.init, %i.kq
  store float %i.kr, ptr %gep72.i.i.epil, align 4, !tbaa !76
  br label %._crit_edge12.i.i

._crit_edge12.i.i:                                ; preds = %._crit_edge12.i.i.unr-lcssa, %.epil.preheader323
  %indvars.iv.next44.i.i = add nsw i64 %indvars.iv43.i.i, -1
  %i.ks = icmp sgt i64 %indvars.iv43.i.i, 0
  br i1 %i.ks, label %.lr.ph11.i.i, label %diriir2d.exit, !llvm.loop !57

.lr.ph11.i.i.new:                                 ; preds = %.lr.ph11.i.i, %.lr.ph11.i.i.new
  %indvars.iv38.i.i = phi i64 [ %indvars.iv.next39.i.i.1, %.lr.ph11.i.i.new ], [ 0, %.lr.ph11.i.i ] ; 4 uses
  %.38.i.i = phi float [ %i.li, %.lr.ph11.i.i.new ], [ %i.kk, %.lr.ph11.i.i ]
  %niter329 = phi i64 [ %niter329.next.1, %.lr.ph11.i.i.new ], [ 0, %.lr.ph11.i.i ]
  %gep72.i.i = getelementptr [4 x i8], ptr %i.kh, i64 %indvars.iv38.i.i ; 2 uses
  %i.kt = load float, ptr %gep72.i.i, align 4, !tbaa !76
  %gep74.i.i = getelementptr [4 x i8], ptr %invariant.gep73.i.i, i64 %indvars.iv38.i.i ; 2 uses
end_hunk_0
