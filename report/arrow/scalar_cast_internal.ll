inline.NumInlined: 1403
inline.NumDeleted: 810
begin_hunk_0_@_ZN5arrow7compute8internal16ZeroCopyCastExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #21, !inline_history !474
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !314
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #21, !inline_history !474
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.e ], [ %i.ar, %bb.f ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i, !prof !317

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #21
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %i.w
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !475

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i.i, %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEaSEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.au = ptrtoint ptr %i.y to i64
  %i.av = ptrtoint ptr %i.u to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.aw) #22
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEaSEOS5_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEaSEOS5_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.h
  %i.ax = load ptr, ptr %4, align 8, !tbaa !326   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !476 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !477 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !478
  %i.bf = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !479
  store <2 x ptr> %i.bf, ptr %i.az, align 8, !tbaa !479
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !478
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !478
  %.not4.i.i.i.i.i9 = icmp eq ptr %i.ba, %i.bc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i9, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i10

.lr.ph.i.i.i.i.i10:                               ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEaSEOS5_.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i11 = phi ptr [ %i.bz, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i ], [ %i.ba, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEaSEOS5_.exit ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i11, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !308 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i12 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i12, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bk, align 8, !tbaa !311
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !313
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !314
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #21, !inline_history !480
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !314
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #21, !inline_history !480
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i13 = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i13, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i14

bb.m:                                             ; preds = %bb.k
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i14

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i14: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i.i.i.i15 = phi i32 [ %i.bn, %bb.l ], [ %i.bx, %bb.m ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i15, 1
  br i1 %i.by, label %bb.n, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i, !prof !317

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i14
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #21
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i14, %bb.j, %.lr.ph.i.i.i.i.i10
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i11, i64 16 ; 2 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.bz, %i.bc
  br i1 %.not.i.i.i.i.i16, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i10, !llvm.loop !481

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEaSEOS5_.exit
  %.not.i.i1.i.i.i17 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i1.i.i.i17, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSEOS5_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.ca = ptrtoint ptr %i.be to i64
  %i.cb = ptrtoint ptr %i.ba to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.cc) #22
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSEOS5_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSEOS5_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.o
  store ptr null, ptr %0, align 8, !tbaa !343, !alias.scope !482
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !308 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSEOS5_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.cf, align 8, !tbaa !311
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !313
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !314
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #21, !inline_history !316
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !314
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #21, !inline_history !316
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.ci, %bb.s ], [ %i.cs, %bb.t ]
  %i.ct = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ct, label %bb.u, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !317

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #21
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSEOS5_.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.v:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.cu
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal15AddZeroCopyCastENS_4Type4typeENS0_9InputTypeENS0_10OutputTypeEPNS1_12CastFunctionE(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.110", align 8 ; 7 uses
  %5 = alloca %"class.std::vector.113", align 8   ; 10 uses
  %6 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 9 uses
  %7 = alloca %"class.arrow::compute::OutputType", align 8 ; 6 uses
  %8 = alloca %"class.std::shared_ptr.118", align 8 ; 4 uses
  %9 = alloca %"struct.arrow::compute::ScalarKernel", align 8 ; 22 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 3 uses
  %11 = alloca %"struct.arrow::compute::ScalarKernel", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc3.i unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i ; 4 uses

.noexc3.i:                                        ; preds = %bb.a
  store ptr %i.b, ptr %5, align 8, !tbaa !485
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !488
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %6)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.f, align 8, !tbaa !489
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.b unwind label %bb.aw

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i: ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %12 = load ptr, ptr %5, align 8, !tbaa !485     ; 3 uses
  %.not.i.i4.i = icmp eq ptr %12, null
  br i1 %.not.i.i4.i, label %.body, label %13

13:                                               ; preds = %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !488
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %12 to i64
  %18 = sub i64 %16, %17
  call void @_ZdlPvm(ptr noundef nonnull %12, i64 noundef %18) #22
  br label %.body

bb.b:                                             ; preds = %.noexc3.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.110") align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull %7, i1 noundef zeroext false, ptr noundef nonnull %8)
          to label %bb.c unwind label %bb.ax

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !308  ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !311
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !313
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !314
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #21, !inline_history !490
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !314
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #21, !inline_history !490
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.i, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !317

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #21
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !450  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.z, null
  br i1 %.not.i.i13, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ab = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.j, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !308 ; 8 uses
  %.not.i.i.i14 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i14, label %_ZN5arrow7compute10OutputTypeD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ag, align 8, !tbaa !311
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !313
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !314
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #21, !inline_history !491
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !314
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #21, !inline_history !491
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i = phi i32 [ %i.aj, %bb.o ], [ %i.at, %bb.p ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.au, label %bb.q, label %_ZN5arrow7compute10OutputTypeD2Ev.exit, !prof !317

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #21
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit

_ZN5arrow7compute10OutputTypeD2Ev.exit:           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.q
  %i.av = load ptr, ptr %5, align 8, !tbaa !485
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !489
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.av, ptr noundef %i.aw)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i unwind label %bb.s

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit
  %i.ax = load ptr, ptr %5, align 8, !tbaa !485   ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !488
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit

bb.s:                                             ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i, %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !308 ; 8 uses
  %.not.i.i.i17 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i17, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bg, align 8, !tbaa !311
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !313
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !314
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #21, !inline_history !492
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !314
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #21, !inline_history !492
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.v:                                             ; preds = %bb.t
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i18 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i18, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i19

