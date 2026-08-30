Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/spdlog/original/spdlog?download=true
inline.NumInlined: 6885
inline.NumDeleted: 3933
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_ZN6spdlog17pattern_formatterC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17pattern_time_typeES6_St13unordered_mapIcSt10unique_ptrINS_21custom_flag_formatterESt14default_deleteISA_EESt4hashIcESt8equal_toIcESaISt4pairIKcSD_EEE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.y, ptr %i.z, align 8, !tbaa !13
  store ptr %i.q, ptr %3, align 8, !tbaa !17
  store i64 0, ptr %i.x, align 8, !tbaa !13
  store i8 0, ptr %i.q, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %2, ptr %i.aa, align 8, !tbaa !279
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 0, ptr %i.ab, align 4, !tbaa !289
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  %i.af = load ptr, ptr %4, align 8, !tbaa !250   ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !250
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !252 ; 2 uses
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !252
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !253 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !206
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !290
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !290
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !291
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !293
  %i.as = load ptr, ptr %4, align 8, !tbaa !250
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4
  store ptr %i.ar, ptr %i.ae, align 8, !tbaa !250
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !293
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !293
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4
  %i.aw = phi ptr [ %i.ar, %bb.d ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit4 ]
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEEC2EOSE_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !21
  %i.az = sext i8 %i.ay to i64
  %i.ba = urem i64 %i.az, %i.ai
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ba
  store ptr %i.aj, ptr %i.bb, align 8, !tbaa !294
  br label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEEC2EOSE_.exit

_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEEC2EOSE_.exit: ; preds = %bb.e, %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !295
  store i64 1, ptr %i.ah, align 8, !tbaa !252
  store ptr null, ptr %i.at, align 8, !tbaa !293
  store ptr %i.at, ptr %4, align 8, !tbaa !250
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
  %i.bf = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.o
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef %i.bf) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
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
  %i.a = load ptr, ptr %1, align 8, !tbaa !17     ; 3 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr null, ptr %2, align 8, !tbaa !296
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !299  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !300  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !301 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #37, !inline_history !303
  br label %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !304

_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  store ptr %i.g, ptr %i.h, align 8, !tbaa !300
  %.pre = load ptr, ptr %1, align 8, !tbaa !17
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.o = phi ptr [ %i.a, %bb.a ], [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i ] ; 2 uses
  %.not97 = icmp eq ptr %i.o, %i.e
  br i1 %.not97, label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53, label %.lr.ph99

.lr.ph99:                                         ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE5clearEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph99, %bb.y
  %i.q = phi ptr [ null, %.lr.ph99 ], [ %i.dn, %bb.y ] ; 2 uses
  %i.r = phi ptr [ null, %.lr.ph99 ], [ %i.do, %bb.y ] ; 6 uses
  %i.s = phi ptr [ null, %.lr.ph99 ], [ %i.dp, %bb.y ] ; 3 uses
  %.sroa.064.098 = phi ptr [ %i.o, %.lr.ph99 ], [ %i.dq, %bb.y ] ; 5 uses
  %i.t = load i8, ptr %.sroa.064.098, align 1, !tbaa !21 ; 2 uses
  %i.u = icmp eq i8 %i.t, 37
  br i1 %i.u, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %.not77.a = icmp eq ptr %i.r, null
  br i1 %.not77.a, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %2, align 8, !tbaa !305
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !300  ; 6 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !306
  %.not.i.i16 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %i.r to i64
  store i64 %i.x, ptr %i.v, align 8, !tbaa !301
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %i.h, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !299  ; 10 uses
  %i.aa = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit.split-lp

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
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #45
          to label %.noexc18 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit ; 10 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %i.am = ptrtoint ptr %i.r to i64
  store i64 %i.am, ptr %i.al, align 8, !tbaa !301
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.v
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc18
  %i.an = add i64 %i.aa, -8
  %i.ao = sub i64 %i.an, %i.ab                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader196, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep167.a = getelementptr i8, ptr %i.ak, i64 8
  %i.ar = add i64 %i.aa, -8
  %i.as = sub i64 %i.ar, %i.ab
  %i.at = and i64 %i.as, -8                       ; 2 uses
  %scevgep168.a = getelementptr i8, ptr %scevgep167.a, i64 %i.at
  %scevgep169 = getelementptr i8, ptr %i.z, i64 8
  %scevgep170 = getelementptr i8, ptr %scevgep169, i64 %i.at
  %bound0 = icmp ult ptr %i.ak, %scevgep170
  %bound1 = icmp ult ptr %i.z, %scevgep168.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader196, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.ak, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.z, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.z, i64 %i.ax ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.ay = getelementptr i8, ptr %next.gep171, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep171, align 8, !tbaa !301, !alias.scope !312, !noalias !307
  %wide.load172 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !301, !alias.scope !312, !noalias !307
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !301, !alias.scope !315, !noalias !312
  store <2 x i64> %wide.load172, ptr %i.az, align 8, !tbaa !301, !alias.scope !315, !noalias !312
  %i.ba = getelementptr i8, ptr %next.gep171, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep171, align 8, !tbaa !301, !alias.scope !312, !noalias !307
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !301, !alias.scope !312, !noalias !307
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader196

