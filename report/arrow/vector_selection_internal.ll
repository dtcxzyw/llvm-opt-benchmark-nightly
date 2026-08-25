Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/vector_selection_internal?download=true
inline.NumInlined: 7390
inline.NumDeleted: 1611
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN5arrow7compute8internal19LargeListFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.qv = load ptr, ptr %i.qm, align 8, !tbaa !45, !noalias !385
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 24
  %i.qx = load ptr, ptr %i.qw, align 8, !noalias !385
  call void %i.qx(ptr noundef nonnull align 8 dereferenceable(16) %i.qm) #25, !noalias !385, !inline_history !479
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.qy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78, !noalias !385
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.qy, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.qz = add nsw i32 %i.qq, -1
  store i32 %i.qz, ptr %i.qn, align 8, !tbaa !3, !noalias !385
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.ra = atomicrmw volatile add ptr %i.qn, i32 -1 acq_rel, align 4, !noalias !385
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.qq, %bb.az ], [ %i.ra, %bb.ba ]
  %i.rb = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.rb, label %bb.bb, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !80

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qm) #25, !noalias !385, !inline_history !480
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ax, %.critedge.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %18, align 8, !tbaa !45, !noalias !385
  %i.rc = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !47, !noalias !385 ; 8 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.rd, null
  br i1 %.not.i.i.i1.i.i.i.i, label %bb.bj, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8 ; 4 uses
  %i.rf = load atomic i64, ptr %i.re acquire, align 8, !noalias !385 ; 2 uses
  %i.rg = icmp eq i64 %i.rf, 4294967297
  %i.rh = trunc i64 %i.rf to i32                  ; 2 uses
  br i1 %i.rg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.re, align 8, !tbaa !42, !noalias !385
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rd, i64 12
  store i32 0, ptr %i.ri, align 4, !tbaa !44, !noalias !385
  %i.rj = load ptr, ptr %i.rd, align 8, !tbaa !45, !noalias !385
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %i.rl = load ptr, ptr %i.rk, align 8, !noalias !385
  call void %i.rl(ptr noundef nonnull align 8 dereferenceable(16) %i.rd) #25, !noalias !385, !inline_history !481
  %i.rm = load ptr, ptr %i.rd, align 8, !tbaa !45, !noalias !385
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.ro = load ptr, ptr %i.rn, align 8, !noalias !385
  call void %i.ro(ptr noundef nonnull align 8 dereferenceable(16) %i.rd) #25, !noalias !385, !inline_history !481
  br label %bb.bj

bb.be:                                            ; preds = %bb.bc
  %i.rp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78, !noalias !385
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.rp, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.rq = add nsw i32 %i.rh, -1
  store i32 %i.rq, ptr %i.re, align 8, !tbaa !3, !noalias !385
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.rr = atomicrmw volatile add ptr %i.re, i32 -1 acq_rel, align 4, !noalias !385
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.rh, %bb.bf ], [ %i.rr, %bb.bg ]
  %i.rs = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.rs, label %bb.bh, label %bb.bj, !prof !80

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rd) #25, !noalias !385, !inline_history !482
  br label %bb.bj

bb.bi:                                            ; preds = %.body.i.i.i, %bb.av
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body.i.i.i ], [ %i.qc, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !385
  br label %.body.i

bb.bj:                                            ; preds = %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bd, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !385
  store ptr null, ptr %0, align 8, !tbaa !115, !alias.scope !374
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i.i unwind label %bb.bk

_ZN5arrow6StatusC2ERKS0_.exit.i.i:                ; preds = %bb.bj
  %i.rt = load ptr, ptr %0, align 8, !tbaa !115, !alias.scope !374
  %i.ru = icmp eq ptr %i.rt, null
  br i1 %i.ru, label %_ZN5arrow6StatusD2Ev.exit38.i.i, label %.critedge.i.i

bb.bk:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit44.i.i, %bb.bj
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

_ZN5arrow6StatusD2Ev.exit38.i.i:                  ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25, !noalias !374
  invoke fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_17ListSelectionImplINS_13LargeListTypeEEES5_E12FinishCommonEv(ptr dead_on_unwind noalias writable align 8 %26, ptr noundef nonnull align 8 dereferenceable(120) %27)
          to label %_ZN5arrow6StatusD2Ev.exit40.i.i unwind label %bb.bl

_ZN5arrow6StatusD2Ev.exit40.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit38.i.i
  %i.rw = load ptr, ptr %26, align 8, !tbaa !115, !noalias !374 ; 2 uses
  store ptr %i.rw, ptr %0, align 8, !tbaa !115, !alias.scope !374
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25, !noalias !374
  %i.rx = icmp eq ptr %i.rw, null
  br i1 %i.rx, label %_ZN5arrow6StatusD2Ev.exit44.i.i, label %.critedge.i.i

bb.bl:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit38.i.i
  %i.ry = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25, !noalias !374
  br label %bb.bo

_ZN5arrow6StatusD2Ev.exit44.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit40.i.i
  %i.rz = load ptr, ptr %27, align 8, !tbaa !45, !noalias !374
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 24
  %i.sb = load ptr, ptr %i.sa, align 8
  invoke void %i.sb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %27)
          to label %.critedge.i.i unwind label %bb.bk

.critedge.i.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit44.i.i, %_ZN5arrow6StatusD2Ev.exit40.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i.i
  %i.sc = load ptr, ptr %25, align 8, !tbaa !115, !noalias !374 ; 2 uses
  %.not.i45.i.i = icmp eq ptr %i.sc, null
  br i1 %.not.i45.i.i, label %_ZN5arrow6StatusD2Ev.exit46.i.i, label %bb.bm, !prof !118

bb.bm:                                            ; preds = %.critedge.i.i
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 1
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !119, !range !128, !noundef !129
  %i.sf = trunc nuw i8 %i.se to i1
  br i1 %i.sf, label %_ZN5arrow6StatusD2Ev.exit46.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #25
  br label %_ZN5arrow6StatusD2Ev.exit46.i.i

_ZN5arrow6StatusD2Ev.exit46.i.i:                  ; preds = %bb.bn, %bb.bm, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25, !noalias !374
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_17ListSelectionImplINS_13LargeListTypeEEEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

bb.bo:                                            ; preds = %bb.bl, %bb.bk
  %.pn22.i.i = phi { ptr, i32 } [ %i.rv, %bb.bk ], [ %i.ry, %bb.bl ]
  %i.sg = load ptr, ptr %25, align 8, !tbaa !115, !noalias !374 ; 2 uses
  %.not.i47.i.i = icmp eq ptr %i.sg, null
  br i1 %.not.i47.i.i, label %_ZN5arrow6StatusD2Ev.exit48.i.i, label %bb.bp, !prof !118

bb.bp:                                            ; preds = %bb.bo
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 1
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !119, !range !128, !noundef !129
  %i.sj = trunc nuw i8 %i.si to i1
  br i1 %i.sj, label %_ZN5arrow6StatusD2Ev.exit48.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #25
  br label %_ZN5arrow6StatusD2Ev.exit48.i.i

_ZN5arrow6StatusD2Ev.exit48.i.i:                  ; preds = %bb.bq, %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25, !noalias !374
  br label %.body.i

bb.br:                                            ; preds = %bb.d, %_ZN5arrow6StatusD2Ev.exit32.i.i, %bb.a
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.br, %_ZN5arrow6StatusD2Ev.exit48.i.i, %bb.bi
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.sk, %bb.br ], [ %.pn.pn.i.i.i, %bb.bi ], [ %.pn22.i.i, %_ZN5arrow6StatusD2Ev.exit48.i.i ]
  call void @_ZN5arrow7compute8internal12_GLOBAL__N_117ListSelectionImplINS_13LargeListTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(392) %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25, !noalias !366
  resume { ptr, i32 } %eh.lpad-body.i

_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_17ListSelectionImplINS_13LargeListTypeEEEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit: ; preds = %bb.c, %.noexc7.i, %_ZN5arrow6StatusD2Ev.exit46.i.i
  call void @_ZN5arrow7compute8internal12_GLOBAL__N_117ListSelectionImplINS_13LargeListTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(392) %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25, !noalias !366
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal18ListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.arrow::internal::OptionalBitIndexer", align 8 ; 6 uses
  %5 = alloca %class.anon.233, align 8            ; 7 uses
  %6 = alloca %class.anon.234, align 8            ; 8 uses
  %7 = alloca %class.anon.235, align 8            ; 11 uses
  %8 = alloca %"class.std::function.63", align 8  ; 12 uses
  %9 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %10 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %11 = alloca %"class.arrow::internal::BitBlockCounter", align 8 ; 10 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 14 uses
  %17 = alloca %class.anon.231, align 8           ; 8 uses
  %18 = alloca %class.anon.232, align 8           ; 5 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %23 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::ListViewSelectionImpl", align 8 ; 36 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201, !noalias !483
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !204, !noalias !483
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !208, !noalias !483
  %i.k = tail call noundef i64 @_ZN5arrow7compute8internal19GetFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE(ptr noundef nonnull align 8 dereferenceable(128) %i.f, i32 noundef %i.j), !noalias !483 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25, !noalias !483
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !201, !noalias !483 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store ptr %1, ptr %i.l, align 8, !tbaa !486, !noalias !483
  %i.m = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  store ptr %.val.i, ptr %i.m, align 8, !tbaa !488, !noalias !483
  %i.n = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 136
  store ptr %i.o, ptr %i.n, align 8, !tbaa !488, !noalias !483
  %i.p = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i64 %i.k, ptr %i.p, align 8, !tbaa !489, !noalias !483
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.r = load i8, ptr %i.q, align 8, !tbaa !490, !noalias !483
  switch i8 %i.r, label %bb.b [
    i8 1, label %_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_12ListViewTypeEEC2EPNS0_13KernelContextERKNS0_8ExecSpanElPNS0_10ExecResultE.exit.i
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i.i.i
  ], !prof !492

bb.b:                                             ; preds = %bb.a
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #25, !noalias !483 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.s, align 8, !tbaa !45, !noalias !483
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @.str.3, ptr %i.t, align 8, !tbaa !493, !noalias !483
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29, !noalias !483
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #25, !noalias !483 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.u, align 8, !tbaa !45, !noalias !483
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @.str.2, ptr %i.v, align 8, !tbaa !493, !noalias !483
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29, !noalias !483
  unreachable

_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_12ListViewTypeEEC2EPNS0_13KernelContextERKNS0_8ExecSpanElPNS0_10ExecResultE.exit.i: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.x = load ptr, ptr %3, align 8, !tbaa !496, !noalias !483
  store ptr %i.x, ptr %i.w, align 8, !tbaa !497, !noalias !483
  %i.y = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !498, !noalias !483 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !499, !noalias !483
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.y, i8 0, i64 16, i1 false), !noalias !483
  %i.ab = getelementptr inbounds nuw i8, ptr %23, i64 64
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !503, !noalias !483
  %i.ac = getelementptr inbounds nuw i8, ptr %23, i64 72 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ac, align 8, !tbaa !235, !noalias !483
  %i.ad = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %23, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false), !noalias !483
  store i64 64, ptr %i.ae, align 8, !tbaa !504, !noalias !483
  %i.af = getelementptr inbounds nuw i8, ptr %23, i64 104 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false), !noalias !483
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_12ListViewTypeEEE, i64 16), ptr %23, align 8, !tbaa !45, !noalias !483
  %i.ag = getelementptr inbounds nuw i8, ptr %23, i64 120
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !499, !noalias !483
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i8 0, i64 16, i1 false), !noalias !483
  %i.ai = getelementptr inbounds nuw i8, ptr %23, i64 136
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !503, !noalias !483
  %i.aj = getelementptr inbounds nuw i8, ptr %23, i64 144
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.aj, align 8, !tbaa !235, !noalias !483
  %i.ak = getelementptr inbounds nuw i8, ptr %23, i64 152
  %i.al = getelementptr inbounds nuw i8, ptr %23, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !noalias !483
  store i64 64, ptr %i.al, align 8, !tbaa !504, !noalias !483
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !499, !noalias !483
  %i.an = getelementptr inbounds nuw i8, ptr %23, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.an, i8 0, i64 16, i1 false), !noalias !483
  %i.ao = getelementptr inbounds nuw i8, ptr %23, i64 192
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !503, !noalias !483
  %i.ap = getelementptr inbounds nuw i8, ptr %23, i64 200
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ap, align 8, !tbaa !235, !noalias !483
  %i.aq = getelementptr inbounds nuw i8, ptr %23, i64 208
  %i.ar = getelementptr inbounds nuw i8, ptr %23, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false), !noalias !483
  store i64 64, ptr %i.ar, align 8, !tbaa !504, !noalias !483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %.sroa.speculated.i.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.k, i64 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25, !noalias !508
  %i.as = add nuw i64 %.sroa.speculated.i.i.i.i, 7
  %i.at = lshr i64 %i.as, 3
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %19, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 noundef %i.at, i1 noundef zeroext false)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !483

