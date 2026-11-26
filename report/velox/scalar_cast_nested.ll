Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/scalar_cast_nested?download=true
inline.NumInlined: 3354
inline.NumDeleted: 1016
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_8ListTypeES4_E4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  store i32 1, ptr %i.bs, align 4, !tbaa !96, !noalias !539
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bp, align 8, !tbaa !98, !noalias !539
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bd, align 8, !tbaa !180, !noalias !539
  %i.bv = load i64, ptr %i.bq, align 8, !tbaa !137, !noalias !539
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef %i.bu, i64 noundef %i.bv)
          to label %_ZNK5arrow9ArraySpan9GetBufferEi.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !539

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %.noexc50
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 96) #22, !noalias !539
  br label %.body

_ZNK5arrow9ArraySpan9GetBufferEi.exit:            ; preds = %bb.t, %bb.s, %bb.q, %.noexc50, %bb.u
  %.sroa.0.0 = phi ptr [ %i.bt, %.noexc50 ], [ %i.bg, %bb.s ], [ %i.bg, %bb.q ], [ %i.bg, %bb.t ], [ null, %bb.u ]
  %.sroa.9.0 = phi ptr [ %i.bp, %.noexc50 ], [ %i.bi, %bb.s ], [ null, %bb.q ], [ %i.bi, %bb.t ], [ null, %bb.u ]
  %i.bx = load ptr, ptr %i.aj, align 8, !tbaa !173 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %.sroa.0.0, ptr %i.by, align 8, !tbaa !181
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !102 ; 8 uses
  store ptr %.sroa.9.0, ptr %i.bz, align 8, !tbaa !102
  %.not.i.i.i.i51 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i51, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60, label %bb.w

bb.w:                                             ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cb, align 8, !tbaa !95
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !96
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !98
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #20, !inline_history !3
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !98
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #20, !inline_history !3
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60

bb.y:                                             ; preds = %bb.w
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105
  %.not.i.i.i.i.i52 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i52, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !106
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53

bb.aa:                                            ; preds = %bb.y
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i54 = phi i32 [ %i.ce, %bb.z ], [ %i.co, %bb.aa ]
  %i.cp = icmp eq i32 %.0.i.i.i.i.i.i54, 1
  br i1 %i.cp, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60, !prof !107

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53, %bb.x, %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !184
  invoke void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.66") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %i.cr)
          to label %bb.ac unwind label %bb.bm

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !189, !noalias !540 ; 3 uses
  %i.cu = load ptr, ptr %i.bd, align 8, !tbaa !179, !noalias !540 ; 3 uses
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %i.ct ; 15 uses
  %.not.i61 = icmp eq i64 %i.ct, 0
  br i1 %.not.i61, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !540
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !190, !noalias !540
  %i.cy = shl i64 %i.cx, 2
  %i.cz = add i64 %i.cy, 4
  invoke void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.164") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cz)
          to label %.noexc63 unwind label %bb.bn, !noalias !540

.noexc63:                                         ; preds = %bb.ad
  %i.da = load ptr, ptr %7, align 8, !tbaa !128, !noalias !540
  %i.db = icmp eq ptr %i.da, null                 ; 2 uses
  br i1 %i.db, label %bb.af, label %bb.ae, !prof !129

bb.ae:                                            ; preds = %.noexc63
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.bb unwind label %bb.an

bb.af:                                            ; preds = %.noexc63
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dd = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !119, !noalias !541
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false), !noalias !540
  %i.de = load ptr, ptr %i.aj, align 8, !tbaa !173, !noalias !540 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !102, !noalias !540 ; 8 uses
  store <2 x ptr> %i.dd, ptr %i.df, align 8, !tbaa !119, !noalias !540
  %.not.i.i.i.i.i62 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i62, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 4 uses
  %i.dj = load atomic i64, ptr %i.di acquire, align 8, !noalias !540 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 4294967297
  %i.dl = trunc i64 %i.dj to i32                  ; 2 uses
  br i1 %i.dk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.di, align 8, !tbaa !95, !noalias !540
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 0, ptr %i.dm, align 4, !tbaa !96, !noalias !540
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !98, !noalias !540
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !540
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !540, !inline_history !514
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !98, !noalias !540
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !540
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !540, !inline_history !514
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105, !noalias !540
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.du = add nsw i32 %i.dl, -1
  store i32 %i.du, ptr %i.di, align 8, !tbaa !106, !noalias !540
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dv = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4, !noalias !540
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dl, %bb.aj ], [ %i.dv, %bb.ak ]
  %i.dw = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dw, label %bb.al, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !107

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !540
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ah, %bb.af
  %i.dx = load ptr, ptr %i.aj, align 8, !tbaa !173, !noalias !540
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !178, !noalias !540 ; 4 uses
  %.not.i.i40.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i40.i, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !206, !noalias !540
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 9
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !213, !range !214, !noalias !540, !noundef !215
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eg = load i8, ptr %i.ef, align 8, !range !214, !noalias !540
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = select i1 %i.ee, i1 %i.eh, i1 false, !prof !129
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !540
  %i.el = select i1 %i.ei, ptr %i.ek, ptr null, !prof !129
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.eb
  br label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %bb.am, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.i.i.i = phi ptr [ %i.em, %bb.am ], [ null, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 9 uses
  %i.en = load i64, ptr %i.cw, align 8, !tbaa !190, !noalias !540 ; 8 uses
  %.not3654.i = icmp slt i64 %i.en, 0
  br i1 %.not3654.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  %i.eo = add nuw i64 %i.en, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.en, 23
  br i1 %min.iters.check, label %.lr.ph.i.preheader147, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.ep = shl i64 %i.en, 2                        ; 2 uses
  %i.eq = getelementptr i8, ptr %.0.i.i.i, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  %i.es = shl i64 %i.ct, 2                        ; 2 uses
  %i.et = getelementptr i8, ptr %i.cu, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.ep
  %i.ev = getelementptr i8, ptr %i.eu, i64 4
  %i.ew = getelementptr i8, ptr %i.cu, i64 %i.es
  %i.ex = getelementptr i8, ptr %i.ew, i64 4
  %bound0 = icmp ult ptr %.0.i.i.i, %i.ev
  %bound1 = icmp ult ptr %i.cv, %i.er
  %bound0143 = icmp ult ptr %.0.i.i.i, %i.ex
  %found.conflict146 = or i1 %bound0, %bound0143
  %conflict.rdx = and i1 %found.conflict146, %bound1
  br i1 %conflict.rdx, label %.lr.ph.i.preheader147, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eo, -8                      ; 3 uses
  %i.ey = load i32, ptr %i.cv, align 4, !tbaa !106, !alias.scope !542, !noalias !540
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ey, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %wide.load = load <4 x i32>, ptr %i.ez, align 4, !tbaa !106, !alias.scope !543, !noalias !540
  %wide.load145 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !106, !alias.scope !543, !noalias !540
  %i.fb = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.fc = sub nsw <4 x i32> %wide.load145, %broadcast.splat
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <4 x i32> %i.fb, ptr %i.fd, align 4, !tbaa !106, !alias.scope !544, !noalias !545
  store <4 x i32> %i.fc, ptr %i.fe, align 4, !tbaa !106, !alias.scope !544, !noalias !545
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !519

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader147

.lr.ph.i.preheader147:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03055.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.fg = add nuw i64 %i.en, 1
  %i.fh = sub i64 %i.en, %.03055.i.ph
  %xtraiter = and i64 %i.fg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader147, %.lr.ph.i.prol
  %.03055.i.prol = phi i64 [ %i.fn, %.lr.ph.i.prol ], [ %.03055.i.ph, %.lr.ph.i.preheader147 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader147 ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.03055.i.prol
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !106, !noalias !540
  %i.fk = load i32, ptr %i.cv, align 4, !tbaa !106, !noalias !540
  %i.fl = sub nsw i32 %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03055.i.prol
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !106, !noalias !540
  %i.fn = add nuw i64 %.03055.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !520

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader147
  %.03055.i.unr = phi i64 [ %.03055.i.ph, %.lr.ph.i.preheader147 ], [ %i.fn, %.lr.ph.i.prol ]
  %i.fo = icmp ult i64 %i.fh, 3
  br i1 %i.fo, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !540
  %i.fp = load ptr, ptr %11, align 16, !tbaa !153, !noalias !540
  %i.fq = load i32, ptr %i.cv, align 4, !tbaa !106, !noalias !540
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.en
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !106, !noalias !540
  %i.fu = sext i32 %i.ft to i64
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.66") align 8 %8, ptr noundef nonnull align 8 dereferenceable(120) %i.fp, i64 noundef %i.fr, i64 noundef %i.fu)
          to label %bb.ao unwind label %bb.bj, !noalias !540

bb.an:                                            ; preds = %bb.ae
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03055.i = phi i64 [ %i.gt, %.lr.ph.i ], [ %.03055.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.03055.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !106, !noalias !540
  %i.fy = load i32, ptr %i.cv, align 4, !tbaa !106, !noalias !540
  %i.fz = sub nsw i32 %i.fx, %i.fy
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03055.i
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !106, !noalias !540
  %i.gb = add nuw i64 %.03055.i, 1                ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !106, !noalias !540
  %i.ge = load i32, ptr %i.cv, align 4, !tbaa !106, !noalias !540
  %i.gf = sub nsw i32 %i.gd, %i.ge
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gb
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !106, !noalias !540
  %i.gh = add nuw i64 %.03055.i, 2                ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !106, !noalias !540
  %i.gk = load i32, ptr %i.cv, align 4, !tbaa !106, !noalias !540
  %i.gl = sub nsw i32 %i.gj, %i.gk
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gh
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !106, !noalias !540
  %i.gn = add nuw i64 %.03055.i, 3                ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !106, !noalias !540
  %i.gq = load i32, ptr %i.cv, align 4, !tbaa !106, !noalias !540
  %i.gr = sub nsw i32 %i.gp, %i.gq
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gn
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !106, !noalias !540
  %i.gt = add nuw i64 %.03055.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.gn, %i.en
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !521

bb.ao:                                            ; preds = %._crit_edge.i
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gw = load <2 x ptr>, ptr %8, align 16, !tbaa !119, !noalias !540
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false), !noalias !540
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !102, !noalias !540 ; 8 uses
  store <2 x ptr> %i.gw, ptr %11, align 16, !tbaa !119, !noalias !540
  %.not.i.i.i.i41.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i41.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 4 uses
  %i.gz = load atomic i64, ptr %i.gy acquire, align 8, !noalias !540 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 4294967297
  %i.hb = trunc i64 %i.gz to i32                  ; 2 uses
  br i1 %i.ha, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.gy, align 8, !tbaa !95, !noalias !540
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  store i32 0, ptr %i.hc, align 4, !tbaa !96, !noalias !540
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !98, !noalias !540
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !540
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #20, !noalias !540, !inline_history !522
  %i.hg = load ptr, ptr %i.gx, align 8, !tbaa !98, !noalias !540
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !540
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #20, !noalias !540, !inline_history !522
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.hj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105, !noalias !540
  %.not.i.i.i.i.i42.i = icmp eq i8 %i.hj, 0
  br i1 %.not.i.i.i.i.i42.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hk = add nsw i32 %i.hb, -1
  store i32 %i.hk, ptr %i.gy, align 8, !tbaa !106, !noalias !540
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i

bb.at:                                            ; preds = %bb.ar
  %i.hl = atomicrmw volatile add ptr %i.gy, i32 -1 acq_rel, align 4, !noalias !540
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i44.i = phi i32 [ %i.hb, %bb.as ], [ %i.hl, %bb.at ]
  %i.hm = icmp eq i32 %.0.i.i.i.i.i.i44.i, 1
  br i1 %i.hm, label %bb.au, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, !prof !107

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #20, !noalias !540
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i: ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i, %bb.aq, %bb.ao
  %i.hn = load ptr, ptr %i.gu, align 8, !tbaa !102, !noalias !540 ; 8 uses
  %.not.i.i45.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i45.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 4 uses
  %i.hp = load atomic i64, ptr %i.ho acquire, align 8, !noalias !540 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 4294967297
  %i.hr = trunc i64 %i.hp to i32                  ; 2 uses
  br i1 %i.hq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.ho, align 8, !tbaa !95, !noalias !540
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  store i32 0, ptr %i.hs, align 4, !tbaa !96, !noalias !540
  %i.ht = load ptr, ptr %i.hn, align 8, !tbaa !98, !noalias !540
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !540
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #20, !noalias !540, !inline_history !523
  %i.hw = load ptr, ptr %i.hn, align 8, !tbaa !98, !noalias !540
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !540
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #20, !noalias !540, !inline_history !523
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.hz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105, !noalias !540
  %.not.i.i.i46.i = icmp eq i8 %i.hz, 0
  br i1 %.not.i.i.i46.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ia = add nsw i32 %i.hr, -1
  store i32 %i.ia, ptr %i.ho, align 8, !tbaa !106, !noalias !540
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47.i

bb.az:                                            ; preds = %bb.ax
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_12ListViewTypeENS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  store i32 1, ptr %i.bs, align 4, !tbaa !96, !noalias !671
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bp, align 8, !tbaa !98, !noalias !671
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bd, align 8, !tbaa !180, !noalias !671
  %i.bv = load i64, ptr %i.bq, align 8, !tbaa !137, !noalias !671
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef %i.bu, i64 noundef %i.bv)
          to label %_ZNK5arrow9ArraySpan9GetBufferEi.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !671

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %.noexc50
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 96) #22, !noalias !671
  br label %.body

