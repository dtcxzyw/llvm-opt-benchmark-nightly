Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/verifier?download=true
inline.NumInlined: 1464
inline.NumDeleted: 522
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler16ScheduleVerifier3RunEPNS1_8ScheduleE:bb.a
bb.am:                                            ; preds = %._crit_edge346
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ic = load ptr, ptr %i.ib, align 8            ; 2 uses
  %i.id = load ptr, ptr %i.ia, align 8            ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = icmp ult ptr %i.ic, %i.ie
  br i1 %i.if, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.am
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.pre.i.i.i.i = load ptr, ptr %i.ig, align 8
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ih = phi ptr [ %.pre.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.in, %_ZNSt11_Deque_baseIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i ] ; 3 uses
  %.06.i.i.i.i = phi ptr [ %i.ic, %.lr.ph.i.i.i.i ], [ %i.io, %_ZNSt11_Deque_baseIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i ] ; 3 uses
  %i.ii = load ptr, ptr %.06.i.i.i.i, align 8     ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ik = load i64, ptr %i.ij, align 8
  %.not7.i.i.i.i.i.i.i = icmp ugt i64 %i.ik, 64
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt11_Deque_baseIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store i64 64, ptr %i.il, align 8
  %i.im = load ptr, ptr %i.ig, align 8
  store ptr %i.im, ptr %i.ii, align 8
  store ptr %i.ii, ptr %i.ig, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i

_ZNSt11_Deque_baseIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %i.in = phi ptr [ %i.ih, %bb.ao ], [ %i.ii, %bb.ap ]
  %i.io = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ip = icmp ult ptr %.06.i.i.i.i, %i.id
  br i1 %i.ip, label %bb.an, label %_ZNSt11_Deque_baseIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i, !llvm.loop !33

_ZNSt11_Deque_baseIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i, %bb.am
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ir = load i64, ptr %i.iq, align 8            ; 2 uses
  %i.is = and i64 %i.ir, 2305843009213693950
  %i.it = icmp eq i64 %i.is, 0
  br i1 %i.it, label %_ZNSt5queueIPN2v88internal8compiler10BasicBlockENS1_9ZoneDequeIS4_EEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i
  %i.iu = load ptr, ptr %i.hy, align 8            ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i64 %i.ir, ptr %i.iv, align 8
  store ptr null, ptr %i.iu, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler10BasicBlockENS1_9ZoneDequeIS4_EEED2Ev.exit

_ZNSt5queueIPN2v88internal8compiler10BasicBlockENS1_9ZoneDequeIS4_EEED2Ev.exit: ; preds = %._crit_edge346, %_ZNSt11_Deque_baseIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.iw = icmp sgt i32 %i.bp, 0
  br i1 %i.iw, label %.lr.ph348.preheader, label %.preheader

.lr.ph348.preheader:                              ; preds = %_ZNSt5queueIPN2v88internal8compiler10BasicBlockENS1_9ZoneDequeIS4_EEED2Ev.exit
  %wide.trip.count = and i64 %i.j, 2147483647
  br label %.lr.ph348

.preheader:                                       ; preds = %bb.av, %_ZNSt5queueIPN2v88internal8compiler10BasicBlockENS1_9ZoneDequeIS4_EEED2Ev.exit
  %i.ix = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.iy = load ptr, ptr %i.r, align 8             ; 5 uses
  %.not385 = icmp eq ptr %i.ix, %i.iy
  br i1 %.not385, label %._crit_edge351, label %.lr.ph350

.lr.ph350:                                        ; preds = %.preheader
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %.fr = freeze i64 %i.jb                         ; 2 uses
  %i.jc = ashr i64 %.fr, 3                        ; 3 uses
  %i.jd = load ptr, ptr %i.br, align 8            ; 3 uses
  %i.je = icmp eq i64 %i.jc, 1
  br i1 %i.je, label %.epil.preheader, label %.lr.ph350.new

.lr.ph350.new:                                    ; preds = %.lr.ph350
  %unroll_iter = and i64 %i.jc, -2
  br label %bb.be

