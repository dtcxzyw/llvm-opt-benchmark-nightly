Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Tool_ConvexVolume?download=true
inline.NumInlined: 110
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN16ConvexVolumeTool10drawMenuUIEv:bb.a
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(112) %0) #10, !call_target !53
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN5ImGui4TextEPKcz(ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN5ImGui6IndentEf(float noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN5ImGui8UnindentEf(float noundef) local_unnamed_addr #1

declare void @_ZN5ImGui9SeparatorEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN16ConvexVolumeTool7onClickEPKfS1_b(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [36 x float], align 16            ; 10 uses
  %i.b = alloca [72 x float], align 16            ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !694  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge85.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !723  ; 6 uses
  %.not51 = icmp eq ptr %i.f, null
  br i1 %.not51, label %._crit_edge85.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 424
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 432
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !726
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !727  ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 160                 ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph84, label %._crit_edge85.thread

.lr.ph84:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %wide.trip.count97 = and i64 %i.n, 2147483647
  br label %bb.e

._crit_edge85:                                    ; preds = %_ZN12_GLOBAL__N_111pointInPolyEiPKfS1_.exit.thread
  %.not52 = icmp eq i32 %.1, -1
  br i1 %.not52, label %._crit_edge85.thread, label %bb.k

bb.e:                                             ; preds = %.lr.ph84, %_ZN12_GLOBAL__N_111pointInPolyEiPKfS1_.exit.thread
  %indvars.iv94 = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next95, %_ZN12_GLOBAL__N_111pointInPolyEiPKfS1_.exit.thread ] ; 3 uses
  %.04681 = phi i32 [ -1, %.lr.ph84 ], [ %.1, %_ZN12_GLOBAL__N_111pointInPolyEiPKfS1_.exit.thread ] ; 4 uses
  %i.s = getelementptr inbounds nuw [160 x i8], ptr %i.j, i64 %indvars.iv94 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.u = load i32, ptr %i.t, align 4, !tbaa !729  ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %_ZN12_GLOBAL__N_111pointInPolyEiPKfS1_.exit.thread

.lr.ph.i:                                         ; preds = %bb.e
  %i.w = add nsw i32 %i.u, -1
  %i.x = load float, ptr %i.q, align 4, !tbaa !46 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.u to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %.025.i = phi i32 [ %i.w, %.lr.ph.i ], [ %i.as, %bb.h ]
  %.02223.i = phi i1 [ false, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.idx.i = mul nuw nsw i64 %indvars.iv.i, 12
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i ; 2 uses
  %i.z = mul nsw i32 %.025.i, 3
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !46 ; 3 uses
  %i.ae = fcmp ogt float %i.ad, %i.x
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !46 ; 2 uses
  %i.ah = fcmp ule float %i.ag, %i.x
  %.not.i = xor i1 %i.ae, %i.ah
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load float, ptr %2, align 4, !tbaa !46
  %i.aj = load float, ptr %i.ab, align 4, !tbaa !46
  %i.ak = load float, ptr %i.y, align 4, !tbaa !46 ; 2 uses
  %i.al = fsub float %i.aj, %i.ak
  %i.am = fsub float %i.x, %i.ad
  %i.an = fmul float %i.am, %i.al
  %i.ao = fsub float %i.ag, %i.ad
  %i.ap = fdiv float %i.an, %i.ao
  %i.aq = fadd float %i.ak, %i.ap
  %i.ar = fcmp olt float %i.ai, %i.aq
  %spec.select.i = xor i1 %.02223.i, %i.ar
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i = phi i1 [ %.02223.i, %bb.f ], [ %spec.select.i, %bb.g ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.i to i32
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_111pointInPolyEiPKfS1_.exit, label %bb.f, !llvm.loop !704

_ZN12_GLOBAL__N_111pointInPolyEiPKfS1_.exit:      ; preds = %bb.h
  br i1 %.1.i, label %bb.i, label %_ZN12_GLOBAL__N_111pointInPolyEiPKfS1_.exit.thread

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_111pointInPolyEiPKfS1_.exit
  %i.at = load float, ptr %i.r, align 4, !tbaa !46 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 148
  %i.av = load float, ptr %i.au, align 4, !tbaa !730
  %i.aw = fcmp ult float %i.at, %i.av
  br i1 %i.aw, label %_ZN12_GLOBAL__N_111pointInPolyEiPKfS1_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !731
  %i.az = fcmp ugt float %i.at, %i.ay
  %i.ba = trunc nuw nsw i64 %indvars.iv94 to i32
  %spec.select = select i1 %i.az, i32 %.04681, i32 %i.ba
  br label %_ZN12_GLOBAL__N_111pointInPolyEiPKfS1_.exit.thread

_ZN12_GLOBAL__N_111pointInPolyEiPKfS1_.exit.thread: ; preds = %bb.e, %bb.j, %_ZN12_GLOBAL__N_111pointInPolyEiPKfS1_.exit, %bb.i
  %.1 = phi i32 [ %.04681, %_ZN12_GLOBAL__N_111pointInPolyEiPKfS1_.exit ], [ %spec.select, %bb.j ], [ %.04681, %bb.i ], [ %.04681, %bb.e ] ; 3 uses
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %._crit_edge85, label %bb.e, !llvm.loop !705

bb.k:                                             ; preds = %._crit_edge85
  tail call void @_ZN9InputGeom18deleteConvexVolumeEi(ptr noundef nonnull align 8 dereferenceable(448) %i.f, i32 noundef %.1) #10
  br label %._crit_edge85.thread

bb.l:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !696 ; 10 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !696 ; 6 uses
  %i.bf = icmp eq ptr %i.bc, %i.be
  br i1 %i.bf, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bc to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %.fr = freeze i64 %i.bi
  %i.bj = lshr i64 %.fr, 2
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = srem i32 %i.bk, 3
  %i.bm = add i32 %i.bk, -3
  %i.bn = sub i32 %i.bm, %i.bl
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bo ; 3 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !46
  %i.br = load float, ptr %2, align 4, !tbaa !46
  %i.bs = fsub float %i.bq, %i.br                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !46
  %i.bx = fsub float %i.bu, %i.bw                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bz = load float, ptr %i.by, align 4, !tbaa !46
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !46
  %i.cc = fsub float %i.bz, %i.cb                 ; 2 uses
  %i.cd = fmul float %i.bx, %i.bx
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.cd)
  %i.cf = tail call noundef float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %i.ce)
  %i.cg = fcmp olt float %i.cf, f0x3D23D70B
  br i1 %i.cg, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !697 ; 6 uses
  %i.cj = icmp sgt i32 %i.ci, 2
  br i1 %i.cj, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ci to i64   ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %indvars.iv = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.1, %bb.p ] ; 4 uses
  %niter = phi i64 [ 0, %bb.o ], [ %niter.next.1, %bb.p ]
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !698
  %i.co = mul nsw i32 %i.cn, 3
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.cp ; 3 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !46
  store float %i.cr, ptr %i.cl, align 8, !tbaa !46
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !46
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store float %i.ct, ptr %i.cu, align 4, !tbaa !46
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !46
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store float %i.cw, ptr %i.cx, align 8, !tbaa !46
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next, 12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.1 ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !698
  %i.db = mul nsw i32 %i.da, 3
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.dc ; 3 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !46
  store float %i.de, ptr %i.cy, align 4, !tbaa !46
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dg = load float, ptr %i.df, align 4, !tbaa !46
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store float %i.dg, ptr %i.dh, align 8, !tbaa !46
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dj = load float, ptr %i.di, align 4, !tbaa !46
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store float %i.dj, ptr %i.dk, align 4, !tbaa !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.unr-lcssa, label %bb.p, !llvm.loop !706

.lr.ph.preheader.unr-lcssa:                       ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.unr-lcssa
  %lcmp.mod130 = trunc i32 %i.ci to i1
  tail call void @llvm.assume(i1 %lcmp.mod130)
  %.idx.epil = mul nuw nsw i64 %indvars.iv.next.1, 12
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.epil ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next.1
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !698
  %i.do = mul nsw i32 %i.dn, 3
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.dp ; 3 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !46
  store float %i.dr, ptr %i.dl, align 4, !tbaa !46
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !46
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store float %i.dt, ptr %i.du, align 4, !tbaa !46
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !46
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store float %i.dw, ptr %i.dx, align 4, !tbaa !46
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.unr-lcssa, %.epil.preheader
  %xtraiter131 = and i64 %wide.trip.count, 1
  %unroll_iter135 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa
  %lcmp.mod134 = trunc i32 %i.ci to i1
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %.idx124.epil = mul nuw nsw i64 %indvars.iv.next90.1, 12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx124.epil
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !46 ; 2 uses
  %i.eb = fcmp olt float %i.ew, %i.ea
  %i.ec = select i1 %i.eb, float %i.ew, float %i.ea
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa129 = phi float [ %i.ew, %._crit_edge.unr-lcssa ], [ %i.ec, %.lr.ph.epil.preheader ]
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !699
  %i.ef = fsub float %.lcssa129, %i.ee            ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !700
  %i.ei = fadd float %i.ef, %i.eh                 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !732 ; 2 uses
  %i.el = fcmp ogt float %i.ek, f0x3C23D70A
  br i1 %i.el, label %bb.q, label %bb.t

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv89 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next90.1, %.lr.ph ] ; 3 uses
  %.04379 = phi float [ f0x7F7FFFFF, %.lr.ph.preheader ], [ %i.ew, %.lr.ph ] ; 2 uses
  %niter136 = phi i64 [ 0, %.lr.ph.preheader ], [ %niter136.next.1, %.lr.ph ]
  %.idx124 = mul nuw nsw i64 %indvars.iv89, 12
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx124
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load float, ptr %i.en, align 4, !tbaa !46 ; 2 uses
  %i.ep = fcmp olt float %.04379, %i.eo
  %i.eq = select i1 %i.ep, float %.04379, float %i.eo ; 2 uses
  %i.er = mul nuw i64 %indvars.iv89, 12
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load float, ptr %i.et, align 8, !tbaa !46 ; 2 uses
  %i.ev = fcmp olt float %i.eq, %i.eu
  %i.ew = select i1 %i.ev, float %i.eq, float %i.eu ; 4 uses
  %indvars.iv.next90.1 = add nuw nsw i64 %indvars.iv89, 2 ; 2 uses
  %niter136.next.1 = add i64 %niter136, 2         ; 2 uses
  %niter136.ncmp.1 = icmp eq i64 %niter136.next.1, %unroll_iter135
  br i1 %niter136.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !707

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.ex = call noundef i32 @_Z12rcOffsetPolyPKfifPfi(ptr noundef nonnull %i.a, i32 noundef %i.ci, float noundef %i.ek, ptr noundef nonnull %i.b, i32 noundef 24) #10 ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !45
  %i.fb = trunc i32 %i.fa to i8
  call void @_ZN9InputGeom15addConvexVolumeEPKfiffh(ptr noundef nonnull align 8 dereferenceable(448) %i.f, ptr noundef nonnull %i.b, i32 noundef %i.ex, float noundef %i.ef, float noundef %i.ei, i8 noundef zeroext %i.fb) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !45
  %i.fe = trunc i32 %i.fd to i8
  call void @_ZN9InputGeom15addConvexVolumeEPKfiffh(ptr noundef nonnull align 8 dereferenceable(448) %i.f, ptr noundef nonnull %i.a, i32 noundef %i.ci, float noundef %i.ef, float noundef %i.ei, i8 noundef zeroext %i.fe) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.n
  %i.ff = load ptr, ptr %0, align 8, !tbaa !48
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(112) %0) #10, !call_target !53
  br label %._crit_edge85.thread