_ZNK5arrow9ArraySpan9GetBufferEi.exit:            ; preds = %bb.t, %bb.s, %bb.q, %.noexc50, %bb.u
  %.sroa.0.0 = phi ptr [ %i.bt, %.noexc50 ], [ %i.bg, %bb.s ], [ %i.bg, %bb.q ], [ %i.bg, %bb.t ], [ null, %bb.u ]
  %.sroa.9.0 = phi ptr [ %i.bp, %.noexc50 ], [ %i.bi, %bb.s ], [ null, %bb.q ], [ %i.bi, %bb.t ], [ null, %bb.u ]
  %i.bx = load ptr, ptr %i.aj, align 8, !tbaa !173 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %.sroa.0.0, ptr %i.by, align 8, !tbaa !181
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !102 ; 8 uses
  store ptr %.sroa.9.0, ptr %i.bz, align 8, !tbaa !102
  %.not.i.i.i.i51 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i51, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60, label %bb.w

bb.w:                                             ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cb, align 8, !tbaa !95
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !96
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !98
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #20, !inline_history !3
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !98
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #20, !inline_history !3
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60

bb.y:                                             ; preds = %bb.w
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105
  %.not.i.i.i.i.i52 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i52, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !106
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53

bb.aa:                                            ; preds = %bb.y
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i54 = phi i32 [ %i.ce, %bb.z ], [ %i.co, %bb.aa ]
  %i.cp = icmp eq i32 %.0.i.i.i.i.i.i54, 1
  br i1 %i.cp, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60, !prof !107

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i53, %bb.x, %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !184
  invoke void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.66") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %i.cr)
          to label %bb.ac unwind label %bb.bm

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit60
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !189, !noalias !672 ; 3 uses
  %i.cu = load ptr, ptr %i.bd, align 8, !tbaa !179, !noalias !672 ; 3 uses
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %i.ct ; 15 uses
  %.not.i61 = icmp eq i64 %i.ct, 0
  br i1 %.not.i61, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !672
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !190, !noalias !672
  %i.cy = shl i64 %i.cx, 2
  %i.cz = add i64 %i.cy, 4
  invoke void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.164") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cz)
          to label %.noexc63 unwind label %bb.bn, !noalias !672

.noexc63:                                         ; preds = %bb.ad
  %i.da = load ptr, ptr %7, align 8, !tbaa !128, !noalias !672
  %i.db = icmp eq ptr %i.da, null                 ; 2 uses
  br i1 %i.db, label %bb.af, label %bb.ae, !prof !129

bb.ae:                                            ; preds = %.noexc63
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.bb unwind label %bb.an

bb.af:                                            ; preds = %.noexc63
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dd = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !119, !noalias !673
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false), !noalias !672
  %i.de = load ptr, ptr %i.aj, align 8, !tbaa !173, !noalias !672 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !102, !noalias !672 ; 8 uses
  store <2 x ptr> %i.dd, ptr %i.df, align 8, !tbaa !119, !noalias !672
  %.not.i.i.i.i.i62 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i62, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 4 uses
  %i.dj = load atomic i64, ptr %i.di acquire, align 8, !noalias !672 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 4294967297
  %i.dl = trunc i64 %i.dj to i32                  ; 2 uses
  br i1 %i.dk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.di, align 8, !tbaa !95, !noalias !672
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 0, ptr %i.dm, align 4, !tbaa !96, !noalias !672
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !98, !noalias !672
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !672
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !672, !inline_history !646
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !98, !noalias !672
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !672
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !672, !inline_history !646
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105, !noalias !672
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.du = add nsw i32 %i.dl, -1
  store i32 %i.du, ptr %i.di, align 8, !tbaa !106, !noalias !672
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dv = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4, !noalias !672
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dl, %bb.aj ], [ %i.dv, %bb.ak ]
  %i.dw = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dw, label %bb.al, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !107

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !672
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ah, %bb.af
  %i.dx = load ptr, ptr %i.aj, align 8, !tbaa !173, !noalias !672
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !178, !noalias !672 ; 4 uses
  %.not.i.i40.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i40.i, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !206, !noalias !672
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 9
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !213, !range !214, !noalias !672, !noundef !215
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eg = load i8, ptr %i.ef, align 8, !range !214, !noalias !672
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = select i1 %i.ee, i1 %i.eh, i1 false, !prof !129
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !672
  %i.el = select i1 %i.ei, ptr %i.ek, ptr null, !prof !129
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.eb
  br label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %bb.am, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.i.i.i = phi ptr [ %i.em, %bb.am ], [ null, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 9 uses
  %i.en = load i64, ptr %i.cw, align 8, !tbaa !190, !noalias !672 ; 8 uses
  %.not3654.i = icmp slt i64 %i.en, 0
  br i1 %.not3654.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  %i.eo = add nuw i64 %i.en, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.en, 23
  br i1 %min.iters.check, label %.lr.ph.i.preheader147, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.ep = shl i64 %i.en, 2                        ; 2 uses
  %i.eq = getelementptr i8, ptr %.0.i.i.i, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  %i.es = shl i64 %i.ct, 2                        ; 2 uses
  %i.et = getelementptr i8, ptr %i.cu, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.ep
  %i.ev = getelementptr i8, ptr %i.eu, i64 4
  %i.ew = getelementptr i8, ptr %i.cu, i64 %i.es
  %i.ex = getelementptr i8, ptr %i.ew, i64 4
  %bound0 = icmp ult ptr %.0.i.i.i, %i.ev
  %bound1 = icmp ult ptr %i.cv, %i.er
  %bound0143 = icmp ult ptr %.0.i.i.i, %i.ex
  %found.conflict146 = or i1 %bound0, %bound0143
  %conflict.rdx = and i1 %found.conflict146, %bound1
  br i1 %conflict.rdx, label %.lr.ph.i.preheader147, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eo, -8                      ; 3 uses
  %i.ey = load i32, ptr %i.cv, align 4, !tbaa !106, !alias.scope !674, !noalias !672
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ey, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %wide.load = load <4 x i32>, ptr %i.ez, align 4, !tbaa !106, !alias.scope !675, !noalias !672
  %wide.load145 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !106, !alias.scope !675, !noalias !672
  %i.fb = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.fc = sub nsw <4 x i32> %wide.load145, %broadcast.splat
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <4 x i32> %i.fb, ptr %i.fd, align 4, !tbaa !106, !alias.scope !676, !noalias !677
  store <4 x i32> %i.fc, ptr %i.fe, align 4, !tbaa !106, !alias.scope !676, !noalias !677
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !651

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader147

.lr.ph.i.preheader147:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03055.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.fg = add nuw i64 %i.en, 1
  %i.fh = sub i64 %i.en, %.03055.i.ph
  %xtraiter = and i64 %i.fg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader147, %.lr.ph.i.prol
  %.03055.i.prol = phi i64 [ %i.fn, %.lr.ph.i.prol ], [ %.03055.i.ph, %.lr.ph.i.preheader147 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader147 ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.03055.i.prol
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !106, !noalias !672
  %i.fk = load i32, ptr %i.cv, align 4, !tbaa !106, !noalias !672
  %i.fl = sub nsw i32 %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03055.i.prol
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !106, !noalias !672
  %i.fn = add nuw i64 %.03055.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !652

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader147
  %.03055.i.unr = phi i64 [ %.03055.i.ph, %.lr.ph.i.preheader147 ], [ %i.fn, %.lr.ph.i.prol ]
  %i.fo = icmp ult i64 %i.fh, 3
  br i1 %i.fo, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !672
  %i.fp = load ptr, ptr %11, align 16, !tbaa !153, !noalias !672
  %i.fq = load i32, ptr %i.cv, align 4, !tbaa !106, !noalias !672
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.en
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !106, !noalias !672
  %i.fu = sext i32 %i.ft to i64
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.66") align 8 %8, ptr noundef nonnull align 8 dereferenceable(120) %i.fp, i64 noundef %i.fr, i64 noundef %i.fu)
          to label %bb.ao unwind label %bb.bj, !noalias !672

bb.an:                                            ; preds = %bb.ae
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03055.i = phi i64 [ %i.gt, %.lr.ph.i ], [ %.03055.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.03055.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !106, !noalias !672
  %i.fy = load i32, ptr %i.cv, align 4, !tbaa !106, !noalias !672
  %i.fz = sub nsw i32 %i.fx, %i.fy
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03055.i
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !106, !noalias !672
  %i.gb = add nuw i64 %.03055.i, 1                ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !106, !noalias !672
  %i.ge = load i32, ptr %i.cv, align 4, !tbaa !106, !noalias !672
  %i.gf = sub nsw i32 %i.gd, %i.ge
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gb
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !106, !noalias !672
  %i.gh = add nuw i64 %.03055.i, 2                ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !106, !noalias !672
  %i.gk = load i32, ptr %i.cv, align 4, !tbaa !106, !noalias !672
  %i.gl = sub nsw i32 %i.gj, %i.gk
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gh
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !106, !noalias !672
  %i.gn = add nuw i64 %.03055.i, 3                ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !106, !noalias !672
  %i.gq = load i32, ptr %i.cv, align 4, !tbaa !106, !noalias !672
  %i.gr = sub nsw i32 %i.gp, %i.gq
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gn
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !106, !noalias !672
  %i.gt = add nuw i64 %.03055.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.gn, %i.en
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !653

bb.ao:                                            ; preds = %._crit_edge.i
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gw = load <2 x ptr>, ptr %8, align 16, !tbaa !119, !noalias !672
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false), !noalias !672
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !102, !noalias !672 ; 8 uses
  store <2 x ptr> %i.gw, ptr %11, align 16, !tbaa !119, !noalias !672
  %.not.i.i.i.i41.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i41.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 4 uses
  %i.gz = load atomic i64, ptr %i.gy acquire, align 8, !noalias !672 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 4294967297
  %i.hb = trunc i64 %i.gz to i32                  ; 2 uses
  br i1 %i.ha, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.gy, align 8, !tbaa !95, !noalias !672
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  store i32 0, ptr %i.hc, align 4, !tbaa !96, !noalias !672
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !98, !noalias !672
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !672
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #20, !noalias !672, !inline_history !654
  %i.hg = load ptr, ptr %i.gx, align 8, !tbaa !98, !noalias !672
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !672
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #20, !noalias !672, !inline_history !654
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.hj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105, !noalias !672
  %.not.i.i.i.i.i42.i = icmp eq i8 %i.hj, 0
  br i1 %.not.i.i.i.i.i42.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hk = add nsw i32 %i.hb, -1
  store i32 %i.hk, ptr %i.gy, align 8, !tbaa !106, !noalias !672
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i

bb.at:                                            ; preds = %bb.ar
  %i.hl = atomicrmw volatile add ptr %i.gy, i32 -1 acq_rel, align 4, !noalias !672
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i44.i = phi i32 [ %i.hb, %bb.as ], [ %i.hl, %bb.at ]
  %i.hm = icmp eq i32 %.0.i.i.i.i.i.i44.i, 1
  br i1 %i.hm, label %bb.au, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, !prof !107

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #20, !noalias !672
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i: ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i, %bb.aq, %bb.ao
  %i.hn = load ptr, ptr %i.gu, align 8, !tbaa !102, !noalias !672 ; 8 uses
  %.not.i.i45.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i45.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 4 uses
  %i.hp = load atomic i64, ptr %i.ho acquire, align 8, !noalias !672 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 4294967297
  %i.hr = trunc i64 %i.hp to i32                  ; 2 uses
  br i1 %i.hq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.ho, align 8, !tbaa !95, !noalias !672
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  store i32 0, ptr %i.hs, align 4, !tbaa !96, !noalias !672
  %i.ht = load ptr, ptr %i.hn, align 8, !tbaa !98, !noalias !672
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !672
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #20, !noalias !672, !inline_history !655
  %i.hw = load ptr, ptr %i.hn, align 8, !tbaa !98, !noalias !672
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !672
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #20, !noalias !672, !inline_history !655
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.hz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105, !noalias !672
  %.not.i.i.i46.i = icmp eq i8 %i.hz, 0
  br i1 %.not.i.i.i46.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ia = add nsw i32 %i.hr, -1
  store i32 %i.ia, ptr %i.ho, align 8, !tbaa !106, !noalias !672
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47.i

bb.az:                                            ; preds = %bb.ax
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal12_GLOBAL__N_17CastMapINS_7MapTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i123 = phi i32 [ %i.fp, %bb.ba ], [ %i.fz, %bb.bb ]
  %i.ga = icmp eq i32 %.0.i.i.i.i.i.i123, 1
  br i1 %i.ga, label %bb.bc, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129, !prof !107

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129: ; preds = %bb.aw, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122, %bb.bc, %bb.as
  %i.gb = load ptr, ptr %16, align 8, !tbaa !128
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.bd, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !129

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129
  %i.gd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !102 ; 8 uses
  %.not.i.i.i.i.i130 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i130, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 4 uses
  %i.gg = load atomic i64, ptr %i.gf acquire, align 8 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 4294967297
  %i.gi = trunc i64 %i.gg to i32                  ; 2 uses
  br i1 %i.gh, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.gf, align 8, !tbaa !95
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i32 0, ptr %i.gj, align 4, !tbaa !96
  %i.gk = load ptr, ptr %i.ge, align 8, !tbaa !98
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #20, !inline_history !6
  %i.gn = load ptr, ptr %i.ge, align 8, !tbaa !98
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #20, !inline_history !6
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.gq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105
  %.not.i.i.i.i.i.i = icmp eq i8 %i.gq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gr = add nsw i32 %i.gi, -1
  store i32 %i.gr, ptr %i.gf, align 8, !tbaa !106
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.gs = atomicrmw volatile add ptr %i.gf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gi, %bb.bh ], [ %i.gs, %bb.bi ]
  %i.gt = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.gt, label %bb.bj, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !107

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bf, %bb.bd
  %.pr.i = load ptr, ptr %16, align 8, !tbaa !128
  %.not.i.i131 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i131, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !220

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %16)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br i1 %i.fd, label %bb.bk, label %.critedge

