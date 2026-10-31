Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/spdlog/original/spdlog?download=true
inline.NumInlined: 6885
inline.NumDeleted: 3933
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_ZN6spdlog17pattern_formatterC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17pattern_time_typeES6_St13unordered_mapIcSt10unique_ptrINS_21custom_flag_formatterESt14default_deleteISA_EESt4hashIcESt8equal_toIcESaISt4pairIKcSD_EEE:bb.a
  %i.p = load ptr, ptr %3, align 8, !tbaa !60     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
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
  tail call void @_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ae) #36
  tail call void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ad) #36
  %i.bf = load ptr, ptr %i.n, align 8, !tbaa !60  ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.o
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef %i.bf) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.b
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.bh) #43
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr null, ptr %2, align 8, !tbaa !447
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
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #36, !inline_history !429
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
  %.not96 = icmp eq ptr %i.o, %i.e
  br i1 %.not96, label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53, label %.lr.ph98

.lr.ph98:                                         ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE5clearEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph98, %bb.w
  %i.q = phi ptr [ null, %.lr.ph98 ], [ %i.dj, %bb.w ] ; 2 uses
  %i.r = phi ptr [ null, %.lr.ph98 ], [ %i.dk, %bb.w ] ; 6 uses
  %i.s = phi ptr [ null, %.lr.ph98 ], [ %i.dl, %bb.w ] ; 3 uses
  %.sroa.064.097 = phi ptr [ %i.o, %.lr.ph98 ], [ %i.dm, %bb.w ] ; 5 uses
  %i.t = load i8, ptr %.sroa.064.097, align 1, !tbaa !64 ; 2 uses
  %i.u = icmp eq i8 %i.t, 37
  br i1 %i.u, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %.not77 = icmp eq ptr %i.r, null
  br i1 %.not77, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, label %bb.d

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
  %i.aa = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #42
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ae = ashr exact i64 %i.ac, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975)
  %i.ai = select i1 %i.ag, i64 1152921504606846975, i64 %i.ah ; 3 uses
  %.not.i.i.i.i17 = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i17)
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #44
          to label %.noexc18 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %i.am = ptrtoint ptr %i.r to i64
  store i64 %i.am, ptr %i.al, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.v
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc18
  %i.an = add i64 %i.aa, -8
  %i.ao = sub i64 %i.an, %i.ab                    ; 3 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader184, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ar = and i64 %i.ao, -8
  %3 = add i64 %i.ar, 8                           ; 2 uses
  %scevgep163 = getelementptr i8, ptr %i.ak, i64 %3
  %scevgep164 = getelementptr i8, ptr %i.z, i64 %3
  %bound0 = icmp ult ptr %i.ak, %scevgep164
  %bound1 = icmp ult ptr %i.z, %scevgep163
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader184, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ak, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.z, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.av ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.z, i64 %i.av ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.aw = getelementptr i8, ptr %next.gep165, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep165, align 8, !tbaa !234, !alias.scope !450
  %wide.load166 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !234, !alias.scope !450
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !234, !alias.scope !451, !noalias !452
  store <2 x i64> %wide.load166, ptr %i.ax, align 8, !tbaa !234, !alias.scope !451, !noalias !452
  %i.ay = getelementptr i8, ptr %next.gep165, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep165, align 8, !tbaa !234, !alias.scope !450
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !234, !alias.scope !450
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader184

