Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/scalar_cast_string?download=true
inline.NumInlined: 15753
inline.NumDeleted: 2714
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZZN5arrow8internal22ArraySpanInlineVisitorINS_13TimestampTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeES2_E12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEEUllE_ZNSB_ISG_EESH_SK_SS_SU_EUlvE_EESH_SK_OT_OT0_ENKUllE_clEl:bb.a
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false), !noalias !3550
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  store ptr %i.i, ptr %3, align 8, !tbaa !137, !alias.scope !3555, !noalias !3550
  %i.p = load i64, ptr %i.j, align 8, !tbaa !82, !noalias !3556
  store i64 %i.p, ptr %i.h, align 8, !tbaa !82, !alias.scope !3555, !noalias !3550
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !211, !noalias !3556
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %i.q = phi ptr [ %i.h, %bb.e ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.r = phi i64 [ %i.m, %bb.e ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.r, ptr %i.t, align 8, !tbaa !211, !alias.scope !3555, !noalias !3550
  store ptr %i.j, ptr %i.g, align 8, !tbaa !137, !noalias !3556
  store i64 0, ptr %i.s, align 8, !tbaa !211, !noalias !3556
  store i8 0, ptr %i.j, align 8, !tbaa !82, !noalias !3556
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3557, !noalias !3550, !nonnull !114, !align !207
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !325, !noalias !3550
  %i.x = trunc i64 %i.r to i32
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %i.w, ptr noundef %i.q, i32 noundef %i.x)
          to label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i unwind label %bb.g

_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %bb.f
  %i.y = load ptr, ptr %3, align 8, !tbaa !137, !noalias !3550 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.h
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !82, !noalias !3550
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3550
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %3, align 8, !tbaa !137, !noalias !3550 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %bb.g
  %i.af = load i64, ptr %i.h, align 8, !tbaa !82, !noalias !3550
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3550
  br label %bb.j

_ZN5arrow6StatusC2ERKS0_.exit.i:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.b
  %i.ah = load ptr, ptr %2, align 8, !tbaa !101, !noalias !3550 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, !prof !102

bb.h:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !137, !noalias !3550 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i: ; preds = %bb.h
  %i.an = load i64, ptr %i.al, align 8, !tbaa !82, !noalias !3550
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #30
  %.pr.pre.i.i = load ptr, ptr %2, align 8, !tbaa !101, !noalias !3550 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, !prof !270

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.ap = phi ptr [ %.pr.pre.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i ], [ %i.ah, %_ZN5arrow6StatusC2ERKS0_.exit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !112, !range !113, !noundef !114
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #28
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, %bb.c
  %.pn9.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i ]
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3550
  resume { ptr, i32 } %.pn9.i

_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit: ; preds = %bb.h, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3550
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEclB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.504") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::chrono::time_point.465", align 8 ; 4 uses
  %4 = alloca %class.anon.509, align 8            ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %class.anon.508, align 8            ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !210
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !211
  store i8 0, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit unwind label %bb.d

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit: ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %5, align 8, !tbaa !137    ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit
  %i.f = load i64, ptr %i.a, align 8, !tbaa !82
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #30
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %1, ptr %6, align 8, !tbaa !375
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %2, ptr %3, align 8, !noalias !3564
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !3564
  store ptr %6, ptr %4, align 8, !tbaa !87, !noalias !3564
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.i, align 8, !tbaa !3565, !noalias !3564
  call void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIN5arrow6StatusEEEZNS3_7compute8internal13ApplyTimeZoneINSt6chrono8durationIlSt5ratioILl1ELl1EEEERZNS7_18TimestampFormatterISD_EclB5cxx11ElEUlOT_E_EEDTclfL0p1_tlN14arrow_vendored4date10zoned_timeISG_PKNSL_9time_zoneEEEEEERKSt7variantIJSP_NS3_8internal10OffsetZoneEEENS9_10time_pointINS9_3_V212system_clockESG_EEOT0_EUlSH_E_JSX_EEDcS13_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(9) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !3564
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.j = load ptr, ptr %8, align 8, !tbaa !101    ; 2 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit20, label %bb.a, !prof !102

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #28
  %i.l = load ptr, ptr %7, align 8, !tbaa !101    ; 2 uses
  %.not.i12 = icmp eq ptr %i.l, null
  br i1 %.not.i12, label %_ZN5arrow6StatusD2Ev.exit13, label %bb.b, !prof !102

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !112, !range !113, !noundef !114
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit13, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #28
  br label %_ZN5arrow6StatusD2Ev.exit13

_ZN5arrow6StatusD2Ev.exit13:                      ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.h

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %5, align 8, !tbaa !137    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !82
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume

_ZN5arrow6StatusD2Ev.exit20:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !3566)
  call void @llvm.experimental.noalias.scope.decl(metadata !3567)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !377, !noalias !3568 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit20
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %11 = load ptr, ptr %10, align 8, !tbaa !378, !noalias !3568 ; 2 uses
  %12 = icmp ugt ptr %i.v, %11
  %.08.i.i.i = select i1 %12, ptr %i.v, ptr %11
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !379, !noalias !3568
  %i.z = ptrtoint ptr %.08.i.i.i to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !211, !noalias !3568
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !137, !noalias !3568
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !82, !noalias !3568
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZN5arrow6StatusD2Ev.exit20
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  store ptr %i.ag, ptr %9, align 8, !tbaa !210, !alias.scope !3568
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !137, !noalias !3568 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !211, !noalias !3568 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ah, ptr %9, align 8, !tbaa !137, !alias.scope !3568
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !82, !noalias !3568
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !82, !alias.scope !3568
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !211, !noalias !3568
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %i.ap = phi i64 [ %i.al, %bb.e ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !211, !alias.scope !3568
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !137, !noalias !3568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aq, i8 0, i64 9, i1 false), !noalias !3568
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull %i.ai, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %9, align 8, !tbaa !137, !alias.scope !3568 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ag
  br i1 %i.au, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.av = load i64, ptr %i.ag, align 8, !tbaa !82, !alias.scope !3568
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.as, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr null, ptr %0, align 8, !tbaa !101
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !210
  %i.az = load ptr, ptr %9, align 8, !tbaa !137   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ag
  br i1 %i.ba, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21

