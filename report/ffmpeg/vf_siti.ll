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
  %i.n = fpext <2 x float> %i.m to <2 x double>   ; 2 uses
  %i.o = load <4 x float>, ptr %i.i, align 8, !tbaa !21
  %i.p = fpext <4 x float> %i.o to <4 x double>   ; 4 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 11 uses
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
  %i.ai = shl nuw nsw i32 %i.z, 4                 ; 7 uses
  %i.aj = select i1 %i.y, i32 219, i32 876        ; 3 uses
  %i.ak = shl nuw nsw i32 %i.z, 8
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  %i.am = uitofp nneg i32 %i.aj to float          ; 2 uses
  %i.an = add i32 %i.ag, -2                       ; 4 uses
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
  %wide.trip.count152.i = zext i32 %i.as to i64   ; 9 uses
  %i.au = add nsw i64 %wide.trip.count152.i, -2   ; 4 uses
  %i.av = shl nsw i64 %i.at, 1
  %scevgep206 = getelementptr i8, ptr %i.q, i64 %i.av ; 2 uses
  %i.aw = mul nsw i64 %i.at, %wide.trip.count157.i
  %i.ax = getelementptr i8, ptr %i.q, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 %wide.trip.count152.i
  %scevgep207 = getelementptr i8, ptr %i.ay, i64 1 ; 2 uses
  %i.az = shl nuw nsw i64 %wide.trip.count152.i, 2
  %i.ba = getelementptr i8, ptr %i.s, i64 %i.az
  %scevgep211 = getelementptr i8, ptr %i.ba, i64 -4 ; 2 uses
  %scevgep213 = getelementptr i8, ptr %i.q, i64 %i.at ; 2 uses
  %i.bb = add nsw i64 %wide.trip.count157.i, -1
  %i.bc = mul i64 %i.bb, %i.at
  %i.bd = getelementptr i8, ptr %i.q, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 %wide.trip.count152.i
  %scevgep214 = getelementptr i8, ptr %i.be, i64 1 ; 2 uses
  %i.bf = add nsw i64 %wide.trip.count157.i, -2
  %i.bg = mul i64 %i.bf, %i.at
  %i.bh = getelementptr i8, ptr %i.q, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 %wide.trip.count152.i
  %scevgep215 = getelementptr i8, ptr %i.bi, i64 1 ; 2 uses
  br i1 %.not.i, label %.preheader103.us.i.preheader, label %.preheader103.i.preheader

.preheader103.i.preheader:                        ; preds = %.preheader103.lr.ph.split.i
  %i.bj = add nsw i64 %wide.trip.count152.i, -1   ; 3 uses
  %min.iters.check = icmp ult i64 %i.bj, 4
  %i.bk = trunc i64 %i.au to i32
  %i.bl = icmp ugt i64 %i.au, 4294967295
  %stride.check191 = icmp slt i32 %i.x, 0
  %n.vec = and i64 %i.bj, -4                      ; 3 uses
  %i.bm = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br label %.preheader103.i

.preheader103.us.i.preheader:                     ; preds = %.preheader103.lr.ph.split.i
  %i.bn = add nsw i64 %wide.trip.count152.i, -1   ; 3 uses
  %min.iters.check231 = icmp ult i64 %i.bn, 4
  %i.bo = trunc i64 %i.au to i32
  %i.bp = icmp ugt i64 %i.au, 4294967295
  %stride.check223 = icmp slt i32 %i.x, 0
  %n.vec233 = and i64 %i.bn, -4                   ; 3 uses
  %i.bq = or disjoint i64 %n.vec233, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert234 = insertelement <4 x float> poison, float %i.am, i64 0
  %broadcast.splat235 = shufflevector <4 x float> %broadcast.splatinsert234, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert236 = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat237 = shufflevector <4 x i32> %broadcast.splatinsert236, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert238 = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat239 = shufflevector <4 x i32> %broadcast.splatinsert238, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %cmp.n252 = icmp eq i64 %i.bn, %n.vec233
  %i.br = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bt = insertelement <2 x i32> poison, i32 %i.al, i64 0
  %i.bu = shufflevector <2 x i32> %i.bt, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bv = insertelement <2 x i32> poison, i32 %i.aj, i64 0
  %i.bw = shufflevector <2 x i32> %i.bv, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bx = insertelement <2 x i32> poison, i32 %i.ai, i64 0
  %i.by = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <2 x i32> zeroinitializer
  %2 = trunc nuw nsw i32 %i.ai to i16
  %3 = insertelement <2 x i16> poison, i16 %2, i64 0
  %4 = shufflevector <2 x i16> %3, <2 x i16> poison, <2 x i32> zeroinitializer
  br label %.preheader103.us.i