.lr.ph.i.i.i.i.i.i.i.preheader196:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader196, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader196 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader196 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.bc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !301, !alias.scope !310, !noalias !307
  store i64 %i.bc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !301, !alias.scope !307, !noalias !310
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !301, !alias.scope !310, !noalias !307
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !318

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc18
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.noexc18 ], [ %i.av, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !299
  store ptr %i.bf, ptr %i.h, align 8, !tbaa !300
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bg, ptr %i.p, align 8, !tbaa !306
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
  %i.bh = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #37, !inline_history !319
  br label %bb.ae

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.e, %bb.c
  %i.bk = phi ptr [ null, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ null, %bb.e ], [ %i.q, %bb.c ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.064.098, i64 1 ; 4 uses
  %i.bm = icmp eq ptr %i.bl, %i.e
  br i1 %i.bm, label %bb.o, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !21
  switch i8 %i.bn, label %bb.k [
    i8 45, label %.sink.split.i
    i8 61, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %.017.ph.i = phi i64 [ 2, %bb.j ], [ 1, %bb.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.064.098, i64 2
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.i
  %.sroa.064.2 = phi ptr [ %i.bl, %bb.i ], [ %i.bo, %.sink.split.i ] ; 9 uses
  %.017.i = phi i64 [ 0, %bb.i ], [ %.017.ph.i, %.sink.split.i ] ; 5 uses
  %.sroa.064.2110 = ptrtoaddr ptr %.sroa.064.2 to i64
  %i.bp = icmp eq ptr %.sroa.064.2, %i.e
  br i1 %i.bp, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load i8, ptr %.sroa.064.2, align 1, !tbaa !21 ; 2 uses
  %i.br = add i8 %i.bq, -48
  %isdigit.i = icmp ult i8 %i.br, 10
  br i1 %isdigit.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bs = zext nneg i8 %i.bq to i64
  %i.bt = add nsw i64 %i.bs, -48                  ; 3 uses
  %storemerge36.i = getelementptr inbounds nuw i8, ptr %.sroa.064.2, i64 1 ; 5 uses
  %.not37.i = icmp eq ptr %storemerge36.i, %i.e
  br i1 %.not37.i, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.bu = load i8, ptr %storemerge36.i, align 1, !tbaa !21 ; 3 uses
  %i.bv = add i8 %i.bu, -48
  %isdigit18.i91 = icmp ult i8 %i.bv, 10
  br i1 %isdigit18.i91, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %i.bw = getelementptr i8, ptr %.sroa.064.2, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.bw, i64 %i.b
  %i.bx = sub i64 0, %.sroa.064.2110
  %scevgep111 = getelementptr i8, ptr %scevgep, i64 %i.bx ; 2 uses
  %i.by = zext nneg i8 %i.bu to i64
  %i.bz = mul nuw nsw i64 %i.bt, 10
  %i.ca = add nsw i64 %i.bz, -48
  %i.cb = add nsw i64 %i.ca, %i.by                ; 2 uses
  %storemerge.i163 = getelementptr inbounds nuw i8, ptr %.sroa.064.2, i64 2 ; 2 uses
  %.not.i22164 = icmp eq ptr %storemerge.i163, %i.e
  br i1 %.not.i22164, label %.critedge.i, label %.lr.ph.i.lr.ph, !llvm.loop !320

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  br label %.lr.ph.i, !llvm.loop !320

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %storemerge.i166 = phi ptr [ %storemerge.i163, %.lr.ph.i.lr.ph ], [ %storemerge.i, %.lr.ph ] ; 4 uses
  %i.cc = phi i64 [ %i.cb, %.lr.ph.i.lr.ph ], [ %i.ci, %.lr.ph ] ; 2 uses
  %.sroa.064.392165 = phi ptr [ %storemerge36.i, %.lr.ph.i.lr.ph ], [ %storemerge.i166, %.lr.ph ]
  %i.cd = load i8, ptr %storemerge.i166, align 1, !tbaa !21 ; 3 uses
  %i.ce = add i8 %i.cd, -48
  %isdigit18.i = icmp ult i8 %i.ce, 10
  br i1 %isdigit18.i, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !320

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.cf = zext nneg i8 %i.cd to i64
  %i.cg = mul i64 %i.cc, 10
  %i.ch = add i64 %i.cg, -48
  %i.ci = add i64 %i.ch, %i.cf                    ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge.i166, i64 1 ; 2 uses
  %.not.i22 = icmp eq ptr %storemerge.i, %i.e
  br i1 %.not.i22, label %.lr.ph..critedge.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !320

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.sroa.064.3.lcssa = phi ptr [ %storemerge36.i, %.lr.ph.i.preheader ], [ %storemerge.i166, %.lr.ph.i ]
  %.03139.i.lcssa = phi i64 [ %i.bt, %.lr.ph.i.preheader ], [ %i.cc, %.lr.ph.i ] ; 2 uses
  %.pn38.i.lcssa = phi ptr [ %.sroa.064.2, %.lr.ph.i.preheader ], [ %.sroa.064.392165, %.lr.ph.i ]
  %.lcssa82 = phi i8 [ %i.bu, %.lr.ph.i.preheader ], [ %i.cd, %.lr.ph.i ]
  %i.cj = icmp eq i8 %.lcssa82, 33
  br i1 %i.cj, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn38.i.lcssa, i64 2
  %i.cl = or disjoint i64 %.017.i, 4294967296
  br label %.critedge.i

.lr.ph..critedge.i.loopexit_crit_edge:            ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !320

.critedge.i:                                      ; preds = %.lr.ph.preheader, %.lr.ph..critedge.i.loopexit_crit_edge, %bb.n, %.lr.ph.i._crit_edge, %bb.m
  %.sroa.064.4 = phi ptr [ %storemerge36.i, %bb.m ], [ %.sroa.064.3.lcssa, %.lr.ph.i._crit_edge ], [ %i.ck, %bb.n ], [ %scevgep111, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %scevgep111, %.lr.ph.preheader ]
  %.03134.i = phi i64 [ %i.bt, %bb.m ], [ %.03139.i.lcssa, %.lr.ph.i._crit_edge ], [ %.03139.i.lcssa, %bb.n ], [ %i.ci, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %i.cb, %.lr.ph.preheader ]
  %.0.i = phi i64 [ %.017.i, %bb.m ], [ %.017.i, %.lr.ph.i._crit_edge ], [ %i.cl, %bb.n ], [ %.017.i, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %.017.i, %.lr.ph.preheader ]
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.03134.i, i64 64)
  %.sroa.6.13.insert.insert.i = or disjoint i64 %.0.i, 1099511627776
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i, %bb.l, %bb.k, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %.sroa.064.5 = phi ptr [ %i.bl, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.064.2, %bb.k ], [ %.sroa.064.4, %.critedge.i ], [ %.sroa.064.2, %bb.l ] ; 4 uses
  %.sroa.6.0.i = phi i64 [ 0, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ 0, %bb.k ], [ %.sroa.6.13.insert.insert.i, %.critedge.i ], [ 0, %bb.l ] ; 3 uses
  %.sroa.027.0.i = phi i64 [ 0, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ 0, %bb.k ], [ %.sroa.speculated.i, %.critedge.i ], [ 0, %bb.l ] ; 2 uses
  %.not78.a = icmp eq ptr %.sroa.064.5, %i.e
  br i1 %.not78.a, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = and i64 %.sroa.6.0.i, 1099511627776
  %.not80 = icmp eq i64 %i.cm, 0
  %i.cn = load i8, ptr %.sroa.064.5, align 1, !tbaa !21 ; 2 uses
  br i1 %.not80, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 noundef signext %i.cn, i64 %.sroa.027.0.i, i64 %.sroa.6.0.i)
          to label %bb.y unwind label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.s:                                             ; preds = %bb.p
  invoke void @_ZN6spdlog17pattern_formatter12handle_flag_INS_7details18null_scoped_padderEEEvcNS2_12padding_infoE(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 noundef signext %i.cn, i64 %.sroa.027.0.i, i64 %.sroa.6.0.i)
          to label %bb.y unwind label %bb.r

bb.t:                                             ; preds = %bb.b
  %.not76 = icmp eq ptr %i.s, null
  br i1 %.not76, label %bb.u, label %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113

._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113: ; preds = %bb.t
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.pre114 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.cp = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #45
          to label %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge unwind label %bb.v ; 8 uses

._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge: ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.cp, i8 0, i64 56, i1 false), !noalias !321
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details19aggregate_formatterE, i64 16), ptr %i.cp, align 16, !tbaa !18, !noalias !321
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 40 ; 2 uses
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !20, !noalias !321
  store ptr %i.cp, ptr %2, align 8, !tbaa !305
  %.pre112 = load i8, ptr %.sroa.064.098, align 1, !tbaa !21
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge
  %i.ct = phi ptr [ %i.cp, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.q, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ]
  %i.cu = phi ptr [ %i.cp, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.r, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ]
  %i.cv = phi ptr [ %i.cr, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %.pre114, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ] ; 2 uses
  %i.cw = phi i8 [ %.pre112, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.t, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ]
  %i.cx = phi ptr [ %i.cp, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.s, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 32 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !13 ; 4 uses
  %i.db = add i64 %i.da, 1                        ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 40 ; 2 uses
  %i.dd = icmp eq ptr %i.cv, %i.dc
  br i1 %i.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.de = icmp ult i64 %i.da, 16
  tail call void @llvm.assume(i1 %i.de)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.df = load i64, ptr %i.dc, align 8, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.dg = phi i64 [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.dh = icmp ugt i64 %i.db, %i.dg
  br i1 %i.dh, label %bb.w, label %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 noundef %i.da, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc26 unwind label %bb.x

.noexc26:                                         ; preds = %bb.w
  %.pre.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !17
  br label %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit

_ZN6spdlog7details19aggregate_formatter6add_chEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, %.noexc26
  %i.di = phi ptr [ %.pre.i.i.i, %.noexc26 ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.da
  store i8 %i.cw, ptr %i.dj, align 1, !tbaa !21
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !13
  %i.dk = load ptr, ptr %i.cy, align 8, !tbaa !17
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.db
  store i8 0, ptr %i.dl, align 1, !tbaa !21
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.y:                                             ; preds = %bb.q, %bb.s, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit
  %i.dn = phi ptr [ %i.ct, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ %i.bk, %bb.s ], [ %i.bk, %bb.q ] ; 2 uses
  %i.do = phi ptr [ %i.cu, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ null, %bb.s ], [ null, %bb.q ]
  %i.dp = phi ptr [ %i.cx, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ null, %bb.s ], [ null, %bb.q ]
  %.sroa.064.1 = phi ptr [ %.sroa.064.098, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ %.sroa.064.5, %bb.s ], [ %.sroa.064.5, %bb.q ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.064.1, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.dq, %i.e
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !324

.critedge:                                        ; preds = %bb.y, %bb.o
  %i.dr = phi ptr [ %i.dn, %bb.y ], [ %i.bk, %bb.o ] ; 5 uses
  %.not79 = icmp eq ptr %i.dr, null
  br i1 %.not79, label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53, label %bb.z

bb.z:                                             ; preds = %.critedge
  store ptr null, ptr %2, align 8, !tbaa !305
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !300 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !306
  %.not.i.i27 = icmp eq ptr %i.ds, %i.du
  br i1 %.not.i.i27, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = ptrtoint ptr %i.dr to i64
  store i64 %i.dv, ptr %i.ds, align 8, !tbaa !301
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dw, ptr %i.h, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53

bb.ab:                                            ; preds = %bb.z
  %i.dx = load ptr, ptr %i.f, align 8, !tbaa !299 ; 10 uses
  %i.dy = ptrtoint ptr %i.ds to i64               ; 3 uses
  %i.dz = ptrtoint ptr %i.dx to i64               ; 3 uses
  %i.ea = sub i64 %i.dy, %i.dz                    ; 3 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775800
  br i1 %i.eb, label %bb.ac, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc40 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48

.noexc40:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28: ; preds = %bb.ab
  %i.ec = ashr exact i64 %i.ea, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i.i29, %i.ec ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %i.ef = tail call i64 @llvm.umin.i64(i64 %i.ed, i64 1152921504606846975)
  %i.eg = select i1 %i.ee, i64 1152921504606846975, i64 %i.ef ; 3 uses
  %.not.i.i.i.i30 = icmp ne i64 %i.eg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i30)
  %i.eh = shl nuw nsw i64 %i.eg, 3
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #45
          to label %.noexc41 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48 ; 10 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ea
  %i.ek = ptrtoint ptr %i.dr to i64
  store i64 %i.ek, ptr %i.ej, align 8, !tbaa !301
  %.not10.i.i.i.i.i.i.i31 = icmp eq ptr %i.dx, %i.ds
  br i1 %.not10.i.i.i.i.i.i.i31, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i32.preheader

.lr.ph.i.i.i.i.i.i.i32.preheader:                 ; preds = %.noexc41
  %i.el = add i64 %i.dy, -8
  %i.em = sub i64 %i.el, %i.dz                    ; 2 uses
  %i.en = lshr i64 %i.em, 3
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check181 = icmp ult i64 %i.em, 136
  br i1 %min.iters.check181, label %.lr.ph.i.i.i.i.i.i.i32.preheader195, label %vector.memcheck174

vector.memcheck174:                               ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader
  %i.ep = add i64 %i.dy, -8
  %i.eq = sub i64 %i.ep, %i.dz
  %i.er = and i64 %i.eq, -8
  %i.es = add i64 %i.er, 8                        ; 2 uses
  %scevgep175 = getelementptr i8, ptr %i.ei, i64 %i.es
  %scevgep176 = getelementptr i8, ptr %i.dx, i64 %i.es
  %bound0177 = icmp ult ptr %i.ei, %scevgep176
  %bound1178 = icmp ult ptr %i.dx, %scevgep175
  %found.conflict179 = and i1 %bound0177, %bound1178
  br i1 %found.conflict179, label %.lr.ph.i.i.i.i.i.i.i32.preheader195, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck174
  %n.vec183 = and i64 %i.eo, 4611686018427387900  ; 3 uses
  %i.et = shl i64 %n.vec183, 3                    ; 2 uses
  %i.eu = getelementptr i8, ptr %i.ei, i64 %i.et  ; 2 uses
  %i.ev = getelementptr i8, ptr %i.dx, i64 %i.et
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next190, %vector.body184 ] ; 2 uses
  %i.ew = shl i64 %index185, 3                    ; 2 uses
  %next.gep186 = getelementptr i8, ptr %i.ei, i64 %i.ew ; 2 uses
  %next.gep187 = getelementptr i8, ptr %i.dx, i64 %i.ew ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.ex = getelementptr i8, ptr %next.gep187, i64 16
  %wide.load188 = load <2 x i64>, ptr %next.gep187, align 8, !tbaa !301, !alias.scope !330, !noalias !325
  %wide.load189 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !301, !alias.scope !330, !noalias !325
  %i.ey = getelementptr i8, ptr %next.gep186, i64 16
  store <2 x i64> %wide.load188, ptr %next.gep186, align 8, !tbaa !301, !alias.scope !333, !noalias !330
  store <2 x i64> %wide.load189, ptr %i.ey, align 8, !tbaa !301, !alias.scope !333, !noalias !330
  %i.ez = getelementptr i8, ptr %next.gep187, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep187, align 8, !tbaa !301, !alias.scope !330, !noalias !325
  store <2 x ptr> splat (ptr null), ptr %i.ez, align 8, !tbaa !301, !alias.scope !330, !noalias !325
  %index.next190 = add nuw i64 %index185, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.fa, label %middle.block191, label %vector.body184, !llvm.loop !335

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.eo, %n.vec183
  br i1 %cmp.n192, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i32.preheader195

.lr.ph.i.i.i.i.i.i.i32.preheader195:              ; preds = %vector.memcheck174, %.lr.ph.i.i.i.i.i.i.i32.preheader, %middle.block191
  %.012.i.i.i.i.i.i.i33.ph = phi ptr [ %i.ei, %vector.memcheck174 ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.eu, %middle.block191 ]
  %.0911.i.i.i.i.i.i.i34.ph = phi ptr [ %i.dx, %vector.memcheck174 ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.ev, %middle.block191 ]
  br label %.lr.ph.i.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i.i32:                           ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader195, %.lr.ph.i.i.i.i.i.i.i32
  %.012.i.i.i.i.i.i.i33 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.012.i.i.i.i.i.i.i33.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader195 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i34 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.0911.i.i.i.i.i.i.i34.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader195 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.fb = load i64, ptr %.0911.i.i.i.i.i.i.i34, align 8, !tbaa !301, !alias.scope !328, !noalias !325
  store i64 %i.fb, ptr %.012.i.i.i.i.i.i.i33, align 8, !tbaa !301, !alias.scope !325, !noalias !328
  store ptr null, ptr %.0911.i.i.i.i.i.i.i34, align 8, !tbaa !301, !alias.scope !328, !noalias !325
  %i.fc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i34, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i33, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.fc, %i.ds
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i32, !llvm.loop !336

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i32, %middle.block191, %.noexc41
  %.0.lcssa.i.i.i.i.i.i.i37 = phi ptr [ %i.ei, %.noexc41 ], [ %i.eu, %middle.block191 ], [ %i.fd, %.lr.ph.i.i.i.i.i.i.i32 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i37, i64 8
  %.not.i23.i.i.i38 = icmp eq ptr %i.dx, null
  br i1 %.not.i23.i.i.i38, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36
  tail call void @_ZdlPv(ptr noundef nonnull %i.dx) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39: ; preds = %bb.ad, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36
  store ptr %i.ei, ptr %i.f, align 8, !tbaa !299
  store ptr %i.fe, ptr %i.h, align 8, !tbaa !300
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eg
  store ptr %i.ff, ptr %i.dt, align 8, !tbaa !306
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28, %bb.ac
  %i.fg = landingpad { ptr, i32 }
          cleanup
  %i.fh = load ptr, ptr %i.dr, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  tail call void %i.fj(ptr noundef nonnull align 8 dereferenceable(24) %i.dr) #37, !inline_history !319
  br label %bb.ae

_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE5clearEv.exit, %bb.aa, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21, %bb.r, %bb.v, %bb.x, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48
  %.pn14 = phi { ptr, i32 } [ %i.fg, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48 ], [ %i.co, %bb.r ], [ %lpad.phi, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21 ], [ %i.dm, %bb.x ], [ %i.cs, %bb.v ]
  call void @_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %.pn14
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !206 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !254  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #37, !inline_history !337
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #44
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !257

_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !250
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !252
  %i.l = shl i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !250    ; 2 uses
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !299    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !300  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !301 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #37, !inline_history !338
  br label %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !304

_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !299
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
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6spdlog17pattern_formatterE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !20
  store i16 11045, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.d, align 2, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !20
  %i.g = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %._crit_edge.i.i
  store ptr %i.g, ptr %i.e, align 8, !tbaa !17
  %i.n = load i64, ptr %i.h, align 8, !tbaa !21
  store i64 %i.n, ptr %i.f, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.p, ptr %i.q, align 8, !tbaa !13
  store ptr %i.h, ptr %2, align 8, !tbaa !17
  store i64 0, ptr %i.o, align 8, !tbaa !13
  store i8 0, ptr %i.h, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %1, ptr %i.r, align 8, !tbaa !279
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.s, align 4, !tbaa !289
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  store ptr %i.w, ptr %i.v, align 8, !tbaa !250
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 1, ptr %i.x, align 8, !tbaa !252
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.z, align 8, !tbaa !145
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details14full_formatterE, i64 16), ptr %i.ac, align 8, !tbaa !18, !noalias !339
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 0, ptr %i.ae, align 8, !tbaa !342, !noalias !339
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i64 0, ptr %i.ai, align 8, !noalias !339
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ah, align 8, !tbaa !22, !noalias !339
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !24, !noalias !339
  store i64 250, ptr %i.ag, align 8, !tbaa !25, !noalias !339
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 320
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !noalias !339
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details13mdc_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.ak, align 8, !tbaa !18, !noalias !339
  store ptr null, ptr %3, align 8, !tbaa !343
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !300 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !306
  %.not.i.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = ptrtoint ptr %i.ac to i64
  store i64 %i.aq, ptr %i.an, align 8, !tbaa !301
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !299 ; 10 uses
  %i.at = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.au = ptrtoint ptr %i.as to i64               ; 3 uses
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc8 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13

.noexc8:                                          ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ax = ashr exact i64 %i.av, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #45
          to label %.noexc9 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13 ; 10 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av
  %i.bf = ptrtoint ptr %i.ac to i64
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !301
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.an
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc9
  %i.bg = add i64 %i.at, -8
  %i.bh = sub i64 %i.bg, %i.au                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bk = add i64 %i.at, -8
  %i.bl = sub i64 %i.bk, %i.au
  %i.bm = and i64 %i.bl, -8
  %i.bn = add i64 %i.bm, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bd, i64 %i.bn
  %scevgep29 = getelementptr i8, ptr %i.as, i64 %i.bn
  %bound0 = icmp ult ptr %i.bd, %scevgep29
  %bound1 = icmp ult ptr %i.as, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 4611686018427387900     ; 3 uses
  %i.bo = shl i64 %n.vec, 3                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bd, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.as, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.br ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.as, i64 %i.br ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.bs = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep30, align 8, !tbaa !301, !alias.scope !350, !noalias !345
  %wide.load31 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !301, !alias.scope !350, !noalias !345
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !301, !alias.scope !353, !noalias !350
  store <2 x i64> %wide.load31, ptr %i.bt, align 8, !tbaa !301, !alias.scope !353, !noalias !350
  %i.bu = getelementptr i8, ptr %next.gep30, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep30, align 8, !tbaa !301, !alias.scope !350, !noalias !345
  store <2 x ptr> splat (ptr null), ptr %i.bu, align 8, !tbaa !301, !alias.scope !350, !noalias !345
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.preheader33:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.bw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !301, !alias.scope !348, !noalias !345
  store i64 %i.bw, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !301, !alias.scope !345, !noalias !348
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !301, !alias.scope !348, !noalias !345
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.an
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !356

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc9
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.noexc9 ], [ %i.bp, %middle.block ], [ %i.by, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.as) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bd, ptr %i.u, align 8, !tbaa !299
  store ptr %i.bz, ptr %i.am, align 8, !tbaa !300
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.ca, ptr %i.ao, align 8, !tbaa !306
  br label %_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.e
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #37, !inline_history !319
  call void @_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #37
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13, %bb.g
  %.pn = phi { ptr, i32 } [ %i.cc, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13 ], [ %i.cb, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.v) #37
  call void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.u) #37
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.f
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.cg) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.b
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ci) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !300  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !306
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !301
  store i64 %i.e, ptr %i.b, align 8, !tbaa !301
  store ptr null, ptr %1, align 8, !tbaa !301
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !300
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !299    ; 10 uses
  %i.h = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #45 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  %i.t = load i64, ptr %1, align 8, !tbaa !301
  store i64 %i.t, ptr %i.s, align 8, !tbaa !301
  store ptr null, ptr %1, align 8, !tbaa !301
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = add i64 %i.h, -8
  %i.v = sub i64 %i.u, %i.i                       ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.y = add i64 %i.h, -8
  %i.z = sub i64 %i.y, %i.i
  %i.aa = and i64 %i.z, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ab
  %scevgep4 = getelementptr i8, ptr %i.g, i64 %i.ab
  %bound0 = icmp ult ptr %i.r, %scevgep4
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.g, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.af ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.g, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.ag = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !tbaa !301, !alias.scope !362, !noalias !357
  %wide.load6 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !301, !alias.scope !362, !noalias !357
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !301, !alias.scope !365, !noalias !362
  store <2 x i64> %wide.load6, ptr %i.ah, align 8, !tbaa !301, !alias.scope !365, !noalias !362
  %i.ai = getelementptr i8, ptr %next.gep5, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep5, align 8, !tbaa !301, !alias.scope !362, !noalias !357
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !301, !alias.scope !362, !noalias !357
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.preheader8:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !301, !alias.scope !360, !noalias !357
  store i64 %i.ak, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !301, !alias.scope !357, !noalias !360
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !301, !alias.scope !360, !noalias !357
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !368

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !299
  store ptr %i.an, ptr %i.a, align 8, !tbaa !300
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !306
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !343    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
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
  store ptr %i.a, ptr %3, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !252
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !145
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.017.023 = load ptr, ptr %i.f, align 8, !tbaa !206 ; 2 uses
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !254  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.116") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.k, align 8, !tbaa !21    ; 3 uses
  %i.r = sext i8 %i.q to i64                      ; 2 uses
  %i.s = load i64, ptr %i.b, align 8, !tbaa !252  ; 2 uses
  %i.t = urem i64 %i.r, %i.s                      ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !250
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !294  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !206  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i8, ptr %i.y, align 1, !tbaa !21
  %i.aa = icmp eq i8 %i.q, %i.z
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %bb.f
  %i.ab = icmp eq i8 %i.q, %i.ae
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !369

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %.020.i.i.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.x, %bb.d ]
  %i.ac = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !206 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.f

end_hunk_0
begin_hunk_1_@_ZN6spdlog17pattern_formatter15handle_padspec_ERN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_:bb.a
  store ptr %storemerge, ptr %0, align 8, !tbaa !397
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !320

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.03139.lcssa = phi i64 [ %i.j, %.lr.ph.preheader ], [ %i.s, %.lr.ph ] ; 2 uses
  %.pn38.lcssa = phi ptr [ %i.e, %.lr.ph.preheader ], [ %storemerge4056, %.lr.ph ]
  %.lcssa = phi i8 [ %i.k, %.lr.ph.preheader ], [ %i.m, %.lr.ph ]
  %i.t = icmp eq i8 %.lcssa, 33
  br i1 %i.t, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %.pn38.lcssa, i64 2
  store ptr %i.u, ptr %0, align 8, !tbaa !397
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !290
  %.not.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !206 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.f = load i8, ptr %i.e, align 1, !tbaa !21
  %i.g = icmp eq i8 %1, %i.f
  br i1 %i.g, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %bb.c, !llvm.loop !399

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = sext i8 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load i64, ptr %i.j, align 8, !tbaa !252  ; 2 uses
  %i.l = urem i64 %i.i, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !250
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !294  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !206  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i8, ptr %i.q, align 1, !tbaa !21
  %i.s = icmp eq i8 %1, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.t = icmp eq i8 %1, %i.w
  br i1 %i.t, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !369

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %i.p, %bb.f ]
  %i.u = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !206 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i8, ptr %i.v, align 1, !tbaa !21    ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = urem i64 %i.x, %i.k
  %.not19.i.i.i.i = icmp eq i64 %i.y, %i.l
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !369

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !369

