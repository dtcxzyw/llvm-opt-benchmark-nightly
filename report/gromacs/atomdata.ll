Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/atomdata?download=true
inline.NumInlined: 1593
inline.NumDeleted: 777
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN3gmx16nbnxn_atomdata_tC2ENS_13PinningPolicyERKNS_8MDLoggerENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES7_NS_8ArrayRefIKfEEbii:bb.a
  %or.cond244.i = select i1 %.not.i, i1 %i.q, i1 false
  %i.r = load i32, ptr %4, align 4
  %i.s = icmp ne i32 %i.r, 2
  %or.cond246.not.i = select i1 %or.cond244.i, i1 %i.s, i1 false
  br i1 %or.cond246.not.i, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !118
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.t
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = sdiv i64 %i.y, 2
  %i.aa = sitofp i64 %i.z to double
  %i.ab = call noundef double @sqrt(double noundef %i.aa) #22
  %i.ac = fptosi double %i.ab to i32              ; 12 uses
  %i.ad = sext i32 %i.ac to i64                   ; 5 uses
  %i.ae = shl nsw i64 %i.ad, 1
  %i.af = mul i64 %i.ae, %i.ad
  %i.ag = icmp eq i64 %i.af, %i.y
  br i1 %i.ag, label %bb.g, label %.invoke

bb.g:                                             ; preds = %bb.f
  br i1 %7, label %.loopexit.i, label %.preheader250.i

.preheader250.i:                                  ; preds = %bb.g
  %i.ah = shl i32 %i.ac, 1
  %i.ai = add nsw i32 %i.ac, -1
  %i.aj = mul nuw nsw i32 %i.ai, %i.ac
  %i.ak = sext i32 %i.aj to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  %exitcond.not.i180 = icmp slt i32 %i.ac, 1
  br i1 %exitcond.not.i180, label %.loopexit.i, label %.lr.ph182

bb.h:                                             ; preds = %bb.k
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph182, !llvm.loop !261

.lr.ph182:                                        ; preds = %.preheader250.i, %bb.h
  %indvars.iv.i181 = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %.preheader250.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i181, 1 ; 3 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.am = mul i32 %i.ah, %i.al                    ; 2 uses
  %i.an = add i32 %i.am, -2
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !79
  %i.ar = fcmp une float %i.aq, 0.000000e+00
  br i1 %i.ar, label %.invoke, label %bb.i

bb.i:                                             ; preds = %.lr.ph182
  %i.as = add i32 %i.am, -1
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !79
  %i.aw = fcmp une float %i.av, 0.000000e+00
  br i1 %i.aw, label %.invoke, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = add nsw i64 %indvars.iv.i181, %i.ak
  %.idx.i = shl i64 %i.ax, 3
  %i.ay = getelementptr i8, ptr %i.n, i64 %.idx.i ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !79
  %i.ba = fcmp une float %i.az, 0.000000e+00
  br i1 %i.ba, label %.invoke, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr i8, ptr %i.ay, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !79
  %i.bd = fcmp une float %i.bc, 0.000000e+00
  br i1 %i.bd, label %.invoke, label %bb.h, !llvm.loop !261

.loopexit.i:                                      ; preds = %bb.h, %.preheader250.i, %bb.g
  %i.be = load ptr, ptr @debug, align 8, !tbaa !285 ; 2 uses
  %.not206.i = icmp eq ptr %i.be, null
  br i1 %.not206.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.bf = select i1 %7, ptr @.str.13, ptr @.str.14
  %i.bg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.be, ptr noundef nonnull @.str.12, i32 noundef %i.ac, ptr noundef nonnull %i.bf) #22 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit.i
  %i.bh = zext i1 %7 to i32
  %i.bi = add nsw i32 %i.ac, %i.bh                ; 3 uses
  store i32 %i.bi, ptr %0, align 8, !tbaa !109
  %i.bj = shl i32 %i.bi, 1                        ; 4 uses
  %i.bk = mul i32 %i.bj, %i.bi
  %i.bl = zext nneg i32 %i.bk to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !75 ; 2 uses
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !76 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, %i.bl
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = sub nuw nsw i64 %i.bl, %i.bt
  invoke void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef %i.bw)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc43:                                         ; preds = %bb.n
  %.pre.i = load i32, ptr %0, align 8, !tbaa !109
  %.pre284.i = shl nsw i32 %.pre.i, 1
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bx = icmp ugt i64 %i.bt, %i.bl
  br i1 %i.bx, label %bb.p, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bl ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.bo, %i.by
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.by, ptr %i.bn, align 8, !tbaa !75
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i: ; preds = %bb.q, %bb.p, %bb.o, %.noexc43
  %.pre-phi.i = phi i32 [ %.pre284.i, %.noexc43 ], [ %i.bj, %bb.o ], [ %i.bj, %bb.p ], [ %i.bj, %bb.q ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ca = sext i32 %.pre-phi.i to i64             ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 11 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !75 ; 2 uses
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !76 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 2                 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %i.ca
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i
  %i.ck = sub nuw nsw i64 %i.ca, %i.ci
  invoke void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 noundef %i.ck)
          to label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i
  %i.cl = icmp ugt i64 %i.ci, %i.ca
  br i1 %i.cl, label %bb.t, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.ca ; 2 uses
  %.not.i.i217.i = icmp eq ptr %i.cd, %i.cm
  br i1 %.not.i.i217.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.cm, ptr %i.cc, align 8, !tbaa !75
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i: ; preds = %bb.r, %bb.u, %bb.t, %bb.s
  %i.cn = call ptr @getenv(ptr noundef nonnull @.str.15) #22 ; 2 uses
  %.not207.i = icmp eq ptr %i.cn, null
  br i1 %.not207.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i
  %i.co = call double @strtod(ptr noundef nonnull captures(none) %i.cn, ptr noundef null) #22
  %i.cp = fptrunc double %i.co to float
  %i.cq = fpext float %i.cp to double
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i
  %.0192.i = phi double [ %i.cq, %bb.v ], [ f0x3EE4F8B580000000, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i ] ; 4 uses
  %i.cr = icmp sgt i32 %i.ac, 0
  br i1 %i.cr, label %.lr.ph.i, label %.preheader249.i