bb.g:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bb = load i64, ptr %i.ar, align 8, !tbaa !211 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.bd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !137
  %i.be = load i64, ptr %i.ag, align 8, !tbaa !82
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !82
  %.pre = load i64, ptr %i.ar, align 8, !tbaa !211
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21
  %i.bf = phi i64 [ %i.bb, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.h

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !102

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !82
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #30
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !101 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !270

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit
  %i.i = phi ptr [ %.pr.pre, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !112, !range !113, !noundef !114
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.12", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !101
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !101
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !86

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !137    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !82
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !137    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !82
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.m = load ptr, ptr %3, align 8, !tbaa !137    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !82
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
end_hunk_0
begin_hunk_1_@_ZZN5arrow8internal22ArraySpanInlineVisitorINS_13TimestampTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeES2_E12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEEUllE_ZNSB_ISG_EESH_SK_SS_SU_EUlvE_EESH_SK_OT_OT0_ENKUllE_clEl:bb.a
  store i64 0, ptr %i.s, align 8, !tbaa !211, !noalias !3627
  store i8 0, ptr %i.j, align 8, !tbaa !82, !noalias !3627
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3628, !noalias !3621, !nonnull !114, !align !207
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !325, !noalias !3621
  %i.x = trunc i64 %i.r to i32
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %i.w, ptr noundef %i.q, i32 noundef %i.x)
          to label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i unwind label %bb.g

_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %bb.f
  %i.y = load ptr, ptr %3, align 8, !tbaa !137, !noalias !3621 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.h
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !82, !noalias !3621
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3621
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %3, align 8, !tbaa !137, !noalias !3621 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %bb.g
  %i.af = load i64, ptr %i.h, align 8, !tbaa !82, !noalias !3621
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3621
  br label %bb.j

_ZN5arrow6StatusC2ERKS0_.exit.i:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.b
  %i.ah = load ptr, ptr %2, align 8, !tbaa !101, !noalias !3621 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, !prof !102

bb.h:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !137, !noalias !3621 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i: ; preds = %bb.h
  %i.an = load i64, ptr %i.al, align 8, !tbaa !82, !noalias !3621
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #30
  %.pr.pre.i.i = load ptr, ptr %2, align 8, !tbaa !101, !noalias !3621 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, !prof !270

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.ap = phi ptr [ %.pr.pre.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i ], [ %i.ah, %_ZN5arrow6StatusC2ERKS0_.exit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !112, !range !113, !noundef !114
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #28
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, %bb.c
  %.pn9.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i ]
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3621
  resume { ptr, i32 } %.pn9.i

_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit: ; preds = %bb.h, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3621
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEclB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.504") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.arrow_vendored::date::zoned_time.554", align 8 ; 5 uses
  %4 = alloca %"class.std::chrono::time_point.459", align 8 ; 4 uses
  %5 = alloca %class.anon.545, align 8            ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %class.anon.544, align 8            ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !210
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !211
  store i8 0, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit unwind label %bb.f

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit: ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %6, align 8, !tbaa !137    ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit
  %i.f = load i64, ptr %i.a, align 8, !tbaa !82
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %1, ptr %7, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %2, ptr %4, align 8, !noalias !3647
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !3647
  store ptr %7, ptr %5, align 8, !tbaa !87, !noalias !3647
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.i, align 8, !tbaa !3648, !noalias !3647
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !380, !noalias !3649
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZZN5arrow7compute8internal13ApplyTimeZoneINSt6chrono8durationIlSt5ratioILl1ELl1000EEEERZNS1_18TimestampFormatterIS7_EclB5cxx11ElEUlOT_E_EEDTclfL0p1_tlN14arrow_vendored4date10zoned_timeISA_PKNSF_9time_zoneEEEEEERKSt7variantIJSJ_NS_8internal10OffsetZoneEEENS3_10time_pointINS3_3_V212system_clockESA_EEOT0_ENKUlSB_E_clIRKSJ_EEDaSB_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(9) %i.h)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !3650
  store ptr %i.h, ptr %3, align 8, !tbaa !454, !noalias !3650
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.m, align 8, !tbaa !194, !noalias !3650
  call void @_ZZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEclB5cxx11ElENKUlOT_E_clIN14arrow_vendored4date10zoned_timeIS7_PKNS_8internal10OffsetZoneEEEEEDaSA_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3650
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !3647
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.n = load ptr, ptr %9, align 8, !tbaa !101    ; 2 uses
  store ptr %i.n, ptr %8, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit20, label %bb.c, !prof !102

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  %i.p = load ptr, ptr %8, align 8, !tbaa !101    ; 2 uses
  %.not.i12 = icmp eq ptr %i.p, null
  br i1 %.not.i12, label %_ZN5arrow6StatusD2Ev.exit13, label %bb.d, !prof !102

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !112, !range !113, !noundef !114
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  br label %_ZN5arrow6StatusD2Ev.exit13

