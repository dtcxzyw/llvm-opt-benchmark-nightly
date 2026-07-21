inline.NumInlined: 374
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8facebook5velox9functions3sfm9SfmSketch9mergeWithERKS3_:bb.a
  %i.am = lshr exact i64 %i.al, 6
  %i.an = add nuw nsw i64 %i.am, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.al, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ao = add nsw i64 %i.ak, -64
  %i.ap = lshr exact i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.aq
  %scevgep76 = getelementptr i8, ptr %i.ai, i64 %i.aq
  %bound0 = icmp ult ptr %i.ag, %scevgep76
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check77 = icmp ult i64 %i.al, 960
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.an, 12
  %n.vec = and i64 %i.an, 576460752303423472      ; 4 uses
  %i.ar = shl i64 %n.vec, 6                       ; 2 uses
  %i.as = or disjoint i64 %i.ar, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = and i64 %index, 288230376151711728      ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.at ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %i.au, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %wide.load78 = load <4 x i64>, ptr %i.av, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %wide.load79 = load <4 x i64>, ptr %i.aw, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %wide.load80 = load <4 x i64>, ptr %i.ax, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.at ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %wide.load81 = load <4 x i64>, ptr %i.ay, align 8, !tbaa !31, !alias.scope !82
  %wide.load82 = load <4 x i64>, ptr %i.az, align 8, !tbaa !31, !alias.scope !82
  %wide.load83 = load <4 x i64>, ptr %i.ba, align 8, !tbaa !31, !alias.scope !82
  %wide.load84 = load <4 x i64>, ptr %i.bb, align 8, !tbaa !31, !alias.scope !82
  %i.bc = or <4 x i64> %wide.load81, %wide.load
  %i.bd = or <4 x i64> %wide.load82, %wide.load78
  %i.be = or <4 x i64> %wide.load83, %wide.load79
  %i.bf = or <4 x i64> %wide.load84, %wide.load80
  store <4 x i64> %i.bc, ptr %i.au, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  store <4 x i64> %i.bd, ptr %i.av, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  store <4 x i64> %i.be, ptr %i.aw, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  store <4 x i64> %i.bf, ptr %i.ax, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec87 = and i64 %i.an, 576460752303423484    ; 3 uses
  %i.bh = shl i64 %n.vec87, 6                     ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 2 uses
  %i.bj = and i64 %index88, 288230376151711740    ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bj ; 2 uses
  %wide.load89 = load <4 x i64>, ptr %i.bk, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bj
  %wide.load90 = load <4 x i64>, ptr %i.bl, align 8, !tbaa !31, !alias.scope !82
  %i.bm = or <4 x i64> %wide.load90, %wide.load89
  store <4 x i64> %i.bm, ptr %i.bk, align 8, !tbaa !31, !alias.scope !79, !noalias !82
  %index.next91 = add nuw i64 %index88, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next91, %n.vec87
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !89

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n92 = icmp eq i64 %i.an, %n.vec87
  br i1 %cmp.n92, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv56.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ 64, %vector.memcheck ], [ %i.as, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.m
  %.not34.i.i.i = icmp eq i32 %i.y, %i.aj
  br i1 %.not34.i.i.i, label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit, label %bb.n

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %.lr.ph.i.i.i ], [ %indvars.iv56.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i ], [ %indvars.iv.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bo = lshr exact i64 %indvars.iv56, 6         ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bo ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bo
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !31
  %i.bt = or i64 %i.bs, %i.bq
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ak
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !90

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.bu = lshr i32 %i.y, 6
  %i.bv = and i32 %i.y, 63
  %i.bw = zext nneg i32 %i.bv to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.bw      ; 2 uses
  %i.bx = xor i64 %notmask.i36.i.i.i, -1
  %i.by = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.by ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !31 ; 2 uses
  %i.cb = and i64 %i.ca, %notmask.i36.i.i.i
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.by
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !31
  %i.ce = or i64 %i.cd, %i.ca
  %i.cf = and i64 %i.ce, %i.bx
  %i.cg = or disjoint i64 %i.cf, %i.cb
  store i64 %i.cg, ptr %i.bz, align 8, !tbaa !31
  br label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit

bb.o:                                             ; preds = %bb.k
  %i.ch = fadd double %i.aa, %i.ad
  %i.ci = fmul double %i.aa, 3.000000e+00
  %i.cj = fmul double %i.ci, %i.ad
  %i.ck = fsub double %i.ch, %i.cj
  %i.cl = fmul double %i.aa, 2.000000e+00         ; 2 uses
  %i.cm = fmul double %i.cl, %i.ad
  %i.cn = fsub double 1.000000e+00, %i.cm
  %i.co = fdiv double %i.ck, %i.cn                ; 2 uses
  %i.cp = fmul double %i.co, 2.000000e+00
  %i.cq = fsub double 1.000000e+00, %i.cp         ; 2 uses
  %i.cr = fsub double 1.000000e+00, %i.cl
  %i.cs = fmul double %i.ad, 2.000000e+00
  %i.ct = fsub double 1.000000e+00, %i.cs
  %i.cu = fmul double %i.cr, %i.ct
  %i.cv = fdiv double %i.cq, %i.cu                ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 2576 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !30, !range !91, !noundef !92
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 5489, ptr %i.da, align 8, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %store_forwarded = phi i64 [ 5489, %bb.p ], [ %i.dl, %bb.r ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.p ], [ %i.dm, %bb.r ] ; 4 uses
  %i.db = getelementptr [8 x i8], ptr %i.da, i64 %.011.i.i.i.i
  %i.dc = lshr i64 %store_forwarded, 62
  %i.dd = xor i64 %i.dc, %store_forwarded
  %i.de = mul i64 %i.dd, 6364136223846793005
  %i.df = add i64 %i.de, %.011.i.i.i.i            ; 3 uses
  store i64 %i.df, ptr %i.db, align 8, !tbaa !31
  %i.dg = add nuw nsw i64 %.011.i.i.i.i, 1        ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dg, 312
  br i1 %exitcond.not.i.i.i.i, label %_ZNSt8optionalIN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategyEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = getelementptr [8 x i8], ptr %i.da, i64 %i.dg
  %i.di = lshr i64 %i.df, 62
  %i.dj = xor i64 %i.di, %i.df
  %i.dk = mul i64 %i.dj, 6364136223846793005
  %i.dl = add i64 %i.dk, %i.dg                    ; 2 uses
  store i64 %i.dl, ptr %i.dh, align 8, !tbaa !31
  %i.dm = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.q

_ZNSt8optionalIN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategyEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 2504
  store i64 312, ptr %i.dn, align 8, !tbaa !33
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategyE, i64 16), ptr %i.cw, align 8, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2504) %i.do, ptr noundef nonnull align 8 dereferenceable(2504) %i.da, i64 2504, i1 false), !tbaa.struct !37
  store i8 1, ptr %i.cx, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt8optionalIN8facebook5velox9functions3sfm36MersenneTwisterRandomizationStrategyEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, %bb.o
  %i.dp = icmp sgt i32 %i.y, 0
  br i1 %i.dp, label %.lr.ph, label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit

