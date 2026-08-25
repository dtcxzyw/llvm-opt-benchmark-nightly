Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512bf16?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 50
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%"class.ncnn::Mat" = type { ptr, ptr, i64, i32, ptr, i32, i32, i32, i32, i32, i64 }

$__clang_call_terminate = comdat any

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4ncnn37deconvolution_packed_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %12) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(64) %12)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %12) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 22 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 22 uses
  %i.d = alloca i32, align 4                      ; 22 uses
  %i.e = alloca i32, align 4                      ; 22 uses
  %i.f = alloca i32, align 4                      ; 22 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 24 uses
  %i.j = alloca i32, align 4                      ; 24 uses
  %i.k = alloca i32, align 4                      ; 8 uses
  %i.l = alloca ptr, align 8                      ; 8 uses
  %i.m = alloca i32, align 4                      ; 8 uses
  %i.n = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %4, ptr %i.a, align 4, !tbaa !9
  store i32 %5, ptr %i.b, align 4, !tbaa !9
  store i32 %6, ptr %i.c, align 4, !tbaa !9
  store i32 %7, ptr %i.d, align 4, !tbaa !9
  store i32 %8, ptr %i.e, align 4, !tbaa !9
  store i32 %9, ptr %i.f, align 4, !tbaa !9
  store i32 %10, ptr %i.g, align 4, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !10   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !16
  %i.s = mul i32 %i.r, %i.p                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17
  %i.v = sext i32 %i.p to i64
  %i.w = mul i64 %i.u, %i.v
  store i64 %i.w, ptr %i.h, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  %i.x = add nsw i32 %4, -1
  %i.y = mul nsw i32 %6, %i.x
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.i, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  %i.aa = add nsw i32 %5, -1
  %i.ab = mul nsw i32 %7, %i.aa
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.j, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  %i.ad = mul nsw i32 %5, %4
  store i32 %i.ad, ptr %i.k, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  %i.ae = load ptr, ptr %3, align 8, !tbaa !19
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #4
  %i.af = sdiv i32 %i.s, 16
  store i32 %i.af, ptr %i.m, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !22
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.n, i32 %i.ah)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 17, ptr nonnull @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.m, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.l, ptr nonnull %2, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.i, ptr nonnull %i.e, ptr nonnull %i.k, ptr nonnull %i.g, ptr nonnull %11, ptr nonnull %i.h)
  %i.ai = load i32, ptr %i.m, align 4, !tbaa !9
  %i.aj = shl nsw i32 %i.ai, 4                    ; 3 uses
  %i.ak = sub nsw i32 %i.s, %i.aj                 ; 2 uses
  %i.al = sdiv i32 %i.ak, 8                       ; 3 uses
  store i32 %i.al, ptr %i.m, align 4, !tbaa !9
  %i.am = icmp sgt i32 %i.ak, 7
  br i1 %i.am, label %_ZN4ncnn3MatD2Ev.exit2341.lr.ph, label %._crit_edge7217

_ZN4ncnn3MatD2Ev.exit2341.lr.ph:                  ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 13 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.ay = sext i32 %i.aj to i64
  %wide.trip.count8261 = zext nneg i32 %i.al to i64
  br label %_ZN4ncnn3MatD2Ev.exit2341

._crit_edge7217:                                  ; preds = %._crit_edge7215.split, %bb.a
  %i.az = shl nsw i32 %i.al, 3
  %i.ba = add nsw i32 %i.az, %i.aj                ; 3 uses
  %i.bb = sub nsw i32 %i.s, %i.ba                 ; 2 uses
  %i.bc = sdiv i32 %i.bb, 4                       ; 3 uses
  store i32 %i.bc, ptr %i.m, align 4, !tbaa !9
  %i.bd = icmp sgt i32 %i.bb, 3
  br i1 %i.bd, label %_ZN4ncnn3MatD2Ev.exit2281.lr.ph, label %._crit_edge7510

_ZN4ncnn3MatD2Ev.exit2281.lr.ph:                  ; preds = %._crit_edge7217
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 13 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.bp = sext i32 %i.ba to i64
  %wide.trip.count8348 = zext nneg i32 %i.bc to i64
  br label %_ZN4ncnn3MatD2Ev.exit2281

_ZN4ncnn3MatD2Ev.exit2341:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2341.lr.ph, %._crit_edge7215.split
  %indvars.iv8258 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2341.lr.ph ], [ %indvars.iv.next8259, %._crit_edge7215.split ] ; 2 uses
  %i.bq = load i32, ptr %i.an, align 8, !tbaa !10
  %.fr = freeze i32 %i.bq                         ; 8 uses
  %i.br = load i32, ptr %i.ao, align 8, !tbaa !16
  %i.bs = mul i32 %i.br, %.fr                     ; 15 uses
  %i.bt = load i32, ptr %i.ap, align 4, !tbaa !25 ; 6 uses
  %i.bu = load i32, ptr %i.aq, align 8, !tbaa !26 ; 5 uses
  %i.bv = load i32, ptr %i.ar, align 4, !tbaa !25 ; 2 uses
  %i.bw = load i32, ptr %i.as, align 8, !tbaa !26 ; 2 uses
  %i.bx = load i32, ptr %i.o, align 8, !tbaa !10  ; 2 uses
  %i.by = icmp sgt i32 %i.bw, 0
  br i1 %i.by, label %.preheader6931.lr.ph, label %._crit_edge7215.split

