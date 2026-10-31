Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_siti?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"siti\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Calculate spatial information (SI) and temporal information (TI).\00", align 1
@avfilter_vf_siti_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@pix_fmts = internal constant [7 x i32] [i32 0, i32 4, i32 12, i32 13, i32 62, i32 64, i32 -1], align 16
@ff_vf_siti = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @avfilter_vf_siti_inputs, ptr @ff_video_default_filterpad, ptr @siti_class, i32 8, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 { ptr @pix_fmts }, i32 88, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"lavfi.siti.si\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"lavfi.siti.ti\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%0.2f\00", align 1
@siti_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @siti_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"print_summary\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Print summary showing average values\00", align 1
@siti_options = internal constant [2 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 84, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.10 = private unnamed_addr constant [134 x i8] c"SITI Summary:\0ATotal frames: %ld\0A\0ASpatial Information:\0AAverage: %f\0AMax: %f\0AMin: %f\0A\0ATemporal Information:\0AAverage: %f\0AMax: %f\0AMin: %f\0A\00", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <2 x float> zeroinitializer, ptr %i.c, align 8, !tbaa !21
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !42
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.h = uitofp nsz i64 %i.g to float
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load <2 x float>, ptr %i.e, align 8, !tbaa !21
  %i.k = insertelement <2 x float> poison, float %i.h, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fdiv nsz <2 x float> %i.j, %i.l
  %i.n = fpext nsz <2 x float> %i.m to <2 x double> ; 2 uses
  %i.o = load <4 x float>, ptr %i.i, align 8, !tbaa !21
  %i.p = fpext nsz <4 x float> %i.o to <4 x double> ; 4 uses
  %i.q = extractelement <2 x double> %i.n, i64 0
  %i.r = extractelement <2 x double> %i.n, i64 1
  %i.s = extractelement <4 x double> %i.p, i64 0
  %i.t = extractelement <4 x double> %i.p, i64 1
  %i.u = extractelement <4 x double> %i.p, i64 2
  %i.v = extractelement <4 x double> %i.p, i64 3
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.10, i64 noundef %i.g, double noundef %i.q, double noundef %i.s, double noundef %i.u, double noundef %i.r, double noundef %i.t, double noundef %i.v) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @av_freep(ptr noundef nonnull %i.w) #8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @av_freep(ptr noundef nonnull %i.x) #8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @av_freep(ptr noundef nonnull %i.y) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 24 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.h = load i32, ptr %i.g, align 8, !tbaa !96
  switch i32 %i.h, label %bb.c [
    i32 0, label %bb.b
    i32 3, label %bb.b
    i32 2, label %is_full_range.exit
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.j = load i32, ptr %i.i, align 4, !tbaa !97
  %i.k = and i32 %i.j, -2
  %narrow.i = icmp eq i32 %i.k, 12
  %i.l = zext i1 %narrow.i to i32
  br label %is_full_range.exit

bb.c:                                             ; preds = %bb.a
  br label %is_full_range.exit

is_full_range.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %.0.in.i = phi i32 [ %i.l, %bb.b ], [ 0, %bb.c ], [ 1, %bb.a ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  store i32 %.0.in.i, ptr %i.m, align 8, !tbaa !98
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25
  %i.p = add i64 %i.o, 1                          ; 2 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !25
  %i.q = load ptr, ptr %1, align 8, !tbaa !99     ; 29 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !37   ; 3 uses
  %i.x = sdiv i32 %i.u, %i.w                      ; 10 uses
  %i.y = icmp eq i32 %i.w, 1                      ; 3 uses
  %i.z = select i1 %i.y, i32 1, i32 4             ; 4 uses
  %i.aa = icmp eq i32 %i.w, 2                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !38 ; 7 uses
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  %i.ae = icmp sgt i32 %i.ac, 2                   ; 2 uses
  br i1 %i.aa, label %.preheader101.i, label %.preheader104.i

.preheader104.i:                                  ; preds = %is_full_range.exit
  br i1 %i.ae, label %.preheader103.lr.ph.i, label %convolve_sobel.exit.thread93

.preheader103.lr.ph.i:                            ; preds = %.preheader104.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39 ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 2
  %i.ai = shl nuw nsw i32 %i.z, 4                 ; 8 uses
  %i.aj = select i1 %i.y, i32 219, i32 876        ; 3 uses
  %i.ak = shl nuw nsw i32 %i.z, 8
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  %i.am = uitofp nneg i32 %i.aj to float          ; 2 uses
  %i.an = add i32 %i.ag, -2                       ; 2 uses
  br i1 %i.ah, label %.preheader103.lr.ph.split.i, label %convolve_sobel.exit.thread93.thread

convolve_sobel.exit.thread93.thread:              ; preds = %.preheader103.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !41
  br label %.preheader74.lr.ph.i

.preheader103.lr.ph.split.i:                      ; preds = %.preheader103.lr.ph.i
  %i.as = add nsw i32 %i.ag, -1
  %.not.i = icmp eq i32 %.0.in.i, 0
  %i.at = sext i32 %i.x to i64                    ; 11 uses
  %wide.trip.count157.i = zext i32 %i.ad to i64   ; 5 uses
  %wide.trip.count152.i = zext i32 %i.as to i64   ; 10 uses
  %i.au = add nsw i64 %wide.trip.count152.i, -2   ; 4 uses
  %i.av = add nsw i64 %wide.trip.count157.i, -2
  %i.aw = mul i64 %i.av, %i.at
  %i.ax = getelementptr i8, ptr %i.q, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 %wide.trip.count152.i
  %scevgep235 = getelementptr i8, ptr %i.ay, i64 1 ; 2 uses
  %i.az = add nsw i64 %wide.trip.count157.i, -1
  %i.ba = mul i64 %i.az, %i.at
  %i.bb = getelementptr i8, ptr %i.q, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 %wide.trip.count152.i
  %scevgep236 = getelementptr i8, ptr %i.bc, i64 1 ; 2 uses
  %scevgep237 = getelementptr i8, ptr %i.q, i64 %i.at ; 2 uses
  %i.bd = mul nsw i64 %i.at, %wide.trip.count157.i
  %i.be = getelementptr i8, ptr %i.q, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 %wide.trip.count152.i
  %scevgep238 = getelementptr i8, ptr %i.bf, i64 1 ; 2 uses
  %i.bg = shl nsw i64 %i.at, 1
  %scevgep239 = getelementptr i8, ptr %i.q, i64 %i.bg ; 2 uses
  br i1 %.not.i, label %.preheader103.us.i.preheader, label %.preheader103.i.preheader

.preheader103.i.preheader:                        ; preds = %.preheader103.lr.ph.split.i
  %i.bh = add nsw i64 %wide.trip.count152.i, -1   ; 3 uses
  %min.iters.check = icmp ult i64 %i.bh, 4
  %i.bi = trunc i64 %i.au to i32
  %i.bj = icmp ugt i64 %i.au, 4294967295
  %stride.check = icmp slt i32 %i.x, 0
  %n.vec = and i64 %i.bh, -4                      ; 3 uses
  %i.bk = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br label %.preheader103.i

.preheader103.us.i.preheader:                     ; preds = %.preheader103.lr.ph.split.i
  %i.bl = add nsw i64 %wide.trip.count152.i, -1   ; 3 uses
  %min.iters.check241 = icmp ult i64 %i.bl, 4
  %i.bm = trunc i64 %i.au to i32
  %i.bn = icmp ugt i64 %i.au, 4294967295
  %stride.check246 = icmp slt i32 %i.x, 0
  %n.vec256 = and i64 %i.bl, -4                   ; 3 uses
  %i.bo = or disjoint i64 %n.vec256, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert257 = insertelement <4 x float> poison, float %i.am, i64 0
  %broadcast.splat258 = shufflevector <4 x float> %broadcast.splatinsert257, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert259 = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat260 = shufflevector <4 x i32> %broadcast.splatinsert259, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert261 = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat262 = shufflevector <4 x i32> %broadcast.splatinsert261, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %cmp.n275 = icmp eq i64 %i.bl, %n.vec256
  %i.bp = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.br = insertelement <2 x i32> poison, i32 %i.al, i64 0
  %i.bs = shufflevector <2 x i32> %i.br, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bt = insertelement <2 x i32> poison, i32 %i.aj, i64 0
  %i.bu = shufflevector <2 x i32> %i.bt, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bv = insertelement <2 x i32> poison, i32 %i.ai, i64 0
  %i.bw = shufflevector <2 x i32> %i.bv, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader103.us.i

.preheader103.us.i:                               ; preds = %.preheader103.us.i.preheader, %._crit_edge.split.us.us.i
  %indvars.iv154.i = phi i64 [ %i.cc, %._crit_edge.split.us.us.i ], [ 1, %.preheader103.us.i.preheader ] ; 3 uses
  %i.bx = add nsw i64 %indvars.iv154.i, -1        ; 2 uses
  %i.by = trunc i64 %i.bx to i32
  %i.bz = mul i32 %i.an, %i.by                    ; 4 uses
  %invariant.op.us.i = add i32 %i.bz, -1          ; 2 uses
  %i.ca = mul nsw i64 %i.bx, %i.at
  %invariant.gep210.i = getelementptr i8, ptr %i.q, i64 %i.ca ; 6 uses
  %i.cb = mul nsw i64 %indvars.iv154.i, %i.at
  %invariant.gep216.i = getelementptr i8, ptr %i.q, i64 %i.cb ; 4 uses
  %i.cc = add nuw nsw i64 %indvars.iv154.i, 1     ; 3 uses
  %i.cd = mul nsw i64 %i.cc, %i.at
  %invariant.gep220.i = getelementptr i8, ptr %i.q, i64 %i.cd ; 6 uses
  br i1 %min.iters.check241, label %.preheader102.us.us.i.preheader, label %vector.scevcheck213

vector.scevcheck213:                              ; preds = %.preheader103.us.i
  %i.ce = add i32 %i.bz, %i.bm
  %i.cf = icmp slt i32 %i.ce, %i.bz
  %i.cg = or i1 %i.cf, %i.bn
  br i1 %i.cg, label %.preheader102.us.us.i.preheader, label %vector.memcheck242

vector.memcheck242:                               ; preds = %vector.scevcheck213
  %i.ch = sext i32 %i.bz to i64                   ; 2 uses
  %i.ci = shl nsw i64 %i.ch, 2
  %i.cj = getelementptr i8, ptr %i.s, i64 %i.ci   ; 3 uses
  %i.ck = add nsw i64 %i.ch, %wide.trip.count152.i
  %i.cl = shl nsw i64 %i.ck, 2
  %i.cm = getelementptr i8, ptr %i.s, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 -4     ; 3 uses
  %bound0243 = icmp ult ptr %scevgep239, %i.cn
  %bound1244 = icmp ult ptr %i.cj, %scevgep238
  %found.conflict245 = and i1 %bound0243, %bound1244
  %i.co = or i1 %found.conflict245, %stride.check246
  %bound0247 = icmp ult ptr %scevgep237, %i.cn
  %bound1248 = icmp ult ptr %i.cj, %scevgep236
  %found.conflict249 = and i1 %bound0247, %bound1248
  %conflict.rdx250 = or i1 %i.co, %found.conflict249
  %bound0251 = icmp ult ptr %i.q, %i.cn
  %bound1252 = icmp ult ptr %i.cj, %scevgep235
  %found.conflict253 = and i1 %bound0251, %bound1252
  %conflict.rdx254 = or i1 %conflict.rdx250, %found.conflict253
  br i1 %conflict.rdx254, label %.preheader102.us.us.i.preheader, label %vector.body263

vector.body263:                                   ; preds = %vector.memcheck242, %vector.body263
  %index264 = phi i64 [ %index.next273, %vector.body263 ], [ 0, %vector.memcheck242 ] ; 6 uses
  %i.cp = or disjoint i64 %index264, 1            ; 3 uses
  %i.cq = getelementptr i8, ptr %invariant.gep210.i, i64 %index264
  %wide.load265 = load <4 x i8>, ptr %i.cq, align 1, !tbaa !100, !alias.scope !101, !noalias !102
  %i.cr = zext <4 x i8> %wide.load265 to <4 x i32>
  %i.cs = sub nsw <4 x i32> %i.cr, %broadcast.splat
  %i.ct = sitofp nsz <4 x i32> %i.cs to <4 x float>
  %i.cu = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ct, <4 x float> zeroinitializer)
  %i.cv = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.cu, <4 x float> %broadcast.splat258)
  %i.cw = fptosi <4 x float> %i.cv to <4 x i32>
  %i.cx = mul nsw <4 x i32> %broadcast.splat260, %i.cw
  %i.cy = sdiv <4 x i32> %i.cx, %broadcast.splat262
  %i.cz = and <4 x i32> %i.cy, splat (i32 65535)  ; 2 uses
  %i.da = getelementptr i8, ptr %invariant.gep210.i, i64 %i.cp
  %wide.load266 = load <4 x i8>, ptr %i.da, align 1, !tbaa !100, !alias.scope !101, !noalias !102
  %i.db = zext <4 x i8> %wide.load266 to <4 x i32>
  %i.dc = sub nsw <4 x i32> %i.db, %broadcast.splat
  %i.dd = sitofp nsz <4 x i32> %i.dc to <4 x float>
  %i.de = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dd, <4 x float> zeroinitializer)
  %i.df = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.de, <4 x float> %broadcast.splat258)
  %i.dg = fptosi <4 x float> %i.df to <4 x i32>
  %i.dh = mul nsw <4 x i32> %broadcast.splat260, %i.dg
  %i.di = sdiv <4 x i32> %i.dh, %broadcast.splat262
  %i.dj = shl nsw <4 x i32> %i.di, splat (i32 1)
  %i.dk = and <4 x i32> %i.dj, splat (i32 131070)
  %i.dl = or disjoint i64 %index264, 2            ; 3 uses
  %i.dm = getelementptr i8, ptr %invariant.gep210.i, i64 %i.dl
  %wide.load267 = load <4 x i8>, ptr %i.dm, align 1, !tbaa !100, !alias.scope !101, !noalias !102
  %i.dn = zext <4 x i8> %wide.load267 to <4 x i32>
  %i.do = sub nsw <4 x i32> %i.dn, %broadcast.splat
  %i.dp = sitofp nsz <4 x i32> %i.do to <4 x float>
  %i.dq = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dp, <4 x float> zeroinitializer)
  %i.dr = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.dq, <4 x float> %broadcast.splat258)
  %i.ds = fptosi <4 x float> %i.dr to <4 x i32>
  %i.dt = mul nsw <4 x i32> %broadcast.splat260, %i.ds
  %i.du = sdiv <4 x i32> %i.dt, %broadcast.splat262
  %i.dv = and <4 x i32> %i.du, splat (i32 65535)  ; 2 uses
  %i.dw = getelementptr i8, ptr %invariant.gep216.i, i64 %index264
  %wide.load268 = load <4 x i8>, ptr %i.dw, align 1, !tbaa !100, !alias.scope !103, !noalias !102
  %i.dx = zext <4 x i8> %wide.load268 to <4 x i32>
  %i.dy = sub nsw <4 x i32> %i.dx, %broadcast.splat
  %i.dz = sitofp nsz <4 x i32> %i.dy to <4 x float>
  %i.ea = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dz, <4 x float> zeroinitializer)
  %i.eb = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ea, <4 x float> %broadcast.splat258)
  %i.ec = fptosi <4 x float> %i.eb to <4 x i32>
  %i.ed = mul nsw <4 x i32> %broadcast.splat260, %i.ec
  %i.ee = sdiv <4 x i32> %i.ed, %broadcast.splat262
  %i.ef = shl nsw <4 x i32> %i.ee, splat (i32 1)
  %i.eg = and <4 x i32> %i.ef, splat (i32 131070)
  %i.eh = getelementptr i8, ptr %invariant.gep216.i, i64 %i.dl
  %wide.load269 = load <4 x i8>, ptr %i.eh, align 1, !tbaa !100, !alias.scope !103, !noalias !102
  %i.ei = zext <4 x i8> %wide.load269 to <4 x i32>
  %i.ej = sub nsw <4 x i32> %i.ei, %broadcast.splat
  %i.ek = sitofp nsz <4 x i32> %i.ej to <4 x float>
  %i.el = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ek, <4 x float> zeroinitializer)
  %i.em = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.el, <4 x float> %broadcast.splat258)
  %i.en = fptosi <4 x float> %i.em to <4 x i32>
  %i.eo = mul nsw <4 x i32> %broadcast.splat260, %i.en
  %i.ep = sdiv <4 x i32> %i.eo, %broadcast.splat262
  %i.eq = shl nsw <4 x i32> %i.ep, splat (i32 1)
  %i.er = and <4 x i32> %i.eq, splat (i32 131070)
  %i.es = getelementptr i8, ptr %invariant.gep220.i, i64 %index264
  %wide.load270 = load <4 x i8>, ptr %i.es, align 1, !tbaa !100, !alias.scope !104, !noalias !102
  %i.et = zext <4 x i8> %wide.load270 to <4 x i32>
  %i.eu = sub nsw <4 x i32> %i.et, %broadcast.splat
  %i.ev = sitofp nsz <4 x i32> %i.eu to <4 x float>
  %i.ew = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ev, <4 x float> zeroinitializer)
  %i.ex = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ew, <4 x float> %broadcast.splat258)
  %i.ey = fptosi <4 x float> %i.ex to <4 x i32>
  %i.ez = mul nsw <4 x i32> %broadcast.splat260, %i.ey
  %i.fa = sdiv <4 x i32> %i.ez, %broadcast.splat262
  %i.fb = and <4 x i32> %i.fa, splat (i32 65535)  ; 2 uses
  %i.fc = getelementptr i8, ptr %invariant.gep220.i, i64 %i.cp
  %wide.load271 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !100, !alias.scope !104, !noalias !102
  %i.fd = zext <4 x i8> %wide.load271 to <4 x i32>
  %i.fe = sub nsw <4 x i32> %i.fd, %broadcast.splat
  %i.ff = sitofp nsz <4 x i32> %i.fe to <4 x float>
  %i.fg = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ff, <4 x float> zeroinitializer)
  %i.fh = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.fg, <4 x float> %broadcast.splat258)
  %i.fi = fptosi <4 x float> %i.fh to <4 x i32>
  %i.fj = mul nsw <4 x i32> %broadcast.splat260, %i.fi
  %i.fk = sdiv <4 x i32> %i.fj, %broadcast.splat262
  %i.fl = shl nsw <4 x i32> %i.fk, splat (i32 1)
  %i.fm = and <4 x i32> %i.fl, splat (i32 131070)
  %i.fn = getelementptr i8, ptr %invariant.gep220.i, i64 %i.dl
  %wide.load272 = load <4 x i8>, ptr %i.fn, align 1, !tbaa !100, !alias.scope !104, !noalias !102
  %i.fo = zext <4 x i8> %wide.load272 to <4 x i32>
  %i.fp = sub nsw <4 x i32> %i.fo, %broadcast.splat
  %i.fq = sitofp nsz <4 x i32> %i.fp to <4 x float>
  %i.fr = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.fq, <4 x float> zeroinitializer)
  %i.fs = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.fr, <4 x float> %broadcast.splat258)
  %i.ft = fptosi <4 x float> %i.fs to <4 x i32>
  %i.fu = mul nsw <4 x i32> %broadcast.splat260, %i.ft
  %i.fv = sdiv <4 x i32> %i.fu, %broadcast.splat262
  %i.fw = and <4 x i32> %i.fv, splat (i32 65535)  ; 2 uses
  %i.fx = add nuw nsw <4 x i32> %i.cz, %i.eg
  %i.fy = add nuw nsw <4 x i32> %i.dv, %i.er
  %i.fz = add nuw nsw <4 x i32> %i.fx, %i.fb
  %i.ga = add nuw nsw <4 x i32> %i.fy, %i.fw
  %i.gb = sub nsw <4 x i32> %i.fz, %i.ga
  %i.gc = sitofp <4 x i32> %i.gb to <4 x double>  ; 2 uses
  %i.gd = add nuw nsw <4 x i32> %i.dk, %i.cz
  %i.ge = add nuw nsw <4 x i32> %i.gd, %i.dv
  %i.gf = add nuw nsw <4 x i32> %i.fb, %i.fm
  %i.gg = add nuw nsw <4 x i32> %i.gf, %i.fw
  %i.gh = sub nsw <4 x i32> %i.ge, %i.gg
  %i.gi = sitofp <4 x i32> %i.gh to <4 x double>  ; 2 uses
  %i.gj = fmul nnan nsz <4 x double> %i.gi, %i.gi
  %i.gk = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gc, <4 x double> %i.gc, <4 x double> %i.gj)
  %i.gl = tail call nsz <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.gk)
  %i.gm = fptrunc nsz <4 x double> %i.gl to <4 x float>
  %i.gn = trunc nuw nsw i64 %i.cp to i32
  %i.go = add i32 %invariant.op.us.i, %i.gn
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.gp
  store <4 x float> %i.gm, ptr %i.gq, align 4, !tbaa !21, !alias.scope !102
  %index.next273 = add nuw i64 %index264, 4       ; 2 uses
  %i.gr = icmp eq i64 %index.next273, %n.vec256
  br i1 %i.gr, label %middle.block274, label %vector.body263, !llvm.loop !48

