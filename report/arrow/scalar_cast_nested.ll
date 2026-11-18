Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/scalar_cast_nested?download=true
inline.NumInlined: 3701
inline.NumDeleted: 1113
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_8ListTypeES4_E4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.bu = load ptr, ptr %i.bd, align 8, !tbaa !208, !noalias !605
  %i.bv = load i64, ptr %i.bq, align 8, !tbaa !209, !noalias !605
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef %i.bu, i64 noundef %i.bv)
          to label %_ZNK5arrow9ArraySpan9GetBufferEi.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !605

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc54
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 96) #22, !noalias !605
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
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !218, !noalias !606 ; 3 uses
  %i.cu = load ptr, ptr %i.bd, align 8, !tbaa !207, !noalias !606 ; 3 uses
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %i.ct ; 15 uses
  %.not.i65 = icmp eq i64 %i.ct, 0
  br i1 %.not.i65, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !606
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !219, !noalias !606
  %i.cy = shl i64 %i.cx, 2
  %i.cz = add i64 %i.cy, 4
  invoke void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.181") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cz)
          to label %.noexc67 unwind label %bb.bn

.noexc67:                                         ; preds = %bb.ad
  %i.da = load ptr, ptr %7, align 8, !tbaa !150, !noalias !606
  %i.db = icmp eq ptr %i.da, null                 ; 2 uses
  br i1 %i.db, label %bb.af, label %bb.ae, !prof !151

bb.ae:                                            ; preds = %.noexc67
  store ptr null, ptr %12, align 8, !tbaa !150, !alias.scope !606
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.an

