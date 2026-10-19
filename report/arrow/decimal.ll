Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/decimal?download=true
inline.NumInlined: 1554
inline.NumDeleted: 561
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5arrow9Decimal6410FromStringEPKc:bb.a
bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !32, !range !33, !noundef !34
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN5arrow6StatusD2Ev.exit5.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %_ZN5arrow6StatusD2Ev.exit5.i

_ZN5arrow6StatusD2Ev.exit5.i:                     ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !242
  br label %_ZN5arrow9Decimal6410FromStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5arrow6StatusD2Ev.exit9.i:                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !242
  store ptr null, ptr %0, align 8, !tbaa !14, !alias.scope !242
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %2, align 8, !noalias !242
  store i64 %i.i, ptr %i.h, align 8, !alias.scope !242
  br label %_ZN5arrow9Decimal6410FromStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5arrow9Decimal6410FromStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit5.i, %_ZN5arrow6StatusD2Ev.exit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !242
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10Decimal12810FromStringESt17basic_string_viewIcSt11char_traitsIcEEPS0_PiS6_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i64 %1, ptr %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %12 = alloca %"struct.arrow::(anonymous namespace)::DecimalComponents", align 8 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %1, ptr %11, align 8, !noalias !259
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !259
  store ptr @.str.10, ptr %i.c, align 8, !tbaa !47, !noalias !259
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !260
  call void @_ZN5arrow8internal12JoinToStringIJRA37_KcRPS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 1 dereferenceable(37) @.str.42, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !260
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %10, align 8, !tbaa !21, !noalias !260 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5arrow6Status7InvalidIJRA37_KcRPS2_EEES0_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !38, !noalias !260
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZN5arrow6Status7InvalidIJRA37_KcRPS2_EEES0_DpOT_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %10, align 8, !tbaa !21, !noalias !260 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !260
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i, %.split.us.i43.i, %.split.us.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i ], [ %i.bn, %.split.us.i.i ], [ %i.cc, %.split.us.i43.i ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !260
  br label %common.resume.i

_ZN5arrow6Status7InvalidIJRA37_KcRPS2_EEES0_DpOT_.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !260
  br label %_ZN5arrow12_GLOBAL__N_117DecimalFromStringINS_10Decimal128EEENS_6StatusEPKcSt17basic_string_viewIcSt11char_traitsIcEEPT_PiSC_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !259
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %12, i8 0, i64 38, i1 false), !noalias !259
  %i.q = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_122ParseDecimalComponentsEPKcmPNS0_17DecimalComponentsE(ptr noundef %2, i64 noundef %1, ptr noundef %12), !noalias !259
  br i1 %i.q, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !261
  call void @_ZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(13) @.str.43, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(18) @.str.44, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(8) @.str.45), !noalias !261
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %9, align 8, !tbaa !21, !noalias !261 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEES0_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35.i: ; preds = %bb.g
  %i.u = load i64, ptr %i.s, align 8, !tbaa !38, !noalias !261
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEES0_DpOT_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %9, align 8, !tbaa !21, !noalias !261 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i: ; preds = %bb.h
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !38, !noalias !261
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !261
  br label %common.resume.i

_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEES0_DpOT_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !261
  br label %bb.ae