middle.block274:                                  ; preds = %vector.body263
  br i1 %cmp.n275, label %._crit_edge.split.us.us.i, label %.preheader102.us.us.i.preheader

.preheader102.us.us.i.preheader:                  ; preds = %vector.memcheck242, %vector.scevcheck213, %.preheader103.us.i, %middle.block274
  %indvars.iv149.i.ph = phi i64 [ 1, %vector.memcheck242 ], [ 1, %vector.scevcheck213 ], [ 1, %.preheader103.us.i ], [ %i.bo, %middle.block274 ]
  br label %.preheader102.us.us.i

.preheader102.us.us.i:                            ; preds = %.preheader102.us.us.i.preheader, %.preheader102.us.us.i
  %indvars.iv149.i = phi i64 [ %indvars.iv.next150.i, %.preheader102.us.us.i ], [ %indvars.iv149.i.ph, %.preheader102.us.us.i.preheader ] ; 5 uses
  %i.gs = add nsw i64 %indvars.iv149.i, -1        ; 3 uses
  %gep211.i = getelementptr i8, ptr %invariant.gep210.i, i64 %i.gs
  %i.gt = load i8, ptr %gep211.i, align 1, !tbaa !100
  %gep213.i = getelementptr i8, ptr %invariant.gep210.i, i64 %indvars.iv149.i
  %i.gu = load i8, ptr %gep213.i, align 1, !tbaa !100
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1 ; 5 uses
  %gep215.i = getelementptr i8, ptr %invariant.gep210.i, i64 %indvars.iv.next150.i
  %i.gv = load i8, ptr %gep215.i, align 1, !tbaa !100
  %gep217.i = getelementptr i8, ptr %invariant.gep216.i, i64 %i.gs
  %i.gw = load i8, ptr %gep217.i, align 1, !tbaa !100
  %gep219.i = getelementptr i8, ptr %invariant.gep216.i, i64 %indvars.iv.next150.i
  %i.gx = load i8, ptr %gep219.i, align 1, !tbaa !100
  %gep221.i = getelementptr i8, ptr %invariant.gep220.i, i64 %i.gs
  %i.gy = load i8, ptr %gep221.i, align 1, !tbaa !100
  %gep223.i = getelementptr i8, ptr %invariant.gep220.i, i64 %indvars.iv149.i
  %i.gz = load i8, ptr %gep223.i, align 1, !tbaa !100
  %gep225.i = getelementptr i8, ptr %invariant.gep220.i, i64 %indvars.iv.next150.i
  %i.ha = load i8, ptr %gep225.i, align 1, !tbaa !100
  %i.hb = zext i8 %i.gt to i32
  %i.hc = sub nsw i32 %i.hb, %i.ai
  %i.hd = zext i8 %i.gv to i32
  %i.he = sub nsw i32 %i.hd, %i.ai
  %i.hf = trunc nsw i32 %i.hc to i16
  %i.hg = insertelement <2 x i16> poison, i16 %i.hf, i64 0
  %i.hh = trunc nsw i32 %i.he to i16
  %i.hi = insertelement <2 x i16> %i.hg, i16 %i.hh, i64 1
  %i.hj = sitofp nsz <2 x i16> %i.hi to <2 x float>
  %i.hk = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.hj, <2 x float> zeroinitializer)
  %i.hl = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.hk, <2 x float> %i.bq)
  %i.hm = fptosi <2 x float> %i.hl to <2 x i32>
  %i.hn = mul nsw <2 x i32> %i.bs, %i.hm
  %i.ho = sdiv <2 x i32> %i.hn, %i.bu
  %i.hp = and <2 x i32> %i.ho, splat (i32 65535)  ; 3 uses
  %i.hq = zext i8 %i.gw to i32
  %i.hr = zext i8 %i.gx to i32
  %i.hs = insertelement <2 x i32> poison, i32 %i.hq, i64 0
  %i.ht = insertelement <2 x i32> %i.hs, i32 %i.hr, i64 1
  %i.hu = sub nsw <2 x i32> %i.ht, %i.bw
  %i.hv = sitofp nsz <2 x i32> %i.hu to <2 x float>
  %i.hw = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.hv, <2 x float> zeroinitializer)
  %i.hx = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.hw, <2 x float> %i.bq)
  %i.hy = fptosi <2 x float> %i.hx to <2 x i32>
  %i.hz = mul nsw <2 x i32> %i.bs, %i.hy
  %i.ia = sdiv <2 x i32> %i.hz, %i.bu
  %i.ib = shl nsw <2 x i32> %i.ia, splat (i32 1)
  %i.ic = and <2 x i32> %i.ib, splat (i32 131070)
  %i.id = zext i8 %i.gy to i32
  %i.ie = sub nsw i32 %i.id, %i.ai
  %i.if = zext i8 %i.ha to i32
  %i.ig = sub nsw i32 %i.if, %i.ai
  %i.ih = trunc nsw i32 %i.ie to i16
  %i.ii = insertelement <2 x i16> poison, i16 %i.ih, i64 0
  %i.ij = trunc nsw i32 %i.ig to i16
  %i.ik = insertelement <2 x i16> %i.ii, i16 %i.ij, i64 1
  %i.il = sitofp nsz <2 x i16> %i.ik to <2 x float>
  %i.im = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.il, <2 x float> zeroinitializer)
  %i.in = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.im, <2 x float> %i.bq)
  %i.io = fptosi <2 x float> %i.in to <2 x i32>
  %i.ip = mul nsw <2 x i32> %i.bs, %i.io
  %i.iq = sdiv <2 x i32> %i.ip, %i.bu
  %i.ir = and <2 x i32> %i.iq, splat (i32 65535)  ; 3 uses
  %i.is = add nuw nsw <2 x i32> %i.hp, %i.ic
  %i.it = add nuw nsw <2 x i32> %i.is, %i.ir      ; 2 uses
  %shift = shufflevector <2 x i32> %i.it, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = sub nsw <2 x i32> %i.it, %shift
  %i.iu = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %i.iv = sitofp i32 %i.iu to double              ; 2 uses
  %i.iw = zext i8 %i.gu to i32
  %i.ix = sub nsw i32 %i.iw, %i.ai
  %i.iy = zext i8 %i.gz to i32
  %i.iz = sub nsw i32 %i.iy, %i.ai
  %i.ja = trunc nsw i32 %i.ix to i16
  %i.jb = insertelement <2 x i16> poison, i16 %i.ja, i64 0
  %i.jc = trunc nsw i32 %i.iz to i16
  %i.jd = insertelement <2 x i16> %i.jb, i16 %i.jc, i64 1
  %i.je = sitofp nsz <2 x i16> %i.jd to <2 x float>
  %i.jf = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.je, <2 x float> zeroinitializer)
  %i.jg = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.jf, <2 x float> %i.bq)
  %i.jh = fptosi <2 x float> %i.jg to <2 x i32>
  %i.ji = mul nsw <2 x i32> %i.bs, %i.jh
  %i.jj = sdiv <2 x i32> %i.ji, %i.bu
  %i.jk = shl nsw <2 x i32> %i.jj, splat (i32 1)
  %i.jl = and <2 x i32> %i.jk, splat (i32 131070)
  %i.jm = shufflevector <2 x i32> %i.hp, <2 x i32> %i.ir, <2 x i32> <i32 0, i32 2>
  %i.jn = add nuw nsw <2 x i32> %i.jl, %i.jm
  %i.jo = shufflevector <2 x i32> %i.hp, <2 x i32> %i.ir, <2 x i32> <i32 1, i32 3>
  %i.jp = add nuw nsw <2 x i32> %i.jn, %i.jo      ; 2 uses
  %shift436 = shufflevector <2 x i32> %i.jp, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop437 = sub nsw <2 x i32> %i.jp, %shift436
  %i.jq = extractelement <2 x i32> %foldExtExtBinop437, i64 0
  %i.jr = sitofp i32 %i.jq to double              ; 2 uses
  %i.js = fmul nnan nsz double %i.jr, %i.jr
  %i.jt = tail call nsz double @llvm.fmuladd.f64(double %i.iv, double %i.iv, double %i.js)
  %i.ju = tail call nsz double @llvm.sqrt.f64(double %i.jt)
  %i.jv = fptrunc nsz double %i.ju to float
  %i.jw = trunc nuw nsw i64 %indvars.iv149.i to i32
  %.reass.us.us.i = add i32 %invariant.op.us.i, %i.jw
  %i.jx = sext i32 %.reass.us.us.i to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.jx
  store float %i.jv, ptr %i.jy, align 4, !tbaa !21
  %exitcond153.not.i = icmp eq i64 %indvars.iv.next150.i, %wide.trip.count152.i
  br i1 %exitcond153.not.i, label %._crit_edge.split.us.us.i, label %.preheader102.us.us.i, !llvm.loop !49