.lr.ph.i.i.i.i.i.i.i.preheader184:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader184, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader184 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader184 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.ba = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !449
  store i64 %i.ba, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !448
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !449
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !437

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc18
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.noexc18 ], [ %i.at, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #43
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !231
  store ptr %i.bd, ptr %i.h, align 8, !tbaa !232
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.be, ptr %i.p, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.g
  %lpad.loopexit.split-lp185 = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #36, !inline_history !19
  br label %bb.ac

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.e, %bb.c
  %i.bi = phi ptr [ null, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ null, %bb.e ], [ %i.q, %bb.c ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.064.097, i64 1 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, %i.e
  br i1 %i.bk, label %bb.o, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !64
  switch i8 %i.bl, label %bb.k [
    i8 45, label %.sink.split.i
    i8 61, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %.017.ph.i = phi i64 [ 2, %bb.j ], [ 1, %bb.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.064.097, i64 2
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.i
  %.sroa.064.2 = phi ptr [ %i.bj, %bb.i ], [ %i.bm, %.sink.split.i ] ; 9 uses
  %.017.i = phi i64 [ 0, %bb.i ], [ %.017.ph.i, %.sink.split.i ] ; 5 uses
  %.sroa.064.2108 = ptrtoaddr ptr %.sroa.064.2 to i64
  %i.bn = icmp eq ptr %.sroa.064.2, %i.e
  br i1 %i.bn, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = load i8, ptr %.sroa.064.2, align 1, !tbaa !64 ; 2 uses
  %i.bp = add i8 %i.bo, -48
  %isdigit.i = icmp ult i8 %i.bp, 10
  br i1 %isdigit.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bq = zext nneg i8 %i.bo to i64
  %i.br = add nsw i64 %i.bq, -48                  ; 3 uses
  %storemerge36.i = getelementptr inbounds nuw i8, ptr %.sroa.064.2, i64 1 ; 5 uses
  %.not37.i = icmp eq ptr %storemerge36.i, %i.e
  br i1 %.not37.i, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.bs = load i8, ptr %storemerge36.i, align 1, !tbaa !64 ; 3 uses
  %i.bt = add i8 %i.bs, -48
  %isdigit18.i90 = icmp ult i8 %i.bt, 10
  br i1 %isdigit18.i90, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %i.bu = getelementptr i8, ptr %.sroa.064.2, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.bu, i64 %i.b
  %i.bv = sub i64 0, %.sroa.064.2108
  %scevgep109 = getelementptr i8, ptr %scevgep, i64 %i.bv ; 2 uses
  %i.bw = zext nneg i8 %i.bs to i64
  %i.bx = mul nuw nsw i64 %i.br, 10
  %i.by = add nsw i64 %i.bx, -48
  %i.bz = add nsw i64 %i.by, %i.bw                ; 2 uses
  %storemerge.i157 = getelementptr inbounds nuw i8, ptr %.sroa.064.2, i64 2 ; 2 uses
  %.not.i22158 = icmp eq ptr %storemerge.i157, %i.e
  br i1 %.not.i22158, label %.critedge.i, label %.lr.ph.i.lr.ph, !llvm.loop !20

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  br label %.lr.ph.i, !llvm.loop !20

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %storemerge.i160 = phi ptr [ %storemerge.i157, %.lr.ph.i.lr.ph ], [ %storemerge.i, %.lr.ph ] ; 4 uses
  %i.ca = phi i64 [ %i.bz, %.lr.ph.i.lr.ph ], [ %i.cg, %.lr.ph ] ; 2 uses
  %.sroa.064.391159 = phi ptr [ %storemerge36.i, %.lr.ph.i.lr.ph ], [ %storemerge.i160, %.lr.ph ]
  %i.cb = load i8, ptr %storemerge.i160, align 1, !tbaa !64 ; 3 uses
  %i.cc = add i8 %i.cb, -48
  %isdigit18.i = icmp ult i8 %i.cc, 10
  br i1 %isdigit18.i, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !20

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.cd = zext nneg i8 %i.cb to i64
  %i.ce = mul i64 %i.ca, 10
  %i.cf = add i64 %i.ce, -48
  %i.cg = add i64 %i.cf, %i.cd                    ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge.i160, i64 1 ; 2 uses
  %.not.i22 = icmp eq ptr %storemerge.i, %i.e
  br i1 %.not.i22, label %.lr.ph..critedge.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !20

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.sroa.064.3.lcssa = phi ptr [ %storemerge36.i, %.lr.ph.i.preheader ], [ %storemerge.i160, %.lr.ph.i ]
  %.03139.i.lcssa = phi i64 [ %i.br, %.lr.ph.i.preheader ], [ %i.ca, %.lr.ph.i ] ; 2 uses
  %.pn38.i.lcssa = phi ptr [ %.sroa.064.2, %.lr.ph.i.preheader ], [ %.sroa.064.391159, %.lr.ph.i ]
  %.lcssa82 = phi i8 [ %i.bs, %.lr.ph.i.preheader ], [ %i.cb, %.lr.ph.i ]
  %i.ch = icmp eq i8 %.lcssa82, 33
  br i1 %i.ch, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ci = getelementptr inbounds nuw i8, ptr %.pn38.i.lcssa, i64 2
  %i.cj = or disjoint i64 %.017.i, 4294967296
  br label %.critedge.i

.lr.ph..critedge.i.loopexit_crit_edge:            ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !20

.critedge.i:                                      ; preds = %.lr.ph.preheader, %.lr.ph..critedge.i.loopexit_crit_edge, %bb.n, %.lr.ph.i._crit_edge, %bb.m
  %.sroa.064.4 = phi ptr [ %storemerge36.i, %bb.m ], [ %.sroa.064.3.lcssa, %.lr.ph.i._crit_edge ], [ %i.ci, %bb.n ], [ %scevgep109, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %scevgep109, %.lr.ph.preheader ]
  %.03134.i = phi i64 [ %i.br, %bb.m ], [ %.03139.i.lcssa, %.lr.ph.i._crit_edge ], [ %.03139.i.lcssa, %bb.n ], [ %i.cg, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %i.bz, %.lr.ph.preheader ]
  %.0.i = phi i64 [ %.017.i, %bb.m ], [ %.017.i, %.lr.ph.i._crit_edge ], [ %i.cj, %bb.n ], [ %.017.i, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %.017.i, %.lr.ph.preheader ]
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.03134.i, i64 64)
  %.sroa.6.13.insert.insert.i = or disjoint i64 %.0.i, 1099511627776
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i, %bb.l, %bb.k, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %.sroa.064.5 = phi ptr [ %i.bj, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.064.2, %bb.k ], [ %.sroa.064.4, %.critedge.i ], [ %.sroa.064.2, %bb.l ] ; 4 uses
  %.sroa.6.0.i = phi i64 [ 0, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ 0, %bb.k ], [ %.sroa.6.13.insert.insert.i, %.critedge.i ], [ 0, %bb.l ] ; 3 uses
  %.sroa.027.0.i = phi i64 [ 0, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ 0, %bb.k ], [ %.sroa.speculated.i, %.critedge.i ], [ 0, %bb.l ] ; 2 uses
  %.not78 = icmp eq ptr %.sroa.064.5, %i.e
  br i1 %.not78, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = and i64 %.sroa.6.0.i, 1099511627776
  %.not80 = icmp eq i64 %i.ck, 0
  %i.cl = load i8, ptr %.sroa.064.5, align 1, !tbaa !64 ; 2 uses
  br i1 %.not80, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 noundef signext %i.cl, i64 %.sroa.027.0.i, i64 %.sroa.6.0.i)
          to label %bb.w unwind label %bb.v

end_hunk_0
begin_hunk_1_@_ZN6spdlog7details11E_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
vec.epilog.iter.check43:                          ; preds = %middle.block40
  %min.epilog.iters.check45 = icmp eq i64 %i.do, 0
  br i1 %min.epilog.iters.check45, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph46, !prof !109

vec.epilog.ph46:                                  ; preds = %vector.main.loop.iter.check31, %vec.epilog.iter.check43
  %vec.epilog.resume.val47 = phi i64 [ %n.vec34, %vec.epilog.iter.check43 ], [ 0, %vector.main.loop.iter.check31 ]
  %n.vec48 = and i64 %.025.i.i.i.i, -4            ; 3 uses
  br label %vec.epilog.vector.body49

vec.epilog.vector.body49:                         ; preds = %vec.epilog.vector.body49, %vec.epilog.ph46
  %index50 = phi i64 [ %vec.epilog.resume.val47, %vec.epilog.ph46 ], [ %index.next52, %vec.epilog.vector.body49 ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %index50
  %wide.load51 = load <4 x i8>, ptr %i.du, align 1, !tbaa !64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index50
  store <4 x i8> %wide.load51, ptr %i.dv, align 1, !tbaa !64
  %index.next52 = add nuw i64 %index50, 4         ; 2 uses
  %i.dw = icmp eq i64 %index.next52, %n.vec48
  br i1 %i.dw, label %vec.epilog.middle.block53, label %vec.epilog.vector.body49, !llvm.loop !1081

vec.epilog.middle.block53:                        ; preds = %vec.epilog.vector.body49
  %cmp.n54 = icmp eq i64 %.025.i.i.i.i, %n.vec48
  br i1 %cmp.n54, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check42, %vector.memcheck28, %vec.epilog.iter.check43, %vec.epilog.middle.block53
  %.030.i.i.i.i.ph = phi i64 [ 0, %iter.check42 ], [ 0, %vector.memcheck28 ], [ %n.vec34, %vec.epilog.iter.check43 ], [ %n.vec48, %vec.epilog.middle.block53 ] ; 3 uses
  %xtraiter58 = and i64 %.025.i.i.i.i, 3          ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.030.i.i.i.i.prol = phi i64 [ %i.ea, %.lr.ph.i.i.i.i.prol ], [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i.prol
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.030.i.i.i.i.prol
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !64
  %i.ea = add nuw i64 %.030.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1082

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.030.i.i.i.i.unr = phi i64 [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ea, %.lr.ph.i.i.i.i.prol ]
  %i.eb = sub i64 %.030.i.i.i.i.ph, %.025.i.i.i.i
  %i.ec = icmp ugt i64 %i.eb, -4
  br i1 %i.ec, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block53, %middle.block40
  %.pre37.i.i.i.i = load i64, ptr %i.ct, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.k
  %i.ed = phi i64 [ %.pre37.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.026.i.i.i.i, %bb.k ]
  %i.ee = add i64 %i.ed, %.025.i.i.i.i            ; 2 uses
  store i64 %i.ee, ptr %i.ct, align 8, !tbaa !69
  %i.ef = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.025.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ef, %i.cs
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.i, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i.i.i.i ], [ %.030.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.030.i.i.i.i
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !64
  %i.ej = add nuw i64 %.030.i.i.i.i, 1            ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !64
  %i.em = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ej
  store i8 %i.el, ptr %i.em, align 1, !tbaa !64
  %i.en = add nuw i64 %.030.i.i.i.i, 2            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.en
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !64
  %i.er = add nuw i64 %.030.i.i.i.i, 3            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.er
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !64
  %i.ev = add nuw i64 %.030.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.ev, %.025.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1083

bb.l:                                             ; preds = %.loopexit
  %i.ew = load ptr, ptr %5, align 8, !tbaa !333, !nonnull !72, !align !294
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.ey = load i8, ptr %i.ex, align 4, !tbaa !265, !range !71, !noundef !72
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.m, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !332, !nonnull !72, !align !294 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !69
  %i.fe = add nsw i64 %i.fd, %i.cm
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.fe, i64 0) ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !68 ; 2 uses
  %i.fh = icmp ugt i64 %spec.store.select.i, %i.fg
  br i1 %i.fh, label %bb.n, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.n:                                             ; preds = %bb.m
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !66
  invoke void %i.fj(ptr noundef nonnull align 8 dereferenceable(283) %i.fb, i64 noundef %spec.store.select.i)
          to label %.noexc2.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !36

.noexc2.i:                                        ; preds = %bb.n
  %.pre.i.i.i = load i64, ptr %i.ff, align 8, !tbaa !68
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %.noexc2.i, %bb.m
  %i.fk = phi i64 [ %i.fg, %bb.m ], [ %.pre.i.i.i, %.noexc2.i ]
  %i.fl = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.fk)
  store i64 %i.fl, ptr %i.fc, align 8, !tbaa !69
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.n
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %lpad.loopexit.split-lp56, 0
  call void @__clang_call_terminate(ptr %i.fm) #41
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.l, %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret void

bb.o:                                             ; preds = %bb.f
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  resume { ptr, i32 } %i.fn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11p_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11p_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph34.i.i:
  %4 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1219basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 8 dereferenceable(283) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i32, ptr %i.b, align 8, !tbaa !308
  %i.c = icmp sgt i32 %.val, 11
  %.str.110..str.111.i = select i1 %i.c, ptr @.str.110, ptr @.str.111 ; 2 uses
  %.str.110..str.111.i10 = ptrtoaddr ptr %.str.110..str.111.i to i64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.d, align 8, !tbaa !69
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.g = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.am, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ 0, %.lr.ph34.i.i ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 4 uses
  %.02732.i.i.ptr = getelementptr inbounds nuw i8, ptr %.str.110..str.111.i, i64 %.02732.i.i.idx ; 7 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !68
  %i.i = sub i64 %i.h, %i.g
  %gepdiff = sub nsw i64 2, %.02732.i.i.idx       ; 4 uses
  %i.j = icmp ult i64 %i.i, %gepdiff
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !66
  %i.l = add i64 %gepdiff, %i.g
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.l)
          to label %.noexc unwind label %bb.k, !inline_history !34

.noexc:                                           ; preds = %bb.b
  %i.m = load i64, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.n = load i64, ptr %i.e, align 8, !tbaa !68
  %i.o = sub i64 %i.n, %i.m
  %i.p = call i64 @llvm.umin.i64(i64 %gepdiff, i64 %i.o)
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  %.026.i.i = phi i64 [ %i.m, %.noexc ], [ %i.g, %bb.a ] ; 3 uses
  %.025.i.i = phi i64 [ %i.p, %.noexc ], [ %gepdiff, %bb.a ] ; 13 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !67     ; 2 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = add i64 %.02732.i.i.idx, %.str.110..str.111.i10
  %i.u = add i64 %.026.i.i, %i.r
  %i.v = sub i64 %i.t, %i.u
  %diff.check = icmp ugt i64 %i.v, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <16 x i8>, ptr %i.x, align 1, !tbaa !64
  %wide.load12 = load <16 x i8>, ptr %i.y, align 1, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <16 x i8> %wide.load, ptr %i.z, align 1, !tbaa !64
  store <16 x i8> %wide.load12, ptr %i.aa, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1084

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index14
  %wide.load15 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 %index14
  store <4 x i8> %wide.load15, ptr %i.ad, align 1, !tbaa !64
  %index.next16 = add nuw i64 %index14, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1085

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %.025.i.i, %n.vec13
  br i1 %cmp.n17, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i.prol
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 %.030.i.i.prol
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !64
  %i.ai = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1086

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.prol ]
  %i.aj = sub i64 %.030.i.i.ph, %.025.i.i
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.d, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %i.al = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.c ]
  %i.am = add i64 %i.al, %.025.i.i                ; 2 uses
  store i64 %i.am, ptr %i.d, align 8, !tbaa !69
  %.02732.i.i.add = add nuw nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 2
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.a, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bc, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %.030.i.i
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !64
  %i.aq = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aq
  store i8 %i.as, ptr %i.at, align 1, !tbaa !64
  %i.au = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.au
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !64
  %i.ay = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ay
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !64
  %i.bc = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bc, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1087

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !331 ; 4 uses
  %i.bf = icmp sgt i64 %i.be, -1
  br i1 %i.bf, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !108 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !332, !nonnull !72, !align !294 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.be ; 2 uses
  %.not31.i.i.i.i = icmp samesign eq i64 %i.be, 0
  br i1 %.not31.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph34.i.i.i.i

