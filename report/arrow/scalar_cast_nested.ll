Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/scalar_cast_nested?download=true
inline.NumInlined: 3701
inline.NumDeleted: 1113
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_8ListTypeES4_E4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.k

bb.i:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.j:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.k:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 4 uses
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !76, !noalias !506
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !136 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60 ; 8 uses
  store <2 x ptr> %i.am, ptr %i.an, align 8, !tbaa !76
  %.not.i.i.i.i50 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i50, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.aq, align 8, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !54
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #20, !inline_history !3
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !56
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #20, !inline_history !3
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.at, %bb.p ], [ %i.bd, %bb.q ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.be, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !64

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n, %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !138, !noalias !507 ; 3 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !141, !noalias !507 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !60, !noalias !507 ; 4 uses
  %.not.i.i.i.i52 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i52, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63, !noalias !507
  %.not.i.i.i.i.i53 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i53, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !30, !noalias !507
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !30, !noalias !507
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit

bb.v:                                             ; preds = %bb.t
  %i.bp = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4, !noalias !507 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !142, !noalias !507
  %.not6.i = icmp eq ptr %i.bq, null
  br i1 %.not6.i, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #21
          to label %.noexc54 unwind label %bb.bn  ; 6 uses

.noexc54:                                         ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 1, ptr %i.bt, align 8, !tbaa !53, !noalias !508
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 1, ptr %i.bu, align 4, !tbaa !54, !noalias !508
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.br, align 8, !tbaa !56, !noalias !508
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bw = load ptr, ptr %i.bf, align 8, !tbaa !143, !noalias !508
  %i.bx = load i64, ptr %i.bs, align 8, !tbaa !144, !noalias !508
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, ptr noundef %i.bw, i64 noundef %i.bx)
          to label %_ZNK5arrow9ArraySpan9GetBufferEi.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !508

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc54
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 96) #22, !noalias !508
  br label %.body

_ZNK5arrow9ArraySpan9GetBufferEi.exit:            ; preds = %bb.v, %bb.u, %bb.s, %.noexc54, %bb.w
  %.sroa.0.0 = phi ptr [ %i.bv, %.noexc54 ], [ %i.bi, %bb.u ], [ %i.bi, %bb.s ], [ %i.bi, %bb.v ], [ null, %bb.w ]
  %.sroa.9.0 = phi ptr [ %i.br, %.noexc54 ], [ %i.bk, %bb.u ], [ null, %bb.s ], [ %i.bk, %bb.v ], [ null, %bb.w ]
  %i.bz = load ptr, ptr %i.al, align 8, !tbaa !136 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %.sroa.0.0, ptr %i.ca, align 8, !tbaa !145
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !60 ; 8 uses
  store ptr %.sroa.9.0, ptr %i.cb, align 8, !tbaa !60
  %.not.i.i.i.i55 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i55, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64, label %bb.y

bb.y:                                             ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.cd, align 8, !tbaa !53
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !54
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !56
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #20, !inline_history !3
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !56
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #20, !inline_history !3
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64

bb.aa:                                            ; preds = %bb.y
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i.i.i56 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i56, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57

bb.ac:                                            ; preds = %bb.aa
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i58 = phi i32 [ %i.cg, %bb.ab ], [ %i.cq, %bb.ac ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i58, 1
  br i1 %i.cr, label %bb.ad, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64, !prof !64

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64: ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57, %bb.z, %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !148
  invoke void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %i.ct)
          to label %bb.ae unwind label %bb.bo

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !153, !noalias !509 ; 3 uses
  %i.cw = load ptr, ptr %i.bf, align 8, !tbaa !142, !noalias !509 ; 3 uses
  %i.cx = getelementptr [4 x i8], ptr %i.cw, i64 %i.cv ; 15 uses
  %.not.i65 = icmp eq i64 %i.cv, 0
  br i1 %.not.i65, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !509
  %i.cy = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !154, !noalias !509
  %i.da = shl i64 %i.cz, 2
  %i.db = add i64 %i.da, 4
  invoke void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.181") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.db)
          to label %.noexc67 unwind label %bb.bp

.noexc67:                                         ; preds = %bb.af
  %i.dc = load ptr, ptr %7, align 8, !tbaa !85, !noalias !509
  %i.dd = icmp eq ptr %i.dc, null                 ; 2 uses
  br i1 %i.dd, label %bb.ai, label %bb.ag, !prof !86

