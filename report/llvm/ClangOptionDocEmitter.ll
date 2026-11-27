Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ClangOptionDocEmitter?download=true
inline.NumInlined: 1926
inline.NumDeleted: 876
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZZN12_GLOBAL__N_110emitOptionERKNS_16DocumentedOptionEPKN4llvm6RecordERNS3_11raw_ostreamEENK3$_2clES6_":bb.a
  %i.jx = load ptr, ptr %i.z, align 8, !tbaa !142
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jw to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.ka) #22
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit66.i.i

_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit66.i.i: ; preds = %bb.ah, %_ZN4llvm11raw_ostreamlsEPKc.exit64.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.kb = load ptr, ptr %1, align 8, !tbaa !149   ; 3 uses
  %i.kc = load ptr, ptr %i.k, align 8, !tbaa !150 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.kb, %i.kc
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit66.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ki, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.kb, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit66.i.i ] ; 3 uses
  %i.kd = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !31
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i67.i.i = icmp eq ptr %i.ki, %i.kc
  br i1 %.not.i.i.i67.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %1, align 8, !tbaa !149
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit66.i.i
  %i.kj = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i ], [ %i.kb, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit66.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.kj, null
  br i1 %.not.i.i1.i.i.i, label %_ZN12_GLOBAL__N_114emitOptionNameEN4llvm9StringRefEPKNS0_6RecordERNS0_11raw_ostreamE.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i
  %i.kk = load ptr, ptr %i.l, align 8, !tbaa !151
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = ptrtoint ptr %i.kj to i64
  %i.kn = sub i64 %i.kl, %i.km
  call void @_ZdlPvm(ptr noundef nonnull %i.kj, i64 noundef %i.kn) #22
  br label %_ZN12_GLOBAL__N_114emitOptionNameEN4llvm9StringRefEPKNS0_6RecordERNS0_11raw_ostreamE.exit.i

_ZN12_GLOBAL__N_114emitOptionNameEN4llvm9StringRefEPKNS0_6RecordERNS0_11raw_ostreamE.exit.i: ; preds = %bb.ai, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ko, %i.e
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.c

_ZN12_GLOBAL__N_115emitOptionNamesEPKN4llvm6RecordERNS0_11raw_ostreamEb.exit: ; preds = %._crit_edge.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  store i8 %.0.lcssa.i, ptr %.0.val, align 1, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_118emitOptionWithArgsEN4llvm9StringRefEPKNS0_6RecordENS0_8ArrayRefIS1_EERNS0_11raw_ostreamE(ptr %0, i64 %1, ptr noundef %2, ptr nofree readonly captures(address) %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(48) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %0, i64 noundef %1) #20
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %0, i64 %1, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %1
  store ptr %i.k, ptr %i.c, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.i, %bb.b ], [ %5, %bb.d ], [ %5, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.l = tail call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr nonnull @.str.26, i64 4) #20 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  call fastcc void @_ZN12_GLOBAL__N_19escapeRSTB5cxx11EN4llvm9StringRefE(ptr dead_on_unwind noalias writable align 8 %6, ptr %i.m, i64 %i.n)
  %i.o = load ptr, ptr %6, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !23
  %i.r = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef %i.o, i64 noundef %i.q) #20 ; 0 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !24     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !31
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.x = call noundef ptr @_ZNK4llvm6Record13getValueAsDefENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr nonnull @.str.6, i64 4) #20
  %.val = load ptr, ptr %i.x, align 8, !tbaa !136 ; 2 uses
  %i.y = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.y, align 8, !tbaa !137 ; 9 uses
  %i.z = getelementptr i8, ptr %.val, i64 32
  %.val.val23 = load i64, ptr %i.z, align 8, !tbaa !47
  %.0.val.32.val.fr.i = freeze i64 %.val.val23
  switch i64 %.0.val.32.val.fr.i, label %_ZN4llvm12StringSwitchISt4pairINS_9StringRefES2_ES3_E5CasesESt16initializer_listINS_13StringLiteralEES3_.exit.thread41.i [
    i64 16, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i8.i
    i64 11, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i
    i64 23, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1.i
    i64 24, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i.2.i
    i64 26, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i.3.i
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i.i:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %.val.val, align 1
  %i.ab = xor i64 %i.aa, 5282522660957210955
  %i.ac = getelementptr i8, ptr %.val.val, i64 3
  %i.ad = load i64, ptr %i.ac, align 1
  %i.ae = xor i64 %i.ad, 4919424244741988164
  %i.af = or i64 %i.ab, %i.ae
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %.not.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_120getSeparatorsForKindEPKN4llvm6RecordE.exit, label %_ZN4llvm12StringSwitchISt4pairINS_9StringRefES2_ES3_E5CasesESt16initializer_listINS_13StringLiteralEES3_.exit.thread41.i

_ZN4llvmneENS_9StringRefES0_.exit.i.i.1.i:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load i128, ptr %.val.val, align 1
  %i.aj = xor i128 %i.ai, 110820861297804774315761271447678241099
  %i.ak = getelementptr i8, ptr %.val.val, i64 7
  %i.al = load i128, ptr %i.ak, align 1
  %i.am = xor i128 %i.al, 92154209518823251364604803669714882121
  %i.an = or i128 %i.aj, %i.am
  %i.ao = icmp ne i128 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %.not.i.i.1.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.1.i, label %_ZN12_GLOBAL__N_120getSeparatorsForKindEPKN4llvm6RecordE.exit, label %_ZN4llvm12StringSwitchISt4pairINS_9StringRefES2_ES3_E5CasesESt16initializer_listINS_13StringLiteralEES3_.exit.thread41.i

_ZN4llvmneENS_9StringRefES0_.exit.i.i.2.i:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i128, ptr %.val.val, align 1
  %i.ar = xor i128 %i.aq, 126631322993210634638254210671532984651
  %i.as = getelementptr i8, ptr %.val.val, i64 16
  %i.at = load i64, ptr %i.as, align 1
  %i.au = zext i64 %i.at to i128
  %i.av = xor i128 %i.au, 4995689708199626067
  %i.aw = or i128 %i.ar, %i.av
  %i.ax = icmp ne i128 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %.not.i.i.2.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.2.i, label %_ZN12_GLOBAL__N_120getSeparatorsForKindEPKN4llvm6RecordE.exit, label %_ZN4llvm12StringSwitchISt4pairINS_9StringRefES2_ES3_E5CasesESt16initializer_listINS_13StringLiteralEES3_.exit.thread41.i

_ZN4llvmneENS_9StringRefES0_.exit.i.i.3.i:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load i128, ptr %.val.val, align 1
  %i.ba = xor i128 %i.az, 86894534181145923612923981071960131915
  %i.bb = getelementptr i8, ptr %.val.val, i64 10
  %i.bc = load i128, ptr %i.bb, align 1
  %i.bd = xor i128 %i.bc, 90747360032757357282989812284719515982
  %i.be = or i128 %i.ba, %i.bd
  %i.bf = icmp ne i128 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %.not.i.i.3.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.3.i, label %_ZN12_GLOBAL__N_120getSeparatorsForKindEPKN4llvm6RecordE.exit, label %_ZN4llvm12StringSwitchISt4pairINS_9StringRefES2_ES3_E5CasesESt16initializer_listINS_13StringLiteralEES3_.exit.thread41.i

_ZN4llvmneENS_9StringRefES0_.exit.i.i8.i:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = load i128, ptr %.val.val, align 1
  %i.bi = icmp ne i128 %i.bh, 90747360032757215501746365091376154955
  %i.bj = zext i1 %i.bi to i32
  %.not.i.i10.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i10.i, label %_ZN12_GLOBAL__N_120getSeparatorsForKindEPKN4llvm6RecordE.exit, label %_ZN4llvm12StringSwitchISt4pairINS_9StringRefES2_ES3_E5CasesESt16initializer_listINS_13StringLiteralEES3_.exit.thread41.i

_ZN4llvm12StringSwitchISt4pairINS_9StringRefES2_ES3_E5CasesESt16initializer_listINS_13StringLiteralEES3_.exit.thread41.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i8.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.3.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.2.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %_ZN12_GLOBAL__N_120getSeparatorsForKindEPKN4llvm6RecordE.exit

_ZN12_GLOBAL__N_120getSeparatorsForKindEPKN4llvm6RecordE.exit: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.2.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.3.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8.i, %_ZN4llvm12StringSwitchISt4pairINS_9StringRefES2_ES3_E5CasesESt16initializer_listINS_13StringLiteralEES3_.exit.thread41.i
  %.str.53.sink.i = phi ptr [ @.str.21, %_ZN4llvm12StringSwitchISt4pairINS_9StringRefES2_ES3_E5CasesESt16initializer_listINS_13StringLiteralEES3_.exit.thread41.i ], [ @.str.53, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i ], [ @.str.53, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1.i ], [ @.str.53, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.2.i ], [ @.str.53, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.3.i ], [ @.str.53, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8.i ] ; 2 uses
  %.not.i24.peel = phi i1 [ false, %_ZN4llvm12StringSwitchISt4pairINS_9StringRefES2_ES3_E5CasesESt16initializer_listINS_13StringLiteralEES3_.exit.thread41.i ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1.i ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.2.i ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.3.i ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8.i ]
  %.sink.i = phi i64 [ 1, %_ZN4llvm12StringSwitchISt4pairINS_9StringRefES2_ES3_E5CasesESt16initializer_listINS_13StringLiteralEES3_.exit.thread41.i ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1.i ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.2.i ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.3.i ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8.i ] ; 2 uses
  %.sroa.8.sroa.6.1.ph.sink.i = phi ptr [ @.str.21, %_ZN4llvm12StringSwitchISt4pairINS_9StringRefES2_ES3_E5CasesESt16initializer_listINS_13StringLiteralEES3_.exit.thread41.i ], [ @.str.21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.i ], [ @.str.21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1.i ], [ @.str.21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.2.i ], [ @.str.21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.3.i ], [ @.str.20, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8.i ] ; 2 uses
  %.idx = shl nuw nsw i64 %4, 4
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_120getSeparatorsForKindEPKN4llvm6RecordE.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %.sroa.03.0.copyload.peel = load ptr, ptr %3, align 8, !tbaa !137
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload.peel = load i64, ptr %.sroa.4.0..sroa_idx.peel, align 8, !tbaa !47
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp ugt i64 %.sink.i, %i.br
  br i1 %i.bs, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  br i1 %.not.i24.peel, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26.peel, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bt = load i8, ptr %.str.53.sink.i, align 1
  store i8 %i.bt, ptr %i.bo, align 1
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bv, ptr %i.c, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26.peel

bb.g:                                             ; preds = %.lr.ph
  %i.bw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %.str.53.sink.i, i64 noundef %.sink.i) #20
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26.peel

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26.peel: ; preds = %bb.g, %bb.f, %bb.e
  %.0.i25.peel = phi ptr [ %i.bw, %bb.g ], [ %5, %bb.f ], [ %5, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call fastcc void @_ZN12_GLOBAL__N_19escapeRSTB5cxx11EN4llvm9StringRefE(ptr dead_on_unwind noalias writable align 8 %7, ptr %.sroa.03.0.copyload.peel, i64 %.sroa.4.0.copyload.peel)
  %i.bx = load ptr, ptr %7, align 8, !tbaa !24
  %i.by = load i64, ptr %i.bl, align 8, !tbaa !23
  %i.bz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i25.peel, ptr noundef %i.bx, i64 noundef %i.by) #20 ; 0 uses
  %i.ca = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bm
  br i1 %i.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.peel: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26.peel
  %i.cc = load i64, ptr %i.bm, align 8, !tbaa !31
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28.peel: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26.peel
  %8 = load i64, ptr %i.bl, align 8, !tbaa !23
  %9 = icmp ult i64 %8, 16
  call void @llvm.assume(i1 %9)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.not.peel = icmp eq i64 %4, 1
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.peel
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.peel, %_ZN12_GLOBAL__N_120getSeparatorsForKindEPKN4llvm6RecordE.exit
  ret void

