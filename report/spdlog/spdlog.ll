Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/spdlog/original/spdlog?download=true
inline.NumInlined: 6885
inline.NumDeleted: 3933
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_ZN6spdlog17pattern_formatterC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17pattern_time_typeES6_St13unordered_mapIcSt10unique_ptrINS_21custom_flag_formatterESt14default_deleteISA_EESt4hashIcESt8equal_toIcESaISt4pairIKcSD_EEE:bb.a
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !59   ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.p, ptr %i.n, align 8, !tbaa !60
  %i.w = load i64, ptr %i.q, align 8, !tbaa !64
  store i64 %i.w, ptr %i.o, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.y, ptr %i.z, align 8, !tbaa !59
  store ptr %i.q, ptr %3, align 8, !tbaa !60
  store i64 0, ptr %i.x, align 8, !tbaa !59
  store i8 0, ptr %i.q, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %2, ptr %i.aa, align 8, !tbaa !222
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 0, ptr %i.ab, align 4, !tbaa !223
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.af = load ptr, ptr %4, align 8, !tbaa !197   ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !197
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !198 ; 2 uses
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !198
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !199 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !176
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !224
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !224
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !226
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !227
  %i.as = load ptr, ptr %4, align 8, !tbaa !197
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4
  store ptr %i.ar, ptr %i.ae, align 8, !tbaa !197
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !227
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !227
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4
  %i.aw = phi ptr [ %i.ar, %bb.d ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4 ]
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEEC2EOSE_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !64
  %i.az = sext i8 %i.ay to i64
  %i.ba = urem i64 %i.az, %i.ai
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ba
  store ptr %i.aj, ptr %i.bb, align 8, !tbaa !228
  br label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEEC2EOSE_.exit

_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEEC2EOSE_.exit: ; preds = %bb.e, %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !229
  store i64 1, ptr %i.ah, align 8, !tbaa !198
  store ptr null, ptr %i.at, align 8, !tbaa !227
  store ptr %i.at, ptr %4, align 8, !tbaa !197
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i8 0, i64 56, i1 false)
  invoke void @_ZN6spdlog17pattern_formatter16compile_pattern_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEEC2EOSE_.exit
  ret void

bb.h:                                             ; preds = %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEEC2EOSE_.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ae) #37
  tail call void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ad) #37
  %i.bf = load ptr, ptr %i.n, align 8, !tbaa !60  ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.o
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef %i.bf) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.b
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.bh) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  resume { ptr, i32 } %i.be
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog17pattern_formatter16compile_pattern_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.126", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !60     ; 3 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr null, ptr %2, align 8, !tbaa !450
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !231  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !232  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #37, !inline_history !429
  br label %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  store ptr %i.g, ptr %i.h, align 8, !tbaa !232
  %.pre = load ptr, ptr %1, align 8, !tbaa !60
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.o = phi ptr [ %i.a, %bb.a ], [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i ] ; 2 uses
  %.not97 = icmp eq ptr %i.o, %i.e
  br i1 %.not97, label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53, label %.lr.ph99

.lr.ph99:                                         ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE5clearEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph99, %bb.y
  %i.q = phi ptr [ null, %.lr.ph99 ], [ %i.dm, %bb.y ] ; 2 uses
  %i.r = phi ptr [ null, %.lr.ph99 ], [ %i.dn, %bb.y ] ; 6 uses
  %i.s = phi ptr [ null, %.lr.ph99 ], [ %i.do, %bb.y ] ; 3 uses
  %.sroa.064.098 = phi ptr [ %i.o, %.lr.ph99 ], [ %i.dp, %bb.y ] ; 5 uses
  %i.t = load i8, ptr %.sroa.064.098, align 1, !tbaa !64 ; 2 uses
  %i.u = icmp eq i8 %i.t, 37
  br i1 %i.u, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %.not77.a = icmp eq ptr %i.r, null
  br i1 %.not77.a, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %2, align 8, !tbaa !235
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !232  ; 6 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !236
  %.not.i.i16 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %i.r to i64
  store i64 %i.x, ptr %i.v, align 8, !tbaa !234
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %i.h, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !231  ; 10 uses
  %i.aa = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ae = ashr exact i64 %i.ac, 3
  %mul2.i.i.i = ashr exact i64 %i.ac, 2
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.af = icmp ult i64 %3, %i.ae
  %i.ag = tail call i64 @llvm.umin.i64(i64 %3, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #45
          to label %.noexc18 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit ; 10 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ac
  %i.al = ptrtoint ptr %i.r to i64
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.v
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc18
  %i.am = add i64 %i.aa, -8
  %i.an = sub i64 %i.am, %i.ab                    ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader196, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep167.a = getelementptr i8, ptr %i.aj, i64 8
  %i.aq = add i64 %i.aa, -8
  %i.ar = sub i64 %i.aq, %i.ab
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %scevgep168.a = getelementptr i8, ptr %scevgep167.a, i64 %i.as
  %scevgep169 = getelementptr i8, ptr %i.z, i64 8
  %scevgep170 = getelementptr i8, ptr %scevgep169, i64 %i.as
  %bound0 = icmp ult ptr %i.aj, %scevgep170
  %bound1 = icmp ult ptr %i.z, %scevgep168.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader196, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.aj, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.z, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.aw ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.z, i64 %i.aw ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.ax = getelementptr i8, ptr %next.gep171, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep171, align 8, !tbaa !234, !alias.scope !453, !noalias !451
  %wide.load172 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !234, !alias.scope !453, !noalias !451
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !234, !alias.scope !454, !noalias !453
  store <2 x i64> %wide.load172, ptr %i.ay, align 8, !tbaa !234, !alias.scope !454, !noalias !453
  %i.az = getelementptr i8, ptr %next.gep171, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep171, align 8, !tbaa !234, !alias.scope !453, !noalias !451
  store <2 x ptr> splat (ptr null), ptr %i.az, align 8, !tbaa !234, !alias.scope !453, !noalias !451
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader196

.lr.ph.i.i.i.i.i.i.i.preheader196:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader196, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader196 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader196 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.bb = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !452, !noalias !451
  store i64 %i.bb, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !451, !noalias !452
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !452, !noalias !451
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !437

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc18
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.noexc18 ], [ %i.au, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.aj, ptr %i.f, align 8, !tbaa !231
  store ptr %i.be, ptr %i.h, align 8, !tbaa !232
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.bf, ptr %i.p, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit.split-lp: ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit.split-lp, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit.split-lp ]
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #37, !inline_history !19
  br label %bb.ae

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.e, %bb.c
  %i.bj = phi ptr [ null, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ null, %bb.e ], [ %i.q, %bb.c ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.064.098, i64 1 ; 4 uses
  %i.bl = icmp eq ptr %i.bk, %i.e
  br i1 %i.bl, label %bb.o, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !64
  switch i8 %i.bm, label %bb.k [
    i8 45, label %.sink.split.i
    i8 61, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %.017.ph.i = phi i64 [ 2, %bb.j ], [ 1, %bb.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.064.098, i64 2
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.i
  %.sroa.064.2 = phi ptr [ %i.bk, %bb.i ], [ %i.bn, %.sink.split.i ] ; 9 uses
  %.017.i = phi i64 [ 0, %bb.i ], [ %.017.ph.i, %.sink.split.i ] ; 5 uses
  %.sroa.064.2110 = ptrtoaddr ptr %.sroa.064.2 to i64
  %i.bo = icmp eq ptr %.sroa.064.2, %i.e
  br i1 %i.bo, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = load i8, ptr %.sroa.064.2, align 1, !tbaa !64 ; 2 uses
  %i.bq = add i8 %i.bp, -48
  %isdigit.i = icmp ult i8 %i.bq, 10
  br i1 %isdigit.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.br = zext nneg i8 %i.bp to i64
  %i.bs = add nsw i64 %i.br, -48                  ; 3 uses
  %storemerge36.i = getelementptr inbounds nuw i8, ptr %.sroa.064.2, i64 1 ; 5 uses
  %.not37.i = icmp eq ptr %storemerge36.i, %i.e
  br i1 %.not37.i, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.bt = load i8, ptr %storemerge36.i, align 1, !tbaa !64 ; 3 uses
  %i.bu = add i8 %i.bt, -48
  %isdigit18.i91 = icmp ult i8 %i.bu, 10
  br i1 %isdigit18.i91, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %i.bv = getelementptr i8, ptr %.sroa.064.2, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.bv, i64 %i.b
  %i.bw = sub i64 0, %.sroa.064.2110
  %scevgep111 = getelementptr i8, ptr %scevgep, i64 %i.bw ; 2 uses
  %i.bx = zext nneg i8 %i.bt to i64
  %i.by = mul nuw nsw i64 %i.bs, 10
  %i.bz = add nsw i64 %i.by, -48
  %i.ca = add nsw i64 %i.bz, %i.bx                ; 2 uses
  %storemerge.i163 = getelementptr inbounds nuw i8, ptr %.sroa.064.2, i64 2 ; 2 uses
  %.not.i22164 = icmp eq ptr %storemerge.i163, %i.e
  br i1 %.not.i22164, label %.critedge.i, label %.lr.ph.i.lr.ph, !llvm.loop !20

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  br label %.lr.ph.i, !llvm.loop !20

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %storemerge.i166 = phi ptr [ %storemerge.i163, %.lr.ph.i.lr.ph ], [ %storemerge.i, %.lr.ph ] ; 4 uses
  %i.cb = phi i64 [ %i.ca, %.lr.ph.i.lr.ph ], [ %i.ch, %.lr.ph ] ; 2 uses
  %.sroa.064.392165 = phi ptr [ %storemerge36.i, %.lr.ph.i.lr.ph ], [ %storemerge.i166, %.lr.ph ]
  %i.cc = load i8, ptr %storemerge.i166, align 1, !tbaa !64 ; 3 uses
  %i.cd = add i8 %i.cc, -48
  %isdigit18.i = icmp ult i8 %i.cd, 10
  br i1 %isdigit18.i, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !20

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.ce = zext nneg i8 %i.cc to i64
  %i.cf = mul i64 %i.cb, 10
  %i.cg = add i64 %i.cf, -48
  %i.ch = add i64 %i.cg, %i.ce                    ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge.i166, i64 1 ; 2 uses
  %.not.i22 = icmp eq ptr %storemerge.i, %i.e
  br i1 %.not.i22, label %.lr.ph..critedge.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !20

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.sroa.064.3.lcssa = phi ptr [ %storemerge36.i, %.lr.ph.i.preheader ], [ %storemerge.i166, %.lr.ph.i ]
  %.03139.i.lcssa = phi i64 [ %i.bs, %.lr.ph.i.preheader ], [ %i.cb, %.lr.ph.i ] ; 2 uses
  %.pn38.i.lcssa = phi ptr [ %.sroa.064.2, %.lr.ph.i.preheader ], [ %.sroa.064.392165, %.lr.ph.i ]
  %.lcssa82 = phi i8 [ %i.bt, %.lr.ph.i.preheader ], [ %i.cc, %.lr.ph.i ]
  %i.ci = icmp eq i8 %.lcssa82, 33
  br i1 %i.ci, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %.lr.ph.i._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn38.i.lcssa, i64 2
  %i.ck = or disjoint i64 %.017.i, 4294967296
  br label %.critedge.i

.lr.ph..critedge.i.loopexit_crit_edge:            ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !20

.critedge.i:                                      ; preds = %.lr.ph.preheader, %.lr.ph..critedge.i.loopexit_crit_edge, %bb.n, %.lr.ph.i._crit_edge, %bb.m
  %.sroa.064.4 = phi ptr [ %storemerge36.i, %bb.m ], [ %.sroa.064.3.lcssa, %.lr.ph.i._crit_edge ], [ %i.cj, %bb.n ], [ %scevgep111, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %scevgep111, %.lr.ph.preheader ]
  %.03134.i = phi i64 [ %i.bs, %bb.m ], [ %.03139.i.lcssa, %.lr.ph.i._crit_edge ], [ %.03139.i.lcssa, %bb.n ], [ %i.ch, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %i.ca, %.lr.ph.preheader ]
  %.0.i = phi i64 [ %.017.i, %bb.m ], [ %.017.i, %.lr.ph.i._crit_edge ], [ %i.ck, %bb.n ], [ %.017.i, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %.017.i, %.lr.ph.preheader ]
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.03134.i, i64 64)
  %.sroa.6.13.insert.insert.i = or disjoint i64 %.0.i, 1099511627776
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i, %bb.l, %bb.k, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %.sroa.064.5 = phi ptr [ %i.bk, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.064.2, %bb.k ], [ %.sroa.064.4, %.critedge.i ], [ %.sroa.064.2, %bb.l ] ; 4 uses
  %.sroa.6.0.i = phi i64 [ 0, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ 0, %bb.k ], [ %.sroa.6.13.insert.insert.i, %.critedge.i ], [ 0, %bb.l ] ; 3 uses
  %.sroa.027.0.i = phi i64 [ 0, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ 0, %bb.k ], [ %.sroa.speculated.i, %.critedge.i ], [ 0, %bb.l ] ; 2 uses
  %.not78.a = icmp eq ptr %.sroa.064.5, %i.e
  br i1 %.not78.a, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = and i64 %.sroa.6.0.i, 1099511627776
  %.not80 = icmp eq i64 %i.cl, 0
  %i.cm = load i8, ptr %.sroa.064.5, align 1, !tbaa !64 ; 2 uses
  br i1 %.not80, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 noundef signext %i.cm, i64 %.sroa.027.0.i, i64 %.sroa.6.0.i)
          to label %bb.y unwind label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.s:                                             ; preds = %bb.p
  invoke void @_ZN6spdlog17pattern_formatter12handle_flag_INS_7details18null_scoped_padderEEEvcNS2_12padding_infoE(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 noundef signext %i.cm, i64 %.sroa.027.0.i, i64 %.sroa.6.0.i)
          to label %bb.y unwind label %bb.r

bb.t:                                             ; preds = %bb.b
  %.not76 = icmp eq ptr %i.s, null
  br i1 %.not76, label %bb.u, label %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113

._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113: ; preds = %bb.t
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.pre114 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !60
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.co = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #45
          to label %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge unwind label %bb.v ; 8 uses

._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge: ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.co, i8 0, i64 56, i1 false), !noalias !455
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details19aggregate_formatterE, i64 16), ptr %i.co, align 16, !tbaa !62, !noalias !455
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 40 ; 2 uses
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !63, !noalias !455
  store ptr %i.co, ptr %2, align 8, !tbaa !235
  %.pre112 = load i8, ptr %.sroa.064.098, align 1, !tbaa !64
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge
  %i.cs = phi ptr [ %i.co, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.q, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ]
  %i.ct = phi ptr [ %i.co, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.r, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ]
  %i.cu = phi ptr [ %i.cq, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %.pre114, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ] ; 2 uses
  %i.cv = phi i8 [ %.pre112, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.t, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ]
  %i.cw = phi ptr [ %i.co, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.s, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 32 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !59 ; 4 uses
  %i.da = add i64 %i.cz, 1                        ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 40 ; 2 uses
  %i.dc = icmp eq ptr %i.cu, %i.db
  br i1 %i.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.dd = icmp ult i64 %i.cz, 16
  tail call void @llvm.assume(i1 %i.dd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.de = load i64, ptr %i.db, align 8, !tbaa !64
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.df = phi i64 [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.dg = icmp ugt i64 %i.da, %i.df
  br i1 %i.dg, label %bb.w, label %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i64 noundef %i.cz, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc26 unwind label %bb.x

.noexc26:                                         ; preds = %bb.w
  %.pre.i.i.i = load ptr, ptr %i.cx, align 8, !tbaa !60
  br label %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit

_ZN6spdlog7details19aggregate_formatter6add_chEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, %.noexc26
  %i.dh = phi ptr [ %.pre.i.i.i, %.noexc26 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz
  store i8 %i.cv, ptr %i.di, align 1, !tbaa !64
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !59
  %i.dj = load ptr, ptr %i.cx, align 8, !tbaa !60
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.da
  store i8 0, ptr %i.dk, align 1, !tbaa !64
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.y:                                             ; preds = %bb.q, %bb.s, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit
  %i.dm = phi ptr [ %i.cs, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ %i.bj, %bb.s ], [ %i.bj, %bb.q ] ; 2 uses
  %i.dn = phi ptr [ %i.ct, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ null, %bb.s ], [ null, %bb.q ]
  %i.do = phi ptr [ %i.cw, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ null, %bb.s ], [ null, %bb.q ]
  %.sroa.064.1 = phi ptr [ %.sroa.064.098, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ %.sroa.064.5, %bb.s ], [ %.sroa.064.5, %bb.q ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.064.1, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.dp, %i.e
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !440

.critedge:                                        ; preds = %bb.y, %bb.o
  %i.dq = phi ptr [ %i.dm, %bb.y ], [ %i.bj, %bb.o ] ; 5 uses
  %.not79 = icmp eq ptr %i.dq, null
  br i1 %.not79, label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53, label %bb.z

bb.z:                                             ; preds = %.critedge
  store ptr null, ptr %2, align 8, !tbaa !235
  %i.dr = load ptr, ptr %i.h, align 8, !tbaa !232 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !236
  %.not.i.i27 = icmp eq ptr %i.dr, %i.dt
  br i1 %.not.i.i27, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = ptrtoint ptr %i.dq to i64
  store i64 %i.du, ptr %i.dr, align 8, !tbaa !234
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.dv, ptr %i.h, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53

bb.ab:                                            ; preds = %bb.z
  %i.dw = load ptr, ptr %i.f, align 8, !tbaa !231 ; 10 uses
  %i.dx = ptrtoint ptr %i.dr to i64               ; 3 uses
  %i.dy = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.dz = sub i64 %i.dx, %i.dy                    ; 4 uses
  %i.ea = icmp eq i64 %i.dz, 9223372036854775800
  br i1 %i.ea, label %bb.ac, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc40 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48

.noexc40:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28: ; preds = %bb.ab
  %i.eb = ashr exact i64 %i.dz, 3
  %mul2.i.i.i28 = ashr exact i64 %i.dz, 2
  %4 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i28, i64 1) ; 2 uses
  %i.ec = icmp ult i64 %4, %i.eb
  %i.ed = tail call i64 @llvm.umin.i64(i64 %4, i64 1152921504606846975)
  %i.ee = select i1 %i.ec, i64 1152921504606846975, i64 %i.ed ; 2 uses
  %i.ef = shl nuw nsw i64 %i.ee, 3
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #45
          to label %.noexc41 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48 ; 10 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dz
  %i.ei = ptrtoint ptr %i.dq to i64
  store i64 %i.ei, ptr %i.eh, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i31 = icmp eq ptr %i.dw, %i.dr
  br i1 %.not10.i.i.i.i.i.i.i31, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i32.preheader

.lr.ph.i.i.i.i.i.i.i32.preheader:                 ; preds = %.noexc41
  %i.ej = add i64 %i.dx, -8
  %i.ek = sub i64 %i.ej, %i.dy                    ; 2 uses
  %i.el = lshr i64 %i.ek, 3
  %i.em = add nuw nsw i64 %i.el, 1                ; 2 uses
  %min.iters.check181 = icmp ult i64 %i.ek, 136
  br i1 %min.iters.check181, label %.lr.ph.i.i.i.i.i.i.i32.preheader195, label %vector.memcheck174

vector.memcheck174:                               ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader
  %i.en = add i64 %i.dx, -8
  %i.eo = sub i64 %i.en, %i.dy
  %i.ep = and i64 %i.eo, -8
  %i.eq = add i64 %i.ep, 8                        ; 2 uses
  %scevgep175 = getelementptr i8, ptr %i.eg, i64 %i.eq
  %scevgep176 = getelementptr i8, ptr %i.dw, i64 %i.eq
  %bound0177 = icmp ult ptr %i.eg, %scevgep176
  %bound1178 = icmp ult ptr %i.dw, %scevgep175
  %found.conflict179 = and i1 %bound0177, %bound1178
  br i1 %found.conflict179, label %.lr.ph.i.i.i.i.i.i.i32.preheader195, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck174
  %n.vec183 = and i64 %i.em, 4611686018427387900  ; 3 uses
  %i.er = shl i64 %n.vec183, 3                    ; 2 uses
  %i.es = getelementptr i8, ptr %i.eg, i64 %i.er  ; 2 uses
  %i.et = getelementptr i8, ptr %i.dw, i64 %i.er
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next190, %vector.body184 ] ; 2 uses
  %i.eu = shl i64 %index185, 3                    ; 2 uses
  %next.gep186 = getelementptr i8, ptr %i.eg, i64 %i.eu ; 2 uses
  %next.gep187 = getelementptr i8, ptr %i.dw, i64 %i.eu ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.ev = getelementptr i8, ptr %next.gep187, i64 16
  %wide.load188 = load <2 x i64>, ptr %next.gep187, align 8, !tbaa !234, !alias.scope !458, !noalias !456
  %wide.load189 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !234, !alias.scope !458, !noalias !456
  %i.ew = getelementptr i8, ptr %next.gep186, i64 16
  store <2 x i64> %wide.load188, ptr %next.gep186, align 8, !tbaa !234, !alias.scope !459, !noalias !458
  store <2 x i64> %wide.load189, ptr %i.ew, align 8, !tbaa !234, !alias.scope !459, !noalias !458
  %i.ex = getelementptr i8, ptr %next.gep187, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep187, align 8, !tbaa !234, !alias.scope !458, !noalias !456
  store <2 x ptr> splat (ptr null), ptr %i.ex, align 8, !tbaa !234, !alias.scope !458, !noalias !456
  %index.next190 = add nuw i64 %index185, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.ey, label %middle.block191, label %vector.body184, !llvm.loop !447

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.em, %n.vec183
  br i1 %cmp.n192, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i32.preheader195

.lr.ph.i.i.i.i.i.i.i32.preheader195:              ; preds = %vector.memcheck174, %.lr.ph.i.i.i.i.i.i.i32.preheader, %middle.block191
  %.012.i.i.i.i.i.i.i33.ph = phi ptr [ %i.eg, %vector.memcheck174 ], [ %i.eg, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.es, %middle.block191 ]
  %.0911.i.i.i.i.i.i.i34.ph = phi ptr [ %i.dw, %vector.memcheck174 ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.et, %middle.block191 ]
  br label %.lr.ph.i.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i.i32:                           ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader195, %.lr.ph.i.i.i.i.i.i.i32
  %.012.i.i.i.i.i.i.i33 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.012.i.i.i.i.i.i.i33.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader195 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i34 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.0911.i.i.i.i.i.i.i34.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader195 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.ez = load i64, ptr %.0911.i.i.i.i.i.i.i34, align 8, !tbaa !234, !alias.scope !457, !noalias !456
  store i64 %i.ez, ptr %.012.i.i.i.i.i.i.i33, align 8, !tbaa !234, !alias.scope !456, !noalias !457
  store ptr null, ptr %.0911.i.i.i.i.i.i.i34, align 8, !tbaa !234, !alias.scope !457, !noalias !456
  %i.fa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i34, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i33, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.fa, %i.dr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i32, !llvm.loop !448

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i32, %middle.block191, %.noexc41
  %.0.lcssa.i.i.i.i.i.i.i37 = phi ptr [ %i.eg, %.noexc41 ], [ %i.es, %middle.block191 ], [ %i.fb, %.lr.ph.i.i.i.i.i.i.i32 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i37, i64 8
  %.not.i23.i.i.i38 = icmp eq ptr %i.dw, null
  br i1 %.not.i23.i.i.i38, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36
  tail call void @_ZdlPv(ptr noundef nonnull %i.dw) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39: ; preds = %bb.ad, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36
  store ptr %i.eg, ptr %i.f, align 8, !tbaa !231
  store ptr %i.fc, ptr %i.h, align 8, !tbaa !232
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.fd, ptr %i.ds, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28, %bb.ac
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %i.dq, align 8, !tbaa !62
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  tail call void %i.fh(ptr noundef nonnull align 8 dereferenceable(24) %i.dq) #37, !inline_history !19
  br label %bb.ae

_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE5clearEv.exit, %bb.aa, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21, %bb.r, %bb.v, %bb.x, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48
  %.pn14 = phi { ptr, i32 } [ %i.fe, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48 ], [ %i.cn, %bb.r ], [ %lpad.phi, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21 ], [ %i.dl, %bb.x ], [ %i.cr, %bb.v ]
  call void @_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %.pn14
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #37, !inline_history !460
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #44
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !17

_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !197
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !198
  %i.l = shl i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !197    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.m) #44
  br label %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !231    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #37, !inline_history !461
  br label %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !18

_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !231
  br label %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #44
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog17pattern_formatterC2ENS_17pattern_time_typeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) initializes((0, 8)) %0, i32 noundef %1, ptr nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::unique_ptr.105", align 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6spdlog17pattern_formatterE, i64 16), ptr %0, align 8, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !63
  store i16 11045, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.c, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.d, align 2, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !63
  %i.g = load ptr, ptr %2, align 8, !tbaa !60     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %._crit_edge.i.i
  store ptr %i.g, ptr %i.e, align 8, !tbaa !60
  %i.n = load i64, ptr %i.h, align 8, !tbaa !64
  store i64 %i.n, ptr %i.f, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.p, ptr %i.q, align 8, !tbaa !59
  store ptr %i.h, ptr %2, align 8, !tbaa !60
  store i64 0, ptr %i.o, align 8, !tbaa !59
  store i8 0, ptr %i.h, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %1, ptr %i.r, align 8, !tbaa !222
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.s, align 4, !tbaa !223
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  store ptr %i.w, ptr %i.v, align 8, !tbaa !197
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 1, ptr %i.x, align 8, !tbaa !198
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.z, align 8, !tbaa !127
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.ac = invoke noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #45
          to label %bb.b unwind label %bb.g       ; 14 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details14full_formatterE, i64 16), ptr %i.ac, align 8, !tbaa !62, !noalias !472
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 0, ptr %i.ae, align 8, !tbaa !237, !noalias !472
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i64 0, ptr %i.ai, align 8, !noalias !472
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ah, align 8, !tbaa !66, !noalias !472
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !67, !noalias !472
  store i64 250, ptr %i.ag, align 8, !tbaa !68, !noalias !472
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 320
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !noalias !472
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details13mdc_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.ak, align 8, !tbaa !62, !noalias !472
  store ptr null, ptr %3, align 8, !tbaa !239
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !232 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !236
  %.not.i.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = ptrtoint ptr %i.ac to i64
  store i64 %i.aq, ptr %i.an, align 8, !tbaa !234
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !231 ; 10 uses
  %i.at = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.au = ptrtoint ptr %i.as to i64               ; 3 uses
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc8 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13

.noexc8:                                          ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ax = ashr exact i64 %i.av, 3
  %mul2.i.i.i = ashr exact i64 %i.av, 2
  %4 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.ay = icmp ult i64 %4, %i.ax
  %i.az = tail call i64 @llvm.umin.i64(i64 %4, i64 1152921504606846975)
  %i.ba = select i1 %i.ay, i64 1152921504606846975, i64 %i.az ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #45
          to label %.noexc9 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13 ; 10 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.av
  %i.be = ptrtoint ptr %i.ac to i64
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.an
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc9
  %i.bf = add i64 %i.at, -8
  %i.bg = sub i64 %i.bf, %i.au                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bj = add i64 %i.at, -8
  %i.bk = sub i64 %i.bj, %i.au
  %i.bl = and i64 %i.bk, -8
  %i.bm = add i64 %i.bl, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bc, i64 %i.bm
  %scevgep29 = getelementptr i8, ptr %i.as, i64 %i.bm
  %bound0 = icmp ult ptr %i.bc, %scevgep29
  %bound1 = icmp ult ptr %i.as, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, 4611686018427387900     ; 3 uses
  %i.bn = shl i64 %n.vec, 3                       ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bc, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %i.as, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bq ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.as, i64 %i.bq ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.br = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep30, align 8, !tbaa !234, !alias.scope !475, !noalias !473
  %wide.load31 = load <2 x i64>, ptr %i.br, align 8, !tbaa !234, !alias.scope !475, !noalias !473
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !234, !alias.scope !476, !noalias !475
  store <2 x i64> %wide.load31, ptr %i.bs, align 8, !tbaa !234, !alias.scope !476, !noalias !475
  %i.bt = getelementptr i8, ptr %next.gep30, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep30, align 8, !tbaa !234, !alias.scope !475, !noalias !473
  store <2 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !234, !alias.scope !475, !noalias !473
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !470

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.preheader33:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bc, %vector.memcheck ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.bv = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !474, !noalias !473
  store i64 %i.bv, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !473, !noalias !474
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !474, !noalias !473
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.an
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !471

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc9
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.noexc9 ], [ %i.bo, %middle.block ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.as) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bc, ptr %i.u, align 8, !tbaa !231
  store ptr %i.by, ptr %i.am, align 8, !tbaa !232
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.bz, ptr %i.ao, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.e
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #37, !inline_history !19
  call void @_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #37
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13, %bb.g
  %.pn = phi { ptr, i32 } [ %i.cb, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13 ], [ %i.ca, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.v) #37
  call void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.u) #37
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !60  ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.f
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.cf) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.b
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ch) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !234
  store i64 %i.e, ptr %i.b, align 8, !tbaa !234
  store ptr null, ptr %1, align 8, !tbaa !234
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !232
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !231    ; 10 uses
  %i.h = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3
  %mul2.i.i = ashr exact i64 %i.j, 2
  %2 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.m = icmp ult i64 %2, %i.l
  %i.n = tail call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.o = select i1 %i.m, i64 1152921504606846975, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #45 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.j
  %i.s = load i64, ptr %1, align 8, !tbaa !234
  store i64 %i.s, ptr %i.r, align 8, !tbaa !234
  store ptr null, ptr %1, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.t = add i64 %i.h, -8
  %i.u = sub i64 %i.t, %i.i                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.x = add i64 %i.h, -8
  %i.y = sub i64 %i.x, %i.i
  %i.z = and i64 %i.y, -8
  %i.aa = add i64 %i.z, 8                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aa
  %scevgep4 = getelementptr i8, ptr %i.g, i64 %i.aa
  %bound0 = icmp ult ptr %i.q, %scevgep4
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.q, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.g, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ae ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.g, i64 %i.ae ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.af = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !tbaa !234, !alias.scope !487, !noalias !485
  %wide.load6 = load <2 x i64>, ptr %i.af, align 8, !tbaa !234, !alias.scope !487, !noalias !485
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !234, !alias.scope !488, !noalias !487
  store <2 x i64> %wide.load6, ptr %i.ag, align 8, !tbaa !234, !alias.scope !488, !noalias !487
  %i.ah = getelementptr i8, ptr %next.gep5, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep5, align 8, !tbaa !234, !alias.scope !487, !noalias !485
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !234, !alias.scope !487, !noalias !485
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !483

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.preheader8:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.aj = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !486, !noalias !485
  store i64 %i.aj, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !485, !noalias !486
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !486, !noalias !485
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !484

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ac, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !231
  store ptr %i.am, ptr %i.a, align 8, !tbaa !232
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o
  store ptr %i.an, ptr %i.c, align 8, !tbaa !236
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !239    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN6spdlog7details14full_formatterEEclEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.c) #37
  br label %_ZNKSt14default_deleteIN6spdlog7details14full_formatterEEclEPS2_.exit