bb.ag:                                            ; preds = %.noexc67
  store ptr null, ptr %12, align 8, !tbaa !85, !alias.scope !509
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ai:                                            ; preds = %.noexc67
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dg = load <2 x ptr>, ptr %i.df, align 8, !tbaa !76, !noalias !510
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false), !noalias !509
  %i.dh = load ptr, ptr %i.al, align 8, !tbaa !136, !noalias !509 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !60, !noalias !509 ; 8 uses
  store <2 x ptr> %i.dg, ptr %i.di, align 8, !tbaa !76, !noalias !509
  %.not.i.i.i.i.i66 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i66, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8, !noalias !509 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.dl, align 8, !tbaa !53, !noalias !509
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !54, !noalias !509
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !56, !noalias !509
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !509
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #20, !noalias !509, !inline_history !489
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !56, !noalias !509
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !509
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #20, !noalias !509, !inline_history !489
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63, !noalias !509
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !30, !noalias !509
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4, !noalias !509
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.do, %bb.am ], [ %i.dy, %bb.an ]
  %i.dz = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dz, label %bb.ao, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !64

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #20, !noalias !509
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ak, %bb.ai
  %i.ea = load ptr, ptr %i.al, align 8, !tbaa !136, !noalias !509
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !141, !noalias !509 ; 4 uses
  %.not.i.i42.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i42.i, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !170, !noalias !509
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 9
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !177, !range !96, !noalias !509, !noundef !97
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ej = load i8, ptr %i.ei, align 8, !range !96, !noalias !509
  %i.ek = trunc nuw i8 %i.ej to i1
  %i.el = select i1 %i.eh, i1 %i.ek, i1 false, !prof !86
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !noalias !509
  %i.eo = select i1 %i.el, ptr %i.en, ptr null, !prof !86
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.ee
  br label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %bb.ap, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.i.i.i = phi ptr [ %i.ep, %bb.ap ], [ null, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 9 uses
  %i.eq = load i64, ptr %i.cy, align 8, !tbaa !154, !noalias !509 ; 8 uses
  %.not3758.i = icmp slt i64 %i.eq, 0
  br i1 %.not3758.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  %i.er = add nuw i64 %i.eq, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.eq, 23
  br i1 %min.iters.check, label %.lr.ph.i.preheader155, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.es = shl i64 %i.eq, 2                        ; 2 uses
  %i.et = getelementptr i8, ptr %.0.i.i.i, i64 %i.es
  %scevgep = getelementptr i8, ptr %i.et, i64 4
  %i.eu = shl i64 %i.cv, 2                        ; 2 uses
  %i.ev = getelementptr i8, ptr %i.cw, i64 %i.eu
  %scevgep149 = getelementptr i8, ptr %i.ev, i64 4
  %i.ew = getelementptr i8, ptr %i.cw, i64 %i.eu
  %i.ex = getelementptr i8, ptr %i.ew, i64 %i.es
  %scevgep150 = getelementptr i8, ptr %i.ex, i64 4
  %bound0 = icmp ult ptr %.0.i.i.i, %scevgep149
  %bound1 = icmp ult ptr %i.cx, %scevgep
  %bound0151 = icmp ult ptr %.0.i.i.i, %scevgep150
  %found.conflict157 = or i1 %bound0, %bound0151
  %found.conflict153 = and i1 %found.conflict157, %bound1
  br i1 %found.conflict153, label %.lr.ph.i.preheader155, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.er, -8                      ; 3 uses
  %i.ey = load i32, ptr %i.cx, align 4, !tbaa !30, !alias.scope !511, !noalias !509
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ey, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %wide.load = load <4 x i32>, ptr %i.ez, align 4, !tbaa !30, !alias.scope !512, !noalias !509
  %wide.load154 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !30, !alias.scope !512, !noalias !509
  %i.fb = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.fc = sub nsw <4 x i32> %wide.load154, %broadcast.splat
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <4 x i32> %i.fb, ptr %i.fd, align 4, !tbaa !30, !alias.scope !513, !noalias !514
  store <4 x i32> %i.fc, ptr %i.fe, align 4, !tbaa !30, !alias.scope !513, !noalias !514
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !494

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.er, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader155

.lr.ph.i.preheader155:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03059.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.fg = add nuw i64 %i.eq, 1
  %i.fh = sub i64 %i.eq, %.03059.i.ph
  %xtraiter = and i64 %i.fg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader155, %.lr.ph.i.prol
  %.03059.i.prol = phi i64 [ %i.fn, %.lr.ph.i.prol ], [ %.03059.i.ph, %.lr.ph.i.preheader155 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader155 ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.03059.i.prol
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !30, !noalias !509
  %i.fk = load i32, ptr %i.cx, align 4, !tbaa !30, !noalias !509
  %i.fl = sub nsw i32 %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i.prol
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !30, !noalias !509
  %i.fn = add nuw i64 %.03059.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !495

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader155
  %.03059.i.unr = phi i64 [ %.03059.i.ph, %.lr.ph.i.preheader155 ], [ %i.fn, %.lr.ph.i.prol ]
  %i.fo = icmp ult i64 %i.fh, 3
  br i1 %i.fo, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !509
  %i.fp = load ptr, ptr %11, align 16, !tbaa !116, !noalias !509
  %i.fq = load i32, ptr %i.cx, align 4, !tbaa !30, !noalias !509
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.eq
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !30, !noalias !509
  %i.fu = sext i32 %i.ft to i64
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %8, ptr noundef nonnull align 8 dereferenceable(120) %i.fp, i64 noundef %i.fr, i64 noundef %i.fu)
          to label %bb.aq unwind label %bb.bl, !noalias !509

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03059.i = phi i64 [ %i.gs, %.lr.ph.i ], [ %.03059.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.03059.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !30, !noalias !509
  %i.fx = load i32, ptr %i.cx, align 4, !tbaa !30, !noalias !509
  %i.fy = sub nsw i32 %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !30, !noalias !509
  %i.ga = add nuw i64 %.03059.i, 1                ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !30, !noalias !509
  %i.gd = load i32, ptr %i.cx, align 4, !tbaa !30, !noalias !509
  %i.ge = sub nsw i32 %i.gc, %i.gd
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.ga
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !30, !noalias !509
  %i.gg = add nuw i64 %.03059.i, 2                ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !30, !noalias !509
  %i.gj = load i32, ptr %i.cx, align 4, !tbaa !30, !noalias !509
  %i.gk = sub nsw i32 %i.gi, %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gg
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !30, !noalias !509
  %i.gm = add nuw i64 %.03059.i, 3                ; 3 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !30, !noalias !509
  %i.gp = load i32, ptr %i.cx, align 4, !tbaa !30, !noalias !509
  %i.gq = sub nsw i32 %i.go, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gm
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !30, !noalias !509
  %i.gs = add nuw i64 %.03059.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.gm, %i.eq
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !496

bb.aq:                                            ; preds = %._crit_edge.i
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gv = load <2 x ptr>, ptr %8, align 16, !tbaa !76, !noalias !509
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false), !noalias !509
  %i.gw = load ptr, ptr %i.gu, align 8, !tbaa !60, !noalias !509 ; 8 uses
  store <2 x ptr> %i.gv, ptr %11, align 16, !tbaa !76, !noalias !509
  %.not.i.i.i.i43.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i43.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 4 uses
  %i.gy = load atomic i64, ptr %i.gx acquire, align 8, !noalias !509 ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 4294967297
  %i.ha = trunc i64 %i.gy to i32                  ; 2 uses
  br i1 %i.gz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.gx, align 8, !tbaa !53, !noalias !509
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  store i32 0, ptr %i.hb, align 4, !tbaa !54, !noalias !509
  %i.hc = load ptr, ptr %i.gw, align 8, !tbaa !56, !noalias !509
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !509
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #20, !noalias !509, !inline_history !497
  %i.hf = load ptr, ptr %i.gw, align 8, !tbaa !56, !noalias !509
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !509
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #20, !noalias !509, !inline_history !497
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.hi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63, !noalias !509
  %.not.i.i.i.i.i44.i = icmp eq i8 %i.hi, 0
  br i1 %.not.i.i.i.i.i44.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hj = add nsw i32 %i.ha, -1
  store i32 %i.hj, ptr %i.gx, align 8, !tbaa !30, !noalias !509
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

bb.av:                                            ; preds = %bb.at
  %i.hk = atomicrmw volatile add ptr %i.gx, i32 -1 acq_rel, align 4, !noalias !509
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i.i46.i = phi i32 [ %i.ha, %bb.au ], [ %i.hk, %bb.av ]
  %i.hl = icmp eq i32 %.0.i.i.i.i.i.i46.i, 1
  br i1 %i.hl, label %bb.aw, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, !prof !64

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #20, !noalias !509
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i: ; preds = %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i, %bb.as, %bb.aq
  %i.hm = load ptr, ptr %i.gt, align 8, !tbaa !60, !noalias !509 ; 8 uses
  %.not.i.i47.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i47.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 4 uses
  %i.ho = load atomic i64, ptr %i.hn acquire, align 8, !noalias !509 ; 2 uses
  %i.hp = icmp eq i64 %i.ho, 4294967297
  %i.hq = trunc i64 %i.ho to i32                  ; 2 uses
  br i1 %i.hp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.hn, align 8, !tbaa !53, !noalias !509
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  store i32 0, ptr %i.hr, align 4, !tbaa !54, !noalias !509
  %i.hs = load ptr, ptr %i.hm, align 8, !tbaa !56, !noalias !509
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !509
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !509, !inline_history !498
  %i.hv = load ptr, ptr %i.hm, align 8, !tbaa !56, !noalias !509
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !509
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !509, !inline_history !498
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.hy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63, !noalias !509
  %.not.i.i.i48.i = icmp eq i8 %i.hy, 0
  br i1 %.not.i.i.i48.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hz = add nsw i32 %i.hq, -1
  store i32 %i.hz, ptr %i.hn, align 8, !tbaa !30, !noalias !509
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

bb.bb:                                            ; preds = %bb.az
  %i.ia = atomicrmw volatile add ptr %i.hn, i32 -1 acq_rel, align 4, !noalias !509
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i50.i = phi i32 [ %i.hq, %bb.ba ], [ %i.ia, %bb.bb ]
  %i.ib = icmp eq i32 %.0.i.i.i.i50.i, 1
  br i1 %i.ib, label %bb.bc, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !64

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !509
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal12_GLOBAL__N_18CastListINS_12ListViewTypeENS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.k

bb.i:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.j:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.k:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 4 uses
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !76, !noalias !607
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !136 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60 ; 8 uses
  store <2 x ptr> %i.am, ptr %i.an, align 8, !tbaa !76
  %.not.i.i.i.i50 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i50, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.aq, align 8, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !54
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #20, !inline_history !3
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !56
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #20, !inline_history !3
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.at, %bb.p ], [ %i.bd, %bb.q ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.be, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !64

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n, %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !138, !noalias !608 ; 3 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !141, !noalias !608 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !60, !noalias !608 ; 4 uses
  %.not.i.i.i.i52 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i52, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63, !noalias !608
  %.not.i.i.i.i.i53 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i53, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !30, !noalias !608
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !30, !noalias !608
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit

bb.v:                                             ; preds = %bb.t
  %i.bp = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4, !noalias !608 ; 0 uses
  br label %_ZNK5arrow9ArraySpan9GetBufferEi.exit

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !142, !noalias !608
  %.not6.i = icmp eq ptr %i.bq, null
  br i1 %.not6.i, label %_ZNK5arrow9ArraySpan9GetBufferEi.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #21
          to label %.noexc54 unwind label %bb.bn  ; 6 uses

.noexc54:                                         ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 1, ptr %i.bt, align 8, !tbaa !53, !noalias !609
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 1, ptr %i.bu, align 4, !tbaa !54, !noalias !609
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.br, align 8, !tbaa !56, !noalias !609
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bw = load ptr, ptr %i.bf, align 8, !tbaa !143, !noalias !609
  %i.bx = load i64, ptr %i.bs, align 8, !tbaa !144, !noalias !609
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, ptr noundef %i.bw, i64 noundef %i.bx)
          to label %_ZNK5arrow9ArraySpan9GetBufferEi.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !609

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc54
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 96) #22, !noalias !609
  br label %.body