_ZN5arrow6StatusD2Ev.exit13:                      ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %6, align 8, !tbaa !137    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.f
  %i.w = load i64, ptr %i.a, align 8, !tbaa !82
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %common.resume

_ZN5arrow6StatusD2Ev.exit20:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !3651)
  call void @llvm.experimental.noalias.scope.decl(metadata !3652)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !377, !noalias !3653 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %12 = load ptr, ptr %11, align 8, !tbaa !378, !noalias !3653 ; 2 uses
  %13 = icmp ugt ptr %i.z, %12
  %.08.i.i.i = select i1 %13, ptr %i.z, ptr %12
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !379, !noalias !3653
  %i.ad = ptrtoint ptr %.08.i.i.i to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !211, !noalias !3653
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !137, !noalias !3653
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !82, !noalias !3653
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZN5arrow6StatusD2Ev.exit20
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store ptr %i.ak, ptr %10, align 8, !tbaa !210, !alias.scope !3653
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !137, !noalias !3653 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !211, !noalias !3653 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.al, ptr %10, align 8, !tbaa !137, !alias.scope !3653
  %i.as = load i64, ptr %i.am, align 8, !tbaa !82, !noalias !3653
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !82, !alias.scope !3653
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !211, !noalias !3653
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.at = phi i64 [ %i.ap, %bb.g ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.at, ptr %i.av, align 8, !tbaa !211, !alias.scope !3653
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !137, !noalias !3653
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.au, i8 0, i64 9, i1 false), !noalias !3653
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull %i.am, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %10, align 8, !tbaa !137, !alias.scope !3653 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ak
  br i1 %i.ay, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.az = load i64, ptr %i.ak, align 8, !tbaa !82, !alias.scope !3653
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aw, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr null, ptr %0, align 8, !tbaa !101
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !210
  %i.bd = load ptr, ptr %10, align 8, !tbaa !137  ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ak
  br i1 %i.be, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21