_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.p, %bb.f ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !254 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.116") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  %i.ae = load ptr, ptr %5, align 8, !tbaa !254   ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.af, ptr noundef nonnull align 16 dereferenceable(14) %4, i64 14, i1 false), !tbaa.struct !400
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !254
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !300 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !306
  %.not.i.i10 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i10, label %bb.i, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit
  %i.al = ptrtoint ptr %i.ae to i64
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !301
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !299 ; 10 uses
  %i.ao = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i.i11 = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i11)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #45
          to label %.noexc12 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16 ; 10 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  %i.ba = ptrtoint ptr %i.ae to i64
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !301
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ai
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc12
  %i.bb = add i64 %i.ao, -8
  %i.bc = sub i64 %i.bb, %i.ap                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader1029, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bf = add i64 %i.ao, -8
  %i.bg = sub i64 %i.bf, %i.ap
  %i.bh = and i64 %i.bg, -8
  %i.bi = add i64 %i.bh, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.bi
  %scevgep957 = getelementptr i8, ptr %i.an, i64 %i.bi
  %bound0 = icmp ult ptr %i.ay, %scevgep957
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader1029, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bj = shl i64 %n.vec, 3                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ay, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.an, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bm ; 2 uses
  %next.gep958 = getelementptr i8, ptr %i.an, i64 %i.bm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.bn = getelementptr i8, ptr %next.gep958, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep958, align 8, !tbaa !301, !alias.scope !408, !noalias !403
  %wide.load959 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !301, !alias.scope !408, !noalias !403
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !301, !alias.scope !411, !noalias !408
  store <2 x i64> %wide.load959, ptr %i.bo, align 8, !tbaa !301, !alias.scope !411, !noalias !408
  %i.bp = getelementptr i8, ptr %next.gep958, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep958, align 8, !tbaa !301, !alias.scope !408, !noalias !403
  store <2 x ptr> splat (ptr null), ptr %i.bp, align 8, !tbaa !301, !alias.scope !408, !noalias !403
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !413

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1029

.lr.ph.i.i.i.i.i.i.i.preheader1029:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1029, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1029 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1029 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.br = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !301, !alias.scope !406, !noalias !403
  store i64 %i.br, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !301, !alias.scope !403, !noalias !406
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !301, !alias.scope !406, !noalias !403
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.ai
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !414

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.noexc12 ], [ %i.bk, %middle.block ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.an) #44
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.k
  store ptr %i.ay, ptr %i.ag, align 8, !tbaa !299
  store ptr %i.bu, ptr %i.ah, align 8, !tbaa !300
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bv, ptr %i.aj, align 8, !tbaa !306
  %.pre = load ptr, ptr %5, align 8, !tbaa !254   ; 3 uses
  %.not.i13 = icmp eq ptr %.pre, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.bw = load ptr, ptr %.pre, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(24) %.pre) #37, !inline_history !385
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #37, !inline_history !319
  %i.cd = load ptr, ptr %5, align 8, !tbaa !254   ; 3 uses
  %.not.i17 = icmp eq ptr %i.cd, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.cd) #37, !inline_history !385
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
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @_ZN6spdlog7details11make_uniqueINS0_14full_formatterEJRNS0_12padding_infoEEEESt10unique_ptrIT_St14default_deleteIS6_EEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.105") align 8 %7, ptr noundef nonnull align 8 dereferenceable(14) %4)
  %i.ci = load ptr, ptr %7, align 8, !tbaa !343
  store ptr null, ptr %7, align 8, !tbaa !343
  store ptr %i.ci, ptr %6, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cj = load ptr, ptr %6, align 8, !tbaa !301   ; 3 uses
  %.not.i20 = icmp eq ptr %i.cj, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21: ; preds = %bb.m
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !18
end_hunk_1
begin_hunk_2_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE:bb.a

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i73: ; preds = %bb.z
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(24) %i.el) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77

_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i73, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.fi

bb.aa:                                            ; preds = %.loopexit
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.eq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !429 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %2, ptr %i.er, align 8, !tbaa !30, !noalias !429
  %.sroa.2.0..sroa_idx.i.i.i81 = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i81, align 8, !noalias !429
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11v_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.eq, align 8, !tbaa !18, !noalias !429
  store ptr %i.eq, ptr %12, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.es = load ptr, ptr %12, align 8, !tbaa !301  ; 3 uses
  %.not.i82 = icmp eq ptr %i.es, null
  br i1 %.not.i82, label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83: ; preds = %bb.ab
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(24) %i.es) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.fh

bb.ac:                                            ; preds = %bb.aa
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = load ptr, ptr %12, align 8, !tbaa !301  ; 3 uses
  %.not.i86 = icmp eq ptr %i.ex, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87: ; preds = %bb.ac
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(24) %i.ex) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91

_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.fi

bb.ad:                                            ; preds = %.loopexit
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.fc = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !432 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 %2, ptr %i.fd, align 8, !tbaa !30, !noalias !432
  %.sroa.2.0..sroa_idx.i.i.i95 = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i95, align 8, !noalias !432
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11a_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.fc, align 8, !tbaa !18, !noalias !432
  store ptr %i.fc, ptr %13, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fe = load ptr, ptr %13, align 8, !tbaa !301  ; 3 uses
  %.not.i96 = icmp eq ptr %i.fe, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97: ; preds = %bb.ae
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(24) %i.fe) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.fi, align 4, !tbaa !289
  br label %bb.fh

bb.af:                                            ; preds = %bb.ad
  %i.fj = landingpad { ptr, i32 }
          cleanup
  %i.fk = load ptr, ptr %13, align 8, !tbaa !301  ; 3 uses
  %.not.i100 = icmp eq ptr %i.fk, null
  br i1 %.not.i100, label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101: ; preds = %bb.af
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(24) %i.fk) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105

_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.fi

bb.ag:                                            ; preds = %.loopexit
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.fp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !435 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i64 %2, ptr %i.fq, align 8, !tbaa !30, !noalias !435
  %.sroa.2.0..sroa_idx.i.i.i109 = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i109, align 8, !noalias !435
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11A_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.fp, align 8, !tbaa !18, !noalias !435
  store ptr %i.fp, ptr %14, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fr = load ptr, ptr %14, align 8, !tbaa !301  ; 3 uses
  %.not.i110 = icmp eq ptr %i.fr, null
  br i1 %.not.i110, label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111: ; preds = %bb.ah
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(24) %i.fr) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.fv, align 4, !tbaa !289
  br label %bb.fh

bb.ai:                                            ; preds = %bb.ag
  %i.fw = landingpad { ptr, i32 }
          cleanup
  %i.fx = load ptr, ptr %14, align 8, !tbaa !301  ; 3 uses
  %.not.i114 = icmp eq ptr %i.fx, null
  br i1 %.not.i114, label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115: ; preds = %bb.ai
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(24) %i.fx) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119

_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.fi

bb.aj:                                            ; preds = %.loopexit, %.loopexit
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.gc = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !438 ; 7 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i64 %2, ptr %i.gd, align 8, !tbaa !30, !noalias !438
  %.sroa.2.0..sroa_idx.i.i.i123 = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i123, align 8, !noalias !438
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11b_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.gc, align 8, !tbaa !18, !noalias !438
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !300 ; 6 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !306
  %.not.i.i124 = icmp eq ptr %i.gf, %i.gh
  br i1 %.not.i.i124, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gi = ptrtoint ptr %i.gc to i64
  store i64 %i.gi, ptr %i.gf, align 8, !tbaa !301
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.gj, ptr %i.ge, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.gk = load ptr, ptr %i.gb, align 8, !tbaa !299 ; 10 uses
  %i.gl = ptrtoint ptr %i.gf to i64               ; 3 uses
  %i.gm = ptrtoint ptr %i.gk to i64               ; 3 uses
  %i.gn = sub i64 %i.gl, %i.gm                    ; 3 uses
  %i.go = icmp eq i64 %i.gn, 9223372036854775800
  br i1 %i.go, label %bb.am, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc137 unwind label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149

.noexc137:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125: ; preds = %bb.al
  %i.gp = ashr exact i64 %i.gn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i126 = tail call i64 @llvm.umax.i64(i64 %i.gp, i64 1)
  %i.gq = add nsw i64 %.sroa.speculated.i.i.i.i126, %i.gp ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gp
  %i.gs = tail call i64 @llvm.umin.i64(i64 %i.gq, i64 1152921504606846975)
  %i.gt = select i1 %i.gr, i64 1152921504606846975, i64 %i.gs ; 3 uses
  %.not.i.i.i.i127 = icmp ne i64 %i.gt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i127)
  %i.gu = shl nuw nsw i64 %i.gt, 3
  %i.gv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #45
          to label %.noexc138 unwind label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149 ; 10 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gn
  %i.gx = ptrtoint ptr %i.gc to i64
  store i64 %i.gx, ptr %i.gw, align 8, !tbaa !301
  %.not10.i.i.i.i.i.i.i128 = icmp eq ptr %i.gk, %i.gf
  br i1 %.not10.i.i.i.i.i.i.i128, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader

.lr.ph.i.i.i.i.i.i.i129.preheader:                ; preds = %.noexc138
  %i.gy = add i64 %i.gl, -8
  %i.gz = sub i64 %i.gy, %i.gm                    ; 2 uses
  %i.ha = lshr i64 %i.gz, 3
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %min.iters.check1010 = icmp ult i64 %i.gz, 136
  br i1 %min.iters.check1010, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024, label %vector.memcheck1003

vector.memcheck1003:                              ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader
  %i.hc = add i64 %i.gl, -8
  %i.hd = sub i64 %i.hc, %i.gm
  %i.he = and i64 %i.hd, -8
  %i.hf = add i64 %i.he, 8                        ; 2 uses
  %scevgep1004 = getelementptr i8, ptr %i.gv, i64 %i.hf
  %scevgep1005 = getelementptr i8, ptr %i.gk, i64 %i.hf
  %bound01006 = icmp ult ptr %i.gv, %scevgep1005
  %bound11007 = icmp ult ptr %i.gk, %scevgep1004
  %found.conflict1008 = and i1 %bound01006, %bound11007
  br i1 %found.conflict1008, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024, label %vector.ph1011

vector.ph1011:                                    ; preds = %vector.memcheck1003
  %n.vec1012 = and i64 %i.hb, 4611686018427387900 ; 3 uses
  %i.hg = shl i64 %n.vec1012, 3                   ; 2 uses
  %i.hh = getelementptr i8, ptr %i.gv, i64 %i.hg  ; 2 uses
  %i.hi = getelementptr i8, ptr %i.gk, i64 %i.hg
  br label %vector.body1013

vector.body1013:                                  ; preds = %vector.body1013, %vector.ph1011
  %index1014 = phi i64 [ 0, %vector.ph1011 ], [ %index.next1019, %vector.body1013 ] ; 2 uses
  %i.hj = shl i64 %index1014, 3                   ; 2 uses
  %next.gep1015 = getelementptr i8, ptr %i.gv, i64 %i.hj ; 2 uses
  %next.gep1016 = getelementptr i8, ptr %i.gk, i64 %i.hj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.hk = getelementptr i8, ptr %next.gep1016, i64 16
  %wide.load1017 = load <2 x i64>, ptr %next.gep1016, align 8, !tbaa !301, !alias.scope !446, !noalias !441
  %wide.load1018 = load <2 x i64>, ptr %i.hk, align 8, !tbaa !301, !alias.scope !446, !noalias !441
  %i.hl = getelementptr i8, ptr %next.gep1015, i64 16
  store <2 x i64> %wide.load1017, ptr %next.gep1015, align 8, !tbaa !301, !alias.scope !449, !noalias !446
  store <2 x i64> %wide.load1018, ptr %i.hl, align 8, !tbaa !301, !alias.scope !449, !noalias !446
  %i.hm = getelementptr i8, ptr %next.gep1016, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1016, align 8, !tbaa !301, !alias.scope !446, !noalias !441
  store <2 x ptr> splat (ptr null), ptr %i.hm, align 8, !tbaa !301, !alias.scope !446, !noalias !441
  %index.next1019 = add nuw i64 %index1014, 4     ; 2 uses
  %i.hn = icmp eq i64 %index.next1019, %n.vec1012
  br i1 %i.hn, label %middle.block1020, label %vector.body1013, !llvm.loop !451

middle.block1020:                                 ; preds = %vector.body1013
  %cmp.n1021 = icmp eq i64 %i.hb, %n.vec1012
  br i1 %cmp.n1021, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024

.lr.ph.i.i.i.i.i.i.i129.preheader1024:            ; preds = %vector.memcheck1003, %.lr.ph.i.i.i.i.i.i.i129.preheader, %middle.block1020
  %.012.i.i.i.i.i.i.i130.ph = phi ptr [ %i.gv, %vector.memcheck1003 ], [ %i.gv, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.hh, %middle.block1020 ]
  %.0911.i.i.i.i.i.i.i131.ph = phi ptr [ %i.gk, %vector.memcheck1003 ], [ %i.gk, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.hi, %middle.block1020 ]
  br label %.lr.ph.i.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i.i129:                          ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader1024, %.lr.ph.i.i.i.i.i.i.i129
  %.012.i.i.i.i.i.i.i130 = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.012.i.i.i.i.i.i.i130.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader1024 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i131 = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.0911.i.i.i.i.i.i.i131.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader1024 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.ho = load i64, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !301, !alias.scope !444, !noalias !441
  store i64 %i.ho, ptr %.012.i.i.i.i.i.i.i130, align 8, !tbaa !301, !alias.scope !441, !noalias !444
  store ptr null, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !301, !alias.scope !444, !noalias !441
  %i.hp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i131, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i130, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %i.hp, %i.gf
  br i1 %.not.i.i.i.i.i.i.i132, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129, !llvm.loop !452

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133: ; preds = %.lr.ph.i.i.i.i.i.i.i129, %middle.block1020, %.noexc138
  %.0.lcssa.i.i.i.i.i.i.i134 = phi ptr [ %i.gv, %.noexc138 ], [ %i.hh, %middle.block1020 ], [ %i.hq, %.lr.ph.i.i.i.i.i.i.i129 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i134, i64 8
  %.not.i23.i.i.i135 = icmp eq ptr %i.gk, null
  br i1 %.not.i23.i.i.i135, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133
  tail call void @_ZdlPv(ptr noundef nonnull %i.gk) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136: ; preds = %bb.an, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133
  store ptr %i.gv, ptr %i.gb, align 8, !tbaa !299
  store ptr %i.hr, ptr %i.ge, align 8, !tbaa !300
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gt
  store ptr %i.hs, ptr %i.gg, align 8, !tbaa !306
  br label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136, %bb.ak
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ht, align 4, !tbaa !289
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149: ; preds = %bb.am, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = load ptr, ptr %i.gc, align 8, !tbaa !18
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8
  tail call void %i.hx(ptr noundef nonnull align 8 dereferenceable(24) %i.gc) #37, !inline_history !319
  br label %bb.fi

bb.ao:                                            ; preds = %.loopexit
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  %i.hz = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !453 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i64 %2, ptr %i.ia, align 8, !tbaa !30, !noalias !453
  %.sroa.2.0..sroa_idx.i.i.i153 = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i153, align 8, !noalias !453
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11B_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.hz, align 8, !tbaa !18, !noalias !453
  store ptr %i.hz, ptr %15, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ib = load ptr, ptr %15, align 8, !tbaa !301  ; 3 uses
  %.not.i154 = icmp eq ptr %i.ib, null
  br i1 %.not.i154, label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155: ; preds = %bb.ap
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(24) %i.ib) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.if, align 4, !tbaa !289
  br label %bb.fh

bb.aq:                                            ; preds = %bb.ao
  %i.ig = landingpad { ptr, i32 }
          cleanup
  %i.ih = load ptr, ptr %15, align 8, !tbaa !301  ; 3 uses
  %.not.i158 = icmp eq ptr %i.ih, null
  br i1 %.not.i158, label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159: ; preds = %bb.aq
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !18
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(24) %i.ih) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163

_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.fi

bb.ar:                                            ; preds = %.loopexit
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.im = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !456 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store i64 %2, ptr %i.in, align 8, !tbaa !30, !noalias !456
  %.sroa.2.0..sroa_idx.i.i.i167 = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i167, align 8, !noalias !456
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11c_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.im, align 8, !tbaa !18, !noalias !456
  store ptr %i.im, ptr %16, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.il, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.io = load ptr, ptr %16, align 8, !tbaa !301  ; 3 uses
  %.not.i168 = icmp eq ptr %i.io, null
  br i1 %.not.i168, label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169: ; preds = %bb.as
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !18
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(24) %i.io) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.is, align 4, !tbaa !289
  br label %bb.fh

bb.at:                                            ; preds = %bb.ar
  %i.it = landingpad { ptr, i32 }
          cleanup
  %i.iu = load ptr, ptr %16, align 8, !tbaa !301  ; 3 uses
  %.not.i172 = icmp eq ptr %i.iu, null
  br i1 %.not.i172, label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173: ; preds = %bb.at
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(24) %i.iu) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177

_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.fi