_ZNK5arrow9ArraySpan9GetBufferEi.exit:            ; preds = %bb.v, %bb.u, %bb.s, %.noexc54, %bb.w
  %.sroa.0.0 = phi ptr [ %i.bv, %.noexc54 ], [ %i.bi, %bb.u ], [ %i.bi, %bb.s ], [ %i.bi, %bb.v ], [ null, %bb.w ]
  %.sroa.9.0 = phi ptr [ %i.br, %.noexc54 ], [ %i.bk, %bb.u ], [ null, %bb.s ], [ %i.bk, %bb.v ], [ null, %bb.w ]
  %i.bz = load ptr, ptr %i.al, align 8, !tbaa !136 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %.sroa.0.0, ptr %i.ca, align 8, !tbaa !145
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !60 ; 8 uses
  store ptr %.sroa.9.0, ptr %i.cb, align 8, !tbaa !60
  %.not.i.i.i.i55 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i55, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64, label %bb.y

bb.y:                                             ; preds = %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.cd, align 8, !tbaa !53
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !54
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !56
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #20, !inline_history !3
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !56
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #20, !inline_history !3
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64

bb.aa:                                            ; preds = %bb.y
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i.i.i56 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i56, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57

bb.ac:                                            ; preds = %bb.aa
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i58 = phi i32 [ %i.cg, %bb.ab ], [ %i.cq, %bb.ac ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i58, 1
  br i1 %i.cr, label %bb.ad, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64, !prof !64

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #20
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64: ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57, %bb.z, %_ZNK5arrow9ArraySpan9GetBufferEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !148
  invoke void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %i.ct)
          to label %bb.ae unwind label %bb.bo

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !153, !noalias !610 ; 3 uses
  %i.cw = load ptr, ptr %i.bf, align 8, !tbaa !142, !noalias !610 ; 3 uses
  %i.cx = getelementptr [4 x i8], ptr %i.cw, i64 %i.cv ; 15 uses
  %.not.i65 = icmp eq i64 %i.cv, 0
  br i1 %.not.i65, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !610
  %i.cy = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !154, !noalias !610
  %i.da = shl i64 %i.cz, 2
  %i.db = add i64 %i.da, 4
  invoke void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.181") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.db)
          to label %.noexc67 unwind label %bb.bp

.noexc67:                                         ; preds = %bb.af
  %i.dc = load ptr, ptr %7, align 8, !tbaa !85, !noalias !610
  %i.dd = icmp eq ptr %i.dc, null                 ; 2 uses
  br i1 %i.dd, label %bb.ai, label %bb.ag, !prof !86