bb.x:                                             ; preds = %bb.v
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i19

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i19: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i20 = phi i32 [ %i.bj, %bb.w ], [ %i.bt, %bb.x ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i20, 1
  br i1 %i.bu, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !317

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i19
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #21
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal15AddZeroCopyCastENS_4Type4typeENS0_9InputTypeENS0_10OutputTypeEPNS1_12CastFunctionE:bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 3 uses
  %i.cy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i22 = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i22, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.af
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cx, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.af
  %i.db = atomicrmw volatile add ptr %i.cx, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !308 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.dc, align 8, !tbaa !311
  %i.dg = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !313
  %i.dh = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !314
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #21, !inline_history !511
  %i.dk = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !314
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #21, !inline_history !511
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i9.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i9.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23

bb.ak:                                            ; preds = %bb.ai
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i24 = phi i32 [ %i.df, %bb.aj ], [ %i.dp, %bb.ak ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i24, 1
  br i1 %i.dq, label %bb.al, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !317

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23, %bb.ah, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %.pre = load ptr, ptr %9, align 8, !tbaa !510
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 40
  %.pre29 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !512
  %.phi.trans.insert30 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.pre31 = load ptr, ptr %.phi.trans.insert30, align 8, !tbaa !450
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSERKS3_.exit

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSERKS3_.exit: ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.dr = phi ptr [ null, %_ZN5arrow7compute9InputTypeD2Ev.exit ], [ %.pre31, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  %i.ds = phi ptr [ null, %_ZN5arrow7compute9InputTypeD2Ev.exit ], [ %.pre29, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ]
  %i.dt = phi ptr [ %i.ct, %_ZN5arrow7compute9InputTypeD2Ev.exit ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ]
  store i32 2, ptr %i.cq, align 4, !tbaa !507
  store i32 1, ptr %i.cr, align 8, !tbaa !508
  store ptr %i.dt, ptr %11, align 8, !tbaa !510
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.cu, align 8, !tbaa !308
  store ptr %i.cw, ptr %i.du, align 8, !tbaa !308
  store ptr null, ptr %9, align 8, !tbaa !510
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i8 0, i64 24, i1 false)
  store ptr %i.ds, ptr %i.dw, align 8, !tbaa !512
  %.not.i.i.not.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.not.i.i.i, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSERKS3_.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %i.dy, i64 16, i1 false), !tbaa.struct !513
  store ptr %i.dr, ptr %i.dz, align 8, !tbaa !450
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit:      ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSERKS3_.exit, %bb.am
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.eb = load i64, ptr %i.cm, align 8
  store i64 %i.eb, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ef = load <2 x ptr>, ptr %i.ed, align 8, !tbaa !356
  store ptr null, ptr %i.ee, align 8, !tbaa !308
  store <2 x ptr> %i.ef, ptr %i.ec, align 8, !tbaa !356
  store ptr null, ptr %i.ed, align 8, !tbaa !514
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.eg, ptr noundef nonnull align 8 dereferenceable(20) %i.cs, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(252) %3, i32 noundef %0, ptr noundef nonnull %11)
          to label %bb.an unwind label %bb.az

bb.an:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit
  %i.eh = load ptr, ptr %10, align 8, !tbaa !343  ; 2 uses
  %.not.i = icmp eq ptr %i.eh, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ao, !prof !346

bb.ao:                                            ; preds = %bb.an
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !368, !range !375, !noundef !376
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.an, %bb.ao, %bb.ap
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %11) #21
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.el = load ptr, ptr %i.cv, align 8, !tbaa !308 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.el, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.em, align 8, !tbaa !311
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !313
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !314
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #21, !inline_history !515
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !314
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #21, !inline_history !515
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.as:                                            ; preds = %bb.aq
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i26 = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i26, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.au:                                            ; preds = %bb.as
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i28 = phi i32 [ %i.ep, %bb.at ], [ %i.ez, %bb.au ]
  %i.fa = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.fa, label %bb.av, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !317

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #21
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.aw:                                            ; preds = %.noexc3.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.b
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #21
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #21
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn = phi { ptr, i32 } [ %i.fc, %bb.ax ], [ %i.fb, %bb.aw ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #21
  br label %.body

.body:                                            ; preds = %13, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ay ], [ %i.g, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i ], [ %i.g, %13 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ba

bb.az:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %11) #21
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.body
  %.pn11 = phi { ptr, i32 } [ %i.fd, %bb.az ], [ %.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn11
}

declare void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.110") align 8, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !308  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !311
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !313
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !314
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !516
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !314
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !516
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !317

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !308  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !311
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !313
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !314
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !427
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !314
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !427
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !317

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  %i.c = load i32, ptr %1, align 8, !tbaa !517
  store i32 %i.c, ptr %0, align 8, !tbaa !517
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !329
  store ptr %i.e, ptr %i.a, align 8, !tbaa !329
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !308  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !308 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !311
  %i.r = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !313
  %i.s = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !314
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #21, !inline_history !521
  %i.v = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !314
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #21, !inline_history !521
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i9.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
end_hunk_1
begin_hunk_2_@_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !314
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !399
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !317

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !485
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !489
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !485    ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !488
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #22
  br label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #23
  unreachable
}

declare void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(252), i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !308  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !311
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !313
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !314
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !522
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !314
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !522
  br label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !317

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !450  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !308  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.z, align 8, !tbaa !311
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !313
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !314
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #21, !inline_history !515
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !314
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #21, !inline_history !515
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i2 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.n:                                             ; preds = %bb.l
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i4 = phi i32 [ %i.ac, %bb.m ], [ %i.am, %bb.n ]
  %i.an = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.an, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !317

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #21
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.107", align 16 ; 4 uses
  %4 = alloca %"class.std::shared_ptr.107", align 16 ; 4 uses
  %5 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 21 uses
  %6 = alloca %"class.std::shared_ptr.110", align 16 ; 7 uses
  %7 = alloca %"class.std::vector.113", align 8   ; 10 uses
  %8 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 11 uses
  %9 = alloca %"class.std::shared_ptr.17", align 8 ; 5 uses
  %10 = alloca %"class.arrow::compute::OutputType", align 8 ; 6 uses
  %11 = alloca %"class.std::shared_ptr.118", align 8 ; 4 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 3 uses
  %13 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 10 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 3 uses
  %15 = alloca %"class.std::vector.113", align 8  ; 10 uses
  %16 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %17 = alloca %"class.arrow::compute::OutputType", align 8 ; 6 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 3 uses
  %19 = alloca %"class.std::vector.113", align 8  ; 10 uses
  %20 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %21 = alloca %"class.arrow::compute::OutputType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %5, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.a, align 16, !tbaa !494
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i8 1, ptr %i.c, align 16, !tbaa !503
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !507
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !508
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store ptr @_ZN5arrow7compute8internal12CastFromNullEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.f, align 8, !tbaa !509
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4nullEv()
          to label %bb.b unwind label %bb.bf      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !329  ; 3 uses
  store ptr %i.h, ptr %9, align 8, !tbaa !329
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !308  ; 4 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !308
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %9, align 8, !tbaa !329
  %.pre132 = load ptr, ptr %i.i, align 8, !tbaa !308
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.q = phi ptr [ null, %bb.b ], [ %i.k, %bb.d ], [ %.pre132, %bb.e ]
  %i.r = phi ptr [ %i.h, %bb.b ], [ %i.h, %bb.d ], [ %.pre, %bb.e ]
  store i32 1, ptr %8, align 8, !tbaa !523
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !329
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr null, ptr %i.i, align 8, !tbaa !308
  store ptr %i.q, ptr %i.t, align 8, !tbaa !308
  store ptr null, ptr %9, align 8, !tbaa !329
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.v = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc3.i unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i ; 4 uses

