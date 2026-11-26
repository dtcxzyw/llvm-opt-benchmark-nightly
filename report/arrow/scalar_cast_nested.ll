Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/scalar_cast_nested?download=true
inline.NumInlined: 3701
inline.NumDeleted: 1113
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_8ListTypeES4_E4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bd, align 8, !tbaa !208, !noalias !623
  %i.bv = load i64, ptr %i.bq, align 8, !tbaa !209, !noalias !623
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef %i.bu, i64 noundef %i.bv)
          to label %_ZNK5arrow9ArraySpan9GetBufferEi.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !623

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc54
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 96) #22, !noalias !623
  br label %.body

_ZNK5arrow9ArraySpan9GetBufferEi.exit:            ; preds = %bb.t, %bb.s, %bb.q, %.noexc54, %bb.u
  %.sroa.0.0 = phi ptr [ %i.bt, %.noexc54 ], [ %i.bg, %bb.s ], [ %i.bg, %bb.q ], [ %i.bg, %bb.t ], [ null, %bb.u ]
  %.sroa.9.0 = phi ptr [ %i.bp, %.noexc54 ], [ %i.bi, %bb.s ], [ null, %bb.q ], [ %i.bi, %bb.t ], [ null, %bb.u ]
  %i.bx = load ptr, ptr %i.aj, align 8, !tbaa !201 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %.sroa.0.0, ptr %i.by, align 8, !tbaa !210
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !125 ; 8 uses
  store ptr %.sroa.9.0, ptr %i.bz, align 8, !tbaa !125
  %.not.i.i.i.i55 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i55, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64, label %bb.w

bb.w:                                             ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cb, align 8, !tbaa !118
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !119
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !121
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #20, !inline_history !3
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !121
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #20, !inline_history !3
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64

bb.y:                                             ; preds = %bb.w
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128
  %.not.i.i.i.i.i56 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i56, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57

bb.aa:                                            ; preds = %bb.y
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i58 = phi i32 [ %i.ce, %bb.z ], [ %i.co, %bb.aa ]
  %i.cp = icmp eq i32 %.0.i.i.i.i.i.i58, 1
  br i1 %i.cp, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64, !prof !129

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57, %bb.x, %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !213
  invoke void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %i.cr)
          to label %bb.ac unwind label %bb.bm

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !218, !noalias !624 ; 3 uses
  %i.cu = load ptr, ptr %i.bd, align 8, !tbaa !207, !noalias !624 ; 3 uses
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %i.ct ; 15 uses
  %.not.i65 = icmp eq i64 %i.ct, 0
  br i1 %.not.i65, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !624
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !219, !noalias !624
  %i.cy = shl i64 %i.cx, 2
  %i.cz = add i64 %i.cy, 4
  invoke void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.181") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cz)
          to label %.noexc67 unwind label %bb.bn, !noalias !624

.noexc67:                                         ; preds = %bb.ad
  %i.da = load ptr, ptr %7, align 8, !tbaa !150, !noalias !624
  %i.db = icmp eq ptr %i.da, null                 ; 2 uses
  br i1 %i.db, label %bb.af, label %bb.ae, !prof !151

bb.ae:                                            ; preds = %.noexc67
  store ptr null, ptr %12, align 8, !tbaa !150, !alias.scope !624
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.an

bb.af:                                            ; preds = %.noexc67
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dd = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !141, !noalias !625
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false), !noalias !624
  %i.de = load ptr, ptr %i.aj, align 8, !tbaa !201, !noalias !624 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !125, !noalias !624 ; 8 uses
  store <2 x ptr> %i.dd, ptr %i.df, align 8, !tbaa !141, !noalias !624
  %.not.i.i.i.i.i66 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i66, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 4 uses
  %i.dj = load atomic i64, ptr %i.di acquire, align 8, !noalias !624 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 4294967297
  %i.dl = trunc i64 %i.dj to i32                  ; 2 uses
  br i1 %i.dk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.di, align 8, !tbaa !118, !noalias !624
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 0, ptr %i.dm, align 4, !tbaa !119, !noalias !624
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !121, !noalias !624
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !624
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !624, !inline_history !602
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !121, !noalias !624
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !624
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !624, !inline_history !602
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !624
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.du = add nsw i32 %i.dl, -1
  store i32 %i.du, ptr %i.di, align 8, !tbaa !30, !noalias !624
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dv = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4, !noalias !624
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dl, %bb.aj ], [ %i.dv, %bb.ak ]
  %i.dw = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dw, label %bb.al, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !129

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !624
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ah, %bb.af
  %i.dx = load ptr, ptr %i.aj, align 8, !tbaa !201, !noalias !624
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !206, !noalias !624 ; 4 uses
  %.not.i.i42.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i42.i, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !235, !noalias !624
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 9
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !242, !range !161, !noalias !624, !noundef !162
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eg = load i8, ptr %i.ef, align 8, !range !161, !noalias !624
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = select i1 %i.ee, i1 %i.eh, i1 false, !prof !151
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !624
  %i.el = select i1 %i.ei, ptr %i.ek, ptr null, !prof !151
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.eb
  br label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %bb.am, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.i.i.i = phi ptr [ %i.em, %bb.am ], [ null, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 9 uses
  %i.en = load i64, ptr %i.cw, align 8, !tbaa !219, !noalias !624 ; 8 uses
  %.not3758.i = icmp slt i64 %i.en, 0
  br i1 %.not3758.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  %i.eo = add nuw i64 %i.en, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.en, 23
  br i1 %min.iters.check, label %.lr.ph.i.preheader158, label %vector.memcheck

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
  %bound0154 = icmp ult ptr %.0.i.i.i, %i.ex
  %found.conflict157 = or i1 %bound0, %bound0154
  %conflict.rdx = and i1 %found.conflict157, %bound1
  br i1 %conflict.rdx, label %.lr.ph.i.preheader158, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eo, -8                      ; 3 uses
  %i.ey = load i32, ptr %i.cv, align 4, !tbaa !30, !alias.scope !626, !noalias !624
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ey, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %wide.load = load <4 x i32>, ptr %i.ez, align 4, !tbaa !30, !alias.scope !627, !noalias !624
  %wide.load156 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !30, !alias.scope !627, !noalias !624
  %i.fb = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.fc = sub nsw <4 x i32> %wide.load156, %broadcast.splat
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <4 x i32> %i.fb, ptr %i.fd, align 4, !tbaa !30, !alias.scope !628, !noalias !629
  store <4 x i32> %i.fc, ptr %i.fe, align 4, !tbaa !30, !alias.scope !628, !noalias !629
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !607

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader158

.lr.ph.i.preheader158:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03059.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.fg = add nuw i64 %i.en, 1
  %i.fh = sub i64 %i.en, %.03059.i.ph
  %xtraiter = and i64 %i.fg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader158, %.lr.ph.i.prol
  %.03059.i.prol = phi i64 [ %i.fn, %.lr.ph.i.prol ], [ %.03059.i.ph, %.lr.ph.i.preheader158 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader158 ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.03059.i.prol
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !30, !noalias !624
  %i.fk = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !624
  %i.fl = sub nsw i32 %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i.prol
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !30, !noalias !624
  %i.fn = add nuw i64 %.03059.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !608

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader158
  %.03059.i.unr = phi i64 [ %.03059.i.ph, %.lr.ph.i.preheader158 ], [ %i.fn, %.lr.ph.i.prol ]
  %i.fo = icmp ult i64 %i.fh, 3
  br i1 %i.fo, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !624
  %i.fp = load ptr, ptr %11, align 16, !tbaa !181, !noalias !624
  %i.fq = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !624
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.en
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !30, !noalias !624
  %i.fu = sext i32 %i.ft to i64
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %8, ptr noundef nonnull align 8 dereferenceable(120) %i.fp, i64 noundef %i.fr, i64 noundef %i.fu)
          to label %bb.ao unwind label %bb.bj, !noalias !624

bb.an:                                            ; preds = %bb.ae
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03059.i = phi i64 [ %i.gt, %.lr.ph.i ], [ %.03059.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.03059.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !30, !noalias !624
  %i.fy = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !624
  %i.fz = sub nsw i32 %i.fx, %i.fy
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !30, !noalias !624
  %i.gb = add nuw i64 %.03059.i, 1                ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !30, !noalias !624
  %i.ge = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !624
  %i.gf = sub nsw i32 %i.gd, %i.ge
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gb
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !30, !noalias !624
  %i.gh = add nuw i64 %.03059.i, 2                ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !30, !noalias !624
  %i.gk = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !624
  %i.gl = sub nsw i32 %i.gj, %i.gk
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gh
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !30, !noalias !624
  %i.gn = add nuw i64 %.03059.i, 3                ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !30, !noalias !624
  %i.gq = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !624
  %i.gr = sub nsw i32 %i.gp, %i.gq
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gn
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !30, !noalias !624
  %i.gt = add nuw i64 %.03059.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.gn, %i.en
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !609

bb.ao:                                            ; preds = %._crit_edge.i
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gw = load <2 x ptr>, ptr %8, align 16, !tbaa !141, !noalias !624
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false), !noalias !624
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !125, !noalias !624 ; 8 uses
  store <2 x ptr> %i.gw, ptr %11, align 16, !tbaa !141, !noalias !624
  %.not.i.i.i.i43.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i43.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 4 uses
  %i.gz = load atomic i64, ptr %i.gy acquire, align 8, !noalias !624 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 4294967297
  %i.hb = trunc i64 %i.gz to i32                  ; 2 uses
  br i1 %i.ha, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.gy, align 8, !tbaa !118, !noalias !624
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  store i32 0, ptr %i.hc, align 4, !tbaa !119, !noalias !624
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !121, !noalias !624
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !624
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #20, !noalias !624, !inline_history !610
  %i.hg = load ptr, ptr %i.gx, align 8, !tbaa !121, !noalias !624
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !624
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #20, !noalias !624, !inline_history !610
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.hj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !624
  %.not.i.i.i.i.i44.i = icmp eq i8 %i.hj, 0
  br i1 %.not.i.i.i.i.i44.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hk = add nsw i32 %i.hb, -1
  store i32 %i.hk, ptr %i.gy, align 8, !tbaa !30, !noalias !624
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

bb.at:                                            ; preds = %bb.ar
  %i.hl = atomicrmw volatile add ptr %i.gy, i32 -1 acq_rel, align 4, !noalias !624
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i46.i = phi i32 [ %i.hb, %bb.as ], [ %i.hl, %bb.at ]
  %i.hm = icmp eq i32 %.0.i.i.i.i.i.i46.i, 1
  br i1 %i.hm, label %bb.au, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, !prof !129

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #20, !noalias !624
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i: ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i, %bb.aq, %bb.ao
  %i.hn = load ptr, ptr %i.gu, align 8, !tbaa !125, !noalias !624 ; 8 uses
  %.not.i.i47.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i47.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 4 uses
  %i.hp = load atomic i64, ptr %i.ho acquire, align 8, !noalias !624 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 4294967297
  %i.hr = trunc i64 %i.hp to i32                  ; 2 uses
  br i1 %i.hq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.ho, align 8, !tbaa !118, !noalias !624
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  store i32 0, ptr %i.hs, align 4, !tbaa !119, !noalias !624
  %i.ht = load ptr, ptr %i.hn, align 8, !tbaa !121, !noalias !624
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !624
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #20, !noalias !624, !inline_history !611
  %i.hw = load ptr, ptr %i.hn, align 8, !tbaa !121, !noalias !624
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !624
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #20, !noalias !624, !inline_history !611
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.hz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !624
  %.not.i.i.i48.i = icmp eq i8 %i.hz, 0
  br i1 %.not.i.i.i48.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ia = add nsw i32 %i.hr, -1
  store i32 %i.ia, ptr %i.ho, align 8, !tbaa !30, !noalias !624
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

bb.az:                                            ; preds = %bb.ax
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_12ListViewTypeENS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bd, align 8, !tbaa !208, !noalias !760
  %i.bv = load i64, ptr %i.bq, align 8, !tbaa !209, !noalias !760
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef %i.bu, i64 noundef %i.bv)
          to label %_ZNK5arrow9ArraySpan9GetBufferEi.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !760

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc54
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 96) #22, !noalias !760
  br label %.body