._crit_edge.split.us.us.i:                        ; preds = %.preheader102.us.us.i, %middle.block274
  %exitcond158.not.i = icmp eq i64 %i.cc, %wide.trip.count157.i
  br i1 %exitcond158.not.i, label %convolve_sobel.exit, label %.preheader103.us.i, !llvm.loop !50

.preheader101.i:                                  ; preds = %is_full_range.exit
  br i1 %i.ae, label %.preheader100.lr.ph.i, label %convolve_sobel.exit.thread

.preheader100.lr.ph.i:                            ; preds = %.preheader101.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !39 ; 3 uses
  %i.kb = icmp sgt i32 %i.ka, 2
  %i.kc = add i32 %i.ka, -2                       ; 2 uses
  br i1 %i.kb, label %.preheader100.lr.ph.split.i, label %convolve_sobel.exit.thread.thread

convolve_sobel.exit.thread.thread:                ; preds = %.preheader100.lr.ph.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !40
  %i.kf = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !41
  br label %.preheader.lr.ph.i

.preheader100.lr.ph.split.i:                      ; preds = %.preheader100.lr.ph.i
  %i.kh = add nsw i32 %i.ka, -1
  %.not93.i = icmp eq i32 %.0.in.i, 0
  %i.ki = sext i32 %i.x to i64                    ; 6 uses
  %wide.trip.count185.i = zext nneg i32 %i.ad to i64 ; 2 uses
  %wide.trip.count180.i = zext i32 %i.kh to i64   ; 5 uses
  %i.kj = add nsw i64 %wide.trip.count180.i, -2   ; 4 uses
  br i1 %.not93.i, label %.preheader100.us.i.preheader, label %.preheader100.i.preheader