_ZNKSt14default_deleteIN6spdlog7details14full_formatterEEclEPS2_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #44
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN6spdlog7details14full_formatterEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK6spdlog17pattern_formatter5cloneEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<char, std::pair<const char, std::unique_ptr<spdlog::custom_flag_formatter>>, std::allocator<std::pair<const char, std::unique_ptr<spdlog::custom_flag_formatter>>>, std::__detail::_Select1st, std::equal_to<char>, std::hash<char>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %3 = alloca %"class.std::unordered_map.45", align 8 ; 16 uses
  %4 = alloca %"class.std::unique_ptr.116", align 8 ; 8 uses
  %5 = alloca %"class.std::unique_ptr.86", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !197
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !198
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !127
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.017.023 = load ptr, ptr %i.f, align 8, !tbaa !176 ; 2 uses
  %.not24 = icmp eq ptr %.sroa.017.023, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_ZN6spdlog7details11make_uniqueINS_17pattern_formatterEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_17pattern_time_typeESA_St13unordered_mapIcSt10unique_ptrINS_21custom_flag_formatterESt14default_deleteISG_EESt4hashIcESt8equal_toIcESaISt4pairIKcSJ_EEEEEESF_IT_SH_IST_EEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.86") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %_ZNSt10unique_ptrIN6spdlog17pattern_formatterESt14default_deleteIS1_EED2Ev.exit unwind label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit
  %.sroa.017.025 = phi ptr [ %.sroa.017.023, %.lr.ph ], [ %.sroa.017.0, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.017.025, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.017.025, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !201  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.116") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.k, align 8, !tbaa !64    ; 3 uses
  %i.r = sext i8 %i.q to i64                      ; 2 uses
  %i.s = load i64, ptr %i.b, align 8, !tbaa !198  ; 2 uses
  %i.t = urem i64 %i.r, %i.s                      ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !197
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !228  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !176  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i8, ptr %i.y, align 1, !tbaa !64
  %i.aa = icmp eq i8 %i.q, %i.z
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %bb.f
  %i.ab = icmp eq i8 %i.q, %i.ae
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !21

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %.020.i.i.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.x, %bb.d ]
  %i.ac = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !176 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.f

end_hunk_0
begin_hunk_1_@_ZN6spdlog17pattern_formatter15handle_padspec_ERN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_:bb.a
  br i1 %isdigit1855, label %.lr.ph58, label %.lr.ph._crit_edge

.lr.ph:                                           ; preds = %.lr.ph58
  %i.m = load i8, ptr %storemerge, align 1, !tbaa !64 ; 3 uses
  %i.n = add i8 %i.m, -48
  %isdigit18 = icmp ult i8 %i.n, 10
  br i1 %isdigit18, label %.lr.ph58, label %.lr.ph._crit_edge, !llvm.loop !20