.preheader6931.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2341
  %i.bz = shl nuw nsw i64 %indvars.iv8258, 3
  %i.ca = add nsw i64 %i.bz, %i.ay                ; 2 uses
  %i.cb = trunc nsw i64 %i.ca to i32              ; 3 uses
  %i.cc = icmp sgt i32 %i.bv, 0
  %i.cd = sdiv i32 %i.cb, 16
  %i.ce = srem i32 %i.cb, 16
  %i.cf = ashr exact i32 %i.ce, 3
  %i.cg = add nsw i32 %i.cf, %i.cd
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp sgt i32 %i.bs, 15
  %i.cj = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr)
  %i.ck = icmp eq i32 %i.cj, 1
  %i.cl = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr, i1 true)
  %i.cm = icmp eq i32 %.fr, 1
  %i.cn = load i32, ptr %i.g, align 4
  br i1 %i.cc, label %.preheader6931.preheader, label %._crit_edge7215.split

.preheader6931.preheader:                         ; preds = %.preheader6931.lr.ph
  %i.co = load ptr, ptr %1, align 8, !tbaa !19, !noalias !27
  %i.cp = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !27
  %i.cq = sdiv i32 %i.cb, %i.bx
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul i64 %i.cp, %i.cr
  %i.ct = load i64, ptr %i.at, align 8, !tbaa !30, !noalias !27
  %i.cu = mul i64 %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cu
  %i.cw = add i32 %i.bs, -16                      ; 3 uses
  %i.cx = lshr i32 %i.cw, 3
  %i.cy = and i32 %i.cx, 536870910
  %narrow = add nuw nsw i32 %i.cy, 2
  %i.cz = zext nneg i32 %narrow to i64
  %i.da = and i32 %i.cw, -16
  %i.db = add i32 %i.da, 16
  %i.dc = sext i32 %i.bs to i64
  %i.dd = and i32 %i.cw, -16
  %i.de = add i32 %i.dd, 16
  %invariant.op8789 = add nsw i64 %i.dc, -15
  br label %.preheader6931

.preheader6931:                                   ; preds = %.preheader6931.preheader, %._crit_edge
  %.018087214 = phi ptr [ %.4, %._crit_edge ], [ %i.cv, %.preheader6931.preheader ]
  %.018297213 = phi i32 [ %.neg6855, %._crit_edge ], [ 0, %.preheader6931.preheader ]
  %i.df = load i32, ptr %i.b, align 4             ; 6 uses
  %i.dg = icmp sgt i32 %i.df, 0                   ; 5 uses
  %.neg6855 = add nuw nsw i32 %.018297213, 1      ; 7 uses
  %i.dh = load i32, ptr %i.k, align 4             ; 5 uses
  %i.di = shl i32 %i.dh, 7
  %i.dj = sext i32 %i.di to i64                   ; 2 uses
  %i.dk = shl i32 %i.dh, 6
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = shl i32 %i.dh, 5
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = shl i32 %i.dh, 4
  %i.dp = sext i32 %i.do to i64                   ; 3 uses
  %i.dq = shl nsw i32 %i.dh, 3
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i64 %i.cz, %i.dj
  %wide.trip.count8187 = zext nneg i32 %i.df to i64
  %wide.trip.count8201 = zext nneg i32 %i.df to i64
  %wide.trip.count8221 = zext nneg i32 %i.df to i64
  %wide.trip.count8238 = zext nneg i32 %i.df to i64
  %wide.trip.count8251 = zext nneg i32 %i.df to i64
  br label %bb.b

._crit_edge7215.split:                            ; preds = %._crit_edge, %.preheader6931.lr.ph, %_ZN4ncnn3MatD2Ev.exit2341
  %indvars.iv.next8259 = add nuw nsw i64 %indvars.iv8258, 1 ; 2 uses
  %exitcond8262.not = icmp eq i64 %indvars.iv.next8259, %wide.trip.count8261
  br i1 %exitcond8262.not, label %._crit_edge7217, label %_ZN4ncnn3MatD2Ev.exit2341, !llvm.loop !31

._crit_edge:                                      ; preds = %.thread6743
  %exitcond8257.not = icmp eq i32 %.neg6855, %i.bw
  br i1 %exitcond8257.not, label %._crit_edge7215.split, label %.preheader6931, !llvm.loop !33

bb.b:                                             ; preds = %.preheader6931, %.thread6743
  %.17212 = phi ptr [ %.018087214, %.preheader6931 ], [ %.4, %.thread6743 ] ; 15 uses
  %.018307211 = phi i32 [ 0, %.preheader6931 ], [ %i.bnx, %.thread6743 ] ; 6 uses
  %i.dt = load ptr, ptr %i.l, align 8, !tbaa !20  ; 2 uses
  %.not2153 = icmp eq ptr %i.dt, null
  br i1 %.not2153, label %_ZN4ncnn3MatD2Ev.exit2340, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.ca
  %i.dv = load <8 x float>, ptr %i.du, align 1, !tbaa !34
  br label %_ZN4ncnn3MatD2Ev.exit2340