_ZNK5arrow9ArraySpan9GetBufferEi.exit:            ; preds = %bb.t, %bb.s, %bb.q, %.noexc54, %bb.u
  %.sroa.0.0 = phi ptr [ %i.bt, %.noexc54 ], [ %i.bg, %bb.s ], [ %i.bg, %bb.q ], [ %i.bg, %bb.t ], [ null, %bb.u ]
  %.sroa.9.0 = phi ptr [ %i.bp, %.noexc54 ], [ %i.bi, %bb.s ], [ null, %bb.q ], [ %i.bi, %bb.t ], [ null, %bb.u ]
  %i.bx = load ptr, ptr %i.aj, align 8, !tbaa !201 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %.sroa.0.0, ptr %i.by, align 8, !tbaa !210
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !125 ; 8 uses
  store ptr %.sroa.9.0, ptr %i.bz, align 8, !tbaa !125
  %.not.i.i.i.i55 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i55, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64, label %bb.w

bb.w:                                             ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cb, align 8, !tbaa !118
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !119
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !121
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #20, !inline_history !3
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !121
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #20, !inline_history !3
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64

bb.y:                                             ; preds = %bb.w
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128
  %.not.i.i.i.i.i56 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i56, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57

bb.aa:                                            ; preds = %bb.y
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i58 = phi i32 [ %i.ce, %bb.z ], [ %i.co, %bb.aa ]
  %i.cp = icmp eq i32 %.0.i.i.i.i.i.i58, 1
  br i1 %i.cp, label %bb.ab, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64, !prof !129

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57, %bb.x, %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !213
  invoke void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %i.cr)
          to label %bb.ac unwind label %bb.bm

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !218, !noalias !761 ; 3 uses
  %i.cu = load ptr, ptr %i.bd, align 8, !tbaa !207, !noalias !761 ; 3 uses
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %i.ct ; 15 uses
  %.not.i65 = icmp eq i64 %i.ct, 0
  br i1 %.not.i65, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !761
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !219, !noalias !761
  %i.cy = shl i64 %i.cx, 2
  %i.cz = add i64 %i.cy, 4
  invoke void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.181") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cz)
          to label %.noexc67 unwind label %bb.bn, !noalias !761

.noexc67:                                         ; preds = %bb.ad
  %i.da = load ptr, ptr %7, align 8, !tbaa !150, !noalias !761
  %i.db = icmp eq ptr %i.da, null                 ; 2 uses
  br i1 %i.db, label %bb.af, label %bb.ae, !prof !151

bb.ae:                                            ; preds = %.noexc67
  store ptr null, ptr %12, align 8, !tbaa !150, !alias.scope !761
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.an

bb.af:                                            ; preds = %.noexc67
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dd = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !141, !noalias !762
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false), !noalias !761
  %i.de = load ptr, ptr %i.aj, align 8, !tbaa !201, !noalias !761 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !125, !noalias !761 ; 8 uses
  store <2 x ptr> %i.dd, ptr %i.df, align 8, !tbaa !141, !noalias !761
  %.not.i.i.i.i.i66 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i66, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 4 uses
  %i.dj = load atomic i64, ptr %i.di acquire, align 8, !noalias !761 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 4294967297
  %i.dl = trunc i64 %i.dj to i32                  ; 2 uses
  br i1 %i.dk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.di, align 8, !tbaa !118, !noalias !761
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 0, ptr %i.dm, align 4, !tbaa !119, !noalias !761
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !121, !noalias !761
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !761
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !761, !inline_history !739
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !121, !noalias !761
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !761
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !761, !inline_history !739
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !761
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.du = add nsw i32 %i.dl, -1
  store i32 %i.du, ptr %i.di, align 8, !tbaa !30, !noalias !761
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dv = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4, !noalias !761
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dl, %bb.aj ], [ %i.dv, %bb.ak ]
  %i.dw = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dw, label %bb.al, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !129

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !761
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ah, %bb.af
  %i.dx = load ptr, ptr %i.aj, align 8, !tbaa !201, !noalias !761
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !206, !noalias !761 ; 4 uses
  %.not.i.i42.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i42.i, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !235, !noalias !761
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 9
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !242, !range !161, !noalias !761, !noundef !162
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eg = load i8, ptr %i.ef, align 8, !range !161, !noalias !761
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = select i1 %i.ee, i1 %i.eh, i1 false, !prof !151
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !761
  %i.el = select i1 %i.ei, ptr %i.ek, ptr null, !prof !151
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.eb
  br label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %bb.am, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.i.i.i = phi ptr [ %i.em, %bb.am ], [ null, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 9 uses
  %i.en = load i64, ptr %i.cw, align 8, !tbaa !219, !noalias !761 ; 8 uses
  %.not3758.i = icmp slt i64 %i.en, 0
  br i1 %.not3758.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  %i.eo = add nuw i64 %i.en, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.en, 23
  br i1 %min.iters.check, label %.lr.ph.i.preheader158, label %vector.memcheck

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
  %bound0154 = icmp ult ptr %.0.i.i.i, %i.ex
  %found.conflict157 = or i1 %bound0, %bound0154
  %conflict.rdx = and i1 %found.conflict157, %bound1
  br i1 %conflict.rdx, label %.lr.ph.i.preheader158, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eo, -8                      ; 3 uses
  %i.ey = load i32, ptr %i.cv, align 4, !tbaa !30, !alias.scope !763, !noalias !761
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ey, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %wide.load = load <4 x i32>, ptr %i.ez, align 4, !tbaa !30, !alias.scope !764, !noalias !761
  %wide.load156 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !30, !alias.scope !764, !noalias !761
  %i.fb = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.fc = sub nsw <4 x i32> %wide.load156, %broadcast.splat
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <4 x i32> %i.fb, ptr %i.fd, align 4, !tbaa !30, !alias.scope !765, !noalias !766
  store <4 x i32> %i.fc, ptr %i.fe, align 4, !tbaa !30, !alias.scope !765, !noalias !766
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !744

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader158

.lr.ph.i.preheader158:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03059.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.fg = add nuw i64 %i.en, 1
  %i.fh = sub i64 %i.en, %.03059.i.ph
  %xtraiter = and i64 %i.fg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader158, %.lr.ph.i.prol
  %.03059.i.prol = phi i64 [ %i.fn, %.lr.ph.i.prol ], [ %.03059.i.ph, %.lr.ph.i.preheader158 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader158 ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.03059.i.prol
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !30, !noalias !761
  %i.fk = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !761
  %i.fl = sub nsw i32 %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i.prol
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !30, !noalias !761
  %i.fn = add nuw i64 %.03059.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !745

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader158
  %.03059.i.unr = phi i64 [ %.03059.i.ph, %.lr.ph.i.preheader158 ], [ %i.fn, %.lr.ph.i.prol ]
  %i.fo = icmp ult i64 %i.fh, 3
  br i1 %i.fo, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !761
  %i.fp = load ptr, ptr %11, align 16, !tbaa !181, !noalias !761
  %i.fq = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !761
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.en
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !30, !noalias !761
  %i.fu = sext i32 %i.ft to i64
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %8, ptr noundef nonnull align 8 dereferenceable(120) %i.fp, i64 noundef %i.fr, i64 noundef %i.fu)
          to label %bb.ao unwind label %bb.bj, !noalias !761

bb.an:                                            ; preds = %bb.ae
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03059.i = phi i64 [ %i.gt, %.lr.ph.i ], [ %.03059.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.03059.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !30, !noalias !761
  %i.fy = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !761
  %i.fz = sub nsw i32 %i.fx, %i.fy
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !30, !noalias !761
  %i.gb = add nuw i64 %.03059.i, 1                ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !30, !noalias !761
  %i.ge = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !761
  %i.gf = sub nsw i32 %i.gd, %i.ge
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gb
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !30, !noalias !761
  %i.gh = add nuw i64 %.03059.i, 2                ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !30, !noalias !761
  %i.gk = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !761
  %i.gl = sub nsw i32 %i.gj, %i.gk
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gh
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !30, !noalias !761
  %i.gn = add nuw i64 %.03059.i, 3                ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !30, !noalias !761
  %i.gq = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !761
  %i.gr = sub nsw i32 %i.gp, %i.gq
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gn
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !30, !noalias !761
  %i.gt = add nuw i64 %.03059.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.gn, %i.en
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !746

bb.ao:                                            ; preds = %._crit_edge.i
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gw = load <2 x ptr>, ptr %8, align 16, !tbaa !141, !noalias !761
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false), !noalias !761
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !125, !noalias !761 ; 8 uses
  store <2 x ptr> %i.gw, ptr %11, align 16, !tbaa !141, !noalias !761
  %.not.i.i.i.i43.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i43.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 4 uses
  %i.gz = load atomic i64, ptr %i.gy acquire, align 8, !noalias !761 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 4294967297
  %i.hb = trunc i64 %i.gz to i32                  ; 2 uses
  br i1 %i.ha, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.gy, align 8, !tbaa !118, !noalias !761
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  store i32 0, ptr %i.hc, align 4, !tbaa !119, !noalias !761
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !121, !noalias !761
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !761
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #20, !noalias !761, !inline_history !747
  %i.hg = load ptr, ptr %i.gx, align 8, !tbaa !121, !noalias !761
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !761
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #20, !noalias !761, !inline_history !747
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.hj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !761
  %.not.i.i.i.i.i44.i = icmp eq i8 %i.hj, 0
  br i1 %.not.i.i.i.i.i44.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hk = add nsw i32 %i.hb, -1
  store i32 %i.hk, ptr %i.gy, align 8, !tbaa !30, !noalias !761
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

bb.at:                                            ; preds = %bb.ar
  %i.hl = atomicrmw volatile add ptr %i.gy, i32 -1 acq_rel, align 4, !noalias !761
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i46.i = phi i32 [ %i.hb, %bb.as ], [ %i.hl, %bb.at ]
  %i.hm = icmp eq i32 %.0.i.i.i.i.i.i46.i, 1
  br i1 %i.hm, label %bb.au, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, !prof !129

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #20, !noalias !761
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i: ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i, %bb.aq, %bb.ao
  %i.hn = load ptr, ptr %i.gu, align 8, !tbaa !125, !noalias !761 ; 8 uses
  %.not.i.i47.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i47.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 4 uses
  %i.hp = load atomic i64, ptr %i.ho acquire, align 8, !noalias !761 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 4294967297
  %i.hr = trunc i64 %i.hp to i32                  ; 2 uses
  br i1 %i.hq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.ho, align 8, !tbaa !118, !noalias !761
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  store i32 0, ptr %i.hs, align 4, !tbaa !119, !noalias !761
  %i.ht = load ptr, ptr %i.hn, align 8, !tbaa !121, !noalias !761
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !761
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #20, !noalias !761, !inline_history !748
  %i.hw = load ptr, ptr %i.hn, align 8, !tbaa !121, !noalias !761
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !761
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #20, !noalias !761, !inline_history !748
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.hz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !761
  %.not.i.i.i48.i = icmp eq i8 %i.hz, 0
  br i1 %.not.i.i.i48.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ia = add nsw i32 %i.hr, -1
  store i32 %i.ia, ptr %i.ho, align 8, !tbaa !30, !noalias !761
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

bb.az:                                            ; preds = %bb.ax
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal12_GLOBAL__N_17CastMapINS_7MapTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.aw, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126, %bb.bc, %bb.as
  %i.gb = load ptr, ptr %16, align 8, !tbaa !150  ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.bd, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !151

bb.bd:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !125 ; 8 uses
  %.not.i.i.i.i.i134 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i134, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 4 uses
  %i.gg = load atomic i64, ptr %i.gf acquire, align 8 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 4294967297
  %i.gi = trunc i64 %i.gg to i32                  ; 2 uses
  br i1 %i.gh, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.gf, align 8, !tbaa !118
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i32 0, ptr %i.gj, align 4, !tbaa !119
  %i.gk = load ptr, ptr %i.ge, align 8, !tbaa !121
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #20, !inline_history !6
  %i.gn = load ptr, ptr %i.ge, align 8, !tbaa !121
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #20, !inline_history !6
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.gq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128
  %.not.i.i.i.i.i.i = icmp eq i8 %i.gq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gr = add nsw i32 %i.gi, -1
  store i32 %i.gr, ptr %i.gf, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.gs = atomicrmw volatile add ptr %i.gf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gi, %bb.bh ], [ %i.gs, %bb.bi ]
  %i.gt = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.gt, label %bb.bj, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !129

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bf, %bb.bd
  %.pr.i = load ptr, ptr %16, align 8, !tbaa !150 ; 2 uses
  %.not.i.i135 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i135, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !247

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.gu = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.gb, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !160, !range !161, !noundef !162
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %16) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br i1 %i.fd, label %bb.bl, label %.critedge