.lr.ph58:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.o = phi i8 [ %i.m, %.lr.ph ], [ %i.k, %.lr.ph.preheader ]
  %.0313957 = phi i64 [ %i.s, %.lr.ph ], [ %i.j, %.lr.ph.preheader ]
  %storemerge4056 = phi ptr [ %storemerge, %.lr.ph ], [ %storemerge36, %.lr.ph.preheader ] ; 2 uses
  %i.p = zext nneg i8 %i.o to i64
  %i.q = mul i64 %.0313957, 10
  %i.r = add i64 %i.q, -48
  %i.s = add i64 %i.r, %i.p                       ; 3 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge4056, i64 1 ; 4 uses
  store ptr %storemerge, ptr %0, align 8, !tbaa !510
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !20

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.03139.lcssa = phi i64 [ %i.j, %.lr.ph.preheader ], [ %i.s, %.lr.ph ] ; 2 uses
  %.pn38.lcssa = phi ptr [ %i.e, %.lr.ph.preheader ], [ %storemerge4056, %.lr.ph ]
  %.lcssa = phi i8 [ %i.k, %.lr.ph.preheader ], [ %i.m, %.lr.ph ]
  %i.t = icmp eq i8 %.lcssa, 33
  br i1 %i.t, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %.pn38.lcssa, i64 2
  store ptr %i.u, ptr %0, align 8, !tbaa !510
  %i.v = or disjoint i64 %.017, 4294967296
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph58, %bb.f, %.lr.ph._crit_edge, %bb.g
  %.03134 = phi i64 [ %.03139.lcssa, %bb.g ], [ %.03139.lcssa, %.lr.ph._crit_edge ], [ %i.j, %bb.f ], [ %i.s, %.lr.ph58 ]
  %.0 = phi i64 [ %i.v, %bb.g ], [ %.017, %.lr.ph._crit_edge ], [ %.017, %bb.f ], [ %.017, %.lr.ph58 ]
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.03134, i64 64)
  %.sroa.6.13.insert.mask = and i64 %.0, -280375465082881
  %.sroa.6.13.insert.insert = or disjoint i64 %.sroa.6.13.insert.mask, 1099511627776
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.a, %.critedge
  %.sroa.6.0 = phi i64 [ %.sroa.6.13.insert.insert, %.critedge ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.sroa.027.0 = phi i64 [ %.sroa.speculated, %.critedge ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 noundef signext %1, i64 %2, i64 %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.spdlog::details::padding_info", align 16 ; 10 uses
  %5 = alloca %"class.std::unique_ptr.116", align 8 ; 8 uses
  %6 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %7 = alloca %"class.std::unique_ptr.105", align 8 ; 8 uses
  %8 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %9 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %10 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %11 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %12 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %13 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %14 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %15 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %16 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %17 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %18 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %19 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %20 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %21 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %22 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %23 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %24 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %25 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %26 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %27 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %28 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %29 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %30 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %31 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %32 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %33 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %34 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %35 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %36 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %37 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %38 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %39 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %40 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %41 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %42 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %43 = alloca %"class.std::unique_ptr.517", align 8 ; 8 uses
  %44 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %45 = alloca %"class.std::unique_ptr.525", align 8 ; 8 uses
  %46 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %47 = alloca %"class.std::unique_ptr.533", align 8 ; 8 uses
  %48 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %49 = alloca %"class.std::unique_ptr.541", align 8 ; 8 uses
  %50 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %51 = alloca %"class.std::unique_ptr.126", align 8 ; 12 uses
  %52 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %53 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %54 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  store i64 %2, ptr %4, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load i64, ptr %i.b, align 8, !tbaa !224
  %.not.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !176 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.f = load i8, ptr %i.e, align 1, !tbaa !64
  %i.g = icmp eq i8 %1, %i.f
  br i1 %i.g, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %bb.c, !llvm.loop !24

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = sext i8 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load i64, ptr %i.j, align 8, !tbaa !198  ; 2 uses
  %i.l = urem i64 %i.i, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !228  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !176  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i8, ptr %i.q, align 1, !tbaa !64
  %i.s = icmp eq i8 %1, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.t = icmp eq i8 %1, %i.w
  br i1 %i.t, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !21

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %i.p, %bb.f ]
  %i.u = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !176 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i8, ptr %i.v, align 1, !tbaa !64    ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = urem i64 %i.x, %i.k
  %.not19.i.i.i.i = icmp eq i64 %i.y, %i.l
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !21

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !21

_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.p, %bb.f ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !201 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.116") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  %i.ae = load ptr, ptr %5, align 8, !tbaa !201   ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.af, ptr noundef nonnull align 16 dereferenceable(14) %4, i64 14, i1 false), !tbaa.struct !247
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !201
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !232 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !236
  %.not.i.i10 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i10, label %bb.i, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit
  %i.al = ptrtoint ptr %i.ae to i64
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !234
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !231 ; 10 uses
  %i.ao = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.as = ashr exact i64 %i.aq, 3
  %mul2.i.i.i = ashr exact i64 %i.aq, 2
  %55 = call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.at = icmp ult i64 %55, %i.as
  %i.au = call i64 @llvm.umin.i64(i64 %55, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #45
          to label %.noexc12 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16 ; 10 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aq
  %i.az = ptrtoint ptr %i.ae to i64
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ai
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc12
  %i.ba = add i64 %i.ao, -8
  %i.bb = sub i64 %i.ba, %i.ap                    ; 2 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader1029, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.be = add i64 %i.ao, -8
  %i.bf = sub i64 %i.be, %i.ap
  %i.bg = and i64 %i.bf, -8
  %i.bh = add i64 %i.bg, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.bh
  %scevgep957 = getelementptr i8, ptr %i.an, i64 %i.bh
  %bound0 = icmp ult ptr %i.ax, %scevgep957
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader1029, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bd, 4611686018427387900     ; 3 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ax, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.an, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bl ; 2 uses
  %next.gep958 = getelementptr i8, ptr %i.an, i64 %i.bl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.bm = getelementptr i8, ptr %next.gep958, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep958, align 8, !tbaa !234, !alias.scope !625, !noalias !623
  %wide.load959 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !234, !alias.scope !625, !noalias !623
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !234, !alias.scope !626, !noalias !625
  store <2 x i64> %wide.load959, ptr %i.bn, align 8, !tbaa !234, !alias.scope !626, !noalias !625
  %i.bo = getelementptr i8, ptr %next.gep958, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep958, align 8, !tbaa !234, !alias.scope !625, !noalias !623
  store <2 x ptr> splat (ptr null), ptr %i.bo, align 8, !tbaa !234, !alias.scope !625, !noalias !623
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !517

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1029

.lr.ph.i.i.i.i.i.i.i.preheader1029:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1029, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1029 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1029 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.bq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !624, !noalias !623
  store i64 %i.bq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !623, !noalias !624
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !624, !noalias !623
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.ai
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !518

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.noexc12 ], [ %i.bj, %middle.block ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.an) #44
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.k
  store ptr %i.ax, ptr %i.ag, align 8, !tbaa !231
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !232
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bu, ptr %i.aj, align 8, !tbaa !236
  %.pre = load ptr, ptr %5, align 8, !tbaa !201   ; 3 uses
  %.not.i13 = icmp eq ptr %.pre, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.bv = load ptr, ptr %.pre, align 8, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %.pre) #37, !inline_history !22
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #37, !inline_history !19
  %i.cc = load ptr, ptr %5, align 8, !tbaa !201   ; 3 uses
  %.not.i17 = icmp eq ptr %i.cc, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !62
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(24) %i.cc) #37, !inline_history !22
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19

_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16, %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.fi

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  switch i8 %1, label %bb.eq [
    i8 43, label %bb.l
    i8 110, label %bb.o
    i8 108, label %bb.r
    i8 76, label %bb.u
    i8 116, label %bb.x
    i8 118, label %bb.aa
    i8 97, label %bb.ad
    i8 65, label %bb.ag
    i8 98, label %bb.aj
    i8 104, label %bb.aj
    i8 66, label %bb.ao
    i8 99, label %bb.ar
    i8 67, label %bb.au
    i8 89, label %bb.ax
    i8 68, label %bb.ba
    i8 120, label %bb.ba
    i8 109, label %bb.bf
    i8 100, label %bb.bi
    i8 72, label %bb.bl
    i8 73, label %bb.bo
    i8 77, label %bb.br
    i8 83, label %bb.bu
    i8 101, label %bb.bx
    i8 102, label %bb.ca
    i8 70, label %bb.cd
    i8 69, label %bb.cg
    i8 112, label %bb.cj
    i8 114, label %bb.cm
    i8 82, label %bb.cp
    i8 84, label %bb.cs
    i8 88, label %bb.cs
    i8 122, label %bb.cx
    i8 80, label %bb.da
    i8 94, label %bb.dd
    i8 36, label %bb.dg
    i8 64, label %bb.dj
    i8 115, label %bb.dm
    i8 103, label %bb.dp
    i8 35, label %bb.ds
    i8 33, label %bb.dv
    i8 37, label %bb.dy
    i8 117, label %bb.eb
    i8 105, label %bb.ee
    i8 111, label %bb.eh
    i8 79, label %bb.ek
    i8 38, label %bb.en
  ]

bb.l:                                             ; preds = %.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @_ZN6spdlog7details11make_uniqueINS0_14full_formatterEJRNS0_12padding_infoEEEESt10unique_ptrIT_St14default_deleteIS6_EEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.105") align 8 %7, ptr noundef nonnull align 8 dereferenceable(14) %4)
  %i.ch = load ptr, ptr %7, align 8, !tbaa !239
  store ptr null, ptr %7, align 8, !tbaa !239
  store ptr %i.ch, ptr %6, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ci = load ptr, ptr %6, align 8, !tbaa !234   ; 3 uses
  %.not.i20 = icmp eq ptr %i.ci, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21: ; preds = %bb.m
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !62
end_hunk_1
begin_hunk_2_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE:bb.a
_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i69: ; preds = %bb.y
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(24) %i.ef) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i69, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.fh

bb.z:                                             ; preds = %bb.x
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = load ptr, ptr %11, align 8, !tbaa !234  ; 3 uses
  %.not.i72 = icmp eq ptr %i.ek, null
  br i1 %.not.i72, label %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i73

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i73: ; preds = %bb.z
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !62
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(24) %i.ek) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77

_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i73, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.fi

bb.aa:                                            ; preds = %.loopexit
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.ep = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !631 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 %2, ptr %i.eq, align 8, !tbaa !70, !noalias !631
  %.sroa.2.0..sroa_idx.i.i.i81 = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i81, align 8, !noalias !631
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11v_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.ep, align 8, !tbaa !62, !noalias !631
  store ptr %i.ep, ptr %12, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.er = load ptr, ptr %12, align 8, !tbaa !234  ; 3 uses
  %.not.i82 = icmp eq ptr %i.er, null
  br i1 %.not.i82, label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83: ; preds = %bb.ab
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !62
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(24) %i.er) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.fh

bb.ac:                                            ; preds = %bb.aa
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = load ptr, ptr %12, align 8, !tbaa !234  ; 3 uses
  %.not.i86 = icmp eq ptr %i.ew, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87: ; preds = %bb.ac
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !62
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(24) %i.ew) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91

_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.fi

bb.ad:                                            ; preds = %.loopexit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.fb = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !632 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i64 %2, ptr %i.fc, align 8, !tbaa !70, !noalias !632
  %.sroa.2.0..sroa_idx.i.i.i95 = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i95, align 8, !noalias !632
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11a_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.fb, align 8, !tbaa !62, !noalias !632
  store ptr %i.fb, ptr %13, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fd = load ptr, ptr %13, align 8, !tbaa !234  ; 3 uses
  %.not.i96 = icmp eq ptr %i.fd, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97: ; preds = %bb.ae
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !62
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(24) %i.fd) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.fh, align 4, !tbaa !223
  br label %bb.fh

bb.af:                                            ; preds = %bb.ad
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %13, align 8, !tbaa !234  ; 3 uses
  %.not.i100 = icmp eq ptr %i.fj, null
  br i1 %.not.i100, label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101: ; preds = %bb.af
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !62
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(24) %i.fj) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105

_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.fi

bb.ag:                                            ; preds = %.loopexit
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.fo = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !633 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i64 %2, ptr %i.fp, align 8, !tbaa !70, !noalias !633
  %.sroa.2.0..sroa_idx.i.i.i109 = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i109, align 8, !noalias !633
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11A_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.fo, align 8, !tbaa !62, !noalias !633
  store ptr %i.fo, ptr %14, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fq = load ptr, ptr %14, align 8, !tbaa !234  ; 3 uses
  %.not.i110 = icmp eq ptr %i.fq, null
  br i1 %.not.i110, label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111: ; preds = %bb.ah
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !62
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(24) %i.fq) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.fu, align 4, !tbaa !223
  br label %bb.fh

bb.ai:                                            ; preds = %bb.ag
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = load ptr, ptr %14, align 8, !tbaa !234  ; 3 uses
  %.not.i114 = icmp eq ptr %i.fw, null
  br i1 %.not.i114, label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115: ; preds = %bb.ai
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !62
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(24) %i.fw) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119

_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.fi

bb.aj:                                            ; preds = %.loopexit, %.loopexit
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.gb = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !634 ; 7 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i64 %2, ptr %i.gc, align 8, !tbaa !70, !noalias !634
  %.sroa.2.0..sroa_idx.i.i.i123 = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i123, align 8, !noalias !634
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11b_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.gb, align 8, !tbaa !62, !noalias !634
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !232 ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !236
  %.not.i.i124 = icmp eq ptr %i.ge, %i.gg
  br i1 %.not.i.i124, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gh = ptrtoint ptr %i.gb to i64
  store i64 %i.gh, ptr %i.ge, align 8, !tbaa !234
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr %i.gi, ptr %i.gd, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.gj = load ptr, ptr %i.ga, align 8, !tbaa !231 ; 10 uses
  %i.gk = ptrtoint ptr %i.ge to i64               ; 3 uses
  %i.gl = ptrtoint ptr %i.gj to i64               ; 3 uses
  %i.gm = sub i64 %i.gk, %i.gl                    ; 4 uses
  %i.gn = icmp eq i64 %i.gm, 9223372036854775800
  br i1 %i.gn, label %bb.am, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc137 unwind label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149

.noexc137:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125: ; preds = %bb.al
  %i.go = ashr exact i64 %i.gm, 3
  %mul2.i.i.i125 = ashr exact i64 %i.gm, 2
  %56 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i125, i64 1) ; 2 uses
  %i.gp = icmp ult i64 %56, %i.go
  %i.gq = tail call i64 @llvm.umin.i64(i64 %56, i64 1152921504606846975)
  %i.gr = select i1 %i.gp, i64 1152921504606846975, i64 %i.gq ; 2 uses
  %i.gs = shl nuw nsw i64 %i.gr, 3
  %i.gt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #45
          to label %.noexc138 unwind label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149 ; 10 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gm
  %i.gv = ptrtoint ptr %i.gb to i64
  store i64 %i.gv, ptr %i.gu, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i128 = icmp eq ptr %i.gj, %i.ge
  br i1 %.not10.i.i.i.i.i.i.i128, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader

.lr.ph.i.i.i.i.i.i.i129.preheader:                ; preds = %.noexc138
  %i.gw = add i64 %i.gk, -8
  %i.gx = sub i64 %i.gw, %i.gl                    ; 2 uses
  %i.gy = lshr i64 %i.gx, 3
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check1010 = icmp ult i64 %i.gx, 136
  br i1 %min.iters.check1010, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024, label %vector.memcheck1003

vector.memcheck1003:                              ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader
  %i.ha = add i64 %i.gk, -8
  %i.hb = sub i64 %i.ha, %i.gl
  %i.hc = and i64 %i.hb, -8
  %i.hd = add i64 %i.hc, 8                        ; 2 uses
  %scevgep1004 = getelementptr i8, ptr %i.gt, i64 %i.hd
  %scevgep1005 = getelementptr i8, ptr %i.gj, i64 %i.hd
  %bound01006 = icmp ult ptr %i.gt, %scevgep1005
  %bound11007 = icmp ult ptr %i.gj, %scevgep1004
  %found.conflict1008 = and i1 %bound01006, %bound11007
  br i1 %found.conflict1008, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024, label %vector.ph1011

vector.ph1011:                                    ; preds = %vector.memcheck1003
  %n.vec1012 = and i64 %i.gz, 4611686018427387900 ; 3 uses
  %i.he = shl i64 %n.vec1012, 3                   ; 2 uses
  %i.hf = getelementptr i8, ptr %i.gt, i64 %i.he  ; 2 uses
  %i.hg = getelementptr i8, ptr %i.gj, i64 %i.he
  br label %vector.body1013

vector.body1013:                                  ; preds = %vector.body1013, %vector.ph1011
  %index1014 = phi i64 [ 0, %vector.ph1011 ], [ %index.next1019, %vector.body1013 ] ; 2 uses
  %i.hh = shl i64 %index1014, 3                   ; 2 uses
  %next.gep1015 = getelementptr i8, ptr %i.gt, i64 %i.hh ; 2 uses
  %next.gep1016 = getelementptr i8, ptr %i.gj, i64 %i.hh ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.hi = getelementptr i8, ptr %next.gep1016, i64 16
  %wide.load1017 = load <2 x i64>, ptr %next.gep1016, align 8, !tbaa !234, !alias.scope !637, !noalias !635
  %wide.load1018 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !234, !alias.scope !637, !noalias !635
  %i.hj = getelementptr i8, ptr %next.gep1015, i64 16
  store <2 x i64> %wide.load1017, ptr %next.gep1015, align 8, !tbaa !234, !alias.scope !638, !noalias !637
  store <2 x i64> %wide.load1018, ptr %i.hj, align 8, !tbaa !234, !alias.scope !638, !noalias !637
  %i.hk = getelementptr i8, ptr %next.gep1016, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1016, align 8, !tbaa !234, !alias.scope !637, !noalias !635
  store <2 x ptr> splat (ptr null), ptr %i.hk, align 8, !tbaa !234, !alias.scope !637, !noalias !635
  %index.next1019 = add nuw i64 %index1014, 4     ; 2 uses
  %i.hl = icmp eq i64 %index.next1019, %n.vec1012
  br i1 %i.hl, label %middle.block1020, label %vector.body1013, !llvm.loop !541

middle.block1020:                                 ; preds = %vector.body1013
  %cmp.n1021 = icmp eq i64 %i.gz, %n.vec1012
  br i1 %cmp.n1021, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024