bb.af:                                            ; preds = %.noexc67
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dd = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !141, !noalias !607
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false), !noalias !606
  %i.de = load ptr, ptr %i.aj, align 8, !tbaa !201, !noalias !606 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !125, !noalias !606 ; 8 uses
  store <2 x ptr> %i.dd, ptr %i.df, align 8, !tbaa !141, !noalias !606
  %.not.i.i.i.i.i66 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i66, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 4 uses
  %i.dj = load atomic i64, ptr %i.di acquire, align 8, !noalias !606 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 4294967297
  %i.dl = trunc i64 %i.dj to i32                  ; 2 uses
  br i1 %i.dk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.di, align 8, !tbaa !118, !noalias !606
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 0, ptr %i.dm, align 4, !tbaa !119, !noalias !606
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !121, !noalias !606
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !606
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !606, !inline_history !585
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !121, !noalias !606
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !606
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !606, !inline_history !585
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !606
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.du = add nsw i32 %i.dl, -1
  store i32 %i.du, ptr %i.di, align 8, !tbaa !30, !noalias !606
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dv = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4, !noalias !606
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dl, %bb.aj ], [ %i.dv, %bb.ak ]
  %i.dw = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dw, label %bb.al, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !129

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !606
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ah, %bb.af
  %i.dx = load ptr, ptr %i.aj, align 8, !tbaa !201, !noalias !606
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !206, !noalias !606 ; 4 uses
  %.not.i.i42.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i42.i, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !235, !noalias !606
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 9
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !242, !range !161, !noalias !606, !noundef !162
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eg = load i8, ptr %i.ef, align 8, !range !161, !noalias !606
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = select i1 %i.ee, i1 %i.eh, i1 false, !prof !151
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !606
  %i.el = select i1 %i.ei, ptr %i.ek, ptr null, !prof !151
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.eb
  br label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %bb.am, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.i.i.i = phi ptr [ %i.em, %bb.am ], [ null, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 9 uses
  %i.en = load i64, ptr %i.cw, align 8, !tbaa !219, !noalias !606 ; 8 uses
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
  %i.eu = getelementptr i8, ptr %i.et, i64 4
  %19 = getelementptr i8, ptr %i.cu, i64 %i.es
  %20 = getelementptr i8, ptr %19, i64 %i.ep
  %i.ev = getelementptr i8, ptr %20, i64 4
  %bound0 = icmp ult ptr %.0.i.i.i, %i.eu
  %bound1 = icmp ult ptr %i.cv, %i.er
  %bound0154 = icmp ult ptr %.0.i.i.i, %i.ev
  %found.conflict157 = or i1 %bound0, %bound0154
  %conflict.rdx = and i1 %found.conflict157, %bound1
  br i1 %conflict.rdx, label %.lr.ph.i.preheader158, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eo, -8                      ; 3 uses
  %i.ew = load i32, ptr %i.cv, align 4, !tbaa !30, !alias.scope !608, !noalias !606
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ew, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %wide.load = load <4 x i32>, ptr %i.ex, align 4, !tbaa !30, !alias.scope !609, !noalias !606
  %wide.load156 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !30, !alias.scope !609, !noalias !606
  %i.ez = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.fa = sub nsw <4 x i32> %wide.load156, %broadcast.splat
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <4 x i32> %i.ez, ptr %i.fb, align 4, !tbaa !30, !alias.scope !610, !noalias !611
  store <4 x i32> %i.fa, ptr %i.fc, align 4, !tbaa !30, !alias.scope !610, !noalias !611
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !590

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader158

.lr.ph.i.preheader158:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03059.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.fe = add nuw i64 %i.en, 1
  %i.ff = sub i64 %i.en, %.03059.i.ph
  %xtraiter = and i64 %i.fe, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader158, %.lr.ph.i.prol
  %.03059.i.prol = phi i64 [ %i.fl, %.lr.ph.i.prol ], [ %.03059.i.ph, %.lr.ph.i.preheader158 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader158 ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.03059.i.prol
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !30, !noalias !606
  %i.fi = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !606
  %i.fj = sub nsw i32 %i.fh, %i.fi
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i.prol
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !30, !noalias !606
  %i.fl = add nuw i64 %.03059.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !591

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader158
  %.03059.i.unr = phi i64 [ %.03059.i.ph, %.lr.ph.i.preheader158 ], [ %i.fl, %.lr.ph.i.prol ]
  %i.fm = icmp ult i64 %i.ff, 3
  br i1 %i.fm, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !606
  %i.fn = load ptr, ptr %11, align 16, !tbaa !181, !noalias !606
  %i.fo = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !606
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.en
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !30, !noalias !606
  %i.fs = sext i32 %i.fr to i64
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %8, ptr noundef nonnull align 8 dereferenceable(120) %i.fn, i64 noundef %i.fp, i64 noundef %i.fs)
          to label %bb.ao unwind label %bb.bj, !noalias !606

bb.an:                                            ; preds = %bb.ae
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03059.i = phi i64 [ %i.gr, %.lr.ph.i ], [ %.03059.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.03059.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !30, !noalias !606
  %i.fw = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !606
  %i.fx = sub nsw i32 %i.fv, %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !30, !noalias !606
  %i.fz = add nuw i64 %.03059.i, 1                ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !30, !noalias !606
  %i.gc = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !606
  %i.gd = sub nsw i32 %i.gb, %i.gc
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.fz
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !30, !noalias !606
  %i.gf = add nuw i64 %.03059.i, 2                ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !30, !noalias !606
  %i.gi = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !606
  %i.gj = sub nsw i32 %i.gh, %i.gi
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gf
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !30, !noalias !606
  %i.gl = add nuw i64 %.03059.i, 3                ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !30, !noalias !606
  %i.go = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !606
  %i.gp = sub nsw i32 %i.gn, %i.go
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gl
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !30, !noalias !606
  %i.gr = add nuw i64 %.03059.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.gl, %i.en
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !592

bb.ao:                                            ; preds = %._crit_edge.i
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gu = load <2 x ptr>, ptr %8, align 16, !tbaa !141, !noalias !606
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false), !noalias !606
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !125, !noalias !606 ; 8 uses
  store <2 x ptr> %i.gu, ptr %11, align 16, !tbaa !141, !noalias !606
  %.not.i.i.i.i43.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i43.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 4 uses
  %i.gx = load atomic i64, ptr %i.gw acquire, align 8, !noalias !606 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 4294967297
  %i.gz = trunc i64 %i.gx to i32                  ; 2 uses
  br i1 %i.gy, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.gw, align 8, !tbaa !118, !noalias !606
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  store i32 0, ptr %i.ha, align 4, !tbaa !119, !noalias !606
  %i.hb = load ptr, ptr %i.gv, align 8, !tbaa !121, !noalias !606
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !606
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #20, !noalias !606, !inline_history !593
  %i.he = load ptr, ptr %i.gv, align 8, !tbaa !121, !noalias !606
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !606
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #20, !noalias !606, !inline_history !593
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.hh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !606
  %.not.i.i.i.i.i44.i = icmp eq i8 %i.hh, 0
  br i1 %.not.i.i.i.i.i44.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hi = add nsw i32 %i.gz, -1
  store i32 %i.hi, ptr %i.gw, align 8, !tbaa !30, !noalias !606
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

bb.at:                                            ; preds = %bb.ar
  %i.hj = atomicrmw volatile add ptr %i.gw, i32 -1 acq_rel, align 4, !noalias !606
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i46.i = phi i32 [ %i.gz, %bb.as ], [ %i.hj, %bb.at ]
  %i.hk = icmp eq i32 %.0.i.i.i.i.i.i46.i, 1
  br i1 %i.hk, label %bb.au, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, !prof !129

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #20, !noalias !606
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i: ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i, %bb.aq, %bb.ao
  %i.hl = load ptr, ptr %i.gs, align 8, !tbaa !125, !noalias !606 ; 8 uses
  %.not.i.i47.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i47.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 4 uses
  %i.hn = load atomic i64, ptr %i.hm acquire, align 8, !noalias !606 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 4294967297
  %i.hp = trunc i64 %i.hn to i32                  ; 2 uses
  br i1 %i.ho, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.hm, align 8, !tbaa !118, !noalias !606
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  store i32 0, ptr %i.hq, align 4, !tbaa !119, !noalias !606
  %i.hr = load ptr, ptr %i.hl, align 8, !tbaa !121, !noalias !606
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !606
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #20, !noalias !606, !inline_history !594
  %i.hu = load ptr, ptr %i.hl, align 8, !tbaa !121, !noalias !606
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !606
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #20, !noalias !606, !inline_history !594
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !606
  %.not.i.i.i48.i = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i48.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hy = add nsw i32 %i.hp, -1
  store i32 %i.hy, ptr %i.hm, align 8, !tbaa !30, !noalias !606
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

bb.az:                                            ; preds = %bb.ax
  %i.hz = atomicrmw volatile add ptr %i.hm, i32 -1 acq_rel, align 4, !noalias !606
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_12ListViewTypeENS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.bu = load ptr, ptr %i.bd, align 8, !tbaa !208, !noalias !736
  %i.bv = load i64, ptr %i.bq, align 8, !tbaa !209, !noalias !736
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef %i.bu, i64 noundef %i.bv)
          to label %_ZNK5arrow9ArraySpan9GetBufferEi.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !736

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc54
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 96) #22, !noalias !736
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
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !218, !noalias !737 ; 3 uses
  %i.cu = load ptr, ptr %i.bd, align 8, !tbaa !207, !noalias !737 ; 3 uses
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %i.ct ; 15 uses
  %.not.i65 = icmp eq i64 %i.ct, 0
  br i1 %.not.i65, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !737
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !219, !noalias !737
  %i.cy = shl i64 %i.cx, 2
  %i.cz = add i64 %i.cy, 4
  invoke void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.181") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cz)
          to label %.noexc67 unwind label %bb.bn