.lr.ph34.i.i.i.i:                                 ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.bl, align 8, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i, %.lr.ph34.i.i.i.i
  %i.bp = phi i64 [ %.pre.i.i.i.i, %.lr.ph34.i.i.i.i ], [ %i.cw, %._crit_edge.i.i.i.i ] ; 3 uses
  %.02732.i.i.i.i = phi ptr [ %i.bh, %.lr.ph34.i.i.i.i ], [ %i.cx, %._crit_edge.i.i.i.i ] ; 9 uses
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.br = sub i64 %i.bq, %i.bp
  %i.bs = ptrtoint ptr %.02732.i.i.i.i to i64     ; 2 uses
  %i.bt = sub i64 %i.bn, %i.bs                    ; 4 uses
  %i.bu = icmp ult i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !66
  %i.bw = add i64 %i.bt, %i.bp
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(283) %i.bj, i64 noundef %i.bw)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !35

.noexc.i:                                         ; preds = %bb.f
  %i.bx = load i64, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %i.by = load i64, ptr %i.bm, align 8, !tbaa !68
  %i.bz = sub i64 %i.by, %i.bx
  %i.ca = call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bz)
  br label %bb.g

bb.g:                                             ; preds = %.noexc.i, %bb.e
  %.026.i.i.i.i = phi i64 [ %i.bx, %.noexc.i ], [ %i.bp, %bb.e ] ; 3 uses
  %.025.i.i.i.i = phi i64 [ %i.ca, %.noexc.i ], [ %i.bt, %bb.e ] ; 13 uses
  %i.cb = load ptr, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %i.cc = ptrtoaddr ptr %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.026.i.i.i.i ; 7 uses
  %.not36.i.i.i.i = icmp eq i64 %.025.i.i.i.i, 0
  br i1 %.not36.i.i.i.i, label %._crit_edge.i.i.i.i, label %iter.check32