bb.i:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bf = load i64, ptr %i.av, align 8, !tbaa !211 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !137
  %i.bi = load i64, ptr %i.ak, align 8, !tbaa !82
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !82
  %.pre = load i64, ptr %i.av, align 8, !tbaa !211
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21
  %i.bj = phi i64 [ %i.bf, %bb.i ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.j

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal13ApplyTimeZoneINSt6chrono8durationIlSt5ratioILl1ELl1000EEEERZNS1_18TimestampFormatterIS7_EclB5cxx11ElEUlOT_E_EEDTclfL0p1_tlN14arrow_vendored4date10zoned_timeISA_PKNSF_9time_zoneEEEEEERKSt7variantIJSJ_NS_8internal10OffsetZoneEEENS3_10time_pointINS3_3_V212system_clockESA_EEOT0_ENKUlSB_E_clIRKSJ_EEDaSB_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.arrow_vendored::date::zoned_time.548", align 8 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !3660, !nonnull !114, !align !207
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.c = load ptr, ptr %2, align 8, !tbaa !382    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.48)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.l, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.o, %bb.f ], [ %.pn.i, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #28
  br label %common.resume

_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3661, !nonnull !114, !align !207
  store ptr %i.c, ptr %3, align 8, !tbaa !456
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.h, align 8, !tbaa !194
  store i64 %i.j, ptr %i.i, align 8, !tbaa !194
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3662)
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !449, !noalias !3662 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !363, !noalias !3662
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPKNS0_9time_zoneEEERSt13basic_ostreamIT_T0_ESG_PKSD_RKNS0_10zoned_timeIT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.e unwind label %bb.f, !noalias !3662 ; 0 uses

bb.e:                                             ; preds = %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit
  store ptr null, ptr %0, align 8, !tbaa !101, !alias.scope !3663
  br label %_ZZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEclB5cxx11ElENKUlOT_E_clIN14arrow_vendored4date10zoned_timeIS7_PKNSE_9time_zoneEEEEEDaSA_.exit

bb.f:                                             ; preds = %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr @_ZTISt13runtime_error        ; 3 uses
  %i.p = extractvalue { ptr, i32 } %i.o, 1
  %i.q = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt13runtime_error) #28
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  %i.s = extractvalue { ptr, i32 } %i.o, 0
  %i.t = call ptr @__cxa_begin_catch(ptr %i.s) #28, !noalias !3662 ; 2 uses
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !74, !noalias !3662
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8, !noalias !3662
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.w
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.x, i32 noundef 0)
          to label %bb.h unwind label %bb.j, !noalias !3662

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !3662
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !74, !noalias !3662
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !3662
  %i.ab = call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28, !noalias !3662, !inline_history !3658
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !184, !noalias !3662
  invoke void @_ZN5arrow6Status7InvalidIJRA30_KcPS2_EEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(30) @.str.44, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !3662
  call void @__cxa_end_catch()
  br label %_ZZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEclB5cxx11ElENKUlOT_E_clIN14arrow_vendored4date10zoned_timeIS7_PKNSE_9time_zoneEEEEEDaSA_.exit

bb.j:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !3662
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.ac, %bb.j ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #31
  unreachable

_ZZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEclB5cxx11ElENKUlOT_E_clIN14arrow_vendored4date10zoned_timeIS7_PKNSE_9time_zoneEEEEEDaSA_.exit: ; preds = %bb.e, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPKNS0_9time_zoneEEERSt13basic_ostreamIT_T0_ESG_PKSD_RKNS0_10zoned_timeIT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZZN5arrow8internal22ArraySpanInlineVisitorINS_13TimestampTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeES2_E12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEEUllE_ZNSB_ISG_EESH_SK_SS_SU_EUlvE_EESH_SK_OT_OT0_ENKUllE_clEl:bb.a
  store i64 0, ptr %i.s, align 8, !tbaa !211, !noalias !3689
  store i8 0, ptr %i.j, align 8, !tbaa !82, !noalias !3689
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3690, !noalias !3683, !nonnull !114, !align !207
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !325, !noalias !3683
  %i.x = trunc i64 %i.r to i32
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %i.w, ptr noundef %i.q, i32 noundef %i.x)
          to label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i unwind label %bb.g

_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %bb.f
  %i.y = load ptr, ptr %3, align 8, !tbaa !137, !noalias !3683 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.h
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !82, !noalias !3683
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3683
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %3, align 8, !tbaa !137, !noalias !3683 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %bb.g
  %i.af = load i64, ptr %i.h, align 8, !tbaa !82, !noalias !3683
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3683
  br label %bb.j

_ZN5arrow6StatusC2ERKS0_.exit.i:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.b
  %i.ah = load ptr, ptr %2, align 8, !tbaa !101, !noalias !3683 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, !prof !102