.lr.ph.i.i.i.i.i.i.i129.preheader1024:            ; preds = %vector.memcheck1003, %.lr.ph.i.i.i.i.i.i.i129.preheader, %middle.block1020
  %.012.i.i.i.i.i.i.i130.ph = phi ptr [ %i.gt, %vector.memcheck1003 ], [ %i.gt, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.hf, %middle.block1020 ]
  %.0911.i.i.i.i.i.i.i131.ph = phi ptr [ %i.gj, %vector.memcheck1003 ], [ %i.gj, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.hg, %middle.block1020 ]
  br label %.lr.ph.i.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i.i129:                          ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader1024, %.lr.ph.i.i.i.i.i.i.i129
  %.012.i.i.i.i.i.i.i130 = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.012.i.i.i.i.i.i.i130.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader1024 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i131 = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.0911.i.i.i.i.i.i.i131.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader1024 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.hm = load i64, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !234, !alias.scope !636, !noalias !635
  store i64 %i.hm, ptr %.012.i.i.i.i.i.i.i130, align 8, !tbaa !234, !alias.scope !635, !noalias !636
  store ptr null, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !234, !alias.scope !636, !noalias !635
  %i.hn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i131, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i130, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %i.hn, %i.ge
  br i1 %.not.i.i.i.i.i.i.i132, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129, !llvm.loop !542

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133: ; preds = %.lr.ph.i.i.i.i.i.i.i129, %middle.block1020, %.noexc138
  %.0.lcssa.i.i.i.i.i.i.i134 = phi ptr [ %i.gt, %.noexc138 ], [ %i.hf, %middle.block1020 ], [ %i.ho, %.lr.ph.i.i.i.i.i.i.i129 ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i134, i64 8
  %.not.i23.i.i.i135 = icmp eq ptr %i.gj, null
  br i1 %.not.i23.i.i.i135, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133
  tail call void @_ZdlPv(ptr noundef nonnull %i.gj) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136: ; preds = %bb.an, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133
  store ptr %i.gt, ptr %i.ga, align 8, !tbaa !231
  store ptr %i.hp, ptr %i.gd, align 8, !tbaa !232
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gr
  store ptr %i.hq, ptr %i.gf, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136, %bb.ak
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.hr, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149: ; preds = %bb.am, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.hs = landingpad { ptr, i32 }
          cleanup
  %i.ht = load ptr, ptr %i.gb, align 8, !tbaa !62
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
  tail call void %i.hv(ptr noundef nonnull align 8 dereferenceable(24) %i.gb) #37, !inline_history !19
  br label %bb.fi

bb.ao:                                            ; preds = %.loopexit
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  %i.hx = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !639 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i64 %2, ptr %i.hy, align 8, !tbaa !70, !noalias !639
  %.sroa.2.0..sroa_idx.i.i.i153 = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i153, align 8, !noalias !639
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11B_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.hx, align 8, !tbaa !62, !noalias !639
  store ptr %i.hx, ptr %15, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hz = load ptr, ptr %15, align 8, !tbaa !234  ; 3 uses
  %.not.i154 = icmp eq ptr %i.hz, null
  br i1 %.not.i154, label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155: ; preds = %bb.ap
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !62
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(24) %i.hz) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.id, align 4, !tbaa !223
  br label %bb.fh

bb.aq:                                            ; preds = %bb.ao
  %i.ie = landingpad { ptr, i32 }
          cleanup
  %i.if = load ptr, ptr %15, align 8, !tbaa !234  ; 3 uses
  %.not.i158 = icmp eq ptr %i.if, null
  br i1 %.not.i158, label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159: ; preds = %bb.aq
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !62
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(24) %i.if) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163

_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.fi

bb.ar:                                            ; preds = %.loopexit
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.ik = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !640 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store i64 %2, ptr %i.il, align 8, !tbaa !70, !noalias !640
  %.sroa.2.0..sroa_idx.i.i.i167 = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i167, align 8, !noalias !640
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11c_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.ik, align 8, !tbaa !62, !noalias !640
  store ptr %i.ik, ptr %16, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ij, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.im = load ptr, ptr %16, align 8, !tbaa !234  ; 3 uses
  %.not.i168 = icmp eq ptr %i.im, null
  br i1 %.not.i168, label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169: ; preds = %bb.as
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !62
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(24) %i.im) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.iq, align 4, !tbaa !223
  br label %bb.fh

bb.at:                                            ; preds = %bb.ar
  %i.ir = landingpad { ptr, i32 }
          cleanup
  %i.is = load ptr, ptr %16, align 8, !tbaa !234  ; 3 uses
  %.not.i172 = icmp eq ptr %i.is, null
  br i1 %.not.i172, label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173: ; preds = %bb.at
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !62
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(24) %i.is) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177

_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.fi

bb.au:                                            ; preds = %.loopexit
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  %i.ix = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !641 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i64 %2, ptr %i.iy, align 8, !tbaa !70, !noalias !641
  %.sroa.2.0..sroa_idx.i.i.i181 = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i181, align 8, !noalias !641
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11C_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.ix, align 8, !tbaa !62, !noalias !641
  store ptr %i.ix, ptr %17, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.iw, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.iz = load ptr, ptr %17, align 8, !tbaa !234  ; 3 uses
  %.not.i182 = icmp eq ptr %i.iz, null
  br i1 %.not.i182, label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183: ; preds = %bb.av
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !62
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(24) %i.iz) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.jd, align 4, !tbaa !223
  br label %bb.fh

bb.aw:                                            ; preds = %bb.au
  %i.je = landingpad { ptr, i32 }
          cleanup
  %i.jf = load ptr, ptr %17, align 8, !tbaa !234  ; 3 uses
  %.not.i186 = icmp eq ptr %i.jf, null
  br i1 %.not.i186, label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187: ; preds = %bb.aw
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !62
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(24) %i.jf) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191

_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.fi

bb.ax:                                            ; preds = %.loopexit
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  %i.jk = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !642 ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store i64 %2, ptr %i.jl, align 8, !tbaa !70, !noalias !642
  %.sroa.2.0..sroa_idx.i.i.i195 = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i195, align 8, !noalias !642
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11Y_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.jk, align 8, !tbaa !62, !noalias !642
  store ptr %i.jk, ptr %18, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jm = load ptr, ptr %18, align 8, !tbaa !234  ; 3 uses
  %.not.i196 = icmp eq ptr %i.jm, null
  br i1 %.not.i196, label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197: ; preds = %bb.ay
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !62
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr noundef nonnull align 8 dereferenceable(24) %i.jm) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.jq, align 4, !tbaa !223
  br label %bb.fh

bb.az:                                            ; preds = %bb.ax
  %i.jr = landingpad { ptr, i32 }
          cleanup
  %i.js = load ptr, ptr %18, align 8, !tbaa !234  ; 3 uses
  %.not.i200 = icmp eq ptr %i.js, null
  br i1 %.not.i200, label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201: ; preds = %bb.az
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !62
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(24) %i.js) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205

_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  br label %bb.fi

bb.ba:                                            ; preds = %.loopexit, %.loopexit
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.jx = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !643 ; 7 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store i64 %2, ptr %i.jy, align 8, !tbaa !70, !noalias !643
  %.sroa.2.0..sroa_idx.i.i.i209 = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i209, align 8, !noalias !643
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11D_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.jx, align 8, !tbaa !62, !noalias !643
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !232 ; 6 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !236
  %.not.i.i210 = icmp eq ptr %i.ka, %i.kc
  br i1 %.not.i.i210, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kd = ptrtoint ptr %i.jx to i64
  store i64 %i.kd, ptr %i.ka, align 8, !tbaa !234
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store ptr %i.ke, ptr %i.jz, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.bc:                                            ; preds = %bb.ba
  %i.kf = load ptr, ptr %i.jw, align 8, !tbaa !231 ; 10 uses
  %i.kg = ptrtoint ptr %i.ka to i64               ; 3 uses
  %i.kh = ptrtoint ptr %i.kf to i64               ; 3 uses
  %i.ki = sub i64 %i.kg, %i.kh                    ; 4 uses
  %i.kj = icmp eq i64 %i.ki, 9223372036854775800
  br i1 %i.kj, label %bb.bd, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc223 unwind label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235

.noexc223:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211: ; preds = %bb.bc
  %i.kk = ashr exact i64 %i.ki, 3
  %mul2.i.i.i210 = ashr exact i64 %i.ki, 2
  %57 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i210, i64 1) ; 2 uses
  %i.kl = icmp ult i64 %57, %i.kk
  %i.km = tail call i64 @llvm.umin.i64(i64 %57, i64 1152921504606846975)
  %i.kn = select i1 %i.kl, i64 1152921504606846975, i64 %i.km ; 2 uses
  %i.ko = shl nuw nsw i64 %i.kn, 3
  %i.kp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ko) #45
          to label %.noexc224 unwind label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235 ; 10 uses

.noexc224:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.ki
  %i.kr = ptrtoint ptr %i.jx to i64
  store i64 %i.kr, ptr %i.kq, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i214 = icmp eq ptr %i.kf, %i.ka
  br i1 %.not10.i.i.i.i.i.i.i214, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215.preheader

.lr.ph.i.i.i.i.i.i.i215.preheader:                ; preds = %.noexc224
  %i.ks = add i64 %i.kg, -8
  %i.kt = sub i64 %i.ks, %i.kh                    ; 2 uses
  %i.ku = lshr i64 %i.kt, 3
  %i.kv = add nuw nsw i64 %i.ku, 1                ; 2 uses
  %min.iters.check989 = icmp ult i64 %i.kt, 136
  br i1 %min.iters.check989, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025, label %vector.memcheck982

vector.memcheck982:                               ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader
  %i.kw = add i64 %i.kg, -8
  %i.kx = sub i64 %i.kw, %i.kh
  %i.ky = and i64 %i.kx, -8
  %i.kz = add i64 %i.ky, 8                        ; 2 uses
  %scevgep983 = getelementptr i8, ptr %i.kp, i64 %i.kz
  %scevgep984 = getelementptr i8, ptr %i.kf, i64 %i.kz
  %bound0985 = icmp ult ptr %i.kp, %scevgep984
  %bound1986 = icmp ult ptr %i.kf, %scevgep983
  %found.conflict987 = and i1 %bound0985, %bound1986
  br i1 %found.conflict987, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025, label %vector.ph990

vector.ph990:                                     ; preds = %vector.memcheck982
  %n.vec991 = and i64 %i.kv, 4611686018427387900  ; 3 uses
  %i.la = shl i64 %n.vec991, 3                    ; 2 uses
  %i.lb = getelementptr i8, ptr %i.kp, i64 %i.la  ; 2 uses
  %i.lc = getelementptr i8, ptr %i.kf, i64 %i.la
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph990
  %index993 = phi i64 [ 0, %vector.ph990 ], [ %index.next998, %vector.body992 ] ; 2 uses
  %i.ld = shl i64 %index993, 3                    ; 2 uses
  %next.gep994 = getelementptr i8, ptr %i.kp, i64 %i.ld ; 2 uses
  %next.gep995 = getelementptr i8, ptr %i.kf, i64 %i.ld ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.le = getelementptr i8, ptr %next.gep995, i64 16
  %wide.load996 = load <2 x i64>, ptr %next.gep995, align 8, !tbaa !234, !alias.scope !646, !noalias !644
  %wide.load997 = load <2 x i64>, ptr %i.le, align 8, !tbaa !234, !alias.scope !646, !noalias !644
  %i.lf = getelementptr i8, ptr %next.gep994, i64 16
  store <2 x i64> %wide.load996, ptr %next.gep994, align 8, !tbaa !234, !alias.scope !647, !noalias !646
  store <2 x i64> %wide.load997, ptr %i.lf, align 8, !tbaa !234, !alias.scope !647, !noalias !646
  %i.lg = getelementptr i8, ptr %next.gep995, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep995, align 8, !tbaa !234, !alias.scope !646, !noalias !644
  store <2 x ptr> splat (ptr null), ptr %i.lg, align 8, !tbaa !234, !alias.scope !646, !noalias !644
  %index.next998 = add nuw i64 %index993, 4       ; 2 uses
  %i.lh = icmp eq i64 %index.next998, %n.vec991
  br i1 %i.lh, label %middle.block999, label %vector.body992, !llvm.loop !559

middle.block999:                                  ; preds = %vector.body992
  %cmp.n1000 = icmp eq i64 %i.kv, %n.vec991
  br i1 %cmp.n1000, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025

.lr.ph.i.i.i.i.i.i.i215.preheader1025:            ; preds = %vector.memcheck982, %.lr.ph.i.i.i.i.i.i.i215.preheader, %middle.block999
  %.012.i.i.i.i.i.i.i216.ph = phi ptr [ %i.kp, %vector.memcheck982 ], [ %i.kp, %.lr.ph.i.i.i.i.i.i.i215.preheader ], [ %i.lb, %middle.block999 ]
  %.0911.i.i.i.i.i.i.i217.ph = phi ptr [ %i.kf, %vector.memcheck982 ], [ %i.kf, %.lr.ph.i.i.i.i.i.i.i215.preheader ], [ %i.lc, %middle.block999 ]
  br label %.lr.ph.i.i.i.i.i.i.i215

.lr.ph.i.i.i.i.i.i.i215:                          ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader1025, %.lr.ph.i.i.i.i.i.i.i215
  %.012.i.i.i.i.i.i.i216 = phi ptr [ %i.lk, %.lr.ph.i.i.i.i.i.i.i215 ], [ %.012.i.i.i.i.i.i.i216.ph, %.lr.ph.i.i.i.i.i.i.i215.preheader1025 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i217 = phi ptr [ %i.lj, %.lr.ph.i.i.i.i.i.i.i215 ], [ %.0911.i.i.i.i.i.i.i217.ph, %.lr.ph.i.i.i.i.i.i.i215.preheader1025 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.li = load i64, ptr %.0911.i.i.i.i.i.i.i217, align 8, !tbaa !234, !alias.scope !645, !noalias !644
  store i64 %i.li, ptr %.012.i.i.i.i.i.i.i216, align 8, !tbaa !234, !alias.scope !644, !noalias !645
  store ptr null, ptr %.0911.i.i.i.i.i.i.i217, align 8, !tbaa !234, !alias.scope !645, !noalias !644
  %i.lj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i217, i64 8 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i216, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i218 = icmp eq ptr %i.lj, %i.ka
  br i1 %.not.i.i.i.i.i.i.i218, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215, !llvm.loop !560

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219: ; preds = %.lr.ph.i.i.i.i.i.i.i215, %middle.block999, %.noexc224
  %.0.lcssa.i.i.i.i.i.i.i220 = phi ptr [ %i.kp, %.noexc224 ], [ %i.lb, %middle.block999 ], [ %i.lk, %.lr.ph.i.i.i.i.i.i.i215 ]
  %i.ll = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i220, i64 8
  %.not.i23.i.i.i221 = icmp eq ptr %i.kf, null
  br i1 %.not.i23.i.i.i221, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219
  tail call void @_ZdlPv(ptr noundef nonnull %i.kf) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222: ; preds = %bb.be, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219
  store ptr %i.kp, ptr %i.jw, align 8, !tbaa !231
  store ptr %i.ll, ptr %i.jz, align 8, !tbaa !232
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.kn
  store ptr %i.lm, ptr %i.kb, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222, %bb.bb
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ln, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235: ; preds = %bb.bd, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211
  %i.lo = landingpad { ptr, i32 }
          cleanup
  %i.lp = load ptr, ptr %i.jx, align 8, !tbaa !62
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8
  tail call void %i.lr(ptr noundef nonnull align 8 dereferenceable(24) %i.jx) #37, !inline_history !19
  br label %bb.fi

bb.bf:                                            ; preds = %.loopexit
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  %i.lt = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !648 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store i64 %2, ptr %i.lu, align 8, !tbaa !70, !noalias !648
  %.sroa.2.0..sroa_idx.i.i.i239 = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i239, align 8, !noalias !648
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11m_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.lt, align 8, !tbaa !62, !noalias !648
  store ptr %i.lt, ptr %19, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.lv = load ptr, ptr %19, align 8, !tbaa !234  ; 3 uses
  %.not.i240 = icmp eq ptr %i.lv, null
  br i1 %.not.i240, label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241: ; preds = %bb.bg
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !62
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(24) %i.lv) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.lz, align 4, !tbaa !223
  br label %bb.fh

bb.bh:                                            ; preds = %bb.bf
  %i.ma = landingpad { ptr, i32 }
          cleanup
  %i.mb = load ptr, ptr %19, align 8, !tbaa !234  ; 3 uses
  %.not.i244 = icmp eq ptr %i.mb, null
  br i1 %.not.i244, label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245: ; preds = %bb.bh
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !62
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(24) %i.mb) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249

_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  br label %bb.fi

bb.bi:                                            ; preds = %.loopexit
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  %i.mg = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !649 ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store i64 %2, ptr %i.mh, align 8, !tbaa !70, !noalias !649
  %.sroa.2.0..sroa_idx.i.i.i253 = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i253, align 8, !noalias !649
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11d_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.mg, align 8, !tbaa !62, !noalias !649
  store ptr %i.mg, ptr %20, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.mf, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.mi = load ptr, ptr %20, align 8, !tbaa !234  ; 3 uses
  %.not.i254 = icmp eq ptr %i.mi, null
  br i1 %.not.i254, label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255: ; preds = %bb.bj
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !62
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8
  call void %i.ml(ptr noundef nonnull align 8 dereferenceable(24) %i.mi) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.mm, align 4, !tbaa !223
  br label %bb.fh

bb.bk:                                            ; preds = %bb.bi
  %i.mn = landingpad { ptr, i32 }
          cleanup
  %i.mo = load ptr, ptr %20, align 8, !tbaa !234  ; 3 uses
  %.not.i258 = icmp eq ptr %i.mo, null
  br i1 %.not.i258, label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259: ; preds = %bb.bk
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !62
end_hunk_2
begin_hunk_3_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE:bb.a
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef nonnull align 8 dereferenceable(24) %i.qf) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i367, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  br label %bb.fh

bb.ci:                                            ; preds = %bb.cg
  %i.qj = landingpad { ptr, i32 }
          cleanup
  %i.qk = load ptr, ptr %28, align 8, !tbaa !234  ; 3 uses
  %.not.i370 = icmp eq ptr %i.qk, null
  br i1 %.not.i370, label %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i371

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i371: ; preds = %bb.ci
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !62
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8
  call void %i.qn(ptr noundef nonnull align 8 dereferenceable(24) %i.qk) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375

_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i371, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  br label %bb.fi

bb.cj:                                            ; preds = %.loopexit
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #37
  %i.qp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !658 ; 4 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  store i64 %2, ptr %i.qq, align 8, !tbaa !70, !noalias !658
  %.sroa.2.0..sroa_idx.i.i.i379 = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i379, align 8, !noalias !658
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11p_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.qp, align 8, !tbaa !62, !noalias !658
  store ptr %i.qp, ptr %29, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.qo, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.qr = load ptr, ptr %29, align 8, !tbaa !234  ; 3 uses
  %.not.i380 = icmp eq ptr %i.qr, null
  br i1 %.not.i380, label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381: ; preds = %bb.ck
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !62
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qu = load ptr, ptr %i.qt, align 8
  call void %i.qu(ptr noundef nonnull align 8 dereferenceable(24) %i.qr) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.qv, align 4, !tbaa !223
  br label %bb.fh