_ZN4ncnn3MatD2Ev.exit2340:                        ; preds = %bb.c, %bb.b
  %.06535 = phi nsz <8 x float> [ zeroinitializer, %bb.b ], [ %i.dv, %bb.c ] ; 3 uses
  %i.dw = load ptr, ptr %2, align 8, !tbaa !19, !noalias !35 ; 2 uses
  %i.dx = load i64, ptr %i.au, align 8, !tbaa !17, !noalias !35
  %i.dy = mul i64 %i.dx, %i.ch
  %i.dz = load i64, ptr %i.av, align 8, !tbaa !30, !noalias !35
  %i.ea = mul i64 %i.dy, %i.dz                    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ea ; 2 uses
  br i1 %i.ci, label %.preheader6926.lr.ph, label %.preheader6930

.preheader6926.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2340
  %i.ec = load i32, ptr %i.j, align 4
  %invariant.op6954 = sub i32 %.neg6855, %i.ec
  %i.ed = load i32, ptr %i.f, align 4             ; 2 uses
  %i.ee = load i32, ptr %i.a, align 4
  %.fr8027 = freeze i32 %i.ee                     ; 2 uses
  %i.ef = icmp sgt i32 %.fr8027, 0
  %i.eg = load i32, ptr %i.i, align 4
  %.neg6857 = add nuw nsw i32 %.018307211, 1
  %invariant.op = sub i32 %.neg6857, %i.eg
  %i.eh = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.dg, label %.preheader6926.us.preheader, label %.preheader6926.preheader
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a

._crit_edge7744.split.us.us.us:                   ; preds = %..loopexit6876_crit_edge.us.us.us
  %i.fmj = getelementptr inbounds [2 x i8], ptr %.418987755.us.us, i64 %i.ens
  %indvars.iv.next8443 = add nuw nsw i64 %indvars.iv8442, 1 ; 2 uses
  %i.fmk = trunc nuw i64 %indvars.iv.next8443 to i32
  %i.fml = icmp sgt i32 %i.boh, %i.fmk
  br i1 %i.fml, label %.preheader6885.us.us, label %._crit_edge7758, !llvm.loop !215

._crit_edge7758:                                  ; preds = %._crit_edge7744.split.us.us.us, %.preheader6885.lr.ph, %.preheader6890
  %i.fmm = phi <2 x float> [ %i.fkf, %.preheader6890 ], [ %i.fkf, %.preheader6885.lr.ph ], [ %i.fmg, %._crit_edge7744.split.us.us.us ] ; 11 uses
  switch i32 %i.ene, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6755
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6758
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6752
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6761
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6764
    i32 6, label %bb.cn
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6755: ; preds = %._crit_edge7758
  %i.fmn = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fmm, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6758: ; preds = %._crit_edge7758
  %i.fmo = load ptr, ptr %11, align 8, !tbaa !19
  %i.fmp = load float, ptr %i.fmo, align 4, !tbaa !91
  %i.fmq = fcmp fast ogt <2 x float> %i.fmm, zeroinitializer
  %i.fmr = insertelement <2 x float> poison, float %i.fmp, i64 0
  %i.fms = shufflevector <2 x float> %i.fmr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fmt = select <2 x i1> %i.fmq, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fms
  %i.fmu = fmul fast <2 x float> %i.fmt, %i.fmm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6752: ; preds = %._crit_edge7758
  %i.fmv = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.fmw = load float, ptr %i.fmv, align 4, !tbaa !91
  %i.fmx = getelementptr inbounds nuw i8, ptr %i.fmv, i64 4
  %i.fmy = load float, ptr %i.fmx, align 4, !tbaa !91 ; 3 uses
  %i.fmz = insertelement <2 x float> poison, float %i.fmw, i64 0
  %i.fna = shufflevector <2 x float> %i.fmz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fnb = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fmm, <2 x float> %i.fna) ; 3 uses
  %i.fnc = insertelement <2 x float> poison, float %i.fmy, i64 0
  %i.fnd = shufflevector <2 x float> %i.fnc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fne = fcmp fast ogt <2 x float> %i.fnb, %i.fnd ; 2 uses
  %i.fnf = extractelement <2 x i1> %i.fne, i64 0
  %i.fng = extractelement <2 x float> %i.fnb, i64 0
  %.165306754 = select i1 %i.fnf, float %i.fmy, float %i.fng
  %i.fnh = insertelement <2 x float> %i.fnb, float %.165306754, i64 0 ; 2 uses
  %i.fni = extractelement <2 x i1> %i.fne, i64 1
  %i.fnj = insertelement <2 x float> %i.fnh, float %i.fmy, i64 1
  %spec.select = select i1 %i.fni, <2 x float> %i.fnj, <2 x float> %i.fnh
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6761: ; preds = %._crit_edge7758
  %i.fnk = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fmm, <2 x float> splat (float f0x42B0C0A5))
  %i.fnl = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fnk, <2 x float> splat (float f0xC2B0C0A5))
  %i.fnm = fneg fast <2 x float> %i.fnl
  %i.fnn = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fnm)
  %i.fno = fadd fast <2 x float> %i.fnn, splat (float 1.000000e+00)
  %i.fnp = fdiv fast <2 x float> splat (float 1.000000e+00), %i.fno
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6764: ; preds = %._crit_edge7758
  %i.fnq = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fmm)
  %i.fnr = fadd fast <2 x float> %i.fnq, splat (float 1.000000e+00)
  %i.fns = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.fnr)
  %i.fnt = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.fns)
  %i.fnu = fmul fast <2 x float> %i.fnt, %i.fmm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