.lr.ph348:                                        ; preds = %.lr.ph348.preheader, %bb.av
  %indvars.iv = phi i64 [ 0, %.lr.ph348.preheader ], [ %indvars.iv.next, %bb.av ] ; 4 uses
  %i.jf = call noundef ptr @_ZN2v88internal8compiler8Schedule12GetBlockByIdENS1_10BasicBlock2IdE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %indvars.iv) #13 ; 2 uses
  %i.jg = load ptr, ptr %i.br, align 8
  %i.jh = lshr i64 %indvars.iv, 6
  %i.ji = and i64 %i.jh, 67108863
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.ji
  %i.jk = load i64, ptr %i.jj, align 8
  %i.jl = and i64 %indvars.iv, 63
  %i.jm = shl nuw i64 1, %i.jl
  %i.jn = and i64 %i.jk, %i.jm
  %.not305 = icmp eq i64 %i.jn, 0
  br i1 %.not305, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph348
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jp = load i32, ptr %i.jo, align 4            ; 2 uses
  %i.jq = icmp sgt i32 %i.jp, -1
  br i1 %i.jq, label %bb.at, label %bb.as, !prof !9

bb.as:                                            ; preds = %bb.ar
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.90) #14
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.jr = zext nneg i32 %i.jp to i64
  %i.js = load ptr, ptr %i.r, align 8
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jr
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = icmp eq ptr %i.jf, %i.ju
  br i1 %i.jv, label %bb.av, label %bb.au, !prof !9

bb.au:                                            ; preds = %bb.at
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.91) #14
  unreachable

bb.av:                                            ; preds = %bb.at, %.lr.ph348
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond412.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond412.not, label %.preheader, label %.lr.ph348, !llvm.loop !34

bb.aw:                                            ; preds = %bb.be
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.0184349
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 160
  %.sroa.0.0.copyload.i224.1 = load i64, ptr %i.jz, align 8 ; 3 uses
  %i.ka = and i64 %.sroa.0.0.copyload.i224.1, 2147483648
  %i.kb = icmp eq i64 %i.ka, 0
  call void @llvm.assume(i1 %i.kb)
  %i.kc = lshr i64 %.sroa.0.0.copyload.i224.1, 6
  %i.kd = and i64 %i.kc, 33554431
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.kd
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = and i64 %.sroa.0.0.copyload.i224.1, 63
  %i.kh = shl nuw i64 1, %i.kg
  %i.ki = and i64 %i.kf, %i.kh
  %.not304.1 = icmp eq i64 %i.ki, 0
  br i1 %.not304.1, label %.loopexit574, label %bb.ax, !prof !14

bb.ax:                                            ; preds = %bb.aw
  %i.kj = add nuw i64 %.0184349, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge351.loopexit.unr-lcssa, label %bb.be, !llvm.loop !35

._crit_edge351.loopexit.unr-lcssa:                ; preds = %bb.ax
  %i.kk = and i64 %.fr, 8
  %lcmp.mod.not = icmp eq i64 %i.kk, 0
  br i1 %lcmp.mod.not, label %._crit_edge351, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge351.loopexit.unr-lcssa, %.lr.ph350
  %.0184349.epil.init = phi i64 [ 0, %.lr.ph350 ], [ %i.kj, %._crit_edge351.loopexit.unr-lcssa ]
  %lcmp.mod573 = trunc i64 %i.jc to i1
  call void @llvm.assume(i1 %lcmp.mod573)
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.0184349.epil.init
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 160
  %.sroa.0.0.copyload.i224.epil = load i64, ptr %i.kn, align 8 ; 3 uses
  %i.ko = and i64 %.sroa.0.0.copyload.i224.epil, 2147483648
  %i.kp = icmp eq i64 %i.ko, 0
  call void @llvm.assume(i1 %i.kp)
  %i.kq = lshr i64 %.sroa.0.0.copyload.i224.epil, 6
  %i.kr = and i64 %i.kq, 33554431
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.kr
  %i.kt = load i64, ptr %i.ks, align 8
  %i.ku = and i64 %.sroa.0.0.copyload.i224.epil, 63
  %i.kv = shl nuw i64 1, %i.ku
  %i.kw = and i64 %i.kt, %i.kv
  %.not304.epil = icmp eq i64 %i.kw, 0
  br i1 %.not304.epil, label %.loopexit574, label %._crit_edge351, !prof !14

._crit_edge351:                                   ; preds = %._crit_edge351.loopexit.unr-lcssa, %.epil.preheader, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %1, ptr %4, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kx, i8 0, i64 24, i1 false)
  %.not.i.i219.not = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i219.not, label %_ZN2v88internal10ZoneVectorIPNS0_9BitVectorEE14EnsureCapacityEm.exit.i, label %bb.ay, !prof !9

