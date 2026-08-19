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
  %i.s = mul nsw i32 %i.r, %i.p                   ; 6 uses
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
  %i.db = add nuw i32 %i.da, 16
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

.preheader6926.preheader:                         ; preds = %.preheader6926.lr.ph
  %scevgep = getelementptr i8, ptr %i.dw, i64 %i.ds
  %scevgep8182 = getelementptr i8, ptr %scevgep, i64 %i.ea
  br label %.preheader6930

.preheader6926.us.preheader:                      ; preds = %.preheader6926.lr.ph
  %i.ei = load i32, ptr %i.c, align 4
  %i.ej = load i32, ptr %i.d, align 4
  %i.ek = zext i32 %.fr8027 to i64                ; 2 uses
  br label %.preheader6926.us

.preheader6926.us:                                ; preds = %.preheader6926.us.preheader, %._crit_edge.us
  %indvars.iv8189 = phi i64 [ 0, %.preheader6926.us.preheader ], [ %indvars.iv.next8190, %._crit_edge.us ] ; 20 uses
  %.018316973.us = phi ptr [ %i.eb, %.preheader6926.us.preheader ], [ %i.fh, %._crit_edge.us ] ; 2 uses
  %.165366971.us = phi <8 x float> [ %.06535, %.preheader6926.us.preheader ], [ %.us-phi6966.us, %._crit_edge.us ] ; 2 uses
  %.065466970.us = phi <8 x float> [ zeroinitializer, %.preheader6926.us.preheader ], [ %.us-phi6965.us, %._crit_edge.us ] ; 2 uses
  %.065696969.us = phi <8 x float> [ zeroinitializer, %.preheader6926.us.preheader ], [ %.us-phi6964.us, %._crit_edge.us ] ; 2 uses
  %.065876968.us = phi <8 x float> [ zeroinitializer, %.preheader6926.us.preheader ], [ %.us-phi6963.us, %._crit_edge.us ] ; 2 uses
  %i.el = or disjoint i64 %indvars.iv8189, 15
  %i.em = lshr exact i64 %indvars.iv8189, 4
  %i.en = lshr exact i64 %indvars.iv8189, 3       ; 2 uses
  %i.eo = or disjoint i64 %i.en, 1
  %i.ep = lshr exact i64 %indvars.iv8189, 2       ; 4 uses
  %i.eq = or disjoint i64 %i.ep, 1
  %i.er = or disjoint i64 %i.ep, 2
  %i.es = or disjoint i64 %i.ep, 3
  %i.et = or disjoint i64 %indvars.iv8189, 1
  %i.eu = or disjoint i64 %indvars.iv8189, 2
  %i.ev = or disjoint i64 %indvars.iv8189, 3
  %i.ew = or disjoint i64 %indvars.iv8189, 4
  %i.ex = or disjoint i64 %indvars.iv8189, 5
  %i.ey = or disjoint i64 %indvars.iv8189, 6
  %i.ez = or disjoint i64 %indvars.iv8189, 7
  %i.fa = or disjoint i64 %indvars.iv8189, 8
  %i.fb = or disjoint i64 %indvars.iv8189, 9
  %i.fc = or disjoint i64 %indvars.iv8189, 10
  %i.fd = or disjoint i64 %indvars.iv8189, 11
  %i.fe = or disjoint i64 %indvars.iv8189, 12
  %i.ff = or disjoint i64 %indvars.iv8189, 13
  %i.fg = or disjoint i64 %indvars.iv8189, 14
  br i1 %i.ef, label %.lr.ph6950.split.us.us, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %..loopexit6921_crit_edge.us.us, %.preheader6926.us
  %.us-phi6963.us = phi <8 x float> [ %.065876968.us, %.preheader6926.us ], [ %.76594.us.us, %..loopexit6921_crit_edge.us.us ] ; 2 uses
  %.us-phi6964.us = phi <8 x float> [ %.065696969.us, %.preheader6926.us ], [ %.76576.us.us, %..loopexit6921_crit_edge.us.us ] ; 2 uses
  %.us-phi6965.us = phi <8 x float> [ %.065466970.us, %.preheader6926.us ], [ %.76553.us.us, %..loopexit6921_crit_edge.us.us ] ; 2 uses
  %.us-phi6966.us = phi <8 x float> [ %.165366971.us, %.preheader6926.us ], [ %.8.us.us, %..loopexit6921_crit_edge.us.us ] ; 2 uses
  %i.fh = getelementptr inbounds [2 x i8], ptr %.018316973.us, i64 %i.dj ; 2 uses
  %indvars.iv.next8190 = add nuw nsw i64 %indvars.iv8189, 16 ; 2 uses
  %i.fi = icmp slt i64 %indvars.iv.next8190, %invariant.op8789
  br i1 %i.fi, label %.preheader6926.us, label %.preheader6930, !llvm.loop !38

.lr.ph6950.split.us.us:                           ; preds = %.preheader6926.us, %..loopexit6921_crit_edge.us.us
  %indvars.iv8184 = phi i64 [ %indvars.iv.next8185, %..loopexit6921_crit_edge.us.us ], [ 0, %.preheader6926.us ] ; 3 uses
  %.265376948.us.us = phi <8 x float> [ %.8.us.us, %..loopexit6921_crit_edge.us.us ], [ %.165366971.us, %.preheader6926.us ] ; 4 uses
  %.165476947.us.us = phi <8 x float> [ %.76553.us.us, %..loopexit6921_crit_edge.us.us ], [ %.065466970.us, %.preheader6926.us ] ; 4 uses
  %.165706946.us.us = phi <8 x float> [ %.76576.us.us, %..loopexit6921_crit_edge.us.us ], [ %.065696969.us, %.preheader6926.us ] ; 4 uses
  %.165886945.us.us = phi <8 x float> [ %.76594.us.us, %..loopexit6921_crit_edge.us.us ], [ %.065876968.us, %.preheader6926.us ] ; 4 uses
  %i.fj = trunc i64 %indvars.iv8184 to i32
  %i.fk = mul i32 %i.ej, %i.fj
  %.reass6955.us.us = add i32 %i.fk, %invariant.op6954 ; 3 uses
  %i.fl = icmp slt i32 %.reass6955.us.us, 0
  br i1 %i.fl, label %..loopexit6921_crit_edge.us.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph6950.split.us.us
  %i.fm = srem i32 %.reass6955.us.us, %i.ed
  %i.fn = sdiv i32 %.reass6955.us.us, %i.ed       ; 2 uses
  %.not2176.us.us = icmp eq i32 %i.fm, 0
  %.not2177.us.us = icmp slt i32 %i.fn, %i.bu
  %or.cond8980 = select i1 %.not2176.us.us, i1 %.not2177.us.us, i1 false
  br i1 %or.cond8980, label %.preheader6920.us.us, label %..loopexit6921_crit_edge.us.us

..loopexit6921_crit_edge.us.us:                   ; preds = %bb.f, %.preheader6920.us.us, %bb.d, %.lr.ph6950.split.us.us
  %.76594.us.us = phi nsz <8 x float> [ %.165886945.us.us, %.lr.ph6950.split.us.us ], [ %.165886945.us.us, %bb.d ], [ %.165886945.us.us, %.preheader6920.us.us ], [ %.66593.us.us.us, %bb.f ] ; 2 uses
  %.76576.us.us = phi nsz <8 x float> [ %.165706946.us.us, %.lr.ph6950.split.us.us ], [ %.165706946.us.us, %bb.d ], [ %.165706946.us.us, %.preheader6920.us.us ], [ %.66575.us.us.us, %bb.f ] ; 2 uses
  %.76553.us.us = phi nsz <8 x float> [ %.165476947.us.us, %.lr.ph6950.split.us.us ], [ %.165476947.us.us, %bb.d ], [ %.165476947.us.us, %.preheader6920.us.us ], [ %.66552.us.us.us, %bb.f ] ; 2 uses
  %.8.us.us = phi nsz <8 x float> [ %.265376948.us.us, %.lr.ph6950.split.us.us ], [ %.265376948.us.us, %bb.d ], [ %.265376948.us.us, %.preheader6920.us.us ], [ %.7.us.us.us, %bb.f ] ; 2 uses
  %indvars.iv.next8185 = add nuw nsw i64 %indvars.iv8184, 1 ; 2 uses
  %exitcond8188.not = icmp eq i64 %indvars.iv.next8185, %wide.trip.count8187
  br i1 %exitcond8188.not, label %._crit_edge.us, label %.lr.ph6950.split.us.us, !llvm.loop !39

.preheader6920.us.us:                             ; preds = %bb.d
  %i.fo = mul nuw nsw i64 %indvars.iv8184, %i.ek
  %i.fp = sext i32 %i.fn to i64                   ; 5 uses
  br i1 %i.ck, label %.lr.ph.split.us.us.us, label %..loopexit6921_crit_edge.us.us

.lr.ph.split.us.us.us:                            ; preds = %.preheader6920.us.us, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.preheader6920.us.us ] ; 3 uses
  %.365386937.us.us.us = phi <8 x float> [ %.7.us.us.us, %bb.f ], [ %.265376948.us.us, %.preheader6920.us.us ] ; 7 uses
  %.265486936.us.us.us = phi <8 x float> [ %.66552.us.us.us, %bb.f ], [ %.165476947.us.us, %.preheader6920.us.us ] ; 7 uses
  %.265716935.us.us.us = phi <8 x float> [ %.66575.us.us.us, %bb.f ], [ %.165706946.us.us, %.preheader6920.us.us ] ; 7 uses
  %.265896934.us.us.us = phi <8 x float> [ %.66593.us.us.us, %bb.f ], [ %.165886945.us.us, %.preheader6920.us.us ] ; 7 uses
  %i.fq = trunc i64 %indvars.iv to i32
  %i.fr = mul i32 %i.ei, %i.fq
  %.reass.us.us.us = add i32 %i.fr, %invariant.op ; 3 uses
  %i.fs = icmp slt i32 %.reass.us.us.us, 0
  br i1 %i.fs, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.us.us
  %i.ft = srem i32 %.reass.us.us.us, %i.eh
  %i.fu = sdiv i32 %.reass.us.us.us, %i.eh        ; 5 uses
  %.not2178.us.us.us = icmp eq i32 %i.ft, 0
  %.not2179.us.us.us = icmp slt i32 %i.fu, %i.bt
  %or.cond8981 = select i1 %.not2178.us.us.us, i1 %.not2179.us.us.us, i1 false
  br i1 %or.cond8981, label %.split.us.us.us, label %bb.f