bb.i:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %12, align 8, !tbaa !49, !noalias !259 ; 5 uses
  %.not6.i = icmp eq i64 %i.ac, 0                 ; 2 uses
  br i1 %.not6.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50, !noalias !259
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.06.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ai, %bb.k ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.06.i.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !38, !noalias !259
  %i.ah = icmp eq i8 %i.ag, 48
  br i1 %i.ah, label %bb.k, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ai = add nuw i64 %.06.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ai, %i.ac
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread.i, label %bb.j, !llvm.loop !1

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread.i: ; preds = %bb.k, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !49, !noalias !259 ; 2 uses
  br label %bb.m

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i: ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !49, !noalias !259 ; 4 uses
  %.not.i = icmp eq i64 %.06.i.i, -1
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i
  %i.an = sub i64 %i.ac, %.06.i.i
  %i.ao = add i64 %i.an, %i.am
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread.i
  %i.ap = phi i64 [ %i.am, %bb.l ], [ %i.am, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i ], [ %i.ak, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread.i ] ; 2 uses
  %i.aq = phi ptr [ %i.al, %bb.l ], [ %i.al, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i ], [ %i.aj, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread.i ]
  %.0.i = phi i64 [ %i.ao, %bb.l ], [ %i.am, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i ], [ %i.ak, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread.i ]
  %i.ar = trunc i64 %.0.i to i32                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 37
  %i.at = load i8, ptr %i.as, align 1, !tbaa !52, !range !33, !noalias !259, !noundef !34
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !noalias !259
  %i.ax = trunc i64 %i.ap to i32
  %i.ay = select i1 %i.au, i32 %i.aw, i32 0
  %.025.i = sub nsw i32 %i.ax, %i.ay              ; 5 uses
  %.not32.i = icmp eq ptr %3, null                ; 2 uses
  br i1 %.not32.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.24.0.copyload.i = load ptr, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !47, !noalias !259
  br i1 %.not6.i, label %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i, label %.lr.ph34.split.us.i.i

.lr.ph34.split.us.i.i:                            ; preds = %bb.n, %.critedge27.us.i.i
  %.sroa.0.0.i = phi i64 [ %16, %.critedge27.us.i.i ], [ 0, %bb.n ]
  %.sroa.8.0.i = phi i64 [ %i.bk, %.critedge27.us.i.i ], [ 0, %bb.n ]
  %.032.us.i.i = phi i64 [ %i.bl, %.critedge27.us.i.i ], [ 0, %bb.n ] ; 3 uses
  %i.az = sub nuw i64 %i.ac, %.032.us.i.i
  %.sroa.speculated.us.i.i = call i64 @llvm.umin.i64(i64 %i.az, i64 18) ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrowL18kUInt64PowersOfTenE, i64 %.sroa.speculated.us.i.i
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !45, !noalias !259 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !259
  store i64 0, ptr %i.b, align 8, !tbaa !45, !noalias !259
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.24.0.copyload.i, i64 %.032.us.i.i
  %i.bd = call noundef zeroext i1 @_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE(ptr noundef %i.bc, i64 noundef %.sroa.speculated.us.i.i, ptr noundef nonnull %i.b), !noalias !259
  br i1 %i.bd, label %.critedge27.us.i.i, label %bb.o, !prof !23

bb.o:                                             ; preds = %.lr.ph34.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !259
  call void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %8, ptr noundef nonnull @.str.49, i32 noundef 777, i32 noundef 3), !noalias !259
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA90_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(90) @.str.50)
          to label %.critedge.us.i.i unwind label %.split.us.i.i, !noalias !259 ; 0 uses

.critedge.us.i.i:                                 ; preds = %bb.o
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %8) #26, !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !259
  br label %.critedge27.us.i.i

.critedge27.us.i.i:                               ; preds = %.critedge.us.i.i, %.lr.ph34.split.us.i.i
  %.promoted.us.i.i = load i64, ptr %i.b, align 8, !noalias !259
  %i.bf = zext i64 %i.bb to i128
  %i.bg = zext i64 %.sroa.8.0.i to i128
  %i.bh = mul nuw i128 %i.bf, %i.bg
  %i.bi = zext i64 %.promoted.us.i.i to i128
  %i.bj = add nuw i128 %i.bh, %i.bi               ; 2 uses
  %i.bk = trunc i128 %i.bj to i64                 ; 2 uses
  %13 = mul i64 %i.bb, %.sroa.0.0.i
  %14 = lshr i128 %i.bj, 64
  %15 = trunc nuw i128 %14 to i64
  %16 = add i64 %13, %15                          ; 2 uses
  %i.bl = add i64 %.sroa.speculated.us.i.i, %.032.us.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !259
  %i.bm = icmp ult i64 %i.bl, %i.ac
  br i1 %i.bm, label %.lr.ph34.split.us.i.i, label %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i, !llvm.loop !2

.split.us.i.i:                                    ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %8) #26, !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !259
  br label %common.resume.i

_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i: ; preds = %.critedge27.us.i.i
  %.sroa.01.0.copyload.pre.i = load i64, ptr %i.aq, align 8, !tbaa !45, !noalias !259
  br label %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i