.lr.ph.i:                                         ; preds = %bb.w
  %.0184215.i = shl nuw i32 %i.ac, 1
  %i.cs = add i32 %.0184215.i, 2
  %wide.trip.count275.i = zext nneg i32 %i.ac to i64
  br label %bb.x

.preheader249.i:                                  ; preds = %bb.ab, %bb.w
  %.0185.lcssa.i = phi i8 [ 1, %bb.w ], [ %.1186.i, %bb.ab ] ; 2 uses
  %i.ct = load i32, ptr %0, align 8, !tbaa !109   ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.preheader.preheader.i, label %._crit_edge264.i

.preheader.preheader.i:                           ; preds = %.preheader249.i
  %.0182214.i = shl i32 %i.ac, 1
  %i.cv = add i32 %.0182214.i, 2
  br label %.preheader.i

bb.x:                                             ; preds = %bb.ab, %.lr.ph.i
  %indvars.iv273.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next274.i, %bb.ab ] ; 4 uses
  %.0185251.i = phi i8 [ 1, %.lr.ph.i ], [ %.1186.i, %bb.ab ]
  %i.cw = trunc nuw nsw i64 %indvars.iv273.i to i32
  %i.cx = mul i32 %i.cs, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr [4 x i8], ptr %i.n, i64 %i.cy
  %i.da = load <2 x float>, ptr %i.cz, align 4, !tbaa !79
  %i.db = fdiv <2 x float> %i.da, <float 6.000000e+00, float 1.200000e+01> ; 3 uses
  %i.dc = extractelement <2 x float> %i.db, i64 0 ; 3 uses
  %i.dd = fcmp ogt float %i.dc, 0.000000e+00
  %i.de = extractelement <2 x float> %i.db, i64 1 ; 3 uses
  %i.df = fcmp ogt float %i.de, 0.000000e+00
  %or.cond.i = select i1 %i.dd, i1 %i.df, i1 false
  br i1 %or.cond.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dg = fdiv float %i.de, %i.dc
  %i.dh = call noundef float @cbrtf(float noundef %i.dg) #37
  %i.di = call noundef float @sqrtf(float noundef %i.dh) #22
  %i.dj = load ptr, ptr %i.cb, align 8, !tbaa !76
  %.idx348.i = shl nuw nsw i64 %indvars.iv273.i, 3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx348.i ; 2 uses
  store float %i.di, ptr %i.dk, align 4, !tbaa !79
  %i.dl = fpext float %i.dc to double             ; 2 uses
  %i.dm = fmul nnan double %i.dl, 2.500000e-01
  %i.dn = fmul double %i.dm, %i.dl
  %i.do = fpext float %i.de to double
  %i.dp = fdiv double %i.dn, %i.do
  %i.dq = fptrunc double %i.dp to float
  br label %.sink.split.i