.noexc.i:                                         ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_12ListViewTypeEEC2EPNS0_13KernelContextERKNS0_8ExecSpanElPNS0_10ExecResultE.exit.i
  %i.au = load ptr, ptr %19, align 8, !tbaa !115, !noalias !508 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !508
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5arrow6StatusD2Ev.exit17.i.i.i.i, label %bb.d

_ZN5arrow6StatusD2Ev.exit17.i.i.i.i:              ; preds = %.noexc.i
  %i.aw = load i64, ptr %i.ad, align 8, !tbaa !231, !noalias !508 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit32.i.i

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17.i.i.i.i
  %i.ay = load ptr, ptr %i.ac, align 8, !tbaa !235, !noalias !508
  call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.aw, i1 false), !noalias !508
  br label %_ZN5arrow6StatusD2Ev.exit32.i.i

bb.d:                                             ; preds = %.noexc.i
  store ptr %i.au, ptr %0, align 8, !tbaa !115, !alias.scope !513
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_21ListViewSelectionImplINS_12ListViewTypeEEEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

_ZN5arrow6StatusD2Ev.exit32.i.i:                  ; preds = %bb.c, %_ZN5arrow6StatusD2Ev.exit17.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25, !noalias !513
  %i.az = load ptr, ptr %23, align 8, !tbaa !45, !noalias !513
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !513
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %20, ptr noundef nonnull align 8 dereferenceable(120) %23)
          to label %.noexc7.i unwind label %.loopexit.split-lp.i, !noalias !483, !inline_history !514

.noexc7.i:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit32.i.i
  %i.bc = load ptr, ptr %20, align 8, !tbaa !115, !noalias !513 ; 2 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !115, !alias.scope !513
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25, !noalias !513
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.e, label %_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_21ListViewSelectionImplINS_12ListViewTypeEEEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

bb.e:                                             ; preds = %.noexc7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25, !noalias !513
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !518
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !519, !noalias !518, !nonnull !129, !align !242 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !164, !noalias !518 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !165, !noalias !518
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bg
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !249, !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !518
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !165, !noalias !518
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bg
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !249, !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !518
  store i32 0, ptr %i.c, align 4, !tbaa !3, !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !518
  store ptr %i.a, ptr %17, align 8, !tbaa !520, !noalias !518
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.bo, align 8, !tbaa !520, !noalias !518
  %i.bp = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %23, ptr %i.bp, align 8, !tbaa !523, !noalias !518
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.bq, align 8, !tbaa !249, !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !518
  store ptr %23, ptr %18, align 8, !tbaa !526, !noalias !518
  %i.br = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.c, ptr %i.br, align 8, !tbaa !249, !noalias !518
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !534, !noalias !535, !nonnull !129, !align !242 ; 5 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !142, !noalias !535
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !149, !noalias !535
  %i.bw = icmp eq i32 %i.bv, 38
  %i.bx = load ptr, ptr %i.l, align 8, !tbaa !486, !noalias !535
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !204, !noalias !535
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !208, !noalias !535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !535
  %i.cc = load ptr, ptr %i.bh, align 8, !tbaa !165, !noalias !535 ; 2 uses
  store ptr %i.cc, ptr %4, align 8, !tbaa !262, !noalias !535
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bg, ptr %i.cd, align 8, !tbaa !264, !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !535
  store ptr %23, ptr %5, align 8, !tbaa !536, !noalias !535
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %17, ptr %i.ce, align 8, !tbaa !89, !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !535
  store ptr %23, ptr %6, align 8, !tbaa !539, !noalias !535
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %18, ptr %i.cf, align 8, !tbaa !89, !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !535
  store ptr %4, ptr %7, align 8, !tbaa !270, !noalias !535
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.cg, align 8, !tbaa !89, !noalias !535
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %6, ptr %i.ch, align 8, !tbaa !89, !noalias !535
  br i1 %i.bw, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal18ListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
          to label %.noexc9.i unwind label %.loopexit.split-lp.i, !noalias !483

.noexc9.i:                                        ; preds = %.noexc8.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !535
  %i.dl = load ptr, ptr %i.n, align 8, !tbaa !534, !noalias !535, !nonnull !129, !align !242
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !135, !noalias !535 ; 2 uses
  %.not.i.i162.i.i.i.i.i = icmp eq ptr %i.dc, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i.i.i.i.i.i = select i1 %.not.i.i162.i.i.i.i.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.dc, !prof !80
  %i.do = sdiv i64 %i.df, 8
  %i.dp = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i.i.i.i.i.i.i, i64 %i.do
  store ptr %i.dp, ptr %11, align 8, !tbaa !275, !noalias !535
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 %i.dn, ptr %i.dq, align 8, !tbaa !277, !noalias !535
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ds = srem i64 %i.df, 8
  store i64 %i.ds, ptr %i.dr, align 8, !tbaa !278, !noalias !535
  %i.dt = icmp sgt i64 %i.dn, 0
  br i1 %i.dt, label %.lr.ph268.i.i.i.i.i, label %.critedge158.i.i.i.i.i

.lr.ph268.i.i.i.i.i:                              ; preds = %.noexc9.i
  %i.du = icmp eq i32 %i.cb, 0                    ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.critedge144.i.i.i.i.i, %.lr.ph268.i.i.i.i.i
  %.0107267.i.i.i.i.i = phi i64 [ 0, %.lr.ph268.i.i.i.i.i ], [ %.11.i.i.i.i.i, %.critedge144.i.i.i.i.i ] ; 13 uses
  %i.dv = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter8NextWordEv(ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %.noexc10.i unwind label %.loopexit.i, !noalias !483 ; 2 uses

.noexc10.i:                                       ; preds = %bb.r
  %.sroa.0218.0.extract.trunc.i.i.i.i.i = trunc i32 %i.dv to i16
  %.sroa.6.0.extract.shift.i.i.i.i.i = lshr i32 %i.dv, 16
  %.sroa.6.0.extract.trunc.i.i.i.i.i = trunc nuw i32 %.sroa.6.0.extract.shift.i.i.i.i.i to i16
  %i.dw = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter8NextWordEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %.noexc11.i unwind label %.loopexit.i, !noalias !483 ; 2 uses

.noexc11.i:                                       ; preds = %.noexc10.i
  %.sroa.0215.0.extract.trunc.i.i.i.i.i = trunc i32 %i.dw to i16
  %.sroa.7.0.extract.shift.i.i.i.i.i = lshr i32 %i.dw, 16
  %.sroa.7.0.extract.trunc.i.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i.i to i16
  %i.dx = load i64, ptr %i.dq, align 8, !tbaa !277, !noalias !535 ; 4 uses
  %.not.i163.i.i.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i163.i.i.i.i.i, label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc11.i
  %i.dy = load i64, ptr %i.dr, align 8, !tbaa !278, !noalias !535 ; 3 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ea = icmp slt i64 %i.dx, 64
  br i1 %i.ea, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eb = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 64) #25, !noalias !535 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i.i.i = lshr i32 %i.eb, 16
  br label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.ec = load ptr, ptr %11, align 8, !tbaa !275, !noalias !535 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 1, !noalias !535
  br label %bb.z

bb.w:                                             ; preds = %bb.s
  %i.ee = sub nsw i64 128, %i.dy
  %i.ef = icmp slt i64 %i.dx, %i.ee
  br i1 %i.ef, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eg = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 64) #25, !noalias !535 ; 2 uses
  %.sroa.5.0.extract.shift2.i.i.i.i.i.i = lshr i32 %i.eg, 16
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.eh = load ptr, ptr %11, align 8, !tbaa !275, !noalias !535 ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 1, !noalias !535
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ek = load i64, ptr %i.ej, align 1, !noalias !535
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.ek, i64 %i.ei, i64 %i.dy)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.0.i.sink.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i, %bb.y ], [ %i.ed, %bb.v ]
  %i.el = phi ptr [ %i.eh, %bb.y ], [ %i.ec, %bb.v ]
  %i.em = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i.i.i.i.i.i)
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.en, ptr %11, align 8, !tbaa !275, !noalias !535
  %i.eo = add nsw i64 %i.dx, -64
  store i64 %i.eo, ptr %i.dq, align 8, !tbaa !277, !noalias !535
  %i.ep = trunc nuw nsw i64 %i.em to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.u
  %.sroa.0.0.i.i.i.i.i.i = phi i32 [ %i.eb, %bb.u ], [ 64, %bb.z ], [ %i.eg, %bb.x ]
  %.sroa.5.0.i.i.i.i.i.i = phi i32 [ %.sroa.5.0.extract.shift.i.i.i.i.i.i, %bb.u ], [ %i.ep, %bb.z ], [ %.sroa.5.0.extract.shift2.i.i.i.i.i.i, %bb.x ]
  %i.eq = shl nuw i32 %.sroa.5.0.i.i.i.i.i.i, 16
  %i.er = and i32 %.sroa.0.0.i.i.i.i.i.i, 65535
  %i.es = or disjoint i32 %i.eq, %i.er
  br label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i

_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i: ; preds = %bb.aa, %.noexc11.i
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = phi i32 [ %i.es, %bb.aa ], [ 0, %.noexc11.i ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i32 %.sroa.0.0.insert.insert.i.i.i.i.i.i to i16 ; 8 uses
  %.sroa.14.0.extract.shift.i.i.i.i.i = lshr i32 %.sroa.0.0.insert.insert.i.i.i.i.i.i, 16 ; 2 uses
  %.sroa.14.0.extract.trunc.i.i.i.i.i = trunc nuw i32 %.sroa.14.0.extract.shift.i.i.i.i.i to i16
  %i.et = icmp eq i32 %.sroa.14.0.extract.shift.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = select i1 %i.et, i1 %i.du, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i
  %i.eu = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i.i to i64
  %i.ev = add nsw i64 %.0107267.i.i.i.i.i, %i.eu
  br label %.critedge144.i.i.i.i.i

bb.ac:                                            ; preds = %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i
  %i.ew = icmp eq i16 %.sroa.0218.0.extract.trunc.i.i.i.i.i, %.sroa.6.0.extract.trunc.i.i.i.i.i
  br i1 %i.ew, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.ex = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, %.sroa.14.0.extract.trunc.i.i.i.i.i
  %i.ey = icmp eq i16 %.sroa.0215.0.extract.trunc.i.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i.i ; 2 uses
  %i.ez = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i.i to i64 ; 6 uses
  br i1 %i.ex, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ey, label %bb.af, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ae
  %.not133259.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0
  br i1 %.not133259.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i, label %.critedge144.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.fa = load ptr, ptr %i.ac, align 8, !tbaa !235, !noalias !535
  %i.fb = load i64, ptr %i.af, align 8, !tbaa !227, !noalias !535
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %i.fa, i64 noundef %i.fb, i64 noundef %i.ez, i1 noundef zeroext true)
          to label %.noexc12.i unwind label %.loopexit.i, !noalias !483