.noexc67:                                         ; preds = %bb.ad
  %i.da = load ptr, ptr %7, align 8, !tbaa !150, !noalias !737
  %i.db = icmp eq ptr %i.da, null                 ; 2 uses
  br i1 %i.db, label %bb.af, label %bb.ae, !prof !151

bb.ae:                                            ; preds = %.noexc67
  store ptr null, ptr %12, align 8, !tbaa !150, !alias.scope !737
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.an

bb.af:                                            ; preds = %.noexc67
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dd = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !141, !noalias !738
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false), !noalias !737
  %i.de = load ptr, ptr %i.aj, align 8, !tbaa !201, !noalias !737 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !125, !noalias !737 ; 8 uses
  store <2 x ptr> %i.dd, ptr %i.df, align 8, !tbaa !141, !noalias !737
  %.not.i.i.i.i.i66 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i66, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 4 uses
  %i.dj = load atomic i64, ptr %i.di acquire, align 8, !noalias !737 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 4294967297
  %i.dl = trunc i64 %i.dj to i32                  ; 2 uses
  br i1 %i.dk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.di, align 8, !tbaa !118, !noalias !737
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 0, ptr %i.dm, align 4, !tbaa !119, !noalias !737
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !121, !noalias !737
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !737
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !737, !inline_history !716
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !121, !noalias !737
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !737
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !737, !inline_history !716
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !737
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.du = add nsw i32 %i.dl, -1
  store i32 %i.du, ptr %i.di, align 8, !tbaa !30, !noalias !737
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dv = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4, !noalias !737
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dl, %bb.aj ], [ %i.dv, %bb.ak ]
  %i.dw = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dw, label %bb.al, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !129

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #20, !noalias !737
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ah, %bb.af
  %i.dx = load ptr, ptr %i.aj, align 8, !tbaa !201, !noalias !737
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !206, !noalias !737 ; 4 uses
  %.not.i.i42.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i42.i, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !235, !noalias !737
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 9
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !242, !range !161, !noalias !737, !noundef !162
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eg = load i8, ptr %i.ef, align 8, !range !161, !noalias !737
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = select i1 %i.ee, i1 %i.eh, i1 false, !prof !151
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !737
  %i.el = select i1 %i.ei, ptr %i.ek, ptr null, !prof !151
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.eb
  br label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %bb.am, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.i.i.i = phi ptr [ %i.em, %bb.am ], [ null, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 9 uses
  %i.en = load i64, ptr %i.cw, align 8, !tbaa !219, !noalias !737 ; 8 uses
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
  %i.eu = getelementptr i8, ptr %i.et, i64 4
  %19 = getelementptr i8, ptr %i.cu, i64 %i.es
  %20 = getelementptr i8, ptr %19, i64 %i.ep
  %i.ev = getelementptr i8, ptr %20, i64 4
  %bound0 = icmp ult ptr %.0.i.i.i, %i.eu
  %bound1 = icmp ult ptr %i.cv, %i.er
  %bound0154 = icmp ult ptr %.0.i.i.i, %i.ev
  %found.conflict157 = or i1 %bound0, %bound0154
  %conflict.rdx = and i1 %found.conflict157, %bound1
  br i1 %conflict.rdx, label %.lr.ph.i.preheader158, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eo, -8                      ; 3 uses
  %i.ew = load i32, ptr %i.cv, align 4, !tbaa !30, !alias.scope !739, !noalias !737
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ew, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %wide.load = load <4 x i32>, ptr %i.ex, align 4, !tbaa !30, !alias.scope !740, !noalias !737
  %wide.load156 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !30, !alias.scope !740, !noalias !737
  %i.ez = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.fa = sub nsw <4 x i32> %wide.load156, %broadcast.splat
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <4 x i32> %i.ez, ptr %i.fb, align 4, !tbaa !30, !alias.scope !741, !noalias !742
  store <4 x i32> %i.fa, ptr %i.fc, align 4, !tbaa !30, !alias.scope !741, !noalias !742
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !721

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader158

.lr.ph.i.preheader158:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03059.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.fe = add nuw i64 %i.en, 1
  %i.ff = sub i64 %i.en, %.03059.i.ph
  %xtraiter = and i64 %i.fe, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader158, %.lr.ph.i.prol
  %.03059.i.prol = phi i64 [ %i.fl, %.lr.ph.i.prol ], [ %.03059.i.ph, %.lr.ph.i.preheader158 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader158 ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.03059.i.prol
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !30, !noalias !737
  %i.fi = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !737
  %i.fj = sub nsw i32 %i.fh, %i.fi
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i.prol
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !30, !noalias !737
  %i.fl = add nuw i64 %.03059.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !722

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader158
  %.03059.i.unr = phi i64 [ %.03059.i.ph, %.lr.ph.i.preheader158 ], [ %i.fl, %.lr.ph.i.prol ]
  %i.fm = icmp ult i64 %i.ff, 3
  br i1 %i.fm, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !737
  %i.fn = load ptr, ptr %11, align 16, !tbaa !181, !noalias !737
  %i.fo = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !737
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.en
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !30, !noalias !737
  %i.fs = sext i32 %i.fr to i64
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %8, ptr noundef nonnull align 8 dereferenceable(120) %i.fn, i64 noundef %i.fp, i64 noundef %i.fs)
          to label %bb.ao unwind label %bb.bj, !noalias !737

bb.an:                                            ; preds = %bb.ae
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03059.i = phi i64 [ %i.gr, %.lr.ph.i ], [ %.03059.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.03059.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !30, !noalias !737
  %i.fw = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !737
  %i.fx = sub nsw i32 %i.fv, %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !30, !noalias !737
  %i.fz = add nuw i64 %.03059.i, 1                ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !30, !noalias !737
  %i.gc = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !737
  %i.gd = sub nsw i32 %i.gb, %i.gc
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.fz
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !30, !noalias !737
  %i.gf = add nuw i64 %.03059.i, 2                ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !30, !noalias !737
  %i.gi = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !737
  %i.gj = sub nsw i32 %i.gh, %i.gi
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gf
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !30, !noalias !737
  %i.gl = add nuw i64 %.03059.i, 3                ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !30, !noalias !737
  %i.go = load i32, ptr %i.cv, align 4, !tbaa !30, !noalias !737
  %i.gp = sub nsw i32 %i.gn, %i.go
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gl
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !30, !noalias !737
  %i.gr = add nuw i64 %.03059.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.gl, %i.en
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !723

bb.ao:                                            ; preds = %._crit_edge.i
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gu = load <2 x ptr>, ptr %8, align 16, !tbaa !141, !noalias !737
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false), !noalias !737
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !125, !noalias !737 ; 8 uses
  store <2 x ptr> %i.gu, ptr %11, align 16, !tbaa !141, !noalias !737
  %.not.i.i.i.i43.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i43.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 4 uses
  %i.gx = load atomic i64, ptr %i.gw acquire, align 8, !noalias !737 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 4294967297
  %i.gz = trunc i64 %i.gx to i32                  ; 2 uses
  br i1 %i.gy, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.gw, align 8, !tbaa !118, !noalias !737
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  store i32 0, ptr %i.ha, align 4, !tbaa !119, !noalias !737
  %i.hb = load ptr, ptr %i.gv, align 8, !tbaa !121, !noalias !737
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !737
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #20, !noalias !737, !inline_history !724
  %i.he = load ptr, ptr %i.gv, align 8, !tbaa !121, !noalias !737
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !737
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #20, !noalias !737, !inline_history !724
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.hh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !737
  %.not.i.i.i.i.i44.i = icmp eq i8 %i.hh, 0
  br i1 %.not.i.i.i.i.i44.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hi = add nsw i32 %i.gz, -1
  store i32 %i.hi, ptr %i.gw, align 8, !tbaa !30, !noalias !737
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

bb.at:                                            ; preds = %bb.ar
  %i.hj = atomicrmw volatile add ptr %i.gw, i32 -1 acq_rel, align 4, !noalias !737
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i46.i = phi i32 [ %i.gz, %bb.as ], [ %i.hj, %bb.at ]
  %i.hk = icmp eq i32 %.0.i.i.i.i.i.i46.i, 1
  br i1 %i.hk, label %bb.au, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, !prof !129

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #20, !noalias !737
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i: ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i, %bb.aq, %bb.ao
  %i.hl = load ptr, ptr %i.gs, align 8, !tbaa !125, !noalias !737 ; 8 uses
  %.not.i.i47.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i47.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 4 uses
  %i.hn = load atomic i64, ptr %i.hm acquire, align 8, !noalias !737 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 4294967297
  %i.hp = trunc i64 %i.hn to i32                  ; 2 uses
  br i1 %i.ho, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.hm, align 8, !tbaa !118, !noalias !737
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  store i32 0, ptr %i.hq, align 4, !tbaa !119, !noalias !737
  %i.hr = load ptr, ptr %i.hl, align 8, !tbaa !121, !noalias !737
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !737
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #20, !noalias !737, !inline_history !725
  %i.hu = load ptr, ptr %i.hl, align 8, !tbaa !121, !noalias !737
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !737
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #20, !noalias !737, !inline_history !725
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !737
  %.not.i.i.i48.i = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i48.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hy = add nsw i32 %i.hp, -1
  store i32 %i.hy, ptr %i.hm, align 8, !tbaa !30, !noalias !737
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

bb.az:                                            ; preds = %bb.ax
  %i.hz = atomicrmw volatile add ptr %i.hm, i32 -1 acq_rel, align 4, !noalias !737
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal12_GLOBAL__N_17CastMapINS_7MapTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

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
  %.pr = load i64, ptr %i.et, align 8, !tbaa !218, !noalias !1111 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %i.gy = load ptr, ptr %i.de, align 8, !tbaa !207, !noalias !1111
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %.pr
  %.not.i136 = icmp eq i64 %.pr, 0
  br i1 %.not.i136, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %.thread306, %bb.bl
  %i.ha = phi ptr [ %i.ex, %.thread306 ], [ %i.gz, %bb.bl ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !1111
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !219, !noalias !1111
  %i.hd = shl i64 %i.hc, 2
  %i.he = add i64 %i.hd, 4
  invoke void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.181") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.he)
          to label %.noexc141 unwind label %bb.cu

.noexc141:                                        ; preds = %bb.bm
  %i.hf = load ptr, ptr %10, align 8, !tbaa !150, !noalias !1111
  %i.hg = icmp eq ptr %i.hf, null                 ; 2 uses
  br i1 %i.hg, label %bb.bo, label %bb.bn, !prof !151

bb.bn:                                            ; preds = %.noexc141
  store ptr null, ptr %17, align 8, !tbaa !150, !alias.scope !1111
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.bw

bb.bo:                                            ; preds = %.noexc141
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hi = load <2 x ptr>, ptr %i.hh, align 8, !tbaa !141, !noalias !1112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false), !noalias !1111
  %i.hj = load ptr, ptr %i.cl, align 8, !tbaa !201, !noalias !1111 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !125, !noalias !1111 ; 8 uses
  store <2 x ptr> %i.hi, ptr %i.hk, align 8, !tbaa !141, !noalias !1111
  %.not.i.i.i.i.i137 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i.i137, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 4 uses
  %i.ho = load atomic i64, ptr %i.hn acquire, align 8, !noalias !1111 ; 2 uses
  %i.hp = icmp eq i64 %i.ho, 4294967297
  %i.hq = trunc i64 %i.ho to i32                  ; 2 uses
  br i1 %i.hp, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.hn, align 8, !tbaa !118, !noalias !1111
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  store i32 0, ptr %i.hr, align 4, !tbaa !119, !noalias !1111
  %i.hs = load ptr, ptr %i.hm, align 8, !tbaa !121, !noalias !1111
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !1111
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !1111, !inline_history !1083
  %i.hv = load ptr, ptr %i.hm, align 8, !tbaa !121, !noalias !1111
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !1111
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !1111, !inline_history !1083
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.hy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !1111
  %.not.i.i.i.i.i.i138 = icmp eq i8 %i.hy, 0
  br i1 %.not.i.i.i.i.i.i138, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hz = add nsw i32 %i.hq, -1
  store i32 %i.hz, ptr %i.hn, align 8, !tbaa !30, !noalias !1111
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139

bb.bt:                                            ; preds = %bb.br
  %i.ia = atomicrmw volatile add ptr %i.hn, i32 -1 acq_rel, align 4, !noalias !1111
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i.i.i.i140 = phi i32 [ %i.hq, %bb.bs ], [ %i.ia, %bb.bt ]
  %i.ib = icmp eq i32 %.0.i.i.i.i.i.i.i140, 1
  br i1 %i.ib, label %bb.bu, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !129

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !1111
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139, %bb.bq, %bb.bo
  %i.ic = load ptr, ptr %i.cl, align 8, !tbaa !201, !noalias !1111
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !206, !noalias !1111 ; 4 uses
  %.not.i.i42.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i42.i, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !235, !noalias !1111
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 9
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !242, !range !161, !noalias !1111, !noundef !162
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.il = load i8, ptr %i.ik, align 8, !range !161, !noalias !1111
  %i.im = trunc nuw i8 %i.il to i1
  %i.in = select i1 %i.ij, i1 %i.im, i1 false, !prof !151
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !1111
  %i.iq = select i1 %i.in, ptr %i.ip, ptr null, !prof !151
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ig
  br label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %bb.bv, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.i.i.i = phi ptr [ %i.ir, %bb.bv ], [ null, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 9 uses
  %i.is = load i64, ptr %i.hb, align 8, !tbaa !219, !noalias !1111 ; 8 uses
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
  %i.ix = getelementptr i8, ptr %i.ha, i64 4
  %38 = getelementptr i8, ptr %i.ha, i64 %i.iv
  %bound0.a = icmp ult ptr %.0.i.i.i, %i.ix
  %bound1 = icmp ult ptr %i.ha, %i.iw
  %bound0394 = icmp ult ptr %.0.i.i.i, %38
  %found.conflict397 = or i1 %bound0.a, %bound0394
  %conflict.rdx = and i1 %found.conflict397, %bound1
  br i1 %conflict.rdx, label %.lr.ph.i.preheader398, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  %i.iy = load i32, ptr %i.ha, align 4, !tbaa !30, !alias.scope !1113, !noalias !1111
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.iy, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %index ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load = load <4 x i32>, ptr %i.iz, align 4, !tbaa !30, !alias.scope !1114, !noalias !1111
  %wide.load396 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !30, !alias.scope !1114, !noalias !1111
  %i.jb = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.jc = sub nsw <4 x i32> %wide.load396, %broadcast.splat
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store <4 x i32> %i.jb, ptr %i.jd, align 4, !tbaa !30, !alias.scope !1115, !noalias !1116
  store <4 x i32> %i.jc, ptr %i.je, align 4, !tbaa !30, !alias.scope !1115, !noalias !1116
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jf = icmp eq i64 %index.next, %n.vec
  br i1 %i.jf, label %middle.block, label %vector.body, !llvm.loop !1088

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader398

.lr.ph.i.preheader398:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03059.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.jg = add nuw i64 %i.is, 1
  %i.jh = sub i64 %i.is, %.03059.i.ph
  %xtraiter = and i64 %i.jg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader398, %.lr.ph.i.prol
  %.03059.i.prol = phi i64 [ %i.jn, %.lr.ph.i.prol ], [ %.03059.i.ph, %.lr.ph.i.preheader398 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader398 ]
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.03059.i.prol
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !30, !noalias !1111
  %i.jk = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1111
  %i.jl = sub nsw i32 %i.jj, %i.jk
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i.prol
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !30, !noalias !1111
  %i.jn = add nuw i64 %.03059.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1089

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader398
  %.03059.i.unr = phi i64 [ %.03059.i.ph, %.lr.ph.i.preheader398 ], [ %i.jn, %.lr.ph.i.prol ]
  %i.jo = icmp ult i64 %i.jh, 3
  br i1 %i.jo, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !1111
  %i.jp = load ptr, ptr %15, align 16, !tbaa !181, !noalias !1111
  %i.jq = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1111
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.is
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !30, !noalias !1111
  %i.ju = sext i32 %i.jt to i64
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %11, ptr noundef nonnull align 8 dereferenceable(120) %i.jp, i64 noundef %i.jr, i64 noundef %i.ju)
          to label %bb.bx unwind label %bb.cs, !noalias !1111

bb.bw:                                            ; preds = %bb.bn
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03059.i = phi i64 [ %i.kt, %.lr.ph.i ], [ %.03059.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.03059.i
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !30, !noalias !1111
  %i.jy = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1111
  %i.jz = sub nsw i32 %i.jx, %i.jy
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !30, !noalias !1111
  %i.kb = add nuw i64 %.03059.i, 1                ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !30, !noalias !1111
  %i.ke = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1111
  %i.kf = sub nsw i32 %i.kd, %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.kb
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !30, !noalias !1111
  %i.kh = add nuw i64 %.03059.i, 2                ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.kh
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !30, !noalias !1111
  %i.kk = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1111
  %i.kl = sub nsw i32 %i.kj, %i.kk
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.kh
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !30, !noalias !1111
  %i.kn = add nuw i64 %.03059.i, 3                ; 3 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !30, !noalias !1111
  %i.kq = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1111
  %i.kr = sub nsw i32 %i.kp, %i.kq
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.kn
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !30, !noalias !1111
  %i.kt = add nuw i64 %.03059.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.kn, %i.is
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1090

bb.bx:                                            ; preds = %._crit_edge.i
  %i.ku = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.kv = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kw = load <2 x ptr>, ptr %11, align 16, !tbaa !141, !noalias !1111
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, i8 0, i64 16, i1 false), !noalias !1111
  %i.kx = load ptr, ptr %i.kv, align 8, !tbaa !125, !noalias !1111 ; 8 uses
  store <2 x ptr> %i.kw, ptr %15, align 16, !tbaa !141, !noalias !1111
  %.not.i.i.i.i43.i = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i.i43.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 4 uses
  %i.kz = load atomic i64, ptr %i.ky acquire, align 8, !noalias !1111 ; 2 uses
  %i.la = icmp eq i64 %i.kz, 4294967297
  %i.lb = trunc i64 %i.kz to i32                  ; 2 uses
  br i1 %i.la, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.ky, align 8, !tbaa !118, !noalias !1111
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 12
  store i32 0, ptr %i.lc, align 4, !tbaa !119, !noalias !1111
  %i.ld = load ptr, ptr %i.kx, align 8, !tbaa !121, !noalias !1111
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !1111
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(16) %i.kx) #20, !noalias !1111, !inline_history !1091
  %i.lg = load ptr, ptr %i.kx, align 8, !tbaa !121, !noalias !1111
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.li = load ptr, ptr %i.lh, align 8, !noalias !1111
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(16) %i.kx) #20, !noalias !1111, !inline_history !1091
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