bb.z:                                             ; preds = %bb.x
  %23 = fcmp oeq <2 x float> %i.db, zeroinitializer ; 2 uses
  %24 = extractelement <2 x i1> %23, i64 0
  %25 = extractelement <2 x i1> %23, i64 1
  %or.cond3.i = select i1 %24, i1 %25, i1 false
  br i1 %or.cond3.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dr = load ptr, ptr %i.cb, align 8, !tbaa !76
  %.idx347.i = shl nuw nsw i64 %indvars.iv273.i, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx347.i ; 2 uses
  store float 0.000000e+00, ptr %i.ds, align 4, !tbaa !79
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.aa, %bb.y
  %.sink354.i = phi ptr [ %i.ds, %bb.aa ], [ %i.dk, %bb.y ]
  %.sink.i = phi float [ 0.000000e+00, %bb.aa ], [ %i.dq, %bb.y ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.sink354.i, i64 4
  store float %.sink.i, ptr %i.dt, align 4, !tbaa !79
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i, %bb.z
  %.1186.i = phi i8 [ 0, %bb.z ], [ %.0185251.i, %.sink.split.i ] ; 2 uses
  %indvars.iv.next274.i = add nuw nsw i64 %indvars.iv273.i, 1 ; 2 uses
  %exitcond276.not.i = icmp eq i64 %indvars.iv.next274.i, %wide.trip.count275.i
  br i1 %exitcond276.not.i, label %.preheader249.i, label %bb.x, !llvm.loop !262

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %i.du = phi i32 [ %i.ct, %.preheader.preheader.i ], [ %i.fo, %._crit_edge.i ] ; 11 uses
  %indvars.iv282.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next283.i, %._crit_edge.i ] ; 6 uses
  %.2187261.i = phi i8 [ %.0185.lcssa.i, %.preheader.preheader.i ], [ %.3188.lcssa.i, %._crit_edge.i ] ; 6 uses
  %.0189260.i = phi i8 [ 1, %.preheader.preheader.i ], [ %.1190.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph256.i, label %._crit_edge.i

.lr.ph256.i:                                      ; preds = %.preheader.i
  %i.dw = icmp slt i64 %indvars.iv282.i, %i.ad
  %i.dx = mul nuw nsw i64 %indvars.iv282.i, %i.ad ; 2 uses
  %i.dy = trunc nuw nsw i64 %indvars.iv282.i to i32 ; 3 uses
  %i.dz = add nsw i64 %i.dx, %indvars.iv282.i
  %.idx = shl i64 %i.dz, 3
  %i.ea = getelementptr i8, ptr %i.n, i64 %.idx   ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 4
  %i.ec = shl nuw nsw i64 %indvars.iv282.i, 1     ; 3 uses
  %.fr.i = freeze i1 %i.dw
  br i1 %.fr.i, label %.lr.ph256.split.i, label %.lr.ph256.split.us.i

.lr.ph256.split.us.i:                             ; preds = %.lr.ph256.i
  %i.ed = load ptr, ptr %i.bm, align 8, !tbaa !76 ; 7 uses
  %i.ee = mul nuw nsw i32 %i.du, %i.dy            ; 2 uses
  %i.ef = shl nuw nsw i32 %i.ee, 1
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr [4 x i8], ptr %i.ed, i64 %i.eg
  store <2 x float> zeroinitializer, ptr %i.eh, align 4, !tbaa !79
  %exitcond278.peel.not.i = icmp eq i32 %i.du, 1
  br i1 %exitcond278.peel.not.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph256.split.us.i
  %i.ei = zext nneg i32 %i.ee to i64              ; 6 uses
  %i.ej = zext nneg i32 %i.du to i64              ; 2 uses
  %i.ek = add nsw i64 %i.ej, -1                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.du, 5
  br i1 %min.iters.check, label %.peel.next.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check183 = icmp ult i32 %i.du, 33
  br i1 %min.iters.check183, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.el = and i64 %i.ek, 28
  %n.vec = and i64 %i.ek, -32                     ; 4 uses
  %i.em = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.en = or disjoint i64 %index, 1
  %i.eo = or disjoint i64 %index, 9
  %i.ep = or disjoint i64 %index, 17
  %i.eq = or disjoint i64 %index, 25
  %i.er = add nuw nsw i64 %i.en, %i.ei
  %i.es = add nuw nsw i64 %i.eo, %i.ei
  %i.et = add nuw nsw i64 %i.ep, %i.ei
  %i.eu = add nuw nsw i64 %i.eq, %i.ei
  %i.ev = shl i64 %i.er, 3
  %i.ew = shl i64 %i.es, 3
  %i.ex = shl i64 %i.et, 3
  %i.ey = shl i64 %i.eu, 3
  %i.ez = getelementptr i8, ptr %i.ed, i64 %i.ev
  %i.fa = getelementptr i8, ptr %i.ed, i64 %i.ew
  %i.fb = getelementptr i8, ptr %i.ed, i64 %i.ex
  %i.fc = getelementptr i8, ptr %i.ed, i64 %i.ey
  store <16 x float> zeroinitializer, ptr %i.ez, align 4, !tbaa !79
  store <16 x float> zeroinitializer, ptr %i.fa, align 4, !tbaa !79
  store <16 x float> zeroinitializer, ptr %i.fb, align 4, !tbaa !79
  store <16 x float> zeroinitializer, ptr %i.fc, align 4, !tbaa !79
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !263

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ek, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.el, 0
  br i1 %min.epilog.iters.check, label %.peel.next.i.preheader, label %vec.epilog.ph, !prof !120

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec184 = and i64 %i.ek, -4                   ; 3 uses
  %i.fe = or disjoint i64 %n.vec184, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index185 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next186, %vec.epilog.vector.body ] ; 2 uses
  %i.ff = or disjoint i64 %index185, 1
  %i.fg = add nuw nsw i64 %i.ff, %i.ei
  %i.fh = shl i64 %i.fg, 3
  %i.fi = getelementptr i8, ptr %i.ed, i64 %i.fh
  store <8 x float> zeroinitializer, ptr %i.fi, align 4, !tbaa !79
  %index.next186 = add nuw i64 %index185, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next186, %n.vec184
  br i1 %i.fj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !264

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n187 = icmp eq i64 %i.ek, %n.vec184
  br i1 %cmp.n187, label %._crit_edge.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.em, %vec.epilog.iter.check ], [ %i.fe, %vec.epilog.middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %.peel.next.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next.i ], [ %indvars.iv.ph, %.peel.next.i.preheader ] ; 2 uses
  %i.fk = add nuw nsw i64 %indvars.iv, %i.ei
  %.idx170 = shl i64 %i.fk, 3
  %i.fl = getelementptr i8, ptr %i.ed, i64 %.idx170
  store <2 x float> zeroinitializer, ptr %i.fl, align 4, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond278.not.i = icmp eq i64 %indvars.iv.next, %i.ej
  br i1 %exitcond278.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !265

._crit_edge264.loopexit.i:                        ; preds = %._crit_edge.i
  %i.fm = trunc nuw i8 %.1190.lcssa.i to i1
  br label %._crit_edge264.i

._crit_edge264.i:                                 ; preds = %._crit_edge264.loopexit.i, %.preheader249.i
  %.0189.lcssa.i = phi i1 [ true, %.preheader249.i ], [ %i.fm, %._crit_edge264.loopexit.i ] ; 2 uses
  %.2187.lcssa.i = phi i8 [ %.0185.lcssa.i, %.preheader249.i ], [ %.3188.lcssa.i, %._crit_edge264.loopexit.i ] ; 2 uses
  %i.fn = load ptr, ptr @debug, align 8, !tbaa !285 ; 2 uses
  %.not208.i = icmp eq ptr %i.fn, null
  br i1 %.not208.i, label %bb.ap, label %bb.ao

._crit_edge.i:                                    ; preds = %.peel.next.i, %bb.an, %middle.block, %vec.epilog.middle.block, %.lr.ph256.split.us.i, %.preheader.i
  %i.fo = phi i32 [ %i.du, %.preheader.i ], [ 1, %.lr.ph256.split.us.i ], [ %i.du, %middle.block ], [ %i.iz, %bb.an ], [ %i.du, %vec.epilog.middle.block ], [ %i.du, %.peel.next.i ] ; 2 uses
  %.1190.lcssa.i = phi i8 [ %.0189260.i, %.preheader.i ], [ %.0189260.i, %.lr.ph256.split.us.i ], [ %.0189260.i, %middle.block ], [ %.2191.i, %bb.an ], [ %.0189260.i, %vec.epilog.middle.block ], [ %.0189260.i, %.peel.next.i ] ; 2 uses
  %.3188.lcssa.i = phi i8 [ %.2187261.i, %.preheader.i ], [ %.2187261.i, %.lr.ph256.split.us.i ], [ %.2187261.i, %middle.block ], [ %.4.i, %bb.an ], [ %.2187261.i, %vec.epilog.middle.block ], [ %.2187261.i, %.peel.next.i ] ; 2 uses
  %indvars.iv.next283.i = add nuw nsw i64 %indvars.iv282.i, 1 ; 2 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = icmp slt i64 %indvars.iv.next283.i, %i.fp
  br i1 %i.fq, label %.preheader.i, label %._crit_edge264.loopexit.i, !llvm.loop !266