bb.h:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !137, !noalias !3683 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i: ; preds = %bb.h
  %i.an = load i64, ptr %i.al, align 8, !tbaa !82, !noalias !3683
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #30
  %.pr.pre.i.i = load ptr, ptr %2, align 8, !tbaa !101, !noalias !3683 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, !prof !270

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.ap = phi ptr [ %.pr.pre.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i ], [ %i.ah, %_ZN5arrow6StatusC2ERKS0_.exit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !112, !range !113, !noundef !114
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #28
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, %bb.c
  %.pn9.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i ]
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3683
  resume { ptr, i32 } %.pn9.i

_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit: ; preds = %bb.h, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3683
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEclB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.504") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.arrow_vendored::date::zoned_time.569", align 8 ; 5 uses
  %4 = alloca %"class.std::chrono::time_point.461", align 8 ; 4 uses
  %5 = alloca %class.anon.560, align 8            ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %class.anon.559, align 8            ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !210
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !211
  store i8 0, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit unwind label %bb.f

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit: ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %6, align 8, !tbaa !137    ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit
  %i.f = load i64, ptr %i.a, align 8, !tbaa !82
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %1, ptr %7, align 8, !tbaa !461
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %2, ptr %4, align 8, !noalias !3709
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !3709
  store ptr %7, ptr %5, align 8, !tbaa !87, !noalias !3709
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.i, align 8, !tbaa !3710, !noalias !3709
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !380, !noalias !3711
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZZN5arrow7compute8internal13ApplyTimeZoneINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEERZNS1_18TimestampFormatterIS7_EclB5cxx11ElEUlOT_E_EEDTclfL0p1_tlN14arrow_vendored4date10zoned_timeISA_PKNSF_9time_zoneEEEEEERKSt7variantIJSJ_NS_8internal10OffsetZoneEEENS3_10time_pointINS3_3_V212system_clockESA_EEOT0_ENKUlSB_E_clIRKSJ_EEDaSB_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(9) %i.h)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !3712
  store ptr %i.h, ptr %3, align 8, !tbaa !466, !noalias !3712
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.m, align 8, !tbaa !194, !noalias !3712
  call void @_ZZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEclB5cxx11ElENKUlOT_E_clIN14arrow_vendored4date10zoned_timeIS7_PKNS_8internal10OffsetZoneEEEEEDaSA_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3712
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !3709
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.n = load ptr, ptr %9, align 8, !tbaa !101    ; 2 uses
  store ptr %i.n, ptr %8, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit20, label %bb.c, !prof !102

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  %i.p = load ptr, ptr %8, align 8, !tbaa !101    ; 2 uses
  %.not.i12 = icmp eq ptr %i.p, null
  br i1 %.not.i12, label %_ZN5arrow6StatusD2Ev.exit13, label %bb.d, !prof !102

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !112, !range !113, !noundef !114
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  br label %_ZN5arrow6StatusD2Ev.exit13

_ZN5arrow6StatusD2Ev.exit13:                      ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %6, align 8, !tbaa !137    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.f
  %i.w = load i64, ptr %i.a, align 8, !tbaa !82
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %common.resume

_ZN5arrow6StatusD2Ev.exit20:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !3713)
  call void @llvm.experimental.noalias.scope.decl(metadata !3714)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !377, !noalias !3715 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %12 = load ptr, ptr %11, align 8, !tbaa !378, !noalias !3715 ; 2 uses
  %13 = icmp ugt ptr %i.z, %12
  %.08.i.i.i = select i1 %13, ptr %i.z, ptr %12
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !379, !noalias !3715
  %i.ad = ptrtoint ptr %.08.i.i.i to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !211, !noalias !3715
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !137, !noalias !3715
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !82, !noalias !3715
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZN5arrow6StatusD2Ev.exit20
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store ptr %i.ak, ptr %10, align 8, !tbaa !210, !alias.scope !3715
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !137, !noalias !3715 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !211, !noalias !3715 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.al, ptr %10, align 8, !tbaa !137, !alias.scope !3715
  %i.as = load i64, ptr %i.am, align 8, !tbaa !82, !noalias !3715
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !82, !alias.scope !3715
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !211, !noalias !3715
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.at = phi i64 [ %i.ap, %bb.g ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.at, ptr %i.av, align 8, !tbaa !211, !alias.scope !3715
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !137, !noalias !3715
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.au, i8 0, i64 9, i1 false), !noalias !3715
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull %i.am, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %10, align 8, !tbaa !137, !alias.scope !3715 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ak
  br i1 %i.ay, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.az = load i64, ptr %i.ak, align 8, !tbaa !82, !alias.scope !3715
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aw, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr null, ptr %0, align 8, !tbaa !101
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !210
  %i.bd = load ptr, ptr %10, align 8, !tbaa !137  ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ak
  br i1 %i.be, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21