bb.cl:                                            ; preds = %bb.cj
  %i.qw = landingpad { ptr, i32 }
          cleanup
  %i.qx = load ptr, ptr %29, align 8, !tbaa !234  ; 3 uses
  %.not.i384 = icmp eq ptr %i.qx, null
  br i1 %.not.i384, label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385: ; preds = %bb.cl
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !62
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8
  call void %i.ra(ptr noundef nonnull align 8 dereferenceable(24) %i.qx) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389

_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  br label %bb.fi

bb.cm:                                            ; preds = %.loopexit
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37
  %i.rc = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !659 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  store i64 %2, ptr %i.rd, align 8, !tbaa !70, !noalias !659
  %.sroa.2.0..sroa_idx.i.i.i393 = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i393, align 8, !noalias !659
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11r_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.rc, align 8, !tbaa !62, !noalias !659
  store ptr %i.rc, ptr %30, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.rb, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.re = load ptr, ptr %30, align 8, !tbaa !234  ; 3 uses
  %.not.i394 = icmp eq ptr %i.re, null
  br i1 %.not.i394, label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395: ; preds = %bb.cn
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !62
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rh = load ptr, ptr %i.rg, align 8
  call void %i.rh(ptr noundef nonnull align 8 dereferenceable(24) %i.re) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ri, align 4, !tbaa !223
  br label %bb.fh

bb.co:                                            ; preds = %bb.cm
  %i.rj = landingpad { ptr, i32 }
          cleanup
  %i.rk = load ptr, ptr %30, align 8, !tbaa !234  ; 3 uses
  %.not.i398 = icmp eq ptr %i.rk, null
  br i1 %.not.i398, label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399: ; preds = %bb.co
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !62
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8
  call void %i.rn(ptr noundef nonnull align 8 dereferenceable(24) %i.rk) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403

_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  br label %bb.fi

bb.cp:                                            ; preds = %.loopexit
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37
  %i.rp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !660 ; 4 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  store i64 %2, ptr %i.rq, align 8, !tbaa !70, !noalias !660
  %.sroa.2.0..sroa_idx.i.i.i407 = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i407, align 8, !noalias !660
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11R_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.rp, align 8, !tbaa !62, !noalias !660
  store ptr %i.rp, ptr %31, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ro, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.rr = load ptr, ptr %31, align 8, !tbaa !234  ; 3 uses
  %.not.i408 = icmp eq ptr %i.rr, null
  br i1 %.not.i408, label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409: ; preds = %bb.cq
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !62
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.ru = load ptr, ptr %i.rt, align 8
  call void %i.ru(ptr noundef nonnull align 8 dereferenceable(24) %i.rr) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.rv, align 4, !tbaa !223
  br label %bb.fh

bb.cr:                                            ; preds = %bb.cp
  %i.rw = landingpad { ptr, i32 }
          cleanup
  %i.rx = load ptr, ptr %31, align 8, !tbaa !234  ; 3 uses
  %.not.i412 = icmp eq ptr %i.rx, null
  br i1 %.not.i412, label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413: ; preds = %bb.cr
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !62
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8
  call void %i.sa(ptr noundef nonnull align 8 dereferenceable(24) %i.rx) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417

_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  br label %bb.fi

bb.cs:                                            ; preds = %.loopexit, %.loopexit
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.sc = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !661 ; 7 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  store i64 %2, ptr %i.sd, align 8, !tbaa !70, !noalias !661
  %.sroa.2.0..sroa_idx.i.i.i421 = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i421, align 8, !noalias !661
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11T_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.sc, align 8, !tbaa !62, !noalias !661
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !232 ; 6 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !236
  %.not.i.i422 = icmp eq ptr %i.sf, %i.sh
  br i1 %.not.i.i422, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.si = ptrtoint ptr %i.sc to i64
  store i64 %i.si, ptr %i.sf, align 8, !tbaa !234
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  store ptr %i.sj, ptr %i.se, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.cu:                                            ; preds = %bb.cs
  %i.sk = load ptr, ptr %i.sb, align 8, !tbaa !231 ; 10 uses
  %i.sl = ptrtoint ptr %i.sf to i64               ; 3 uses
  %i.sm = ptrtoint ptr %i.sk to i64               ; 3 uses
  %i.sn = sub i64 %i.sl, %i.sm                    ; 4 uses
  %i.so = icmp eq i64 %i.sn, 9223372036854775800
  br i1 %i.so, label %bb.cv, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc435 unwind label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447

.noexc435:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423: ; preds = %bb.cu
  %i.sp = ashr exact i64 %i.sn, 3
  %mul2.i.i.i421 = ashr exact i64 %i.sn, 2
  %58 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i421, i64 1) ; 2 uses
  %i.sq = icmp ult i64 %58, %i.sp
  %i.sr = tail call i64 @llvm.umin.i64(i64 %58, i64 1152921504606846975)
  %i.ss = select i1 %i.sq, i64 1152921504606846975, i64 %i.sr ; 2 uses
  %i.st = shl nuw nsw i64 %i.ss, 3
  %i.su = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.st) #45
          to label %.noexc436 unwind label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447 ; 10 uses

.noexc436:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 %i.sn
  %i.sw = ptrtoint ptr %i.sc to i64
  store i64 %i.sw, ptr %i.sv, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i426 = icmp eq ptr %i.sk, %i.sf
  br i1 %.not10.i.i.i.i.i.i.i426, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427.preheader

.lr.ph.i.i.i.i.i.i.i427.preheader:                ; preds = %.noexc436
  %i.sx = add i64 %i.sl, -8
  %i.sy = sub i64 %i.sx, %i.sm                    ; 2 uses
  %i.sz = lshr i64 %i.sy, 3
  %i.ta = add nuw nsw i64 %i.sz, 1                ; 2 uses
  %min.iters.check968 = icmp ult i64 %i.sy, 136
  br i1 %min.iters.check968, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027, label %vector.memcheck961

vector.memcheck961:                               ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader
  %i.tb = add i64 %i.sl, -8
  %i.tc = sub i64 %i.tb, %i.sm
  %i.td = and i64 %i.tc, -8
  %i.te = add i64 %i.td, 8                        ; 2 uses
  %scevgep962 = getelementptr i8, ptr %i.su, i64 %i.te
  %scevgep963 = getelementptr i8, ptr %i.sk, i64 %i.te
  %bound0964 = icmp ult ptr %i.su, %scevgep963
  %bound1965 = icmp ult ptr %i.sk, %scevgep962
  %found.conflict966 = and i1 %bound0964, %bound1965
  br i1 %found.conflict966, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027, label %vector.ph969

vector.ph969:                                     ; preds = %vector.memcheck961
  %n.vec970 = and i64 %i.ta, 4611686018427387900  ; 3 uses
  %i.tf = shl i64 %n.vec970, 3                    ; 2 uses
  %i.tg = getelementptr i8, ptr %i.su, i64 %i.tf  ; 2 uses
  %i.th = getelementptr i8, ptr %i.sk, i64 %i.tf
  br label %vector.body971

vector.body971:                                   ; preds = %vector.body971, %vector.ph969
  %index972 = phi i64 [ 0, %vector.ph969 ], [ %index.next977, %vector.body971 ] ; 2 uses
  %i.ti = shl i64 %index972, 3                    ; 2 uses
  %next.gep973 = getelementptr i8, ptr %i.su, i64 %i.ti ; 2 uses
  %next.gep974 = getelementptr i8, ptr %i.sk, i64 %i.ti ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.tj = getelementptr i8, ptr %next.gep974, i64 16
  %wide.load975 = load <2 x i64>, ptr %next.gep974, align 8, !tbaa !234, !alias.scope !664, !noalias !662
  %wide.load976 = load <2 x i64>, ptr %i.tj, align 8, !tbaa !234, !alias.scope !664, !noalias !662
  %i.tk = getelementptr i8, ptr %next.gep973, i64 16
  store <2 x i64> %wide.load975, ptr %next.gep973, align 8, !tbaa !234, !alias.scope !665, !noalias !664
  store <2 x i64> %wide.load976, ptr %i.tk, align 8, !tbaa !234, !alias.scope !665, !noalias !664
  %i.tl = getelementptr i8, ptr %next.gep974, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep974, align 8, !tbaa !234, !alias.scope !664, !noalias !662
  store <2 x ptr> splat (ptr null), ptr %i.tl, align 8, !tbaa !234, !alias.scope !664, !noalias !662
  %index.next977 = add nuw i64 %index972, 4       ; 2 uses
  %i.tm = icmp eq i64 %index.next977, %n.vec970
  br i1 %i.tm, label %middle.block978, label %vector.body971, !llvm.loop !595

middle.block978:                                  ; preds = %vector.body971
  %cmp.n979 = icmp eq i64 %i.ta, %n.vec970
  br i1 %cmp.n979, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027

.lr.ph.i.i.i.i.i.i.i427.preheader1027:            ; preds = %vector.memcheck961, %.lr.ph.i.i.i.i.i.i.i427.preheader, %middle.block978
  %.012.i.i.i.i.i.i.i428.ph = phi ptr [ %i.su, %vector.memcheck961 ], [ %i.su, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.tg, %middle.block978 ]
  %.0911.i.i.i.i.i.i.i429.ph = phi ptr [ %i.sk, %vector.memcheck961 ], [ %i.sk, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.th, %middle.block978 ]
  br label %.lr.ph.i.i.i.i.i.i.i427