bb.ay:                                            ; preds = %._crit_edge351
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_9BitVectorEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.j)
  %.pre.i = load ptr, ptr %i.kx, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre424.a = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_9BitVectorEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorIPNS0_9BitVectorEE14EnsureCapacityEm.exit.i: ; preds = %bb.ay, %._crit_edge351
  %i.ky = phi ptr [ null, %._crit_edge351 ], [ %.pre424.a, %bb.ay ] ; 3 uses
  %i.kz = phi ptr [ null, %._crit_edge351 ], [ %.pre.i, %bb.ay ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.i ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.lc = icmp ult ptr %i.ky, %i.la
  br i1 %i.lc, label %.lr.ph.i.preheader, label %_ZN2v88internal10ZoneVectorIPNS0_9BitVectorEE6resizeEmRKS3_.exit

.lr.ph.i.preheader:                               ; preds = %_ZN2v88internal10ZoneVectorIPNS0_9BitVectorEE14EnsureCapacityEm.exit.i
  %i.ld = ptrtoaddr ptr %i.ky to i64
  %i.le = ptrtoaddr ptr %i.kz to i64
  %i.lf = add i64 %i.le, %i.g
  %6 = xor i64 %i.h, -1
  %i.lg = add i64 %i.lf, %6
  %7 = sub i64 %i.lg, %i.ld
  %i.lh = and i64 %7, -8
  %i.li = add i64 %i.lh, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ky, i8 0, i64 %i.li, i1 false)
  br label %_ZN2v88internal10ZoneVectorIPNS0_9BitVectorEE6resizeEmRKS3_.exit

_ZN2v88internal10ZoneVectorIPNS0_9BitVectorEE6resizeEmRKS3_.exit: ; preds = %.lr.ph.i.preheader, %_ZN2v88internal10ZoneVectorIPNS0_9BitVectorEE14EnsureCapacityEm.exit.i
  store ptr %i.la, ptr %i.lb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZN2v88internal9ZoneQueueIPNS0_8compiler10BasicBlockEEC2EPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull %1)
  %i.lj = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 11 uses
  %i.lk = load ptr, ptr %i.lj, align 8            ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %i.lm = load ptr, ptr %i.ll, align 8
  %i.ln = getelementptr inbounds i8, ptr %i.lm, i64 -8
  %.not.i.i220 = icmp eq ptr %i.lk, %i.ln
  br i1 %.not.i.i220, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN2v88internal10ZoneVectorIPNS0_9BitVectorEE6resizeEmRKS3_.exit
  %i.lo = load ptr, ptr %i.a, align 8
  store ptr %i.lo, ptr %i.lk, align 8
  %i.lp = load ptr, ptr %i.lj, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store ptr %i.lq, ptr %i.lj, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler10BasicBlockENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit221

bb.ba:                                            ; preds = %_ZN2v88internal10ZoneVectorIPNS0_9BitVectorEE6resizeEmRKS3_.exit
  call void @_ZNSt5dequeIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5queueIPN2v88internal8compiler10BasicBlockENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit221

_ZNSt5queueIPN2v88internal8compiler10BasicBlockENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit221: ; preds = %bb.az, %bb.ba
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ls = load i64, ptr %i.lr, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.lu = load i64, ptr %i.lt, align 8            ; 2 uses
  %i.lv = sub i64 %i.ls, %i.lu
  %i.lw = icmp ult i64 %i.lv, 32
  br i1 %i.lw, label %bb.bb, label %_ZN2v88internal4Zone8AllocateINS0_9BitVectorEEEPvm.exit.i, !prof !14

bb.bb:                                            ; preds = %_ZNSt5queueIPN2v88internal8compiler10BasicBlockENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit221
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 32) #13
  %.pre.i.i = load i64, ptr %i.lt, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_9BitVectorEEEPvm.exit.i

