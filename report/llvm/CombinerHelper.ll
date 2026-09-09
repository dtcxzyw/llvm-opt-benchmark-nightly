Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CombinerHelper?download=true
inline.NumInlined: 14638
inline.NumDeleted: 5068
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4llvm14CombinerHelper24matchShuffleDisjointMaskERNS_12MachineInstrERSt8functionIFvRNS_16MachineIRBuilderEEE:bb.a

bb.d:                                             ; preds = %bb.c
  %i.r = and i32 %i.p, 2147483647                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 472
  %i.t = load i32, ptr %i.s, align 8, !tbaa !253
  %i.u = icmp ugt i32 %i.t, %i.r
  br i1 %i.u, label %bb.e, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  %i.w = zext nneg i32 %i.r to i64
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load i64, ptr %i.y, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.04.0.i = phi i64 [ %i.z, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !206 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37

bb.f:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.ad = and i32 %i.ab, 2147483647               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 472
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !253
  %i.ag = icmp ugt i32 %i.af, %i.ad
  br i1 %i.ag, label %bb.g, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 464
  %i.ai = zext nneg i32 %i.ad to i64
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !55
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.f, %bb.g
  %.sroa.04.0.i36 = phi i64 [ %i.al, %bb.g ], [ 0, %bb.f ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 %.sroa.04.0.i, ptr %5, align 8, !tbaa !206
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.04.0.i36, ptr %i.am, align 8, !tbaa !206
  store i32 256, ptr %4, align 8, !tbaa !212
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.an, align 8, !tbaa !213
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !214
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !198, !range !51, !noundef !52
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit.thread, label %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit

_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit.thread: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.h

_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit37
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !199
  %i.au = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %4) #28
  %i.av = extractvalue { i64, i64 } %i.au, 0
  %i.aw = and i64 %i.av, 255
  %i.ax = icmp eq i64 %i.aw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.ax, label %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit._crit_edge, label %._crit_edge.thread

_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit._crit_edge: ; preds = %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !247
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit._crit_edge, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit.thread
  %i.ay = phi ptr [ %.pre, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit._crit_edge ], [ %i.n, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit.thread ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.az, align 8, !tbaa !269 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !214 ; 8 uses
  %i.ba = trunc i64 %.sroa.04.0.i36 to i1
  br i1 %i.ba, label %bb.i, label %_ZNK4llvm3LLT14getNumElementsEv.exit

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #30
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit:             ; preds = %bb.h
  %i.bb = trunc i64 %.sroa.04.0.i36 to i32
  %i.bc = lshr i32 %i.bb, 4
  %i.bd = and i32 %i.bc, 65535                    ; 7 uses
  %i.be = trunc i64 %.sroa.2.0.copyload.i.i to i32 ; 2 uses
  %.not51 = icmp eq i32 %i.be, 0
  br i1 %.not51, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit
  %wide.trip.count = and i64 %.sroa.2.0.copyload.i.i, 4294967295
  %xtraiter = and i64 %.sroa.2.0.copyload.i.i, 1
  %i.bf = icmp eq i64 %wide.trip.count, 1
  br i1 %i.bf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.sroa.2.0.copyload.i.i, 4294967294
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.03148.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %.132.1, %._crit_edge.unr-lcssa ]
  %.03347.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %.134.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod87 = trunc i64 %.sroa.2.0.copyload.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod87)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %indvars.iv.epil.init
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !217 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0                   ; 2 uses
  %i.bj = icmp sge i32 %i.bh, %i.bd               ; 2 uses
  %i.bk = select i1 %i.bi, i1 true, i1 %i.bj
  %.134.epil = select i1 %i.bk, i8 %.03347.epil.init, i8 1
  %i.bl = xor i1 %i.bj, true
  %i.bm = select i1 %i.bi, i1 true, i1 %i.bl
  %.132.epil = select i1 %i.bm, i8 %.03148.epil.init, i8 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.134.lcssa = phi i8 [ %.134.1, %._crit_edge.unr-lcssa ], [ %.134.epil, %.lr.ph.epil.preheader ]
  %.132.lcssa = phi i8 [ %.132.1, %._crit_edge.unr-lcssa ], [ %.132.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %.not66 = icmp eq i8 %.132.lcssa, %.134.lcssa
  %i.bn = trunc nuw i8 %.132.lcssa to i1
  br i1 %.not66, label %._crit_edge.thread, label %bb.j

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.03148 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %.132.1, %.lr.ph ]
  %.03347 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %.134.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %indvars.iv
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !217 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 0                   ; 2 uses
  %i.br = icmp sge i32 %i.bp, %i.bd               ; 2 uses
  %i.bs = select i1 %i.bq, i1 true, i1 %i.br
  %i.bt = xor i1 %i.br, true
  %i.bu = select i1 %i.bq, i1 true, i1 %i.bt
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !217 ; 2 uses
  %i.by = icmp slt i32 %i.bx, 0                   ; 2 uses
  %i.bz = icmp sge i32 %i.bx, %i.bd               ; 2 uses
  %i.ca = select i1 %i.by, i1 true, i1 %i.bz
  %i.cb = select i1 %i.ca, i1 %i.bs, i1 false
  %.134.1 = select i1 %i.cb, i8 %.03347, i8 1     ; 3 uses
  %i.cc = xor i1 %i.bz, true
  %i.cd = select i1 %i.by, i1 true, i1 %i.cc
  %i.ce = select i1 %i.cd, i1 %i.bu, i1 false
  %.132.1 = select i1 %i.ce, i8 %.03148, i8 1     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !1294