iter.check32:                                     ; preds = %bb.g
  %min.iters.check20 = icmp ult i64 %.025.i.i.i.i, 4
  br i1 %min.iters.check20, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck18

vector.memcheck18:                                ; preds = %iter.check32
  %i.ce = add i64 %.026.i.i.i.i, %i.cc
  %i.cf = sub i64 %i.bs, %i.ce
  %diff.check19 = icmp ugt i64 %i.cf, -32
  br i1 %diff.check19, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check21

vector.main.loop.iter.check21:                    ; preds = %vector.memcheck18
  %min.iters.check22 = icmp ult i64 %.025.i.i.i.i, 32
  br i1 %min.iters.check22, label %vec.epilog.ph36, label %vector.ph23

vector.ph23:                                      ; preds = %vector.main.loop.iter.check21
  %i.cg = and i64 %.025.i.i.i.i, 28
  %n.vec24 = and i64 %.025.i.i.i.i, -32           ; 4 uses
  br label %vector.body25

vector.body25:                                    ; preds = %vector.ph23, %vector.body25
  %index26 = phi i64 [ 0, %vector.ph23 ], [ %index.next29, %vector.body25 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %index26 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load27 = load <16 x i8>, ptr %i.ch, align 1, !tbaa !64
  %wide.load28 = load <16 x i8>, ptr %i.ci, align 1, !tbaa !64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %index26 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <16 x i8> %wide.load27, ptr %i.cj, align 1, !tbaa !64
  store <16 x i8> %wide.load28, ptr %i.ck, align 1, !tbaa !64
  %index.next29 = add nuw i64 %index26, 32        ; 2 uses
  %i.cl = icmp eq i64 %index.next29, %n.vec24
end_hunk_1
begin_hunk_2_@_ZN6spdlog7details11r_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a

.noexc35:                                         ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store i32 %i.av, ptr %7, align 16, !tbaa !64
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.70, i64 5, i64 1, ptr nonnull %7, ptr null)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %.noexc35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit37

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit37: ; preds = %.noexc36, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i27
  %i.by = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %i.bz = add i64 %i.by, 1                        ; 3 uses
  %i.ca = load i64, ptr %i.am, align 8, !tbaa !68
  %i.cb = icmp ugt i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit37
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !66
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bz)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !39

.noexc41:                                         ; preds = %bb.l
  %.pre.i39 = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %.pre2.i40 = add i64 %.pre.i39, 1
  br label %bb.m

bb.m:                                             ; preds = %.noexc41, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit37
  %.pre-phi.i38 = phi i64 [ %i.bz, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit37 ], [ %.pre2.i40, %.noexc41 ]
  %i.ce = phi i64 [ %i.by, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit37 ], [ %.pre.i39, %.noexc41 ]
  %i.cf = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i38, ptr %i.aj, align 8, !tbaa !69
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  store i8 58, ptr %i.cg, align 1, !tbaa !64
  %i.ch = load i32, ptr %2, align 8, !tbaa !310   ; 3 uses
  %or.cond.i43 = icmp ult i32 %i.ch, 100
  br i1 %or.cond.i43, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.lhs.trunc.i46 = trunc nuw nsw i32 %i.ch to i8 ; 2 uses
  %i.ci = udiv i8 %.lhs.trunc.i46, 10
  %i.cj = urem i8 %.lhs.trunc.i46, 10
  %i.ck = or disjoint i8 %i.ci, 48
  %i.cl = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %i.cm = add i64 %i.cl, 1                        ; 3 uses
  %i.cn = load i64, ptr %i.am, align 8, !tbaa !68
  %i.co = icmp ugt i64 %i.cm, %i.cn
  br i1 %i.co, label %bb.o, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i47

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !66
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.cm)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !41

.noexc55:                                         ; preds = %bb.o
  %.pre.i.i53 = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i54 = add i64 %.pre.i.i53, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i47

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i47: ; preds = %.noexc55, %bb.n
  %.pre-phi.i.i48 = phi i64 [ %i.cm, %bb.n ], [ %.pre2.i.i54, %.noexc55 ]
  %i.cr = phi i64 [ %i.cl, %bb.n ], [ %.pre.i.i53, %.noexc55 ]
  %i.cs = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i48, ptr %i.aj, align 8, !tbaa !69
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  store i8 %i.ck, ptr %i.ct, align 1, !tbaa !64
  %i.cu = or disjoint i8 %i.cj, 48
  %i.cv = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %i.cw = add i64 %i.cv, 1                        ; 3 uses
  %i.cx = load i64, ptr %i.am, align 8, !tbaa !68
  %i.cy = icmp ugt i64 %i.cw, %i.cx
  br i1 %i.cy, label %bb.p, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i49

bb.p:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i47
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !66
  invoke void %i.da(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.cw)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !41

.noexc56:                                         ; preds = %bb.p
  %.pre.i5.i51 = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i52 = add i64 %.pre.i5.i51, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i49

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i49: ; preds = %.noexc56, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i47
  %.pre-phi.i4.i50 = phi i64 [ %i.cw, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i47 ], [ %.pre2.i6.i52, %.noexc56 ]
  %i.db = phi i64 [ %i.cv, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i47 ], [ %.pre.i5.i51, %.noexc56 ]
  %i.dc = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i50, ptr %i.aj, align 8, !tbaa !69
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db
  store i8 %i.cu, ptr %i.dd, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit59

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i32 1, ptr %4, align 8, !tbaa !204
  %.ptr.i.i44 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %.ptr.i.i44, align 8, !tbaa !206
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.de, align 8, !tbaa !207
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @.str.70, ptr %i.df, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i45 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i45, align 8, !tbaa !70
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.dg, align 8, !tbaa !209
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.dh, align 4, !tbaa !211
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %4, ptr %i.di, align 8, !tbaa !212
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @_ZN3fmt3v126detail12invoke_parseIRicEEPKT0_RNS0_13parse_contextIS4_EE, ptr %i.dj, align 8, !tbaa !177
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.70, i64 5, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc57:                                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store i32 %i.ch, ptr %5, align 16, !tbaa !64
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.70, i64 5, i64 1, ptr nonnull %5, ptr null)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %.noexc57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit59

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit59: ; preds = %.noexc58, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i49
  %i.dk = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %i.dl = add i64 %i.dk, 1                        ; 3 uses
  %i.dm = load i64, ptr %i.am, align 8, !tbaa !68
  %i.dn = icmp ugt i64 %i.dl, %i.dm
  br i1 %i.dn, label %bb.r, label %.lr.ph34.i.i