.noexc12.i:                                       ; preds = %bb.af
  %i.fc = load i64, ptr %i.af, align 8, !tbaa !227, !noalias !535
  %i.fd = add nsw i64 %i.fc, %i.ez
  store i64 %i.fd, ptr %i.af, align 8, !tbaa !227, !noalias !535
  %.not136263.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0
  br i1 %.not136263.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit165.i.preheader.i.i.i.i, label %.critedge144.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit165.i.preheader.i.i.i.i: ; preds = %.noexc12.i
  store ptr null, ptr %16, align 8, !tbaa !115, !alias.scope !541, !noalias !518
  br label %_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit165.i.preheader.i.i.i.i
  %.0106265.i.i.i.i.i = phi i64 [ %i.ge, %_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i ], [ 0, %_ZN5arrow6StatusD2Ev.exit165.i.preheader.i.i.i.i ]
  %.1264.i.i.i.i.i = phi i64 [ %i.gd, %_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit165.i.preheader.i.i.i.i ] ; 3 uses
  %i.fe = load ptr, ptr %i.bp, align 8, !tbaa !523, !noalias !542 ; 4 uses
  %i.ff = load ptr, ptr %17, align 8, !tbaa !545, !noalias !542, !nonnull !129, !align !242
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !249, !noalias !542
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %.1264.i.i.i.i.i
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3, !noalias !542 ; 2 uses
  %i.fj = load ptr, ptr %i.bo, align 8, !tbaa !546, !noalias !542, !nonnull !129, !align !242
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !249, !noalias !542
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %.1264.i.i.i.i.i
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3, !noalias !542 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 144
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !235, !noalias !542
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 160 ; 3 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !284, !noalias !542
  %i.fr = getelementptr inbounds i8, ptr %i.fo, i64 %i.fq
  store i32 %i.fi, ptr %i.fr, align 1, !noalias !542
  %i.fs = load i64, ptr %i.fp, align 8, !tbaa !284, !noalias !542
  %i.ft = add nsw i64 %i.fs, 4
  store i64 %i.ft, ptr %i.fp, align 8, !tbaa !284, !noalias !542
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 200
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !235, !noalias !542
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fe, i64 216 ; 3 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !284, !noalias !542
  %i.fy = getelementptr inbounds i8, ptr %i.fv, i64 %i.fx
  store i32 %i.fm, ptr %i.fy, align 1, !noalias !542
  %i.fz = load i64, ptr %i.fw, align 8, !tbaa !284, !noalias !542
  %i.ga = add nsw i64 %i.fz, 4
  store i64 %i.ga, ptr %i.fw, align 8, !tbaa !284, !noalias !542
  %i.gb = add nsw i32 %i.fm, %i.fi
  %i.gc = load ptr, ptr %i.bq, align 8, !tbaa !547, !noalias !542, !nonnull !129, !align !283
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !3, !noalias !542
  %i.gd = add nsw i64 %.1264.i.i.i.i.i, 1         ; 2 uses
  %i.ge = add nuw nsw i64 %.0106265.i.i.i.i.i, 1  ; 2 uses
  %exitcond286.not.i.i.i.i.i = icmp eq i64 %i.ge, %i.ez
  br i1 %exitcond286.not.i.i.i.i.i, label %.critedge144.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i, !llvm.loop !548

_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i:           ; preds = %.preheader.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i
  %.0104261.i.i.i.i.i = phi i64 [ %i.gi, %_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i ]
  %.3260.i.i.i.i.i = phi i64 [ %i.gh, %_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !535
  call fastcc void @_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_21ListViewSelectionImplINS_12ListViewTypeEEES5_E11VisitFilterIZNS6_14GenerateOutputINS7_13FilterAdapterEEENS_6StatusEvEUllE_ZNS9_ISA_EESB_vEUlvE_EESB_OT_OT0_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.3260.i.i.i.i.i), !noalias !535
  %i.gf = load ptr, ptr %12, align 8, !tbaa !115, !noalias !535 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !535
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i, label %.critedge158.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i
  %i.gh = add nsw i64 %.3260.i.i.i.i.i, 1         ; 2 uses
  %i.gi = add nuw nsw i64 %.0104261.i.i.i.i.i, 1  ; 2 uses
  %exitcond285.not.i.i.i.i.i = icmp eq i64 %i.gi, %i.ez
  br i1 %exitcond285.not.i.i.i.i.i, label %.critedge144.i.i.loopexit14.i.i.i, label %_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i, !llvm.loop !549

bb.ag:                                            ; preds = %bb.ad
  %.not132254.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.ey, label %.preheader226.i.i.i.i.i, label %.preheader228.i.i.i.i.i

.preheader228.i.i.i.i.i:                          ; preds = %bb.ag
  br i1 %.not132254.i.i.i.i.i, label %.lr.ph252.i.i.i.i.i, label %.critedge144.i.i.i.i.i

.preheader226.i.i.i.i.i:                          ; preds = %bb.ag
  br i1 %.not132254.i.i.i.i.i, label %.lr.ph257.i.i.i.i.i, label %.critedge144.i.i.i.i.i

.lr.ph257.i.i.i.i.i:                              ; preds = %.preheader226.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i
  %.0102256.i.i.i.i.i = phi i64 [ %i.ij, %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i ], [ 0, %.preheader226.i.i.i.i.i ]
  %.5255.i.i.i.i.i = phi i64 [ %i.ii, %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader226.i.i.i.i.i ] ; 4 uses
  %i.gj = add nsw i64 %.5255.i.i.i.i.i, %i.df     ; 2 uses
  %i.gk = lshr i64 %i.gj, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !78, !noalias !535
  %i.gn = trunc i64 %i.gj to i8
  %i.go = and i8 %i.gn, 7
  %i.gp = lshr i8 %i.gm, %i.go
  %i.gq = trunc i8 %i.gp to i1
  br i1 %i.gq, label %_ZN5arrow6StatusD2Ev.exit177.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit177.i.i.i.i.i:           ; preds = %.lr.ph257.i.i.i.i.i
  %i.gr = load ptr, ptr %5, align 8, !tbaa !536, !noalias !550 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !235, !noalias !550
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 104 ; 3 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !227, !noalias !550 ; 2 uses
  %i.gw = sdiv i64 %i.gv, 8
  %i.gx = getelementptr inbounds i8, ptr %i.gt, i64 %i.gw ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !78, !noalias !550
  %i.gz = srem i64 %i.gv, 8
  %i.ha = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !78, !noalias !550
  %i.hc = or i8 %i.hb, %i.gy
  store i8 %i.hc, ptr %i.gx, align 1, !tbaa !78, !noalias !550
  %i.hd = load i64, ptr %i.gu, align 8, !tbaa !227, !noalias !550
  %i.he = add nsw i64 %i.hd, 1
  store i64 %i.he, ptr %i.gu, align 8, !tbaa !227, !noalias !550
  %i.hf = load ptr, ptr %i.ce, align 8, !tbaa !553, !noalias !550, !nonnull !129, !align !242 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !523, !noalias !554 ; 4 uses
  %i.hi = load ptr, ptr %i.hf, align 8, !tbaa !545, !noalias !554, !nonnull !129, !align !242
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !249, !noalias !554
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %.5255.i.i.i.i.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3, !noalias !554 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !546, !noalias !554, !nonnull !129, !align !242
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !249, !noalias !554
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %.5255.i.i.i.i.i
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !3, !noalias !554 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 144
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !235, !noalias !554
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hh, i64 160 ; 3 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !284, !noalias !554
  %i.hv = getelementptr inbounds i8, ptr %i.hs, i64 %i.hu
  store i32 %i.hl, ptr %i.hv, align 1, !noalias !554
  %i.hw = load i64, ptr %i.ht, align 8, !tbaa !284, !noalias !554
  %i.hx = add nsw i64 %i.hw, 4
  store i64 %i.hx, ptr %i.ht, align 8, !tbaa !284, !noalias !554
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hh, i64 200
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !235, !noalias !554
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hh, i64 216 ; 3 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !284, !noalias !554
  %i.ic = getelementptr inbounds i8, ptr %i.hz, i64 %i.ib
  store i32 %i.hq, ptr %i.ic, align 1, !noalias !554
  %i.id = load i64, ptr %i.ia, align 8, !tbaa !284, !noalias !554
  %i.ie = add nsw i64 %i.id, 4
  store i64 %i.ie, ptr %i.ia, align 8, !tbaa !284, !noalias !554
  %i.if = add nsw i32 %i.hq, %i.hl
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !547, !noalias !554, !nonnull !129, !align !283
  store i32 %i.if, ptr %i.ih, align 4, !tbaa !3, !noalias !554
  store ptr null, ptr %16, align 8, !tbaa !115, !alias.scope !541, !noalias !518
  br label %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit177.i.i.i.i.i, %.lr.ph257.i.i.i.i.i
  %i.ii = add nsw i64 %.5255.i.i.i.i.i, 1         ; 2 uses
  %i.ij = add nuw nsw i64 %.0102256.i.i.i.i.i, 1  ; 2 uses
  %exitcond284.not.i.i.i.i.i = icmp eq i64 %i.ij, %i.ez
  br i1 %exitcond284.not.i.i.i.i.i, label %.critedge144.i.i.i.i.i, label %.lr.ph257.i.i.i.i.i, !llvm.loop !557

.lr.ph252.i.i.i.i.i:                              ; preds = %.preheader228.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i
  %.0100251.i.i.i.i.i = phi i64 [ %i.iv, %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i ], [ 0, %.preheader228.i.i.i.i.i ]
  %.6250.i.i.i.i.i = phi i64 [ %i.iu, %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader228.i.i.i.i.i ] ; 3 uses
  %i.ik = add nsw i64 %.6250.i.i.i.i.i, %i.df     ; 2 uses
  %i.il = lshr i64 %i.ik, 3
  %i.im = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !78, !noalias !535
  %i.io = trunc i64 %i.ik to i8
  %i.ip = and i8 %i.io, 7
  %i.iq = lshr i8 %i.in, %i.ip
  %i.ir = trunc i8 %i.iq to i1
  br i1 %i.ir, label %_ZN5arrow6StatusD2Ev.exit183.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit183.i.i.i.i.i:           ; preds = %.lr.ph252.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !535
  call fastcc void @_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_21ListViewSelectionImplINS_12ListViewTypeEEES5_E11VisitFilterIZNS6_14GenerateOutputINS7_13FilterAdapterEEENS_6StatusEvEUllE_ZNS9_ISA_EESB_vEUlvE_EESB_OT_OT0_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.6250.i.i.i.i.i), !noalias !535
  %i.is = load ptr, ptr %13, align 8, !tbaa !115, !noalias !535 ; 3 uses
  store ptr %i.is, ptr %16, align 8, !tbaa !115, !alias.scope !541, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !535
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i, label %.critedge158.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit183.i.i.i.i.i, %.lr.ph252.i.i.i.i.i
  %i.iu = add nsw i64 %.6250.i.i.i.i.i, 1         ; 2 uses
  %i.iv = add nuw nsw i64 %.0100251.i.i.i.i.i, 1  ; 2 uses
  %exitcond283.not.i.i.i.i.i = icmp eq i64 %i.iv, %i.ez
  br i1 %exitcond283.not.i.i.i.i.i, label %.critedge144.i.i.i.i.i, label %.lr.ph252.i.i.i.i.i, !llvm.loop !558

bb.ah:                                            ; preds = %bb.ac
  %i.iw = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i.i to i64 ; 2 uses
  %.not130244.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.du, label %.preheader231.i.i.i.i.i, label %.preheader234.i.i.i.i.i

.preheader234.i.i.i.i.i:                          ; preds = %bb.ah
  br i1 %.not130244.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.critedge144.i.i.i.i.i

.preheader231.i.i.i.i.i:                          ; preds = %bb.ah
  br i1 %.not130244.i.i.i.i.i, label %.lr.ph247.i.i.i.i.i, label %.critedge144.i.i.i.i.i