.lr.ph256.split.i:                                ; preds = %.lr.ph256.i, %bb.an
  %indvars.iv280.i = phi i64 [ %indvars.iv.next281.i, %bb.an ], [ 0, %.lr.ph256.i ] ; 7 uses
  %i.fr = phi i32 [ %i.iz, %bb.an ], [ %i.du, %.lr.ph256.i ] ; 2 uses
  %.3188254.i = phi i8 [ %.4.i, %bb.an ], [ %.2187261.i, %.lr.ph256.i ] ; 2 uses
  %.1190253.i = phi i8 [ %.2191.i, %bb.an ], [ %.0189260.i, %.lr.ph256.i ] ; 2 uses
  %i.fs = icmp slt i64 %indvars.iv280.i, %i.ad
  br i1 %i.fs, label %bb.ac, label %bb.am

bb.ac:                                            ; preds = %.lr.ph256.split.i
  %i.ft = add nsw i64 %indvars.iv280.i, %i.dx
  %.idx349.i = shl i64 %i.ft, 3
  %i.fu = getelementptr i8, ptr %i.n, i64 %.idx349.i
  %i.fv = load <2 x float>, ptr %i.fu, align 4, !tbaa !79 ; 6 uses
  %i.fw = mul nuw nsw i32 %i.fr, %i.dy
  %i.fx = trunc nuw nsw i64 %indvars.iv280.i to i32 ; 2 uses
  %i.fy = add nsw i32 %i.fw, %i.fx
  %i.fz = shl nsw i32 %i.fy, 1
  %i.ga = sext i32 %i.fz to i64
  %i.gb = load ptr, ptr %i.bm, align 8, !tbaa !76
  %i.gc = getelementptr [4 x i8], ptr %i.gb, i64 %i.ga
  store <2 x float> %i.fv, ptr %i.gc, align 4, !tbaa !79
  %i.gd = trunc nuw i8 %.1190253.i to i1
  br i1 %i.gd, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %foldExtExtBinop = fmul <2 x float> %i.fv, %i.fv
  %i.ge = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.gf = fpext float %i.ge to double
  %i.gg = load float, ptr %i.ea, align 4, !tbaa !79
  %i.gh = mul i32 %i.cv, %i.fx
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr [4 x i8], ptr %i.n, i64 %i.gi ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !79
  %i.gl = fmul float %i.gg, %i.gk
  %i.gm = fpext float %i.gl to double
  %i.gn = invoke noundef zeroext i1 @_Z14gmx_within_tolddd(double noundef %i.gf, double noundef %i.gm, double noundef %.0192.i)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.ad
  br i1 %i.gn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.noexc45
  %foldExtExtBinop223 = fmul <2 x float> %i.fv, %i.fv
  %i.go = extractelement <2 x float> %foldExtExtBinop223, i64 1
  %i.gp = fpext float %i.go to double
  %i.gq = load float, ptr %i.eb, align 4, !tbaa !79
  %i.gr = getelementptr i8, ptr %i.gj, i64 4
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !79
  %i.gt = fmul float %i.gq, %i.gs
  %i.gu = fpext float %i.gt to double
  %i.gv = invoke noundef zeroext i1 @_Z14gmx_within_tolddd(double noundef %i.gp, double noundef %i.gu, double noundef %.0192.i)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.ae
  %i.gw = zext i1 %i.gv to i8
  br label %bb.af

bb.af:                                            ; preds = %.noexc46, %.noexc45, %bb.ac
  %i.gx = phi i8 [ 0, %.noexc45 ], [ 0, %bb.ac ], [ %i.gw, %.noexc46 ] ; 6 uses
  %i.gy = fdiv <2 x float> %i.fv, <float 6.000000e+00, float 1.200000e+01> ; 3 uses
  %i.gz = trunc nuw i8 %.3188254.i to i1
  br i1 %i.gz, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.ha = extractelement <2 x float> %i.gy, i64 0 ; 3 uses
  %i.hb = fcmp oeq float %i.ha, 0.000000e+00
  %i.hc = extractelement <2 x float> %i.gy, i64 1 ; 3 uses
  %i.hd = fcmp oeq float %i.hc, 0.000000e+00
  %or.cond5.i = select i1 %i.hb, i1 %i.hd, i1 false
  br i1 %or.cond5.i, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.he = load ptr, ptr %i.cb, align 8, !tbaa !76 ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.ec
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !79
  %i.hi = fcmp oeq float %i.hh, 0.000000e+00
  br i1 %i.hi, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.idx350.i = shl nuw nsw i64 %indvars.iv280.i, 3
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 %.idx350.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !79
  %i.hm = fcmp oeq float %i.hl, 0.000000e+00
  br i1 %i.hm, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %26 = fcmp ogt <2 x float> %i.gy, zeroinitializer ; 2 uses
  %27 = extractelement <2 x i1> %26, i64 0
  %28 = extractelement <2 x i1> %26, i64 1
  %or.cond7.i = select i1 %27, i1 %28, i1 false
  br i1 %or.cond7.i, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.hn = fdiv float %i.hc, %i.ha
  %i.ho = call noundef float @cbrtf(float noundef %i.hn) #37
  %i.hp = call noundef float @sqrtf(float noundef %i.ho) #22
  %i.hq = fpext float %i.hp to double
  %i.hr = load ptr, ptr %i.cb, align 8, !tbaa !76 ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ec
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !79
  %i.hu = shl nuw nsw i64 %indvars.iv280.i, 1     ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hu
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !79
  %i.hx = fadd float %i.ht, %i.hw
  %i.hy = fpext float %i.hx to double
  %i.hz = fmul double %i.hy, 5.000000e-01
  %i.ia = invoke noundef zeroext i1 @_Z14gmx_within_tolddd(double noundef %i.hq, double noundef %i.hz, double noundef %.0192.i)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.ak
  br i1 %i.ia, label %bb.al, label %bb.an

