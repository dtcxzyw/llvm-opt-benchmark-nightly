Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/decimal?download=true
inline.NumInlined: 1554
inline.NumDeleted: 561
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow9Decimal6410FromStringEPKc:bb.a
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
  %common.resume.op.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i ], [ %i.bo, %.split.us.i.i ], [ %i.ce, %.split.us.i43.i ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i ]
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
  %.sroa.0.0.i = phi i64 [ %i.bk, %.critedge27.us.i.i ], [ 0, %bb.n ]
  %.sroa.8.0.i = phi i64 [ %15, %.critedge27.us.i.i ], [ 0, %bb.n ]
  %.032.us.i.i = phi i64 [ %i.bm, %.critedge27.us.i.i ], [ 0, %bb.n ] ; 3 uses
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
  %i.bg = zext i64 %.sroa.0.0.i to i128
  %i.bh = mul nuw i128 %i.bf, %i.bg
  %i.bi = zext i64 %.promoted.us.i.i to i128
  %i.bj = add nuw i128 %i.bh, %i.bi               ; 2 uses
  %i.bk = trunc i128 %i.bj to i64                 ; 2 uses
  %i.bl = lshr i128 %i.bj, 64
  %13 = mul i64 %i.bb, %.sroa.8.0.i
  %14 = trunc nuw i128 %i.bl to i64
  %15 = add i64 %13, %14                          ; 2 uses
  %i.bm = add i64 %.sroa.speculated.us.i.i, %.032.us.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !259
  %i.bn = icmp ult i64 %i.bm, %i.ac
  br i1 %i.bn, label %.lr.ph34.split.us.i.i, label %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i, !llvm.loop !2

.split.us.i.i:                                    ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
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
  %.sroa.0.1.i = phi i64 [ 0, %bb.n ], [ %i.bk, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i ] ; 2 uses
  %.sroa.8.1.i = phi i64 [ 0, %bb.n ], [ %15, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i ] ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !47, !noalias !259
  %.not.i38.i = icmp eq i64 %.sroa.01.0.copyload.i, 0
  br i1 %.not.i38.i, label %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit50.i, label %.lr.ph34.split.us.i40.i

.lr.ph34.split.us.i40.i:                          ; preds = %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i, %.critedge27.us.i45.i
  %.sroa.0.2.i = phi i64 [ %i.ca, %.critedge27.us.i45.i ], [ %.sroa.0.1.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ]
  %.sroa.8.2.i = phi i64 [ %18, %.critedge27.us.i45.i ], [ %.sroa.8.1.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ]
  %.032.us.i41.i = phi i64 [ %i.cc, %.critedge27.us.i45.i ], [ 0, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ] ; 3 uses
  %i.bp = sub nuw i64 %.sroa.01.0.copyload.i, %.032.us.i41.i
  %.sroa.speculated.us.i42.i = call i64 @llvm.umin.i64(i64 %i.bp, i64 18) ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrowL18kUInt64PowersOfTenE, i64 %.sroa.speculated.us.i42.i
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !45, !noalias !259 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !259
  store i64 0, ptr %i.a, align 8, !tbaa !45, !noalias !259
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 %.032.us.i41.i
  %i.bt = call noundef zeroext i1 @_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE(ptr noundef %i.bs, i64 noundef %.sroa.speculated.us.i42.i, ptr noundef nonnull %i.a), !noalias !259
  br i1 %i.bt, label %.critedge27.us.i45.i, label %bb.p, !prof !23

bb.p:                                             ; preds = %.lr.ph34.split.us.i40.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !259
  call void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef nonnull @.str.49, i32 noundef 777, i32 noundef 3), !noalias !259
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA90_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(90) @.str.50)
          to label %.critedge.us.i44.i unwind label %.split.us.i43.i, !noalias !259 ; 0 uses

.critedge.us.i44.i:                               ; preds = %bb.p
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %7) #26, !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !259
  br label %.critedge27.us.i45.i