bb.ca:                                            ; preds = %bb.by
  %i.lj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !1111
  %.not.i.i.i.i.i44.i = icmp eq i8 %i.lj, 0
  br i1 %.not.i.i.i.i.i44.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lk = add nsw i32 %i.lb, -1
  store i32 %i.lk, ptr %i.ky, align 8, !tbaa !30, !noalias !1111
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

bb.cc:                                            ; preds = %bb.ca
  %i.ll = atomicrmw volatile add ptr %i.ky, i32 -1 acq_rel, align 4, !noalias !1111
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i.i.i46.i = phi i32 [ %i.lb, %bb.cb ], [ %i.ll, %bb.cc ]
  %i.lm = icmp eq i32 %.0.i.i.i.i.i.i46.i, 1
  br i1 %i.lm, label %bb.cd, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, !prof !129

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kx) #20, !noalias !1111
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i: ; preds = %bb.cd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i, %bb.bz, %bb.bx
  %i.ln = load ptr, ptr %i.ku, align 8, !tbaa !125, !noalias !1111 ; 8 uses
  %.not.i.i47.i = icmp eq ptr %i.ln, null
  br i1 %.not.i.i47.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 4 uses
  %i.lp = load atomic i64, ptr %i.lo acquire, align 8, !noalias !1111 ; 2 uses
  %i.lq = icmp eq i64 %i.lp, 4294967297
  %i.lr = trunc i64 %i.lp to i32                  ; 2 uses
  br i1 %i.lq, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.lo, align 8, !tbaa !118, !noalias !1111
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  store i32 0, ptr %i.ls, align 4, !tbaa !119, !noalias !1111
  %i.lt = load ptr, ptr %i.ln, align 8, !tbaa !121, !noalias !1111
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8, !noalias !1111
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #20, !noalias !1111, !inline_history !1092
  %i.lw = load ptr, ptr %i.ln, align 8, !tbaa !121, !noalias !1111
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8, !noalias !1111
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #20, !noalias !1111, !inline_history !1092
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.cg:                                            ; preds = %bb.ce
  %i.lz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !1111
  %.not.i.i.i48.i = icmp eq i8 %i.lz, 0
  br i1 %.not.i.i.i48.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ma = add nsw i32 %i.lr, -1
  store i32 %i.ma, ptr %i.lo, align 8, !tbaa !30, !noalias !1111
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