bb.ag:                                            ; preds = %.noexc67
  store ptr null, ptr %12, align 8, !tbaa !85, !alias.scope !610
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ai:                                            ; preds = %.noexc67
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dg = load <2 x ptr>, ptr %i.df, align 8, !tbaa !76, !noalias !611
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false), !noalias !610
  %i.dh = load ptr, ptr %i.al, align 8, !tbaa !136, !noalias !610 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !60, !noalias !610 ; 8 uses
  store <2 x ptr> %i.dg, ptr %i.di, align 8, !tbaa !76, !noalias !610
  %.not.i.i.i.i.i66 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i66, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8, !noalias !610 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.dl, align 8, !tbaa !53, !noalias !610
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !54, !noalias !610
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !56, !noalias !610
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !610
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #20, !noalias !610, !inline_history !590
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !56, !noalias !610
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !610
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #20, !noalias !610, !inline_history !590
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63, !noalias !610
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !30, !noalias !610
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4, !noalias !610
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.do, %bb.am ], [ %i.dy, %bb.an ]
  %i.dz = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dz, label %bb.ao, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !64

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #20, !noalias !610
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ak, %bb.ai
  %i.ea = load ptr, ptr %i.al, align 8, !tbaa !136, !noalias !610
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !141, !noalias !610 ; 4 uses
  %.not.i.i42.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i42.i, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !170, !noalias !610
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 9
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !177, !range !96, !noalias !610, !noundef !97
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ej = load i8, ptr %i.ei, align 8, !range !96, !noalias !610
  %i.ek = trunc nuw i8 %i.ej to i1
  %i.el = select i1 %i.eh, i1 %i.ek, i1 false, !prof !86
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !noalias !610
  %i.eo = select i1 %i.el, ptr %i.en, ptr null, !prof !86
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.ee
  br label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %bb.ap, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.i.i.i = phi ptr [ %i.ep, %bb.ap ], [ null, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 9 uses
  %i.eq = load i64, ptr %i.cy, align 8, !tbaa !154, !noalias !610 ; 8 uses
  %.not3758.i = icmp slt i64 %i.eq, 0
  br i1 %.not3758.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  %i.er = add nuw i64 %i.eq, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.eq, 23
  br i1 %min.iters.check, label %.lr.ph.i.preheader155, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.es = shl i64 %i.eq, 2                        ; 2 uses
  %i.et = getelementptr i8, ptr %.0.i.i.i, i64 %i.es
  %scevgep = getelementptr i8, ptr %i.et, i64 4
  %i.eu = shl i64 %i.cv, 2                        ; 2 uses
  %i.ev = getelementptr i8, ptr %i.cw, i64 %i.eu
  %scevgep149 = getelementptr i8, ptr %i.ev, i64 4
  %i.ew = getelementptr i8, ptr %i.cw, i64 %i.eu
  %i.ex = getelementptr i8, ptr %i.ew, i64 %i.es
  %scevgep150 = getelementptr i8, ptr %i.ex, i64 4
  %bound0 = icmp ult ptr %.0.i.i.i, %scevgep149
  %bound1 = icmp ult ptr %i.cx, %scevgep
  %bound0151 = icmp ult ptr %.0.i.i.i, %scevgep150
  %found.conflict157 = or i1 %bound0, %bound0151
  %found.conflict153 = and i1 %found.conflict157, %bound1
  br i1 %found.conflict153, label %.lr.ph.i.preheader155, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.er, -8                      ; 3 uses
  %i.ey = load i32, ptr %i.cx, align 4, !tbaa !30, !alias.scope !612, !noalias !610
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ey, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %wide.load = load <4 x i32>, ptr %i.ez, align 4, !tbaa !30, !alias.scope !613, !noalias !610
  %wide.load154 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !30, !alias.scope !613, !noalias !610
  %i.fb = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.fc = sub nsw <4 x i32> %wide.load154, %broadcast.splat
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <4 x i32> %i.fb, ptr %i.fd, align 4, !tbaa !30, !alias.scope !614, !noalias !615
  store <4 x i32> %i.fc, ptr %i.fe, align 4, !tbaa !30, !alias.scope !614, !noalias !615
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !595

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.er, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader155

.lr.ph.i.preheader155:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03059.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.fg = add nuw i64 %i.eq, 1
  %i.fh = sub i64 %i.eq, %.03059.i.ph
  %xtraiter = and i64 %i.fg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader155, %.lr.ph.i.prol
  %.03059.i.prol = phi i64 [ %i.fn, %.lr.ph.i.prol ], [ %.03059.i.ph, %.lr.ph.i.preheader155 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader155 ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.03059.i.prol
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !30, !noalias !610
  %i.fk = load i32, ptr %i.cx, align 4, !tbaa !30, !noalias !610
  %i.fl = sub nsw i32 %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i.prol
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !30, !noalias !610
  %i.fn = add nuw i64 %.03059.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !596

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader155
  %.03059.i.unr = phi i64 [ %.03059.i.ph, %.lr.ph.i.preheader155 ], [ %i.fn, %.lr.ph.i.prol ]
  %i.fo = icmp ult i64 %i.fh, 3
  br i1 %i.fo, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !610
  %i.fp = load ptr, ptr %11, align 16, !tbaa !116, !noalias !610
  %i.fq = load i32, ptr %i.cx, align 4, !tbaa !30, !noalias !610
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.eq
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !30, !noalias !610
  %i.fu = sext i32 %i.ft to i64
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %8, ptr noundef nonnull align 8 dereferenceable(120) %i.fp, i64 noundef %i.fr, i64 noundef %i.fu)
          to label %bb.aq unwind label %bb.bl, !noalias !610

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03059.i = phi i64 [ %i.gs, %.lr.ph.i ], [ %.03059.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.03059.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !30, !noalias !610
  %i.fx = load i32, ptr %i.cx, align 4, !tbaa !30, !noalias !610
  %i.fy = sub nsw i32 %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !30, !noalias !610
  %i.ga = add nuw i64 %.03059.i, 1                ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !30, !noalias !610
  %i.gd = load i32, ptr %i.cx, align 4, !tbaa !30, !noalias !610
  %i.ge = sub nsw i32 %i.gc, %i.gd
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.ga
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !30, !noalias !610
  %i.gg = add nuw i64 %.03059.i, 2                ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !30, !noalias !610
  %i.gj = load i32, ptr %i.cx, align 4, !tbaa !30, !noalias !610
  %i.gk = sub nsw i32 %i.gi, %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gg
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !30, !noalias !610
  %i.gm = add nuw i64 %.03059.i, 3                ; 3 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !30, !noalias !610
  %i.gp = load i32, ptr %i.cx, align 4, !tbaa !30, !noalias !610
  %i.gq = sub nsw i32 %i.go, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.gm
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !30, !noalias !610
  %i.gs = add nuw i64 %.03059.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.gm, %i.eq
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !597

bb.aq:                                            ; preds = %._crit_edge.i
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gv = load <2 x ptr>, ptr %8, align 16, !tbaa !76, !noalias !610
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false), !noalias !610
  %i.gw = load ptr, ptr %i.gu, align 8, !tbaa !60, !noalias !610 ; 8 uses
  store <2 x ptr> %i.gv, ptr %11, align 16, !tbaa !76, !noalias !610
  %.not.i.i.i.i43.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i43.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 4 uses
  %i.gy = load atomic i64, ptr %i.gx acquire, align 8, !noalias !610 ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 4294967297
  %i.ha = trunc i64 %i.gy to i32                  ; 2 uses
  br i1 %i.gz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.gx, align 8, !tbaa !53, !noalias !610
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  store i32 0, ptr %i.hb, align 4, !tbaa !54, !noalias !610
  %i.hc = load ptr, ptr %i.gw, align 8, !tbaa !56, !noalias !610
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !610
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #20, !noalias !610, !inline_history !598
  %i.hf = load ptr, ptr %i.gw, align 8, !tbaa !56, !noalias !610
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !610
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #20, !noalias !610, !inline_history !598
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.hi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63, !noalias !610
  %.not.i.i.i.i.i44.i = icmp eq i8 %i.hi, 0
  br i1 %.not.i.i.i.i.i44.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hj = add nsw i32 %i.ha, -1
  store i32 %i.hj, ptr %i.gx, align 8, !tbaa !30, !noalias !610
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

bb.av:                                            ; preds = %bb.at
  %i.hk = atomicrmw volatile add ptr %i.gx, i32 -1 acq_rel, align 4, !noalias !610
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i.i46.i = phi i32 [ %i.ha, %bb.au ], [ %i.hk, %bb.av ]
  %i.hl = icmp eq i32 %.0.i.i.i.i.i.i46.i, 1
  br i1 %i.hl, label %bb.aw, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, !prof !64

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #20, !noalias !610
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i: ; preds = %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i, %bb.as, %bb.aq
  %i.hm = load ptr, ptr %i.gt, align 8, !tbaa !60, !noalias !610 ; 8 uses
  %.not.i.i47.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i47.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 4 uses
  %i.ho = load atomic i64, ptr %i.hn acquire, align 8, !noalias !610 ; 2 uses
  %i.hp = icmp eq i64 %i.ho, 4294967297
  %i.hq = trunc i64 %i.ho to i32                  ; 2 uses
  br i1 %i.hp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.hn, align 8, !tbaa !53, !noalias !610
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  store i32 0, ptr %i.hr, align 4, !tbaa !54, !noalias !610
  %i.hs = load ptr, ptr %i.hm, align 8, !tbaa !56, !noalias !610
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !610
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !610, !inline_history !599
  %i.hv = load ptr, ptr %i.hm, align 8, !tbaa !56, !noalias !610
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !610
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !610, !inline_history !599
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.hy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63, !noalias !610
  %.not.i.i.i48.i = icmp eq i8 %i.hy, 0
  br i1 %.not.i.i.i48.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hz = add nsw i32 %i.hq, -1
  store i32 %i.hz, ptr %i.hn, align 8, !tbaa !30, !noalias !610
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

bb.bb:                                            ; preds = %bb.az
  %i.ia = atomicrmw volatile add ptr %i.hn, i32 -1 acq_rel, align 4, !noalias !610
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i50.i = phi i32 [ %i.hq, %bb.ba ], [ %i.ia, %bb.bb ]
  %i.ib = icmp eq i32 %.0.i.i.i.i50.i, 1
  br i1 %i.ib, label %bb.bc, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !64

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #20, !noalias !610
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal12_GLOBAL__N_17CastMapINS_7MapTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %.not66 = icmp eq ptr %i.ev, null
  br i1 %.not66, label %.thread306, label %bb.ap

.thread306:                                       ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.ew = load ptr, ptr %i.de, align 8, !tbaa !142, !noalias !969
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.eu
  br label %bb.bo

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.ey = load ptr, ptr %1, align 8, !tbaa !128
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !133
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !154
  invoke void @_ZN5arrow8internal10CopyBitmapEPNS_10MemoryPoolEPKhlll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %16, ptr noundef %i.ez, ptr noundef nonnull %i.ev, i64 noundef %i.eu, i64 noundef %i.fb, i64 noundef 0)
          to label %bb.aq unwind label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.fc = load ptr, ptr %16, align 8, !tbaa !85
  %i.fd = icmp eq ptr %i.fc, null                 ; 2 uses
  br i1 %i.fd, label %bb.ay, label %bb.ar, !prof !86

bb.ar:                                            ; preds = %bb.aq
  store ptr null, ptr %0, align 8, !tbaa !85
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.ax

bb.as:                                            ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %bb.u
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.ag
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit122
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.jz

bb.aw:                                            ; preds = %bb.ap
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.ax:                                            ; preds = %bb.ar
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.jy

bb.ay:                                            ; preds = %bb.aq
  %i.fk = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.fl = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !76, !noalias !970
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i8 0, i64 16, i1 false)
  %i.fm = load ptr, ptr %i.cl, align 8, !tbaa !136 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !60 ; 8 uses
  store <2 x ptr> %i.fl, ptr %i.fm, align 8, !tbaa !76
  %.not.i.i.i.i124 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i124, label %_ZN5arrow6StatusC2ERKS0_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 4 uses
  %i.fq = load atomic i64, ptr %i.fp acquire, align 8 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 4294967297
  %i.fs = trunc i64 %i.fq to i32                  ; 2 uses
  br i1 %i.fr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.fp, align 8, !tbaa !53
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  store i32 0, ptr %i.ft, align 4, !tbaa !54
  %i.fu = load ptr, ptr %i.fo, align 8, !tbaa !56
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #20, !inline_history !3
  %i.fx = load ptr, ptr %i.fo, align 8, !tbaa !56
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #20, !inline_history !3
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.bb:                                            ; preds = %bb.az
  %i.ga = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i.i.i125 = icmp eq i8 %i.ga, 0
  br i1 %.not.i.i.i.i.i125, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gb = add nsw i32 %i.fs, -1
  store i32 %i.gb, ptr %i.fp, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126

bb.bd:                                            ; preds = %bb.bb
  %i.gc = atomicrmw volatile add ptr %i.fp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i127 = phi i32 [ %i.fs, %bb.bc ], [ %i.gc, %bb.bd ]
  %i.gd = icmp eq i32 %.0.i.i.i.i.i.i127, 1
  br i1 %i.gd, label %bb.be, label %_ZN5arrow6StatusC2ERKS0_.exit, !prof !64

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #20
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.ay, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126, %bb.be, %bb.ar
  %i.ge = load ptr, ptr %16, align 8, !tbaa !85   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.bf, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !86