bb.w:                                             ; preds = %bb.m, %bb.l
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !701 ; 2 uses
  %.not.i53 = icmp eq ptr %i.be, %i.fj
  br i1 %.not.i53, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fk = load float, ptr %2, align 4, !tbaa !46
  store float %i.fk, ptr %i.be, align 4, !tbaa !46
  %i.fl = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store ptr %i.fl, ptr %i.bd, align 8, !tbaa !702
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit

bb.y:                                             ; preds = %bb.w
  %i.fm = ptrtoint ptr %i.be to i64
  %i.fn = ptrtoint ptr %i.bc to i64
  %i.fo = sub i64 %i.fm, %i.fn                    ; 6 uses
  %i.fp = icmp eq i64 %i.fo, 9223372036854775804
  br i1 %i.fp, label %bb.z, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #11
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.fq = ashr exact i64 %i.fo, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fq, i64 1)
  %i.fr = add nsw i64 %.sroa.speculated.i.i.i, %i.fq ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.fq
  %i.ft = tail call i64 @llvm.umin.i64(i64 %i.fr, i64 2305843009213693951)
  %i.fu = select i1 %i.fs, i64 2305843009213693951, i64 %i.ft ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.fv = shl nuw nsw i64 %i.fu, 2
  %i.fw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #12 ; 4 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %i.fo ; 2 uses
  %i.fy = load float, ptr %2, align 4, !tbaa !46
  store float %i.fy, ptr %i.fx, align 4, !tbaa !46
  %i.fz = icmp sgt i64 %i.fo, 0
  br i1 %i.fz, label %bb.aa, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.aa:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fw, ptr align 4 %i.bc, i64 %i.fo, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.aa, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.fo) #13
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.ab, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.fw, ptr %i.bb, align 8, !tbaa !703
  store ptr %i.ga, ptr %i.bd, align 8, !tbaa !702
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fu ; 2 uses
  store ptr %i.gb, ptr %i.fi, align 8, !tbaa !701
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit

_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit: ; preds = %bb.x, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i
  %i.gc = phi ptr [ %i.fj, %bb.x ], [ %i.gb, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ] ; 3 uses
  %i.gd = phi ptr [ %i.fl, %bb.x ], [ %i.ga, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ] ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.not.i54 = icmp eq ptr %i.gd, %i.gc
  br i1 %.not.i54, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !46
  store float %i.gf, ptr %i.gd, align 4, !tbaa !46
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 4 ; 2 uses
  store ptr %i.gg, ptr %i.bd, align 8, !tbaa !702
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit61

bb.ad:                                            ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit
  %i.gh = load ptr, ptr %i.bb, align 8, !tbaa !703 ; 4 uses
  %i.gi = ptrtoint ptr %i.gc to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj                    ; 6 uses
  %i.gl = icmp eq i64 %i.gk, 9223372036854775804
  br i1 %i.gl, label %bb.ae, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i55

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #11
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i55: ; preds = %bb.ad
  %i.gm = ashr exact i64 %i.gk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i56 = tail call i64 @llvm.umax.i64(i64 %i.gm, i64 1)
  %i.gn = add nsw i64 %.sroa.speculated.i.i.i56, %i.gm ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.gm
  %i.gp = tail call i64 @llvm.umin.i64(i64 %i.gn, i64 2305843009213693951)
  %i.gq = select i1 %i.go, i64 2305843009213693951, i64 %i.gp ; 3 uses
  %.not.i.i.i57 = icmp ne i64 %i.gq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i57)
  %i.gr = shl nuw nsw i64 %i.gq, 2
  %i.gs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #12 ; 4 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 %i.gk ; 2 uses
  %i.gu = load float, ptr %i.ge, align 4, !tbaa !46
  store float %i.gu, ptr %i.gt, align 4, !tbaa !46
  %i.gv = icmp sgt i64 %i.gk, 0
  br i1 %i.gv, label %bb.af, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i58