bb.ci:                                            ; preds = %bb.cg
  %i.mb = atomicrmw volatile add ptr %i.lo, i32 -1 acq_rel, align 4, !noalias !1111
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i: ; preds = %bb.ci, %bb.ch
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal12_GLOBAL__N_17CastMapINS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

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
  %.pr = load i64, ptr %i.et, align 8, !tbaa !218, !noalias !1180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  %i.gy = load ptr, ptr %i.de, align 8, !tbaa !207, !noalias !1180
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %.pr
  %.not.i136 = icmp eq i64 %.pr, 0
  br i1 %.not.i136, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %.thread306, %bb.bl
  %i.ha = phi ptr [ %i.ex, %.thread306 ], [ %i.gz, %bb.bl ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !1180
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !219, !noalias !1180
  %i.hd = shl i64 %i.hc, 2
  %i.he = add i64 %i.hd, 4
  invoke void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.181") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.he)
          to label %.noexc141 unwind label %bb.cu

.noexc141:                                        ; preds = %bb.bm
  %i.hf = load ptr, ptr %10, align 8, !tbaa !150, !noalias !1180
  %i.hg = icmp eq ptr %i.hf, null                 ; 2 uses
  br i1 %i.hg, label %bb.bo, label %bb.bn, !prof !151

bb.bn:                                            ; preds = %.noexc141
  store ptr null, ptr %17, align 8, !tbaa !150, !alias.scope !1180
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.bw

bb.bo:                                            ; preds = %.noexc141
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hi = load <2 x ptr>, ptr %i.hh, align 8, !tbaa !141, !noalias !1181
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false), !noalias !1180
  %i.hj = load ptr, ptr %i.cl, align 8, !tbaa !201, !noalias !1180 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !125, !noalias !1180 ; 8 uses
  store <2 x ptr> %i.hi, ptr %i.hk, align 8, !tbaa !141, !noalias !1180
  %.not.i.i.i.i.i137 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i.i137, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 4 uses
  %i.ho = load atomic i64, ptr %i.hn acquire, align 8, !noalias !1180 ; 2 uses
  %i.hp = icmp eq i64 %i.ho, 4294967297
  %i.hq = trunc i64 %i.ho to i32                  ; 2 uses
  br i1 %i.hp, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.hn, align 8, !tbaa !118, !noalias !1180
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  store i32 0, ptr %i.hr, align 4, !tbaa !119, !noalias !1180
  %i.hs = load ptr, ptr %i.hm, align 8, !tbaa !121, !noalias !1180
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !1180
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !1180, !inline_history !1152
  %i.hv = load ptr, ptr %i.hm, align 8, !tbaa !121, !noalias !1180
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !1180
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !1180, !inline_history !1152
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.hy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !1180
  %.not.i.i.i.i.i.i138 = icmp eq i8 %i.hy, 0
  br i1 %.not.i.i.i.i.i.i138, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hz = add nsw i32 %i.hq, -1
  store i32 %i.hz, ptr %i.hn, align 8, !tbaa !30, !noalias !1180
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139