.preheader103.us.i:                               ; preds = %.preheader103.us.i.preheader, %._crit_edge.split.us.us.i
  %indvar208 = phi i32 [ %indvar.next209, %._crit_edge.split.us.us.i ], [ 0, %.preheader103.us.i.preheader ] ; 2 uses
  %indvars.iv154.i = phi i64 [ %i.ch, %._crit_edge.split.us.us.i ], [ 1, %.preheader103.us.i.preheader ] ; 3 uses
  %i.bz = mul i32 %i.an, %indvar208
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 2                    ; 2 uses
  %scevgep210 = getelementptr i8, ptr %i.s, i64 %i.cb ; 3 uses
  %scevgep212 = getelementptr i8, ptr %scevgep211, i64 %i.cb ; 3 uses
  %i.cc = add nsw i64 %indvars.iv154.i, -1        ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = mul i32 %i.an, %i.cd                    ; 3 uses
  %invariant.op.us.i = add i32 %i.ce, -1          ; 2 uses
  %i.cf = mul nsw i64 %i.cc, %i.at
  %invariant.gep210.i = getelementptr i8, ptr %i.q, i64 %i.cf ; 6 uses
  %i.cg = mul nsw i64 %indvars.iv154.i, %i.at
  %invariant.gep216.i = getelementptr i8, ptr %i.q, i64 %i.cg ; 4 uses
  %i.ch = add nuw nsw i64 %indvars.iv154.i, 1     ; 3 uses
  %i.ci = mul nsw i64 %i.ch, %i.at
  %invariant.gep220.i = getelementptr i8, ptr %i.q, i64 %i.ci ; 6 uses
  br i1 %min.iters.check231, label %.preheader102.us.us.i.preheader, label %vector.scevcheck204

vector.scevcheck204:                              ; preds = %.preheader103.us.i
  %i.cj = add i32 %i.ce, %i.bo
  %i.ck = icmp slt i32 %i.cj, %i.ce
  %i.cl = or i1 %i.ck, %i.bp
  br i1 %i.cl, label %.preheader102.us.us.i.preheader, label %vector.memcheck205

vector.memcheck205:                               ; preds = %vector.scevcheck204
  %bound0216 = icmp ult ptr %scevgep206, %scevgep212
  %bound1217 = icmp ult ptr %scevgep210, %scevgep207
  %found.conflict218 = and i1 %bound0216, %bound1217
  %bound0220 = icmp ult ptr %scevgep213, %scevgep212
  %bound1221 = icmp ult ptr %scevgep210, %scevgep214
  %found.conflict222 = and i1 %bound0220, %bound1221
  %i.cm = or i1 %found.conflict222, %stride.check223
  %conflict.rdx224 = or i1 %found.conflict218, %i.cm
  %bound0225 = icmp ult ptr %i.q, %scevgep212
  %bound1226 = icmp ult ptr %scevgep210, %scevgep215
  %found.conflict227 = and i1 %bound0225, %bound1226
  %conflict.rdx229 = or i1 %found.conflict227, %conflict.rdx224
  br i1 %conflict.rdx229, label %.preheader102.us.us.i.preheader, label %vector.body240