.split.us.us.us:                                  ; preds = %bb.e
  %i.fv = add nuw nsw i64 %i.fo, %indvars.iv
  %i.fw = shl i64 %i.fv, 7
  %i.fx = and i64 %i.fw, 4294967168
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %.018316973.us, i64 %i.fx ; 64 uses
  switch i32 %i.cl, label %bb.f [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2339.us.us.us
    i32 3, label %_ZN4ncnn3MatD2Ev.exit2338.us.us.us
    i32 2, label %_ZN4ncnn3MatD2Ev.exit2336.us.us.us
    i32 0, label %_ZN4ncnn3MatD2Ev.exit2332.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2339.us.us.us:               ; preds = %.split.us.us.us
  %i.fz = load i32, ptr %i.ap, align 4, !tbaa !25, !noalias !40
  %i.ga = load ptr, ptr %0, align 8, !tbaa !19, !noalias !40
  %i.gb = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !40
  %i.gc = mul i64 %i.gb, %i.em
  %i.gd = load i64, ptr %i.ax, align 8, !tbaa !30, !noalias !40 ; 2 uses
  %i.ge = mul i64 %i.gc, %i.gd
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.bkb = bitcast <8 x float> %i.bka to <8 x i32> ; 2 uses
  %i.bkc = lshr <8 x i32> %i.bkb, splat (i32 23)
  %i.bkd = and <8 x i32> %i.bkb, splat (i32 -2139095041)
  %i.bke = or disjoint <8 x i32> %i.bkd, splat (i32 1056964608)
  %i.bkf = bitcast <8 x i32> %i.bke to <8 x float> ; 3 uses
  %i.bkg = add nsw <8 x i32> %i.bkc, splat (i32 -127)
  %i.bkh = sitofp fast <8 x i32> %i.bkg to <8 x float> ; 2 uses
  %i.bki = fadd fast <8 x float> %i.bkh, splat (float 1.000000e+00)
  %i.bkj = fcmp fast olt <8 x float> %i.bkf, splat (float f0x3F3504F3) ; 2 uses
  %i.bkk = select <8 x i1> %i.bkj, <8 x float> %i.bkf, <8 x float> zeroinitializer
  %i.bkl = fadd fast <8 x float> %i.bkf, splat (float -1.000000e+00)
  %i.bkm = select fast <8 x i1> %i.bkj, <8 x float> %i.bkh, <8 x float> %i.bki ; 2 uses
  %i.bkn = fadd fast <8 x float> %i.bkl, %i.bkk   ; 12 uses
  %i.bko = fmul fast <8 x float> %i.bkn, %i.bkn   ; 2 uses
  %i.bkp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkn, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> nofpclass(nan inf) splat (float f0xBDEBD1B8))
  %i.bkq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkp, <8 x float> nofpclass(nan inf) %i.bkn, <8 x float> nofpclass(nan inf) splat (float f0x3DEF251A))
  %i.bkr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkq, <8 x float> nofpclass(nan inf) %i.bkn, <8 x float> nofpclass(nan inf) splat (float f0xBDFE5D4F))
  %i.bks = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkr, <8 x float> nofpclass(nan inf) %i.bkn, <8 x float> nofpclass(nan inf) splat (float f0x3E11E9BF))
  %i.bkt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bks, <8 x float> nofpclass(nan inf) %i.bkn, <8 x float> nofpclass(nan inf) splat (float f0xBE2AAE50))
  %i.bku = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkt, <8 x float> nofpclass(nan inf) %i.bkn, <8 x float> nofpclass(nan inf) splat (float f0x3E4CCEAC))
  %i.bkv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bku, <8 x float> nofpclass(nan inf) %i.bkn, <8 x float> nofpclass(nan inf) splat (float f0xBE7FFFFC))
  %i.bkw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkv, <8 x float> nofpclass(nan inf) %i.bkn, <8 x float> nofpclass(nan inf) splat (float f0x3EAAAAAA))
  %i.bkx = fmul fast <8 x float> %i.bko, %i.bkn
  %i.bky = fmul fast <8 x float> %i.bkx, %i.bkw
  %i.bkz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkm, <8 x float> nofpclass(nan inf) splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bky)
  %i.bla = fneg fast <8 x float> %i.bko
  %i.blb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bla, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.bkz)
  %i.blc = fadd fast <8 x float> %i.blb, %i.bkn
  %i.bld = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkm, <8 x float> nofpclass(nan inf) splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.blc)
  %.neg6777 = fmul fast <8 x float> %i.bld, splat (float -2.000000e+00)
  %i.ble = select fast <8 x i1> %i.bjz, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg6777
  %i.blf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ble, <8 x float> splat (float f0x42B0C0A5))
  %i.blg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.blf, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.blh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blg, <8 x float> nofpclass(nan inf) splat (float f0x3FB8AA3B), <8 x float> nofpclass(nan inf) splat (float 5.000000e-01)) ; 2 uses
  %i.bli = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.blh, i32 1) ; 2 uses
  %i.blj = fcmp fast ogt <8 x float> %i.bli, %i.blh
  %i.blk = select <8 x i1> %i.blj, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bll = fsub fast <8 x float> %i.bli, %i.blk   ; 2 uses
  %i.blm = fneg fast <8 x float> %i.bll           ; 2 uses
  %i.bln = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.blm, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.blg)
  %i.blo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.blm, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bln) ; 8 uses
  %i.blp = fmul fast <8 x float> %i.blo, %i.blo
  %i.blq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blo, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.blr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blq, <8 x float> nofpclass(nan inf) %i.blo, <8 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.bls = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blr, <8 x float> nofpclass(nan inf) %i.blo, <8 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.blt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bls, <8 x float> nofpclass(nan inf) %i.blo, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.blu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blt, <8 x float> nofpclass(nan inf) %i.blo, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.blv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blu, <8 x float> nofpclass(nan inf) %i.blp, <8 x float> nofpclass(nan inf) %i.blo)
  %i.blw = fadd fast <8 x float> %i.blv, splat (float 1.000000e+00)
  %i.blx = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bll)
  %i.bly = shl <8 x i32> %i.blx, splat (i32 23)
  %i.blz = add <8 x i32> %i.bly, splat (i32 1065353216)
  %i.bma = bitcast <8 x i32> %i.blz to <8 x float>
  %i.bmb = fmul fast <8 x float> %i.blw, %i.bma
  %i.bmc = fadd fast <8 x float> %i.bmb, splat (float 1.000000e+00)
  %i.bmd = fdiv fast <8 x float> splat (float 1.000000e+00), %i.bmc
  %i.bme = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bmd, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.bmf = fmul fast <8 x float> %i.bme, %i.bhh
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.af:                                            ; preds = %._crit_edge7197
  %i.bmg = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.bmh = load float, ptr %i.bmg, align 4, !tbaa !91
  %i.bmi = insertelement <8 x float> poison, float %i.bmh, i64 0
  %i.bmj = shufflevector <8 x float> %i.bmi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmg, i64 4
  %i.bml = load float, ptr %i.bmk, align 4, !tbaa !91
  %i.bmm = insertelement <8 x float> poison, float %i.bml, i64 0
  %i.bmn = shufflevector <8 x float> %i.bmm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bmo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bhh, <8 x float> nofpclass(nan inf) %i.bmj, <8 x float> nofpclass(nan inf) %i.bmn)
  %i.bmp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bmo, <8 x float> zeroinitializer)
  %i.bmq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bmp, <8 x float> splat (float 1.000000e+00))
  %i.bmr = fmul fast <8 x float> %i.bmq, %i.bhh
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %._crit_edge7197, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.0.i = phi nsz <8 x float> [ %i.bmr, %bb.af ], [ %i.bhi, %bb.aa ], [ %i.bhq, %bb.ab ], [ %i.bia, %bb.ac ], [ %i.bja, %bb.ad ], [ %i.bmf, %bb.ae ], [ %i.bhh, %._crit_edge7197 ] ; 4 uses
  switch i32 %i.bx, label %.thread6743 [
    i32 8, label %.thread
    i32 4, label %bb.ag
    i32 1, label %bb.ah
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.bms = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i)
  store <8 x bfloat> %i.bms, ptr %.17212, align 16, !tbaa !34
  %i.bmt = getelementptr inbounds nuw i8, ptr %.17212, i64 16
  br label %.thread6743

bb.ag:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.bmu = shufflevector <8 x float> %.0.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bmv = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bmu)
  %i.bmw = bitcast <8 x bfloat> %i.bmv to <2 x i64>
  %i.bmx = extractelement <2 x i64> %i.bmw, i64 0
  store i64 %i.bmx, ptr %.17212, align 1, !tbaa !34
  %i.bmy = load i64, ptr %i.h, align 8, !tbaa !18
  %i.bmz = getelementptr inbounds nuw [2 x i8], ptr %.17212, i64 %i.bmy
  %i.bna = shufflevector <8 x float> %.0.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bnb = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bna)
  %i.bnc = bitcast <8 x bfloat> %i.bnb to <2 x i64>
  %i.bnd = extractelement <2 x i64> %i.bnc, i64 0
  store i64 %i.bnd, ptr %i.bmz, align 1, !tbaa !34
  %i.bne = getelementptr inbounds nuw i8, ptr %.17212, i64 8
  br label %.thread6743

bb.ah:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.bnf = bitcast <8 x float> %.0.i to <16 x i16> ; 8 uses
  %i.bng = extractelement <16 x i16> %i.bnf, i64 1
  store i16 %i.bng, ptr %.17212, align 2, !tbaa !43
  %i.bnh = extractelement <16 x i16> %i.bnf, i64 3
  %i.bni = load i64, ptr %i.h, align 8, !tbaa !18 ; 7 uses
  %i.bnj = getelementptr inbounds nuw [2 x i8], ptr %.17212, i64 %i.bni
  store i16 %i.bnh, ptr %i.bnj, align 2, !tbaa !43
  %i.bnk = extractelement <16 x i16> %i.bnf, i64 5
  %.idx2154 = shl i64 %i.bni, 2
  %i.bnl = getelementptr inbounds nuw i8, ptr %.17212, i64 %.idx2154
  store i16 %i.bnk, ptr %i.bnl, align 2, !tbaa !43
  %i.bnm = extractelement <16 x i16> %i.bnf, i64 7
  %.idx2155 = mul i64 %i.bni, 6
  %i.bnn = getelementptr inbounds nuw i8, ptr %.17212, i64 %.idx2155
  store i16 %i.bnm, ptr %i.bnn, align 2, !tbaa !43
  %i.bno = extractelement <16 x i16> %i.bnf, i64 9
  %.idx2156 = shl i64 %i.bni, 3
  %i.bnp = getelementptr inbounds nuw i8, ptr %.17212, i64 %.idx2156
  store i16 %i.bno, ptr %i.bnp, align 2, !tbaa !43
  %i.bnq = extractelement <16 x i16> %i.bnf, i64 11
  %.idx2157 = mul i64 %i.bni, 10
  %i.bnr = getelementptr inbounds nuw i8, ptr %.17212, i64 %.idx2157
  store i16 %i.bnq, ptr %i.bnr, align 2, !tbaa !43
  %i.bns = extractelement <16 x i16> %i.bnf, i64 13
  %.idx2158 = mul i64 %i.bni, 12
  %i.bnt = getelementptr inbounds nuw i8, ptr %.17212, i64 %.idx2158
  store i16 %i.bns, ptr %i.bnt, align 2, !tbaa !43
  %i.bnu = extractelement <16 x i16> %i.bnf, i64 15
  %.idx2159 = mul i64 %i.bni, 14
  %i.bnv = getelementptr inbounds nuw i8, ptr %.17212, i64 %.idx2159
  store i16 %i.bnu, ptr %i.bnv, align 2, !tbaa !43
  %i.bnw = getelementptr inbounds nuw i8, ptr %.17212, i64 2
  br label %.thread6743

.thread6743:                                      ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.ag, %.thread, %bb.ah
  %.4 = phi ptr [ %i.bnw, %bb.ah ], [ %.17212, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.bmt, %.thread ], [ %i.bne, %bb.ag ] ; 2 uses
  %i.bnx = add nuw nsw i32 %.018307211, 1         ; 2 uses
  %exitcond8256.not = icmp eq i32 %i.bnx, %i.bv
  br i1 %exitcond8256.not, label %._crit_edge, label %bb.b, !llvm.loop !93

._crit_edge7510:                                  ; preds = %._crit_edge7508.split, %._crit_edge7217
  %i.bny = shl nsw i32 %i.bc, 2
  %i.bnz = add nsw i32 %i.bny, %i.ba              ; 3 uses
  %i.boa = sub nsw i32 %i.s, %i.bnz               ; 2 uses
  %i.bob = sdiv i32 %i.boa, 2                     ; 3 uses
  store i32 %i.bob, ptr %i.m, align 4, !tbaa !9
  %i.boc = icmp sgt i32 %i.boa, 1
  br i1 %i.boc, label %_ZN4ncnn3MatD2Ev.exit2237.lr.ph, label %._crit_edge7783.split

_ZN4ncnn3MatD2Ev.exit2237.lr.ph:                  ; preds = %._crit_edge7510
  %i.bod = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.boe = load i32, ptr %i.bod, align 8, !tbaa !10
  %.fr8040 = freeze i32 %i.boe                    ; 8 uses
  %i.bof = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bog = load i32, ptr %i.bof, align 8, !tbaa !16
  %i.boh = mul i32 %i.bog, %.fr8040               ; 15 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 12 uses
  %i.boj = load i32, ptr %i.boi, align 4, !tbaa !25 ; 6 uses
  %i.bok = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bol = load i32, ptr %i.bok, align 8, !tbaa !26 ; 5 uses
  %i.bom = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bon = load i32, ptr %i.bom, align 4, !tbaa !25 ; 2 uses
  %i.boo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bop = load i32, ptr %i.boo, align 8, !tbaa !26 ; 2 uses
  %i.boq = load ptr, ptr %1, align 8, !tbaa !19, !noalias !94 ; 2 uses
  %i.bor = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !94
  %i.bos = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bot = load i64, ptr %i.bos, align 8, !tbaa !30, !noalias !94
  %factor.op.mul = mul i64 %i.bor, %i.bot         ; 2 uses
  %i.bou = icmp slt i32 %i.bop, 1
  %i.bov = icmp slt i32 %i.bon, 1
  %i.bow = icmp sgt i32 %i.boh, 15
  %i.box = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr8040)
  %i.boy = icmp eq i32 %i.box, 1
  %i.boz = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr8040, i1 true)
  %i.bpa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.bpb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.bpc = icmp eq i32 %.fr8040, 1
  %brmerge = select i1 %i.bou, i1 true, i1 %i.bov
  br i1 %brmerge, label %._crit_edge7783.split, label %_ZN4ncnn3MatD2Ev.exit2237.lr.ph.split.split