.preheader100.i.preheader:                        ; preds = %.preheader100.lr.ph.split.i
  %i.kk = add nsw i64 %wide.trip.count180.i, -1   ; 3 uses
  %min.iters.check279 = icmp ult i64 %i.kk, 4
  %i.kl = trunc i64 %i.kj to i32
  %i.km = icmp ugt i64 %i.kj, 4294967295
  %n.vec281 = and i64 %i.kk, -4                   ; 3 uses
  %i.kn = or disjoint i64 %n.vec281, 1
  %cmp.n299 = icmp eq i64 %i.kk, %n.vec281
  br label %.preheader100.i

.preheader100.us.i.preheader:                     ; preds = %.preheader100.lr.ph.split.i
  %i.ko = add nsw i64 %wide.trip.count180.i, -1   ; 3 uses
  %min.iters.check306 = icmp ult i64 %i.ko, 4
  %i.kp = trunc i64 %i.kj to i32
  %i.kq = icmp ugt i64 %i.kj, 4294967295
  %n.vec308 = and i64 %i.ko, -4                   ; 3 uses
  %i.kr = or disjoint i64 %n.vec308, 1
  %cmp.n327 = icmp eq i64 %i.ko, %n.vec308
  br label %.preheader100.us.i

.preheader100.us.i:                               ; preds = %.preheader100.us.i.preheader, %._crit_edge.split124.us.us.i
  %indvars.iv182.i = phi i64 [ %i.kx, %._crit_edge.split124.us.us.i ], [ 1, %.preheader100.us.i.preheader ] ; 3 uses
  %i.ks = add nsw i64 %indvars.iv182.i, -1        ; 2 uses
  %i.kt = trunc i64 %i.ks to i32
  %i.ku = mul i32 %i.kc, %i.kt                    ; 3 uses
  %invariant.op121.us.i = add i32 %i.ku, -1       ; 2 uses
  %i.kv = mul nsw i64 %i.ks, %i.ki
  %invariant.gep242.i = getelementptr [2 x i8], ptr %i.q, i64 %i.kv ; 5 uses
  %i.kw = mul nsw i64 %indvars.iv182.i, %i.ki
  %invariant.gep248.i = getelementptr [2 x i8], ptr %i.q, i64 %i.kw ; 4 uses
  %i.kx = add nuw nsw i64 %indvars.iv182.i, 1     ; 3 uses
  %i.ky = mul nsw i64 %i.kx, %i.ki
  %invariant.gep252.i = getelementptr [2 x i8], ptr %i.q, i64 %i.ky ; 4 uses
  %gep245.i.phi.trans.insert = getelementptr i8, ptr %invariant.gep242.i, i64 2
  %.pre142 = load i16, ptr %gep245.i.phi.trans.insert, align 2, !tbaa !109 ; 2 uses
  %.pre143 = load i16, ptr %invariant.gep252.i, align 2, !tbaa !109 ; 3 uses
  %gep255.i.phi.trans.insert = getelementptr i8, ptr %invariant.gep252.i, i64 2
  %.pre144 = load i16, ptr %gep255.i.phi.trans.insert, align 2, !tbaa !109 ; 2 uses
  %i.kz = insertelement <2 x i16> poison, i16 %.pre142, i64 0
  %i.la = insertelement <2 x i16> %i.kz, i16 %.pre144, i64 1 ; 2 uses
  br i1 %min.iters.check306, label %.preheader.us.us.i.preheader, label %vector.scevcheck304