.noexc3.i:                                        ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  store ptr %i.v, ptr %7, align 8, !tbaa !485
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !488
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %8)
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.z, align 8, !tbaa !489
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.f unwind label %bb.bg

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %22 = load ptr, ptr %7, align 8, !tbaa !485     ; 3 uses
  %.not.i.i4.i = icmp eq ptr %22, null
  br i1 %.not.i.i4.i, label %.body, label %23

23:                                               ; preds = %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i
  %24 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %25 = load ptr, ptr %24, align 8, !tbaa !488
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %22 to i64
  %28 = sub i64 %26, %27
  tail call void @_ZdlPvm(ptr noundef nonnull %22, i64 noundef %28) #22
  br label %.body

bb.f:                                             ; preds = %.noexc3.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.110") align 8 %6, ptr noundef nonnull %7, ptr noundef nonnull %10, i1 noundef zeroext false, ptr noundef nonnull %11)
          to label %bb.g unwind label %bb.bh

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %6, align 16, !tbaa !356
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !308 ; 8 uses
  store <2 x ptr> %i.ad, ptr %5, align 16, !tbaa !356
  %.not.i.i.i.i37 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i37, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.af, align 8, !tbaa !311
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !313
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !314
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #21, !inline_history !529
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !314
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #21, !inline_history !529
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit

bb.j:                                             ; preds = %bb.h
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.k ], [ %i.as, %bb.l ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.m, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit, !prof !317

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #21
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !308 ; 8 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.av, align 8, !tbaa !311
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !313
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !314
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #21, !inline_history !515
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !314
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #21, !inline_history !515
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i38 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i38, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.ay, %bb.q ], [ %i.bi, %bb.r ]
  %i.bj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bj, label %bb.s, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !317

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #21
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !308 ; 8 uses
  %.not.i.i39 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i39, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bm, align 8, !tbaa !311
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !313
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !314
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #21, !inline_history !490
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !314
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #21, !inline_history !490
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i40 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i40, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

bb.x:                                             ; preds = %bb.v
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i42 = phi i32 [ %i.bp, %bb.w ], [ %i.bz, %bb.x ]
  %i.ca = icmp eq i32 %.0.i.i.i.i42, 1
  br i1 %i.ca, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !317

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #21
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41, %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !450 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i43, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ce = invoke noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.z, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !308 ; 8 uses
  %.not.i.i.i44 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i44, label %_ZN5arrow7compute10OutputTypeD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cj, align 8, !tbaa !311
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !313
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !314
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #21, !inline_history !491
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !314
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE:bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 0, ptr %i.ee, align 4, !tbaa !313
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !314
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #21, !inline_history !493
  %i.ei = load ptr, ptr %i.dz, align 8, !tbaa !314
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #21, !inline_history !493
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit

bb.ar:                                            ; preds = %bb.ap
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i2.i = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i2.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.em = add nsw i32 %i.ed, -1
  store i32 %i.em, ptr %i.ea, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.at:                                            ; preds = %bb.ar
  %i.en = atomicrmw volatile add ptr %i.ea, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i4.i = phi i32 [ %i.ed, %bb.as ], [ %i.en, %bb.at ]
  %i.eo = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.eo, label %bb.au, label %_ZN5arrow7compute9InputTypeD2Ev.exit, !prof !317

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #21
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit

_ZN5arrow7compute9InputTypeD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.au
  %i.ep = load ptr, ptr %i.i, align 8, !tbaa !308 ; 8 uses
  %.not.i.i52 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i52, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 4 uses
  %i.er = load atomic i64, ptr %i.eq acquire, align 8 ; 2 uses
  %i.es = icmp eq i64 %i.er, 4294967297
  %i.et = trunc i64 %i.er to i32                  ; 2 uses
  br i1 %i.es, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.eq, align 8, !tbaa !311
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 0, ptr %i.eu, align 4, !tbaa !313
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !314
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #21, !inline_history !427
  %i.ey = load ptr, ptr %i.ep, align 8, !tbaa !314
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #21, !inline_history !427
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ax:                                            ; preds = %bb.av
  %i.fb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i53 = icmp eq i8 %i.fb, 0
  br i1 %.not.i.i.i53, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fc = add nsw i32 %i.et, -1
  store i32 %i.fc, ptr %i.eq, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