_ZN4ncnn3MatD2Ev.exit2237.lr.ph.split.split:      ; preds = %_ZN4ncnn3MatD2Ev.exit2237.lr.ph
  %i.bpd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bpe = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bpf = load ptr, ptr %2, align 8, !tbaa !19, !noalias !97
  %i.bpg = load i64, ptr %i.bpe, align 8, !tbaa !17, !noalias !97
  %i.bph = load i64, ptr %i.bpd, align 8, !tbaa !30, !noalias !97
  %factor.op.mul7789 = mul i64 %i.bpg, %i.bph
  %i.bpi = add i32 %i.boh, -16                    ; 2 uses
  %i.bpj = lshr i32 %i.bpi, 3
  %i.bpk = and i32 %i.bpj, 536870910
  %narrow8754 = add nuw nsw i32 %i.bpk, 2
  %i.bpl = zext nneg i32 %narrow8754 to i64
  %i.bpm = and i32 %i.bpi, -16
  %i.bpn = add nuw i32 %i.bpm, 16
  %i.bpo = sext i32 %i.boh to i64
  %i.bpp = sext i32 %i.bnz to i64
  %wide.trip.count8450 = zext nneg i32 %i.bob to i64
  %invariant.op8791 = add nsw i64 %i.bpo, -15
  br label %_ZN4ncnn3MatD2Ev.exit2237

_ZN4ncnn3MatD2Ev.exit2281:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2281.lr.ph, %._crit_edge7508.split
  %indvars.iv8345 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2281.lr.ph ], [ %indvars.iv.next8346, %._crit_edge7508.split ] ; 2 uses
  %i.bpq = load i32, ptr %i.be, align 8, !tbaa !10
  %.fr8033 = freeze i32 %i.bpq                    ; 8 uses
  %i.bpr = load i32, ptr %i.bf, align 8, !tbaa !16
  %i.bps = mul i32 %i.bpr, %.fr8033               ; 15 uses
  %i.bpt = load i32, ptr %i.bg, align 4, !tbaa !25 ; 6 uses
  %i.bpu = load i32, ptr %i.bh, align 8, !tbaa !26 ; 5 uses
  %i.bpv = load i32, ptr %i.bi, align 4, !tbaa !25 ; 2 uses
  %i.bpw = load i32, ptr %i.bj, align 8, !tbaa !26 ; 2 uses
  %i.bpx = load i32, ptr %i.o, align 8, !tbaa !10 ; 2 uses
  %i.bpy = icmp sgt i32 %i.bpw, 0
  br i1 %i.bpy, label %.preheader6911.lr.ph, label %._crit_edge7508.split

.preheader6911.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2281
  %i.bpz = shl nuw nsw i64 %indvars.iv8345, 2
  %i.bqa = add nsw i64 %i.bpz, %i.bp              ; 2 uses
  %i.bqb = trunc nsw i64 %i.bqa to i32            ; 3 uses
  %i.bqc = icmp sgt i32 %i.bpv, 0
  %i.bqd = sdiv i32 %i.bqb, 16
  %i.bqe = insertelement <2 x i32> poison, i32 %i.bqb, i64 0
  %i.bqf = shufflevector <2 x i32> %i.bqe, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bqg = srem <2 x i32> %i.bqf, <i32 16, i32 8> ; 2 uses
  %i.bqh = bitcast <2 x i32> %i.bqg to <8 x i8>
  %.lhs.trunc = extractelement <8 x i8> %i.bqh, i64 0
  %i.bqi = sdiv i8 %.lhs.trunc, 8
  %.sext = sext i8 %i.bqi to i32
  %i.bqj = extractelement <2 x i32> %i.bqg, i64 1
  %i.bqk = ashr exact i32 %i.bqj, 2
  %i.bql = add nsw i32 %i.bqk, %i.bqd
  %i.bqm = add nsw i32 %i.bql, %.sext
  %i.bqn = sext i32 %i.bqm to i64
  %i.bqo = icmp sgt i32 %i.bps, 15
  %i.bqp = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr8033)
  %i.bqq = icmp eq i32 %i.bqp, 1
  %i.bqr = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr8033, i1 true)
  %i.bqs = icmp eq i32 %.fr8033, 1
  %i.bqt = load i32, ptr %i.g, align 4
  br i1 %i.bqc, label %.preheader6911.preheader, label %._crit_edge7508.split

.preheader6911.preheader:                         ; preds = %.preheader6911.lr.ph
  %i.bqu = load ptr, ptr %1, align 8, !tbaa !19, !noalias !100
  %i.bqv = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !100
  %i.bqw = sdiv i32 %i.bqb, %i.bpx
  %i.bqx = sext i32 %i.bqw to i64
  %i.bqy = mul i64 %i.bqv, %i.bqx
  %i.bqz = load i64, ptr %i.bk, align 8, !tbaa !30, !noalias !100
  %i.bra = mul i64 %i.bqy, %i.bqz
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqu, i64 %i.bra
  %i.brc = add i32 %i.bps, -16                    ; 3 uses
  %i.brd = lshr i32 %i.brc, 3
  %i.bre = and i32 %i.brd, 536870910
  %narrow8751 = add nuw nsw i32 %i.bre, 2
  %i.brf = zext nneg i32 %narrow8751 to i64
  %i.brg = and i32 %i.brc, -16
  %i.brh = add nuw i32 %i.brg, 16
  %i.bri = sext i32 %i.bps to i64
  %i.brj = and i32 %i.brc, -16
  %i.brk = add i32 %i.brj, 16
  %invariant.op8790 = add nsw i64 %i.bri, -15
  br label %.preheader6911

.preheader6911:                                   ; preds = %.preheader6911.preheader, %._crit_edge7504
  %.019557507 = phi ptr [ %.31958, %._crit_edge7504 ], [ %i.brb, %.preheader6911.preheader ]
  %.019597506 = phi i32 [ %.neg6835, %._crit_edge7504 ], [ 0, %.preheader6911.preheader ]
  %i.brl = load i32, ptr %i.b, align 4            ; 6 uses
  %i.brm = icmp sgt i32 %i.brl, 0                 ; 5 uses
  %.neg6835 = add nuw nsw i32 %.019597506, 1      ; 7 uses
  %i.brn = load i32, ptr %i.k, align 4            ; 5 uses
  %i.bro = shl i32 %i.brn, 6
  %i.brp = sext i32 %i.bro to i64                 ; 2 uses
  %i.brq = shl i32 %i.brn, 5
  %i.brr = sext i32 %i.brq to i64                 ; 2 uses
  %i.brs = shl i32 %i.brn, 4
  %i.brt = sext i32 %i.brs to i64                 ; 2 uses
  %i.bru = shl i32 %i.brn, 3
  %i.brv = sext i32 %i.bru to i64                 ; 3 uses
  %i.brw = shl nsw i32 %i.brn, 2
  %i.brx = sext i32 %i.brw to i64
  %i.bry = mul nsw i64 %i.brf, %i.brp
  %wide.trip.count8273 = zext nneg i32 %i.brl to i64
  %wide.trip.count8288 = zext nneg i32 %i.brl to i64
  %wide.trip.count8308 = zext nneg i32 %i.brl to i64
  %wide.trip.count8325 = zext nneg i32 %i.brl to i64
  %wide.trip.count8338 = zext nneg i32 %i.brl to i64
  br label %bb.ai

._crit_edge7508.split:                            ; preds = %._crit_edge7504, %.preheader6911.lr.ph, %_ZN4ncnn3MatD2Ev.exit2281
  %indvars.iv.next8346 = add nuw nsw i64 %indvars.iv8345, 1 ; 2 uses
  %exitcond8349.not = icmp eq i64 %indvars.iv.next8346, %wide.trip.count8348
  br i1 %exitcond8349.not, label %._crit_edge7510, label %_ZN4ncnn3MatD2Ev.exit2281, !llvm.loop !103

._crit_edge7504:                                  ; preds = %bb.bo
  %exitcond8344.not = icmp eq i32 %.neg6835, %i.bpw
  br i1 %exitcond8344.not, label %._crit_edge7508.split, label %.preheader6911, !llvm.loop !104

bb.ai:                                            ; preds = %.preheader6911, %bb.bo
  %.119567503 = phi ptr [ %.019557507, %.preheader6911 ], [ %.31958, %bb.bo ] ; 8 uses
  %.019607502 = phi i32 [ 0, %.preheader6911 ], [ %i.ekq, %bb.bo ] ; 6 uses
  %i.brz = load ptr, ptr %i.l, align 8, !tbaa !20 ; 2 uses
  %.not2131 = icmp eq ptr %i.brz, null
  br i1 %.not2131, label %_ZN4ncnn3MatD2Ev.exit2280, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bsa = getelementptr inbounds [4 x i8], ptr %i.brz, i64 %i.bqa
  %i.bsb = load <4 x float>, ptr %i.bsa, align 1, !tbaa !34
  br label %_ZN4ncnn3MatD2Ev.exit2280

_ZN4ncnn3MatD2Ev.exit2280:                        ; preds = %bb.aj, %bb.ai
  %.06713 = phi nsz <4 x float> [ zeroinitializer, %bb.ai ], [ %i.bsb, %bb.aj ] ; 3 uses
  %i.bsc = load ptr, ptr %2, align 8, !tbaa !19, !noalias !105 ; 2 uses
  %i.bsd = load i64, ptr %i.bl, align 8, !tbaa !17, !noalias !105
  %i.bse = mul i64 %i.bsd, %i.bqn
  %i.bsf = load i64, ptr %i.bm, align 8, !tbaa !30, !noalias !105
  %i.bsg = mul i64 %i.bse, %i.bsf                 ; 2 uses
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bsc, i64 %i.bsg ; 2 uses
  br i1 %i.bqo, label %.preheader6906.lr.ph, label %.preheader6910

.preheader6906.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2280
  %i.bsi = load i32, ptr %i.j, align 4
  %invariant.op7245 = sub i32 %.neg6835, %i.bsi
  %i.bsj = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bsk = load i32, ptr %i.a, align 4
  %.fr8034 = freeze i32 %i.bsk                    ; 2 uses
  %i.bsl = icmp sgt i32 %.fr8034, 0
  %i.bsm = load i32, ptr %i.i, align 4
  %.neg6837 = add nuw nsw i32 %.019607502, 1
  %invariant.op7228 = sub i32 %.neg6837, %i.bsm
  %i.bsn = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.brm, label %.preheader6906.us.preheader, label %.preheader6906.preheader

.preheader6906.preheader:                         ; preds = %.preheader6906.lr.ph
  %scevgep8263 = getelementptr i8, ptr %i.bsc, i64 %i.bry
  %scevgep8264 = getelementptr i8, ptr %scevgep8263, i64 %i.bsg
  br label %.preheader6910

.preheader6906.us.preheader:                      ; preds = %.preheader6906.lr.ph
  %i.bso = load i32, ptr %i.c, align 4
  %i.bsp = load i32, ptr %i.d, align 4
  %i.bsq = zext i32 %.fr8034 to i64               ; 2 uses
  br label %.preheader6906.us

.preheader6906.us:                                ; preds = %.preheader6906.us.preheader, %._crit_edge7240.us
  %indvars.iv8275 = phi i64 [ 0, %.preheader6906.us.preheader ], [ %indvars.iv.next8276, %._crit_edge7240.us ] ; 20 uses
  %.019617264.us = phi ptr [ %i.bsh, %.preheader6906.us.preheader ], [ %i.btn, %._crit_edge7240.us ] ; 2 uses
  %.066547262.us = phi <4 x float> [ zeroinitializer, %.preheader6906.us.preheader ], [ %.us-phi7257.us, %._crit_edge7240.us ] ; 2 uses
  %.066727261.us = phi <4 x float> [ zeroinitializer, %.preheader6906.us.preheader ], [ %.us-phi7256.us, %._crit_edge7240.us ] ; 2 uses
  %.066907260.us = phi <4 x float> [ zeroinitializer, %.preheader6906.us.preheader ], [ %.us-phi7255.us, %._crit_edge7240.us ] ; 2 uses
  %.167147259.us = phi <4 x float> [ %.06713, %.preheader6906.us.preheader ], [ %.us-phi7254.us, %._crit_edge7240.us ] ; 2 uses
  %i.bsr = or disjoint i64 %indvars.iv8275, 15
  %i.bss = lshr exact i64 %indvars.iv8275, 4
  %i.bst = lshr exact i64 %indvars.iv8275, 3      ; 2 uses
  %i.bsu = or disjoint i64 %i.bst, 1
  %i.bsv = lshr exact i64 %indvars.iv8275, 2      ; 4 uses
  %i.bsw = or disjoint i64 %i.bsv, 1
  %i.bsx = or disjoint i64 %i.bsv, 2
  %i.bsy = or disjoint i64 %i.bsv, 3
  %i.bsz = or disjoint i64 %indvars.iv8275, 1
  %i.bta = or disjoint i64 %indvars.iv8275, 2
  %i.btb = or disjoint i64 %indvars.iv8275, 3
  %i.btc = or disjoint i64 %indvars.iv8275, 4
  %i.btd = or disjoint i64 %indvars.iv8275, 5
  %i.bte = or disjoint i64 %indvars.iv8275, 6
  %i.btf = or disjoint i64 %indvars.iv8275, 7
  %i.btg = or disjoint i64 %indvars.iv8275, 8
  %i.bth = or disjoint i64 %indvars.iv8275, 9
  %i.bti = or disjoint i64 %indvars.iv8275, 10
  %i.btj = or disjoint i64 %indvars.iv8275, 11
  %i.btk = or disjoint i64 %indvars.iv8275, 12
  %i.btl = or disjoint i64 %indvars.iv8275, 13
  %i.btm = or disjoint i64 %indvars.iv8275, 14
  br i1 %i.bsl, label %.lr.ph7239.split.us.us, label %._crit_edge7240.us