.lr.ph247.i.i.i.i.i:                              ; preds = %.preheader231.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i
  %.098246.i.i.i.i.i = phi i64 [ %i.jm, %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i ], [ 0, %.preheader231.i.i.i.i.i ]
  %.7245.i.i.i.i.i = phi i64 [ %i.jl, %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader231.i.i.i.i.i ] ; 3 uses
  %i.ix = add nsw i64 %.7245.i.i.i.i.i, %i.df     ; 2 uses
  %i.iy = lshr i64 %i.ix, 3                       ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !78, !noalias !535
  %i.jb = trunc i64 %i.ix to i8
  %i.jc = and i8 %i.jb, 7                         ; 2 uses
  %i.jd = lshr i8 %i.ja, %i.jc
  %i.je = trunc i8 %i.jd to i1
  br i1 %i.je, label %bb.ai, label %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i

bb.ai:                                            ; preds = %.lr.ph247.i.i.i.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.iy
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !78, !noalias !535
  %i.jh = lshr i8 %i.jg, %i.jc
  %i.ji = trunc i8 %i.jh to i1
  br i1 %i.ji, label %_ZN5arrow6StatusD2Ev.exit189.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit189.i.i.i.i.i:           ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25, !noalias !535
  call fastcc void @_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_21ListViewSelectionImplINS_12ListViewTypeEEES5_E11VisitFilterIZNS6_14GenerateOutputINS7_13FilterAdapterEEENS_6StatusEvEUllE_ZNS9_ISA_EESB_vEUlvE_EESB_OT_OT0_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.7245.i.i.i.i.i), !noalias !535
  %i.jj = load ptr, ptr %14, align 8, !tbaa !115, !noalias !535 ; 3 uses
  store ptr %i.jj, ptr %16, align 8, !tbaa !115, !alias.scope !541, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !535
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i, label %.critedge158.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit189.i.i.i.i.i, %bb.ai, %.lr.ph247.i.i.i.i.i
  %i.jl = add nsw i64 %.7245.i.i.i.i.i, 1         ; 2 uses
  %i.jm = add nuw nsw i64 %.098246.i.i.i.i.i, 1   ; 2 uses
  %exitcond282.not.i.i.i.i.i = icmp eq i64 %i.jm, %i.iw
  br i1 %exitcond282.not.i.i.i.i.i, label %.critedge144.i.i.i.i.i, label %.lr.ph247.i.i.i.i.i, !llvm.loop !559

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader234.i.i.i.i.i, %bb.ak
  %.096243.i.i.i.i.i = phi i64 [ %i.lh, %bb.ak ], [ 0, %.preheader234.i.i.i.i.i ]
  %.8242.i.i.i.i.i = phi i64 [ %i.lg, %bb.ak ], [ %.0107267.i.i.i.i.i, %.preheader234.i.i.i.i.i ] ; 3 uses
  %i.jn = add nsw i64 %.8242.i.i.i.i.i, %i.df     ; 2 uses
  %i.jo = lshr i64 %i.jn, 3                       ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !78, !noalias !535
  %i.jr = trunc i64 %i.jn to i8
  %i.js = and i8 %i.jr, 7                         ; 2 uses
  %i.jt = lshr i8 %i.jq, %i.js
  %i.ju = trunc i8 %i.jt to i1
  br i1 %i.ju, label %bb.aj, label %_ZN5arrow6StatusD2Ev.exit201.i.i.i.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.jo
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !78, !noalias !535
  %i.jx = lshr i8 %i.jw, %i.js
  %i.jy = trunc i8 %i.jx to i1
  br i1 %i.jy, label %_ZN5arrow6StatusD2Ev.exit195.i.i.i.i.i, label %bb.ak

_ZN5arrow6StatusD2Ev.exit195.i.i.i.i.i:           ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !535
  call fastcc void @_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_21ListViewSelectionImplINS_12ListViewTypeEEES5_E11VisitFilterIZNS6_14GenerateOutputINS7_13FilterAdapterEEENS_6StatusEvEUllE_ZNS9_ISA_EESB_vEUlvE_EESB_OT_OT0_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.8242.i.i.i.i.i), !noalias !535
  %i.jz = load ptr, ptr %15, align 8, !tbaa !115, !noalias !535 ; 3 uses
  store ptr %i.jz, ptr %16, align 8, !tbaa !115, !alias.scope !541, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !535
  %i.ka = icmp eq ptr %i.jz, null
  br i1 %i.ka, label %bb.ak, label %.critedge158.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit201.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i
  %i.kb = load ptr, ptr %6, align 8, !tbaa !539, !noalias !560 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 72
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !235, !noalias !560
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 104 ; 3 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !227, !noalias !560 ; 2 uses
  %i.kg = sdiv i64 %i.kf, 8
  %i.kh = getelementptr inbounds i8, ptr %i.kd, i64 %i.kg ; 2 uses
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !78, !noalias !560
  %i.kj = srem i64 %i.kf, 8
  %i.kk = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !78, !noalias !560
  %i.km = xor i8 %i.kl, -1
  %i.kn = and i8 %i.ki, %i.km
  store i8 %i.kn, ptr %i.kh, align 1, !tbaa !78, !noalias !560
  %i.ko = load <2 x i64>, ptr %i.ke, align 8, !tbaa !174, !noalias !560
  %i.kp = add nsw <2 x i64> %i.ko, splat (i64 1)
  store <2 x i64> %i.kp, ptr %i.ke, align 8, !tbaa !174, !noalias !560
  %i.kq = load ptr, ptr %i.cf, align 8, !tbaa !563, !noalias !560, !nonnull !129, !align !242 ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.kq, align 8, !tbaa !526, !noalias !560 ; 4 uses
  %i.kr = getelementptr i8, ptr %i.kq, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.kr, align 8, !tbaa !564, !noalias !560
  %.val1.val.i.i.i.i.i.i = load i32, ptr %.val1.i.i.i.i.i.i, align 4, !tbaa !3, !noalias !560
  %i.ks = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 144
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !235, !noalias !565
  %i.ku = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 160 ; 3 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !284, !noalias !565
  %i.kw = getelementptr inbounds i8, ptr %i.kt, i64 %i.kv
  store i32 %.val1.val.i.i.i.i.i.i, ptr %i.kw, align 1, !noalias !565
  %i.kx = load i64, ptr %i.ku, align 8, !tbaa !284, !noalias !565
  %i.ky = add nsw i64 %i.kx, 4
  store i64 %i.ky, ptr %i.ku, align 8, !tbaa !284, !noalias !565
  %i.kz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 200
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !235, !noalias !565
  %i.lb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 216 ; 3 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !284, !noalias !565
  %i.ld = getelementptr inbounds i8, ptr %i.la, i64 %i.lc
  store i32 0, ptr %i.ld, align 1, !noalias !565
  %i.le = load i64, ptr %i.lb, align 8, !tbaa !284, !noalias !565
  %i.lf = add nsw i64 %i.le, 4
  store i64 %i.lf, ptr %i.lb, align 8, !tbaa !284, !noalias !565
  store ptr null, ptr %16, align 8, !tbaa !115, !alias.scope !541, !noalias !518
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit201.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit195.i.i.i.i.i, %bb.aj
  %i.lg = add nsw i64 %.8242.i.i.i.i.i, 1         ; 2 uses
  %i.lh = add nuw nsw i64 %.096243.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.lh, %i.iw
  br i1 %exitcond.not.i.i.i.i.i, label %.critedge144.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !568

.critedge144.i.i.loopexit14.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i
  store ptr null, ptr %16, align 8, !tbaa !115, !alias.scope !541, !noalias !518
  br label %.critedge144.i.i.i.i.i

.critedge144.i.i.i.i.i:                           ; preds = %bb.ak, %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i, %.critedge144.i.i.loopexit14.i.i.i, %.preheader231.i.i.i.i.i, %.preheader234.i.i.i.i.i, %.preheader226.i.i.i.i.i, %.preheader228.i.i.i.i.i, %.noexc12.i, %.preheader.i.i.i.i.i, %bb.ab
  %.11.i.i.i.i.i = phi i64 [ %i.ev, %bb.ab ], [ %i.gd, %_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i ], [ %i.ii, %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i ], [ %i.iu, %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i ], [ %i.jl, %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i ], [ %i.gh, %.critedge144.i.i.loopexit14.i.i.i ], [ %.0107267.i.i.i.i.i, %.noexc12.i ], [ %.0107267.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader226.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader228.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader231.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader234.i.i.i.i.i ], [ %i.lg, %bb.ak ] ; 2 uses
  %i.li = load ptr, ptr %i.n, align 8, !tbaa !534, !noalias !535, !nonnull !129, !align !242
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !135, !noalias !535
  %i.ll = icmp slt i64 %.11.i.i.i.i.i, %i.lk
  br i1 %i.ll, label %bb.r, label %.critedge158.i.i.i.i.i, !llvm.loop !569