bb.bk:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %.pr = load i64, ptr %i.et, align 8, !tbaa !189, !noalias !1132 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.gu = load ptr, ptr %i.de, align 8, !tbaa !179, !noalias !1132
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %.pr
  %.not.i132 = icmp eq i64 %.pr, 0
  br i1 %.not.i132, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %.thread299, %bb.bk
  %i.gw = phi ptr [ %i.ex, %.thread299 ], [ %i.gv, %bb.bk ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !1132
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !190, !noalias !1132
  %i.gz = shl i64 %i.gy, 2
  %i.ha = add i64 %i.gz, 4
  invoke void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.164") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ha)
          to label %.noexc137 unwind label %bb.ct, !noalias !1132

.noexc137:                                        ; preds = %bb.bl
  %i.hb = load ptr, ptr %10, align 8, !tbaa !128, !noalias !1132
  %i.hc = icmp eq ptr %i.hb, null                 ; 2 uses
  br i1 %i.hc, label %bb.bn, label %bb.bm, !prof !129

bb.bm:                                            ; preds = %.noexc137
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.cj unwind label %bb.bv

bb.bn:                                            ; preds = %.noexc137
  %i.hd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.he = load <2 x ptr>, ptr %i.hd, align 8, !tbaa !119, !noalias !1133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, i8 0, i64 16, i1 false), !noalias !1132
  %i.hf = load ptr, ptr %i.cl, align 8, !tbaa !173, !noalias !1132 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !102, !noalias !1132 ; 8 uses
  store <2 x ptr> %i.he, ptr %i.hg, align 8, !tbaa !119, !noalias !1132
  %.not.i.i.i.i.i133 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i.i133, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 4 uses
  %i.hk = load atomic i64, ptr %i.hj acquire, align 8, !noalias !1132 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 4294967297
  %i.hm = trunc i64 %i.hk to i32                  ; 2 uses
  br i1 %i.hl, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.hj, align 8, !tbaa !95, !noalias !1132
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  store i32 0, ptr %i.hn, align 4, !tbaa !96, !noalias !1132
  %i.ho = load ptr, ptr %i.hi, align 8, !tbaa !98, !noalias !1132
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !noalias !1132
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #20, !noalias !1132, !inline_history !1098
  %i.hr = load ptr, ptr %i.hi, align 8, !tbaa !98, !noalias !1132
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !1132
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #20, !noalias !1132, !inline_history !1098
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bq:                                            ; preds = %bb.bo
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105, !noalias !1132
  %.not.i.i.i.i.i.i134 = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i.i.i.i134, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hv = add nsw i32 %i.hm, -1
  store i32 %i.hv, ptr %i.hj, align 8, !tbaa !106, !noalias !1132
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i135

bb.bs:                                            ; preds = %bb.bq
  %i.hw = atomicrmw volatile add ptr %i.hj, i32 -1 acq_rel, align 4, !noalias !1132
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i135

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i135: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i.i.i.i136 = phi i32 [ %i.hm, %bb.br ], [ %i.hw, %bb.bs ]
  %i.hx = icmp eq i32 %.0.i.i.i.i.i.i.i136, 1
  br i1 %i.hx, label %bb.bt, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !107

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i135
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #20, !noalias !1132
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i135, %bb.bp, %bb.bn
  %i.hy = load ptr, ptr %i.cl, align 8, !tbaa !173, !noalias !1132
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !178, !noalias !1132 ; 4 uses
  %.not.i.i40.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i40.i, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !206, !noalias !1132
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 9
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !213, !range !214, !noalias !1132, !noundef !215
  %i.if = trunc nuw i8 %i.ie to i1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ih = load i8, ptr %i.ig, align 8, !range !214, !noalias !1132
  %i.ii = trunc nuw i8 %i.ih to i1
  %i.ij = select i1 %i.if, i1 %i.ii, i1 false, !prof !129
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !1132
  %i.im = select i1 %i.ij, ptr %i.il, ptr null, !prof !129
  %i.in = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.ic
  br label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %bb.bu, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.i.i.i = phi ptr [ %i.in, %bb.bu ], [ null, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 9 uses
  %i.io = load i64, ptr %i.gx, align 8, !tbaa !190, !noalias !1132 ; 8 uses
  %.not3654.i = icmp slt i64 %i.io, 0
  br i1 %.not3654.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  %i.ip = add nuw i64 %i.io, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.io, 15
  br i1 %min.iters.check, label %.lr.ph.i.preheader387, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.iq = shl i64 %i.io, 2
  %i.ir = add i64 %i.iq, 4                        ; 2 uses
  %i.is = getelementptr i8, ptr %.0.i.i.i, i64 %i.ir
  %i.it = getelementptr i8, ptr %i.gw, i64 %i.ir
  %i.iu = getelementptr i8, ptr %i.gw, i64 4
  %bound0 = icmp ult ptr %.0.i.i.i, %i.it
  %bound1 = icmp ult ptr %i.gw, %i.is
  %bound0383 = icmp ult ptr %.0.i.i.i, %i.iu
  %found.conflict386 = or i1 %bound0, %bound0383
  %conflict.rdx = and i1 %found.conflict386, %bound1
  br i1 %conflict.rdx, label %.lr.ph.i.preheader387, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ip, -8                      ; 3 uses
  %i.iv = load i32, ptr %i.gw, align 4, !tbaa !106, !alias.scope !1134, !noalias !1132
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.iv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %index ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %wide.load = load <4 x i32>, ptr %i.iw, align 4, !tbaa !106, !alias.scope !1135, !noalias !1132
  %wide.load385 = load <4 x i32>, ptr %i.ix, align 4, !tbaa !106, !alias.scope !1135, !noalias !1132
  %i.iy = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.iz = sub nsw <4 x i32> %wide.load385, %broadcast.splat
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store <4 x i32> %i.iy, ptr %i.ja, align 4, !tbaa !106, !alias.scope !1136, !noalias !1137
  store <4 x i32> %i.iz, ptr %i.jb, align 4, !tbaa !106, !alias.scope !1136, !noalias !1137
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jc = icmp eq i64 %index.next, %n.vec
  br i1 %i.jc, label %middle.block, label %vector.body, !llvm.loop !1103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ip, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader387

.lr.ph.i.preheader387:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03055.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.jd = add nuw i64 %i.io, 1
  %i.je = sub i64 %i.io, %.03055.i.ph
  %xtraiter = and i64 %i.jd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader387, %.lr.ph.i.prol
  %.03055.i.prol = phi i64 [ %i.jk, %.lr.ph.i.prol ], [ %.03055.i.ph, %.lr.ph.i.preheader387 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader387 ]
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.03055.i.prol
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !106, !noalias !1132
  %i.jh = load i32, ptr %i.gw, align 4, !tbaa !106, !noalias !1132
  %i.ji = sub nsw i32 %i.jg, %i.jh
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03055.i.prol
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !106, !noalias !1132
  %i.jk = add nuw i64 %.03055.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1104

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader387
  %.03055.i.unr = phi i64 [ %.03055.i.ph, %.lr.ph.i.preheader387 ], [ %i.jk, %.lr.ph.i.prol ]
  %i.jl = icmp ult i64 %i.je, 3
  br i1 %i.jl, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !1132
  %i.jm = load ptr, ptr %15, align 16, !tbaa !153, !noalias !1132
  %i.jn = load i32, ptr %i.gw, align 4, !tbaa !106, !noalias !1132
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.io
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !106, !noalias !1132
  %i.jr = sext i32 %i.jq to i64
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.66") align 8 %11, ptr noundef nonnull align 8 dereferenceable(120) %i.jm, i64 noundef %i.jo, i64 noundef %i.jr)
          to label %bb.bw unwind label %bb.cr, !noalias !1132

bb.bv:                                            ; preds = %bb.bm
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03055.i = phi i64 [ %i.kq, %.lr.ph.i ], [ %.03055.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.03055.i
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !106, !noalias !1132
  %i.jv = load i32, ptr %i.gw, align 4, !tbaa !106, !noalias !1132
  %i.jw = sub nsw i32 %i.ju, %i.jv
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03055.i
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !106, !noalias !1132
  %i.jy = add nuw i64 %.03055.i, 1                ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !106, !noalias !1132
  %i.kb = load i32, ptr %i.gw, align 4, !tbaa !106, !noalias !1132
  %i.kc = sub nsw i32 %i.ka, %i.kb
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.jy
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !106, !noalias !1132
  %i.ke = add nuw i64 %.03055.i, 2                ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !106, !noalias !1132
  %i.kh = load i32, ptr %i.gw, align 4, !tbaa !106, !noalias !1132
  %i.ki = sub nsw i32 %i.kg, %i.kh
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.ke
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !106, !noalias !1132
  %i.kk = add nuw i64 %.03055.i, 3                ; 3 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !106, !noalias !1132
  %i.kn = load i32, ptr %i.gw, align 4, !tbaa !106, !noalias !1132
  %i.ko = sub nsw i32 %i.km, %i.kn
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.kk
  store i32 %i.ko, ptr %i.kp, align 4, !tbaa !106, !noalias !1132
  %i.kq = add nuw i64 %.03055.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.kk, %i.io
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1105

bb.bw:                                            ; preds = %._crit_edge.i
  %i.kr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kt = load <2 x ptr>, ptr %11, align 16, !tbaa !119, !noalias !1132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, i8 0, i64 16, i1 false), !noalias !1132
  %i.ku = load ptr, ptr %i.ks, align 8, !tbaa !102, !noalias !1132 ; 8 uses
  store <2 x ptr> %i.kt, ptr %15, align 16, !tbaa !119, !noalias !1132
  %.not.i.i.i.i41.i = icmp eq ptr %i.ku, null
  br i1 %.not.i.i.i.i41.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 4 uses
  %i.kw = load atomic i64, ptr %i.kv acquire, align 8, !noalias !1132 ; 2 uses
  %i.kx = icmp eq i64 %i.kw, 4294967297
  %i.ky = trunc i64 %i.kw to i32                  ; 2 uses
  br i1 %i.kx, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %i.kv, align 8, !tbaa !95, !noalias !1132
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  store i32 0, ptr %i.kz, align 4, !tbaa !96, !noalias !1132
  %i.la = load ptr, ptr %i.ku, align 8, !tbaa !98, !noalias !1132
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !noalias !1132
  call void %i.lc(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #20, !noalias !1132, !inline_history !1106
  %i.ld = load ptr, ptr %i.ku, align 8, !tbaa !98, !noalias !1132
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !1132
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #20, !noalias !1132, !inline_history !1106
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

bb.bz:                                            ; preds = %bb.bx
  %i.lg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105, !noalias !1132
  %.not.i.i.i.i.i42.i = icmp eq i8 %i.lg, 0
  br i1 %.not.i.i.i.i.i42.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lh = add nsw i32 %i.ky, -1
  store i32 %i.lh, ptr %i.kv, align 8, !tbaa !106, !noalias !1132
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i

bb.cb:                                            ; preds = %bb.bz
  %i.li = atomicrmw volatile add ptr %i.kv, i32 -1 acq_rel, align 4, !noalias !1132
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i.i44.i = phi i32 [ %i.ky, %bb.ca ], [ %i.li, %bb.cb ]
  %i.lj = icmp eq i32 %.0.i.i.i.i.i.i44.i, 1
  br i1 %i.lj, label %bb.cc, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, !prof !107

bb.cc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #20, !noalias !1132
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i: ; preds = %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i, %bb.by, %bb.bw
  %i.lk = load ptr, ptr %i.kr, align 8, !tbaa !102, !noalias !1132 ; 8 uses
  %.not.i.i45.i = icmp eq ptr %i.lk, null
  br i1 %.not.i.i45.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 4 uses
  %i.lm = load atomic i64, ptr %i.ll acquire, align 8, !noalias !1132 ; 2 uses
  %i.ln = icmp eq i64 %i.lm, 4294967297
  %i.lo = trunc i64 %i.lm to i32                  ; 2 uses
  br i1 %i.ln, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i32 0, ptr %i.ll, align 8, !tbaa !95, !noalias !1132
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  store i32 0, ptr %i.lp, align 4, !tbaa !96, !noalias !1132
  %i.lq = load ptr, ptr %i.lk, align 8, !tbaa !98, !noalias !1132
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8, !noalias !1132
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(16) %i.lk) #20, !noalias !1132, !inline_history !1107
  %i.lt = load ptr, ptr %i.lk, align 8, !tbaa !98, !noalias !1132
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.lv = load ptr, ptr %i.lu, align 8, !noalias !1132
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(16) %i.lk) #20, !noalias !1132, !inline_history !1107
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.cf:                                            ; preds = %bb.cd
  %i.lw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105, !noalias !1132
  %.not.i.i.i46.i = icmp eq i8 %i.lw, 0
  br i1 %.not.i.i.i46.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lx = add nsw i32 %i.lo, -1
  store i32 %i.lx, ptr %i.ll, align 8, !tbaa !106, !noalias !1132
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47.i