.critedge27.us.i45.i:                             ; preds = %.critedge.us.i44.i, %.lr.ph34.split.us.i40.i
  %.promoted.us.i46.i = load i64, ptr %i.a, align 8, !noalias !259
  %i.bv = zext i64 %i.br to i128
  %i.bw = zext i64 %.sroa.0.2.i to i128
  %i.bx = mul nuw i128 %i.bv, %i.bw
  %i.by = zext i64 %.promoted.us.i46.i to i128
  %i.bz = add nuw i128 %i.bx, %i.by               ; 2 uses
  %i.ca = trunc i128 %i.bz to i64                 ; 2 uses
  %i.cb = lshr i128 %i.bz, 64
  %16 = mul i64 %i.br, %.sroa.8.2.i
  %17 = trunc nuw i128 %i.cb to i64
  %18 = add i64 %16, %17                          ; 2 uses
  %i.cc = add i64 %.sroa.speculated.us.i42.i, %.032.us.i41.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !259
  %i.cd = icmp ult i64 %i.cc, %.sroa.01.0.copyload.i
  br i1 %i.cd, label %.lr.ph34.split.us.i40.i, label %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit50.i, !llvm.loop !2

.split.us.i43.i:                                  ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %7) #26, !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !259
  br label %common.resume.i

_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit50.i: ; preds = %.critedge27.us.i45.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i
  %.sroa.0.3.i = phi i64 [ %.sroa.0.1.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ], [ %i.ca, %.critedge27.us.i45.i ]
  %.sroa.8.3.i = phi i64 [ %.sroa.8.1.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ], [ %18, %.critedge27.us.i45.i ]
  store i64 %.sroa.0.3.i, ptr %3, align 8, !noalias !259
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.8.3.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !259
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !53, !noalias !259
  %i.ch = icmp eq i8 %i.cg, 45
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit50.i
  %i.ci = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1286NegateEv(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !259 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit50.i, %bb.m
  %i.cj = icmp slt i32 %.025.i, 0
  br i1 %i.cj, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.ck = sub nsw i32 0, %.025.i
  %i.cl = icmp samesign ult i32 %.025.i, -38
  br i1 %i.cl, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !262
  call void @_ZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(13) @.str.43, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(28) @.str.46, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !262
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cm = load ptr, ptr %6, align 8, !tbaa !21, !noalias !262 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEES0_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51.i: ; preds = %bb.u
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !38, !noalias !262
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #27
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEES0_DpOT_.exit.i

bb.v:                                             ; preds = %bb.t
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %6, align 8, !tbaa !21, !noalias !262 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i: ; preds = %bb.v
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !38, !noalias !262
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #27
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
  %i.cx = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal12818GetScaleMultiplierEi(i32 noundef %i.ck), !noalias !259
  %i.cy = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128mLERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.cx), !noalias !259 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cz = sub nsw i32 %i.ar, %.025.i
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.r
  %.1.i = phi i32 [ 0, %bb.y ], [ %.025.i, %bb.r ]
  %.024.i = phi i32 [ %i.cz, %bb.y ], [ %i.ar, %bb.r ]
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

end_hunk_0
begin_hunk_1_@_ZNK5arrow10Decimal2568ToStringB5cxx11Ei:bb.a
  %i.o = load i64, ptr %i.c, align 8, !tbaa !38
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.p) #27
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.n, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %bb.m ], [ %i.q, %bb.n ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZNK5arrow10Decimal25615ToIntegerStringB5cxx11Ev.exit: ; preds = %bb.f, %bb.k
  invoke fastcc void @_ZN5arrowL28AdjustIntegerStringWithScaleEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %2, ptr noundef nonnull %0)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_ZNK5arrow10Decimal25615ToIntegerStringB5cxx11Ev.exit
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.c
  br i1 %i.s, label %common.resume, label %common.resume.sink.split