.critedge158.i.i.i.i.i:                           ; preds = %.critedge144.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit195.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit189.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit183.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i, %.noexc9.i
  %i.lm = phi ptr [ %i.jj, %_ZN5arrow6StatusD2Ev.exit189.i.i.i.i.i ], [ %i.jz, %_ZN5arrow6StatusD2Ev.exit195.i.i.i.i.i ], [ %i.gf, %_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i ], [ null, %.noexc9.i ], [ %i.is, %_ZN5arrow6StatusD2Ev.exit183.i.i.i.i.i ], [ null, %.critedge144.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !535
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %bb.p, %bb.o, %.body.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !535
  br label %.body.i

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %.critedge158.i.i.i.i.i, %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i
  %i.ln = phi ptr [ %.pre.i.i.i, %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i ], [ %i.lm, %.critedge158.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !535
  store ptr %i.ln, ptr %21, align 8, !tbaa !115, !alias.scope !515, !noalias !513
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !518
  %i.lo = icmp eq ptr %i.ln, null
  br i1 %i.lo, label %_ZN5arrow6StatusD2Ev.exit8.i.i.i, label %bb.al

_ZN5arrow6StatusD2Ev.exit8.i.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  store ptr null, ptr %21, align 8, !tbaa !115, !alias.scope !570, !noalias !513
  br label %bb.al

bb.al:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit8.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !518
  store ptr null, ptr %0, align 8, !tbaa !115, !alias.scope !513
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i.i unwind label %bb.am

_ZN5arrow6StatusC2ERKS0_.exit.i.i:                ; preds = %bb.al
  %i.lp = load ptr, ptr %0, align 8, !tbaa !115, !alias.scope !513
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %_ZN5arrow6StatusD2Ev.exit38.i.i, label %.critedge.i.i

bb.am:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit44.i.i, %bb.al
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit38.i.i:                  ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25, !noalias !513
  invoke fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_21ListViewSelectionImplINS_12ListViewTypeEEES5_E12FinishCommonEv(ptr dead_on_unwind noalias writable align 8 %22, ptr noundef nonnull align 8 dereferenceable(120) %23)
          to label %_ZN5arrow6StatusD2Ev.exit40.i.i unwind label %bb.an

_ZN5arrow6StatusD2Ev.exit40.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit38.i.i
  %i.ls = load ptr, ptr %22, align 8, !tbaa !115, !noalias !513 ; 2 uses
  store ptr %i.ls, ptr %0, align 8, !tbaa !115, !alias.scope !513
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25, !noalias !513
  %i.lt = icmp eq ptr %i.ls, null
  br i1 %i.lt, label %_ZN5arrow6StatusD2Ev.exit44.i.i, label %.critedge.i.i

bb.an:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit38.i.i
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25, !noalias !513
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit44.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit40.i.i
  %i.lv = load ptr, ptr %23, align 8, !tbaa !45, !noalias !513
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8
  invoke void %i.lx(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %23)
          to label %.critedge.i.i unwind label %bb.am

.critedge.i.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit44.i.i, %_ZN5arrow6StatusD2Ev.exit40.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i.i
  %i.ly = load ptr, ptr %21, align 8, !tbaa !115, !noalias !513 ; 2 uses
  %.not.i45.i.i = icmp eq ptr %i.ly, null
  br i1 %.not.i45.i.i, label %_ZN5arrow6StatusD2Ev.exit46.i.i, label %bb.ao, !prof !118

bb.ao:                                            ; preds = %.critedge.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !119, !range !128, !noundef !129
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %_ZN5arrow6StatusD2Ev.exit46.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #25
  br label %_ZN5arrow6StatusD2Ev.exit46.i.i

_ZN5arrow6StatusD2Ev.exit46.i.i:                  ; preds = %bb.ap, %bb.ao, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25, !noalias !513
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_21ListViewSelectionImplINS_12ListViewTypeEEEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

bb.aq:                                            ; preds = %bb.an, %bb.am
  %.pn22.i.i = phi { ptr, i32 } [ %i.lr, %bb.am ], [ %i.lu, %bb.an ]
  %i.mc = load ptr, ptr %21, align 8, !tbaa !115, !noalias !513 ; 2 uses
  %.not.i47.i.i = icmp eq ptr %i.mc, null
  br i1 %.not.i47.i.i, label %_ZN5arrow6StatusD2Ev.exit48.i.i, label %bb.ar, !prof !118

bb.ar:                                            ; preds = %bb.aq
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 1
  %i.me = load i8, ptr %i.md, align 1, !tbaa !119, !range !128, !noundef !129
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %_ZN5arrow6StatusD2Ev.exit48.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #25
  br label %_ZN5arrow6StatusD2Ev.exit48.i.i

_ZN5arrow6StatusD2Ev.exit48.i.i:                  ; preds = %bb.as, %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25, !noalias !513
  br label %.body.i

.loopexit.i:                                      ; preds = %bb.af, %.noexc10.i, %bb.r
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %.noexc8.i, %bb.q, %_ZN5arrow6StatusD2Ev.exit32.i.i, %_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_12ListViewTypeEEC2EPNS0_13KernelContextERKNS0_8ExecSpanElPNS0_10ExecResultE.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %_ZN5arrow6StatusD2Ev.exit48.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn22.i.i, %_ZN5arrow6StatusD2Ev.exit48.i.i ], [ %.pn137.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_12ListViewTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25, !noalias !483
  resume { ptr, i32 } %eh.lpad-body.i

_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_21ListViewSelectionImplINS_12ListViewTypeEEEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit: ; preds = %bb.d, %.noexc7.i, %_ZN5arrow6StatusD2Ev.exit46.i.i
  call void @_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_12ListViewTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25, !noalias !483
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal23LargeListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.arrow::internal::OptionalBitIndexer", align 8 ; 6 uses
  %5 = alloca %class.anon.241, align 8            ; 7 uses
  %6 = alloca %class.anon.242, align 8            ; 8 uses
  %7 = alloca %class.anon.243, align 8            ; 11 uses
  %8 = alloca %"class.std::function.63", align 8  ; 12 uses
  %9 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %10 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %11 = alloca %"class.arrow::internal::BitBlockCounter", align 8 ; 10 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 14 uses
  %17 = alloca %class.anon.239, align 8           ; 8 uses
  %18 = alloca %class.anon.240, align 8           ; 5 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %23 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::ListViewSelectionImpl.237", align 8 ; 36 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201, !noalias !573
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !204, !noalias !573
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !208, !noalias !573
  %i.k = tail call noundef i64 @_ZN5arrow7compute8internal19GetFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE(ptr noundef nonnull align 8 dereferenceable(128) %i.f, i32 noundef %i.j), !noalias !573 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25, !noalias !573
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !201, !noalias !573 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store ptr %1, ptr %i.l, align 8, !tbaa !576, !noalias !573
  %i.m = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  store ptr %.val.i, ptr %i.m, align 8, !tbaa !488, !noalias !573
  %i.n = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 136
  store ptr %i.o, ptr %i.n, align 8, !tbaa !488, !noalias !573
  %i.p = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i64 %i.k, ptr %i.p, align 8, !tbaa !578, !noalias !573
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.r = load i8, ptr %i.q, align 8, !tbaa !490, !noalias !573
  switch i8 %i.r, label %bb.b [
    i8 1, label %_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_17LargeListViewTypeEEC2EPNS0_13KernelContextERKNS0_8ExecSpanElPNS0_10ExecResultE.exit.i
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i.i.i
  ], !prof !492

bb.b:                                             ; preds = %bb.a
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #25, !noalias !573 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.s, align 8, !tbaa !45, !noalias !573
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @.str.3, ptr %i.t, align 8, !tbaa !493, !noalias !573
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29, !noalias !573
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #25, !noalias !573 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.u, align 8, !tbaa !45, !noalias !573
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @.str.2, ptr %i.v, align 8, !tbaa !493, !noalias !573
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #29, !noalias !573
  unreachable

_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_17LargeListViewTypeEEC2EPNS0_13KernelContextERKNS0_8ExecSpanElPNS0_10ExecResultE.exit.i: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.x = load ptr, ptr %3, align 8, !tbaa !496, !noalias !573
  store ptr %i.x, ptr %i.w, align 8, !tbaa !579, !noalias !573
  %i.y = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !498, !noalias !573 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !499, !noalias !573
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.y, i8 0, i64 16, i1 false), !noalias !573
  %i.ab = getelementptr inbounds nuw i8, ptr %23, i64 64
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !503, !noalias !573
  %i.ac = getelementptr inbounds nuw i8, ptr %23, i64 72 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ac, align 8, !tbaa !235, !noalias !573
  %i.ad = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %23, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false), !noalias !573
  store i64 64, ptr %i.ae, align 8, !tbaa !504, !noalias !573
  %i.af = getelementptr inbounds nuw i8, ptr %23, i64 104 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false), !noalias !573
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_17LargeListViewTypeEEE, i64 16), ptr %23, align 8, !tbaa !45, !noalias !573
  %i.ag = getelementptr inbounds nuw i8, ptr %23, i64 120
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !499, !noalias !573
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i8 0, i64 16, i1 false), !noalias !573
  %i.ai = getelementptr inbounds nuw i8, ptr %23, i64 136
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !503, !noalias !573
  %i.aj = getelementptr inbounds nuw i8, ptr %23, i64 144
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.aj, align 8, !tbaa !235, !noalias !573
  %i.ak = getelementptr inbounds nuw i8, ptr %23, i64 152
  %i.al = getelementptr inbounds nuw i8, ptr %23, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !noalias !573
  store i64 64, ptr %i.al, align 8, !tbaa !504, !noalias !573
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !499, !noalias !573
  %i.an = getelementptr inbounds nuw i8, ptr %23, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.an, i8 0, i64 16, i1 false), !noalias !573
  %i.ao = getelementptr inbounds nuw i8, ptr %23, i64 192
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !503, !noalias !573
  %i.ap = getelementptr inbounds nuw i8, ptr %23, i64 200
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ap, align 8, !tbaa !235, !noalias !573
  %i.aq = getelementptr inbounds nuw i8, ptr %23, i64 208
  %i.ar = getelementptr inbounds nuw i8, ptr %23, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false), !noalias !573
  store i64 64, ptr %i.ar, align 8, !tbaa !504, !noalias !573
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %.sroa.speculated.i.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.k, i64 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25, !noalias !583
  %i.as = add nuw i64 %.sroa.speculated.i.i.i.i, 7
  %i.at = lshr i64 %i.as, 3
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %19, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 noundef %i.at, i1 noundef zeroext false)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !573

.noexc.i:                                         ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_17LargeListViewTypeEEC2EPNS0_13KernelContextERKNS0_8ExecSpanElPNS0_10ExecResultE.exit.i
  %i.au = load ptr, ptr %19, align 8, !tbaa !115, !noalias !583 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25, !noalias !583
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5arrow6StatusD2Ev.exit17.i.i.i.i, label %bb.d

_ZN5arrow6StatusD2Ev.exit17.i.i.i.i:              ; preds = %.noexc.i
  %i.aw = load i64, ptr %i.ad, align 8, !tbaa !231, !noalias !583 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit32.i.i

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17.i.i.i.i
  %i.ay = load ptr, ptr %i.ac, align 8, !tbaa !235, !noalias !583
  call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.aw, i1 false), !noalias !583
  br label %_ZN5arrow6StatusD2Ev.exit32.i.i

bb.d:                                             ; preds = %.noexc.i
  store ptr %i.au, ptr %0, align 8, !tbaa !115, !alias.scope !588
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_21ListViewSelectionImplINS_17LargeListViewTypeEEEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

_ZN5arrow6StatusD2Ev.exit32.i.i:                  ; preds = %bb.c, %_ZN5arrow6StatusD2Ev.exit17.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25, !noalias !588
  %i.az = load ptr, ptr %23, align 8, !tbaa !45, !noalias !588
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !588
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %20, ptr noundef nonnull align 8 dereferenceable(120) %23)
          to label %.noexc7.i unwind label %.loopexit.split-lp.i, !noalias !573, !inline_history !589

.noexc7.i:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit32.i.i
  %i.bc = load ptr, ptr %20, align 8, !tbaa !115, !noalias !588 ; 2 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !115, !alias.scope !588
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25, !noalias !588
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.e, label %_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_21ListViewSelectionImplINS_17LargeListViewTypeEEEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

bb.e:                                             ; preds = %.noexc7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25, !noalias !588
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !593
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !594, !noalias !593, !nonnull !129, !align !242 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !164, !noalias !593 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !165, !noalias !593
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bg
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !393, !noalias !593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !593
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !165, !noalias !593
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bg
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !393, !noalias !593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !593
  store i64 0, ptr %i.c, align 8, !tbaa !174, !noalias !593
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !593
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !593
  store ptr %i.a, ptr %17, align 8, !tbaa !595, !noalias !593
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.bo, align 8, !tbaa !595, !noalias !593
  %i.bp = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %23, ptr %i.bp, align 8, !tbaa !597, !noalias !593
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.bq, align 8, !tbaa !393, !noalias !593
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !593
  store ptr %23, ptr %18, align 8, !tbaa !600, !noalias !593
  %i.br = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.c, ptr %i.br, align 8, !tbaa !393, !noalias !593
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !608, !noalias !609, !nonnull !129, !align !242 ; 5 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !142, !noalias !609
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !149, !noalias !609
  %i.bw = icmp eq i32 %i.bv, 38
  %i.bx = load ptr, ptr %i.l, align 8, !tbaa !576, !noalias !609
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !204, !noalias !609
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !208, !noalias !609 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !609
  %i.cc = load ptr, ptr %i.bh, align 8, !tbaa !165, !noalias !609 ; 2 uses
  store ptr %i.cc, ptr %4, align 8, !tbaa !262, !noalias !609
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bg, ptr %i.cd, align 8, !tbaa !264, !noalias !609
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !609
  store ptr %23, ptr %5, align 8, !tbaa !610, !noalias !609
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %17, ptr %i.ce, align 8, !tbaa !89, !noalias !609
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !609
  store ptr %23, ptr %6, align 8, !tbaa !613, !noalias !609
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %18, ptr %i.cf, align 8, !tbaa !89, !noalias !609
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !609
  store ptr %4, ptr %7, align 8, !tbaa !270, !noalias !609
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.cg, align 8, !tbaa !89, !noalias !609
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %6, ptr %i.ch, align 8, !tbaa !89, !noalias !609
  br i1 %i.bw, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal23LargeListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
          to label %.noexc9.i unwind label %.loopexit.split-lp.i, !noalias !573

.noexc9.i:                                        ; preds = %.noexc8.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !609
  %i.dl = load ptr, ptr %i.n, align 8, !tbaa !608, !noalias !609, !nonnull !129, !align !242
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !135, !noalias !609 ; 2 uses
  %.not.i.i162.i.i.i.i.i = icmp eq ptr %i.dc, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i.i.i.i.i.i = select i1 %.not.i.i162.i.i.i.i.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.dc, !prof !80
  %i.do = sdiv i64 %i.df, 8
  %i.dp = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i.i.i.i.i.i.i, i64 %i.do
  store ptr %i.dp, ptr %11, align 8, !tbaa !275, !noalias !609
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 %i.dn, ptr %i.dq, align 8, !tbaa !277, !noalias !609
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ds = srem i64 %i.df, 8
  store i64 %i.ds, ptr %i.dr, align 8, !tbaa !278, !noalias !609
  %i.dt = icmp sgt i64 %i.dn, 0
  br i1 %i.dt, label %.lr.ph268.i.i.i.i.i, label %.critedge158.i.i.i.i.i