bb.bf:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !60 ; 8 uses
  %.not.i.i.i.i.i134 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i134, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 4 uses
  %i.gj = load atomic i64, ptr %i.gi acquire, align 8 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 4294967297
  %i.gl = trunc i64 %i.gj to i32                  ; 2 uses
  br i1 %i.gk, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.gi, align 8, !tbaa !53
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i32 0, ptr %i.gm, align 4, !tbaa !54
  %i.gn = load ptr, ptr %i.gh, align 8, !tbaa !56
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #20, !inline_history !6
  %i.gq = load ptr, ptr %i.gh, align 8, !tbaa !56
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #20, !inline_history !6
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.bi:                                            ; preds = %bb.bg
  %i.gt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i.i.i.i = icmp eq i8 %i.gt, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gu = add nsw i32 %i.gl, -1
  store i32 %i.gu, ptr %i.gi, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.gv = atomicrmw volatile add ptr %i.gi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gl, %bb.bj ], [ %i.gv, %bb.bk ]
  %i.gw = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.gw, label %bb.bl, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !64

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bh, %bb.bf
  %.pr.i = load ptr, ptr %16, align 8, !tbaa !85  ; 2 uses
  %.not.i.i135 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i135, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !182

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.gx = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.ge, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !95, !range !96, !noundef !97
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %16) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br i1 %i.fd, label %bb.bn, label %.critedge

bb.bn:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %.pr = load i64, ptr %i.et, align 8, !tbaa !153, !noalias !971 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  %i.hb = load ptr, ptr %i.de, align 8, !tbaa !142, !noalias !971
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %.pr
  %.not.i136 = icmp eq i64 %.pr, 0
  br i1 %.not.i136, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %.thread306, %bb.bn
  %i.hd = phi ptr [ %i.ex, %.thread306 ], [ %i.hc, %bb.bn ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !971
  %i.he = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !154, !noalias !971
  %i.hg = shl i64 %i.hf, 2
  %i.hh = add i64 %i.hg, 4
  invoke void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.181") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hh)
          to label %.noexc141 unwind label %bb.cw

.noexc141:                                        ; preds = %bb.bo
  %i.hi = load ptr, ptr %10, align 8, !tbaa !85, !noalias !971
  %i.hj = icmp eq ptr %i.hi, null                 ; 2 uses
  br i1 %i.hj, label %bb.br, label %bb.bp, !prof !86

bb.bp:                                            ; preds = %.noexc141
  store ptr null, ptr %17, align 8, !tbaa !85, !alias.scope !971
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.br:                                            ; preds = %.noexc141
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hm = load <2 x ptr>, ptr %i.hl, align 8, !tbaa !76, !noalias !972
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, i8 0, i64 16, i1 false), !noalias !971
  %i.hn = load ptr, ptr %i.cl, align 8, !tbaa !136, !noalias !971 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !60, !noalias !971 ; 8 uses
  store <2 x ptr> %i.hm, ptr %i.ho, align 8, !tbaa !76, !noalias !971
  %.not.i.i.i.i.i137 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i.i137, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 4 uses
  %i.hs = load atomic i64, ptr %i.hr acquire, align 8, !noalias !971 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 4294967297
  %i.hu = trunc i64 %i.hs to i32                  ; 2 uses
  br i1 %i.ht, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.hr, align 8, !tbaa !53, !noalias !971
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  store i32 0, ptr %i.hv, align 4, !tbaa !54, !noalias !971
  %i.hw = load ptr, ptr %i.hq, align 8, !tbaa !56, !noalias !971
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !971
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #20, !noalias !971, !inline_history !944
  %i.hz = load ptr, ptr %i.hq, align 8, !tbaa !56, !noalias !971
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !971
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #20, !noalias !971, !inline_history !944
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bu:                                            ; preds = %bb.bs
  %i.ic = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63, !noalias !971
  %.not.i.i.i.i.i.i138 = icmp eq i8 %i.ic, 0
  br i1 %.not.i.i.i.i.i.i138, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.id = add nsw i32 %i.hu, -1
  store i32 %i.id, ptr %i.hr, align 8, !tbaa !30, !noalias !971
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139

bb.bw:                                            ; preds = %bb.bu
  %i.ie = atomicrmw volatile add ptr %i.hr, i32 -1 acq_rel, align 4, !noalias !971
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i.i.i.i140 = phi i32 [ %i.hu, %bb.bv ], [ %i.ie, %bb.bw ]
  %i.if = icmp eq i32 %.0.i.i.i.i.i.i.i140, 1
  br i1 %i.if, label %bb.bx, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !64

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #20, !noalias !971
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139, %bb.bt, %bb.br
  %i.ig = load ptr, ptr %i.cl, align 8, !tbaa !136, !noalias !971
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !141, !noalias !971 ; 4 uses
  %.not.i.i42.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i42.i, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.by