bb.i:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bf = load i64, ptr %i.av, align 8, !tbaa !211 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !137
  %i.bi = load i64, ptr %i.ak, align 8, !tbaa !82
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !82
  %.pre = load i64, ptr %i.av, align 8, !tbaa !211
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21
  %i.bj = phi i64 [ %i.bf, %bb.i ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.j

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal13ApplyTimeZoneINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEERZNS1_18TimestampFormatterIS7_EclB5cxx11ElEUlOT_E_EEDTclfL0p1_tlN14arrow_vendored4date10zoned_timeISA_PKNSF_9time_zoneEEEEEERKSt7variantIJSJ_NS_8internal10OffsetZoneEEENS3_10time_pointINS3_3_V212system_clockESA_EEOT0_ENKUlSB_E_clIRKSJ_EEDaSB_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.arrow_vendored::date::zoned_time.563", align 8 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !3722, !nonnull !114, !align !207
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.c = load ptr, ptr %2, align 8, !tbaa !382    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.48)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.l, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.o, %bb.f ], [ %.pn.i, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #28
  br label %common.resume

_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3723, !nonnull !114, !align !207
  store ptr %i.c, ptr %3, align 8, !tbaa !468
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.h, align 8, !tbaa !194
  store i64 %i.j, ptr %i.i, align 8, !tbaa !194
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3724)
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !461, !noalias !3724 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !367, !noalias !3724
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEPKNS0_9time_zoneEEERSt13basic_ostreamIT_T0_ESG_PKSD_RKNS0_10zoned_timeIT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.e unwind label %bb.f, !noalias !3724 ; 0 uses

bb.e:                                             ; preds = %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit
  store ptr null, ptr %0, align 8, !tbaa !101, !alias.scope !3725
  br label %_ZZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEclB5cxx11ElENKUlOT_E_clIN14arrow_vendored4date10zoned_timeIS7_PKNSE_9time_zoneEEEEEDaSA_.exit

bb.f:                                             ; preds = %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr @_ZTISt13runtime_error        ; 3 uses
  %i.p = extractvalue { ptr, i32 } %i.o, 1
  %i.q = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt13runtime_error) #28
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  %i.s = extractvalue { ptr, i32 } %i.o, 0
  %i.t = call ptr @__cxa_begin_catch(ptr %i.s) #28, !noalias !3724 ; 2 uses
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !74, !noalias !3724
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8, !noalias !3724
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.w
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.x, i32 noundef 0)
          to label %bb.h unwind label %bb.j, !noalias !3724

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !3724
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !74, !noalias !3724
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !3724
  %i.ab = call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28, !noalias !3724, !inline_history !3720
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !184, !noalias !3724
  invoke void @_ZN5arrow6Status7InvalidIJRA30_KcPS2_EEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(30) @.str.44, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !3724
  call void @__cxa_end_catch()
  br label %_ZZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEclB5cxx11ElENKUlOT_E_clIN14arrow_vendored4date10zoned_timeIS7_PKNSE_9time_zoneEEEEEDaSA_.exit

bb.j:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !3724
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.ac, %bb.j ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #31
  unreachable

_ZZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEclB5cxx11ElENKUlOT_E_clIN14arrow_vendored4date10zoned_timeIS7_PKNSE_9time_zoneEEEEEDaSA_.exit: ; preds = %bb.e, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEPKNS0_9time_zoneEEERSt13basic_ostreamIT_T0_ESG_PKSD_RKNS0_10zoned_timeIT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_2
begin_hunk_3_@_ZZN5arrow8internal22ArraySpanInlineVisitorINS_13TimestampTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeES2_E12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEEUllE_ZNSB_ISG_EESH_SK_SS_SU_EUlvE_EESH_SK_OT_OT0_ENKUllE_clEl:bb.a
  store i64 0, ptr %i.s, align 8, !tbaa !211, !noalias !3751
  store i8 0, ptr %i.j, align 8, !tbaa !82, !noalias !3751
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3752, !noalias !3745, !nonnull !114, !align !207
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !325, !noalias !3745
  %i.x = trunc i64 %i.r to i32
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %i.w, ptr noundef %i.q, i32 noundef %i.x)
          to label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i unwind label %bb.g

_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %bb.f
  %i.y = load ptr, ptr %3, align 8, !tbaa !137, !noalias !3745 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.h
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !82, !noalias !3745
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3745
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %3, align 8, !tbaa !137, !noalias !3745 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %bb.g
  %i.af = load i64, ptr %i.h, align 8, !tbaa !82, !noalias !3745
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3745
  br label %bb.j