bb.bt:                                            ; preds = %bb.br
  %i.ia = atomicrmw volatile add ptr %i.hn, i32 -1 acq_rel, align 4, !noalias !1180
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i.i.i.i140 = phi i32 [ %i.hq, %bb.bs ], [ %i.ia, %bb.bt ]
  %i.ib = icmp eq i32 %.0.i.i.i.i.i.i.i140, 1
  br i1 %i.ib, label %bb.bu, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !129

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !1180
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139, %bb.bq, %bb.bo
  %i.ic = load ptr, ptr %i.cl, align 8, !tbaa !201, !noalias !1180
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !206, !noalias !1180 ; 4 uses
  %.not.i.i42.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i42.i, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !235, !noalias !1180
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 9
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !242, !range !161, !noalias !1180, !noundef !162
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.il = load i8, ptr %i.ik, align 8, !range !161, !noalias !1180
  %i.im = trunc nuw i8 %i.il to i1
  %i.in = select i1 %i.ij, i1 %i.im, i1 false, !prof !151
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !1180
  %i.iq = select i1 %i.in, ptr %i.ip, ptr null, !prof !151
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ig
  br label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %bb.bv, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.i.i.i = phi ptr [ %i.ir, %bb.bv ], [ null, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 9 uses
  %i.is = load i64, ptr %i.hb, align 8, !tbaa !219, !noalias !1180 ; 8 uses
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
  %i.ix = getelementptr i8, ptr %i.ha, i64 4
  %38 = getelementptr i8, ptr %i.ha, i64 %i.iv
  %bound0.a = icmp ult ptr %.0.i.i.i, %i.ix
  %bound1 = icmp ult ptr %i.ha, %i.iw
  %bound0394 = icmp ult ptr %.0.i.i.i, %38
  %found.conflict397 = or i1 %bound0.a, %bound0394
  %conflict.rdx = and i1 %found.conflict397, %bound1
  br i1 %conflict.rdx, label %.lr.ph.i.preheader398, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.it, -8                      ; 3 uses
  %i.iy = load i32, ptr %i.ha, align 4, !tbaa !30, !alias.scope !1182, !noalias !1180
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.iy, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %index ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load = load <4 x i32>, ptr %i.iz, align 4, !tbaa !30, !alias.scope !1183, !noalias !1180
  %wide.load396 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !30, !alias.scope !1183, !noalias !1180
  %i.jb = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.jc = sub nsw <4 x i32> %wide.load396, %broadcast.splat
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store <4 x i32> %i.jb, ptr %i.jd, align 4, !tbaa !30, !alias.scope !1184, !noalias !1185
  store <4 x i32> %i.jc, ptr %i.je, align 4, !tbaa !30, !alias.scope !1184, !noalias !1185
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jf = icmp eq i64 %index.next, %n.vec
  br i1 %i.jf, label %middle.block, label %vector.body, !llvm.loop !1157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.it, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader398

.lr.ph.i.preheader398:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03059.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.jg = add nuw i64 %i.is, 1
  %i.jh = sub i64 %i.is, %.03059.i.ph
  %xtraiter = and i64 %i.jg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader398, %.lr.ph.i.prol
  %.03059.i.prol = phi i64 [ %i.jn, %.lr.ph.i.prol ], [ %.03059.i.ph, %.lr.ph.i.preheader398 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader398 ]
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.03059.i.prol
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !30, !noalias !1180
  %i.jk = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1180
  %i.jl = sub nsw i32 %i.jj, %i.jk
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i.prol
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !30, !noalias !1180
  %i.jn = add nuw i64 %.03059.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1158

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader398
  %.03059.i.unr = phi i64 [ %.03059.i.ph, %.lr.ph.i.preheader398 ], [ %i.jn, %.lr.ph.i.prol ]
  %i.jo = icmp ult i64 %i.jh, 3
  br i1 %i.jo, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !1180
  %i.jp = load ptr, ptr %15, align 16, !tbaa !181, !noalias !1180
  %i.jq = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1180
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.is
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !30, !noalias !1180
  %i.ju = sext i32 %i.jt to i64
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %11, ptr noundef nonnull align 8 dereferenceable(120) %i.jp, i64 noundef %i.jr, i64 noundef %i.ju)
          to label %bb.bx unwind label %bb.cs, !noalias !1180