bb.r:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit59
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !66
  invoke void %i.dp(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.dl)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !39

.noexc63:                                         ; preds = %bb.r
  %.pre.i61 = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %.pre2.i62 = add i64 %.pre.i61, 1
  br label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit59, %.noexc63
  %.pre-phi.i60 = phi i64 [ %i.dl, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit59 ], [ %.pre2.i62, %.noexc63 ]
  %i.dq = phi i64 [ %i.dk, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit59 ], [ %.pre.i61, %.noexc63 ]
  %i.dr = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i60, ptr %i.aj, align 8, !tbaa !69
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq
  store i8 32, ptr %i.ds, align 1, !tbaa !64
  %.val16 = load i32, ptr %i.b, align 8, !tbaa !308
  %i.dt = icmp sgt i32 %.val16, 11
  %.str.110..str.111.i = select i1 %i.dt, ptr @.str.110, ptr @.str.111 ; 2 uses
  %.str.110..str.111.i107 = ptrtoaddr ptr %.str.110..str.111.i to i64
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i65 = load i64, ptr %i.aj, align 8, !tbaa !69
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.dv = phi i64 [ %.pre.i.i65, %.lr.ph34.i.i ], [ %i.fb, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ 0, %.lr.ph34.i.i ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 4 uses
  %.02732.i.i.ptr = getelementptr inbounds nuw i8, ptr %.str.110..str.111.i, i64 %.02732.i.i.idx ; 7 uses
  %i.dw = load i64, ptr %i.am, align 8, !tbaa !68
  %i.dx = sub i64 %i.dw, %i.dv
  %gepdiff = sub nsw i64 2, %.02732.i.i.idx       ; 4 uses
  %i.dy = icmp ult i64 %i.dx, %gepdiff
  br i1 %i.dy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dz = load ptr, ptr %i.du, align 8, !tbaa !66
  %i.ea = add i64 %gepdiff, %i.dv
  invoke void %i.dz(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ea)
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !34

.noexc66:                                         ; preds = %bb.t
  %i.eb = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %i.ec = load i64, ptr %i.am, align 8, !tbaa !68
  %i.ed = sub i64 %i.ec, %i.eb
  %i.ee = call i64 @llvm.umin.i64(i64 %gepdiff, i64 %i.ed)
  br label %bb.u

bb.u:                                             ; preds = %.noexc66, %bb.s
  %.026.i.i = phi i64 [ %i.eb, %.noexc66 ], [ %i.dv, %bb.s ] ; 3 uses
  %.025.i.i = phi i64 [ %i.ee, %.noexc66 ], [ %gepdiff, %bb.s ] ; 13 uses
  %i.ef = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.eg = ptrtoaddr ptr %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.u
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ei = add i64 %.02732.i.i.idx, %.str.110..str.111.i107
  %i.ej = add i64 %.026.i.i, %i.eg
  %i.ek = sub i64 %i.ei, %i.ej
  %diff.check = icmp ugt i64 %i.ek, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check108 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check108, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.el = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load = load <16 x i8>, ptr %i.em, align 1, !tbaa !64
  %wide.load109 = load <16 x i8>, ptr %i.en, align 1, !tbaa !64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <16 x i8> %wide.load, ptr %i.eo, align 1, !tbaa !64
  store <16 x i8> %wide.load109, ptr %i.ep, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !1092

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.el, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %.025.i.i, -4               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index111
  %wide.load112 = load <4 x i8>, ptr %i.er, align 1, !tbaa !64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index111
  store <4 x i8> %wide.load112, ptr %i.es, align 1, !tbaa !64
  %index.next113 = add nuw i64 %index111, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next113, %n.vec110
  br i1 %i.et, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1093

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n114 = icmp eq i64 %.025.i.i, %n.vec110
  br i1 %cmp.n114, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec110, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ex, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i.prol
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.030.i.i.prol
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !64
  %i.ex = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1094

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ex, %.lr.ph.i.i.prol ]
  %i.ey = sub i64 %.030.i.i.ph, %.025.i.i
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.aj, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.u
  %i.fa = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.u ]
  %i.fb = add i64 %i.fa, %.025.i.i                ; 2 uses
  store i64 %i.fb, ptr %i.aj, align 8, !tbaa !69
  %.02732.i.i.add = add nuw nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 2
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.s, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.fr, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.030.i.i
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !64
  %i.ff = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ff
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !64
  %i.fj = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.fj
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !64
  %i.fn = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.fn
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !64
  %i.fr = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.fr, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1095

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !331 ; 4 uses
  %i.fu = icmp sgt i64 %i.ft, -1
  br i1 %i.fu, label %bb.v, label %bb.z

bb.v:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !108 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !332, !nonnull !72, !align !294 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ft ; 2 uses
  %.not31.i.i.i.i = icmp samesign eq i64 %i.ft, 0
  br i1 %.not31.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph34.i.i.i.i

.lr.ph34.i.i.i.i:                                 ; preds = %bb.v
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %i.gc = ptrtoint ptr %i.fz to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.ga, align 8, !tbaa !69
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i.i.i, %.lr.ph34.i.i.i.i
  %i.ge = phi i64 [ %.pre.i.i.i.i, %.lr.ph34.i.i.i.i ], [ %i.hl, %._crit_edge.i.i.i.i ] ; 3 uses
  %.02732.i.i.i.i = phi ptr [ %i.fw, %.lr.ph34.i.i.i.i ], [ %i.hm, %._crit_edge.i.i.i.i ] ; 9 uses
  %i.gf = load i64, ptr %i.gb, align 8, !tbaa !68
  %i.gg = sub i64 %i.gf, %i.ge
  %i.gh = ptrtoint ptr %.02732.i.i.i.i to i64     ; 2 uses
  %i.gi = sub i64 %i.gc, %i.gh                    ; 4 uses
  %i.gj = icmp ult i64 %i.gg, %i.gi
  br i1 %i.gj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gk = load ptr, ptr %i.gd, align 8, !tbaa !66
  %i.gl = add i64 %i.gi, %i.ge
  invoke void %i.gk(ptr noundef nonnull align 8 dereferenceable(283) %i.fy, i64 noundef %i.gl)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !35