bb.cn:                                            ; preds = %._crit_edge7758
  %i.fnv = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.fnw = load float, ptr %i.fnv, align 4, !tbaa !91 ; 5 uses
  %i.fnx = getelementptr inbounds nuw i8, ptr %i.fnv, i64 4
  %i.fny = load float, ptr %i.fnx, align 4, !tbaa !91 ; 3 uses
  %i.fnz = fneg fast float %i.fny
  %i.foa = fdiv fast float %i.fnz, %i.fnw         ; 4 uses
  %i.fob = extractelement <2 x float> %i.fmm, i64 0 ; 5 uses
  %i.foc = fcmp fast olt float %i.fob, %i.foa
  br i1 %i.foc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.fod = fdiv fast float 1.000000e+00, %i.fnw
  %i.foe = fadd fast float %i.foa, %i.fod
  %i.fof = fcmp fast ogt float %i.fob, %i.foe
  br i1 %i.fof, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.fog = fmul fast float %i.fnw, %i.fob
  %i.foh = fadd fast float %i.fog, %i.fny
  %i.foi = fmul fast float %i.foh, %i.fob
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread: ; preds = %bb.cp, %bb.co, %bb.cn
  %.165306748 = phi float [ %i.foi, %bb.cp ], [ 0.000000e+00, %bb.cn ], [ %i.fob, %bb.co ] ; 2 uses
  %i.foj = extractelement <2 x float> %i.fmm, i64 1 ; 4 uses
  %i.fok = fcmp fast olt float %i.foj, %i.foa
  %i.fol = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.165306748, i64 0 ; 2 uses
  br i1 %i.fok, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462, label %bb.cq

bb.cq:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread
  %i.fom = fdiv fast float 1.000000e+00, %i.fnw
  %i.fon = fadd fast float %i.foa, %i.fom
  %i.foo = fcmp fast ogt float %i.foj, %i.fon
  %i.fop = insertelement <2 x float> %i.fmm, float %.165306748, i64 0
  br i1 %i.foo, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.foq = fmul fast float %i.fnw, %i.foj
  %i.for = fadd fast float %i.foq, %i.fny
  %i.fos = fmul fast float %i.for, %i.foj
  %i.fot = insertelement <2 x float> %i.fol, float %i.fos, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

_ZL13activation_ssfiRKN4ncnn3MatE.exit2462:       ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6752, %._crit_edge7758, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6755, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6758, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6761, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6764, %bb.cq, %bb.cr
  %i.fou = phi <2 x float> [ %i.fol, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread ], [ %i.fmn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6755 ], [ %i.fmu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6758 ], [ %i.fmm, %._crit_edge7758 ], [ %spec.select, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6752 ], [ %i.fnp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6761 ], [ %i.fnu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6764 ], [ %i.fot, %bb.cr ], [ %i.fop, %bb.cq ]
  %i.fov = bitcast <2 x float> %i.fou to <2 x i32>
  %i.fow = lshr <2 x i32> %i.fov, splat (i32 16)
  %i.fox = trunc nuw <2 x i32> %i.fow to <2 x i16> ; 2 uses
  %i.foy = extractelement <2 x i16> %i.fox, i64 0
  store i16 %i.foy, ptr %.119367772, align 2, !tbaa !43
  %i.foz = extractelement <2 x i16> %i.fox, i64 1
  store i16 %i.foz, ptr %.119347773, align 2, !tbaa !43
  %i.fpa = getelementptr inbounds nuw i8, ptr %.119367772, i64 2 ; 2 uses
  %i.fpb = getelementptr inbounds nuw i8, ptr %.119347773, i64 2 ; 2 uses
  %i.fpc = add nuw nsw i32 %.019317774, 1         ; 2 uses
  %exitcond8445.not = icmp eq i32 %i.fpc, %i.bon
  br i1 %exitcond8445.not, label %._crit_edge7775, label %bb.bp, !llvm.loop !216

._crit_edge8015.split:                            ; preds = %._crit_edge8013, %_ZN4ncnn3MatD2Ev.exit2218.lr.ph, %._crit_edge7783.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  ret void