bb.bw:                                            ; preds = %bb.bn
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03059.i = phi i64 [ %i.kt, %.lr.ph.i ], [ %.03059.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.03059.i
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !30, !noalias !1180
  %i.jy = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1180
  %i.jz = sub nsw i32 %i.jx, %i.jy
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !30, !noalias !1180
  %i.kb = add nuw i64 %.03059.i, 1                ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !30, !noalias !1180
  %i.ke = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1180
  %i.kf = sub nsw i32 %i.kd, %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.kb
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !30, !noalias !1180
  %i.kh = add nuw i64 %.03059.i, 2                ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.kh
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !30, !noalias !1180
  %i.kk = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1180
  %i.kl = sub nsw i32 %i.kj, %i.kk
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.kh
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !30, !noalias !1180
  %i.kn = add nuw i64 %.03059.i, 3                ; 3 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !30, !noalias !1180
  %i.kq = load i32, ptr %i.ha, align 4, !tbaa !30, !noalias !1180
  %i.kr = sub nsw i32 %i.kp, %i.kq
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.kn
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !30, !noalias !1180
  %i.kt = add nuw i64 %.03059.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.kn, %i.is
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1159

bb.bx:                                            ; preds = %._crit_edge.i
  %i.ku = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.kv = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kw = load <2 x ptr>, ptr %11, align 16, !tbaa !141, !noalias !1180
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, i8 0, i64 16, i1 false), !noalias !1180
  %i.kx = load ptr, ptr %i.kv, align 8, !tbaa !125, !noalias !1180 ; 8 uses
  store <2 x ptr> %i.kw, ptr %15, align 16, !tbaa !141, !noalias !1180
  %.not.i.i.i.i43.i = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i.i43.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 4 uses
  %i.kz = load atomic i64, ptr %i.ky acquire, align 8, !noalias !1180 ; 2 uses
  %i.la = icmp eq i64 %i.kz, 4294967297
  %i.lb = trunc i64 %i.kz to i32                  ; 2 uses
  br i1 %i.la, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.ky, align 8, !tbaa !118, !noalias !1180
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 12
  store i32 0, ptr %i.lc, align 4, !tbaa !119, !noalias !1180
  %i.ld = load ptr, ptr %i.kx, align 8, !tbaa !121, !noalias !1180
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !1180
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(16) %i.kx) #20, !noalias !1180, !inline_history !1160
  %i.lg = load ptr, ptr %i.kx, align 8, !tbaa !121, !noalias !1180
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.li = load ptr, ptr %i.lh, align 8, !noalias !1180
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(16) %i.kx) #20, !noalias !1180, !inline_history !1160
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

