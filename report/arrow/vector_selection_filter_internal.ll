inline.NumInlined: 4369
inline.NumDeleted: 1949
begin_hunk_0_@_ZN5arrow7compute8internal19GetFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE:bb.a
  %i.fg = load i64, ptr %i.ff, align 1
  %i.fh = and i64 %i.fg, %i.fd
  %i.fi = and i64 %i.fe, %i.ez
  %i.fj = tail call i64 @llvm.fshr.i64(i64 %i.fh, i64 %i.fi, i64 %i.t)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink.i.i = phi i64 [ %i.fj, %bb.q ], [ %i.fb, %bb.p ]
  %i.fk = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sink.i.i)
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.157.i, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.14.155.i, i64 8
  %i.fn = add nsw i64 %.sroa.28.156.i, -64
  %i.fo = trunc nuw nsw i64 %i.fk to i16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i39.i
  %.sroa.14.4.i = phi ptr [ %i.dv, %._crit_edge.i39.i ], [ %i.fm, %bb.r ]
  %.sroa.28.4.i = phi i64 [ %i.dw, %._crit_edge.i39.i ], [ %i.fn, %bb.r ]
  %.sroa.0.4.i = phi ptr [ %i.du, %._crit_edge.i39.i ], [ %i.fl, %bb.r ]
  %.sroa.0.0.i33.i = phi i32 [ %i.dy, %._crit_edge.i39.i ], [ 64, %bb.r ]
  %.sroa.4.0.i34.i = phi i16 [ %.016.lcssa.i40.i, %._crit_edge.i39.i ], [ %i.fo, %bb.r ]
  %i.fp = zext i16 %.sroa.4.0.i34.i to i32
  %i.fq = shl nuw i32 %i.fp, 16
  %i.fr = or disjoint i32 %i.fq, %.sroa.0.0.i33.i
  br label %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.i

_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.i: ; preds = %bb.s, %bb.l
  %.sroa.14.5.i = phi ptr [ %.sroa.14.155.i, %bb.l ], [ %.sroa.14.4.i, %bb.s ]
  %.sroa.28.5.i = phi i64 [ 0, %bb.l ], [ %.sroa.28.4.i, %bb.s ]
  %.sroa.0.5.i = phi ptr [ %.sroa.0.157.i, %bb.l ], [ %.sroa.0.4.i, %bb.s ]
  %.sroa.0.0.insert.insert.i35.i = phi i32 [ 0, %bb.l ], [ %i.fr, %bb.s ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = zext i32 %.sroa.0.0.insert.insert.i35.i to i64
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.0.0.insert.insert.i35.i, 16
  %.sroa.4.0.extract.trunc.i = zext nneg i32 %.sroa.4.0.extract.shift.i to i64
  %sext.i = shl nuw i64 %.sroa.4.0.extract.trunc.i, 48
  %i.fs = ashr exact i64 %sext.i, 48
  %i.ft = add nsw i64 %i.fs, %.159.i              ; 2 uses
  %sext23.i = shl i64 %.sroa.0.0.extract.trunc.i, 48
  %i.fu = ashr exact i64 %sext23.i, 48
  %i.fv = add nsw i64 %i.fu, %.12258.i            ; 2 uses
  %i.fw = icmp slt i64 %i.fv, %i.q
  br i1 %i.fw, label %bb.l, label %_ZN5arrow7compute8internal12_GLOBAL__N_125GetBitmapFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit, !llvm.loop !72

bb.t:                                             ; preds = %bb.b
  %i.fx = tail call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef %i.m, i64 noundef %i.o, i64 noundef %i.q)
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_125GetBitmapFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.fy = ptrtoint ptr %i.a to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.gb, align 8
  store i64 %i.fy, ptr %2, align 8, !tbaa !74
  store ptr @"_ZNSt17_Function_handlerIFbllbEZN5arrow7compute8internal12_GLOBAL__N_122GetREEFilterOutputSizeERKNS1_9ArraySpanENS2_13FilterOptions21NullSelectionBehaviorEE3$_0E9_M_invokeERKSt9_Any_dataOlSF_Ob", ptr %i.ga, align 8, !tbaa !76
  store ptr @"_ZNSt17_Function_handlerIFbllbEZN5arrow7compute8internal12_GLOBAL__N_122GetREEFilterOutputSizeERKNS1_9ArraySpanENS2_13FilterOptions21NullSelectionBehaviorEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.fz, align 8, !tbaa !79
  invoke void @_ZN5arrow7compute8internal34VisitPlainxREEFilterOutputSegmentsERKNS_9ArraySpanEbNS0_13FilterOptions21NullSelectionBehaviorERKSt8functionIFbllbEE(ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext true, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.gc = load ptr, ptr %i.fz, align 8, !tbaa !79 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i5, label %_ZN5arrow7compute8internal12_GLOBAL__N_122GetREEFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gd = invoke noundef zeroext i1 %i.gc(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZN5arrow7compute8internal12_GLOBAL__N_122GetREEFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #27
  unreachable

bb.y:                                             ; preds = %bb.u
  %i.gg = landingpad { ptr, i32 }
          cleanup
  %i.gh = load ptr, ptr %i.fz, align 8, !tbaa !79 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.gh, null
  br i1 %.not.i4.i, label %_ZNSt14_Function_baseD2Ev.exit5.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gi = invoke noundef zeroext i1 %i.gh(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5.i unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit5.i:                ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  resume { ptr, i32 } %i.gg

_ZN5arrow7compute8internal12_GLOBAL__N_122GetREEFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.gl = load i64, ptr %i.a, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_125GetBitmapFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit

_ZN5arrow7compute8internal12_GLOBAL__N_125GetBitmapFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit: ; preds = %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.i, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail13BitBlockOrNotEEENS0_13BitBlockCountEv.exit.i, %bb.t, %.preheader.i, %.preheader53.i, %_ZN5arrow7compute8internal12_GLOBAL__N_122GetREEFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit
  %.0 = phi i64 [ %i.gl, %_ZN5arrow7compute8internal12_GLOBAL__N_122GetREEFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE.exit ], [ %i.fx, %bb.t ], [ %i.cx, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail13BitBlockOrNotEEENS0_13BitBlockCountEv.exit.i ], [ 0, %.preheader.i ], [ 0, %.preheader53.i ], [ %i.ft, %_ZN5arrow8internal21BinaryBitBlockCounter8NextWordINS0_6detail11BitBlockAndEEENS0_13BitBlockCountEv.exit.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal19PrimitiveFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(none) %3) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %5 = alloca %"class.std::function", align 8     ; 12 uses
  %6 = alloca %"class.std::function", align 8     ; 12 uses
  %7 = alloca %"class.std::function", align 8     ; 12 uses
  %8 = alloca %"class.arrow::compute::internal::(anonymous namespace)::DropNullCounter", align 8 ; 16 uses
  %9 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %10 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %11 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %12 = alloca %"class.std::function", align 8    ; 12 uses
  %13 = alloca %"class.std::function", align 8    ; 12 uses
  %14 = alloca %"class.std::function", align 8    ; 12 uses
  %15 = alloca %"class.arrow::compute::internal::(anonymous namespace)::DropNullCounter", align 8 ; 16 uses
  %16 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %17 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %18 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %19 = alloca %"class.std::function", align 8    ; 12 uses
  %20 = alloca %"class.std::function", align 8    ; 12 uses
  %21 = alloca %"class.std::function", align 8    ; 12 uses
  %22 = alloca %"class.arrow::compute::internal::(anonymous namespace)::DropNullCounter", align 8 ; 16 uses
  %23 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %24 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %25 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %26 = alloca %"class.std::function", align 8    ; 12 uses
  %27 = alloca %"class.std::function", align 8    ; 12 uses
  %28 = alloca %"class.std::function", align 8    ; 12 uses
  %29 = alloca %"class.arrow::compute::internal::(anonymous namespace)::DropNullCounter", align 8 ; 16 uses
  %30 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %31 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %32 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %33 = alloca %"class.std::function", align 8    ; 12 uses
  %34 = alloca %"class.std::function", align 8    ; 12 uses
  %35 = alloca %"class.std::function", align 8    ; 12 uses
  %36 = alloca %"class.arrow::compute::internal::(anonymous namespace)::DropNullCounter", align 8 ; 16 uses
  %37 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %38 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %39 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %40 = alloca %"class.std::function", align 8    ; 12 uses
  %41 = alloca %"class.std::function", align 8    ; 12 uses
  %42 = alloca %"class.std::function", align 8    ; 12 uses
  %43 = alloca %"class.arrow::compute::internal::(anonymous namespace)::DropNullCounter", align 8 ; 16 uses
  %44 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %45 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %46 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %47 = alloca %"class.std::function", align 8    ; 12 uses
  %48 = alloca %"class.std::function", align 8    ; 12 uses
  %49 = alloca %"class.std::function", align 8    ; 12 uses
  %50 = alloca %"class.arrow::compute::internal::(anonymous namespace)::DropNullCounter", align 8 ; 16 uses
  %51 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %52 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %53 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %54 = alloca %"class.std::function", align 8    ; 12 uses
  %55 = alloca %"class.std::function", align 8    ; 12 uses
  %56 = alloca %"class.std::function", align 8    ; 12 uses
  %57 = alloca %"class.arrow::compute::internal::(anonymous namespace)::DropNullCounter", align 8 ; 16 uses
  %58 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %59 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %60 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %61 = alloca %"class.arrow::compute::internal::(anonymous namespace)::PrimitiveFilterImpl", align 8 ; 17 uses
  %62 = alloca %"class.arrow::compute::internal::(anonymous namespace)::PrimitiveFilterImpl.43", align 8 ; 17 uses
  %63 = alloca %"class.arrow::compute::internal::(anonymous namespace)::PrimitiveFilterImpl.44", align 8 ; 17 uses
  %64 = alloca %"class.arrow::compute::internal::(anonymous namespace)::PrimitiveFilterImpl.45", align 8 ; 17 uses
  %65 = alloca %"class.arrow::compute::internal::(anonymous namespace)::PrimitiveFilterImpl.46", align 8 ; 17 uses
  %66 = alloca %"class.arrow::compute::internal::(anonymous namespace)::PrimitiveFilterImpl.47", align 8 ; 17 uses
  %67 = alloca %"class.arrow::compute::internal::(anonymous namespace)::PrimitiveFilterImpl.48", align 8 ; 17 uses
  %68 = alloca %"class.arrow::compute::internal::(anonymous namespace)::PrimitiveFilterImpl.49", align 8 ; 29 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 37 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 11 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !88   ; 10 uses
  %i.k = tail call noundef i64 @_ZN5arrow7compute8internal19GetFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i32 noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.m = load i8, ptr %i.l, align 8, !tbaa !93
  switch i8 %i.m, label %bb.b [
    i8 1, label %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !95

bb.b:                                             ; preds = %bb.a
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.n, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @.str.6, ptr %i.o, align 8, !tbaa !98
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.p, align 8, !tbaa !96
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @.str.5, ptr %i.q, align 8, !tbaa !98
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable

_ZNK5arrow7compute10ExecResult10array_dataEv.exit: ; preds = %bb.a
  %i.r = icmp eq i32 %i.f, 38
  %i.s = load ptr, ptr %3, align 8, !tbaa !101    ; 26 uses
  br i1 %i.r, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !105
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit, %bb.c
  %.pn = phi ptr [ %i.v, %bb.c ], [ %i.c, %_ZNK5arrow7compute10ExecResult10array_dataEv.exit ]
  %.in.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.in = load i64, ptr %.in.in, align 8, !tbaa !59
  %i.w = icmp eq i64 %.in, 0                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 10 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !59
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = icmp eq i32 %i.j, 0
  %or.cond = select i1 %i.aa, i1 true, i1 %i.w
  %or.cond61 = select i1 %i.z, i1 %or.cond, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %not.or.cond61 = xor i1 %or.cond61, true
  %. = sext i1 %not.or.cond61 to i64
  store atomic i64 %., ptr %i.ab seq_cst, align 8
  %i.ac = load i64, ptr %i.x, align 8, !tbaa !59
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = xor i1 %i.w, true
  %i.af = select i1 %i.ad, i1 true, i1 %i.ae
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.ah = tail call noundef i64 @_ZN5arrow4util16FixedWidthInBitsERKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(72) %i.ag) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #26
  call void @_ZN5arrow4util8internal30PreallocateFixedWidthArrayDataEPNS_7compute13KernelContextElRKNS_9ArraySpanEbPNS_9ArrayDataE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %60, ptr noundef nonnull %1, i64 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i1 noundef zeroext %i.af, ptr noundef nonnull %i.s)
  %i.ai = load ptr, ptr %60, align 8, !tbaa !106  ; 2 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN5arrow6StatusD2Ev.exit65, label %.critedge

_ZN5arrow6StatusD2Ev.exit65:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.ak = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ah)
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %.split, label %bb.tp

.split:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit65
  %i.am = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ah, i1 true)
  switch i64 %i.am, label %bb.tp [
    i64 0, label %bb.d
    i64 3, label %bb.cb
    i64 4, label %bb.ez
    i64 5, label %bb.hx
    i64 6, label %bb.kv
    i64 7, label %bb.nt
    i64 8, label %bb.qr
  ]

bb.d:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #26
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.ao = call noundef i64 @_ZN5arrow4util17FixedWidthInBytesERKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(72) %i.an)
  store i64 %i.ao, ptr %61, align 8, !tbaa !109
  %i.ap = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !60
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !111
  %i.as = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !60
  store ptr %i.au, ptr %i.as, align 8, !tbaa !112
  %i.av = getelementptr inbounds nuw i8, ptr %61, i64 24 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %61, i64 32 ; 15 uses
  %i.ax = load <2 x i64>, ptr %i.x, align 8, !tbaa !73
  store <2 x i64> %i.ax, ptr %i.av, align 8, !tbaa !73
  %i.ay = getelementptr inbounds nuw i8, ptr %61, i64 40 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !65
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !113
  %i.bb = getelementptr inbounds nuw i8, ptr %61, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.bb, align 8, !tbaa !114
  %i.bc = getelementptr inbounds nuw i8, ptr %61, i64 56 ; 5 uses
  store i32 %i.j, ptr %i.bc, align 8, !tbaa !115
  %i.bd = getelementptr inbounds nuw i8, ptr %61, i64 64 ; 13 uses
  store ptr null, ptr %i.bd, align 8, !tbaa !116
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !117
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !119 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi1ELb1EEC2ERKNS_9ArraySpanES7_NS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !122, !range !130, !noundef !131
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bl = load i8, ptr %i.bk, align 8, !range !130
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = select i1 %i.bj, i1 %i.bm, i1 false, !prof !132
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = select i1 %i.bn, ptr %i.bp, ptr null, !prof !132
  store ptr %i.bq, ptr %i.bd, align 8, !tbaa !116
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi1ELb1EEC2ERKNS_9ArraySpanES7_NS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataE.exit

_ZN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi1ELb1EEC2ERKNS_9ArraySpanES7_NS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataE.exit: ; preds = %bb.d, %bb.e
  %i.br = call noundef ptr @_ZN5arrow4util30MutableFixedWidthValuesPointerEPNS_9ArrayDataE(ptr noundef nonnull %i.s) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %61, i64 72 ; 12 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !133
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !134 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %61, i64 80
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !152
  %i.bw = getelementptr inbounds nuw i8, ptr %61, i64 88 ; 40 uses
  store i64 0, ptr %i.bw, align 8, !tbaa !153
  %i.bx = load ptr, ptr %i.bb, align 8, !tbaa !154, !nonnull !131, !align !155 ; 9 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !42
  %i.cb = icmp eq i32 %i.ca, 38
  br i1 %i.cb, label %bb.f, label %bb.ae

bb.f:                                             ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi1ELb1EEC2ERKNS_9ArraySpanES7_NS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataE.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 104
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !105
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 144
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !59
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = load i64, ptr %i.av, align 8
  %i.ci = icmp eq i64 %i.ch, 0
  %or.cond.i.i = select i1 %i.cg, i1 %i.ci, i1 false
  br i1 %or.cond.i.i, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.cj = load i32, ptr %i.bc, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #26
  %i.ck = ptrtoint ptr %61 to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %54, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 0, ptr %i.cn, align 8
  store i64 %i.ck, ptr %54, align 8, !tbaa !156
  store ptr @_ZNSt17_Function_handlerIFbllbEZN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi1ELb1EE13ExecREEFilterEvEUlllbE_E9_M_invokeERKSt9_Any_dataOlSC_Ob, ptr %i.cm, align 8, !tbaa !76
  store ptr @_ZNSt17_Function_handlerIFbllbEZN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi1ELb1EE13ExecREEFilterEvEUlllbE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.cl, align 8, !tbaa !79
  invoke void @_ZN5arrow7compute8internal34VisitPlainxREEFilterOutputSegmentsERKNS_9ArraySpanEbNS0_13FilterOptions21NullSelectionBehaviorERKSt8functionIFbllbEE(ptr noundef nonnull align 8 dereferenceable(128) %i.bx, i1 noundef zeroext false, i32 noundef %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %54)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 8 dereferenceable(32) %54, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi1ELb1EE4ExecEv.exit

bb.k:                                             ; preds = %bb.g
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %i.cl, align 8, !tbaa !79 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i10.i.i, label %_ZNSt14_Function_baseD2Ev.exit11.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = invoke noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 8 dereferenceable(32) %54, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit11.i.i unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit11.i.i:             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  br label %common.resume

bb.n:                                             ; preds = %bb.f
  %i.cx = load ptr, ptr %i.ap, align 8, !tbaa !111
  %.not.i.i66 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i66, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = load i32, ptr %i.bc, align 8, !tbaa !115
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal23GetDefaultFilterOptionsEv:bb.a

_ZN5arrow7compute13FilterOptions8DefaultsEv.exit: ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow7compute8internal23GetDefaultFilterOptionsEvE21kDefaultFilterOptions) #26
  br label %bb.d

bb.d:                                             ; preds = %_ZN5arrow7compute13FilterOptions8DefaultsEv.exit, %bb.b, %bb.a
  ret ptr @_ZZN5arrow7compute8internal23GetDefaultFilterOptionsEvE21kDefaultFilterOptions

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow7compute8internal23GetDefaultFilterOptionsEvE21kDefaultFilterOptions) #26
  resume { ptr, i32 } %i.d
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal22MakeFilterMetaFunctionEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"struct.arrow::compute::Arity", align 8 ; 5 uses
  %3 = alloca %"struct.arrow::compute::FunctionDoc", align 8 ; 14 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #29, !noalias !339 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !339
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !339
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !328, !noalias !339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.10, i64 6, i1 false), !noalias !339
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 6, ptr %i.c, align 8, !tbaa !332, !noalias !339
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.d, align 2, !tbaa !67, !noalias !339
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !339
  store i40 2, ptr %2, align 8, !noalias !339
  invoke void @_ZN5arrow7compute11FunctionDocC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(121) %3, ptr noundef nonnull align 8 dereferenceable(121) @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE)
          to label %bb.b unwind label %bb.h, !noalias !339

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i8, ptr @_ZGVZN5arrow7compute8internal23GetDefaultFilterOptionsEvE21kDefaultFilterOptions acquire, align 8, !noalias !339
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5arrow7compute8internal23GetDefaultFilterOptionsEv.exit.i.i, !prof !338

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow7compute8internal23GetDefaultFilterOptionsEvE21kDefaultFilterOptions) #26, !noalias !339
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN5arrow7compute8internal23GetDefaultFilterOptionsEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5arrow7compute13FilterOptionsC1ENS1_21NullSelectionBehaviorE(ptr noundef nonnull align 8 dereferenceable(20) @_ZZN5arrow7compute8internal23GetDefaultFilterOptionsEvE21kDefaultFilterOptions, i32 noundef 0)
          to label %_ZN5arrow7compute13FilterOptions8DefaultsEv.exit.i.i.i unwind label %bb.e, !noalias !339

_ZN5arrow7compute13FilterOptions8DefaultsEv.exit.i.i.i: ; preds = %bb.d
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow7compute8internal23GetDefaultFilterOptionsEvE21kDefaultFilterOptions) #26, !noalias !339
  br label %_ZN5arrow7compute8internal23GetDefaultFilterOptionsEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow7compute8internal23GetDefaultFilterOptionsEvE21kDefaultFilterOptions) #26, !noalias !339
  br label %.body.i.i