.lr.ph:                                           ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %7 = fsub double 1.000000e+00, %i.aa
  %8 = fsub double 1.000000e+00, %i.ad
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit
  %indvars.iv61 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next62, %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit ] ; 6 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !47 ; 2 uses
  %i.dt = lshr i64 %indvars.iv61, 6               ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !31
  %i.dw = and i64 %indvars.iv61, 63
  %i.dx = shl nuw i64 1, %i.dw                    ; 2 uses
  %9 = and i64 %i.dv, %i.dx
  %.not53 = icmp eq i64 %9, 0
  %10 = select i1 %.not53, double 0.000000e+00, double 1.000000e+00
  %11 = load ptr, ptr %i.dr, align 8, !tbaa !47
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.dt
  %13 = load i64, ptr %12, align 8, !tbaa !31
  %14 = and i64 %13, %i.dx
  %.not54 = icmp eq i64 %14, 0
  %15 = select i1 %.not54, double 0.000000e+00, double 1.000000e+00
  %16 = fsub double %7, %10
  %i.dy = fmul double %i.cv, %16
  %17 = fsub double %8, %15
  %i.dz = fmul double %i.dy, %17
  %i.ea = fsub double %i.cq, %i.dz
  %i.eb = fmul double %i.cv, %i.ea
  %i.ec = fadd double %i.co, %i.eb                ; 2 uses
  %i.ed = fcmp ogt double %i.ec, 0.000000e+00
  %.sroa.speculated44 = select i1 %i.ed, double %i.ec, double 0.000000e+00 ; 2 uses
  %i.ee = fcmp olt double %.sroa.speculated44, 1.000000e+00
  %.sroa.speculated = select i1 %i.ee, double %.sroa.speculated44, double 1.000000e+00
  %i.ef = load ptr, ptr %i.cw, align 8, !tbaa !35
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = tail call noundef zeroext i1 %i.eg(ptr noundef nonnull align 8 dereferenceable(2512) %i.cw, double noundef %.sroa.speculated)
  %i.ei = lshr i64 %indvars.iv61, 3
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ei ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !38  ; 2 uses
  br i1 %i.eh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.el = trunc i64 %indvars.iv61 to i8
  %i.em = and i8 %i.el, 7
  %i.en = shl nuw i8 1, %i.em
  %i.eo = or i8 %i.ek, %i.en
  br label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit

bb.v:                                             ; preds = %bb.t
  %i.ep = and i64 %indvars.iv61, 7
  %i.eq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !38
  %i.es = and i8 %i.er, %i.ek
  br label %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit

_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit:    ; preds = %bb.u, %bb.v
  %.sink.i = phi i8 [ %i.es, %bb.v ], [ %i.eo, %bb.u ]
  store i8 %.sink.i, ptr %i.ej, align 1, !tbaa !38
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count
  br i1 %exitcond.not, label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit.loopexit, label %bb.t, !llvm.loop !93

_ZN8facebook5velox4bits6orBitsEPmPKmii.exit.loopexit: ; preds = %_ZN8facebook5velox4bits6setBitImEEvPT_mb.exit
  %.pre = load double, ptr %i.z, align 8, !tbaa !27
  br label %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit

_ZN8facebook5velox4bits6orBitsEPmPKmii.exit:      ; preds = %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit.loopexit, %bb.s, %bb.n, %._crit_edge.i.i.i, %bb.l
  %i.et = phi double [ %.pre, %_ZN8facebook5velox4bits6orBitsEPmPKmii.exit.loopexit ], [ %i.aa, %bb.s ], [ %i.aa, %bb.n ], [ %i.aa, %._crit_edge.i.i.i ], [ %i.aa, %bb.l ] ; 3 uses
  %i.eu = load double, ptr %i.ac, align 8, !tbaa !27 ; 3 uses
  %i.ev = fadd double %i.et, %i.eu
  %i.ew = fmul double %i.et, 3.000000e+00
  %i.ex = fmul double %i.ew, %i.eu
  %i.ey = fsub double %i.ev, %i.ex
  %i.ez = fmul double %i.et, 2.000000e+00
  %i.fa = fmul double %i.ez, %i.eu
  %i.fb = fsub double 1.000000e+00, %i.fa
  %i.fc = fdiv double %i.ey, %i.fb
  store double %i.fc, ptr %i.z, align 8, !tbaa !27
  ret void

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEd(ptr noundef nonnull align 8 dereferenceable(2584) %0, double noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.49", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.facebook::velox::functions::sfm::SecureRandomizationStrategy", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdE18veloxCheckFailArgs, ptr noundef nonnull @.str.13) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !27
  %i.f = fcmp ogt double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.d, label %bb.e, !prof !28

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.26) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = fcmp ule double %1, 0.000000e+00
  br i1 %i.g, label %bb.f, label %bb.i, !prof !28

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !94
  store double %1, ptr %2, align 16, !tbaa !38, !noalias !94
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.h, align 16, !tbaa !38, !alias.scope !97, !noalias !94
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.28, i64 66, i64 26, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !94
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.28) #18
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !42     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.m = load i64, ptr %i.k, align 8, !tbaa !38
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.i