_ZN4ncnn3MatD2Ev.exit2218:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2218.lr.ph.split.split, %._crit_edge8013
  %indvars.iv8549 = phi i64 [ %i.emg, %_ZN4ncnn3MatD2Ev.exit2218.lr.ph.split.split ], [ %indvars.iv.next8550, %._crit_edge8013 ] ; 4 uses
  %.reass8017 = mul i64 %factor.op.mul8016, %indvars.iv8549
  %i.fpd = getelementptr inbounds nuw i8, ptr %i.elh, i64 %.reass8017
  %i.fpe = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not = icmp eq ptr %i.fpe, null
  %i.fpf = getelementptr inbounds [4 x i8], ptr %i.fpe, i64 %indvars.iv8549
  %i.fpg = trunc nsw i64 %indvars.iv8549 to i32   ; 2 uses
  %i.fph = sdiv i32 %i.fpg, 16
  %i.fpi = insertelement <4 x i32> poison, i32 %i.fpg, i64 0
  %i.fpj = shufflevector <4 x i32> %i.fpi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fpk = srem <4 x i32> %i.fpj, <i32 16, i32 8, i32 4, i32 2> ; 4 uses
  %i.fpl = bitcast <4 x i32> %i.fpk to <16 x i8>
  %.lhs.trunc6771 = extractelement <16 x i8> %i.fpl, i64 0
  %i.fpm = sdiv i8 %.lhs.trunc6771, 8
  %.sext6772 = sext i8 %i.fpm to i32
  %i.fpn = bitcast <4 x i32> %i.fpk to <16 x i8>
  %.lhs.trunc6773 = extractelement <16 x i8> %i.fpn, i64 4
  %i.fpo = sdiv i8 %.lhs.trunc6773, 4
  %.sext6774 = sext i8 %i.fpo to i32
  %i.fpp = bitcast <4 x i32> %i.fpk to <16 x i8>
  %.lhs.trunc6775 = extractelement <16 x i8> %i.fpp, i64 8
  %i.fpq = sdiv i8 %.lhs.trunc6775, 2
  %.sext6776 = sext i8 %i.fpq to i32
  %i.fpr = extractelement <4 x i32> %i.fpk, i64 3
  %i.fps = add nsw i32 %i.fpr, %i.fph
  %i.fpt = add nsw i32 %i.fps, %.sext6772
  %i.fpu = add nsw i32 %i.fpt, %.sext6774
  %i.fpv = add nsw i32 %i.fpu, %.sext6776
  %i.fpw = sext i32 %i.fpv to i64
  %i.fpx = load i32, ptr %i.g, align 4
  %.reass8020 = mul i64 %factor.op.mul8019, %i.fpw
  %i.fpy = getelementptr i8, ptr %i.elw, i64 %.reass8020 ; 3 uses
  br label %.preheader6873

.preheader6873:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2218, %._crit_edge8009
  %.018698012 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2218 ], [ %.neg6795, %._crit_edge8009 ]
  %.018708011 = phi ptr [ %i.fpd, %_ZN4ncnn3MatD2Ev.exit2218 ], [ %i.goi, %._crit_edge8009 ]
  %i.fpz = load i32, ptr %i.b, align 4            ; 6 uses
  %i.fqa = icmp sgt i32 %i.fpz, 0                 ; 5 uses
  %.neg6795 = add nuw nsw i32 %.018698012, 1      ; 7 uses
  %i.fqb = load i32, ptr %i.k, align 4            ; 5 uses
  %i.fqc = shl i32 %i.fqb, 4
  %i.fqd = sext i32 %i.fqc to i64                 ; 2 uses
  %i.fqe = shl i32 %i.fqb, 3
  %i.fqf = sext i32 %i.fqe to i64                 ; 2 uses
  %i.fqg = shl i32 %i.fqb, 2
  %i.fqh = sext i32 %i.fqg to i64                 ; 3 uses
  %i.fqi = shl i32 %i.fqb, 1
  %i.fqj = sext i32 %i.fqi to i64                 ; 2 uses
  %i.fqk = sext i32 %i.fqb to i64
  %i.fql = mul nsw i64 %i.emc, %i.fqd
  %scevgep8453 = getelementptr i8, ptr %i.fpy, i64 %i.fql
  %wide.trip.count8466 = zext nneg i32 %i.fpz to i64
  %wide.trip.count8485 = zext nneg i32 %i.fpz to i64
  %wide.trip.count8511 = zext nneg i32 %i.fpz to i64
  %wide.trip.count8529 = zext nneg i32 %i.fpz to i64
  %wide.trip.count8542 = zext nneg i32 %i.fpz to i64
  br label %bb.cs

._crit_edge8013:                                  ; preds = %._crit_edge8009
  %indvars.iv.next8550 = add nsw i64 %indvars.iv8549, 1 ; 2 uses
  %exitcond8553.not = icmp eq i64 %indvars.iv.next8550, %i.emh
  br i1 %exitcond8553.not, label %._crit_edge8015.split, label %_ZN4ncnn3MatD2Ev.exit2218, !llvm.loop !217

._crit_edge8009:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %exitcond8548.not = icmp eq i32 %.neg6795, %i.elg
  br i1 %exitcond8548.not, label %._crit_edge8013, label %.preheader6873, !llvm.loop !218