._crit_edge7240.us:                               ; preds = %..loopexit6901_crit_edge.us.us, %.preheader6906.us
  %.us-phi7254.us = phi <4 x float> [ %.167147259.us, %.preheader6906.us ], [ %.86721.us.us, %..loopexit6901_crit_edge.us.us ] ; 2 uses
  %.us-phi7255.us = phi <4 x float> [ %.066907260.us, %.preheader6906.us ], [ %.76697.us.us, %..loopexit6901_crit_edge.us.us ] ; 2 uses
  %.us-phi7256.us = phi <4 x float> [ %.066727261.us, %.preheader6906.us ], [ %.76679.us.us, %..loopexit6901_crit_edge.us.us ] ; 2 uses
  %.us-phi7257.us = phi <4 x float> [ %.066547262.us, %.preheader6906.us ], [ %.76661.us.us, %..loopexit6901_crit_edge.us.us ] ; 2 uses
  %i.btn = getelementptr inbounds [2 x i8], ptr %.019617264.us, i64 %i.brp ; 2 uses
  %indvars.iv.next8276 = add nuw nsw i64 %indvars.iv8275, 16 ; 2 uses
  %i.bto = icmp slt i64 %indvars.iv.next8276, %invariant.op8790
  br i1 %i.bto, label %.preheader6906.us, label %.preheader6910, !llvm.loop !108

.lr.ph7239.split.us.us:                           ; preds = %.preheader6906.us, %..loopexit6901_crit_edge.us.us
  %indvars.iv8270 = phi i64 [ %indvars.iv.next8271, %..loopexit6901_crit_edge.us.us ], [ 0, %.preheader6906.us ] ; 3 uses
  %.166557237.us.us = phi <4 x float> [ %.76661.us.us, %..loopexit6901_crit_edge.us.us ], [ %.066547262.us, %.preheader6906.us ] ; 4 uses
  %.166737236.us.us = phi <4 x float> [ %.76679.us.us, %..loopexit6901_crit_edge.us.us ], [ %.066727261.us, %.preheader6906.us ] ; 4 uses
  %.166917235.us.us = phi <4 x float> [ %.76697.us.us, %..loopexit6901_crit_edge.us.us ], [ %.066907260.us, %.preheader6906.us ] ; 4 uses
  %.267157234.us.us = phi <4 x float> [ %.86721.us.us, %..loopexit6901_crit_edge.us.us ], [ %.167147259.us, %.preheader6906.us ] ; 4 uses
  %i.btp = trunc i64 %indvars.iv8270 to i32
  %i.btq = mul i32 %i.bsp, %i.btp
  %.reass7246.us.us = add i32 %i.btq, %invariant.op7245 ; 3 uses
  %i.btr = icmp slt i32 %.reass7246.us.us, 0
  br i1 %i.btr, label %..loopexit6901_crit_edge.us.us, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph7239.split.us.us
  %i.bts = srem i32 %.reass7246.us.us, %i.bsj
  %i.btt = sdiv i32 %.reass7246.us.us, %i.bsj     ; 2 uses
  %.not2149.us.us = icmp eq i32 %i.bts, 0
  %.not2150.us.us = icmp slt i32 %i.btt, %i.bpu
  %or.cond8991 = select i1 %.not2149.us.us, i1 %.not2150.us.us, i1 false
  br i1 %or.cond8991, label %.preheader6900.us.us, label %..loopexit6901_crit_edge.us.us

..loopexit6901_crit_edge.us.us:                   ; preds = %bb.am, %.preheader6900.us.us, %bb.ak, %.lr.ph7239.split.us.us
  %.86721.us.us = phi nsz <4 x float> [ %.267157234.us.us, %.lr.ph7239.split.us.us ], [ %.267157234.us.us, %bb.ak ], [ %.267157234.us.us, %.preheader6900.us.us ], [ %.76720.us.us.us, %bb.am ] ; 2 uses
  %.76697.us.us = phi nsz <4 x float> [ %.166917235.us.us, %.lr.ph7239.split.us.us ], [ %.166917235.us.us, %bb.ak ], [ %.166917235.us.us, %.preheader6900.us.us ], [ %.66696.us.us.us, %bb.am ] ; 2 uses
  %.76679.us.us = phi nsz <4 x float> [ %.166737236.us.us, %.lr.ph7239.split.us.us ], [ %.166737236.us.us, %bb.ak ], [ %.166737236.us.us, %.preheader6900.us.us ], [ %.66678.us.us.us, %bb.am ] ; 2 uses
  %.76661.us.us = phi nsz <4 x float> [ %.166557237.us.us, %.lr.ph7239.split.us.us ], [ %.166557237.us.us, %bb.ak ], [ %.166557237.us.us, %.preheader6900.us.us ], [ %.66660.us.us.us, %bb.am ] ; 2 uses
  %indvars.iv.next8271 = add nuw nsw i64 %indvars.iv8270, 1 ; 2 uses
  %exitcond8274.not = icmp eq i64 %indvars.iv.next8271, %wide.trip.count8273
  br i1 %exitcond8274.not, label %._crit_edge7240.us, label %.lr.ph7239.split.us.us, !llvm.loop !109

.preheader6900.us.us:                             ; preds = %bb.ak
  %i.btu = mul nuw nsw i64 %indvars.iv8270, %i.bsq
  %i.btv = sext i32 %i.btt to i64                 ; 5 uses
  br i1 %i.bqq, label %.lr.ph.split.us.us.us7279, label %..loopexit6901_crit_edge.us.us

.lr.ph.split.us.us.us7279:                        ; preds = %.preheader6900.us.us, %bb.am
  %indvars.iv8265 = phi i64 [ %indvars.iv.next8266, %bb.am ], [ 0, %.preheader6900.us.us ] ; 3 uses
  %.266567222.us.us.us = phi <4 x float> [ %.66660.us.us.us, %bb.am ], [ %.166557237.us.us, %.preheader6900.us.us ] ; 7 uses
  %.266747221.us.us.us = phi <4 x float> [ %.66678.us.us.us, %bb.am ], [ %.166737236.us.us, %.preheader6900.us.us ] ; 7 uses
  %.266927220.us.us.us = phi <4 x float> [ %.66696.us.us.us, %bb.am ], [ %.166917235.us.us, %.preheader6900.us.us ] ; 7 uses
  %.367167219.us.us.us = phi <4 x float> [ %.76720.us.us.us, %bb.am ], [ %.267157234.us.us, %.preheader6900.us.us ] ; 7 uses
  %i.btw = trunc i64 %indvars.iv8265 to i32
  %i.btx = mul i32 %i.bso, %i.btw
  %.reass.us.us7253.us = add i32 %i.btx, %invariant.op7228 ; 3 uses
  %i.bty = icmp slt i32 %.reass.us.us7253.us, 0
  br i1 %i.bty, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.split.us.us.us7279
  %i.btz = srem i32 %.reass.us.us7253.us, %i.bsn
  %i.bua = sdiv i32 %.reass.us.us7253.us, %i.bsn  ; 5 uses
  %.not2151.us.us.us = icmp eq i32 %i.btz, 0
  %.not2152.us.us.us = icmp slt i32 %i.bua, %i.bpt
  %or.cond8992 = select i1 %.not2151.us.us.us, i1 %.not2152.us.us.us, i1 false
  br i1 %or.cond8992, label %.split2195.us.us.us, label %bb.am