.noexc.i:                                         ; preds = %bb.x
  %i.gm = load i64, ptr %i.ga, align 8, !tbaa !69 ; 2 uses
  %i.gn = load i64, ptr %i.gb, align 8, !tbaa !68
  %i.go = sub i64 %i.gn, %i.gm
  %i.gp = call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.go)
  br label %bb.y

bb.y:                                             ; preds = %.noexc.i, %bb.w
  %.026.i.i.i.i = phi i64 [ %i.gm, %.noexc.i ], [ %i.ge, %bb.w ] ; 3 uses
  %.025.i.i.i.i = phi i64 [ %i.gp, %.noexc.i ], [ %i.gi, %bb.w ] ; 13 uses
  %i.gq = load ptr, ptr %i.fy, align 8, !tbaa !67 ; 2 uses
  %i.gr = ptrtoaddr ptr %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.026.i.i.i.i ; 7 uses
  %.not36.i.i.i.i = icmp eq i64 %.025.i.i.i.i, 0
  br i1 %.not36.i.i.i.i, label %._crit_edge.i.i.i.i, label %iter.check129

iter.check129:                                    ; preds = %bb.y
  %min.iters.check117 = icmp ult i64 %.025.i.i.i.i, 4
  br i1 %min.iters.check117, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck115

vector.memcheck115:                               ; preds = %iter.check129
  %i.gt = add i64 %.026.i.i.i.i, %i.gr
  %i.gu = sub i64 %i.gh, %i.gt
  %diff.check116 = icmp ugt i64 %i.gu, -32
  br i1 %diff.check116, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check118

vector.main.loop.iter.check118:                   ; preds = %vector.memcheck115
  %min.iters.check119 = icmp ult i64 %.025.i.i.i.i, 32
  br i1 %min.iters.check119, label %vec.epilog.ph133, label %vector.ph120

vector.ph120:                                     ; preds = %vector.main.loop.iter.check118
  %i.gv = and i64 %.025.i.i.i.i, 28
  %n.vec121 = and i64 %.025.i.i.i.i, -32          ; 4 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.ph120, %vector.body122
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next126, %vector.body122 ] ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %index123 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load124 = load <16 x i8>, ptr %i.gw, align 1, !tbaa !64
  %wide.load125 = load <16 x i8>, ptr %i.gx, align 1, !tbaa !64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 %index123 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store <16 x i8> %wide.load124, ptr %i.gy, align 1, !tbaa !64
  store <16 x i8> %wide.load125, ptr %i.gz, align 1, !tbaa !64
  %index.next126 = add nuw i64 %index123, 32      ; 2 uses
  %i.ha = icmp eq i64 %index.next126, %n.vec121
end_hunk_2
begin_hunk_3_@_ZN6spdlog7details11E_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !66
  %i.as = add i64 %i.ap, %i.al
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.as), !inline_history !1293
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !69 ; 2 uses
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !68
  %i.av = sub i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.av)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.026.i.i = phi i64 [ %i.at, %bb.f ], [ %i.al, %bb.e ] ; 3 uses
  %.025.i.i = phi i64 [ %i.aw, %bb.f ], [ %i.ap, %bb.e ] ; 13 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.ay = ptrtoaddr ptr %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ba = add i64 %.026.i.i, %i.ay
  %i.bb = sub i64 %i.ao, %i.ba
  %diff.check = icmp ugt i64 %i.bb, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <16 x i8>, ptr %i.bd, align 1, !tbaa !64
  %wide.load12 = load <16 x i8>, ptr %i.be, align 1, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <16 x i8> %wide.load, ptr %i.bf, align 1, !tbaa !64
  store <16 x i8> %wide.load12, ptr %i.bg, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !1294

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index14
  %wide.load15 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 %index14
  store <4 x i8> %wide.load15, ptr %i.bj, align 1, !tbaa !64
  %index.next16 = add nuw i64 %index14, 4         ; 2 uses
  %i.bk = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1295

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %.025.i.i, %n.vec13
  br i1 %cmp.n17, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 %.030.i.i.prol
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !64
  %i.bo = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1296

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.prol ]
  %i.bp = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.ah, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.g
  %i.br = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.g ]
  %i.bs = add i64 %i.br, %.025.i.i                ; 2 uses
  store i64 %i.bs, ptr %i.ah, align 8, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, %i.ag
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.e, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.az, i64 %.030.i.i
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !64
  %i.bx = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bx
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !64
  %i.cb = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cb
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !64
  %i.cf = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cf
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !64
  %i.cj = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cj, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1297