_ZN5arrow7compute8internal23GetDefaultFilterOptionsEv.exit.i.i: ; preds = %_ZN5arrow7compute13FilterOptions8DefaultsEv.exit.i.i.i, %bb.c, %bb.b
  invoke void @_ZN5arrow7compute12MetaFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(5) %2, ptr noundef nonnull %3, ptr noundef nonnull @_ZZN5arrow7compute8internal23GetDefaultFilterOptionsEvE21kDefaultFilterOptions)
          to label %bb.f unwind label %bb.i, !noalias !339

bb.f:                                             ; preds = %_ZN5arrow7compute8internal23GetDefaultFilterOptionsEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !330, !noalias !339 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !67, !noalias !339
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30, !noalias !339
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !333, !noalias !339 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !335, !noalias !339 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !330, !noalias !339 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !67, !noalias !339
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #30, !noalias !339
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !336

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !333, !noalias !339
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.y = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !337, !noalias !339
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #30, !noalias !339
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !330, !noalias !339 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !67, !noalias !339
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #30, !noalias !339
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.ak = load ptr, ptr %3, align 8, !tbaa !330, !noalias !339 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !67, !noalias !339
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #30, !noalias !339
  br label %_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i

_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !339
  %i.ap = load ptr, ptr %1, align 8, !tbaa !330, !noalias !339 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.b
  br i1 %i.aq, label %_ZNSt10unique_ptrIN5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunctionESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !67, !noalias !339
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #30, !noalias !339
  br label %_ZNSt10unique_ptrIN5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunctionESt14default_deleteIS4_EED2Ev.exit

bb.h:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZN5arrow7compute8internal23GetDefaultFilterOptionsEv.exit.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.au, %bb.i ], [ %i.h, %bb.e ]
  call void @_ZN5arrow7compute11FunctionDocD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %3) #26, !noalias !339
  br label %bb.j

bb.j:                                             ; preds = %.body.i.i, %bb.h
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.at, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !339
  %i.av = load ptr, ptr %1, align 8, !tbaa !330, !noalias !339 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.b
  br i1 %i.aw, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.j
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !67, !noalias !339
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #30, !noalias !339
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 192) #30, !noalias !339
  resume { ptr, i32 } %.pn.i.i

_ZNSt10unique_ptrIN5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunctionESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunctionE, i64 16), ptr %i.a, align 8, !tbaa !96, !noalias !339
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !339
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !339
  store ptr %i.a, ptr %0, align 8, !tbaa !342
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal21PopulateFilterKernelsEPSt6vectorINS1_19SelectionKernelDataESaIS3_EE(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %2 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %3 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %4 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %5 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %6 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %7 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %8 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %9 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %11 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %12 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %13 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %14 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %15 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %16 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %17 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %18 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %19 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %20 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %21 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %22 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %23 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %24 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %25 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %26 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %27 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %28 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %29 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %30 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %31 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %32 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %33 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %34 = alloca %"class.arrow::compute::InputType", align 8 ; 29 uses
  %35 = alloca %"class.arrow::compute::InputType", align 8 ; 29 uses
  %36 = alloca %"class.std::shared_ptr.69", align 16 ; 4 uses
  %37 = alloca [40 x %"struct.arrow::compute::internal::SelectionKernelData"], align 8 ; 329 uses
  %38 = alloca %"class.std::shared_ptr.69", align 16 ; 5 uses
  %39 = alloca %"class.std::shared_ptr.69", align 16 ; 5 uses
  %40 = alloca %"class.std::shared_ptr.69", align 16 ; 5 uses
  %41 = alloca %"class.std::shared_ptr.25", align 8 ; 5 uses
  %42 = alloca %"class.std::shared_ptr.69", align 16 ; 5 uses
  %43 = alloca %"class.std::shared_ptr.69", align 16 ; 5 uses
  %44 = alloca %"class.std::shared_ptr.69", align 16 ; 5 uses
  %45 = alloca %"class.std::shared_ptr.25", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %33, i32 noundef 1)
  store i32 2, ptr %34, align 8, !tbaa !345
  %i.a = getelementptr inbounds nuw i8, ptr %34, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.d = load <2 x ptr>, ptr %33, align 16, !tbaa !351
  store <2 x ptr> %i.d, ptr %i.b, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  invoke void @_ZN5arrow7compute5match13RunEndEncodedENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %36, i32 noundef 1)
          to label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.dr

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  store i32 2, ptr %35, align 8, !tbaa !345
  %i.e = getelementptr inbounds nuw i8, ptr %35, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.i = load <2 x ptr>, ptr %36, align 16, !tbaa !351
  store ptr null, ptr %i.h, align 8, !tbaa !352
  store <2 x ptr> %i.i, ptr %i.f, align 8, !tbaa !351
  store ptr null, ptr %36, align 16, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26
  invoke void @_ZN5arrow7compute5match9PrimitiveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %38)
          to label %bb.b unwind label %.thread

bb.b:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store i32 2, ptr %37, align 8, !tbaa !345
  %i.j = getelementptr inbounds nuw i8, ptr %37, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.m = load <2 x ptr>, ptr %38, align 16, !tbaa !351
  store ptr null, ptr %i.l, align 8, !tbaa !352
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !351
  store ptr null, ptr %38, align 16, !tbaa !353
  %i.n = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %37, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %34)
  %i.p = getelementptr inbounds nuw i8, ptr %37, i64 80
  store ptr @_ZN5arrow7compute8internal19PrimitiveFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.p, align 8, !tbaa !354
  %i.q = getelementptr inbounds nuw i8, ptr %37, i64 88 ; 2 uses
  invoke void @_ZN5arrow7compute5match10BinaryLikeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %39)
          to label %bb.c unwind label %bb.ds

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.q, align 8, !tbaa !345
  %i.r = getelementptr inbounds nuw i8, ptr %37, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %37, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.u = load <2 x ptr>, ptr %39, align 16, !tbaa !351
  store ptr null, ptr %i.t, align 8, !tbaa !352
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !351
  store ptr null, ptr %39, align 16, !tbaa !353
  %i.v = getelementptr inbounds nuw i8, ptr %37, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %37, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %34)
  %i.x = getelementptr inbounds nuw i8, ptr %37, i64 168
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116BinaryFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.x, align 8, !tbaa !354
  %i.y = getelementptr inbounds nuw i8, ptr %37, i64 176 ; 2 uses
  invoke void @_ZN5arrow7compute5match15LargeBinaryLikeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %40)
          to label %bb.d unwind label %bb.dt

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %i.y, align 8, !tbaa !345
  %i.z = getelementptr inbounds nuw i8, ptr %37, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %37, i64 200
  %i.ab = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %40, align 16, !tbaa !351
  store ptr null, ptr %i.ab, align 8, !tbaa !352
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !351
  store ptr null, ptr %40, align 16, !tbaa !353
  %i.ad = getelementptr inbounds nuw i8, ptr %37, i64 216
  %i.ae = getelementptr inbounds nuw i8, ptr %37, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %34)
  %i.af = getelementptr inbounds nuw i8, ptr %37, i64 256
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116BinaryFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.af, align 8, !tbaa !354
  %i.ag = getelementptr inbounds nuw i8, ptr %37, i64 264 ; 2 uses
  %i.ah = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4nullEv()
          to label %bb.e unwind label %bb.du      ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !356 ; 3 uses
  store ptr %i.ai, ptr %41, align 8, !tbaa !356
  %i.aj = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !352 ; 4 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !352
  %.not.i.i.i44 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i44, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %41, align 8, !tbaa !356
  %.pre141 = load ptr, ptr %i.aj, align 8, !tbaa !352
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.ar = phi ptr [ %.pre141, %bb.h ], [ %i.al, %bb.g ], [ null, %bb.e ]
  %i.as = phi ptr [ %.pre, %bb.h ], [ %i.ai, %bb.g ], [ %i.ai, %bb.e ]
  store i32 1, ptr %i.ag, align 8, !tbaa !345
  %i.at = getelementptr inbounds nuw i8, ptr %37, i64 272
  store ptr %i.as, ptr %i.at, align 8, !tbaa !356
  %i.au = getelementptr inbounds nuw i8, ptr %37, i64 280
  store ptr null, ptr %i.aj, align 8, !tbaa !352
  store ptr %i.ar, ptr %i.au, align 8, !tbaa !352
  store ptr null, ptr %41, align 8, !tbaa !356
  %i.av = getelementptr inbounds nuw i8, ptr %37, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %37, i64 304
  %i.ax = getelementptr inbounds nuw i8, ptr %37, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %34)
  %i.ay = getelementptr inbounds nuw i8, ptr %37, i64 344
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_114NullFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.ay, align 8, !tbaa !354
  %i.az = getelementptr inbounds nuw i8, ptr %37, i64 352 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %32, i32 noundef 15)
          to label %bb.j unwind label %bb.dv

bb.j:                                             ; preds = %bb.i
  store i32 2, ptr %i.az, align 8, !tbaa !345
  %i.ba = getelementptr inbounds nuw i8, ptr %37, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %37, i64 376
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute9InputTypeD2Ev:bb.a
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !361
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !361
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !352  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !357
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !359
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !360
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !360
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

declare void @_ZN5arrow7compute5match10BinaryLikeEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.69") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_116BinaryFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias nofree writable sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(none) %3) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 23 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %4 = alloca %"class.arrow::TypedBufferBuilder.143", align 8 ; 14 uses
  %5 = alloca %"class.arrow::TypedBufferBuilder.99", align 8 ; 23 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.c = alloca i64, align 8                      ; 37 uses
  %i.d = alloca i64, align 8                      ; 31 uses
  %i.e = alloca ptr, align 8                      ; 10 uses
  %i.f = alloca i64, align 8                      ; 10 uses
  %i.g = alloca i64, align 8                      ; 13 uses
  %i.h = alloca ptr, align 8                      ; 13 uses
  %i.i = alloca i64, align 8                      ; 50 uses
  %i.j = alloca i64, align 8                      ; 27 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.std::function", align 8     ; 12 uses
  %10 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 6 uses
  %11 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 6 uses
  %12 = alloca %"class.arrow::internal::BitBlockCounter", align 8 ; 12 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.k = alloca ptr, align 8                      ; 23 uses
  %i.l = alloca ptr, align 8                      ; 13 uses
  %22 = alloca %"class.arrow::TypedBufferBuilder", align 8 ; 14 uses
  %23 = alloca %"class.arrow::TypedBufferBuilder.99", align 8 ; 23 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %i.m = alloca i64, align 8                      ; 37 uses
  %i.n = alloca i32, align 4                      ; 32 uses
  %i.o = alloca ptr, align 8                      ; 10 uses
  %i.p = alloca i64, align 8                      ; 10 uses
  %i.q = alloca i64, align 8                      ; 13 uses
  %i.r = alloca ptr, align 8                      ; 13 uses
  %i.s = alloca i64, align 8                      ; 50 uses
  %i.t = alloca i64, align 8                      ; 28 uses
  %26 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %27 = alloca %"class.std::function", align 8    ; 12 uses
  %28 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 6 uses
  %29 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 6 uses
  %30 = alloca %"class.arrow::internal::BitBlockCounter", align 8 ; 12 uses
  %31 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %32 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %33 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %34 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %35 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %36 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %37 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %38 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %39 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %40 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %41 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %42 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 6 uses
  %i.u = alloca ptr, align 8                      ; 12 uses
  %i.v = alloca ptr, align 8                      ; 7 uses
  %43 = alloca %"class.arrow::TypedBufferBuilder.143", align 8 ; 14 uses
  %44 = alloca %"class.arrow::TypedBufferBuilder.99", align 8 ; 16 uses
  %45 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %46 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %i.w = alloca i64, align 8                      ; 12 uses
  %i.x = alloca i64, align 8                      ; 12 uses
  %47 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %48 = alloca %"class.std::function", align 8    ; 12 uses
  %49 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %50 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %51 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %52 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 6 uses
  %i.y = alloca ptr, align 8                      ; 12 uses
  %i.z = alloca ptr, align 8                      ; 7 uses
  %53 = alloca %"class.arrow::TypedBufferBuilder", align 8 ; 14 uses
  %54 = alloca %"class.arrow::TypedBufferBuilder.99", align 8 ; 16 uses
  %55 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %56 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %i.aa = alloca i64, align 8                     ; 12 uses
  %i.ab = alloca i32, align 4                     ; 12 uses
  %57 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %58 = alloca %"class.std::function", align 8    ; 12 uses
  %59 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %60 = alloca %"class.arrow::Status", align 8    ; 12 uses
  %61 = alloca %"class.arrow::Status", align 8    ; 12 uses
  %62 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %63 = alloca %"class.arrow::Result", align 8    ; 13 uses
  %64 = alloca %"class.arrow::Status", align 8    ; 26 uses
  %65 = alloca %"class.arrow::Status", align 8    ; 26 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !88 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !80 ; 36 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 136 ; 11 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !42
  %i.am = tail call noundef i64 @_ZN5arrow7compute8internal19GetFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE(ptr noundef nonnull align 8 dereferenceable(128) %i.ai, i32 noundef %i.af) ; 15 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !93
  switch i8 %i.ao, label %bb.b [
    i8 1, label %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !95

bb.b:                                             ; preds = %bb.a
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ap, align 8, !tbaa !96
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @.str.6, ptr %i.aq, align 8, !tbaa !98
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ar, align 8, !tbaa !96
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @.str.5, ptr %i.as, align 8, !tbaa !98
  tail call void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable

_ZNK5arrow7compute10ExecResult10array_dataEv.exit: ; preds = %bb.a
  %i.at = icmp eq i32 %i.al, 38
  %i.au = load ptr, ptr %3, align 8, !tbaa !101   ; 10 uses
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !105
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit, %bb.c
  %.pn = phi ptr [ %i.ax, %bb.c ], [ %i.ai, %_ZNK5arrow7compute10ExecResult10array_dataEv.exit ]
  %.in.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.in = load i64, ptr %.in.in, align 8, !tbaa !59
  %i.ay = icmp eq i64 %.in, 0                     ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !59
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = icmp eq i32 %i.af, 0                    ; 3 uses
  %or.cond = select i1 %i.bc, i1 true, i1 %i.ay
  %or.cond80 = select i1 %i.bb, i1 %or.cond, i1 false
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %not.or.cond80 = xor i1 %or.cond80, true
  %. = sext i1 %not.or.cond80 to i64
  store atomic i64 %., ptr %i.bd seq_cst, align 8
  %i.be = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !42 ; 4 uses
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !59
  %i.bi = icmp eq i64 %i.bh, 0
  %or.cond7 = select i1 %i.bi, i1 %i.ay, i1 false
  br i1 %or.cond7, label %bb.e, label %bb.ci

bb.e:                                             ; preds = %bb.d
  %.off.i = add i32 %i.bg, -13
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.f, label %bb.at

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #26
  %.val = load ptr, ptr %1, align 8, !tbaa !365
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !366 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.bj = load ptr, ptr %i.ai, align 8, !tbaa !33, !noalias !371
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !42, !noalias !371
  %i.bm = icmp eq i32 %i.bl, 38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #26, !noalias !371
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !64, !noalias !371
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !60, !noalias !371
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.br, ptr %i.y, align 8, !tbaa !374, !noalias !371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #26, !noalias !371
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !60, !noalias !371
  store ptr %i.bt, ptr %i.z, align 8, !tbaa !376, !noalias !371
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #26, !noalias !371
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %53, i8 0, i64 16, i1 false), !noalias !371
  %i.bu = getelementptr inbounds nuw i8, ptr %53, i64 16
  store ptr %.val.val, ptr %i.bu, align 8, !tbaa !377, !noalias !371
  %i.bv = getelementptr inbounds nuw i8, ptr %53, i64 24 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.bv, align 8, !tbaa !382, !noalias !371
  %i.bw = getelementptr inbounds nuw i8, ptr %53, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %53, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false), !noalias !371
  store i64 64, ptr %i.bx, align 8, !tbaa !383, !noalias !371
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #26, !noalias !371
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %54, i64 24 ; 3 uses
  %.sroa.gep18.i = getelementptr inbounds nuw i8, ptr %54, i64 40 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %54, i8 0, i64 16, i1 false), !noalias !371
  %i.by = getelementptr inbounds nuw i8, ptr %54, i64 16
  store ptr %.val.val, ptr %i.by, align 8, !tbaa !377, !noalias !371
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %.sroa.gep.i, align 8, !tbaa !382, !noalias !371
  %i.bz = getelementptr inbounds nuw i8, ptr %54, i64 32 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %54, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false), !noalias !371
  store i64 64, ptr %i.ca, align 8, !tbaa !383, !noalias !371
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #26, !noalias !371
  %i.cb = shl i64 %i.am, 2
  %i.cc = add i64 %i.cb, 4                        ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %53, i64 40 ; 9 uses
  %.not.i.i.i = icmp sgt i64 %i.cc, 0
  br i1 %.not.i.i.i, label %bb.g, label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %bb.f
  store ptr null, ptr %60, align 8, !tbaa !106, !alias.scope !371
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26, !noalias !371
  br label %_ZN5arrow6StatusD2Ev.exit93.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %55, ptr noundef nonnull align 8 dereferenceable(56) %53, i64 noundef %i.cc, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.h, !noalias !371

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.g
  %.pr.i = load ptr, ptr %55, align 8, !tbaa !106, !noalias !371 ; 2 uses
  store ptr %.pr.i, ptr %60, align 8, !tbaa !106, !alias.scope !371
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26, !noalias !371
  %i.ce = icmp eq ptr %.pr.i, null
  br i1 %i.ce, label %_ZN5arrow6StatusD2Ev.exit._ZN5arrow6StatusD2Ev.exit93_crit_edge.i, label %.critedge.i

_ZN5arrow6StatusD2Ev.exit._ZN5arrow6StatusD2Ev.exit93_crit_edge.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pre27.pre.i = load i64, ptr %i.bz, align 8, !tbaa !384, !noalias !371
  br label %_ZN5arrow6StatusD2Ev.exit93.i

bb.h:                                             ; preds = %bb.g
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26, !noalias !371
  br label %bb.as