bb.az:                                            ; preds = %bb.ax
  %i.fd = atomicrmw volatile add ptr %i.eq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i55 = phi i32 [ %i.et, %bb.ay ], [ %i.fd, %bb.az ]
  %i.fe = icmp eq i32 %.0.i.i.i.i55, 1
  br i1 %i.fe, label %bb.ba, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !317

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #21
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit, %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  store i32 2, ptr %i.d, align 4, !tbaa !507
  store i32 1, ptr %i.e, align 8, !tbaa !508
  %i.ff = load <2 x ptr>, ptr %5, align 16, !tbaa !356
  store ptr null, ptr %i.ac, align 8, !tbaa !308
  store <2 x ptr> %i.ff, ptr %13, align 16, !tbaa !356
  store ptr null, ptr %5, align 16, !tbaa !510
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, i8 0, i64 24, i1 false)
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !512
  store ptr %i.fj, ptr %i.fh, align 8, !tbaa !512
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 16, !tbaa !450 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.not.i.i.i, label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %i.fm, i64 16, i1 false), !tbaa.struct !513
  store ptr %i.fl, ptr %i.fn, align 16, !tbaa !450
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit:      ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bb
  %i.fo = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.fp = load i64, ptr %i.a, align 16
  store i64 %i.fp, ptr %i.fo, align 16
  %i.fq = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ft = load <2 x ptr>, ptr %i.fr, align 8, !tbaa !356
  store ptr null, ptr %i.fs, align 16, !tbaa !308
  store <2 x ptr> %i.ft, ptr %i.fq, align 8, !tbaa !356
  store ptr null, ptr %i.fr, align 8, !tbaa !514
  %i.fu = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fu, ptr noundef nonnull align 8 dereferenceable(20) %i.f, i64 20, i1 false)
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(252) %2, i32 noundef 0, ptr noundef nonnull %13)
          to label %bb.bc unwind label %bb.bk

bb.bc:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit
  %i.fv = load ptr, ptr %12, align 8, !tbaa !343  ; 2 uses
  %.not.i = icmp eq ptr %i.fv, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.bd, !prof !346

bb.bd:                                            ; preds = %bb.bc
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !368, !range !375, !noundef !376
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %_ZN5arrow6StatusD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.bc, %bb.bd, %bb.be
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %13) #21
  switch i32 %0, label %_ZN5arrow7compute8internalL21CanCastFromDictionaryENS_4Type4typeE.exit [
    i32 1, label %bb.bl
    i32 2, label %bb.bl
    i32 3, label %bb.bl
    i32 4, label %bb.bl
    i32 5, label %bb.bl
    i32 6, label %bb.bl
    i32 7, label %bb.bl
    i32 8, label %bb.bl
    i32 9, label %bb.bl
    i32 10, label %bb.bl
    i32 11, label %bb.bl
    i32 12, label %bb.bl
    i32 16, label %bb.bl
    i32 17, label %bb.bl
    i32 19, label %bb.bl
    i32 20, label %bb.bl
    i32 18, label %bb.bl
    i32 33, label %bb.bl
    i32 21, label %bb.bl
    i32 37, label %bb.bl
    i32 22, label %bb.bl
    i32 14, label %bb.bl
    i32 35, label %bb.bl
    i32 13, label %bb.bl
    i32 34, label %bb.bl
    i32 43, label %bb.bl
    i32 44, label %bb.bl
    i32 23, label %bb.bl
    i32 24, label %bb.bl
    i32 15, label %bb.bl
  ]

bb.bf:                                            ; preds = %bb.a
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bg:                                            ; preds = %.noexc3.i
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.f
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #21
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #21
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn = phi { ptr, i32 } [ %i.gb, %bb.bh ], [ %i.ga, %bb.bg ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #21
  br label %.body

.body:                                            ; preds = %23, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i, %bb.bi
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bi ], [ %i.aa, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i ], [ %i.aa, %23 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #21
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #21
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bf, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.fz, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.dw

bb.bk:                                            ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %13) #21
  br label %bb.dw

bb.bl:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.107") align 8 %4, i32 noundef 29)
          to label %bb.bm unwind label %bb.cn

bb.bm:                                            ; preds = %bb.bl
  store i32 2, ptr %16, align 8, !tbaa !523
  %i.gd = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i8 0, i64 16, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.gf = load <2 x ptr>, ptr %4, align 16, !tbaa !356
  store <2 x ptr> %i.gf, ptr %i.ge, align 8, !tbaa !356
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.gg = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc3.i59 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i58 ; 4 uses

.noexc3.i59:                                      ; preds = %bb.bm
  store ptr %i.gg, ptr %15, align 8, !tbaa !485
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 40 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !488
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gj, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.gg, ptr noundef nonnull align 8 dereferenceable(40) %16)
  %i.gk = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %i.gh, ptr %i.gk, align 8, !tbaa !489
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.bn unwind label %bb.co

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i58: ; preds = %bb.bm
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %29 = load ptr, ptr %15, align 8, !tbaa !485    ; 3 uses
  %.not.i.i4.i57 = icmp eq ptr %29, null
  br i1 %.not.i.i4.i57, label %.body64, label %30

30:                                               ; preds = %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i58
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %32 = load ptr, ptr %31, align 8, !tbaa !488
  %33 = ptrtoint ptr %32 to i64
  %34 = ptrtoint ptr %29 to i64
  %35 = sub i64 %33, %34
  call void @_ZdlPvm(ptr noundef nonnull %29, i64 noundef %35) #22
  br label %.body64

bb.bn:                                            ; preds = %.noexc3.i59
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeESt6vectorINS0_9InputTypeESaIS6_EENS0_10OutputTypeEPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENS0_12NullHandling4typeENS0_13MemAllocation4typeE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(252) %2, i32 noundef 29, ptr noundef nonnull %15, ptr noundef nonnull %17, ptr noundef nonnull @_ZN5arrow7compute8internal16UnpackDictionaryEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, i32 noundef 2, i32 noundef 1)
          to label %bb.bo unwind label %bb.cp

bb.bo:                                            ; preds = %bb.bn
  %i.gm = load ptr, ptr %14, align 8, !tbaa !343  ; 2 uses
  %.not.i67 = icmp eq ptr %i.gm, null
  br i1 %.not.i67, label %_ZN5arrow6StatusD2Ev.exit68, label %bb.bp, !prof !346

bb.bp:                                            ; preds = %bb.bo
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !368, !range !375, !noundef !376
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %_ZN5arrow6StatusD2Ev.exit68, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #21
  br label %_ZN5arrow6StatusD2Ev.exit68

_ZN5arrow6StatusD2Ev.exit68:                      ; preds = %bb.bo, %bb.bp, %bb.bq
  %i.gq = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !450 ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i69, label %_ZNSt14_Function_baseD2Ev.exit.i70, label %bb.br