bb.au:                                            ; preds = %.loopexit
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  %i.iz = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !459 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i64 %2, ptr %i.ja, align 8, !tbaa !30, !noalias !459
  %.sroa.2.0..sroa_idx.i.i.i181 = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i181, align 8, !noalias !459
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11C_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.iz, align 8, !tbaa !18, !noalias !459
  store ptr %i.iz, ptr %17, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.iy, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jb = load ptr, ptr %17, align 8, !tbaa !301  ; 3 uses
  %.not.i182 = icmp eq ptr %i.jb, null
  br i1 %.not.i182, label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183: ; preds = %bb.av
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !18
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(24) %i.jb) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.jf, align 4, !tbaa !289
  br label %bb.fh

bb.aw:                                            ; preds = %bb.au
  %i.jg = landingpad { ptr, i32 }
          cleanup
  %i.jh = load ptr, ptr %17, align 8, !tbaa !301  ; 3 uses
  %.not.i186 = icmp eq ptr %i.jh, null
  br i1 %.not.i186, label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187: ; preds = %bb.aw
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !18
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8
  call void %i.jk(ptr noundef nonnull align 8 dereferenceable(24) %i.jh) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191

_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.fi

bb.ax:                                            ; preds = %.loopexit
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  %i.jm = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !462 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i64 %2, ptr %i.jn, align 8, !tbaa !30, !noalias !462
  %.sroa.2.0..sroa_idx.i.i.i195 = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i195, align 8, !noalias !462
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11Y_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.jm, align 8, !tbaa !18, !noalias !462
  store ptr %i.jm, ptr %18, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.jl, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jo = load ptr, ptr %18, align 8, !tbaa !301  ; 3 uses
  %.not.i196 = icmp eq ptr %i.jo, null
  br i1 %.not.i196, label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197: ; preds = %bb.ay
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(24) %i.jo) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.js, align 4, !tbaa !289
  br label %bb.fh

bb.az:                                            ; preds = %bb.ax
  %i.jt = landingpad { ptr, i32 }
          cleanup
  %i.ju = load ptr, ptr %18, align 8, !tbaa !301  ; 3 uses
  %.not.i200 = icmp eq ptr %i.ju, null
  br i1 %.not.i200, label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201: ; preds = %bb.az
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !18
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(24) %i.ju) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205

_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  br label %bb.fi

bb.ba:                                            ; preds = %.loopexit, %.loopexit
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.jz = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !465 ; 7 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store i64 %2, ptr %i.ka, align 8, !tbaa !30, !noalias !465
  %.sroa.2.0..sroa_idx.i.i.i209 = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i209, align 8, !noalias !465
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11D_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.jz, align 8, !tbaa !18, !noalias !465
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !300 ; 6 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !306
  %.not.i.i210 = icmp eq ptr %i.kc, %i.ke
  br i1 %.not.i.i210, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kf = ptrtoint ptr %i.jz to i64
  store i64 %i.kf, ptr %i.kc, align 8, !tbaa !301
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store ptr %i.kg, ptr %i.kb, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.bc:                                            ; preds = %bb.ba
  %i.kh = load ptr, ptr %i.jy, align 8, !tbaa !299 ; 10 uses
  %i.ki = ptrtoint ptr %i.kc to i64               ; 3 uses
  %i.kj = ptrtoint ptr %i.kh to i64               ; 3 uses
  %i.kk = sub i64 %i.ki, %i.kj                    ; 3 uses
  %i.kl = icmp eq i64 %i.kk, 9223372036854775800
  br i1 %i.kl, label %bb.bd, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc223 unwind label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235

.noexc223:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211: ; preds = %bb.bc
  %i.km = ashr exact i64 %i.kk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i212 = tail call i64 @llvm.umax.i64(i64 %i.km, i64 1)
  %i.kn = add nsw i64 %.sroa.speculated.i.i.i.i212, %i.km ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %i.km
  %i.kp = tail call i64 @llvm.umin.i64(i64 %i.kn, i64 1152921504606846975)
  %i.kq = select i1 %i.ko, i64 1152921504606846975, i64 %i.kp ; 3 uses
  %.not.i.i.i.i213 = icmp ne i64 %i.kq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i213)
  %i.kr = shl nuw nsw i64 %i.kq, 3
  %i.ks = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kr) #45
          to label %.noexc224 unwind label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235 ; 10 uses

.noexc224:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kk
  %i.ku = ptrtoint ptr %i.jz to i64
  store i64 %i.ku, ptr %i.kt, align 8, !tbaa !301
  %.not10.i.i.i.i.i.i.i214 = icmp eq ptr %i.kh, %i.kc
  br i1 %.not10.i.i.i.i.i.i.i214, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215.preheader

.lr.ph.i.i.i.i.i.i.i215.preheader:                ; preds = %.noexc224
  %i.kv = add i64 %i.ki, -8
  %i.kw = sub i64 %i.kv, %i.kj                    ; 2 uses
  %i.kx = lshr i64 %i.kw, 3
  %i.ky = add nuw nsw i64 %i.kx, 1                ; 2 uses
  %min.iters.check989 = icmp ult i64 %i.kw, 136
  br i1 %min.iters.check989, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025, label %vector.memcheck982

vector.memcheck982:                               ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader
  %i.kz = add i64 %i.ki, -8
  %i.la = sub i64 %i.kz, %i.kj
  %i.lb = and i64 %i.la, -8
  %i.lc = add i64 %i.lb, 8                        ; 2 uses
  %scevgep983 = getelementptr i8, ptr %i.ks, i64 %i.lc
  %scevgep984 = getelementptr i8, ptr %i.kh, i64 %i.lc
  %bound0985 = icmp ult ptr %i.ks, %scevgep984
  %bound1986 = icmp ult ptr %i.kh, %scevgep983
  %found.conflict987 = and i1 %bound0985, %bound1986
  br i1 %found.conflict987, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025, label %vector.ph990

vector.ph990:                                     ; preds = %vector.memcheck982
  %n.vec991 = and i64 %i.ky, 4611686018427387900  ; 3 uses
  %i.ld = shl i64 %n.vec991, 3                    ; 2 uses
  %i.le = getelementptr i8, ptr %i.ks, i64 %i.ld  ; 2 uses
  %i.lf = getelementptr i8, ptr %i.kh, i64 %i.ld
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph990
  %index993 = phi i64 [ 0, %vector.ph990 ], [ %index.next998, %vector.body992 ] ; 2 uses
  %i.lg = shl i64 %index993, 3                    ; 2 uses
  %next.gep994 = getelementptr i8, ptr %i.ks, i64 %i.lg ; 2 uses
  %next.gep995 = getelementptr i8, ptr %i.kh, i64 %i.lg ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.lh = getelementptr i8, ptr %next.gep995, i64 16
  %wide.load996 = load <2 x i64>, ptr %next.gep995, align 8, !tbaa !301, !alias.scope !473, !noalias !468
  %wide.load997 = load <2 x i64>, ptr %i.lh, align 8, !tbaa !301, !alias.scope !473, !noalias !468
  %i.li = getelementptr i8, ptr %next.gep994, i64 16
  store <2 x i64> %wide.load996, ptr %next.gep994, align 8, !tbaa !301, !alias.scope !476, !noalias !473
  store <2 x i64> %wide.load997, ptr %i.li, align 8, !tbaa !301, !alias.scope !476, !noalias !473
  %i.lj = getelementptr i8, ptr %next.gep995, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep995, align 8, !tbaa !301, !alias.scope !473, !noalias !468
  store <2 x ptr> splat (ptr null), ptr %i.lj, align 8, !tbaa !301, !alias.scope !473, !noalias !468
  %index.next998 = add nuw i64 %index993, 4       ; 2 uses
  %i.lk = icmp eq i64 %index.next998, %n.vec991
  br i1 %i.lk, label %middle.block999, label %vector.body992, !llvm.loop !478

middle.block999:                                  ; preds = %vector.body992
  %cmp.n1000 = icmp eq i64 %i.ky, %n.vec991
  br i1 %cmp.n1000, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025

.lr.ph.i.i.i.i.i.i.i215.preheader1025:            ; preds = %vector.memcheck982, %.lr.ph.i.i.i.i.i.i.i215.preheader, %middle.block999
  %.012.i.i.i.i.i.i.i216.ph = phi ptr [ %i.ks, %vector.memcheck982 ], [ %i.ks, %.lr.ph.i.i.i.i.i.i.i215.preheader ], [ %i.le, %middle.block999 ]
  %.0911.i.i.i.i.i.i.i217.ph = phi ptr [ %i.kh, %vector.memcheck982 ], [ %i.kh, %.lr.ph.i.i.i.i.i.i.i215.preheader ], [ %i.lf, %middle.block999 ]
  br label %.lr.ph.i.i.i.i.i.i.i215

.lr.ph.i.i.i.i.i.i.i215:                          ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader1025, %.lr.ph.i.i.i.i.i.i.i215
  %.012.i.i.i.i.i.i.i216 = phi ptr [ %i.ln, %.lr.ph.i.i.i.i.i.i.i215 ], [ %.012.i.i.i.i.i.i.i216.ph, %.lr.ph.i.i.i.i.i.i.i215.preheader1025 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i217 = phi ptr [ %i.lm, %.lr.ph.i.i.i.i.i.i.i215 ], [ %.0911.i.i.i.i.i.i.i217.ph, %.lr.ph.i.i.i.i.i.i.i215.preheader1025 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.ll = load i64, ptr %.0911.i.i.i.i.i.i.i217, align 8, !tbaa !301, !alias.scope !471, !noalias !468
  store i64 %i.ll, ptr %.012.i.i.i.i.i.i.i216, align 8, !tbaa !301, !alias.scope !468, !noalias !471
  store ptr null, ptr %.0911.i.i.i.i.i.i.i217, align 8, !tbaa !301, !alias.scope !471, !noalias !468
  %i.lm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i217, i64 8 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i216, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i218 = icmp eq ptr %i.lm, %i.kc
  br i1 %.not.i.i.i.i.i.i.i218, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215, !llvm.loop !479

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219: ; preds = %.lr.ph.i.i.i.i.i.i.i215, %middle.block999, %.noexc224
  %.0.lcssa.i.i.i.i.i.i.i220 = phi ptr [ %i.ks, %.noexc224 ], [ %i.le, %middle.block999 ], [ %i.ln, %.lr.ph.i.i.i.i.i.i.i215 ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i220, i64 8
  %.not.i23.i.i.i221 = icmp eq ptr %i.kh, null
  br i1 %.not.i23.i.i.i221, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219
  tail call void @_ZdlPv(ptr noundef nonnull %i.kh) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222: ; preds = %bb.be, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219
  store ptr %i.ks, ptr %i.jy, align 8, !tbaa !299
  store ptr %i.lo, ptr %i.kb, align 8, !tbaa !300
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kq
  store ptr %i.lp, ptr %i.kd, align 8, !tbaa !306
  br label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222, %bb.bb
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.lq, align 4, !tbaa !289
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235: ; preds = %bb.bd, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211
  %i.lr = landingpad { ptr, i32 }
          cleanup
  %i.ls = load ptr, ptr %i.jz, align 8, !tbaa !18
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8
  tail call void %i.lu(ptr noundef nonnull align 8 dereferenceable(24) %i.jz) #37, !inline_history !319
  br label %bb.fi

bb.bf:                                            ; preds = %.loopexit
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  %i.lw = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !480 ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store i64 %2, ptr %i.lx, align 8, !tbaa !30, !noalias !480
  %.sroa.2.0..sroa_idx.i.i.i239 = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i239, align 8, !noalias !480
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11m_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.lw, align 8, !tbaa !18, !noalias !480
  store ptr %i.lw, ptr %19, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ly = load ptr, ptr %19, align 8, !tbaa !301  ; 3 uses
  %.not.i240 = icmp eq ptr %i.ly, null
  br i1 %.not.i240, label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241: ; preds = %bb.bg
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !18
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(24) %i.ly) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.mc, align 4, !tbaa !289
  br label %bb.fh

bb.bh:                                            ; preds = %bb.bf
  %i.md = landingpad { ptr, i32 }
          cleanup
  %i.me = load ptr, ptr %19, align 8, !tbaa !301  ; 3 uses
  %.not.i244 = icmp eq ptr %i.me, null
  br i1 %.not.i244, label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245: ; preds = %bb.bh
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !18
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(24) %i.me) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249

_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  br label %bb.fi

bb.bi:                                            ; preds = %.loopexit
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  %i.mj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !483 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store i64 %2, ptr %i.mk, align 8, !tbaa !30, !noalias !483
  %.sroa.2.0..sroa_idx.i.i.i253 = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i253, align 8, !noalias !483
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11d_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.mj, align 8, !tbaa !18, !noalias !483
  store ptr %i.mj, ptr %20, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.mi, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ml = load ptr, ptr %20, align 8, !tbaa !301  ; 3 uses
  %.not.i254 = icmp eq ptr %i.ml, null
  br i1 %.not.i254, label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255: ; preds = %bb.bj
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !18
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8
  call void %i.mo(ptr noundef nonnull align 8 dereferenceable(24) %i.ml) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.mp, align 4, !tbaa !289
  br label %bb.fh

bb.bk:                                            ; preds = %bb.bi
  %i.mq = landingpad { ptr, i32 }
          cleanup
  %i.mr = load ptr, ptr %20, align 8, !tbaa !301  ; 3 uses
  %.not.i258 = icmp eq ptr %i.mr, null
  br i1 %.not.i258, label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259: ; preds = %bb.bk
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !18
end_hunk_2
begin_hunk_3_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE:bb.a
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !18
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qq = load ptr, ptr %i.qp, align 8
  call void %i.qq(ptr noundef nonnull align 8 dereferenceable(24) %i.qn) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375

_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i371, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  br label %bb.fi

bb.cj:                                            ; preds = %.loopexit
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #37
  %i.qs = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !510 ; 4 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  store i64 %2, ptr %i.qt, align 8, !tbaa !30, !noalias !510
  %.sroa.2.0..sroa_idx.i.i.i379 = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i379, align 8, !noalias !510
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11p_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.qs, align 8, !tbaa !18, !noalias !510
  store ptr %i.qs, ptr %29, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.qr, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.qu = load ptr, ptr %29, align 8, !tbaa !301  ; 3 uses
  %.not.i380 = icmp eq ptr %i.qu, null
  br i1 %.not.i380, label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381: ; preds = %bb.ck
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !18
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8
  call void %i.qx(ptr noundef nonnull align 8 dereferenceable(24) %i.qu) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.qy, align 4, !tbaa !289
  br label %bb.fh

bb.cl:                                            ; preds = %bb.cj
  %i.qz = landingpad { ptr, i32 }
          cleanup
  %i.ra = load ptr, ptr %29, align 8, !tbaa !301  ; 3 uses
  %.not.i384 = icmp eq ptr %i.ra, null
  br i1 %.not.i384, label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385: ; preds = %bb.cl
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !18
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8
  call void %i.rd(ptr noundef nonnull align 8 dereferenceable(24) %i.ra) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389

_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  br label %bb.fi

bb.cm:                                            ; preds = %.loopexit
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37
  %i.rf = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !513 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store i64 %2, ptr %i.rg, align 8, !tbaa !30, !noalias !513
  %.sroa.2.0..sroa_idx.i.i.i393 = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i393, align 8, !noalias !513
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11r_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.rf, align 8, !tbaa !18, !noalias !513
  store ptr %i.rf, ptr %30, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.re, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.rh = load ptr, ptr %30, align 8, !tbaa !301  ; 3 uses
  %.not.i394 = icmp eq ptr %i.rh, null
  br i1 %.not.i394, label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395: ; preds = %bb.cn
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !18
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(24) %i.rh) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.rl, align 4, !tbaa !289
  br label %bb.fh

bb.co:                                            ; preds = %bb.cm
  %i.rm = landingpad { ptr, i32 }
          cleanup
  %i.rn = load ptr, ptr %30, align 8, !tbaa !301  ; 3 uses
  %.not.i398 = icmp eq ptr %i.rn, null
  br i1 %.not.i398, label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399: ; preds = %bb.co
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !18
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rq = load ptr, ptr %i.rp, align 8
  call void %i.rq(ptr noundef nonnull align 8 dereferenceable(24) %i.rn) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403

_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  br label %bb.fi

