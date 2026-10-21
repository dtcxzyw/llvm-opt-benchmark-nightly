Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/array_nested?download=true
inline.NumInlined: 5094
inline.NumDeleted: 1576
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 84
begin_hunk_0_@_ZNK5arrow16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolE:bb.a
bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ai, align 8, !tbaa !102
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !103
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !105
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #21, !inline_history !25
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !105
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #21, !inline_history !25
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.k:                                             ; preds = %bb.i
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.al, %bb.l ], [ %i.av, %bb.m ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aw, label %bb.n, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, !prof !108

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #21
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  %.pr = load ptr, ptr %i.af, align 8, !tbaa !100 ; 8 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ax, align 8, !tbaa !102
  %i.bb = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !103
  %i.bc = load ptr, ptr %.pr, align 8, !tbaa !105
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #21, !inline_history !8
  %i.bf = load ptr, ptr %.pr, align 8, !tbaa !105
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #21, !inline_history !8
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi i32 [ %i.ba, %bb.r ], [ %i.bk, %bb.s ]
  %i.bl = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bl, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !108

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #21
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %.pre = load ptr, ptr %5, align 16, !tbaa !52
  br label %bb.v

bb.u:                                             ; preds = %bb.g
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.bt

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.f
  %i.bn = phi ptr [ %.pre, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.v, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !142 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !100 ; 2 uses
  %i.bt = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !99
  store <2 x ptr> %i.bt, ptr %7, align 16, !tbaa !99
  %.not.i.i.i24 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i24, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i.i25 = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i25, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !107
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !107
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

bb.y:                                             ; preds = %bb.w
  %i.by = atomicrmw volatile add ptr %i.bu, i32 1 acq_rel, align 4 ; 0 uses
  %.pre82 = load ptr, ptr %5, align 16, !tbaa !52
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit:  ; preds = %bb.v, %bb.x, %bb.y
  %i.bz = phi ptr [ %i.bn, %bb.v ], [ %i.bn, %bb.x ], [ %.pre82, %bb.y ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !118 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !74
  %i.ce = add nsw i64 %i.cd, %i.cb
  invoke void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.130") align 8 %8, i64 noundef %i.ce, ptr noundef %3)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.cf = load ptr, ptr %8, align 8, !tbaa !97
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.ac, label %bb.aa, !prof !98

bb.aa:                                            ; preds = %bb.z
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %bb.ay

bb.ab:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cl = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !99, !noalias !1009
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !145, !noalias !1009 ; 5 uses
  store ptr null, ptr %i.ck, align 8, !tbaa !100, !noalias !1009
  store <2 x ptr> %i.cl, ptr %9, align 16, !tbaa !99, !alias.scope !1009
  store ptr null, ptr %i.ci, align 8, !tbaa !145, !noalias !1009
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1010
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  %i.cq = load i32, ptr %i.a, align 4, !tbaa !107
  %i.cr = sext i32 %i.cq to i64
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !282
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !106 ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !280 ; 31 uses
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !74 ; 5 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNKS_16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolEE3$_0EEvPhllOT_.exit", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 9
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !153, !range !154, !noundef !155
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.df = load i8, ptr %i.de, align 8, !range !154
  %i.dg = trunc nuw i8 %i.df to i1
  %i.dh = select i1 %i.dd, i1 %i.dg, i1 false, !prof !98
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = select i1 %i.dh, ptr %i.dj, ptr null, !prof !98
  %i.dl = sdiv i64 %i.cb, 8
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 %i.dl ; 4 uses
  %i.dn = srem i64 %i.cb, 8                       ; 3 uses
  %.not.i26 = icmp eq i64 %i.dn, 0
  br i1 %.not.i26, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.do = load i8, ptr %i.dm, align 1, !tbaa !106
  %i.dp = trunc nsw i64 %i.dn to i8
  %notmask.i = shl nsw i8 -1, %i.dp
  %i.dq = xor i8 %notmask.i, -1
  %i.dr = and i8 %i.do, %i.dq                     ; 2 uses
  %i.ds = icmp sgt i64 %i.cz, 0
  br i1 %i.ds, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ae
  %11 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.dn
  %12 = load i8, ptr %11, align 1, !tbaa !106
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph.i
  %i.dt = phi i64 [ 0, %.lr.ph.i ], [ %i.du, %bb.af ] ; 2 uses
  %.03549.i = phi i64 [ %i.cz, %.lr.ph.i ], [ %i.eb, %bb.af ] ; 2 uses
  %.03648.i = phi i8 [ %12, %.lr.ph.i ], [ %i.ea, %bb.af ] ; 2 uses
  %.04047.i = phi i8 [ %i.dr, %.lr.ph.i ], [ %i.dz, %bb.af ]
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dt
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !106
  %i.dx = icmp eq i8 %i.dw, %i.cu
  %i.dy = select i1 %i.dx, i8 %.03648.i, i8 0
  %i.dz = or i8 %i.dy, %.04047.i                  ; 2 uses
  %i.ea = shl i8 %.03648.i, 1                     ; 2 uses
  %i.eb = add nsw i64 %.03549.i, -1               ; 2 uses
  %i.ec = icmp ne i8 %i.ea, 0
  %i.ed = icmp samesign ugt i64 %.03549.i, 1
  %i.ee = select i1 %i.ec, i1 %i.ed, i1 false
  br i1 %i.ee, label %bb.af, label %._crit_edge.i, !llvm.loop !996

._crit_edge.i:                                    ; preds = %bb.af, %bb.ae
  %.0 = phi i64 [ 0, %bb.ae ], [ %i.du, %bb.af ]
  %.040.lcssa.i = phi i8 [ %i.dr, %bb.ae ], [ %i.dz, %bb.af ]
  %.035.lcssa.i = phi i64 [ %i.cz, %bb.ae ], [ %i.eb, %bb.af ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  store i8 %.040.lcssa.i, ptr %i.dm, align 1, !tbaa !106
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i, %bb.ad
  %.1 = phi i64 [ 0, %bb.ad ], [ %.0, %._crit_edge.i ] ; 9 uses
  %.038.i = phi ptr [ %i.dm, %bb.ad ], [ %i.ef, %._crit_edge.i ] ; 9 uses
  %.1.i = phi i64 [ %i.cz, %bb.ad ], [ %.035.lcssa.i, %._crit_edge.i ] ; 7 uses
  %i.eg = icmp sgt i64 %.1.i, 7
  br i1 %i.eg, label %iter.check, label %._crit_edge53.i

iter.check:                                       ; preds = %bb.ag
  %i.eh = lshr i64 %.1.i, 3                       ; 9 uses
  %min.iters.check = icmp ult i64 %.1.i, 64
  br i1 %min.iters.check, label %.preheader46.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ei = getelementptr i8, ptr %.038.i, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.cw, i64 %.1
  %i.ek = and i64 %.1.i, 9223372036854775800
  %i.el = getelementptr i8, ptr %i.cw, i64 %.1
  %i.em = getelementptr i8, ptr %i.el, i64 %i.ek
  %bound0 = icmp ult ptr %.038.i, %i.em
  %bound1 = icmp ult ptr %i.ej, %i.ei
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader46.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check111 = icmp ult i64 %.1.i, 128
  br i1 %min.iters.check111, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.eh, 1152921504606846960     ; 5 uses
  %i.en = shl nuw nsw i64 %n.vec, 3
  %i.eo = add i64 %.1, %i.en                      ; 2 uses
  %i.ep = and i64 %i.eh, 15
  %i.eq = getelementptr i8, ptr %.038.i, i64 %n.vec ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.cu, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.er = shl nuw i64 %index, 3
  %i.es = add nuw i64 %.1, %i.er                  ; 16 uses
  %next.gep = getelementptr i8, ptr %.038.i, i64 %index
  %i.et = getelementptr i8, ptr %i.cw, i64 %i.es  ; 8 uses
  %i.eu = getelementptr i8, ptr %i.cw, i64 %i.es  ; 8 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  %i.ew = getelementptr i8, ptr %i.cw, i64 %i.es  ; 8 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  %i.ey = getelementptr i8, ptr %i.cw, i64 %i.es  ; 8 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 24
  %i.fa = getelementptr i8, ptr %i.cw, i64 %i.es  ; 8 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 32
  %i.fc = getelementptr i8, ptr %i.cw, i64 %i.es  ; 8 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 40
  %i.fe = getelementptr i8, ptr %i.cw, i64 %i.es  ; 8 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 48
  %i.fg = getelementptr i8, ptr %i.cw, i64 %i.es  ; 8 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 56
  %i.fi = getelementptr i8, ptr %i.cw, i64 %i.es  ; 8 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 64
  %i.fk = getelementptr i8, ptr %i.cw, i64 %i.es  ; 8 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 72
  %i.fm = getelementptr i8, ptr %i.cw, i64 %i.es  ; 8 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 80
  %i.fo = getelementptr i8, ptr %i.cw, i64 %i.es  ; 8 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 88
  %i.fq = getelementptr i8, ptr %i.cw, i64 %i.es  ; 8 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 96
  %i.fs = getelementptr i8, ptr %i.cw, i64 %i.es  ; 8 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 104
  %i.fu = getelementptr i8, ptr %i.cw, i64 %i.es  ; 8 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 112
  %i.fw = getelementptr i8, ptr %i.cw, i64 %i.es  ; 8 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 120
  %i.fy = load i8, ptr %i.et, align 1, !tbaa !106, !alias.scope !1011
  %i.fz = load i8, ptr %i.ev, align 1, !tbaa !106, !alias.scope !1011
  %i.ga = load i8, ptr %i.ex, align 1, !tbaa !106, !alias.scope !1011
  %i.gb = load i8, ptr %i.ez, align 1, !tbaa !106, !alias.scope !1011
  %i.gc = load i8, ptr %i.fb, align 1, !tbaa !106, !alias.scope !1011
  %i.gd = load i8, ptr %i.fd, align 1, !tbaa !106, !alias.scope !1011
  %i.ge = load i8, ptr %i.ff, align 1, !tbaa !106, !alias.scope !1011
  %i.gf = load i8, ptr %i.fh, align 1, !tbaa !106, !alias.scope !1011
  %i.gg = load i8, ptr %i.fj, align 1, !tbaa !106, !alias.scope !1011
  %i.gh = load i8, ptr %i.fl, align 1, !tbaa !106, !alias.scope !1011
  %i.gi = load i8, ptr %i.fn, align 1, !tbaa !106, !alias.scope !1011
  %i.gj = load i8, ptr %i.fp, align 1, !tbaa !106, !alias.scope !1011
  %i.gk = load i8, ptr %i.fr, align 1, !tbaa !106, !alias.scope !1011
  %i.gl = load i8, ptr %i.ft, align 1, !tbaa !106, !alias.scope !1011
  %i.gm = load i8, ptr %i.fv, align 1, !tbaa !106, !alias.scope !1011
  %i.gn = load i8, ptr %i.fx, align 1, !tbaa !106, !alias.scope !1011
  %i.go = insertelement <16 x i8> poison, i8 %i.fy, i64 0
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 1
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 2
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 3
  %i.gs = insertelement <16 x i8> %i.gr, i8 %i.gc, i64 4
  %i.gt = insertelement <16 x i8> %i.gs, i8 %i.gd, i64 5
  %i.gu = insertelement <16 x i8> %i.gt, i8 %i.ge, i64 6
  %i.gv = insertelement <16 x i8> %i.gu, i8 %i.gf, i64 7
  %i.gw = insertelement <16 x i8> %i.gv, i8 %i.gg, i64 8
  %i.gx = insertelement <16 x i8> %i.gw, i8 %i.gh, i64 9
  %i.gy = insertelement <16 x i8> %i.gx, i8 %i.gi, i64 10
  %i.gz = insertelement <16 x i8> %i.gy, i8 %i.gj, i64 11
  %i.ha = insertelement <16 x i8> %i.gz, i8 %i.gk, i64 12
  %i.hb = insertelement <16 x i8> %i.ha, i8 %i.gl, i64 13
  %i.hc = insertelement <16 x i8> %i.hb, i8 %i.gm, i64 14
  %i.hd = insertelement <16 x i8> %i.hc, i8 %i.gn, i64 15
  %i.he = icmp eq <16 x i8> %i.hd, %broadcast.splat
  %i.hf = zext <16 x i1> %i.he to <16 x i8>
  %i.hg = getelementptr i8, ptr %i.et, i64 1
  %i.hh = getelementptr i8, ptr %i.eu, i64 9
  %i.hi = getelementptr i8, ptr %i.ew, i64 17
  %i.hj = getelementptr i8, ptr %i.ey, i64 25
  %i.hk = getelementptr i8, ptr %i.fa, i64 33
  %i.hl = getelementptr i8, ptr %i.fc, i64 41
  %i.hm = getelementptr i8, ptr %i.fe, i64 49
  %i.hn = getelementptr i8, ptr %i.fg, i64 57
  %i.ho = getelementptr i8, ptr %i.fi, i64 65
  %i.hp = getelementptr i8, ptr %i.fk, i64 73
  %i.hq = getelementptr i8, ptr %i.fm, i64 81
  %i.hr = getelementptr i8, ptr %i.fo, i64 89
  %i.hs = getelementptr i8, ptr %i.fq, i64 97
  %i.ht = getelementptr i8, ptr %i.fs, i64 105
  %i.hu = getelementptr i8, ptr %i.fu, i64 113
  %i.hv = getelementptr i8, ptr %i.fw, i64 121
  %i.hw = load i8, ptr %i.hg, align 1, !tbaa !106, !alias.scope !1011
  %i.hx = load i8, ptr %i.hh, align 1, !tbaa !106, !alias.scope !1011
  %i.hy = load i8, ptr %i.hi, align 1, !tbaa !106, !alias.scope !1011
  %i.hz = load i8, ptr %i.hj, align 1, !tbaa !106, !alias.scope !1011
  %i.ia = load i8, ptr %i.hk, align 1, !tbaa !106, !alias.scope !1011
  %i.ib = load i8, ptr %i.hl, align 1, !tbaa !106, !alias.scope !1011
  %i.ic = load i8, ptr %i.hm, align 1, !tbaa !106, !alias.scope !1011
  %i.id = load i8, ptr %i.hn, align 1, !tbaa !106, !alias.scope !1011
  %i.ie = load i8, ptr %i.ho, align 1, !tbaa !106, !alias.scope !1011
  %i.if = load i8, ptr %i.hp, align 1, !tbaa !106, !alias.scope !1011
  %i.ig = load i8, ptr %i.hq, align 1, !tbaa !106, !alias.scope !1011
  %i.ih = load i8, ptr %i.hr, align 1, !tbaa !106, !alias.scope !1011
  %i.ii = load i8, ptr %i.hs, align 1, !tbaa !106, !alias.scope !1011
  %i.ij = load i8, ptr %i.ht, align 1, !tbaa !106, !alias.scope !1011
  %i.ik = load i8, ptr %i.hu, align 1, !tbaa !106, !alias.scope !1011
  %i.il = load i8, ptr %i.hv, align 1, !tbaa !106, !alias.scope !1011
  %i.im = insertelement <16 x i8> poison, i8 %i.hw, i64 0
  %i.in = insertelement <16 x i8> %i.im, i8 %i.hx, i64 1
  %i.io = insertelement <16 x i8> %i.in, i8 %i.hy, i64 2
  %i.ip = insertelement <16 x i8> %i.io, i8 %i.hz, i64 3
  %i.iq = insertelement <16 x i8> %i.ip, i8 %i.ia, i64 4
  %i.ir = insertelement <16 x i8> %i.iq, i8 %i.ib, i64 5
  %i.is = insertelement <16 x i8> %i.ir, i8 %i.ic, i64 6
  %i.it = insertelement <16 x i8> %i.is, i8 %i.id, i64 7
  %i.iu = insertelement <16 x i8> %i.it, i8 %i.ie, i64 8
  %i.iv = insertelement <16 x i8> %i.iu, i8 %i.if, i64 9
  %i.iw = insertelement <16 x i8> %i.iv, i8 %i.ig, i64 10
  %i.ix = insertelement <16 x i8> %i.iw, i8 %i.ih, i64 11
  %i.iy = insertelement <16 x i8> %i.ix, i8 %i.ii, i64 12
  %i.iz = insertelement <16 x i8> %i.iy, i8 %i.ij, i64 13
  %i.ja = insertelement <16 x i8> %i.iz, i8 %i.ik, i64 14
  %i.jb = insertelement <16 x i8> %i.ja, i8 %i.il, i64 15
  %i.jc = icmp eq <16 x i8> %i.jb, %broadcast.splat
  %i.jd = getelementptr i8, ptr %i.et, i64 2
  %i.je = getelementptr i8, ptr %i.eu, i64 10
  %i.jf = getelementptr i8, ptr %i.ew, i64 18
  %i.jg = getelementptr i8, ptr %i.ey, i64 26
  %i.jh = getelementptr i8, ptr %i.fa, i64 34
  %i.ji = getelementptr i8, ptr %i.fc, i64 42
  %i.jj = getelementptr i8, ptr %i.fe, i64 50
  %i.jk = getelementptr i8, ptr %i.fg, i64 58
  %i.jl = getelementptr i8, ptr %i.fi, i64 66
  %i.jm = getelementptr i8, ptr %i.fk, i64 74
  %i.jn = getelementptr i8, ptr %i.fm, i64 82
  %i.jo = getelementptr i8, ptr %i.fo, i64 90
  %i.jp = getelementptr i8, ptr %i.fq, i64 98
  %i.jq = getelementptr i8, ptr %i.fs, i64 106
  %i.jr = getelementptr i8, ptr %i.fu, i64 114
  %i.js = getelementptr i8, ptr %i.fw, i64 122
  %i.jt = load i8, ptr %i.jd, align 1, !tbaa !106, !alias.scope !1011
  %i.ju = load i8, ptr %i.je, align 1, !tbaa !106, !alias.scope !1011
  %i.jv = load i8, ptr %i.jf, align 1, !tbaa !106, !alias.scope !1011
  %i.jw = load i8, ptr %i.jg, align 1, !tbaa !106, !alias.scope !1011
  %i.jx = load i8, ptr %i.jh, align 1, !tbaa !106, !alias.scope !1011
  %i.jy = load i8, ptr %i.ji, align 1, !tbaa !106, !alias.scope !1011
  %i.jz = load i8, ptr %i.jj, align 1, !tbaa !106, !alias.scope !1011
end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_5FieldEEEEES2_DpOT_:bb.a
bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8ListTypeC2ESt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef align 8 %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::shared_ptr.81"], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 25, ptr %i.b, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow8ListTypeE, i64 16), ptr %0, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !99
  store ptr null, ptr %i.d, align 8, !tbaa !100
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !99
  store ptr null, ptr %1, align 8, !tbaa !166
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.f)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %bb.h

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100  ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !103
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #21, !inline_history !22
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !105
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #21, !inline_history !22
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !106
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !108

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #21
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.h:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZN5arrow12BaseListTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #21
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow15BaseListBuilderINS_8ListTypeEE12AppendValuesEPKilPKh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %class.anon.283, align 8            ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !210, !noalias !1272 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !105, !noalias !1272
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1272
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !1272, !inline_history !13
  %i.i = add nsw i64 %i.h, %3                     ; 2 uses
  %.not.i = icmp sgt i64 %i.i, %i.d
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit10.thread

_ZN5arrow6StatusD2Ev.exit10.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.j = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.i, i64 %i.j)
  %i.k = load ptr, ptr %1, align 8, !tbaa !105, !noalias !1272
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !1272
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !13
  %.pr = load ptr, ptr %6, align 8, !tbaa !97, !noalias !1273 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  store ptr %.pr, ptr %0, align 8, !tbaa !97, !alias.scope !1273
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit10.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.o = icmp eq ptr %4, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %3)
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %4, ptr %i.a, align 8, !tbaa !170
  %i.p = icmp eq i64 %3, 0
  br i1 %i.p, label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !tbaa !137
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !212
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.a, ptr %5, align 8, !tbaa !328
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.v, align 8, !tbaa !329
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.q, ptr %i.w, align 8, !tbaa !332
  call void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_(ptr noundef %i.s, i64 noundef %i.u, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.x = load i64, ptr %i.t, align 8, !tbaa !213
  %i.y = add nsw i64 %i.x, %3
  store i64 %i.y, ptr %i.t, align 8, !tbaa !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !215
  %i.ab = add nsw i64 %i.aa, %3
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !215
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !214
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !317
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit

_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit: ; preds = %bb.c, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i
  %i.af = shl i64 %3, 2                           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !212
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !316
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %2, i64 %i.af, i1 false)
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !316
  %i.am = add nsw i64 %i.al, %i.af
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !316
  store ptr null, ptr %0, align 8, !tbaa !97, !alias.scope !1274
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !106
  %i.f = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %i.f
  %i.g = xor i8 %notmask, -1
  %i.h = and i8 %i.e, %i.g                        ; 2 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %5 = load i8, ptr %4, align 1, !tbaa !106
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !332
  %i.l = load ptr, ptr %3, align 8, !tbaa !1278, !nonnull !155, !align !226
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !170
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1279, !nonnull !155, !align !226 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.aa, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %5, %.lr.ph ], [ %i.z, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.h, %.lr.ph ], [ %i.y, %bb.d ]
  %i.q = load i64, ptr %i.o, align 8, !tbaa !137  ; 2 uses
  %i.r = add nsw i64 %i.q, 1
  store i64 %i.r, ptr %i.o, align 8, !tbaa !137
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !tbaa !106
  %.not46 = icmp eq i8 %i.t, 0                    ; 2 uses
  %i.u = zext i1 %.not46 to i64
  %i.v = load i64, ptr %i.p, align 8, !tbaa !214
  %i.w = add nsw i64 %i.v, %i.u
  store i64 %i.w, ptr %i.p, align 8, !tbaa !214
  %i.x = select i1 %.not46, i8 0, i8 %.03650
  %i.y = or i8 %i.x, %.04049                      ; 2 uses
  %i.z = shl i8 %.03650, 1                        ; 2 uses
  %i.aa = add nsw i64 %.03551, -1                 ; 2 uses
  %i.ab = icmp ne i8 %i.z, 0
  %i.ac = icmp samesign ugt i64 %.03551, 1
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.d, label %._crit_edge, !llvm.loop !1275

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.040.lcssa = phi i8 [ %i.h, %bb.c ], [ %i.y, %bb.d ]
  %.035.lcssa = phi i64 [ %2, %bb.c ], [ %i.aa, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !106
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.038 = phi ptr [ %i.ae, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %._crit_edge ], [ %2, %bb.b ] ; 3 uses
  %i.af = icmp sgt i64 %.1, 7
  br i1 %i.af, label %.preheader48.lr.ph, label %._crit_edge55

.preheader48.lr.ph:                               ; preds = %bb.e
  %i.ag = lshr i64 %.1, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.ag, %.preheader48.lr.ph ], [ %i.cv, %.preheader48 ] ; 2 uses
  %.13954 = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.dk, %.preheader48 ] ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !332
  %i.ak = load ptr, ptr %3, align 8, !tbaa !1278, !nonnull !155, !align !226
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !170 ; 8 uses
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !1279, !nonnull !155, !align !226 ; 16 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 16 uses
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !137 ; 2 uses
  %i.ap = add nsw i64 %i.ao, 1
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !137
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !106
  %i.as = icmp ne i8 %i.ar, 0                     ; 2 uses
  %i.at = xor i1 %i.as, true
  %i.au = zext i1 %i.at to i64
  %i.av = load i64, ptr %i.an, align 8, !tbaa !214
  %i.aw = add nsw i64 %i.av, %i.au
  store i64 %i.aw, ptr %i.an, align 8, !tbaa !214
  %i.ax = zext i1 %i.as to i8
  %i.ay = load i64, ptr %i.am, align 8, !tbaa !137 ; 2 uses
  %i.az = add nsw i64 %i.ay, 1
  store i64 %i.az, ptr %i.am, align 8, !tbaa !137
  %i.ba = getelementptr inbounds i8, ptr %i.al, i64 %i.ay
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !106
  %.not69 = icmp eq i8 %i.bb, 0                   ; 2 uses
  %i.bc = zext i1 %.not69 to i64
  %i.bd = load i64, ptr %i.an, align 8, !tbaa !214
  %i.be = add nsw i64 %i.bd, %i.bc
  store i64 %i.be, ptr %i.an, align 8, !tbaa !214
  %i.bf = load i64, ptr %i.am, align 8, !tbaa !137 ; 2 uses
  %i.bg = add nsw i64 %i.bf, 1
  store i64 %i.bg, ptr %i.am, align 8, !tbaa !137
  %i.bh = getelementptr inbounds i8, ptr %i.al, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !106
  %.not70 = icmp eq i8 %i.bi, 0                   ; 2 uses
  %i.bj = zext i1 %.not70 to i64
  %i.bk = load i64, ptr %i.an, align 8, !tbaa !214
  %i.bl = add nsw i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %i.an, align 8, !tbaa !214
  %i.bm = load i64, ptr %i.am, align 8, !tbaa !137 ; 2 uses
  %i.bn = add nsw i64 %i.bm, 1
  store i64 %i.bn, ptr %i.am, align 8, !tbaa !137
  %i.bo = getelementptr inbounds i8, ptr %i.al, i64 %i.bm
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !106
  %.not71 = icmp eq i8 %i.bp, 0                   ; 2 uses
  %i.bq = zext i1 %.not71 to i64
  %i.br = load i64, ptr %i.an, align 8, !tbaa !214
  %i.bs = add nsw i64 %i.br, %i.bq
  store i64 %i.bs, ptr %i.an, align 8, !tbaa !214
  %i.bt = load i64, ptr %i.am, align 8, !tbaa !137 ; 2 uses
  %i.bu = add nsw i64 %i.bt, 1
  store i64 %i.bu, ptr %i.am, align 8, !tbaa !137
  %i.bv = getelementptr inbounds i8, ptr %i.al, i64 %i.bt
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !106
  %.not72 = icmp eq i8 %i.bw, 0                   ; 2 uses
  %i.bx = zext i1 %.not72 to i64
  %i.by = load i64, ptr %i.an, align 8, !tbaa !214
  %i.bz = add nsw i64 %i.by, %i.bx
  store i64 %i.bz, ptr %i.an, align 8, !tbaa !214
  %i.ca = load i64, ptr %i.am, align 8, !tbaa !137 ; 2 uses
  %i.cb = add nsw i64 %i.ca, 1
  store i64 %i.cb, ptr %i.am, align 8, !tbaa !137
  %i.cc = getelementptr inbounds i8, ptr %i.al, i64 %i.ca
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !106
  %.not73 = icmp eq i8 %i.cd, 0                   ; 2 uses
  %i.ce = zext i1 %.not73 to i64
  %i.cf = load i64, ptr %i.an, align 8, !tbaa !214
  %i.cg = add nsw i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %i.an, align 8, !tbaa !214
  %i.ch = load i64, ptr %i.am, align 8, !tbaa !137 ; 2 uses
  %i.ci = add nsw i64 %i.ch, 1
  store i64 %i.ci, ptr %i.am, align 8, !tbaa !137
  %i.cj = getelementptr inbounds i8, ptr %i.al, i64 %i.ch
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !106
  %.not74 = icmp eq i8 %i.ck, 0                   ; 2 uses
  %i.cl = zext i1 %.not74 to i64
  %i.cm = load i64, ptr %i.an, align 8, !tbaa !214
  %i.cn = add nsw i64 %i.cm, %i.cl
  store i64 %i.cn, ptr %i.an, align 8, !tbaa !214
  %i.co = load i64, ptr %i.am, align 8, !tbaa !137 ; 2 uses
  %i.cp = add nsw i64 %i.co, 1
  store i64 %i.cp, ptr %i.am, align 8, !tbaa !137
  %i.cq = getelementptr inbounds i8, ptr %i.al, i64 %i.co
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !106
  %.not75 = icmp eq i8 %i.cr, 0                   ; 2 uses
  %i.cs = zext i1 %.not75 to i64
  %i.ct = load i64, ptr %i.an, align 8, !tbaa !214
  %i.cu = add nsw i64 %i.ct, %i.cs
  store i64 %i.cu, ptr %i.an, align 8, !tbaa !214
  %i.cv = add nsw i64 %.in, -1
  %i.cw = select i1 %.not69, i8 0, i8 2
  %i.cx = or disjoint i8 %i.cw, %i.ax
  %i.cy = select i1 %.not70, i8 0, i8 4
  %i.cz = or disjoint i8 %i.cx, %i.cy
  %i.da = select i1 %.not71, i8 0, i8 8
  %i.db = or disjoint i8 %i.cz, %i.da
  %i.dc = select i1 %.not72, i8 0, i8 16
  %i.dd = or disjoint i8 %i.db, %i.dc
  %i.de = select i1 %.not73, i8 0, i8 32
  %i.df = or disjoint i8 %i.dd, %i.de
  %i.dg = select i1 %.not74, i8 0, i8 64
  %i.dh = or i8 %i.df, %i.dg
  %i.di = select i1 %.not75, i8 0, i8 -128
  %i.dj = or i8 %i.dh, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %.13954, i64 1 ; 2 uses
  store i8 %i.dj, ptr %.13954, align 1, !tbaa !106
  %i.dl = icmp samesign ugt i64 %.in, 1
  br i1 %i.dl, label %.preheader48, label %._crit_edge55, !llvm.loop !1276