_ZN5arrow6StatusC2ERKS0_.exit.i:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.b
  %i.ah = load ptr, ptr %2, align 8, !tbaa !101, !noalias !3745 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, !prof !102

bb.h:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !137, !noalias !3745 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i: ; preds = %bb.h
  %i.an = load i64, ptr %i.al, align 8, !tbaa !82, !noalias !3745
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #30
  %.pr.pre.i.i = load ptr, ptr %2, align 8, !tbaa !101, !noalias !3745 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, !prof !270

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.ap = phi ptr [ %.pr.pre.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i ], [ %i.ah, %_ZN5arrow6StatusC2ERKS0_.exit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !112, !range !113, !noundef !114
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #28
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, %bb.c
  %.pn9.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i ]
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3745
  resume { ptr, i32 } %.pn9.i

_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE12ConvertZonedINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEENS_6StatusERKNS_9ArraySpanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13StringBuilderEENKUllE_clEl.exit: ; preds = %bb.h, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3745
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEclB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.504") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.arrow_vendored::date::zoned_time.583", align 8 ; 5 uses
  %4 = alloca %"class.std::chrono::time_point.463", align 8 ; 4 uses
  %5 = alloca %class.anon.575, align 8            ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %class.anon.574, align 8            ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !210
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !211
  store i8 0, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit unwind label %bb.f

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit: ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %6, align 8, !tbaa !137    ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit
  %i.f = load i64, ptr %i.a, align 8, !tbaa !82
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %1, ptr %7, align 8, !tbaa !473
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %2, ptr %4, align 8, !noalias !3771
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !3771
  store ptr %7, ptr %5, align 8, !tbaa !87, !noalias !3771
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.i, align 8, !tbaa !3772, !noalias !3771
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !380, !noalias !3773
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZZN5arrow7compute8internal13ApplyTimeZoneINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEERZNS1_18TimestampFormatterIS7_EclB5cxx11ElEUlOT_E_EEDTclfL0p1_tlN14arrow_vendored4date10zoned_timeISA_PKNSF_9time_zoneEEEEEERKSt7variantIJSJ_NS_8internal10OffsetZoneEEENS3_10time_pointINS3_3_V212system_clockESA_EEOT0_ENKUlSB_E_clIRKSJ_EEDaSB_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(9) %i.h)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !3774
  store ptr %i.h, ptr %3, align 8, !tbaa !478, !noalias !3774
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.m, align 8, !tbaa !194, !noalias !3774
  call void @_ZZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEclB5cxx11ElENKUlOT_E_clIN14arrow_vendored4date10zoned_timeIS7_PKNS_8internal10OffsetZoneEEEEEDaSA_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3774
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !3771
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.n = load ptr, ptr %9, align 8, !tbaa !101    ; 2 uses
  store ptr %i.n, ptr %8, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit20, label %bb.c, !prof !102

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  %i.p = load ptr, ptr %8, align 8, !tbaa !101    ; 2 uses
  %.not.i12 = icmp eq ptr %i.p, null
  br i1 %.not.i12, label %_ZN5arrow6StatusD2Ev.exit13, label %bb.d, !prof !102

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !112, !range !113, !noundef !114
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  br label %_ZN5arrow6StatusD2Ev.exit13

_ZN5arrow6StatusD2Ev.exit13:                      ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %6, align 8, !tbaa !137    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.f
  %i.w = load i64, ptr %i.a, align 8, !tbaa !82
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %common.resume

_ZN5arrow6StatusD2Ev.exit20:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !3775)
  call void @llvm.experimental.noalias.scope.decl(metadata !3776)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !377, !noalias !3777 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %12 = load ptr, ptr %11, align 8, !tbaa !378, !noalias !3777 ; 2 uses
  %13 = icmp ugt ptr %i.z, %12
  %.08.i.i.i = select i1 %13, ptr %i.z, ptr %12
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !379, !noalias !3777
  %i.ad = ptrtoint ptr %.08.i.i.i to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !211, !noalias !3777
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !137, !noalias !3777
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !82, !noalias !3777
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZN5arrow6StatusD2Ev.exit20
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store ptr %i.ak, ptr %10, align 8, !tbaa !210, !alias.scope !3777
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !137, !noalias !3777 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !211, !noalias !3777 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.al, ptr %10, align 8, !tbaa !137, !alias.scope !3777
  %i.as = load i64, ptr %i.am, align 8, !tbaa !82, !noalias !3777
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !82, !alias.scope !3777
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !211, !noalias !3777
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.at = phi i64 [ %i.ap, %bb.g ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.at, ptr %i.av, align 8, !tbaa !211, !alias.scope !3777
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !137, !noalias !3777
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.au, i8 0, i64 9, i1 false), !noalias !3777
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull %i.am, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %10, align 8, !tbaa !137, !alias.scope !3777 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ak
  br i1 %i.ay, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.az = load i64, ptr %i.ak, align 8, !tbaa !82, !alias.scope !3777
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aw, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr null, ptr %0, align 8, !tbaa !101
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !210
  %i.bd = load ptr, ptr %10, align 8, !tbaa !137  ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ak
  br i1 %i.be, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21