_ZN5arrow6StatusD2Ev.exit93.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit._ZN5arrow6StatusD2Ev.exit93_crit_edge.i, %_ZN5arrow6StatusD2Ev.exit.thread.i
  %.pre27.i = phi i64 [ %.pre27.pre.i, %_ZN5arrow6StatusD2Ev.exit._ZN5arrow6StatusD2Ev.exit93_crit_edge.i ], [ 0, %_ZN5arrow6StatusD2Ev.exit.thread.i ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !65, !noalias !371 ; 3 uses
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit93.i
  %i.cj = load ptr, ptr %i.y, align 8, !tbaa !374, !noalias !371 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ch
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3, !noalias !371
  %i.cm = load i32, ptr %i.cj, align 4, !tbaa !3, !noalias !371
  %i.cn = sub nsw i32 %i.cl, %i.cm
  %i.co = sitofp i32 %i.cn to double
  %i.cp = uitofp nneg i64 %i.ch to double
  %i.cq = fdiv double %i.co, %i.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #26, !noalias !371
  %i.cr = sitofp i64 %i.am to double
  %i.cs = fmul double %i.cq, %i.cr
  %i.ct = fptosi double %i.cs to i64
  %i.cu = load i64, ptr %.sroa.gep18.i, align 8, !tbaa !385, !noalias !386
  %i.cv = add nsw i64 %i.cu, %i.ct                ; 2 uses
  %.not.i.i94.i = icmp sgt i64 %i.cv, %.pre27.i
  br i1 %.not.i.i94.i, label %bb.j, label %_ZN5arrow6StatusD2Ev.exit98.thread.i

_ZN5arrow6StatusD2Ev.exit98.thread.i:             ; preds = %bb.i
  store ptr null, ptr %60, align 8, !tbaa !106, !alias.scope !371
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26, !noalias !371
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cw = shl nsw i64 %.pre27.i, 1
  %.sroa.speculated.i.i.i95.i = call noundef i64 @llvm.smax.i64(i64 %i.cv, i64 %i.cw)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %56, ptr noundef nonnull align 8 dereferenceable(56) %54, i64 noundef %.sroa.speculated.i.i.i95.i, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit98.i unwind label %bb.k, !noalias !371

_ZN5arrow6StatusD2Ev.exit98.i:                    ; preds = %bb.j
  %.pr26.i = load ptr, ptr %56, align 8, !tbaa !106, !noalias !371 ; 2 uses
  store ptr %.pr26.i, ptr %60, align 8, !tbaa !106, !alias.scope !371
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26, !noalias !371
  %i.cx = icmp eq ptr %.pr26.i, null
  br i1 %i.cx, label %_ZN5arrow6StatusD2Ev.exit98._crit_edge.i, label %.critedge.i

_ZN5arrow6StatusD2Ev.exit98._crit_edge.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit98.i
  %.pre.i = load i64, ptr %i.bz, align 8, !tbaa !384, !noalias !371
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26, !noalias !371
  br label %bb.as

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit98._crit_edge.i, %_ZN5arrow6StatusD2Ev.exit98.thread.i, %_ZN5arrow6StatusD2Ev.exit93.i
  %i.cz = phi i64 [ %.pre.i, %_ZN5arrow6StatusD2Ev.exit98._crit_edge.i ], [ %.pre27.i, %_ZN5arrow6StatusD2Ev.exit93.i ], [ %.pre27.i, %_ZN5arrow6StatusD2Ev.exit98.thread.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #26, !noalias !371
  store i64 %i.cz, ptr %i.aa, align 8, !tbaa !73, !noalias !371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #26, !noalias !371
  store i32 0, ptr %i.ab, align 4, !tbaa !3, !noalias !371
  br i1 %i.bm, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #26, !noalias !371
  store ptr null, ptr %57, align 8, !tbaa !106, !noalias !371
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #26, !noalias !371
  %i.da = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i64 0, ptr %i.db, align 8, !noalias !371
  %i.dc = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29
          to label %bb.n unwind label %bb.s, !noalias !371 ; 8 uses

bb.n:                                             ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %58, i64 24
  store ptr %57, ptr %i.dc, align 16, !tbaa !391, !noalias !371
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.y, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !393, !noalias !371
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %i.aa, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 16, !tbaa !74, !noalias !371
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr %54, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !tbaa !396, !noalias !371
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store ptr %i.z, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i, align 16, !tbaa !398, !noalias !371
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal12_GLOBAL__N_116BinaryFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
_ZN5arrow6StatusD2Ev.exit467.i239:                ; preds = %_ZN5arrow6StatusD2Ev.exit412.i238
  %i.bve = load ptr, ptr %21, align 8, !tbaa !106, !noalias !476 ; 2 uses
  store ptr %i.bve, ptr %65, align 8, !tbaa !106, !alias.scope !476
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26, !noalias !476
  %i.bvf = icmp eq ptr %i.bve, null
  br i1 %i.bvf, label %_ZN5arrow6StatusD2Ev.exit471.i251, label %.critedge391.i240

bb.lj:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit412.i238
  %i.bvg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26, !noalias !476
  br label %bb.ll

_ZN5arrow6StatusD2Ev.exit471.i251:                ; preds = %_ZN5arrow6StatusD2Ev.exit467.i239
  %i.bvh = load ptr, ptr %i.ro, align 8, !tbaa !117, !noalias !476
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bvh, i64 32
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %65, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull %i.bvi, i1 noundef zeroext true)
          to label %.critedge391.i240 unwind label %bb.lk

bb.lk:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit471.i251
  %i.bvj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ll

.critedge391.i240:                                ; preds = %_ZN5arrow6StatusD2Ev.exit471.i251, %_ZN5arrow6StatusD2Ev.exit467.i239, %.critedge351.i287, %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !476
  br label %.critedge.i241

bb.ll:                                            ; preds = %bb.lk, %bb.lj, %bb.li, %_ZN5arrow6StatusD2Ev.exit414.i405
  %.pn340.i232 = phi { ptr, i32 } [ %i.bvj, %bb.lk ], [ %i.bvg, %bb.lj ], [ %.pn334.i403, %_ZN5arrow6StatusD2Ev.exit414.i405 ], [ %.pn326.pn.pn.pn.pn.pn.i231, %bb.li ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26, !noalias !476
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %bb.ib
  %.pn340.pn.i229 = phi { ptr, i32 } [ %.pn340.i232, %bb.ll ], [ %i.ayh, %bb.ib ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !476
  br label %bb.lz

.critedge.i241:                                   ; preds = %.critedge391.i240, %_ZN5arrow6StatusD2Ev.exit400.i423, %_ZN5arrow6StatusD2Ev.exit.i427
  %i.bvk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bvl = load ptr, ptr %i.bvk, align 8, !tbaa !352, !noalias !476 ; 8 uses
  %.not.i.i.i.i.i242 = icmp eq ptr %i.bvl, null
  br i1 %.not.i.i.i.i.i242, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i246, label %bb.ln

bb.ln:                                            ; preds = %.critedge.i241
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvl, i64 8 ; 4 uses
  %i.bvn = load atomic i64, ptr %i.bvm acquire, align 8 ; 2 uses
  %i.bvo = icmp eq i64 %i.bvn, 4294967297
  %i.bvp = trunc i64 %i.bvn to i32                ; 2 uses
  br i1 %i.bvo, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %bb.ln
  store i32 0, ptr %i.bvm, align 8, !tbaa !357
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvl, i64 12
  store i32 0, ptr %i.bvq, align 4, !tbaa !359
  %i.bvr = load ptr, ptr %i.bvl, align 8, !tbaa !96
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvr, i64 16
  %i.bvt = load ptr, ptr %i.bvs, align 8
  call void %i.bvt(ptr noundef nonnull align 8 dereferenceable(16) %i.bvl) #26, !inline_history !492
  %i.bvu = load ptr, ptr %i.bvl, align 8, !tbaa !96
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvu, i64 24
  %i.bvw = load ptr, ptr %i.bvv, align 8
  call void %i.bvw(ptr noundef nonnull align 8 dereferenceable(16) %i.bvl) #26, !inline_history !492
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i246

bb.lp:                                            ; preds = %bb.ln
  %i.bvx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !476
  %.not.i.i.i.i.i.i243 = icmp eq i8 %i.bvx, 0
  br i1 %.not.i.i.i.i.i.i243, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.bvy = add nsw i32 %i.bvp, -1
  store i32 %i.bvy, ptr %i.bvm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i244

bb.lr:                                            ; preds = %bb.lp
  %i.bvz = atomicrmw volatile add ptr %i.bvm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i244

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i244: ; preds = %bb.lr, %bb.lq
  %.0.i.i.i.i.i.i.i245 = phi i32 [ %i.bvp, %bb.lq ], [ %i.bvz, %bb.lr ]
  %i.bwa = icmp eq i32 %.0.i.i.i.i.i.i.i245, 1
  br i1 %i.bwa, label %bb.ls, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i246, !prof !66

bb.ls:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i244
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bvl) #26
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i246

_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i246:  ; preds = %bb.ls, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i244, %bb.lo, %.critedge.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !476
  %i.bwb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bwc = load ptr, ptr %i.bwb, align 8, !tbaa !352, !noalias !476 ; 8 uses
  %.not.i.i.i.i475.i247 = icmp eq ptr %i.bwc, null
  br i1 %.not.i.i.i.i475.i247, label %_ZN5arrow6StatusD2Ev.exit432, label %bb.lt

bb.lt:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i246
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bwc, i64 8 ; 4 uses
  %i.bwe = load atomic i64, ptr %i.bwd acquire, align 8 ; 2 uses
  %i.bwf = icmp eq i64 %i.bwe, 4294967297
  %i.bwg = trunc i64 %i.bwe to i32                ; 2 uses
  br i1 %i.bwf, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %bb.lt
  store i32 0, ptr %i.bwd, align 8, !tbaa !357
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bwc, i64 12
  store i32 0, ptr %i.bwh, align 4, !tbaa !359
  %i.bwi = load ptr, ptr %i.bwc, align 8, !tbaa !96
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwi, i64 16
  %i.bwk = load ptr, ptr %i.bwj, align 8
  call void %i.bwk(ptr noundef nonnull align 8 dereferenceable(16) %i.bwc) #26, !inline_history !493
  %i.bwl = load ptr, ptr %i.bwc, align 8, !tbaa !96
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwl, i64 24
  %i.bwn = load ptr, ptr %i.bwm, align 8
  call void %i.bwn(ptr noundef nonnull align 8 dereferenceable(16) %i.bwc) #26, !inline_history !493
  br label %_ZN5arrow6StatusD2Ev.exit432

bb.lv:                                            ; preds = %bb.lt
  %i.bwo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !476
  %.not.i.i.i.i.i476.i248 = icmp eq i8 %i.bwo, 0
  br i1 %.not.i.i.i.i.i476.i248, label %bb.lx, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.bwp = add nsw i32 %i.bwg, -1
  store i32 %i.bwp, ptr %i.bwd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i477.i249

bb.lx:                                            ; preds = %bb.lv
  %i.bwq = atomicrmw volatile add ptr %i.bwd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i477.i249

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i477.i249: ; preds = %bb.lx, %bb.lw
  %.0.i.i.i.i.i.i478.i250 = phi i32 [ %i.bwg, %bb.lw ], [ %i.bwq, %bb.lx ]
  %i.bwr = icmp eq i32 %.0.i.i.i.i.i.i478.i250, 1
  br i1 %i.bwr, label %bb.ly, label %_ZN5arrow6StatusD2Ev.exit432, !prof !66

bb.ly:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i477.i249
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bwc) #26
  br label %_ZN5arrow6StatusD2Ev.exit432

bb.lz:                                            ; preds = %bb.lm, %bb.hs, %bb.hp
  %.pn340.pn.pn.pn.i230 = phi { ptr, i32 } [ %.pn340.pn.i229, %bb.lm ], [ %i.axf, %bb.hs ], [ %i.awl, %bb.hp ]
  call void @_ZN5arrow18TypedBufferBuilderIhvED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !476
  call void @_ZN5arrow18TypedBufferBuilderIlvED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !476
  br label %common.resume

_ZN5arrow6StatusD2Ev.exit432:                     ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i246, %bb.lu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i477.i249, %bb.ly
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !476
  %i.bws = load ptr, ptr %65, align 8, !tbaa !106 ; 2 uses
  store ptr %i.bws, ptr %0, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  %i.bwt = icmp eq ptr %i.bws, null
  br i1 %i.bwt, label %_ZN5arrow6StatusD2Ev.exit95, label %.critedge

_ZN5arrow6StatusD2Ev.exit95:                      ; preds = %_ZN5arrow6StatusD2Ev.exit432, %_ZN5arrow6StatusD2Ev.exit219, %_ZN5arrow6StatusD2Ev.exit184, %_ZN5arrow6StatusD2Ev.exit, %bb.hm, %bb.at
  store ptr null, ptr %0, align 8, !tbaa !106, !alias.scope !494
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit432, %_ZN5arrow6StatusD2Ev.exit219, %_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit184, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit95
  ret void
}

declare void @_ZN5arrow7compute5match15LargeBinaryLikeEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.69") align 8) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4nullEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_114NullFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !88
  %i.h = tail call noundef i64 @_ZN5arrow7compute8internal19GetFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i32 noundef %i.g)
  %i.i = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !497 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  store i32 1, ptr %i.j, align 8, !tbaa !357, !noalias !502
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  store i32 1, ptr %i.k, align 4, !tbaa !359, !noalias !502
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.i, align 8, !tbaa !96, !noalias !502
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  invoke void @_ZN5arrow9NullArrayC1El(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.h)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !502

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 48) #30, !noalias !502
  resume { ptr, i32 } %i.m

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = tail call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIRKS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS5_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.n) #26 ; 0 uses
  %i.p = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.j, align 8, !tbaa !357
  store i32 0, ptr %i.k, align 4, !tbaa !359
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !96
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #26, !inline_history !503
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #26, !inline_history !503
  br label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add nsw i32 %i.r, -1
  store i32 %i.z, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aa = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.e ], [ %i.aa, %bb.f ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #26
  br label %_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9NullArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  store ptr null, ptr %0, align 8, !tbaa !106, !alias.scope !504
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_120DictionaryFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias nofree writable sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.214, align 1            ; 3 uses
  %5 = alloca %class.anon.214, align 1            ; 3 uses
  %6 = alloca %class.anon.214, align 1            ; 3 uses
  %7 = alloca %class.anon.214, align 1            ; 3 uses
  %8 = alloca %class.anon.214, align 1            ; 3 uses
  %9 = alloca %class.anon.231, align 8            ; 4 uses
  %10 = alloca %"struct.arrow::Datum", align 16   ; 6 uses
  %11 = alloca %"class.arrow::DictionaryArray", align 8 ; 9 uses
  %12 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %13 = alloca %"struct.arrow::Datum", align 8    ; 8 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %15 = alloca %"class.arrow::Result.208", align 8 ; 15 uses
  %16 = alloca %"struct.arrow::Datum", align 8    ; 7 uses
  %17 = alloca %"struct.arrow::Datum", align 16   ; 8 uses
  %18 = alloca %"class.std::shared_ptr", align 16 ; 5 uses
  %19 = alloca %"class.arrow::DictionaryArray", align 8 ; 6 uses
  %20 = alloca %"class.std::shared_ptr.161", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  call void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %i.b)
  invoke void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.b unwind label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !352  ; 8 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !357
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !359
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !507
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !507
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 0, ptr %i.t, align 8, !tbaa !508
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.u = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %11)
          to label %bb.i unwind label %bb.ab

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN5arrow5DatumC1ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.j unwind label %bb.ab

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  invoke void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %18, ptr noundef nonnull align 8 dereferenceable(128) %i.w)
          to label %bb.k unwind label %bb.ac

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.y = load <2 x ptr>, ptr %18, align 16, !tbaa !351
  store ptr null, ptr %i.x, align 8, !tbaa !352
  store <2 x ptr> %i.y, ptr %17, align 16, !tbaa !351
  store ptr null, ptr %18, align 16, !tbaa !101
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i8 2, ptr %i.z, align 16, !tbaa !508
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %1, align 8, !tbaa !365
  invoke void @_ZN5arrow7compute6FilterERKNS_5DatumES3_RKNS0_13FilterOptionsEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.208") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(20) %i.ac, ptr noundef %i.ad)
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.ae = load ptr, ptr %15, align 8, !tbaa !106, !noalias !510
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.m, label %_ZNO5arrow6ResultINS_5DatumEE6statusEv.exit.i

_ZNO5arrow6ResultINS_5DatumEE6statusEv.exit.i:    ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  invoke void @_ZN5arrow8internal19UninitializedResultEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %_ZNO5arrow6ResultINS_5DatumEE6statusEv.exit.i
  %i.ag = load ptr, ptr %15, align 8, !tbaa !106, !noalias !516
  %i.ah = load ptr, ptr %14, align 8, !tbaa !106, !alias.scope !516 ; 2 uses
  store ptr %i.ah, ptr %15, align 8, !tbaa !106, !noalias !516
  br label %_ZN5arrow6StatusD2Ev.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !510
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !508, !noalias !520 ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv.exit.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.m
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal12_GLOBAL__N_119ExtensionFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #26
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit

_ZN5arrow6ResultINS_5DatumEED2Ev.exit:            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #27
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !352 ; 8 uses
  %.not.i.i26 = icmp eq ptr %i.be, null
  br i1 %.not.i.i26, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30, label %bb.s

bb.s:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bf, align 8, !tbaa !357
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !359
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #26, !inline_history !507
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !96
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #26, !inline_history !507
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30

bb.u:                                             ; preds = %bb.s
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i27 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i27, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

bb.w:                                             ; preds = %bb.u
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i29 = phi i32 [ %i.bi, %bb.v ], [ %i.bs, %bb.w ]
  %i.bt = icmp eq i32 %.0.i.i.i.i29, 1
  br i1 %i.bt, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30, !prof !66

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #26
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30: ; preds = %_ZN5arrow5DatumD2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %_ZN5arrow5DatumD2Ev.exit31 unwind label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #27
  unreachable

_ZN5arrow5DatumD2Ev.exit31:                       ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.bw = load ptr, ptr %0, align 8, !tbaa !106
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN5arrow6StatusD2Ev.exit35, label %.critedge

bb.z:                                             ; preds = %bb.a
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.bs

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ab:                                            ; preds = %bb.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.j
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNO5arrow6ResultINS_5DatumEE6statusEv.exit.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #26
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.cc, %bb.ad ], [ %i.cb, %bb.ac ]
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #26
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #26
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ae ], [ %i.ca, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.aa
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.af ], [ %i.bz, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.br

_ZN5arrow6StatusD2Ev.exit35:                      ; preds = %_ZN5arrow5DatumD2Ev.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZNK5arrow5Datum10make_arrayEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.161") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ah unwind label %bb.bb

bb.ah:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit35
  invoke void @_ZN5arrow14ExtensionArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.ai unwind label %bb.bc

bb.ai:                                            ; preds = %bb.ah
  %i.cf = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !352 ; 8 uses
  %.not.i.i36 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i36, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 4 uses
  %i.ci = load atomic i64, ptr %i.ch acquire, align 8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 4294967297
  %i.ck = trunc i64 %i.ci to i32                  ; 2 uses
  br i1 %i.cj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.ch, align 8, !tbaa !357
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 0, ptr %i.cl, align 4, !tbaa !359
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !96
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #26, !inline_history !524
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !96
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #26, !inline_history !524
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i37 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i37, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ct = add nsw i32 %i.ck, -1
  store i32 %i.ct, ptr %i.ch, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38

bb.an:                                            ; preds = %bb.al
  %i.cu = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i39 = phi i32 [ %i.ck, %bb.am ], [ %i.cu, %bb.an ]
  %i.cv = icmp eq i32 %.0.i.i.i.i39, 1
  br i1 %i.cv, label %bb.ao, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ai, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i38, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.cw = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cx = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIRKS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS5_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #26 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow14ExtensionArrayE, i64 16), ptr %19, align 8, !tbaa !96
  %i.cy = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i40 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i40, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  %i.db = load atomic i64, ptr %i.da acquire, align 8 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 4294967297
  %i.dd = trunc i64 %i.db to i32                  ; 2 uses
  br i1 %i.dc, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.da, align 8, !tbaa !357
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i32 0, ptr %i.de, align 4, !tbaa !359
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !96
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #26, !inline_history !536
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !96
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #26, !inline_history !536
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.dl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dm = add nsw i32 %i.dd, -1
  store i32 %i.dm, ptr %i.da, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.dn = atomicrmw volatile add ptr %i.da, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i = phi i32 [ %i.dd, %bb.as ], [ %i.dn, %bb.at ]
  %i.do = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.do, label %bb.au, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !66

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #26, !inline_history !537
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aq, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %19, align 8, !tbaa !96
  %i.dp = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow14ExtensionArrayD2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.dr, align 8, !tbaa !357
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !359
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !96
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #26, !inline_history !538
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !96
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #26, !inline_history !538
  br label %_ZN5arrow14ExtensionArrayD2Ev.exit

bb.ax:                                            ; preds = %bb.av
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i = phi i32 [ %i.du, %bb.ay ], [ %i.ee, %bb.az ]
  %i.ef = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ef, label %bb.ba, label %_ZN5arrow14ExtensionArrayD2Ev.exit, !prof !66

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #26, !inline_history !539
  br label %_ZN5arrow14ExtensionArrayD2Ev.exit

_ZN5arrow14ExtensionArrayD2Ev.exit:               ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %.critedge

bb.bb:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit35
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ah
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #26
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn21 = phi { ptr, i32 } [ %i.eh, %bb.bc ], [ %i.eg, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.br

.critedge:                                        ; preds = %_ZN5arrow5DatumD2Ev.exit31, %_ZN5arrow14ExtensionArrayD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %_ZN5arrow5DatumD2Ev.exit41 unwind label %bb.be

bb.be:                                            ; preds = %.critedge
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #27
  unreachable

_ZN5arrow5DatumD2Ev.exit41:                       ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow14ExtensionArrayE, i64 16), ptr %11, align 8, !tbaa !96
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i42 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i42, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i46, label %bb.bf

bb.bf:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit41
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.em, align 8, !tbaa !357
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !359
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !96
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #26, !inline_history !536
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !96
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #26, !inline_history !536
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i46

bb.bh:                                            ; preds = %bb.bf
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i43 = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i43, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44

bb.bj:                                            ; preds = %bb.bh
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i45 = phi i32 [ %i.ep, %bb.bi ], [ %i.ez, %bb.bj ]
  %i.fa = icmp eq i32 %.0.i.i.i.i.i45, 1
  br i1 %i.fa, label %bb.bk, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i46, !prof !66

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #26, !inline_history !537
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i46

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i46: ; preds = %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44, %bb.bg, %_ZN5arrow5DatumD2Ev.exit41
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %11, align 8, !tbaa !96
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i1.i47 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i1.i47, label %_ZN5arrow14ExtensionArrayD2Ev.exit51, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i46
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 4 uses
  %i.fe = load atomic i64, ptr %i.fd acquire, align 8 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 4294967297
  %i.fg = trunc i64 %i.fe to i32                  ; 2 uses
  br i1 %i.ff, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.fd, align 8, !tbaa !357
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 0, ptr %i.fh, align 4, !tbaa !359
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !96
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #26, !inline_history !538
  %i.fl = load ptr, ptr %i.fc, align 8, !tbaa !96
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #26, !inline_history !538
  br label %_ZN5arrow14ExtensionArrayD2Ev.exit51

bb.bn:                                            ; preds = %bb.bl
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i48 = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i.i.i48, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fp = add nsw i32 %i.fg, -1
  store i32 %i.fp, ptr %i.fd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i49

bb.bp:                                            ; preds = %bb.bn
  %i.fq = atomicrmw volatile add ptr %i.fd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i49: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i.i50 = phi i32 [ %i.fg, %bb.bo ], [ %i.fq, %bb.bp ]
  %i.fr = icmp eq i32 %.0.i.i.i.i.i.i50, 1
  br i1 %i.fr, label %bb.bq, label %_ZN5arrow14ExtensionArrayD2Ev.exit51, !prof !66

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #26, !inline_history !539
  br label %_ZN5arrow14ExtensionArrayD2Ev.exit51

_ZN5arrow14ExtensionArrayD2Ev.exit51:             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i46, %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i49, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  ret void

bb.br:                                            ; preds = %bb.bd, %bb.ag
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %bb.bd ], [ %.pn.pn.pn.pn, %bb.ag ]
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZN5arrow14ExtensionArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %11) #26
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.z
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %bb.br ], [ %i.by, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  resume { ptr, i32 } %.pn21.pn.pn
}