bb.al:                                            ; preds = %.noexc47
  %i.ib = fpext float %i.ha to double             ; 2 uses
  %i.ic = fmul nnan double %i.ib, 2.500000e-01
  %i.id = fmul double %i.ic, %i.ib
  %i.ie = fpext float %i.hc to double
  %i.if = fdiv double %i.id, %i.ie
  %i.ig = load ptr, ptr %i.cb, align 8, !tbaa !76 ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ec
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !79
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.hu
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.im = load float, ptr %i.il, align 4, !tbaa !79
  %i.in = fmul float %i.ij, %i.im
  %i.io = call noundef float @sqrtf(float noundef %i.in) #22
  %i.ip = fpext float %i.io to double
  %i.iq = invoke noundef zeroext i1 @_Z14gmx_within_tolddd(double noundef %i.if, double noundef %i.ip, double noundef %.0192.i)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %bb.al
  %i.ir = zext i1 %i.iq to i8
  br label %bb.an

bb.am:                                            ; preds = %.lr.ph256.split.i
  %i.is = mul nuw nsw i32 %i.fr, %i.dy
  %i.it = trunc nuw nsw i64 %indvars.iv280.i to i32
  %i.iu = add nsw i32 %i.is, %i.it
  %i.iv = shl nsw i32 %i.iu, 1
  %i.iw = sext i32 %i.iv to i64
  %i.ix = load ptr, ptr %i.bm, align 8, !tbaa !76
  %i.iy = getelementptr [4 x i8], ptr %i.ix, i64 %i.iw
  store <2 x float> zeroinitializer, ptr %i.iy, align 4, !tbaa !79
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.noexc48, %.noexc47, %bb.aj, %bb.ai, %bb.ah, %bb.af
  %.2191.i = phi i8 [ %.1190253.i, %bb.am ], [ %i.gx, %bb.ah ], [ %i.gx, %bb.ai ], [ %i.gx, %.noexc48 ], [ %i.gx, %.noexc47 ], [ %i.gx, %bb.aj ], [ %i.gx, %bb.af ] ; 2 uses
  %.4.i = phi i8 [ %.3188254.i, %bb.am ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ %i.ir, %.noexc48 ], [ 0, %.noexc47 ], [ 0, %bb.aj ], [ 0, %bb.af ] ; 2 uses
  %indvars.iv.next281.i = add nuw nsw i64 %indvars.iv280.i, 1 ; 2 uses
  %i.iz = load i32, ptr %0, align 8, !tbaa !109   ; 3 uses
  %i.ja = sext i32 %i.iz to i64
  %i.jb = icmp slt i64 %indvars.iv.next281.i, %i.ja
  br i1 %i.jb, label %.lr.ph256.split.i, label %._crit_edge.i, !llvm.loop !267