bb.o:                                             ; preds = %_ZNK5arrow10Decimal25615ToIntegerStringB5cxx11Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10Decimal25610FromStringESt17basic_string_viewIcSt11char_traitsIcEEPS0_PiS6_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i64 %1, ptr %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %1, ptr %11, align 8, !noalias !312
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %2, ptr %i.d, align 8, !noalias !312
  store ptr @.str.18, ptr %i.c, align 8, !tbaa !47, !noalias !312
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !313
  call void @_ZN5arrow8internal12JoinToStringIJRA37_KcRPS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 1 dereferenceable(37) @.str.42, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !313
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %10, align 8, !tbaa !21, !noalias !313 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5arrow6Status7InvalidIJRA37_KcRPS2_EEES0_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !38, !noalias !313
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZN5arrow6Status7InvalidIJRA37_KcRPS2_EEES0_DpOT_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %10, align 8, !tbaa !21, !noalias !313 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !313
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i, %.split.us.i41.i, %.split.us.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i ], [ %i.by, %.split.us.i.i ], [ %i.cy, %.split.us.i41.i ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !313
  br label %common.resume.i

_ZN5arrow6Status7InvalidIJRA37_KcRPS2_EEES0_DpOT_.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !313
  br label %_ZN5arrow12_GLOBAL__N_117DecimalFromStringINS_10Decimal256EEENS_6StatusEPKcSt17basic_string_viewIcSt11char_traitsIcEEPT_PiSC_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %12, i8 0, i64 38, i1 false), !noalias !312
  %i.q = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_122ParseDecimalComponentsEPKcmPNS0_17DecimalComponentsE(ptr noundef %2, i64 noundef %1, ptr noundef %12), !noalias !312
  br i1 %i.q, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !314
  call void @_ZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(13) @.str.43, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(18) @.str.44, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(8) @.str.45), !noalias !314
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %9, align 8, !tbaa !21, !noalias !314 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEES0_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33.i: ; preds = %bb.g
  %i.u = load i64, ptr %i.s, align 8, !tbaa !38, !noalias !314
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEES0_DpOT_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %9, align 8, !tbaa !21, !noalias !314 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i: ; preds = %bb.h
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !38, !noalias !314
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !314
  br label %common.resume.i

_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEES0_DpOT_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !314
  br label %bb.ae

bb.i:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %12, align 8, !tbaa !49, !noalias !312 ; 5 uses
  %.not6.i = icmp eq i64 %i.ac, 0                 ; 2 uses
  br i1 %.not6.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50, !noalias !312
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.06.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ai, %bb.k ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.06.i.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !38, !noalias !312
  %i.ah = icmp eq i8 %i.ag, 48
  br i1 %i.ah, label %bb.k, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ai = add nuw i64 %.06.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ai, %i.ac
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread.i, label %bb.j, !llvm.loop !1

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread.i: ; preds = %bb.k, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !49, !noalias !312 ; 2 uses
  br label %bb.m

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i: ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !49, !noalias !312 ; 4 uses
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
  %i.at = load i8, ptr %i.as, align 1, !tbaa !52, !range !33, !noalias !312, !noundef !34
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !noalias !312
  %i.ax = trunc i64 %i.ap to i32
  %i.ay = select i1 %i.au, i32 %i.aw, i32 0
  %.023.i = sub nsw i32 %i.ax, %i.ay              ; 5 uses
  %.not30.i = icmp eq ptr %3, null                ; 2 uses
  br i1 %.not30.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !47, !noalias !312
  br i1 %.not6.i, label %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i, label %.lr.ph34.split.us.i.i

.lr.ph34.split.us.i.i:                            ; preds = %bb.n, %.critedge27.us.i.i
  %.sroa.09.0.i = phi i64 [ %i.bk, %.critedge27.us.i.i ], [ 0, %bb.n ]
  %.sroa.8.0.i = phi i64 [ %i.bp, %.critedge27.us.i.i ], [ 0, %bb.n ]
  %.sroa.12.0.i = phi i64 [ %i.bu, %.critedge27.us.i.i ], [ 0, %bb.n ]
  %.sroa.16.0.i = phi i64 [ %15, %.critedge27.us.i.i ], [ 0, %bb.n ]
  %.032.us.i.i = phi i64 [ %i.bw, %.critedge27.us.i.i ], [ 0, %bb.n ] ; 3 uses
  %i.az = sub nuw i64 %i.ac, %.032.us.i.i
  %.sroa.speculated.us.i.i = call i64 @llvm.umin.i64(i64 %i.az, i64 18) ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrowL18kUInt64PowersOfTenE, i64 %.sroa.speculated.us.i.i
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !45, !noalias !312 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !312
  store i64 0, ptr %i.b, align 8, !tbaa !45, !noalias !312
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 %.032.us.i.i
  %i.bd = call noundef zeroext i1 @_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE(ptr noundef %i.bc, i64 noundef %.sroa.speculated.us.i.i, ptr noundef nonnull %i.b), !noalias !312
  br i1 %i.bd, label %.critedge27.us.i.i, label %bb.o, !prof !23