bb.cp:                                            ; preds = %.loopexit
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37
  %i.rs = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !516 ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  store i64 %2, ptr %i.rt, align 8, !tbaa !30, !noalias !516
  %.sroa.2.0..sroa_idx.i.i.i407 = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i407, align 8, !noalias !516
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11R_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.rs, align 8, !tbaa !18, !noalias !516
  store ptr %i.rs, ptr %31, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.rr, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ru = load ptr, ptr %31, align 8, !tbaa !301  ; 3 uses
  %.not.i408 = icmp eq ptr %i.ru, null
  br i1 %.not.i408, label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409: ; preds = %bb.cq
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !18
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8
  call void %i.rx(ptr noundef nonnull align 8 dereferenceable(24) %i.ru) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ry, align 4, !tbaa !289
  br label %bb.fh

bb.cr:                                            ; preds = %bb.cp
  %i.rz = landingpad { ptr, i32 }
          cleanup
  %i.sa = load ptr, ptr %31, align 8, !tbaa !301  ; 3 uses
  %.not.i412 = icmp eq ptr %i.sa, null
  br i1 %.not.i412, label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413: ; preds = %bb.cr
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !18
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8
  call void %i.sd(ptr noundef nonnull align 8 dereferenceable(24) %i.sa) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417

_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  br label %bb.fi

bb.cs:                                            ; preds = %.loopexit, %.loopexit
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.sf = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !519 ; 7 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  store i64 %2, ptr %i.sg, align 8, !tbaa !30, !noalias !519
  %.sroa.2.0..sroa_idx.i.i.i421 = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i421, align 8, !noalias !519
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11T_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.sf, align 8, !tbaa !18, !noalias !519
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !300 ; 6 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !306
  %.not.i.i422 = icmp eq ptr %i.si, %i.sk
  br i1 %.not.i.i422, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sl = ptrtoint ptr %i.sf to i64
  store i64 %i.sl, ptr %i.si, align 8, !tbaa !301
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  store ptr %i.sm, ptr %i.sh, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.cu:                                            ; preds = %bb.cs
  %i.sn = load ptr, ptr %i.se, align 8, !tbaa !299 ; 10 uses
  %i.so = ptrtoint ptr %i.si to i64               ; 3 uses
  %i.sp = ptrtoint ptr %i.sn to i64               ; 3 uses
  %i.sq = sub i64 %i.so, %i.sp                    ; 3 uses
  %i.sr = icmp eq i64 %i.sq, 9223372036854775800
  br i1 %i.sr, label %bb.cv, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc435 unwind label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447

.noexc435:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423: ; preds = %bb.cu
  %i.ss = ashr exact i64 %i.sq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i424 = tail call i64 @llvm.umax.i64(i64 %i.ss, i64 1)
  %i.st = add nsw i64 %.sroa.speculated.i.i.i.i424, %i.ss ; 2 uses
  %i.su = icmp ult i64 %i.st, %i.ss
  %i.sv = tail call i64 @llvm.umin.i64(i64 %i.st, i64 1152921504606846975)
  %i.sw = select i1 %i.su, i64 1152921504606846975, i64 %i.sv ; 3 uses
  %.not.i.i.i.i425 = icmp ne i64 %i.sw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i425)
  %i.sx = shl nuw nsw i64 %i.sw, 3
  %i.sy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sx) #45
          to label %.noexc436 unwind label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447 ; 10 uses

.noexc436:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.sq
  %i.ta = ptrtoint ptr %i.sf to i64
  store i64 %i.ta, ptr %i.sz, align 8, !tbaa !301
  %.not10.i.i.i.i.i.i.i426 = icmp eq ptr %i.sn, %i.si
  br i1 %.not10.i.i.i.i.i.i.i426, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427.preheader

.lr.ph.i.i.i.i.i.i.i427.preheader:                ; preds = %.noexc436
  %i.tb = add i64 %i.so, -8
  %i.tc = sub i64 %i.tb, %i.sp                    ; 2 uses
  %i.td = lshr i64 %i.tc, 3
  %i.te = add nuw nsw i64 %i.td, 1                ; 2 uses
  %min.iters.check968 = icmp ult i64 %i.tc, 136
  br i1 %min.iters.check968, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027, label %vector.memcheck961

vector.memcheck961:                               ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader
  %i.tf = add i64 %i.so, -8
  %i.tg = sub i64 %i.tf, %i.sp
  %i.th = and i64 %i.tg, -8
  %i.ti = add i64 %i.th, 8                        ; 2 uses
  %scevgep962 = getelementptr i8, ptr %i.sy, i64 %i.ti
  %scevgep963 = getelementptr i8, ptr %i.sn, i64 %i.ti
  %bound0964 = icmp ult ptr %i.sy, %scevgep963
  %bound1965 = icmp ult ptr %i.sn, %scevgep962
  %found.conflict966 = and i1 %bound0964, %bound1965
  br i1 %found.conflict966, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027, label %vector.ph969

vector.ph969:                                     ; preds = %vector.memcheck961
  %n.vec970 = and i64 %i.te, 4611686018427387900  ; 3 uses
  %i.tj = shl i64 %n.vec970, 3                    ; 2 uses
  %i.tk = getelementptr i8, ptr %i.sy, i64 %i.tj  ; 2 uses
  %i.tl = getelementptr i8, ptr %i.sn, i64 %i.tj
  br label %vector.body971

vector.body971:                                   ; preds = %vector.body971, %vector.ph969
  %index972 = phi i64 [ 0, %vector.ph969 ], [ %index.next977, %vector.body971 ] ; 2 uses
  %i.tm = shl i64 %index972, 3                    ; 2 uses
  %next.gep973 = getelementptr i8, ptr %i.sy, i64 %i.tm ; 2 uses
  %next.gep974 = getelementptr i8, ptr %i.sn, i64 %i.tm ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.tn = getelementptr i8, ptr %next.gep974, i64 16
  %wide.load975 = load <2 x i64>, ptr %next.gep974, align 8, !tbaa !301, !alias.scope !527, !noalias !522
  %wide.load976 = load <2 x i64>, ptr %i.tn, align 8, !tbaa !301, !alias.scope !527, !noalias !522
  %i.to = getelementptr i8, ptr %next.gep973, i64 16
  store <2 x i64> %wide.load975, ptr %next.gep973, align 8, !tbaa !301, !alias.scope !530, !noalias !527
  store <2 x i64> %wide.load976, ptr %i.to, align 8, !tbaa !301, !alias.scope !530, !noalias !527
  %i.tp = getelementptr i8, ptr %next.gep974, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep974, align 8, !tbaa !301, !alias.scope !527, !noalias !522
  store <2 x ptr> splat (ptr null), ptr %i.tp, align 8, !tbaa !301, !alias.scope !527, !noalias !522
  %index.next977 = add nuw i64 %index972, 4       ; 2 uses
  %i.tq = icmp eq i64 %index.next977, %n.vec970
  br i1 %i.tq, label %middle.block978, label %vector.body971, !llvm.loop !532

middle.block978:                                  ; preds = %vector.body971
  %cmp.n979 = icmp eq i64 %i.te, %n.vec970
  br i1 %cmp.n979, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027

.lr.ph.i.i.i.i.i.i.i427.preheader1027:            ; preds = %vector.memcheck961, %.lr.ph.i.i.i.i.i.i.i427.preheader, %middle.block978
  %.012.i.i.i.i.i.i.i428.ph = phi ptr [ %i.sy, %vector.memcheck961 ], [ %i.sy, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.tk, %middle.block978 ]
  %.0911.i.i.i.i.i.i.i429.ph = phi ptr [ %i.sn, %vector.memcheck961 ], [ %i.sn, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.tl, %middle.block978 ]
  br label %.lr.ph.i.i.i.i.i.i.i427

.lr.ph.i.i.i.i.i.i.i427:                          ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader1027, %.lr.ph.i.i.i.i.i.i.i427
  %.012.i.i.i.i.i.i.i428 = phi ptr [ %i.tt, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.012.i.i.i.i.i.i.i428.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader1027 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i429 = phi ptr [ %i.ts, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.0911.i.i.i.i.i.i.i429.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader1027 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.tr = load i64, ptr %.0911.i.i.i.i.i.i.i429, align 8, !tbaa !301, !alias.scope !525, !noalias !522
  store i64 %i.tr, ptr %.012.i.i.i.i.i.i.i428, align 8, !tbaa !301, !alias.scope !522, !noalias !525
  store ptr null, ptr %.0911.i.i.i.i.i.i.i429, align 8, !tbaa !301, !alias.scope !525, !noalias !522
  %i.ts = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429, i64 8 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i430 = icmp eq ptr %i.ts, %i.si
  br i1 %.not.i.i.i.i.i.i.i430, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427, !llvm.loop !533

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431: ; preds = %.lr.ph.i.i.i.i.i.i.i427, %middle.block978, %.noexc436
  %.0.lcssa.i.i.i.i.i.i.i432 = phi ptr [ %i.sy, %.noexc436 ], [ %i.tk, %middle.block978 ], [ %i.tt, %.lr.ph.i.i.i.i.i.i.i427 ]
  %i.tu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i432, i64 8
  %.not.i23.i.i.i433 = icmp eq ptr %i.sn, null
  br i1 %.not.i23.i.i.i433, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431
  tail call void @_ZdlPv(ptr noundef nonnull %i.sn) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434: ; preds = %bb.cw, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431
  store ptr %i.sy, ptr %i.se, align 8, !tbaa !299
  store ptr %i.tu, ptr %i.sh, align 8, !tbaa !300
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.sw
  store ptr %i.tv, ptr %i.sj, align 8, !tbaa !306
  br label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434, %bb.ct
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.tw, align 4, !tbaa !289
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447: ; preds = %bb.cv, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.tx = landingpad { ptr, i32 }
          cleanup
  %i.ty = load ptr, ptr %i.sf, align 8, !tbaa !18
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8
  tail call void %i.ua(ptr noundef nonnull align 8 dereferenceable(24) %i.sf) #37, !inline_history !319
  br label %bb.fi

bb.cx:                                            ; preds = %.loopexit
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #37
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ud = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #45, !noalias !534 ; 7 uses
  %i.ue = load i32, ptr %i.uc, align 8, !tbaa !246, !noalias !534
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  store i64 %2, ptr %i.uf, align 8, !tbaa !30, !noalias !534
  %.sroa.2.0..sroa_idx.i.i.i451 = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i451, align 8, !noalias !534
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11z_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.ud, align 8, !tbaa !18, !noalias !534
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 24
  store i32 %i.ue, ptr %i.ug, align 8, !tbaa !537, !noalias !534
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ud, i64 32
  store i64 0, ptr %i.uh, align 8, !tbaa !30, !noalias !534
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ud, i64 40
  store i32 0, ptr %i.ui, align 8, !tbaa !541, !noalias !534
  store ptr %i.ud, ptr %32, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ub, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.uj = load ptr, ptr %32, align 8, !tbaa !301  ; 3 uses
  %.not.i452.a = icmp eq ptr %i.uj, null
  br i1 %.not.i452.a, label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453.a

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453.a: ; preds = %bb.cy
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !18
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.um = load ptr, ptr %i.ul, align 8
  call void %i.um(ptr noundef nonnull align 8 dereferenceable(24) %i.uj) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453.a, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.un, align 4, !tbaa !289
  br label %bb.fh

bb.cz:                                            ; preds = %bb.cx
  %i.uo = landingpad { ptr, i32 }
          cleanup
  %i.up = load ptr, ptr %32, align 8, !tbaa !301  ; 3 uses
  %.not.i456 = icmp eq ptr %i.up, null
  br i1 %.not.i456, label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457: ; preds = %bb.cz
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !18
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.us = load ptr, ptr %i.ur, align 8
  call void %i.us(ptr noundef nonnull align 8 dereferenceable(24) %i.up) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461

_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  br label %bb.fi

bb.da:                                            ; preds = %.loopexit
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #37
  %i.uu = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !542 ; 4 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store i64 %2, ptr %i.uv, align 8, !tbaa !30, !noalias !542
  %.sroa.2.0..sroa_idx.i.i.i465 = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i465, align 8, !noalias !542
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details13pid_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.uu, align 8, !tbaa !18, !noalias !542
  store ptr %i.uu, ptr %33, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ut, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.uw = load ptr, ptr %33, align 8, !tbaa !301  ; 3 uses
  %.not.i466.a = icmp eq ptr %i.uw, null
  br i1 %.not.i466.a, label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467.a

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467.a: ; preds = %bb.db
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !18
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load ptr, ptr %i.uy, align 8
  call void %i.uz(ptr noundef nonnull align 8 dereferenceable(24) %i.uw) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467.a, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  br label %bb.fh

bb.dc:                                            ; preds = %bb.da
  %i.va = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE:bb.a
  %.not.i664 = icmp eq ptr %i.acx, null
  br i1 %.not.i664, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i665

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i665: ; preds = %bb.fe
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !18
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  %i.ada = load ptr, ptr %i.acz, align 8
  call void %i.ada(ptr noundef nonnull align 8 dereferenceable(24) %i.acx) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666: ; preds = %bb.fe, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i665
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #37
  br label %bb.fg

bb.ff:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit657, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit640
  call void @_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #37
  br label %bb.fh

bb.fg:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit643, %bb.ev
  %.pn6 = phi { ptr, i32 } [ %i.acw, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666 ], [ %i.abv, %bb.ev ], [ %.pn, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663 ], [ %i.abw, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit643 ]
  call void @_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #37
  br label %bb.fi

bb.fh:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22, %_ZNSt10unique_ptrIN6spdlog7details14name_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details15level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details21short_level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11I_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11M_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11S_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11e_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11f_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11F_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details20color_stop_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details25source_location_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details24short_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details25source_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details24source_linenum_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details12ch_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEESt14default_deleteIS9_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEESt14default_deleteIS9_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEESt14default_deleteIS9_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEESt14default_deleteIS9_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details13mdc_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %bb.ff, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit
  ret void

bb.fi:                                            ; preds = %bb.fg, %_ZNSt10unique_ptrIN6spdlog7details13mdc_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit637, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEESt14default_deleteIS9_EED2Ev.exit623, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEESt14default_deleteIS9_EED2Ev.exit613, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEESt14default_deleteIS9_EED2Ev.exit603, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEESt14default_deleteIS9_EED2Ev.exit593, %_ZNSt10unique_ptrIN6spdlog7details12ch_formatterESt14default_deleteIS2_EED2Ev.exit583, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit573, %_ZNSt10unique_ptrIN6spdlog7details24source_linenum_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit559, %_ZNSt10unique_ptrIN6spdlog7details25source_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit545, %_ZNSt10unique_ptrIN6spdlog7details24short_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit531, %_ZNSt10unique_ptrIN6spdlog7details25source_location_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit517, %_ZNSt10unique_ptrIN6spdlog7details20color_stop_formatterESt14default_deleteIS2_EED2Ev.exit503, %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit489, %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475, %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461, %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447, %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417, %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403, %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389, %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375, %_ZNSt10unique_ptrIN6spdlog7details11F_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit361, %_ZNSt10unique_ptrIN6spdlog7details11f_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit347, %_ZNSt10unique_ptrIN6spdlog7details11e_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit333, %_ZNSt10unique_ptrIN6spdlog7details11S_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit319, %_ZNSt10unique_ptrIN6spdlog7details11M_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit305, %_ZNSt10unique_ptrIN6spdlog7details11I_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit291, %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit277, %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263, %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249, %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235, %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205, %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191, %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177, %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163, %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149, %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119, %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105, %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91, %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77, %_ZNSt10unique_ptrIN6spdlog7details21short_level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit63, %_ZNSt10unique_ptrIN6spdlog7details15level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit49, %_ZNSt10unique_ptrIN6spdlog7details14name_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit35, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit25, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19
  %.pn8 = phi { ptr, i32 } [ %i.bz, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19 ], [ %.pn6, %bb.fg ], [ %i.co, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit25 ], [ %i.da, %_ZNSt10unique_ptrIN6spdlog7details14name_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit35 ], [ %i.dm, %_ZNSt10unique_ptrIN6spdlog7details15level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit49 ], [ %i.dy, %_ZNSt10unique_ptrIN6spdlog7details21short_level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit63 ], [ %i.ek, %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77 ], [ %i.ew, %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91 ], [ %i.fj, %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105 ], [ %i.fw, %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119 ], [ %i.hu, %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149 ], [ %i.ig, %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163 ], [ %i.it, %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177 ], [ %i.jg, %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191 ], [ %i.jt, %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205 ], [ %i.lr, %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235 ], [ %i.md, %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249 ], [ %i.mq, %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263 ], [ %i.nd, %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit277 ], [ %i.nq, %_ZNSt10unique_ptrIN6spdlog7details11I_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit291 ], [ %i.od, %_ZNSt10unique_ptrIN6spdlog7details11M_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit305 ], [ %i.oq, %_ZNSt10unique_ptrIN6spdlog7details11S_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit319 ], [ %i.pc, %_ZNSt10unique_ptrIN6spdlog7details11e_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit333 ], [ %i.po, %_ZNSt10unique_ptrIN6spdlog7details11f_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit347 ], [ %i.qa, %_ZNSt10unique_ptrIN6spdlog7details11F_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit361 ], [ %i.qm, %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375 ], [ %i.qz, %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389 ], [ %i.rm, %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403 ], [ %i.rz, %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417 ], [ %i.tx, %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447 ], [ %i.uo, %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461 ], [ %i.va, %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475 ], [ %i.vm, %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit489 ], [ %i.vy, %_ZNSt10unique_ptrIN6spdlog7details20color_stop_formatterESt14default_deleteIS2_EED2Ev.exit503 ], [ %i.wk, %_ZNSt10unique_ptrIN6spdlog7details25source_location_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit517 ], [ %i.ww, %_ZNSt10unique_ptrIN6spdlog7details24short_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit531 ], [ %i.xi, %_ZNSt10unique_ptrIN6spdlog7details25source_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit545 ], [ %i.xu, %_ZNSt10unique_ptrIN6spdlog7details24source_linenum_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit559 ], [ %i.yg, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit573 ], [ %i.yt, %_ZNSt10unique_ptrIN6spdlog7details12ch_formatterESt14default_deleteIS2_EED2Ev.exit583 ], [ %i.zf, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEESt14default_deleteIS9_EED2Ev.exit593 ], [ %i.zs, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEESt14default_deleteIS9_EED2Ev.exit603 ], [ %i.aaf, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEESt14default_deleteIS9_EED2Ev.exit613 ], [ %i.aas, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEESt14default_deleteIS9_EED2Ev.exit623 ], [ %i.abf, %_ZNSt10unique_ptrIN6spdlog7details13mdc_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit637 ]
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !290
  %.not.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !206 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.f = load i8, ptr %i.e, align 1, !tbaa !21
  %i.g = icmp eq i8 %1, %i.f
  br i1 %i.g, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %bb.c, !llvm.loop !399

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = sext i8 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load i64, ptr %i.j, align 8, !tbaa !252  ; 2 uses
  %i.l = urem i64 %i.i, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !250
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !294  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !206  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i8, ptr %i.q, align 1, !tbaa !21
  %i.s = icmp eq i8 %1, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.t = icmp eq i8 %1, %i.w
  br i1 %i.t, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !369

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %i.p, %bb.f ]
  %i.u = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !206 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i8, ptr %i.v, align 1, !tbaa !21    ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = urem i64 %i.x, %i.k
  %.not19.i.i.i.i = icmp eq i64 %i.y, %i.l
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !369

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !369

_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.p, %bb.f ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !254 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.116") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  %i.ae = load ptr, ptr %5, align 8, !tbaa !254   ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.af, ptr noundef nonnull align 16 dereferenceable(14) %4, i64 14, i1 false), !tbaa.struct !400
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !254
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !300 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !306
  %.not.i.i10 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i10, label %bb.i, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit
  %i.al = ptrtoint ptr %i.ae to i64
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !301
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !299 ; 10 uses
  %i.ao = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i.i11 = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i11)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #45
          to label %.noexc12 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16 ; 10 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  %i.ba = ptrtoint ptr %i.ae to i64
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !301
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ai
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc12
  %i.bb = add i64 %i.ao, -8
  %i.bc = sub i64 %i.bb, %i.ap                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader1029, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bf = add i64 %i.ao, -8
  %i.bg = sub i64 %i.bf, %i.ap
  %i.bh = and i64 %i.bg, -8
  %i.bi = add i64 %i.bh, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.bi
  %scevgep957 = getelementptr i8, ptr %i.an, i64 %i.bi
  %bound0 = icmp ult ptr %i.ay, %scevgep957
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader1029, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bj = shl i64 %n.vec, 3                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ay, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.an, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bm ; 2 uses
  %next.gep958 = getelementptr i8, ptr %i.an, i64 %i.bm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.bn = getelementptr i8, ptr %next.gep958, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep958, align 8, !tbaa !301, !alias.scope !594, !noalias !589
  %wide.load959 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !301, !alias.scope !594, !noalias !589
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !301, !alias.scope !597, !noalias !594
  store <2 x i64> %wide.load959, ptr %i.bo, align 8, !tbaa !301, !alias.scope !597, !noalias !594
  %i.bp = getelementptr i8, ptr %next.gep958, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep958, align 8, !tbaa !301, !alias.scope !594, !noalias !589
  store <2 x ptr> splat (ptr null), ptr %i.bp, align 8, !tbaa !301, !alias.scope !594, !noalias !589
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !599

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1029