_ZN2v88internal4Zone8AllocateINS0_9BitVectorEEEPvm.exit.i: ; preds = %bb.bb, %_ZNSt5queueIPN2v88internal8compiler10BasicBlockENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit221
  %i.lx = phi i64 [ %.pre.i.i, %bb.bb ], [ %i.lu, %_ZNSt5queueIPN2v88internal8compiler10BasicBlockENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit221 ] ; 2 uses
  %i.ly = inttoptr i64 %i.lx to ptr               ; 5 uses
  %i.lz = add i64 %i.lx, 32
  store i64 %i.lz, ptr %i.lt, align 8
  store i32 %i.bp, ptr %i.ly, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 4 uses
  store i64 0, ptr %i.ma, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 16 ; 3 uses
  store ptr %i.ma, ptr %i.mb, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 24 ; 2 uses
  store ptr %i.mb, ptr %i.mc, align 8
  br i1 %i.bv, label %bb.bc, label %_ZN2v88internal4Zone3NewINS0_9BitVectorEJiRPS1_EEEPT_DpOT0_.exit

bb.bc:                                            ; preds = %_ZN2v88internal4Zone8AllocateINS0_9BitVectorEEEPvm.exit.i
  %i.md = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.me = shl nuw nsw i64 %i.md, 3                ; 4 uses
  %i.mf = load i64, ptr %i.lr, align 8
  %i.mg = load i64, ptr %i.lt, align 8            ; 2 uses
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = icmp ugt i64 %i.me, %i.mh
  br i1 %i.mi, label %bb.bd, label %.lr.ph.i.i.i.i.i.i, !prof !14

bb.bd:                                            ; preds = %bb.bc
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.me) #13
  %.pre.i.i.i.i222 = load i64, ptr %i.lt, align 8
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bd, %bb.bc
  %i.mj = phi i64 [ %.pre.i.i.i.i222, %bb.bd ], [ %i.mg, %bb.bc ] ; 2 uses
  %i.mk = inttoptr i64 %i.mj to ptr               ; 2 uses
  %i.ml = add i64 %i.mj, %i.me
  store i64 %i.ml, ptr %i.lt, align 8
  store ptr %i.mk, ptr %i.ma, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.mk, i8 0, i64 %i.me, i1 false)
  %i.mm = load ptr, ptr %i.ma, align 8            ; 2 uses
  store ptr %i.mm, ptr %i.mb, align 8
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.md
  store ptr %i.mn, ptr %i.mc, align 8
  br label %_ZN2v88internal4Zone3NewINS0_9BitVectorEJiRPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_9BitVectorEJiRPS1_EEEPT_DpOT0_.exit: ; preds = %_ZN2v88internal4Zone8AllocateINS0_9BitVectorEEEPvm.exit.i, %.lr.ph.i.i.i.i.i.i
  %i.mo = load ptr, ptr %i.a, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 160
  %.sroa.0.0.copyload.i223 = load i64, ptr %i.mp, align 8
  %i.mq = load ptr, ptr %i.kx, align 8
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %.sroa.0.0.copyload.i223
  store ptr %i.ly, ptr %i.mr, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.mt = load ptr, ptr %i.lj, align 8
  %i.mu = load ptr, ptr %i.ms, align 8            ; 2 uses
  %i.mv = icmp eq ptr %i.mt, %i.mu
  br i1 %i.mv, label %._crit_edge355, label %.lr.ph354

.lr.ph354:                                        ; preds = %_ZN2v88internal4Zone3NewINS0_9BitVectorEJiRPS1_EEEPT_DpOT0_.exit
  %i.mw = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.na = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.nb = shl nuw nsw i64 %i.na, 3                ; 4 uses
  br label %bb.bf

bb.be:                                            ; preds = %bb.ax, %.lr.ph350.new
  %.0184349 = phi i64 [ 0, %.lr.ph350.new ], [ %i.kj, %bb.ax ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph350.new ], [ %niter.next.1, %bb.ax ]
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.0184349
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 160
  %.sroa.0.0.copyload.i224 = load i64, ptr %i.ne, align 8 ; 3 uses
  %i.nf = and i64 %.sroa.0.0.copyload.i224, 2147483648
  %i.ng = icmp eq i64 %i.nf, 0
  call void @llvm.assume(i1 %i.ng)
  %i.nh = lshr i64 %.sroa.0.0.copyload.i224, 6
  %i.ni = and i64 %i.nh, 33554431
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.ni
  %i.nk = load i64, ptr %i.nj, align 8
  %i.nl = and i64 %.sroa.0.0.copyload.i224, 63
  %i.nm = shl nuw i64 1, %i.nl
  %i.nn = and i64 %i.nk, %i.nm
  %.not304 = icmp eq i64 %i.nn, 0
  br i1 %.not304, label %.loopexit574, label %bb.aw, !prof !14