bb.h:                                             ; preds = %.peel.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.036 = phi ptr [ %i.ce, %.peel.next ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ] ; 3 uses
  %.sroa.03.0.copyload = load ptr, ptr %.036, align 8, !tbaa !137
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !47
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ci = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %.sroa.8.sroa.6.1.ph.sink.i, i64 noundef 1) #20
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26

bb.j:                                             ; preds = %bb.h
  %i.cj = load i8, ptr %.sroa.8.sroa.6.1.ph.sink.i, align 1
  store i8 %i.cj, ptr %i.cg, align 1
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store ptr %i.cl, ptr %i.c, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26:    ; preds = %bb.i, %bb.j
  %.0.i25 = phi ptr [ %i.ci, %bb.i ], [ %5, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call fastcc void @_ZN12_GLOBAL__N_19escapeRSTB5cxx11EN4llvm9StringRefE(ptr dead_on_unwind noalias writable align 8 %7, ptr %.sroa.03.0.copyload, i64 %.sroa.4.0.copyload)
  %i.cm = load ptr, ptr %7, align 8, !tbaa !24
  %i.cn = load i64, ptr %i.bl, align 8, !tbaa !23
  %i.co = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i25, ptr noundef %i.cm, i64 noundef %i.cn) #20 ; 0 uses
  %i.cp = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bm
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26
  %i.cr = load i64, ptr %i.bm, align 8, !tbaa !31
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ct = getelementptr inbounds nuw i8, ptr %.036, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ct, %i.bk
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !277
}