bb.bl:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %.pr = load i64, ptr %i.et, align 8, !tbaa !218, !noalias !1159 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  %i.gy = load ptr, ptr %i.de, align 8, !tbaa !207, !noalias !1159
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %.pr
  %.not.i136 = icmp eq i64 %.pr, 0
  br i1 %.not.i136, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %.thread306, %bb.bl
  %i.ha = phi ptr [ %i.ex, %.thread306 ], [ %i.gz, %bb.bl ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !1159
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !219, !noalias !1159
  %i.hd = shl i64 %i.hc, 2
  %i.he = add i64 %i.hd, 4
  invoke void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.181") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.he)
          to label %.noexc141 unwind label %bb.cu, !noalias !1159

.noexc141:                                        ; preds = %bb.bm
  %i.hf = load ptr, ptr %10, align 8, !tbaa !150, !noalias !1159
  %i.hg = icmp eq ptr %i.hf, null                 ; 2 uses
  br i1 %i.hg, label %bb.bo, label %bb.bn, !prof !151

bb.bn:                                            ; preds = %.noexc141
  store ptr null, ptr %17, align 8, !tbaa !150, !alias.scope !1159
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.bw

bb.bo:                                            ; preds = %.noexc141
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hi = load <2 x ptr>, ptr %i.hh, align 8, !tbaa !141, !noalias !1160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false), !noalias !1159
  %i.hj = load ptr, ptr %i.cl, align 8, !tbaa !201, !noalias !1159 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !125, !noalias !1159 ; 8 uses
  store <2 x ptr> %i.hi, ptr %i.hk, align 8, !tbaa !141, !noalias !1159
  %.not.i.i.i.i.i137 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i.i137, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 4 uses
  %i.ho = load atomic i64, ptr %i.hn acquire, align 8, !noalias !1159 ; 2 uses
  %i.hp = icmp eq i64 %i.ho, 4294967297
  %i.hq = trunc i64 %i.ho to i32                  ; 2 uses
  br i1 %i.hp, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.hn, align 8, !tbaa !118, !noalias !1159
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  store i32 0, ptr %i.hr, align 4, !tbaa !119, !noalias !1159
  %i.hs = load ptr, ptr %i.hm, align 8, !tbaa !121, !noalias !1159
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !1159
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !1159, !inline_history !1129
  %i.hv = load ptr, ptr %i.hm, align 8, !tbaa !121, !noalias !1159
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !1159
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !1159, !inline_history !1129
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.hy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !1159
  %.not.i.i.i.i.i.i138 = icmp eq i8 %i.hy, 0
  br i1 %.not.i.i.i.i.i.i138, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hz = add nsw i32 %i.hq, -1
  store i32 %i.hz, ptr %i.hn, align 8, !tbaa !30, !noalias !1159
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139

bb.bt:                                            ; preds = %bb.br
  %i.ia = atomicrmw volatile add ptr %i.hn, i32 -1 acq_rel, align 4, !noalias !1159
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i.i.i.i140 = phi i32 [ %i.hq, %bb.bs ], [ %i.ia, %bb.bt ]
  %i.ib = icmp eq i32 %.0.i.i.i.i.i.i.i140, 1
  br i1 %i.ib, label %bb.bu, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !129

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !1159
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139, %bb.bq, %bb.bo
  %i.ic = load ptr, ptr %i.cl, align 8, !tbaa !201, !noalias !1159
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !206, !noalias !1159 ; 4 uses
  %.not.i.i42.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i42.i, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !235, !noalias !1159
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 9
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !242, !range !161, !noalias !1159, !noundef !162
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.il = load i8, ptr %i.ik, align 8, !range !161, !noalias !1159
  %i.im = trunc nuw i8 %i.il to i1
  %i.in = select i1 %i.ij, i1 %i.im, i1 false, !prof !151
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !1159
  %i.iq = select i1 %i.in, ptr %i.ip, ptr null, !prof !151
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ig
  br label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %bb.bv, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.i.i.i = phi ptr [ %i.ir, %bb.bv ], [ null, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 9 uses
  %i.is = load i64, ptr %i.hb, align 8, !tbaa !219, !noalias !1159 ; 8 uses
  %.not3758.i = icmp slt i64 %i.is, 0
  br i1 %.not3758.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  %i.it = add nuw i64 %i.is, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.is, 15
  br i1 %min.iters.check, label %.lr.ph.i.preheader398, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.iu = shl i64 %i.is, 2
  %i.iv = add i64 %i.iu, 4                        ; 2 uses
  %i.iw = getelementptr i8, ptr %.0.i.i.i, i64 %i.iv
  %i.ix = getelementptr i8, ptr %i.ha, i64 %i.iv
  %i.iy = getelementptr i8, ptr %i.ha, i64 4
  %bound0 = icmp ult ptr %.0.i.i.i, %i.ix
  %bound1 = icmp ult ptr %i.ha, %i.iw
  %bound0394 = icmp ult ptr %.0.i.i.i, %i.iy
  %found.conflict397 = or i1 %bound0, %bound0394
  %conflict.rdx = and i1 %found.conflict397, %bound1
  br i1 %conflict.rdx, label %.lr.ph.i.preheader398, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  %i.iz = load i32, ptr %i.ha, align 4, !tbaa !30, !alias.scope !1161, !noalias !1159
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.iz, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %index ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %wide.load = load <4 x i32>, ptr %i.ja, align 4, !tbaa !30, !alias.scope !1162, !noalias !1159
  %wide.load396 = load <4 x i32>, ptr %i.jb, align 4, !tbaa !30, !alias.scope !1162, !noalias !1159
  %i.jc = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.jd = sub nsw <4 x i32> %wide.load396, %broadcast.splat
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <4 x i32> %i.jc, ptr %i.je, align 4, !tbaa !30, !alias.scope !1163, !noalias !1164
  store <4 x i32> %i.jd, ptr %i.jf, align 4, !tbaa !30, !alias.scope !1163, !noalias !1164
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jg = icmp eq i64 %index.next, %n.vec
  br i1 %i.jg, label %middle.block, label %vector.body, !llvm.loop !1134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader398

.lr.ph.i.preheader398:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03059.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.jh = add nuw i64 %i.is, 1
  %i.ji = sub i64 %i.is, %.03059.i.ph
  %xtraiter = and i64 %i.jh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader398, %.lr.ph.i.prol
  %.03059.i.prol = phi i64 [ %i.jo, %.lr.ph.i.prol ], [ %.03059.i.ph, %.lr.ph.i.preheader398 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader398 ]
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.03059.i.prol
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !30, !noalias !1159
  %i.jl = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1159
  %i.jm = sub nsw i32 %i.jk, %i.jl
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i.prol
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !30, !noalias !1159
  %i.jo = add nuw i64 %.03059.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1135

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader398
  %.03059.i.unr = phi i64 [ %.03059.i.ph, %.lr.ph.i.preheader398 ], [ %i.jo, %.lr.ph.i.prol ]
  %i.jp = icmp ult i64 %i.ji, 3
  br i1 %i.jp, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !1159
  %i.jq = load ptr, ptr %15, align 16, !tbaa !181, !noalias !1159
  %i.jr = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1159
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.is
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !30, !noalias !1159
  %i.jv = sext i32 %i.ju to i64
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %11, ptr noundef nonnull align 8 dereferenceable(120) %i.jq, i64 noundef %i.js, i64 noundef %i.jv)
          to label %bb.bx unwind label %bb.cs, !noalias !1159

bb.bw:                                            ; preds = %bb.bn
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03059.i = phi i64 [ %i.ku, %.lr.ph.i ], [ %.03059.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.03059.i
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !30, !noalias !1159
  %i.jz = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1159
  %i.ka = sub nsw i32 %i.jy, %i.jz
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !30, !noalias !1159
  %i.kc = add nuw i64 %.03059.i, 1                ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !30, !noalias !1159
  %i.kf = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1159
  %i.kg = sub nsw i32 %i.ke, %i.kf
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.kc
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !30, !noalias !1159
  %i.ki = add nuw i64 %.03059.i, 2                ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !30, !noalias !1159
  %i.kl = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1159
  %i.km = sub nsw i32 %i.kk, %i.kl
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.ki
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !30, !noalias !1159
  %i.ko = add nuw i64 %.03059.i, 3                ; 3 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !30, !noalias !1159
  %i.kr = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1159
  %i.ks = sub nsw i32 %i.kq, %i.kr
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.ko
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !30, !noalias !1159
  %i.ku = add nuw i64 %.03059.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.ko, %i.is
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1136

bb.bx:                                            ; preds = %._crit_edge.i
  %i.kv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kx = load <2 x ptr>, ptr %11, align 16, !tbaa !141, !noalias !1159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, i8 0, i64 16, i1 false), !noalias !1159
  %i.ky = load ptr, ptr %i.kw, align 8, !tbaa !125, !noalias !1159 ; 8 uses
  store <2 x ptr> %i.kx, ptr %15, align 16, !tbaa !141, !noalias !1159
  %.not.i.i.i.i43.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i43.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 4 uses
  %i.la = load atomic i64, ptr %i.kz acquire, align 8, !noalias !1159 ; 2 uses
  %i.lb = icmp eq i64 %i.la, 4294967297
  %i.lc = trunc i64 %i.la to i32                  ; 2 uses
  br i1 %i.lb, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.kz, align 8, !tbaa !118, !noalias !1159
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  store i32 0, ptr %i.ld, align 4, !tbaa !119, !noalias !1159
  %i.le = load ptr, ptr %i.ky, align 8, !tbaa !121, !noalias !1159
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !noalias !1159
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #20, !noalias !1159, !inline_history !1137
  %i.lh = load ptr, ptr %i.ky, align 8, !tbaa !121, !noalias !1159
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !1159
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #20, !noalias !1159, !inline_history !1137
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

bb.ca:                                            ; preds = %bb.by
  %i.lk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !1159
  %.not.i.i.i.i.i44.i = icmp eq i8 %i.lk, 0
  br i1 %.not.i.i.i.i.i44.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ll = add nsw i32 %i.lc, -1
  store i32 %i.ll, ptr %i.kz, align 8, !tbaa !30, !noalias !1159
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