bb.ao:                                            ; preds = %._crit_edge264.i
  %i.jc = select i1 %.0189.lcssa.i, ptr @.str.27, ptr @.str.25
  %i.jd = trunc nuw i8 %.2187.lcssa.i to i1
  %i.je = select i1 %i.jd, ptr @.str.27, ptr @.str.25
  %i.jf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.fn, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.jc, ptr noundef nonnull %i.je) #22 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge264.i
  switch i32 %3, label %bb.aq [
    i32 6, label %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit.i
    i32 1, label %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit.i
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.jg = and i32 %3, -2
  %i.jh = icmp eq i32 %i.jg, 2
  br label %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit.i

_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ap
  %i.ji = phi i1 [ true, %bb.ap ], [ %i.jh, %bb.aq ], [ true, %bb.ap ]
  br i1 %.not.i, label %.critedge.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit.i
  %i.jj = load i8, ptr %i.o, align 4, !tbaa !288, !range !119, !noundef !122
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %_ZNKRSt8optionalIN3gmx17LJCombinationRuleEE5valueEv.exit219.i, label %bb.as

_ZNKRSt8optionalIN3gmx17LJCombinationRuleEE5valueEv.exit219.i: ; preds = %bb.ar
  %i.jl = load i32, ptr %4, align 4, !tbaa !289
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKRSt8optionalIN3gmx17LJCombinationRuleEE5valueEv.exit219.i, %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit.i
  %i.jm = phi i32 [ %i.jl, %_ZNKRSt8optionalIN3gmx17LJCombinationRuleEE5valueEv.exit219.i ], [ %5, %_ZN3gmxL28kernelTypeUsesSimplePairlistENS_15NbnxmKernelTypeE.exit.i ]
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.jm, ptr %i.jn, align 8, !tbaa !123
  br label %bb.bo

bb.as:                                            ; preds = %bb.ar
  br i1 %.0189.lcssa.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.jo, align 8, !tbaa !123
  br label %bb.ba

bb.au:                                            ; preds = %bb.as
  %i.jp = trunc nuw i8 %.2187.lcssa.i to i1
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %i.jp, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 1, ptr %i.jq, align 8, !tbaa !123
  br label %bb.ba

bb.aw:                                            ; preds = %bb.au
  store i32 2, ptr %i.jq, align 8, !tbaa !123
  %i.jr = load ptr, ptr %i.cb, align 8, !tbaa !76 ; 2 uses
  %i.js = load ptr, ptr %i.cc, align 8, !tbaa !75
  %.not.i.i220.i = icmp eq ptr %i.js, %i.jr
  br i1 %.not.i.i220.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.jr, ptr %i.cc, align 8, !tbaa !75
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.jt, ptr %13, align 8, !tbaa !100
  %i.ju = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 0, ptr %i.ju, align 8, !tbaa !102
  store i8 0, ptr %i.jt, align 8, !tbaa !99
  %i.jv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.17, i64 noundef 53)
          to label %bb.bi unwind label %bb.az     ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ba:                                            ; preds = %bb.av, %bb.at
  %i.jx = phi i64 [ 1, %bb.av ], [ 0, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.jy, ptr %13, align 8, !tbaa !100
  %i.jz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  store i64 0, ptr %i.jz, align 8, !tbaa !102
  store i8 0, ptr %i.jy, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3gmx17enumValueToStringENS_17LJCombinationRuleEE24s_ljCombinationRuleNames, i64 %i.jx
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !16
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.18, ptr noundef %i.kb)
          to label %bb.bb unwind label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %i.kc = load ptr, ptr %13, align 8, !tbaa !98   ; 6 uses
  %i.kd = icmp eq ptr %i.kc, %i.jy
  %i.ke = load ptr, ptr %14, align 8, !tbaa !98   ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.kg = icmp eq ptr %i.ke, %i.kf                ; 2 uses
  br i1 %i.kd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bb
  br i1 %i.kg, label %bb.bc, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.bb
  br i1 %i.kg, label %bb.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !102 ; 3 uses
  %i.kj = icmp ult i64 %i.ki, 16
  call void @llvm.assume(i1 %i.kj)
  switch i64 %i.ki, label %bb.be [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.kk = load i8, ptr %i.ke, align 1, !tbaa !99
  store i8 %i.kk, ptr %i.kc, align 1, !tbaa !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.be:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kc, ptr align 1 %i.ke, i64 %i.ki, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.be, %bb.bd, %bb.bc
  %i.kl = load i64, ptr %i.kh, align 8, !tbaa !102 ; 2 uses
  store i64 %i.kl, ptr %i.jz, align 8, !tbaa !102
  %i.km = load ptr, ptr %13, align 8, !tbaa !98
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kl
  store i8 0, ptr %i.kn, align 1, !tbaa !99
  %.pre.i.i = load ptr, ptr %14, align 8, !tbaa !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
end_hunk_0
begin_hunk_1_@_ZN3gmx16nbnxn_atomdata_t12reduceForcesENS_12AtomLocalityERKNS_7GridSetENS_8ArrayRefINS_11BasicVectorIfEEEE.omp_outlined:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.o:                                             ; preds = %bb.l
  %i.aaj = landingpad { ptr, i32 }
          catch ptr null
  %i.aak = extractvalue { ptr, i32 } %i.aaj, 0
  call void @__clang_call_terminate(ptr %i.aak) #34
  unreachable

bb.p:                                             ; preds = %bb.k
  call void @__clang_call_terminate(ptr %.136) #34
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx40nbnxn_atomdata_add_nbat_fshift_to_fshiftERKNS_16nbnxn_atomdata_tENS_8ArrayRefINS_11BasicVectorIfEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(656) %0, ptr nofree captures(none) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 3 uses
  %.not24 = icmp eq ptr %i.b, %i.d
  br i1 %.not24, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %bb.a, %.preheader.us
  %indvars.iv38 = phi i64 [ %indvars.iv.next39.4, %.preheader.us ], [ 0, %bb.a ] ; 6 uses
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv38 ; 3 uses
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !79
  %i.g = fadd <2 x float> %i.f, zeroinitializer
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !79
  %i.j = fadd float %i.i, 0.000000e+00
  store <2 x float> %i.g, ptr %i.e, align 4
  store float %i.j, ptr %i.h, align 4, !tbaa !99
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv38 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.m = load <2 x float>, ptr %i.l, align 4, !tbaa !79
  %i.n = fadd <2 x float> %i.m, zeroinitializer
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !79
  %i.q = fadd float %i.p, 0.000000e+00
  store <2 x float> %i.n, ptr %i.l, align 4
  store float %i.q, ptr %i.o, align 4, !tbaa !99
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv38 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = load <2 x float>, ptr %i.s, align 4, !tbaa !79
  %i.u = fadd <2 x float> %i.t, zeroinitializer
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !79
  %i.x = fadd float %i.w, 0.000000e+00
  store <2 x float> %i.u, ptr %i.s, align 4
  store float %i.x, ptr %i.v, align 4, !tbaa !99
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv38 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 36 ; 2 uses
  %i.aa = load <2 x float>, ptr %i.z, align 4, !tbaa !79
  %i.ab = fadd <2 x float> %i.aa, zeroinitializer
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 44 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !79
  %i.ae = fadd float %i.ad, 0.000000e+00
  store <2 x float> %i.ab, ptr %i.z, align 4
  store float %i.ae, ptr %i.ac, align 4, !tbaa !99
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv38 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.ag, align 4, !tbaa !79
  %i.ai = fadd <2 x float> %i.ah, zeroinitializer
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 56 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !79
  %i.al = fadd float %i.ak, 0.000000e+00
  store <2 x float> %i.ai, ptr %i.ag, align 4
  store float %i.al, ptr %i.aj, align 4, !tbaa !99
  %indvars.iv.next39.4 = add nuw nsw i64 %indvars.iv38, 5 ; 2 uses
  %exitcond41.not.4 = icmp eq i64 %indvars.iv.next39.4, 45
  br i1 %exitcond41.not.4, label %.split33.us, label %.preheader.us, !llvm.loop !421

.preheader:                                       ; preds = %bb.a, %._crit_edge.1
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %._crit_edge.1 ], [ 0, %bb.a ] ; 5 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  br label %bb.c

.split33.us:                                      ; preds = %._crit_edge, %.preheader.us
  ret void

._crit_edge:                                      ; preds = %bb.c
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.an = load <2 x float>, ptr %i.am, align 4, !tbaa !79
  %i.ao = fadd <2 x float> %i.bn, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !79
  %i.ar = fadd float %i.bq, %i.aq
  store <2 x float> %i.ao, ptr %i.am, align 4
  store float %i.ar, ptr %i.ap, align 4, !tbaa !99
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, 44
  br i1 %exitcond.not, label %.split33.us, label %.preheader.1