bb.br:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit68
  %i.gs = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.gt = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %i.gs, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i70 unwind label %bb.bs ; 0 uses

bb.bs:                                            ; preds = %bb.br
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i70:               ; preds = %bb.br, %_ZN5arrow6StatusD2Ev.exit68
  %i.gw = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !308 ; 8 uses
  %.not.i.i.i71 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i71, label %_ZN5arrow7compute10OutputTypeD2Ev.exit75, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i70
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 4 uses
  %i.gz = load atomic i64, ptr %i.gy acquire, align 8 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 4294967297
  %i.hb = trunc i64 %i.gz to i32                  ; 2 uses
  br i1 %i.ha, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.gy, align 8, !tbaa !311
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  store i32 0, ptr %i.hc, align 4, !tbaa !313
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !314
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #21, !inline_history !491
  %i.hg = load ptr, ptr %i.gx, align 8, !tbaa !314
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #21, !inline_history !491
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit75

bb.bv:                                            ; preds = %bb.bt
  %i.hj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i72 = icmp eq i8 %i.hj, 0
  br i1 %.not.i.i.i.i72, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hk = add nsw i32 %i.hb, -1
  store i32 %i.hk, ptr %i.gy, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i73

bb.bx:                                            ; preds = %bb.bv
  %i.hl = atomicrmw volatile add ptr %i.gy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i73

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i73: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i.i74 = phi i32 [ %i.hb, %bb.bw ], [ %i.hl, %bb.bx ]
  %i.hm = icmp eq i32 %.0.i.i.i.i.i74, 1
  br i1 %i.hm, label %bb.by, label %_ZN5arrow7compute10OutputTypeD2Ev.exit75, !prof !317

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i73
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #21
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit75

_ZN5arrow7compute10OutputTypeD2Ev.exit75:         ; preds = %_ZNSt14_Function_baseD2Ev.exit.i70, %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i73, %bb.by
  %i.hn = load ptr, ptr %15, align 8, !tbaa !485
  %i.ho = load ptr, ptr %i.gk, align 8, !tbaa !489
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.hn, ptr noundef %i.ho)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i76 unwind label %bb.ca

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i76: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit75
  %i.hp = load ptr, ptr %15, align 8, !tbaa !485  ; 3 uses
  %.not.i.i.i77 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit79, label %bb.bz

bb.bz:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i76
  %i.hq = load ptr, ptr %i.gi, align 8, !tbaa !488
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.ht) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit79

bb.ca:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit75
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit79: ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i76, %bb.bz
  %i.hw = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !308 ; 8 uses
  %.not.i.i.i80 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i80, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i84, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit79
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 4 uses
  %i.hz = load atomic i64, ptr %i.hy acquire, align 8 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 4294967297
  %i.ib = trunc i64 %i.hz to i32                  ; 2 uses
  br i1 %i.ia, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.hy, align 8, !tbaa !311
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store i32 0, ptr %i.ic, align 4, !tbaa !313
  %i.id = load ptr, ptr %i.hx, align 8, !tbaa !314
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #21, !inline_history !492
  %i.ig = load ptr, ptr %i.hx, align 8, !tbaa !314
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #21, !inline_history !492
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i84

bb.cd:                                            ; preds = %bb.cb
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i81 = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i.i81, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ik = add nsw i32 %i.ib, -1
  store i32 %i.ik, ptr %i.hy, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i82

bb.cf:                                            ; preds = %bb.cd
  %i.il = atomicrmw volatile add ptr %i.hy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i82

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i82: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i.i83 = phi i32 [ %i.ib, %bb.ce ], [ %i.il, %bb.cf ]
  %i.im = icmp eq i32 %.0.i.i.i.i.i83, 1
  br i1 %i.im, label %bb.cg, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i84, !prof !317

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i82
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #21
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i84

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i84: ; preds = %bb.cg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i82, %bb.cc, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit79
  %i.in = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !308 ; 8 uses
  %.not.i.i1.i85 = icmp eq ptr %i.io, null
  br i1 %.not.i.i1.i85, label %_ZN5arrow7compute9InputTypeD2Ev.exit89, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i84
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 4 uses
  %i.iq = load atomic i64, ptr %i.ip acquire, align 8 ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 4294967297
  %i.is = trunc i64 %i.iq to i32                  ; 2 uses
  br i1 %i.ir, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 0, ptr %i.ip, align 8, !tbaa !311
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  store i32 0, ptr %i.it, align 4, !tbaa !313
  %i.iu = load ptr, ptr %i.io, align 8, !tbaa !314
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #21, !inline_history !493
  %i.ix = load ptr, ptr %i.io, align 8, !tbaa !314
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #21, !inline_history !493
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit89

bb.cj:                                            ; preds = %bb.ch
  %i.ja = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i2.i86 = icmp eq i8 %i.ja, 0
  br i1 %.not.i.i.i2.i86, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jb = add nsw i32 %i.is, -1
  store i32 %i.jb, ptr %i.ip, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i87

bb.cl:                                            ; preds = %bb.cj
  %i.jc = atomicrmw volatile add ptr %i.ip, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i87

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i87: ; preds = %bb.cl, %bb.ck
  %.0.i.i.i.i4.i88 = phi i32 [ %i.is, %bb.ck ], [ %i.jc, %bb.cl ]
  %i.jd = icmp eq i32 %.0.i.i.i.i4.i88, 1
  br i1 %i.jd, label %bb.cm, label %_ZN5arrow7compute9InputTypeD2Ev.exit89, !prof !317

bb.cm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i87
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.io) #21
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit89

_ZN5arrow7compute9InputTypeD2Ev.exit89:           ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i84, %bb.ci, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i87, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %_ZN5arrow7compute8internalL21CanCastFromDictionaryENS_4Type4typeE.exit

bb.cn:                                            ; preds = %bb.bl
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit127