declare void @_ZN5arrow7compute8internal14ListFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #3

declare void @_ZN5arrow7compute8internal19LargeListFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #3

declare void @_ZN5arrow7compute8internal18ListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #3

declare void @_ZN5arrow7compute8internal23LargeListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #3

declare void @_ZN5arrow7compute8internal13FSLFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #3

declare void @_ZN5arrow7compute8internal20DenseUnionFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #3

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_121SparseUnionFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #1 {
bb.a:
  tail call fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_118FilterWithTakeExecERKPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEES5_S8_SA_(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull @_ZN5arrow7compute8internal19SparseUnionTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_116StructFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #1 {
bb.a:
  tail call fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_118FilterWithTakeExecERKPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEES5_S8_SA_(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull @_ZN5arrow7compute8internal14StructTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3)
  ret void
}

declare void @_ZN5arrow7compute8internal13MapFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !357
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !359
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !362
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !362
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !352  ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i, label %_ZN5arrow7compute9InputTypeD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !357
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !359
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !363
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !363
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i2.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow7compute9InputTypeD2Ev.exit, !prof !66

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit

_ZN5arrow7compute9InputTypeD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.aj, null
end_hunk_4
begin_hunk_5_@_ZN5arrow13BufferBuilder6ResizeElb:bb.a
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #26, !inline_history !567
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !66

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ad = load ptr, ptr %6, align 8, !tbaa !565   ; 3 uses
  %.not.i22 = icmp eq ptr %i.ad, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i: ; preds = %bb.l
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !96
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(80) %i.ad) #26, !inline_history !568
  br label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l, %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.c, %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit
  %i.ah = load ptr, ptr %5, align 8, !tbaa !106   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !132

bb.m:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !565 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i23, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.m
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !96
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(80) %i.ak) #26, !inline_history !569
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !106 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !456

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ao = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.ah, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !402, !range !130, !noundef !131
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  br label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.m, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %i.g, label %bb.q, label %bb.r

bb.o:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %6, align 8, !tbaa !565   ; 3 uses
  %.not.i24 = icmp eq ptr %i.at, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25: ; preds = %bb.o
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !96
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(80) %i.at) #26, !inline_history !568
  br label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26

_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26: ; preds = %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26, %bb.d
  %.pn18 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.as, %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn18

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef %2, i1 noundef zeroext %3)
  %i.ba = load ptr, ptr %7, align 8, !tbaa !106   ; 2 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit
  %i.bc = load ptr, ptr %1, align 8, !tbaa !558   ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !570
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !384
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !122, !range !130, !noundef !131
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = load i8, ptr %i.bj, align 8, !range !130
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = select i1 %i.bi, i1 %i.bl, i1 false, !prof !132
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = select i1 %i.bm, ptr %i.bo, ptr null, !prof !132
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !382
  store ptr null, ptr %0, align 8, !tbaa !106, !alias.scope !571
  br label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, %bb.q
  ret void
}

declare void @_ZN5arrow23AllocateResizableBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.102") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !565  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #26, !inline_history !574
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !106 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !456

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !402, !range !130, !noundef !131
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !565    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !558
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !352
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !565
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !359
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !575
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !352 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !357
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !359
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !96
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26, !inline_history !577
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26, !inline_history !577
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !66

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !352
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !357
  store i32 0, ptr %i.f, align 4, !tbaa !359
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !364
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !364
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #26
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !578  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #26, !inline_history !580
  br label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !581  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow15ResizableBufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !67
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(46) @_ZTSSt14default_deleteIN5arrow15ResizableBufferEE) #26
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbllbEZN5arrow7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS1_10BinaryTypeEEENS1_6StatusEPNS2_13KernelContextERKNS1_9ArraySpanESC_lNS2_13FilterOptions21NullSelectionBehaviorEPNS1_9ArrayDataEEUlllbE_E9_M_invokeERKSt9_Any_dataOlSM_Ob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree nonnull readonly align 1 captures(none) %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !351   ; 9 uses
  %.val4 = load i64, ptr %1, align 8, !tbaa !73   ; 3 uses
  %.val5 = load i64, ptr %2, align 8, !tbaa !73   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !583, !noalias !585, !nonnull !131, !align !155
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !374, !noalias !585
  %i.d = getelementptr [4 x i8], ptr %i.c, i64 %.val4 ; 2 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %.val5
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !585
  %i.g = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !585 ; 2 uses
  %i.h = sub nsw i32 %i.f, %i.g
  %i.i = sext i32 %i.h to i64                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !588, !noalias !585, !nonnull !131, !align !155
  %i.l = load i64, ptr %i.k, align 8, !tbaa !73, !noalias !585
  %i.m = icmp slt i64 %i.l, %i.i
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, label %._crit_edge.i.i.i.i, !prof !66

._crit_edge.i.i.i.i:                              ; preds = %bb.a
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
end_hunk_5
begin_hunk_6_@_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb:_ZN5arrow6StatusD2Ev.exit
bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bx = load ptr, ptr %7, align 8, !tbaa !614   ; 3 uses
  %.not.i30 = icmp eq ptr %i.bx, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.x
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bx) #26, !inline_history !617
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.x, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.o, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.cb = load ptr, ptr %6, align 8, !tbaa !106   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.y, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !132

bb.y:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !614 ; 3 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i31, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.y
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !96
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ce) #26, !inline_history !618
  %.pr.pre.i = load ptr, ptr %6, align 8, !tbaa !106 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !456

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ci = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.cb, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !402, !range !130, !noundef !131
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.y, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %i.bb, label %bb.ac, label %bb.aj

bb.aa:                                            ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %7, align 8, !tbaa !614   ; 3 uses
  %.not.i32 = icmp eq ptr %i.cn, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit34, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i33

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i33: ; preds = %bb.aa
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !96
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cn) #26, !inline_history !617
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit34

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit34: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i33, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit34, %bb.p
  %.pn19 = phi { ptr, i32 } [ %i.bc, %bb.p ], [ %i.cm, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit34 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn19

bb.ac:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, %_ZNSt10shared_ptrIN5arrow6BufferEEaSINS0_15ResizableBufferEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit
  store ptr null, ptr %1, align 8, !tbaa !565
  %i.cr = load ptr, ptr %i.w, align 8, !tbaa !352 ; 8 uses
  store ptr null, ptr %i.w, align 8, !tbaa !352
  %.not.i.i.i.i.i35 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i35, label %_ZN5arrow13BufferBuilder5ResetEv.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.cs, align 8, !tbaa !357
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !359
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !96
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #26, !inline_history !619
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !96
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #26, !inline_history !619
  br label %_ZN5arrow13BufferBuilder5ResetEv.exit

bb.af:                                            ; preds = %bb.ad
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cv, %bb.ag ], [ %i.df, %bb.ah ]
  %i.dg = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dg, label %bb.ai, label %_ZN5arrow13BufferBuilder5ResetEv.exit, !prof !66

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #26
  br label %_ZN5arrow13BufferBuilder5ResetEv.exit

_ZN5arrow13BufferBuilder5ResetEv.exit:            ; preds = %bb.ac, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i8 0, i64 16, i1 false)
  store ptr null, ptr %0, align 8, !tbaa !106, !alias.scope !620
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow13BufferBuilder5ResetEv.exit
  ret void
}

declare void @_ZN5arrow14AllocateBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.123") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !614  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #26, !inline_history !623
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !106 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !456

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !402, !range !130, !noundef !131
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !614    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !352
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !614
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !359
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !624
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !352 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !357
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !359
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !96
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26, !inline_history !577
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26, !inline_history !577
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !66

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !352
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !357
  store i32 0, ptr %i.f, align 4, !tbaa !359
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !364
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !364
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #26
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !626  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #26, !inline_history !628
  br label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !581  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !67
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(36) @_ZTSSt14default_deleteIN5arrow6BufferEE) #26
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow18TypedBufferBuilderIlvED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow13BufferBuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !357
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !359
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !557
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !557
end_hunk_6
begin_hunk_7_@_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEE7emplaceILm1EJRKS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS1_S4_EE4typeEDpT0_EERSC_E4typeEDpOSD_:bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %0) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !698  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i1, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i.i2 = phi ptr [ %i.e, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i.i2), !inline_history !699
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i2, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit, label %.lr.ph, !llvm.loop !700

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit, %bb.a
  %i.f = phi ptr [ %.pre, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !701
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #30, !inline_history !702
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow9ArraySpanEEEvT_S5_.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow9ArraySpanD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !698  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i), !inline_history !703
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !700

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i, %bb.a
  %i.f = phi ptr [ %.pre.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !701
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #30, !inline_history !704
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !105    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !698  ; 2 uses
  %.not.i1 = icmp eq ptr %i.a, %i.c
  br i1 %.not.i1, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i2 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2), !inline_history !705
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i2, i64 128 ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit, label %.lr.ph, !llvm.loop !700

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !105
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !701
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #30
  br label %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZNK5arrow9ArraySpan11ToArrayDataEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZN5arrow7compute6FilterERKNS_5DatumES3_RKNS0_13FilterOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.208") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare void @_ZN5arrow5DatumC1ERKSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.214, align 1            ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #27
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit:      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %.pr = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread, !prof !456

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit
  %i.f = phi ptr [ %.pr, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !402, !range !130, !noundef !131
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.214, align 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(17) %0)
          to label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #27
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

declare void @_ZNK5arrow5Datum10make_arrayEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.161") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray10dictionaryEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEES9_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow15DictionaryArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow15DictionaryArrayE, i64 16), ptr %0, align 8, !tbaa !96
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !357
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !359
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !524
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !524
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !352  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !357
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !359
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !524
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !524
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, !prof !66

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5: ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %0, align 8, !tbaa !96
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i6 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i6, label %_ZN5arrow5ArrayD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !357
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !359
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !96
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #26, !inline_history !706
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !96
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #26, !inline_history !706
  br label %_ZN5arrow5ArrayD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.s, label %_ZN5arrow5ArrayD2Ev.exit, !prof !66

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #26, !inline_history !707
  br label %_ZN5arrow5ArrayD2Ev.exit

_ZN5arrow5ArrayD2Ev.exit:                         ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !508
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !352  ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !357
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !359
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !708
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !708
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.i:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !352  ; 8 uses
  %.not.i.i.i.i.i.i.i.i14 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i14, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.v, align 8, !tbaa !357
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !359
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #26, !inline_history !709
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #26, !inline_history !709
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i.i.i.i15 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i15, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16

bb.n:                                             ; preds = %bb.l
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i17 = phi i32 [ %i.y, %bb.m ], [ %i.ai, %bb.n ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i17, 1
  br i1 %i.aj, label %bb.o, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, !prof !66

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i16
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #26
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.p:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i.i.i.i.i.i18 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i18, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.am, align 8, !tbaa !357
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !359
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !96
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #26, !inline_history !710
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !96
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #26, !inline_history !710
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S9_SB_SD_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SP_.exit

bb.s:                                             ; preds = %bb.q
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i.i.i.i19 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i19, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
end_hunk_7
begin_hunk_8_@_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !357
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !359
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !364
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !364
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !357
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !359
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !364
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !364
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !357
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !359
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !364
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !364
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow15DictionaryArrayD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow15DictionaryArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5ArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %0, align 8, !tbaa !96
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !357
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !359
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !507
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !507
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5ArrayD0Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %0, align 8, !tbaa !96
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow5ArrayD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !357
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !359
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !706
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !706
  br label %_ZN5arrow5ArrayD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow5ArrayD2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !707
  br label %_ZN5arrow5ArrayD2Ev.exit

_ZN5arrow5ArrayD2Ev.exit:                         ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

declare void @_ZN5arrow14ExtensionArrayC1ERKSt10shared_ptrINS_9ArrayDataEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZN5arrow14ExtensionArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow14ExtensionArrayD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow14ExtensionArrayE, i64 16), ptr %0, align 8, !tbaa !96
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !357
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !359
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !524
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !524
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %0, align 8, !tbaa !96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !352  ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZN5arrow5ArrayD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !357
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !359
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !706
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !706
  br label %_ZN5arrow5ArrayD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow5ArrayD2Ev.exit, !prof !66

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !707
  br label %_ZN5arrow5ArrayD2Ev.exit

_ZN5arrow5ArrayD2Ev.exit:                         ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow14ExtensionArrayD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow14ExtensionArrayE, i64 16), ptr %0, align 8, !tbaa !96
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !357
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !359
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !536
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !536
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !537
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow5ArrayE, i64 16), ptr %0, align 8, !tbaa !96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !352  ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow14ExtensionArrayD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !357
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !359
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !538
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !538
  br label %_ZN5arrow14ExtensionArrayD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow14ExtensionArrayD2Ev.exit, !prof !66

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !539
  br label %_ZN5arrow14ExtensionArrayD2Ev.exit

_ZN5arrow14ExtensionArrayD2Ev.exit:               ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_118FilterWithTakeExecERKPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEES5_S8_SA_(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree readonly captures(none) %.0.val, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %6 = alloca %"class.arrow::Result.234", align 8 ; 12 uses
  %7 = alloca %"class.arrow::compute::KernelContext", align 8 ; 6 uses
  %8 = alloca %"struct.arrow::compute::internal::OptionsWrapper", align 8 ; 8 uses
  %9 = alloca %"class.arrow::compute::TakeOptions", align 8 ; 3 uses
  %10 = alloca %"struct.arrow::compute::ExecSpan", align 8 ; 9 uses
  %11 = alloca [2 x %"struct.arrow::compute::ExecValue"], align 8 ; 22 uses
  %12 = alloca %"struct.arrow::ArraySpan", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !88
  %i.h = load ptr, ptr %1, align 8, !tbaa !365
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !366
  invoke void @_ZN5arrow7compute8internal14GetTakeIndicesERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.234") align 8 %6, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i32 noundef %i.g, ptr noundef %i.i)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  %i.j = load ptr, ptr %6, align 8, !tbaa !106, !noalias !730
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE6statusEv.exit.i

_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE6statusEv.exit.i: ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  invoke void @_ZN5arrow8internal19UninitializedResultEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.l

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !351, !noalias !736
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !noalias !730
  store <2 x ptr> %i.m, ptr %4, align 16, !tbaa !351, !noalias !730
  store ptr null, ptr %0, align 8, !tbaa !106
  store ptr null, ptr %5, align 8, !tbaa !106
  br label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE6statusEv.exit.i
  %i.n = load ptr, ptr %6, align 8, !tbaa !106, !noalias !739
  %i.o = load ptr, ptr %5, align 8, !tbaa !106, !alias.scope !739 ; 3 uses
  store ptr %i.o, ptr %6, align 8, !tbaa !106, !noalias !739
  store ptr %i.n, ptr %0, align 8, !tbaa !106
  store ptr null, ptr %5, align 8, !tbaa !106
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !740

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !352  ; 8 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i33, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.s, align 8, !tbaa !357
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !359
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26, !inline_history !741
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !96
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26, !inline_history !741
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i34 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i35

bb.h:                                             ; preds = %bb.f
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i35

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i35: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i36 = phi i32 [ %i.v, %bb.g ], [ %i.af, %bb.h ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i36, 1
  br i1 %i.ag, label %bb.i, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !66

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i35
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i35, %bb.e, %bb.c
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !106  ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !456

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusD2Ev.exit
  %i.ah = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.o, %_ZN5arrow6StatusD2Ev.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !402, !range !130, !noundef !131
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.al = load ptr, ptr %0, align 8, !tbaa !106
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN5arrow6StatusD2Ev.exit40, label %.critedge

bb.k:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE6statusEv.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.l ], [ %i.an, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ak

_ZN5arrow6StatusD2Ev.exit40:                      ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !742
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZN5arrow7compute11TakeOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(17) %9, i1 noundef zeroext false)
          to label %_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit unwind label %bb.z

_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit40
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute8internal14OptionsWrapperINS0_11TakeOptionsEEE, i64 16), ptr %8, align 8, !tbaa !96
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !746
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !746
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11TakeOptionsE, i64 16), ptr %i.ap, align 8, !tbaa !96
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.av = load i8, ptr %i.au, align 8, !tbaa !747, !range !130, !noundef !131
  store i8 %i.av, ptr %i.at, align 8, !tbaa !747
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %8, ptr %i.aw, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !80  ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %11, ptr noundef nonnull align 8 dereferenceable(136) %i.ax, i64 104, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 104 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  invoke void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.n unwind label %bb.aa

bb.n:                                             ; preds = %_ZN5arrow7compute11TakeOptions13NoBoundsCheckEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !749
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !749
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 2 uses
  %i.be = load ptr, ptr %4, align 16, !tbaa !101
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %12, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.bf, align 8, !tbaa !59
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bg, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %12, ptr noundef nonnull align 8 dereferenceable(120) %i.be)
          to label %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit unwind label %.body

_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit:      ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bd, ptr noundef nonnull align 8 dereferenceable(128) %12, i64 104, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 240
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 104 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.bk = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !114
  store <2 x ptr> %i.bk, ptr %i.bh, align 8, !tbaa !114
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 256
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !701
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !701
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 264
  store ptr null, ptr %i.bo, align 8, !tbaa !749
  %i.bp = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #29
          to label %.noexc58 unwind label %.body59.thread ; 12 uses

.noexc58:                                         ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bp, ptr noundef nonnull align 8 dereferenceable(136) %11, i64 104, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  invoke void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %.lr.ph.i.i.i.i.i.1 unwind label %bb.o

.lr.ph.i.i.i.i.i.1:                               ; preds = %.noexc58
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !749
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !749
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 136 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bu, ptr noundef nonnull align 8 dereferenceable(136) %i.bd, i64 104, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 240
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 240
  invoke void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EED2Ev.exit unwind label %bb.o

