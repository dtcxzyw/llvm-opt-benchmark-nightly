inline.NumInlined: 2454
inline.NumDeleted: 1412
begin_hunk_0_@_ZN5arrow7compute8internal15GetCastFunctionERKNS_8DataTypeE:bb.a
.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !216
  call void @_ZN5arrow8internal12JoinToStringIJRA21_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(21) @.str.16, ptr noundef nonnull align 8 dereferenceable(72) %1), !noalias !216
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.ab = load ptr, ptr %2, align 8, !tbaa !38, !noalias !216 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN5arrow6Status14NotImplementedIJRA21_KcRKNS_8DataTypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !40, !noalias !216
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #29
  br label %_ZN5arrow6Status14NotImplementedIJRA21_KcRKNS_8DataTypeEEEES0_DpOT_.exit

bb.k:                                             ; preds = %.loopexit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %2, align 8, !tbaa !38, !noalias !216 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.k
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !40, !noalias !216
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !216
  br label %common.resume

_ZN5arrow6Status14NotImplementedIJRA21_KcRKNS_8DataTypeEEEES0_DpOT_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !216
  call void @_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.am = load ptr, ptr %4, align 8, !tbaa !66    ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.l, !prof !69

bb.l:                                             ; preds = %_ZN5arrow6Status14NotImplementedIJRA21_KcRKNS_8DataTypeEEEES0_DpOT_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !70, !range !77, !noundef !78
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZN5arrow6StatusD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status14NotImplementedIJRA21_KcRKNS_8DataTypeEEEES0_DpOT_.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2IRS5_vEEOT_.exit

_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.e ], [ %i.r, %bb.g ], [ %i.w, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  store ptr null, ptr %0, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !108
  store <2 x ptr> %i.au, ptr %i.ar, align 8, !tbaa !108
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2IRS5_vEEOT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !3
  br label %_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2IRS5_vEEOT_.exit

bb.p:                                             ; preds = %bb.n
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2IRS5_vEEOT_.exit

_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2IRS5_vEEOT_.exit: ; preds = %bb.p, %bb.o, %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.9", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !66
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !66
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !37

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !40
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !38     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.m = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #30
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute11CastOptionsC2Eb(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(46) initializes((0, 46)) %0, i1 noundef zeroext %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116kCastOptionsTypeE, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !221
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %0, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = xor i1 %1, true
  %i.f = zext i1 %i.e to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.d, i8 %i.f, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5arrow7compute11CastOptions7is_safeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(46) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %1 = load <6 x i8>, ptr %i.a, align 8
  %.fr = freeze <6 x i8> %1
  %2 = trunc <6 x i8> %.fr to <6 x i1>
  %3 = bitcast <6 x i1> %2 to i6
  %.not = icmp eq i6 %3, 0
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5arrow7compute11CastOptions9is_unsafeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(46) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %1 = load <6 x i8>, ptr %i.a, align 8
  %.fr = freeze <6 x i8> %1
  %2 = trunc <6 x i8> %.fr to <6 x i1>
  %3 = bitcast <6 x i1> %2 to i6
  %i.b = icmp eq i6 %3, -1
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute4CastERKNS_5DatumERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(46) %2, ptr noundef %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %class.anon.177, align 1            ; 3 uses
  %5 = alloca %class.anon.177, align 1            ; 3 uses
  %6 = alloca %class.anon.162, align 8            ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::vector.92", align 8    ; 11 uses
  %9 = alloca [1 x %"struct.arrow::Datum"], align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !33
  store i32 1953718627, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 4, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i8 -1, ptr %i.d, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %9, ptr %6, align 8, !tbaa !225
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %9) #26
  br label %.body

bb.b:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !223
  store i8 %i.g, ptr %i.d, align 8, !tbaa !223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.h = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 4 uses

.thread:                                          ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body13

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.h, ptr %8, align 8, !tbaa !228
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !231
  %i.m = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5arrow5DatumEPS1_ET0_T_S6_S5_(ptr noundef nonnull %9, ptr noundef nonnull %i.j, ptr noundef nonnull %i.h)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 24) #29
  br label %.body13

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !232
  invoke void @_ZN5arrow7compute12CallFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_5DatumESaISA_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %2, ptr noundef %3)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %8, align 8, !tbaa !228    ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !232  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #30
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i:     ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !233

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !228
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.e
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %bb.e ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !231
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #29
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #30
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ab = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.a
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !40
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.i:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #26
  br label %.body13

.body13:                                          ; preds = %.thread, %bb.c, %bb.i
  %.pn = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.i, %.thread ], [ %i.n, %bb.c ]
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #26
  br label %.body

.body:                                            ; preds = %.body13, %bb.a
  %.pn.pn = phi { ptr, i32 } [ %i.e, %bb.a ], [ %.pn, %.body13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ag = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %.body
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !40
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN5arrow7compute12CallFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_5DatumESaISA_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.88") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.177, align 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(17) %0)
          to label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #30
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.177, align 1            ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !228    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