.lr.ph.i.i.i.i.i.i.i427:                          ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader1027, %.lr.ph.i.i.i.i.i.i.i427
  %.012.i.i.i.i.i.i.i428 = phi ptr [ %i.tp, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.012.i.i.i.i.i.i.i428.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader1027 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i429 = phi ptr [ %i.to, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.0911.i.i.i.i.i.i.i429.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader1027 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.tn = load i64, ptr %.0911.i.i.i.i.i.i.i429, align 8, !tbaa !234, !alias.scope !663, !noalias !662
  store i64 %i.tn, ptr %.012.i.i.i.i.i.i.i428, align 8, !tbaa !234, !alias.scope !662, !noalias !663
  store ptr null, ptr %.0911.i.i.i.i.i.i.i429, align 8, !tbaa !234, !alias.scope !663, !noalias !662
  %i.to = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429, i64 8 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i430 = icmp eq ptr %i.to, %i.sf
  br i1 %.not.i.i.i.i.i.i.i430, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427, !llvm.loop !596

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431: ; preds = %.lr.ph.i.i.i.i.i.i.i427, %middle.block978, %.noexc436
  %.0.lcssa.i.i.i.i.i.i.i432 = phi ptr [ %i.su, %.noexc436 ], [ %i.tg, %middle.block978 ], [ %i.tp, %.lr.ph.i.i.i.i.i.i.i427 ]
  %i.tq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i432, i64 8
  %.not.i23.i.i.i433 = icmp eq ptr %i.sk, null
  br i1 %.not.i23.i.i.i433, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431
  tail call void @_ZdlPv(ptr noundef nonnull %i.sk) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434: ; preds = %bb.cw, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431
  store ptr %i.su, ptr %i.sb, align 8, !tbaa !231
  store ptr %i.tq, ptr %i.se, align 8, !tbaa !232
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %i.ss
  store ptr %i.tr, ptr %i.sg, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434, %bb.ct
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ts, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447: ; preds = %bb.cv, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.tt = landingpad { ptr, i32 }
          cleanup
  %i.tu = load ptr, ptr %i.sc, align 8, !tbaa !62
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.tw = load ptr, ptr %i.tv, align 8
  tail call void %i.tw(ptr noundef nonnull align 8 dereferenceable(24) %i.sc) #37, !inline_history !19
  br label %bb.fi

bb.cx:                                            ; preds = %.loopexit
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #37
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.tz = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #45, !noalias !666 ; 7 uses
  %i.ua = load i32, ptr %i.ty, align 8, !tbaa !193, !noalias !666
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store i64 %2, ptr %i.ub, align 8, !tbaa !70, !noalias !666
  %.sroa.2.0..sroa_idx.i.i.i451 = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i451, align 8, !noalias !666
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11z_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.tz, align 8, !tbaa !62, !noalias !666
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  store i32 %i.ua, ptr %i.uc, align 8, !tbaa !253, !noalias !666
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 32
  store i64 0, ptr %i.ud, align 8, !tbaa !70, !noalias !666
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tz, i64 40
  store i32 0, ptr %i.ue, align 8, !tbaa !254, !noalias !666
  store ptr %i.tz, ptr %32, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.tx, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.uf = load ptr, ptr %32, align 8, !tbaa !234  ; 3 uses
  %.not.i452.a = icmp eq ptr %i.uf, null
  br i1 %.not.i452.a, label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453.a

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453.a: ; preds = %bb.cy
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !62
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8
  call void %i.ui(ptr noundef nonnull align 8 dereferenceable(24) %i.uf) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453.a, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.uj, align 4, !tbaa !223
  br label %bb.fh

bb.cz:                                            ; preds = %bb.cx
  %i.uk = landingpad { ptr, i32 }
          cleanup
  %i.ul = load ptr, ptr %32, align 8, !tbaa !234  ; 3 uses
  %.not.i456 = icmp eq ptr %i.ul, null
  br i1 %.not.i456, label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457: ; preds = %bb.cz
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !62
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uo = load ptr, ptr %i.un, align 8
  call void %i.uo(ptr noundef nonnull align 8 dereferenceable(24) %i.ul) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461

_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  br label %bb.fi

bb.da:                                            ; preds = %.loopexit
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #37
  %i.uq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !667 ; 4 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  store i64 %2, ptr %i.ur, align 8, !tbaa !70, !noalias !667
  %.sroa.2.0..sroa_idx.i.i.i465 = getelementptr inbounds nuw i8, ptr %i.uq, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i465, align 8, !noalias !667
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details13pid_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.uq, align 8, !tbaa !62, !noalias !667
  store ptr %i.uq, ptr %33, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.up, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.us = load ptr, ptr %33, align 8, !tbaa !234  ; 3 uses
  %.not.i466.a = icmp eq ptr %i.us, null
  br i1 %.not.i466.a, label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467.a

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467.a: ; preds = %bb.db
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !62
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = load ptr, ptr %i.uu, align 8
  call void %i.uv(ptr noundef nonnull align 8 dereferenceable(24) %i.us) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467.a, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  br label %bb.fh

bb.dc:                                            ; preds = %bb.da
  %i.uw = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE:bb.a

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i659: ; preds = %bb.fd
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !62
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.acr = load ptr, ptr %i.acq, align 8
  call void %i.acr(ptr noundef nonnull align 8 dereferenceable(24) %i.aco) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663

_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663: ; preds = %bb.fd, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i659, %bb.fc
  %.pn = phi { ptr, i32 } [ %i.acm, %bb.fc ], [ %i.acn, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i659 ], [ %i.acn, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #37
  br label %bb.fg

bb.fe:                                            ; preds = %bb.fa
  %i.acs = landingpad { ptr, i32 }
          cleanup
  %i.act = load ptr, ptr %54, align 8, !tbaa !234 ; 3 uses
  %.not.i664 = icmp eq ptr %i.act, null
  br i1 %.not.i664, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i665

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i665: ; preds = %bb.fe
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !62
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 8
  %i.acw = load ptr, ptr %i.acv, align 8
  call void %i.acw(ptr noundef nonnull align 8 dereferenceable(24) %i.act) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666: ; preds = %bb.fe, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i665
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #37
  br label %bb.fg

bb.ff:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit657, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit640
  call void @_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #37
  br label %bb.fh

bb.fg:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit643, %bb.ev
  %.pn6 = phi { ptr, i32 } [ %i.acs, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666 ], [ %i.abr, %bb.ev ], [ %.pn, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663 ], [ %i.abs, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit643 ]
  call void @_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #37
  br label %bb.fi

bb.fh:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22, %_ZNSt10unique_ptrIN6spdlog7details14name_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details15level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details21short_level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11I_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11M_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11S_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11e_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11f_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11F_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details20color_stop_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details25source_location_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details24short_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details25source_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details24source_linenum_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details12ch_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEESt14default_deleteIS9_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEESt14default_deleteIS9_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEESt14default_deleteIS9_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEESt14default_deleteIS9_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details13mdc_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %bb.ff, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit
  ret void

bb.fi:                                            ; preds = %bb.fg, %_ZNSt10unique_ptrIN6spdlog7details13mdc_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit637, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEESt14default_deleteIS9_EED2Ev.exit623, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEESt14default_deleteIS9_EED2Ev.exit613, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEESt14default_deleteIS9_EED2Ev.exit603, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEESt14default_deleteIS9_EED2Ev.exit593, %_ZNSt10unique_ptrIN6spdlog7details12ch_formatterESt14default_deleteIS2_EED2Ev.exit583, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit573, %_ZNSt10unique_ptrIN6spdlog7details24source_linenum_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit559, %_ZNSt10unique_ptrIN6spdlog7details25source_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit545, %_ZNSt10unique_ptrIN6spdlog7details24short_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit531, %_ZNSt10unique_ptrIN6spdlog7details25source_location_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit517, %_ZNSt10unique_ptrIN6spdlog7details20color_stop_formatterESt14default_deleteIS2_EED2Ev.exit503, %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit489, %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475, %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461, %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447, %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417, %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403, %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389, %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375, %_ZNSt10unique_ptrIN6spdlog7details11F_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit361, %_ZNSt10unique_ptrIN6spdlog7details11f_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit347, %_ZNSt10unique_ptrIN6spdlog7details11e_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit333, %_ZNSt10unique_ptrIN6spdlog7details11S_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit319, %_ZNSt10unique_ptrIN6spdlog7details11M_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit305, %_ZNSt10unique_ptrIN6spdlog7details11I_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit291, %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit277, %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263, %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249, %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235, %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205, %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191, %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177, %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163, %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149, %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119, %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105, %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91, %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77, %_ZNSt10unique_ptrIN6spdlog7details21short_level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit63, %_ZNSt10unique_ptrIN6spdlog7details15level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit49, %_ZNSt10unique_ptrIN6spdlog7details14name_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit35, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit25, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19
  %.pn8 = phi { ptr, i32 } [ %i.by, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19 ], [ %.pn6, %bb.fg ], [ %i.cn, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit25 ], [ %i.cz, %_ZNSt10unique_ptrIN6spdlog7details14name_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit35 ], [ %i.dl, %_ZNSt10unique_ptrIN6spdlog7details15level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit49 ], [ %i.dx, %_ZNSt10unique_ptrIN6spdlog7details21short_level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit63 ], [ %i.ej, %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77 ], [ %i.ev, %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91 ], [ %i.fi, %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105 ], [ %i.fv, %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119 ], [ %i.hs, %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149 ], [ %i.ie, %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163 ], [ %i.ir, %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177 ], [ %i.je, %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191 ], [ %i.jr, %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205 ], [ %i.lo, %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235 ], [ %i.ma, %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249 ], [ %i.mn, %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263 ], [ %i.na, %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit277 ], [ %i.nn, %_ZNSt10unique_ptrIN6spdlog7details11I_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit291 ], [ %i.oa, %_ZNSt10unique_ptrIN6spdlog7details11M_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit305 ], [ %i.on, %_ZNSt10unique_ptrIN6spdlog7details11S_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit319 ], [ %i.oz, %_ZNSt10unique_ptrIN6spdlog7details11e_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit333 ], [ %i.pl, %_ZNSt10unique_ptrIN6spdlog7details11f_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit347 ], [ %i.px, %_ZNSt10unique_ptrIN6spdlog7details11F_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit361 ], [ %i.qj, %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375 ], [ %i.qw, %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389 ], [ %i.rj, %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403 ], [ %i.rw, %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417 ], [ %i.tt, %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447 ], [ %i.uk, %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461 ], [ %i.uw, %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475 ], [ %i.vi, %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit489 ], [ %i.vu, %_ZNSt10unique_ptrIN6spdlog7details20color_stop_formatterESt14default_deleteIS2_EED2Ev.exit503 ], [ %i.wg, %_ZNSt10unique_ptrIN6spdlog7details25source_location_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit517 ], [ %i.ws, %_ZNSt10unique_ptrIN6spdlog7details24short_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit531 ], [ %i.xe, %_ZNSt10unique_ptrIN6spdlog7details25source_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit545 ], [ %i.xq, %_ZNSt10unique_ptrIN6spdlog7details24source_linenum_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit559 ], [ %i.yc, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit573 ], [ %i.yp, %_ZNSt10unique_ptrIN6spdlog7details12ch_formatterESt14default_deleteIS2_EED2Ev.exit583 ], [ %i.zb, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEESt14default_deleteIS9_EED2Ev.exit593 ], [ %i.zo, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEESt14default_deleteIS9_EED2Ev.exit603 ], [ %i.aab, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEESt14default_deleteIS9_EED2Ev.exit613 ], [ %i.aao, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEESt14default_deleteIS9_EED2Ev.exit623 ], [ %i.abb, %_ZNSt10unique_ptrIN6spdlog7details13mdc_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit637 ]
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog17pattern_formatter12handle_flag_INS_7details18null_scoped_padderEEEvcNS2_12padding_infoE(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 noundef signext %1, i64 %2, i64 %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.spdlog::details::padding_info", align 16 ; 10 uses
  %5 = alloca %"class.std::unique_ptr.116", align 8 ; 8 uses
  %6 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %7 = alloca %"class.std::unique_ptr.105", align 8 ; 8 uses
  %8 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %9 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %10 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %11 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %12 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %13 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %14 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %15 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %16 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %17 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %18 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %19 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %20 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %21 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %22 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %23 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %24 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %25 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %26 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %27 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %28 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %29 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %30 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %31 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %32 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %33 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %34 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %35 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %36 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %37 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %38 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %39 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %40 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %41 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %42 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %43 = alloca %"class.std::unique_ptr.920", align 8 ; 8 uses
  %44 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %45 = alloca %"class.std::unique_ptr.928", align 8 ; 8 uses
  %46 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %47 = alloca %"class.std::unique_ptr.936", align 8 ; 8 uses
  %48 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %49 = alloca %"class.std::unique_ptr.944", align 8 ; 8 uses
  %50 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %51 = alloca %"class.std::unique_ptr.126", align 8 ; 12 uses
  %52 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %53 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %54 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  store i64 %2, ptr %4, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load i64, ptr %i.b, align 8, !tbaa !224
  %.not.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !176 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.f = load i8, ptr %i.e, align 1, !tbaa !64
  %i.g = icmp eq i8 %1, %i.f
  br i1 %i.g, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %bb.c, !llvm.loop !24

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = sext i8 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load i64, ptr %i.j, align 8, !tbaa !198  ; 2 uses
  %i.l = urem i64 %i.i, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !228  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !176  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i8, ptr %i.q, align 1, !tbaa !64
  %i.s = icmp eq i8 %1, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.t = icmp eq i8 %1, %i.w
  br i1 %i.t, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !21

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %i.p, %bb.f ]
  %i.u = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !176 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i8, ptr %i.v, align 1, !tbaa !64    ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = urem i64 %i.x, %i.k
  %.not19.i.i.i.i = icmp eq i64 %i.y, %i.l
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !21

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !21

_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.p, %bb.f ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !201 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.116") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  %i.ae = load ptr, ptr %5, align 8, !tbaa !201   ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.af, ptr noundef nonnull align 16 dereferenceable(14) %4, i64 14, i1 false), !tbaa.struct !247
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !201
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !232 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !236
  %.not.i.i10 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i10, label %bb.i, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit
  %i.al = ptrtoint ptr %i.ae to i64
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !234
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !231 ; 10 uses
  %i.ao = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.as = ashr exact i64 %i.aq, 3
  %mul2.i.i.i = ashr exact i64 %i.aq, 2
  %55 = call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.at = icmp ult i64 %55, %i.as
  %i.au = call i64 @llvm.umin.i64(i64 %55, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #45
          to label %.noexc12 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16 ; 10 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aq
  %i.az = ptrtoint ptr %i.ae to i64
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ai
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc12
  %i.ba = add i64 %i.ao, -8
  %i.bb = sub i64 %i.ba, %i.ap                    ; 2 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader1029, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.be = add i64 %i.ao, -8
  %i.bf = sub i64 %i.be, %i.ap
  %i.bg = and i64 %i.bf, -8
  %i.bh = add i64 %i.bg, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.bh
  %scevgep957 = getelementptr i8, ptr %i.an, i64 %i.bh
  %bound0 = icmp ult ptr %i.ax, %scevgep957
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader1029, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bd, 4611686018427387900     ; 3 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ax, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.an, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bl ; 2 uses
  %next.gep958 = getelementptr i8, ptr %i.an, i64 %i.bl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.bm = getelementptr i8, ptr %next.gep958, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep958, align 8, !tbaa !234, !alias.scope !793, !noalias !791
  %wide.load959 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !234, !alias.scope !793, !noalias !791
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !234, !alias.scope !794, !noalias !793
  store <2 x i64> %wide.load959, ptr %i.bn, align 8, !tbaa !234, !alias.scope !794, !noalias !793
  %i.bo = getelementptr i8, ptr %next.gep958, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep958, align 8, !tbaa !234, !alias.scope !793, !noalias !791
  store <2 x ptr> splat (ptr null), ptr %i.bo, align 8, !tbaa !234, !alias.scope !793, !noalias !791
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !685

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1029

.lr.ph.i.i.i.i.i.i.i.preheader1029:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1029, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1029 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1029 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.bq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !792, !noalias !791
  store i64 %i.bq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !791, !noalias !792
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !792, !noalias !791
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.ai
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !686

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.noexc12 ], [ %i.bj, %middle.block ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.an) #44
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.k
  store ptr %i.ax, ptr %i.ag, align 8, !tbaa !231
  store ptr %i.bt, ptr %i.ah, align 8, !tbaa !232
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bu, ptr %i.aj, align 8, !tbaa !236
  %.pre = load ptr, ptr %5, align 8, !tbaa !201   ; 3 uses
  %.not.i13 = icmp eq ptr %.pre, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.bv = load ptr, ptr %.pre, align 8, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %.pre) #37, !inline_history !22
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #37, !inline_history !19
  %i.cc = load ptr, ptr %5, align 8, !tbaa !201   ; 3 uses
  %.not.i17 = icmp eq ptr %i.cc, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !62
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(24) %i.cc) #37, !inline_history !22
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19

_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16, %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.fi

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  switch i8 %1, label %bb.eq [
    i8 43, label %bb.l
    i8 110, label %bb.o
    i8 108, label %bb.r
    i8 76, label %bb.u
    i8 116, label %bb.x
    i8 118, label %bb.aa
    i8 97, label %bb.ad
    i8 65, label %bb.ag
    i8 98, label %bb.aj
    i8 104, label %bb.aj
    i8 66, label %bb.ao
    i8 99, label %bb.ar
    i8 67, label %bb.au
    i8 89, label %bb.ax
    i8 68, label %bb.ba
    i8 120, label %bb.ba
    i8 109, label %bb.bf
    i8 100, label %bb.bi
    i8 72, label %bb.bl
    i8 73, label %bb.bo
    i8 77, label %bb.br
    i8 83, label %bb.bu
    i8 101, label %bb.bx
    i8 102, label %bb.ca
    i8 70, label %bb.cd
    i8 69, label %bb.cg
    i8 112, label %bb.cj
    i8 114, label %bb.cm
    i8 82, label %bb.cp
    i8 84, label %bb.cs
    i8 88, label %bb.cs
    i8 122, label %bb.cx
    i8 80, label %bb.da
    i8 94, label %bb.dd
    i8 36, label %bb.dg
    i8 64, label %bb.dj
    i8 115, label %bb.dm
    i8 103, label %bb.dp
    i8 35, label %bb.ds
    i8 33, label %bb.dv
    i8 37, label %bb.dy
    i8 117, label %bb.eb
    i8 105, label %bb.ee
    i8 111, label %bb.eh
    i8 79, label %bb.ek
    i8 38, label %bb.en
  ]

bb.l:                                             ; preds = %.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @_ZN6spdlog7details11make_uniqueINS0_14full_formatterEJRNS0_12padding_infoEEEESt10unique_ptrIT_St14default_deleteIS6_EEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.105") align 8 %7, ptr noundef nonnull align 8 dereferenceable(14) %4)
  %i.ch = load ptr, ptr %7, align 8, !tbaa !239
  store ptr null, ptr %7, align 8, !tbaa !239
  store ptr %i.ch, ptr %6, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ci = load ptr, ptr %6, align 8, !tbaa !234   ; 3 uses
  %.not.i20 = icmp eq ptr %i.ci, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21: ; preds = %bb.m
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !62
end_hunk_4
begin_hunk_5_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details18null_scoped_padderEEEvcNS2_12padding_infoE:bb.a
_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i69: ; preds = %bb.y
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(24) %i.ef) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i69, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.fh

bb.z:                                             ; preds = %bb.x
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = load ptr, ptr %11, align 8, !tbaa !234  ; 3 uses
  %.not.i72 = icmp eq ptr %i.ek, null
  br i1 %.not.i72, label %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i73

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i73: ; preds = %bb.z
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !62
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(24) %i.ek) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77

_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i73, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.fi

bb.aa:                                            ; preds = %.loopexit
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.ep = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !799 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 %2, ptr %i.eq, align 8, !tbaa !70, !noalias !799
  %.sroa.2.0..sroa_idx.i.i.i81 = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i81, align 8, !noalias !799
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11v_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.ep, align 8, !tbaa !62, !noalias !799
  store ptr %i.ep, ptr %12, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.er = load ptr, ptr %12, align 8, !tbaa !234  ; 3 uses
  %.not.i82 = icmp eq ptr %i.er, null
  br i1 %.not.i82, label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83: ; preds = %bb.ab
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !62
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(24) %i.er) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.fh

bb.ac:                                            ; preds = %bb.aa
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = load ptr, ptr %12, align 8, !tbaa !234  ; 3 uses
  %.not.i86 = icmp eq ptr %i.ew, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87: ; preds = %bb.ac
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !62
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(24) %i.ew) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91

_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.fi

bb.ad:                                            ; preds = %.loopexit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.fb = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !800 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i64 %2, ptr %i.fc, align 8, !tbaa !70, !noalias !800
  %.sroa.2.0..sroa_idx.i.i.i95 = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i95, align 8, !noalias !800
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11a_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.fb, align 8, !tbaa !62, !noalias !800
  store ptr %i.fb, ptr %13, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fd = load ptr, ptr %13, align 8, !tbaa !234  ; 3 uses
  %.not.i96 = icmp eq ptr %i.fd, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97: ; preds = %bb.ae
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !62
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(24) %i.fd) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.fh, align 4, !tbaa !223
  br label %bb.fh

bb.af:                                            ; preds = %bb.ad
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %13, align 8, !tbaa !234  ; 3 uses
  %.not.i100 = icmp eq ptr %i.fj, null
  br i1 %.not.i100, label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101: ; preds = %bb.af
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !62
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(24) %i.fj) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105

_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.fi

bb.ag:                                            ; preds = %.loopexit
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.fo = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !801 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i64 %2, ptr %i.fp, align 8, !tbaa !70, !noalias !801
  %.sroa.2.0..sroa_idx.i.i.i109 = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i109, align 8, !noalias !801
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11A_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.fo, align 8, !tbaa !62, !noalias !801
  store ptr %i.fo, ptr %14, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fq = load ptr, ptr %14, align 8, !tbaa !234  ; 3 uses
  %.not.i110 = icmp eq ptr %i.fq, null
  br i1 %.not.i110, label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111: ; preds = %bb.ah
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !62
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(24) %i.fq) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.fu, align 4, !tbaa !223
  br label %bb.fh

bb.ai:                                            ; preds = %bb.ag
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = load ptr, ptr %14, align 8, !tbaa !234  ; 3 uses
  %.not.i114 = icmp eq ptr %i.fw, null
  br i1 %.not.i114, label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115: ; preds = %bb.ai
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !62
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(24) %i.fw) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119

_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.fi

bb.aj:                                            ; preds = %.loopexit, %.loopexit
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.gb = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !802 ; 7 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i64 %2, ptr %i.gc, align 8, !tbaa !70, !noalias !802
  %.sroa.2.0..sroa_idx.i.i.i123 = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i123, align 8, !noalias !802
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11b_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.gb, align 8, !tbaa !62, !noalias !802
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !232 ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !236
  %.not.i.i124 = icmp eq ptr %i.ge, %i.gg
  br i1 %.not.i.i124, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gh = ptrtoint ptr %i.gb to i64
  store i64 %i.gh, ptr %i.ge, align 8, !tbaa !234
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr %i.gi, ptr %i.gd, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.gj = load ptr, ptr %i.ga, align 8, !tbaa !231 ; 10 uses
  %i.gk = ptrtoint ptr %i.ge to i64               ; 3 uses
  %i.gl = ptrtoint ptr %i.gj to i64               ; 3 uses
  %i.gm = sub i64 %i.gk, %i.gl                    ; 4 uses
  %i.gn = icmp eq i64 %i.gm, 9223372036854775800
  br i1 %i.gn, label %bb.am, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc137 unwind label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149

.noexc137:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125: ; preds = %bb.al
  %i.go = ashr exact i64 %i.gm, 3
  %mul2.i.i.i125 = ashr exact i64 %i.gm, 2
  %56 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i125, i64 1) ; 2 uses
  %i.gp = icmp ult i64 %56, %i.go
  %i.gq = tail call i64 @llvm.umin.i64(i64 %56, i64 1152921504606846975)
  %i.gr = select i1 %i.gp, i64 1152921504606846975, i64 %i.gq ; 2 uses
  %i.gs = shl nuw nsw i64 %i.gr, 3
  %i.gt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #45
          to label %.noexc138 unwind label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149 ; 10 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gm
  %i.gv = ptrtoint ptr %i.gb to i64
  store i64 %i.gv, ptr %i.gu, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i128 = icmp eq ptr %i.gj, %i.ge
  br i1 %.not10.i.i.i.i.i.i.i128, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader

.lr.ph.i.i.i.i.i.i.i129.preheader:                ; preds = %.noexc138
  %i.gw = add i64 %i.gk, -8
  %i.gx = sub i64 %i.gw, %i.gl                    ; 2 uses
  %i.gy = lshr i64 %i.gx, 3
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check1010 = icmp ult i64 %i.gx, 136
  br i1 %min.iters.check1010, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024, label %vector.memcheck1003

vector.memcheck1003:                              ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader
  %i.ha = add i64 %i.gk, -8
  %i.hb = sub i64 %i.ha, %i.gl
  %i.hc = and i64 %i.hb, -8
  %i.hd = add i64 %i.hc, 8                        ; 2 uses
  %scevgep1004 = getelementptr i8, ptr %i.gt, i64 %i.hd
  %scevgep1005 = getelementptr i8, ptr %i.gj, i64 %i.hd
  %bound01006 = icmp ult ptr %i.gt, %scevgep1005
  %bound11007 = icmp ult ptr %i.gj, %scevgep1004
  %found.conflict1008 = and i1 %bound01006, %bound11007
  br i1 %found.conflict1008, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024, label %vector.ph1011

vector.ph1011:                                    ; preds = %vector.memcheck1003
  %n.vec1012 = and i64 %i.gz, 4611686018427387900 ; 3 uses
  %i.he = shl i64 %n.vec1012, 3                   ; 2 uses
  %i.hf = getelementptr i8, ptr %i.gt, i64 %i.he  ; 2 uses
  %i.hg = getelementptr i8, ptr %i.gj, i64 %i.he
  br label %vector.body1013