end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal12_GLOBAL__N_17CastMapINS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i123 = phi i32 [ %i.fp, %bb.ba ], [ %i.fz, %bb.bb ]
  %i.ga = icmp eq i32 %.0.i.i.i.i.i.i123, 1
  br i1 %i.ga, label %bb.bc, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129, !prof !107

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129: ; preds = %bb.aw, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i122, %bb.bc, %bb.as
  %i.gb = load ptr, ptr %16, align 8, !tbaa !128
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.bd, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !129

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129
  %i.gd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !102 ; 8 uses
  %.not.i.i.i.i.i130 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i130, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 4 uses
  %i.gg = load atomic i64, ptr %i.gf acquire, align 8 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 4294967297
  %i.gi = trunc i64 %i.gg to i32                  ; 2 uses
  br i1 %i.gh, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.gf, align 8, !tbaa !95
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i32 0, ptr %i.gj, align 4, !tbaa !96
  %i.gk = load ptr, ptr %i.ge, align 8, !tbaa !98
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #20, !inline_history !6
  %i.gn = load ptr, ptr %i.ge, align 8, !tbaa !98
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #20, !inline_history !6
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.gq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105
  %.not.i.i.i.i.i.i = icmp eq i8 %i.gq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gr = add nsw i32 %i.gi, -1
  store i32 %i.gr, ptr %i.gf, align 8, !tbaa !106
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.gs = atomicrmw volatile add ptr %i.gf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gi, %bb.bh ], [ %i.gs, %bb.bi ]
  %i.gt = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.gt, label %bb.bj, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !107

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bf, %bb.bd
  %.pr.i = load ptr, ptr %16, align 8, !tbaa !128
  %.not.i.i131 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i131, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !220

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit129
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %16)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br i1 %i.fd, label %bb.bk, label %.critedge

bb.bk:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %.pr = load i64, ptr %i.et, align 8, !tbaa !189, !noalias !1213 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.gu = load ptr, ptr %i.de, align 8, !tbaa !179, !noalias !1213
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %.pr
  %.not.i132 = icmp eq i64 %.pr, 0
  br i1 %.not.i132, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %.thread299, %bb.bk
  %i.gw = phi ptr [ %i.ex, %.thread299 ], [ %i.gv, %bb.bk ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !1213
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !190, !noalias !1213
  %i.gz = shl i64 %i.gy, 2
  %i.ha = add i64 %i.gz, 4
  invoke void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.164") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ha)
          to label %.noexc137 unwind label %bb.ct, !noalias !1213

.noexc137:                                        ; preds = %bb.bl
  %i.hb = load ptr, ptr %10, align 8, !tbaa !128, !noalias !1213
  %i.hc = icmp eq ptr %i.hb, null                 ; 2 uses
  br i1 %i.hc, label %bb.bn, label %bb.bm, !prof !129

bb.bm:                                            ; preds = %.noexc137
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.cj unwind label %bb.bv

bb.bn:                                            ; preds = %.noexc137
  %i.hd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.he = load <2 x ptr>, ptr %i.hd, align 8, !tbaa !119, !noalias !1214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, i8 0, i64 16, i1 false), !noalias !1213
  %i.hf = load ptr, ptr %i.cl, align 8, !tbaa !173, !noalias !1213 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !102, !noalias !1213 ; 8 uses
  store <2 x ptr> %i.he, ptr %i.hg, align 8, !tbaa !119, !noalias !1213
  %.not.i.i.i.i.i133 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i.i133, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 4 uses
  %i.hk = load atomic i64, ptr %i.hj acquire, align 8, !noalias !1213 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 4294967297
  %i.hm = trunc i64 %i.hk to i32                  ; 2 uses
  br i1 %i.hl, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.hj, align 8, !tbaa !95, !noalias !1213
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  store i32 0, ptr %i.hn, align 4, !tbaa !96, !noalias !1213
  %i.ho = load ptr, ptr %i.hi, align 8, !tbaa !98, !noalias !1213
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !noalias !1213
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #20, !noalias !1213, !inline_history !1179
  %i.hr = load ptr, ptr %i.hi, align 8, !tbaa !98, !noalias !1213
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !1213
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #20, !noalias !1213, !inline_history !1179
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bq:                                            ; preds = %bb.bo
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105, !noalias !1213
  %.not.i.i.i.i.i.i134 = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i.i.i.i134, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hv = add nsw i32 %i.hm, -1
  store i32 %i.hv, ptr %i.hj, align 8, !tbaa !106, !noalias !1213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i135