.split2195.us.us.us:                              ; preds = %bb.al
  %i.bub = add nuw nsw i64 %i.btu, %indvars.iv8265
  %i.buc = shl i64 %i.bub, 6
  %i.bud = and i64 %i.buc, 4294967232
  %i.bue = getelementptr inbounds nuw [2 x i8], ptr %.019617264.us, i64 %i.bud ; 64 uses
  switch i32 %i.bqr, label %bb.am [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2279.us.us.us
    i32 3, label %_ZN4ncnn3MatD2Ev.exit2278.us.us.us
    i32 2, label %_ZN4ncnn3MatD2Ev.exit2276.us.us.us
    i32 0, label %_ZN4ncnn3MatD2Ev.exit2272.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2279.us.us.us:               ; preds = %.split2195.us.us.us
  %i.buf = load i32, ptr %i.bg, align 4, !tbaa !25, !noalias !110
  %i.bug = load ptr, ptr %0, align 8, !tbaa !19, !noalias !110
  %i.buh = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !110
  %i.bui = mul i64 %i.buh, %i.bss
  %i.buj = load i64, ptr %i.bo, align 8, !tbaa !30, !noalias !110 ; 2 uses
  %i.buk = mul i64 %i.bui, %i.buj
end_hunk_1
begin_hunk_2_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.bl:                                            ; preds = %._crit_edge7490
  %i.egg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eek, <4 x float> splat (float f0x42B0C0A5))
  %i.egh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.egg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.egi = fmul fast <4 x float> %i.egh, splat (float f0x3FB8AA3B)
  %i.egj = fadd fast <4 x float> %i.egi, splat (float 5.000000e-01) ; 2 uses
  %i.egk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.egj)
  %i.egl = sitofp fast <4 x i32> %i.egk to <4 x float> ; 2 uses
  %i.egm = fcmp fast olt <4 x float> %i.egj, %i.egl
  %i.egn = select <4 x i1> %i.egm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ego = fsub fast <4 x float> %i.egl, %i.egn   ; 2 uses
  %i.egp = fneg fast <4 x float> %i.ego           ; 2 uses
  %i.egq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.egp, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.egh)
  %i.egr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.egp, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.egq) ; 8 uses
  %i.egs = fmul fast <4 x float> %i.egr, %i.egr
  %i.egt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.egr, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.egu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.egt, <4 x float> nofpclass(nan inf) %i.egr, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.egv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.egu, <4 x float> nofpclass(nan inf) %i.egr, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.egw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.egv, <4 x float> nofpclass(nan inf) %i.egr, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.egx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.egw, <4 x float> nofpclass(nan inf) %i.egr, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.egy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.egx, <4 x float> nofpclass(nan inf) %i.egs, <4 x float> nofpclass(nan inf) %i.egr)
  %i.egz = fadd fast <4 x float> %i.egy, splat (float 1.000000e+00)
  %i.eha = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ego)
  %i.ehb = shl <4 x i32> %i.eha, splat (i32 23)
  %i.ehc = add <4 x i32> %i.ehb, splat (i32 1065353216)
  %i.ehd = bitcast <4 x i32> %i.ehc to <4 x float>
  %i.ehe = fmul fast <4 x float> %i.egz, %i.ehd
  %i.ehf = fadd fast <4 x float> %i.ehe, splat (float 1.000000e+00) ; 2 uses
  %i.ehg = fcmp fast ole <4 x float> %i.ehf, zeroinitializer
  %i.ehh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ehf, <4 x float> splat (float f0x00800000))
  %i.ehi = bitcast <4 x float> %i.ehh to <4 x i32> ; 2 uses
  %i.ehj = lshr <4 x i32> %i.ehi, splat (i32 23)
  %i.ehk = and <4 x i32> %i.ehi, splat (i32 -2139095041)
  %i.ehl = or disjoint <4 x i32> %i.ehk, splat (i32 1056964608)
  %i.ehm = bitcast <4 x i32> %i.ehl to <4 x float> ; 3 uses
  %i.ehn = add nsw <4 x i32> %i.ehj, splat (i32 -127)
  %i.eho = sitofp fast <4 x i32> %i.ehn to <4 x float> ; 2 uses
  %i.ehp = fadd fast <4 x float> %i.eho, splat (float 1.000000e+00)
  %i.ehq = fcmp fast olt <4 x float> %i.ehm, splat (float f0x3F3504F3) ; 2 uses
  %i.ehr = select <4 x i1> %i.ehq, <4 x float> %i.ehm, <4 x float> zeroinitializer
  %i.ehs = fadd fast <4 x float> %i.ehm, splat (float -1.000000e+00)
  %i.eht = select fast <4 x i1> %i.ehq, <4 x float> %i.eho, <4 x float> %i.ehp ; 2 uses
  %i.ehu = fadd fast <4 x float> %i.ehs, %i.ehr   ; 12 uses
  %i.ehv = fmul fast <4 x float> %i.ehu, %i.ehu   ; 2 uses
  %i.ehw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ehu, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> nofpclass(nan inf) splat (float f0xBDEBD1B8))
  %i.ehx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ehw, <4 x float> nofpclass(nan inf) %i.ehu, <4 x float> nofpclass(nan inf) splat (float f0x3DEF251A))
  %i.ehy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ehx, <4 x float> nofpclass(nan inf) %i.ehu, <4 x float> nofpclass(nan inf) splat (float f0xBDFE5D4F))
  %i.ehz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ehy, <4 x float> nofpclass(nan inf) %i.ehu, <4 x float> nofpclass(nan inf) splat (float f0x3E11E9BF))
  %i.eia = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ehz, <4 x float> nofpclass(nan inf) %i.ehu, <4 x float> nofpclass(nan inf) splat (float f0xBE2AAE50))
  %i.eib = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eia, <4 x float> nofpclass(nan inf) %i.ehu, <4 x float> nofpclass(nan inf) splat (float f0x3E4CCEAC))
  %i.eic = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eib, <4 x float> nofpclass(nan inf) %i.ehu, <4 x float> nofpclass(nan inf) splat (float f0xBE7FFFFC))
  %i.eid = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eic, <4 x float> nofpclass(nan inf) %i.ehu, <4 x float> nofpclass(nan inf) splat (float f0x3EAAAAAA))
  %i.eie = fmul fast <4 x float> %i.ehv, %i.ehu
  %i.eif = fmul fast <4 x float> %i.eie, %i.eid
  %i.eig = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eht, <4 x float> nofpclass(nan inf) splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.eif)
  %i.eih = fneg fast <4 x float> %i.ehv
  %i.eii = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eih, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.eig)
  %i.eij = fadd fast <4 x float> %i.eii, %i.ehu
  %i.eik = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eht, <4 x float> nofpclass(nan inf) splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.eij)
  %.neg = fmul fast <4 x float> %i.eik, splat (float -2.000000e+00)
  %i.eil = select fast <4 x i1> %i.ehg, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.eim = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eil, <4 x float> splat (float f0x42B0C0A5))
  %i.ein = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eim, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eio = fmul fast <4 x float> %i.ein, splat (float f0x3FB8AA3B)
  %i.eip = fadd fast <4 x float> %i.eio, splat (float 5.000000e-01) ; 2 uses
  %i.eiq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eip)
  %i.eir = sitofp fast <4 x i32> %i.eiq to <4 x float> ; 2 uses
  %i.eis = fcmp fast olt <4 x float> %i.eip, %i.eir
  %i.eit = select <4 x i1> %i.eis, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eiu = fsub fast <4 x float> %i.eir, %i.eit   ; 2 uses
  %i.eiv = fneg fast <4 x float> %i.eiu           ; 2 uses
  %i.eiw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eiv, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ein)
  %i.eix = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eiv, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.eiw) ; 8 uses
  %i.eiy = fmul fast <4 x float> %i.eix, %i.eix
  %i.eiz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eix, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.eja = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eiz, <4 x float> nofpclass(nan inf) %i.eix, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.ejb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eja, <4 x float> nofpclass(nan inf) %i.eix, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.ejc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ejb, <4 x float> nofpclass(nan inf) %i.eix, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.ejd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ejc, <4 x float> nofpclass(nan inf) %i.eix, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.eje = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ejd, <4 x float> nofpclass(nan inf) %i.eiy, <4 x float> nofpclass(nan inf) %i.eix)
  %i.ejf = fadd fast <4 x float> %i.eje, splat (float 1.000000e+00)
  %i.ejg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eiu)
  %i.ejh = shl <4 x i32> %i.ejg, splat (i32 23)
  %i.eji = add <4 x i32> %i.ejh, splat (i32 1065353216)
  %i.ejj = bitcast <4 x i32> %i.eji to <4 x float>
  %i.ejk = fmul fast <4 x float> %i.ejf, %i.ejj
  %i.ejl = fadd fast <4 x float> %i.ejk, splat (float 1.000000e+00)
  %i.ejm = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ejl
  %i.ejn = fadd fast <4 x float> %i.ejm, splat (float -1.000000e+00)
  %i.ejo = fmul fast <4 x float> %i.ejn, %i.eek
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.bm:                                            ; preds = %._crit_edge7490
  %i.ejp = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.ejq = load float, ptr %i.ejp, align 4, !tbaa !91
  %i.ejr = insertelement <4 x float> poison, float %i.ejq, i64 0
  %i.ejs = shufflevector <4 x float> %i.ejr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ejt = getelementptr inbounds nuw i8, ptr %i.ejp, i64 4
  %i.eju = load float, ptr %i.ejt, align 4, !tbaa !91
  %i.ejv = insertelement <4 x float> poison, float %i.eju, i64 0
  %i.ejw = shufflevector <4 x float> %i.ejv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ejx = fmul fast <4 x float> %i.ejs, %i.eek
  %i.ejy = fadd fast <4 x float> %i.ejx, %i.ejw
  %i.ejz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ejy, <4 x float> zeroinitializer)
  %i.eka = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ejz, <4 x float> splat (float 1.000000e+00))
  %i.ekb = fmul fast <4 x float> %i.eka, %i.eek
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %._crit_edge7490, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm
  %.0.i2461 = phi nsz <4 x float> [ %i.ekb, %bb.bm ], [ %i.eel, %bb.bh ], [ %i.eet, %bb.bi ], [ %i.efd, %bb.bj ], [ %i.egf, %bb.bk ], [ %i.ejo, %bb.bl ], [ %i.eek, %._crit_edge7490 ] ; 2 uses
  switch i32 %i.bpx, label %bb.bo [
    i32 4, label %.thread6745
    i32 1, label %bb.bn
  ]

.thread6745:                                      ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.ekc = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %.0.i2461)
  %i.ekd = bitcast <8 x bfloat> %i.ekc to <2 x i64>
  %i.eke = extractelement <2 x i64> %i.ekd, i64 0
  store i64 %i.eke, ptr %.119567503, align 1, !tbaa !34
  %i.ekf = getelementptr inbounds nuw i8, ptr %.119567503, i64 8
  br label %bb.bo

bb.bn:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.ekg = bitcast <4 x float> %.0.i2461 to <8 x i16> ; 4 uses
  %i.ekh = extractelement <8 x i16> %i.ekg, i64 1
  store i16 %i.ekh, ptr %.119567503, align 2, !tbaa !43
  %i.eki = extractelement <8 x i16> %i.ekg, i64 3
  %i.ekj = load i64, ptr %i.h, align 8, !tbaa !18 ; 3 uses
  %i.ekk = getelementptr inbounds nuw [2 x i8], ptr %.119567503, i64 %i.ekj
  store i16 %i.eki, ptr %i.ekk, align 2, !tbaa !43
  %i.ekl = extractelement <8 x i16> %i.ekg, i64 5
  %.idx = shl i64 %i.ekj, 2
  %i.ekm = getelementptr inbounds nuw i8, ptr %.119567503, i64 %.idx
  store i16 %i.ekl, ptr %i.ekm, align 2, !tbaa !43
  %i.ekn = extractelement <8 x i16> %i.ekg, i64 7
  %.idx2132 = mul i64 %i.ekj, 6
  %i.eko = getelementptr inbounds nuw i8, ptr %.119567503, i64 %.idx2132
  store i16 %i.ekn, ptr %i.eko, align 2, !tbaa !43
  %i.ekp = getelementptr inbounds nuw i8, ptr %.119567503, i64 2
  br label %bb.bo

bb.bo:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread6745, %bb.bn
  %.31958 = phi ptr [ %i.ekp, %bb.bn ], [ %.119567503, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.ekf, %.thread6745 ] ; 2 uses
  %i.ekq = add nuw nsw i32 %.019607502, 1         ; 2 uses
  %exitcond8343.not = icmp eq i32 %i.ekq, %i.bpv
  br i1 %exitcond8343.not, label %._crit_edge7504, label %bb.ai, !llvm.loop !159

._crit_edge7783.split:                            ; preds = %._crit_edge7781, %_ZN4ncnn3MatD2Ev.exit2237.lr.ph, %._crit_edge7510
  %i.ekr = shl nsw i32 %i.bob, 1
  %i.eks = add nsw i32 %i.ekr, %i.bnz             ; 2 uses
  %i.ekt = icmp slt i32 %i.eks, %i.s
  br i1 %i.ekt, label %_ZN4ncnn3MatD2Ev.exit2218.lr.ph, label %._crit_edge8015.split

_ZN4ncnn3MatD2Ev.exit2218.lr.ph:                  ; preds = %._crit_edge7783.split
  %i.eku = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ekv = load i32, ptr %i.eku, align 8, !tbaa !10
  %.fr8047 = freeze i32 %i.ekv                    ; 8 uses
  %i.ekw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ekx = load i32, ptr %i.ekw, align 8, !tbaa !16
  %i.eky = mul i32 %i.ekx, %.fr8047               ; 15 uses
  %i.ekz = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 12 uses
  %i.ela = load i32, ptr %i.ekz, align 4, !tbaa !25 ; 6 uses
  %i.elb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.elc = load i32, ptr %i.elb, align 8, !tbaa !26 ; 5 uses
  %i.eld = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ele = load i32, ptr %i.eld, align 4, !tbaa !25 ; 2 uses
  %i.elf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.elg = load i32, ptr %i.elf, align 8, !tbaa !26 ; 2 uses
  %i.elh = load ptr, ptr %1, align 8, !tbaa !19, !noalias !160
  %i.eli = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !160
  %i.elj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.elk = load i64, ptr %i.elj, align 8, !tbaa !30, !noalias !160
  %factor.op.mul8016 = mul i64 %i.eli, %i.elk
  %i.ell = icmp slt i32 %i.elg, 1
  %i.elm = icmp slt i32 %i.ele, 1
  %i.eln = icmp sgt i32 %i.eky, 15
  %i.elo = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr8047)
  %i.elp = icmp eq i32 %i.elo, 1
  %i.elq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr8047, i1 true)
  %i.elr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.els = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.elt = icmp eq i32 %.fr8047, 1
  %brmerge8025 = select i1 %i.ell, i1 true, i1 %i.elm
  br i1 %brmerge8025, label %._crit_edge8015.split, label %_ZN4ncnn3MatD2Ev.exit2218.lr.ph.split.split

_ZN4ncnn3MatD2Ev.exit2218.lr.ph.split.split:      ; preds = %_ZN4ncnn3MatD2Ev.exit2218.lr.ph
  %i.elu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.elv = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.elw = load ptr, ptr %2, align 8, !tbaa !19, !noalias !163
  %i.elx = load i64, ptr %i.elv, align 8, !tbaa !17, !noalias !163
  %i.ely = load i64, ptr %i.elu, align 8, !tbaa !30, !noalias !163
  %factor.op.mul8019 = mul i64 %i.elx, %i.ely
  %i.elz = add i32 %i.eky, -16                    ; 2 uses
  %i.ema = lshr i32 %i.elz, 3
  %i.emb = and i32 %i.ema, 536870910
  %narrow8759 = add nuw nsw i32 %i.emb, 2
  %i.emc = zext nneg i32 %narrow8759 to i64
  %i.emd = and i32 %i.elz, -16
  %i.eme = add nuw i32 %i.emd, 16
  %i.emf = sext i32 %i.eky to i64
  %i.emg = sext i32 %i.eks to i64
  %i.emh = sext i32 %i.s to i64
  %invariant.op8792 = add nsw i64 %i.emf, -15
  br label %_ZN4ncnn3MatD2Ev.exit2218