_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i: ; preds = %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i, %bb.n
  %.sroa.01.0.copyload.i = phi i64 [ %i.ap, %bb.n ], [ %.sroa.01.0.copyload.pre.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ 0, %bb.n ], [ %16, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i ] ; 2 uses
  %.sroa.8.1.i = phi i64 [ 0, %bb.n ], [ %i.bk, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i ] ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !47, !noalias !259
  %.not.i38.i = icmp eq i64 %.sroa.01.0.copyload.i, 0
  br i1 %.not.i38.i, label %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit50.i, label %.lr.ph34.split.us.i40.i

.lr.ph34.split.us.i40.i:                          ; preds = %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i, %.critedge27.us.i45.i
  %.sroa.0.2.i = phi i64 [ %20, %.critedge27.us.i45.i ], [ %.sroa.0.1.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ]
  %.sroa.8.2.i = phi i64 [ %i.bz, %.critedge27.us.i45.i ], [ %.sroa.8.1.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ]
  %.032.us.i41.i = phi i64 [ %i.ca, %.critedge27.us.i45.i ], [ 0, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ] ; 3 uses
  %i.bo = sub nuw i64 %.sroa.01.0.copyload.i, %.032.us.i41.i
  %.sroa.speculated.us.i42.i = call i64 @llvm.umin.i64(i64 %i.bo, i64 18) ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrowL18kUInt64PowersOfTenE, i64 %.sroa.speculated.us.i42.i
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !45, !noalias !259 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !259
  store i64 0, ptr %i.a, align 8, !tbaa !45, !noalias !259
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 %.032.us.i41.i
  %i.bs = call noundef zeroext i1 @_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE(ptr noundef %i.br, i64 noundef %.sroa.speculated.us.i42.i, ptr noundef nonnull %i.a), !noalias !259
  br i1 %i.bs, label %.critedge27.us.i45.i, label %bb.p, !prof !23

bb.p:                                             ; preds = %.lr.ph34.split.us.i40.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !259
  call void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef nonnull @.str.49, i32 noundef 777, i32 noundef 3), !noalias !259
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA90_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(90) @.str.50)
          to label %.critedge.us.i44.i unwind label %.split.us.i43.i, !noalias !259 ; 0 uses

.critedge.us.i44.i:                               ; preds = %bb.p
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %7) #26, !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !259
  br label %.critedge27.us.i45.i

.critedge27.us.i45.i:                             ; preds = %.critedge.us.i44.i, %.lr.ph34.split.us.i40.i
  %.promoted.us.i46.i = load i64, ptr %i.a, align 8, !noalias !259
  %i.bu = zext i64 %i.bq to i128
  %i.bv = zext i64 %.sroa.8.2.i to i128
  %i.bw = mul nuw i128 %i.bu, %i.bv
  %i.bx = zext i64 %.promoted.us.i46.i to i128
  %i.by = add nuw i128 %i.bw, %i.bx               ; 2 uses
  %i.bz = trunc i128 %i.by to i64                 ; 2 uses
  %17 = mul i64 %i.bq, %.sroa.0.2.i
  %18 = lshr i128 %i.by, 64
  %19 = trunc nuw i128 %18 to i64
  %20 = add i64 %17, %19                          ; 2 uses
  %i.ca = add i64 %.sroa.speculated.us.i42.i, %.032.us.i41.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !259
  %i.cb = icmp ult i64 %i.ca, %.sroa.01.0.copyload.i
  br i1 %i.cb, label %.lr.ph34.split.us.i40.i, label %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit50.i, !llvm.loop !2

.split.us.i43.i:                                  ; preds = %bb.p
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %7) #26, !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !259
  br label %common.resume.i