_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i.i.i.i.1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 264
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 264
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !749
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !749
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 272
  %i.cb = load i64, ptr %2, align 8, !tbaa !751
  store i64 %i.cb, ptr %10, align 8, !tbaa !751
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store ptr %i.bp, ptr %i.cc, align 8, !tbaa !80
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !756
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.bq, ptr %i.ce, align 8, !tbaa !757
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 240 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !105 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 248
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !698 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.cg, %i.ci
  br i1 %.not.i1.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i48

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.1, %.noexc58
  %.016.i.i.i.i.i.lcssa = phi ptr [ %i.bp, %.noexc58 ], [ %i.bu, %.lr.ph.i.i.i.i.i.1 ]
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  %i.cl = call ptr @__cxa_begin_catch(ptr %i.ck) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5arrow7compute9ExecValueEEvT_S4_(ptr noundef nonnull %i.bp, ptr noundef nonnull %.016.i.i.i.i.i.lcssa)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_rethrow() #28
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body59 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #27
  unreachable

bb.s:                                             ; preds = %bb.p
  unreachable

.body59.thread:                                   ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.body59:                                          ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 272) #30
  br label %.body43

.lr.ph.i.i.i48:                                   ; preds = %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EED2Ev.exit, %.lr.ph.i.i.i48
  %.0.i2.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i48 ], [ %i.cg, %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EED2Ev.exit ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i), !inline_history !758
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.ci
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i48, !llvm.loop !700

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i48
  %.pre.i.i.i = load ptr, ptr %i.cf, align 8, !tbaa !105
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EED2Ev.exit
  %i.cr = phi ptr [ %.pre.i.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.cg, %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i.i49 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i49, label %_ZN5arrow7compute9ExecValueD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 256
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !701
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #30, !inline_history !759
  br label %_ZN5arrow7compute9ExecValueD2Ev.exit

_ZN5arrow7compute9ExecValueD2Ev.exit:             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.t
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 104 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !105 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !698 ; 2 uses
  %.not.i1.i.i.i.1 = icmp eq ptr %i.cy, %i.da
  br i1 %.not.i1.i.i.i.1, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i.1, label %.lr.ph.i.i.i48.1

.lr.ph.i.i.i48.1:                                 ; preds = %_ZN5arrow7compute9ExecValueD2Ev.exit, %.lr.ph.i.i.i48.1
  %.0.i2.i.i.i.1 = phi ptr [ %i.db, %.lr.ph.i.i.i48.1 ], [ %i.cy, %_ZN5arrow7compute9ExecValueD2Ev.exit ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i.1), !inline_history !758
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i.1, i64 128 ; 2 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.db, %i.da
  br i1 %.not.i.i.i.i.1, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.1, label %.lr.ph.i.i.i48.1, !llvm.loop !700

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.1: ; preds = %.lr.ph.i.i.i48.1
  %.pre.i.i.i.1 = load ptr, ptr %i.cx, align 8, !tbaa !105
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i.1

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i.1: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.1, %_ZN5arrow7compute9ExecValueD2Ev.exit
  %i.dc = phi ptr [ %.pre.i.i.i.1, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.1 ], [ %i.cy, %_ZN5arrow7compute9ExecValueD2Ev.exit ] ; 3 uses
  %.not.i.i.i.i.i49.1 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i49.1, label %_ZN5arrow7compute9ExecValueD2Ev.exit.1, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i.1
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !701
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #30, !inline_history !759
  br label %_ZN5arrow7compute9ExecValueD2Ev.exit.1

_ZN5arrow7compute9ExecValueD2Ev.exit.1:           ; preds = %bb.u, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i.1
  %i.di = load ptr, ptr %i.bi, align 8, !tbaa !105 ; 3 uses
  %i.dj = load ptr, ptr %i.bj, align 8, !tbaa !698 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.di, %i.dj
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5arrow7compute9ExecValueD2Ev.exit.1, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %i.di, %_ZN5arrow7compute9ExecValueD2Ev.exit.1 ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !758
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.dk, %i.dj
  br i1 %.not.i.i.i50, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !700

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.bi, align 8, !tbaa !105
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %_ZN5arrow7compute9ExecValueD2Ev.exit.1
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute8internal19SparseUnionTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE
declare void @_ZN5arrow7compute8internal19SparseUnionTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #3

declare void @_ZN5arrow7compute8internal14GetTakeIndicesERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.234") align 8, ptr noundef nonnull align 8 dereferenceable(128), i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !352  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !357
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !359
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !761
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !761
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread, !prof !456

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !402, !range !130, !noundef !131
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util18EqualityComparableINS_7compute15FunctionOptionsEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute9ExecValueD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !698  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !758
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !700

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.a
  %i.f = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !701
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #30, !inline_history !759
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8ExecSpanD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !105  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !698  ; 2 uses
  %.not.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i1.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.0.i2.i.i.i.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i.i.i.i.i.i), !inline_history !758
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !700

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !105
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.j = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !701
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #30, !inline_history !759
  br label %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !760

_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !80
  br label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !757
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #30
  br label %_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow7compute9ExecValueESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal14OptionsWrapperINS0_11TakeOptionsEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute8internal14OptionsWrapperINS0_11TakeOptionsEEE, i64 16), ptr %0, align 8, !tbaa !96
  ret void
}

declare void @_ZN5arrow7compute11TakeOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(17), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal14OptionsWrapperINS0_11TakeOptionsEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute11TakeOptionsD0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !698  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !105    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775680
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN5arrow9ArraySpanEE8allocateEmPKv.exit.i.i.i, !prof !66

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN5arrow9ArraySpanEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5arrow9ArraySpanEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5arrow9ArraySpanEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !105
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !698
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !701
  %i.m = load ptr, ptr %1, align 8, !tbaa !114    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !114  ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5arrow9ArraySpanESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZSt10_ConstructIN5arrow9ArraySpanEJRKS1_EEvPT_DpOT0_.exit.i
  %.013.i = phi ptr [ %i.s, %_ZSt10_ConstructIN5arrow9ArraySpanEJRKS1_EEvPT_DpOT0_.exit.i ], [ %i.i, %bb.c ] ; 5 uses
  %.sroa.08.012.i = phi ptr [ %i.r, %_ZSt10_ConstructIN5arrow9ArraySpanEJRKS1_EEvPT_DpOT0_.exit.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.013.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.08.012.i, i64 104, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 104
  invoke void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_ZSt10_ConstructIN5arrow9ArraySpanEJRKS1_EEvPT_DpOT0_.exit.i unwind label %bb.d, !inline_history !762

_ZSt10_ConstructIN5arrow9ArraySpanEJRKS1_EEvPT_DpOT0_.exit.i: ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 128 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i, i64 128 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.n
  br i1 %i.t, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5arrow9ArraySpanESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i, !llvm.loop !763

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #26, !inline_history !764 ; 0 uses
  %.not4.i.i.i = icmp eq ptr %i.i, %.013.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.05.i.i.i), !inline_history !765
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.x, %.013.i
  br i1 %.not.i.i.i14, label %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !700

_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i:  ; preds = %.lr.ph.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #28
          to label %bb.g unwind label %bb.e, !inline_history !764

bb.e:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f, !inline_history !764

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #27, !inline_history !764
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_.exit.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5arrow9ArraySpanESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5arrow9ArraySpanEJRKS1_EEvPT_DpOT0_.exit.i, %bb.c
  %.0.lcssa.i = phi ptr [ %i.i, %bb.c ], [ %i.s, %_ZSt10_ConstructIN5arrow9ArraySpanEJRKS1_EEvPT_DpOT0_.exit.i ]
  store ptr %.0.lcssa.i, ptr %i.j, align 8, !tbaa !698
  ret void

.body:                                            ; preds = %bb.e
  %i.ab = load ptr, ptr %0, align 8, !tbaa !105   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !701
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #30
  br label %_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.y
}

declare void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN5arrow7compute9ExecValueEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9ExecValueEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i
  %.05.i = phi ptr [ %i.l, %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !698  ; 2 uses
  %.not.i1.i.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i, %.lr.ph.i.i.i.i.i.i
  %.0.i2.i.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ %i.b, %.lr.ph.i ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i.i.i.i), !inline_history !758
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !700

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.i, %.lr.ph.i
  %i.f = phi ptr [ %.pre.i.i.i.i.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i.i ], [ %i.b, %.lr.ph.i ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !701
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #30, !inline_history !759
  br label %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i

_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i, i64 136 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9ExecValueEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !760

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9ExecValueEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i, %bb.a
  ret void
}

declare void @_ZN5arrow7compute8internal14StructTakeExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !766
  %i.f = load ptr, ptr %0, align 8, !tbaa !769    ; 5 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = sdiv exact i64 %i.c, 88
  %i.l = icmp ugt i64 %i.k, 104811045873349725
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute11FunctionDocC2ERKS1_:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !823, !range !130, !noundef !131
  store i8 %i.bq, ptr %i.bo, align 8, !tbaa !823
  ret void

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i12, %.noexc6.i13, %.noexc.i14
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.u:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i21, %.noexc6.i22, %.noexc.i23
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #26
  br label %.body

.body:                                            ; preds = %bb.u, %bb.m, %bb.l, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.v ], [ %i.bs, %bb.u ], [ %i.at, %bb.m ], [ %i.at, %bb.l ] ; 2 uses
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !330 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.p
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.bw = load i64, ptr %i.p, align 8, !tbaa !67
  %i.bx = add i64 %i.bw, 1
  tail call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.br, %bb.t ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %.body ]
  %i.by = load ptr, ptr %0, align 8, !tbaa !330   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.a
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !67
  %i.cb = add i64 %i.ca, 1
  tail call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute12MetaFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(5) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"struct.arrow::compute::FunctionDoc", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !330    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !332  ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.c, align 8, !tbaa !67
  store i64 %i.i, ptr %i.a, align 8, !tbaa !67
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !332
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %1, align 8, !tbaa !330
  store i64 0, ptr %i.l, align 8, !tbaa !332
  store i8 0, ptr %i.c, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !330    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !332  ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = load i64, ptr %i.o, align 8, !tbaa !67
  store i64 %i.u, ptr %i.m, align 8, !tbaa !67
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre8 = load i64, ptr %.phi.trans.insert7, align 8, !tbaa !332
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.v = phi ptr [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.w = phi i64 [ %.pre8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.o, ptr %3, align 8, !tbaa !330
  store i64 0, ptr %i.x, align 8, !tbaa !332
  store i8 0, ptr %i.o, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 7 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !328
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !330 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !332 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !330
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !67
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !67
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre10 = load i64, ptr %.phi.trans.insert9, align 8, !tbaa !332
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i, %bb.d
  %i.aj = phi ptr [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ak = phi i64 [ %.pre10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.af, %bb.d ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !332
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !330
  store i64 0, ptr %i.al, align 8, !tbaa !332
  store i8 0, ptr %i.ac, align 8, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !333 ; 2 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !333
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !335 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !335
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !337 ; 2 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !337
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 7 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !328
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !330 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !332 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !330
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !67
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !67
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.pre12 = load i64, ptr %.phi.trans.insert11, align 8, !tbaa !332
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZN5arrow7compute11FunctionDocC2EOS1_.exit:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i
  %i.bh = phi ptr [ %i.ay, %bb.e ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ] ; 2 uses
  %i.bi = phi i64 [ %i.bd, %bb.e ], [ %.pre12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !332
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !330
  store i64 0, ptr %i.bj, align 8, !tbaa !332
  store i8 0, ptr %i.ba, align 8, !tbaa !67
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !823, !range !130, !noundef !131 ; 2 uses
  store i8 %i.bn, ptr %i.bl, align 8, !tbaa !823
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute8FunctionE, i64 16), ptr %0, align 8, !tbaa !96
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !328
  %i.bq = icmp eq ptr %i.j, %i.a
  br i1 %i.bq, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

bb.f:                                             ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  %i.br = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  store ptr %i.j, ptr %i.bo, align 8, !tbaa !330
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3, %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.bu, align 8, !tbaa !332
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 4, ptr %i.bv, align 8, !tbaa !828
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bx = load i64, ptr %2, align 4
  store i64 %i.bx, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !328
  %i.ca = icmp eq ptr %i.v, %i.m
  br i1 %i.ca, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4
  %i.cb = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.cc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4
  store ptr %i.v, ptr %i.by, align 8, !tbaa !330
  %i.cd = load i64, ptr %i.m, align 8, !tbaa !67
  store i64 %i.cd, ptr %i.bz, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.w, ptr %i.ce, align 8, !tbaa !332
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !328
  %i.ch = icmp eq ptr %i.aj, %i.aa
  br i1 %i.ch, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ci = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.cj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.aj, ptr %i.cf, align 8, !tbaa !330
  %i.ck = load i64, ptr %i.aa, align 8, !tbaa !67
  store i64 %i.ck, ptr %i.cg, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i, %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ak, ptr %i.cl, align 8, !tbaa !332
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ap, ptr %i.cm, align 8, !tbaa !333
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.as, ptr %i.cn, align 8, !tbaa !335
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.av, ptr %i.co, align 8, !tbaa !337
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !328
  %i.cr = icmp eq ptr %i.bh, %i.ay
  br i1 %i.cr, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i
  %i.cs = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i
  store ptr %i.bh, ptr %i.cp, align 8, !tbaa !330
  %i.cu = load i64, ptr %i.ay, align 8, !tbaa !67
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.bi, ptr %i.cv, align 8, !tbaa !332
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.bn, ptr %i.cw, align 8, !tbaa !823
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %4, ptr %i.cx, align 8, !tbaa !833
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow7compute12MetaFunctionE, i64 16), ptr %0, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute8FunctionE, i64 16), ptr %0, align 8, !tbaa !96
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !330  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !67
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !333  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !335  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !330 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !67
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !336

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !333
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !337
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !330  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !67
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !330 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN5arrow7compute11FunctionDocD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !67
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #30
  br label %_ZN5arrow7compute11FunctionDocD2Ev.exit

_ZN5arrow7compute11FunctionDocD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !330 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !67
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5arrow7compute12MetaFunction11num_kernelsEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

declare void @_ZNK5arrow7compute8Function13DispatchExactERKSt6vectorINS_10TypeHolderESaIS3_EE() unnamed_addr

declare void @_ZNK5arrow7compute8Function12DispatchBestEPSt6vectorINS_10TypeHolderESaIS3_EE() unnamed_addr

declare void @_ZNK5arrow7compute8Function15GetBestExecutorESt6vectorINS_10TypeHolderESaIS3_EE() unnamed_addr

declare void @_ZNK5arrow7compute12MetaFunction7ExecuteERKSt6vectorINS_5DatumESaIS3_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.208") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZNK5arrow7compute12MetaFunction7ExecuteERKNS0_9ExecBatchEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.208") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZNK5arrow7compute8Function8ValidateEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(192)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5arrow7compute8Function7is_pureEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.208") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.214, align 1            ; 3 uses
  %6 = alloca %class.anon.214, align 1            ; 3 uses
  %7 = alloca %class.anon.214, align 1            ; 3 uses
  %8 = alloca %class.anon.214, align 1            ; 3 uses
  %9 = alloca %class.anon.214, align 1            ; 3 uses
  %10 = alloca %"class.std::vector.344", align 8  ; 6 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %12 = alloca %"class.std::shared_ptr.195", align 16 ; 7 uses
  %13 = alloca %"class.std::shared_ptr.298", align 16 ; 6 uses
  %14 = alloca %"class.std::vector.339", align 8  ; 10 uses
  %15 = alloca %"class.std::vector.344", align 8  ; 16 uses
  %16 = alloca %"class.std::shared_ptr.183", align 8 ; 7 uses
  %17 = alloca %"class.std::shared_ptr.161", align 16 ; 10 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %19 = alloca %"class.std::vector.344", align 8  ; 9 uses
  %20 = alloca %"class.std::vector.344", align 8  ; 11 uses
  %21 = alloca %"class.arrow::Result.234", align 8 ; 12 uses
  %22 = alloca %"struct.arrow::ArraySpan", align 8 ; 12 uses
  %23 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %24 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  %25 = alloca %"class.arrow::Result.208", align 8 ; 13 uses
  %26 = alloca %"struct.arrow::Datum", align 8    ; 7 uses
  %27 = alloca %"class.arrow::compute::TakeOptions", align 8 ; 5 uses
  %28 = alloca %"struct.arrow::Datum", align 16   ; 8 uses
  %29 = alloca %"class.std::shared_ptr.161", align 16 ; 9 uses
  %30 = alloca %"class.std::vector.339", align 8  ; 15 uses
  %31 = alloca %"class.std::shared_ptr.183", align 8 ; 7 uses
  %32 = alloca %"class.std::shared_ptr.195", align 16 ; 7 uses
  %33 = alloca %"class.std::shared_ptr.298", align 16 ; 6 uses
  %34 = alloca %"class.std::vector.339", align 8  ; 9 uses
  %35 = alloca %class.anon.214, align 1           ; 3 uses
  %36 = alloca %class.anon.214, align 1           ; 3 uses
  %37 = alloca %class.anon.214, align 1           ; 3 uses
  %38 = alloca %class.anon.214, align 1           ; 3 uses
  %39 = alloca %class.anon.214, align 1           ; 3 uses
  %40 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %41 = alloca %"struct.arrow::ArrayData", align 8 ; 9 uses
  %42 = alloca %"class.arrow::Result.315", align 8 ; 13 uses
  %43 = alloca %"class.std::shared_ptr.161", align 8 ; 6 uses
  %44 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %45 = alloca %"class.arrow::Result.234", align 8 ; 13 uses
  %46 = alloca %"struct.arrow::ArraySpan", align 8 ; 13 uses
  %47 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %48 = alloca %"class.std::vector.319", align 16 ; 13 uses
  %49 = alloca %"class.arrow::Result.208", align 8 ; 13 uses
  %50 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  %51 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %52 = alloca %"class.std::shared_ptr.161", align 8 ; 7 uses
  %53 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  %54 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %55 = alloca %"class.arrow::compute::TakeOptions", align 8 ; 5 uses
  %56 = alloca %"struct.arrow::Datum", align 16   ; 8 uses
  %57 = alloca %"class.std::shared_ptr.161", align 16 ; 7 uses
  %58 = alloca %"class.std::shared_ptr.189", align 16 ; 7 uses
  %59 = alloca %"class.std::shared_ptr.298", align 16 ; 6 uses
  %60 = alloca %"class.std::vector.319", align 16 ; 9 uses
  %61 = alloca %"class.std::shared_ptr.331", align 8 ; 6 uses
  %62 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %63 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %64 = alloca %"class.arrow::Result.294", align 8 ; 19 uses
  %65 = alloca %"class.std::shared_ptr.189", align 8 ; 6 uses
  %66 = alloca %"struct.arrow::Datum", align 16   ; 9 uses
  %67 = alloca %"class.std::shared_ptr.189", align 8 ; 4 uses
  %68 = alloca %"class.arrow::Result.301", align 8 ; 20 uses
  %69 = alloca %"class.std::shared_ptr.195", align 8 ; 6 uses
  %70 = alloca %"struct.arrow::Datum", align 16   ; 9 uses
  %71 = alloca %"class.std::shared_ptr.195", align 8 ; 4 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !834    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i8, ptr %i.b, align 8, !tbaa !508
  %i.d = and i8 %i.c, -2
  %switch = icmp eq i8 %i.d, 2
  br i1 %switch, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #26
  call void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %62, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(28) @.str.11)
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %62) #26
  %i.e = load ptr, ptr %62, align 8, !tbaa !106   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !132

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !402, !range !130, !noundef !131
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %62) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #26
  br label %bb.oi

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !356  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !42
  switch i32 %i.m, label %bb.g [
    i32 38, label %bb.f
    i32 1, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !837
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !838
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !356
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !42
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #26
  call void @_ZN5arrow6Status8FromArgsIJRA37_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %63, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(37) @.str.12)
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %63) #26
  %i.w = load ptr, ptr %63, align 8, !tbaa !106   ; 2 uses
  %.not.i44 = icmp eq ptr %i.w, null
  br i1 %.not.i44, label %_ZN5arrow6StatusD2Ev.exit45, label %bb.h, !prof !132

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !402, !range !130, !noundef !131
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN5arrow6StatusD2Ev.exit45, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %63) #26
  br label %_ZN5arrow6StatusD2Ev.exit45

_ZN5arrow6StatusD2Ev.exit45:                      ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #26
  br label %bb.oi

