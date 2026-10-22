Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/array_nested?download=true
inline.NumInlined: 5210
inline.NumDeleted: 1661
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 84
begin_hunk_0_@_ZNK5arrow16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolE:bb.a
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bb, align 8, !tbaa !119
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !120
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !122
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #23, !inline_history !28
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !122
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #23, !inline_history !28
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.be, %bb.p ], [ %i.bo, %bb.q ]
  %i.bp = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bp, label %bb.r, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, !prof !124

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #23
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.r
  %.pr = load ptr, ptr %i.ay, align 8, !tbaa !117 ; 8 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bq, align 8, !tbaa !119
  %i.bu = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !120
  %i.bv = load ptr, ptr %.pr, align 8, !tbaa !122
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #23, !inline_history !8
  %i.by = load ptr, ptr %.pr, align 8, !tbaa !122
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #23, !inline_history !8
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bt, %bb.v ], [ %i.cd, %bb.w ]
  %i.ce = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ce, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !124

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #23
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.pre = load ptr, ptr %7, align 16, !tbaa !70
  br label %bb.z

bb.y:                                             ; preds = %bb.k
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bx

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j
  %i.cg = phi ptr [ %.pre, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.ao, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !159 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !117 ; 2 uses
  %i.cm = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !116
  store <2 x ptr> %i.cm, ptr %9, align 16, !tbaa !116
  %.not.i.i.i24 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i24, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i.i25 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i25, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !46
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.cn, align 4, !tbaa !46
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cr = atomicrmw volatile add ptr %i.cn, i32 1 acq_rel, align 4 ; 0 uses
  %.pre84 = load ptr, ptr %7, align 16, !tbaa !70
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit:  ; preds = %bb.z, %bb.ab, %bb.ac
  %i.cs = phi ptr [ %i.cg, %bb.z ], [ %i.cg, %bb.ab ], [ %.pre84, %bb.ac ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !145 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !91
  %i.cx = add nsw i64 %i.cw, %i.cu
  invoke void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.144") align 8 %10, i64 noundef %i.cx, ptr noundef %3)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.cy = load ptr, ptr %10, align 8, !tbaa !114
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.ag, label %bb.ae, !prof !115

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #23
  br label %bb.bb

bb.af:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.de = load <2 x ptr>, ptr %i.db, align 8, !tbaa !116, !noalias !1020
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !162, !noalias !1020 ; 5 uses
  store ptr null, ptr %i.dd, align 8, !tbaa !117, !noalias !1020
  store <2 x ptr> %i.de, ptr %11, align 16, !tbaa !116, !alias.scope !1020
  store ptr null, ptr %i.db, align 8, !tbaa !162, !noalias !1020
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1021
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !309
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ah
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !123 ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !296 ; 27 uses
  %i.do = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !91 ; 5 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNKS_16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolEE3$_0EEvPhllOT_.exit", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 9
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !169, !range !136, !noundef !137
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dw = load i8, ptr %i.dv, align 8, !range !136
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = select i1 %i.du, i1 %i.dx, i1 false, !prof !115
  %i.dz = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = select i1 %i.dy, ptr %i.ea, ptr null, !prof !115
  %i.ec = sdiv i64 %i.cu, 8
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 %i.ec ; 4 uses
  %i.ee = srem i64 %i.cu, 8                       ; 3 uses
  %.not.i26 = icmp eq i64 %i.ee, 0
  br i1 %.not.i26, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !123
  %i.eg = trunc nsw i64 %i.ee to i8
  %notmask.i = shl nsw i8 -1, %i.eg
  %i.eh = xor i8 %notmask.i, -1
  %i.ei = and i8 %i.ef, %i.eh                     ; 2 uses
  %i.ej = icmp sgt i64 %i.dq, 0
  br i1 %i.ej, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ai
  %13 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ee
  %14 = load i8, ptr %13, align 1, !tbaa !123
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.a, %.lr.ph.i
  %i.ek = phi i64 [ 0, %.lr.ph.i ], [ %i.el, %.lr.ph.i.a ] ; 2 uses
  %.03549.i = phi i64 [ %i.dq, %.lr.ph.i ], [ %i.es, %.lr.ph.i.a ] ; 2 uses
  %.03648.i = phi i8 [ %14, %.lr.ph.i ], [ %i.er, %.lr.ph.i.a ] ; 2 uses
  %.04047.i = phi i8 [ %i.ei, %.lr.ph.i ], [ %i.eq, %.lr.ph.i.a ]
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ek
  %i.en = load i8, ptr %i.em, align 1, !tbaa !123
  %i.eo = icmp eq i8 %i.en, %i.dl
  %i.ep = select i1 %i.eo, i8 %.03648.i, i8 0
  %i.eq = or i8 %i.ep, %.04047.i                  ; 2 uses
  %i.er = shl i8 %.03648.i, 1                     ; 2 uses
  %i.es = add nsw i64 %.03549.i, -1               ; 2 uses
  %i.et = icmp ne i8 %i.er, 0
  %i.eu = icmp samesign ugt i64 %.03549.i, 1
  %i.ev = select i1 %i.et, i1 %i.eu, i1 false
  br i1 %i.ev, label %.lr.ph.i.a, label %._crit_edge.i, !llvm.loop !1004

._crit_edge.i:                                    ; preds = %.lr.ph.i.a, %bb.ai
  %.0 = phi i64 [ 0, %bb.ai ], [ %i.el, %.lr.ph.i.a ]
  %.040.lcssa.i = phi i8 [ %i.ei, %bb.ai ], [ %i.eq, %.lr.ph.i.a ]
  %.035.lcssa.i = phi i64 [ %i.dq, %bb.ai ], [ %i.es, %.lr.ph.i.a ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store i8 %.040.lcssa.i, ptr %i.ed, align 1, !tbaa !123
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i, %bb.ah
  %.1 = phi i64 [ 0, %bb.ah ], [ %.0, %._crit_edge.i ] ; 9 uses
  %.038.i = phi ptr [ %i.ed, %bb.ah ], [ %i.ew, %._crit_edge.i ] ; 9 uses
  %.1.i = phi i64 [ %i.dq, %bb.ah ], [ %.035.lcssa.i, %._crit_edge.i ] ; 7 uses
  %i.ex = icmp sgt i64 %.1.i, 7
  br i1 %i.ex, label %iter.check, label %._crit_edge53.i

iter.check:                                       ; preds = %bb.aj
  %i.ey = lshr i64 %.1.i, 3                       ; 9 uses
  %min.iters.check = icmp ult i64 %.1.i, 32
  br i1 %min.iters.check, label %.preheader46.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ez = getelementptr i8, ptr %.038.i, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.dn, i64 %.1
  %i.fb = and i64 %.1.i, 9223372036854775800
  %i.fc = getelementptr i8, ptr %i.dn, i64 %.1
  %i.fd = getelementptr i8, ptr %i.fc, i64 %i.fb
  %bound0 = icmp ult ptr %.038.i, %i.fd
  %bound1 = icmp ult ptr %i.fa, %i.ez
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader46.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check119 = icmp ult i64 %.1.i, 128
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.ey, 1152921504606846960     ; 5 uses
  %i.fe = shl nuw nsw i64 %n.vec, 3
  %i.ff = add i64 %.1, %i.fe                      ; 2 uses
  %i.fg = and i64 %i.ey, 15
  %i.fh = getelementptr i8, ptr %.038.i, i64 %n.vec ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.dl, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fi = shl nuw i64 %index, 3
  %i.fj = add nuw i64 %.1, %i.fi                  ; 16 uses
  %next.gep = getelementptr i8, ptr %.038.i, i64 %index
  %i.fk = getelementptr i8, ptr %i.dn, i64 %i.fj  ; 8 uses
  %i.fl = getelementptr i8, ptr %i.dn, i64 %i.fj  ; 8 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 8
  %i.fn = getelementptr i8, ptr %i.dn, i64 %i.fj  ; 8 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 16
  %i.fp = getelementptr i8, ptr %i.dn, i64 %i.fj  ; 8 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 24
  %i.fr = getelementptr i8, ptr %i.dn, i64 %i.fj  ; 8 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 32
  %i.ft = getelementptr i8, ptr %i.dn, i64 %i.fj  ; 8 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 40
  %i.fv = getelementptr i8, ptr %i.dn, i64 %i.fj  ; 8 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 48
  %i.fx = getelementptr i8, ptr %i.dn, i64 %i.fj  ; 8 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 56
  %i.fz = getelementptr i8, ptr %i.dn, i64 %i.fj  ; 8 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 64
  %i.gb = getelementptr i8, ptr %i.dn, i64 %i.fj  ; 8 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 72
  %i.gd = getelementptr i8, ptr %i.dn, i64 %i.fj  ; 8 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 80
  %i.gf = getelementptr i8, ptr %i.dn, i64 %i.fj  ; 8 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 88
  %i.gh = getelementptr i8, ptr %i.dn, i64 %i.fj  ; 8 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 96
  %i.gj = getelementptr i8, ptr %i.dn, i64 %i.fj  ; 8 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 104
  %i.gl = getelementptr i8, ptr %i.dn, i64 %i.fj  ; 8 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 112
  %i.gn = getelementptr i8, ptr %i.dn, i64 %i.fj  ; 8 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 120
  %i.gp = load i8, ptr %i.fk, align 1, !tbaa !123, !alias.scope !1022
  %i.gq = load i8, ptr %i.fm, align 1, !tbaa !123, !alias.scope !1022
  %i.gr = load i8, ptr %i.fo, align 1, !tbaa !123, !alias.scope !1022
  %i.gs = load i8, ptr %i.fq, align 1, !tbaa !123, !alias.scope !1022
  %i.gt = load i8, ptr %i.fs, align 1, !tbaa !123, !alias.scope !1022
  %i.gu = load i8, ptr %i.fu, align 1, !tbaa !123, !alias.scope !1022
  %i.gv = load i8, ptr %i.fw, align 1, !tbaa !123, !alias.scope !1022
  %i.gw = load i8, ptr %i.fy, align 1, !tbaa !123, !alias.scope !1022
  %i.gx = load i8, ptr %i.ga, align 1, !tbaa !123, !alias.scope !1022
  %i.gy = load i8, ptr %i.gc, align 1, !tbaa !123, !alias.scope !1022
  %i.gz = load i8, ptr %i.ge, align 1, !tbaa !123, !alias.scope !1022
  %i.ha = load i8, ptr %i.gg, align 1, !tbaa !123, !alias.scope !1022
  %i.hb = load i8, ptr %i.gi, align 1, !tbaa !123, !alias.scope !1022
  %i.hc = load i8, ptr %i.gk, align 1, !tbaa !123, !alias.scope !1022
  %i.hd = load i8, ptr %i.gm, align 1, !tbaa !123, !alias.scope !1022
  %i.he = load i8, ptr %i.go, align 1, !tbaa !123, !alias.scope !1022
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
  %i.ih = getelementptr i8, ptr %i.gd, i64 81
  %i.ii = getelementptr i8, ptr %i.gf, i64 89
  %i.ij = getelementptr i8, ptr %i.gh, i64 97
  %i.ik = getelementptr i8, ptr %i.gj, i64 105
  %i.il = getelementptr i8, ptr %i.gl, i64 113
  %i.im = getelementptr i8, ptr %i.gn, i64 121
  %i.in = load i8, ptr %i.hx, align 1, !tbaa !123, !alias.scope !1022
  %i.io = load i8, ptr %i.hy, align 1, !tbaa !123, !alias.scope !1022
  %i.ip = load i8, ptr %i.hz, align 1, !tbaa !123, !alias.scope !1022
  %i.iq = load i8, ptr %i.ia, align 1, !tbaa !123, !alias.scope !1022
  %i.ir = load i8, ptr %i.ib, align 1, !tbaa !123, !alias.scope !1022
  %i.is = load i8, ptr %i.ic, align 1, !tbaa !123, !alias.scope !1022
  %i.it = load i8, ptr %i.id, align 1, !tbaa !123, !alias.scope !1022
  %i.iu = load i8, ptr %i.ie, align 1, !tbaa !123, !alias.scope !1022
  %i.iv = load i8, ptr %i.if, align 1, !tbaa !123, !alias.scope !1022
  %i.iw = load i8, ptr %i.ig, align 1, !tbaa !123, !alias.scope !1022
  %i.ix = load i8, ptr %i.ih, align 1, !tbaa !123, !alias.scope !1022
  %i.iy = load i8, ptr %i.ii, align 1, !tbaa !123, !alias.scope !1022
  %i.iz = load i8, ptr %i.ij, align 1, !tbaa !123, !alias.scope !1022
  %i.ja = load i8, ptr %i.ik, align 1, !tbaa !123, !alias.scope !1022
  %i.jb = load i8, ptr %i.il, align 1, !tbaa !123, !alias.scope !1022
  %i.jc = load i8, ptr %i.im, align 1, !tbaa !123, !alias.scope !1022
  %i.jd = insertelement <16 x i8> poison, i8 %i.in, i64 0
  %i.je = insertelement <16 x i8> %i.jd, i8 %i.io, i64 1
  %i.jf = insertelement <16 x i8> %i.je, i8 %i.ip, i64 2
  %i.jg = insertelement <16 x i8> %i.jf, i8 %i.iq, i64 3
  %i.jh = insertelement <16 x i8> %i.jg, i8 %i.ir, i64 4
  %i.ji = insertelement <16 x i8> %i.jh, i8 %i.is, i64 5
  %i.jj = insertelement <16 x i8> %i.ji, i8 %i.it, i64 6
  %i.jk = insertelement <16 x i8> %i.jj, i8 %i.iu, i64 7
  %i.jl = insertelement <16 x i8> %i.jk, i8 %i.iv, i64 8
  %i.jm = insertelement <16 x i8> %i.jl, i8 %i.iw, i64 9
  %i.jn = insertelement <16 x i8> %i.jm, i8 %i.ix, i64 10
  %i.jo = insertelement <16 x i8> %i.jn, i8 %i.iy, i64 11
  %i.jp = insertelement <16 x i8> %i.jo, i8 %i.iz, i64 12
  %i.jq = insertelement <16 x i8> %i.jp, i8 %i.ja, i64 13
  %i.jr = insertelement <16 x i8> %i.jq, i8 %i.jb, i64 14
  %i.js = insertelement <16 x i8> %i.jr, i8 %i.jc, i64 15
  %i.jt = icmp eq <16 x i8> %i.js, %broadcast.splat
  %i.ju = getelementptr i8, ptr %i.fk, i64 2
  %i.jv = getelementptr i8, ptr %i.fl, i64 10
  %i.jw = getelementptr i8, ptr %i.fn, i64 18
  %i.jx = getelementptr i8, ptr %i.fp, i64 26
  %i.jy = getelementptr i8, ptr %i.fr, i64 34
  %i.jz = getelementptr i8, ptr %i.ft, i64 42
  %i.ka = getelementptr i8, ptr %i.fv, i64 50
  %i.kb = getelementptr i8, ptr %i.fx, i64 58
  %i.kc = getelementptr i8, ptr %i.fz, i64 66
  %i.kd = getelementptr i8, ptr %i.gb, i64 74
  %i.ke = getelementptr i8, ptr %i.gd, i64 82
  %i.kf = getelementptr i8, ptr %i.gf, i64 90
  %i.kg = getelementptr i8, ptr %i.gh, i64 98
  %i.kh = getelementptr i8, ptr %i.gj, i64 106
  %i.ki = getelementptr i8, ptr %i.gl, i64 114
  %i.kj = getelementptr i8, ptr %i.gn, i64 122
  %i.kk = load i8, ptr %i.ju, align 1, !tbaa !123, !alias.scope !1022
  %i.kl = load i8, ptr %i.jv, align 1, !tbaa !123, !alias.scope !1022
  %i.km = load i8, ptr %i.jw, align 1, !tbaa !123, !alias.scope !1022
  %i.kn = load i8, ptr %i.jx, align 1, !tbaa !123, !alias.scope !1022
  %i.ko = load i8, ptr %i.jy, align 1, !tbaa !123, !alias.scope !1022
  %i.kp = load i8, ptr %i.jz, align 1, !tbaa !123, !alias.scope !1022
  %i.kq = load i8, ptr %i.ka, align 1, !tbaa !123, !alias.scope !1022
end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_5FieldEEEEES2_DpOT_:bb.a

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8ListTypeC2ESt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::shared_ptr.88"], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 25, ptr %i.b, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow8ListTypeE, i64 16), ptr %0, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !116
  store ptr null, ptr %i.d, align 8, !tbaa !117
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !116
  store ptr null, ptr %1, align 8, !tbaa !180
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.f)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %bb.h

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117  ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !120
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !122
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #23, !inline_history !25
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !122
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #23, !inline_history !25
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !124

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #23
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.h:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZN5arrow12BaseListTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #23
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow15BaseListBuilderINS_8ListTypeEE12AppendValuesEPKilPKh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %class.anon.327, align 8            ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !225, !noalias !1240 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !122, !noalias !1240
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1240
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !1240, !inline_history !14
  %i.i = add nsw i64 %i.h, %3                     ; 2 uses
  %.not.i = icmp sgt i64 %i.i, %i.d
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit14.thread

_ZN5arrow6StatusD2Ev.exit14.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.j = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.i, i64 %i.j)
  %i.k = load ptr, ptr %1, align 8, !tbaa !122, !noalias !1240
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !1240
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !14
  %.pr = load ptr, ptr %6, align 8, !tbaa !114    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit14.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.o = icmp eq ptr %4, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %3)
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %4, ptr %i.a, align 8, !tbaa !184
  %i.p = icmp eq i64 %3, 0
  br i1 %i.p, label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !158
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !227
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.a, ptr %5, align 8, !tbaa !354
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.v, align 8, !tbaa !355
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.q, ptr %i.w, align 8, !tbaa !358
  call void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_(ptr noundef %i.s, i64 noundef %i.u, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.x = load i64, ptr %i.t, align 8, !tbaa !228
  %i.y = add nsw i64 %i.x, %3
  store i64 %i.y, ptr %i.t, align 8, !tbaa !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !230
  %i.ab = add nsw i64 %i.aa, %3
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !230
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !229
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !343
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit

_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit: ; preds = %bb.c, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i
  %i.af = shl i64 %3, 2                           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !227
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !342
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %2, i64 %i.af, i1 false)
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !342
  %i.am = add nsw i64 %i.al, %i.af
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !342
  store ptr null, ptr %0, align 8, !tbaa !114, !alias.scope !1241
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
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
  %i.e = load i8, ptr %i.c, align 1, !tbaa !123
  %i.f = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %i.f
  %i.g = xor i8 %notmask, -1
  %i.h = and i8 %i.e, %i.g                        ; 2 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %5 = load i8, ptr %4, align 1, !tbaa !123
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !358
  %i.l = load ptr, ptr %3, align 8, !tbaa !1245, !nonnull !137, !align !307
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !184
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1246, !nonnull !137, !align !307 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.aa, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %5, %.lr.ph ], [ %i.z, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.h, %.lr.ph ], [ %i.y, %bb.d ]
  %i.q = load i64, ptr %i.o, align 8, !tbaa !158  ; 2 uses
  %i.r = add nsw i64 %i.q, 1
  store i64 %i.r, ptr %i.o, align 8, !tbaa !158
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !tbaa !123
  %.not46 = icmp eq i8 %i.t, 0                    ; 2 uses
  %i.u = zext i1 %.not46 to i64
  %i.v = load i64, ptr %i.p, align 8, !tbaa !229
  %i.w = add nsw i64 %i.v, %i.u
  store i64 %i.w, ptr %i.p, align 8, !tbaa !229
  %i.x = select i1 %.not46, i8 0, i8 %.03650
  %i.y = or i8 %i.x, %.04049                      ; 2 uses
  %i.z = shl i8 %.03650, 1                        ; 2 uses
  %i.aa = add nsw i64 %.03551, -1                 ; 2 uses
  %i.ab = icmp ne i8 %i.z, 0
  %i.ac = icmp samesign ugt i64 %.03551, 1
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.d, label %._crit_edge, !llvm.loop !1242

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.040.lcssa = phi i8 [ %i.h, %bb.c ], [ %i.y, %bb.d ]
  %.035.lcssa = phi i64 [ %2, %bb.c ], [ %i.aa, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !123
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
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !358
  %i.ak = load ptr, ptr %3, align 8, !tbaa !1245, !nonnull !137, !align !307
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !184 ; 8 uses
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !1246, !nonnull !137, !align !307 ; 16 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 16 uses
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !158 ; 2 uses
  %i.ap = add nsw i64 %i.ao, 1
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !158
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !123
  %i.as = icmp ne i8 %i.ar, 0                     ; 2 uses
  %i.at = xor i1 %i.as, true
  %i.au = zext i1 %i.at to i64
  %i.av = load i64, ptr %i.an, align 8, !tbaa !229
  %i.aw = add nsw i64 %i.av, %i.au
  store i64 %i.aw, ptr %i.an, align 8, !tbaa !229
  %i.ax = zext i1 %i.as to i8
  %i.ay = load i64, ptr %i.am, align 8, !tbaa !158 ; 2 uses
  %i.az = add nsw i64 %i.ay, 1
  store i64 %i.az, ptr %i.am, align 8, !tbaa !158
  %i.ba = getelementptr inbounds i8, ptr %i.al, i64 %i.ay
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !123
  %.not69 = icmp eq i8 %i.bb, 0                   ; 2 uses
  %i.bc = zext i1 %.not69 to i64
  %i.bd = load i64, ptr %i.an, align 8, !tbaa !229
  %i.be = add nsw i64 %i.bd, %i.bc
  store i64 %i.be, ptr %i.an, align 8, !tbaa !229
  %i.bf = load i64, ptr %i.am, align 8, !tbaa !158 ; 2 uses
  %i.bg = add nsw i64 %i.bf, 1
  store i64 %i.bg, ptr %i.am, align 8, !tbaa !158
  %i.bh = getelementptr inbounds i8, ptr %i.al, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !123
  %.not70 = icmp eq i8 %i.bi, 0                   ; 2 uses
  %i.bj = zext i1 %.not70 to i64
  %i.bk = load i64, ptr %i.an, align 8, !tbaa !229
  %i.bl = add nsw i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %i.an, align 8, !tbaa !229
  %i.bm = load i64, ptr %i.am, align 8, !tbaa !158 ; 2 uses
  %i.bn = add nsw i64 %i.bm, 1
  store i64 %i.bn, ptr %i.am, align 8, !tbaa !158
  %i.bo = getelementptr inbounds i8, ptr %i.al, i64 %i.bm
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !123
  %.not71 = icmp eq i8 %i.bp, 0                   ; 2 uses
  %i.bq = zext i1 %.not71 to i64
  %i.br = load i64, ptr %i.an, align 8, !tbaa !229
  %i.bs = add nsw i64 %i.br, %i.bq
  store i64 %i.bs, ptr %i.an, align 8, !tbaa !229
  %i.bt = load i64, ptr %i.am, align 8, !tbaa !158 ; 2 uses
  %i.bu = add nsw i64 %i.bt, 1
  store i64 %i.bu, ptr %i.am, align 8, !tbaa !158
  %i.bv = getelementptr inbounds i8, ptr %i.al, i64 %i.bt
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !123
  %.not72 = icmp eq i8 %i.bw, 0                   ; 2 uses
  %i.bx = zext i1 %.not72 to i64
  %i.by = load i64, ptr %i.an, align 8, !tbaa !229
  %i.bz = add nsw i64 %i.by, %i.bx
  store i64 %i.bz, ptr %i.an, align 8, !tbaa !229
  %i.ca = load i64, ptr %i.am, align 8, !tbaa !158 ; 2 uses
  %i.cb = add nsw i64 %i.ca, 1
  store i64 %i.cb, ptr %i.am, align 8, !tbaa !158
  %i.cc = getelementptr inbounds i8, ptr %i.al, i64 %i.ca
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !123
  %.not73 = icmp eq i8 %i.cd, 0                   ; 2 uses
  %i.ce = zext i1 %.not73 to i64
  %i.cf = load i64, ptr %i.an, align 8, !tbaa !229
  %i.cg = add nsw i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %i.an, align 8, !tbaa !229
  %i.ch = load i64, ptr %i.am, align 8, !tbaa !158 ; 2 uses
  %i.ci = add nsw i64 %i.ch, 1
  store i64 %i.ci, ptr %i.am, align 8, !tbaa !158
  %i.cj = getelementptr inbounds i8, ptr %i.al, i64 %i.ch
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !123
  %.not74 = icmp eq i8 %i.ck, 0                   ; 2 uses
  %i.cl = zext i1 %.not74 to i64
  %i.cm = load i64, ptr %i.an, align 8, !tbaa !229
  %i.cn = add nsw i64 %i.cm, %i.cl
  store i64 %i.cn, ptr %i.an, align 8, !tbaa !229
  %i.co = load i64, ptr %i.am, align 8, !tbaa !158 ; 2 uses
  %i.cp = add nsw i64 %i.co, 1
  store i64 %i.cp, ptr %i.am, align 8, !tbaa !158
  %i.cq = getelementptr inbounds i8, ptr %i.al, i64 %i.co
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !123
  %.not75 = icmp eq i8 %i.cr, 0                   ; 2 uses
  %i.cs = zext i1 %.not75 to i64
  %i.ct = load i64, ptr %i.an, align 8, !tbaa !229
  %i.cu = add nsw i64 %i.ct, %i.cs
  store i64 %i.cu, ptr %i.an, align 8, !tbaa !229
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
  store i8 %i.dj, ptr %.13954, align 1, !tbaa !123
  %i.dl = icmp samesign ugt i64 %.in, 1
  br i1 %i.dl, label %.preheader48, label %._crit_edge55, !llvm.loop !1243

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
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !358
  %i.dq = load ptr, ptr %3, align 8, !tbaa !1245, !nonnull !137, !align !307
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !184 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1246, !nonnull !137, !align !307 ; 6 uses
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
  %i.dw = load i64, ptr %i.dt, align 8, !tbaa !158 ; 2 uses
  %i.dx = add nsw i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dt, align 8, !tbaa !158
  %i.dy = getelementptr inbounds i8, ptr %i.dr, i64 %i.dw
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !123
  %.not47 = icmp eq i8 %i.dz, 0                   ; 2 uses
  %i.ea = zext i1 %.not47 to i64
  %i.eb = load i64, ptr %i.du, align 8, !tbaa !229
  %i.ec = add nsw i64 %i.eb, %i.ea
end_hunk_1