bb.o:                                             ; preds = %.lr.ph34.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !312
  call void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %8, ptr noundef nonnull @.str.49, i32 noundef 777, i32 noundef 3), !noalias !312
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA90_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(90) @.str.50)
          to label %.critedge.us.i.i unwind label %.split.us.i.i, !noalias !312 ; 0 uses

.critedge.us.i.i:                                 ; preds = %bb.o
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %8) #26, !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !312
  br label %.critedge27.us.i.i

.critedge27.us.i.i:                               ; preds = %.critedge.us.i.i, %.lr.ph34.split.us.i.i
  %.promoted.us.i.i = load i64, ptr %i.b, align 8, !noalias !312
  %i.bf = zext i64 %i.bb to i128                  ; 3 uses
  %i.bg = zext i64 %.sroa.09.0.i to i128
  %i.bh = mul nuw i128 %i.bf, %i.bg
  %i.bi = zext i64 %.promoted.us.i.i to i128
  %i.bj = add nuw i128 %i.bh, %i.bi               ; 2 uses
  %i.bk = trunc i128 %i.bj to i64                 ; 2 uses
  %i.bl = lshr i128 %i.bj, 64
  %i.bm = zext i64 %.sroa.8.0.i to i128
  %i.bn = mul nuw i128 %i.bf, %i.bm
  %i.bo = add nuw i128 %i.bl, %i.bn               ; 2 uses
  %i.bp = trunc i128 %i.bo to i64                 ; 2 uses
  %i.bq = lshr i128 %i.bo, 64
  %i.br = zext i64 %.sroa.12.0.i to i128
  %i.bs = mul nuw i128 %i.bf, %i.br
  %i.bt = add nuw i128 %i.bq, %i.bs               ; 2 uses
  %i.bu = trunc i128 %i.bt to i64                 ; 2 uses
  %i.bv = lshr i128 %i.bt, 64
  %13 = mul i64 %i.bb, %.sroa.16.0.i
  %14 = trunc nuw i128 %i.bv to i64
  %15 = add i64 %13, %14                          ; 2 uses
  %i.bw = add i64 %.sroa.speculated.us.i.i, %.032.us.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !312
  %i.bx = icmp ult i64 %i.bw, %i.ac
  br i1 %i.bx, label %.lr.ph34.split.us.i.i, label %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i, !llvm.loop !2

.split.us.i.i:                                    ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %8) #26, !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !312
  br label %common.resume.i

_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i: ; preds = %.critedge27.us.i.i
  %.sroa.0.0.copyload.pre.i = load i64, ptr %i.aq, align 8, !tbaa !45, !noalias !312
  br label %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i

_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i: ; preds = %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i, %bb.n
  %.sroa.0.0.copyload.i = phi i64 [ %i.ap, %bb.n ], [ %.sroa.0.0.copyload.pre.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i ] ; 3 uses
  %.sroa.09.1.i = phi i64 [ 0, %bb.n ], [ %i.bk, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i ] ; 2 uses
  %.sroa.8.1.i = phi i64 [ 0, %bb.n ], [ %i.bp, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i ] ; 2 uses
  %.sroa.12.1.i = phi i64 [ 0, %bb.n ], [ %i.bu, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i ] ; 2 uses
  %.sroa.16.1.i = phi i64 [ 0, %bb.n ], [ %15, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.loopexit.i ] ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !47, !noalias !312
  %.not.i36.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i36.i, label %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit48.i, label %.lr.ph34.split.us.i38.i