vector.body240:                                   ; preds = %vector.memcheck205, %vector.body240
  %index241 = phi i64 [ %index.next250, %vector.body240 ], [ 0, %vector.memcheck205 ] ; 6 uses
  %i.cn = or disjoint i64 %index241, 1            ; 3 uses
  %i.co = getelementptr i8, ptr %invariant.gep210.i, i64 %index241
  %wide.load242 = load <4 x i8>, ptr %i.co, align 1, !tbaa !100, !alias.scope !101, !noalias !102
  %i.cp = zext <4 x i8> %wide.load242 to <4 x i32>
  %i.cq = sub nsw <4 x i32> %i.cp, %broadcast.splat
  %i.cr = sitofp nsz <4 x i32> %i.cq to <4 x float>
  %i.cs = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cr, <4 x float> zeroinitializer)
  %i.ct = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.cs, <4 x float> %broadcast.splat235)
  %i.cu = fptosi <4 x float> %i.ct to <4 x i32>
  %i.cv = mul nsw <4 x i32> %broadcast.splat237, %i.cu
  %i.cw = sdiv <4 x i32> %i.cv, %broadcast.splat239
  %i.cx = and <4 x i32> %i.cw, splat (i32 65535)  ; 2 uses
  %i.cy = getelementptr i8, ptr %invariant.gep210.i, i64 %i.cn
  %wide.load243 = load <4 x i8>, ptr %i.cy, align 1, !tbaa !100, !alias.scope !101, !noalias !102
  %i.cz = zext <4 x i8> %wide.load243 to <4 x i32>
  %i.da = sub nsw <4 x i32> %i.cz, %broadcast.splat
  %i.db = sitofp nsz <4 x i32> %i.da to <4 x float>
  %i.dc = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.db, <4 x float> zeroinitializer)
  %i.dd = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.dc, <4 x float> %broadcast.splat235)
  %i.de = fptosi <4 x float> %i.dd to <4 x i32>
  %i.df = mul nsw <4 x i32> %broadcast.splat237, %i.de
  %i.dg = sdiv <4 x i32> %i.df, %broadcast.splat239
  %i.dh = shl nsw <4 x i32> %i.dg, splat (i32 1)
  %i.di = and <4 x i32> %i.dh, splat (i32 131070)
  %i.dj = or disjoint i64 %index241, 2            ; 3 uses
  %i.dk = getelementptr i8, ptr %invariant.gep210.i, i64 %i.dj
  %wide.load244 = load <4 x i8>, ptr %i.dk, align 1, !tbaa !100, !alias.scope !101, !noalias !102
  %i.dl = zext <4 x i8> %wide.load244 to <4 x i32>
  %i.dm = sub nsw <4 x i32> %i.dl, %broadcast.splat
  %i.dn = sitofp nsz <4 x i32> %i.dm to <4 x float>
  %i.do = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dn, <4 x float> zeroinitializer)
  %i.dp = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.do, <4 x float> %broadcast.splat235)
  %i.dq = fptosi <4 x float> %i.dp to <4 x i32>
  %i.dr = mul nsw <4 x i32> %broadcast.splat237, %i.dq
  %i.ds = sdiv <4 x i32> %i.dr, %broadcast.splat239
  %i.dt = and <4 x i32> %i.ds, splat (i32 65535)  ; 2 uses
  %i.du = getelementptr i8, ptr %invariant.gep216.i, i64 %index241
  %wide.load245 = load <4 x i8>, ptr %i.du, align 1, !tbaa !100, !alias.scope !103, !noalias !102
  %i.dv = zext <4 x i8> %wide.load245 to <4 x i32>
  %i.dw = sub nsw <4 x i32> %i.dv, %broadcast.splat
  %i.dx = sitofp nsz <4 x i32> %i.dw to <4 x float>
  %i.dy = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.dx, <4 x float> zeroinitializer)
  %i.dz = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.dy, <4 x float> %broadcast.splat235)
  %i.ea = fptosi <4 x float> %i.dz to <4 x i32>
  %i.eb = mul nsw <4 x i32> %broadcast.splat237, %i.ea
  %i.ec = sdiv <4 x i32> %i.eb, %broadcast.splat239
  %i.ed = shl nsw <4 x i32> %i.ec, splat (i32 1)
  %i.ee = and <4 x i32> %i.ed, splat (i32 131070)
  %i.ef = getelementptr i8, ptr %invariant.gep216.i, i64 %i.dj
  %wide.load246 = load <4 x i8>, ptr %i.ef, align 1, !tbaa !100, !alias.scope !103, !noalias !102
  %i.eg = zext <4 x i8> %wide.load246 to <4 x i32>
  %i.eh = sub nsw <4 x i32> %i.eg, %broadcast.splat
  %i.ei = sitofp nsz <4 x i32> %i.eh to <4 x float>
  %i.ej = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ei, <4 x float> zeroinitializer)
  %i.ek = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ej, <4 x float> %broadcast.splat235)
  %i.el = fptosi <4 x float> %i.ek to <4 x i32>
  %i.em = mul nsw <4 x i32> %broadcast.splat237, %i.el
  %i.en = sdiv <4 x i32> %i.em, %broadcast.splat239
  %i.eo = shl nsw <4 x i32> %i.en, splat (i32 1)
  %i.ep = and <4 x i32> %i.eo, splat (i32 131070)
  %i.eq = getelementptr i8, ptr %invariant.gep220.i, i64 %index241
  %wide.load247 = load <4 x i8>, ptr %i.eq, align 1, !tbaa !100, !alias.scope !104, !noalias !102
  %i.er = zext <4 x i8> %wide.load247 to <4 x i32>
  %i.es = sub nsw <4 x i32> %i.er, %broadcast.splat
  %i.et = sitofp nsz <4 x i32> %i.es to <4 x float>
  %i.eu = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.et, <4 x float> zeroinitializer)
  %i.ev = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.eu, <4 x float> %broadcast.splat235)
  %i.ew = fptosi <4 x float> %i.ev to <4 x i32>
  %i.ex = mul nsw <4 x i32> %broadcast.splat237, %i.ew
  %i.ey = sdiv <4 x i32> %i.ex, %broadcast.splat239
  %i.ez = and <4 x i32> %i.ey, splat (i32 65535)  ; 2 uses
  %i.fa = getelementptr i8, ptr %invariant.gep220.i, i64 %i.cn
  %wide.load248 = load <4 x i8>, ptr %i.fa, align 1, !tbaa !100, !alias.scope !104, !noalias !102
  %i.fb = zext <4 x i8> %wide.load248 to <4 x i32>
  %i.fc = sub nsw <4 x i32> %i.fb, %broadcast.splat
  %i.fd = sitofp nsz <4 x i32> %i.fc to <4 x float>
  %i.fe = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.fd, <4 x float> zeroinitializer)
  %i.ff = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.fe, <4 x float> %broadcast.splat235)
  %i.fg = fptosi <4 x float> %i.ff to <4 x i32>
  %i.fh = mul nsw <4 x i32> %broadcast.splat237, %i.fg
  %i.fi = sdiv <4 x i32> %i.fh, %broadcast.splat239
  %i.fj = shl nsw <4 x i32> %i.fi, splat (i32 1)
  %i.fk = and <4 x i32> %i.fj, splat (i32 131070)
  %i.fl = getelementptr i8, ptr %invariant.gep220.i, i64 %i.dj
  %wide.load249 = load <4 x i8>, ptr %i.fl, align 1, !tbaa !100, !alias.scope !104, !noalias !102
  %i.fm = zext <4 x i8> %wide.load249 to <4 x i32>
  %i.fn = sub nsw <4 x i32> %i.fm, %broadcast.splat
  %i.fo = sitofp nsz <4 x i32> %i.fn to <4 x float>
  %i.fp = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.fo, <4 x float> zeroinitializer)
  %i.fq = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.fp, <4 x float> %broadcast.splat235)
  %i.fr = fptosi <4 x float> %i.fq to <4 x i32>
  %i.fs = mul nsw <4 x i32> %broadcast.splat237, %i.fr
  %i.ft = sdiv <4 x i32> %i.fs, %broadcast.splat239
  %i.fu = and <4 x i32> %i.ft, splat (i32 65535)  ; 2 uses
  %i.fv = add nuw nsw <4 x i32> %i.cx, %i.ee
  %i.fw = add nuw nsw <4 x i32> %i.dt, %i.ep
  %i.fx = add nuw nsw <4 x i32> %i.fv, %i.ez
  %i.fy = add nuw nsw <4 x i32> %i.fw, %i.fu
  %i.fz = sub nsw <4 x i32> %i.fx, %i.fy
  %i.ga = sitofp <4 x i32> %i.fz to <4 x double>  ; 2 uses
  %i.gb = add nuw nsw <4 x i32> %i.di, %i.cx
  %i.gc = add nuw nsw <4 x i32> %i.gb, %i.dt
  %i.gd = add nuw nsw <4 x i32> %i.ez, %i.fk
  %i.ge = add nuw nsw <4 x i32> %i.gd, %i.fu
  %i.gf = sub nsw <4 x i32> %i.gc, %i.ge
  %i.gg = sitofp <4 x i32> %i.gf to <4 x double>  ; 2 uses
  %i.gh = fmul nnan nsz <4 x double> %i.gg, %i.gg
  %i.gi = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ga, <4 x double> %i.ga, <4 x double> %i.gh)
  %i.gj = tail call nsz <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.gi)
  %i.gk = fptrunc nsz <4 x double> %i.gj to <4 x float>
  %i.gl = trunc nuw nsw i64 %i.cn to i32
  %i.gm = add i32 %invariant.op.us.i, %i.gl
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.gn
  store <4 x float> %i.gk, ptr %i.go, align 4, !tbaa !21, !alias.scope !102
  %index.next250 = add nuw i64 %index241, 4       ; 2 uses
  %i.gp = icmp eq i64 %index.next250, %n.vec233
  br i1 %i.gp, label %middle.block251, label %vector.body240, !llvm.loop !48