bb.bs:                                            ; preds = %bb.bq
  %i.hw = atomicrmw volatile add ptr %i.hj, i32 -1 acq_rel, align 4, !noalias !1213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i135

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i135: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i.i.i.i136 = phi i32 [ %i.hm, %bb.br ], [ %i.hw, %bb.bs ]
  %i.hx = icmp eq i32 %.0.i.i.i.i.i.i.i136, 1
  br i1 %i.hx, label %bb.bt, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !107

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i135
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #20, !noalias !1213
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i135, %bb.bp, %bb.bn
  %i.hy = load ptr, ptr %i.cl, align 8, !tbaa !173, !noalias !1213
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !178, !noalias !1213 ; 4 uses
  %.not.i.i40.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i40.i, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !206, !noalias !1213
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 9
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !213, !range !214, !noalias !1213, !noundef !215
  %i.if = trunc nuw i8 %i.ie to i1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ih = load i8, ptr %i.ig, align 8, !range !214, !noalias !1213
  %i.ii = trunc nuw i8 %i.ih to i1
  %i.ij = select i1 %i.if, i1 %i.ii, i1 false, !prof !129
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !1213
  %i.im = select i1 %i.ij, ptr %i.il, ptr null, !prof !129
  %i.in = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.ic
  br label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %bb.bu, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.i.i.i = phi ptr [ %i.in, %bb.bu ], [ null, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 9 uses
  %i.io = load i64, ptr %i.gx, align 8, !tbaa !190, !noalias !1213 ; 8 uses
  %.not3654.i = icmp slt i64 %i.io, 0
  br i1 %.not3654.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  %i.ip = add nuw i64 %i.io, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.io, 15
  br i1 %min.iters.check, label %.lr.ph.i.preheader387, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.iq = shl i64 %i.io, 2
  %i.ir = add i64 %i.iq, 4                        ; 2 uses
  %i.is = getelementptr i8, ptr %.0.i.i.i, i64 %i.ir
  %i.it = getelementptr i8, ptr %i.gw, i64 %i.ir
  %i.iu = getelementptr i8, ptr %i.gw, i64 4
  %bound0 = icmp ult ptr %.0.i.i.i, %i.it
  %bound1 = icmp ult ptr %i.gw, %i.is
  %bound0383 = icmp ult ptr %.0.i.i.i, %i.iu
  %found.conflict386 = or i1 %bound0, %bound0383
  %conflict.rdx = and i1 %found.conflict386, %bound1
  br i1 %conflict.rdx, label %.lr.ph.i.preheader387, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ip, -8                      ; 3 uses
  %i.iv = load i32, ptr %i.gw, align 4, !tbaa !106, !alias.scope !1215, !noalias !1213
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.iv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %index ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %wide.load = load <4 x i32>, ptr %i.iw, align 4, !tbaa !106, !alias.scope !1216, !noalias !1213
  %wide.load385 = load <4 x i32>, ptr %i.ix, align 4, !tbaa !106, !alias.scope !1216, !noalias !1213
  %i.iy = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.iz = sub nsw <4 x i32> %wide.load385, %broadcast.splat
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store <4 x i32> %i.iy, ptr %i.ja, align 4, !tbaa !106, !alias.scope !1217, !noalias !1218
  store <4 x i32> %i.iz, ptr %i.jb, align 4, !tbaa !106, !alias.scope !1217, !noalias !1218
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jc = icmp eq i64 %index.next, %n.vec
  br i1 %i.jc, label %middle.block, label %vector.body, !llvm.loop !1184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ip, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader387

.lr.ph.i.preheader387:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03055.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.jd = add nuw i64 %i.io, 1
  %i.je = sub i64 %i.io, %.03055.i.ph
  %xtraiter = and i64 %i.jd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader387, %.lr.ph.i.prol
  %.03055.i.prol = phi i64 [ %i.jk, %.lr.ph.i.prol ], [ %.03055.i.ph, %.lr.ph.i.preheader387 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader387 ]
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.03055.i.prol
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !106, !noalias !1213
  %i.jh = load i32, ptr %i.gw, align 4, !tbaa !106, !noalias !1213
  %i.ji = sub nsw i32 %i.jg, %i.jh
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03055.i.prol
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !106, !noalias !1213
  %i.jk = add nuw i64 %.03055.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1185

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader387
  %.03055.i.unr = phi i64 [ %.03055.i.ph, %.lr.ph.i.preheader387 ], [ %i.jk, %.lr.ph.i.prol ]
  %i.jl = icmp ult i64 %i.je, 3
  br i1 %i.jl, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !1213
  %i.jm = load ptr, ptr %15, align 16, !tbaa !153, !noalias !1213
  %i.jn = load i32, ptr %i.gw, align 4, !tbaa !106, !noalias !1213
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.io
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !106, !noalias !1213
  %i.jr = sext i32 %i.jq to i64
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.66") align 8 %11, ptr noundef nonnull align 8 dereferenceable(120) %i.jm, i64 noundef %i.jo, i64 noundef %i.jr)
          to label %bb.bw unwind label %bb.cr, !noalias !1213

bb.bv:                                            ; preds = %bb.bm
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03055.i = phi i64 [ %i.kq, %.lr.ph.i ], [ %.03055.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.03055.i
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !106, !noalias !1213
  %i.jv = load i32, ptr %i.gw, align 4, !tbaa !106, !noalias !1213
  %i.jw = sub nsw i32 %i.ju, %i.jv
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03055.i
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !106, !noalias !1213
  %i.jy = add nuw i64 %.03055.i, 1                ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !106, !noalias !1213
  %i.kb = load i32, ptr %i.gw, align 4, !tbaa !106, !noalias !1213
  %i.kc = sub nsw i32 %i.ka, %i.kb
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.jy
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !106, !noalias !1213
  %i.ke = add nuw i64 %.03055.i, 2                ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !106, !noalias !1213
  %i.kh = load i32, ptr %i.gw, align 4, !tbaa !106, !noalias !1213
  %i.ki = sub nsw i32 %i.kg, %i.kh
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.ke
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !106, !noalias !1213
  %i.kk = add nuw i64 %.03055.i, 3                ; 3 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !106, !noalias !1213
  %i.kn = load i32, ptr %i.gw, align 4, !tbaa !106, !noalias !1213
  %i.ko = sub nsw i32 %i.km, %i.kn
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.kk
  store i32 %i.ko, ptr %i.kp, align 4, !tbaa !106, !noalias !1213
  %i.kq = add nuw i64 %.03055.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.kk, %i.io
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1186

bb.bw:                                            ; preds = %._crit_edge.i
  %i.kr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kt = load <2 x ptr>, ptr %11, align 16, !tbaa !119, !noalias !1213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, i8 0, i64 16, i1 false), !noalias !1213
  %i.ku = load ptr, ptr %i.ks, align 8, !tbaa !102, !noalias !1213 ; 8 uses
  store <2 x ptr> %i.kt, ptr %15, align 16, !tbaa !119, !noalias !1213
  %.not.i.i.i.i41.i = icmp eq ptr %i.ku, null
  br i1 %.not.i.i.i.i41.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 4 uses
  %i.kw = load atomic i64, ptr %i.kv acquire, align 8, !noalias !1213 ; 2 uses
  %i.kx = icmp eq i64 %i.kw, 4294967297
  %i.ky = trunc i64 %i.kw to i32                  ; 2 uses
  br i1 %i.kx, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %i.kv, align 8, !tbaa !95, !noalias !1213
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  store i32 0, ptr %i.kz, align 4, !tbaa !96, !noalias !1213
  %i.la = load ptr, ptr %i.ku, align 8, !tbaa !98, !noalias !1213
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !noalias !1213
  call void %i.lc(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #20, !noalias !1213, !inline_history !1187
  %i.ld = load ptr, ptr %i.ku, align 8, !tbaa !98, !noalias !1213
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !1213
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #20, !noalias !1213, !inline_history !1187
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

bb.bz:                                            ; preds = %bb.bx
  %i.lg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105, !noalias !1213
  %.not.i.i.i.i.i42.i = icmp eq i8 %i.lg, 0
  br i1 %.not.i.i.i.i.i42.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lh = add nsw i32 %i.ky, -1
  store i32 %i.lh, ptr %i.kv, align 8, !tbaa !106, !noalias !1213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i

bb.cb:                                            ; preds = %bb.bz
  %i.li = atomicrmw volatile add ptr %i.kv, i32 -1 acq_rel, align 4, !noalias !1213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i.i44.i = phi i32 [ %i.ky, %bb.ca ], [ %i.li, %bb.cb ]
  %i.lj = icmp eq i32 %.0.i.i.i.i.i.i44.i, 1
  br i1 %i.lj, label %bb.cc, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, !prof !107

bb.cc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #20, !noalias !1213
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i: ; preds = %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i43.i, %bb.by, %bb.bw
  %i.lk = load ptr, ptr %i.kr, align 8, !tbaa !102, !noalias !1213 ; 8 uses
  %.not.i.i45.i = icmp eq ptr %i.lk, null
  br i1 %.not.i.i45.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 4 uses
  %i.lm = load atomic i64, ptr %i.ll acquire, align 8, !noalias !1213 ; 2 uses
  %i.ln = icmp eq i64 %i.lm, 4294967297
  %i.lo = trunc i64 %i.lm to i32                  ; 2 uses
  br i1 %i.ln, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i32 0, ptr %i.ll, align 8, !tbaa !95, !noalias !1213
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  store i32 0, ptr %i.lp, align 4, !tbaa !96, !noalias !1213
  %i.lq = load ptr, ptr %i.lk, align 8, !tbaa !98, !noalias !1213
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8, !noalias !1213
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(16) %i.lk) #20, !noalias !1213, !inline_history !1188
  %i.lt = load ptr, ptr %i.lk, align 8, !tbaa !98, !noalias !1213
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.lv = load ptr, ptr %i.lu, align 8, !noalias !1213
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(16) %i.lk) #20, !noalias !1213, !inline_history !1188
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.cf:                                            ; preds = %bb.cd
  %i.lw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105, !noalias !1213
  %.not.i.i.i46.i = icmp eq i8 %i.lw, 0
  br i1 %.not.i.i.i46.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lx = add nsw i32 %i.lo, -1
  store i32 %i.lx, ptr %i.ll, align 8, !tbaa !106, !noalias !1213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i47.i