_ZN4ncnn3MatD2Ev.exit2237:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2237.lr.ph.split.split, %._crit_edge7781
  %indvars.iv8447 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2237.lr.ph.split.split ], [ %indvars.iv.next8448, %._crit_edge7781 ] ; 2 uses
  %i.emi = shl nuw nsw i64 %indvars.iv8447, 1
  %i.emj = add nsw i64 %i.emi, %i.bpp             ; 4 uses
  %.reass = mul i64 %factor.op.mul, %i.emj
  %i.emk = getelementptr inbounds nuw i8, ptr %i.boq, i64 %.reass
  %i.eml = or disjoint i64 %i.emj, 1
  %.reass7786 = mul i64 %factor.op.mul, %i.eml
  %i.emm = getelementptr inbounds nuw i8, ptr %i.boq, i64 %.reass7786
  %i.emn = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not2110 = icmp eq ptr %i.emn, null
  %i.emo = getelementptr inbounds [4 x i8], ptr %i.emn, i64 %i.emj
  %i.emp = trunc nsw i64 %i.emj to i32            ; 3 uses
  %i.emq = sdiv i32 %i.emp, 16
  %i.emr = srem i32 %i.emp, 16
  %.lhs.trunc6767 = trunc nsw i32 %i.emr to i8
  %i.ems = sdiv i8 %.lhs.trunc6767, 8
  %.sext6768 = sext i8 %i.ems to i32
  %i.emt = insertelement <2 x i32> poison, i32 %i.emp, i64 0
  %i.emu = shufflevector <2 x i32> %i.emt, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.emv = srem <2 x i32> %i.emu, <i32 8, i32 4>  ; 2 uses
  %i.emw = bitcast <2 x i32> %i.emv to <8 x i8>
  %.lhs.trunc6769 = extractelement <8 x i8> %i.emw, i64 0
  %i.emx = sdiv i8 %.lhs.trunc6769, 4
  %.sext6770 = sext i8 %i.emx to i32
  %i.emy = extractelement <2 x i32> %i.emv, i64 1
  %i.emz = ashr exact i32 %i.emy, 1
  %i.ena = add nsw i32 %i.emz, %i.emq
  %i.enb = add nsw i32 %i.ena, %.sext6768
  %i.enc = add nsw i32 %i.enb, %.sext6770
  %i.end = sext i32 %i.enc to i64
  %i.ene = load i32, ptr %i.g, align 4
  %.reass7790 = mul i64 %factor.op.mul7789, %i.end
  %i.enf = getelementptr i8, ptr %i.bpf, i64 %.reass7790 ; 3 uses
  br label %.preheader6891

.preheader6891:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2237, %._crit_edge7775
  %.019327780 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2237 ], [ %.neg6815, %._crit_edge7775 ]
  %.019337779 = phi ptr [ %i.emm, %_ZN4ncnn3MatD2Ev.exit2237 ], [ %i.fpb, %._crit_edge7775 ]
  %.019357778 = phi ptr [ %i.emk, %_ZN4ncnn3MatD2Ev.exit2237 ], [ %i.fpa, %._crit_edge7775 ]
  %i.eng = load i32, ptr %i.b, align 4            ; 6 uses
  %i.enh = icmp sgt i32 %i.eng, 0                 ; 5 uses
  %.neg6815 = add nuw nsw i32 %.019327780, 1      ; 7 uses
  %i.eni = load i32, ptr %i.k, align 4            ; 5 uses
  %i.enj = shl i32 %i.eni, 5
  %i.enk = sext i32 %i.enj to i64                 ; 2 uses
  %i.enl = shl i32 %i.eni, 4
  %i.enm = sext i32 %i.enl to i64                 ; 2 uses
  %i.enn = shl i32 %i.eni, 3
  %i.eno = sext i32 %i.enn to i64                 ; 3 uses
  %i.enp = shl i32 %i.eni, 2
  %i.enq = sext i32 %i.enp to i64                 ; 2 uses
  %i.enr = shl nsw i32 %i.eni, 1
  %i.ens = sext i32 %i.enr to i64
  %i.ent = mul nsw i64 %i.bpl, %i.enk
  %scevgep8351 = getelementptr i8, ptr %i.enf, i64 %i.ent
  %wide.trip.count8364 = zext nneg i32 %i.eng to i64
  %wide.trip.count8383 = zext nneg i32 %i.eng to i64
  %wide.trip.count8409 = zext nneg i32 %i.eng to i64
  %wide.trip.count8427 = zext nneg i32 %i.eng to i64
  %wide.trip.count8440 = zext nneg i32 %i.eng to i64
  br label %bb.bp

._crit_edge7781:                                  ; preds = %._crit_edge7775
  %indvars.iv.next8448 = add nuw nsw i64 %indvars.iv8447, 1 ; 2 uses
  %exitcond8451.not = icmp eq i64 %indvars.iv.next8448, %wide.trip.count8450
  br i1 %exitcond8451.not, label %._crit_edge7783.split, label %_ZN4ncnn3MatD2Ev.exit2237, !llvm.loop !166

._crit_edge7775:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462
  %exitcond8446.not = icmp eq i32 %.neg6815, %i.bop
  br i1 %exitcond8446.not, label %._crit_edge7781, label %.preheader6891, !llvm.loop !167

bb.bp:                                            ; preds = %.preheader6891, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462
  %.019317774 = phi i32 [ 0, %.preheader6891 ], [ %i.fpc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462 ] ; 6 uses
  %.119347773 = phi ptr [ %.019337779, %.preheader6891 ], [ %i.fpb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462 ] ; 2 uses
  %.119367772 = phi ptr [ %.019357778, %.preheader6891 ], [ %i.fpa, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462 ] ; 2 uses
  br i1 %.not2110, label %_ZN4ncnn3MatD2Ev.exit2235, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.enu = load <2 x float>, ptr %i.emo, align 4, !tbaa !91
  br label %_ZN4ncnn3MatD2Ev.exit2235

_ZN4ncnn3MatD2Ev.exit2235:                        ; preds = %bb.bq, %bb.bp
  %i.env = phi <2 x float> [ %i.enu, %bb.bq ], [ zeroinitializer, %bb.bp ]
  br i1 %i.bow, label %.preheader6889.lr.ph, label %._crit_edge7550

.preheader6889.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2235
  %i.enw = load i32, ptr %i.j, align 4
  %invariant.op7532 = sub i32 %.neg6815, %i.enw
  %i.enx = load i32, ptr %i.f, align 4            ; 2 uses
  %i.eny = load i32, ptr %i.a, align 4
  %.fr8041 = freeze i32 %i.eny                    ; 2 uses
  %i.enz = icmp sgt i32 %.fr8041, 0
  %i.eoa = load i32, ptr %i.i, align 4
  %.neg6817 = add nuw nsw i32 %.019317774, 1
  %invariant.op7520 = sub i32 %.neg6817, %i.eoa
  %i.eob = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.enh, label %.preheader6889.us.preheader, label %._crit_edge7550

.preheader6889.us.preheader:                      ; preds = %.preheader6889.lr.ph
  %i.eoc = load i32, ptr %i.c, align 4
  %i.eod = load i32, ptr %i.d, align 4
  %i.eoe = zext i32 %.fr8041 to i64               ; 2 uses
  br label %.preheader6889.us

.preheader6889.us:                                ; preds = %.preheader6889.us.preheader, %._crit_edge7529.us
  %indvars.iv8366 = phi i64 [ 0, %.preheader6889.us.preheader ], [ %indvars.iv.next8367, %._crit_edge7529.us ] ; 20 uses
  %.018947546.us = phi ptr [ %i.enf, %.preheader6889.us.preheader ], [ %i.epb, %._crit_edge7529.us ] ; 2 uses
  %.066387545.us = phi <16 x float> [ zeroinitializer, %.preheader6889.us.preheader ], [ %.us-phi7542.us, %._crit_edge7529.us ] ; 2 uses
  %.066467544.us = phi <16 x float> [ zeroinitializer, %.preheader6889.us.preheader ], [ %.us-phi7541.us, %._crit_edge7529.us ] ; 2 uses
  %i.eof = lshr exact i64 %indvars.iv8366, 4
  %i.eog = lshr exact i64 %indvars.iv8366, 3      ; 2 uses
  %i.eoh = or disjoint i64 %i.eog, 1
  %i.eoi = lshr exact i64 %indvars.iv8366, 2      ; 4 uses
  %i.eoj = or disjoint i64 %i.eoi, 1
  %i.eok = or disjoint i64 %i.eoi, 2
  %i.eol = or disjoint i64 %i.eoi, 3
  br i1 %i.enz, label %.lr.ph7528.split.us.us.preheader, label %._crit_edge7529.us

.lr.ph7528.split.us.us.preheader:                 ; preds = %.preheader6889.us
  %i.eom = or disjoint i64 %indvars.iv8366, 1
  %i.eon = or disjoint i64 %indvars.iv8366, 2
  %i.eoo = or disjoint i64 %indvars.iv8366, 3
  %i.eop = or disjoint i64 %indvars.iv8366, 4
  %i.eoq = or disjoint i64 %indvars.iv8366, 5
  %i.eor = or disjoint i64 %indvars.iv8366, 6
  %i.eos = or disjoint i64 %indvars.iv8366, 7
  %i.eot = or disjoint i64 %indvars.iv8366, 8
  %i.eou = or disjoint i64 %indvars.iv8366, 9
  %i.eov = or disjoint i64 %indvars.iv8366, 10
  %i.eow = or disjoint i64 %indvars.iv8366, 11
  %i.eox = or disjoint i64 %indvars.iv8366, 12
  %i.eoy = or disjoint i64 %indvars.iv8366, 13
  %i.eoz = or disjoint i64 %indvars.iv8366, 14
  %i.epa = or disjoint i64 %indvars.iv8366, 15
  br label %.lr.ph7528.split.us.us

._crit_edge7529.us:                               ; preds = %..loopexit6884_crit_edge.us.us, %.preheader6889.us
  %.us-phi7541.us = phi <16 x float> [ %.066467544.us, %.preheader6889.us ], [ %.76653.us.us, %..loopexit6884_crit_edge.us.us ] ; 2 uses
  %.us-phi7542.us = phi <16 x float> [ %.066387545.us, %.preheader6889.us ], [ %.76645.us.us, %..loopexit6884_crit_edge.us.us ] ; 2 uses
  %i.epb = getelementptr inbounds [2 x i8], ptr %.018947546.us, i64 %i.enk ; 2 uses
  %indvars.iv.next8367 = add nuw nsw i64 %indvars.iv8366, 16 ; 3 uses
  %i.epc = icmp slt i64 %indvars.iv.next8367, %invariant.op8791
  br i1 %i.epc, label %.preheader6889.us, label %._crit_edge7550.loopexit, !llvm.loop !168

.lr.ph7528.split.us.us:                           ; preds = %.lr.ph7528.split.us.us.preheader, %..loopexit6884_crit_edge.us.us
  %indvars.iv8361 = phi i64 [ 0, %.lr.ph7528.split.us.us.preheader ], [ %indvars.iv.next8362, %..loopexit6884_crit_edge.us.us ] ; 3 uses
  %.166397526.us.us = phi <16 x float> [ %.066387545.us, %.lr.ph7528.split.us.us.preheader ], [ %.76645.us.us, %..loopexit6884_crit_edge.us.us ] ; 4 uses
  %.166477525.us.us = phi <16 x float> [ %.066467544.us, %.lr.ph7528.split.us.us.preheader ], [ %.76653.us.us, %..loopexit6884_crit_edge.us.us ] ; 4 uses
  %i.epd = trunc i64 %indvars.iv8361 to i32
  %i.epe = mul i32 %i.eod, %i.epd
  %.reass.us7533.us = add i32 %i.epe, %invariant.op7532 ; 3 uses
  %i.epf = icmp slt i32 %.reass.us7533.us, 0
  br i1 %i.epf, label %..loopexit6884_crit_edge.us.us, label %bb.br

bb.br:                                            ; preds = %.lr.ph7528.split.us.us
  %i.epg = srem i32 %.reass.us7533.us, %i.enx
  %i.eph = sdiv i32 %.reass.us7533.us, %i.enx     ; 2 uses
  %.not2127.us.us = icmp eq i32 %i.epg, 0
  %.not2128.us.us = icmp slt i32 %i.eph, %i.bol
  %or.cond9002 = select i1 %.not2127.us.us, i1 %.not2128.us.us, i1 false
  br i1 %or.cond9002, label %.preheader6883.us.us, label %..loopexit6884_crit_edge.us.us

..loopexit6884_crit_edge.us.us:                   ; preds = %bb.bt, %.preheader6883.us.us, %bb.br, %.lr.ph7528.split.us.us
  %.76653.us.us = phi nsz <16 x float> [ %.166477525.us.us, %.lr.ph7528.split.us.us ], [ %.166477525.us.us, %bb.br ], [ %.166477525.us.us, %.preheader6883.us.us ], [ %.66652.us.us.us, %bb.bt ] ; 2 uses
  %.76645.us.us = phi nsz <16 x float> [ %.166397526.us.us, %.lr.ph7528.split.us.us ], [ %.166397526.us.us, %bb.br ], [ %.166397526.us.us, %.preheader6883.us.us ], [ %.66644.us.us.us, %bb.bt ] ; 2 uses
  %indvars.iv.next8362 = add nuw nsw i64 %indvars.iv8361, 1 ; 2 uses
  %exitcond8365.not = icmp eq i64 %indvars.iv.next8362, %wide.trip.count8364
  br i1 %exitcond8365.not, label %._crit_edge7529.us, label %.lr.ph7528.split.us.us, !llvm.loop !169