.lr.ph.i.i.i.i.i.i.i.preheader1029:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1029, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1029 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1029 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.br = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !301, !alias.scope !592, !noalias !589
  store i64 %i.br, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !301, !alias.scope !589, !noalias !592
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !301, !alias.scope !592, !noalias !589
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.ai
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !600

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.noexc12 ], [ %i.bk, %middle.block ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.an) #44
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.k
  store ptr %i.ay, ptr %i.ag, align 8, !tbaa !299
  store ptr %i.bu, ptr %i.ah, align 8, !tbaa !300
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bv, ptr %i.aj, align 8, !tbaa !306
  %.pre = load ptr, ptr %5, align 8, !tbaa !254   ; 3 uses
  %.not.i13 = icmp eq ptr %.pre, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.bw = load ptr, ptr %.pre, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(24) %.pre) #37, !inline_history !385
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #37, !inline_history !319
  %i.cd = load ptr, ptr %5, align 8, !tbaa !254   ; 3 uses
  %.not.i17 = icmp eq ptr %i.cd, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(24) %i.cd) #37, !inline_history !385
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
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @_ZN6spdlog7details11make_uniqueINS0_14full_formatterEJRNS0_12padding_infoEEEESt10unique_ptrIT_St14default_deleteIS6_EEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.105") align 8 %7, ptr noundef nonnull align 8 dereferenceable(14) %4)
  %i.ci = load ptr, ptr %7, align 8, !tbaa !343
  store ptr null, ptr %7, align 8, !tbaa !343
  store ptr %i.ci, ptr %6, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cj = load ptr, ptr %6, align 8, !tbaa !301   ; 3 uses
  %.not.i20 = icmp eq ptr %i.cj, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21: ; preds = %bb.m
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !18
end_hunk_4
begin_hunk_5_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details18null_scoped_padderEEEvcNS2_12padding_infoE:bb.a

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i73: ; preds = %bb.z
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(24) %i.el) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77

_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i73, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.fi

bb.aa:                                            ; preds = %.loopexit
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.eq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !613 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %2, ptr %i.er, align 8, !tbaa !30, !noalias !613
  %.sroa.2.0..sroa_idx.i.i.i81 = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i81, align 8, !noalias !613
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11v_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.eq, align 8, !tbaa !18, !noalias !613
  store ptr %i.eq, ptr %12, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.es = load ptr, ptr %12, align 8, !tbaa !301  ; 3 uses
  %.not.i82 = icmp eq ptr %i.es, null
  br i1 %.not.i82, label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83: ; preds = %bb.ab
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(24) %i.es) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.fh

bb.ac:                                            ; preds = %bb.aa
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = load ptr, ptr %12, align 8, !tbaa !301  ; 3 uses
  %.not.i86 = icmp eq ptr %i.ex, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87: ; preds = %bb.ac
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(24) %i.ex) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91

_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.fi

bb.ad:                                            ; preds = %.loopexit
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.fc = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !616 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 %2, ptr %i.fd, align 8, !tbaa !30, !noalias !616
  %.sroa.2.0..sroa_idx.i.i.i95 = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i95, align 8, !noalias !616
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11a_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.fc, align 8, !tbaa !18, !noalias !616
  store ptr %i.fc, ptr %13, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fe = load ptr, ptr %13, align 8, !tbaa !301  ; 3 uses
  %.not.i96 = icmp eq ptr %i.fe, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97: ; preds = %bb.ae
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(24) %i.fe) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.fi, align 4, !tbaa !289
  br label %bb.fh

bb.af:                                            ; preds = %bb.ad
  %i.fj = landingpad { ptr, i32 }
          cleanup
  %i.fk = load ptr, ptr %13, align 8, !tbaa !301  ; 3 uses
  %.not.i100 = icmp eq ptr %i.fk, null
  br i1 %.not.i100, label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101: ; preds = %bb.af
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(24) %i.fk) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105

_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.fi

bb.ag:                                            ; preds = %.loopexit
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.fp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !619 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i64 %2, ptr %i.fq, align 8, !tbaa !30, !noalias !619
  %.sroa.2.0..sroa_idx.i.i.i109 = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i109, align 8, !noalias !619
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11A_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.fp, align 8, !tbaa !18, !noalias !619
  store ptr %i.fp, ptr %14, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fr = load ptr, ptr %14, align 8, !tbaa !301  ; 3 uses
  %.not.i110 = icmp eq ptr %i.fr, null
  br i1 %.not.i110, label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111: ; preds = %bb.ah
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(24) %i.fr) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.fv, align 4, !tbaa !289
  br label %bb.fh

bb.ai:                                            ; preds = %bb.ag
  %i.fw = landingpad { ptr, i32 }
          cleanup
  %i.fx = load ptr, ptr %14, align 8, !tbaa !301  ; 3 uses
  %.not.i114 = icmp eq ptr %i.fx, null
  br i1 %.not.i114, label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115: ; preds = %bb.ai
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(24) %i.fx) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119

_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.fi

bb.aj:                                            ; preds = %.loopexit, %.loopexit
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.gc = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !622 ; 7 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i64 %2, ptr %i.gd, align 8, !tbaa !30, !noalias !622
  %.sroa.2.0..sroa_idx.i.i.i123 = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i123, align 8, !noalias !622
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11b_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.gc, align 8, !tbaa !18, !noalias !622
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !300 ; 6 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !306
  %.not.i.i124 = icmp eq ptr %i.gf, %i.gh
  br i1 %.not.i.i124, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gi = ptrtoint ptr %i.gc to i64
  store i64 %i.gi, ptr %i.gf, align 8, !tbaa !301
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.gj, ptr %i.ge, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.gk = load ptr, ptr %i.gb, align 8, !tbaa !299 ; 10 uses
  %i.gl = ptrtoint ptr %i.gf to i64               ; 3 uses
  %i.gm = ptrtoint ptr %i.gk to i64               ; 3 uses
  %i.gn = sub i64 %i.gl, %i.gm                    ; 3 uses
  %i.go = icmp eq i64 %i.gn, 9223372036854775800
  br i1 %i.go, label %bb.am, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc137 unwind label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149

.noexc137:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125: ; preds = %bb.al
  %i.gp = ashr exact i64 %i.gn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i126 = tail call i64 @llvm.umax.i64(i64 %i.gp, i64 1)
  %i.gq = add nsw i64 %.sroa.speculated.i.i.i.i126, %i.gp ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gp
  %i.gs = tail call i64 @llvm.umin.i64(i64 %i.gq, i64 1152921504606846975)
  %i.gt = select i1 %i.gr, i64 1152921504606846975, i64 %i.gs ; 3 uses
  %.not.i.i.i.i127 = icmp ne i64 %i.gt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i127)
  %i.gu = shl nuw nsw i64 %i.gt, 3
  %i.gv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #45
          to label %.noexc138 unwind label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149 ; 10 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gn
  %i.gx = ptrtoint ptr %i.gc to i64
  store i64 %i.gx, ptr %i.gw, align 8, !tbaa !301
  %.not10.i.i.i.i.i.i.i128 = icmp eq ptr %i.gk, %i.gf
  br i1 %.not10.i.i.i.i.i.i.i128, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader

.lr.ph.i.i.i.i.i.i.i129.preheader:                ; preds = %.noexc138
  %i.gy = add i64 %i.gl, -8
  %i.gz = sub i64 %i.gy, %i.gm                    ; 2 uses
  %i.ha = lshr i64 %i.gz, 3
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %min.iters.check1010 = icmp ult i64 %i.gz, 136
  br i1 %min.iters.check1010, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024, label %vector.memcheck1003

vector.memcheck1003:                              ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader
  %i.hc = add i64 %i.gl, -8
  %i.hd = sub i64 %i.hc, %i.gm
  %i.he = and i64 %i.hd, -8
  %i.hf = add i64 %i.he, 8                        ; 2 uses
  %scevgep1004 = getelementptr i8, ptr %i.gv, i64 %i.hf
  %scevgep1005 = getelementptr i8, ptr %i.gk, i64 %i.hf
  %bound01006 = icmp ult ptr %i.gv, %scevgep1005
  %bound11007 = icmp ult ptr %i.gk, %scevgep1004
  %found.conflict1008 = and i1 %bound01006, %bound11007
  br i1 %found.conflict1008, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024, label %vector.ph1011

vector.ph1011:                                    ; preds = %vector.memcheck1003
  %n.vec1012 = and i64 %i.hb, 4611686018427387900 ; 3 uses
  %i.hg = shl i64 %n.vec1012, 3                   ; 2 uses
  %i.hh = getelementptr i8, ptr %i.gv, i64 %i.hg  ; 2 uses
  %i.hi = getelementptr i8, ptr %i.gk, i64 %i.hg
  br label %vector.body1013

vector.body1013:                                  ; preds = %vector.body1013, %vector.ph1011
  %index1014 = phi i64 [ 0, %vector.ph1011 ], [ %index.next1019, %vector.body1013 ] ; 2 uses
  %i.hj = shl i64 %index1014, 3                   ; 2 uses
  %next.gep1015 = getelementptr i8, ptr %i.gv, i64 %i.hj ; 2 uses
  %next.gep1016 = getelementptr i8, ptr %i.gk, i64 %i.hj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.hk = getelementptr i8, ptr %next.gep1016, i64 16
  %wide.load1017 = load <2 x i64>, ptr %next.gep1016, align 8, !tbaa !301, !alias.scope !630, !noalias !625
  %wide.load1018 = load <2 x i64>, ptr %i.hk, align 8, !tbaa !301, !alias.scope !630, !noalias !625
  %i.hl = getelementptr i8, ptr %next.gep1015, i64 16
  store <2 x i64> %wide.load1017, ptr %next.gep1015, align 8, !tbaa !301, !alias.scope !633, !noalias !630
  store <2 x i64> %wide.load1018, ptr %i.hl, align 8, !tbaa !301, !alias.scope !633, !noalias !630
  %i.hm = getelementptr i8, ptr %next.gep1016, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1016, align 8, !tbaa !301, !alias.scope !630, !noalias !625
  store <2 x ptr> splat (ptr null), ptr %i.hm, align 8, !tbaa !301, !alias.scope !630, !noalias !625
  %index.next1019 = add nuw i64 %index1014, 4     ; 2 uses
  %i.hn = icmp eq i64 %index.next1019, %n.vec1012
  br i1 %i.hn, label %middle.block1020, label %vector.body1013, !llvm.loop !635

middle.block1020:                                 ; preds = %vector.body1013
  %cmp.n1021 = icmp eq i64 %i.hb, %n.vec1012
  br i1 %cmp.n1021, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024