_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2El.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11p_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11p_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
.lr.ph34.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i32, ptr %i.a, align 8, !tbaa !308
  %i.b = icmp sgt i32 %.val, 11
  %.str.110..str.111.i = select i1 %i.b, ptr @.str.110, ptr @.str.111 ; 2 uses
  %.str.110..str.111.i5 = ptrtoaddr ptr %.str.110..str.111.i to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !69
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.f = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.al, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ 0, %.lr.ph34.i.i ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 4 uses
  %.02732.i.i.ptr = getelementptr inbounds nuw i8, ptr %.str.110..str.111.i, i64 %.02732.i.i.idx ; 7 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !68
  %i.h = sub i64 %i.g, %i.f
  %gepdiff = sub nsw i64 2, %.02732.i.i.idx       ; 4 uses
  %i.i = icmp ult i64 %i.h, %gepdiff
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.k = add i64 %gepdiff, %i.f
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.k), !inline_history !23
  %i.l = load i64, ptr %i.c, align 8, !tbaa !69   ; 2 uses
  %i.m = load i64, ptr %i.d, align 8, !tbaa !68
  %i.n = sub i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %gepdiff, i64 %i.n)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.026.i.i = phi i64 [ %i.l, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %.025.i.i = phi i64 [ %i.o, %bb.b ], [ %gepdiff, %bb.a ] ; 13 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !67     ; 2 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.s = add i64 %.02732.i.i.idx, %.str.110..str.111.i5
  %i.t = add i64 %.026.i.i, %i.q
  %i.u = sub i64 %i.s, %i.t
  %diff.check = icmp ugt i64 %i.u, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check6 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <16 x i8>, ptr %i.w, align 1, !tbaa !64
  %wide.load7 = load <16 x i8>, ptr %i.x, align 1, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <16 x i8> %wide.load, ptr %i.y, align 1, !tbaa !64
  store <16 x i8> %wide.load7, ptr %i.z, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !1298

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %.025.i.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index9
  %wide.load10 = load <4 x i8>, ptr %i.ab, align 1, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %index9
  store <4 x i8> %wide.load10, ptr %i.ac, align 1, !tbaa !64
  %index.next11 = add nuw i64 %index9, 4          ; 2 uses
  %i.ad = icmp eq i64 %index.next11, %n.vec8
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1299

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %.025.i.i, %n.vec8
  br i1 %cmp.n12, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ah, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i.prol
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 %.030.i.i.prol
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !64
  %i.ah = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1300

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.prol ]
  %i.ai = sub i64 %.030.i.i.ph, %.025.i.i
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.c, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %i.ak = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.c ]
  %i.al = add i64 %i.ak, %.025.i.i                ; 2 uses
  store i64 %i.al, ptr %i.c, align 8, !tbaa !69
  %.02732.i.i.add = add nuw nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 2
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.a, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 %.030.i.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !64
  %i.ap = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ap
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !64
  %i.at = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.at
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !64
  %i.ax = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ax
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !64
  %i.bb = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bb, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1301

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11r_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11r_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %6 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %8 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %9 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !308 ; 3 uses
  %i.b = icmp sgt i32 %.val, 12
  %i.c = add nsw i32 %.val, -12
  %i.d = select i1 %i.b, i32 %i.c, i32 %.val      ; 3 uses
  %or.cond.i = icmp ult i32 %i.d, 100
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc.i = trunc nuw nsw i32 %i.d to i8    ; 2 uses
  %i.e = udiv i8 %.lhs.trunc.i, 10
  %i.f = urem i8 %.lhs.trunc.i, 10
  %i.g = or disjoint i8 %i.e, 48
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68
  %i.m = icmp ugt i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.j), !inline_history !32
  %.pre.i.i = load i64, ptr %i.h, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.j, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.p = phi i64 [ %i.i, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.q = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i, ptr %i.h, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 %i.g, ptr %i.r, align 1, !tbaa !64
  %i.s = or disjoint i8 %i.f, 48
  %i.t = load i64, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = load i64, ptr %i.k, align 8, !tbaa !68
  %i.w = icmp ugt i64 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i

bb.d:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !66
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.u), !inline_history !32
  %.pre.i5.i = load i64, ptr %i.h, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i = add i64 %.pre.i5.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i
  %.pre-phi.i4.i = phi i64 [ %i.u, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i ], [ %.pre2.i6.i, %bb.d ]
  %i.z = phi i64 [ %i.t, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i ], [ %.pre.i5.i, %bb.d ]
  %i.aa = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i, ptr %i.h, align 8, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 %i.s, ptr %i.ab, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store i32 1, ptr %8, align 8, !tbaa !204
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %.ptr.i.i, align 8, !tbaa !206
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
end_hunk_3
begin_hunk_4_@_ZN6spdlog7details11r_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  %i.bp = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i21, ptr %i.ai, align 8, !tbaa !69
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store i8 %i.bh, ptr %i.bq, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit26

bb.j:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store i32 1, ptr %6, align 8, !tbaa !204
  %.ptr.i.i15 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %.ptr.i.i15, align 8, !tbaa !206
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.br, align 8, !tbaa !207
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @.str.70, ptr %i.bs, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i16 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i16, align 8, !tbaa !70
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 0, ptr %i.bt, align 8, !tbaa !209
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.bu, align 4, !tbaa !211
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %6, ptr %i.bv, align 8, !tbaa !212
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr @_ZN3fmt3v126detail12invoke_parseIRicEEPKT0_RNS0_13parse_contextIS4_EE, ptr %i.bw, align 8, !tbaa !177
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.70, i64 5, ptr noundef nonnull align 8 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store i32 %i.au, ptr %7, align 16, !tbaa !64
  call void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.70, i64 5, i64 1, ptr nonnull %7, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit26

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit26: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i20, %bb.j
  %i.bx = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.by = add i64 %i.bx, 1                        ; 3 uses
  %i.bz = load i64, ptr %i.al, align 8, !tbaa !68
  %i.ca = icmp ugt i64 %i.by, %i.bz
  br i1 %i.ca, label %bb.k, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit30

bb.k:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit26
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !66
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.by), !inline_history !29
  %.pre.i28 = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %.pre2.i29 = add i64 %.pre.i28, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit30

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit30: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit26, %bb.k
  %.pre-phi.i27 = phi i64 [ %i.by, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit26 ], [ %.pre2.i29, %bb.k ]
  %i.cd = phi i64 [ %i.bx, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit26 ], [ %.pre.i28, %bb.k ]
  %i.ce = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i27, ptr %i.ai, align 8, !tbaa !69
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store i8 58, ptr %i.cf, align 1, !tbaa !64
  %i.cg = load i32, ptr %2, align 8, !tbaa !310   ; 3 uses
  %or.cond.i31 = icmp ult i32 %i.cg, 100
  br i1 %or.cond.i31, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit30
  %.lhs.trunc.i34 = trunc nuw nsw i32 %i.cg to i8 ; 2 uses
  %i.ch = udiv i8 %.lhs.trunc.i34, 10
  %i.ci = urem i8 %.lhs.trunc.i34, 10
  %i.cj = or disjoint i8 %i.ch, 48
  %i.ck = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.cl = add i64 %i.ck, 1                        ; 3 uses
  %i.cm = load i64, ptr %i.al, align 8, !tbaa !68
  %i.cn = icmp ugt i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.m, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !66
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.cl), !inline_history !32
  %.pre.i.i41 = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i42 = add i64 %.pre.i.i41, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i35

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i35: ; preds = %bb.m, %bb.l
  %.pre-phi.i.i36 = phi i64 [ %i.cl, %bb.l ], [ %.pre2.i.i42, %bb.m ]
  %i.cq = phi i64 [ %i.ck, %bb.l ], [ %.pre.i.i41, %bb.m ]
  %i.cr = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i36, ptr %i.ai, align 8, !tbaa !69
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  store i8 %i.cj, ptr %i.cs, align 1, !tbaa !64
  %i.ct = or disjoint i8 %i.ci, 48
  %i.cu = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.cv = add i64 %i.cu, 1                        ; 3 uses
  %i.cw = load i64, ptr %i.al, align 8, !tbaa !68
  %i.cx = icmp ugt i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.n, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i37

bb.n:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i35
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !66
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.cv), !inline_history !32
  %.pre.i5.i39 = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i40 = add i64 %.pre.i5.i39, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i37

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i37: ; preds = %bb.n, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i35
  %.pre-phi.i4.i38 = phi i64 [ %i.cv, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i35 ], [ %.pre2.i6.i40, %bb.n ]
  %i.da = phi i64 [ %i.cu, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i35 ], [ %.pre.i5.i39, %bb.n ]
  %i.db = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i38, ptr %i.ai, align 8, !tbaa !69
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da
  store i8 %i.ct, ptr %i.dc, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit43