bb.j:                                             ; preds = %bb.e, %bb.f
  %i.aa = load ptr, ptr %2, align 8, !tbaa !834   ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !508 ; 3 uses
  %switch.tableidx.i46 = add i8 %i.ac, -1         ; 2 uses
  %i.ad = icmp ult i8 %switch.tableidx.i46, 5
  %switch.idx.cast.i47 = zext i8 %switch.tableidx.i46 to i32
  %switch.offset.i48 = add nuw nsw i32 %switch.idx.cast.i47, 1
  %.0.i49 = select i1 %i.ad, i32 %switch.offset.i48, i32 0
  switch i32 %.0.i49, label %._crit_edge.i.i [
    i32 4, label %bb.k
    i32 5, label %bb.gg
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #26
  %.not.i.i.i = icmp eq i8 %i.ac, 4
  br i1 %.not.i.i.i, label %_ZNK5arrow5Datum12record_batchEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ae, align 8, !tbaa !96
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @.str.6, ptr %i.af, align 8, !tbaa !98
  tail call void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable

_ZNK5arrow5Datum12record_batchEv.exit:            ; preds = %bb.k
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !723 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %59)
  call void @llvm.lifetime.start.p0(ptr nonnull %60)
  call void @llvm.lifetime.start.p0(ptr nonnull %61)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !844, !noalias !841
  %i.ak = tail call noundef i64 @_ZNK5arrow5Datum6lengthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ah), !noalias !841
  %.not.i50 = icmp eq i64 %i.aj, %i.ak
  br i1 %.not.i50, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZNK5arrow5Datum12record_batchEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26, !noalias !841
  call void @_ZN5arrow6Status8FromArgsIJRA42_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %40, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(42) @.str.19)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(8) %40) #26
  %i.al = load ptr, ptr %40, align 8, !tbaa !106, !noalias !841 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.n, !prof !132

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !402, !range !130, !noundef !131
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26, !noalias !841
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_117FilterRecordBatchERKNS_11RecordBatchERKNS_5DatumEPKNS0_15FunctionOptionsEPNS0_11ExecContextE.exit

bb.p:                                             ; preds = %_ZNK5arrow5Datum12record_batchEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26, !noalias !841
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %41, i8 0, i64 120, i1 false), !noalias !841
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !508, !noalias !841 ; 3 uses
  %switch.tableidx.i.i = add i8 %i.aq, -1         ; 2 uses
  %i.ar = icmp ult i8 %switch.tableidx.i.i, 5
  %switch.idx.cast.i.i = zext i8 %switch.tableidx.i.i to i32
  %switch.offset.i.i = add nuw nsw i32 %switch.idx.cast.i.i, 1
  %.0.i.i = select i1 %i.ar, i32 %switch.offset.i.i, i32 0
  switch i32 %.0.i.i, label %bb.ar [
    i32 2, label %bb.q
    i32 3, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.i = icmp eq i8 %i.aq, 2
  br i1 %.not.i.i.i.i, label %_ZNK5arrow5Datum5arrayEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.as, align 8, !tbaa !96
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @.str.6, ptr %i.at, align 8, !tbaa !98
  invoke void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  unreachable

_ZNK5arrow5Datum5arrayEv.exit.i:                  ; preds = %bb.q
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !101, !noalias !841
  %i.av = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN5arrow9ArrayDataaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %41, ptr noundef nonnull align 8 dereferenceable(120) %i.au)
          to label %bb.av unwind label %bb.s      ; 0 uses

bb.s:                                             ; preds = %_ZNK5arrow5Datum5arrayEv.exit.i, %bb.r
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #26, !noalias !841
  %.not.i.i.i64.i = icmp eq i8 %i.aq, 3
  br i1 %.not.i.i.i64.i, label %_ZNK5arrow5Datum13chunked_arrayEv.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ax, align 8, !tbaa !96
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr @.str.6, ptr %i.ay, align 8, !tbaa !98
  invoke void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
          to label %.noexc65.i unwind label %bb.y

.noexc65.i:                                       ; preds = %bb.u
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit.i:         ; preds = %bb.t
  %i.az = load ptr, ptr %i.ah, align 8, !tbaa !719, !noalias !841
  %i.ba = invoke noundef ptr @_ZN5arrow19default_memory_poolEv()
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit.i
  invoke void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.315") align 8 %42, ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef %i.ba)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bb = load ptr, ptr %42, align 8, !tbaa !106, !noalias !841
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  br i1 %i.bc, label %bb.z, label %bb.x, !prof !132

bb.x:                                             ; preds = %bb.w
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(8) %42) #26
  br label %bb.ai

bb.y:                                             ; preds = %bb.v, %_ZNK5arrow5Datum13chunked_arrayEv.exit.i, %bb.u
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26, !noalias !841
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.be = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !855, !noalias !858 ; 2 uses
  store ptr %i.bf, ptr %43, align 8, !tbaa !855, !alias.scope !859, !noalias !841
  %i.bg = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !352, !noalias !858 ; 9 uses
  store ptr null, ptr %i.bh, align 8, !tbaa !352, !noalias !858
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !352, !alias.scope !859, !noalias !841
  store ptr null, ptr %i.be, align 8, !tbaa !855, !noalias !858
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !101
  %i.bl = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN5arrow9ArrayDataaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %41, ptr noundef nonnull align 8 dereferenceable(120) %i.bk)
          to label %bb.aa unwind label %bb.ah     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i51 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i51, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.bm, align 8, !tbaa !357
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !359
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #26, !inline_history !860
  %i.bu = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #26, !inline_history !860
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !841
  %.not.i.i.i66.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i66.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i = phi i32 [ %i.bp, %bb.ae ], [ %i.bz, %bb.af ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ca, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !66

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ac, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26, !noalias !841
  br label %bb.ai

bb.ah:                                            ; preds = %bb.z
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %43) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26, !noalias !841
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %42) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26, !noalias !841
  br label %bb.fc

bb.ai:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.x
  %i.cc = load ptr, ptr %42, align 8, !tbaa !106, !noalias !841 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.aj, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i, !prof !132

bb.aj:                                            ; preds = %bb.ai
  %i.ce = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !352, !noalias !841 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.ch = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 4294967297
  %i.cj = trunc i64 %i.ch to i32                  ; 2 uses
  br i1 %i.ci, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.cg, align 8, !tbaa !357
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.ck, align 4, !tbaa !359
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !96
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #26, !inline_history !861
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !96
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #26, !inline_history !861
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i

bb.am:                                            ; preds = %bb.ak
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !841
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cs = add nsw i32 %i.cj, -1
  store i32 %i.cs, ptr %i.cg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ct = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.cj, %bb.an ], [ %i.ct, %bb.ao ]
  %i.cu = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.cu, label %bb.ap, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i, !prof !66

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.al, %bb.aj
  %.pr.i.i = load ptr, ptr %42, align 8, !tbaa !106, !noalias !841 ; 2 uses
  %.not.i.i67.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i67.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i, !prof !456

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i, %bb.ai
  %i.cv = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i ], [ %i.cc, %bb.ai ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !402, !range !130, !noundef !131
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %42) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit.i: ; preds = %bb.aq, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26, !noalias !841
  br i1 %i.bc, label %bb.av, label %bb.fb

bb.ar:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #26, !noalias !841
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %44, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(28) @.str.11)
          to label %_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i unwind label %bb.au

_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i: ; preds = %bb.ar
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(8) %44) #26
  %i.cz = load ptr, ptr %44, align 8, !tbaa !106, !noalias !841 ; 2 uses
  %.not.i69.i = icmp eq ptr %i.cz, null
  br i1 %.not.i69.i, label %_ZN5arrow6StatusD2Ev.exit70.i, label %bb.as, !prof !132

bb.as:                                            ; preds = %_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !402, !range !130, !noundef !131
  %i.dc = trunc nuw i8 %i.db to i1
end_hunk_10
begin_hunk_11_@_ZNK5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE:bb.a
  call void @__clang_call_terminate(ptr %i.pw) #27
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZN5arrow6ResultINS_5DatumEEC2EOS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  %i.px = load ptr, ptr %i.pi, align 8, !tbaa !352 ; 8 uses
  %.not.i.i55 = icmp eq ptr %i.px, null
  br i1 %.not.i.i55, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fk

bb.fk:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8 ; 4 uses
  %i.pz = load atomic i64, ptr %i.py acquire, align 8 ; 2 uses
  %i.qa = icmp eq i64 %i.pz, 4294967297
  %i.qb = trunc i64 %i.pz to i32                  ; 2 uses
  br i1 %i.qa, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  store i32 0, ptr %i.py, align 8, !tbaa !357
  %i.qc = getelementptr inbounds nuw i8, ptr %i.px, i64 12
  store i32 0, ptr %i.qc, align 4, !tbaa !359
  %i.qd = load ptr, ptr %i.px, align 8, !tbaa !96
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8
  call void %i.qf(ptr noundef nonnull align 8 dereferenceable(16) %i.px) #26, !inline_history !899
  %i.qg = load ptr, ptr %i.px, align 8, !tbaa !96
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef nonnull align 8 dereferenceable(16) %i.px) #26, !inline_history !899
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fm:                                            ; preds = %bb.fk
  %i.qj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i56 = icmp eq i8 %i.qj, 0
  br i1 %.not.i.i.i56, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.qk = add nsw i32 %i.qb, -1
  store i32 %i.qk, ptr %i.py, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.fo:                                            ; preds = %bb.fm
  %i.ql = atomicrmw volatile add ptr %i.py, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.fo, %bb.fn
  %.0.i.i.i.i = phi i32 [ %i.qb, %bb.fn ], [ %i.ql, %bb.fo ]
  %i.qm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.qm, label %bb.fp, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.fp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.px) #26
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit, %bb.fl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #26
  %i.qn = load ptr, ptr %i.pf, align 8, !tbaa !352 ; 8 uses
  %.not.i.i57 = icmp eq ptr %i.qn, null
  br i1 %.not.i.i57, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, label %bb.fq

bb.fq:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8 ; 4 uses
  %i.qp = load atomic i64, ptr %i.qo acquire, align 8 ; 2 uses
  %i.qq = icmp eq i64 %i.qp, 4294967297
  %i.qr = trunc i64 %i.qp to i32                  ; 2 uses
  br i1 %i.qq, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  store i32 0, ptr %i.qo, align 8, !tbaa !357
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qn, i64 12
  store i32 0, ptr %i.qs, align 4, !tbaa !359
  %i.qt = load ptr, ptr %i.qn, align 8, !tbaa !96
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %i.qv = load ptr, ptr %i.qu, align 8
  call void %i.qv(ptr noundef nonnull align 8 dereferenceable(16) %i.qn) #26, !inline_history !899
  %i.qw = load ptr, ptr %i.qn, align 8, !tbaa !96
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.qy = load ptr, ptr %i.qx, align 8
  call void %i.qy(ptr noundef nonnull align 8 dereferenceable(16) %i.qn) #26, !inline_history !899
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61

bb.fs:                                            ; preds = %bb.fq
  %i.qz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i58 = icmp eq i8 %i.qz, 0
  br i1 %.not.i.i.i58, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ra = add nsw i32 %i.qr, -1
  store i32 %i.ra, ptr %i.qo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

bb.fu:                                            ; preds = %bb.fs
  %i.rb = atomicrmw volatile add ptr %i.qo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59: ; preds = %bb.fu, %bb.ft
  %.0.i.i.i.i60 = phi i32 [ %i.qr, %bb.ft ], [ %i.rb, %bb.fu ]
  %i.rc = icmp eq i32 %.0.i.i.i.i60, 1
  br i1 %i.rc, label %bb.fv, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, !prof !66

bb.fv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qn) #26
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61: ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.fr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i59, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  br label %bb.fx

bb.fw:                                            ; preds = %_ZNSt10shared_ptrIN5arrow11RecordBatchEEC2ERKS2_.exit
  %i.rd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %67) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #26
  call void @_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %65) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %64) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  br label %common.resume

bb.fx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit61, %bb.fd
  %i.re = load ptr, ptr %64, align 8, !tbaa !106  ; 2 uses
  %i.rf = icmp eq ptr %i.re, null
  br i1 %i.rf, label %bb.fy, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, !prof !132

bb.fy:                                            ; preds = %bb.fx
  %i.rg = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i.i.i63, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8 ; 4 uses
  %i.rj = load atomic i64, ptr %i.ri acquire, align 8 ; 2 uses
  %i.rk = icmp eq i64 %i.rj, 4294967297
  %i.rl = trunc i64 %i.rj to i32                  ; 2 uses
  br i1 %i.rk, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  store i32 0, ptr %i.ri, align 8, !tbaa !357
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rh, i64 12
  store i32 0, ptr %i.rm, align 4, !tbaa !359
  %i.rn = load ptr, ptr %i.rh, align 8, !tbaa !96
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8
  call void %i.rp(ptr noundef nonnull align 8 dereferenceable(16) %i.rh) #26, !inline_history !900
  %i.rq = load ptr, ptr %i.rh, align 8, !tbaa !96
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.rs = load ptr, ptr %i.rr, align 8
  call void %i.rs(ptr noundef nonnull align 8 dereferenceable(16) %i.rh) #26, !inline_history !900
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i

bb.gb:                                            ; preds = %bb.fz
  %i.rt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i64 = icmp eq i8 %i.rt, 0
  br i1 %.not.i.i.i.i.i.i64, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.ru = add nsw i32 %i.rl, -1
  store i32 %i.ru, ptr %i.ri, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65

bb.gd:                                            ; preds = %bb.gb
  %i.rv = atomicrmw volatile add ptr %i.ri, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65: ; preds = %bb.gd, %bb.gc
  %.0.i.i.i.i.i.i.i66 = phi i32 [ %i.rl, %bb.gc ], [ %i.rv, %bb.gd ]
  %i.rw = icmp eq i32 %.0.i.i.i.i.i.i.i66, 1
  br i1 %i.rw, label %bb.ge, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, !prof !66

bb.ge:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rh) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i: ; preds = %bb.ge, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65, %bb.ga, %bb.fy
  %.pr.i = load ptr, ptr %64, align 8, !tbaa !106 ; 2 uses
  %.not.i.i67 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i67, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, !prof !456

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, %bb.fx
  %i.rx = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i ], [ %i.re, %bb.fx ]
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 1
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !402, !range !130, !noundef !131
  %i.sa = trunc nuw i8 %i.rz to i1
  br i1 %i.sa, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %bb.gf

bb.gf:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %64) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  br label %bb.oi

bb.gg:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #26
  %.not.i.i.i72 = icmp eq i8 %i.ac, 5
  br i1 %.not.i.i.i72, label %_ZNK5arrow5Datum5tableEv.exit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.sb = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.sb, align 8, !tbaa !96
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  store ptr @.str.6, ptr %i.sc, align 8, !tbaa !98
  tail call void @__cxa_throw(ptr nonnull %i.sb, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable

_ZNK5arrow5Datum5tableEv.exit:                    ; preds = %bb.gg
  %i.sd = load ptr, ptr %i.aa, align 8, !tbaa !727 ; 11 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 24 ; 2 uses
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !904, !noalias !901
  %i.sh = tail call noundef i64 @_ZNK5arrow5Datum6lengthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.se), !noalias !901
  %.not.i73 = icmp eq i64 %i.sg, %i.sh
  br i1 %.not.i73, label %bb.gl, label %bb.gi

bb.gi:                                            ; preds = %_ZNK5arrow5Datum5tableEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !901
  call void @_ZN5arrow6Status8FromArgsIJRA42_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %11, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(42) @.str.19)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(8) %11) #26
  %i.si = load ptr, ptr %11, align 8, !tbaa !106, !noalias !901 ; 2 uses
  %.not.i.i74 = icmp eq ptr %i.si, null
  br i1 %.not.i.i74, label %_ZN5arrow6StatusD2Ev.exit.i75, label %bb.gj, !prof !132

bb.gj:                                            ; preds = %bb.gi
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 1
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !402, !range !130, !noundef !131
  %i.sl = trunc nuw i8 %i.sk to i1
  br i1 %i.sl, label %_ZN5arrow6StatusD2Ev.exit.i75, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i75

_ZN5arrow6StatusD2Ev.exit.i75:                    ; preds = %bb.gk, %bb.gj, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !901
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_111FilterTableERKNS_5TableERKNS_5DatumEPKNS0_15FunctionOptionsEPNS0_11ExecContextE.exit

bb.gl:                                            ; preds = %_ZNK5arrow5Datum5tableEv.exit
  %i.sm = load i64, ptr %i.sf, align 8, !tbaa !904, !noalias !901
  %i.sn = icmp eq i64 %i.sm, 0
  br i1 %i.sn, label %bb.gm, label %bb.hl

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !901
  %i.so = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sp = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !352, !noalias !901 ; 2 uses
  %i.ss = load <2 x ptr>, ptr %i.so, align 8, !tbaa !351, !noalias !901
  store <2 x ptr> %i.ss, ptr %13, align 16, !tbaa !351, !noalias !901
  %.not.i.i.i.i114 = icmp eq ptr %i.sr, null
  br i1 %.not.i.i.i.i114, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i116, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 8 ; 3 uses
  %i.su = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i.i.i115 = icmp eq i8 %i.su, 0
  br i1 %.not.i.i.i.i.i115, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.sv = load i32, ptr %i.st, align 4, !tbaa !3
  %i.sw = add nsw i32 %i.sv, 1
  store i32 %i.sw, ptr %i.st, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i116

bb.gp:                                            ; preds = %bb.gn
  %i.sx = atomicrmw volatile add ptr %i.st, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i116

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i116: ; preds = %bb.gp, %bb.go, %bb.gm
  %i.sy = load ptr, ptr %i.sd, align 8, !tbaa !96, !noalias !901
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 24
  %i.ta = load ptr, ptr %i.sz, align 8
  %i.tb = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.ta(ptr noundef nonnull align 8 dereferenceable(32) %i.sd)
          to label %bb.gq unwind label %bb.hi     ; 3 uses

bb.gq:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i116
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8 ; 2 uses
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !906 ; 3 uses
  %i.te = load ptr, ptr %i.tb, align 8, !tbaa !909 ; 3 uses
  %i.tf = ptrtoint ptr %i.td to i64
  %i.tg = ptrtoint ptr %i.te to i64
  %i.th = sub i64 %i.tf, %i.tg                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false), !noalias !901
  %.not.i.i.i.i122.i = icmp eq ptr %i.td, %i.te
  br i1 %.not.i.i.i.i122.i, label %.noexc123.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ti = icmp ugt i64 %i.th, 9223372036854775792
  br i1 %i.ti, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !66

.noexc.i.i.i:                                     ; preds = %bb.gr
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc.i130 unwind label %bb.hi

.noexc.i130:                                      ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.gr
  %i.tj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.th) #29
          to label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc123_crit_edge.i unwind label %bb.hi

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc123_crit_edge.i: ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre.i117 = load ptr, ptr %i.tb, align 8, !tbaa !910
  %.pre318.i = load ptr, ptr %i.tc, align 8, !tbaa !910
  br label %.noexc123.i

.noexc123.i:                                      ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc123_crit_edge.i, %bb.gq
  %i.tk = phi ptr [ %i.td, %bb.gq ], [ %.pre318.i, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc123_crit_edge.i ] ; 2 uses
  %i.tl = phi ptr [ %i.te, %bb.gq ], [ %.pre.i117, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc123_crit_edge.i ] ; 2 uses
  %i.tm = phi ptr [ null, %bb.gq ], [ %i.tj, %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow12ChunkedArrayEEE8allocateEmPKv.exit.i.i.i.i..noexc123_crit_edge.i ] ; 5 uses
  store ptr %i.tm, ptr %14, align 8, !tbaa !909, !noalias !901
  %i.tn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store ptr %i.tm, ptr %i.tn, align 8, !tbaa !906, !noalias !901
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.th
  %i.tp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.to, ptr %i.tp, align 8, !tbaa !911, !noalias !901
  %i.tq = icmp eq ptr %i.tl, %i.tk
  br i1 %i.tq, label %.loopexit.i118, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc123.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.ua, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.tm, %.noexc123.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.tz, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.tl, %.noexc123.i ] ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !352 ; 2 uses
  %i.tt = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !351
  store <2 x ptr> %i.tt, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !351
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ts, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.gs