.lr.ph.i.i.i.i.i.i.i129.preheader1024:            ; preds = %vector.memcheck1003, %.lr.ph.i.i.i.i.i.i.i129.preheader, %middle.block1020
  %.012.i.i.i.i.i.i.i130.ph = phi ptr [ %i.gv, %vector.memcheck1003 ], [ %i.gv, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.hh, %middle.block1020 ]
  %.0911.i.i.i.i.i.i.i131.ph = phi ptr [ %i.gk, %vector.memcheck1003 ], [ %i.gk, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.hi, %middle.block1020 ]
  br label %.lr.ph.i.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i.i129:                          ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader1024, %.lr.ph.i.i.i.i.i.i.i129
  %.012.i.i.i.i.i.i.i130 = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.012.i.i.i.i.i.i.i130.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader1024 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i131 = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.0911.i.i.i.i.i.i.i131.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader1024 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.ho = load i64, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !301, !alias.scope !628, !noalias !625
  store i64 %i.ho, ptr %.012.i.i.i.i.i.i.i130, align 8, !tbaa !301, !alias.scope !625, !noalias !628
  store ptr null, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !301, !alias.scope !628, !noalias !625
  %i.hp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i131, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i130, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %i.hp, %i.gf
  br i1 %.not.i.i.i.i.i.i.i132, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129, !llvm.loop !636

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133: ; preds = %.lr.ph.i.i.i.i.i.i.i129, %middle.block1020, %.noexc138
  %.0.lcssa.i.i.i.i.i.i.i134 = phi ptr [ %i.gv, %.noexc138 ], [ %i.hh, %middle.block1020 ], [ %i.hq, %.lr.ph.i.i.i.i.i.i.i129 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i134, i64 8
  %.not.i23.i.i.i135 = icmp eq ptr %i.gk, null
  br i1 %.not.i23.i.i.i135, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133
  tail call void @_ZdlPv(ptr noundef nonnull %i.gk) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136: ; preds = %bb.an, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133
  store ptr %i.gv, ptr %i.gb, align 8, !tbaa !299
  store ptr %i.hr, ptr %i.ge, align 8, !tbaa !300
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gt
  store ptr %i.hs, ptr %i.gg, align 8, !tbaa !306
  br label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136, %bb.ak
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ht, align 4, !tbaa !289
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149: ; preds = %bb.am, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = load ptr, ptr %i.gc, align 8, !tbaa !18
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8
  tail call void %i.hx(ptr noundef nonnull align 8 dereferenceable(24) %i.gc) #37, !inline_history !319
  br label %bb.fi

bb.ao:                                            ; preds = %.loopexit
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  %i.hz = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !637 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i64 %2, ptr %i.ia, align 8, !tbaa !30, !noalias !637
  %.sroa.2.0..sroa_idx.i.i.i153 = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i153, align 8, !noalias !637
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11B_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.hz, align 8, !tbaa !18, !noalias !637
  store ptr %i.hz, ptr %15, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ib = load ptr, ptr %15, align 8, !tbaa !301  ; 3 uses
  %.not.i154 = icmp eq ptr %i.ib, null
  br i1 %.not.i154, label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155: ; preds = %bb.ap
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(24) %i.ib) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.if, align 4, !tbaa !289
  br label %bb.fh

bb.aq:                                            ; preds = %bb.ao
  %i.ig = landingpad { ptr, i32 }
          cleanup
  %i.ih = load ptr, ptr %15, align 8, !tbaa !301  ; 3 uses
  %.not.i158 = icmp eq ptr %i.ih, null
  br i1 %.not.i158, label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159: ; preds = %bb.aq
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !18
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(24) %i.ih) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163

_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.fi

bb.ar:                                            ; preds = %.loopexit
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.im = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !640 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store i64 %2, ptr %i.in, align 8, !tbaa !30, !noalias !640
  %.sroa.2.0..sroa_idx.i.i.i167 = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i167, align 8, !noalias !640
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11c_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.im, align 8, !tbaa !18, !noalias !640
  store ptr %i.im, ptr %16, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.il, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.io = load ptr, ptr %16, align 8, !tbaa !301  ; 3 uses
  %.not.i168 = icmp eq ptr %i.io, null
  br i1 %.not.i168, label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169: ; preds = %bb.as
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !18
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(24) %i.io) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.is, align 4, !tbaa !289
  br label %bb.fh

bb.at:                                            ; preds = %bb.ar
  %i.it = landingpad { ptr, i32 }
          cleanup
  %i.iu = load ptr, ptr %16, align 8, !tbaa !301  ; 3 uses
  %.not.i172 = icmp eq ptr %i.iu, null
  br i1 %.not.i172, label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173: ; preds = %bb.at
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(24) %i.iu) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177

_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.fi

bb.au:                                            ; preds = %.loopexit
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  %i.iz = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !643 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i64 %2, ptr %i.ja, align 8, !tbaa !30, !noalias !643
  %.sroa.2.0..sroa_idx.i.i.i181 = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i181, align 8, !noalias !643
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11C_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.iz, align 8, !tbaa !18, !noalias !643
  store ptr %i.iz, ptr %17, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.iy, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jb = load ptr, ptr %17, align 8, !tbaa !301  ; 3 uses
  %.not.i182 = icmp eq ptr %i.jb, null
  br i1 %.not.i182, label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183: ; preds = %bb.av
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !18
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(24) %i.jb) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.jf, align 4, !tbaa !289
  br label %bb.fh

bb.aw:                                            ; preds = %bb.au
  %i.jg = landingpad { ptr, i32 }
          cleanup
  %i.jh = load ptr, ptr %17, align 8, !tbaa !301  ; 3 uses
  %.not.i186 = icmp eq ptr %i.jh, null
  br i1 %.not.i186, label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187: ; preds = %bb.aw
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !18
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8
  call void %i.jk(ptr noundef nonnull align 8 dereferenceable(24) %i.jh) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191

_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.fi

bb.ax:                                            ; preds = %.loopexit
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  %i.jm = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !646 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i64 %2, ptr %i.jn, align 8, !tbaa !30, !noalias !646
  %.sroa.2.0..sroa_idx.i.i.i195 = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i195, align 8, !noalias !646
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11Y_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.jm, align 8, !tbaa !18, !noalias !646
  store ptr %i.jm, ptr %18, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.jl, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jo = load ptr, ptr %18, align 8, !tbaa !301  ; 3 uses
  %.not.i196 = icmp eq ptr %i.jo, null
  br i1 %.not.i196, label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197: ; preds = %bb.ay
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(24) %i.jo) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.js, align 4, !tbaa !289
  br label %bb.fh

bb.az:                                            ; preds = %bb.ax
  %i.jt = landingpad { ptr, i32 }
          cleanup
  %i.ju = load ptr, ptr %18, align 8, !tbaa !301  ; 3 uses
  %.not.i200 = icmp eq ptr %i.ju, null
  br i1 %.not.i200, label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201: ; preds = %bb.az
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !18
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(24) %i.ju) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205

_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  br label %bb.fi

bb.ba:                                            ; preds = %.loopexit, %.loopexit
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.jz = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !649 ; 7 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store i64 %2, ptr %i.ka, align 8, !tbaa !30, !noalias !649
  %.sroa.2.0..sroa_idx.i.i.i209 = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i209, align 8, !noalias !649
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11D_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.jz, align 8, !tbaa !18, !noalias !649
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !300 ; 6 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !306
  %.not.i.i210 = icmp eq ptr %i.kc, %i.ke
  br i1 %.not.i.i210, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kf = ptrtoint ptr %i.jz to i64
  store i64 %i.kf, ptr %i.kc, align 8, !tbaa !301
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store ptr %i.kg, ptr %i.kb, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.bc:                                            ; preds = %bb.ba
  %i.kh = load ptr, ptr %i.jy, align 8, !tbaa !299 ; 10 uses
  %i.ki = ptrtoint ptr %i.kc to i64               ; 3 uses
  %i.kj = ptrtoint ptr %i.kh to i64               ; 3 uses
  %i.kk = sub i64 %i.ki, %i.kj                    ; 3 uses
  %i.kl = icmp eq i64 %i.kk, 9223372036854775800
  br i1 %i.kl, label %bb.bd, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc223 unwind label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235

.noexc223:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211: ; preds = %bb.bc
  %i.km = ashr exact i64 %i.kk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i212 = tail call i64 @llvm.umax.i64(i64 %i.km, i64 1)
  %i.kn = add nsw i64 %.sroa.speculated.i.i.i.i212, %i.km ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %i.km
  %i.kp = tail call i64 @llvm.umin.i64(i64 %i.kn, i64 1152921504606846975)
  %i.kq = select i1 %i.ko, i64 1152921504606846975, i64 %i.kp ; 3 uses
  %.not.i.i.i.i213 = icmp ne i64 %i.kq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i213)
  %i.kr = shl nuw nsw i64 %i.kq, 3
  %i.ks = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kr) #45
          to label %.noexc224 unwind label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235 ; 10 uses

.noexc224:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kk
  %i.ku = ptrtoint ptr %i.jz to i64
  store i64 %i.ku, ptr %i.kt, align 8, !tbaa !301
  %.not10.i.i.i.i.i.i.i214 = icmp eq ptr %i.kh, %i.kc
  br i1 %.not10.i.i.i.i.i.i.i214, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215.preheader

.lr.ph.i.i.i.i.i.i.i215.preheader:                ; preds = %.noexc224
  %i.kv = add i64 %i.ki, -8
  %i.kw = sub i64 %i.kv, %i.kj                    ; 2 uses
  %i.kx = lshr i64 %i.kw, 3
  %i.ky = add nuw nsw i64 %i.kx, 1                ; 2 uses
  %min.iters.check989 = icmp ult i64 %i.kw, 136
  br i1 %min.iters.check989, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025, label %vector.memcheck982

vector.memcheck982:                               ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader
  %i.kz = add i64 %i.ki, -8
  %i.la = sub i64 %i.kz, %i.kj
  %i.lb = and i64 %i.la, -8
  %i.lc = add i64 %i.lb, 8                        ; 2 uses
  %scevgep983 = getelementptr i8, ptr %i.ks, i64 %i.lc
  %scevgep984 = getelementptr i8, ptr %i.kh, i64 %i.lc
  %bound0985 = icmp ult ptr %i.ks, %scevgep984
  %bound1986 = icmp ult ptr %i.kh, %scevgep983
  %found.conflict987 = and i1 %bound0985, %bound1986
  br i1 %found.conflict987, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025, label %vector.ph990

vector.ph990:                                     ; preds = %vector.memcheck982
  %n.vec991 = and i64 %i.ky, 4611686018427387900  ; 3 uses
  %i.ld = shl i64 %n.vec991, 3                    ; 2 uses
  %i.le = getelementptr i8, ptr %i.ks, i64 %i.ld  ; 2 uses
  %i.lf = getelementptr i8, ptr %i.kh, i64 %i.ld
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph990
  %index993 = phi i64 [ 0, %vector.ph990 ], [ %index.next998, %vector.body992 ] ; 2 uses
  %i.lg = shl i64 %index993, 3                    ; 2 uses
  %next.gep994 = getelementptr i8, ptr %i.ks, i64 %i.lg ; 2 uses
  %next.gep995 = getelementptr i8, ptr %i.kh, i64 %i.lg ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.lh = getelementptr i8, ptr %next.gep995, i64 16
  %wide.load996 = load <2 x i64>, ptr %next.gep995, align 8, !tbaa !301, !alias.scope !657, !noalias !652
  %wide.load997 = load <2 x i64>, ptr %i.lh, align 8, !tbaa !301, !alias.scope !657, !noalias !652
  %i.li = getelementptr i8, ptr %next.gep994, i64 16
  store <2 x i64> %wide.load996, ptr %next.gep994, align 8, !tbaa !301, !alias.scope !660, !noalias !657
  store <2 x i64> %wide.load997, ptr %i.li, align 8, !tbaa !301, !alias.scope !660, !noalias !657
  %i.lj = getelementptr i8, ptr %next.gep995, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep995, align 8, !tbaa !301, !alias.scope !657, !noalias !652
  store <2 x ptr> splat (ptr null), ptr %i.lj, align 8, !tbaa !301, !alias.scope !657, !noalias !652
  %index.next998 = add nuw i64 %index993, 4       ; 2 uses
  %i.lk = icmp eq i64 %index.next998, %n.vec991
  br i1 %i.lk, label %middle.block999, label %vector.body992, !llvm.loop !662

middle.block999:                                  ; preds = %vector.body992
  %cmp.n1000 = icmp eq i64 %i.ky, %n.vec991
  br i1 %cmp.n1000, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025

.lr.ph.i.i.i.i.i.i.i215.preheader1025:            ; preds = %vector.memcheck982, %.lr.ph.i.i.i.i.i.i.i215.preheader, %middle.block999
  %.012.i.i.i.i.i.i.i216.ph = phi ptr [ %i.ks, %vector.memcheck982 ], [ %i.ks, %.lr.ph.i.i.i.i.i.i.i215.preheader ], [ %i.le, %middle.block999 ]
  %.0911.i.i.i.i.i.i.i217.ph = phi ptr [ %i.kh, %vector.memcheck982 ], [ %i.kh, %.lr.ph.i.i.i.i.i.i.i215.preheader ], [ %i.lf, %middle.block999 ]
  br label %.lr.ph.i.i.i.i.i.i.i215

.lr.ph.i.i.i.i.i.i.i215:                          ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader1025, %.lr.ph.i.i.i.i.i.i.i215
  %.012.i.i.i.i.i.i.i216 = phi ptr [ %i.ln, %.lr.ph.i.i.i.i.i.i.i215 ], [ %.012.i.i.i.i.i.i.i216.ph, %.lr.ph.i.i.i.i.i.i.i215.preheader1025 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i217 = phi ptr [ %i.lm, %.lr.ph.i.i.i.i.i.i.i215 ], [ %.0911.i.i.i.i.i.i.i217.ph, %.lr.ph.i.i.i.i.i.i.i215.preheader1025 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.ll = load i64, ptr %.0911.i.i.i.i.i.i.i217, align 8, !tbaa !301, !alias.scope !655, !noalias !652
  store i64 %i.ll, ptr %.012.i.i.i.i.i.i.i216, align 8, !tbaa !301, !alias.scope !652, !noalias !655
  store ptr null, ptr %.0911.i.i.i.i.i.i.i217, align 8, !tbaa !301, !alias.scope !655, !noalias !652
  %i.lm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i217, i64 8 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i216, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i218 = icmp eq ptr %i.lm, %i.kc
  br i1 %.not.i.i.i.i.i.i.i218, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215, !llvm.loop !663

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219: ; preds = %.lr.ph.i.i.i.i.i.i.i215, %middle.block999, %.noexc224
  %.0.lcssa.i.i.i.i.i.i.i220 = phi ptr [ %i.ks, %.noexc224 ], [ %i.le, %middle.block999 ], [ %i.ln, %.lr.ph.i.i.i.i.i.i.i215 ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i220, i64 8
  %.not.i23.i.i.i221 = icmp eq ptr %i.kh, null
  br i1 %.not.i23.i.i.i221, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219
  tail call void @_ZdlPv(ptr noundef nonnull %i.kh) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222: ; preds = %bb.be, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219
  store ptr %i.ks, ptr %i.jy, align 8, !tbaa !299
  store ptr %i.lo, ptr %i.kb, align 8, !tbaa !300
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kq
  store ptr %i.lp, ptr %i.kd, align 8, !tbaa !306
  br label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222, %bb.bb
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.lq, align 4, !tbaa !289
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235: ; preds = %bb.bd, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211
  %i.lr = landingpad { ptr, i32 }
          cleanup
  %i.ls = load ptr, ptr %i.jz, align 8, !tbaa !18
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8
  tail call void %i.lu(ptr noundef nonnull align 8 dereferenceable(24) %i.jz) #37, !inline_history !319
  br label %bb.fi

bb.bf:                                            ; preds = %.loopexit
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  %i.lw = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !664 ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store i64 %2, ptr %i.lx, align 8, !tbaa !30, !noalias !664
  %.sroa.2.0..sroa_idx.i.i.i239 = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i239, align 8, !noalias !664
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11m_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.lw, align 8, !tbaa !18, !noalias !664
  store ptr %i.lw, ptr %19, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ly = load ptr, ptr %19, align 8, !tbaa !301  ; 3 uses
  %.not.i240 = icmp eq ptr %i.ly, null
  br i1 %.not.i240, label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241: ; preds = %bb.bg
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !18
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(24) %i.ly) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.mc, align 4, !tbaa !289
  br label %bb.fh

bb.bh:                                            ; preds = %bb.bf
  %i.md = landingpad { ptr, i32 }
          cleanup
  %i.me = load ptr, ptr %19, align 8, !tbaa !301  ; 3 uses
  %.not.i244 = icmp eq ptr %i.me, null
  br i1 %.not.i244, label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245: ; preds = %bb.bh
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !18
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(24) %i.me) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249

_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  br label %bb.fi

bb.bi:                                            ; preds = %.loopexit
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  %i.mj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !667 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store i64 %2, ptr %i.mk, align 8, !tbaa !30, !noalias !667
  %.sroa.2.0..sroa_idx.i.i.i253 = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i253, align 8, !noalias !667
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11d_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.mj, align 8, !tbaa !18, !noalias !667
  store ptr %i.mj, ptr %20, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.mi, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ml = load ptr, ptr %20, align 8, !tbaa !301  ; 3 uses
  %.not.i254 = icmp eq ptr %i.ml, null
  br i1 %.not.i254, label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255: ; preds = %bb.bj
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !18
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8
  call void %i.mo(ptr noundef nonnull align 8 dereferenceable(24) %i.ml) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.mp, align 4, !tbaa !289
  br label %bb.fh

bb.bk:                                            ; preds = %bb.bi
  %i.mq = landingpad { ptr, i32 }
          cleanup
  %i.mr = load ptr, ptr %20, align 8, !tbaa !301  ; 3 uses
  %.not.i258 = icmp eq ptr %i.mr, null
  br i1 %.not.i258, label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259: ; preds = %bb.bk
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !18
end_hunk_5
begin_hunk_6_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details18null_scoped_padderEEEvcNS2_12padding_infoE:bb.a
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !18
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qq = load ptr, ptr %i.qp, align 8
  call void %i.qq(ptr noundef nonnull align 8 dereferenceable(24) %i.qn) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375

_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i371, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  br label %bb.fi

bb.cj:                                            ; preds = %.loopexit
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #37
  %i.qs = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !694 ; 4 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  store i64 %2, ptr %i.qt, align 8, !tbaa !30, !noalias !694
  %.sroa.2.0..sroa_idx.i.i.i379 = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i379, align 8, !noalias !694
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11p_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.qs, align 8, !tbaa !18, !noalias !694
  store ptr %i.qs, ptr %29, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.qr, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.qu = load ptr, ptr %29, align 8, !tbaa !301  ; 3 uses
  %.not.i380 = icmp eq ptr %i.qu, null
  br i1 %.not.i380, label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381: ; preds = %bb.ck
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !18
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8
  call void %i.qx(ptr noundef nonnull align 8 dereferenceable(24) %i.qu) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.qy, align 4, !tbaa !289
  br label %bb.fh

bb.cl:                                            ; preds = %bb.cj
  %i.qz = landingpad { ptr, i32 }
          cleanup
  %i.ra = load ptr, ptr %29, align 8, !tbaa !301  ; 3 uses
  %.not.i384 = icmp eq ptr %i.ra, null
  br i1 %.not.i384, label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385: ; preds = %bb.cl
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !18
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8
  call void %i.rd(ptr noundef nonnull align 8 dereferenceable(24) %i.ra) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389

_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  br label %bb.fi

bb.cm:                                            ; preds = %.loopexit
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37
  %i.rf = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !697 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store i64 %2, ptr %i.rg, align 8, !tbaa !30, !noalias !697
  %.sroa.2.0..sroa_idx.i.i.i393 = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i393, align 8, !noalias !697
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11r_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.rf, align 8, !tbaa !18, !noalias !697
  store ptr %i.rf, ptr %30, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.re, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.rh = load ptr, ptr %30, align 8, !tbaa !301  ; 3 uses
  %.not.i394 = icmp eq ptr %i.rh, null
  br i1 %.not.i394, label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395: ; preds = %bb.cn
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !18
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(24) %i.rh) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.rl, align 4, !tbaa !289
  br label %bb.fh