declare noundef i64 @_ZNK4llvm6Record13getValueAsIntENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare noundef ptr @_ZN4llvm10StringInit3getERNS_12RecordKeeperENS_9StringRefENS0_12StringFormatE(ptr noundef nonnull align 8 dereferenceable(240), ptr, i64, i32 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9join_implIPNS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SA_S2_St20forward_iterator_tag(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !23
  store i8 0, ptr %i.a, align 8, !tbaa !31
  %i.c = icmp eq ptr %1, %2
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4
  %i.h = add nsw i64 %i.g, -1
  %i.i = mul i64 %i.h, %4
  br label %bb.e

bb.c:                                             ; preds = %bb.e
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q) #20
  %i.j = load ptr, ptr %0, align 8, !tbaa !24
  %i.k = icmp eq ptr %i.j, %i.a
  %.pre = load i64, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.c
  %i.l = icmp ult i64 %.pre, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !47 ; 2 uses
  %i.m = sub i64 4611686018427387903, %.pre
  %i.n = icmp ult i64 %i.m, %.sroa.24.0.copyload
  br i1 %i.n, label %bb.d, label %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #21
  unreachable

_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !tbaa !137
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.sroa.03.0.copyload, i64 noundef %.sroa.24.0.copyload) #20 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not2533 = icmp eq ptr %i.p, %2
  br i1 %.not2533, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %bb.b, %bb.e
  %.02032 = phi i64 [ %i.i, %bb.b ], [ %i.q, %bb.e ]
  %.02131 = phi ptr [ %1, %bb.b ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.3.0..021.sroa_idx = getelementptr inbounds nuw i8, ptr %.02131, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..021.sroa_idx, align 8, !tbaa !47
  %i.q = add i64 %.sroa.3.0.copyload, %.02032     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02131, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.r, %2
  br i1 %.not, label %bb.c, label %bb.e, !llvm.loop !279

.lr.ph:                                           ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit, %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit27
  %i.s = phi ptr [ %i.ab, %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit27 ], [ %i.p, %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit ] ; 3 uses
  %.034 = phi ptr [ %i.s, %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit27 ], [ %1, %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit ]
  %i.t = load i64, ptr %i.b, align 8, !tbaa !23
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %4
  br i1 %i.v, label %bb.f, label %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit26

bb.f:                                             ; preds = %.lr.ph
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #21
  unreachable

_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit26: ; preds = %.lr.ph
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %3, i64 noundef %4) #20 ; 0 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 24
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !47 ; 2 uses
  %i.x = load i64, ptr %i.b, align 8, !tbaa !23
  %i.y = sub i64 4611686018427387903, %i.x
  %i.z = icmp ult i64 %i.y, %.sroa.2.0.copyload
  br i1 %i.z, label %bb.g, label %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit27

bb.g:                                             ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit26
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #21
  unreachable

_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit27: ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit26
  %.sroa.0.0.copyload = load ptr, ptr %i.s, align 8, !tbaa !137
  %i.aa = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload) #20 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.not25 = icmp eq ptr %i.ab, %2
  br i1 %.not25, label %.loopexit, label %.lr.ph, !llvm.loop !280

.loopexit:                                        ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit27, %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4llvm12RecordKeeper24getAllDerivedDefinitionsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4llvm6RecordESt4lessIS5_ESaISt4pairIKS5_S9_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.168", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.118", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
end_hunk_0