bb.gs:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 8 ; 3 uses
  %i.tv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.tv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.tw = load i32, ptr %i.tu, align 4, !tbaa !3
  %i.tx = add nsw i32 %i.tw, 1
  store i32 %i.tx, ptr %i.tu, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.gu:                                            ; preds = %bb.gs
  %i.ty = atomicrmw volatile add ptr %i.tu, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.gu, %bb.gt, %.lr.ph.i.i.i.i.i.i
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ub = icmp eq ptr %i.tz, %i.tk
  br i1 %i.ub, label %.loopexit.i118, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !912

.loopexit.i118:                                   ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %.noexc123.i
  %.0.lcssa.i.i.i.i.i.i119 = phi ptr [ %i.tm, %.noexc123.i ], [ %i.ua, %_ZSt10_ConstructISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i119, ptr %i.tn, align 8, !tbaa !906, !noalias !901
  invoke void @_ZN5arrow5Table4MakeESt10shared_ptrINS_6SchemaEESt6vectorIS1_INS_12ChunkedArrayEESaIS6_EEl(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.195") align 8 %12, ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 0)
          to label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i unwind label %bb.hj

_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %.loopexit.i118
  store ptr null, ptr %68, align 8, !tbaa !106, !alias.scope !901
  %i.uc = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.ud = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ue = load <2 x ptr>, ptr %12, align 16, !tbaa !351, !noalias !901
  store ptr null, ptr %i.ud, align 8, !tbaa !352, !noalias !901
  store <2 x ptr> %i.ue, ptr %i.uc, align 8, !tbaa !351, !alias.scope !901
  store ptr null, ptr %12, align 16, !tbaa !727, !noalias !901
  %i.uf = load ptr, ptr %14, align 8, !tbaa !909, !noalias !901 ; 3 uses
  %i.ug = load ptr, ptr %i.tn, align 8, !tbaa !906, !noalias !901 ; 2 uses
  %.not4.i.i.i.i120 = icmp eq ptr %i.uf, %i.ug
  br i1 %.not4.i.i.i.i120, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i121

.lr.ph.i.i.i.i121:                                ; preds = %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i122 = phi ptr [ %i.uy, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i ], [ %i.uf, %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i122, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i.i.i.i.i.i123 = icmp eq ptr %i.ui, null
  br i1 %.not.i.i.i.i.i.i.i.i123, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %.lr.ph.i.i.i.i121
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8 ; 4 uses
  %i.uk = load atomic i64, ptr %i.uj acquire, align 8 ; 2 uses
  %i.ul = icmp eq i64 %i.uk, 4294967297
  %i.um = trunc i64 %i.uk to i32                  ; 2 uses
  br i1 %i.ul, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  store i32 0, ptr %i.uj, align 8, !tbaa !357
  %i.un = getelementptr inbounds nuw i8, ptr %i.ui, i64 12
  store i32 0, ptr %i.un, align 4, !tbaa !359
  %i.uo = load ptr, ptr %i.ui, align 8, !tbaa !96
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.uq = load ptr, ptr %i.up, align 8
  call void %i.uq(ptr noundef nonnull align 8 dereferenceable(16) %i.ui) #26, !inline_history !913
  %i.ur = load ptr, ptr %i.ui, align 8, !tbaa !96
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 24
  %i.ut = load ptr, ptr %i.us, align 8
end_hunk_11
begin_hunk_12_@_ZNK5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE:bb.a
bb.ho:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i76, %bb.hm
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.hp:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %.lr.ph.i
  %indvars.iv.i78 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i79, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26, !noalias !901
  %i.wq = load ptr, ptr %i.sd, align 8, !tbaa !96, !noalias !901
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  %i.ws = load ptr, ptr %i.wr, align 8
  %i.wt = trunc nuw nsw i64 %indvars.iv.i78 to i32
  invoke void %i.ws(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.183") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %i.sd, i32 noundef %i.wt)
          to label %bb.hq unwind label %bb.hy

bb.hq:                                            ; preds = %bb.hp
  %i.wu = load ptr, ptr %16, align 8, !tbaa !719, !noalias !901
  %i.wv = load ptr, ptr %15, align 8, !tbaa !917, !noalias !901
  %i.ww = getelementptr inbounds nuw [24 x i8], ptr %i.wv, i64 %indvars.iv.i78
  %i.wx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.ww, ptr noundef nonnull align 8 dereferenceable(24) %i.wu)
          to label %bb.hr unwind label %bb.hz     ; 0 uses

bb.hr:                                            ; preds = %bb.hq
  %i.wy = load ptr, ptr %i.wj, align 8, !tbaa !352, !noalias !901 ; 8 uses
  %.not.i.i134.i = icmp eq ptr %i.wy, null
  br i1 %.not.i.i134.i, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 8 ; 4 uses
  %i.xa = load atomic i64, ptr %i.wz acquire, align 8 ; 2 uses
  %i.xb = icmp eq i64 %i.xa, 4294967297
  %i.xc = trunc i64 %i.xa to i32                  ; 2 uses
  br i1 %i.xb, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  store i32 0, ptr %i.wz, align 8, !tbaa !357
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wy, i64 12
  store i32 0, ptr %i.xd, align 4, !tbaa !359
  %i.xe = load ptr, ptr %i.wy, align 8, !tbaa !96
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  %i.xg = load ptr, ptr %i.xf, align 8
  call void %i.xg(ptr noundef nonnull align 8 dereferenceable(16) %i.wy) #26, !inline_history !922
  %i.xh = load ptr, ptr %i.wy, align 8, !tbaa !96
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 24
  %i.xj = load ptr, ptr %i.xi, align 8
  call void %i.xj(ptr noundef nonnull align 8 dereferenceable(16) %i.wy) #26, !inline_history !922
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.hu:                                            ; preds = %bb.hs
  %i.xk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i135.i = icmp eq i8 %i.xk, 0
  br i1 %.not.i.i.i135.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.xl = add nsw i32 %i.xc, -1
  store i32 %i.xl, ptr %i.wz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136.i

bb.hw:                                            ; preds = %bb.hu
  %i.xm = atomicrmw volatile add ptr %i.wz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136.i: ; preds = %bb.hw, %bb.hv
  %.0.i.i.i.i137.i = phi i32 [ %i.xc, %bb.hv ], [ %i.xm, %bb.hw ]
  %i.xn = icmp eq i32 %.0.i.i.i.i137.i, 1
  br i1 %i.xn, label %bb.hx, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !66

bb.hx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wy) #26
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.hx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136.i, %bb.ht, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26, !noalias !901
  %indvars.iv.next.i79 = add nuw nsw i64 %indvars.iv.i78, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i79, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.hp, !llvm.loop !923

bb.hy:                                            ; preds = %bb.hp
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hq
  %i.xp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #26
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %.pn115.i = phi { ptr, i32 } [ %i.xp, %bb.hz ], [ %i.xo, %bb.hy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26, !noalias !901
  br label %bb.nb

bb.ib:                                            ; preds = %._crit_edge.i
  %i.xq = load ptr, ptr %i.wl, align 8, !tbaa !924, !noalias !901 ; 3 uses
  %i.xr = getelementptr inbounds i8, ptr %i.xq, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26, !noalias !901
  invoke void @_ZNK5arrow5Datum10make_arrayEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.161") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %i.se)
          to label %bb.ic unwind label %bb.il

bb.ic:                                            ; preds = %bb.ib
  %i.xs = getelementptr inbounds i8, ptr %i.xq, i64 -16 ; 2 uses
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !874 ; 5 uses
  %i.xu = getelementptr inbounds i8, ptr %i.xq, i64 -8
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !873
  %.not.i.i138.i = icmp eq ptr %i.xt, %i.xv
  br i1 %.not.i.i138.i, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  store ptr null, ptr %i.xw, align 8, !tbaa !352
  %i.xx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.xy = load <2 x ptr>, ptr %17, align 16, !tbaa !351, !noalias !901
  store ptr null, ptr %i.xx, align 8, !tbaa !352, !noalias !901
  store <2 x ptr> %i.xy, ptr %i.xt, align 8, !tbaa !351
  store ptr null, ptr %17, align 16, !tbaa !855, !noalias !901
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  store ptr %i.xz, ptr %i.xs, align 8, !tbaa !874
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit.i

bb.ie:                                            ; preds = %bb.ic
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.xr, ptr %i.xt, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit.i unwind label %bb.im

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit.i: ; preds = %bb.ie, %bb.id
  %i.ya = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !352, !noalias !901 ; 8 uses
  %.not.i.i140.i = icmp eq ptr %i.yb, null
  br i1 %.not.i.i140.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112, label %bb.if

bb.if:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit.i
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 8 ; 4 uses
  %i.yd = load atomic i64, ptr %i.yc acquire, align 8 ; 2 uses
  %i.ye = icmp eq i64 %i.yd, 4294967297
  %i.yf = trunc i64 %i.yd to i32                  ; 2 uses
  br i1 %i.ye, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  store i32 0, ptr %i.yc, align 8, !tbaa !357
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yb, i64 12
  store i32 0, ptr %i.yg, align 4, !tbaa !359
  %i.yh = load ptr, ptr %i.yb, align 8, !tbaa !96
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  %i.yj = load ptr, ptr %i.yi, align 8
  call void %i.yj(ptr noundef nonnull align 8 dereferenceable(16) %i.yb) #26, !inline_history !925
  %i.yk = load ptr, ptr %i.yb, align 8, !tbaa !96
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 24
  %i.ym = load ptr, ptr %i.yl, align 8
  call void %i.ym(ptr noundef nonnull align 8 dereferenceable(16) %i.yb) #26, !inline_history !925
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112

bb.ih:                                            ; preds = %bb.if
  %i.yn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i141.i = icmp eq i8 %i.yn, 0
  br i1 %.not.i.i.i141.i, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.yo = add nsw i32 %i.yf, -1
  store i32 %i.yo, ptr %i.yc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i

bb.ij:                                            ; preds = %bb.ih
  %i.yp = atomicrmw volatile add ptr %i.yc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i: ; preds = %bb.ij, %bb.ii
  %.0.i.i.i.i143.i = phi i32 [ %i.yf, %bb.ii ], [ %i.yp, %bb.ij ]
  %i.yq = icmp eq i32 %.0.i.i.i.i143.i, 1
  br i1 %i.yq, label %bb.ik, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112, !prof !66

bb.ik:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yb) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112: ; preds = %bb.ik, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142.i, %bb.ig, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !901
  br label %bb.iv

bb.il:                                            ; preds = %bb.ib
  %i.yr = landingpad { ptr, i32 }
          cleanup
  br label %bb.in

bb.im:                                            ; preds = %bb.ie
  %i.ys = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #26
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il
  %.pn.i = phi { ptr, i32 } [ %i.ys, %bb.im ], [ %i.yr, %bb.il ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !901
  br label %bb.nb

bb.io:                                            ; preds = %._crit_edge.i
  %.not.i.i.i144.i = icmp eq i8 %i.wn, 3
  br i1 %.not.i.i.i144.i, label %_ZNK5arrow5Datum13chunked_arrayEv.exit.i84, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.yt = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.yt, align 8, !tbaa !96
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  store ptr @.str.6, ptr %i.yu, align 8, !tbaa !98
  invoke void @__cxa_throw(ptr nonnull %i.yt, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
          to label %.noexc145.i unwind label %bb.iq

.noexc145.i:                                      ; preds = %bb.ip
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit.i84:       ; preds = %bb.io
  %i.yv = load ptr, ptr %i.se, align 8, !tbaa !719, !noalias !901
  %i.yw = load ptr, ptr %i.wl, align 8, !tbaa !924, !noalias !901
  %i.yx = getelementptr inbounds i8, ptr %i.yw, i64 -24
  %i.yy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.yx, ptr noundef nonnull align 8 dereferenceable(24) %i.yv)
          to label %bb.iv unwind label %bb.iq     ; 0 uses

bb.iq:                                            ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit.i84, %bb.ip
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %bb.nb

bb.ir:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26, !noalias !901
  invoke void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %18, i8 noundef signext 3, ptr noundef nonnull align 1 dereferenceable(28) @.str.11)
          to label %_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i113 unwind label %bb.iu

_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i113: ; preds = %bb.ir
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(8) %18) #26
  %i.za = load ptr, ptr %18, align 8, !tbaa !106, !noalias !901 ; 2 uses
  %.not.i147.i = icmp eq ptr %i.za, null
  br i1 %.not.i147.i, label %_ZN5arrow6StatusD2Ev.exit148.i, label %bb.is, !prof !132

bb.is:                                            ; preds = %_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i113
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 1
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !402, !range !130, !noundef !131
  %i.zd = trunc nuw i8 %i.zc to i1
  br i1 %i.zd, label %_ZN5arrow6StatusD2Ev.exit148.i, label %bb.it

bb.it:                                            ; preds = %bb.is
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #26
  br label %_ZN5arrow6StatusD2Ev.exit148.i

_ZN5arrow6StatusD2Ev.exit148.i:                   ; preds = %bb.it, %bb.is, %_ZN5arrow6Status9TypeErrorIJRA28_KcEEES0_DpOT_.exit.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26, !noalias !901
  br label %bb.na

bb.iu:                                            ; preds = %bb.ir
  %i.ze = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26, !noalias !901
  br label %bb.nb

bb.iv:                                            ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit.i84, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i112
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26, !noalias !901
  invoke void @_ZN5arrow8internal25RechunkArraysConsistentlyERKSt6vectorIS1_ISt10shared_ptrINS_5ArrayEESaIS4_EESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.344") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.iw unwind label %bb.iz

bb.iw:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !901
  %i.zf = load ptr, ptr %15, align 8, !tbaa !917, !noalias !901
  %i.zg = load ptr, ptr %i.wl, align 8, !tbaa !921, !noalias !901
  %i.zh = load ptr, ptr %i.wk, align 8, !tbaa !920, !noalias !901
  %i.zi = load ptr, ptr %19, align 8, !tbaa !917, !noalias !901
  store ptr %i.zi, ptr %15, align 8, !tbaa !917, !noalias !901
  %i.zj = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !921, !noalias !901
  store ptr %i.zk, ptr %i.wl, align 8, !tbaa !921, !noalias !901
  %i.zl = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !920, !noalias !901
  store ptr %i.zm, ptr %i.wk, align 8, !tbaa !920, !noalias !901
  %i.zn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.zo = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.zf, ptr %10, align 8, !tbaa !917, !noalias !901
  store ptr %i.zg, ptr %i.zn, align 8, !tbaa !921, !noalias !901
  store ptr %i.zh, ptr %i.zo, align 8, !tbaa !920, !noalias !901
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false), !noalias !901
  call void @_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !901
  call void @_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26, !noalias !901
  %i.zp = load ptr, ptr %i.wl, align 8, !tbaa !924, !noalias !901 ; 2 uses
  %i.zq = getelementptr inbounds i8, ptr %i.zp, i64 -24
  %i.zr = getelementptr inbounds i8, ptr %i.zp, i64 -16
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !874
  %i.zt = load ptr, ptr %i.zq, align 8, !tbaa !870
  %i.zu = ptrtoint ptr %i.zs to i64
  %i.zv = ptrtoint ptr %i.zt to i64
  %i.zw = sub i64 %i.zu, %i.zv
  %i.zx = ashr exact i64 %i.zw, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26, !noalias !901
  %i.zy = sext i32 %i.vy to i64                   ; 4 uses
  %i.zz = icmp slt i32 %i.vy, 0
  br i1 %i.zz, label %bb.ix, label %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i

bb.ix:                                            ; preds = %bb.iw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
          to label %.noexc156.i unwind label %bb.ja

.noexc156.i:                                      ; preds = %bb.ix
  unreachable

_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i: ; preds = %bb.iw
  store i64 0, ptr %20, align 8, !noalias !901
  %.not.i.i.i.i150.i = icmp eq i32 %i.vy, 0       ; 3 uses
  br i1 %.not.i.i.i.i150.i, label %_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i, label %.lr.ph.preheader.i.i.i.i.i151.i

.lr.ph.preheader.i.i.i.i.i151.i:                  ; preds = %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i
  %i.aaa = mul nuw nsw i64 %i.zy, 24              ; 3 uses
  %i.aab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aaa) #29
          to label %.noexc157.i unwind label %bb.ja ; 4 uses

.noexc157.i:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i151.i
  store ptr %i.aab, ptr %20, align 8, !tbaa !917, !noalias !901
  %i.aac = getelementptr inbounds nuw [24 x i8], ptr %i.aab, i64 %i.zy
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aab, i8 0, i64 %i.aaa, i1 false)
  %scevgep.i.i.i.i.i152.i = getelementptr i8, ptr %i.aab, i64 %i.aaa
  br label %_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i

_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i: ; preds = %.noexc157.i, %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i
  %.sink.i153.i = phi ptr [ %i.aac, %.noexc157.i ], [ null, %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i ]
  %.0.lcssa.i.i.i.i.i154.i = phi ptr [ %scevgep.i.i.i.i.i152.i, %.noexc157.i ], [ null, %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i149.i ]
  %i.aad = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.aae = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %.sink.i153.i, ptr %i.aae, align 8, !tbaa !920, !noalias !901
  store ptr %.0.lcssa.i.i.i.i.i154.i, ptr %i.aad, align 8, !tbaa !921, !noalias !901
  %.not106288.i = icmp sgt i64 %i.zx, 0
  br i1 %.not106288.i, label %.lr.ph295.i, label %.thread.i

.lr.ph295.i:                                      ; preds = %_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i
  %i.aaf = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.aag = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.aah = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aai = getelementptr inbounds nuw i8, ptr %22, i64 104 ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %22, i64 112
  %i.aak = getelementptr inbounds nuw i8, ptr %22, i64 120
  %i.aal = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.aap = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.aaq = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.aar = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.aat = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.aau = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.aav = call i32 @llvm.umax.i32(i32 %i.vy, i32 1)
  %wide.trip.count309.i = zext nneg i32 %i.aav to i64
  br label %bb.jb

bb.iy:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i97
  %i.aaw = add nuw nsw i64 %.087290.i, 1          ; 2 uses
  %exitcond311.not.i = icmp eq i64 %i.aaw, %i.zx
  br i1 %exitcond311.not.i, label %.thread.i, label %bb.jb, !llvm.loop !926

bb.iz:                                            ; preds = %bb.iv
  %i.aax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26, !noalias !901
  br label %bb.nb

bb.ja:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i151.i, %bb.ix
  %i.aay = landingpad { ptr, i32 }
          cleanup
  br label %bb.mz

bb.jb:                                            ; preds = %bb.iy, %.lr.ph295.i
  %.087290.i = phi i64 [ 0, %.lr.ph295.i ], [ %i.aaw, %bb.iy ] ; 3 uses
  %.088289.i = phi i64 [ 0, %.lr.ph295.i ], [ %.492.i, %bb.iy ] ; 4 uses
  %i.aaz = load ptr, ptr %i.wl, align 8, !tbaa !924, !noalias !901
  %i.aba = getelementptr inbounds i8, ptr %i.aaz, i64 -24
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !870
  %i.abc = getelementptr inbounds nuw [16 x i8], ptr %i.abb, i64 %.087290.i
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !855
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26, !noalias !901
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26, !noalias !901
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %22, i8 0, i64 16, i1 false), !noalias !901
  store i64 -1, ptr %i.aaf, align 8, !tbaa !59, !noalias !901
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aag, i8 0, i64 104, i1 false), !noalias !901
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %22, ptr noundef nonnull align 8 dereferenceable(120) %i.abf)
          to label %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i88 unwind label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.abg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aai) #26
  br label %.body.i87

_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i88:  ; preds = %bb.jb
  %i.abh = load i32, ptr %i.aah, align 8, !tbaa !88, !noalias !901
  %i.abi = load ptr, ptr %4, align 8, !tbaa !366, !noalias !901
  invoke void @_ZN5arrow7compute8internal14GetTakeIndicesERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.234") align 8 %21, ptr noundef nonnull align 8 dereferenceable(128) %22, i32 noundef %i.abh, ptr noundef %i.abi)
          to label %bb.jd unwind label %bb.jg

