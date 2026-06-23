inline.NumInlined: 5209
inline.NumDeleted: 1661
begin_hunk_0_@_ZNK5arrow16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolE:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ag, align 8, !tbaa !94, !noalias !931
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 4 uses
  tail call void @_ZN5arrow9ArrayDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.aj, ptr noundef nonnull align 8 dereferenceable(120) %i.ae) #23, !noalias !931
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !90, !alias.scope !931
  store ptr %i.aj, ptr %6, align 16, !tbaa !418, !alias.scope !931
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !145 ; 2 uses
  %.not17 = icmp eq i64 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !39 ; 2 uses
  br i1 %.not17, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !39
  %.not18 = icmp eq i64 %i.ao, %i.aq
  br i1 %.not18, label %bb.x, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.9") align 8 %7, ptr noundef nonnull align 8 dereferenceable(120) %i.aj, i64 noundef %i.am, i64 noundef %i.ao)
          to label %bb.j unwind label %bb.w

bb.j:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = load <2 x ptr>, ptr %7, align 16, !tbaa !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !90 ; 8 uses
  store <2 x ptr> %i.as, ptr %6, align 16, !tbaa !84
  %.not.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.au, align 8, !tbaa !91
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !93
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !94
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #23, !inline_history !850
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !94
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #23, !inline_history !850
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi i32 [ %i.ax, %bb.n ], [ %i.bh, %bb.o ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.p, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, !prof !98

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #23
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.p
  %.pr = load ptr, ptr %i.ar, align 8, !tbaa !90  ; 8 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bj, align 8, !tbaa !91
  %i.bn = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !93
  %i.bo = load ptr, ptr %.pr, align 8, !tbaa !94
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #23, !inline_history !236
  %i.br = load ptr, ptr %.pr, align 8, !tbaa !94
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #23, !inline_history !236
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i = phi i32 [ %i.bm, %bb.t ], [ %i.bw, %bb.u ]
  %i.bx = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bx, label %bb.v, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #23
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %.pre82 = load ptr, ptr %6, align 16, !tbaa !33
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.bw

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i
  %i.bz = phi ptr [ %.pre82, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.aj, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !178 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !90 ; 2 uses
  %i.cf = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !84
  store <2 x ptr> %i.cf, ptr %8, align 16, !tbaa !84
  %.not.i.i.i24 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i24, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i25 = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i25, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

bb.aa:                                            ; preds = %bb.y
  %i.ck = atomicrmw volatile add ptr %i.cg, i32 1 acq_rel, align 4 ; 0 uses
  %.pre83 = load ptr, ptr %6, align 16, !tbaa !33
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit:  ; preds = %bb.x, %bb.z, %bb.aa
  %i.cl = phi ptr [ %i.bz, %bb.x ], [ %i.bz, %bb.z ], [ %.pre83, %bb.aa ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !145 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !39
  %i.cq = add nsw i64 %i.cp, %i.cn
  invoke void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.144") align 8 %9, i64 noundef %i.cq, ptr noundef %3)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.cr = load ptr, ptr %9, align 8, !tbaa !80
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.ae, label %bb.ac, !prof !83

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #23
  br label %bb.ba

bb.ad:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cx = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !84, !noalias !938
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !179, !noalias !938 ; 3 uses
  store ptr null, ptr %i.cw, align 8, !tbaa !90, !noalias !938
  store <2 x ptr> %i.cx, ptr %10, align 16, !tbaa !84, !alias.scope !938
  store ptr null, ptr %i.cu, align 8, !tbaa !179, !noalias !938
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !939
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !3
  %i.dd = sext i32 %i.dc to i64
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !940
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !97  ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !911 ; 27 uses
  %i.dj = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !39 ; 5 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNKS_16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolEE3$_0EEvPhllOT_.exit", label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 9
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !182, !range !111, !noundef !112
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dr = load i8, ptr %i.dq, align 8, !range !111
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = select i1 %i.dp, i1 %i.ds, i1 false, !prof !83
  %i.du = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = select i1 %i.dt, ptr %i.dv, ptr null, !prof !83
  %i.dx = sdiv i64 %i.cn, 8
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx ; 4 uses
  %i.dz = srem i64 %i.cn, 8                       ; 3 uses
  %.not.i26 = icmp eq i64 %i.dz, 0
  br i1 %.not.i26, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ea = load i8, ptr %i.dy, align 1, !tbaa !97
  %i.eb = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.dz
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !97
  %i.ed = and i8 %i.ec, %i.ea                     ; 2 uses
  %i.ee = icmp sgt i64 %i.dl, 0
  br i1 %i.ee, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ag
  %i.ef = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.dz
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !97
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.i
  %i.eh = phi i64 [ 0, %.lr.ph.i ], [ %i.ei, %bb.ah ] ; 2 uses
  %.03549.i = phi i64 [ %i.dl, %.lr.ph.i ], [ %i.ep, %bb.ah ] ; 2 uses
  %.03648.i = phi i8 [ %i.eg, %.lr.ph.i ], [ %i.eo, %bb.ah ] ; 2 uses
  %.03847.i = phi i8 [ %i.ed, %.lr.ph.i ], [ %i.en, %bb.ah ]
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eh
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !97
  %i.el = icmp eq i8 %i.ek, %i.dg
  %i.em = select i1 %i.el, i8 %.03648.i, i8 0
  %i.en = or i8 %i.em, %.03847.i                  ; 2 uses
  %i.eo = shl i8 %.03648.i, 1                     ; 2 uses
  %i.ep = add nsw i64 %.03549.i, -1               ; 2 uses
  %i.eq = icmp ne i8 %i.eo, 0
  %i.er = icmp samesign ugt i64 %.03549.i, 1
  %i.es = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %i.es, label %bb.ah, label %._crit_edge.i, !llvm.loop !942

._crit_edge.i:                                    ; preds = %bb.ah, %bb.ag
  %.0 = phi i64 [ 0, %bb.ag ], [ %i.ei, %bb.ah ]
  %.038.lcssa.i = phi i8 [ %i.ed, %bb.ag ], [ %i.en, %bb.ah ]
  %.035.lcssa.i = phi i64 [ %i.dl, %bb.ag ], [ %i.ep, %bb.ah ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  store i8 %.038.lcssa.i, ptr %i.dy, align 1, !tbaa !97
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i, %bb.af
  %.1 = phi i64 [ 0, %bb.af ], [ %.0, %._crit_edge.i ] ; 9 uses
  %.040.i = phi ptr [ %i.dy, %bb.af ], [ %i.et, %._crit_edge.i ] ; 9 uses
  %.1.i = phi i64 [ %i.dl, %bb.af ], [ %.035.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.eu = icmp sgt i64 %.1.i, 7
  br i1 %i.eu, label %iter.check, label %._crit_edge53.i

iter.check:                                       ; preds = %bb.ai
  %i.ev = lshr i64 %.1.i, 3                       ; 9 uses
  %i.ew = call i64 @llvm.umax.i64(i64 %i.ev, i64 1) ; 3 uses
  %min.iters.check = icmp ult i64 %.1.i, 32
  br i1 %min.iters.check, label %.preheader46.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ex = icmp ne i64 %i.ev, 0                    ; 2 uses
  %umin.neg = sext i1 %i.ex to i64
  %i.ey = getelementptr i8, ptr %.040.i, i64 %i.ev
  %i.ez = getelementptr i8, ptr %i.ey, i64 1
  %scevgep = getelementptr i8, ptr %i.ez, i64 %umin.neg
  %scevgep116 = getelementptr i8, ptr %i.di, i64 %.1
  %i.fa = and i64 %.1.i, 9223372036854775800
  %i.fb = add i64 %.1, %i.fa                      ; 2 uses
  %i.fc = add i64 %i.fb, 8
  %i.fd = select i1 %i.ex, i64 %i.fb, i64 %i.fc
  %scevgep117 = getelementptr i8, ptr %i.di, i64 %i.fd
  %bound0 = icmp ult ptr %.040.i, %scevgep117
  %bound1 = icmp ult ptr %scevgep116, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader46.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check119 = icmp ult i64 %.1.i, 128
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ew, 12
  %n.vec = and i64 %i.ew, 1152921504606846960     ; 6 uses
  %i.fe = shl nuw nsw i64 %n.vec, 3
  %i.ff = add i64 %.1, %i.fe                      ; 2 uses
  %i.fg = sub nsw i64 %i.ev, %n.vec
  %i.fh = getelementptr i8, ptr %.040.i, i64 %n.vec ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.dg, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fi = shl i64 %index, 3
  %i.fj = add i64 %.1, %i.fi                      ; 16 uses
  %next.gep = getelementptr i8, ptr %.040.i, i64 %index
  %i.fk = getelementptr i8, ptr %i.di, i64 %i.fj  ; 8 uses
  %i.fl = getelementptr i8, ptr %i.di, i64 %i.fj  ; 8 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 8
  %i.fn = getelementptr i8, ptr %i.di, i64 %i.fj  ; 8 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 16
  %i.fp = getelementptr i8, ptr %i.di, i64 %i.fj  ; 8 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 24
  %i.fr = getelementptr i8, ptr %i.di, i64 %i.fj  ; 8 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 32
  %i.ft = getelementptr i8, ptr %i.di, i64 %i.fj  ; 8 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 40
  %i.fv = getelementptr i8, ptr %i.di, i64 %i.fj  ; 8 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 48
  %i.fx = getelementptr i8, ptr %i.di, i64 %i.fj  ; 8 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 56
  %i.fz = getelementptr i8, ptr %i.di, i64 %i.fj  ; 8 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 64
  %i.gb = getelementptr i8, ptr %i.di, i64 %i.fj  ; 8 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 72
  %i.gd = getelementptr i8, ptr %i.di, i64 %i.fj  ; 8 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 80
  %i.gf = getelementptr i8, ptr %i.di, i64 %i.fj  ; 8 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 88
  %i.gh = getelementptr i8, ptr %i.di, i64 %i.fj  ; 8 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 96
  %i.gj = getelementptr i8, ptr %i.di, i64 %i.fj  ; 8 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 104
  %i.gl = getelementptr i8, ptr %i.di, i64 %i.fj  ; 8 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 112
  %i.gn = getelementptr i8, ptr %i.di, i64 %i.fj  ; 8 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 120
  %i.gp = load i8, ptr %i.fk, align 1, !tbaa !97, !alias.scope !943
  %i.gq = load i8, ptr %i.fm, align 1, !tbaa !97, !alias.scope !943
  %i.gr = load i8, ptr %i.fo, align 1, !tbaa !97, !alias.scope !943
  %i.gs = load i8, ptr %i.fq, align 1, !tbaa !97, !alias.scope !943
  %i.gt = load i8, ptr %i.fs, align 1, !tbaa !97, !alias.scope !943
  %i.gu = load i8, ptr %i.fu, align 1, !tbaa !97, !alias.scope !943
  %i.gv = load i8, ptr %i.fw, align 1, !tbaa !97, !alias.scope !943
  %i.gw = load i8, ptr %i.fy, align 1, !tbaa !97, !alias.scope !943
  %i.gx = load i8, ptr %i.ga, align 1, !tbaa !97, !alias.scope !943
  %i.gy = load i8, ptr %i.gc, align 1, !tbaa !97, !alias.scope !943
  %i.gz = load i8, ptr %i.ge, align 1, !tbaa !97, !alias.scope !943
  %i.ha = load i8, ptr %i.gg, align 1, !tbaa !97, !alias.scope !943
  %i.hb = load i8, ptr %i.gi, align 1, !tbaa !97, !alias.scope !943
  %i.hc = load i8, ptr %i.gk, align 1, !tbaa !97, !alias.scope !943
  %i.hd = load i8, ptr %i.gm, align 1, !tbaa !97, !alias.scope !943
  %i.he = load i8, ptr %i.go, align 1, !tbaa !97, !alias.scope !943
  %i.hf = insertelement <16 x i8> poison, i8 %i.gp, i64 0
  %i.hg = insertelement <16 x i8> %i.hf, i8 %i.gq, i64 1
  %i.hh = insertelement <16 x i8> %i.hg, i8 %i.gr, i64 2
  %i.hi = insertelement <16 x i8> %i.hh, i8 %i.gs, i64 3
  %i.hj = insertelement <16 x i8> %i.hi, i8 %i.gt, i64 4
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 5
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 6
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 7
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 8
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 9
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 10
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 11
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 12
  %i.hs = insertelement <16 x i8> %i.hr, i8 %i.hc, i64 13
  %i.ht = insertelement <16 x i8> %i.hs, i8 %i.hd, i64 14
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 15
  %i.hv = icmp eq <16 x i8> %i.hu, %broadcast.splat
  %i.hw = zext <16 x i1> %i.hv to <16 x i8>
  %i.hx = getelementptr i8, ptr %i.fk, i64 1
  %i.hy = getelementptr i8, ptr %i.fl, i64 9
  %i.hz = getelementptr i8, ptr %i.fn, i64 17
  %i.ia = getelementptr i8, ptr %i.fp, i64 25
  %i.ib = getelementptr i8, ptr %i.fr, i64 33
  %i.ic = getelementptr i8, ptr %i.ft, i64 41
  %i.id = getelementptr i8, ptr %i.fv, i64 49
  %i.ie = getelementptr i8, ptr %i.fx, i64 57
  %i.if = getelementptr i8, ptr %i.fz, i64 65
  %i.ig = getelementptr i8, ptr %i.gb, i64 73
end_hunk_0
begin_hunk_1_@_ZNK5arrow16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolE:bb.a
  %i.wn = zext <4 x i1> %i.wm to <4 x i8>
  %i.wo = getelementptr i8, ptr %i.vx, i64 1
  %i.wp = getelementptr i8, ptr %i.vy, i64 9
  %i.wq = getelementptr i8, ptr %i.wa, i64 17
  %i.wr = getelementptr i8, ptr %i.wc, i64 25
  %i.ws = load i8, ptr %i.wo, align 1, !tbaa !97, !alias.scope !943
  %i.wt = load i8, ptr %i.wp, align 1, !tbaa !97, !alias.scope !943
  %i.wu = load i8, ptr %i.wq, align 1, !tbaa !97, !alias.scope !943
  %i.wv = load i8, ptr %i.wr, align 1, !tbaa !97, !alias.scope !943
  %i.ww = insertelement <4 x i8> poison, i8 %i.ws, i64 0
  %i.wx = insertelement <4 x i8> %i.ww, i8 %i.wt, i64 1
  %i.wy = insertelement <4 x i8> %i.wx, i8 %i.wu, i64 2
  %i.wz = insertelement <4 x i8> %i.wy, i8 %i.wv, i64 3
  %i.xa = icmp eq <4 x i8> %i.wz, %broadcast.splat125
  %i.xb = getelementptr i8, ptr %i.vx, i64 2
  %i.xc = getelementptr i8, ptr %i.vy, i64 10
  %i.xd = getelementptr i8, ptr %i.wa, i64 18
  %i.xe = getelementptr i8, ptr %i.wc, i64 26
  %i.xf = load i8, ptr %i.xb, align 1, !tbaa !97, !alias.scope !943
  %i.xg = load i8, ptr %i.xc, align 1, !tbaa !97, !alias.scope !943
  %i.xh = load i8, ptr %i.xd, align 1, !tbaa !97, !alias.scope !943
  %i.xi = load i8, ptr %i.xe, align 1, !tbaa !97, !alias.scope !943
  %i.xj = insertelement <4 x i8> poison, i8 %i.xf, i64 0
  %i.xk = insertelement <4 x i8> %i.xj, i8 %i.xg, i64 1
  %i.xl = insertelement <4 x i8> %i.xk, i8 %i.xh, i64 2
  %i.xm = insertelement <4 x i8> %i.xl, i8 %i.xi, i64 3
  %i.xn = icmp eq <4 x i8> %i.xm, %broadcast.splat125
  %i.xo = getelementptr i8, ptr %i.vx, i64 3
  %i.xp = getelementptr i8, ptr %i.vy, i64 11
  %i.xq = getelementptr i8, ptr %i.wa, i64 19
  %i.xr = getelementptr i8, ptr %i.wc, i64 27
  %i.xs = load i8, ptr %i.xo, align 1, !tbaa !97, !alias.scope !943
  %i.xt = load i8, ptr %i.xp, align 1, !tbaa !97, !alias.scope !943
  %i.xu = load i8, ptr %i.xq, align 1, !tbaa !97, !alias.scope !943
  %i.xv = load i8, ptr %i.xr, align 1, !tbaa !97, !alias.scope !943
  %i.xw = insertelement <4 x i8> poison, i8 %i.xs, i64 0
  %i.xx = insertelement <4 x i8> %i.xw, i8 %i.xt, i64 1
  %i.xy = insertelement <4 x i8> %i.xx, i8 %i.xu, i64 2
  %i.xz = insertelement <4 x i8> %i.xy, i8 %i.xv, i64 3
  %i.ya = icmp eq <4 x i8> %i.xz, %broadcast.splat125
  %i.yb = getelementptr i8, ptr %i.vx, i64 4
  %i.yc = getelementptr i8, ptr %i.vy, i64 12
  %i.yd = getelementptr i8, ptr %i.wa, i64 20
  %i.ye = getelementptr i8, ptr %i.wc, i64 28
  %i.yf = load i8, ptr %i.yb, align 1, !tbaa !97, !alias.scope !943
  %i.yg = load i8, ptr %i.yc, align 1, !tbaa !97, !alias.scope !943
  %i.yh = load i8, ptr %i.yd, align 1, !tbaa !97, !alias.scope !943
  %i.yi = load i8, ptr %i.ye, align 1, !tbaa !97, !alias.scope !943
  %i.yj = insertelement <4 x i8> poison, i8 %i.yf, i64 0
  %i.yk = insertelement <4 x i8> %i.yj, i8 %i.yg, i64 1
  %i.yl = insertelement <4 x i8> %i.yk, i8 %i.yh, i64 2
  %i.ym = insertelement <4 x i8> %i.yl, i8 %i.yi, i64 3
  %i.yn = icmp eq <4 x i8> %i.ym, %broadcast.splat125
  %i.yo = getelementptr i8, ptr %i.vx, i64 5
  %i.yp = getelementptr i8, ptr %i.vy, i64 13
  %i.yq = getelementptr i8, ptr %i.wa, i64 21
  %i.yr = getelementptr i8, ptr %i.wc, i64 29
  %i.ys = load i8, ptr %i.yo, align 1, !tbaa !97, !alias.scope !943
  %i.yt = load i8, ptr %i.yp, align 1, !tbaa !97, !alias.scope !943
  %i.yu = load i8, ptr %i.yq, align 1, !tbaa !97, !alias.scope !943
  %i.yv = load i8, ptr %i.yr, align 1, !tbaa !97, !alias.scope !943
  %i.yw = insertelement <4 x i8> poison, i8 %i.ys, i64 0
  %i.yx = insertelement <4 x i8> %i.yw, i8 %i.yt, i64 1
  %i.yy = insertelement <4 x i8> %i.yx, i8 %i.yu, i64 2
  %i.yz = insertelement <4 x i8> %i.yy, i8 %i.yv, i64 3
  %i.za = icmp eq <4 x i8> %i.yz, %broadcast.splat125
  %i.zb = getelementptr i8, ptr %i.vx, i64 6
  %i.zc = getelementptr i8, ptr %i.vy, i64 14
  %i.zd = getelementptr i8, ptr %i.wa, i64 22
  %i.ze = getelementptr i8, ptr %i.wc, i64 30
  %i.zf = load i8, ptr %i.zb, align 1, !tbaa !97, !alias.scope !943
  %i.zg = load i8, ptr %i.zc, align 1, !tbaa !97, !alias.scope !943
  %i.zh = load i8, ptr %i.zd, align 1, !tbaa !97, !alias.scope !943
  %i.zi = load i8, ptr %i.ze, align 1, !tbaa !97, !alias.scope !943
  %i.zj = insertelement <4 x i8> poison, i8 %i.zf, i64 0
  %i.zk = insertelement <4 x i8> %i.zj, i8 %i.zg, i64 1
  %i.zl = insertelement <4 x i8> %i.zk, i8 %i.zh, i64 2
  %i.zm = insertelement <4 x i8> %i.zl, i8 %i.zi, i64 3
  %i.zn = icmp eq <4 x i8> %i.zm, %broadcast.splat125
  %i.zo = getelementptr i8, ptr %i.vx, i64 7
  %i.zp = getelementptr i8, ptr %i.vy, i64 15
  %i.zq = getelementptr i8, ptr %i.wa, i64 23
  %i.zr = getelementptr i8, ptr %i.wc, i64 31
  %i.zs = load i8, ptr %i.zo, align 1, !tbaa !97, !alias.scope !943
  %i.zt = load i8, ptr %i.zp, align 1, !tbaa !97, !alias.scope !943
  %i.zu = load i8, ptr %i.zq, align 1, !tbaa !97, !alias.scope !943
  %i.zv = load i8, ptr %i.zr, align 1, !tbaa !97, !alias.scope !943
  %i.zw = insertelement <4 x i8> poison, i8 %i.zs, i64 0
  %i.zx = insertelement <4 x i8> %i.zw, i8 %i.zt, i64 1
  %i.zy = insertelement <4 x i8> %i.zx, i8 %i.zu, i64 2
  %i.zz = insertelement <4 x i8> %i.zy, i8 %i.zv, i64 3
  %i.aaa = icmp eq <4 x i8> %i.zz, %broadcast.splat125
  %i.aab = select <4 x i1> %i.xa, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.aac = or disjoint <4 x i8> %i.aab, %i.wn
  %i.aad = select <4 x i1> %i.xn, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer
  %i.aae = or disjoint <4 x i8> %i.aac, %i.aad
  %i.aaf = select <4 x i1> %i.ya, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer
  %i.aag = or disjoint <4 x i8> %i.aae, %i.aaf
  %i.aah = select <4 x i1> %i.yn, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer
  %i.aai = or disjoint <4 x i8> %i.aag, %i.aah
  %i.aaj = select <4 x i1> %i.za, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %i.aak = or disjoint <4 x i8> %i.aai, %i.aaj
  %i.aal = select <4 x i1> %i.zn, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer
  %i.aam = or <4 x i8> %i.aak, %i.aal
  %i.aan = select <4 x i1> %i.aaa, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.aao = or <4 x i8> %i.aam, %i.aan
  store <4 x i8> %i.aao, ptr %next.gep127, align 1, !tbaa !97, !alias.scope !946, !noalias !943
  %index.next128 = add nuw i64 %index126, 4       ; 2 uses
  %i.aap = icmp eq i64 %index.next128, %n.vec123
  br i1 %i.aap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !950

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n129 = icmp eq i64 %i.ev, %n.vec123
  br i1 %cmp.n129, label %._crit_edge53.i, label %.preheader46.i.preheader

.preheader46.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3.ph = phi i64 [ %.1, %iter.check ], [ %.1, %vector.memcheck ], [ %i.ff, %vec.epilog.iter.check ], [ %i.vs, %vec.epilog.middle.block ]
  %.in.i.ph = phi i64 [ %i.ev, %iter.check ], [ %i.ev, %vector.memcheck ], [ %i.fg, %vec.epilog.iter.check ], [ %i.vt, %vec.epilog.middle.block ]
  %.14152.i.ph = phi ptr [ %.040.i, %iter.check ], [ %.040.i, %vector.memcheck ], [ %i.fh, %vec.epilog.iter.check ], [ %i.vu, %vec.epilog.middle.block ]
  %i.aaq = insertelement <8 x i8> poison, i8 %i.dg, i64 0
  %i.aar = shufflevector <8 x i8> %i.aaq, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %.preheader46.i

.preheader46.i:                                   ; preds = %.preheader46.i.preheader, %.preheader46.i
  %.3 = phi i64 [ %i.aat, %.preheader46.i ], [ %.3.ph, %.preheader46.i.preheader ] ; 2 uses
  %.in.i = phi i64 [ %i.aau, %.preheader46.i ], [ %.in.i.ph, %.preheader46.i.preheader ] ; 2 uses
  %.14152.i = phi ptr [ %i.aax, %.preheader46.i ], [ %.14152.i.ph, %.preheader46.i.preheader ] ; 2 uses
  %i.aas = getelementptr i8, ptr %i.di, i64 %.3
  %i.aat = add nuw nsw i64 %.3, 8                 ; 2 uses
  %i.aau = add nsw i64 %.in.i, -1
  %i.aav = load <8 x i8>, ptr %i.aas, align 1, !tbaa !97
  %i.aaw = icmp eq <8 x i8> %i.aav, %i.aar
  %i.aax = getelementptr inbounds nuw i8, ptr %.14152.i, i64 1 ; 2 uses
  store <8 x i1> %i.aaw, ptr %.14152.i, align 1, !tbaa !97
  %i.aay = icmp samesign ugt i64 %.in.i, 1
  br i1 %i.aay, label %.preheader46.i, label %._crit_edge53.i, !llvm.loop !951

._crit_edge53.i:                                  ; preds = %.preheader46.i, %middle.block, %vec.epilog.middle.block, %bb.ai
  %.2 = phi i64 [ %.1, %bb.ai ], [ %i.vs, %vec.epilog.middle.block ], [ %i.ff, %middle.block ], [ %i.aat, %.preheader46.i ] ; 2 uses
  %.141.lcssa.i = phi ptr [ %.040.i, %bb.ai ], [ %i.vu, %vec.epilog.middle.block ], [ %i.fh, %middle.block ], [ %i.aax, %.preheader46.i ]
  %i.aaz = srem i64 %.1.i, 8                      ; 6 uses
  %.not45.i = icmp eq i64 %i.aaz, 0
  br i1 %.not45.i, label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNKS_16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolEE3$_0EEvPhllOT_.exit", label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge53.i
  %i.aba = icmp sgt i64 %i.aaz, 0
  br i1 %i.aba, label %.lr.ph58.i.preheader, label %._crit_edge59.i

.lr.ph58.i.preheader:                             ; preds = %.preheader.i
  %xtraiter = and i64 %i.aaz, 1
  %i.abb = icmp eq i64 %i.aaz, 1
  br i1 %i.abb, label %.lr.ph58.i.epil.preheader, label %.lr.ph58.i.preheader.new

.lr.ph58.i.preheader.new:                         ; preds = %.lr.ph58.i.preheader
  %unroll_iter = and i64 %i.aaz, 9223372036854775806
  br label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %.lr.ph58.i, %.lr.ph58.i.preheader.new
  %i.abc = phi i64 [ %.2, %.lr.ph58.i.preheader.new ], [ %i.abj, %.lr.ph58.i ] ; 3 uses
  %.13756.i = phi i8 [ 1, %.lr.ph58.i.preheader.new ], [ %i.abq, %.lr.ph58.i ] ; 3 uses
  %.13955.i = phi i8 [ 0, %.lr.ph58.i.preheader.new ], [ %i.abp, %.lr.ph58.i ]
  %niter = phi i64 [ 0, %.lr.ph58.i.preheader.new ], [ %niter.next.1, %.lr.ph58.i ]
  %i.abd = getelementptr inbounds i8, ptr %i.di, i64 %i.abc
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !97
  %i.abf = icmp eq i8 %i.abe, %i.dg
  %i.abg = select i1 %i.abf, i8 %.13756.i, i8 0
  %i.abh = or i8 %i.abg, %.13955.i
  %i.abi = shl i8 %.13756.i, 1
  %i.abj = add nsw i64 %i.abc, 2                  ; 2 uses
  %i.abk = getelementptr i8, ptr %i.di, i64 %i.abc
  %i.abl = getelementptr i8, ptr %i.abk, i64 1
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !97
  %i.abn = icmp eq i8 %i.abm, %i.dg
  %i.abo = select i1 %i.abn, i8 %i.abi, i8 0
  %i.abp = or i8 %i.abo, %i.abh                   ; 3 uses
  %i.abq = shl i8 %.13756.i, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge59.i.loopexit.unr-lcssa, label %.lr.ph58.i, !llvm.loop !952

._crit_edge59.i.loopexit.unr-lcssa:               ; preds = %.lr.ph58.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge59.i, label %.lr.ph58.i.epil.preheader

.lr.ph58.i.epil.preheader:                        ; preds = %._crit_edge59.i.loopexit.unr-lcssa, %.lr.ph58.i.preheader
  %.epil.init = phi i64 [ %.2, %.lr.ph58.i.preheader ], [ %i.abj, %._crit_edge59.i.loopexit.unr-lcssa ]
  %.13756.i.epil.init = phi i8 [ 1, %.lr.ph58.i.preheader ], [ %i.abq, %._crit_edge59.i.loopexit.unr-lcssa ]
  %.13955.i.epil.init = phi i8 [ 0, %.lr.ph58.i.preheader ], [ %i.abp, %._crit_edge59.i.loopexit.unr-lcssa ]
  %lcmp.mod139 = trunc i64 %i.aaz to i1
  call void @llvm.assume(i1 %lcmp.mod139)
  %i.abr = getelementptr inbounds i8, ptr %i.di, i64 %.epil.init
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !97
  %i.abt = icmp eq i8 %i.abs, %i.dg
  %i.abu = select i1 %i.abt, i8 %.13756.i.epil.init, i8 0
  %i.abv = or i8 %i.abu, %.13955.i.epil.init
  br label %._crit_edge59.i

._crit_edge59.i:                                  ; preds = %.lr.ph58.i.epil.preheader, %._crit_edge59.i.loopexit.unr-lcssa, %.preheader.i
  %.139.lcssa.i = phi i8 [ 0, %.preheader.i ], [ %i.abp, %._crit_edge59.i.loopexit.unr-lcssa ], [ %i.abv, %.lr.ph58.i.epil.preheader ]
  store i8 %.139.lcssa.i, ptr %.141.lcssa.i, align 1, !tbaa !97
  br label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNKS_16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolEE3$_0EEvPhllOT_.exit"

"_ZN5arrow8internal20GenerateBitsUnrolledIZNKS_16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolEE3$_0EEvPhllOT_.exit": ; preds = %._crit_edge59.i, %._crit_edge53.i, %bb.ae
  %12 = load ptr, ptr %8, align 16, !tbaa !179    ; 3 uses
  %.not71 = icmp eq ptr %12, null
  %.pre84 = load ptr, ptr %10, align 16, !tbaa !179 ; 4 uses
  br i1 %.not71, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %"_ZN5arrow8internal20GenerateBitsUnrolledIZNKS_16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolEE3$_0EEvPhllOT_.exit"
  %i.abw = getelementptr inbounds nuw i8, ptr %.pre84, i64 9
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !182, !range !111, !noundef !112
  %i.aby = trunc nuw i8 %i.abx to i1              ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %.pre84, i64 16
  %i.aca = load ptr, ptr %i.abz, align 8          ; 2 uses
  %i.acb = select i1 %i.aby, ptr %i.aca, ptr null, !prof !83
  %i.acc = getelementptr inbounds nuw i8, ptr %12, i64 9
  %i.acd = load i8, ptr %i.acc, align 1, !tbaa !182, !range !111, !noundef !112
  %i.ace = trunc nuw i8 %i.acd to i1
  %i.acf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.acg = load ptr, ptr %i.acf, align 8
  %i.ach = select i1 %i.ace, ptr %i.acg, ptr null, !prof !83
  %i.aci = load ptr, ptr %6, align 16, !tbaa !33
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 16
  %i.ack = load i64, ptr %i.acj, align 8, !tbaa !39
  %i.acl = getelementptr inbounds nuw i8, ptr %.pre84, i64 8
  %i.acm = load i8, ptr %i.acl, align 8, !range !111
  %i.acn = trunc nuw i8 %i.acm to i1
  %i.aco = select i1 %i.aby, i1 %i.acn, i1 false, !prof !83
  %i.acp = select i1 %i.aco, ptr %i.aca, ptr null, !prof !83
  invoke void @_ZN5arrow8internal9BitmapAndEPKhlS2_lllPh(ptr noundef %i.acb, i64 noundef %i.cn, ptr noundef %i.ach, i64 noundef %i.cn, i64 noundef %i.ack, i64 noundef %i.cn, ptr noundef %i.acp)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.acq = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.al:                                            ; preds = %bb.aj, %"_ZN5arrow8internal20GenerateBitsUnrolledIZNKS_16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolEE3$_0EEvPhllOT_.exit"
  %i.acr = load ptr, ptr %6, align 16, !tbaa !33
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 40
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !178 ; 2 uses
  %i.acu = load ptr, ptr %i.cv, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store ptr %.pre84, ptr %i.act, align 8, !tbaa !271
  %i.acv = getelementptr inbounds nuw i8, ptr %i.act, i64 8 ; 2 uses
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !90 ; 8 uses
  store ptr %i.acu, ptr %i.acv, align 8, !tbaa !90
  %.not.i.i.i.i27 = icmp eq ptr %i.acw, null
  br i1 %.not.i.i.i.i27, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 8 ; 4 uses
  %i.acy = load atomic i64, ptr %i.acx acquire, align 8 ; 2 uses
  %i.acz = icmp eq i64 %i.acy, 4294967297
  %i.ada = trunc i64 %i.acy to i32                ; 2 uses
  br i1 %i.acz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.acx, align 8, !tbaa !91
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acw, i64 12
  store i32 0, ptr %i.adb, align 4, !tbaa !93
  %i.adc = load ptr, ptr %i.acw, align 8, !tbaa !94
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  %i.ade = load ptr, ptr %i.add, align 8
  call void %i.ade(ptr noundef nonnull align 8 dereferenceable(16) %i.acw) #23, !inline_history !883
  %i.adf = load ptr, ptr %i.acw, align 8, !tbaa !94
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 24
  %i.adh = load ptr, ptr %i.adg, align 8
  call void %i.adh(ptr noundef nonnull align 8 dereferenceable(16) %i.acw) #23, !inline_history !883
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

bb.ao:                                            ; preds = %bb.am
  %i.adi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i.i28 = icmp eq i8 %i.adi, 0
  br i1 %.not.i.i.i.i.i28, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.adj = add nsw i32 %i.ada, -1
  store i32 %i.adj, ptr %i.acx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i29

bb.aq:                                            ; preds = %bb.ao
  %i.adk = atomicrmw volatile add ptr %i.acx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i29

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i29: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i30 = phi i32 [ %i.ada, %bb.ap ], [ %i.adk, %bb.aq ]
  %i.adl = icmp eq i32 %.0.i.i.i.i.i.i30, 1
  br i1 %i.adl, label %bb.ar, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, !prof !98

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i29
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.acw) #23
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit:   ; preds = %bb.al, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i29, %bb.ar
  %i.adm = load ptr, ptr %6, align 16, !tbaa !33
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 24
  store atomic i64 -1, ptr %i.adn seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.ay

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit
  store ptr null, ptr %0, align 8, !tbaa !80
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adp = load <2 x ptr>, ptr %11, align 16, !tbaa !84
  store <2 x ptr> %i.adp, ptr %i.ado, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.adq = load ptr, ptr %i.cv, align 8, !tbaa !90 ; 8 uses
  %.not.i.i35 = icmp eq ptr %i.adq, null
  br i1 %.not.i.i35, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 8 ; 4 uses
  %i.ads = load atomic i64, ptr %i.adr acquire, align 8 ; 2 uses
  %i.adt = icmp eq i64 %i.ads, 4294967297
  %i.adu = trunc i64 %i.ads to i32                ; 2 uses
  br i1 %i.adt, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.adr, align 8, !tbaa !91
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adq, i64 12
  store i32 0, ptr %i.adv, align 4, !tbaa !93
  %i.adw = load ptr, ptr %i.adq, align 8, !tbaa !94
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 16
  %i.ady = load ptr, ptr %i.adx, align 8
  call void %i.ady(ptr noundef nonnull align 8 dereferenceable(16) %i.adq) #23, !inline_history !232
  %i.adz = load ptr, ptr %i.adq, align 8, !tbaa !94
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 24
  %i.aeb = load ptr, ptr %i.aea, align 8
  call void %i.aeb(ptr noundef nonnull align 8 dereferenceable(16) %i.adq) #23, !inline_history !232
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.au:                                            ; preds = %bb.as
  %i.aec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i36 = icmp eq i8 %i.aec, 0
  br i1 %.not.i.i.i36, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.aed = add nsw i32 %i.adu, -1
  store i32 %i.aed, ptr %i.adr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37

bb.aw:                                            ; preds = %bb.au
  %i.aee = atomicrmw volatile add ptr %i.adr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i38 = phi i32 [ %i.adu, %bb.av ], [ %i.aee, %bb.aw ]
  %i.aef = icmp eq i32 %.0.i.i.i.i38, 1
  br i1 %i.aef, label %bb.ax, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adq) #23
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ba

bb.ay:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit
  %i.aeg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.az

bb.az:                                            ; preds = %bb.ak, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.acq, %bb.ak ], [ %i.aeg, %bb.ay ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bv

bb.ba:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ac
  %i.aeh = load ptr, ptr %9, align 8, !tbaa !80   ; 2 uses
  %i.aei = icmp eq ptr %i.aeh, null
  br i1 %i.aei, label %bb.bb, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !83

bb.bb:                                            ; preds = %bb.ba
  %i.aej = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !90 ; 8 uses
  %.not.i.i.i.i.i39 = icmp eq ptr %i.aek, null
  br i1 %.not.i.i.i.i.i39, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 8 ; 4 uses
  %i.aem = load atomic i64, ptr %i.ael acquire, align 8 ; 2 uses
  %i.aen = icmp eq i64 %i.aem, 4294967297
  %i.aeo = trunc i64 %i.aem to i32                ; 2 uses
  br i1 %i.aen, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.ael, align 8, !tbaa !91
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aek, i64 12
  store i32 0, ptr %i.aep, align 4, !tbaa !93
  %i.aeq = load ptr, ptr %i.aek, align 8, !tbaa !94
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 16
  %i.aes = load ptr, ptr %i.aer, align 8
  call void %i.aes(ptr noundef nonnull align 8 dereferenceable(16) %i.aek) #23, !inline_history !728
  %i.aet = load ptr, ptr %i.aek, align 8, !tbaa !94
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 24
  %i.aev = load ptr, ptr %i.aeu, align 8
  call void %i.aev(ptr noundef nonnull align 8 dereferenceable(16) %i.aek) #23, !inline_history !728
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

end_hunk_1