bb.i:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bf = load i64, ptr %i.av, align 8, !tbaa !211 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !137
  %i.bi = load i64, ptr %i.ak, align 8, !tbaa !82
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !82
  %.pre = load i64, ptr %i.av, align 8, !tbaa !211
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21
  %i.bj = phi i64 [ %i.bf, %bb.i ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.j

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal13ApplyTimeZoneINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEERZNS1_18TimestampFormatterIS7_EclB5cxx11ElEUlOT_E_EEDTclfL0p1_tlN14arrow_vendored4date10zoned_timeISA_PKNSF_9time_zoneEEEEEERKSt7variantIJSJ_NS_8internal10OffsetZoneEEENS3_10time_pointINS3_3_V212system_clockESA_EEOT0_ENKUlSB_E_clIRKSJ_EEDaSB_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.arrow_vendored::date::zoned_time.578", align 8 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !3784, !nonnull !114, !align !207
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.c = load ptr, ptr %2, align 8, !tbaa !382    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.48)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.l, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.o, %bb.f ], [ %.pn.i, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #28
  br label %common.resume

_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3785, !nonnull !114, !align !207
  store ptr %i.c, ptr %3, align 8, !tbaa !480
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.h, align 8, !tbaa !194
  store i64 %i.j, ptr %i.i, align 8, !tbaa !194
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3786)
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !473, !noalias !3786 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !371, !noalias !3786
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEPKNS0_9time_zoneEEERSt13basic_ostreamIT_T0_ESG_PKSD_RKNS0_10zoned_timeIT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.e unwind label %bb.f, !noalias !3786 ; 0 uses

bb.e:                                             ; preds = %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit
  store ptr null, ptr %0, align 8, !tbaa !101, !alias.scope !3787
  br label %_ZZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEclB5cxx11ElENKUlOT_E_clIN14arrow_vendored4date10zoned_timeIS7_PKNSE_9time_zoneEEEEEDaSA_.exit

bb.f:                                             ; preds = %_ZN14arrow_vendored4date10zoned_timeINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEPKNS0_9time_zoneEEC2ES9_RKNS2_10time_pointINS2_3_V212system_clockES6_EE.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr @_ZTISt13runtime_error        ; 3 uses
  %i.p = extractvalue { ptr, i32 } %i.o, 1
  %i.q = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt13runtime_error) #28
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  %i.s = extractvalue { ptr, i32 } %i.o, 0
  %i.t = call ptr @__cxa_begin_catch(ptr %i.s) #28, !noalias !3786 ; 2 uses
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !74, !noalias !3786
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8, !noalias !3786
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.w
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.x, i32 noundef 0)
          to label %bb.h unwind label %bb.j, !noalias !3786

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !3786
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !74, !noalias !3786
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !3786
  %i.ab = call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28, !noalias !3786, !inline_history !3782
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !184, !noalias !3786
  invoke void @_ZN5arrow6Status7InvalidIJRA30_KcPS2_EEES0_DpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(30) @.str.44, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !3786
  call void @__cxa_end_catch()
  br label %_ZZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEclB5cxx11ElENKUlOT_E_clIN14arrow_vendored4date10zoned_timeIS7_PKNSE_9time_zoneEEEEEDaSA_.exit

bb.j:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !3786
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.ac, %bb.j ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #31
  unreachable

_ZZN5arrow7compute8internal18TimestampFormatterINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEclB5cxx11ElENKUlOT_E_clIN14arrow_vendored4date10zoned_timeIS7_PKNSE_9time_zoneEEEEEDaSA_.exit: ; preds = %bb.e, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEPKNS0_9time_zoneEEERSt13basic_ostreamIT_T0_ESG_PKSD_RKNS0_10zoned_timeIT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_3