bb.by:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !170, !noalias !971
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 9
  %i.im = load i8, ptr %i.il, align 1, !tbaa !177, !range !96, !noalias !971, !noundef !97
  %i.in = trunc nuw i8 %i.im to i1
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ip = load i8, ptr %i.io, align 8, !range !96, !noalias !971
  %i.iq = trunc nuw i8 %i.ip to i1
  %i.ir = select i1 %i.in, i1 %i.iq, i1 false, !prof !86
  %i.is = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !noalias !971
  %i.iu = select i1 %i.ir, ptr %i.it, ptr null, !prof !86
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.ik
  br label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %bb.by, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.i.i.i = phi ptr [ %i.iv, %bb.by ], [ null, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 9 uses
  %i.iw = load i64, ptr %i.he, align 8, !tbaa !154, !noalias !971 ; 8 uses
  %.not3758.i = icmp slt i64 %i.iw, 0
  br i1 %.not3758.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  %i.ix = add nuw i64 %i.iw, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.iw, 15
  br i1 %min.iters.check, label %.lr.ph.i.preheader395, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.iy = shl i64 %i.iw, 2
  %i.iz = add i64 %i.iy, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.i.i.i, i64 %i.iz
  %scevgep389 = getelementptr i8, ptr %i.hd, i64 4
  %scevgep390 = getelementptr i8, ptr %i.hd, i64 %i.iz
  %bound0 = icmp ult ptr %.0.i.i.i, %scevgep389
  %bound1 = icmp ult ptr %i.hd, %scevgep
  %bound0391 = icmp ult ptr %.0.i.i.i, %scevgep390
  %found.conflict397 = or i1 %bound0, %bound0391
  %found.conflict393 = and i1 %found.conflict397, %bound1
  br i1 %found.conflict393, label %.lr.ph.i.preheader395, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ix, -8                      ; 3 uses
  %i.ja = load i32, ptr %i.hd, align 4, !tbaa !30, !alias.scope !973, !noalias !971
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ja, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %index ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %wide.load = load <4 x i32>, ptr %i.jb, align 4, !tbaa !30, !alias.scope !974, !noalias !971
  %wide.load394 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !30, !alias.scope !974, !noalias !971
  %i.jd = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.je = sub nsw <4 x i32> %wide.load394, %broadcast.splat
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <4 x i32> %i.jd, ptr %i.jf, align 4, !tbaa !30, !alias.scope !975, !noalias !976
  store <4 x i32> %i.je, ptr %i.jg, align 4, !tbaa !30, !alias.scope !975, !noalias !976
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jh = icmp eq i64 %index.next, %n.vec
  br i1 %i.jh, label %middle.block, label %vector.body, !llvm.loop !949

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ix, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader395

.lr.ph.i.preheader395:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03059.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.ji = add nuw i64 %i.iw, 1
  %i.jj = sub i64 %i.iw, %.03059.i.ph
  %xtraiter = and i64 %i.ji, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader395, %.lr.ph.i.prol
  %.03059.i.prol = phi i64 [ %i.jp, %.lr.ph.i.prol ], [ %.03059.i.ph, %.lr.ph.i.preheader395 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader395 ]
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %.03059.i.prol
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !30, !noalias !971
  %i.jm = load i32, ptr %i.hd, align 4, !tbaa !30, !noalias !971
  %i.jn = sub nsw i32 %i.jl, %i.jm
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i.prol
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !30, !noalias !971
  %i.jp = add nuw i64 %.03059.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !950

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader395
  %.03059.i.unr = phi i64 [ %.03059.i.ph, %.lr.ph.i.preheader395 ], [ %i.jp, %.lr.ph.i.prol ]
  %i.jq = icmp ult i64 %i.jj, 3
  br i1 %i.jq, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !971
  %i.jr = load ptr, ptr %15, align 16, !tbaa !116, !noalias !971
  %i.js = load i32, ptr %i.hd, align 4, !tbaa !30, !noalias !971
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.iw
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !30, !noalias !971
  %i.jw = sext i32 %i.jv to i64
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %11, ptr noundef nonnull align 8 dereferenceable(120) %i.jr, i64 noundef %i.jt, i64 noundef %i.jw)
          to label %bb.bz unwind label %bb.cu, !noalias !971

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03059.i = phi i64 [ %i.ku, %.lr.ph.i ], [ %.03059.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %.03059.i
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !30, !noalias !971
  %i.jz = load i32, ptr %i.hd, align 4, !tbaa !30, !noalias !971
  %i.ka = sub nsw i32 %i.jy, %i.jz
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !30, !noalias !971
  %i.kc = add nuw i64 %.03059.i, 1                ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !30, !noalias !971
  %i.kf = load i32, ptr %i.hd, align 4, !tbaa !30, !noalias !971
  %i.kg = sub nsw i32 %i.ke, %i.kf
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.kc
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !30, !noalias !971
  %i.ki = add nuw i64 %.03059.i, 2                ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !30, !noalias !971
  %i.kl = load i32, ptr %i.hd, align 4, !tbaa !30, !noalias !971
  %i.km = sub nsw i32 %i.kk, %i.kl
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.ki
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !30, !noalias !971
  %i.ko = add nuw i64 %.03059.i, 3                ; 3 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !30, !noalias !971
  %i.kr = load i32, ptr %i.hd, align 4, !tbaa !30, !noalias !971
  %i.ks = sub nsw i32 %i.kq, %i.kr
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.ko
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !30, !noalias !971
  %i.ku = add nuw i64 %.03059.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.ko, %i.iw
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !951

bb.bz:                                            ; preds = %._crit_edge.i
  %i.kv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kx = load <2 x ptr>, ptr %11, align 16, !tbaa !76, !noalias !971
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, i8 0, i64 16, i1 false), !noalias !971
  %i.ky = load ptr, ptr %i.kw, align 8, !tbaa !60, !noalias !971 ; 8 uses
  store <2 x ptr> %i.kx, ptr %15, align 16, !tbaa !76, !noalias !971
  %.not.i.i.i.i43.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i43.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 4 uses
  %i.la = load atomic i64, ptr %i.kz acquire, align 8, !noalias !971 ; 2 uses
  %i.lb = icmp eq i64 %i.la, 4294967297
  %i.lc = trunc i64 %i.la to i32                  ; 2 uses
  br i1 %i.lb, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.kz, align 8, !tbaa !53, !noalias !971
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  store i32 0, ptr %i.ld, align 4, !tbaa !54, !noalias !971
  %i.le = load ptr, ptr %i.ky, align 8, !tbaa !56, !noalias !971
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !noalias !971
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #20, !noalias !971, !inline_history !952
  %i.lh = load ptr, ptr %i.ky, align 8, !tbaa !56, !noalias !971
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !971
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #20, !noalias !971, !inline_history !952
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

bb.cc:                                            ; preds = %bb.ca
  %i.lk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63, !noalias !971
  %.not.i.i.i.i.i44.i = icmp eq i8 %i.lk, 0
  br i1 %.not.i.i.i.i.i44.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ll = add nsw i32 %i.lc, -1
  store i32 %i.ll, ptr %i.kz, align 8, !tbaa !30, !noalias !971
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

bb.ce:                                            ; preds = %bb.cc
  %i.lm = atomicrmw volatile add ptr %i.kz, i32 -1 acq_rel, align 4, !noalias !971
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i: ; preds = %bb.ce, %bb.cd
  %.0.i.i.i.i.i.i46.i = phi i32 [ %i.lc, %bb.cd ], [ %i.lm, %bb.ce ]
  %i.ln = icmp eq i32 %.0.i.i.i.i.i.i46.i, 1
  br i1 %i.ln, label %bb.cf, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, !prof !64

bb.cf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #20, !noalias !971
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i: ; preds = %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i, %bb.cb, %bb.bz
  %i.lo = load ptr, ptr %i.kv, align 8, !tbaa !60, !noalias !971 ; 8 uses
  %.not.i.i47.i = icmp eq ptr %i.lo, null
  br i1 %.not.i.i47.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 4 uses
  %i.lq = load atomic i64, ptr %i.lp acquire, align 8, !noalias !971 ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 4294967297
  %i.ls = trunc i64 %i.lq to i32                  ; 2 uses
  br i1 %i.lr, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.lp, align 8, !tbaa !53, !noalias !971
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  store i32 0, ptr %i.lt, align 4, !tbaa !54, !noalias !971
  %i.lu = load ptr, ptr %i.lo, align 8, !tbaa !56, !noalias !971
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !971
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #20, !noalias !971, !inline_history !953
  %i.lx = load ptr, ptr %i.lo, align 8, !tbaa !56, !noalias !971
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !noalias !971
  call void %i.lz(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #20, !noalias !971, !inline_history !953
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ci:                                            ; preds = %bb.cg
  %i.ma = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63, !noalias !971
  %.not.i.i.i48.i = icmp eq i8 %i.ma, 0
  br i1 %.not.i.i.i48.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mb = add nsw i32 %i.ls, -1
  store i32 %i.mb, ptr %i.lp, align 8, !tbaa !30, !noalias !971
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

bb.ck:                                            ; preds = %bb.ci
  %i.mc = atomicrmw volatile add ptr %i.lp, i32 -1 acq_rel, align 4, !noalias !971
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i50.i = phi i32 [ %i.ls, %bb.cj ], [ %i.mc, %bb.ck ]
  %i.md = icmp eq i32 %.0.i.i.i.i50.i, 1
  br i1 %i.md, label %bb.cl, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !64

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #20, !noalias !971
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal12_GLOBAL__N_17CastMapINS_8ListTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %.not66 = icmp eq ptr %i.ev, null
  br i1 %.not66, label %.thread306, label %bb.ap

.thread306:                                       ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.ew = load ptr, ptr %i.de, align 8, !tbaa !142, !noalias !1033
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.eu
  br label %bb.bo

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.ey = load ptr, ptr %1, align 8, !tbaa !128
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !133
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !154
  invoke void @_ZN5arrow8internal10CopyBitmapEPNS_10MemoryPoolEPKhlll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %16, ptr noundef %i.ez, ptr noundef nonnull %i.ev, i64 noundef %i.eu, i64 noundef %i.fb, i64 noundef 0)
          to label %bb.aq unwind label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.fc = load ptr, ptr %16, align 8, !tbaa !85
  %i.fd = icmp eq ptr %i.fc, null                 ; 2 uses
  br i1 %i.fd, label %bb.ay, label %bb.ar, !prof !86

bb.ar:                                            ; preds = %bb.aq
  store ptr null, ptr %0, align 8, !tbaa !85
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.ax

bb.as:                                            ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %bb.u
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.ag
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit122
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.jz

bb.aw:                                            ; preds = %bb.ap
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.ax:                                            ; preds = %bb.ar
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.jy