.lr.ph268.i.i.i.i.i:                              ; preds = %.noexc9.i
  %i.du = icmp eq i32 %i.cb, 0                    ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.critedge144.i.i.i.i.i, %.lr.ph268.i.i.i.i.i
  %.0107267.i.i.i.i.i = phi i64 [ 0, %.lr.ph268.i.i.i.i.i ], [ %.11.i.i.i.i.i, %.critedge144.i.i.i.i.i ] ; 13 uses
  %i.dv = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter8NextWordEv(ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %.noexc10.i unwind label %.loopexit.i, !noalias !573 ; 2 uses

.noexc10.i:                                       ; preds = %bb.r
  %.sroa.0218.0.extract.trunc.i.i.i.i.i = trunc i32 %i.dv to i16
  %.sroa.6.0.extract.shift.i.i.i.i.i = lshr i32 %i.dv, 16
  %.sroa.6.0.extract.trunc.i.i.i.i.i = trunc nuw i32 %.sroa.6.0.extract.shift.i.i.i.i.i to i16
  %i.dw = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter8NextWordEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %.noexc11.i unwind label %.loopexit.i, !noalias !573 ; 2 uses

.noexc11.i:                                       ; preds = %.noexc10.i
  %.sroa.0215.0.extract.trunc.i.i.i.i.i = trunc i32 %i.dw to i16
  %.sroa.7.0.extract.shift.i.i.i.i.i = lshr i32 %i.dw, 16
  %.sroa.7.0.extract.trunc.i.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i.i to i16
  %i.dx = load i64, ptr %i.dq, align 8, !tbaa !277, !noalias !609 ; 4 uses
  %.not.i163.i.i.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i163.i.i.i.i.i, label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc11.i
  %i.dy = load i64, ptr %i.dr, align 8, !tbaa !278, !noalias !609 ; 3 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ea = icmp slt i64 %i.dx, 64
  br i1 %i.ea, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eb = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 64) #25, !noalias !609 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i.i.i = lshr i32 %i.eb, 16
  br label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.ec = load ptr, ptr %11, align 8, !tbaa !275, !noalias !609 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 1, !noalias !609
  br label %bb.z

bb.w:                                             ; preds = %bb.s
  %i.ee = sub nsw i64 128, %i.dy
  %i.ef = icmp slt i64 %i.dx, %i.ee
  br i1 %i.ef, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eg = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef 64) #25, !noalias !609 ; 2 uses
  %.sroa.5.0.extract.shift2.i.i.i.i.i.i = lshr i32 %i.eg, 16
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.eh = load ptr, ptr %11, align 8, !tbaa !275, !noalias !609 ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 1, !noalias !609
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ek = load i64, ptr %i.ej, align 1, !noalias !609
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.ek, i64 %i.ei, i64 %i.dy)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.0.i.sink.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i, %bb.y ], [ %i.ed, %bb.v ]
  %i.el = phi ptr [ %i.eh, %bb.y ], [ %i.ec, %bb.v ]
  %i.em = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i.i.i.i.i.i)
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.en, ptr %11, align 8, !tbaa !275, !noalias !609
  %i.eo = add nsw i64 %i.dx, -64
  store i64 %i.eo, ptr %i.dq, align 8, !tbaa !277, !noalias !609
  %i.ep = trunc nuw nsw i64 %i.em to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.u
  %.sroa.0.0.i.i.i.i.i.i = phi i32 [ %i.eb, %bb.u ], [ 64, %bb.z ], [ %i.eg, %bb.x ]
  %.sroa.5.0.i.i.i.i.i.i = phi i32 [ %.sroa.5.0.extract.shift.i.i.i.i.i.i, %bb.u ], [ %i.ep, %bb.z ], [ %.sroa.5.0.extract.shift2.i.i.i.i.i.i, %bb.x ]
  %i.eq = shl nuw i32 %.sroa.5.0.i.i.i.i.i.i, 16
  %i.er = and i32 %.sroa.0.0.i.i.i.i.i.i, 65535
  %i.es = or disjoint i32 %i.eq, %i.er
  br label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i

_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i: ; preds = %bb.aa, %.noexc11.i
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = phi i32 [ %i.es, %bb.aa ], [ 0, %.noexc11.i ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i32 %.sroa.0.0.insert.insert.i.i.i.i.i.i to i16 ; 8 uses
  %.sroa.14.0.extract.shift.i.i.i.i.i = lshr i32 %.sroa.0.0.insert.insert.i.i.i.i.i.i, 16 ; 2 uses
  %.sroa.14.0.extract.trunc.i.i.i.i.i = trunc nuw i32 %.sroa.14.0.extract.shift.i.i.i.i.i to i16
  %i.et = icmp eq i32 %.sroa.14.0.extract.shift.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = select i1 %i.et, i1 %i.du, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i
  %i.eu = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i.i to i64
  %i.ev = add nsw i64 %.0107267.i.i.i.i.i, %i.eu
  br label %.critedge144.i.i.i.i.i

bb.ac:                                            ; preds = %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit.i.i.i.i.i
  %i.ew = icmp eq i16 %.sroa.0218.0.extract.trunc.i.i.i.i.i, %.sroa.6.0.extract.trunc.i.i.i.i.i
  br i1 %i.ew, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.ex = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, %.sroa.14.0.extract.trunc.i.i.i.i.i
  %i.ey = icmp eq i16 %.sroa.0215.0.extract.trunc.i.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i.i ; 2 uses
  %i.ez = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i.i to i64 ; 6 uses
  br i1 %i.ex, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ey, label %bb.af, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ae
  %.not133259.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0
  br i1 %.not133259.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i, label %.critedge144.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.fa = load ptr, ptr %i.ac, align 8, !tbaa !235, !noalias !609
  %i.fb = load i64, ptr %i.af, align 8, !tbaa !227, !noalias !609
  invoke void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %i.fa, i64 noundef %i.fb, i64 noundef %i.ez, i1 noundef zeroext true)
          to label %.noexc12.i unwind label %.loopexit.i, !noalias !573

.noexc12.i:                                       ; preds = %bb.af
  %i.fc = load i64, ptr %i.af, align 8, !tbaa !227, !noalias !609
  %i.fd = add nsw i64 %i.fc, %i.ez
  store i64 %i.fd, ptr %i.af, align 8, !tbaa !227, !noalias !609
  %.not136263.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0
  br i1 %.not136263.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit165.i.preheader.i.i.i.i, label %.critedge144.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit165.i.preheader.i.i.i.i: ; preds = %.noexc12.i
  store ptr null, ptr %16, align 8, !tbaa !115, !alias.scope !615, !noalias !593
  br label %_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit165.i.preheader.i.i.i.i
  %.0106265.i.i.i.i.i = phi i64 [ %i.ge, %_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i ], [ 0, %_ZN5arrow6StatusD2Ev.exit165.i.preheader.i.i.i.i ]
  %.1264.i.i.i.i.i = phi i64 [ %i.gd, %_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit165.i.preheader.i.i.i.i ] ; 3 uses
  %i.fe = load ptr, ptr %i.bp, align 8, !tbaa !597, !noalias !616 ; 4 uses
  %i.ff = load ptr, ptr %17, align 8, !tbaa !619, !noalias !616, !nonnull !129, !align !242
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !393, !noalias !616
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %.1264.i.i.i.i.i
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !174, !noalias !616 ; 2 uses
  %i.fj = load ptr, ptr %i.bo, align 8, !tbaa !620, !noalias !616, !nonnull !129, !align !242
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !393, !noalias !616
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %.1264.i.i.i.i.i
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !174, !noalias !616 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 144
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !235, !noalias !616
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 160 ; 3 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !284, !noalias !616
  %i.fr = getelementptr inbounds i8, ptr %i.fo, i64 %i.fq
  store i64 %i.fi, ptr %i.fr, align 1, !noalias !616
  %i.fs = load i64, ptr %i.fp, align 8, !tbaa !284, !noalias !616
  %i.ft = add nsw i64 %i.fs, 8
  store i64 %i.ft, ptr %i.fp, align 8, !tbaa !284, !noalias !616
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 200
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !235, !noalias !616
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fe, i64 216 ; 3 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !284, !noalias !616
  %i.fy = getelementptr inbounds i8, ptr %i.fv, i64 %i.fx
  store i64 %i.fm, ptr %i.fy, align 1, !noalias !616
  %i.fz = load i64, ptr %i.fw, align 8, !tbaa !284, !noalias !616
  %i.ga = add nsw i64 %i.fz, 8
  store i64 %i.ga, ptr %i.fw, align 8, !tbaa !284, !noalias !616
  %i.gb = add nsw i64 %i.fm, %i.fi
  %i.gc = load ptr, ptr %i.bq, align 8, !tbaa !621, !noalias !616, !nonnull !129, !align !242
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !174, !noalias !616
  %i.gd = add nsw i64 %.1264.i.i.i.i.i, 1         ; 2 uses
  %i.ge = add nuw nsw i64 %.0106265.i.i.i.i.i, 1  ; 2 uses
  %exitcond286.not.i.i.i.i.i = icmp eq i64 %i.ge, %i.ez
  br i1 %exitcond286.not.i.i.i.i.i, label %.critedge144.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i, !llvm.loop !622

_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i:           ; preds = %.preheader.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i
  %.0104261.i.i.i.i.i = phi i64 [ %i.gi, %_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i ]
  %.3260.i.i.i.i.i = phi i64 [ %i.gh, %_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !609
  call fastcc void @_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_21ListViewSelectionImplINS_17LargeListViewTypeEEES5_E11VisitFilterIZNS6_14GenerateOutputINS7_13FilterAdapterEEENS_6StatusEvEUllE_ZNS9_ISA_EESB_vEUlvE_EESB_OT_OT0_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.3260.i.i.i.i.i), !noalias !609
  %i.gf = load ptr, ptr %12, align 8, !tbaa !115, !noalias !609 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !609
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i, label %.critedge158.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i
  %i.gh = add nsw i64 %.3260.i.i.i.i.i, 1         ; 2 uses
  %i.gi = add nuw nsw i64 %.0104261.i.i.i.i.i, 1  ; 2 uses
  %exitcond285.not.i.i.i.i.i = icmp eq i64 %i.gi, %i.ez
  br i1 %exitcond285.not.i.i.i.i.i, label %.critedge144.i.i.loopexit14.i.i.i, label %_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i, !llvm.loop !623

bb.ag:                                            ; preds = %bb.ad
  %.not132254.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.ey, label %.preheader226.i.i.i.i.i, label %.preheader228.i.i.i.i.i

.preheader228.i.i.i.i.i:                          ; preds = %bb.ag
  br i1 %.not132254.i.i.i.i.i, label %.lr.ph252.i.i.i.i.i, label %.critedge144.i.i.i.i.i

.preheader226.i.i.i.i.i:                          ; preds = %bb.ag
  br i1 %.not132254.i.i.i.i.i, label %.lr.ph257.i.i.i.i.i, label %.critedge144.i.i.i.i.i