.preheader6883.us.us:                             ; preds = %bb.br
  %i.epi = mul nuw nsw i64 %indvars.iv8361, %i.eoe
  %i.epj = sext i32 %i.eph to i64                 ; 4 uses
  br i1 %i.boy, label %.lr.ph.split.us.us.us7561, label %..loopexit6884_crit_edge.us.us

.lr.ph.split.us.us.us7561:                        ; preds = %.preheader6883.us.us, %bb.bt
  %indvars.iv8356 = phi i64 [ %indvars.iv.next8357, %bb.bt ], [ 0, %.preheader6883.us.us ] ; 3 uses
  %.266407516.us.us.us = phi <16 x float> [ %.66644.us.us.us, %bb.bt ], [ %.166397526.us.us, %.preheader6883.us.us ] ; 7 uses
  %.266487515.us.us.us = phi <16 x float> [ %.66652.us.us.us, %bb.bt ], [ %.166477525.us.us, %.preheader6883.us.us ] ; 7 uses
  %i.epk = trunc i64 %indvars.iv8356 to i32
  %i.epl = mul i32 %i.eoc, %i.epk
  %.reass7521.us.us.us = add i32 %i.epl, %invariant.op7520 ; 3 uses
  %i.epm = icmp slt i32 %.reass7521.us.us.us, 0
  br i1 %i.epm, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.split.us.us.us7561
  %i.epn = srem i32 %.reass7521.us.us.us, %i.eob
  %i.epo = sdiv i32 %.reass7521.us.us.us, %i.eob  ; 5 uses
  %.not2129.us.us.us = icmp eq i32 %i.epn, 0
  %.not2130.us.us.us = icmp slt i32 %i.epo, %i.boj
  %or.cond9003 = select i1 %.not2129.us.us.us, i1 %.not2130.us.us.us, i1 false
  br i1 %or.cond9003, label %.split2196.us.us.us, label %bb.bt

.split2196.us.us.us:                              ; preds = %bb.bs
end_hunk_2
begin_hunk_3_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %exitcond8543.not = icmp eq i64 %indvars.iv.next8540, %wide.trip.count8542
  br i1 %exitcond8543.not, label %._crit_edge7986.split.us.us.us, label %bb.dl, !llvm.loop !265

.preheader.us.us.us:                              ; preds = %bb.dm
  %i.gmt = mul nuw nsw i64 %indvars.iv8539, %i.glj
  %i.gmu = sext i32 %i.glp to i64
  %i.gmv = getelementptr inbounds nuw [2 x i8], ptr %.418527993.us.us, i64 %i.gmt
  br label %bb.dn

._crit_edge7986.split.us.us.us:                   ; preds = %..loopexit6858_crit_edge.us.us.us
  %i.gmw = getelementptr inbounds [2 x i8], ptr %.418527993.us.us, i64 %i.fqk
  %indvars.iv.next8545 = add nuw nsw i64 %indvars.iv8544, 1 ; 2 uses
  %i.gmx = trunc nuw i64 %indvars.iv.next8545 to i32
  %i.gmy = icmp sgt i32 %i.eky, %i.gmx
  br i1 %i.gmy, label %.preheader6867.us.us, label %._crit_edge7996, !llvm.loop !266

._crit_edge7996:                                  ; preds = %._crit_edge7986.split.us.us.us, %.preheader6867.lr.ph, %.preheader6872
  %.91862.lcssa = phi float [ %.11854.lcssa, %.preheader6872 ], [ %.11854.lcssa, %.preheader6867.lr.ph ], [ %.15.us.us.us, %._crit_edge7986.split.us.us.us ] ; 13 uses
  switch i32 %i.fpx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.dq
    i32 2, label %bb.dr
    i32 3, label %bb.ds
    i32 4, label %bb.du
    i32 5, label %bb.dv
    i32 6, label %bb.dw
  ]

bb.dq:                                            ; preds = %._crit_edge7996
  %i.gmz = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.91862.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dr:                                            ; preds = %._crit_edge7996
  %i.gna = load ptr, ptr %11, align 8, !tbaa !19
  %i.gnb = load float, ptr %i.gna, align 4, !tbaa !91
  %i.gnc = fcmp fast ogt float %.91862.lcssa, 0.000000e+00
  %i.gnd = select fast i1 %i.gnc, float 1.000000e+00, float %i.gnb
  %i.gne = fmul fast float %i.gnd, %.91862.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ds:                                            ; preds = %._crit_edge7996
  %i.gnf = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.gng = load float, ptr %i.gnf, align 4, !tbaa !91
  %i.gnh = getelementptr inbounds nuw i8, ptr %i.gnf, i64 4
  %i.gni = load float, ptr %i.gnh, align 4, !tbaa !91 ; 2 uses
  %.06533 = call nnan ninf nsz float @llvm.maxnum.f32(float %.91862.lcssa, float %i.gng) ; 2 uses
  %i.gnj = fcmp fast ogt float %.06533, %i.gni
  br i1 %i.gnj, label %bb.dt, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dt:                                            ; preds = %bb.ds
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.du:                                            ; preds = %._crit_edge7996
  %.sroa.speculated6275 = call nnan ninf nsz float @llvm.minnum.f32(float %.91862.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated6275, float f0xC2B0C0A5)
  %i.gnk = fneg fast float %.sroa.speculated
  %i.gnl = call fast float @llvm.exp.f32(float %i.gnk)
  %i.gnm = fadd fast float %i.gnl, 1.000000e+00
  %i.gnn = fdiv fast float 1.000000e+00, %i.gnm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dv:                                            ; preds = %._crit_edge7996
  %i.gno = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.91862.lcssa)
  %i.gnp = fadd fast float %i.gno, 1.000000e+00
  %i.gnq = call fast float @llvm.log.f32(float %i.gnp)
  %i.gnr = call fast float @llvm.tanh.f32(float %i.gnq)
  %i.gns = fmul fast float %i.gnr, %.91862.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dw:                                            ; preds = %._crit_edge7996
  %i.gnt = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.gnu = load float, ptr %i.gnt, align 4, !tbaa !91 ; 3 uses
  %i.gnv = getelementptr inbounds nuw i8, ptr %i.gnt, i64 4
  %i.gnw = load float, ptr %i.gnv, align 4, !tbaa !91 ; 2 uses
  %i.gnx = fneg fast float %i.gnw
  %i.gny = fdiv fast float %i.gnx, %i.gnu         ; 2 uses
  %i.gnz = fcmp fast olt float %.91862.lcssa, %i.gny
  br i1 %i.gnz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.goa = fdiv fast float 1.000000e+00, %i.gnu
  %i.gob = fadd fast float %i.gny, %i.goa
  %i.goc = fcmp fast ogt float %.91862.lcssa, %i.gob
  br i1 %i.goc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.god = fmul fast float %i.gnu, %.91862.lcssa
  %i.goe = fadd fast float %i.god, %i.gnw
  %i.gof = fmul fast float %i.goe, %.91862.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.dw, %._crit_edge7996, %bb.dq, %bb.dr, %bb.ds, %bb.dt, %bb.du, %bb.dv, %bb.dx, %bb.dy
  %.16534 = phi nsz float [ %.91862.lcssa, %._crit_edge7996 ], [ %i.gmz, %bb.dq ], [ %i.gne, %bb.dr ], [ %i.gni, %bb.dt ], [ %.06533, %bb.ds ], [ %i.gnn, %bb.du ], [ %i.gns, %bb.dv ], [ %i.gof, %bb.dy ], [ %.91862.lcssa, %bb.dx ], [ 0.000000e+00, %bb.dw ]
  %i.gog = bitcast float %.16534 to i32
  %i.goh = lshr i32 %i.gog, 16
  %i.goi = trunc nuw i32 %i.goh to i16
  store i16 %i.goi, ptr %.118718007, align 2, !tbaa !43
  %i.goj = getelementptr inbounds nuw i8, ptr %.118718007, i64 2 ; 2 uses
  %i.gok = add nuw nsw i32 %.018688008, 1         ; 2 uses
  %exitcond8547.not = icmp eq i32 %i.gok, %i.ele
  br i1 %exitcond8547.not, label %._crit_edge8009, label %bb.cs, !llvm.loop !267
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %18) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not2530 = icmp sgt i32 %i.k, %i.j
  br i1 %.not2530, label %._crit_edge2532, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !26
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc.preheader, label %._crit_edge2532

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.aa = sext i32 %i.k to i64
  %i.ab = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge2529.split
  %indvars.iv = phi i64 [ %i.aa, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge2529.split ] ; 3 uses
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !10
  %.fr = freeze i32 %i.ac                         ; 5 uses
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !16
  %i.ae = mul i32 %i.ad, %.fr                     ; 14 uses
  %i.af = load i32, ptr %i.n, align 4, !tbaa !25  ; 6 uses
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !26  ; 5 uses
  %i.ah = load i32, ptr %i.p, align 4, !tbaa !25  ; 2 uses
  %i.ai = load i32, ptr %i.q, align 8, !tbaa !26  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.preheader2304.lr.ph, label %._crit_edge2529.split

.preheader2304.lr.ph:                             ; preds = %.noexc
  %i.ak = shl nsw i64 %indvars.iv, 4              ; 2 uses
  %i.al = load i32, ptr %i.r, align 8, !tbaa !10  ; 3 uses
  %i.am = icmp sgt i32 %i.ah, 0
  %i.an = icmp sgt i32 %i.ae, 15
  %i.ao = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr)
  %i.ap = icmp eq i32 %i.ao, 1
  %i.aq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr, i1 true)
  %i.ar = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.al)
  %i.as = icmp eq i32 %i.ar, 1
  %i.at = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.al, i1 true)
  br i1 %i.am, label %.preheader2304.preheader, label %._crit_edge2529.split

.preheader2304.preheader:                         ; preds = %.preheader2304.lr.ph
  %i.au = load ptr, ptr %4, align 8, !tbaa !19, !noalias !268
  %i.av = load i64, ptr %i.s, align 8, !tbaa !17, !noalias !268
  %i.aw = trunc nsw i64 %i.ak to i32
  %i.ax = sdiv i32 %i.aw, %i.al
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul i64 %i.av, %i.ay
  %i.ba = load i64, ptr %i.t, align 8, !tbaa !30, !noalias !268
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bb
  %i.bd = add i32 %i.ae, -16                      ; 3 uses
  %i.be = lshr i32 %i.bd, 3
  %i.bf = and i32 %i.be, 536870910
  %narrow = add nuw nsw i32 %i.bf, 2
  %i.bg = zext nneg i32 %narrow to i64
  %i.bh = and i32 %i.bd, -16
  %i.bi = add nuw i32 %i.bh, 16
  %i.bj = sext i32 %i.ae to i64
  %i.bk = and i32 %i.bd, -16
  %i.bl = add i32 %i.bk, 16
  %invariant.op = add nsw i64 %i.bj, -15
  br label %.preheader2304

.preheader2304:                                   ; preds = %.preheader2304.preheader, %._crit_edge
  %.08132528 = phi i32 [ %.neg2284, %._crit_edge ], [ 0, %.preheader2304.preheader ]
  %.08142527 = phi ptr [ %.5819, %._crit_edge ], [ %i.bc, %.preheader2304.preheader ]
  %.neg2284 = add nuw nsw i32 %.08132528, 1       ; 7 uses
  br label %bb.c

._crit_edge2529.split:                            ; preds = %._crit_edge, %.preheader2304.lr.ph, %.noexc
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond2614.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond2614.not, label %._crit_edge2532, label %.noexc, !llvm.loop !271

._crit_edge:                                      ; preds = %.thread2265
  %exitcond2612.not = icmp eq i32 %.neg2284, %i.ai
  br i1 %exitcond2612.not, label %._crit_edge2529.split, label %.preheader2304, !llvm.loop !273

bb.c:                                             ; preds = %.preheader2304, %.thread2265
  %.08122526 = phi i32 [ 0, %.preheader2304 ], [ %i.bfm, %.thread2265 ] ; 6 uses
  %.18152525 = phi ptr [ %.08142527, %.preheader2304 ], [ %.5819, %.thread2265 ] ; 29 uses
  %i.bm = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %.not851 = icmp eq ptr %i.bm, null
  br i1 %.not851, label %.noexc1013, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.ak
  %i.bo = load <16 x float>, ptr %i.bn, align 1, !tbaa !34
  br label %.noexc1013

.noexc1013:                                       ; preds = %bb.c, %bb.d
  %.02205 = phi nsz <16 x float> [ zeroinitializer, %bb.c ], [ %i.bo, %bb.d ] ; 3 uses
  %i.bp = load ptr, ptr %6, align 8, !tbaa !19, !noalias !274 ; 2 uses
  %i.bq = load i64, ptr %i.u, align 8, !tbaa !17, !noalias !274
  %i.br = mul i64 %i.bq, %indvars.iv
  %i.bs = load i64, ptr %i.v, align 8, !tbaa !30, !noalias !274
  %i.bt = mul i64 %i.br, %i.bs                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bt ; 2 uses
  br i1 %i.an, label %.preheader2299.lr.ph, label %.preheader2303