._crit_edge55:                                    ; preds = %.preheader48, %bb.e
  %.139.lcssa = phi ptr [ %.038, %bb.e ], [ %i.dk, %.preheader48 ]
  %i.dm = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.dm, 0
  br i1 %.not45, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge55
  %i.dn = icmp sgt i64 %i.dm, 0
  br i1 %i.dn, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %.preheader
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !332
  %i.dq = load ptr, ptr %3, align 8, !tbaa !1278, !nonnull !155, !align !226
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !170 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1279, !nonnull !155, !align !226 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 6 uses
  %xtraiter = and i64 %i.dm, 1
  %i.dv = icmp eq i64 %i.dm, 1
  br i1 %i.dv, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %i.dm, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph60.new
  %.13758 = phi i8 [ 1, %.lr.ph60.new ], [ %i.ep, %bb.f ] ; 3 uses
  %.14157 = phi i8 [ 0, %.lr.ph60.new ], [ %i.eo, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.1, %bb.f ]
  %i.dw = load i64, ptr %i.dt, align 8, !tbaa !137 ; 2 uses
  %i.dx = add nsw i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dt, align 8, !tbaa !137
  %i.dy = getelementptr inbounds i8, ptr %i.dr, i64 %i.dw
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !106
  %.not47 = icmp eq i8 %i.dz, 0                   ; 2 uses
  %i.ea = zext i1 %.not47 to i64
  %i.eb = load i64, ptr %i.du, align 8, !tbaa !214
  %i.ec = add nsw i64 %i.eb, %i.ea
end_hunk_1