.lr.ph34.split.us.i38.i:                          ; preds = %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i, %.critedge27.us.i43.i
  %.sroa.09.2.i = phi i64 [ %i.ck, %.critedge27.us.i43.i ], [ %.sroa.09.1.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ]
  %.sroa.8.2.i = phi i64 [ %i.cp, %.critedge27.us.i43.i ], [ %.sroa.8.1.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ]
  %.sroa.12.2.i = phi i64 [ %i.cu, %.critedge27.us.i43.i ], [ %.sroa.12.1.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ]
  %.sroa.16.2.i = phi i64 [ %18, %.critedge27.us.i43.i ], [ %.sroa.16.1.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ]
  %.032.us.i39.i = phi i64 [ %i.cw, %.critedge27.us.i43.i ], [ 0, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ] ; 3 uses
  %i.bz = sub nuw i64 %.sroa.0.0.copyload.i, %.032.us.i39.i
  %.sroa.speculated.us.i40.i = call i64 @llvm.umin.i64(i64 %i.bz, i64 18) ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrowL18kUInt64PowersOfTenE, i64 %.sroa.speculated.us.i40.i
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !45, !noalias !312 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !312
  store i64 0, ptr %i.a, align 8, !tbaa !45, !noalias !312
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 %.032.us.i39.i
  %i.cd = call noundef zeroext i1 @_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE(ptr noundef %i.cc, i64 noundef %.sroa.speculated.us.i40.i, ptr noundef nonnull %i.a), !noalias !312
  br i1 %i.cd, label %.critedge27.us.i43.i, label %bb.p, !prof !23

bb.p:                                             ; preds = %.lr.ph34.split.us.i38.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !312
  call void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef nonnull @.str.49, i32 noundef 777, i32 noundef 3), !noalias !312
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA90_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(90) @.str.50)
          to label %.critedge.us.i42.i unwind label %.split.us.i41.i, !noalias !312 ; 0 uses

.critedge.us.i42.i:                               ; preds = %bb.p
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %7) #26, !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !312
  br label %.critedge27.us.i43.i

.critedge27.us.i43.i:                             ; preds = %.critedge.us.i42.i, %.lr.ph34.split.us.i38.i
  %.promoted.us.i44.i = load i64, ptr %i.a, align 8, !noalias !312
  %i.cf = zext i64 %i.cb to i128                  ; 3 uses
  %i.cg = zext i64 %.sroa.09.2.i to i128
  %i.ch = mul nuw i128 %i.cf, %i.cg
  %i.ci = zext i64 %.promoted.us.i44.i to i128
  %i.cj = add nuw i128 %i.ch, %i.ci               ; 2 uses
  %i.ck = trunc i128 %i.cj to i64                 ; 2 uses
  %i.cl = lshr i128 %i.cj, 64
  %i.cm = zext i64 %.sroa.8.2.i to i128
  %i.cn = mul nuw i128 %i.cf, %i.cm
  %i.co = add nuw i128 %i.cl, %i.cn               ; 2 uses
  %i.cp = trunc i128 %i.co to i64                 ; 2 uses
  %i.cq = lshr i128 %i.co, 64
  %i.cr = zext i64 %.sroa.12.2.i to i128
  %i.cs = mul nuw i128 %i.cf, %i.cr
  %i.ct = add nuw i128 %i.cq, %i.cs               ; 2 uses
  %i.cu = trunc i128 %i.ct to i64                 ; 2 uses
  %i.cv = lshr i128 %i.ct, 64
  %16 = mul i64 %i.cb, %.sroa.16.2.i
  %17 = trunc nuw i128 %i.cv to i64
  %18 = add i64 %16, %17                          ; 2 uses
  %i.cw = add i64 %.sroa.speculated.us.i40.i, %.032.us.i39.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !312
  %i.cx = icmp ult i64 %i.cw, %.sroa.0.0.copyload.i
  br i1 %i.cx, label %.lr.ph34.split.us.i38.i, label %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit48.i, !llvm.loop !2

.split.us.i41.i:                                  ; preds = %bb.p
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %7) #26, !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !312
  br label %common.resume.i