middle.block251:                                  ; preds = %vector.body240
  br i1 %cmp.n252, label %._crit_edge.split.us.us.i, label %.preheader102.us.us.i.preheader

.preheader102.us.us.i.preheader:                  ; preds = %vector.memcheck205, %vector.scevcheck204, %.preheader103.us.i, %middle.block251
  %indvars.iv149.i.ph = phi i64 [ 1, %vector.memcheck205 ], [ 1, %vector.scevcheck204 ], [ 1, %.preheader103.us.i ], [ %i.bq, %middle.block251 ]
  br label %.preheader102.us.us.i

.preheader102.us.us.i:                            ; preds = %.preheader102.us.us.i.preheader, %.preheader102.us.us.i
  %indvars.iv149.i = phi i64 [ %indvars.iv.next150.i, %.preheader102.us.us.i ], [ %indvars.iv149.i.ph, %.preheader102.us.us.i.preheader ] ; 5 uses
  %i.gq = add nsw i64 %indvars.iv149.i, -1        ; 3 uses
  %gep211.i = getelementptr i8, ptr %invariant.gep210.i, i64 %i.gq
  %i.gr = load i8, ptr %gep211.i, align 1, !tbaa !100
  %gep213.i = getelementptr i8, ptr %invariant.gep210.i, i64 %indvars.iv149.i
  %i.gs = load i8, ptr %gep213.i, align 1, !tbaa !100
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1 ; 5 uses
  %gep215.i = getelementptr i8, ptr %invariant.gep210.i, i64 %indvars.iv.next150.i
  %i.gt = load i8, ptr %gep215.i, align 1, !tbaa !100
  %gep217.i = getelementptr i8, ptr %invariant.gep216.i, i64 %i.gq
  %i.gu = load i8, ptr %gep217.i, align 1, !tbaa !100
  %gep219.i = getelementptr i8, ptr %invariant.gep216.i, i64 %indvars.iv.next150.i
  %i.gv = load i8, ptr %gep219.i, align 1, !tbaa !100
  %gep221.i = getelementptr i8, ptr %invariant.gep220.i, i64 %i.gq
  %i.gw = load i8, ptr %gep221.i, align 1, !tbaa !100
  %gep223.i = getelementptr i8, ptr %invariant.gep220.i, i64 %indvars.iv149.i
  %i.gx = load i8, ptr %gep223.i, align 1, !tbaa !100
  %gep225.i = getelementptr i8, ptr %invariant.gep220.i, i64 %indvars.iv.next150.i
  %i.gy = load i8, ptr %gep225.i, align 1, !tbaa !100
  %i.gz = zext i8 %i.gt to i32
  %i.ha = zext i8 %i.gr to i32
  %i.hb = sub nsw i32 %i.gz, %i.ai
  %i.hc = sub nsw i32 %i.ha, %i.ai
  %i.hd = trunc nsw i32 %i.hc to i16
  %i.he = insertelement <2 x i16> poison, i16 %i.hd, i64 0
  %i.hf = trunc nsw i32 %i.hb to i16
  %i.hg = insertelement <2 x i16> %i.he, i16 %i.hf, i64 1
  %i.hh = sitofp <2 x i16> %i.hg to <2 x float>
  %i.hi = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.hh, <2 x float> zeroinitializer)
  %i.hj = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.hi, <2 x float> %i.bs)
  %i.hk = fptosi <2 x float> %i.hj to <2 x i32>
  %i.hl = mul nsw <2 x i32> %i.bu, %i.hk
  %i.hm = sdiv <2 x i32> %i.hl, %i.bw
  %i.hn = and <2 x i32> %i.hm, splat (i32 65535)  ; 3 uses
  %i.ho = zext i8 %i.gv to i32
  %i.hp = zext i8 %i.gu to i32
  %i.hq = insertelement <2 x i32> poison, i32 %i.hp, i64 0
  %i.hr = insertelement <2 x i32> %i.hq, i32 %i.ho, i64 1
  %i.hs = sub nsw <2 x i32> %i.hr, %i.by
  %i.ht = sitofp <2 x i32> %i.hs to <2 x float>
  %i.hu = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ht, <2 x float> zeroinitializer)
  %i.hv = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.hu, <2 x float> %i.bs)
  %i.hw = fptosi <2 x float> %i.hv to <2 x i32>
  %i.hx = mul nsw <2 x i32> %i.bu, %i.hw
  %i.hy = sdiv <2 x i32> %i.hx, %i.bw
  %i.hz = shl nsw <2 x i32> %i.hy, splat (i32 1)
  %i.ia = and <2 x i32> %i.hz, splat (i32 131070)
  %i.ib = zext i8 %i.gy to i32
  %i.ic = zext i8 %i.gw to i32
  %i.id = sub nsw i32 %i.ib, %i.ai
  %i.ie = sub nsw i32 %i.ic, %i.ai
  %i.if = trunc nsw i32 %i.ie to i16
  %i.ig = insertelement <2 x i16> poison, i16 %i.if, i64 0
  %i.ih = trunc nsw i32 %i.id to i16
  %i.ii = insertelement <2 x i16> %i.ig, i16 %i.ih, i64 1
  %i.ij = sitofp <2 x i16> %i.ii to <2 x float>
  %i.ik = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ij, <2 x float> zeroinitializer)
  %i.il = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ik, <2 x float> %i.bs)
  %i.im = fptosi <2 x float> %i.il to <2 x i32>
  %i.in = mul nsw <2 x i32> %i.bu, %i.im
  %i.io = sdiv <2 x i32> %i.in, %i.bw
  %i.ip = and <2 x i32> %i.io, splat (i32 65535)  ; 3 uses
  %i.iq = add nuw nsw <2 x i32> %i.hn, %i.ia
  %i.ir = add nuw nsw <2 x i32> %i.iq, %i.ip      ; 2 uses
  %shift = shufflevector <2 x i32> %i.ir, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = sub nsw <2 x i32> %i.ir, %shift
  %i.is = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %i.it = sitofp i32 %i.is to double              ; 2 uses
  %5 = insertelement <2 x i8> poison, i8 %i.gs, i64 0
  %6 = insertelement <2 x i8> %5, i8 %i.gx, i64 1
  %7 = zext <2 x i8> %6 to <2 x i16>
  %8 = sub nsw <2 x i16> %7, %4
  %i.iu = sitofp <2 x i16> %8 to <2 x float>
  %i.iv = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.iu, <2 x float> zeroinitializer)
  %i.iw = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.iv, <2 x float> %i.bs)
  %i.ix = fptosi <2 x float> %i.iw to <2 x i32>
  %i.iy = mul nsw <2 x i32> %i.bu, %i.ix
  %i.iz = sdiv <2 x i32> %i.iy, %i.bw
  %i.ja = shl nsw <2 x i32> %i.iz, splat (i32 1)
  %i.jb = and <2 x i32> %i.ja, splat (i32 131070)
  %i.jc = shufflevector <2 x i32> %i.hn, <2 x i32> %i.ip, <2 x i32> <i32 0, i32 2>
  %i.jd = add nuw nsw <2 x i32> %i.jb, %i.jc
  %i.je = shufflevector <2 x i32> %i.hn, <2 x i32> %i.ip, <2 x i32> <i32 1, i32 3>
  %i.jf = add nuw nsw <2 x i32> %i.jd, %i.je      ; 2 uses
  %shift385 = shufflevector <2 x i32> %i.jf, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop386 = sub nsw <2 x i32> %i.jf, %shift385
  %i.jg = extractelement <2 x i32> %foldExtExtBinop386, i64 0
  %i.jh = sitofp i32 %i.jg to double              ; 2 uses
  %i.ji = fmul nnan nsz double %i.jh, %i.jh
  %i.jj = tail call nsz double @llvm.fmuladd.f64(double %i.it, double %i.it, double %i.ji)
  %i.jk = tail call nsz double @llvm.sqrt.f64(double %i.jj)
  %i.jl = fptrunc nsz double %i.jk to float
  %i.jm = trunc nuw nsw i64 %indvars.iv149.i to i32
  %.reass.us.us.i = add i32 %invariant.op.us.i, %i.jm
  %i.jn = sext i32 %.reass.us.us.i to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.jn
  store float %i.jl, ptr %i.jo, align 4, !tbaa !21
  %exitcond153.not.i = icmp eq i64 %indvars.iv.next150.i, %wide.trip.count152.i
  br i1 %exitcond153.not.i, label %._crit_edge.split.us.us.i, label %.preheader102.us.us.i, !llvm.loop !49