bb.j:                                             ; preds = %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ch, ptr %6, align 8, !tbaa !55
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i32 0, ptr %i.ci, align 8, !tbaa !253
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 16, ptr %i.cj, align 4, !tbaa !261
  %.idx.i = shl nuw nsw i64 %.sroa.2.0.copyload.i.i, 2
  %i.ck = icmp ugt i64 %.sroa.2.0.copyload.i.i, 16
  br i1 %i.ck, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i, label %_ZN4llvm11SmallVectorIiLj16EEC2IivEENS_8ArrayRefIT_EE.exit

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i: ; preds = %bb.j
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull %i.ch, i64 noundef %.sroa.2.0.copyload.i.i, i64 noundef 4) #28
  %.pre8.pre.i.i = load i32, ptr %i.ci, align 8, !tbaa !253
  %i.cl = zext i32 %.pre8.pre.i.i to i64
  %.pre52 = load ptr, ptr %6, align 8, !tbaa !55
  br label %_ZN4llvm11SmallVectorIiLj16EEC2IivEENS_8ArrayRefIT_EE.exit

_ZN4llvm11SmallVectorIiLj16EEC2IivEENS_8ArrayRefIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i, %bb.j
  %i.cm = phi ptr [ %.pre52, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i ], [ %i.ch, %bb.j ]
  %.pre8.i5.i = phi i64 [ %i.cl, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i ], [ 0, %bb.j ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.pre8.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr nonnull align 4 %.sroa.0.0.copyload.i.i, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.ci, align 8, !tbaa !253
  %i.co = add i32 %.pre.i.i, %i.be                ; 5 uses
  store i32 %i.co, ptr %i.ci, align 8, !tbaa !253
  br i1 %i.bn, label %bb.k, label %_ZL11commuteMaskN4llvm15MutableArrayRefIiEEj.exit

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIiLj16EEC2IivEENS_8ArrayRefIT_EE.exit
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !247
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 68
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !206 ; 2 uses
  %i.cs = load ptr, ptr %6, align 8, !tbaa !55    ; 5 uses
  %i.ct = zext i32 %i.co to i64                   ; 3 uses
  %.not.i = icmp eq i32 %i.co, 0
  br i1 %.not.i, label %_ZL11commuteMaskN4llvm15MutableArrayRefIiEEj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.k
  %i.cu = sub nsw i32 0, %i.bd                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.co, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader84, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ct, 4294967292              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <4 x i32> poison, i32 %i.bd, i64 0
  %broadcast.splat68 = shufflevector <4 x i32> %broadcast.splatinsert67, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue83, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue83 ] ; 5 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index ; 2 uses
  %wide.load69 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !217 ; 3 uses
  %i.cw = icmp sgt <4 x i32> %wide.load69, splat (i32 -1) ; 4 uses
  %i.cx = icmp slt <4 x i32> %wide.load69, %broadcast.splat68
  %i.cy = select <4 x i1> %i.cx, <4 x i32> %broadcast.splat68, <4 x i32> %broadcast.splat
  %i.cz = add <4 x i32> %i.cy, %wide.load69       ; 4 uses
  %i.da = extractelement <4 x i1> %i.cw, i64 0
  br i1 %i.da, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %vector.body
  %i.db = extractelement <4 x i32> %i.cz, i64 0
  store i32 %i.db, ptr %i.cv, align 4, !tbaa !217
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %vector.body
  %i.dc = extractelement <4 x i1> %i.cw, i64 1
  br i1 %i.dc, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = extractelement <4 x i32> %i.cz, i64 1
  store i32 %i.df, ptr %i.de, align 4, !tbaa !217
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.dg = extractelement <4 x i1> %i.cw, i64 2
  br i1 %i.dg, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = extractelement <4 x i32> %i.cz, i64 2
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !217
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.dk = extractelement <4 x i1> %i.cw, i64 3
  br i1 %i.dk, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.dn = extractelement <4 x i32> %i.cz, i64 3
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !217
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !1295