bb.cc:                                            ; preds = %bb.ca
  %i.lm = atomicrmw volatile add ptr %i.kz, i32 -1 acq_rel, align 4, !noalias !1159
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i.i.i46.i = phi i32 [ %i.lc, %bb.cb ], [ %i.lm, %bb.cc ]
  %i.ln = icmp eq i32 %.0.i.i.i.i.i.i46.i, 1
  br i1 %i.ln, label %bb.cd, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, !prof !129

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #20, !noalias !1159
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i: ; preds = %bb.cd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i, %bb.bz, %bb.bx
  %i.lo = load ptr, ptr %i.kv, align 8, !tbaa !125, !noalias !1159 ; 8 uses
  %.not.i.i47.i = icmp eq ptr %i.lo, null
  br i1 %.not.i.i47.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 4 uses
  %i.lq = load atomic i64, ptr %i.lp acquire, align 8, !noalias !1159 ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 4294967297
  %i.ls = trunc i64 %i.lq to i32                  ; 2 uses
  br i1 %i.lr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.lp, align 8, !tbaa !118, !noalias !1159
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  store i32 0, ptr %i.lt, align 4, !tbaa !119, !noalias !1159
  %i.lu = load ptr, ptr %i.lo, align 8, !tbaa !121, !noalias !1159
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !1159
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #20, !noalias !1159, !inline_history !1138
  %i.lx = load ptr, ptr %i.lo, align 8, !tbaa !121, !noalias !1159
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !noalias !1159
  call void %i.lz(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #20, !noalias !1159, !inline_history !1138
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.cg:                                            ; preds = %bb.ce
  %i.ma = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !1159
  %.not.i.i.i48.i = icmp eq i8 %i.ma, 0
  br i1 %.not.i.i.i48.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mb = add nsw i32 %i.ls, -1
  store i32 %i.mb, ptr %i.lp, align 8, !tbaa !30, !noalias !1159
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal12_GLOBAL__N_17CastMapINS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.aw, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126, %bb.bc, %bb.as
  %i.gb = load ptr, ptr %16, align 8, !tbaa !150  ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.bd, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !151

bb.bd:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !125 ; 8 uses
  %.not.i.i.i.i.i134 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i134, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 4 uses
  %i.gg = load atomic i64, ptr %i.gf acquire, align 8 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 4294967297
  %i.gi = trunc i64 %i.gg to i32                  ; 2 uses
  br i1 %i.gh, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.gf, align 8, !tbaa !118
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i32 0, ptr %i.gj, align 4, !tbaa !119
  %i.gk = load ptr, ptr %i.ge, align 8, !tbaa !121
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #20, !inline_history !6
  %i.gn = load ptr, ptr %i.ge, align 8, !tbaa !121
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #20, !inline_history !6
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.gq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128
  %.not.i.i.i.i.i.i = icmp eq i8 %i.gq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gr = add nsw i32 %i.gi, -1
  store i32 %i.gr, ptr %i.gf, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.gs = atomicrmw volatile add ptr %i.gf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gi, %bb.bh ], [ %i.gs, %bb.bi ]
  %i.gt = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.gt, label %bb.bj, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !129

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ge) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bf, %bb.bd
  %.pr.i = load ptr, ptr %16, align 8, !tbaa !150 ; 2 uses
  %.not.i.i135 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i135, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !247

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.gu = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.gb, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !160, !range !161, !noundef !162
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %16) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br i1 %i.fd, label %bb.bl, label %.critedge

bb.bl:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %.pr = load i64, ptr %i.et, align 8, !tbaa !218, !noalias !1234 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  %i.gy = load ptr, ptr %i.de, align 8, !tbaa !207, !noalias !1234
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %.pr
  %.not.i136 = icmp eq i64 %.pr, 0
  br i1 %.not.i136, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %.thread306, %bb.bl
  %i.ha = phi ptr [ %i.ex, %.thread306 ], [ %i.gz, %bb.bl ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !1234
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !219, !noalias !1234
  %i.hd = shl i64 %i.hc, 2
  %i.he = add i64 %i.hd, 4
  invoke void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.181") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.he)
          to label %.noexc141 unwind label %bb.cu, !noalias !1234

.noexc141:                                        ; preds = %bb.bm
  %i.hf = load ptr, ptr %10, align 8, !tbaa !150, !noalias !1234
  %i.hg = icmp eq ptr %i.hf, null                 ; 2 uses
  br i1 %i.hg, label %bb.bo, label %bb.bn, !prof !151

bb.bn:                                            ; preds = %.noexc141
  store ptr null, ptr %17, align 8, !tbaa !150, !alias.scope !1234
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.bw

bb.bo:                                            ; preds = %.noexc141
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hi = load <2 x ptr>, ptr %i.hh, align 8, !tbaa !141, !noalias !1235
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false), !noalias !1234
  %i.hj = load ptr, ptr %i.cl, align 8, !tbaa !201, !noalias !1234 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !125, !noalias !1234 ; 8 uses
  store <2 x ptr> %i.hi, ptr %i.hk, align 8, !tbaa !141, !noalias !1234
  %.not.i.i.i.i.i137 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i.i137, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 4 uses
  %i.ho = load atomic i64, ptr %i.hn acquire, align 8, !noalias !1234 ; 2 uses
  %i.hp = icmp eq i64 %i.ho, 4294967297
  %i.hq = trunc i64 %i.ho to i32                  ; 2 uses
  br i1 %i.hp, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.hn, align 8, !tbaa !118, !noalias !1234
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  store i32 0, ptr %i.hr, align 4, !tbaa !119, !noalias !1234
  %i.hs = load ptr, ptr %i.hm, align 8, !tbaa !121, !noalias !1234
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !1234
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !1234, !inline_history !1204
  %i.hv = load ptr, ptr %i.hm, align 8, !tbaa !121, !noalias !1234
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !1234
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !1234, !inline_history !1204
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.hy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !1234
  %.not.i.i.i.i.i.i138 = icmp eq i8 %i.hy, 0
  br i1 %.not.i.i.i.i.i.i138, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hz = add nsw i32 %i.hq, -1
  store i32 %i.hz, ptr %i.hn, align 8, !tbaa !30, !noalias !1234
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139

bb.bt:                                            ; preds = %bb.br
  %i.ia = atomicrmw volatile add ptr %i.hn, i32 -1 acq_rel, align 4, !noalias !1234
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i.i.i.i140 = phi i32 [ %i.hq, %bb.bs ], [ %i.ia, %bb.bt ]
  %i.ib = icmp eq i32 %.0.i.i.i.i.i.i.i140, 1
  br i1 %i.ib, label %bb.bu, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !129

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !1234
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139, %bb.bq, %bb.bo
  %i.ic = load ptr, ptr %i.cl, align 8, !tbaa !201, !noalias !1234
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !206, !noalias !1234 ; 4 uses
  %.not.i.i42.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i42.i, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !235, !noalias !1234
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 9
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !242, !range !161, !noalias !1234, !noundef !162
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.il = load i8, ptr %i.ik, align 8, !range !161, !noalias !1234
  %i.im = trunc nuw i8 %i.il to i1
  %i.in = select i1 %i.ij, i1 %i.im, i1 false, !prof !151
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !1234
  %i.iq = select i1 %i.in, ptr %i.ip, ptr null, !prof !151
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ig
  br label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %bb.bv, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.i.i.i = phi ptr [ %i.ir, %bb.bv ], [ null, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 9 uses
  %i.is = load i64, ptr %i.hb, align 8, !tbaa !219, !noalias !1234 ; 8 uses
  %.not3758.i = icmp slt i64 %i.is, 0
  br i1 %.not3758.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  %i.it = add nuw i64 %i.is, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.is, 15
  br i1 %min.iters.check, label %.lr.ph.i.preheader398, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.iu = shl i64 %i.is, 2
  %i.iv = add i64 %i.iu, 4                        ; 2 uses
  %i.iw = getelementptr i8, ptr %.0.i.i.i, i64 %i.iv
  %i.ix = getelementptr i8, ptr %i.ha, i64 %i.iv
  %i.iy = getelementptr i8, ptr %i.ha, i64 4
  %bound0 = icmp ult ptr %.0.i.i.i, %i.ix
  %bound1 = icmp ult ptr %i.ha, %i.iw
  %bound0394 = icmp ult ptr %.0.i.i.i, %i.iy
  %found.conflict397 = or i1 %bound0, %bound0394
  %conflict.rdx = and i1 %found.conflict397, %bound1
  br i1 %conflict.rdx, label %.lr.ph.i.preheader398, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  %i.iz = load i32, ptr %i.ha, align 4, !tbaa !30, !alias.scope !1236, !noalias !1234
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.iz, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %index ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %wide.load = load <4 x i32>, ptr %i.ja, align 4, !tbaa !30, !alias.scope !1237, !noalias !1234
  %wide.load396 = load <4 x i32>, ptr %i.jb, align 4, !tbaa !30, !alias.scope !1237, !noalias !1234
  %i.jc = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.jd = sub nsw <4 x i32> %wide.load396, %broadcast.splat
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <4 x i32> %i.jc, ptr %i.je, align 4, !tbaa !30, !alias.scope !1238, !noalias !1239
  store <4 x i32> %i.jd, ptr %i.jf, align 4, !tbaa !30, !alias.scope !1238, !noalias !1239
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jg = icmp eq i64 %index.next, %n.vec
  br i1 %i.jg, label %middle.block, label %vector.body, !llvm.loop !1209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader398

.lr.ph.i.preheader398:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03059.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.jh = add nuw i64 %i.is, 1
  %i.ji = sub i64 %i.is, %.03059.i.ph
  %xtraiter = and i64 %i.jh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader398, %.lr.ph.i.prol
  %.03059.i.prol = phi i64 [ %i.jo, %.lr.ph.i.prol ], [ %.03059.i.ph, %.lr.ph.i.preheader398 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader398 ]
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.03059.i.prol
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !30, !noalias !1234
  %i.jl = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1234
  %i.jm = sub nsw i32 %i.jk, %i.jl
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i.prol
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !30, !noalias !1234
  %i.jo = add nuw i64 %.03059.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1210

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader398
  %.03059.i.unr = phi i64 [ %.03059.i.ph, %.lr.ph.i.preheader398 ], [ %i.jo, %.lr.ph.i.prol ]
  %i.jp = icmp ult i64 %i.ji, 3
  br i1 %i.jp, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !1234
  %i.jq = load ptr, ptr %15, align 16, !tbaa !181, !noalias !1234
  %i.jr = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1234
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.is
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !30, !noalias !1234
  %i.jv = sext i32 %i.ju to i64
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %11, ptr noundef nonnull align 8 dereferenceable(120) %i.jq, i64 noundef %i.js, i64 noundef %i.jv)
          to label %bb.bx unwind label %bb.cs, !noalias !1234

bb.bw:                                            ; preds = %bb.bn
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03059.i = phi i64 [ %i.ku, %.lr.ph.i ], [ %.03059.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.03059.i
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !30, !noalias !1234
  %i.jz = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1234
  %i.ka = sub nsw i32 %i.jy, %i.jz
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !30, !noalias !1234
  %i.kc = add nuw i64 %.03059.i, 1                ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !30, !noalias !1234
  %i.kf = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1234
  %i.kg = sub nsw i32 %i.ke, %i.kf
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.kc
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !30, !noalias !1234
  %i.ki = add nuw i64 %.03059.i, 2                ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !30, !noalias !1234
  %i.kl = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1234
  %i.km = sub nsw i32 %i.kk, %i.kl
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.ki
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !30, !noalias !1234
  %i.ko = add nuw i64 %.03059.i, 3                ; 3 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !30, !noalias !1234
  %i.kr = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1234
  %i.ks = sub nsw i32 %i.kq, %i.kr
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.ko
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !30, !noalias !1234
  %i.ku = add nuw i64 %.03059.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.ko, %i.is
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1211

bb.bx:                                            ; preds = %._crit_edge.i
  %i.kv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kx = load <2 x ptr>, ptr %11, align 16, !tbaa !141, !noalias !1234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, i8 0, i64 16, i1 false), !noalias !1234
  %i.ky = load ptr, ptr %i.kw, align 8, !tbaa !125, !noalias !1234 ; 8 uses
  store <2 x ptr> %i.kx, ptr %15, align 16, !tbaa !141, !noalias !1234
  %.not.i.i.i.i43.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i43.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 4 uses
  %i.la = load atomic i64, ptr %i.kz acquire, align 8, !noalias !1234 ; 2 uses
  %i.lb = icmp eq i64 %i.la, 4294967297
  %i.lc = trunc i64 %i.la to i32                  ; 2 uses
  br i1 %i.lb, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.kz, align 8, !tbaa !118, !noalias !1234
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  store i32 0, ptr %i.ld, align 4, !tbaa !119, !noalias !1234
  %i.le = load ptr, ptr %i.ky, align 8, !tbaa !121, !noalias !1234
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !noalias !1234
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #20, !noalias !1234, !inline_history !1212
  %i.lh = load ptr, ptr %i.ky, align 8, !tbaa !121, !noalias !1234
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !1234
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #20, !noalias !1234, !inline_history !1212
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