vector.scevcheck304:                              ; preds = %.preheader100.us.i
  %i.lb = add i32 %i.ku, %i.kp
  %i.lc = icmp slt i32 %i.lb, %i.ku
  %i.ld = or i1 %i.lc, %i.kq
  br i1 %i.ld, label %.preheader.us.us.i.preheader, label %vector.ph307

vector.ph307:                                     ; preds = %vector.scevcheck304
  %vector.recur.init311 = insertelement <4 x i16> poison, i16 %.pre144, i64 3
  %vector.recur.init313 = insertelement <4 x i16> poison, i16 %.pre143, i64 3
  %vector.recur.init315 = insertelement <4 x i16> poison, i16 %.pre142, i64 3
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph307
  %index310 = phi i64 [ 0, %vector.ph307 ], [ %index.next322, %vector.body309 ] ; 5 uses
  %vector.recur312 = phi <4 x i16> [ %vector.recur.init311, %vector.ph307 ], [ %wide.load321, %vector.body309 ]
  %vector.recur314 = phi <4 x i16> [ %vector.recur.init313, %vector.ph307 ], [ %i.nh, %vector.body309 ]
  %vector.recur316 = phi <4 x i16> [ %vector.recur.init315, %vector.ph307 ], [ %wide.load318, %vector.body309 ]
  %i.le = getelementptr [2 x i8], ptr %invariant.gep242.i, i64 %index310
  %wide.load317 = load <4 x i16>, ptr %i.le, align 2, !tbaa !109
  %i.lf = zext <4 x i16> %wide.load317 to <4 x i32>
  %i.lg = add nsw <4 x i32> %i.lf, splat (i32 -64)
  %i.lh = sitofp nsz <4 x i32> %i.lg to <4 x float>
  %i.li = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lh, <4 x float> zeroinitializer)
  %i.lj = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.li, <4 x float> splat (float 8.760000e+02))
  %i.lk = fptosi <4 x float> %i.lj to <4 x i32>
  %i.ll = mul nuw nsw <4 x i32> %i.lk, splat (i32 341)
  %i.lm = udiv <4 x i32> %i.ll, splat (i32 292)
  %i.ln = and <4 x i32> %i.lm, splat (i32 65535)  ; 2 uses
  %i.lo = or disjoint i64 %index310, 2            ; 3 uses
  %i.lp = getelementptr [2 x i8], ptr %invariant.gep242.i, i64 %i.lo
  %wide.load318 = load <4 x i16>, ptr %i.lp, align 2, !tbaa !109 ; 4 uses
  %i.lq = shufflevector <4 x i16> %vector.recur316, <4 x i16> %wide.load318, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lr = zext <4 x i16> %i.lq to <4 x i32>
  %i.ls = add nsw <4 x i32> %i.lr, splat (i32 -64)
  %i.lt = sitofp nsz <4 x i32> %i.ls to <4 x float>
  %i.lu = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lt, <4 x float> zeroinitializer)
  %i.lv = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.lu, <4 x float> splat (float 8.760000e+02))
  %i.lw = fptosi <4 x float> %i.lv to <4 x i32>
  %i.lx = mul nuw nsw <4 x i32> %i.lw, splat (i32 341)
  %i.ly = udiv <4 x i32> %i.lx, splat (i32 292)
  %i.lz = shl nuw nsw <4 x i32> %i.ly, splat (i32 1)
  %i.ma = and <4 x i32> %i.lz, splat (i32 131070)
  %i.mb = zext <4 x i16> %wide.load318 to <4 x i32>
  %i.mc = add nsw <4 x i32> %i.mb, splat (i32 -64)
  %i.md = sitofp nsz <4 x i32> %i.mc to <4 x float>
  %i.me = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.md, <4 x float> zeroinitializer)
  %i.mf = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.me, <4 x float> splat (float 8.760000e+02))
  %i.mg = fptosi <4 x float> %i.mf to <4 x i32>
  %i.mh = mul nuw nsw <4 x i32> %i.mg, splat (i32 341)
  %i.mi = udiv <4 x i32> %i.mh, splat (i32 292)
  %i.mj = and <4 x i32> %i.mi, splat (i32 65535)  ; 2 uses
  %i.mk = getelementptr [2 x i8], ptr %invariant.gep248.i, i64 %index310
  %wide.load319 = load <4 x i16>, ptr %i.mk, align 2, !tbaa !109
  %i.ml = zext <4 x i16> %wide.load319 to <4 x i32>
  %i.mm = add nsw <4 x i32> %i.ml, splat (i32 -64)
  %i.mn = sitofp nsz <4 x i32> %i.mm to <4 x float>
  %i.mo = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.mn, <4 x float> zeroinitializer)
  %i.mp = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.mo, <4 x float> splat (float 8.760000e+02))
  %i.mq = fptosi <4 x float> %i.mp to <4 x i32>
  %i.mr = mul nuw nsw <4 x i32> %i.mq, splat (i32 341)
  %i.ms = udiv <4 x i32> %i.mr, splat (i32 292)
  %i.mt = shl nuw nsw <4 x i32> %i.ms, splat (i32 1)
  %i.mu = and <4 x i32> %i.mt, splat (i32 131070)
  %i.mv = getelementptr [2 x i8], ptr %invariant.gep248.i, i64 %i.lo
  %wide.load320 = load <4 x i16>, ptr %i.mv, align 2, !tbaa !109
  %i.mw = zext <4 x i16> %wide.load320 to <4 x i32>
  %i.mx = add nsw <4 x i32> %i.mw, splat (i32 -64)
  %i.my = sitofp nsz <4 x i32> %i.mx to <4 x float>
  %i.mz = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.my, <4 x float> zeroinitializer)
  %i.na = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.mz, <4 x float> splat (float 8.760000e+02))
  %i.nb = fptosi <4 x float> %i.na to <4 x i32>
  %i.nc = mul nuw nsw <4 x i32> %i.nb, splat (i32 341)
  %i.nd = udiv <4 x i32> %i.nc, splat (i32 292)
  %i.ne = shl nuw nsw <4 x i32> %i.nd, splat (i32 1)
  %i.nf = and <4 x i32> %i.ne, splat (i32 131070)
  %i.ng = getelementptr [2 x i8], ptr %invariant.gep252.i, i64 %i.lo
  %wide.load321 = load <4 x i16>, ptr %i.ng, align 2, !tbaa !109 ; 5 uses
  %i.nh = shufflevector <4 x i16> %vector.recur312, <4 x i16> %wide.load321, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.ni = shufflevector <4 x i16> %vector.recur314, <4 x i16> %i.nh, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.nj = zext <4 x i16> %i.ni to <4 x i32>
  %i.nk = add nsw <4 x i32> %i.nj, splat (i32 -64)
  %i.nl = sitofp nsz <4 x i32> %i.nk to <4 x float>
  %i.nm = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.nl, <4 x float> zeroinitializer)
  %i.nn = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.nm, <4 x float> splat (float 8.760000e+02))
  %i.no = fptosi <4 x float> %i.nn to <4 x i32>
  %i.np = mul nuw nsw <4 x i32> %i.no, splat (i32 341)
  %i.nq = udiv <4 x i32> %i.np, splat (i32 292)
  %i.nr = and <4 x i32> %i.nq, splat (i32 65535)  ; 2 uses
  %i.ns = zext <4 x i16> %i.nh to <4 x i32>
  %i.nt = add nsw <4 x i32> %i.ns, splat (i32 -64)
  %i.nu = sitofp nsz <4 x i32> %i.nt to <4 x float>
  %i.nv = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.nu, <4 x float> zeroinitializer)
  %i.nw = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.nv, <4 x float> splat (float 8.760000e+02))
  %i.nx = fptosi <4 x float> %i.nw to <4 x i32>
  %i.ny = mul nuw nsw <4 x i32> %i.nx, splat (i32 341)
  %i.nz = udiv <4 x i32> %i.ny, splat (i32 292)
  %i.oa = shl nuw nsw <4 x i32> %i.nz, splat (i32 1)
  %i.ob = and <4 x i32> %i.oa, splat (i32 131070)
  %i.oc = zext <4 x i16> %wide.load321 to <4 x i32>
  %i.od = add nsw <4 x i32> %i.oc, splat (i32 -64)
  %i.oe = sitofp nsz <4 x i32> %i.od to <4 x float>
  %i.of = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.oe, <4 x float> zeroinitializer)
  %i.og = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.of, <4 x float> splat (float 8.760000e+02))
  %i.oh = fptosi <4 x float> %i.og to <4 x i32>
  %i.oi = mul nuw nsw <4 x i32> %i.oh, splat (i32 341)
  %i.oj = udiv <4 x i32> %i.oi, splat (i32 292)
  %i.ok = and <4 x i32> %i.oj, splat (i32 65535)  ; 2 uses
  %i.ol = sub nsw <4 x i32> %i.ln, %i.mj
  %i.om = add nsw <4 x i32> %i.ol, %i.mu
  %i.on = add nsw <4 x i32> %i.om, %i.nr
  %i.oo = add nuw nsw <4 x i32> %i.nf, %i.ok
  %i.op = sub nsw <4 x i32> %i.on, %i.oo
  %i.oq = sitofp <4 x i32> %i.op to <4 x double>  ; 2 uses
  %i.or = add nuw nsw <4 x i32> %i.ma, %i.ln
  %i.os = add nuw nsw <4 x i32> %i.or, %i.mj
  %i.ot = add nuw nsw <4 x i32> %i.nr, %i.ob
  %i.ou = add nuw nsw <4 x i32> %i.ot, %i.ok
  %i.ov = sub nsw <4 x i32> %i.os, %i.ou
  %i.ow = sitofp <4 x i32> %i.ov to <4 x double>  ; 2 uses
  %i.ox = fmul nnan nsz <4 x double> %i.ow, %i.ow
  %i.oy = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.oq, <4 x double> %i.oq, <4 x double> %i.ox)
  %i.oz = tail call nsz <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.oy)
  %i.pa = fptrunc nsz <4 x double> %i.oz to <4 x float>
  %i.pb = trunc i64 %index310 to i32
  %i.pc = or disjoint i32 %i.pb, 1
  %i.pd = add i32 %invariant.op121.us.i, %i.pc
  %i.pe = sext i32 %i.pd to i64
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.pe
  store <4 x float> %i.pa, ptr %i.pf, align 4, !tbaa !21
  %index.next322 = add nuw i64 %index310, 4       ; 2 uses
  %i.pg = icmp eq i64 %index.next322, %n.vec308
  br i1 %i.pg, label %middle.block323, label %vector.body309, !llvm.loop !51