.preheader.1:                                     ; preds = %._crit_edge
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next, 12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.1
  %.sroa.10.028.1 = phi float [ 0.000000e+00, %.preheader.1 ], [ %i.ba, %bb.b ]
  %.sroa.014.027.1 = phi ptr [ %i.b, %.preheader.1 ], [ %i.bb, %bb.b ] ; 2 uses
  %i.as = phi <2 x float> [ zeroinitializer, %.preheader.1 ], [ %i.ax, %bb.b ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.014.027.1, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !76
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.1 ; 2 uses
  %i.aw = load <2 x float>, ptr %i.av, align 4, !tbaa !79
  %i.ax = fadd <2 x float> %i.as, %i.aw           ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !79
  %i.ba = fadd float %.sroa.10.028.1, %i.az       ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.014.027.1, i64 144 ; 2 uses
  %.not.1 = icmp eq ptr %i.bb, %i.d
  br i1 %.not.1, label %._crit_edge.1, label %bb.b

._crit_edge.1:                                    ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv.next ; 3 uses
  %i.bd = load <2 x float>, ptr %i.bc, align 4, !tbaa !79
  %i.be = fadd <2 x float> %i.ax, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !79
  %i.bh = fadd float %i.ba, %i.bg
  store <2 x float> %i.be, ptr %i.bc, align 4
  store float %i.bh, ptr %i.bf, align 4, !tbaa !99
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %.preheader

bb.c:                                             ; preds = %.preheader, %bb.c
  %.sroa.10.028 = phi float [ 0.000000e+00, %.preheader ], [ %i.bq, %bb.c ]
  %.sroa.014.027 = phi ptr [ %i.b, %.preheader ], [ %i.br, %bb.c ] ; 2 uses
  %i.bi = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.bn, %bb.c ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.014.027, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !76
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx ; 2 uses
  %i.bm = load <2 x float>, ptr %i.bl, align 4, !tbaa !79
  %i.bn = fadd <2 x float> %i.bi, %i.bm           ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !79
  %i.bq = fadd float %.sroa.10.028, %i.bp         ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.014.027, i64 144 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.d
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx16nbnxn_atomdata_t16clearForceBufferEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(656) %0, i32 noundef %1) local_unnamed_addr #24 align 2 {
bb.a:
  %2 = alloca %"struct.std::array.132", align 16  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.b = load i8, ptr %i.a, align 8, !tbaa !116, !range !119, !noundef !122
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.i = sext i32 %1 to i64
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !138
  %i.k = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.n = srem i32 %1, 64
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw i64 1, %i.o
  %i.q = sdiv i32 %1, 64
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.r
  store i64 %i.p, ptr %i.s, align 8, !tbaa !101
  %.not.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i, label %_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.t = ptrtoint ptr %i.e to i64
  %i.u = ptrtoint ptr %i.g to i64
  %i.v = sub i64 %i.u, %i.t
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = load <2 x i64>, ptr %2, align 16         ; 5 uses
  %xtraiter = and i64 %i.w, 3                     ; 3 uses
  %i.y = icmp ult i64 %i.w, 4
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.w, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.new
  %.010.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.as, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.g ]
  %i.z = getelementptr inbounds [16 x i8], ptr %i.e, i64 %.010.i
  %i.aa = load <2 x i64>, ptr %i.z, align 8
  %i.ab = and <2 x i64> %i.aa, %i.x
  %3 = icmp eq <2 x i64> %i.ab, zeroinitializer   ; 2 uses
  %4 = extractelement <2 x i1> %3, i64 0
  %5 = extractelement <2 x i1> %3, i64 1
  %6 = select i1 %4, i1 %5, i1 false
  br i1 %6, label %bb.d, label %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i

_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i: ; preds = %bb.c
  %.idx.i = mul i64 %.010.i, 192
  %i.ac = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.ac, i8 0, i64 192, i1 false), !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i, %bb.c
  %i.ad = or disjoint i64 %.010.i, 1              ; 2 uses
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.ad
  %i.af = load <2 x i64>, ptr %i.ae, align 8
  %i.ag = and <2 x i64> %i.af, %i.x
  %7 = icmp eq <2 x i64> %i.ag, zeroinitializer   ; 2 uses
  %8 = extractelement <2 x i1> %7, i64 0
  %9 = extractelement <2 x i1> %7, i64 1
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %bb.e, label %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.1

_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.1: ; preds = %bb.d
  %.idx.i.1 = mul i64 %i.ad, 192
  %i.ah = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.ah, i8 0, i64 192, i1 false), !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.1, %bb.d
  %i.ai = or disjoint i64 %.010.i, 2              ; 2 uses
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.ai
  %i.ak = load <2 x i64>, ptr %i.aj, align 8
  %i.al = and <2 x i64> %i.ak, %i.x
  %11 = icmp eq <2 x i64> %i.al, zeroinitializer  ; 2 uses
  %12 = extractelement <2 x i1> %11, i64 0
  %13 = extractelement <2 x i1> %11, i64 1
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %bb.f, label %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.2

_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.2: ; preds = %bb.e
  %.idx.i.2 = mul i64 %i.ai, 192
  %i.am = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i.2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.am, i8 0, i64 192, i1 false), !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.2, %bb.e
  %i.an = or disjoint i64 %.010.i, 3              ; 2 uses
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.an
  %i.ap = load <2 x i64>, ptr %i.ao, align 8
  %i.aq = and <2 x i64> %i.ap, %i.x
  %15 = icmp eq <2 x i64> %i.aq, zeroinitializer  ; 2 uses
  %16 = extractelement <2 x i1> %15, i64 0
  %17 = extractelement <2 x i1> %15, i64 1
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %bb.g, label %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.3

_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.3: ; preds = %bb.f
  %.idx.i.3 = mul i64 %i.an, 192
  %i.ar = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i.3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.ar, i8 0, i64 192, i1 false), !tbaa !79
  br label %bb.g

bb.g:                                             ; preds = %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.3, %bb.f
  %i.as = add nuw i64 %.010.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !422

_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.010.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.as, %_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.epil.preheader
  %.010.i.epil = phi i64 [ %.010.i.epil.init, %.epil.preheader ], [ %i.ax, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.at = getelementptr inbounds [16 x i8], ptr %i.e, i64 %.010.i.epil
  %i.au = load <2 x i64>, ptr %i.at, align 8
  %i.av = and <2 x i64> %i.au, %i.x
  %19 = icmp eq <2 x i64> %i.av, zeroinitializer  ; 2 uses
  %20 = extractelement <2 x i1> %19, i64 0
  %21 = extractelement <2 x i1> %19, i64 1
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %bb.i, label %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.epil

_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.epil: ; preds = %bb.h
  %.idx.i.epil = mul i64 %.010.i.epil, 192
  %i.aw = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.aw, i8 0, i64 192, i1 false), !tbaa !79
  br label %bb.i