bb.ay:                                            ; preds = %bb.aq
  %i.fk = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.fl = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !76, !noalias !1034
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i8 0, i64 16, i1 false)
  %i.fm = load ptr, ptr %i.cl, align 8, !tbaa !136 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !60 ; 8 uses
  store <2 x ptr> %i.fl, ptr %i.fm, align 8, !tbaa !76
  %.not.i.i.i.i124 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i124, label %_ZN5arrow6StatusC2ERKS0_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 4 uses
  %i.fq = load atomic i64, ptr %i.fp acquire, align 8 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 4294967297
  %i.fs = trunc i64 %i.fq to i32                  ; 2 uses
  br i1 %i.fr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.fp, align 8, !tbaa !53
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  store i32 0, ptr %i.ft, align 4, !tbaa !54
  %i.fu = load ptr, ptr %i.fo, align 8, !tbaa !56
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #20, !inline_history !3
  %i.fx = load ptr, ptr %i.fo, align 8, !tbaa !56
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #20, !inline_history !3
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.bb:                                            ; preds = %bb.az
  %i.ga = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i.i.i125 = icmp eq i8 %i.ga, 0
  br i1 %.not.i.i.i.i.i125, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gb = add nsw i32 %i.fs, -1
  store i32 %i.gb, ptr %i.fp, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126

bb.bd:                                            ; preds = %bb.bb
  %i.gc = atomicrmw volatile add ptr %i.fp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i127 = phi i32 [ %i.fs, %bb.bc ], [ %i.gc, %bb.bd ]
  %i.gd = icmp eq i32 %.0.i.i.i.i.i.i127, 1
  br i1 %i.gd, label %bb.be, label %_ZN5arrow6StatusC2ERKS0_.exit, !prof !64

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #20
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.ay, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126, %bb.be, %bb.ar
  %i.ge = load ptr, ptr %16, align 8, !tbaa !85   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.bf, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !86

bb.bf:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !60 ; 8 uses
  %.not.i.i.i.i.i134 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i134, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 4 uses
  %i.gj = load atomic i64, ptr %i.gi acquire, align 8 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 4294967297
  %i.gl = trunc i64 %i.gj to i32                  ; 2 uses
  br i1 %i.gk, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.gi, align 8, !tbaa !53
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i32 0, ptr %i.gm, align 4, !tbaa !54
  %i.gn = load ptr, ptr %i.gh, align 8, !tbaa !56
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #20, !inline_history !6
  %i.gq = load ptr, ptr %i.gh, align 8, !tbaa !56
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #20, !inline_history !6
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.bi:                                            ; preds = %bb.bg
  %i.gt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i.i.i.i = icmp eq i8 %i.gt, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gu = add nsw i32 %i.gl, -1
  store i32 %i.gu, ptr %i.gi, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.gv = atomicrmw volatile add ptr %i.gi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gl, %bb.bj ], [ %i.gv, %bb.bk ]
  %i.gw = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.gw, label %bb.bl, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !64

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gh) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bh, %bb.bf
  %.pr.i = load ptr, ptr %16, align 8, !tbaa !85  ; 2 uses
  %.not.i.i135 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i135, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !182

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.gx = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.ge, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !95, !range !96, !noundef !97
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %16) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br i1 %i.fd, label %bb.bn, label %.critedge

bb.bn:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %.pr = load i64, ptr %i.et, align 8, !tbaa !153, !noalias !1035 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.hb = load ptr, ptr %i.de, align 8, !tbaa !142, !noalias !1035
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %.pr
  %.not.i136 = icmp eq i64 %.pr, 0
  br i1 %.not.i136, label %_ZN5arrow6StatusD2Ev.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %.thread306, %bb.bn
  %i.hd = phi ptr [ %i.ex, %.thread306 ], [ %i.hc, %bb.bn ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !1035
  %i.he = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !154, !noalias !1035
  %i.hg = shl i64 %i.hf, 2
  %i.hh = add i64 %i.hg, 4
  invoke void @_ZN5arrow7compute13KernelContext8AllocateEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.181") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hh)
          to label %.noexc141 unwind label %bb.cw

.noexc141:                                        ; preds = %bb.bo
  %i.hi = load ptr, ptr %10, align 8, !tbaa !85, !noalias !1035
  %i.hj = icmp eq ptr %i.hi, null                 ; 2 uses
  br i1 %i.hj, label %bb.br, label %bb.bp, !prof !86

bb.bp:                                            ; preds = %.noexc141
  store ptr null, ptr %17, align 8, !tbaa !85, !alias.scope !1035
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.br:                                            ; preds = %.noexc141
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hm = load <2 x ptr>, ptr %i.hl, align 8, !tbaa !76, !noalias !1036
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, i8 0, i64 16, i1 false), !noalias !1035
  %i.hn = load ptr, ptr %i.cl, align 8, !tbaa !136, !noalias !1035 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !60, !noalias !1035 ; 8 uses
  store <2 x ptr> %i.hm, ptr %i.ho, align 8, !tbaa !76, !noalias !1035
  %.not.i.i.i.i.i137 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i.i137, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 4 uses
  %i.hs = load atomic i64, ptr %i.hr acquire, align 8, !noalias !1035 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 4294967297
  %i.hu = trunc i64 %i.hs to i32                  ; 2 uses
  br i1 %i.ht, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.hr, align 8, !tbaa !53, !noalias !1035
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  store i32 0, ptr %i.hv, align 4, !tbaa !54, !noalias !1035
  %i.hw = load ptr, ptr %i.hq, align 8, !tbaa !56, !noalias !1035
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !1035
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #20, !noalias !1035, !inline_history !1008
  %i.hz = load ptr, ptr %i.hq, align 8, !tbaa !56, !noalias !1035
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !1035
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #20, !noalias !1035, !inline_history !1008
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bu:                                            ; preds = %bb.bs
  %i.ic = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63, !noalias !1035
  %.not.i.i.i.i.i.i138 = icmp eq i8 %i.ic, 0
  br i1 %.not.i.i.i.i.i.i138, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.id = add nsw i32 %i.hu, -1
  store i32 %i.id, ptr %i.hr, align 8, !tbaa !30, !noalias !1035
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139

bb.bw:                                            ; preds = %bb.bu
  %i.ie = atomicrmw volatile add ptr %i.hr, i32 -1 acq_rel, align 4, !noalias !1035
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i.i.i.i140 = phi i32 [ %i.hu, %bb.bv ], [ %i.ie, %bb.bw ]
  %i.if = icmp eq i32 %.0.i.i.i.i.i.i.i140, 1
  br i1 %i.if, label %bb.bx, label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !64

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #20, !noalias !1035
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i139, %bb.bt, %bb.br
  %i.ig = load ptr, ptr %i.cl, align 8, !tbaa !136, !noalias !1035
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !141, !noalias !1035 ; 4 uses
  %.not.i.i42.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i42.i, label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i, label %bb.by

bb.by:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !170, !noalias !1035
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 9
  %i.im = load i8, ptr %i.il, align 1, !tbaa !177, !range !96, !noalias !1035, !noundef !97
  %i.in = trunc nuw i8 %i.im to i1
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ip = load i8, ptr %i.io, align 8, !range !96, !noalias !1035
  %i.iq = trunc nuw i8 %i.ip to i1
  %i.ir = select i1 %i.in, i1 %i.iq, i1 false, !prof !86
  %i.is = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !noalias !1035
  %i.iu = select i1 %i.ir, ptr %i.it, ptr null, !prof !86
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.ik
  br label %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i