middle.block323:                                  ; preds = %vector.body309
  %vector.recur.extract325 = extractelement <4 x i16> %wide.load321, i64 2
  %i.ph = shufflevector <4 x i16> %wide.load318, <4 x i16> %wide.load321, <2 x i32> <i32 3, i32 7>
  br i1 %cmp.n327, label %._crit_edge.split124.us.us.i, label %.preheader.us.us.i.preheader

.preheader.us.us.i.preheader:                     ; preds = %vector.scevcheck304, %.preheader100.us.i, %middle.block323
  %.ph = phi i16 [ %.pre143, %vector.scevcheck304 ], [ %.pre143, %.preheader100.us.i ], [ %vector.recur.extract325, %middle.block323 ]
  %indvars.iv177.i.ph = phi i64 [ 1, %vector.scevcheck304 ], [ 1, %.preheader100.us.i ], [ %i.kr, %middle.block323 ]
  %.ph456 = phi <2 x i16> [ %i.la, %vector.scevcheck304 ], [ %i.la, %.preheader100.us.i ], [ %i.ph, %middle.block323 ]
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.preheader, %.preheader.us.us.i
  %i.pi = phi i16 [ %i.se, %.preheader.us.us.i ], [ %.ph, %.preheader.us.us.i.preheader ]
  %indvars.iv177.i = phi i64 [ %indvars.iv.next178.i, %.preheader.us.us.i ], [ %indvars.iv177.i.ph, %.preheader.us.us.i.preheader ] ; 3 uses
  %i.pj = phi <2 x i16> [ %i.sd, %.preheader.us.us.i ], [ %.ph456, %.preheader.us.us.i.preheader ] ; 2 uses
  %i.pk = add nsw i64 %indvars.iv177.i, -1        ; 2 uses
  %gep243.i = getelementptr [2 x i8], ptr %invariant.gep242.i, i64 %i.pk
  %i.pl = load i16, ptr %gep243.i, align 2, !tbaa !109
  %i.pm = zext <2 x i16> %i.pj to <2 x i32>
  %indvars.iv.next178.i = add nuw nsw i64 %indvars.iv177.i, 1 ; 5 uses
  %gep247.i = getelementptr [2 x i8], ptr %invariant.gep242.i, i64 %indvars.iv.next178.i
  %i.pn = load i16, ptr %gep247.i, align 2, !tbaa !109 ; 2 uses
  %gep249.i = getelementptr [2 x i8], ptr %invariant.gep248.i, i64 %i.pk
  %i.po = load i16, ptr %gep249.i, align 2, !tbaa !109
  %gep251.i = getelementptr [2 x i8], ptr %invariant.gep248.i, i64 %indvars.iv.next178.i
  %i.pp = load i16, ptr %gep251.i, align 2, !tbaa !109
  %gep257.i = getelementptr [2 x i8], ptr %invariant.gep252.i, i64 %indvars.iv.next178.i
  %i.pq = load i16, ptr %gep257.i, align 2, !tbaa !109 ; 2 uses
  %i.pr = insertelement <2 x i16> poison, i16 %i.po, i64 0
  %i.ps = insertelement <2 x i16> %i.pr, i16 %i.pp, i64 1
  %i.pt = zext <2 x i16> %i.ps to <2 x i32>
  %i.pu = add nsw <2 x i32> %i.pt, splat (i32 -64)
  %i.pv = sitofp nsz <2 x i32> %i.pu to <2 x float>
  %i.pw = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.pv, <2 x float> zeroinitializer)
  %i.px = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.pw, <2 x float> splat (float 8.760000e+02))
  %i.py = fptosi <2 x float> %i.px to <2 x i32>
  %i.pz = mul nuw nsw <2 x i32> %i.py, splat (i32 341)
  %i.qa = udiv <2 x i32> %i.pz, splat (i32 292)
  %i.qb = shl nuw nsw <2 x i32> %i.qa, splat (i32 1)
  %i.qc = and <2 x i32> %i.qb, <i32 131070, i32 -1> ; 2 uses
  %i.qd = insertelement <2 x i16> poison, i16 %i.pi, i64 0
  %i.qe = insertelement <2 x i16> %i.qd, i16 %i.pq, i64 1
  %i.qf = zext <2 x i16> %i.qe to <2 x i32>
  %i.qg = add nsw <2 x i32> %i.qf, splat (i32 -64)
  %i.qh = sitofp nsz <2 x i32> %i.qg to <2 x float>
  %i.qi = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.qh, <2 x float> zeroinitializer)
  %i.qj = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.qi, <2 x float> splat (float 8.760000e+02))
  %i.qk = fptosi <2 x float> %i.qj to <2 x i32>
  %i.ql = mul nuw nsw <2 x i32> %i.qk, splat (i32 341)
  %i.qm = udiv <2 x i32> %i.ql, splat (i32 292)
  %i.qn = and <2 x i32> %i.qm, splat (i32 65535)  ; 3 uses
  %i.qo = insertelement <2 x i16> poison, i16 %i.pl, i64 0
  %i.qp = insertelement <2 x i16> %i.qo, i16 %i.pn, i64 1
  %i.qq = zext <2 x i16> %i.qp to <2 x i32>
  %i.qr = add nsw <2 x i32> %i.qq, splat (i32 -64)
  %i.qs = sitofp nsz <2 x i32> %i.qr to <2 x float>
  %i.qt = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.qs, <2 x float> zeroinitializer)
  %i.qu = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.qt, <2 x float> splat (float 8.760000e+02))
  %i.qv = fptosi <2 x float> %i.qu to <2 x i32>
  %i.qw = mul nuw nsw <2 x i32> %i.qv, splat (i32 341)
  %i.qx = udiv <2 x i32> %i.qw, splat (i32 292)
  %i.qy = and <2 x i32> %i.qx, splat (i32 65535)  ; 4 uses
  %i.qz = add nsw <2 x i32> %i.pm, splat (i32 -64)
  %i.ra = sitofp nsz <2 x i32> %i.qz to <2 x float>
  %i.rb = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ra, <2 x float> zeroinitializer)
  %i.rc = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.rb, <2 x float> splat (float 8.760000e+02))
  %i.rd = fptosi <2 x float> %i.rc to <2 x i32>
  %i.re = mul nuw nsw <2 x i32> %i.rd, splat (i32 341)
  %i.rf = udiv <2 x i32> %i.re, splat (i32 292)
  %i.rg = shl nuw nsw <2 x i32> %i.rf, splat (i32 1)
  %i.rh = and <2 x i32> %i.rg, splat (i32 131070)
  %shift439 = shufflevector <2 x i32> %i.qy, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop440 = sub nsw <2 x i32> %i.qy, %shift439
  %i.ri = insertelement <2 x i32> %foldExtExtBinop440, i32 131070, i64 1 ; 2 uses
  %i.rj = add nsw <2 x i32> %i.qc, %i.ri
  %i.rk = and <2 x i32> %i.qc, %i.ri
  %i.rl = shufflevector <2 x i32> %i.rj, <2 x i32> %i.rk, <2 x i32> <i32 0, i32 3>
  %i.rm = add nsw <2 x i32> %i.rl, %i.qn          ; 2 uses
  %shift442 = shufflevector <2 x i32> %i.rm, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop443 = sub nsw <2 x i32> %i.rm, %shift442
  %i.rn = extractelement <2 x i32> %foldExtExtBinop443, i64 0
  %i.ro = sitofp i32 %i.rn to double              ; 2 uses
  %i.rp = shufflevector <2 x i32> %i.qy, <2 x i32> %i.qn, <2 x i32> <i32 0, i32 2>
  %i.rq = add nuw nsw <2 x i32> %i.rp, %i.rh
  %i.rr = shufflevector <2 x i32> %i.qn, <2 x i32> %i.qy, <2 x i32> <i32 3, i32 1>
  %i.rs = add nuw nsw <2 x i32> %i.rq, %i.rr      ; 2 uses
  %shift445 = shufflevector <2 x i32> %i.rs, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop446 = sub nsw <2 x i32> %i.rs, %shift445
  %i.rt = extractelement <2 x i32> %foldExtExtBinop446, i64 0
  %i.ru = sitofp i32 %i.rt to double              ; 2 uses
  %i.rv = fmul nnan nsz double %i.ru, %i.ru
  %i.rw = tail call nsz double @llvm.fmuladd.f64(double %i.ro, double %i.ro, double %i.rv)
  %i.rx = tail call nsz double @llvm.sqrt.f64(double %i.rw)
  %i.ry = fptrunc nsz double %i.rx to float
  %i.rz = trunc nuw nsw i64 %indvars.iv177.i to i32
  %.reass122.us.us.i = add i32 %invariant.op121.us.i, %i.rz
  %i.sa = sext i32 %.reass122.us.us.i to i64
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.sa
  store float %i.ry, ptr %i.sb, align 4, !tbaa !21
  %exitcond181.not.i = icmp eq i64 %indvars.iv.next178.i, %wide.trip.count180.i
  %i.sc = insertelement <2 x i16> poison, i16 %i.pn, i64 0
  %i.sd = insertelement <2 x i16> %i.sc, i16 %i.pq, i64 1
  %i.se = extractelement <2 x i16> %i.pj, i64 1
  br i1 %exitcond181.not.i, label %._crit_edge.split124.us.us.i, label %.preheader.us.us.i, !llvm.loop !52