bb.cs:                                            ; preds = %.preheader6873, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.018688008 = phi i32 [ 0, %.preheader6873 ], [ %i.goj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 6 uses
  %.118718007 = phi ptr [ %.018708011, %.preheader6873 ], [ %i.goi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  br i1 %.not, label %_ZN4ncnn3MatD2Ev.exit2217, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.fqm = load float, ptr %i.fpf, align 4, !tbaa !91
  br label %_ZN4ncnn3MatD2Ev.exit2217

_ZN4ncnn3MatD2Ev.exit2217:                        ; preds = %bb.ct, %bb.cs
  %.01853 = phi nsz float [ %i.fqm, %bb.ct ], [ 0.000000e+00, %bb.cs ]
  br i1 %i.eln, label %.preheader6871.lr.ph, label %._crit_edge7824

.preheader6871.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2217
  %i.fqn = load i32, ptr %i.j, align 4
  %invariant.op7808 = sub i32 %.neg6795, %i.fqn
  %i.fqo = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fqp = load i32, ptr %i.a, align 4
  %.fr8048 = freeze i32 %i.fqp                    ; 2 uses
  %i.fqq = icmp sgt i32 %.fr8048, 0
  %i.fqr = load i32, ptr %i.i, align 4
  %.neg6797 = add nuw nsw i32 %.018688008, 1
  %invariant.op7799 = sub i32 %.neg6797, %i.fqr
  %i.fqs = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.fqa, label %.preheader6871.us.preheader, label %._crit_edge7824

.preheader6871.us.preheader:                      ; preds = %.preheader6871.lr.ph
  %i.fqt = load i32, ptr %i.c, align 4
  %i.fqu = load i32, ptr %i.d, align 4
  %i.fqv = zext i32 %.fr8048 to i64               ; 2 uses
  br label %.preheader6871.us

.preheader6871.us:                                ; preds = %.preheader6871.us.preheader, %._crit_edge7806.us
  %indvars.iv8468 = phi i64 [ 0, %.preheader6871.us.preheader ], [ %indvars.iv.next8469, %._crit_edge7806.us ] ; 20 uses
  %.018487820.us = phi ptr [ %i.fpy, %.preheader6871.us.preheader ], [ %i.frs, %._crit_edge7806.us ] ; 2 uses
  %.066107819.us = phi <16 x float> [ zeroinitializer, %.preheader6871.us.preheader ], [ %.us-phi7817.us, %._crit_edge7806.us ] ; 2 uses
  %i.fqw = lshr exact i64 %indvars.iv8468, 4
  %i.fqx = lshr exact i64 %indvars.iv8468, 3      ; 3 uses
  %i.fqy = or disjoint i64 %i.fqx, 1              ; 2 uses
  %i.fqz = lshr exact i64 %indvars.iv8468, 2      ; 4 uses
  %i.fra = or disjoint i64 %i.fqz, 1
  %i.frb = or disjoint i64 %i.fqz, 2
  %i.frc = or disjoint i64 %i.fqz, 3
  br i1 %i.fqq, label %.lr.ph7805.split.us.us.preheader, label %._crit_edge7806.us

.lr.ph7805.split.us.us.preheader:                 ; preds = %.preheader6871.us
  %i.frd = or disjoint i64 %indvars.iv8468, 1
  %i.fre = or disjoint i64 %indvars.iv8468, 2
  %i.frf = or disjoint i64 %indvars.iv8468, 3
  %i.frg = or disjoint i64 %indvars.iv8468, 4
  %i.frh = or disjoint i64 %indvars.iv8468, 5
  %i.fri = or disjoint i64 %indvars.iv8468, 6
  %i.frj = or disjoint i64 %indvars.iv8468, 7
  %i.frk = or disjoint i64 %indvars.iv8468, 8
  %i.frl = or disjoint i64 %indvars.iv8468, 9
  %i.frm = or disjoint i64 %indvars.iv8468, 10
  %i.frn = or disjoint i64 %indvars.iv8468, 11
  %i.fro = or disjoint i64 %indvars.iv8468, 12
  %i.frp = or disjoint i64 %indvars.iv8468, 13
  %i.frq = or disjoint i64 %indvars.iv8468, 14
  %i.frr = or disjoint i64 %indvars.iv8468, 15
  br label %.lr.ph7805.split.us.us

._crit_edge7806.us:                               ; preds = %..loopexit6866_crit_edge.us.us, %.preheader6871.us
  %.us-phi7817.us = phi <16 x float> [ %.066107819.us, %.preheader6871.us ], [ %.76617.us.us, %..loopexit6866_crit_edge.us.us ] ; 2 uses
  %i.frs = getelementptr inbounds [2 x i8], ptr %.018487820.us, i64 %i.fqd ; 2 uses
  %indvars.iv.next8469 = add nuw nsw i64 %indvars.iv8468, 16 ; 3 uses
  %i.frt = icmp slt i64 %indvars.iv.next8469, %invariant.op8792
  br i1 %i.frt, label %.preheader6871.us, label %._crit_edge7824.loopexit, !llvm.loop !219

.lr.ph7805.split.us.us:                           ; preds = %.lr.ph7805.split.us.us.preheader, %..loopexit6866_crit_edge.us.us
  %indvars.iv8463 = phi i64 [ 0, %.lr.ph7805.split.us.us.preheader ], [ %indvars.iv.next8464, %..loopexit6866_crit_edge.us.us ] ; 3 uses
  %.166117803.us.us = phi <16 x float> [ %.066107819.us, %.lr.ph7805.split.us.us.preheader ], [ %.76617.us.us, %..loopexit6866_crit_edge.us.us ] ; 4 uses
  %i.fru = trunc i64 %indvars.iv8463 to i32
  %i.frv = mul i32 %i.fqu, %i.fru
  %.reass7809.us.us = add i32 %i.frv, %invariant.op7808 ; 3 uses
  %i.frw = icmp slt i32 %.reass7809.us.us, 0
  br i1 %i.frw, label %..loopexit6866_crit_edge.us.us, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph7805.split.us.us
  %i.frx = srem i32 %.reass7809.us.us, %i.fqo
  %i.fry = sdiv i32 %.reass7809.us.us, %i.fqo     ; 2 uses
  %.not2106.us.us = icmp eq i32 %i.frx, 0
  %.not2107.us.us = icmp slt i32 %i.fry, %i.elc
  %or.cond9013 = select i1 %.not2106.us.us, i1 %.not2107.us.us, i1 false
  br i1 %or.cond9013, label %.preheader6865.us.us, label %..loopexit6866_crit_edge.us.us

..loopexit6866_crit_edge.us.us:                   ; preds = %bb.cw, %.preheader6865.us.us, %bb.cu, %.lr.ph7805.split.us.us
  %.76617.us.us = phi nsz <16 x float> [ %.166117803.us.us, %.lr.ph7805.split.us.us ], [ %.166117803.us.us, %bb.cu ], [ %.166117803.us.us, %.preheader6865.us.us ], [ %.66616.us.us.us, %bb.cw ] ; 2 uses
  %indvars.iv.next8464 = add nuw nsw i64 %indvars.iv8463, 1 ; 2 uses
  %exitcond8467.not = icmp eq i64 %indvars.iv.next8464, %wide.trip.count8466
  br i1 %exitcond8467.not, label %._crit_edge7806.us, label %.lr.ph7805.split.us.us, !llvm.loop !220

.preheader6865.us.us:                             ; preds = %bb.cu
  %i.frz = mul nuw nsw i64 %indvars.iv8463, %i.fqv
  %i.fsa = sext i32 %i.fry to i64                 ; 4 uses
  br i1 %i.elp, label %.lr.ph.split.us.us.us7835, label %..loopexit6866_crit_edge.us.us

.lr.ph.split.us.us.us7835:                        ; preds = %.preheader6865.us.us, %bb.cw
  %indvars.iv8458 = phi i64 [ %indvars.iv.next8459, %bb.cw ], [ 0, %.preheader6865.us.us ] ; 3 uses
  %.266127796.us.us.us = phi <16 x float> [ %.66616.us.us.us, %bb.cw ], [ %.166117803.us.us, %.preheader6865.us.us ] ; 7 uses
  %i.fsb = trunc i64 %indvars.iv8458 to i32
  %i.fsc = mul i32 %i.fqt, %i.fsb
  %.reass7800.us.us.us = add i32 %i.fsc, %invariant.op7799 ; 3 uses
  %i.fsd = icmp slt i32 %.reass7800.us.us.us, 0
  br i1 %i.fsd, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.split.us.us.us7835
  %i.fse = srem i32 %.reass7800.us.us.us, %i.fqs
  %i.fsf = sdiv i32 %.reass7800.us.us.us, %i.fqs  ; 6 uses
  %.not2108.us.us.us = icmp eq i32 %i.fse, 0
  %.not2109.us.us.us = icmp slt i32 %i.fsf, %i.ela
  %or.cond9014 = select i1 %.not2108.us.us.us, i1 %.not2109.us.us.us, i1 false
  br i1 %or.cond9014, label %.split2197.us.us.us, label %bb.cw

.split2197.us.us.us:                              ; preds = %bb.cv
  %i.fsg = add nuw nsw i64 %i.frz, %indvars.iv8458
  %i.fsh = shl i64 %i.fsg, 4
  %i.fsi = and i64 %i.fsh, 4294967280
  %i.fsj = getelementptr inbounds nuw [2 x i8], ptr %.018487820.us, i64 %i.fsi ; 4 uses
  switch i32 %i.elq, label %bb.cw [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2216.us.us.us
    i32 3, label %_ZN4ncnn3MatD2Ev.exit2215.us.us.us
    i32 2, label %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge
    i32 0, label %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge
  ]

.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge: ; preds = %.split2197.us.us.us
  %.pre8589.a = load i32, ptr %i.ekz, align 4, !tbaa !25, !noalias !221
  %.pre8590.a = load ptr, ptr %0, align 8, !tbaa !19, !noalias !221
  %.pre8591 = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !221
  %.pre8592 = load i64, ptr %i.els, align 8, !tbaa !30, !noalias !221 ; 2 uses
  %.pre8608.a = sext i32 %.pre8589.a to i64
  %.pre8610 = mul nsw i64 %.pre8608.a, %i.fsa
  %.pre8612 = mul i64 %.pre8610, %.pre8592
  br label %_ZN4ncnn3MatD2Ev.exit2209.us.us.us

.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge: ; preds = %.split2197.us.us.us
  %.pre8584.a = load i32, ptr %i.ekz, align 4, !tbaa !25, !noalias !224
  %.pre8585.a = load ptr, ptr %0, align 8, !tbaa !19, !noalias !224
  %.pre8586 = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !224
  %.pre8587 = load i64, ptr %i.els, align 8, !tbaa !30, !noalias !224 ; 2 uses
  %.pre8588 = load <16 x bfloat>, ptr %i.fsj, align 32, !tbaa !34
  %.pre8600.a = sext i32 %.pre8584.a to i64
  %.pre8602 = mul nsw i64 %.pre8600.a, %i.fsa
  %.pre8604 = mul i64 %.pre8602, %.pre8587
  %.pre8606 = fpext fast <16 x bfloat> %.pre8588 to <16 x float>
  br label %_ZN4ncnn3MatD2Ev.exit2213.us.us.us

_ZN4ncnn3MatD2Ev.exit2216.us.us.us:               ; preds = %.split2197.us.us.us
  %i.fsk = load i32, ptr %i.ekz, align 4, !tbaa !25, !noalias !227
  %i.fsl = load ptr, ptr %0, align 8, !tbaa !19, !noalias !227 ; 5 uses
  %i.fsm = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !227 ; 5 uses
  %i.fsn = mul i64 %i.fsm, %i.fqw
  %i.fso = load i64, ptr %i.els, align 8, !tbaa !30, !noalias !227 ; 6 uses
  %i.fsp = mul i64 %i.fsn, %i.fso
  %i.fsq = getelementptr inbounds nuw i8, ptr %i.fsl, i64 %i.fsp
  %i.fsr = sext i32 %i.fsk to i64
  %i.fss = mul nsw i64 %i.fsr, %i.fsa
  %i.fst = mul i64 %i.fss, %i.fso                 ; 5 uses
  %i.fsu = getelementptr inbounds nuw i8, ptr %i.fsq, i64 %i.fst
  %i.fsv = shl nsw i32 %i.fsf, 4
  %i.fsw = sext i32 %i.fsv to i64
  %i.fsx = getelementptr inbounds [2 x i8], ptr %i.fsu, i64 %i.fsw
  %i.fsy = load <16 x bfloat>, ptr %i.fsx, align 32, !tbaa !34
  %i.fsz = fpext fast <16 x bfloat> %i.fsy to <16 x float>
  %i.fta = load <16 x bfloat>, ptr %i.fsj, align 32, !tbaa !34
  %i.ftb = fpext fast <16 x bfloat> %i.fta to <16 x float> ; 3 uses
  %i.ftc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fsz, <16 x float> nofpclass(nan inf) %i.ftb, <16 x float> nofpclass(nan inf) %.266127796.us.us.us) ; 4 uses
  switch i32 %.fr8047, label %bb.cw [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2215.us.us.us.thread
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2213.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2209.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2215.us.us.us.thread:        ; preds = %_ZN4ncnn3MatD2Ev.exit2216.us.us.us
  %i.ftd = mul i64 %i.fsm, %i.fqx
  %i.fte = mul i64 %i.ftd, %i.fso
  %i.ftf = getelementptr inbounds nuw i8, ptr %i.fsl, i64 %i.fte
  %i.ftg = getelementptr inbounds nuw i8, ptr %i.ftf, i64 %i.fst
  %i.fth = shl nsw i32 %i.fsf, 3
  %i.fti = sext i32 %i.fth to i64                 ; 2 uses
  %i.ftj = getelementptr inbounds [2 x i8], ptr %i.ftg, i64 %i.fti
  %i.ftk = mul i64 %i.fsm, %i.fqy
  %i.ftl = mul i64 %i.ftk, %i.fso
  %i.ftm = getelementptr inbounds nuw i8, ptr %i.fsl, i64 %i.ftl
  %i.ftn = getelementptr inbounds nuw i8, ptr %i.ftm, i64 %i.fst
  %i.fto = getelementptr inbounds [2 x i8], ptr %i.ftn, i64 %i.fti
  %i.ftp = load <8 x bfloat>, ptr %i.ftj, align 16, !tbaa !34
  %i.ftq = fpext fast <8 x bfloat> %i.ftp to <8 x float>
  %i.ftr = load <8 x bfloat>, ptr %i.fto, align 16, !tbaa !34
  %i.fts = fpext fast <8 x bfloat> %i.ftr to <8 x float>
  %i.ftt = shufflevector <8 x float> %i.ftq, <8 x float> %i.fts, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ftu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ftt, <16 x float> nofpclass(nan inf) %i.ftb, <16 x float> nofpclass(nan inf) %i.ftc)
  br label %bb.cw
end_hunk_1