vector.body1013:                                  ; preds = %vector.body1013, %vector.ph1011
  %index1014 = phi i64 [ 0, %vector.ph1011 ], [ %index.next1019, %vector.body1013 ] ; 2 uses
  %i.hh = shl i64 %index1014, 3                   ; 2 uses
  %next.gep1015 = getelementptr i8, ptr %i.gt, i64 %i.hh ; 2 uses
  %next.gep1016 = getelementptr i8, ptr %i.gj, i64 %i.hh ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.hi = getelementptr i8, ptr %next.gep1016, i64 16
  %wide.load1017 = load <2 x i64>, ptr %next.gep1016, align 8, !tbaa !234, !alias.scope !805, !noalias !803
  %wide.load1018 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !234, !alias.scope !805, !noalias !803
  %i.hj = getelementptr i8, ptr %next.gep1015, i64 16
  store <2 x i64> %wide.load1017, ptr %next.gep1015, align 8, !tbaa !234, !alias.scope !806, !noalias !805
  store <2 x i64> %wide.load1018, ptr %i.hj, align 8, !tbaa !234, !alias.scope !806, !noalias !805
  %i.hk = getelementptr i8, ptr %next.gep1016, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1016, align 8, !tbaa !234, !alias.scope !805, !noalias !803
  store <2 x ptr> splat (ptr null), ptr %i.hk, align 8, !tbaa !234, !alias.scope !805, !noalias !803
  %index.next1019 = add nuw i64 %index1014, 4     ; 2 uses
  %i.hl = icmp eq i64 %index.next1019, %n.vec1012
  br i1 %i.hl, label %middle.block1020, label %vector.body1013, !llvm.loop !709

middle.block1020:                                 ; preds = %vector.body1013
  %cmp.n1021 = icmp eq i64 %i.gz, %n.vec1012
  br i1 %cmp.n1021, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024

.lr.ph.i.i.i.i.i.i.i129.preheader1024:            ; preds = %vector.memcheck1003, %.lr.ph.i.i.i.i.i.i.i129.preheader, %middle.block1020
  %.012.i.i.i.i.i.i.i130.ph = phi ptr [ %i.gt, %vector.memcheck1003 ], [ %i.gt, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.hf, %middle.block1020 ]
  %.0911.i.i.i.i.i.i.i131.ph = phi ptr [ %i.gj, %vector.memcheck1003 ], [ %i.gj, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.hg, %middle.block1020 ]
  br label %.lr.ph.i.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i.i129:                          ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader1024, %.lr.ph.i.i.i.i.i.i.i129
  %.012.i.i.i.i.i.i.i130 = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.012.i.i.i.i.i.i.i130.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader1024 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i131 = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.0911.i.i.i.i.i.i.i131.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader1024 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.hm = load i64, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !234, !alias.scope !804, !noalias !803
  store i64 %i.hm, ptr %.012.i.i.i.i.i.i.i130, align 8, !tbaa !234, !alias.scope !803, !noalias !804
  store ptr null, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !234, !alias.scope !804, !noalias !803
  %i.hn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i131, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i130, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %i.hn, %i.ge
  br i1 %.not.i.i.i.i.i.i.i132, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129, !llvm.loop !710

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133: ; preds = %.lr.ph.i.i.i.i.i.i.i129, %middle.block1020, %.noexc138
  %.0.lcssa.i.i.i.i.i.i.i134 = phi ptr [ %i.gt, %.noexc138 ], [ %i.hf, %middle.block1020 ], [ %i.ho, %.lr.ph.i.i.i.i.i.i.i129 ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i134, i64 8
  %.not.i23.i.i.i135 = icmp eq ptr %i.gj, null
  br i1 %.not.i23.i.i.i135, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133
  tail call void @_ZdlPv(ptr noundef nonnull %i.gj) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136: ; preds = %bb.an, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133
  store ptr %i.gt, ptr %i.ga, align 8, !tbaa !231
  store ptr %i.hp, ptr %i.gd, align 8, !tbaa !232
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gr
  store ptr %i.hq, ptr %i.gf, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136, %bb.ak
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.hr, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149: ; preds = %bb.am, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.hs = landingpad { ptr, i32 }
          cleanup
  %i.ht = load ptr, ptr %i.gb, align 8, !tbaa !62
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
  tail call void %i.hv(ptr noundef nonnull align 8 dereferenceable(24) %i.gb) #37, !inline_history !19
  br label %bb.fi

bb.ao:                                            ; preds = %.loopexit
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  %i.hx = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !807 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i64 %2, ptr %i.hy, align 8, !tbaa !70, !noalias !807
  %.sroa.2.0..sroa_idx.i.i.i153 = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i153, align 8, !noalias !807
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11B_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.hx, align 8, !tbaa !62, !noalias !807
  store ptr %i.hx, ptr %15, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hz = load ptr, ptr %15, align 8, !tbaa !234  ; 3 uses
  %.not.i154 = icmp eq ptr %i.hz, null
  br i1 %.not.i154, label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155: ; preds = %bb.ap
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !62
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(24) %i.hz) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.id, align 4, !tbaa !223
  br label %bb.fh

bb.aq:                                            ; preds = %bb.ao
  %i.ie = landingpad { ptr, i32 }
          cleanup
  %i.if = load ptr, ptr %15, align 8, !tbaa !234  ; 3 uses
  %.not.i158 = icmp eq ptr %i.if, null
  br i1 %.not.i158, label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159: ; preds = %bb.aq
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !62
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(24) %i.if) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163

_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.fi

bb.ar:                                            ; preds = %.loopexit
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.ik = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !808 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store i64 %2, ptr %i.il, align 8, !tbaa !70, !noalias !808
  %.sroa.2.0..sroa_idx.i.i.i167 = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i167, align 8, !noalias !808
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11c_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.ik, align 8, !tbaa !62, !noalias !808
  store ptr %i.ik, ptr %16, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ij, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.im = load ptr, ptr %16, align 8, !tbaa !234  ; 3 uses
  %.not.i168 = icmp eq ptr %i.im, null
  br i1 %.not.i168, label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169: ; preds = %bb.as
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !62
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(24) %i.im) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.iq, align 4, !tbaa !223
  br label %bb.fh

bb.at:                                            ; preds = %bb.ar
  %i.ir = landingpad { ptr, i32 }
          cleanup
  %i.is = load ptr, ptr %16, align 8, !tbaa !234  ; 3 uses
  %.not.i172 = icmp eq ptr %i.is, null
  br i1 %.not.i172, label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173: ; preds = %bb.at
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !62
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(24) %i.is) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177

_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.fi

bb.au:                                            ; preds = %.loopexit
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  %i.ix = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !809 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i64 %2, ptr %i.iy, align 8, !tbaa !70, !noalias !809
  %.sroa.2.0..sroa_idx.i.i.i181 = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i181, align 8, !noalias !809
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11C_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.ix, align 8, !tbaa !62, !noalias !809
  store ptr %i.ix, ptr %17, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.iw, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.iz = load ptr, ptr %17, align 8, !tbaa !234  ; 3 uses
  %.not.i182 = icmp eq ptr %i.iz, null
  br i1 %.not.i182, label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183: ; preds = %bb.av
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !62
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(24) %i.iz) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.jd, align 4, !tbaa !223
  br label %bb.fh

bb.aw:                                            ; preds = %bb.au
  %i.je = landingpad { ptr, i32 }
          cleanup
  %i.jf = load ptr, ptr %17, align 8, !tbaa !234  ; 3 uses
  %.not.i186 = icmp eq ptr %i.jf, null
  br i1 %.not.i186, label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187: ; preds = %bb.aw
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !62
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(24) %i.jf) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191

_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.fi

bb.ax:                                            ; preds = %.loopexit
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  %i.jk = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !810 ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store i64 %2, ptr %i.jl, align 8, !tbaa !70, !noalias !810
  %.sroa.2.0..sroa_idx.i.i.i195 = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i195, align 8, !noalias !810
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11Y_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.jk, align 8, !tbaa !62, !noalias !810
  store ptr %i.jk, ptr %18, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jm = load ptr, ptr %18, align 8, !tbaa !234  ; 3 uses
  %.not.i196 = icmp eq ptr %i.jm, null
  br i1 %.not.i196, label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197: ; preds = %bb.ay
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !62
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr noundef nonnull align 8 dereferenceable(24) %i.jm) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.jq, align 4, !tbaa !223
  br label %bb.fh

bb.az:                                            ; preds = %bb.ax
  %i.jr = landingpad { ptr, i32 }
          cleanup
  %i.js = load ptr, ptr %18, align 8, !tbaa !234  ; 3 uses
  %.not.i200 = icmp eq ptr %i.js, null
  br i1 %.not.i200, label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201: ; preds = %bb.az
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !62
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(24) %i.js) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205

_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  br label %bb.fi

bb.ba:                                            ; preds = %.loopexit, %.loopexit
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.jx = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !811 ; 7 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store i64 %2, ptr %i.jy, align 8, !tbaa !70, !noalias !811
  %.sroa.2.0..sroa_idx.i.i.i209 = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i209, align 8, !noalias !811
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11D_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.jx, align 8, !tbaa !62, !noalias !811
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !232 ; 6 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !236
  %.not.i.i210 = icmp eq ptr %i.ka, %i.kc
  br i1 %.not.i.i210, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kd = ptrtoint ptr %i.jx to i64
  store i64 %i.kd, ptr %i.ka, align 8, !tbaa !234
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store ptr %i.ke, ptr %i.jz, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.bc:                                            ; preds = %bb.ba
  %i.kf = load ptr, ptr %i.jw, align 8, !tbaa !231 ; 10 uses
  %i.kg = ptrtoint ptr %i.ka to i64               ; 3 uses
  %i.kh = ptrtoint ptr %i.kf to i64               ; 3 uses
  %i.ki = sub i64 %i.kg, %i.kh                    ; 4 uses
  %i.kj = icmp eq i64 %i.ki, 9223372036854775800
  br i1 %i.kj, label %bb.bd, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc223 unwind label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235

.noexc223:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211: ; preds = %bb.bc
  %i.kk = ashr exact i64 %i.ki, 3
  %mul2.i.i.i210 = ashr exact i64 %i.ki, 2
  %57 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i210, i64 1) ; 2 uses
  %i.kl = icmp ult i64 %57, %i.kk
  %i.km = tail call i64 @llvm.umin.i64(i64 %57, i64 1152921504606846975)
  %i.kn = select i1 %i.kl, i64 1152921504606846975, i64 %i.km ; 2 uses
  %i.ko = shl nuw nsw i64 %i.kn, 3
  %i.kp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ko) #45
          to label %.noexc224 unwind label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235 ; 10 uses

.noexc224:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.ki
  %i.kr = ptrtoint ptr %i.jx to i64
  store i64 %i.kr, ptr %i.kq, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i214 = icmp eq ptr %i.kf, %i.ka
  br i1 %.not10.i.i.i.i.i.i.i214, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215.preheader

.lr.ph.i.i.i.i.i.i.i215.preheader:                ; preds = %.noexc224
  %i.ks = add i64 %i.kg, -8
  %i.kt = sub i64 %i.ks, %i.kh                    ; 2 uses
  %i.ku = lshr i64 %i.kt, 3
  %i.kv = add nuw nsw i64 %i.ku, 1                ; 2 uses
  %min.iters.check989 = icmp ult i64 %i.kt, 136
  br i1 %min.iters.check989, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025, label %vector.memcheck982

vector.memcheck982:                               ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader
  %i.kw = add i64 %i.kg, -8
  %i.kx = sub i64 %i.kw, %i.kh
  %i.ky = and i64 %i.kx, -8
  %i.kz = add i64 %i.ky, 8                        ; 2 uses
  %scevgep983 = getelementptr i8, ptr %i.kp, i64 %i.kz
  %scevgep984 = getelementptr i8, ptr %i.kf, i64 %i.kz
  %bound0985 = icmp ult ptr %i.kp, %scevgep984
  %bound1986 = icmp ult ptr %i.kf, %scevgep983
  %found.conflict987 = and i1 %bound0985, %bound1986
  br i1 %found.conflict987, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025, label %vector.ph990

vector.ph990:                                     ; preds = %vector.memcheck982
  %n.vec991 = and i64 %i.kv, 4611686018427387900  ; 3 uses
  %i.la = shl i64 %n.vec991, 3                    ; 2 uses
  %i.lb = getelementptr i8, ptr %i.kp, i64 %i.la  ; 2 uses
  %i.lc = getelementptr i8, ptr %i.kf, i64 %i.la
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph990
  %index993 = phi i64 [ 0, %vector.ph990 ], [ %index.next998, %vector.body992 ] ; 2 uses
  %i.ld = shl i64 %index993, 3                    ; 2 uses
  %next.gep994 = getelementptr i8, ptr %i.kp, i64 %i.ld ; 2 uses
  %next.gep995 = getelementptr i8, ptr %i.kf, i64 %i.ld ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.le = getelementptr i8, ptr %next.gep995, i64 16
  %wide.load996 = load <2 x i64>, ptr %next.gep995, align 8, !tbaa !234, !alias.scope !814, !noalias !812
  %wide.load997 = load <2 x i64>, ptr %i.le, align 8, !tbaa !234, !alias.scope !814, !noalias !812
  %i.lf = getelementptr i8, ptr %next.gep994, i64 16
  store <2 x i64> %wide.load996, ptr %next.gep994, align 8, !tbaa !234, !alias.scope !815, !noalias !814
  store <2 x i64> %wide.load997, ptr %i.lf, align 8, !tbaa !234, !alias.scope !815, !noalias !814
  %i.lg = getelementptr i8, ptr %next.gep995, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep995, align 8, !tbaa !234, !alias.scope !814, !noalias !812
  store <2 x ptr> splat (ptr null), ptr %i.lg, align 8, !tbaa !234, !alias.scope !814, !noalias !812
  %index.next998 = add nuw i64 %index993, 4       ; 2 uses
  %i.lh = icmp eq i64 %index.next998, %n.vec991
  br i1 %i.lh, label %middle.block999, label %vector.body992, !llvm.loop !727

middle.block999:                                  ; preds = %vector.body992
  %cmp.n1000 = icmp eq i64 %i.kv, %n.vec991
  br i1 %cmp.n1000, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025

.lr.ph.i.i.i.i.i.i.i215.preheader1025:            ; preds = %vector.memcheck982, %.lr.ph.i.i.i.i.i.i.i215.preheader, %middle.block999
  %.012.i.i.i.i.i.i.i216.ph = phi ptr [ %i.kp, %vector.memcheck982 ], [ %i.kp, %.lr.ph.i.i.i.i.i.i.i215.preheader ], [ %i.lb, %middle.block999 ]
  %.0911.i.i.i.i.i.i.i217.ph = phi ptr [ %i.kf, %vector.memcheck982 ], [ %i.kf, %.lr.ph.i.i.i.i.i.i.i215.preheader ], [ %i.lc, %middle.block999 ]
  br label %.lr.ph.i.i.i.i.i.i.i215

.lr.ph.i.i.i.i.i.i.i215:                          ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader1025, %.lr.ph.i.i.i.i.i.i.i215
  %.012.i.i.i.i.i.i.i216 = phi ptr [ %i.lk, %.lr.ph.i.i.i.i.i.i.i215 ], [ %.012.i.i.i.i.i.i.i216.ph, %.lr.ph.i.i.i.i.i.i.i215.preheader1025 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i217 = phi ptr [ %i.lj, %.lr.ph.i.i.i.i.i.i.i215 ], [ %.0911.i.i.i.i.i.i.i217.ph, %.lr.ph.i.i.i.i.i.i.i215.preheader1025 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.li = load i64, ptr %.0911.i.i.i.i.i.i.i217, align 8, !tbaa !234, !alias.scope !813, !noalias !812
  store i64 %i.li, ptr %.012.i.i.i.i.i.i.i216, align 8, !tbaa !234, !alias.scope !812, !noalias !813
  store ptr null, ptr %.0911.i.i.i.i.i.i.i217, align 8, !tbaa !234, !alias.scope !813, !noalias !812
  %i.lj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i217, i64 8 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i216, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i218 = icmp eq ptr %i.lj, %i.ka
  br i1 %.not.i.i.i.i.i.i.i218, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215, !llvm.loop !728

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219: ; preds = %.lr.ph.i.i.i.i.i.i.i215, %middle.block999, %.noexc224
  %.0.lcssa.i.i.i.i.i.i.i220 = phi ptr [ %i.kp, %.noexc224 ], [ %i.lb, %middle.block999 ], [ %i.lk, %.lr.ph.i.i.i.i.i.i.i215 ]
  %i.ll = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i220, i64 8
  %.not.i23.i.i.i221 = icmp eq ptr %i.kf, null
  br i1 %.not.i23.i.i.i221, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219
  tail call void @_ZdlPv(ptr noundef nonnull %i.kf) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222: ; preds = %bb.be, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219
  store ptr %i.kp, ptr %i.jw, align 8, !tbaa !231
  store ptr %i.ll, ptr %i.jz, align 8, !tbaa !232
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.kn
  store ptr %i.lm, ptr %i.kb, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222, %bb.bb
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ln, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235: ; preds = %bb.bd, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211
  %i.lo = landingpad { ptr, i32 }
          cleanup
  %i.lp = load ptr, ptr %i.jx, align 8, !tbaa !62
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8
  tail call void %i.lr(ptr noundef nonnull align 8 dereferenceable(24) %i.jx) #37, !inline_history !19
  br label %bb.fi

bb.bf:                                            ; preds = %.loopexit
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  %i.lt = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !816 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store i64 %2, ptr %i.lu, align 8, !tbaa !70, !noalias !816
  %.sroa.2.0..sroa_idx.i.i.i239 = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i239, align 8, !noalias !816
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11m_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.lt, align 8, !tbaa !62, !noalias !816
  store ptr %i.lt, ptr %19, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.lv = load ptr, ptr %19, align 8, !tbaa !234  ; 3 uses
  %.not.i240 = icmp eq ptr %i.lv, null
  br i1 %.not.i240, label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241: ; preds = %bb.bg
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !62
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(24) %i.lv) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.lz, align 4, !tbaa !223
  br label %bb.fh

bb.bh:                                            ; preds = %bb.bf
  %i.ma = landingpad { ptr, i32 }
          cleanup
  %i.mb = load ptr, ptr %19, align 8, !tbaa !234  ; 3 uses
  %.not.i244 = icmp eq ptr %i.mb, null
  br i1 %.not.i244, label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245: ; preds = %bb.bh
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !62
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(24) %i.mb) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249