bb.jd:                                            ; preds = %_ZN5arrow9ArraySpanC2ERKNS_9ArrayDataE.exit.i88
  %i.abj = load ptr, ptr %i.aai, align 8, !tbaa !105, !noalias !901 ; 3 uses
  %i.abk = load ptr, ptr %i.aaj, align 8, !tbaa !698, !noalias !901 ; 2 uses
  %.not.i1.i.i.i89 = icmp eq ptr %i.abj, %i.abk
  br i1 %.not.i1.i.i.i89, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i94, label %.lr.ph.i.i.i90

end_hunk_12
begin_hunk_13_@_ZNK5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE:bb.a
  %i.aev = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i181.i = icmp eq i8 %i.aev, 0
  br i1 %.not.i.i.i181.i, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.aew = add nsw i32 %i.aen, -1
  store i32 %i.aew, ptr %i.aek, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182.i

bb.kv:                                            ; preds = %bb.kt
  %i.aex = atomicrmw volatile add ptr %i.aek, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182.i: ; preds = %bb.kv, %bb.ku
  %.0.i.i.i.i183.i = phi i32 [ %i.aen, %bb.ku ], [ %i.aex, %bb.kv ]
  %i.aey = icmp eq i32 %.0.i.i.i.i183.i, 1
  br i1 %i.aey, label %bb.kw, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit184.i, !prof !66

bb.kw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aej) #26
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit184.i

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit184.i: ; preds = %bb.kw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i182.i, %bb.ks, %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26, !noalias !901
  br label %bb.kx

bb.kx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit184.i, %bb.jf
  %.492.i = phi i64 [ %.088289.i, %bb.jf ], [ %.391.i, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit184.i ] ; 2 uses
  %.485.i = phi i1 [ false, %bb.jf ], [ %.384.i, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit184.i ]
  %i.aez = load ptr, ptr %21, align 8, !tbaa !106, !noalias !901 ; 2 uses
  %i.afa = icmp eq ptr %i.aez, null
  br i1 %i.afa, label %bb.ky, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i96, !prof !132

bb.ky:                                            ; preds = %bb.kx
  %i.afb = load ptr, ptr %i.aan, align 8, !tbaa !352, !noalias !901 ; 8 uses
  %.not.i.i.i.i.i.i98 = icmp eq ptr %i.afb, null
  br i1 %.not.i.i.i.i.i.i98, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i97, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 8 ; 4 uses
  %i.afd = load atomic i64, ptr %i.afc acquire, align 8 ; 2 uses
  %i.afe = icmp eq i64 %i.afd, 4294967297
  %i.aff = trunc i64 %i.afd to i32                ; 2 uses
  br i1 %i.afe, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  store i32 0, ptr %i.afc, align 8, !tbaa !357
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afb, i64 12
  store i32 0, ptr %i.afg, align 4, !tbaa !359
  %i.afh = load ptr, ptr %i.afb, align 8, !tbaa !96
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 16
  %i.afj = load ptr, ptr %i.afi, align 8
  call void %i.afj(ptr noundef nonnull align 8 dereferenceable(16) %i.afb) #26, !inline_history !945
  %i.afk = load ptr, ptr %i.afb, align 8, !tbaa !96
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 24
  %i.afm = load ptr, ptr %i.afl, align 8
  call void %i.afm(ptr noundef nonnull align 8 dereferenceable(16) %i.afb) #26, !inline_history !945
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i102

bb.lb:                                            ; preds = %bb.kz
  %i.afn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i.i.i.i.i99 = icmp eq i8 %i.afn, 0
  br i1 %.not.i.i.i.i.i.i.i99, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.afo = add nsw i32 %i.aff, -1
  store i32 %i.afo, ptr %i.afc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i100

bb.ld:                                            ; preds = %bb.lb
  %i.afp = atomicrmw volatile add ptr %i.afc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i100

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i100: ; preds = %bb.ld, %bb.lc
  %.0.i.i.i.i.i.i.i.i101 = phi i32 [ %i.aff, %bb.lc ], [ %i.afp, %bb.ld ]
  %i.afq = icmp eq i32 %.0.i.i.i.i.i.i.i.i101, 1
  br i1 %i.afq, label %bb.le, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i102, !prof !66

bb.le:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i100
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.afb) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i102

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i102: ; preds = %bb.le, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i100, %bb.la
  %.pr.i185.pr.i = load ptr, ptr %21, align 8, !tbaa !106, !noalias !901 ; 2 uses
  %.not.i.i186.i = icmp eq ptr %.pr.i185.pr.i, null
  br i1 %.not.i.i186.i, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i97, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i96, !prof !456

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i96: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i102, %bb.kx
  %i.afr = phi ptr [ %.pr.i185.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i102 ], [ %i.aez, %bb.kx ]
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 1
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !402, !range !130, !noundef !131
  %i.afu = trunc nuw i8 %i.aft to i1
  br i1 %i.afu, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i97, label %bb.lf

bb.lf:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i96
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %21) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i97

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit.i97: ; preds = %bb.lf, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i.i96, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i.i102, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26, !noalias !901
  br i1 %.485.i, label %bb.iy, label %.loopexit259.i

.thread.i:                                        ; preds = %bb.iy, %_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i
  %.088.lcssa.i = phi i64 [ 0, %_ZNSt12_Vector_baseISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EESaIS6_EEC2EmRKS7_.exit.thread.i155.i ], [ %.492.i, %bb.iy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26, !noalias !901
  br i1 %.not.i.i.i.i150.i, label %.thread374.i, label %.lr.ph.preheader.i.i.i.i.i188.i

.thread374.i:                                     ; preds = %.thread.i
  %i.afv = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.afw = getelementptr inbounds nuw i8, ptr %30, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false), !noalias !901
  br label %._crit_edge300.i

.lr.ph.preheader.i.i.i.i.i188.i:                  ; preds = %.thread.i
  %i.afx = shl nuw nsw i64 %i.zy, 4               ; 3 uses
  %i.afy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afx) #29
          to label %.lr.ph299.i unwind label %bb.lj ; 4 uses

.lr.ph299.i:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i188.i
  store ptr %i.afy, ptr %30, align 8, !tbaa !909, !noalias !901
  %i.afz = getelementptr inbounds nuw [16 x i8], ptr %i.afy, i64 %i.zy
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.afy, i8 0, i64 %i.afx, i1 false)
  %scevgep.i.i.i.i.i189.i = getelementptr i8, ptr %i.afy, i64 %i.afx
  %i.aga = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  store ptr %i.afz, ptr %i.agb, align 8, !tbaa !911, !noalias !901
  store ptr %scevgep.i.i.i.i.i189.i, ptr %i.aga, align 8, !tbaa !906, !noalias !901
  %i.agc = getelementptr inbounds nuw i8, ptr %31, i64 8
  %wide.trip.count316.i = zext nneg i32 %i.vy to i64
  br label %bb.lk

._crit_edge300.i:                                 ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit211.i, %.thread374.i
  %i.agd = phi ptr [ %i.afw, %.thread374.i ], [ %i.agb, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit211.i ] ; 2 uses
  %i.age = phi ptr [ %i.afv, %.thread374.i ], [ %i.aga, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit211.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26, !noalias !901
  %i.agf = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.agg = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !352, !noalias !901 ; 2 uses
  %i.agi = load <2 x ptr>, ptr %i.vw, align 8, !tbaa !351, !noalias !901
  store <2 x ptr> %i.agi, ptr %33, align 16, !tbaa !351, !noalias !901
  %.not.i.i.i194.i = icmp eq ptr %i.agh, null
  br i1 %.not.i.i.i194.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit196.i, label %bb.lg

bb.lg:                                            ; preds = %._crit_edge300.i
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agh, i64 8 ; 3 uses
  %i.agk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i.i195.i = icmp eq i8 %i.agk, 0
  br i1 %.not.i.i.i.i195.i, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.agl = load i32, ptr %i.agj, align 4, !tbaa !3
  %i.agm = add nsw i32 %i.agl, 1
  store i32 %i.agm, ptr %i.agj, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit196.i

bb.li:                                            ; preds = %bb.lg
  %i.agn = atomicrmw volatile add ptr %i.agj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit196.i

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit196.i: ; preds = %bb.li, %bb.lh, %._crit_edge300.i
  %i.ago = load ptr, ptr %30, align 8, !tbaa !909, !noalias !901
  store ptr %i.ago, ptr %34, align 8, !tbaa !909, !noalias !901
  %i.agp = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.agq = load ptr, ptr %i.age, align 8, !tbaa !906, !noalias !901
  store ptr %i.agq, ptr %i.agp, align 8, !tbaa !906, !noalias !901
  %i.agr = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.ags = load ptr, ptr %i.agd, align 8, !tbaa !911, !noalias !901
  store ptr %i.ags, ptr %i.agr, align 8, !tbaa !911, !noalias !901
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false), !noalias !901
  invoke void @_ZN5arrow5Table4MakeESt10shared_ptrINS_6SchemaEESt6vectorIS1_INS_12ChunkedArrayEESaIS6_EEl(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.195") align 8 %32, ptr noundef nonnull %33, ptr noundef nonnull %34, i64 noundef %.088.lcssa.i)
          to label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit216.i unwind label %bb.mv

bb.lj:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i188.i
  %i.agt = landingpad { ptr, i32 }
          cleanup
  br label %bb.mx

bb.lk:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit211.i, %.lr.ph299.i
  %indvars.iv312.i = phi i64 [ 0, %.lr.ph299.i ], [ %indvars.iv.next313.i, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit211.i ] ; 4 uses
  %i.agu = load ptr, ptr %20, align 8, !tbaa !917, !noalias !901
  %i.agv = getelementptr inbounds nuw [24 x i8], ptr %i.agu, i64 %indvars.iv312.i
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26, !noalias !901
  %i.agw = load ptr, ptr %i.sd, align 8, !tbaa !96, !noalias !901
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 16
  %i.agy = load ptr, ptr %i.agx, align 8
  %i.agz = trunc nuw nsw i64 %indvars.iv312.i to i32
  invoke void %i.agy(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.183") align 8 %31, ptr noundef nonnull align 8 dereferenceable(32) %i.sd, i32 noundef %i.agz)
          to label %bb.ll unwind label %bb.ly

bb.ll:                                            ; preds = %bb.lk
  %i.aha = load ptr, ptr %31, align 8, !tbaa !719, !noalias !901
  %i.ahb = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #29
          to label %.noexc197.i unwind label %bb.lz ; 6 uses

.noexc197.i:                                      ; preds = %bb.ll
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8
  store i32 1, ptr %i.ahd, align 8, !tbaa !357, !noalias !946
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahb, i64 12
  store i32 1, ptr %i.ahe, align 4, !tbaa !359, !noalias !946
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ahb, align 8, !tbaa !96, !noalias !946
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEEvPT_DpOT0_(ptr noundef nonnull %i.ahf, ptr noundef nonnull align 8 dereferenceable(24) %i.agv, ptr noundef nonnull align 8 dereferenceable(16) %i.ahc)
          to label %_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !946

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc197.i
  %i.ahg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ahb, i64 noundef 104) #30, !noalias !946
  br label %.body198.i

_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit.i: ; preds = %.noexc197.i
  %i.ahh = load ptr, ptr %30, align 8, !tbaa !909, !noalias !901
  %i.ahi = getelementptr inbounds nuw [16 x i8], ptr %i.ahh, i64 %indvars.iv312.i ; 2 uses
  store ptr %i.ahf, ptr %i.ahi, align 8, !tbaa !949
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8 ; 2 uses
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !352 ; 8 uses
  store ptr %i.ahb, ptr %i.ahj, align 8, !tbaa !352
  %.not.i.i.i.i200.i = icmp eq ptr %i.ahk, null
  br i1 %.not.i.i.i.i200.i, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206.i, label %bb.lm

bb.lm:                                            ; preds = %_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit.i
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 8 ; 4 uses
  %i.ahm = load atomic i64, ptr %i.ahl acquire, align 8 ; 2 uses
  %i.ahn = icmp eq i64 %i.ahm, 4294967297
  %i.aho = trunc i64 %i.ahm to i32                ; 2 uses
  br i1 %i.ahn, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  store i32 0, ptr %i.ahl, align 8, !tbaa !357
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahk, i64 12
  store i32 0, ptr %i.ahp, align 4, !tbaa !359
  %i.ahq = load ptr, ptr %i.ahk, align 8, !tbaa !96
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 16
  %i.ahs = load ptr, ptr %i.ahr, align 8
  call void %i.ahs(ptr noundef nonnull align 8 dereferenceable(16) %i.ahk) #26, !inline_history !950
  %i.aht = load ptr, ptr %i.ahk, align 8, !tbaa !96
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 24
  %i.ahv = load ptr, ptr %i.ahu, align 8
  call void %i.ahv(ptr noundef nonnull align 8 dereferenceable(16) %i.ahk) #26, !inline_history !950
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206.i

bb.lo:                                            ; preds = %bb.lm
  %i.ahw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i.i.i201.i = icmp eq i8 %i.ahw, 0
  br i1 %.not.i.i.i.i.i201.i, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.ahx = add nsw i32 %i.aho, -1
  store i32 %i.ahx, ptr %i.ahl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i85

bb.lq:                                            ; preds = %bb.lo
  %i.ahy = atomicrmw volatile add ptr %i.ahl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i85: ; preds = %bb.lq, %bb.lp
  %.0.i.i.i.i.i.i.i86 = phi i32 [ %i.aho, %bb.lp ], [ %i.ahy, %bb.lq ]
  %i.ahz = icmp eq i32 %.0.i.i.i.i.i.i.i86, 1
  br i1 %i.ahz, label %bb.lr, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206.i, !prof !66

bb.lr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ahk) #26
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206.i

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206.i: ; preds = %bb.lr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i85, %bb.ln, %_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_IT_EDpOT0_.exit.i
  %i.aia = load ptr, ptr %i.agc, align 8, !tbaa !352, !noalias !901 ; 8 uses
  %.not.i.i207.i = icmp eq ptr %i.aia, null
  br i1 %.not.i.i207.i, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit211.i, label %bb.ls

bb.ls:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206.i
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 8 ; 4 uses
  %i.aic = load atomic i64, ptr %i.aib acquire, align 8 ; 2 uses
  %i.aid = icmp eq i64 %i.aic, 4294967297
  %i.aie = trunc i64 %i.aic to i32                ; 2 uses
  br i1 %i.aid, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  store i32 0, ptr %i.aib, align 8, !tbaa !357
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aia, i64 12
  store i32 0, ptr %i.aif, align 4, !tbaa !359
  %i.aig = load ptr, ptr %i.aia, align 8, !tbaa !96
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  %i.aii = load ptr, ptr %i.aih, align 8
  call void %i.aii(ptr noundef nonnull align 8 dereferenceable(16) %i.aia) #26, !inline_history !922
  %i.aij = load ptr, ptr %i.aia, align 8, !tbaa !96
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 24
  %i.ail = load ptr, ptr %i.aik, align 8
  call void %i.ail(ptr noundef nonnull align 8 dereferenceable(16) %i.aia) #26, !inline_history !922
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit211.i

bb.lu:                                            ; preds = %bb.ls
  %i.aim = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i208.i = icmp eq i8 %i.aim, 0
  br i1 %.not.i.i.i208.i, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.ain = add nsw i32 %i.aie, -1
  store i32 %i.ain, ptr %i.aib, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i209.i

bb.lw:                                            ; preds = %bb.lu
  %i.aio = atomicrmw volatile add ptr %i.aib, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i209.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i209.i: ; preds = %bb.lw, %bb.lv
  %.0.i.i.i.i210.i = phi i32 [ %i.aie, %bb.lv ], [ %i.aio, %bb.lw ]
  %i.aip = icmp eq i32 %.0.i.i.i.i210.i, 1
  br i1 %i.aip, label %bb.lx, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit211.i, !prof !66

bb.lx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i209.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aia) #26
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit211.i

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit211.i: ; preds = %bb.lx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i209.i, %bb.lt, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit206.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26, !noalias !901
  %indvars.iv.next313.i = add nuw nsw i64 %indvars.iv312.i, 1 ; 2 uses
  %exitcond317.not.i = icmp eq i64 %indvars.iv.next313.i, %wide.trip.count316.i
  br i1 %exitcond317.not.i, label %._crit_edge300.i, label %bb.lk, !llvm.loop !951

bb.ly:                                            ; preds = %bb.lk
  %i.aiq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ma

bb.lz:                                            ; preds = %bb.ll
  %i.air = landingpad { ptr, i32 }
          cleanup
  br label %.body198.i

.body198.i:                                       ; preds = %bb.lz, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i
  %eh.lpad-body199.i = phi { ptr, i32 } [ %i.air, %bb.lz ], [ %i.ahg, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %31) #26
  br label %bb.ma

bb.ma:                                            ; preds = %.body198.i, %bb.ly
  %.pn107.i = phi { ptr, i32 } [ %eh.lpad-body199.i, %.body198.i ], [ %i.aiq, %bb.ly ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26, !noalias !901
  br label %bb.mw

_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit216.i: ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit196.i
  store ptr null, ptr %68, align 8, !tbaa !106, !alias.scope !901
  %i.ais = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.ait = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.aiu = load <2 x ptr>, ptr %32, align 16, !tbaa !351, !noalias !901
  store ptr null, ptr %i.ait, align 8, !tbaa !352, !noalias !901
  store <2 x ptr> %i.aiu, ptr %i.ais, align 8, !tbaa !351, !alias.scope !901
  store ptr null, ptr %32, align 16, !tbaa !727, !noalias !901
  %i.aiv = load ptr, ptr %34, align 8, !tbaa !909, !noalias !901 ; 3 uses
  %i.aiw = load ptr, ptr %i.agp, align 8, !tbaa !906, !noalias !901 ; 2 uses
  %.not4.i.i.i217.i = icmp eq ptr %i.aiv, %i.aiw
  br i1 %.not4.i.i.i217.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i228.i, label %.lr.ph.i.i.i218.i

.lr.ph.i.i.i218.i:                                ; preds = %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit216.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i224.i
  %.05.i.i.i219.i = phi ptr [ %i.ajo, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i224.i ], [ %i.aiv, %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit216.i ] ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %.05.i.i.i219.i, i64 8
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i.i.i.i.i220.i = icmp eq ptr %i.aiy, null
  br i1 %.not.i.i.i.i.i.i.i220.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i224.i, label %bb.mb

bb.mb:                                            ; preds = %.lr.ph.i.i.i218.i
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8 ; 4 uses
  %i.aja = load atomic i64, ptr %i.aiz acquire, align 8 ; 2 uses
  %i.ajb = icmp eq i64 %i.aja, 4294967297
  %i.ajc = trunc i64 %i.aja to i32                ; 2 uses
  br i1 %i.ajb, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  store i32 0, ptr %i.aiz, align 8, !tbaa !357
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aiy, i64 12
  store i32 0, ptr %i.ajd, align 4, !tbaa !359
  %i.aje = load ptr, ptr %i.aiy, align 8, !tbaa !96
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 16
  %i.ajg = load ptr, ptr %i.ajf, align 8
  call void %i.ajg(ptr noundef nonnull align 8 dereferenceable(16) %i.aiy) #26, !inline_history !913
  %i.ajh = load ptr, ptr %i.aiy, align 8, !tbaa !96
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 24
  %i.ajj = load ptr, ptr %i.aji, align 8
  call void %i.ajj(ptr noundef nonnull align 8 dereferenceable(16) %i.aiy) #26, !inline_history !913
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i224.i

bb.md:                                            ; preds = %bb.mb
  %i.ajk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !901
  %.not.i.i.i.i.i.i.i.i221.i = icmp eq i8 %i.ajk, 0
  br i1 %.not.i.i.i.i.i.i.i.i221.i, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.ajl = add nsw i32 %i.ajc, -1
  store i32 %i.ajl, ptr %i.aiz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i222.i

bb.mf:                                            ; preds = %bb.md
  %i.ajm = atomicrmw volatile add ptr %i.aiz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i222.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i222.i: ; preds = %bb.mf, %bb.me
  %.0.i.i.i.i.i.i.i.i.i223.i = phi i32 [ %i.ajc, %bb.me ], [ %i.ajm, %bb.mf ]
  %i.ajn = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i223.i, 1
  br i1 %i.ajn, label %bb.mg, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i224.i, !prof !66

bb.mg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i222.i
end_hunk_13