bb.co:                                            ; preds = %.noexc3.i59
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %bb.bn
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %17) #21
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn28 = phi { ptr, i32 } [ %i.jg, %bb.cp ], [ %i.jf, %bb.co ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #21
  br label %.body64

.body64:                                          ; preds = %30, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i58, %bb.cq
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %bb.cq ], [ %i.gl, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i58 ], [ %i.gl, %30 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #21
  br label %.loopexit127

.loopexit127:                                     ; preds = %.body64, %bb.cn
  %.pn28.pn.pn = phi { ptr, i32 } [ %i.je, %bb.cn ], [ %.pn28.pn, %.body64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.dw

_ZN5arrow7compute8internalL21CanCastFromDictionaryENS_4Type4typeE.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow7compute9InputTypeD2Ev.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.107") align 8 %3, i32 noundef 31)
          to label %bb.cr unwind label %bb.ds

bb.cr:                                            ; preds = %_ZN5arrow7compute8internalL21CanCastFromDictionaryENS_4Type4typeE.exit
  store i32 2, ptr %20, align 8, !tbaa !523
  %i.jh = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.jj = load <2 x ptr>, ptr %3, align 16, !tbaa !356
  store <2 x ptr> %i.jj, ptr %i.ji, align 8, !tbaa !356
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.jk = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc3.i94 unwind label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i93 ; 4 uses

.noexc3.i94:                                      ; preds = %bb.cr
  store ptr %i.jk, ptr %19, align 8, !tbaa !485
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 40 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr %i.jl, ptr %i.jm, align 8, !tbaa !488
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jn, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.jk, ptr noundef nonnull align 8 dereferenceable(40) %20)
  %i.jo = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store ptr %i.jl, ptr %i.jo, align 8, !tbaa !489
  invoke void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %21, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.cs unwind label %bb.dt

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i93: ; preds = %bb.cr
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %36 = load ptr, ptr %19, align 8, !tbaa !485    ; 3 uses
  %.not.i.i4.i92 = icmp eq ptr %36, null
  br i1 %.not.i.i4.i92, label %.body99, label %37

37:                                               ; preds = %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i93
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %39 = load ptr, ptr %38, align 8, !tbaa !488
  %40 = ptrtoint ptr %39 to i64
  %41 = ptrtoint ptr %36 to i64
  %42 = sub i64 %40, %41
  call void @_ZdlPvm(ptr noundef nonnull %36, i64 noundef %42) #22
  br label %.body99

bb.cs:                                            ; preds = %.noexc3.i94
  invoke void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeESt6vectorINS0_9InputTypeESaIS6_EENS0_10OutputTypeEPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENS0_12NullHandling4typeENS0_13MemAllocation4typeE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %18, ptr noundef nonnull align 8 dereferenceable(252) %2, i32 noundef 31, ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef nonnull @_ZN5arrow7compute8internal17CastFromExtensionEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, i32 noundef 2, i32 noundef 1)
          to label %bb.ct unwind label %bb.du

bb.ct:                                            ; preds = %bb.cs
  %i.jq = load ptr, ptr %18, align 8, !tbaa !343  ; 2 uses
  %.not.i102 = icmp eq ptr %i.jq, null
  br i1 %.not.i102, label %_ZN5arrow6StatusD2Ev.exit103, label %bb.cu, !prof !346

bb.cu:                                            ; preds = %bb.ct
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 1
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !368, !range !375, !noundef !376
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %_ZN5arrow6StatusD2Ev.exit103, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #21
  br label %_ZN5arrow6StatusD2Ev.exit103

_ZN5arrow6StatusD2Ev.exit103:                     ; preds = %bb.ct, %bb.cu, %bb.cv
  %i.ju = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !450 ; 2 uses
  %.not.i.i104 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i104, label %_ZNSt14_Function_baseD2Ev.exit.i105, label %bb.cw

bb.cw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit103
  %i.jw = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.jx = invoke noundef zeroext i1 %i.jv(ptr noundef nonnull align 8 dereferenceable(32) %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %i.jw, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i105 unwind label %bb.cx ; 0 uses

bb.cx:                                            ; preds = %bb.cw
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i105:              ; preds = %bb.cw, %_ZN5arrow6StatusD2Ev.exit103
  %i.ka = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !308 ; 8 uses
  %.not.i.i.i106 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i106, label %_ZN5arrow7compute10OutputTypeD2Ev.exit110, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i105
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 4 uses
  %i.kd = load atomic i64, ptr %i.kc acquire, align 8 ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 4294967297
  %i.kf = trunc i64 %i.kd to i32                  ; 2 uses
  br i1 %i.ke, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.kc, align 8, !tbaa !311
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  store i32 0, ptr %i.kg, align 4, !tbaa !313
  %i.kh = load ptr, ptr %i.kb, align 8, !tbaa !314
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #21, !inline_history !491
  %i.kk = load ptr, ptr %i.kb, align 8, !tbaa !314
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #21, !inline_history !491
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit110

bb.da:                                            ; preds = %bb.cy
  %i.kn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i107 = icmp eq i8 %i.kn, 0
  br i1 %.not.i.i.i.i107, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ko = add nsw i32 %i.kf, -1
  store i32 %i.ko, ptr %i.kc, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i108

bb.dc:                                            ; preds = %bb.da
  %i.kp = atomicrmw volatile add ptr %i.kc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i108

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i108: ; preds = %bb.dc, %bb.db
  %.0.i.i.i.i.i109 = phi i32 [ %i.kf, %bb.db ], [ %i.kp, %bb.dc ]
  %i.kq = icmp eq i32 %.0.i.i.i.i.i109, 1
  br i1 %i.kq, label %bb.dd, label %_ZN5arrow7compute10OutputTypeD2Ev.exit110, !prof !317

bb.dd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i108
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #21
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit110

_ZN5arrow7compute10OutputTypeD2Ev.exit110:        ; preds = %_ZNSt14_Function_baseD2Ev.exit.i105, %bb.cz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i108, %bb.dd
  %i.kr = load ptr, ptr %19, align 8, !tbaa !485
  %i.ks = load ptr, ptr %i.jo, align 8, !tbaa !489
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.kr, ptr noundef %i.ks)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i111 unwind label %bb.df

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i111: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit110
  %i.kt = load ptr, ptr %19, align 8, !tbaa !485  ; 3 uses
  %.not.i.i.i112 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit114, label %bb.de