_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i: ; preds = %bb.by, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.0.i.i.i = phi ptr [ %i.iv, %bb.by ], [ null, %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 9 uses
  %i.iw = load i64, ptr %i.he, align 8, !tbaa !154, !noalias !1035 ; 8 uses
  %.not3758.i = icmp slt i64 %i.iw, 0
  br i1 %.not3758.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  %i.ix = add nuw i64 %i.iw, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.iw, 15
  br i1 %min.iters.check, label %.lr.ph.i.preheader395, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.iy = shl i64 %i.iw, 2
  %i.iz = add i64 %i.iy, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.i.i.i, i64 %i.iz
  %scevgep389 = getelementptr i8, ptr %i.hd, i64 4
  %scevgep390 = getelementptr i8, ptr %i.hd, i64 %i.iz
  %bound0 = icmp ult ptr %.0.i.i.i, %scevgep389
  %bound1 = icmp ult ptr %i.hd, %scevgep
  %bound0391 = icmp ult ptr %.0.i.i.i, %scevgep390
  %found.conflict397 = or i1 %bound0, %bound0391
  %found.conflict393 = and i1 %found.conflict397, %bound1
  br i1 %found.conflict393, label %.lr.ph.i.preheader395, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ix, -8                      ; 3 uses
  %i.ja = load i32, ptr %i.hd, align 4, !tbaa !30, !alias.scope !1037, !noalias !1035
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ja, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %index ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %wide.load = load <4 x i32>, ptr %i.jb, align 4, !tbaa !30, !alias.scope !1038, !noalias !1035
  %wide.load394 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !30, !alias.scope !1038, !noalias !1035
  %i.jd = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.je = sub nsw <4 x i32> %wide.load394, %broadcast.splat
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <4 x i32> %i.jd, ptr %i.jf, align 4, !tbaa !30, !alias.scope !1039, !noalias !1040
  store <4 x i32> %i.je, ptr %i.jg, align 4, !tbaa !30, !alias.scope !1039, !noalias !1040
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jh = icmp eq i64 %index.next, %n.vec
  br i1 %i.jh, label %middle.block, label %vector.body, !llvm.loop !1013

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ix, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader395

.lr.ph.i.preheader395:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.03059.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.ji = add nuw i64 %i.iw, 1
  %i.jj = sub i64 %i.iw, %.03059.i.ph
  %xtraiter = and i64 %i.ji, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader395, %.lr.ph.i.prol
  %.03059.i.prol = phi i64 [ %i.jp, %.lr.ph.i.prol ], [ %.03059.i.ph, %.lr.ph.i.preheader395 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader395 ]
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %.03059.i.prol
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !30, !noalias !1035
  %i.jm = load i32, ptr %i.hd, align 4, !tbaa !30, !noalias !1035
  %i.jn = sub nsw i32 %i.jl, %i.jm
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i.prol
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !30, !noalias !1035
  %i.jp = add nuw i64 %.03059.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1014

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader395
  %.03059.i.unr = phi i64 [ %.03059.i.ph, %.lr.ph.i.preheader395 ], [ %i.jp, %.lr.ph.i.prol ]
  %i.jq = icmp ult i64 %i.jj, 3
  br i1 %i.jq, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN5arrow9ArrayData16GetMutableValuesIiEEPT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !1035
  %i.jr = load ptr, ptr %15, align 16, !tbaa !116, !noalias !1035
  %i.js = load i32, ptr %i.hd, align 4, !tbaa !30, !noalias !1035
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.iw
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !30, !noalias !1035
  %i.jw = sext i32 %i.jv to i64
  invoke void @_ZNK5arrow9ArrayData5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.64") align 8 %11, ptr noundef nonnull align 8 dereferenceable(120) %i.jr, i64 noundef %i.jt, i64 noundef %i.jw)
          to label %bb.bz unwind label %bb.cu, !noalias !1035

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03059.i = phi i64 [ %i.ku, %.lr.ph.i ], [ %.03059.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %.03059.i
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !30, !noalias !1035
  %i.jz = load i32, ptr %i.hd, align 4, !tbaa !30, !noalias !1035
  %i.ka = sub nsw i32 %i.jy, %i.jz
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %.03059.i
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !30, !noalias !1035
  %i.kc = add nuw i64 %.03059.i, 1                ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !30, !noalias !1035
  %i.kf = load i32, ptr %i.hd, align 4, !tbaa !30, !noalias !1035
  %i.kg = sub nsw i32 %i.ke, %i.kf
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.kc
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !30, !noalias !1035
  %i.ki = add nuw i64 %.03059.i, 2                ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !30, !noalias !1035
  %i.kl = load i32, ptr %i.hd, align 4, !tbaa !30, !noalias !1035
  %i.km = sub nsw i32 %i.kk, %i.kl
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.ki
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !30, !noalias !1035
  %i.ko = add nuw i64 %.03059.i, 3                ; 3 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !30, !noalias !1035
  %i.kr = load i32, ptr %i.hd, align 4, !tbaa !30, !noalias !1035
  %i.ks = sub nsw i32 %i.kq, %i.kr
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %i.ko
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !30, !noalias !1035
  %i.ku = add nuw i64 %.03059.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.ko, %i.iw
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1015

bb.bz:                                            ; preds = %._crit_edge.i
  %i.kv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kx = load <2 x ptr>, ptr %11, align 16, !tbaa !76, !noalias !1035
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, i8 0, i64 16, i1 false), !noalias !1035
  %i.ky = load ptr, ptr %i.kw, align 8, !tbaa !60, !noalias !1035 ; 8 uses
  store <2 x ptr> %i.kx, ptr %15, align 16, !tbaa !76, !noalias !1035
  %.not.i.i.i.i43.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i43.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 4 uses
  %i.la = load atomic i64, ptr %i.kz acquire, align 8, !noalias !1035 ; 2 uses
  %i.lb = icmp eq i64 %i.la, 4294967297
  %i.lc = trunc i64 %i.la to i32                  ; 2 uses
  br i1 %i.lb, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.kz, align 8, !tbaa !53, !noalias !1035
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  store i32 0, ptr %i.ld, align 4, !tbaa !54, !noalias !1035
  %i.le = load ptr, ptr %i.ky, align 8, !tbaa !56, !noalias !1035
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !noalias !1035
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #20, !noalias !1035, !inline_history !1016
  %i.lh = load ptr, ptr %i.ky, align 8, !tbaa !56, !noalias !1035
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !1035
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #20, !noalias !1035, !inline_history !1016
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

bb.cc:                                            ; preds = %bb.ca
  %i.lk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63, !noalias !1035
  %.not.i.i.i.i.i44.i = icmp eq i8 %i.lk, 0
  br i1 %.not.i.i.i.i.i44.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ll = add nsw i32 %i.lc, -1
  store i32 %i.ll, ptr %i.kz, align 8, !tbaa !30, !noalias !1035
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

bb.ce:                                            ; preds = %bb.cc
  %i.lm = atomicrmw volatile add ptr %i.kz, i32 -1 acq_rel, align 4, !noalias !1035
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i: ; preds = %bb.ce, %bb.cd
  %.0.i.i.i.i.i.i46.i = phi i32 [ %i.lc, %bb.cd ], [ %i.lm, %bb.ce ]
  %i.ln = icmp eq i32 %.0.i.i.i.i.i.i46.i, 1
  br i1 %i.ln, label %bb.cf, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i, !prof !64

bb.cf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #20, !noalias !1035
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i: ; preds = %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i45.i, %bb.cb, %bb.bz
  %i.lo = load ptr, ptr %i.kv, align 8, !tbaa !60, !noalias !1035 ; 8 uses
  %.not.i.i47.i = icmp eq ptr %i.lo, null
  br i1 %.not.i.i47.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 4 uses
  %i.lq = load atomic i64, ptr %i.lp acquire, align 8, !noalias !1035 ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 4294967297
  %i.ls = trunc i64 %i.lq to i32                  ; 2 uses
  br i1 %i.lr, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.lp, align 8, !tbaa !53, !noalias !1035
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  store i32 0, ptr %i.lt, align 4, !tbaa !54, !noalias !1035
  %i.lu = load ptr, ptr %i.lo, align 8, !tbaa !56, !noalias !1035
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !1035
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #20, !noalias !1035, !inline_history !1017
  %i.lx = load ptr, ptr %i.lo, align 8, !tbaa !56, !noalias !1035
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !noalias !1035
  call void %i.lz(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #20, !noalias !1035, !inline_history !1017
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ci:                                            ; preds = %bb.cg
  %i.ma = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63, !noalias !1035
  %.not.i.i.i48.i = icmp eq i8 %i.ma, 0
  br i1 %.not.i.i.i48.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mb = add nsw i32 %i.ls, -1
  store i32 %i.mb, ptr %i.lp, align 8, !tbaa !30, !noalias !1035
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

bb.ck:                                            ; preds = %bb.ci
  %i.mc = atomicrmw volatile add ptr %i.lp, i32 -1 acq_rel, align 4, !noalias !1035
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i50.i = phi i32 [ %i.ls, %bb.cj ], [ %i.mc, %bb.ck ]
  %i.md = icmp eq i32 %.0.i.i.i.i50.i, 1
  br i1 %i.md, label %bb.cl, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !64

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lo) #20, !noalias !1035
end_hunk_3