bb.i:                                             ; preds = %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit.i.epil, %bb.h
  %i.ax = add nuw i64 %.010.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit, label %bb.h, !llvm.loop !423

_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit: ; preds = %_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit.loopexit.unr-lcssa, %bb.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit

bb.j:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.az = sext i32 %1 to i64
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !138
  %i.bb = getelementptr inbounds nuw [144 x i8], ptr %i.ba, i64 %i.az ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !76 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !75 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.bd, %i.bf
  br i1 %.not5.i.i.i.i, label %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.j
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoaddr ptr %i.bd to i64
  %reass.sub = sub i64 %i.bg, %i.bh
  %i.bi = and i64 %reass.sub, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bd, i8 0, i64 %i.bi, i1 false), !tbaa !79
  br label %_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit

_ZN3gmxL14clearBufferAllENS_8ArrayRefIfEE.exit:   ; preds = %.lr.ph.i.i.i.preheader.i, %bb.j, %_ZN3gmxL18clearBufferFlaggedILi3EEEviNS_8ArrayRefIKSt5arrayImLm2EEEENS1_IfEE.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #29

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { cold noreturn }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { nounwind }
attributes #23 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #25 = { nounwind memory(none) }
attributes #26 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #33 = { noreturn }
attributes #34 = { noreturn nounwind }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { builtin nounwind }
attributes #37 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !82}
!1 = distinct !{!1, !82}
!2 = distinct !{!2, !82}
!3 = distinct !{!3, !82}
!4 = distinct !{!4, !82}
!5 = !{i32 7, !"openmp", i32 51}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTSN3gmx13PinningPolicyE", !10, i64 0}
!18 = !{!"bool", !10, i64 0}
!19 = !{!"_ZTSN3gmx20HostAllocationPolicyE", !17, i64 0, !18, i64 4}
!20 = !{!"_ZTSN3gmx9AllocatorIfNS_20HostAllocationPolicyEEE", !19, i64 0}
!21 = !{!"p1 float", !14, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE12_Vector_implE", !20, i64 0, !22, i64 8}
!24 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE", !23, i64 0}
!25 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE", !24, i64 0}
!26 = !{!"_ZTSN3gmx17LJCombinationRuleE", !10, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!28 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !27, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !28, i64 0}
!30 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !29, i64 0}
!31 = !{!"_ZTSN3gmx9AllocatorIiNS_20HostAllocationPolicyEEE", !19, i64 0}
!32 = !{!"p1 int", !14, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE12_Vector_implE", !31, i64 0, !33, i64 8}
!35 = !{!"_ZTSSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE", !35, i64 0}
!37 = !{!"p1 _ZTSN3gmx22EnergyGroupsPerClusterE", !14, i64 0}
!38 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx22EnergyGroupsPerClusterELb0EE", !37, i64 0}
!39 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EEE", !38, i64 0}
!40 = !{!"_ZTSSt5tupleIJPN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EEE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_ELb1ELb1EE", !41, i64 0}
!43 = !{!"_ZTSSt10unique_ptrIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EE", !42, i64 0}
!44 = !{!"_ZTSN3gmx16nbnxn_atomdata_t6ParamsE", !11, i64 0, !25, i64 8, !26, i64 40, !25, i64 48, !30, i64 80, !36, i64 104, !25, i64 136, !25, i64 168, !36, i64 200, !25, i64 232, !25, i64 264, !36, i64 296, !25, i64 328, !25, i64 360, !11, i64 392, !43, i64 400}
!45 = !{!"_ZTSN3gmx9AllocatorINS_11BasicVectorIfEENS_20HostAllocationPolicyEEE", !19, i64 0}
!46 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !14, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE12_Vector_implE", !45, i64 0, !47, i64 8}
!49 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE", !49, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!52 = !{!"_ZTSNSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !51, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE", !53, i64 0}
!55 = !{!"p1 long", !14, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseImN3gmx9AllocatorImNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseImN3gmx9AllocatorImNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !56, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseImN3gmx9AllocatorImNS0_23AlignedAllocationPolicyEEEE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorImN3gmx9AllocatorImNS0_23AlignedAllocationPolicyEEEE", !58, i64 0}
!60 = !{!"_ZTSN3gmx16nbnxn_atomdata_t9SimdMasksE", !30, i64 0, !30, i64 24, !54, i64 48, !59, i64 72}
!61 = !{!"p1 _ZTSN3gmx23nbnxn_atomdata_output_tE", !14, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIN3gmx23nbnxn_atomdata_output_tESaIS1_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!"_ZTSNSt12_Vector_baseIN3gmx23nbnxn_atomdata_output_tESaIS1_EE12_Vector_implE", !62, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseIN3gmx23nbnxn_atomdata_output_tESaIS1_EE", !63, i64 0}
!65 = !{!"_ZTSSt6vectorIN3gmx23nbnxn_atomdata_output_tESaIS1_EE", !64, i64 0}
!66 = !{!"p1 _ZTSSt5arrayImLm2EE", !14, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseISt5arrayImLm2EESaIS1_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!"_ZTSNSt12_Vector_baseISt5arrayImLm2EESaIS1_EE12_Vector_implE", !67, i64 0}
!69 = !{!"_ZTSSt12_Vector_baseISt5arrayImLm2EESaIS1_EE", !68, i64 0}
!70 = !{!"_ZTSSt6vectorISt5arrayImLm2EESaIS1_EE", !69, i64 0}
!71 = !{!"_ZTSN3gmx16nbnxn_atomdata_tE", !44, i64 0, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !18, i64 424, !50, i64 432, !11, i64 464, !11, i64 468, !25, i64 472, !60, i64 504, !65, i64 600, !18, i64 624, !70, i64 632}
!72 = !{!71, !11, i64 408}
!73 = !{!71, !11, i64 412}
!74 = !{!71, !11, i64 464}
!75 = !{!22, !21, i64 8}
!76 = !{!22, !21, i64 0}
!77 = !{!22, !21, i64 16}
!78 = !{!"float", !10, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"vtable pointer", !9, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"llvm.loop.mustprogress"}
end_hunk_1