bb.i:                                             ; preds = %bb.e
  %i.o = fcmp oeq double %1, +inf
  br i1 %i.o, label %_ZN8facebook5velox9functions3sfm9SfmSketch38calculateRandomizedResponseProbabilityEd.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call double @exp(double noundef %1) #19, !tbaa !3
  %i.q = fadd double %i.p, 1.000000e+00
  %i.r = fdiv double 1.000000e+00, %i.q
  br label %_ZN8facebook5velox9functions3sfm9SfmSketch38calculateRandomizedResponseProbabilityEd.exit

_ZN8facebook5velox9functions3sfm9SfmSketch38calculateRandomizedResponseProbabilityEd.exit: ; preds = %bb.i, %bb.j
  %.0.i = phi double [ %i.r, %bb.j ], [ 0.000000e+00, %bb.i ]
  store double %.0.i, ptr %i.d, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.u = load i8, ptr %i.t, align 8, !tbaa !30, !range !91, !noundef !92
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN8facebook5velox9functions3sfm9SfmSketch38calculateRandomizedResponseProbabilityEd.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !26
  %i.y = load i32, ptr %0, align 8, !tbaa !7
  %i.z = mul nsw i32 %i.y, %i.x                   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i, label %"_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdENK3$_0clINS2_36MersenneTwisterRandomizationStrategyEEEDaRT_.exit"

.lr.ph.i:                                         ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.i
  %.01.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ap, %bb.n ] ; 3 uses
  %i.ac = load double, ptr %i.d, align 8, !tbaa !27
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(2512) %i.s, double noundef %i.ac), !inline_history !100
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !46
  %i.ah = trunc i32 %.01.i to i8
  %i.ai = and i8 %i.ah, 7
  %i.aj = shl nuw i8 1, %i.ai
  %i.ak = lshr i32 %.01.i, 3
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !38
  %i.ao = xor i8 %i.an, %i.aj
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = add nuw nsw i32 %.01.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ap, %i.z
  br i1 %exitcond.not.i, label %"_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdENK3$_0clINS2_36MersenneTwisterRandomizationStrategyEEEDaRT_.exit", label %bb.l, !llvm.loop !101

bb.o:                                             ; preds = %_ZN8facebook5velox9functions3sfm9SfmSketch38calculateRandomizedResponseProbabilityEd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox9functions3sfm27SecureRandomizationStrategyE, i64 16), ptr %4, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !26
  %i.as = load i32, ptr %0, align 8, !tbaa !7
  %i.at = mul nsw i32 %i.as, %i.ar                ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i5, label %"_ZZN8facebook5velox9functions3sfm9SfmSketch13enablePrivacyEdENK3$_0clINS2_27SecureRandomizationStrategyEEEDaRT_.exit"

.lr.ph.i5:                                        ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.i5
  %.01.i6 = phi i32 [ 0, %.lr.ph.i5 ], [ %i.bj, %bb.r ] ; 3 uses
  %i.aw = load double, ptr %i.d, align 8, !tbaa !27
  %i.ax = load ptr, ptr %4, align 8, !tbaa !35
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef %i.aw), !inline_history !102
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
end_hunk_0