.lr.ph257.i.i.i.i.i:                              ; preds = %.preheader226.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i
  %.0102256.i.i.i.i.i = phi i64 [ %i.ij, %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i ], [ 0, %.preheader226.i.i.i.i.i ]
  %.5255.i.i.i.i.i = phi i64 [ %i.ii, %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader226.i.i.i.i.i ] ; 4 uses
  %i.gj = add nsw i64 %.5255.i.i.i.i.i, %i.df     ; 2 uses
  %i.gk = lshr i64 %i.gj, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !78, !noalias !609
  %i.gn = trunc i64 %i.gj to i8
  %i.go = and i8 %i.gn, 7
  %i.gp = lshr i8 %i.gm, %i.go
  %i.gq = trunc i8 %i.gp to i1
  br i1 %i.gq, label %_ZN5arrow6StatusD2Ev.exit177.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit177.i.i.i.i.i:           ; preds = %.lr.ph257.i.i.i.i.i
  %i.gr = load ptr, ptr %5, align 8, !tbaa !610, !noalias !624 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 72
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !235, !noalias !624
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 104 ; 3 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !227, !noalias !624 ; 2 uses
  %i.gw = sdiv i64 %i.gv, 8
  %i.gx = getelementptr inbounds i8, ptr %i.gt, i64 %i.gw ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !78, !noalias !624
  %i.gz = srem i64 %i.gv, 8
  %i.ha = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !78, !noalias !624
  %i.hc = or i8 %i.hb, %i.gy
  store i8 %i.hc, ptr %i.gx, align 1, !tbaa !78, !noalias !624
  %i.hd = load i64, ptr %i.gu, align 8, !tbaa !227, !noalias !624
  %i.he = add nsw i64 %i.hd, 1
  store i64 %i.he, ptr %i.gu, align 8, !tbaa !227, !noalias !624
  %i.hf = load ptr, ptr %i.ce, align 8, !tbaa !627, !noalias !624, !nonnull !129, !align !242 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !597, !noalias !628 ; 4 uses
  %i.hi = load ptr, ptr %i.hf, align 8, !tbaa !619, !noalias !628, !nonnull !129, !align !242
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !393, !noalias !628
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.hj, i64 %.5255.i.i.i.i.i
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !174, !noalias !628 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !620, !noalias !628, !nonnull !129, !align !242
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !393, !noalias !628
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %.5255.i.i.i.i.i
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !174, !noalias !628 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 144
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !235, !noalias !628
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hh, i64 160 ; 3 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !284, !noalias !628
  %i.hv = getelementptr inbounds i8, ptr %i.hs, i64 %i.hu
  store i64 %i.hl, ptr %i.hv, align 1, !noalias !628
  %i.hw = load i64, ptr %i.ht, align 8, !tbaa !284, !noalias !628
  %i.hx = add nsw i64 %i.hw, 8
  store i64 %i.hx, ptr %i.ht, align 8, !tbaa !284, !noalias !628
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hh, i64 200
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !235, !noalias !628
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hh, i64 216 ; 3 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !284, !noalias !628
  %i.ic = getelementptr inbounds i8, ptr %i.hz, i64 %i.ib
  store i64 %i.hq, ptr %i.ic, align 1, !noalias !628
  %i.id = load i64, ptr %i.ia, align 8, !tbaa !284, !noalias !628
  %i.ie = add nsw i64 %i.id, 8
  store i64 %i.ie, ptr %i.ia, align 8, !tbaa !284, !noalias !628
  %i.if = add nsw i64 %i.hq, %i.hl
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !621, !noalias !628, !nonnull !129, !align !242
  store i64 %i.if, ptr %i.ih, align 8, !tbaa !174, !noalias !628
  store ptr null, ptr %16, align 8, !tbaa !115, !alias.scope !615, !noalias !593
  br label %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit177.i.i.i.i.i, %.lr.ph257.i.i.i.i.i
  %i.ii = add nsw i64 %.5255.i.i.i.i.i, 1         ; 2 uses
  %i.ij = add nuw nsw i64 %.0102256.i.i.i.i.i, 1  ; 2 uses
  %exitcond284.not.i.i.i.i.i = icmp eq i64 %i.ij, %i.ez
  br i1 %exitcond284.not.i.i.i.i.i, label %.critedge144.i.i.i.i.i, label %.lr.ph257.i.i.i.i.i, !llvm.loop !631

.lr.ph252.i.i.i.i.i:                              ; preds = %.preheader228.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i
  %.0100251.i.i.i.i.i = phi i64 [ %i.iv, %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i ], [ 0, %.preheader228.i.i.i.i.i ]
  %.6250.i.i.i.i.i = phi i64 [ %i.iu, %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader228.i.i.i.i.i ] ; 3 uses
  %i.ik = add nsw i64 %.6250.i.i.i.i.i, %i.df     ; 2 uses
  %i.il = lshr i64 %i.ik, 3
  %i.im = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !78, !noalias !609
  %i.io = trunc i64 %i.ik to i8
  %i.ip = and i8 %i.io, 7
  %i.iq = lshr i8 %i.in, %i.ip
  %i.ir = trunc i8 %i.iq to i1
  br i1 %i.ir, label %_ZN5arrow6StatusD2Ev.exit183.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit183.i.i.i.i.i:           ; preds = %.lr.ph252.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !609
  call fastcc void @_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_21ListViewSelectionImplINS_17LargeListViewTypeEEES5_E11VisitFilterIZNS6_14GenerateOutputINS7_13FilterAdapterEEENS_6StatusEvEUllE_ZNS9_ISA_EESB_vEUlvE_EESB_OT_OT0_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.6250.i.i.i.i.i), !noalias !609
  %i.is = load ptr, ptr %13, align 8, !tbaa !115, !noalias !609 ; 3 uses
  store ptr %i.is, ptr %16, align 8, !tbaa !115, !alias.scope !615, !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !609
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i, label %.critedge158.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit183.i.i.i.i.i, %.lr.ph252.i.i.i.i.i
  %i.iu = add nsw i64 %.6250.i.i.i.i.i, 1         ; 2 uses
  %i.iv = add nuw nsw i64 %.0100251.i.i.i.i.i, 1  ; 2 uses
  %exitcond283.not.i.i.i.i.i = icmp eq i64 %i.iv, %i.ez
  br i1 %exitcond283.not.i.i.i.i.i, label %.critedge144.i.i.i.i.i, label %.lr.ph252.i.i.i.i.i, !llvm.loop !632

bb.ah:                                            ; preds = %bb.ac
  %i.iw = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i.i to i64 ; 2 uses
  %.not130244.i.i.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.du, label %.preheader231.i.i.i.i.i, label %.preheader234.i.i.i.i.i

.preheader234.i.i.i.i.i:                          ; preds = %bb.ah
  br i1 %.not130244.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.critedge144.i.i.i.i.i

.preheader231.i.i.i.i.i:                          ; preds = %bb.ah
  br i1 %.not130244.i.i.i.i.i, label %.lr.ph247.i.i.i.i.i, label %.critedge144.i.i.i.i.i

.lr.ph247.i.i.i.i.i:                              ; preds = %.preheader231.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i
  %.098246.i.i.i.i.i = phi i64 [ %i.jm, %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i ], [ 0, %.preheader231.i.i.i.i.i ]
  %.7245.i.i.i.i.i = phi i64 [ %i.jl, %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader231.i.i.i.i.i ] ; 3 uses
  %i.ix = add nsw i64 %.7245.i.i.i.i.i, %i.df     ; 2 uses
  %i.iy = lshr i64 %i.ix, 3                       ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !78, !noalias !609
  %i.jb = trunc i64 %i.ix to i8
  %i.jc = and i8 %i.jb, 7                         ; 2 uses
  %i.jd = lshr i8 %i.ja, %i.jc
  %i.je = trunc i8 %i.jd to i1
  br i1 %i.je, label %bb.ai, label %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i

bb.ai:                                            ; preds = %.lr.ph247.i.i.i.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.iy
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !78, !noalias !609
  %i.jh = lshr i8 %i.jg, %i.jc
  %i.ji = trunc i8 %i.jh to i1
  br i1 %i.ji, label %_ZN5arrow6StatusD2Ev.exit189.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit189.i.i.i.i.i:           ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25, !noalias !609
  call fastcc void @_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_21ListViewSelectionImplINS_17LargeListViewTypeEEES5_E11VisitFilterIZNS6_14GenerateOutputINS7_13FilterAdapterEEENS_6StatusEvEUllE_ZNS9_ISA_EESB_vEUlvE_EESB_OT_OT0_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.7245.i.i.i.i.i), !noalias !609
  %i.jj = load ptr, ptr %14, align 8, !tbaa !115, !noalias !609 ; 3 uses
  store ptr %i.jj, ptr %16, align 8, !tbaa !115, !alias.scope !615, !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !609
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i, label %.critedge158.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit189.i.i.i.i.i, %bb.ai, %.lr.ph247.i.i.i.i.i
  %i.jl = add nsw i64 %.7245.i.i.i.i.i, 1         ; 2 uses
  %i.jm = add nuw nsw i64 %.098246.i.i.i.i.i, 1   ; 2 uses
  %exitcond282.not.i.i.i.i.i = icmp eq i64 %i.jm, %i.iw
  br i1 %exitcond282.not.i.i.i.i.i, label %.critedge144.i.i.i.i.i, label %.lr.ph247.i.i.i.i.i, !llvm.loop !633

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader234.i.i.i.i.i, %bb.ak
  %.096243.i.i.i.i.i = phi i64 [ %i.lh, %bb.ak ], [ 0, %.preheader234.i.i.i.i.i ]
  %.8242.i.i.i.i.i = phi i64 [ %i.lg, %bb.ak ], [ %.0107267.i.i.i.i.i, %.preheader234.i.i.i.i.i ] ; 3 uses
  %i.jn = add nsw i64 %.8242.i.i.i.i.i, %i.df     ; 2 uses
  %i.jo = lshr i64 %i.jn, 3                       ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !78, !noalias !609
  %i.jr = trunc i64 %i.jn to i8
  %i.js = and i8 %i.jr, 7                         ; 2 uses
  %i.jt = lshr i8 %i.jq, %i.js
  %i.ju = trunc i8 %i.jt to i1
  br i1 %i.ju, label %bb.aj, label %_ZN5arrow6StatusD2Ev.exit201.i.i.i.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.jo
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !78, !noalias !609
  %i.jx = lshr i8 %i.jw, %i.js
  %i.jy = trunc i8 %i.jx to i1
  br i1 %i.jy, label %_ZN5arrow6StatusD2Ev.exit195.i.i.i.i.i, label %bb.ak

_ZN5arrow6StatusD2Ev.exit195.i.i.i.i.i:           ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !609
  call fastcc void @_ZZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_21ListViewSelectionImplINS_17LargeListViewTypeEEES5_E11VisitFilterIZNS6_14GenerateOutputINS7_13FilterAdapterEEENS_6StatusEvEUllE_ZNS9_ISA_EESB_vEUlvE_EESB_OT_OT0_ENKUllE0_clEl(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.8242.i.i.i.i.i), !noalias !609
  %i.jz = load ptr, ptr %15, align 8, !tbaa !115, !noalias !609 ; 3 uses
  store ptr %i.jz, ptr %16, align 8, !tbaa !115, !alias.scope !615, !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !609
  %i.ka = icmp eq ptr %i.jz, null
  br i1 %i.ka, label %bb.ak, label %.critedge158.i.i.i.i.i