.loopexit574:                                     ; preds = %bb.be, %bb.aw, %.epil.preheader
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.92) #14
  unreachable

.loopexit306.loopexit:                            ; preds = %_ZNSt5queueIPN2v88internal8compiler10BasicBlockENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit243
  %.pre426.a = load ptr, ptr %i.ms, align 8
  br label %.loopexit306

.loopexit306:                                     ; preds = %.loopexit306.loopexit, %.critedge
  %i.no = phi ptr [ %.pre426.a, %.loopexit306.loopexit ], [ %storemerge.i.i226, %.critedge ] ; 2 uses
  %i.np = load ptr, ptr %i.lj, align 8
  %i.nq = icmp eq ptr %i.np, %i.no
  br i1 %i.nq, label %._crit_edge355, label %bb.bf, !llvm.loop !36

bb.bf:                                            ; preds = %.lr.ph354, %.loopexit306
  %i.nr = phi ptr [ %i.mu, %.lr.ph354 ], [ %i.no, %.loopexit306 ] ; 3 uses
  %i.ns = load ptr, ptr %i.nr, align 8            ; 5 uses
  %i.nt = load ptr, ptr %i.mw, align 8
  %i.nu = getelementptr inbounds i8, ptr %i.nt, i64 -8
  %.not.i.i225 = icmp eq ptr %i.nr, %i.nu
  br i1 %.not.i.i225, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  br label %_ZNSt5queueIPN2v88internal8compiler10BasicBlockENS1_9ZoneDequeIS4_EEE3popEv.exit230

bb.bh:                                            ; preds = %bb.bf
  %i.nw = load ptr, ptr %i.mx, align 8            ; 3 uses
  %i.nx = load ptr, ptr %i.my, align 8            ; 2 uses
  %.not.i.i.i.i.i.i227 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i.i.i.i227, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.nz = load i64, ptr %i.ny, align 8
  %.not7.i.i.i.i.i.i228 = icmp ugt i64 %i.nz, 64
  br i1 %.not7.i.i.i.i.i.i228, label %_ZNSt5dequeIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i229, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store i64 64, ptr %i.oa, align 8
  %i.ob = load ptr, ptr %i.my, align 8
  store ptr %i.ob, ptr %i.nw, align 8
  store ptr %i.nw, ptr %i.my, align 8
  br label %_ZNSt5dequeIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i229

_ZNSt5dequeIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i229: ; preds = %bb.bj, %bb.bi
  %i.oc = load ptr, ptr %i.mz, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 2 uses
  store ptr %i.od, ptr %i.mz, align 8
  %i.oe = load ptr, ptr %i.od, align 8            ; 3 uses
  store ptr %i.oe, ptr %i.mx, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 512
  store ptr %i.of, ptr %i.mw, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler10BasicBlockENS1_9ZoneDequeIS4_EEE3popEv.exit230

_ZNSt5queueIPN2v88internal8compiler10BasicBlockENS1_9ZoneDequeIS4_EEE3popEv.exit230: ; preds = %bb.bg, %_ZNSt5dequeIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i229
  %storemerge.i.i226 = phi ptr [ %i.nv, %bb.bg ], [ %i.oe, %_ZNSt5dequeIPN2v88internal8compiler10BasicBlockENS1_22RecyclingZoneAllocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i229 ] ; 2 uses
  store ptr %storemerge.i.i226, ptr %i.ms, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %i.ns, i64 160 ; 4 uses
  %.sroa.0.0.copyload.i231 = load i64, ptr %i.og, align 8
  %i.oh = load ptr, ptr %i.kx, align 8
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %.sroa.0.0.copyload.i231
  %i.oj = load ptr, ptr %i.oi, align 8            ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8            ; 3 uses
  %.not204 = icmp eq ptr %i.ol, null
  br i1 %.not204, label %.critedge, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt5queueIPN2v88internal8compiler10BasicBlockENS1_9ZoneDequeIS4_EEE3popEv.exit230
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 160
  %.sroa.0.0.copyload.i232 = load i64, ptr %i.om, align 8 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = and i64 %.sroa.0.0.copyload.i232, 2147483648
end_hunk_0