_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit50.i: ; preds = %.critedge27.us.i45.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i
  %.sroa.0.3.i = phi i64 [ %.sroa.0.1.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ], [ %20, %.critedge27.us.i45.i ]
  %.sroa.8.3.i = phi i64 [ %.sroa.8.1.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ], [ %i.bz, %.critedge27.us.i45.i ]
  store i64 %.sroa.8.3.i, ptr %3, align 8, !noalias !259
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.0.3.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !259
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !53, !noalias !259
  %i.cf = icmp eq i8 %i.ce, 45
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit50.i
  %i.cg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1286NegateEv(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !259 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit50.i, %bb.m
  %i.ch = icmp slt i32 %.025.i, 0
  br i1 %i.ch, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.ci = sub nsw i32 0, %.025.i
  %i.cj = icmp samesign ult i32 %.025.i, -38
  br i1 %i.cj, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !262
  call void @_ZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(13) @.str.43, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(28) @.str.46, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !262
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ck = load ptr, ptr %6, align 8, !tbaa !21, !noalias !262 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEES0_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51.i: ; preds = %bb.u
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !38, !noalias !262
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #27
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEES0_DpOT_.exit.i

bb.v:                                             ; preds = %bb.t
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = load ptr, ptr %6, align 8, !tbaa !21, !noalias !262 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i: ; preds = %bb.v
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !38, !noalias !262
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !262
  br label %common.resume.i

_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEES0_DpOT_.exit.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !262
  br label %bb.ae

bb.w:                                             ; preds = %bb.s
  br i1 %.not32.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal12818GetScaleMultiplierEi(i32 noundef %i.ci), !noalias !259
  %i.cw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128mLERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cv), !noalias !259 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cx = sub nsw i32 %i.ar, %.025.i
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.r
  %.1.i = phi i32 [ 0, %bb.y ], [ %.025.i, %bb.r ]
  %.024.i = phi i32 [ %i.cx, %bb.y ], [ %i.ar, %bb.r ]
  %.not33.i = icmp eq ptr %4, null
  br i1 %.not33.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 %.024.i, ptr %4, align 4, !tbaa !10, !noalias !259
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not34.i = icmp eq ptr %5, null
  br i1 %.not34.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 %.1.i, ptr %5, align 4, !tbaa !10, !noalias !259
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store ptr null, ptr %0, align 8, !tbaa !14, !alias.scope !263
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEES0_DpOT_.exit.i, %_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEES0_DpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !259
  br label %_ZN5arrow12_GLOBAL__N_117DecimalFromStringINS_10Decimal128EEENS_6StatusEPKcSt17basic_string_viewIcSt11char_traitsIcEEPT_PiSC_.exit

_ZN5arrow12_GLOBAL__N_117DecimalFromStringINS_10Decimal128EEENS_6StatusEPKcSt17basic_string_viewIcSt11char_traitsIcEEPT_PiSC_.exit: ; preds = %_ZN5arrow6Status7InvalidIJRA37_KcRPS2_EEES0_DpOT_.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10Decimal12810FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_PiSA_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22
  tail call void @_ZN5arrow10Decimal12810FromStringESt17basic_string_viewIcSt11char_traitsIcEEPS0_PiS6_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i64 %i.c, ptr %i.a, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10Decimal12810FromStringEPKcPS0_PiS4_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  tail call void @_ZN5arrow10Decimal12810FromStringESt17basic_string_viewIcSt11char_traitsIcEEPS0_PiS6_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i64 %i.a, ptr nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10Decimal12810FromStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.11") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %3 = alloca %"class.arrow::Decimal128", align 8 ; 5 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN5arrow10Decimal12810FromStringESt17basic_string_viewIcSt11char_traitsIcEEPS0_PiS6_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null)
  %i.a = load ptr, ptr %5, align 8, !tbaa !14     ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN5arrow6StatusD2Ev.exit9, label %bb.a, !prof !23

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultINS_10Decimal128EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.c = load ptr, ptr %4, align 8, !tbaa !14     ; 2 uses
  %.not.i4 = icmp eq ptr %i.c, null
  br i1 %.not.i4, label %_ZN5arrow6StatusD2Ev.exit5, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !32, !range !33, !noundef !34
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit5, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit5

_ZN5arrow6StatusD2Ev.exit5:                       ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.d

_ZN5arrow6StatusD2Ev.exit9:                       ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  store ptr null, ptr %0, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit5, %_ZN5arrow6StatusD2Ev.exit9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_10Decimal128EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !14
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !14
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !46

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h
end_hunk_0