.preheader2299.lr.ph:                             ; preds = %.noexc1013
  %i.bv = load i32, ptr %7, align 4, !tbaa !9     ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  %.neg2286 = add nuw nsw i32 %.08122526, 1
  %i.bx = load i32, ptr %15, align 4, !tbaa !9
  %i.by = shl i32 %i.bx, 8
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  br i1 %i.bw, label %.preheader2299.lr.ph.split.us, label %.preheader2299.preheader

.preheader2299.preheader:                         ; preds = %.preheader2299.lr.ph
  %i.ca = mul nsw i64 %i.bg, %i.bz
  %i.cb = getelementptr i8, ptr %i.bp, i64 %i.bt
  %scevgep = getelementptr i8, ptr %i.cb, i64 %i.ca
  br label %.preheader2303

.preheader2299.lr.ph.split.us:                    ; preds = %.preheader2299.lr.ph
  %i.cc = load i32, ptr %8, align 4, !tbaa !9
  %i.cd = load i32, ptr %9, align 4, !tbaa !9
  %invariant.op2325.us = sub i32 %.neg2284, %i.cd
  br label %.preheader2299.us

.preheader2299.us:                                ; preds = %._crit_edge.us, %.preheader2299.lr.ph.split.us
  %indvars.iv2562 = phi i64 [ %indvars.iv.next2563, %._crit_edge.us ], [ 0, %.preheader2299.lr.ph.split.us ] ; 20 uses
  %.07422336.us = phi ptr [ %i.da, %._crit_edge.us ], [ %i.bu, %.preheader2299.lr.ph.split.us ] ; 2 uses
  %.07472335.us = phi <16 x float> [ %.us-phi2331.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2299.lr.ph.split.us ] ; 2 uses
  %.07522334.us = phi <16 x float> [ %.us-phi2330.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2299.lr.ph.split.us ] ; 2 uses
  %.07822333.us = phi <16 x float> [ %.us-phi2329.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2299.lr.ph.split.us ] ; 2 uses
  %.122062332.us = phi <16 x float> [ %.us-phi2328.us, %._crit_edge.us ], [ %.02205, %.preheader2299.lr.ph.split.us ] ; 2 uses
  %i.ce = or disjoint i64 %indvars.iv2562, 15
  %i.cf = or disjoint i64 %indvars.iv2562, 1
  %i.cg = or disjoint i64 %indvars.iv2562, 2
  %i.ch = or disjoint i64 %indvars.iv2562, 3
  %i.ci = or disjoint i64 %indvars.iv2562, 4
  %i.cj = or disjoint i64 %indvars.iv2562, 5
  %i.ck = or disjoint i64 %indvars.iv2562, 6
  %i.cl = or disjoint i64 %indvars.iv2562, 7
  %i.cm = or disjoint i64 %indvars.iv2562, 8
  %i.cn = or disjoint i64 %indvars.iv2562, 9
  %i.co = or disjoint i64 %indvars.iv2562, 10
  %i.cp = or disjoint i64 %indvars.iv2562, 11
  %i.cq = or disjoint i64 %indvars.iv2562, 12
  %i.cr = or disjoint i64 %indvars.iv2562, 13
  %i.cs = or disjoint i64 %indvars.iv2562, 14
  %i.ct = lshr exact i64 %indvars.iv2562, 2       ; 4 uses
  %i.cu = or disjoint i64 %i.ct, 1
  %i.cv = or disjoint i64 %i.ct, 2
  %i.cw = or disjoint i64 %i.ct, 3
  %i.cx = lshr exact i64 %indvars.iv2562, 3       ; 2 uses
  %i.cy = or disjoint i64 %i.cx, 1
  %i.cz = lshr exact i64 %indvars.iv2562, 4
  br i1 %i.ap, label %.lr.ph2321.split.us.us, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.loopexit2294.us.us, %.preheader2299.us
  %.us-phi2328.us = phi <16 x float> [ %.122062332.us, %.preheader2299.us ], [ %.82211.us.us, %.loopexit2294.us.us ] ; 2 uses
  %.us-phi2329.us = phi <16 x float> [ %.07822333.us, %.preheader2299.us ], [ %.10792.us.us, %.loopexit2294.us.us ] ; 2 uses
  %.us-phi2330.us = phi <16 x float> [ %.07522334.us, %.preheader2299.us ], [ %.10762.us.us, %.loopexit2294.us.us ] ; 2 uses
  %.us-phi2331.us = phi <16 x float> [ %.07472335.us, %.preheader2299.us ], [ %.10.us.us, %.loopexit2294.us.us ] ; 2 uses
  %i.da = getelementptr inbounds [2 x i8], ptr %.07422336.us, i64 %i.bz ; 2 uses
  %indvars.iv.next2563 = add nuw nsw i64 %indvars.iv2562, 16 ; 2 uses
  %i.db = icmp slt i64 %indvars.iv.next2563, %invariant.op
  br i1 %i.db, label %.preheader2299.us, label %.preheader2303, !llvm.loop !277

.lr.ph2321.split.us.us:                           ; preds = %.preheader2299.us, %.loopexit2294.us.us
  %.07402320.us.us = phi i32 [ %i.dh, %.loopexit2294.us.us ], [ 0, %.preheader2299.us ] ; 3 uses
  %.17482319.us.us = phi <16 x float> [ %.10.us.us, %.loopexit2294.us.us ], [ %.07472335.us, %.preheader2299.us ] ; 4 uses
  %.17532318.us.us = phi <16 x float> [ %.10762.us.us, %.loopexit2294.us.us ], [ %.07522334.us, %.preheader2299.us ] ; 4 uses
  %.17832317.us.us = phi <16 x float> [ %.10792.us.us, %.loopexit2294.us.us ], [ %.07822333.us, %.preheader2299.us ] ; 4 uses
  %.222072316.us.us = phi <16 x float> [ %.82211.us.us, %.loopexit2294.us.us ], [ %.122062332.us, %.preheader2299.us ] ; 4 uses
  %i.dc = mul nsw i32 %i.cc, %.07402320.us.us
  %.reass2326.us.us = add i32 %i.dc, %invariant.op2325.us ; 3 uses
  %i.dd = icmp slt i32 %.reass2326.us.us, 0
  br i1 %i.dd, label %.loopexit2294.us.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph2321.split.us.us
  %i.de = load i32, ptr %10, align 4, !tbaa !9    ; 2 uses
  %i.df = srem i32 %.reass2326.us.us, %i.de
  %i.dg = sdiv i32 %.reass2326.us.us, %i.de       ; 2 uses
  %.not883.us.us = icmp eq i32 %i.df, 0
  %.not884.us.us = icmp slt i32 %i.dg, %i.ag
  %or.cond = select i1 %.not883.us.us, i1 %.not884.us.us, i1 false
  br i1 %or.cond, label %.preheader2293.us.us, label %.loopexit2294.us.us

.loopexit2294.us.us:                              ; preds = %.thread2238.us.us.us, %.preheader2293.us.us, %bb.e, %.lr.ph2321.split.us.us
  %.82211.us.us = phi nsz <16 x float> [ %.222072316.us.us, %.lr.ph2321.split.us.us ], [ %.222072316.us.us, %bb.e ], [ %.222072316.us.us, %.preheader2293.us.us ], [ %.7.us.us.us, %.thread2238.us.us.us ] ; 2 uses
  %.10792.us.us = phi nsz <16 x float> [ %.17832317.us.us, %.lr.ph2321.split.us.us ], [ %.17832317.us.us, %bb.e ], [ %.17832317.us.us, %.preheader2293.us.us ], [ %.8790.us.us.us, %.thread2238.us.us.us ] ; 2 uses
  %.10762.us.us = phi nsz <16 x float> [ %.17532318.us.us, %.lr.ph2321.split.us.us ], [ %.17532318.us.us, %bb.e ], [ %.17532318.us.us, %.preheader2293.us.us ], [ %.8760.us.us.us, %.thread2238.us.us.us ] ; 2 uses
  %.10.us.us = phi nsz <16 x float> [ %.17482319.us.us, %.lr.ph2321.split.us.us ], [ %.17482319.us.us, %bb.e ], [ %.17482319.us.us, %.preheader2293.us.us ], [ %.8.us.us.us, %.thread2238.us.us.us ] ; 2 uses
  %i.dh = add nuw nsw i32 %.07402320.us.us, 1     ; 2 uses
  %exitcond2561.not = icmp eq i32 %i.dh, %i.bv
  br i1 %exitcond2561.not, label %._crit_edge.us, label %.lr.ph2321.split.us.us, !llvm.loop !278

.preheader2293.us.us:                             ; preds = %bb.e
  %i.di = load i32, ptr %11, align 4, !tbaa !9    ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph.us.us, label %.loopexit2294.us.us

.lr.ph.us.us:                                     ; preds = %.preheader2293.us.us
  %i.dk = load i32, ptr %12, align 4, !tbaa !9
  %i.dl = load i32, ptr %13, align 4, !tbaa !9
  %invariant.op.us.us = sub i32 %.neg2286, %i.dl
  %i.dm = mul nuw nsw i32 %i.di, %.07402320.us.us
  %i.dn = sext i32 %i.dg to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.di to i64
  br label %bb.f

bb.f:                                             ; preds = %.thread2238.us.us.us, %.lr.ph.us.us
  %indvars.iv2558 = phi i64 [ %indvars.iv.next2559, %.thread2238.us.us.us ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.27492308.us.us.us = phi <16 x float> [ %.8.us.us.us, %.thread2238.us.us.us ], [ %.17482319.us.us, %.lr.ph.us.us ] ; 4 uses
  %.27542307.us.us.us = phi <16 x float> [ %.8760.us.us.us, %.thread2238.us.us.us ], [ %.17532318.us.us, %.lr.ph.us.us ] ; 4 uses
  %.27842306.us.us.us = phi <16 x float> [ %.8790.us.us.us, %.thread2238.us.us.us ], [ %.17832317.us.us, %.lr.ph.us.us ] ; 4 uses
  %.322082305.us.us.us = phi <16 x float> [ %.7.us.us.us, %.thread2238.us.us.us ], [ %.222072316.us.us, %.lr.ph.us.us ] ; 4 uses
  %i.do = trunc i64 %indvars.iv2558 to i32
  %i.dp = mul i32 %i.dk, %i.do
  %.reass.us.us.us = add i32 %i.dp, %invariant.op.us.us ; 3 uses
  %i.dq = icmp slt i32 %.reass.us.us.us, 0
  br i1 %i.dq, label %.thread2238.us.us.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = load i32, ptr %14, align 4, !tbaa !9    ; 2 uses
  %i.ds = srem i32 %.reass.us.us.us, %i.dr
  %i.dt = sdiv i32 %.reass.us.us.us, %i.dr        ; 5 uses
  %.not885.us.us.us = icmp eq i32 %i.ds, 0
  %.not886.us.us.us = icmp slt i32 %i.dt, %i.af
  %or.cond2785 = select i1 %.not885.us.us.us, i1 %.not886.us.us.us, i1 false
  br i1 %or.cond2785, label %.split.us.us.us, label %.thread2238.us.us.us

.split.us.us.us:                                  ; preds = %bb.g
  %i.du = trunc i64 %indvars.iv2558 to i32
  %i.dv = add i32 %i.dm, %i.du
  %i.dw = shl nsw i32 %i.dv, 8
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.07422336.us, i64 %i.dx ; 16 uses
  switch i32 %i.aq, label %.thread2238.us.us.us [
    i32 4, label %.noexc1011.us.us.us
    i32 3, label %.noexc1009.us.us.us
    i32 2, label %.noexc1005.us.us.us
    i32 0, label %.noexc997.us.us.us
  ]

.noexc997.us.us.us:                               ; preds = %.split.us.us.us
  %i.dz = load i32, ptr %i.n, align 4, !tbaa !25, !noalias !279
  %i.ea = load ptr, ptr %3, align 8, !tbaa !19, !noalias !279 ; 9 uses
  %i.eb = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !279 ; 9 uses
  %i.ec = mul i64 %i.eb, %indvars.iv2562
  %i.ed = load i64, ptr %i.x, align 8, !tbaa !30, !noalias !279 ; 10 uses
  %i.ee = mul i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ee
  %i.eg = sext i32 %i.dz to i64
  %i.eh = mul nsw i64 %i.eg, %i.dn
  %i.ei = mul i64 %i.eh, %i.ed                    ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ei
  %i.ek = sext i32 %i.dt to i64                   ; 16 uses
  %i.el = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !tbaa !43
  %i.en = zext i16 %i.em to i32
  %i.eo = shl nuw i32 %i.en, 16
end_hunk_3