middle.block:                                     ; preds = %pred.store.continue83
  %cmp.n = icmp eq i64 %n.vec, %i.ct
  br i1 %cmp.n, label %_ZL11commuteMaskN4llvm15MutableArrayRefIiEEj.exit.loopexit, label %.lr.ph.i.preheader84

.lr.ph.i.preheader84:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader84, %bb.l
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader84 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.i ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !217 ; 3 uses
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %bb.l, label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i
  %i.ds = icmp slt i32 %i.dq, %i.bd
  %.sink.p.i = select i1 %i.ds, i32 %i.bd, i32 %i.cu
  %.sink.i = add i32 %.sink.p.i, %i.dq
  store i32 %.sink.i, ptr %i.dp, align 4, !tbaa !217
  br label %bb.l

bb.l:                                             ; preds = %.sink.split.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ct
  br i1 %exitcond.not.i, label %_ZL11commuteMaskN4llvm15MutableArrayRefIiEEj.exit.loopexit, label %.lr.ph.i, !llvm.loop !1296

_ZL11commuteMaskN4llvm15MutableArrayRefIiEEj.exit.loopexit: ; preds = %bb.l, %middle.block
  %.pre53 = load i32, ptr %i.ci, align 8, !tbaa !253
  br label %_ZL11commuteMaskN4llvm15MutableArrayRefIiEEj.exit

_ZL11commuteMaskN4llvm15MutableArrayRefIiEEj.exit: ; preds = %_ZL11commuteMaskN4llvm15MutableArrayRefIiEEj.exit.loopexit, %bb.k, %_ZN4llvm11SmallVectorIiLj16EEC2IivEENS_8ArrayRefIT_EE.exit
  %i.dt = phi i32 [ %i.co, %_ZN4llvm11SmallVectorIiLj16EEC2IivEENS_8ArrayRefIT_EE.exit ], [ 0, %bb.k ], [ %.pre53, %_ZL11commuteMaskN4llvm15MutableArrayRefIiEEj.exit.loopexit ] ; 5 uses
  %.sroa.02.0 = phi i32 [ %i.cg, %_ZN4llvm11SmallVectorIiLj16EEC2IivEENS_8ArrayRefIT_EE.exit ], [ %i.cr, %bb.k ], [ %i.cr, %_ZL11commuteMaskN4llvm15MutableArrayRefIiEEj.exit.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %1, ptr %7, align 8, !tbaa !1298
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.04.0.i36, ptr %i.du, align 8, !tbaa !206
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %.sroa.02.0, ptr %i.dv, align 8, !tbaa !217
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !55
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store i32 0, ptr %i.dy, align 8, !tbaa !253
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 36
  store i32 16, ptr %i.dz, align 4, !tbaa !261
  %.not.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorIiLj16EEC2ERKS1_.exit, label %bb.m

bb.m:                                             ; preds = %_ZL11commuteMaskN4llvm15MutableArrayRefIiEEj.exit
  %i.ea = icmp ugt i32 %i.dt, 16
  br i1 %i.ea, label %_ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.i, label %_ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.thread.i

_ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.i:           ; preds = %bb.m
  %i.eb = zext i32 %i.dt to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %i.dw, ptr noundef nonnull %i.dx, i64 noundef %i.eb, i64 noundef 4) #28
  %.pre.i = load i32, ptr %i.ci, align 8, !tbaa !253 ; 2 uses
  %.not.i.i.i38 = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i38, label %.sink.split.i.i, label %_ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.i
  %.pre54 = load ptr, ptr %i.dw, align 8, !tbaa !55
  br label %_ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.thread.i

_ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.thread.i:    ; preds = %_ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.thread.i_crit_edge, %bb.m
  %i.ec = phi ptr [ %.pre54, %_ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.thread.i_crit_edge ], [ %i.dx, %bb.m ]
  %i.ed = phi i32 [ %.pre.i, %_ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.thread.i_crit_edge ], [ %i.dt, %bb.m ]
  %i.ee = zext i32 %i.ed to i64
  %i.ef = load ptr, ptr %6, align 8, !tbaa !55
  %gepdiff.i.i = shl nuw nsw i64 %i.ee, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ec, ptr align 4 %i.ef, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.thread.i, %_ZSt4copyIPKiPiET0_T_S4_S3_.exit30.i.i
  store i32 %i.dt, ptr %i.dy, align 8, !tbaa !253
  br label %_ZN4llvm11SmallVectorIiLj16EEC2ERKS1_.exit

_ZN4llvm11SmallVectorIiLj16EEC2ERKS1_.exit:       ; preds = %_ZL11commuteMaskN4llvm15MutableArrayRefIiEEj.exit, %.sink.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.eg, align 8
  %i.eh = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #29 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.eh, ptr noundef nonnull align 8 dereferenceable(104) %7, i64 20, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !55
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  store i32 0, ptr %i.ek, align 8, !tbaa !253
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 36
  store i32 16, ptr %i.el, align 4, !tbaa !261
  %i.em = load i32, ptr %i.dy, align 8, !tbaa !253
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.em, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZNSt8functionIFvRN4llvm16MachineIRBuilderEEEC2IZNKS0_14CombinerHelper24matchShuffleDisjointMaskERNS0_12MachineInstrERS4_E3$_0vEEOT_.exit.i", label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIiLj16EEC2ERKS1_.exit
  %i.en = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIiEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.ei, ptr noundef nonnull align 8 dereferenceable(80) %i.dw) ; 0 uses
  br label %"_ZNSt8functionIFvRN4llvm16MachineIRBuilderEEEC2IZNKS0_14CombinerHelper24matchShuffleDisjointMaskERNS0_12MachineInstrERS4_E3$_0vEEOT_.exit.i"

"_ZNSt8functionIFvRN4llvm16MachineIRBuilderEEEC2IZNKS0_14CombinerHelper24matchShuffleDisjointMaskERNS0_12MachineInstrERS4_E3$_0vEEOT_.exit.i": ; preds = %bb.n, %_ZN4llvm11SmallVectorIiLj16EEC2ERKS1_.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.eh, ptr %3, align 16, !tbaa !251
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !252
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %2, align 8, !tbaa !206
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.er = load <2 x ptr>, ptr %i.ep, align 8, !tbaa !251
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !251 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm16MachineIRBuilderEEZNKS0_14CombinerHelper24matchShuffleDisjointMaskERNS0_12MachineInstrERSt8functionIS3_EE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.ep, align 8, !tbaa !251
  store <2 x ptr> %i.er, ptr %i.eo, align 16, !tbaa !251
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm16MachineIRBuilderEEZNKS0_14CombinerHelper24matchShuffleDisjointMaskERNS0_12MachineInstrERSt8functionIS3_EE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.eq, align 8, !tbaa !251
  %.not.i.i39 = icmp eq ptr %i.es, null
  br i1 %.not.i.i39, label %"_ZNSt8functionIFvRN4llvm16MachineIRBuilderEEEaSIZNKS0_14CombinerHelper24matchShuffleDisjointMaskERNS0_12MachineInstrERS4_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueES9_E4typeEOSC_.exit", label %bb.o