bb.ca:                                            ; preds = %bb.by
  %i.lj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !1180
  %.not.i.i.i.i.i44.i = icmp eq i8 %i.lj, 0
  br i1 %.not.i.i.i.i.i44.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lk = add nsw i32 %i.lb, -1
  store i32 %i.lk, ptr %i.ky, align 8, !tbaa !30, !noalias !1180
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

bb.cc:                                            ; preds = %bb.ca
  %i.ll = atomicrmw volatile add ptr %i.ky, i32 -1 acq_rel, align 4, !noalias !1180
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i.i.i46.i = phi i32 [ %i.lb, %bb.cb ], [ %i.ll, %bb.cc ]
  %i.lm = icmp eq i32 %.0.i.i.i.i.i.i46.i, 1
  br i1 %i.lm, label %bb.cd, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, !prof !129

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kx) #20, !noalias !1180
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i: ; preds = %bb.cd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i, %bb.bz, %bb.bx
  %i.ln = load ptr, ptr %i.ku, align 8, !tbaa !125, !noalias !1180 ; 8 uses
  %.not.i.i47.i = icmp eq ptr %i.ln, null
  br i1 %.not.i.i47.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 4 uses
  %i.lp = load atomic i64, ptr %i.lo acquire, align 8, !noalias !1180 ; 2 uses
  %i.lq = icmp eq i64 %i.lp, 4294967297
  %i.lr = trunc i64 %i.lp to i32                  ; 2 uses
  br i1 %i.lq, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.lo, align 8, !tbaa !118, !noalias !1180
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  store i32 0, ptr %i.ls, align 4, !tbaa !119, !noalias !1180
  %i.lt = load ptr, ptr %i.ln, align 8, !tbaa !121, !noalias !1180
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8, !noalias !1180
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #20, !noalias !1180, !inline_history !1161
  %i.lw = load ptr, ptr %i.ln, align 8, !tbaa !121, !noalias !1180
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8, !noalias !1180
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #20, !noalias !1180, !inline_history !1161
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.cg:                                            ; preds = %bb.ce
  %i.lz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !128, !noalias !1180
  %.not.i.i.i48.i = icmp eq i8 %i.lz, 0
  br i1 %.not.i.i.i48.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ma = add nsw i32 %i.lr, -1
  store i32 %i.ma, ptr %i.lo, align 8, !tbaa !30, !noalias !1180
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

bb.ci:                                            ; preds = %bb.cg
  %i.mb = atomicrmw volatile add ptr %i.lo, i32 -1 acq_rel, align 4, !noalias !1180
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i: ; preds = %bb.ci, %bb.ch
end_hunk_3