_ZN5arrow6StatusD2Ev.exit201.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i
  %i.kb = load ptr, ptr %6, align 8, !tbaa !613, !noalias !634 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 72
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !235, !noalias !634
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 104 ; 3 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !227, !noalias !634 ; 2 uses
  %i.kg = sdiv i64 %i.kf, 8
  %i.kh = getelementptr inbounds i8, ptr %i.kd, i64 %i.kg ; 2 uses
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !78, !noalias !634
  %i.kj = srem i64 %i.kf, 8
  %i.kk = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !78, !noalias !634
  %i.km = xor i8 %i.kl, -1
  %i.kn = and i8 %i.ki, %i.km
  store i8 %i.kn, ptr %i.kh, align 1, !tbaa !78, !noalias !634
  %i.ko = load <2 x i64>, ptr %i.ke, align 8, !tbaa !174, !noalias !634
  %i.kp = add nsw <2 x i64> %i.ko, splat (i64 1)
  store <2 x i64> %i.kp, ptr %i.ke, align 8, !tbaa !174, !noalias !634
  %i.kq = load ptr, ptr %i.cf, align 8, !tbaa !637, !noalias !634, !nonnull !129, !align !242 ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.kq, align 8, !tbaa !600, !noalias !634 ; 4 uses
  %i.kr = getelementptr i8, ptr %i.kq, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.kr, align 8, !tbaa !638, !noalias !634
  %.val1.val.i.i.i.i.i.i = load i64, ptr %.val1.i.i.i.i.i.i, align 8, !tbaa !174, !noalias !634
  %i.ks = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 144
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !235, !noalias !639
  %i.ku = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 160 ; 3 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !284, !noalias !639
  %i.kw = getelementptr inbounds i8, ptr %i.kt, i64 %i.kv
  store i64 %.val1.val.i.i.i.i.i.i, ptr %i.kw, align 1, !noalias !639
  %i.kx = load i64, ptr %i.ku, align 8, !tbaa !284, !noalias !639
  %i.ky = add nsw i64 %i.kx, 8
  store i64 %i.ky, ptr %i.ku, align 8, !tbaa !284, !noalias !639
  %i.kz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 200
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !235, !noalias !639
  %i.lb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 216 ; 3 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !284, !noalias !639
  %i.ld = getelementptr inbounds i8, ptr %i.la, i64 %i.lc
  store i64 0, ptr %i.ld, align 1, !noalias !639
  %i.le = load i64, ptr %i.lb, align 8, !tbaa !284, !noalias !639
  %i.lf = add nsw i64 %i.le, 8
  store i64 %i.lf, ptr %i.lb, align 8, !tbaa !284, !noalias !639
  store ptr null, ptr %16, align 8, !tbaa !115, !alias.scope !615, !noalias !593
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit201.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit195.i.i.i.i.i, %bb.aj
  %i.lg = add nsw i64 %.8242.i.i.i.i.i, 1         ; 2 uses
  %i.lh = add nuw nsw i64 %.096243.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.lh, %i.iw
  br i1 %exitcond.not.i.i.i.i.i, label %.critedge144.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !642

.critedge144.i.i.loopexit14.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit175.i.i.i.i.i
  store ptr null, ptr %16, align 8, !tbaa !115, !alias.scope !615, !noalias !593
  br label %.critedge144.i.i.i.i.i

.critedge144.i.i.i.i.i:                           ; preds = %bb.ak, %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i, %.critedge144.i.i.loopexit14.i.i.i, %.preheader231.i.i.i.i.i, %.preheader234.i.i.i.i.i, %.preheader226.i.i.i.i.i, %.preheader228.i.i.i.i.i, %.noexc12.i, %.preheader.i.i.i.i.i, %bb.ab
  %.11.i.i.i.i.i = phi i64 [ %i.ev, %bb.ab ], [ %i.gd, %_ZN5arrow6StatusD2Ev.exit165.i.i.i.i.i ], [ %i.ii, %_ZN5arrow6StatusD2Ev.exit181.i.i.i.i.i ], [ %i.iu, %_ZN5arrow6StatusD2Ev.exit187.i.i.i.i.i ], [ %i.jl, %_ZN5arrow6StatusD2Ev.exit193.i.i.i.i.i ], [ %i.gh, %.critedge144.i.i.loopexit14.i.i.i ], [ %.0107267.i.i.i.i.i, %.noexc12.i ], [ %.0107267.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader226.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader228.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader231.i.i.i.i.i ], [ %.0107267.i.i.i.i.i, %.preheader234.i.i.i.i.i ], [ %i.lg, %bb.ak ] ; 2 uses
  %i.li = load ptr, ptr %i.n, align 8, !tbaa !608, !noalias !609, !nonnull !129, !align !242
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !135, !noalias !609
  %i.ll = icmp slt i64 %.11.i.i.i.i.i, %i.lk
  br i1 %i.ll, label %bb.r, label %.critedge158.i.i.i.i.i, !llvm.loop !643

.critedge158.i.i.i.i.i:                           ; preds = %.critedge144.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit195.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit189.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit183.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i, %.noexc9.i
  %i.lm = phi ptr [ %i.jj, %_ZN5arrow6StatusD2Ev.exit189.i.i.i.i.i ], [ %i.jz, %_ZN5arrow6StatusD2Ev.exit195.i.i.i.i.i ], [ %i.gf, %_ZN5arrow6StatusD2Ev.exit171.i.i.i.i.i ], [ null, %.noexc9.i ], [ %i.is, %_ZN5arrow6StatusD2Ev.exit183.i.i.i.i.i ], [ null, %.critedge144.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25, !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !609
  br label %_ZN5arrow6StatusD2Ev.exit.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %bb.p, %bb.o, %.body.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !609
  br label %.body.i

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %.critedge158.i.i.i.i.i, %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i
  %i.ln = phi ptr [ %.pre.i.i.i, %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i ], [ %i.lm, %.critedge158.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !609
  store ptr %i.ln, ptr %21, align 8, !tbaa !115, !alias.scope !590, !noalias !588
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !593
  %i.lo = icmp eq ptr %i.ln, null
  br i1 %i.lo, label %_ZN5arrow6StatusD2Ev.exit8.i.i.i, label %bb.al

_ZN5arrow6StatusD2Ev.exit8.i.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  store ptr null, ptr %21, align 8, !tbaa !115, !alias.scope !644, !noalias !588
  br label %bb.al

bb.al:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit8.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !593
  store ptr null, ptr %0, align 8, !tbaa !115, !alias.scope !588
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i.i unwind label %bb.am

_ZN5arrow6StatusC2ERKS0_.exit.i.i:                ; preds = %bb.al
  %i.lp = load ptr, ptr %0, align 8, !tbaa !115, !alias.scope !588
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %_ZN5arrow6StatusD2Ev.exit38.i.i, label %.critedge.i.i

bb.am:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit44.i.i, %bb.al
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit38.i.i:                  ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25, !noalias !588
  invoke fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_19SelectionINS2_21ListViewSelectionImplINS_17LargeListViewTypeEEES5_E12FinishCommonEv(ptr dead_on_unwind noalias writable align 8 %22, ptr noundef nonnull align 8 dereferenceable(120) %23)
          to label %_ZN5arrow6StatusD2Ev.exit40.i.i unwind label %bb.an

_ZN5arrow6StatusD2Ev.exit40.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit38.i.i
  %i.ls = load ptr, ptr %22, align 8, !tbaa !115, !noalias !588 ; 2 uses
  store ptr %i.ls, ptr %0, align 8, !tbaa !115, !alias.scope !588
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25, !noalias !588
  %i.lt = icmp eq ptr %i.ls, null
  br i1 %i.lt, label %_ZN5arrow6StatusD2Ev.exit44.i.i, label %.critedge.i.i

bb.an:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit38.i.i
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25, !noalias !588
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit44.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit40.i.i
  %i.lv = load ptr, ptr %23, align 8, !tbaa !45, !noalias !588
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8
  invoke void %i.lx(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %23)
          to label %.critedge.i.i unwind label %bb.am

.critedge.i.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit44.i.i, %_ZN5arrow6StatusD2Ev.exit40.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i.i
  %i.ly = load ptr, ptr %21, align 8, !tbaa !115, !noalias !588 ; 2 uses
  %.not.i45.i.i = icmp eq ptr %i.ly, null
  br i1 %.not.i45.i.i, label %_ZN5arrow6StatusD2Ev.exit46.i.i, label %bb.ao, !prof !118

bb.ao:                                            ; preds = %.critedge.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !119, !range !128, !noundef !129
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %_ZN5arrow6StatusD2Ev.exit46.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #25
  br label %_ZN5arrow6StatusD2Ev.exit46.i.i

_ZN5arrow6StatusD2Ev.exit46.i.i:                  ; preds = %bb.ap, %bb.ao, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25, !noalias !588
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_21ListViewSelectionImplINS_17LargeListViewTypeEEEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit

bb.aq:                                            ; preds = %bb.an, %bb.am
  %.pn22.i.i = phi { ptr, i32 } [ %i.lr, %bb.am ], [ %i.lu, %bb.an ]
  %i.mc = load ptr, ptr %21, align 8, !tbaa !115, !noalias !588 ; 2 uses
  %.not.i47.i.i = icmp eq ptr %i.mc, null
  br i1 %.not.i47.i.i, label %_ZN5arrow6StatusD2Ev.exit48.i.i, label %bb.ar, !prof !118

bb.ar:                                            ; preds = %bb.aq
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 1
  %i.me = load i8, ptr %i.md, align 1, !tbaa !119, !range !128, !noundef !129
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %_ZN5arrow6StatusD2Ev.exit48.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #25
  br label %_ZN5arrow6StatusD2Ev.exit48.i.i

_ZN5arrow6StatusD2Ev.exit48.i.i:                  ; preds = %bb.as, %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25, !noalias !588
  br label %.body.i

.loopexit.i:                                      ; preds = %bb.af, %.noexc10.i, %bb.r
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %.noexc8.i, %bb.q, %_ZN5arrow6StatusD2Ev.exit32.i.i, %_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_17LargeListViewTypeEEC2EPNS0_13KernelContextERKNS0_8ExecSpanElPNS0_10ExecResultE.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %_ZN5arrow6StatusD2Ev.exit48.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn22.i.i, %_ZN5arrow6StatusD2Ev.exit48.i.i ], [ %.pn137.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_17LargeListViewTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25, !noalias !573
  resume { ptr, i32 } %eh.lpad-body.i

_ZN5arrow7compute8internal12_GLOBAL__N_110FilterExecINS2_21ListViewSelectionImplINS_17LargeListViewTypeEEEEENS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE.exit: ; preds = %bb.d, %.noexc7.i, %_ZN5arrow6StatusD2Ev.exit46.i.i
  call void @_ZN5arrow7compute8internal12_GLOBAL__N_121ListViewSelectionImplINS_17LargeListViewTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25, !noalias !573
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal13FSLFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"struct.arrow::internal::OptionalBitIndexer", align 8 ; 6 uses
  %6 = alloca %class.anon.248, align 8            ; 7 uses
  %7 = alloca %class.anon.249, align 8            ; 8 uses
  %8 = alloca %class.anon.250, align 8            ; 11 uses
  %9 = alloca %"class.std::function.63", align 8  ; 12 uses
  %10 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %11 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %12 = alloca %"class.arrow::internal::BitBlockCounter", align 8 ; 10 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %17 = alloca %"class.arrow::FixedSizeListArray", align 8 ; 11 uses
  %18 = alloca %"class.std::shared_ptr.113", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %20 = alloca %class.anon.246, align 8           ; 8 uses
  %21 = alloca %class.anon.247, align 8           ; 6 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %23 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 22 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %26 = alloca %"struct.arrow::compute::internal::(anonymous namespace)::FSLSelectionImpl", align 8 ; 26 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZN5arrow4util16IsFixedWidthLikeERKNS_9ArraySpanEbb(ptr noundef nonnull align 8 dereferenceable(128) %i.d, i1 noundef zeroext true, i1 noundef zeroext true)
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !142
  %i.g = tail call noundef i64 @_ZN5arrow4util17FixedWidthInBytesERKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(72) %i.f)
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5arrow7compute8internal19PrimitiveFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3)
  br label %bb.cc

.critedge:                                        ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !201, !noalias !647
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !204, !noalias !647
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !208, !noalias !647
  %i.o = tail call noundef i64 @_ZN5arrow7compute8internal19GetFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE(ptr noundef nonnull align 8 dereferenceable(128) %i.j, i32 noundef %i.n), !noalias !647
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25, !noalias !647
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !201, !noalias !647
  call fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_116FSLSelectionImplC2EPNS0_13KernelContextERKNS0_8ExecSpanElPNS0_10ExecResultE(ptr noundef nonnull align 8 dereferenceable(336) %26, ptr noundef %1, ptr %.val.i, i64 noundef %i.o, ptr noundef readonly %3), !noalias !647
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.p = getelementptr inbounds nuw i8, ptr %26, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !653, !noalias !655
  %i.s = getelementptr inbounds nuw i8, ptr %26, i64 104 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !227, !noalias !656 ; 2 uses
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = shl nsw i64 %i.t, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.u, i64 %i.v) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %26, i64 80 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !231, !noalias !659 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25, !noalias !659
end_hunk_2