._crit_edge.split124.us.us.i:                     ; preds = %.preheader.us.us.i, %middle.block323
  %exitcond186.not.i = icmp eq i64 %i.kx, %wide.trip.count185.i
  br i1 %exitcond186.not.i, label %convolve_sobel.exit, label %.preheader100.us.i, !llvm.loop !53

.preheader100.i:                                  ; preds = %.preheader100.i.preheader, %._crit_edge.split124.i
  %indvars.iv168.i = phi i64 [ %i.sk, %._crit_edge.split124.i ], [ 1, %.preheader100.i.preheader ] ; 3 uses
  %i.sf = add nsw i64 %indvars.iv168.i, -1        ; 2 uses
  %i.sg = trunc i64 %i.sf to i32
  %i.sh = mul i32 %i.kc, %i.sg                    ; 3 uses
  %invariant.op121.i = add i32 %i.sh, -1          ; 2 uses
  %i.si = mul nsw i64 %i.sf, %i.ki
  %invariant.gep226.i = getelementptr [2 x i8], ptr %i.q, i64 %i.si ; 4 uses
  %i.sj = mul nsw i64 %indvars.iv168.i, %i.ki
  %invariant.gep232.i = getelementptr [2 x i8], ptr %i.q, i64 %i.sj ; 4 uses
  %i.sk = add nuw nsw i64 %indvars.iv168.i, 1     ; 3 uses
  %i.sl = mul nsw i64 %i.sk, %i.ki
  %invariant.gep236.i = getelementptr [2 x i8], ptr %i.q, i64 %i.sl ; 4 uses
  %.pre = load i16, ptr %invariant.gep226.i, align 2, !tbaa !109 ; 3 uses
  %gep229.i.phi.trans.insert = getelementptr i8, ptr %invariant.gep226.i, i64 2
  %.pre139 = load i16, ptr %gep229.i.phi.trans.insert, align 2, !tbaa !109 ; 3 uses
  %.pre140 = load i16, ptr %invariant.gep236.i, align 2, !tbaa !109 ; 3 uses
  %gep239.i.phi.trans.insert = getelementptr i8, ptr %invariant.gep236.i, i64 2
  %.pre141 = load i16, ptr %gep239.i.phi.trans.insert, align 2, !tbaa !109 ; 3 uses
  br i1 %min.iters.check279, label %.preheader.i.preheader, label %vector.scevcheck277