bb.de:                                            ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i111
  %i.ku = load ptr, ptr %i.jm, align 8, !tbaa !488
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = ptrtoint ptr %i.kt to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.kx) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit114

bb.df:                                            ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit110
  %i.ky = landingpad { ptr, i32 }
          catch ptr null
  %i.kz = extractvalue { ptr, i32 } %i.ky, 0
  call void @__clang_call_terminate(ptr %i.kz) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit114: ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i111, %bb.de
  %i.la = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !308 ; 8 uses
  %.not.i.i.i115 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i115, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i119, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit114
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8 ; 4 uses
  %i.ld = load atomic i64, ptr %i.lc acquire, align 8 ; 2 uses
  %i.le = icmp eq i64 %i.ld, 4294967297
  %i.lf = trunc i64 %i.ld to i32                  ; 2 uses
  br i1 %i.le, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  store i32 0, ptr %i.lc, align 8, !tbaa !311
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  store i32 0, ptr %i.lg, align 4, !tbaa !313
  %i.lh = load ptr, ptr %i.lb, align 8, !tbaa !314
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(16) %i.lb) #21, !inline_history !492
  %i.lk = load ptr, ptr %i.lb, align 8, !tbaa !314
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(16) %i.lb) #21, !inline_history !492
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i119

bb.di:                                            ; preds = %bb.dg
  %i.ln = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i116 = icmp eq i8 %i.ln, 0
  br i1 %.not.i.i.i.i116, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.lo = add nsw i32 %i.lf, -1
  store i32 %i.lo, ptr %i.lc, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i117

bb.dk:                                            ; preds = %bb.di
  %i.lp = atomicrmw volatile add ptr %i.lc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i117

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i117: ; preds = %bb.dk, %bb.dj
  %.0.i.i.i.i.i118 = phi i32 [ %i.lf, %bb.dj ], [ %i.lp, %bb.dk ]
  %i.lq = icmp eq i32 %.0.i.i.i.i.i118, 1
  br i1 %i.lq, label %bb.dl, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i119, !prof !317

bb.dl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i117
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lb) #21
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i119

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i119: ; preds = %bb.dl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i117, %bb.dh, %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit114
  %i.lr = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !308 ; 8 uses
  %.not.i.i1.i120 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i1.i120, label %_ZN5arrow7compute9InputTypeD2Ev.exit124, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i119
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 4 uses
  %i.lu = load atomic i64, ptr %i.lt acquire, align 8 ; 2 uses
  %i.lv = icmp eq i64 %i.lu, 4294967297
  %i.lw = trunc i64 %i.lu to i32                  ; 2 uses
  br i1 %i.lv, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i32 0, ptr %i.lt, align 8, !tbaa !311
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 12
  store i32 0, ptr %i.lx, align 4, !tbaa !313
  %i.ly = load ptr, ptr %i.ls, align 8, !tbaa !314
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8
  call void %i.ma(ptr noundef nonnull align 8 dereferenceable(16) %i.ls) #21, !inline_history !493
  %i.mb = load ptr, ptr %i.ls, align 8, !tbaa !314
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.md = load ptr, ptr %i.mc, align 8
  call void %i.md(ptr noundef nonnull align 8 dereferenceable(16) %i.ls) #21, !inline_history !493
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit124

bb.do:                                            ; preds = %bb.dm
  %i.me = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i2.i121 = icmp eq i8 %i.me, 0
  br i1 %.not.i.i.i2.i121, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.mf = add nsw i32 %i.lw, -1
  store i32 %i.mf, ptr %i.lt, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i122

bb.dq:                                            ; preds = %bb.do
  %i.mg = atomicrmw volatile add ptr %i.lt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i122

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i122: ; preds = %bb.dq, %bb.dp
  %.0.i.i.i.i4.i123 = phi i32 [ %i.lw, %bb.dp ], [ %i.mg, %bb.dq ]
  %i.mh = icmp eq i32 %.0.i.i.i.i4.i123, 1
  br i1 %i.mh, label %bb.dr, label %_ZN5arrow7compute9InputTypeD2Ev.exit124, !prof !317

bb.dr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i122
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ls) #21
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit124