_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  br label %bb.fi

bb.bi:                                            ; preds = %.loopexit
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  %i.mg = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !817 ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store i64 %2, ptr %i.mh, align 8, !tbaa !70, !noalias !817
  %.sroa.2.0..sroa_idx.i.i.i253 = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i253, align 8, !noalias !817
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11d_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.mg, align 8, !tbaa !62, !noalias !817
  store ptr %i.mg, ptr %20, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.mf, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.mi = load ptr, ptr %20, align 8, !tbaa !234  ; 3 uses
  %.not.i254 = icmp eq ptr %i.mi, null
  br i1 %.not.i254, label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255: ; preds = %bb.bj
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !62
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8
  call void %i.ml(ptr noundef nonnull align 8 dereferenceable(24) %i.mi) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.mm, align 4, !tbaa !223
  br label %bb.fh

bb.bk:                                            ; preds = %bb.bi
  %i.mn = landingpad { ptr, i32 }
          cleanup
  %i.mo = load ptr, ptr %20, align 8, !tbaa !234  ; 3 uses
  %.not.i258 = icmp eq ptr %i.mo, null
  br i1 %.not.i258, label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259: ; preds = %bb.bk
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !62
end_hunk_5
begin_hunk_6_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details18null_scoped_padderEEEvcNS2_12padding_infoE:bb.a
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef nonnull align 8 dereferenceable(24) %i.qf) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i367, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  br label %bb.fh

bb.ci:                                            ; preds = %bb.cg
  %i.qj = landingpad { ptr, i32 }
          cleanup
  %i.qk = load ptr, ptr %28, align 8, !tbaa !234  ; 3 uses
  %.not.i370 = icmp eq ptr %i.qk, null
  br i1 %.not.i370, label %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i371

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i371: ; preds = %bb.ci
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !62
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8
  call void %i.qn(ptr noundef nonnull align 8 dereferenceable(24) %i.qk) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375

_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i371, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  br label %bb.fi

bb.cj:                                            ; preds = %.loopexit
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #37
  %i.qp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !826 ; 4 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  store i64 %2, ptr %i.qq, align 8, !tbaa !70, !noalias !826
  %.sroa.2.0..sroa_idx.i.i.i379 = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i379, align 8, !noalias !826
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11p_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.qp, align 8, !tbaa !62, !noalias !826
  store ptr %i.qp, ptr %29, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.qo, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.qr = load ptr, ptr %29, align 8, !tbaa !234  ; 3 uses
  %.not.i380 = icmp eq ptr %i.qr, null
  br i1 %.not.i380, label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381: ; preds = %bb.ck
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !62
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qu = load ptr, ptr %i.qt, align 8
  call void %i.qu(ptr noundef nonnull align 8 dereferenceable(24) %i.qr) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.qv, align 4, !tbaa !223
  br label %bb.fh

bb.cl:                                            ; preds = %bb.cj
  %i.qw = landingpad { ptr, i32 }
          cleanup
  %i.qx = load ptr, ptr %29, align 8, !tbaa !234  ; 3 uses
  %.not.i384 = icmp eq ptr %i.qx, null
  br i1 %.not.i384, label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385: ; preds = %bb.cl
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !62
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8
  call void %i.ra(ptr noundef nonnull align 8 dereferenceable(24) %i.qx) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389

_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  br label %bb.fi

bb.cm:                                            ; preds = %.loopexit
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37
  %i.rc = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !827 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  store i64 %2, ptr %i.rd, align 8, !tbaa !70, !noalias !827
  %.sroa.2.0..sroa_idx.i.i.i393 = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i393, align 8, !noalias !827
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11r_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.rc, align 8, !tbaa !62, !noalias !827
  store ptr %i.rc, ptr %30, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.rb, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.re = load ptr, ptr %30, align 8, !tbaa !234  ; 3 uses
  %.not.i394 = icmp eq ptr %i.re, null
  br i1 %.not.i394, label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395: ; preds = %bb.cn
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !62
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rh = load ptr, ptr %i.rg, align 8
  call void %i.rh(ptr noundef nonnull align 8 dereferenceable(24) %i.re) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ri, align 4, !tbaa !223
  br label %bb.fh

bb.co:                                            ; preds = %bb.cm
  %i.rj = landingpad { ptr, i32 }
          cleanup
  %i.rk = load ptr, ptr %30, align 8, !tbaa !234  ; 3 uses
  %.not.i398 = icmp eq ptr %i.rk, null
  br i1 %.not.i398, label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399: ; preds = %bb.co
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !62
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8
  call void %i.rn(ptr noundef nonnull align 8 dereferenceable(24) %i.rk) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403

_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  br label %bb.fi

bb.cp:                                            ; preds = %.loopexit
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37
  %i.rp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !828 ; 4 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  store i64 %2, ptr %i.rq, align 8, !tbaa !70, !noalias !828
  %.sroa.2.0..sroa_idx.i.i.i407 = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i407, align 8, !noalias !828
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11R_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.rp, align 8, !tbaa !62, !noalias !828
  store ptr %i.rp, ptr %31, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ro, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.rr = load ptr, ptr %31, align 8, !tbaa !234  ; 3 uses
  %.not.i408 = icmp eq ptr %i.rr, null
  br i1 %.not.i408, label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409: ; preds = %bb.cq
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !62
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.ru = load ptr, ptr %i.rt, align 8
  call void %i.ru(ptr noundef nonnull align 8 dereferenceable(24) %i.rr) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.rv, align 4, !tbaa !223
  br label %bb.fh

bb.cr:                                            ; preds = %bb.cp
  %i.rw = landingpad { ptr, i32 }
          cleanup
  %i.rx = load ptr, ptr %31, align 8, !tbaa !234  ; 3 uses
  %.not.i412 = icmp eq ptr %i.rx, null
  br i1 %.not.i412, label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413: ; preds = %bb.cr
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !62
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8
  call void %i.sa(ptr noundef nonnull align 8 dereferenceable(24) %i.rx) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417

_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  br label %bb.fi

bb.cs:                                            ; preds = %.loopexit, %.loopexit
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.sc = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !829 ; 7 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  store i64 %2, ptr %i.sd, align 8, !tbaa !70, !noalias !829
  %.sroa.2.0..sroa_idx.i.i.i421 = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i421, align 8, !noalias !829
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11T_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.sc, align 8, !tbaa !62, !noalias !829
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !232 ; 6 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !236
  %.not.i.i422 = icmp eq ptr %i.sf, %i.sh
  br i1 %.not.i.i422, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.si = ptrtoint ptr %i.sc to i64
  store i64 %i.si, ptr %i.sf, align 8, !tbaa !234
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  store ptr %i.sj, ptr %i.se, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.cu:                                            ; preds = %bb.cs
  %i.sk = load ptr, ptr %i.sb, align 8, !tbaa !231 ; 10 uses
  %i.sl = ptrtoint ptr %i.sf to i64               ; 3 uses
  %i.sm = ptrtoint ptr %i.sk to i64               ; 3 uses
  %i.sn = sub i64 %i.sl, %i.sm                    ; 4 uses
  %i.so = icmp eq i64 %i.sn, 9223372036854775800
  br i1 %i.so, label %bb.cv, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc435 unwind label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447

.noexc435:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423: ; preds = %bb.cu
  %i.sp = ashr exact i64 %i.sn, 3
  %mul2.i.i.i421 = ashr exact i64 %i.sn, 2
  %58 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i421, i64 1) ; 2 uses
  %i.sq = icmp ult i64 %58, %i.sp
  %i.sr = tail call i64 @llvm.umin.i64(i64 %58, i64 1152921504606846975)
  %i.ss = select i1 %i.sq, i64 1152921504606846975, i64 %i.sr ; 2 uses
  %i.st = shl nuw nsw i64 %i.ss, 3
  %i.su = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.st) #45
          to label %.noexc436 unwind label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447 ; 10 uses

.noexc436:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 %i.sn
  %i.sw = ptrtoint ptr %i.sc to i64
  store i64 %i.sw, ptr %i.sv, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i426 = icmp eq ptr %i.sk, %i.sf
  br i1 %.not10.i.i.i.i.i.i.i426, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427.preheader

.lr.ph.i.i.i.i.i.i.i427.preheader:                ; preds = %.noexc436
  %i.sx = add i64 %i.sl, -8
  %i.sy = sub i64 %i.sx, %i.sm                    ; 2 uses
  %i.sz = lshr i64 %i.sy, 3
  %i.ta = add nuw nsw i64 %i.sz, 1                ; 2 uses
  %min.iters.check968 = icmp ult i64 %i.sy, 136
  br i1 %min.iters.check968, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027, label %vector.memcheck961

vector.memcheck961:                               ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader
  %i.tb = add i64 %i.sl, -8
  %i.tc = sub i64 %i.tb, %i.sm
  %i.td = and i64 %i.tc, -8
  %i.te = add i64 %i.td, 8                        ; 2 uses
  %scevgep962 = getelementptr i8, ptr %i.su, i64 %i.te
  %scevgep963 = getelementptr i8, ptr %i.sk, i64 %i.te
  %bound0964 = icmp ult ptr %i.su, %scevgep963
  %bound1965 = icmp ult ptr %i.sk, %scevgep962
  %found.conflict966 = and i1 %bound0964, %bound1965
  br i1 %found.conflict966, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027, label %vector.ph969

vector.ph969:                                     ; preds = %vector.memcheck961
  %n.vec970 = and i64 %i.ta, 4611686018427387900  ; 3 uses
  %i.tf = shl i64 %n.vec970, 3                    ; 2 uses
  %i.tg = getelementptr i8, ptr %i.su, i64 %i.tf  ; 2 uses
  %i.th = getelementptr i8, ptr %i.sk, i64 %i.tf
  br label %vector.body971

vector.body971:                                   ; preds = %vector.body971, %vector.ph969
  %index972 = phi i64 [ 0, %vector.ph969 ], [ %index.next977, %vector.body971 ] ; 2 uses
  %i.ti = shl i64 %index972, 3                    ; 2 uses
  %next.gep973 = getelementptr i8, ptr %i.su, i64 %i.ti ; 2 uses
  %next.gep974 = getelementptr i8, ptr %i.sk, i64 %i.ti ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.tj = getelementptr i8, ptr %next.gep974, i64 16
  %wide.load975 = load <2 x i64>, ptr %next.gep974, align 8, !tbaa !234, !alias.scope !832, !noalias !830
  %wide.load976 = load <2 x i64>, ptr %i.tj, align 8, !tbaa !234, !alias.scope !832, !noalias !830
  %i.tk = getelementptr i8, ptr %next.gep973, i64 16
  store <2 x i64> %wide.load975, ptr %next.gep973, align 8, !tbaa !234, !alias.scope !833, !noalias !832
  store <2 x i64> %wide.load976, ptr %i.tk, align 8, !tbaa !234, !alias.scope !833, !noalias !832
  %i.tl = getelementptr i8, ptr %next.gep974, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep974, align 8, !tbaa !234, !alias.scope !832, !noalias !830
  store <2 x ptr> splat (ptr null), ptr %i.tl, align 8, !tbaa !234, !alias.scope !832, !noalias !830
  %index.next977 = add nuw i64 %index972, 4       ; 2 uses
  %i.tm = icmp eq i64 %index.next977, %n.vec970
  br i1 %i.tm, label %middle.block978, label %vector.body971, !llvm.loop !763

middle.block978:                                  ; preds = %vector.body971
  %cmp.n979 = icmp eq i64 %i.ta, %n.vec970
  br i1 %cmp.n979, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027

.lr.ph.i.i.i.i.i.i.i427.preheader1027:            ; preds = %vector.memcheck961, %.lr.ph.i.i.i.i.i.i.i427.preheader, %middle.block978
  %.012.i.i.i.i.i.i.i428.ph = phi ptr [ %i.su, %vector.memcheck961 ], [ %i.su, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.tg, %middle.block978 ]
  %.0911.i.i.i.i.i.i.i429.ph = phi ptr [ %i.sk, %vector.memcheck961 ], [ %i.sk, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.th, %middle.block978 ]
  br label %.lr.ph.i.i.i.i.i.i.i427

.lr.ph.i.i.i.i.i.i.i427:                          ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader1027, %.lr.ph.i.i.i.i.i.i.i427
  %.012.i.i.i.i.i.i.i428 = phi ptr [ %i.tp, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.012.i.i.i.i.i.i.i428.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader1027 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i429 = phi ptr [ %i.to, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.0911.i.i.i.i.i.i.i429.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader1027 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.tn = load i64, ptr %.0911.i.i.i.i.i.i.i429, align 8, !tbaa !234, !alias.scope !831, !noalias !830
  store i64 %i.tn, ptr %.012.i.i.i.i.i.i.i428, align 8, !tbaa !234, !alias.scope !830, !noalias !831
  store ptr null, ptr %.0911.i.i.i.i.i.i.i429, align 8, !tbaa !234, !alias.scope !831, !noalias !830
  %i.to = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429, i64 8 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i430 = icmp eq ptr %i.to, %i.sf
  br i1 %.not.i.i.i.i.i.i.i430, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427, !llvm.loop !764

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431: ; preds = %.lr.ph.i.i.i.i.i.i.i427, %middle.block978, %.noexc436
  %.0.lcssa.i.i.i.i.i.i.i432 = phi ptr [ %i.su, %.noexc436 ], [ %i.tg, %middle.block978 ], [ %i.tp, %.lr.ph.i.i.i.i.i.i.i427 ]
  %i.tq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i432, i64 8
  %.not.i23.i.i.i433 = icmp eq ptr %i.sk, null
  br i1 %.not.i23.i.i.i433, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431
  tail call void @_ZdlPv(ptr noundef nonnull %i.sk) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434: ; preds = %bb.cw, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431
  store ptr %i.su, ptr %i.sb, align 8, !tbaa !231
  store ptr %i.tq, ptr %i.se, align 8, !tbaa !232
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %i.ss
  store ptr %i.tr, ptr %i.sg, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434, %bb.ct
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ts, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447: ; preds = %bb.cv, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.tt = landingpad { ptr, i32 }
          cleanup
  %i.tu = load ptr, ptr %i.sc, align 8, !tbaa !62
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.tw = load ptr, ptr %i.tv, align 8
  tail call void %i.tw(ptr noundef nonnull align 8 dereferenceable(24) %i.sc) #37, !inline_history !19
  br label %bb.fi

bb.cx:                                            ; preds = %.loopexit
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #37
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.tz = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #45, !noalias !834 ; 7 uses
  %i.ua = load i32, ptr %i.ty, align 8, !tbaa !193, !noalias !834
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store i64 %2, ptr %i.ub, align 8, !tbaa !70, !noalias !834
  %.sroa.2.0..sroa_idx.i.i.i451 = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i451, align 8, !noalias !834
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11z_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.tz, align 8, !tbaa !62, !noalias !834
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  store i32 %i.ua, ptr %i.uc, align 8, !tbaa !267, !noalias !834
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 32
  store i64 0, ptr %i.ud, align 8, !tbaa !70, !noalias !834
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tz, i64 40
  store i32 0, ptr %i.ue, align 8, !tbaa !268, !noalias !834
  store ptr %i.tz, ptr %32, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.tx, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.uf = load ptr, ptr %32, align 8, !tbaa !234  ; 3 uses
  %.not.i452.a = icmp eq ptr %i.uf, null
  br i1 %.not.i452.a, label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453.a

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453.a: ; preds = %bb.cy
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !62
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8
  call void %i.ui(ptr noundef nonnull align 8 dereferenceable(24) %i.uf) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453.a, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.uj, align 4, !tbaa !223
  br label %bb.fh

bb.cz:                                            ; preds = %bb.cx
  %i.uk = landingpad { ptr, i32 }
          cleanup
  %i.ul = load ptr, ptr %32, align 8, !tbaa !234  ; 3 uses
  %.not.i456 = icmp eq ptr %i.ul, null
  br i1 %.not.i456, label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457: ; preds = %bb.cz
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !62
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uo = load ptr, ptr %i.un, align 8
  call void %i.uo(ptr noundef nonnull align 8 dereferenceable(24) %i.ul) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461

_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  br label %bb.fi

bb.da:                                            ; preds = %.loopexit
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #37
  %i.uq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !835 ; 4 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  store i64 %2, ptr %i.ur, align 8, !tbaa !70, !noalias !835
  %.sroa.2.0..sroa_idx.i.i.i465 = getelementptr inbounds nuw i8, ptr %i.uq, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i465, align 8, !noalias !835
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details13pid_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.uq, align 8, !tbaa !62, !noalias !835
  store ptr %i.uq, ptr %33, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.up, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.us = load ptr, ptr %33, align 8, !tbaa !234  ; 3 uses
  %.not.i466.a = icmp eq ptr %i.us, null
  br i1 %.not.i466.a, label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467.a

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467.a: ; preds = %bb.db
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !62
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = load ptr, ptr %i.uu, align 8
  call void %i.uv(ptr noundef nonnull align 8 dereferenceable(24) %i.us) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467.a, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  br label %bb.fh

bb.dc:                                            ; preds = %bb.da
  %i.uw = landingpad { ptr, i32 }
          cleanup
end_hunk_6