vector.scevcheck277:                              ; preds = %.preheader100.i
  %i.sm = add i32 %i.sh, %i.kl
  %i.sn = icmp slt i32 %i.sm, %i.sh
  %i.so = or i1 %i.sn, %i.km
  br i1 %i.so, label %.preheader.i.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %vector.scevcheck277
  %vector.recur.init = insertelement <4 x i16> poison, i16 %.pre141, i64 3
  %vector.recur.init284 = insertelement <4 x i16> poison, i16 %.pre140, i64 3
  %vector.recur.init286 = insertelement <4 x i16> poison, i16 %.pre139, i64 3
  %vector.recur.init288 = insertelement <4 x i16> poison, i16 %.pre, i64 3
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next294, %vector.body282 ] ; 3 uses
  %vector.recur = phi <4 x i16> [ %vector.recur.init, %vector.ph280 ], [ %wide.load293, %vector.body282 ]
  %vector.recur285 = phi <4 x i16> [ %vector.recur.init284, %vector.ph280 ], [ %i.tr, %vector.body282 ]
  %vector.recur287 = phi <4 x i16> [ %vector.recur.init286, %vector.ph280 ], [ %wide.load290, %vector.body282 ]
  %vector.recur289 = phi <4 x i16> [ %vector.recur.init288, %vector.ph280 ], [ %i.ss, %vector.body282 ]
  %i.sp = or disjoint i64 %index283, 1            ; 2 uses
  %i.sq = or disjoint i64 %index283, 2            ; 3 uses
  %i.sr = getelementptr [2 x i8], ptr %invariant.gep226.i, i64 %i.sq
  %wide.load290 = load <4 x i16>, ptr %i.sr, align 2, !tbaa !109 ; 6 uses
  %i.ss = shufflevector <4 x i16> %vector.recur287, <4 x i16> %wide.load290, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.st = shufflevector <4 x i16> %vector.recur289, <4 x i16> %i.ss, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.su = uitofp <4 x i16> %i.st to <4 x double>  ; 2 uses
  %i.sv = zext <4 x i16> %i.ss to <4 x i32>
  %i.sw = shl nuw nsw <4 x i32> %i.sv, splat (i32 1)
  %i.sx = uitofp nneg <4 x i32> %i.sw to <4 x double>
  %i.sy = fadd nsz <4 x double> %i.su, %i.sx
  %i.sz = zext <4 x i16> %wide.load290 to <4 x i32>
  %i.ta = sub nsw <4 x i32> zeroinitializer, %i.sz
  %i.tb = sitofp nsz <4 x i32> %i.ta to <4 x double>
  %i.tc = fadd nsz <4 x double> %i.su, %i.tb
  %i.td = uitofp <4 x i16> %wide.load290 to <4 x double>
  %i.te = fadd nsz <4 x double> %i.sy, %i.td
  %i.tf = getelementptr [2 x i8], ptr %invariant.gep232.i, i64 %i.sp
  %i.tg = getelementptr i8, ptr %i.tf, i64 -2
  %wide.load291 = load <4 x i16>, ptr %i.tg, align 2, !tbaa !109
  %i.th = zext <4 x i16> %wide.load291 to <4 x i32>
  %i.ti = shl nuw nsw <4 x i32> %i.th, splat (i32 1)
  %i.tj = uitofp nneg <4 x i32> %i.ti to <4 x double>
  %i.tk = fadd nsz <4 x double> %i.tc, %i.tj
  %i.tl = getelementptr [2 x i8], ptr %invariant.gep232.i, i64 %i.sq
  %wide.load292 = load <4 x i16>, ptr %i.tl, align 2, !tbaa !109
  %i.tm = zext <4 x i16> %wide.load292 to <4 x i32>
  %i.tn = mul nsw <4 x i32> %i.tm, splat (i32 -2)
  %i.to = sitofp nsz <4 x i32> %i.tn to <4 x double>
  %i.tp = fadd nsz <4 x double> %i.tk, %i.to
  %i.tq = getelementptr [2 x i8], ptr %invariant.gep236.i, i64 %i.sq
  %wide.load293 = load <4 x i16>, ptr %i.tq, align 2, !tbaa !109 ; 5 uses
  %i.tr = shufflevector <4 x i16> %vector.recur, <4 x i16> %wide.load293, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.ts = shufflevector <4 x i16> %vector.recur285, <4 x i16> %i.tr, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 2 uses
  %i.tt = zext <4 x i16> %i.ts to <4 x i32>
  %i.tu = uitofp <4 x i16> %i.ts to <4 x double>
  %i.tv = fadd nsz <4 x double> %i.tp, %i.tu
  %i.tw = sub nsw <4 x i32> zeroinitializer, %i.tt
  %i.tx = sitofp nsz <4 x i32> %i.tw to <4 x double>
  %i.ty = fadd nsz <4 x double> %i.te, %i.tx
  %i.tz = zext <4 x i16> %i.tr to <4 x i32>
  %i.ua = mul nsw <4 x i32> %i.tz, splat (i32 -2)
  %i.ub = sitofp nsz <4 x i32> %i.ua to <4 x double>
  %i.uc = fadd nsz <4 x double> %i.ty, %i.ub
  %i.ud = zext <4 x i16> %wide.load293 to <4 x i32>
  %i.ue = sub nsw <4 x i32> zeroinitializer, %i.ud
  %i.uf = sitofp nsz <4 x i32> %i.ue to <4 x double> ; 2 uses
  %i.ug = fadd nsz <4 x double> %i.tv, %i.uf      ; 2 uses
  %i.uh = fadd nsz <4 x double> %i.uc, %i.uf      ; 2 uses
  %i.ui = fmul nsz <4 x double> %i.uh, %i.uh
  %i.uj = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ug, <4 x double> %i.ug, <4 x double> %i.ui)
  %i.uk = tail call nsz <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.uj)
  %i.ul = fptrunc nsz <4 x double> %i.uk to <4 x float>
  %i.um = trunc nuw nsw i64 %i.sp to i32
  %i.un = add i32 %invariant.op121.i, %i.um
  %i.uo = sext i32 %i.un to i64
  %i.up = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.uo
  store <4 x float> %i.ul, ptr %i.up, align 4, !tbaa !21
  %index.next294 = add nuw i64 %index283, 4       ; 2 uses
  %i.uq = icmp eq i64 %index.next294, %n.vec281
  br i1 %i.uq, label %middle.block295, label %vector.body282, !llvm.loop !54

middle.block295:                                  ; preds = %vector.body282
  %vector.recur.extract = extractelement <4 x i16> %wide.load293, i64 3
  %vector.recur.extract296 = extractelement <4 x i16> %wide.load293, i64 2
  %vector.recur.extract297 = extractelement <4 x i16> %wide.load290, i64 3
  %vector.recur.extract298 = extractelement <4 x i16> %wide.load290, i64 2
  br i1 %cmp.n299, label %._crit_edge.split124.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %vector.scevcheck277, %.preheader100.i, %middle.block295
  %.ph457 = phi i16 [ %.pre141, %vector.scevcheck277 ], [ %.pre141, %.preheader100.i ], [ %vector.recur.extract, %middle.block295 ]
  %.ph458 = phi i16 [ %.pre140, %vector.scevcheck277 ], [ %.pre140, %.preheader100.i ], [ %vector.recur.extract296, %middle.block295 ]
  %.ph459 = phi i16 [ %.pre139, %vector.scevcheck277 ], [ %.pre139, %.preheader100.i ], [ %vector.recur.extract297, %middle.block295 ]
  %.ph460 = phi i16 [ %.pre, %vector.scevcheck277 ], [ %.pre, %.preheader100.i ], [ %vector.recur.extract298, %middle.block295 ]
  %indvars.iv163.i.ph = phi i64 [ 1, %vector.scevcheck277 ], [ 1, %.preheader100.i ], [ %i.kn, %middle.block295 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %i.ur = phi i16 [ %i.wc, %.preheader.i ], [ %.ph457, %.preheader.i.preheader ] ; 2 uses
  %i.us = phi i16 [ %i.ur, %.preheader.i ], [ %.ph458, %.preheader.i.preheader ] ; 2 uses
  %i.ut = phi i16 [ %i.va, %.preheader.i ], [ %.ph459, %.preheader.i.preheader ] ; 2 uses
  %i.uu = phi i16 [ %i.ut, %.preheader.i ], [ %.ph460, %.preheader.i.preheader ]
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %.preheader.i ], [ %indvars.iv163.i.ph, %.preheader.i.preheader ] ; 3 uses
  %i.uv = uitofp i16 %i.uu to double              ; 2 uses
  %i.uw = zext i16 %i.ut to i32
  %i.ux = shl nuw nsw i32 %i.uw, 1
  %i.uy = uitofp nneg i32 %i.ux to double
  %i.uz = fadd nsz double %i.uv, %i.uy
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 5 uses
  %gep231.i = getelementptr [2 x i8], ptr %invariant.gep226.i, i64 %indvars.iv.next164.i
  %i.va = load i16, ptr %gep231.i, align 2, !tbaa !109 ; 3 uses
  %i.vb = zext i16 %i.va to i32
  %i.vc = sub nsw i32 0, %i.vb
  %i.vd = sitofp nsz i32 %i.vc to double
  %i.ve = fadd nsz double %i.uv, %i.vd
  %i.vf = uitofp i16 %i.va to double
  %i.vg = fadd nsz double %i.uz, %i.vf
  %i.vh = getelementptr [2 x i8], ptr %invariant.gep232.i, i64 %indvars.iv163.i
  %gep233.i = getelementptr i8, ptr %i.vh, i64 -2
  %i.vi = load i16, ptr %gep233.i, align 2, !tbaa !109
  %i.vj = zext i16 %i.vi to i32
  %i.vk = shl nuw nsw i32 %i.vj, 1
  %i.vl = uitofp nneg i32 %i.vk to double
  %i.vm = fadd nsz double %i.ve, %i.vl
  %gep235.i = getelementptr [2 x i8], ptr %invariant.gep232.i, i64 %indvars.iv.next164.i
  %i.vn = load i16, ptr %gep235.i, align 2, !tbaa !109
  %i.vo = zext i16 %i.vn to i32
  %i.vp = mul nsw i32 %i.vo, -2
  %i.vq = sitofp nsz i32 %i.vp to double
  %i.vr = fadd nsz double %i.vm, %i.vq
  %i.vs = zext i16 %i.us to i32
  %i.vt = uitofp i16 %i.us to double
  %i.vu = fadd nsz double %i.vr, %i.vt
  %i.vv = sub nsw i32 0, %i.vs
  %i.vw = sitofp nsz i32 %i.vv to double
end_hunk_0