_ZN5arrow7compute9InputTypeD2Ev.exit124:          ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i119, %bb.dn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i122, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.ds:                                            ; preds = %_ZN5arrow7compute8internalL21CanCastFromDictionaryENS_4Type4typeE.exit
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.dt:                                            ; preds = %.noexc3.i94
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.du:                                            ; preds = %bb.cs
  %i.mk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %21) #21
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.pn32 = phi { ptr, i32 } [ %i.mk, %bb.du ], [ %i.mj, %bb.dt ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #21
  br label %.body99

.body99:                                          ; preds = %37, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i93, %bb.dv
  %.pn32.pn = phi { ptr, i32 } [ %.pn32, %bb.dv ], [ %i.jp, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i93 ], [ %i.jp, %37 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #21
  br label %.loopexit

.loopexit:                                        ; preds = %.body99, %bb.ds
  %.pn32.pn.pn = phi { ptr, i32 } [ %i.mi, %bb.ds ], [ %.pn32.pn, %.body99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.dw

bb.dw:                                            ; preds = %.loopexit, %.loopexit127, %bb.bk, %bb.bj
  %.pn32.pn.pn.pn = phi { ptr, i32 } [ %.pn32.pn.pn, %.loopexit ], [ %.pn28.pn.pn, %.loopexit127 ], [ %.pn.pn.pn, %bb.bj ], [ %i.gc, %bb.bk ]
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn32.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4nullEv() local_unnamed_addr #3

declare void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeESt6vectorINS0_9InputTypeESaIS6_EENS0_10OutputTypeEPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENS0_12NullHandling4typeENS0_13MemAllocation4typeE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(252), i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !314
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !530
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !314
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !530
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZN5arrow7compute11TakeOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(17), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !353
  switch i8 %i.b, label %bb.ak [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit
    i8 1, label %bb.b
    i8 2, label %bb.i
    i8 3, label %bb.p
    i8 4, label %bb.w
    i8 5, label %bb.ad
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !308  ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !311
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !313
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !314
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #21, !inline_history !531
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !314
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #21, !inline_history !531
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, !prof !317

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #21
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.i:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !308  ; 8 uses
  %.not.i.i.i.i.i.i.i.i14 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i14, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.v, align 8, !tbaa !311
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !313
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !314
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !532
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !314
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !532
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i15 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i15, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16

bb.n:                                             ; preds = %bb.l
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i17 = phi i32 [ %i.y, %bb.m ], [ %i.ai, %bb.n ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i17, 1
  br i1 %i.aj, label %bb.o, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, !prof !317

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.p:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !308 ; 8 uses
  %.not.i.i.i.i.i.i.i.i18 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i18, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
end_hunk_3
begin_hunk_4_@_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9ArraySpanESt10shared_ptrINS3_9ArrayDataEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_S7_EEEEDcOT0_DpOT1_:bb.a

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow9ArraySpanESt10shared_ptrINS4_9ArrayDataEEEE8_M_resetEvEUlOT_E_RSt7variantIJS5_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESD_SG_.exit, !prof !317

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #21
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow9ArraySpanESt10shared_ptrINS4_9ArrayDataEEEE8_M_resetEvEUlOT_E_RSt7variantIJS5_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESD_SG_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow9ArraySpanESt10shared_ptrINS4_9ArrayDataEEEE8_M_resetEvEUlOT_E_RSt7variantIJS5_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESD_SG_.exit: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.g, %bb.e, %bb.d, %_ZN5arrow9ArraySpanD2Ev.exit.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i2 = icmp eq ptr %0, %1
  br i1 %.not.i2, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit
  %.0.i3 = phi ptr [ %i.m, %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.i3, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !553
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i3, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !554
  invoke void @_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_(ptr noundef %i.b, ptr noundef %i.d)
          to label %_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_.exit unwind label %bb.b, !inline_history !559

bb.b:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #23, !inline_history !559
  unreachable

_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_.exit:       ; preds = %.lr.ph
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !553  ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i3, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !556
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #22
  br label %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_.exit, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i3, i64 128 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit, label %.lr.ph, !llvm.loop !560

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit: ; preds = %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow15DictionaryArrayD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow15DictionaryArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5ArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %0, align 8, !tbaa !314
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !308  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !311
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !313
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !314
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !316
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !314
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !316
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !317

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5ArrayD0Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %0, align 8, !tbaa !314
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !308  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow5ArrayD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !311
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !313
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !314
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !388
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !314
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !388
  br label %_ZN5arrow5ArrayD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow5ArrayD2Ev.exit, !prof !317

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !389
  br label %_ZN5arrow5ArrayD2Ev.exit

_ZN5arrow5ArrayD2Ev.exit:                         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !472
  %i.g = load ptr, ptr %0, align 8, !tbaa !470    ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.d, 576460752303423487
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #24
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #25 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.v, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !308  ; 2 uses
  %i.p = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !356
  store <2 x ptr> %i.p, ptr %.011.i.i.i.i.i, align 8, !tbaa !356
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !561

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i
  %3 = load ptr, ptr %0, align 8, !tbaa !470      ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !471  ; 2 uses
  %.not4.i.i = icmp eq ptr %3, %i.y
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i ], [ %3, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !308 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ab, align 8, !tbaa !311
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !313
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !314
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #21, !inline_history !562
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !314
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #21, !inline_history !562
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ae, %bb.j ], [ %i.ao, %bb.k ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.l, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i, !prof !317

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #21
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h, %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.aq, %i.y
  br i1 %.not.i.i16, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !475

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !470
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEEEvT_S5_.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit
  %i.ar = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEEEvT_S5_.exitthread-pre-split ], [ %3, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEEEvT_S5_.exit
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !472
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #22
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEEEvT_S5_.exit, %bb.m
  store ptr %i.m, ptr %0, align 8, !tbaa !470
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c ; 2 uses
  store ptr %i.aw, ptr %i.x, align 8, !tbaa !471
  store ptr %i.aw, ptr %i.e, align 8, !tbaa !472
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.n:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !471 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.i                     ; 3 uses
  %.not = icmp ult i64 %i.ba, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKSt10shared_ptrIN5arrow6BufferEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = icmp sgt i64 %i.d, 0
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i17:                               ; preds = %bb.o, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ce, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i ], [ %i.d, %bb.o ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cd, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i ], [ %i.g, %bb.o ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cc, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i ], [ %1, %bb.o ] ; 3 uses
  %i.bc = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !563
  store ptr %i.bc, ptr %.0811.i.i.i.i.i, align 8, !tbaa !563
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !308 ; 4 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !308 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i17
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i18 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i18, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bl = atomicrmw volatile add ptr %i.bh, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !308
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.p
  %i.bm = phi ptr [ %i.bg, %bb.p ], [ %i.bg, %bb.r ], [ %.pr.pre.i.i.i.i.i.i.i.i, %bb.s ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bn, align 8, !tbaa !311
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !313
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !314
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #21, !inline_history !566
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !314
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #21, !inline_history !566
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.w ], [ %i.ca, %bb.x ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.y, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, !prof !317

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.u, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !308
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i17
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.ce = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cf = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit.loopexit, !llvm.loop !567

_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.ax, align 8, !tbaa !471
  br label %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit

_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit: ; preds = %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit.loopexit, %bb.o
  %i.cg = phi ptr [ %i.ay, %bb.o ], [ %.pre, %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit.loopexit ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.g, %bb.o ], [ %i.cd, %_ZSt4copyIPKSt10shared_ptrIN5arrow6BufferEEPS3_ET0_T_S8_S7_.exit.loopexit ] ; 3 uses
  %.not.i19 = icmp eq ptr %i.cg, %.08.lcssa.i.i.i.i.i
  br i1 %.not.i19, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE15_M_erase_at_endEPS3_.exit, label %.lr.ph.i.i.i
end_hunk_4