bb.o:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i32 1, ptr %4, align 8, !tbaa !204
  %.ptr.i.i32 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %.ptr.i.i32, align 8, !tbaa !206
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.dd, align 8, !tbaa !207
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @.str.70, ptr %i.de, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i33, align 8, !tbaa !70
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.df, align 8, !tbaa !209
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.dg, align 4, !tbaa !211
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %4, ptr %i.dh, align 8, !tbaa !212
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @_ZN3fmt3v126detail12invoke_parseIRicEEPKT0_RNS0_13parse_contextIS4_EE, ptr %i.di, align 8, !tbaa !177
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.70, i64 5, ptr noundef nonnull align 8 dereferenceable(64) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store i32 %i.cg, ptr %5, align 16, !tbaa !64
  call void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.70, i64 5, i64 1, ptr nonnull %5, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit43

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit43: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i37, %bb.o
  %i.dj = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.dk = add i64 %i.dj, 1                        ; 3 uses
  %i.dl = load i64, ptr %i.al, align 8, !tbaa !68
  %i.dm = icmp ugt i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.p, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit47

bb.p:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit43
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !66
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.dk), !inline_history !29
  %.pre.i45 = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %.pre2.i46 = add i64 %.pre.i45, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit47

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit47: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit43, %bb.p
  %.pre-phi.i44 = phi i64 [ %i.dk, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit43 ], [ %.pre2.i46, %bb.p ]
  %i.dp = phi i64 [ %i.dj, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit43 ], [ %.pre.i45, %bb.p ]
  %i.dq = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i44, ptr %i.ai, align 8, !tbaa !69
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dp
  store i8 32, ptr %i.dr, align 1, !tbaa !64
  %.val13 = load i32, ptr %i.a, align 8, !tbaa !308
  %i.ds = icmp sgt i32 %.val13, 11
  %.str.110..str.111.i = select i1 %i.ds, ptr @.str.110, ptr @.str.111 ; 2 uses
  %.str.110..str.111.i74 = ptrtoaddr ptr %.str.110..str.111.i to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i48 = load i64, ptr %i.ai, align 8, !tbaa !69
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit47
  %i.du = phi i64 [ %.pre.i.i48, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit47 ], [ %i.fa, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ 0, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit47 ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 4 uses
  %.02732.i.i.ptr = getelementptr inbounds nuw i8, ptr %.str.110..str.111.i, i64 %.02732.i.i.idx ; 7 uses
  %i.dv = load i64, ptr %i.al, align 8, !tbaa !68
  %i.dw = sub i64 %i.dv, %i.du
  %gepdiff = sub nsw i64 2, %.02732.i.i.idx       ; 4 uses
  %i.dx = icmp ult i64 %i.dw, %gepdiff
  br i1 %i.dx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dy = load ptr, ptr %i.dt, align 8, !tbaa !66
  %i.dz = add i64 %gepdiff, %i.du
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.dz), !inline_history !23
  %i.ea = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.eb = load i64, ptr %i.al, align 8, !tbaa !68
  %i.ec = sub i64 %i.eb, %i.ea
  %i.ed = call i64 @llvm.umin.i64(i64 %gepdiff, i64 %i.ec)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.026.i.i = phi i64 [ %i.ea, %bb.r ], [ %i.du, %bb.q ] ; 3 uses
  %.025.i.i = phi i64 [ %i.ed, %bb.r ], [ %gepdiff, %bb.q ] ; 13 uses
  %i.ee = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.ef = ptrtoaddr ptr %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.s
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.eh = add i64 %.02732.i.i.idx, %.str.110..str.111.i74
  %i.ei = add i64 %.026.i.i, %i.ef
  %i.ej = sub i64 %i.eh, %i.ei
  %diff.check = icmp ugt i64 %i.ej, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check75 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ek = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load = load <16 x i8>, ptr %i.el, align 1, !tbaa !64
  %wide.load76 = load <16 x i8>, ptr %i.em, align 1, !tbaa !64
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <16 x i8> %wide.load, ptr %i.en, align 1, !tbaa !64
  store <16 x i8> %wide.load76, ptr %i.eo, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !1302

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ek, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec77 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index78 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next80, %vec.epilog.vector.body ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index78
  %wide.load79 = load <4 x i8>, ptr %i.eq, align 1, !tbaa !64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 %index78
  store <4 x i8> %wide.load79, ptr %i.er, align 1, !tbaa !64
  %index.next80 = add nuw i64 %index78, 4         ; 2 uses
  %i.es = icmp eq i64 %index.next80, %n.vec77
  br i1 %i.es, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1303

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n81 = icmp eq i64 %.025.i.i, %n.vec77
  br i1 %cmp.n81, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec77, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ew, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.et = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i.prol
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.030.i.i.prol
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !64
  %i.ew = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1304

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ew, %.lr.ph.i.i.prol ]
  %i.ex = sub i64 %.030.i.i.ph, %.025.i.i
  %i.ey = icmp ugt i64 %i.ex, -4
  br i1 %i.ey, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.ai, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.s
  %i.ez = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.s ]
  %i.fa = add i64 %i.ez, %.025.i.i                ; 2 uses
  store i64 %i.fa, ptr %i.ai, align 8, !tbaa !69
  %.02732.i.i.add = add nuw nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 2
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.q, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.fq, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.030.i.i
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !64
  %i.fe = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.fe
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !64
  %i.fi = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.fi
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !64
  %i.fm = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.fm
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !64
  %i.fq = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.fq, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1305

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11R_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11R_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %6 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !308  ; 3 uses
  %or.cond.i = icmp ult i32 %i.b, 100
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc.i = trunc nuw nsw i32 %i.b to i8    ; 2 uses
  %i.c = udiv i8 %.lhs.trunc.i, 10
  %i.d = urem i8 %.lhs.trunc.i, 10
  %i.e = or disjoint i8 %i.c, 48
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.h), !inline_history !32
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !64
  %i.q = or disjoint i8 %i.d, 48
  %i.r = load i64, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = load i64, ptr %i.i, align 8, !tbaa !68
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i

bb.d:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !66
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.s), !inline_history !32
  %.pre.i5.i = load i64, ptr %i.f, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i = add i64 %.pre.i5.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i
  %.pre-phi.i4.i = phi i64 [ %i.s, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i ], [ %.pre2.i6.i, %bb.d ]
  %i.x = phi i64 [ %i.r, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i ], [ %.pre.i5.i, %bb.d ]
  %i.y = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i, ptr %i.f, align 8, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 %i.q, ptr %i.z, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store i32 1, ptr %6, align 8, !tbaa !204
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %.ptr.i.i, align 8, !tbaa !206
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !207
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @.str.70, ptr %i.ab, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !70
end_hunk_4