._crit_edge.split.us.us.i:                        ; preds = %.preheader102.us.us.i, %middle.block251
  %exitcond158.not.i = icmp eq i64 %i.ch, %wide.trip.count157.i
  %indvar.next209 = add i32 %indvar208, 1
  br i1 %exitcond158.not.i, label %convolve_sobel.exit, label %.preheader103.us.i, !llvm.loop !50

.preheader101.i:                                  ; preds = %is_full_range.exit
  br i1 %i.ae, label %.preheader100.lr.ph.i, label %convolve_sobel.exit.thread

.preheader100.lr.ph.i:                            ; preds = %.preheader101.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !39 ; 3 uses
  %i.jr = icmp sgt i32 %i.jq, 2
  %i.js = add i32 %i.jq, -2                       ; 2 uses
  br i1 %i.jr, label %.preheader100.lr.ph.split.i, label %convolve_sobel.exit.thread.thread

convolve_sobel.exit.thread.thread:                ; preds = %.preheader100.lr.ph.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !40
  %i.jv = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !41
  br label %.preheader.lr.ph.i

.preheader100.lr.ph.split.i:                      ; preds = %.preheader100.lr.ph.i
  %i.jx = add nsw i32 %i.jq, -1
  %.not93.i = icmp eq i32 %.0.in.i, 0
  %i.jy = sext i32 %i.x to i64                    ; 6 uses
  %wide.trip.count185.i = zext nneg i32 %i.ad to i64 ; 2 uses
  %wide.trip.count180.i = zext i32 %i.jx to i64   ; 5 uses
  %i.jz = add nsw i64 %wide.trip.count180.i, -2   ; 4 uses
  br i1 %.not93.i, label %.preheader100.us.i.preheader, label %.preheader100.i.preheader