end_hunk_3
begin_hunk_4_@bcmp
!345 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!346 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!347 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!348 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!349 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!350 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!351 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!352 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!353 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!354 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!355 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!356 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!357 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!358 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!359 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!360 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!361 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!362 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!363 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!364 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!365 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!366 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!367 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!368 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!369 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!370 = distinct !{!370, i1 true, !"_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA9_KcNS0_4Type4typeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!371 = distinct !{!371, !370, !"_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA9_KcNS0_4Type4typeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!372 = distinct !{!372, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_"}
!373 = distinct !{!373, !372, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_: argument 0"}
!374 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!375 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!376 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!377 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!378 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!379 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!380 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!381 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!382 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!383 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!384 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!385 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!386 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!387 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!388 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!389 = distinct !{!389, i1 true, !"_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA21_KcNS0_4Type4typeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!390 = distinct !{!390, !389, !"_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA21_KcNS0_4Type4typeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!391 = distinct !{!391, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_"}
!392 = distinct !{!392, !391, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_: argument 0"}
!393 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!394 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!395 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!396 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!397 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!398 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!399 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!400 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!401 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!402 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!403 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!404 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!405 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!406 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!407 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!408 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!409 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!410 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!411 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!412 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!413 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!414 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!415 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!416 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!417 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!418 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!419 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!420 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!421 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!422 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!423 = distinct !{!423, i1 true, !"_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA12_KcNS0_4Type4typeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!424 = distinct !{!424, !423, !"_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA12_KcNS0_4Type4typeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!425 = distinct !{!425, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_"}
!426 = distinct !{!426, !425, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_: argument 0"}
!427 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!428 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!429 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!430 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!431 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!432 = distinct !{!432, i1 true, !"_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA16_KcNS0_4Type4typeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!433 = distinct !{!433, !432, !"_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA16_KcNS0_4Type4typeEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!434 = distinct !{!434, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_"}
!435 = distinct !{!435, !434, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_: argument 0"}
!436 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow7compute8internal12CastFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!437 = !{i64 -1439469221164702793}
!438 = !{!312}
!439 = !{!314, !312}
!440 = !{!"p1 _ZTSN5arrow7compute8internal12CastFunctionE", !99, i64 0}
!441 = !{!440, !440, i64 0}
!442 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute8internal12CastFunctionELN9__gnu_cxx12_Lock_policyE2EE", !440, i64 0, !101, i64 8}
!443 = !{!442, !440, i64 0}
!444 = !{!"p1 _ZTSN5arrow7compute15KernelSignatureE", !99, i64 0}
!445 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EE", !444, i64 0, !101, i64 8}
!446 = !{!"_ZTSSt10shared_ptrIN5arrow7compute15KernelSignatureEE", !445, i64 0}
!447 = !{!"_ZTSSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEE", !103, i64 0, !99, i64 24}
!448 = !{!"_ZTSN5arrow7compute9SimdLevel4typeE", !26, i64 0}
!449 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EE", !109, i64 0, !101, i64 8}
!450 = !{!"_ZTSSt10shared_ptrIN5arrow7compute11KernelStateEE", !449, i64 0}
!451 = !{!"_ZTSN5arrow7compute6KernelE", !446, i64 0, !447, i64 16, !108, i64 48, !448, i64 52, !450, i64 56}
!452 = !{!451, !108, i64 48}
!453 = !{!"_ZTSN5arrow7compute12NullHandling4typeE", !26, i64 0}
!454 = !{!"_ZTSN5arrow7compute13MemAllocation4typeE", !26, i64 0}
!455 = !{!"_ZTSN5arrow7compute12ScalarKernelE", !451, i64 0, !99, i64 72, !108, i64 80, !453, i64 84, !454, i64 88}
!456 = !{!455, !108, i64 80}
!457 = !{!455, !453, i64 84}
!458 = !{!455, !454, i64 88}
!459 = !{!455, !99, i64 72}
!460 = !{!445, !444, i64 0}
!461 = !{!447, !99, i64 24}
!462 = !{!449, !109, i64 0}
!463 = !{!342}
!464 = !{!344, !342}
!465 = !{!371}
!466 = !{!373, !371}
!467 = !{!390}
!468 = !{!392, !390}
!469 = !{!424}
!470 = !{!426, !424}
!471 = !{!433}
!472 = !{!435, !433}
!473 = !{!"p1 _ZTSSt10shared_ptrIN5arrow7compute8internal12CastFunctionEE", !99, i64 0}
!474 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EE17_Vector_impl_dataE", !473, i64 0, !473, i64 8, !473, i64 16}
!475 = !{!474, !473, i64 0}
!476 = !{!474, !473, i64 16}
!477 = !{!474, !473, i64 8}
!478 = !{i64 -124277075198374354}
!479 = !{!"_ZTSN5arrow7compute10OutputType11ResolveKindE", !26, i64 0}
!480 = !{!"_ZTSSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEE", !103, i64 0, !99, i64 24}
!481 = !{!"_ZTSN5arrow7compute10OutputTypeE", !479, i64 0, !113, i64 8, !480, i64 24}
!482 = !{!481, !479, i64 0}
!483 = !{i64 4070423420677450470}
!484 = !{i64 -8685541927136252537}
!485 = !{i64 1021124020264678324}
!486 = !{i64 1080103601501470593}
!487 = distinct !{null}
!488 = !{i64 -227505617863360783}
!489 = distinct !{null}
!490 = !{i64 2446866517051979729}
!491 = !{i64 3046961288831022005}
!492 = distinct !{null}
!493 = !{i64 -8495732369917707594}
!494 = !{i64 4285398625534358532}
!495 = !{i64 8075109352139036284}
!496 = !{i64 145576345541456843}
!497 = !{i64 -1249690785945693651}
!498 = distinct !{!498, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!499 = distinct !{!499, !498, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!500 = distinct !{!500, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!501 = distinct !{!501, !500, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!502 = distinct !{!502, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!503 = distinct !{!503, !502, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!504 = distinct !{!504, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!505 = distinct !{!505, !504, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!506 = distinct !{!506, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!507 = distinct !{!507, !506, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!508 = distinct !{!508, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_8ListTypeES4_E13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISB_E"}
!509 = distinct !{!509, !508, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_8ListTypeES4_E13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISB_E: argument 0"}
!510 = distinct !{!510, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!511 = distinct !{!511, !510, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!512 = distinct !{!512, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!513 = distinct !{!513, !512, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!514 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!515 = distinct !{!515, i1 false, !"LVerDomain"}
!516 = distinct !{!516, !515}
!517 = distinct !{!517, !515}
!518 = distinct !{!518, !515}
!519 = distinct !{!519, !216, !217, !218}
!520 = distinct !{!520, !219}
!521 = distinct !{!521, !216, !217}
!522 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!523 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!524 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!525 = distinct !{!525, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!526 = distinct !{!526, !525, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!527 = distinct !{!527, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!528 = distinct !{!528, !527, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!529 = distinct !{!529, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!530 = distinct !{!530, !529, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!531 = distinct !{!531, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!532 = distinct !{!532, !531, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!533 = distinct !{!533, i1 true, !"_ZN5arrow6Status2OKEv"}
!534 = distinct !{!534, !533, !"_ZN5arrow6Status2OKEv: argument 0"}
!535 = !{i64 -3070323351860012631}
!536 = !{!501, !499}
!537 = !{!503}
!538 = !{!507, !505, !503}
!539 = !{!505, !503}
!540 = !{!509}
!541 = !{!513, !511, !509}
!542 = !{!516}
!543 = !{!517}
!544 = !{!518}
!545 = !{!509, !517, !516}
!546 = !{!526}
!547 = !{!528}
!548 = !{!530}
!549 = !{!532}
!550 = !{!532, !530}
!551 = !{!534}
!552 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!553 = !{i64 -516294721273520511}
!554 = !{i64 -1313933399618686451}
!555 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!556 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!557 = !{i64 -1944533227323293441}
!558 = distinct !{!558, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!559 = distinct !{!559, !558, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!560 = distinct !{!560, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!561 = distinct !{!561, !560, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!562 = distinct !{!562, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!563 = distinct !{!563, !562, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!564 = !{i64 -4140111295806217484}
!565 = !{!559}
!566 = !{!563, !561, !559}
!567 = !{!561, !559}
!568 = !{i64 -5772217203557052020}
!569 = !{i64 -2246200897035328308}
!570 = !{i64 3157275121114493901}
!571 = !{i64 8671354214695231670}
!572 = !{i64 4438435232456973644}
!573 = !{i64 1811972334920042084}
!574 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!575 = !{i64 -7958217990955037719}
!576 = !{i64 -1556834719307278185}
!577 = !{i64 -1026604092888656530}
!578 = !{i64 -654069852097860636}
!579 = distinct !{null}
!580 = !{i64 6999901088608406530}
!581 = !{i64 9172729906254219841}
!582 = !{i64 -4078816293849673942}
!583 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!584 = distinct !{null}
!585 = !{i64 -1891274575702750138}
!586 = !{!212, !108, i64 8}
!587 = !{!212, !131, i64 16}
!588 = !{!212, !207, i64 40}
!589 = !{!210, !209, i64 0}
!590 = !{!"p1 _ZTSN5arrow6DeviceE", !99, i64 0}
!591 = !{!"_ZTSSt12__shared_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EE", !590, i64 0, !101, i64 8}
!592 = !{!591, !590, i64 0}
!593 = !{!"_ZTSSt10__weak_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EE", !590, i64 0, !235, i64 8}
!594 = !{!"_ZTSSt8weak_ptrIN5arrow6DeviceEE", !593, i64 0}
!595 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow6DeviceEE", !594, i64 0}
!596 = !{!"_ZTSN5arrow6DeviceE", !595, i64 8, !108, i64 24}
!597 = !{!596, !108, i64 24}
!598 = !{i64 3202712250268133874}
!599 = !{i64 2078725152392627389}
!600 = !{i64 3052353772730769926}
!601 = !{i64 -5757446671746692635}
!602 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!603 = !{i64 -1293885092794865388}
!604 = distinct !{null, null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!605 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!606 = distinct !{null, null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!607 = distinct !{null, null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!608 = distinct !{null, null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!609 = !{i64 -8017773914852823410}
!610 = distinct !{!610, i1 true, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_"}
!611 = distinct !{!611, !610, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!612 = distinct !{!612, !610, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!613 = distinct !{!613, i1 true, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_"}
!614 = distinct !{!614, !613, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!615 = distinct !{!615, !613, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!616 = !{i64 5956133331068011964}
!617 = !{!611}
!618 = !{!612}
!619 = !{!614}
!620 = !{!615}
!621 = distinct !{null, null, null, null}
!622 = !{i64 3194886657658484606}
!623 = !{!115, !114, i64 0}
!624 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!625 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!626 = distinct !{!626, !216}
!627 = !{i64 -7066512526248640960}
!628 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!629 = !{i64 -4520811060228539852}
!630 = distinct !{!630, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!631 = distinct !{!631, !630, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!632 = distinct !{!632, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!633 = distinct !{!633, !632, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!634 = distinct !{!634, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!635 = distinct !{!635, !634, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!636 = distinct !{!636, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!637 = distinct !{!637, !636, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!638 = distinct !{!638, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!639 = distinct !{!639, !638, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!640 = distinct !{!640, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_12ListViewTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!641 = distinct !{!641, !640, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_12ListViewTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0"}
!642 = distinct !{!642, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!643 = distinct !{!643, !642, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!644 = distinct !{!644, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!645 = distinct !{!645, !644, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!646 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!647 = distinct !{!647, i1 false, !"LVerDomain"}
!648 = distinct !{!648, !647}
!649 = distinct !{!649, !647}
!650 = distinct !{!650, !647}
!651 = distinct !{!651, !216, !217, !218}
!652 = distinct !{!652, !219}
!653 = distinct !{!653, !216, !217}
!654 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!655 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!656 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!657 = distinct !{!657, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!658 = distinct !{!658, !657, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!659 = distinct !{!659, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!660 = distinct !{!660, !659, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!661 = distinct !{!661, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!662 = distinct !{!662, !661, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!663 = distinct !{!663, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!664 = distinct !{!664, !663, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!665 = distinct !{!665, i1 true, !"_ZN5arrow6Status2OKEv"}
!666 = distinct !{!666, !665, !"_ZN5arrow6Status2OKEv: argument 0"}
!667 = !{i64 2144166539297232826}
!668 = !{!633, !631}
!669 = !{!635}
!670 = !{!639, !637, !635}
!671 = !{!637, !635}
!672 = !{!641}
!673 = !{!645, !643, !641}
!674 = !{!648}
!675 = !{!649}
!676 = !{!650}
!677 = !{!641, !649, !648}
!678 = !{!658}
!679 = !{!660}
!680 = !{!662}
!681 = !{!664}
!682 = !{!664, !662}
!683 = !{!666}
!684 = distinct !{!684, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!685 = distinct !{!685, !684, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!686 = distinct !{!686, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!687 = distinct !{!687, !686, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!688 = distinct !{!688, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!689 = distinct !{!689, !688, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!690 = distinct !{!690, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!691 = distinct !{!691, !690, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!692 = distinct !{!692, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!693 = distinct !{!693, !692, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!694 = distinct !{!694, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_13LargeListTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!695 = distinct !{!695, !694, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_13LargeListTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0"}
!696 = distinct !{null}
!697 = distinct !{!697, i1 true, !"_ZN5arrow6Status7InvalidIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S2_SA_EEES0_DpOT_"}
!698 = distinct !{!698, !697, !"_ZN5arrow6Status7InvalidIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S2_SA_EEES0_DpOT_: argument 0"}
!699 = distinct !{!699, i1 true, !"_ZN5arrow6Status8FromArgsIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S2_SA_EEES0_NS_10StatusCodeEDpOT_"}
!700 = distinct !{!700, !699, !"_ZN5arrow6Status8FromArgsIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S2_SA_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!701 = distinct !{!701, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!702 = distinct !{!702, !701, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!703 = distinct !{!703, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!704 = distinct !{!704, !703, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!705 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!706 = distinct !{!706, !216, !217, !218}
!707 = distinct !{!707, !216, !218, !217}
!708 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!709 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!710 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!711 = distinct !{!711, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_13LargeListTypeENS_8ListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE"}
!712 = distinct !{!712, !711, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_13LargeListTypeENS_8ListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE: argument 0"}
!713 = distinct !{!713, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!714 = distinct !{!714, !713, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!715 = distinct !{!715, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!716 = distinct !{!716, !715, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!717 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!718 = distinct !{null, null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!719 = distinct !{!719, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!720 = distinct !{!720, !719, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!721 = distinct !{!721, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!722 = distinct !{!722, !721, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!723 = distinct !{!723, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!724 = distinct !{!724, !723, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!725 = distinct !{!725, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!726 = distinct !{!726, !725, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!727 = distinct !{!727, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!728 = distinct !{!728, !727, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!729 = distinct !{!729, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!730 = distinct !{!730, !729, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!731 = distinct !{!731, i1 true, !"_ZN5arrow6Status2OKEv"}
!732 = distinct !{!732, !731, !"_ZN5arrow6Status2OKEv: argument 0"}
!733 = !{i64 -8085415189890867409}
!734 = !{!687, !685}
!735 = !{!689}
!736 = !{!693, !691, !689}
!737 = !{!691, !689}
!738 = !{!695}
!739 = !{!700, !698, !695}
!740 = !{!704, !702, !695}
!741 = !{!712, !695}
!742 = !{!716, !714, !712, !695}
!743 = !{!720, !695}
!744 = !{!722}
!745 = !{!724}
!746 = !{!726}
!747 = !{!728}
!748 = !{!730}
!749 = !{!730, !728}
!750 = !{!732}
!751 = !{i64 -7236908486467458728}
!752 = distinct !{!752, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!753 = distinct !{!753, !752, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!754 = distinct !{!754, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!755 = distinct !{!755, !754, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!756 = distinct !{!756, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!757 = distinct !{!757, !756, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!758 = distinct !{!758, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!759 = distinct !{!759, !758, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!760 = distinct !{!760, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!761 = distinct !{!761, !760, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!762 = distinct !{!762, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_17LargeListViewTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!763 = distinct !{!763, !762, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_17LargeListViewTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0"}
!764 = distinct !{null}
!765 = distinct !{!765, i1 true, !"_ZN5arrow6Status7InvalidIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S2_SA_EEES0_DpOT_"}
!766 = distinct !{!766, !765, !"_ZN5arrow6Status7InvalidIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S2_SA_EEES0_DpOT_: argument 0"}
!767 = distinct !{!767, i1 true, !"_ZN5arrow6Status8FromArgsIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S2_SA_EEES0_NS_10StatusCodeEDpOT_"}
!768 = distinct !{!768, !767, !"_ZN5arrow6Status8FromArgsIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S2_SA_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!769 = distinct !{!769, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!770 = distinct !{!770, !769, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!771 = distinct !{!771, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!772 = distinct !{!772, !771, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!773 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!774 = distinct !{!774, !216, !217, !218}
!775 = distinct !{!775, !216, !218, !217}
!776 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!777 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!778 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!779 = distinct !{!779, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_17LargeListViewTypeENS_8ListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE"}
!780 = distinct !{!780, !779, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_17LargeListViewTypeENS_8ListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE: argument 0"}
!781 = distinct !{!781, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!782 = distinct !{!782, !781, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!783 = distinct !{!783, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!784 = distinct !{!784, !783, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!785 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!786 = distinct !{null, null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!787 = distinct !{!787, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!788 = distinct !{!788, !787, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!789 = distinct !{!789, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!790 = distinct !{!790, !789, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!791 = distinct !{!791, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!792 = distinct !{!792, !791, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!793 = distinct !{!793, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!794 = distinct !{!794, !793, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!795 = distinct !{!795, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!796 = distinct !{!796, !795, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!797 = distinct !{!797, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!798 = distinct !{!798, !797, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!799 = distinct !{!799, i1 true, !"_ZN5arrow6Status2OKEv"}
!800 = distinct !{!800, !799, !"_ZN5arrow6Status2OKEv: argument 0"}
!801 = !{i64 2388247024459944304}
!802 = !{!755, !753}
!803 = !{!757}
!804 = !{!761, !759, !757}
!805 = !{!759, !757}
!806 = !{!763}
!807 = !{!768, !766, !763}
!808 = !{!772, !770, !763}
!809 = !{!780, !763}
!810 = !{!784, !782, !780, !763}
!811 = !{!788, !763}
!812 = !{!790}
!813 = !{!792}
!814 = !{!794}
!815 = !{!796}
!816 = !{!798}
!817 = !{!798, !796}
!818 = !{!800}
!819 = distinct !{!819, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!820 = distinct !{!820, !819, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!821 = distinct !{!821, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!822 = distinct !{!822, !821, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!823 = distinct !{!823, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!824 = distinct !{!824, !823, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!825 = distinct !{!825, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!826 = distinct !{!826, !825, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!827 = distinct !{!827, !216, !217, !218}
!828 = distinct !{!828, !216, !218, !217}
!829 = distinct !{!829, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!830 = distinct !{!830, !829, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!831 = distinct !{!831, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!832 = distinct !{!832, !831, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!833 = distinct !{!833, i1 true, !"_ZN5arrow6Status2OKEv"}
!834 = distinct !{!834, !833, !"_ZN5arrow6Status2OKEv: argument 0"}
!835 = !{i64 8229263417217730957}
!836 = !{!822, !820}
!837 = !{!826, !824}
!838 = !{!830}
!839 = !{!832}
!840 = !{!832, !830}
!841 = !{!834}
!842 = !{i64 -4623262389011538927}
!843 = distinct !{!843, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!844 = distinct !{!844, !843, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!845 = distinct !{!845, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!846 = distinct !{!846, !845, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!847 = distinct !{!847, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!848 = distinct !{!848, !847, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!849 = distinct !{!849, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!850 = distinct !{!850, !849, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!851 = distinct !{!851, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!852 = distinct !{!852, !851, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!853 = distinct !{!853, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_8ListTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!854 = distinct !{!854, !853, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_8ListTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0"}
!855 = distinct !{!855, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!856 = distinct !{!856, !855, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!857 = distinct !{!857, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!858 = distinct !{!858, !857, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!859 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!860 = distinct !{!860, !216}
!861 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!862 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!863 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!864 = distinct !{!864, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_8ListTypeENS_13LargeListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE"}
!865 = distinct !{!865, !864, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_8ListTypeENS_13LargeListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE: argument 0"}
!866 = distinct !{!866, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!867 = distinct !{!867, !866, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!868 = distinct !{!868, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!869 = distinct !{!869, !868, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!870 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!871 = distinct !{null, null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!872 = distinct !{!872, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!873 = distinct !{!873, !872, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!874 = distinct !{!874, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!875 = distinct !{!875, !874, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!876 = distinct !{!876, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!877 = distinct !{!877, !876, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
end_hunk_4
begin_hunk_5_@bcmp
!937 = distinct !{!937, !936, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!938 = distinct !{!938, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!939 = distinct !{!939, !938, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!940 = distinct !{!940, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!941 = distinct !{!941, !940, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!942 = distinct !{!942, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!943 = distinct !{!943, !942, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!944 = distinct !{!944, i1 true, !"_ZN5arrow6Status2OKEv"}
!945 = distinct !{!945, !944, !"_ZN5arrow6Status2OKEv: argument 0"}
!946 = !{i64 1895107683408700505}
!947 = !{!906, !904}
!948 = !{!908}
!949 = !{!912, !910, !908}
!950 = !{!910, !908}
!951 = !{!914}
!952 = !{!918, !916, !914}
!953 = !{!925, !914}
!954 = !{!929, !927, !925, !914}
!955 = !{!933, !914}
!956 = !{!935}
!957 = !{!937}
!958 = !{!939}
!959 = !{!941}
!960 = !{!943}
!961 = !{!943, !941}
!962 = !{!945}
!963 = distinct !{!963, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!964 = distinct !{!964, !963, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!965 = distinct !{!965, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!966 = distinct !{!966, !965, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!967 = distinct !{!967, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!968 = distinct !{!968, !967, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!969 = distinct !{!969, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!970 = distinct !{!970, !969, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!971 = distinct !{!971, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!972 = distinct !{!972, !971, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!973 = distinct !{!973, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_13LargeListTypeES4_E13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISB_E"}
!974 = distinct !{!974, !973, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_13LargeListTypeES4_E13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISB_E: argument 0"}
!975 = distinct !{!975, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!976 = distinct !{!976, !975, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!977 = distinct !{!977, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!978 = distinct !{!978, !977, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!979 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!980 = distinct !{!980, !216}
!981 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!982 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!983 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!984 = distinct !{!984, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!985 = distinct !{!985, !984, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!986 = distinct !{!986, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!987 = distinct !{!987, !986, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!988 = distinct !{!988, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!989 = distinct !{!989, !988, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!990 = distinct !{!990, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!991 = distinct !{!991, !990, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!992 = distinct !{!992, i1 true, !"_ZN5arrow6Status2OKEv"}
!993 = distinct !{!993, !992, !"_ZN5arrow6Status2OKEv: argument 0"}
!994 = !{i64 -4488349790197140332}
!995 = !{!966, !964}
!996 = !{!968}
!997 = !{!972, !970, !968}
!998 = !{!970, !968}
!999 = !{!974}
!1000 = !{!978, !976, !974}
!1001 = !{!985}
!1002 = !{!987}
!1003 = !{!989}
!1004 = !{!991}
!1005 = !{!991, !989}
!1006 = !{!993}
!1007 = distinct !{!1007, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!1008 = distinct !{!1008, !1007, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!1009 = distinct !{!1009, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!1010 = distinct !{!1010, !1009, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!1011 = distinct !{!1011, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1012 = distinct !{!1012, !1011, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1013 = distinct !{!1013, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!1014 = distinct !{!1014, !1013, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!1015 = distinct !{!1015, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1016 = distinct !{!1016, !1015, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1017 = distinct !{!1017, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_17LargeListViewTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!1018 = distinct !{!1018, !1017, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_17LargeListViewTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0"}
!1019 = distinct !{!1019, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!1020 = distinct !{!1020, !1019, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!1021 = distinct !{!1021, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!1022 = distinct !{!1022, !1021, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!1023 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1024 = distinct !{!1024, !216}
!1025 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1026 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1027 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1028 = distinct !{!1028, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1029 = distinct !{!1029, !1028, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!1030 = distinct !{!1030, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1031 = distinct !{!1031, !1030, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!1032 = distinct !{!1032, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1033 = distinct !{!1033, !1032, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1034 = distinct !{!1034, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1035 = distinct !{!1035, !1034, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1036 = distinct !{!1036, i1 true, !"_ZN5arrow6Status2OKEv"}
!1037 = distinct !{!1037, !1036, !"_ZN5arrow6Status2OKEv: argument 0"}
!1038 = !{i64 -3328039930554375291}
!1039 = !{!1010, !1008}
!1040 = !{!1012}
!1041 = !{!1016, !1014, !1012}
!1042 = !{!1014, !1012}
!1043 = !{!1018}
!1044 = !{!1022, !1020, !1018}
!1045 = !{!1029}
!1046 = !{!1031}
!1047 = !{!1033}
!1048 = !{!1035}
!1049 = !{!1035, !1033}
!1050 = !{!1037}
!1051 = distinct !{!1051, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!1052 = distinct !{!1052, !1051, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!1053 = distinct !{!1053, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!1054 = distinct !{!1054, !1053, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!1055 = distinct !{!1055, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!1056 = distinct !{!1056, !1055, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!1057 = distinct !{!1057, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!1058 = distinct !{!1058, !1057, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!1059 = distinct !{!1059, !216}
!1060 = distinct !{!1060, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1061 = distinct !{!1061, !1060, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1062 = distinct !{!1062, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1063 = distinct !{!1063, !1062, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1064 = distinct !{!1064, i1 true, !"_ZN5arrow6Status2OKEv"}
!1065 = distinct !{!1065, !1064, !"_ZN5arrow6Status2OKEv: argument 0"}
!1066 = !{i64 4234566368923015116}
!1067 = !{!1054, !1052}
!1068 = !{!1058, !1056}
!1069 = !{!1061}
!1070 = !{!1063}
!1071 = !{!1063, !1061}
!1072 = !{!1065}
!1073 = !{i64 2659023426613960381}
!1074 = distinct !{!1074, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1075 = distinct !{!1075, !1074, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1076 = distinct !{!1076, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!1077 = distinct !{!1077, !1076, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!1078 = distinct !{!1078, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1079 = distinct !{!1079, !1078, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1080 = distinct !{!1080, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1081 = distinct !{!1081, !1080, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1082 = distinct !{!1082, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!1083 = distinct !{!1083, !1082, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!1084 = distinct !{!1084, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1085 = distinct !{!1085, !1084, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1086 = distinct !{!1086, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeES4_E13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISB_E"}
!1087 = distinct !{!1087, !1086, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeES4_E13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISB_E: argument 0:thread"}
!1088 = distinct !{!1088, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!1089 = distinct !{!1089, !1088, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!1090 = distinct !{!1090, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!1091 = distinct !{!1091, !1090, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!1092 = distinct !{!1092, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeES4_E13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISB_E"}
!1093 = distinct !{!1093, !1092, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeES4_E13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISB_E: argument 0"}
!1094 = distinct !{!1094, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!1095 = distinct !{!1095, !1094, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!1096 = distinct !{!1096, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!1097 = distinct !{!1097, !1096, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!1098 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1099 = distinct !{!1099, i1 false, !"LVerDomain"}
!1100 = distinct !{!1100, !1099}
!1101 = distinct !{!1101, !1099}
!1102 = distinct !{!1102, !1099}
!1103 = distinct !{!1103, !216, !217, !218}
!1104 = distinct !{!1104, !219}
!1105 = distinct !{!1105, !216, !217}
!1106 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1107 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1108 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1109 = distinct !{!1109, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1110 = distinct !{!1110, !1109, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!1111 = distinct !{!1111, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1112 = distinct !{!1112, !1111, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!1113 = distinct !{!1113, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1114 = distinct !{!1114, !1113, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1115 = distinct !{!1115, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1116 = distinct !{!1116, !1115, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1117 = distinct !{!1117, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1118 = distinct !{!1118, !1117, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1119 = distinct !{!1119, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1120 = distinct !{!1120, !1119, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1121 = distinct !{!1121, i1 true, !"_ZN5arrow6Status2OKEv"}
!1122 = distinct !{!1122, !1121, !"_ZN5arrow6Status2OKEv: argument 0"}
!1123 = !{i64 5045283566669835340}
!1124 = !{!1075}
!1125 = !{!1079, !1077, !1075}
!1126 = !{!1077, !1075}
!1127 = !{!1081}
!1128 = !{!1085, !1083, !1081}
!1129 = !{!1083, !1081}
!1130 = !{!1087}
!1131 = !{!1091, !1089}
!1132 = !{!1093}
!1133 = !{!1097, !1095, !1093}
!1134 = !{!1100}
!1135 = !{!1101}
!1136 = !{!1102}
!1137 = !{!1093, !1101, !1100}
!1138 = !{!1110}
!1139 = !{!1112}
!1140 = !{!1114}
!1141 = !{!1116}
!1142 = !{!1116, !1114}
!1143 = !{!1118}
!1144 = !{!1120}
!1145 = !{!1120, !1118}
!1146 = !{!1122}
!1147 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1148 = !{i64 -7990044950948750497}
!1149 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1150 = !{i64 -6370314957591674950}
!1151 = distinct !{!1151, i1 true, !"_ZN5arrow4util13StringBuilderIJRA65_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!1152 = distinct !{!1152, !1151, !"_ZN5arrow4util13StringBuilderIJRA65_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!1153 = !{i64 3876399627005162160}
!1154 = !{!1152}
!1155 = distinct !{!1155, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1156 = distinct !{!1156, !1155, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1157 = distinct !{!1157, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!1158 = distinct !{!1158, !1157, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!1159 = distinct !{!1159, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1160 = distinct !{!1160, !1159, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1161 = distinct !{!1161, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1162 = distinct !{!1162, !1161, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1163 = distinct !{!1163, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!1164 = distinct !{!1164, !1163, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!1165 = distinct !{!1165, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1166 = distinct !{!1166, !1165, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1167 = distinct !{!1167, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!1168 = distinct !{!1168, !1167, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0:thread"}
!1169 = distinct !{!1169, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!1170 = distinct !{!1170, !1169, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!1171 = distinct !{!1171, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!1172 = distinct !{!1172, !1171, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!1173 = distinct !{!1173, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!1174 = distinct !{!1174, !1173, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0"}
!1175 = distinct !{!1175, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!1176 = distinct !{!1176, !1175, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!1177 = distinct !{!1177, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!1178 = distinct !{!1178, !1177, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!1179 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1180 = distinct !{!1180, i1 false, !"LVerDomain"}
!1181 = distinct !{!1181, !1180}
!1182 = distinct !{!1182, !1180}
!1183 = distinct !{!1183, !1180}
!1184 = distinct !{!1184, !216, !217, !218}
!1185 = distinct !{!1185, !219}
!1186 = distinct !{!1186, !216, !217}
!1187 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1188 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1189 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1190 = distinct !{!1190, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1191 = distinct !{!1191, !1190, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!1192 = distinct !{!1192, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1193 = distinct !{!1193, !1192, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!1194 = distinct !{!1194, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1195 = distinct !{!1195, !1194, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1196 = distinct !{!1196, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1197 = distinct !{!1197, !1196, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1198 = distinct !{!1198, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1199 = distinct !{!1199, !1198, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1200 = distinct !{!1200, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1201 = distinct !{!1201, !1200, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1202 = distinct !{!1202, i1 true, !"_ZN5arrow6Status2OKEv"}
!1203 = distinct !{!1203, !1202, !"_ZN5arrow6Status2OKEv: argument 0"}
!1204 = !{i64 -1376135788290684164}
!1205 = !{!1156}
!1206 = !{!1160, !1158, !1156}
!1207 = !{!1158, !1156}
!1208 = !{!1162}
!1209 = !{!1166, !1164, !1162}
!1210 = !{!1164, !1162}
!1211 = !{!1168}
!1212 = !{!1172, !1170}
!1213 = !{!1174}
!1214 = !{!1178, !1176, !1174}
!1215 = !{!1181}
!1216 = !{!1182}
!1217 = !{!1183}
!1218 = !{!1174, !1182, !1181}
!1219 = !{!1191}
!1220 = !{!1193}
!1221 = !{!1195}
!1222 = !{!1197}
!1223 = !{!1197, !1195}
!1224 = !{!1199}
!1225 = !{!1201}
!1226 = !{!1201, !1199}
!1227 = !{!1203}
!1228 = distinct !{!1228, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1229 = distinct !{!1229, !1228, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1230 = distinct !{!1230, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!1231 = distinct !{!1231, !1230, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!1232 = distinct !{!1232, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1233 = distinct !{!1233, !1232, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1234 = distinct !{!1234, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1235 = distinct !{!1235, !1234, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1236 = distinct !{!1236, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!1237 = distinct !{!1237, !1236, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!1238 = distinct !{!1238, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1239 = distinct !{!1239, !1238, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1240 = distinct !{!1240, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!1241 = distinct !{!1241, !1240, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0:thread"}
!1242 = distinct !{!1242, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!1243 = distinct !{!1243, !1242, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!1244 = distinct !{!1244, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!1245 = distinct !{!1245, !1244, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!1246 = distinct !{!1246, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!1247 = distinct !{!1247, !1246, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0"}
!1248 = distinct !{!1248, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!1249 = distinct !{!1249, !1248, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!1250 = distinct !{!1250, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!1251 = distinct !{!1251, !1250, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!1252 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1253 = distinct !{!1253, !216}
!1254 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1255 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1256 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1257 = distinct !{!1257, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_7MapTypeENS_13LargeListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE"}
!1258 = distinct !{!1258, !1257, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_7MapTypeENS_13LargeListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE: argument 0"}
!1259 = distinct !{!1259, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!1260 = distinct !{!1260, !1259, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!1261 = distinct !{!1261, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!1262 = distinct !{!1262, !1261, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!1263 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1264 = distinct !{null, null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1265 = distinct !{!1265, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1266 = distinct !{!1266, !1265, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!1267 = distinct !{!1267, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1268 = distinct !{!1268, !1267, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!1269 = distinct !{!1269, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1270 = distinct !{!1270, !1269, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!1271 = distinct !{!1271, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1272 = distinct !{!1272, !1271, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!1273 = distinct !{!1273, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1274 = distinct !{!1274, !1273, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1275 = distinct !{!1275, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1276 = distinct !{!1276, !1275, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1277 = distinct !{!1277, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1278 = distinct !{!1278, !1277, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1279 = distinct !{!1279, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1280 = distinct !{!1280, !1279, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1281 = distinct !{!1281, i1 true, !"_ZN5arrow6Status2OKEv"}
!1282 = distinct !{!1282, !1281, !"_ZN5arrow6Status2OKEv: argument 0"}
!1283 = !{i64 7249346598187505078}
!1284 = !{!1229}
!1285 = !{!1233, !1231, !1229}
!1286 = !{!1231, !1229}
!1287 = !{!1235}
!1288 = !{!1239, !1237, !1235}
!1289 = !{!1237, !1235}
!1290 = !{!1241}
!1291 = !{!1245, !1243}
!1292 = !{!1247}
!1293 = !{!1251, !1249, !1247}
!1294 = !{!1258, !1247}
!1295 = !{!1262, !1260, !1258, !1247}
!1296 = !{!1266, !1247}
!1297 = !{!1268}
!1298 = !{!1270}
!1299 = !{!1272}
!1300 = !{!1274}
!1301 = !{!1276}
!1302 = !{!1276, !1274}
!1303 = !{!1278}
!1304 = !{!1280}
!1305 = !{!1280, !1278}
!1306 = !{!1282}
!1307 = !{i64 -4650015884439893629}
!1308 = distinct !{!1308, i1 true, !"_ZN5arrow6Status9TypeErrorIJRA39_KcRA14_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_SC_EEES0_DpOT_"}
!1309 = distinct !{!1309, !1308, !"_ZN5arrow6Status9TypeErrorIJRA39_KcRA14_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_SC_EEES0_DpOT_: argument 0"}
!1310 = distinct !{!1310, i1 true, !"_ZN5arrow6Status8FromArgsIJRA39_KcRA14_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_SC_EEES0_NS_10StatusCodeEDpOT_"}
!1311 = distinct !{!1311, !1310, !"_ZN5arrow6Status8FromArgsIJRA39_KcRA14_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_SC_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!1312 = distinct !{!1312, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1313 = distinct !{!1313, !1312, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1314 = distinct !{!1314, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!1315 = distinct !{!1315, !1314, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!1316 = distinct !{!1316, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1317 = distinct !{!1317, !1316, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1318 = distinct !{!1318, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1319 = distinct !{!1319, !1318, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1320 = distinct !{!1320, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1321 = distinct !{!1321, !1320, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1322 = distinct !{!1322, i1 true, !"_ZN5arrow6Status2OKEv"}
!1323 = distinct !{!1323, !1322, !"_ZN5arrow6Status2OKEv: argument 0"}
!1324 = !{i64 -1558016510851131452}
!1325 = !{!1311, !1309}
!1326 = !{!1313}
!1327 = !{!1317, !1315, !1313}
!1328 = !{!1315, !1313}
!1329 = !{!1319}
!1330 = !{!1321}
!1331 = !{!1321, !1319}
!1332 = !{!1323}
!1333 = !{i64 -3588531535504036404}
!1334 = distinct !{!1334, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_8ListTypeEE15ValidateLengthsERKNS_9ArraySpanEi"}
!1335 = distinct !{!1335, !1334, !"_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_8ListTypeEE15ValidateLengthsERKNS_9ArraySpanEi: argument 0"}
!1336 = distinct !{!1336, !216}
!1337 = distinct !{!1337, i1 true, !"_ZN5arrow6Status7InvalidIJRA50_KcRA40_S2_EEES0_DpOT_"}
!1338 = distinct !{!1338, !1337, !"_ZN5arrow6Status7InvalidIJRA50_KcRA40_S2_EEES0_DpOT_: argument 0"}
!1339 = distinct !{!1339, i1 true, !"_ZN5arrow6Status8FromArgsIJRA50_KcRA40_S2_EEES0_NS_10StatusCodeEDpOT_"}
!1340 = distinct !{!1340, !1339, !"_ZN5arrow6Status8FromArgsIJRA50_KcRA40_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!1341 = distinct !{!1341, !216, !278}
!1342 = distinct !{!1342, i1 true, !"_ZN5arrow6Status7InvalidIJRA50_KcRA40_S2_EEES0_DpOT_"}
!1343 = distinct !{!1343, !1342, !"_ZN5arrow6Status7InvalidIJRA50_KcRA40_S2_EEES0_DpOT_: argument 0"}
!1344 = distinct !{!1344, i1 true, !"_ZN5arrow6Status8FromArgsIJRA50_KcRA40_S2_EEES0_NS_10StatusCodeEDpOT_"}
!1345 = distinct !{!1345, !1344, !"_ZN5arrow6Status8FromArgsIJRA50_KcRA40_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!1346 = distinct !{!1346, !216}
!1347 = distinct !{!1347, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!1348 = distinct !{!1348, !1347, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!1349 = distinct !{!1349, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!1350 = distinct !{!1350, !1349, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!1351 = distinct !{!1351, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1352 = distinct !{!1352, !1351, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1353 = distinct !{!1353, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1354 = distinct !{!1354, !1353, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1355 = distinct !{!1355, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_8ListTypeEE16BuildTakeIndicesERKNS_9ArraySpanEiPNS0_13KernelContextE"}
!1356 = distinct !{!1356, !1355, !"_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_8ListTypeEE16BuildTakeIndicesERKNS_9ArraySpanEiPNS0_13KernelContextE: argument 0"}
!1357 = distinct !{!1357, i1 true, !"_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv"}
!1358 = distinct !{!1358, !1357, !"_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv: argument 0"}
!1359 = distinct !{!1359, i1 true, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!1360 = distinct !{!1360, !1359, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!1361 = distinct !{!1361, i1 true, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!1362 = distinct !{!1362, !1361, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!1363 = distinct !{!1363, !216}
!1364 = distinct !{!1364, !216}
!1365 = distinct !{!1365, !216}
!1366 = distinct !{null, ptr @_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1367 = distinct !{null, ptr @_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1368 = distinct !{!1368, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_5ArrayEEE11ValueUnsafeEv"}
!1369 = distinct !{!1369, !1368, !"_ZNO5arrow6ResultISt10shared_ptrINS_5ArrayEEE11ValueUnsafeEv: argument 0"}
!1370 = distinct !{!1370, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE15MoveValueUnsafeEv"}
!1371 = distinct !{!1371, !1370, !"_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE15MoveValueUnsafeEv: argument 0"}
!1372 = distinct !{!1372, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1373 = distinct !{!1373, !1372, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1374 = distinct !{!1374, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1375 = distinct !{!1375, !1374, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1376 = distinct !{!1376, i1 true, !"_ZN5arrow6Status2OKEv"}
!1377 = distinct !{!1377, !1376, !"_ZN5arrow6Status2OKEv: argument 0"}
!1378 = !{i64 -2253331103011545869}
!1379 = !{!1335}
!1380 = !{!1340, !1338, !1335}
!1381 = !{!1345, !1343, !1335}
!1382 = !{!1350, !1348}
!1383 = !{!1352}
!1384 = !{!1354}
!1385 = !{!1354, !1352}
!1386 = !{!1356}
!1387 = !{!1358}
!1388 = !{!1358, !1356}
!1389 = !{!1360, !1356}
!1390 = !{!1362, !1356}
!1391 = !{!1362}
!1392 = !{!1369}
!1393 = !{!1371}
!1394 = !{!1371, !1369}
!1395 = !{!1373}
!1396 = !{!1375}
!1397 = !{!1375, !1373}
!1398 = !{!1377}
!1399 = !{i64 8519270301306191686}
!1400 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1401 = !{i64 8774921738764317751}
!1402 = !{i64 1343348232279622424}
!1403 = !{i64 -8542595883070677511}
!1404 = !{i64 4436414345889955668}
!1405 = !{i64 6496820936839935114}
!1406 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1407 = !{i64 3210938698634992931}
!1408 = distinct !{null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1409 = distinct !{!1409, !216}
!1410 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1411 = !{i64 5291277179427080436}
!1412 = !{!287, !286, i64 0}
!1413 = !{!287, !286, i64 8}
!1414 = !{!287, !286, i64 16}
!1415 = distinct !{ptr @_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1416 = distinct !{ptr @_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1417 = !{i64 -7739535195967780939}
!1418 = !{i64 -2463191754878450283}
end_hunk_5