bb.o:                                             ; preds = %"_ZNSt8functionIFvRN4llvm16MachineIRBuilderEEEC2IZNKS0_14CombinerHelper24matchShuffleDisjointMaskERNS0_12MachineInstrERS4_E3$_0vEEOT_.exit.i"
  %i.et = call noundef zeroext i1 %i.es(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #28, !inline_history !1297 ; 0 uses
  br label %"_ZNSt8functionIFvRN4llvm16MachineIRBuilderEEEaSIZNKS0_14CombinerHelper24matchShuffleDisjointMaskERNS0_12MachineInstrERS4_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueES9_E4typeEOSC_.exit"

"_ZNSt8functionIFvRN4llvm16MachineIRBuilderEEEaSIZNKS0_14CombinerHelper24matchShuffleDisjointMaskERNS0_12MachineInstrERS4_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueES9_E4typeEOSC_.exit": ; preds = %"_ZNSt8functionIFvRN4llvm16MachineIRBuilderEEEC2IZNKS0_14CombinerHelper24matchShuffleDisjointMaskERNS0_12MachineInstrERS4_E3$_0vEEOT_.exit.i", %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.eu = load ptr, ptr %i.dw, align 8, !tbaa !55 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.dx
  br i1 %i.ev, label %"_ZZNK4llvm14CombinerHelper24matchShuffleDisjointMaskERNS_12MachineInstrERSt8functionIFvRNS_16MachineIRBuilderEEEEN3$_0D2Ev.exit", label %bb.p

bb.p:                                             ; preds = %"_ZNSt8functionIFvRN4llvm16MachineIRBuilderEEEaSIZNKS0_14CombinerHelper24matchShuffleDisjointMaskERNS0_12MachineInstrERS4_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueES9_E4typeEOSC_.exit"
  call void @free(ptr noundef %i.eu) #28
  br label %"_ZZNK4llvm14CombinerHelper24matchShuffleDisjointMaskERNS_12MachineInstrERSt8functionIFvRNS_16MachineIRBuilderEEEEN3$_0D2Ev.exit"

"_ZZNK4llvm14CombinerHelper24matchShuffleDisjointMaskERNS_12MachineInstrERSt8functionIFvRNS_16MachineIRBuilderEEEEN3$_0D2Ev.exit": ; preds = %"_ZNSt8functionIFvRN4llvm16MachineIRBuilderEEEaSIZNKS0_14CombinerHelper24matchShuffleDisjointMaskERNS0_12MachineInstrERS4_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueES9_E4typeEOSC_.exit", %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ew = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.ch
  br i1 %i.ex, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %"_ZZNK4llvm14CombinerHelper24matchShuffleDisjointMaskERNS_12MachineInstrERSt8functionIFvRNS_16MachineIRBuilderEEEEN3$_0D2Ev.exit"
  call void @free(ptr noundef %i.ew) #28
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit:           ; preds = %"_ZZNK4llvm14CombinerHelper24matchShuffleDisjointMaskERNS_12MachineInstrERSt8functionIFvRNS_16MachineIRBuilderEEEEN3$_0D2Ev.exit", %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit, %._crit_edge, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit ], [ false, %._crit_edge ], [ true, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit ], [ false, %_ZNK4llvm3LLT14getNumElementsEv.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14CombinerHelper17matchSuboCarryOutERKNS_12MachineInstrERSt8functionIFvRNS_16MachineIRBuilderEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.std::function.226", align 16 ; 9 uses
  %4 = alloca %"class.std::function.226", align 8 ; 6 uses
  %5 = alloca %"class.std::function.226", align 16 ; 9 uses
  %6 = alloca %"class.std::function.226", align 8 ; 6 uses
  %7 = alloca %"struct.llvm::LegalityQuery", align 8 ; 8 uses
  %8 = alloca [1 x %"class.llvm::LLT"], align 8   ; 5 uses
  %9 = alloca %"class.llvm::ConstantRange", align 8 ; 9 uses
  %10 = alloca %"struct.llvm::KnownBits", align 8 ; 8 uses
  %11 = alloca %"class.llvm::ConstantRange", align 8 ; 9 uses
  %12 = alloca %"struct.llvm::KnownBits", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !206  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !206  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !206  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !206  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !233, !nonnull !52, !align !201 ; 4 uses
  %i.m = icmp slt i32 %i.d, 0
  br i1 %i.m, label %bb.b, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.b:                                             ; preds = %bb.a
  %i.n = and i32 %i.d, 2147483647                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 472
  %i.p = load i32, ptr %i.o, align 8, !tbaa !253
  %i.q = icmp ugt i32 %i.p, %i.n
  br i1 %i.q, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  %i.s = zext nneg i32 %i.n to i64
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load i64, ptr %i.u, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.04.0.i = phi i64 [ %i.v, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.w = icmp slt i32 %i.j, 0
  br i1 %i.w, label %bb.d, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit39

bb.d:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
end_hunk_0