bb.co:                                            ; preds = %bb.cm
  %i.rm = landingpad { ptr, i32 }
          cleanup
  %i.rn = load ptr, ptr %30, align 8, !tbaa !301  ; 3 uses
  %.not.i398 = icmp eq ptr %i.rn, null
  br i1 %.not.i398, label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399: ; preds = %bb.co
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !18
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rq = load ptr, ptr %i.rp, align 8
  call void %i.rq(ptr noundef nonnull align 8 dereferenceable(24) %i.rn) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403

_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  br label %bb.fi

bb.cp:                                            ; preds = %.loopexit
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37
  %i.rs = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !700 ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  store i64 %2, ptr %i.rt, align 8, !tbaa !30, !noalias !700
  %.sroa.2.0..sroa_idx.i.i.i407 = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i407, align 8, !noalias !700
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11R_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.rs, align 8, !tbaa !18, !noalias !700
  store ptr %i.rs, ptr %31, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.rr, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ru = load ptr, ptr %31, align 8, !tbaa !301  ; 3 uses
  %.not.i408 = icmp eq ptr %i.ru, null
  br i1 %.not.i408, label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409: ; preds = %bb.cq
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !18
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8
  call void %i.rx(ptr noundef nonnull align 8 dereferenceable(24) %i.ru) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ry, align 4, !tbaa !289
  br label %bb.fh

bb.cr:                                            ; preds = %bb.cp
  %i.rz = landingpad { ptr, i32 }
          cleanup
  %i.sa = load ptr, ptr %31, align 8, !tbaa !301  ; 3 uses
  %.not.i412 = icmp eq ptr %i.sa, null
  br i1 %.not.i412, label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413: ; preds = %bb.cr
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !18
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8
  call void %i.sd(ptr noundef nonnull align 8 dereferenceable(24) %i.sa) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417

_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  br label %bb.fi

bb.cs:                                            ; preds = %.loopexit, %.loopexit
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.sf = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !703 ; 7 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  store i64 %2, ptr %i.sg, align 8, !tbaa !30, !noalias !703
  %.sroa.2.0..sroa_idx.i.i.i421 = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i421, align 8, !noalias !703
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11T_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.sf, align 8, !tbaa !18, !noalias !703
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !300 ; 6 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !306
  %.not.i.i422 = icmp eq ptr %i.si, %i.sk
  br i1 %.not.i.i422, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sl = ptrtoint ptr %i.sf to i64
  store i64 %i.sl, ptr %i.si, align 8, !tbaa !301
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  store ptr %i.sm, ptr %i.sh, align 8, !tbaa !300
  br label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.cu:                                            ; preds = %bb.cs
  %i.sn = load ptr, ptr %i.se, align 8, !tbaa !299 ; 10 uses
  %i.so = ptrtoint ptr %i.si to i64               ; 3 uses
  %i.sp = ptrtoint ptr %i.sn to i64               ; 3 uses
  %i.sq = sub i64 %i.so, %i.sp                    ; 3 uses
  %i.sr = icmp eq i64 %i.sq, 9223372036854775800
  br i1 %i.sr, label %bb.cv, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc435 unwind label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447

.noexc435:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423: ; preds = %bb.cu
  %i.ss = ashr exact i64 %i.sq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i424 = tail call i64 @llvm.umax.i64(i64 %i.ss, i64 1)
  %i.st = add nsw i64 %.sroa.speculated.i.i.i.i424, %i.ss ; 2 uses
  %i.su = icmp ult i64 %i.st, %i.ss
  %i.sv = tail call i64 @llvm.umin.i64(i64 %i.st, i64 1152921504606846975)
  %i.sw = select i1 %i.su, i64 1152921504606846975, i64 %i.sv ; 3 uses
  %.not.i.i.i.i425 = icmp ne i64 %i.sw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i425)
  %i.sx = shl nuw nsw i64 %i.sw, 3
  %i.sy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sx) #45
          to label %.noexc436 unwind label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447 ; 10 uses

.noexc436:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.sq
  %i.ta = ptrtoint ptr %i.sf to i64
  store i64 %i.ta, ptr %i.sz, align 8, !tbaa !301
  %.not10.i.i.i.i.i.i.i426 = icmp eq ptr %i.sn, %i.si
  br i1 %.not10.i.i.i.i.i.i.i426, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427.preheader

.lr.ph.i.i.i.i.i.i.i427.preheader:                ; preds = %.noexc436
  %i.tb = add i64 %i.so, -8
  %i.tc = sub i64 %i.tb, %i.sp                    ; 2 uses
  %i.td = lshr i64 %i.tc, 3
  %i.te = add nuw nsw i64 %i.td, 1                ; 2 uses
  %min.iters.check968 = icmp ult i64 %i.tc, 136
  br i1 %min.iters.check968, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027, label %vector.memcheck961

vector.memcheck961:                               ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader
  %i.tf = add i64 %i.so, -8
  %i.tg = sub i64 %i.tf, %i.sp
  %i.th = and i64 %i.tg, -8
  %i.ti = add i64 %i.th, 8                        ; 2 uses
  %scevgep962 = getelementptr i8, ptr %i.sy, i64 %i.ti
  %scevgep963 = getelementptr i8, ptr %i.sn, i64 %i.ti
  %bound0964 = icmp ult ptr %i.sy, %scevgep963
  %bound1965 = icmp ult ptr %i.sn, %scevgep962
  %found.conflict966 = and i1 %bound0964, %bound1965
  br i1 %found.conflict966, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027, label %vector.ph969

vector.ph969:                                     ; preds = %vector.memcheck961
  %n.vec970 = and i64 %i.te, 4611686018427387900  ; 3 uses
  %i.tj = shl i64 %n.vec970, 3                    ; 2 uses
  %i.tk = getelementptr i8, ptr %i.sy, i64 %i.tj  ; 2 uses
  %i.tl = getelementptr i8, ptr %i.sn, i64 %i.tj
  br label %vector.body971

vector.body971:                                   ; preds = %vector.body971, %vector.ph969
  %index972 = phi i64 [ 0, %vector.ph969 ], [ %index.next977, %vector.body971 ] ; 2 uses
  %i.tm = shl i64 %index972, 3                    ; 2 uses
  %next.gep973 = getelementptr i8, ptr %i.sy, i64 %i.tm ; 2 uses
  %next.gep974 = getelementptr i8, ptr %i.sn, i64 %i.tm ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.tn = getelementptr i8, ptr %next.gep974, i64 16
  %wide.load975 = load <2 x i64>, ptr %next.gep974, align 8, !tbaa !301, !alias.scope !711, !noalias !706
  %wide.load976 = load <2 x i64>, ptr %i.tn, align 8, !tbaa !301, !alias.scope !711, !noalias !706
  %i.to = getelementptr i8, ptr %next.gep973, i64 16
  store <2 x i64> %wide.load975, ptr %next.gep973, align 8, !tbaa !301, !alias.scope !714, !noalias !711
  store <2 x i64> %wide.load976, ptr %i.to, align 8, !tbaa !301, !alias.scope !714, !noalias !711
  %i.tp = getelementptr i8, ptr %next.gep974, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep974, align 8, !tbaa !301, !alias.scope !711, !noalias !706
  store <2 x ptr> splat (ptr null), ptr %i.tp, align 8, !tbaa !301, !alias.scope !711, !noalias !706
  %index.next977 = add nuw i64 %index972, 4       ; 2 uses
  %i.tq = icmp eq i64 %index.next977, %n.vec970
  br i1 %i.tq, label %middle.block978, label %vector.body971, !llvm.loop !716

middle.block978:                                  ; preds = %vector.body971
  %cmp.n979 = icmp eq i64 %i.te, %n.vec970
  br i1 %cmp.n979, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027

.lr.ph.i.i.i.i.i.i.i427.preheader1027:            ; preds = %vector.memcheck961, %.lr.ph.i.i.i.i.i.i.i427.preheader, %middle.block978
  %.012.i.i.i.i.i.i.i428.ph = phi ptr [ %i.sy, %vector.memcheck961 ], [ %i.sy, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.tk, %middle.block978 ]
  %.0911.i.i.i.i.i.i.i429.ph = phi ptr [ %i.sn, %vector.memcheck961 ], [ %i.sn, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.tl, %middle.block978 ]
  br label %.lr.ph.i.i.i.i.i.i.i427

.lr.ph.i.i.i.i.i.i.i427:                          ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader1027, %.lr.ph.i.i.i.i.i.i.i427
  %.012.i.i.i.i.i.i.i428 = phi ptr [ %i.tt, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.012.i.i.i.i.i.i.i428.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader1027 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i429 = phi ptr [ %i.ts, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.0911.i.i.i.i.i.i.i429.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader1027 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.tr = load i64, ptr %.0911.i.i.i.i.i.i.i429, align 8, !tbaa !301, !alias.scope !709, !noalias !706
  store i64 %i.tr, ptr %.012.i.i.i.i.i.i.i428, align 8, !tbaa !301, !alias.scope !706, !noalias !709
  store ptr null, ptr %.0911.i.i.i.i.i.i.i429, align 8, !tbaa !301, !alias.scope !709, !noalias !706
  %i.ts = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429, i64 8 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i430 = icmp eq ptr %i.ts, %i.si
  br i1 %.not.i.i.i.i.i.i.i430, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427, !llvm.loop !717

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431: ; preds = %.lr.ph.i.i.i.i.i.i.i427, %middle.block978, %.noexc436
  %.0.lcssa.i.i.i.i.i.i.i432 = phi ptr [ %i.sy, %.noexc436 ], [ %i.tk, %middle.block978 ], [ %i.tt, %.lr.ph.i.i.i.i.i.i.i427 ]
  %i.tu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i432, i64 8
  %.not.i23.i.i.i433 = icmp eq ptr %i.sn, null
  br i1 %.not.i23.i.i.i433, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431
  tail call void @_ZdlPv(ptr noundef nonnull %i.sn) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434: ; preds = %bb.cw, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431
  store ptr %i.sy, ptr %i.se, align 8, !tbaa !299
  store ptr %i.tu, ptr %i.sh, align 8, !tbaa !300
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.sw
  store ptr %i.tv, ptr %i.sj, align 8, !tbaa !306
  br label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434, %bb.ct
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.tw, align 4, !tbaa !289
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447: ; preds = %bb.cv, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.tx = landingpad { ptr, i32 }
          cleanup
  %i.ty = load ptr, ptr %i.sf, align 8, !tbaa !18
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8
  tail call void %i.ua(ptr noundef nonnull align 8 dereferenceable(24) %i.sf) #37, !inline_history !319
  br label %bb.fi

bb.cx:                                            ; preds = %.loopexit
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #37
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ud = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #45, !noalias !718 ; 7 uses
  %i.ue = load i32, ptr %i.uc, align 8, !tbaa !246, !noalias !718
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  store i64 %2, ptr %i.uf, align 8, !tbaa !30, !noalias !718
  %.sroa.2.0..sroa_idx.i.i.i451 = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i451, align 8, !noalias !718
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11z_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.ud, align 8, !tbaa !18, !noalias !718
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 24
  store i32 %i.ue, ptr %i.ug, align 8, !tbaa !721, !noalias !718
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ud, i64 32
  store i64 0, ptr %i.uh, align 8, !tbaa !30, !noalias !718
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ud, i64 40
  store i32 0, ptr %i.ui, align 8, !tbaa !723, !noalias !718
  store ptr %i.ud, ptr %32, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ub, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.uj = load ptr, ptr %32, align 8, !tbaa !301  ; 3 uses
  %.not.i452.a = icmp eq ptr %i.uj, null
  br i1 %.not.i452.a, label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453.a

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453.a: ; preds = %bb.cy
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !18
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.um = load ptr, ptr %i.ul, align 8
  call void %i.um(ptr noundef nonnull align 8 dereferenceable(24) %i.uj) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453.a, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.un, align 4, !tbaa !289
  br label %bb.fh

bb.cz:                                            ; preds = %bb.cx
  %i.uo = landingpad { ptr, i32 }
          cleanup
  %i.up = load ptr, ptr %32, align 8, !tbaa !301  ; 3 uses
  %.not.i456 = icmp eq ptr %i.up, null
  br i1 %.not.i456, label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457: ; preds = %bb.cz
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !18
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.us = load ptr, ptr %i.ur, align 8
  call void %i.us(ptr noundef nonnull align 8 dereferenceable(24) %i.up) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461

_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  br label %bb.fi

bb.da:                                            ; preds = %.loopexit
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #37
  %i.uu = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !724 ; 4 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store i64 %2, ptr %i.uv, align 8, !tbaa !30, !noalias !724
  %.sroa.2.0..sroa_idx.i.i.i465 = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i465, align 8, !noalias !724
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details13pid_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.uu, align 8, !tbaa !18, !noalias !724
  store ptr %i.uu, ptr %33, align 8, !tbaa !415
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ut, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.uw = load ptr, ptr %33, align 8, !tbaa !301  ; 3 uses
  %.not.i466.a = icmp eq ptr %i.uw, null
  br i1 %.not.i466.a, label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467.a

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467.a: ; preds = %bb.db
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !18
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load ptr, ptr %i.uy, align 8
  call void %i.uz(ptr noundef nonnull align 8 dereferenceable(24) %i.uw) #37, !inline_history !319
  br label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467.a, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  br label %bb.fh

bb.dc:                                            ; preds = %bb.da
  %i.va = landingpad { ptr, i32 }
          cleanup
end_hunk_6