bb.af:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i55
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gs, ptr align 4 %i.gh, i64 %i.gk, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i58

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i58: ; preds = %bb.af, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i55
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 4 ; 2 uses
  %.not.i17.i.i59 = icmp eq ptr %i.gh, null
  br i1 %.not.i17.i.i59, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i60, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i58
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gk) #13
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i60

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i60: ; preds = %bb.ag, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i58
  store ptr %i.gs, ptr %i.bb, align 8, !tbaa !703
  store ptr %i.gw, ptr %i.bd, align 8, !tbaa !702
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gq ; 2 uses
  store ptr %i.gx, ptr %i.fi, align 8, !tbaa !701
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit61

_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit61: ; preds = %bb.ac, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i60
  %i.gy = phi ptr [ %i.gc, %bb.ac ], [ %i.gx, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i60 ] ; 2 uses
  %i.gz = phi ptr [ %i.gg, %bb.ac ], [ %i.gw, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i60 ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not.i62 = icmp eq ptr %i.gz, %i.gy
  br i1 %.not.i62, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit61
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !46
  store float %i.hb, ptr %i.gz, align 4, !tbaa !46
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 4 ; 2 uses
  store ptr %i.hc, ptr %i.bd, align 8, !tbaa !702
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !703
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit69

bb.ai:                                            ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit61
  %i.hd = load ptr, ptr %i.bb, align 8, !tbaa !703 ; 4 uses
  %i.he = ptrtoint ptr %i.gy to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf                    ; 6 uses
  %i.hh = icmp eq i64 %i.hg, 9223372036854775804
  br i1 %i.hh, label %bb.aj, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i63

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #11
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i63: ; preds = %bb.ai
  %i.hi = ashr exact i64 %i.hg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i64 = tail call i64 @llvm.umax.i64(i64 %i.hi, i64 1)
  %i.hj = add nsw i64 %.sroa.speculated.i.i.i64, %i.hi ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.hi
  %i.hl = tail call i64 @llvm.umin.i64(i64 %i.hj, i64 2305843009213693951)
  %i.hm = select i1 %i.hk, i64 2305843009213693951, i64 %i.hl ; 3 uses
  %.not.i.i.i65 = icmp ne i64 %i.hm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i65)
end_hunk_0