_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit48.i: ; preds = %.critedge27.us.i43.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i
  %.sroa.09.3.i = phi i64 [ %.sroa.09.1.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ], [ %i.ck, %.critedge27.us.i43.i ]
  %.sroa.8.3.i = phi i64 [ %.sroa.8.1.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ], [ %i.cp, %.critedge27.us.i43.i ]
  %.sroa.12.3.i = phi i64 [ %.sroa.12.1.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ], [ %i.cu, %.critedge27.us.i43.i ]
  %.sroa.16.3.i = phi i64 [ %.sroa.16.1.i, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit.i ], [ %18, %.critedge27.us.i43.i ]
  store i64 %.sroa.09.3.i, ptr %3, align 8, !noalias !312
  %.sroa.02.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.8.3.i, ptr %.sroa.02.sroa.4.0..sroa_idx.i, align 8, !noalias !312
  %.sroa.02.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.12.3.i, ptr %.sroa.02.sroa.5.0..sroa_idx.i, align 8, !noalias !312
  %.sroa.02.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.sroa.16.3.i, ptr %.sroa.02.sroa.6.0..sroa_idx.i, align 8, !noalias !312
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !53, !noalias !312
  %i.db = icmp eq i8 %i.da, 45
  br i1 %i.db, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit48.i
  %i.dc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal2566NegateEv(ptr noundef nonnull align 8 dereferenceable(32) %3), !noalias !312 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5arrowL11ShiftAndAddESt17basic_string_viewIcSt11char_traitsIcEEPmm.exit48.i, %bb.m
  %i.dd = icmp slt i32 %.023.i, 0
  br i1 %i.dd, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.de = sub nsw i32 0, %.023.i
  %i.df = icmp samesign ult i32 %.023.i, -76
  br i1 %i.df, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !315
  call void @_ZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(13) @.str.43, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(28) @.str.46, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !315
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dg = load ptr, ptr %6, align 8, !tbaa !21, !noalias !315 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEES0_DpOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49.i: ; preds = %bb.u
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !38, !noalias !315
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #27
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEES0_DpOT_.exit.i

bb.v:                                             ; preds = %bb.t
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = load ptr, ptr %6, align 8, !tbaa !21, !noalias !315 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i: ; preds = %bb.v
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !38, !noalias !315
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !315
  br label %common.resume.i

_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEES0_DpOT_.exit.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !315
  br label %bb.ae

bb.w:                                             ; preds = %bb.s
  br i1 %.not30.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal25618GetScaleMultiplierEi(i32 noundef %i.de), !noalias !312
  %i.ds = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.dr), !noalias !312 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dt = sub nsw i32 %i.ar, %.023.i
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.r
  %.1.i = phi i32 [ 0, %bb.y ], [ %.023.i, %bb.r ]
  %.022.i = phi i32 [ %i.dt, %bb.y ], [ %i.ar, %bb.r ]
  %.not31.i = icmp eq ptr %4, null
  br i1 %.not31.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 %.022.i, ptr %4, align 4, !tbaa !10, !noalias !312
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not32.i = icmp eq ptr %5, null
  br i1 %.not32.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 %.1.i, ptr %5, align 4, !tbaa !10, !noalias !312
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store ptr null, ptr %0, align 8, !tbaa !14, !alias.scope !316
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEES0_DpOT_.exit.i, %_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEES0_DpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !312
  br label %_ZN5arrow12_GLOBAL__N_117DecimalFromStringINS_10Decimal256EEENS_6StatusEPKcSt17basic_string_viewIcSt11char_traitsIcEEPT_PiSC_.exit

_ZN5arrow12_GLOBAL__N_117DecimalFromStringINS_10Decimal256EEENS_6StatusEPKcSt17basic_string_viewIcSt11char_traitsIcEEPT_PiSC_.exit: ; preds = %_ZN5arrow6Status7InvalidIJRA37_KcRPS2_EEES0_DpOT_.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10Decimal25610FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_PiSA_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22
  tail call void @_ZN5arrow10Decimal25610FromStringESt17basic_string_viewIcSt11char_traitsIcEEPS0_PiS6_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i64 %i.c, ptr %i.a, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10Decimal25610FromStringEPKcPS0_PiS4_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  tail call void @_ZN5arrow10Decimal25610FromStringESt17basic_string_viewIcSt11char_traitsIcEEPS0_PiS6_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i64 %i.a, ptr nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow10Decimal25610FromStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.17") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %3 = alloca %"class.arrow::Decimal256", align 8 ; 5 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN5arrow10Decimal25610FromStringESt17basic_string_viewIcSt11char_traitsIcEEPS0_PiS6_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null)
  %i.a = load ptr, ptr %5, align 8, !tbaa !14     ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN5arrow6StatusD2Ev.exit9, label %bb.a, !prof !23

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultINS_10Decimal256EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit5, %_ZN5arrow6StatusD2Ev.exit9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_10Decimal256EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
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
end_hunk_1