.preheader100.i.preheader:                        ; preds = %.preheader100.lr.ph.split.i
  %i.ka = add nsw i64 %wide.trip.count180.i, -1   ; 3 uses
  %min.iters.check256 = icmp ult i64 %i.ka, 4
  %i.kb = trunc i64 %i.jz to i32
  %i.kc = icmp ugt i64 %i.jz, 4294967295
  %n.vec258 = and i64 %i.ka, -4                   ; 3 uses
  %i.kd = or disjoint i64 %n.vec258, 1
  %cmp.n276 = icmp eq i64 %i.ka, %n.vec258
  br label %.preheader100.i

.preheader100.us.i.preheader:                     ; preds = %.preheader100.lr.ph.split.i
  %i.ke = add nsw i64 %wide.trip.count180.i, -1   ; 3 uses
  %min.iters.check283 = icmp ult i64 %i.ke, 4
  %i.kf = trunc i64 %i.jz to i32
  %i.kg = icmp ugt i64 %i.jz, 4294967295
  %n.vec285 = and i64 %i.ke, -4                   ; 3 uses
  %i.kh = or disjoint i64 %n.vec285, 1
  %cmp.n304 = icmp eq i64 %i.ke, %n.vec285
  br label %.preheader100.us.i

.preheader100.us.i:                               ; preds = %.preheader100.us.i.preheader, %._crit_edge.split124.us.us.i
  %indvars.iv182.i = phi i64 [ %i.kn, %._crit_edge.split124.us.us.i ], [ 1, %.preheader100.us.i.preheader ] ; 3 uses
  %i.ki = add nsw i64 %indvars.iv182.i, -1        ; 2 uses
  %i.kj = trunc i64 %i.ki to i32
  %i.kk = mul i32 %i.js, %i.kj                    ; 3 uses
  %invariant.op121.us.i = add i32 %i.kk, -1       ; 2 uses
  %i.kl = mul nsw i64 %i.ki, %i.jy
  %invariant.gep242.i = getelementptr [2 x i8], ptr %i.q, i64 %i.kl ; 5 uses
  %i.km = mul nsw i64 %indvars.iv182.i, %i.jy
  %invariant.gep248.i = getelementptr [2 x i8], ptr %i.q, i64 %i.km ; 4 uses
  %i.kn = add nuw nsw i64 %indvars.iv182.i, 1     ; 3 uses
  %i.ko = mul nsw i64 %i.kn, %i.jy
  %invariant.gep252.i = getelementptr [2 x i8], ptr %i.q, i64 %i.ko ; 4 uses
  %gep245.i.phi.trans.insert = getelementptr i8, ptr %invariant.gep242.i, i64 2
  %.pre142 = load i16, ptr %gep245.i.phi.trans.insert, align 2, !tbaa !109 ; 2 uses
  %.pre143 = load i16, ptr %invariant.gep252.i, align 2, !tbaa !109 ; 3 uses
  %gep255.i.phi.trans.insert = getelementptr i8, ptr %invariant.gep252.i, i64 2
  %.pre144 = load i16, ptr %gep255.i.phi.trans.insert, align 2, !tbaa !109 ; 2 uses
  %i.kp = insertelement <2 x i16> poison, i16 %.pre142, i64 0
  %i.kq = insertelement <2 x i16> %i.kp, i16 %.pre144, i64 1 ; 2 uses
  br i1 %min.iters.check283, label %.preheader.us.us.i.preheader, label %vector.scevcheck281