bb.ca:                                            ; preds = %bb.by
  %i.lk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !1234
  %.not.i.i.i.i.i44.i = icmp eq i8 %i.lk, 0
  br i1 %.not.i.i.i.i.i44.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ll = add nsw i32 %i.lc, -1
  store i32 %i.ll, ptr %i.kz, align 8, !tbaa !30, !noalias !1234
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

bb.cc:                                            ; preds = %bb.ca
  %i.lm = atomicrmw volatile add ptr %i.kz, i32 -1 acq_rel, align 4, !noalias !1234
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i.i.i46.i = phi i32 [ %i.lc, %bb.cb ], [ %i.lm, %bb.cc ]
  %i.ln = icmp eq i32 %.0.i.i.i.i.i.i46.i, 1
  br i1 %i.ln, label %bb.cd, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, !prof !129

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #20, !noalias !1234
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i: ; preds = %bb.cd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i, %bb.bz, %bb.bx
  %i.lo = load ptr, ptr %i.kv, align 8, !tbaa !125, !noalias !1234 ; 8 uses
  %.not.i.i47.i = icmp eq ptr %i.lo, null
  br i1 %.not.i.i47.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 4 uses
  %i.lq = load atomic i64, ptr %i.lp acquire, align 8, !noalias !1234 ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 4294967297
  %i.ls = trunc i64 %i.lq to i32                  ; 2 uses
  br i1 %i.lr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.lp, align 8, !tbaa !118, !noalias !1234
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  store i32 0, ptr %i.lt, align 4, !tbaa !119, !noalias !1234
  %i.lu = load ptr, ptr %i.lo, align 8, !tbaa !121, !noalias !1234
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !1234
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #20, !noalias !1234, !inline_history !1213
  %i.lx = load ptr, ptr %i.lo, align 8, !tbaa !121, !noalias !1234
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !noalias !1234
  call void %i.lz(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #20, !noalias !1234, !inline_history !1213
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.cg:                                            ; preds = %bb.ce
  %i.ma = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !1234
  %.not.i.i.i48.i = icmp eq i8 %i.ma, 0
  br i1 %.not.i.i.i48.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mb = add nsw i32 %i.ls, -1
  store i32 %i.mb, ptr %i.lp, align 8, !tbaa !30, !noalias !1234
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

end_hunk_3
begin_hunk_4_@llvm.smin.i64
!429 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!430 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!431 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!432 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!433 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!434 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!435 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!436 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!437 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!438 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!439 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!440 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!441 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!442 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!443 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!444 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!445 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!446 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!447 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!448 = distinct !{!448, i1 true, !"_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA9_KcNS0_4Type4typeEEESt10shared_ptrIT_EDpOT0_"}
!449 = distinct !{!449, !448, !"_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA9_KcNS0_4Type4typeEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!450 = distinct !{!450, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_"}
!451 = distinct !{!451, !450, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_: argument 0"}
!452 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!453 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!454 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!455 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!456 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!457 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!458 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!459 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!460 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!461 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!462 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!463 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!464 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!465 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!466 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!467 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!468 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!469 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!470 = distinct !{!470, i1 true, !"_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA21_KcNS0_4Type4typeEEESt10shared_ptrIT_EDpOT0_"}
!471 = distinct !{!471, !470, !"_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA21_KcNS0_4Type4typeEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!472 = distinct !{!472, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_"}
!473 = distinct !{!473, !472, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_: argument 0"}
!474 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!475 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!476 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!477 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!478 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!479 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!480 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!481 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!482 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!483 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!484 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!485 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!486 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!487 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!488 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!489 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!490 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!491 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!492 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!493 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!494 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!495 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!496 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!497 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!498 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!499 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!500 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!501 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!502 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!503 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!504 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!505 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!506 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!507 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!508 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!509 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!510 = distinct !{!510, i1 true, !"_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA12_KcNS0_4Type4typeEEESt10shared_ptrIT_EDpOT0_"}
!511 = distinct !{!511, !510, !"_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA12_KcNS0_4Type4typeEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!512 = distinct !{!512, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_"}
!513 = distinct !{!513, !512, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_: argument 0"}
!514 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!515 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!516 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!517 = distinct !{null, ptr @_ZN5arrow7compute10OutputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!518 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!519 = distinct !{null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!520 = distinct !{!520, i1 true, !"_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA16_KcNS0_4Type4typeEEESt10shared_ptrIT_EDpOT0_"}
!521 = distinct !{!521, !520, !"_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA16_KcNS0_4Type4typeEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!522 = distinct !{!522, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_"}
!523 = distinct !{!523, !522, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_: argument 0"}
!524 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow7compute8internal12CastFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!525 = !{i64 -1439469221164702793}
!526 = !{!380}
!527 = !{!382, !380}
!528 = !{!"p1 _ZTSN5arrow7compute8internal12CastFunctionE", !122, i64 0}
!529 = !{!528, !528, i64 0}
!530 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute8internal12CastFunctionELN9__gnu_cxx12_Lock_policyE2EE", !528, i64 0, !124, i64 8}
!531 = !{!530, !528, i64 0}
!532 = !{!"p1 _ZTSN5arrow7compute15KernelSignatureE", !122, i64 0}
!533 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EE", !532, i64 0, !124, i64 8}
!534 = !{!"_ZTSSt10shared_ptrIN5arrow7compute15KernelSignatureEE", !533, i64 0}
!535 = !{!"_ZTSSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEE", !126, i64 0, !122, i64 24}
!536 = !{!"_ZTSN5arrow7compute9SimdLevel4typeE", !28, i64 0}
!537 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EE", !131, i64 0, !124, i64 8}
!538 = !{!"_ZTSSt10shared_ptrIN5arrow7compute11KernelStateEE", !537, i64 0}
!539 = !{!"_ZTSN5arrow7compute6KernelE", !534, i64 0, !535, i64 16, !130, i64 48, !536, i64 52, !538, i64 56}
!540 = !{!539, !130, i64 48}
!541 = !{!"_ZTSN5arrow7compute12NullHandling4typeE", !28, i64 0}
!542 = !{!"_ZTSN5arrow7compute13MemAllocation4typeE", !28, i64 0}
!543 = !{!"_ZTSN5arrow7compute12ScalarKernelE", !539, i64 0, !122, i64 72, !130, i64 80, !541, i64 84, !542, i64 88}
!544 = !{!543, !130, i64 80}
!545 = !{!543, !541, i64 84}
!546 = !{!543, !542, i64 88}
!547 = !{!543, !122, i64 72}
!548 = !{!533, !532, i64 0}
!549 = !{!535, !122, i64 24}
!550 = !{!537, !131, i64 0}
!551 = !{!415}
!552 = !{!417, !415}
!553 = !{!449}
!554 = !{!451, !449}
!555 = !{!471}
!556 = !{!473, !471}
!557 = !{!511}
!558 = !{!513, !511}
!559 = !{!521}
!560 = !{!523, !521}
!561 = !{!"p1 _ZTSSt10shared_ptrIN5arrow7compute8internal12CastFunctionEE", !122, i64 0}
!562 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EE17_Vector_impl_dataE", !561, i64 0, !561, i64 8, !561, i64 16}
!563 = !{!562, !561, i64 0}
!564 = !{!562, !561, i64 16}
!565 = !{!562, !561, i64 8}
!566 = !{i64 -124277075198374354}
!567 = !{!"_ZTSN5arrow7compute10OutputType11ResolveKindE", !28, i64 0}
!568 = !{!"_ZTSSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEE", !126, i64 0, !122, i64 24}
!569 = !{!"_ZTSN5arrow7compute10OutputTypeE", !567, i64 0, !135, i64 8, !568, i64 24}
!570 = !{!569, !567, i64 0}
!571 = !{i64 4070423420677450470}
!572 = !{i64 -8685541927136252537}
!573 = !{i64 1021124020264678324}
!574 = !{i64 1080103601501470593}
!575 = distinct !{null}
!576 = !{i64 -227505617863360783}
!577 = distinct !{null}
!578 = !{i64 2446866517051979729}
!579 = !{i64 3046961288831022005}
!580 = distinct !{null, null}
!581 = !{i64 -8495732369917707594}
!582 = !{i64 4285398625534358532}
!583 = !{i64 8075109352139036284}
!584 = !{i64 145576345541456843}
!585 = !{i64 -1249690785945693651}
!586 = distinct !{!586, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!587 = distinct !{!587, !586, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!588 = distinct !{!588, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!589 = distinct !{!589, !588, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!590 = distinct !{!590, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!591 = distinct !{!591, !590, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!592 = distinct !{!592, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!593 = distinct !{!593, !592, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!594 = distinct !{!594, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!595 = distinct !{!595, !594, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!596 = distinct !{!596, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_8ListTypeES4_E13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISB_E"}
!597 = distinct !{!597, !596, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_8ListTypeES4_E13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISB_E: argument 0"}
!598 = distinct !{!598, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!599 = distinct !{!599, !598, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!600 = distinct !{!600, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!601 = distinct !{!601, !600, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!602 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!603 = distinct !{!603, i1 false, !"LVerDomain"}
!604 = distinct !{!604, !603}
!605 = distinct !{!605, !603}
!606 = distinct !{!606, !603}
!607 = distinct !{!607, !243, !244, !245}
!608 = distinct !{!608, !246}
!609 = distinct !{!609, !243, !244}
!610 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!611 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!612 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!613 = distinct !{!613, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!614 = distinct !{!614, !613, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!615 = distinct !{!615, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!616 = distinct !{!616, !615, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!617 = distinct !{!617, i1 true, !"_ZN5arrow6Status2OKEv"}
!618 = distinct !{!618, !617, !"_ZN5arrow6Status2OKEv: argument 0"}
!619 = !{i64 -7954187280579788582}
!620 = !{!589, !587}
!621 = !{!591}
!622 = !{!595, !593, !591}
!623 = !{!593, !591}
!624 = !{!597}
!625 = !{!601, !599, !597}
!626 = !{!604}
!627 = !{!605}
!628 = !{!606}
!629 = !{!597, !605, !604}
!630 = !{!614}
!631 = !{!616}
!632 = !{!616, !614}
!633 = !{!618}
!634 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!635 = !{i64 -516294721273520511}
!636 = !{i64 8073560337066787184}
!637 = !{i64 -1313933399618686451}
!638 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!639 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!640 = !{i64 -1944533227323293441}
!641 = distinct !{!641, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!642 = distinct !{!642, !641, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!643 = distinct !{!643, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!644 = distinct !{!644, !643, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!645 = distinct !{!645, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!646 = distinct !{!646, !645, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!647 = distinct !{!647, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!648 = distinct !{!648, !647, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!649 = distinct !{!649, i1 true, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEl"}
!650 = distinct !{!650, !649, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEl: argument 0"}
!651 = distinct !{!651, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!652 = distinct !{!652, !651, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!653 = distinct !{!653, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!654 = distinct !{!654, !653, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!655 = distinct !{!655, i1 true, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll"}
!656 = distinct !{!656, !655, !"_ZN5arrowL11SliceBufferESt10shared_ptrINS_6BufferEEll: argument 0"}
!657 = distinct !{!657, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_"}
!658 = distinct !{!658, !657, !"_ZSt11make_sharedIN5arrow6BufferEJSt10shared_ptrIS1_ERKlS5_EES2_IT_EDpOT0_: argument 0"}
!659 = distinct !{!659, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!660 = distinct !{!660, !659, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!661 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!662 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!663 = !{i64 -6727628560674269202}
!664 = !{!642}
!665 = !{!646, !644, !642}
!666 = !{!644, !642}
!667 = !{!648}
!668 = !{!650}
!669 = !{!654, !652, !648}
!670 = !{!652, !648}
!671 = !{!660, !658, !656, !650}
!672 = !{!658, !656, !650}
!673 = !{i64 -2246200897035328308}
!674 = !{i64 3157275121114493901}
!675 = !{i64 8671354214695231670}
!676 = !{i64 4438435232456973644}
!677 = !{i64 1811972334920042084}
!678 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!679 = !{i64 -7958217990955037719}
!680 = !{i64 -1556834719307278185}
!681 = !{i64 -1026604092888656530}
!682 = !{i64 -654069852097860636}
!683 = distinct !{null, null}
!684 = !{i64 6999901088608406530}
!685 = !{i64 9172729906254219841}
!686 = !{i64 -4078816293849673942}
!687 = !{i64 -7590038407625226717}
!688 = !{!238, !238, i64 0}
!689 = !{i64 3202712250268133874}
!690 = !{i64 2078725152392627389}
!691 = !{i64 3052353772730769926}
!692 = !{i64 -5757446671746692635}
!693 = !{i64 -1891274575702750138}
!694 = !{!241, !130, i64 8}
!695 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!696 = !{i64 -1293885092794865388}
!697 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!698 = distinct !{null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!699 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!700 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!701 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!702 = !{i64 -8017773914852823410}
!703 = distinct !{!703, i1 true, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_"}
!704 = distinct !{!704, !703, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!705 = distinct !{!705, !703, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!706 = distinct !{!706, i1 true, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_"}
!707 = distinct !{!707, !706, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!708 = distinct !{!708, !706, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!709 = !{i64 5956133331068011964}
!710 = !{!704}
!711 = !{!705}
!712 = !{!707}
!713 = !{!708}
!714 = distinct !{null, null, null, null}
!715 = !{i64 3194886657658484606}
!716 = !{!137, !136, i64 0}
!717 = distinct !{null, null, ptr @_ZN5arrow7compute9InputTypeD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!718 = distinct !{null, null, ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!719 = distinct !{!719, !243}
!720 = !{i64 -7066512526248640960}
!721 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!722 = !{i64 -4520811060228539852}
!723 = distinct !{!723, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!724 = distinct !{!724, !723, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!725 = distinct !{!725, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!726 = distinct !{!726, !725, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!727 = distinct !{!727, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!728 = distinct !{!728, !727, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!729 = distinct !{!729, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!730 = distinct !{!730, !729, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!731 = distinct !{!731, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!732 = distinct !{!732, !731, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!733 = distinct !{!733, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_12ListViewTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!734 = distinct !{!734, !733, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_12ListViewTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0"}
!735 = distinct !{!735, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!736 = distinct !{!736, !735, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!737 = distinct !{!737, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!738 = distinct !{!738, !737, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!739 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!740 = distinct !{!740, i1 false, !"LVerDomain"}
!741 = distinct !{!741, !740}
!742 = distinct !{!742, !740}
!743 = distinct !{!743, !740}
!744 = distinct !{!744, !243, !244, !245}
!745 = distinct !{!745, !246}
!746 = distinct !{!746, !243, !244}
!747 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!748 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!749 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!750 = distinct !{!750, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!751 = distinct !{!751, !750, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!752 = distinct !{!752, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!753 = distinct !{!753, !752, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!754 = distinct !{!754, i1 true, !"_ZN5arrow6Status2OKEv"}
!755 = distinct !{!755, !754, !"_ZN5arrow6Status2OKEv: argument 0"}
!756 = !{i64 -5403575509109891729}
!757 = !{!726, !724}
!758 = !{!728}
!759 = !{!732, !730, !728}
!760 = !{!730, !728}
!761 = !{!734}
!762 = !{!738, !736, !734}
!763 = !{!741}
!764 = !{!742}
!765 = !{!743}
!766 = !{!734, !742, !741}
!767 = !{!751}
!768 = !{!753}
!769 = !{!753, !751}
!770 = !{!755}
!771 = distinct !{!771, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!772 = distinct !{!772, !771, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!773 = distinct !{!773, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!774 = distinct !{!774, !773, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!775 = distinct !{!775, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!776 = distinct !{!776, !775, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!777 = distinct !{!777, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!778 = distinct !{!778, !777, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!779 = distinct !{!779, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!780 = distinct !{!780, !779, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!781 = distinct !{!781, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_13LargeListTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!782 = distinct !{!782, !781, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_13LargeListTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0"}
!783 = distinct !{null}
!784 = distinct !{!784, i1 true, !"_ZN5arrow6Status7InvalidIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S2_SA_EEES0_DpOT_"}
!785 = distinct !{!785, !784, !"_ZN5arrow6Status7InvalidIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S2_SA_EEES0_DpOT_: argument 0"}
!786 = distinct !{!786, i1 true, !"_ZN5arrow6Status8FromArgsIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S2_SA_EEES0_NS_10StatusCodeEDpOT_"}
!787 = distinct !{!787, !786, !"_ZN5arrow6Status8FromArgsIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S2_SA_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!788 = distinct !{!788, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!789 = distinct !{!789, !788, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!790 = distinct !{!790, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!791 = distinct !{!791, !790, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!792 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!793 = distinct !{!793, !243, !244, !245}
!794 = distinct !{!794, !243, !245, !244}
!795 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!796 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!797 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!798 = distinct !{!798, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_13LargeListTypeENS_8ListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE"}
!799 = distinct !{!799, !798, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_13LargeListTypeENS_8ListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE: argument 0"}
!800 = distinct !{!800, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!801 = distinct !{!801, !800, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!802 = distinct !{!802, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!803 = distinct !{!803, !802, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!804 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!805 = distinct !{null, null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!806 = distinct !{!806, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!807 = distinct !{!807, !806, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!808 = distinct !{!808, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!809 = distinct !{!809, !808, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!810 = distinct !{!810, i1 true, !"_ZN5arrow6Status2OKEv"}
!811 = distinct !{!811, !810, !"_ZN5arrow6Status2OKEv: argument 0"}
!812 = !{i64 -1297439778332924223}
!813 = !{!774, !772}
!814 = !{!776}
!815 = !{!780, !778, !776}
!816 = !{!778, !776}
!817 = !{!782}
!818 = !{!787, !785, !782}
!819 = !{!791, !789, !782}
!820 = !{!799}
!821 = !{!799, !782}
!822 = !{!803, !801, !799, !782}
!823 = !{!807}
!824 = !{!809}
!825 = !{!809, !807}
!826 = !{!811}
!827 = !{i64 -6580697375146828027}
!828 = distinct !{!828, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!829 = distinct !{!829, !828, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!830 = distinct !{!830, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!831 = distinct !{!831, !830, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!832 = distinct !{!832, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!833 = distinct !{!833, !832, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!834 = distinct !{!834, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!835 = distinct !{!835, !834, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!836 = distinct !{!836, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!837 = distinct !{!837, !836, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!838 = distinct !{!838, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_17LargeListViewTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!839 = distinct !{!839, !838, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_17LargeListViewTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0"}
!840 = distinct !{null}
!841 = distinct !{!841, i1 true, !"_ZN5arrow6Status7InvalidIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S2_SA_EEES0_DpOT_"}
!842 = distinct !{!842, !841, !"_ZN5arrow6Status7InvalidIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S2_SA_EEES0_DpOT_: argument 0"}
!843 = distinct !{!843, i1 true, !"_ZN5arrow6Status8FromArgsIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S2_SA_EEES0_NS_10StatusCodeEDpOT_"}
!844 = distinct !{!844, !843, !"_ZN5arrow6Status8FromArgsIJRA15_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA26_S2_SA_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!845 = distinct !{!845, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!846 = distinct !{!846, !845, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!847 = distinct !{!847, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!848 = distinct !{!848, !847, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!849 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!850 = distinct !{!850, !243, !244, !245}
!851 = distinct !{!851, !243, !245, !244}
!852 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!853 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!854 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!855 = distinct !{!855, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_17LargeListViewTypeENS_8ListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE"}
!856 = distinct !{!856, !855, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_17LargeListViewTypeENS_8ListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE: argument 0"}
!857 = distinct !{!857, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!858 = distinct !{!858, !857, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!859 = distinct !{!859, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!860 = distinct !{!860, !859, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!861 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!862 = distinct !{null, null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!863 = distinct !{!863, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!864 = distinct !{!864, !863, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!865 = distinct !{!865, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!866 = distinct !{!866, !865, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!867 = distinct !{!867, i1 true, !"_ZN5arrow6Status2OKEv"}
!868 = distinct !{!868, !867, !"_ZN5arrow6Status2OKEv: argument 0"}
!869 = !{i64 6891573168475472624}
!870 = !{!831, !829}
!871 = !{!833}
!872 = !{!837, !835, !833}
!873 = !{!835, !833}
!874 = !{!839}
!875 = !{!844, !842, !839}
!876 = !{!848, !846, !839}
!877 = !{!856}
!878 = !{!856, !839}
!879 = !{!860, !858, !856, !839}
!880 = !{!864}
!881 = !{!866}
!882 = !{!866, !864}
!883 = !{!868}
!884 = distinct !{!884, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!885 = distinct !{!885, !884, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!886 = distinct !{!886, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!887 = distinct !{!887, !886, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!888 = distinct !{!888, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!889 = distinct !{!889, !888, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!890 = distinct !{!890, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!891 = distinct !{!891, !890, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!892 = distinct !{!892, !243, !244, !245}
!893 = distinct !{!893, !243, !245, !244}
!894 = distinct !{!894, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!895 = distinct !{!895, !894, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!896 = distinct !{!896, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!897 = distinct !{!897, !896, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!898 = distinct !{!898, i1 true, !"_ZN5arrow6Status2OKEv"}
!899 = distinct !{!899, !898, !"_ZN5arrow6Status2OKEv: argument 0"}
!900 = !{i64 3679503194286716263}
!901 = !{!887, !885}
!902 = !{!891, !889}
!903 = !{!895}
!904 = !{!897}
!905 = !{!897, !895}
!906 = !{!899}
!907 = !{i64 -4623262389011538927}
!908 = distinct !{!908, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!909 = distinct !{!909, !908, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!910 = distinct !{!910, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!911 = distinct !{!911, !910, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!912 = distinct !{!912, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!913 = distinct !{!913, !912, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!914 = distinct !{!914, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!915 = distinct !{!915, !914, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!916 = distinct !{!916, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!917 = distinct !{!917, !916, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!918 = distinct !{!918, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_8ListTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!919 = distinct !{!919, !918, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_8ListTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0"}
!920 = distinct !{!920, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!921 = distinct !{!921, !920, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!922 = distinct !{!922, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!923 = distinct !{!923, !922, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!924 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!925 = distinct !{!925, !243}
!926 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!927 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!928 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!929 = distinct !{!929, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_8ListTypeENS_13LargeListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE"}
!930 = distinct !{!930, !929, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_8ListTypeENS_13LargeListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE: argument 0"}
!931 = distinct !{!931, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!932 = distinct !{!932, !931, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!933 = distinct !{!933, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!934 = distinct !{!934, !933, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!935 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!936 = distinct !{null, null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!937 = distinct !{!937, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!938 = distinct !{!938, !937, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!939 = distinct !{!939, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!940 = distinct !{!940, !939, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!941 = distinct !{!941, i1 true, !"_ZN5arrow6Status2OKEv"}
!942 = distinct !{!942, !941, !"_ZN5arrow6Status2OKEv: argument 0"}
!943 = !{i64 6064296376870630172}
!944 = !{!911, !909}
!945 = !{!913}
!946 = !{!917, !915, !913}
!947 = !{!915, !913}
!948 = !{!919}
!949 = !{!923, !921, !919}
!950 = !{!930}
!951 = !{!930, !919}
!952 = !{!934, !932, !930, !919}
!953 = !{!938}
!954 = !{!940}
!955 = !{!940, !938}
!956 = !{!942}
!957 = distinct !{!957, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!958 = distinct !{!958, !957, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!959 = distinct !{!959, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!960 = distinct !{!960, !959, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!961 = distinct !{!961, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!962 = distinct !{!962, !961, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!963 = distinct !{!963, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!964 = distinct !{!964, !963, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!965 = distinct !{!965, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!966 = distinct !{!966, !965, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!967 = distinct !{!967, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_12ListViewTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!968 = distinct !{!968, !967, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_12ListViewTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0"}
!969 = distinct !{!969, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!970 = distinct !{!970, !969, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!971 = distinct !{!971, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!972 = distinct !{!972, !971, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!973 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!974 = distinct !{!974, !243}
!975 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!976 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!977 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!978 = distinct !{!978, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_12ListViewTypeENS_13LargeListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE"}
!979 = distinct !{!979, !978, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_12ListViewTypeENS_13LargeListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE: argument 0"}
!980 = distinct !{!980, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!981 = distinct !{!981, !980, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!982 = distinct !{!982, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!983 = distinct !{!983, !982, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!984 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!985 = distinct !{null, null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!986 = distinct !{!986, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!987 = distinct !{!987, !986, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!988 = distinct !{!988, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!989 = distinct !{!989, !988, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!990 = distinct !{!990, i1 true, !"_ZN5arrow6Status2OKEv"}
!991 = distinct !{!991, !990, !"_ZN5arrow6Status2OKEv: argument 0"}
!992 = !{i64 5693753675655150459}
!993 = !{!960, !958}
!994 = !{!962}
!995 = !{!966, !964, !962}
!996 = !{!964, !962}
!997 = !{!968}
!998 = !{!972, !970, !968}
!999 = !{!979}
!1000 = !{!979, !968}
!1001 = !{!983, !981, !979, !968}
!1002 = !{!987}
!1003 = !{!989}
!1004 = !{!989, !987}
!1005 = !{!991}
!1006 = distinct !{!1006, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!1007 = distinct !{!1007, !1006, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!1008 = distinct !{!1008, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!1009 = distinct !{!1009, !1008, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!1010 = distinct !{!1010, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1011 = distinct !{!1011, !1010, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1012 = distinct !{!1012, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!1013 = distinct !{!1013, !1012, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!1014 = distinct !{!1014, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1015 = distinct !{!1015, !1014, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1016 = distinct !{!1016, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_13LargeListTypeES4_E13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISB_E"}
!1017 = distinct !{!1017, !1016, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_13LargeListTypeES4_E13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISB_E: argument 0"}
!1018 = distinct !{!1018, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!1019 = distinct !{!1019, !1018, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!1020 = distinct !{!1020, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!1021 = distinct !{!1021, !1020, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!1022 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1023 = distinct !{!1023, !243}
!1024 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1025 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1026 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1027 = distinct !{!1027, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1028 = distinct !{!1028, !1027, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1029 = distinct !{!1029, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1030 = distinct !{!1030, !1029, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1031 = distinct !{!1031, i1 true, !"_ZN5arrow6Status2OKEv"}
!1032 = distinct !{!1032, !1031, !"_ZN5arrow6Status2OKEv: argument 0"}
!1033 = !{i64 8106710205695380476}
!1034 = !{!1009, !1007}
!1035 = !{!1011}
!1036 = !{!1015, !1013, !1011}
!1037 = !{!1013, !1011}
!1038 = !{!1017}
!1039 = !{!1021, !1019, !1017}
!1040 = !{!1028}
!1041 = !{!1030}
!1042 = !{!1030, !1028}
!1043 = !{!1032}
!1044 = distinct !{!1044, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!1045 = distinct !{!1045, !1044, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!1046 = distinct !{!1046, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!1047 = distinct !{!1047, !1046, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!1048 = distinct !{!1048, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1049 = distinct !{!1049, !1048, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1050 = distinct !{!1050, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!1051 = distinct !{!1051, !1050, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!1052 = distinct !{!1052, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1053 = distinct !{!1053, !1052, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1054 = distinct !{!1054, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_17LargeListViewTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!1055 = distinct !{!1055, !1054, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_17LargeListViewTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0"}
!1056 = distinct !{!1056, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!1057 = distinct !{!1057, !1056, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!1058 = distinct !{!1058, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!1059 = distinct !{!1059, !1058, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!1060 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1061 = distinct !{!1061, !243}
!1062 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1063 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1064 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1065 = distinct !{!1065, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1066 = distinct !{!1066, !1065, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1067 = distinct !{!1067, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1068 = distinct !{!1068, !1067, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1069 = distinct !{!1069, i1 true, !"_ZN5arrow6Status2OKEv"}
!1070 = distinct !{!1070, !1069, !"_ZN5arrow6Status2OKEv: argument 0"}
!1071 = !{i64 -888305419198779771}
!1072 = !{!1047, !1045}
!1073 = !{!1049}
!1074 = !{!1053, !1051, !1049}
!1075 = !{!1051, !1049}
!1076 = !{!1055}
!1077 = !{!1059, !1057, !1055}
!1078 = !{!1066}
!1079 = !{!1068}
!1080 = !{!1068, !1066}
!1081 = !{!1070}
!1082 = distinct !{!1082, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!1083 = distinct !{!1083, !1082, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!1084 = distinct !{!1084, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!1085 = distinct !{!1085, !1084, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!1086 = distinct !{!1086, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!1087 = distinct !{!1087, !1086, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!1088 = distinct !{!1088, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!1089 = distinct !{!1089, !1088, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!1090 = distinct !{!1090, !243}
!1091 = distinct !{!1091, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1092 = distinct !{!1092, !1091, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1093 = distinct !{!1093, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1094 = distinct !{!1094, !1093, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1095 = distinct !{!1095, i1 true, !"_ZN5arrow6Status2OKEv"}
!1096 = distinct !{!1096, !1095, !"_ZN5arrow6Status2OKEv: argument 0"}
!1097 = !{i64 1839745217720990631}
!1098 = !{!1085, !1083}
!1099 = !{!1089, !1087}
!1100 = !{!1092}
!1101 = !{!1094}
!1102 = !{!1094, !1092}
!1103 = !{!1096}
!1104 = !{i64 2659023426613960381}
!1105 = distinct !{!1105, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1106 = distinct !{!1106, !1105, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1107 = distinct !{!1107, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!1108 = distinct !{!1108, !1107, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!1109 = distinct !{!1109, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1110 = distinct !{!1110, !1109, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1111 = distinct !{!1111, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1112 = distinct !{!1112, !1111, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1113 = distinct !{!1113, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!1114 = distinct !{!1114, !1113, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!1115 = distinct !{!1115, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1116 = distinct !{!1116, !1115, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1117 = distinct !{!1117, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeES4_E13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISB_E"}
!1118 = distinct !{!1118, !1117, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeES4_E13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISB_E: argument 0:thread"}
!1119 = distinct !{!1119, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!1120 = distinct !{!1120, !1119, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!1121 = distinct !{!1121, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!1122 = distinct !{!1122, !1121, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!1123 = distinct !{!1123, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeES4_E13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISB_E"}
!1124 = distinct !{!1124, !1123, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeES4_E13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISB_E: argument 0"}
!1125 = distinct !{!1125, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!1126 = distinct !{!1126, !1125, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!1127 = distinct !{!1127, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!1128 = distinct !{!1128, !1127, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!1129 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1130 = distinct !{!1130, i1 false, !"LVerDomain"}
!1131 = distinct !{!1131, !1130}
!1132 = distinct !{!1132, !1130}
!1133 = distinct !{!1133, !1130}
!1134 = distinct !{!1134, !243, !244, !245}
!1135 = distinct !{!1135, !246}
!1136 = distinct !{!1136, !243, !244}
!1137 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1138 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1139 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1140 = distinct !{!1140, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1141 = distinct !{!1141, !1140, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1142 = distinct !{!1142, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1143 = distinct !{!1143, !1142, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1144 = distinct !{!1144, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1145 = distinct !{!1145, !1144, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1146 = distinct !{!1146, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1147 = distinct !{!1147, !1146, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1148 = distinct !{!1148, i1 true, !"_ZN5arrow6Status2OKEv"}
!1149 = distinct !{!1149, !1148, !"_ZN5arrow6Status2OKEv: argument 0"}
!1150 = !{i64 -7187364158071488886}
!1151 = !{!1106}
!1152 = !{!1110, !1108, !1106}
!1153 = !{!1108, !1106}
!1154 = !{!1112}
!1155 = !{!1116, !1114, !1112}
!1156 = !{!1114, !1112}
!1157 = !{!1118}
!1158 = !{!1122, !1120}
!1159 = !{!1124}
!1160 = !{!1128, !1126, !1124}
!1161 = !{!1131}
!1162 = !{!1132}
!1163 = !{!1133}
!1164 = !{!1124, !1132, !1131}
!1165 = !{!1141}
!1166 = !{!1143}
!1167 = !{!1143, !1141}
!1168 = !{!1145}
!1169 = !{!1147}
!1170 = !{!1147, !1145}
!1171 = !{!1149}
!1172 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1173 = !{i64 -7990044950948750497}
!1174 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1175 = !{i64 -6370314957591674950}
!1176 = distinct !{!1176, i1 true, !"_ZN5arrow8internal12JoinToStringIJRA65_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!1177 = distinct !{!1177, !1176, !"_ZN5arrow8internal12JoinToStringIJRA65_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!1178 = !{i64 3876399627005162160}
!1179 = !{!1177}
!1180 = distinct !{!1180, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1181 = distinct !{!1181, !1180, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1182 = distinct !{!1182, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!1183 = distinct !{!1183, !1182, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!1184 = distinct !{!1184, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1185 = distinct !{!1185, !1184, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1186 = distinct !{!1186, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1187 = distinct !{!1187, !1186, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1188 = distinct !{!1188, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!1189 = distinct !{!1189, !1188, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!1190 = distinct !{!1190, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1191 = distinct !{!1191, !1190, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1192 = distinct !{!1192, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!1193 = distinct !{!1193, !1192, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0:thread"}
!1194 = distinct !{!1194, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!1195 = distinct !{!1195, !1194, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!1196 = distinct !{!1196, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!1197 = distinct !{!1197, !1196, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!1198 = distinct !{!1198, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!1199 = distinct !{!1199, !1198, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeENS_8ListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0"}
!1200 = distinct !{!1200, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!1201 = distinct !{!1201, !1200, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!1202 = distinct !{!1202, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!1203 = distinct !{!1203, !1202, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!1204 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1205 = distinct !{!1205, i1 false, !"LVerDomain"}
!1206 = distinct !{!1206, !1205}
!1207 = distinct !{!1207, !1205}
!1208 = distinct !{!1208, !1205}
!1209 = distinct !{!1209, !243, !244, !245}
!1210 = distinct !{!1210, !246}
!1211 = distinct !{!1211, !243, !244}
!1212 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1213 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1214 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1215 = distinct !{!1215, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1216 = distinct !{!1216, !1215, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1217 = distinct !{!1217, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1218 = distinct !{!1218, !1217, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1219 = distinct !{!1219, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1220 = distinct !{!1220, !1219, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1221 = distinct !{!1221, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1222 = distinct !{!1222, !1221, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1223 = distinct !{!1223, i1 true, !"_ZN5arrow6Status2OKEv"}
!1224 = distinct !{!1224, !1223, !"_ZN5arrow6Status2OKEv: argument 0"}
!1225 = !{i64 -8991810674223301413}
!1226 = !{!1181}
!1227 = !{!1185, !1183, !1181}
!1228 = !{!1183, !1181}
!1229 = !{!1187}
!1230 = !{!1191, !1189, !1187}
!1231 = !{!1189, !1187}
!1232 = !{!1193}
!1233 = !{!1197, !1195}
!1234 = !{!1199}
!1235 = !{!1203, !1201, !1199}
!1236 = !{!1206}
!1237 = !{!1207}
!1238 = !{!1208}
!1239 = !{!1199, !1207, !1206}
!1240 = !{!1216}
!1241 = !{!1218}
!1242 = !{!1218, !1216}
!1243 = !{!1220}
!1244 = !{!1222}
!1245 = !{!1222, !1220}
!1246 = !{!1224}
!1247 = distinct !{!1247, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1248 = distinct !{!1248, !1247, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1249 = distinct !{!1249, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!1250 = distinct !{!1250, !1249, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!1251 = distinct !{!1251, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1252 = distinct !{!1252, !1251, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1253 = distinct !{!1253, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1254 = distinct !{!1254, !1253, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1255 = distinct !{!1255, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!1256 = distinct !{!1256, !1255, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!1257 = distinct !{!1257, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1258 = distinct !{!1258, !1257, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1259 = distinct !{!1259, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!1260 = distinct !{!1260, !1259, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0:thread"}
!1261 = distinct !{!1261, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!1262 = distinct !{!1262, !1261, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!1263 = distinct !{!1263, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!1264 = distinct !{!1264, !1263, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!1265 = distinct !{!1265, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E"}
!1266 = distinct !{!1266, !1265, !"_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_7MapTypeENS_13LargeListTypeEE13HandleOffsetsEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataEPSt10shared_ptrISC_E: argument 0"}
!1267 = distinct !{!1267, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!1268 = distinct !{!1268, !1267, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!1269 = distinct !{!1269, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!1270 = distinct !{!1270, !1269, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!1271 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1272 = distinct !{!1272, !243}
!1273 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1274 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1275 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1276 = distinct !{!1276, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_7MapTypeENS_13LargeListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE"}
!1277 = distinct !{!1277, !1276, !"_ZN5arrow7compute8internal12_GLOBAL__N_115CastListOffsetsINS_7MapTypeENS_13LargeListTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanEPNS_9ArrayDataE: argument 0"}
!1278 = distinct !{!1278, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!1279 = distinct !{!1279, !1278, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!1280 = distinct !{!1280, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!1281 = distinct !{!1281, !1280, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!1282 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1283 = distinct !{null, null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1284 = distinct !{!1284, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1285 = distinct !{!1285, !1284, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1286 = distinct !{!1286, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1287 = distinct !{!1287, !1286, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1288 = distinct !{!1288, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1289 = distinct !{!1289, !1288, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1290 = distinct !{!1290, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1291 = distinct !{!1291, !1290, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1292 = distinct !{!1292, i1 true, !"_ZN5arrow6Status2OKEv"}
!1293 = distinct !{!1293, !1292, !"_ZN5arrow6Status2OKEv: argument 0"}
!1294 = !{i64 2585419940805270326}
!1295 = !{!1248}
!1296 = !{!1252, !1250, !1248}
!1297 = !{!1250, !1248}
!1298 = !{!1254}
!1299 = !{!1258, !1256, !1254}
!1300 = !{!1256, !1254}
!1301 = !{!1260}
!1302 = !{!1264, !1262}
!1303 = !{!1266}
!1304 = !{!1270, !1268, !1266}
!1305 = !{!1277}
!1306 = !{!1277, !1266}
!1307 = !{!1281, !1279, !1277, !1266}
!1308 = !{!1285}
!1309 = !{!1287}
!1310 = !{!1287, !1285}
!1311 = !{!1289}
!1312 = !{!1291}
!1313 = !{!1291, !1289}
!1314 = !{!1293}
!1315 = !{i64 -4650015884439893629}
!1316 = distinct !{!1316, i1 true, !"_ZN5arrow6Status9TypeErrorIJRA39_KcRA14_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_SC_EEES0_DpOT_"}
!1317 = distinct !{!1317, !1316, !"_ZN5arrow6Status9TypeErrorIJRA39_KcRA14_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_SC_EEES0_DpOT_: argument 0"}
!1318 = distinct !{!1318, i1 true, !"_ZN5arrow6Status8FromArgsIJRA39_KcRA14_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_SC_EEES0_NS_10StatusCodeEDpOT_"}
!1319 = distinct !{!1319, !1318, !"_ZN5arrow6Status8FromArgsIJRA39_KcRA14_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_SC_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!1320 = distinct !{!1320, i1 true, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!1321 = distinct !{!1321, !1320, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!1322 = distinct !{!1322, i1 true, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!1323 = distinct !{!1323, !1322, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!1324 = distinct !{!1324, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!1325 = distinct !{!1325, !1324, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!1326 = distinct !{!1326, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1327 = distinct !{!1327, !1326, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1328 = distinct !{!1328, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1329 = distinct !{!1329, !1328, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1330 = distinct !{!1330, i1 true, !"_ZN5arrow6Status2OKEv"}
!1331 = distinct !{!1331, !1330, !"_ZN5arrow6Status2OKEv: argument 0"}
!1332 = !{i64 -4643169085528046437}
!1333 = !{!1319, !1317}
!1334 = !{!1321}
!1335 = !{!1325, !1323, !1321}
!1336 = !{!1323, !1321}
!1337 = !{!1327}
!1338 = !{!1329}
!1339 = !{!1329, !1327}
!1340 = !{!1331}
!1341 = !{i64 4601165403290786748}
!1342 = distinct !{!1342, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_8ListTypeEE15ValidateLengthsERKNS_9ArraySpanEi"}
!1343 = distinct !{!1343, !1342, !"_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_8ListTypeEE15ValidateLengthsERKNS_9ArraySpanEi: argument 0"}
!1344 = distinct !{!1344, !243}
!1345 = distinct !{!1345, i1 true, !"_ZN5arrow6Status7InvalidIJRA50_KcRA40_S2_EEES0_DpOT_"}
!1346 = distinct !{!1346, !1345, !"_ZN5arrow6Status7InvalidIJRA50_KcRA40_S2_EEES0_DpOT_: argument 0"}
!1347 = distinct !{!1347, i1 true, !"_ZN5arrow6Status8FromArgsIJRA50_KcRA40_S2_EEES0_NS_10StatusCodeEDpOT_"}
!1348 = distinct !{!1348, !1347, !"_ZN5arrow6Status8FromArgsIJRA50_KcRA40_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!1349 = distinct !{!1349, !243, !310}
!1350 = distinct !{!1350, i1 true, !"_ZN5arrow6Status7InvalidIJRA50_KcRA40_S2_EEES0_DpOT_"}
!1351 = distinct !{!1351, !1350, !"_ZN5arrow6Status7InvalidIJRA50_KcRA40_S2_EEES0_DpOT_: argument 0"}
!1352 = distinct !{!1352, i1 true, !"_ZN5arrow6Status8FromArgsIJRA50_KcRA40_S2_EEES0_NS_10StatusCodeEDpOT_"}
!1353 = distinct !{!1353, !1352, !"_ZN5arrow6Status8FromArgsIJRA50_KcRA40_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!1354 = distinct !{!1354, !243}
!1355 = distinct !{!1355, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!1356 = distinct !{!1356, !1355, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!1357 = distinct !{!1357, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!1358 = distinct !{!1358, !1357, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!1359 = distinct !{!1359, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1360 = distinct !{!1360, !1359, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1361 = distinct !{!1361, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1362 = distinct !{!1362, !1361, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1363 = distinct !{!1363, i1 true, !"_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_8ListTypeEE16BuildTakeIndicesERKNS_9ArraySpanEiPNS0_13KernelContextE"}
!1364 = distinct !{!1364, !1363, !"_ZN5arrow7compute8internal12_GLOBAL__N_118CastVarToFixedListINS_8ListTypeEE16BuildTakeIndicesERKNS_9ArraySpanEiPNS0_13KernelContextE: argument 0"}
!1365 = distinct !{!1365, i1 true, !"_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv"}
!1366 = distinct !{!1366, !1365, !"_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv: argument 0"}
!1367 = distinct !{!1367, i1 true, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!1368 = distinct !{!1368, !1367, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!1369 = distinct !{!1369, !243}
!1370 = distinct !{!1370, !243}
!1371 = distinct !{!1371, !243}
!1372 = distinct !{null, ptr @_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1373 = distinct !{null, ptr @_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1374 = distinct !{!1374, i1 true, !"_ZNO5arrow6ResultISt10shared_ptrINS_5ArrayEEE11ValueUnsafeEv"}
!1375 = distinct !{!1375, !1374, !"_ZNO5arrow6ResultISt10shared_ptrINS_5ArrayEEE11ValueUnsafeEv: argument 0"}
!1376 = distinct !{!1376, i1 true, !"_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE15MoveValueUnsafeEv"}
!1377 = distinct !{!1377, !1376, !"_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE15MoveValueUnsafeEv: argument 0"}
!1378 = distinct !{!1378, i1 true, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv"}
!1379 = distinct !{!1379, !1378, !"_ZNO5arrow6ResultINS_5DatumEE11ValueUnsafeEv: argument 0"}
!1380 = distinct !{!1380, i1 true, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!1381 = distinct !{!1381, !1380, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!1382 = distinct !{!1382, i1 true, !"_ZN5arrow6Status2OKEv"}
!1383 = distinct !{!1383, !1382, !"_ZN5arrow6Status2OKEv: argument 0"}
!1384 = !{i64 9000650353139074797}
!1385 = !{!1343}
!1386 = !{!1348, !1346, !1343}
!1387 = !{!1353, !1351, !1343}
!1388 = !{!1358, !1356}
!1389 = !{!1360}
!1390 = !{!1362}
!1391 = !{!1362, !1360}
!1392 = !{!1364}
!1393 = !{!1366}
!1394 = !{!1366, !1364}
!1395 = !{!1368, !1364}
!1396 = !{!1375}
!1397 = !{!1377}
!1398 = !{!1377, !1375}
!1399 = !{!1379}
!1400 = !{!1381}
!1401 = !{!1381, !1379}
!1402 = !{!1383}
!1403 = !{i64 8519270301306191686}
!1404 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1405 = !{i64 8774921738764317751}
!1406 = !{i64 1343348232279622424}
!1407 = !{i64 -1965900458196905431}
!1408 = !{i64 4436414345889955668}
!1409 = !{i64 -856022040860986649}
!1410 = !{i64 -3904468634405276655}
!1411 = !{i64 6496820936839935114}
!1412 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1413 = !{i64 3210938698634992931}
!1414 = distinct !{null, null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1415 = distinct !{!1415, !243}
!1416 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1417 = !{i64 5291277179427080436}
!1418 = !{!319, !318, i64 0}
!1419 = !{!319, !318, i64 8}
!1420 = !{!319, !318, i64 16}
!1421 = distinct !{ptr @_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1422 = distinct !{ptr @_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1423 = !{i64 -7739535195967780939}
!1424 = !{i64 -2463191754878450283}
!1425 = distinct !{!1425, i1 true, !"_ZN5arrow12ArrayBuilder13CheckCapacityEl"}
!1426 = distinct !{!1426, !1425, !"_ZN5arrow12ArrayBuilder13CheckCapacityEl: argument 0"}
!1427 = !{i64 -1474722649735179512}
!1428 = !{!1426}
!1429 = distinct !{null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1430 = !{i64 2510338860159034551}
!1431 = distinct !{!1431, i1 true, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!1432 = distinct !{!1432, !1431, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!1433 = distinct !{!1433, i1 true, !"_ZN5arrow6Status2OKEv"}
!1434 = distinct !{!1434, !1433, !"_ZN5arrow6Status2OKEv: argument 0"}
!1435 = !{i64 6586509604299288842}
!1436 = !{!1432}
!1437 = !{!1434}
!1438 = distinct !{!1438, i1 true, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!1439 = distinct !{!1439, !1438, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
end_hunk_4