vector.scevcheck281:                              ; preds = %.preheader100.us.i
  %i.kr = add i32 %i.kk, %i.kf
  %i.ks = icmp slt i32 %i.kr, %i.kk
  %i.kt = or i1 %i.ks, %i.kg
  br i1 %i.kt, label %.preheader.us.us.i.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %vector.scevcheck281
  %vector.recur.init288 = insertelement <4 x i16> poison, i16 %.pre144, i64 3
  %vector.recur.init290 = insertelement <4 x i16> poison, i16 %.pre143, i64 3
  %vector.recur.init292 = insertelement <4 x i16> poison, i16 %.pre142, i64 3
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph284
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next299, %vector.body286 ] ; 5 uses
  %vector.recur289 = phi <4 x i16> [ %vector.recur.init288, %vector.ph284 ], [ %wide.load298, %vector.body286 ]
  %vector.recur291 = phi <4 x i16> [ %vector.recur.init290, %vector.ph284 ], [ %i.mx, %vector.body286 ]
  %vector.recur293 = phi <4 x i16> [ %vector.recur.init292, %vector.ph284 ], [ %wide.load295, %vector.body286 ]
  %i.ku = getelementptr [2 x i8], ptr %invariant.gep242.i, i64 %index287
  %wide.load294 = load <4 x i16>, ptr %i.ku, align 2, !tbaa !109
  %i.kv = zext <4 x i16> %wide.load294 to <4 x i32>
  %i.kw = add nsw <4 x i32> %i.kv, splat (i32 -64)
  %i.kx = sitofp nsz <4 x i32> %i.kw to <4 x float>
  %i.ky = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.kx, <4 x float> zeroinitializer)
  %i.kz = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ky, <4 x float> splat (float 8.760000e+02))
  %i.la = fptosi <4 x float> %i.kz to <4 x i32>
  %i.lb = mul nuw nsw <4 x i32> %i.la, splat (i32 341)
  %i.lc = udiv <4 x i32> %i.lb, splat (i32 292)
  %i.ld = and <4 x i32> %i.lc, splat (i32 65535)  ; 2 uses
  %i.le = or disjoint i64 %index287, 2            ; 3 uses
  %i.lf = getelementptr [2 x i8], ptr %invariant.gep242.i, i64 %i.le
  %wide.load295 = load <4 x i16>, ptr %i.lf, align 2, !tbaa !109 ; 4 uses
  %i.lg = shufflevector <4 x i16> %vector.recur293, <4 x i16> %wide.load295, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lh = zext <4 x i16> %i.lg to <4 x i32>
  %i.li = add nsw <4 x i32> %i.lh, splat (i32 -64)
  %i.lj = sitofp nsz <4 x i32> %i.li to <4 x float>
  %i.lk = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lj, <4 x float> zeroinitializer)
  %i.ll = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.lk, <4 x float> splat (float 8.760000e+02))
  %i.lm = fptosi <4 x float> %i.ll to <4 x i32>
  %i.ln = mul nuw nsw <4 x i32> %i.lm, splat (i32 341)
  %i.lo = udiv <4 x i32> %i.ln, splat (i32 292)
  %i.lp = shl nuw nsw <4 x i32> %i.lo, splat (i32 1)
  %i.lq = and <4 x i32> %i.lp, splat (i32 131070)
  %i.lr = zext <4 x i16> %wide.load295 to <4 x i32>
  %i.ls = add nsw <4 x i32> %i.lr, splat (i32 -64)
  %i.lt = sitofp nsz <4 x i32> %i.ls to <4 x float>
  %i.lu = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lt, <4 x float> zeroinitializer)
  %i.lv = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.lu, <4 x float> splat (float 8.760000e+02))
  %i.lw = fptosi <4 x float> %i.lv to <4 x i32>
  %i.lx = mul nuw nsw <4 x i32> %i.lw, splat (i32 341)
  %i.ly = udiv <4 x i32> %i.lx, splat (i32 292)
  %i.lz = and <4 x i32> %i.ly, splat (i32 65535)  ; 2 uses
  %i.ma = getelementptr [2 x i8], ptr %invariant.gep248.i, i64 %index287
  %wide.load296 = load <4 x i16>, ptr %i.ma, align 2, !tbaa !109
  %i.mb = zext <4 x i16> %wide.load296 to <4 x i32>
  %i.mc = add nsw <4 x i32> %i.mb, splat (i32 -64)
  %i.md = sitofp nsz <4 x i32> %i.mc to <4 x float>
  %i.me = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.md, <4 x float> zeroinitializer)
  %i.mf = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.me, <4 x float> splat (float 8.760000e+02))
  %i.mg = fptosi <4 x float> %i.mf to <4 x i32>
  %i.mh = mul nuw nsw <4 x i32> %i.mg, splat (i32 341)
  %i.mi = udiv <4 x i32> %i.mh, splat (i32 292)
  %i.mj = shl nuw nsw <4 x i32> %i.mi, splat (i32 1)
  %i.mk = and <4 x i32> %i.mj, splat (i32 131070)
  %i.ml = getelementptr [2 x i8], ptr %invariant.gep248.i, i64 %i.le
  %wide.load297 = load <4 x i16>, ptr %i.ml, align 2, !tbaa !109
  %i.mm = zext <4 x i16> %wide.load297 to <4 x i32>
  %i.mn = add nsw <4 x i32> %i.mm, splat (i32 -64)
  %i.mo = sitofp nsz <4 x i32> %i.mn to <4 x float>
  %i.mp = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.mo, <4 x float> zeroinitializer)
  %i.mq = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.mp, <4 x float> splat (float 8.760000e+02))
  %i.mr = fptosi <4 x float> %i.mq to <4 x i32>
  %i.ms = mul nuw nsw <4 x i32> %i.mr, splat (i32 341)
  %i.mt = udiv <4 x i32> %i.ms, splat (i32 292)
  %i.mu = shl nuw nsw <4 x i32> %i.mt, splat (i32 1)
  %i.mv = and <4 x i32> %i.mu, splat (i32 131070)
  %i.mw = getelementptr [2 x i8], ptr %invariant.gep252.i, i64 %i.le
  %wide.load298 = load <4 x i16>, ptr %i.mw, align 2, !tbaa !109 ; 5 uses
  %i.mx = shufflevector <4 x i16> %vector.recur289, <4 x i16> %wide.load298, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.my = shufflevector <4 x i16> %vector.recur291, <4 x i16> %i.mx, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.mz = zext <4 x i16> %i.my to <4 x i32>
  %i.na = add nsw <4 x i32> %i.mz, splat (i32 -64)
  %i.nb = sitofp nsz <4 x i32> %i.na to <4 x float>
  %i.nc = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.nb, <4 x float> zeroinitializer)
  %i.nd = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.nc, <4 x float> splat (float 8.760000e+02))
  %i.ne = fptosi <4 x float> %i.nd to <4 x i32>
  %i.nf = mul nuw nsw <4 x i32> %i.ne, splat (i32 341)
  %i.ng = udiv <4 x i32> %i.nf, splat (i32 292)
  %i.nh = and <4 x i32> %i.ng, splat (i32 65535)  ; 2 uses
  %i.ni = zext <4 x i16> %i.mx to <4 x i32>
  %i.nj = add nsw <4 x i32> %i.ni, splat (i32 -64)
  %i.nk = sitofp nsz <4 x i32> %i.nj to <4 x float>
  %i.nl = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.nk, <4 x float> zeroinitializer)
  %i.nm = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.nl, <4 x float> splat (float 8.760000e+02))
  %i.nn = fptosi <4 x float> %i.nm to <4 x i32>
  %i.no = mul nuw nsw <4 x i32> %i.nn, splat (i32 341)
  %i.np = udiv <4 x i32> %i.no, splat (i32 292)
  %i.nq = shl nuw nsw <4 x i32> %i.np, splat (i32 1)
  %i.nr = and <4 x i32> %i.nq, splat (i32 131070)
  %i.ns = zext <4 x i16> %wide.load298 to <4 x i32>
  %i.nt = add nsw <4 x i32> %i.ns, splat (i32 -64)
end_hunk_0
