Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/spdlog/original/spdlog?download=true
inline.NumInlined: 6885
inline.NumDeleted: 3933
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_ZN6spdlog17pattern_formatterC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17pattern_time_typeES6_St13unordered_mapIcSt10unique_ptrINS_21custom_flag_formatterESt14default_deleteISA_EESt4hashIcESt8equal_toIcESaISt4pairIKcSD_EEE:bb.a
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
  %i.q = phi ptr [ null, %.lr.ph98 ], [ %i.dl, %bb.w ] ; 2 uses
  %i.r = phi ptr [ null, %.lr.ph98 ], [ %i.dm, %bb.w ] ; 6 uses
  %i.s = phi ptr [ null, %.lr.ph98 ], [ %i.dn, %bb.w ] ; 3 uses
  %.sroa.064.097 = phi ptr [ %i.o, %.lr.ph98 ], [ %i.do, %bb.w ] ; 5 uses
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
  %i.as = add i64 %i.ar, 8                        ; 2 uses
  %i.at = getelementptr i8, ptr %i.ak, i64 %i.as
  %i.au = getelementptr i8, ptr %i.z, i64 %i.as
  %bound0 = icmp ult ptr %i.ak, %i.au
  %bound1 = icmp ult ptr %i.z, %i.at
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader184, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.z, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.ay ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.z, i64 %i.ay ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.az = getelementptr i8, ptr %next.gep165, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep165, align 8, !tbaa !234, !alias.scope !450
  %wide.load166 = load <2 x i64>, ptr %i.az, align 8, !tbaa !234, !alias.scope !450
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !234, !alias.scope !451, !noalias !452
  store <2 x i64> %wide.load166, ptr %i.ba, align 8, !tbaa !234, !alias.scope !451, !noalias !452
  store <2 x ptr> splat (ptr null), ptr %next.gep165, align 8, !tbaa !234, !alias.scope !450
  store <2 x ptr> splat (ptr null), ptr %i.az, align 8, !tbaa !234, !alias.scope !450
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader184

.lr.ph.i.i.i.i.i.i.i.preheader184:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader184, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader184 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader184 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.bc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !449
  store i64 %i.bc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !448
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !449
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !437

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc18
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.noexc18 ], [ %i.aw, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #43
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !231
  store ptr %i.bf, ptr %i.h, align 8, !tbaa !232
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bg, ptr %i.p, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.g
  %lpad.loopexit.split-lp185 = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #36, !inline_history !19
  br label %bb.ac

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.e, %bb.c
  %i.bk = phi ptr [ null, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ null, %bb.e ], [ %i.q, %bb.c ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.064.097, i64 1 ; 4 uses
  %i.bm = icmp eq ptr %i.bl, %i.e
  br i1 %i.bm, label %bb.o, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !64
  switch i8 %i.bn, label %bb.k [
    i8 45, label %.sink.split.i
    i8 61, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %.017.ph.i = phi i64 [ 2, %bb.j ], [ 1, %bb.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.064.097, i64 2
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.i
  %.sroa.064.2 = phi ptr [ %i.bl, %bb.i ], [ %i.bo, %.sink.split.i ] ; 9 uses
  %.017.i = phi i64 [ 0, %bb.i ], [ %.017.ph.i, %.sink.split.i ] ; 5 uses
  %.sroa.064.2108 = ptrtoaddr ptr %.sroa.064.2 to i64
  %i.bp = icmp eq ptr %.sroa.064.2, %i.e
  br i1 %i.bp, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load i8, ptr %.sroa.064.2, align 1, !tbaa !64 ; 2 uses
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
  %i.bu = load i8, ptr %storemerge36.i, align 1, !tbaa !64 ; 3 uses
  %i.bv = add i8 %i.bu, -48
  %isdigit18.i90 = icmp ult i8 %i.bv, 10
  br i1 %isdigit18.i90, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %i.bw = getelementptr i8, ptr %.sroa.064.2, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.bw, i64 %i.b
  %i.bx = sub i64 0, %.sroa.064.2108
  %scevgep109 = getelementptr i8, ptr %scevgep, i64 %i.bx ; 2 uses
  %i.by = zext nneg i8 %i.bu to i64
  %i.bz = mul nuw nsw i64 %i.bt, 10
  %i.ca = add nsw i64 %i.bz, -48
  %i.cb = add nsw i64 %i.ca, %i.by                ; 2 uses
  %storemerge.i157 = getelementptr inbounds nuw i8, ptr %.sroa.064.2, i64 2 ; 2 uses
  %.not.i22158 = icmp eq ptr %storemerge.i157, %i.e
  br i1 %.not.i22158, label %.critedge.i, label %.lr.ph.i.lr.ph, !llvm.loop !20

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  br label %.lr.ph.i, !llvm.loop !20

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %storemerge.i160 = phi ptr [ %storemerge.i157, %.lr.ph.i.lr.ph ], [ %storemerge.i, %.lr.ph ] ; 4 uses
  %i.cc = phi i64 [ %i.cb, %.lr.ph.i.lr.ph ], [ %i.ci, %.lr.ph ] ; 2 uses
  %.sroa.064.391159 = phi ptr [ %storemerge36.i, %.lr.ph.i.lr.ph ], [ %storemerge.i160, %.lr.ph ]
  %i.cd = load i8, ptr %storemerge.i160, align 1, !tbaa !64 ; 3 uses
  %i.ce = add i8 %i.cd, -48
  %isdigit18.i = icmp ult i8 %i.ce, 10
  br i1 %isdigit18.i, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !20

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.cf = zext nneg i8 %i.cd to i64
  %i.cg = mul i64 %i.cc, 10
  %i.ch = add i64 %i.cg, -48
  %i.ci = add i64 %i.ch, %i.cf                    ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge.i160, i64 1 ; 2 uses
  %.not.i22 = icmp eq ptr %storemerge.i, %i.e
  br i1 %.not.i22, label %.lr.ph..critedge.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !20

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.sroa.064.3.lcssa = phi ptr [ %storemerge36.i, %.lr.ph.i.preheader ], [ %storemerge.i160, %.lr.ph.i ]
  %.03139.i.lcssa = phi i64 [ %i.bt, %.lr.ph.i.preheader ], [ %i.cc, %.lr.ph.i ] ; 2 uses
  %.pn38.i.lcssa = phi ptr [ %.sroa.064.2, %.lr.ph.i.preheader ], [ %.sroa.064.391159, %.lr.ph.i ]
  %.lcssa82 = phi i8 [ %i.bu, %.lr.ph.i.preheader ], [ %i.cd, %.lr.ph.i ]
  %i.cj = icmp eq i8 %.lcssa82, 33
  br i1 %i.cj, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn38.i.lcssa, i64 2
  %i.cl = or disjoint i64 %.017.i, 4294967296
  br label %.critedge.i

.lr.ph..critedge.i.loopexit_crit_edge:            ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !20

.critedge.i:                                      ; preds = %.lr.ph.preheader, %.lr.ph..critedge.i.loopexit_crit_edge, %bb.n, %.lr.ph.i._crit_edge, %bb.m
  %.sroa.064.4 = phi ptr [ %storemerge36.i, %bb.m ], [ %.sroa.064.3.lcssa, %.lr.ph.i._crit_edge ], [ %i.ck, %bb.n ], [ %scevgep109, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %scevgep109, %.lr.ph.preheader ]
  %.03134.i = phi i64 [ %i.bt, %bb.m ], [ %.03139.i.lcssa, %.lr.ph.i._crit_edge ], [ %.03139.i.lcssa, %bb.n ], [ %i.ci, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %i.cb, %.lr.ph.preheader ]
  %.0.i = phi i64 [ %.017.i, %bb.m ], [ %.017.i, %.lr.ph.i._crit_edge ], [ %i.cl, %bb.n ], [ %.017.i, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %.017.i, %.lr.ph.preheader ]
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.03134.i, i64 64)
  %.sroa.6.13.insert.insert.i = or disjoint i64 %.0.i, 1099511627776
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i, %bb.l, %bb.k, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %.sroa.064.5 = phi ptr [ %i.bl, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.064.2, %bb.k ], [ %.sroa.064.4, %.critedge.i ], [ %.sroa.064.2, %bb.l ] ; 4 uses
  %.sroa.6.0.i = phi i64 [ 0, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ 0, %bb.k ], [ %.sroa.6.13.insert.insert.i, %.critedge.i ], [ 0, %bb.l ] ; 3 uses
  %.sroa.027.0.i = phi i64 [ 0, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ 0, %bb.k ], [ %.sroa.speculated.i, %.critedge.i ], [ 0, %bb.l ] ; 2 uses
  %.not78 = icmp eq ptr %.sroa.064.5, %i.e
  br i1 %.not78, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = and i64 %.sroa.6.0.i, 1099511627776
  %.not80 = icmp eq i64 %i.cm, 0
  %i.cn = load i8, ptr %.sroa.064.5, align 1, !tbaa !64 ; 2 uses
  br i1 %.not80, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 noundef signext %i.cn, i64 %.sroa.027.0.i, i64 %.sroa.6.0.i)
          to label %bb.w unwind label %bb.v

bb.r:                                             ; preds = %bb.p
  invoke void @_ZN6spdlog17pattern_formatter12handle_flag_INS_7details18null_scoped_padderEEEvcNS2_12padding_infoE(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 noundef signext %i.cn, i64 %.sroa.027.0.i, i64 %.sroa.6.0.i)
          to label %bb.w unwind label %bb.v

bb.s:                                             ; preds = %bb.b
  %.not76 = icmp eq ptr %i.s, null
  br i1 %.not76, label %bb.t, label %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge111

._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge111: ; preds = %bb.s
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.pre112 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !60
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.co = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #44
          to label %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge unwind label %bb.v ; 8 uses

._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge: ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.co, i8 0, i64 56, i1 false), !noalias !453
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details19aggregate_formatterE, i64 16), ptr %i.co, align 16, !tbaa !62, !noalias !453
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 40 ; 2 uses
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !63, !noalias !453
  store ptr %i.co, ptr %2, align 8, !tbaa !235
  %.pre110 = load i8, ptr %.sroa.064.097, align 1, !tbaa !64
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge111, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge
  %i.cr = phi ptr [ %i.co, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.q, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge111 ]
  %i.cs = phi ptr [ %i.co, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.r, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge111 ]
  %i.ct = phi ptr [ %i.cq, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %.pre112, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge111 ] ; 2 uses
  %i.cu = phi i8 [ %.pre110, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.t, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge111 ]
  %i.cv = phi ptr [ %i.co, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.s, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge111 ] ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !59 ; 4 uses
  %i.cz = add i64 %i.cy, 1                        ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 40 ; 2 uses
  %i.db = icmp eq ptr %i.ct, %i.da
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.dc = icmp ult i64 %i.cy, 16
  tail call void @llvm.assume(i1 %i.dc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.dd = load i64, ptr %i.da, align 8, !tbaa !64
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.de = phi i64 [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.df = icmp ugt i64 %i.cz, %i.de
  br i1 %i.df, label %bb.u, label %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i64 noundef %i.cy, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc26 unwind label %bb.v

.noexc26:                                         ; preds = %bb.u
  %.pre.i.i.i = load ptr, ptr %i.cw, align 8, !tbaa !60
  br label %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit

_ZN6spdlog7details19aggregate_formatter6add_chEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, %.noexc26
  %i.dg = phi ptr [ %.pre.i.i.i, %.noexc26 ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  store i8 %i.cu, ptr %i.dh, align 1, !tbaa !64
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !59
  %i.di = load ptr, ptr %i.cw, align 8, !tbaa !60
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.cz
  store i8 0, ptr %i.dj, align 1, !tbaa !64
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.r, %bb.q, %bb.u
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.w:                                             ; preds = %bb.q, %bb.r, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit
  %i.dl = phi ptr [ %i.cr, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ %i.bk, %bb.r ], [ %i.bk, %bb.q ] ; 2 uses
  %i.dm = phi ptr [ %i.cs, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ null, %bb.r ], [ null, %bb.q ]
  %i.dn = phi ptr [ %i.cv, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ null, %bb.r ], [ null, %bb.q ]
  %.sroa.064.1 = phi ptr [ %.sroa.064.097, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ %.sroa.064.5, %bb.r ], [ %.sroa.064.5, %bb.q ]
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.064.1, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.do, %i.e
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !440

.critedge:                                        ; preds = %bb.w, %bb.o
  %i.dp = phi ptr [ %i.dl, %bb.w ], [ %i.bk, %bb.o ] ; 5 uses
  %.not79 = icmp eq ptr %i.dp, null
  br i1 %.not79, label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53, label %bb.x

bb.x:                                             ; preds = %.critedge
  store ptr null, ptr %2, align 8, !tbaa !235
  %i.dq = load ptr, ptr %i.h, align 8, !tbaa !232 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !236
  %.not.i.i27 = icmp eq ptr %i.dq, %i.ds
  br i1 %.not.i.i27, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = ptrtoint ptr %i.dp to i64
  store i64 %i.dt, ptr %i.dq, align 8, !tbaa !234
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.du, ptr %i.h, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53

bb.z:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %i.f, align 8, !tbaa !231 ; 7 uses
  %i.dw = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx                    ; 3 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775800
  br i1 %i.dz, label %bb.aa, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #42
          to label %.noexc40 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48

.noexc40:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28: ; preds = %bb.z
  %i.ea = ashr exact i64 %i.dy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i.i29, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 1152921504606846975)
  %i.ee = select i1 %i.ec, i64 1152921504606846975, i64 %i.ed ; 3 uses
  %.not.i.i.i.i30 = icmp ne i64 %i.ee, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i30)
  %i.ef = shl nuw nsw i64 %i.ee, 3
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #44
          to label %.noexc41 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48 ; 7 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dy
  %i.ei = ptrtoint ptr %i.dp to i64
  store i64 %i.ei, ptr %i.eh, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i31 = icmp eq ptr %i.dv, %i.dq
  br i1 %.not10.i.i.i.i.i.i.i31, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i32.preheader

.lr.ph.i.i.i.i.i.i.i32.preheader:                 ; preds = %.noexc41
  %i.ej = add i64 %i.dw, -8
  %i.ek = sub i64 %i.ej, %i.dx                    ; 2 uses
  %i.el = lshr i64 %i.ek, 3
  %i.em = add nuw nsw i64 %i.el, 1                ; 2 uses
  %min.iters.check169 = icmp ult i64 %i.ek, 24
  br i1 %min.iters.check169, label %.lr.ph.i.i.i.i.i.i.i32.preheader183, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader
  %n.vec171 = and i64 %i.em, 4611686018427387900  ; 3 uses
  %i.en = shl i64 %n.vec171, 3                    ; 2 uses
  %i.eo = getelementptr i8, ptr %i.eg, i64 %i.en  ; 2 uses
  %i.ep = getelementptr i8, ptr %i.dv, i64 %i.en
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next178, %vector.body172 ] ; 2 uses
  %i.eq = shl i64 %index173, 3                    ; 2 uses
  %next.gep174 = getelementptr i8, ptr %i.eg, i64 %i.eq ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.dv, i64 %i.eq ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.er = getelementptr i8, ptr %next.gep175, i64 16 ; 2 uses
  %wide.load176 = load <2 x i64>, ptr %next.gep175, align 8, !tbaa !234, !alias.scope !455
  %wide.load177 = load <2 x i64>, ptr %i.er, align 8, !tbaa !234, !alias.scope !455
  %i.es = getelementptr i8, ptr %next.gep174, i64 16
  store <2 x i64> %wide.load176, ptr %next.gep174, align 8, !tbaa !234, !alias.scope !454
  store <2 x i64> %wide.load177, ptr %i.es, align 8, !tbaa !234, !alias.scope !454
  store <2 x ptr> splat (ptr null), ptr %next.gep175, align 8, !tbaa !234, !alias.scope !455
  store <2 x ptr> splat (ptr null), ptr %i.er, align 8, !tbaa !234, !alias.scope !455
  %index.next178 = add nuw i64 %index173, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.et, label %middle.block179, label %vector.body172, !llvm.loop !444

middle.block179:                                  ; preds = %vector.body172
  %cmp.n180 = icmp eq i64 %i.em, %n.vec171
  br i1 %cmp.n180, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i32.preheader183

.lr.ph.i.i.i.i.i.i.i32.preheader183:              ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader, %middle.block179
  %.012.i.i.i.i.i.i.i33.ph = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.eo, %middle.block179 ]
  %.0911.i.i.i.i.i.i.i34.ph = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.ep, %middle.block179 ]
  br label %.lr.ph.i.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i.i32:                           ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader183, %.lr.ph.i.i.i.i.i.i.i32
  %.012.i.i.i.i.i.i.i33 = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.012.i.i.i.i.i.i.i33.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader183 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i34 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.0911.i.i.i.i.i.i.i34.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader183 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.eu = load i64, ptr %.0911.i.i.i.i.i.i.i34, align 8, !tbaa !234, !alias.scope !455
  store i64 %i.eu, ptr %.012.i.i.i.i.i.i.i33, align 8, !tbaa !234, !alias.scope !454
  store ptr null, ptr %.0911.i.i.i.i.i.i.i34, align 8, !tbaa !234, !alias.scope !455
  %i.ev = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i34, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i33, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ev, %i.dq
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i32, !llvm.loop !445

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i32, %middle.block179, %.noexc41
  %.0.lcssa.i.i.i.i.i.i.i37 = phi ptr [ %i.eg, %.noexc41 ], [ %i.eo, %middle.block179 ], [ %i.ew, %.lr.ph.i.i.i.i.i.i.i32 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i37, i64 8
  %.not.i23.i.i.i38 = icmp eq ptr %i.dv, null
  br i1 %.not.i23.i.i.i38, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36
  tail call void @_ZdlPv(ptr noundef nonnull %i.dv) #43
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39: ; preds = %bb.ab, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36
  store ptr %i.eg, ptr %i.f, align 8, !tbaa !231
  store ptr %i.ex, ptr %i.h, align 8, !tbaa !232
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.ey, ptr %i.dr, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28, %bb.aa
  %i.ez = landingpad { ptr, i32 }
          cleanup
  %i.fa = load ptr, ptr %i.dp, align 8, !tbaa !62
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  tail call void %i.fc(ptr noundef nonnull align 8 dereferenceable(24) %i.dp) #36, !inline_history !19
  br label %bb.ac

_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE5clearEv.exit, %bb.y, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit.split-lp.loopexit.split-lp, %bb.v, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48
  %.pn14 = phi { ptr, i32 } [ %i.ez, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48 ], [ %i.dk, %bb.v ], [ %lpad.loopexit.split-lp185, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
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
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #36, !inline_history !456
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #43
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
  tail call void @_ZdlPv(ptr noundef %i.m) #43
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
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #36, !inline_history !457
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
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #43
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.ac = invoke noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #44
          to label %bb.b unwind label %bb.g       ; 14 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details14full_formatterE, i64 16), ptr %i.ac, align 8, !tbaa !62, !noalias !465
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 0, ptr %i.ae, align 8, !tbaa !237, !noalias !465
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i64 0, ptr %i.ai, align 8, !noalias !465
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ah, align 8, !tbaa !66, !noalias !465
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !67, !noalias !465
  store i64 250, ptr %i.ag, align 8, !tbaa !68, !noalias !465
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 320
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !noalias !465
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details13mdc_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.ak, align 8, !tbaa !62, !noalias !465
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
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !231 ; 7 uses
  %i.at = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #42
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
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #44
          to label %.noexc9 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13 ; 7 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av
  %i.bf = ptrtoint ptr %i.ac to i64
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.an
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc9
  %i.bg = add i64 %i.at, -8
  %i.bh = sub i64 %i.bg, %i.au                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bj, 4611686018427387900     ; 3 uses
  %i.bk = shl i64 %n.vec, 3                       ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bd, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.as, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.bn ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.as, i64 %i.bn ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.bo = getelementptr i8, ptr %next.gep29, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep29, align 8, !tbaa !234, !alias.scope !467
  %wide.load30 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !234, !alias.scope !467
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !234, !alias.scope !466
  store <2 x i64> %wide.load30, ptr %i.bp, align 8, !tbaa !234, !alias.scope !466
  store <2 x ptr> splat (ptr null), ptr %next.gep29, align 8, !tbaa !234, !alias.scope !467
  store <2 x ptr> splat (ptr null), ptr %i.bo, align 8, !tbaa !234, !alias.scope !467
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !463

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader32

.lr.ph.i.i.i.i.i.i.i.preheader32:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader32, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader32 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader32 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.br = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !467
  store i64 %i.br, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !466
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !467
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.an
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !464

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc9
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.noexc9 ], [ %i.bl, %middle.block ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.as) #43
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bd, ptr %i.u, align 8, !tbaa !231
  store ptr %i.bu, ptr %i.am, align 8, !tbaa !232
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bv, ptr %i.ao, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret void

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.e
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #36, !inline_history !19
  call void @_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #36
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bx, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13 ], [ %i.bw, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.v) #36
  call void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.u) #36
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !60  ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.f
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.cb) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.b
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.cd) #43
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
  %i.g = load ptr, ptr %0, align 8, !tbaa !231    ; 7 uses
  %i.h = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #42
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
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #44 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  %i.t = load i64, ptr %1, align 8, !tbaa !234
  store i64 %i.t, ptr %i.s, align 8, !tbaa !234
  store ptr null, ptr %1, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = add i64 %i.h, -8
  %i.v = sub i64 %i.u, %i.i                       ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.r, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ab ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.g, i64 %i.ab ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.ac = getelementptr i8, ptr %next.gep4, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !tbaa !234, !alias.scope !474
  %wide.load5 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !234, !alias.scope !474
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !234, !alias.scope !473
  store <2 x i64> %wide.load5, ptr %i.ad, align 8, !tbaa !234, !alias.scope !473
  store <2 x ptr> splat (ptr null), ptr %next.gep4, align 8, !tbaa !234, !alias.scope !474
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !234, !alias.scope !474
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !471

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.preheader7:                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader7 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.af = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !474
  store i64 %i.af, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !473
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !474
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !472

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #43
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !231
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !232
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !236
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
  tail call void @free(ptr noundef %i.c) #36
  br label %_ZNKSt14default_deleteIN6spdlog7details14full_formatterEEclEPS2_.exit

_ZNKSt14default_deleteIN6spdlog7details14full_formatterEEclEPS2_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #43
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_ZN6spdlog7details11make_uniqueINS_17pattern_formatterEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_17pattern_time_typeESA_St13unordered_mapIcSt10unique_ptrINS_21custom_flag_formatterESt14default_deleteISG_EESt4hashIcESt8equal_toIcESaISt4pairIKcSJ_EEEEEESF_IT_SH_IST_EEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.86") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %_ZNSt10unique_ptrIN6spdlog17pattern_formatterESt14default_deleteIS1_EED2Ev.exit unwind label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit
  %.sroa.017.025 = phi ptr [ %.sroa.017.023, %.lr.ph ], [ %.sroa.017.0, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.017.025, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
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

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !64  ; 2 uses
  %i.af = sext i8 %i.ae to i64
  %i.ag = urem i64 %i.af, %i.s
  %.not19.i.i.i.i = icmp eq i64 %i.ag, %i.t
  br i1 %.not19.i.i.i.i, label %bb.e, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !21

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.f
  br label %.loopexit.i.i, !llvm.loop !21

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %3, ptr %2, align 8, !tbaa !476
  %i.ah = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44
          to label %.noexc unwind label %bb.i     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.ah, align 8, !tbaa !176
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i8, ptr %i.k, align 8, !tbaa !64
  store i8 %i.aj, ptr %i.ai, align 8, !tbaa !484
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr null, ptr %i.ak, align 8, !tbaa !485
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !243
  %i.al = invoke ptr @_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %3, i64 noundef %i.t, i64 noundef %i.r, ptr noundef nonnull %i.ah, i64 noundef 1)
          to label %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.g

_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %.loopexit

bb.g:                                             ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %.body

.loopexit:                                        ; preds = %bb.e, %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.d
  %.pn.i.i = phi ptr [ %i.al, %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.x, %bb.d ], [ %i.ac, %bb.e ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 2 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !201
  store ptr null, ptr %4, align 8, !tbaa !201
  %i.ao = load ptr, ptr %.1.i.i, align 8, !tbaa !201 ; 3 uses
  store ptr %i.an, ptr %.1.i.i, align 8, !tbaa !201
  %.not.i.i.i.i10 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i10, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %.loopexit
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
end_hunk_0
begin_hunk_1_@_ZN6spdlog17pattern_formatter15handle_padspec_ERN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_:bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
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
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !231 ; 7 uses
  %i.ao = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #42
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
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #44
          to label %.noexc12 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16 ; 7 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  %i.ba = ptrtoint ptr %i.ae to i64
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ai
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc12
  %i.bb = add i64 %i.ao, -8
  %i.bc = sub i64 %i.bb, %i.ap                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader1010, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ay, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.an, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bi ; 2 uses
  %next.gep957 = getelementptr i8, ptr %i.an, i64 %i.bi ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.bj = getelementptr i8, ptr %next.gep957, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep957, align 8, !tbaa !234, !alias.scope !598
  %wide.load958 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !234, !alias.scope !598
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !234, !alias.scope !597
  store <2 x i64> %wide.load958, ptr %i.bk, align 8, !tbaa !234, !alias.scope !597
  store <2 x ptr> splat (ptr null), ptr %next.gep957, align 8, !tbaa !234, !alias.scope !598
  store <2 x ptr> splat (ptr null), ptr %i.bj, align 8, !tbaa !234, !alias.scope !598
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !500

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1010

.lr.ph.i.i.i.i.i.i.i.preheader1010:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bg, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1010, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1010 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1010 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.bm = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !598
  store i64 %i.bm, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !597
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !598
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.ai
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !501

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.noexc12 ], [ %i.bg, %middle.block ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.an) #43
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.k
  store ptr %i.ay, ptr %i.ag, align 8, !tbaa !231
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !232
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bq, ptr %i.aj, align 8, !tbaa !236
  %.pre = load ptr, ptr %5, align 8, !tbaa !201   ; 3 uses
  %.not.i13 = icmp eq ptr %.pre, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.br = load ptr, ptr %.pre, align 8, !tbaa !62
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(24) %.pre) #36, !inline_history !22
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #36, !inline_history !19
  %i.by = load ptr, ptr %5, align 8, !tbaa !201   ; 3 uses
  %.not.i17 = icmp eq ptr %i.by, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(24) %i.by) #36, !inline_history !22
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19

_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16, %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
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
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @_ZN6spdlog7details11make_uniqueINS0_14full_formatterEJRNS0_12padding_infoEEEESt10unique_ptrIT_St14default_deleteIS6_EEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.105") align 8 %7, ptr noundef nonnull align 8 dereferenceable(14) %4)
  %i.cd = load ptr, ptr %7, align 8, !tbaa !239
  store ptr null, ptr %7, align 8, !tbaa !239
  store ptr %i.cd, ptr %6, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ce = load ptr, ptr %6, align 8, !tbaa !234   ; 3 uses
  %.not.i20 = icmp eq ptr %i.ce, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21: ; preds = %bb.m
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !62
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22: ; preds = %bb.m, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21
  call void @_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ci, align 4, !tbaa !223
  br label %bb.fh

bb.n:                                             ; preds = %bb.l
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %6, align 8, !tbaa !234   ; 3 uses
  %.not.i23 = icmp eq ptr %i.ck, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit25, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i24

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i24: ; preds = %bb.n
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !62
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(24) %i.ck) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit25

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit25: ; preds = %bb.n, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i24
  call void @_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.fi

bb.o:                                             ; preds = %.loopexit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.cp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !599 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %2, ptr %i.cq, align 8, !tbaa !70, !noalias !599
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !599
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details14name_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.cp, align 8, !tbaa !62, !noalias !599
  store ptr %i.cp, ptr %8, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %8, align 8, !tbaa !234   ; 3 uses
  %.not.i26 = icmp eq ptr %i.cr, null
  br i1 %.not.i26, label %_ZNSt10unique_ptrIN6spdlog7details14name_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i27

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i27: ; preds = %bb.p
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !62
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
end_hunk_1
begin_hunk_2_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE:bb.a
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(24) %i.en) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.fh

bb.ac:                                            ; preds = %bb.aa
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = load ptr, ptr %12, align 8, !tbaa !234  ; 3 uses
  %.not.i86 = icmp eq ptr %i.es, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87: ; preds = %bb.ac
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !62
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(24) %i.es) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91

_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.fi

bb.ad:                                            ; preds = %.loopexit
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  %i.ex = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !604 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 %2, ptr %i.ey, align 8, !tbaa !70, !noalias !604
  %.sroa.2.0..sroa_idx.i.i.i95 = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i95, align 8, !noalias !604
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11a_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.ex, align 8, !tbaa !62, !noalias !604
  store ptr %i.ex, ptr %13, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ez = load ptr, ptr %13, align 8, !tbaa !234  ; 3 uses
  %.not.i96 = icmp eq ptr %i.ez, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97: ; preds = %bb.ae
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !62
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(24) %i.ez) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.fd, align 4, !tbaa !223
  br label %bb.fh

bb.af:                                            ; preds = %bb.ad
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %13, align 8, !tbaa !234  ; 3 uses
  %.not.i100 = icmp eq ptr %i.ff, null
  br i1 %.not.i100, label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101: ; preds = %bb.af
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !62
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(24) %i.ff) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105

_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br label %bb.fi

bb.ag:                                            ; preds = %.loopexit
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  %i.fk = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !605 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i64 %2, ptr %i.fl, align 8, !tbaa !70, !noalias !605
  %.sroa.2.0..sroa_idx.i.i.i109 = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i109, align 8, !noalias !605
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11A_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.fk, align 8, !tbaa !62, !noalias !605
  store ptr %i.fk, ptr %14, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fm = load ptr, ptr %14, align 8, !tbaa !234  ; 3 uses
  %.not.i110 = icmp eq ptr %i.fm, null
  br i1 %.not.i110, label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111: ; preds = %bb.ah
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !62
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(24) %i.fm) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.fq, align 4, !tbaa !223
  br label %bb.fh

bb.ai:                                            ; preds = %bb.ag
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %14, align 8, !tbaa !234  ; 3 uses
  %.not.i114 = icmp eq ptr %i.fs, null
  br i1 %.not.i114, label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115: ; preds = %bb.ai
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !62
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(24) %i.fs) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119

_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  br label %bb.fi

bb.aj:                                            ; preds = %.loopexit, %.loopexit
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fx = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !606 ; 7 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %2, ptr %i.fy, align 8, !tbaa !70, !noalias !606
  %.sroa.2.0..sroa_idx.i.i.i123 = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i123, align 8, !noalias !606
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11b_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.fx, align 8, !tbaa !62, !noalias !606
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !232 ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !236
  %.not.i.i124 = icmp eq ptr %i.ga, %i.gc
  br i1 %.not.i.i124, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gd = ptrtoint ptr %i.fx to i64
  store i64 %i.gd, ptr %i.ga, align 8, !tbaa !234
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.ge, ptr %i.fz, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.gf = load ptr, ptr %i.fw, align 8, !tbaa !231 ; 7 uses
  %i.gg = ptrtoint ptr %i.ga to i64               ; 2 uses
  %i.gh = ptrtoint ptr %i.gf to i64               ; 2 uses
  %i.gi = sub i64 %i.gg, %i.gh                    ; 3 uses
  %i.gj = icmp eq i64 %i.gi, 9223372036854775800
  br i1 %i.gj, label %bb.am, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #42
          to label %.noexc137 unwind label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149

.noexc137:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125: ; preds = %bb.al
  %i.gk = ashr exact i64 %i.gi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i126 = tail call i64 @llvm.umax.i64(i64 %i.gk, i64 1)
  %i.gl = add nsw i64 %.sroa.speculated.i.i.i.i126, %i.gk ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.gk
  %i.gn = tail call i64 @llvm.umin.i64(i64 %i.gl, i64 1152921504606846975)
  %i.go = select i1 %i.gm, i64 1152921504606846975, i64 %i.gn ; 3 uses
  %.not.i.i.i.i127 = icmp ne i64 %i.go, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i127)
  %i.gp = shl nuw nsw i64 %i.go, 3
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #44
          to label %.noexc138 unwind label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149 ; 7 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gi
  %i.gs = ptrtoint ptr %i.fx to i64
  store i64 %i.gs, ptr %i.gr, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i128 = icmp eq ptr %i.gf, %i.ga
  br i1 %.not10.i.i.i.i.i.i.i128, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader

.lr.ph.i.i.i.i.i.i.i129.preheader:                ; preds = %.noexc138
  %i.gt = add i64 %i.gg, -8
  %i.gu = sub i64 %i.gt, %i.gh                    ; 2 uses
  %i.gv = lshr i64 %i.gu, 3
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %min.iters.check991 = icmp ult i64 %i.gu, 24
  br i1 %min.iters.check991, label %.lr.ph.i.i.i.i.i.i.i129.preheader1005, label %vector.ph992

vector.ph992:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader
  %n.vec993 = and i64 %i.gw, 4611686018427387900  ; 3 uses
  %i.gx = shl i64 %n.vec993, 3                    ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gq, i64 %i.gx  ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gf, i64 %i.gx
  br label %vector.body994

vector.body994:                                   ; preds = %vector.body994, %vector.ph992
  %index995 = phi i64 [ 0, %vector.ph992 ], [ %index.next1000, %vector.body994 ] ; 2 uses
  %i.ha = shl i64 %index995, 3                    ; 2 uses
  %next.gep996 = getelementptr i8, ptr %i.gq, i64 %i.ha ; 2 uses
  %next.gep997 = getelementptr i8, ptr %i.gf, i64 %i.ha ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.hb = getelementptr i8, ptr %next.gep997, i64 16 ; 2 uses
  %wide.load998 = load <2 x i64>, ptr %next.gep997, align 8, !tbaa !234, !alias.scope !608
  %wide.load999 = load <2 x i64>, ptr %i.hb, align 8, !tbaa !234, !alias.scope !608
  %i.hc = getelementptr i8, ptr %next.gep996, i64 16
  store <2 x i64> %wide.load998, ptr %next.gep996, align 8, !tbaa !234, !alias.scope !607
  store <2 x i64> %wide.load999, ptr %i.hc, align 8, !tbaa !234, !alias.scope !607
  store <2 x ptr> splat (ptr null), ptr %next.gep997, align 8, !tbaa !234, !alias.scope !608
  store <2 x ptr> splat (ptr null), ptr %i.hb, align 8, !tbaa !234, !alias.scope !608
  %index.next1000 = add nuw i64 %index995, 4      ; 2 uses
  %i.hd = icmp eq i64 %index.next1000, %n.vec993
  br i1 %i.hd, label %middle.block1001, label %vector.body994, !llvm.loop !521

middle.block1001:                                 ; preds = %vector.body994
  %cmp.n1002 = icmp eq i64 %i.gw, %n.vec993
  br i1 %cmp.n1002, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader1005

.lr.ph.i.i.i.i.i.i.i129.preheader1005:            ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader, %middle.block1001
  %.012.i.i.i.i.i.i.i130.ph = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.gy, %middle.block1001 ]
  %.0911.i.i.i.i.i.i.i131.ph = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.gz, %middle.block1001 ]
  br label %.lr.ph.i.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i.i129:                          ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader1005, %.lr.ph.i.i.i.i.i.i.i129
  %.012.i.i.i.i.i.i.i130 = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.012.i.i.i.i.i.i.i130.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader1005 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i131 = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.0911.i.i.i.i.i.i.i131.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader1005 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.he = load i64, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !234, !alias.scope !608
  store i64 %i.he, ptr %.012.i.i.i.i.i.i.i130, align 8, !tbaa !234, !alias.scope !607
  store ptr null, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !234, !alias.scope !608
  %i.hf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i131, i64 8 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i130, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %i.hf, %i.ga
  br i1 %.not.i.i.i.i.i.i.i132, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129, !llvm.loop !522

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133: ; preds = %.lr.ph.i.i.i.i.i.i.i129, %middle.block1001, %.noexc138
  %.0.lcssa.i.i.i.i.i.i.i134 = phi ptr [ %i.gq, %.noexc138 ], [ %i.gy, %middle.block1001 ], [ %i.hg, %.lr.ph.i.i.i.i.i.i.i129 ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i134, i64 8
  %.not.i23.i.i.i135 = icmp eq ptr %i.gf, null
  br i1 %.not.i23.i.i.i135, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133
  tail call void @_ZdlPv(ptr noundef nonnull %i.gf) #43
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136: ; preds = %bb.an, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133
  store ptr %i.gq, ptr %i.fw, align 8, !tbaa !231
  store ptr %i.hh, ptr %i.fz, align 8, !tbaa !232
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.go
  store ptr %i.hi, ptr %i.gb, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136, %bb.ak
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.hj, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149: ; preds = %bb.am, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.hk = landingpad { ptr, i32 }
          cleanup
  %i.hl = load ptr, ptr %i.fx, align 8, !tbaa !62
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  tail call void %i.hn(ptr noundef nonnull align 8 dereferenceable(24) %i.fx) #36, !inline_history !19
  br label %bb.fi

bb.ao:                                            ; preds = %.loopexit
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  %i.hp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !609 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i64 %2, ptr %i.hq, align 8, !tbaa !70, !noalias !609
  %.sroa.2.0..sroa_idx.i.i.i153 = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i153, align 8, !noalias !609
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11B_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.hp, align 8, !tbaa !62, !noalias !609
  store ptr %i.hp, ptr %15, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ho, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hr = load ptr, ptr %15, align 8, !tbaa !234  ; 3 uses
  %.not.i154 = icmp eq ptr %i.hr, null
  br i1 %.not.i154, label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155: ; preds = %bb.ap
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !62
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(24) %i.hr) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.hv, align 4, !tbaa !223
  br label %bb.fh

bb.aq:                                            ; preds = %bb.ao
  %i.hw = landingpad { ptr, i32 }
          cleanup
  %i.hx = load ptr, ptr %15, align 8, !tbaa !234  ; 3 uses
  %.not.i158 = icmp eq ptr %i.hx, null
  br i1 %.not.i158, label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159: ; preds = %bb.aq
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !62
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(24) %i.hx) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163

_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  br label %bb.fi

bb.ar:                                            ; preds = %.loopexit
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  %i.ic = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !610 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store i64 %2, ptr %i.id, align 8, !tbaa !70, !noalias !610
  %.sroa.2.0..sroa_idx.i.i.i167 = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i167, align 8, !noalias !610
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11c_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.ic, align 8, !tbaa !62, !noalias !610
  store ptr %i.ic, ptr %16, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ib, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ie = load ptr, ptr %16, align 8, !tbaa !234  ; 3 uses
  %.not.i168 = icmp eq ptr %i.ie, null
  br i1 %.not.i168, label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169: ; preds = %bb.as
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !62
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(24) %i.ie) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ii, align 4, !tbaa !223
  br label %bb.fh

bb.at:                                            ; preds = %bb.ar
  %i.ij = landingpad { ptr, i32 }
          cleanup
  %i.ik = load ptr, ptr %16, align 8, !tbaa !234  ; 3 uses
  %.not.i172 = icmp eq ptr %i.ik, null
  br i1 %.not.i172, label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173: ; preds = %bb.at
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !62
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(24) %i.ik) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177

_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %bb.fi

bb.au:                                            ; preds = %.loopexit
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  %i.ip = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !611 ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store i64 %2, ptr %i.iq, align 8, !tbaa !70, !noalias !611
  %.sroa.2.0..sroa_idx.i.i.i181 = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i181, align 8, !noalias !611
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11C_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.ip, align 8, !tbaa !62, !noalias !611
  store ptr %i.ip, ptr %17, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.io, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ir = load ptr, ptr %17, align 8, !tbaa !234  ; 3 uses
  %.not.i182 = icmp eq ptr %i.ir, null
  br i1 %.not.i182, label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183: ; preds = %bb.av
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !62
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(24) %i.ir) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.iv, align 4, !tbaa !223
  br label %bb.fh

bb.aw:                                            ; preds = %bb.au
  %i.iw = landingpad { ptr, i32 }
          cleanup
  %i.ix = load ptr, ptr %17, align 8, !tbaa !234  ; 3 uses
  %.not.i186 = icmp eq ptr %i.ix, null
  br i1 %.not.i186, label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187: ; preds = %bb.aw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !62
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(24) %i.ix) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191

_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  br label %bb.fi

bb.ax:                                            ; preds = %.loopexit
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  %i.jc = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !612 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i64 %2, ptr %i.jd, align 8, !tbaa !70, !noalias !612
  %.sroa.2.0..sroa_idx.i.i.i195 = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i195, align 8, !noalias !612
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11Y_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.jc, align 8, !tbaa !62, !noalias !612
  store ptr %i.jc, ptr %18, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.jb, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.je = load ptr, ptr %18, align 8, !tbaa !234  ; 3 uses
  %.not.i196 = icmp eq ptr %i.je, null
  br i1 %.not.i196, label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197: ; preds = %bb.ay
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !62
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(24) %i.je) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ji, align 4, !tbaa !223
  br label %bb.fh

bb.az:                                            ; preds = %bb.ax
  %i.jj = landingpad { ptr, i32 }
          cleanup
  %i.jk = load ptr, ptr %18, align 8, !tbaa !234  ; 3 uses
  %.not.i200 = icmp eq ptr %i.jk, null
  br i1 %.not.i200, label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201: ; preds = %bb.az
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !62
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(24) %i.jk) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205

_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br label %bb.fi

bb.ba:                                            ; preds = %.loopexit, %.loopexit
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.jp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !613 ; 7 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store i64 %2, ptr %i.jq, align 8, !tbaa !70, !noalias !613
  %.sroa.2.0..sroa_idx.i.i.i209 = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i209, align 8, !noalias !613
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11D_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.jp, align 8, !tbaa !62, !noalias !613
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !232 ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !236
  %.not.i.i210 = icmp eq ptr %i.js, %i.ju
  br i1 %.not.i.i210, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jv = ptrtoint ptr %i.jp to i64
  store i64 %i.jv, ptr %i.js, align 8, !tbaa !234
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  store ptr %i.jw, ptr %i.jr, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.bc:                                            ; preds = %bb.ba
  %i.jx = load ptr, ptr %i.jo, align 8, !tbaa !231 ; 7 uses
  %i.jy = ptrtoint ptr %i.js to i64               ; 2 uses
  %i.jz = ptrtoint ptr %i.jx to i64               ; 2 uses
  %i.ka = sub i64 %i.jy, %i.jz                    ; 3 uses
  %i.kb = icmp eq i64 %i.ka, 9223372036854775800
  br i1 %i.kb, label %bb.bd, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #42
          to label %.noexc223 unwind label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235

.noexc223:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211: ; preds = %bb.bc
  %i.kc = ashr exact i64 %i.ka, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i212 = tail call i64 @llvm.umax.i64(i64 %i.kc, i64 1)
  %i.kd = add nsw i64 %.sroa.speculated.i.i.i.i212, %i.kc ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %i.kc
  %i.kf = tail call i64 @llvm.umin.i64(i64 %i.kd, i64 1152921504606846975)
  %i.kg = select i1 %i.ke, i64 1152921504606846975, i64 %i.kf ; 3 uses
  %.not.i.i.i.i213 = icmp ne i64 %i.kg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i213)
  %i.kh = shl nuw nsw i64 %i.kg, 3
  %i.ki = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kh) #44
          to label %.noexc224 unwind label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235 ; 7 uses

.noexc224:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ka
  %i.kk = ptrtoint ptr %i.jp to i64
  store i64 %i.kk, ptr %i.kj, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i214 = icmp eq ptr %i.jx, %i.js
  br i1 %.not10.i.i.i.i.i.i.i214, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215.preheader

.lr.ph.i.i.i.i.i.i.i215.preheader:                ; preds = %.noexc224
  %i.kl = add i64 %i.jy, -8
  %i.km = sub i64 %i.kl, %i.jz                    ; 2 uses
  %i.kn = lshr i64 %i.km, 3
  %i.ko = add nuw nsw i64 %i.kn, 1                ; 2 uses
  %min.iters.check976 = icmp ult i64 %i.km, 24
  br i1 %min.iters.check976, label %.lr.ph.i.i.i.i.i.i.i215.preheader1006, label %vector.ph977

vector.ph977:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader
  %n.vec978 = and i64 %i.ko, 4611686018427387900  ; 3 uses
  %i.kp = shl i64 %n.vec978, 3                    ; 2 uses
  %i.kq = getelementptr i8, ptr %i.ki, i64 %i.kp  ; 2 uses
  %i.kr = getelementptr i8, ptr %i.jx, i64 %i.kp
  br label %vector.body979

vector.body979:                                   ; preds = %vector.body979, %vector.ph977
  %index980 = phi i64 [ 0, %vector.ph977 ], [ %index.next985, %vector.body979 ] ; 2 uses
  %i.ks = shl i64 %index980, 3                    ; 2 uses
  %next.gep981 = getelementptr i8, ptr %i.ki, i64 %i.ks ; 2 uses
  %next.gep982 = getelementptr i8, ptr %i.jx, i64 %i.ks ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.kt = getelementptr i8, ptr %next.gep982, i64 16 ; 2 uses
  %wide.load983 = load <2 x i64>, ptr %next.gep982, align 8, !tbaa !234, !alias.scope !615
  %wide.load984 = load <2 x i64>, ptr %i.kt, align 8, !tbaa !234, !alias.scope !615
  %i.ku = getelementptr i8, ptr %next.gep981, i64 16
  store <2 x i64> %wide.load983, ptr %next.gep981, align 8, !tbaa !234, !alias.scope !614
  store <2 x i64> %wide.load984, ptr %i.ku, align 8, !tbaa !234, !alias.scope !614
  store <2 x ptr> splat (ptr null), ptr %next.gep982, align 8, !tbaa !234, !alias.scope !615
  store <2 x ptr> splat (ptr null), ptr %i.kt, align 8, !tbaa !234, !alias.scope !615
  %index.next985 = add nuw i64 %index980, 4       ; 2 uses
  %i.kv = icmp eq i64 %index.next985, %n.vec978
  br i1 %i.kv, label %middle.block986, label %vector.body979, !llvm.loop !536

middle.block986:                                  ; preds = %vector.body979
  %cmp.n987 = icmp eq i64 %i.ko, %n.vec978
  br i1 %cmp.n987, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215.preheader1006

.lr.ph.i.i.i.i.i.i.i215.preheader1006:            ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader, %middle.block986
  %.012.i.i.i.i.i.i.i216.ph = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i.i.i215.preheader ], [ %i.kq, %middle.block986 ]
  %.0911.i.i.i.i.i.i.i217.ph = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i.i.i215.preheader ], [ %i.kr, %middle.block986 ]
  br label %.lr.ph.i.i.i.i.i.i.i215

.lr.ph.i.i.i.i.i.i.i215:                          ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader1006, %.lr.ph.i.i.i.i.i.i.i215
  %.012.i.i.i.i.i.i.i216 = phi ptr [ %i.ky, %.lr.ph.i.i.i.i.i.i.i215 ], [ %.012.i.i.i.i.i.i.i216.ph, %.lr.ph.i.i.i.i.i.i.i215.preheader1006 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i217 = phi ptr [ %i.kx, %.lr.ph.i.i.i.i.i.i.i215 ], [ %.0911.i.i.i.i.i.i.i217.ph, %.lr.ph.i.i.i.i.i.i.i215.preheader1006 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.kw = load i64, ptr %.0911.i.i.i.i.i.i.i217, align 8, !tbaa !234, !alias.scope !615
  store i64 %i.kw, ptr %.012.i.i.i.i.i.i.i216, align 8, !tbaa !234, !alias.scope !614
  store ptr null, ptr %.0911.i.i.i.i.i.i.i217, align 8, !tbaa !234, !alias.scope !615
  %i.kx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i217, i64 8 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i216, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i218 = icmp eq ptr %i.kx, %i.js
  br i1 %.not.i.i.i.i.i.i.i218, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215, !llvm.loop !537

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219: ; preds = %.lr.ph.i.i.i.i.i.i.i215, %middle.block986, %.noexc224
  %.0.lcssa.i.i.i.i.i.i.i220 = phi ptr [ %i.ki, %.noexc224 ], [ %i.kq, %middle.block986 ], [ %i.ky, %.lr.ph.i.i.i.i.i.i.i215 ]
  %i.kz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i220, i64 8
  %.not.i23.i.i.i221 = icmp eq ptr %i.jx, null
  br i1 %.not.i23.i.i.i221, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219
  tail call void @_ZdlPv(ptr noundef nonnull %i.jx) #43
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222: ; preds = %bb.be, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219
  store ptr %i.ki, ptr %i.jo, align 8, !tbaa !231
  store ptr %i.kz, ptr %i.jr, align 8, !tbaa !232
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kg
  store ptr %i.la, ptr %i.jt, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222, %bb.bb
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.lb, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235: ; preds = %bb.bd, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211
  %i.lc = landingpad { ptr, i32 }
          cleanup
  %i.ld = load ptr, ptr %i.jp, align 8, !tbaa !62
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load ptr, ptr %i.le, align 8
  tail call void %i.lf(ptr noundef nonnull align 8 dereferenceable(24) %i.jp) #36, !inline_history !19
  br label %bb.fi

bb.bf:                                            ; preds = %.loopexit
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  %i.lh = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !616 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store i64 %2, ptr %i.li, align 8, !tbaa !70, !noalias !616
  %.sroa.2.0..sroa_idx.i.i.i239 = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i239, align 8, !noalias !616
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11m_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.lh, align 8, !tbaa !62, !noalias !616
  store ptr %i.lh, ptr %19, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.lg, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.lj = load ptr, ptr %19, align 8, !tbaa !234  ; 3 uses
  %.not.i240 = icmp eq ptr %i.lj, null
  br i1 %.not.i240, label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241: ; preds = %bb.bg
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !62
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(24) %i.lj) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ln, align 4, !tbaa !223
  br label %bb.fh

bb.bh:                                            ; preds = %bb.bf
  %i.lo = landingpad { ptr, i32 }
          cleanup
  %i.lp = load ptr, ptr %19, align 8, !tbaa !234  ; 3 uses
  %.not.i244 = icmp eq ptr %i.lp, null
  br i1 %.not.i244, label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245: ; preds = %bb.bh
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !62
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(24) %i.lp) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249

_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  br label %bb.fi

bb.bi:                                            ; preds = %.loopexit
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  %i.lu = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !617 ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i64 %2, ptr %i.lv, align 8, !tbaa !70, !noalias !617
  %.sroa.2.0..sroa_idx.i.i.i253 = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i253, align 8, !noalias !617
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11d_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.lu, align 8, !tbaa !62, !noalias !617
  store ptr %i.lu, ptr %20, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lw = load ptr, ptr %20, align 8, !tbaa !234  ; 3 uses
  %.not.i254 = icmp eq ptr %i.lw, null
  br i1 %.not.i254, label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255: ; preds = %bb.bj
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !62
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8
  call void %i.lz(ptr noundef nonnull align 8 dereferenceable(24) %i.lw) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ma, align 4, !tbaa !223
  br label %bb.fh

bb.bk:                                            ; preds = %bb.bi
  %i.mb = landingpad { ptr, i32 }
          cleanup
  %i.mc = load ptr, ptr %20, align 8, !tbaa !234  ; 3 uses
  %.not.i258 = icmp eq ptr %i.mc, null
  br i1 %.not.i258, label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259: ; preds = %bb.bk
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !62
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load ptr, ptr %i.me, align 8
  call void %i.mf(ptr noundef nonnull align 8 dereferenceable(24) %i.mc) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263

_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  br label %bb.fi

bb.bl:                                            ; preds = %.loopexit
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #36
  %i.mh = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !618 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i64 %2, ptr %i.mi, align 8, !tbaa !70, !noalias !618
  %.sroa.2.0..sroa_idx.i.i.i267 = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i267, align 8, !noalias !618
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11H_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.mh, align 8, !tbaa !62, !noalias !618
  store ptr %i.mh, ptr %21, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.mg, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.mj = load ptr, ptr %21, align 8, !tbaa !234  ; 3 uses
  %.not.i268 = icmp eq ptr %i.mj, null
  br i1 %.not.i268, label %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i269

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i269: ; preds = %bb.bm
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !62
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8
  call void %i.mm(ptr noundef nonnull align 8 dereferenceable(24) %i.mj) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i269, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.mn, align 4, !tbaa !223
  br label %bb.fh

bb.bn:                                            ; preds = %bb.bl
  %i.mo = landingpad { ptr, i32 }
          cleanup
  %i.mp = load ptr, ptr %21, align 8, !tbaa !234  ; 3 uses
  %.not.i272 = icmp eq ptr %i.mp, null
  br i1 %.not.i272, label %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit277, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i273

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i273: ; preds = %bb.bn
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !62
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8
  call void %i.ms(ptr noundef nonnull align 8 dereferenceable(24) %i.mp) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit277

end_hunk_2
begin_hunk_3_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE:bb.a
  br label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.qj, align 4, !tbaa !223
  br label %bb.fh

bb.cl:                                            ; preds = %bb.cj
  %i.qk = landingpad { ptr, i32 }
          cleanup
  %i.ql = load ptr, ptr %29, align 8, !tbaa !234  ; 3 uses
  %.not.i384 = icmp eq ptr %i.ql, null
  br i1 %.not.i384, label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385: ; preds = %bb.cl
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !62
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8
  call void %i.qo(ptr noundef nonnull align 8 dereferenceable(24) %i.ql) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389

_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  br label %bb.fi

bb.cm:                                            ; preds = %.loopexit
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36
  %i.qq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !627 ; 4 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  store i64 %2, ptr %i.qr, align 8, !tbaa !70, !noalias !627
  %.sroa.2.0..sroa_idx.i.i.i393 = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i393, align 8, !noalias !627
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11r_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.qq, align 8, !tbaa !62, !noalias !627
  store ptr %i.qq, ptr %30, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.qp, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.qs = load ptr, ptr %30, align 8, !tbaa !234  ; 3 uses
  %.not.i394 = icmp eq ptr %i.qs, null
  br i1 %.not.i394, label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395: ; preds = %bb.cn
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !62
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8
  call void %i.qv(ptr noundef nonnull align 8 dereferenceable(24) %i.qs) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.qw, align 4, !tbaa !223
  br label %bb.fh

bb.co:                                            ; preds = %bb.cm
  %i.qx = landingpad { ptr, i32 }
          cleanup
  %i.qy = load ptr, ptr %30, align 8, !tbaa !234  ; 3 uses
  %.not.i398 = icmp eq ptr %i.qy, null
  br i1 %.not.i398, label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399: ; preds = %bb.co
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !62
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8
  call void %i.rb(ptr noundef nonnull align 8 dereferenceable(24) %i.qy) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403

_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  br label %bb.fi

bb.cp:                                            ; preds = %.loopexit
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  %i.rd = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !628 ; 4 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store i64 %2, ptr %i.re, align 8, !tbaa !70, !noalias !628
  %.sroa.2.0..sroa_idx.i.i.i407 = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i407, align 8, !noalias !628
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11R_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.rd, align 8, !tbaa !62, !noalias !628
  store ptr %i.rd, ptr %31, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.rc, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.rf = load ptr, ptr %31, align 8, !tbaa !234  ; 3 uses
  %.not.i408 = icmp eq ptr %i.rf, null
  br i1 %.not.i408, label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409: ; preds = %bb.cq
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !62
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8
  call void %i.ri(ptr noundef nonnull align 8 dereferenceable(24) %i.rf) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.rj, align 4, !tbaa !223
  br label %bb.fh

bb.cr:                                            ; preds = %bb.cp
  %i.rk = landingpad { ptr, i32 }
          cleanup
  %i.rl = load ptr, ptr %31, align 8, !tbaa !234  ; 3 uses
  %.not.i412 = icmp eq ptr %i.rl, null
  br i1 %.not.i412, label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413: ; preds = %bb.cr
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !62
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.ro = load ptr, ptr %i.rn, align 8
  call void %i.ro(ptr noundef nonnull align 8 dereferenceable(24) %i.rl) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417

_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  br label %bb.fi

bb.cs:                                            ; preds = %.loopexit, %.loopexit
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.rq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !629 ; 7 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  store i64 %2, ptr %i.rr, align 8, !tbaa !70, !noalias !629
  %.sroa.2.0..sroa_idx.i.i.i421 = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i421, align 8, !noalias !629
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11T_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.rq, align 8, !tbaa !62, !noalias !629
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !232 ; 6 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !236
  %.not.i.i422 = icmp eq ptr %i.rt, %i.rv
  br i1 %.not.i.i422, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.rw = ptrtoint ptr %i.rq to i64
  store i64 %i.rw, ptr %i.rt, align 8, !tbaa !234
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  store ptr %i.rx, ptr %i.rs, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.cu:                                            ; preds = %bb.cs
  %i.ry = load ptr, ptr %i.rp, align 8, !tbaa !231 ; 7 uses
  %i.rz = ptrtoint ptr %i.rt to i64               ; 2 uses
  %i.sa = ptrtoint ptr %i.ry to i64               ; 2 uses
  %i.sb = sub i64 %i.rz, %i.sa                    ; 3 uses
  %i.sc = icmp eq i64 %i.sb, 9223372036854775800
  br i1 %i.sc, label %bb.cv, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #42
          to label %.noexc435 unwind label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447

.noexc435:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423: ; preds = %bb.cu
  %i.sd = ashr exact i64 %i.sb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i424 = tail call i64 @llvm.umax.i64(i64 %i.sd, i64 1)
  %i.se = add nsw i64 %.sroa.speculated.i.i.i.i424, %i.sd ; 2 uses
  %i.sf = icmp ult i64 %i.se, %i.sd
  %i.sg = tail call i64 @llvm.umin.i64(i64 %i.se, i64 1152921504606846975)
  %i.sh = select i1 %i.sf, i64 1152921504606846975, i64 %i.sg ; 3 uses
  %.not.i.i.i.i425 = icmp ne i64 %i.sh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i425)
  %i.si = shl nuw nsw i64 %i.sh, 3
  %i.sj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.si) #44
          to label %.noexc436 unwind label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447 ; 7 uses

.noexc436:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.sb
  %i.sl = ptrtoint ptr %i.rq to i64
  store i64 %i.sl, ptr %i.sk, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i426 = icmp eq ptr %i.ry, %i.rt
  br i1 %.not10.i.i.i.i.i.i.i426, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427.preheader

.lr.ph.i.i.i.i.i.i.i427.preheader:                ; preds = %.noexc436
  %i.sm = add i64 %i.rz, -8
  %i.sn = sub i64 %i.sm, %i.sa                    ; 2 uses
  %i.so = lshr i64 %i.sn, 3
  %i.sp = add nuw nsw i64 %i.so, 1                ; 2 uses
  %min.iters.check961 = icmp ult i64 %i.sn, 24
  br i1 %min.iters.check961, label %.lr.ph.i.i.i.i.i.i.i427.preheader1008, label %vector.ph962

vector.ph962:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader
  %n.vec963 = and i64 %i.sp, 4611686018427387900  ; 3 uses
  %i.sq = shl i64 %n.vec963, 3                    ; 2 uses
  %i.sr = getelementptr i8, ptr %i.sj, i64 %i.sq  ; 2 uses
  %i.ss = getelementptr i8, ptr %i.ry, i64 %i.sq
  br label %vector.body964

vector.body964:                                   ; preds = %vector.body964, %vector.ph962
  %index965 = phi i64 [ 0, %vector.ph962 ], [ %index.next970, %vector.body964 ] ; 2 uses
  %i.st = shl i64 %index965, 3                    ; 2 uses
  %next.gep966 = getelementptr i8, ptr %i.sj, i64 %i.st ; 2 uses
  %next.gep967 = getelementptr i8, ptr %i.ry, i64 %i.st ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.su = getelementptr i8, ptr %next.gep967, i64 16 ; 2 uses
  %wide.load968 = load <2 x i64>, ptr %next.gep967, align 8, !tbaa !234, !alias.scope !631
  %wide.load969 = load <2 x i64>, ptr %i.su, align 8, !tbaa !234, !alias.scope !631
  %i.sv = getelementptr i8, ptr %next.gep966, i64 16
  store <2 x i64> %wide.load968, ptr %next.gep966, align 8, !tbaa !234, !alias.scope !630
  store <2 x i64> %wide.load969, ptr %i.sv, align 8, !tbaa !234, !alias.scope !630
  store <2 x ptr> splat (ptr null), ptr %next.gep967, align 8, !tbaa !234, !alias.scope !631
  store <2 x ptr> splat (ptr null), ptr %i.su, align 8, !tbaa !234, !alias.scope !631
  %index.next970 = add nuw i64 %index965, 4       ; 2 uses
  %i.sw = icmp eq i64 %index.next970, %n.vec963
  br i1 %i.sw, label %middle.block971, label %vector.body964, !llvm.loop !569

middle.block971:                                  ; preds = %vector.body964
  %cmp.n972 = icmp eq i64 %i.sp, %n.vec963
  br i1 %cmp.n972, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427.preheader1008

.lr.ph.i.i.i.i.i.i.i427.preheader1008:            ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader, %middle.block971
  %.012.i.i.i.i.i.i.i428.ph = phi ptr [ %i.sj, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.sr, %middle.block971 ]
  %.0911.i.i.i.i.i.i.i429.ph = phi ptr [ %i.ry, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.ss, %middle.block971 ]
  br label %.lr.ph.i.i.i.i.i.i.i427

.lr.ph.i.i.i.i.i.i.i427:                          ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader1008, %.lr.ph.i.i.i.i.i.i.i427
  %.012.i.i.i.i.i.i.i428 = phi ptr [ %i.sz, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.012.i.i.i.i.i.i.i428.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader1008 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i429 = phi ptr [ %i.sy, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.0911.i.i.i.i.i.i.i429.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader1008 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.sx = load i64, ptr %.0911.i.i.i.i.i.i.i429, align 8, !tbaa !234, !alias.scope !631
  store i64 %i.sx, ptr %.012.i.i.i.i.i.i.i428, align 8, !tbaa !234, !alias.scope !630
  store ptr null, ptr %.0911.i.i.i.i.i.i.i429, align 8, !tbaa !234, !alias.scope !631
  %i.sy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429, i64 8 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i430 = icmp eq ptr %i.sy, %i.rt
  br i1 %.not.i.i.i.i.i.i.i430, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427, !llvm.loop !570

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431: ; preds = %.lr.ph.i.i.i.i.i.i.i427, %middle.block971, %.noexc436
  %.0.lcssa.i.i.i.i.i.i.i432 = phi ptr [ %i.sj, %.noexc436 ], [ %i.sr, %middle.block971 ], [ %i.sz, %.lr.ph.i.i.i.i.i.i.i427 ]
  %i.ta = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i432, i64 8
  %.not.i23.i.i.i433 = icmp eq ptr %i.ry, null
  br i1 %.not.i23.i.i.i433, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431
  tail call void @_ZdlPv(ptr noundef nonnull %i.ry) #43
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434: ; preds = %bb.cw, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431
  store ptr %i.sj, ptr %i.rp, align 8, !tbaa !231
  store ptr %i.ta, ptr %i.rs, align 8, !tbaa !232
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.sh
  store ptr %i.tb, ptr %i.ru, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434, %bb.ct
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.tc, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447: ; preds = %bb.cv, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.td = landingpad { ptr, i32 }
          cleanup
  %i.te = load ptr, ptr %i.rq, align 8, !tbaa !62
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8
  tail call void %i.tg(ptr noundef nonnull align 8 dereferenceable(24) %i.rq) #36, !inline_history !19
  br label %bb.fi

bb.cx:                                            ; preds = %.loopexit
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.tj = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #44, !noalias !632 ; 7 uses
  %i.tk = load i32, ptr %i.ti, align 8, !tbaa !193, !noalias !632
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  store i64 %2, ptr %i.tl, align 8, !tbaa !70, !noalias !632
  %.sroa.2.0..sroa_idx.i.i.i451 = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i451, align 8, !noalias !632
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11z_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.tj, align 8, !tbaa !62, !noalias !632
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 24
  store i32 %i.tk, ptr %i.tm, align 8, !tbaa !253, !noalias !632
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tj, i64 32
  store i64 0, ptr %i.tn, align 8, !tbaa !70, !noalias !632
  %i.to = getelementptr inbounds nuw i8, ptr %i.tj, i64 40
  store i32 0, ptr %i.to, align 8, !tbaa !254, !noalias !632
  store ptr %i.tj, ptr %32, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.th, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.tp = load ptr, ptr %32, align 8, !tbaa !234  ; 3 uses
  %.not.i452 = icmp eq ptr %i.tp, null
  br i1 %.not.i452, label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453: ; preds = %bb.cy
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !62
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8
  call void %i.ts(ptr noundef nonnull align 8 dereferenceable(24) %i.tp) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.tt, align 4, !tbaa !223
  br label %bb.fh

bb.cz:                                            ; preds = %bb.cx
  %i.tu = landingpad { ptr, i32 }
          cleanup
  %i.tv = load ptr, ptr %32, align 8, !tbaa !234  ; 3 uses
  %.not.i456 = icmp eq ptr %i.tv, null
  br i1 %.not.i456, label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457: ; preds = %bb.cz
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !62
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8
  call void %i.ty(ptr noundef nonnull align 8 dereferenceable(24) %i.tv) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461

_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  br label %bb.fi

bb.da:                                            ; preds = %.loopexit
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #36
  %i.ua = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !633 ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  store i64 %2, ptr %i.ub, align 8, !tbaa !70, !noalias !633
  %.sroa.2.0..sroa_idx.i.i.i465 = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i465, align 8, !noalias !633
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details13pid_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.ua, align 8, !tbaa !62, !noalias !633
  store ptr %i.ua, ptr %33, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.tz, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.uc = load ptr, ptr %33, align 8, !tbaa !234  ; 3 uses
  %.not.i466 = icmp eq ptr %i.uc, null
  br i1 %.not.i466, label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467: ; preds = %bb.db
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !62
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8
  call void %i.uf(ptr noundef nonnull align 8 dereferenceable(24) %i.uc) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  br label %bb.fh

bb.dc:                                            ; preds = %bb.da
  %i.ug = landingpad { ptr, i32 }
          cleanup
  %i.uh = load ptr, ptr %33, align 8, !tbaa !234  ; 3 uses
  %.not.i470 = icmp eq ptr %i.uh, null
  br i1 %.not.i470, label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i471

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i471: ; preds = %bb.dc
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !62
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8
  call void %i.uk(ptr noundef nonnull align 8 dereferenceable(24) %i.uh) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475

_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i471, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  br label %bb.fi

bb.dd:                                            ; preds = %.loopexit
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #36
  %i.um = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !634 ; 4 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  store i64 %2, ptr %i.un, align 8, !tbaa !70, !noalias !634
  %.sroa.2.0..sroa_idx.i.i.i479 = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i479, align 8, !noalias !634
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details21color_start_formatterE, i64 16), ptr %i.um, align 8, !tbaa !62, !noalias !634
  store ptr %i.um, ptr %34, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ul, ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.de unwind label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.uo = load ptr, ptr %34, align 8, !tbaa !234  ; 3 uses
  %.not.i480 = icmp eq ptr %i.uo, null
  br i1 %.not.i480, label %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i481

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i481: ; preds = %bb.de
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !62
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.ur = load ptr, ptr %i.uq, align 8
  call void %i.ur(ptr noundef nonnull align 8 dereferenceable(24) %i.uo) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i481, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #36
  br label %bb.fh

bb.df:                                            ; preds = %bb.dd
  %i.us = landingpad { ptr, i32 }
          cleanup
  %i.ut = load ptr, ptr %34, align 8, !tbaa !234  ; 3 uses
  %.not.i484 = icmp eq ptr %i.ut, null
  br i1 %.not.i484, label %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit489, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i485

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i485: ; preds = %bb.df
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !62
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
end_hunk_3
begin_hunk_4_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE:bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
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
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !231 ; 7 uses
  %i.ao = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #42
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
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #44
          to label %.noexc12 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16 ; 7 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  %i.ba = ptrtoint ptr %i.ae to i64
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ai
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc12
  %i.bb = add i64 %i.ao, -8
  %i.bc = sub i64 %i.bb, %i.ap                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader1010, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ay, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.an, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bi ; 2 uses
  %next.gep957 = getelementptr i8, ptr %i.an, i64 %i.bi ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %i.bj = getelementptr i8, ptr %next.gep957, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep957, align 8, !tbaa !234, !alias.scope !746
  %wide.load958 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !234, !alias.scope !746
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !234, !alias.scope !745
  store <2 x i64> %wide.load958, ptr %i.bk, align 8, !tbaa !234, !alias.scope !745
  store <2 x ptr> splat (ptr null), ptr %next.gep957, align 8, !tbaa !234, !alias.scope !746
  store <2 x ptr> splat (ptr null), ptr %i.bj, align 8, !tbaa !234, !alias.scope !746
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !648

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1010

.lr.ph.i.i.i.i.i.i.i.preheader1010:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bg, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1010, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1010 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1010 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %i.bm = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !746
  store i64 %i.bm, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !745
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !746
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.ai
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !649

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.noexc12 ], [ %i.bg, %middle.block ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.an) #43
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.k
  store ptr %i.ay, ptr %i.ag, align 8, !tbaa !231
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !232
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bq, ptr %i.aj, align 8, !tbaa !236
  %.pre = load ptr, ptr %5, align 8, !tbaa !201   ; 3 uses
  %.not.i13 = icmp eq ptr %.pre, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.br = load ptr, ptr %.pre, align 8, !tbaa !62
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(24) %.pre) #36, !inline_history !22
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #36, !inline_history !19
  %i.by = load ptr, ptr %5, align 8, !tbaa !201   ; 3 uses
  %.not.i17 = icmp eq ptr %i.by, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(24) %i.by) #36, !inline_history !22
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19

_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16, %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
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
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @_ZN6spdlog7details11make_uniqueINS0_14full_formatterEJRNS0_12padding_infoEEEESt10unique_ptrIT_St14default_deleteIS6_EEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.105") align 8 %7, ptr noundef nonnull align 8 dereferenceable(14) %4)
  %i.cd = load ptr, ptr %7, align 8, !tbaa !239
  store ptr null, ptr %7, align 8, !tbaa !239
  store ptr %i.cd, ptr %6, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ce = load ptr, ptr %6, align 8, !tbaa !234   ; 3 uses
  %.not.i20 = icmp eq ptr %i.ce, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21: ; preds = %bb.m
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !62
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22: ; preds = %bb.m, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21
  call void @_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ci, align 4, !tbaa !223
  br label %bb.fh

bb.n:                                             ; preds = %bb.l
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %6, align 8, !tbaa !234   ; 3 uses
  %.not.i23 = icmp eq ptr %i.ck, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit25, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i24

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i24: ; preds = %bb.n
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !62
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(24) %i.ck) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit25

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit25: ; preds = %bb.n, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i24
  call void @_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.fi

bb.o:                                             ; preds = %.loopexit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.cp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !747 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %2, ptr %i.cq, align 8, !tbaa !70, !noalias !747
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !747
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details14name_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.cp, align 8, !tbaa !62, !noalias !747
  store ptr %i.cp, ptr %8, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %8, align 8, !tbaa !234   ; 3 uses
  %.not.i26 = icmp eq ptr %i.cr, null
  br i1 %.not.i26, label %_ZNSt10unique_ptrIN6spdlog7details14name_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i27

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i27: ; preds = %bb.p
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !62
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
end_hunk_4
begin_hunk_5_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details18null_scoped_padderEEEvcNS2_12padding_infoE:bb.a
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(24) %i.en) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.fh

bb.ac:                                            ; preds = %bb.aa
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = load ptr, ptr %12, align 8, !tbaa !234  ; 3 uses
  %.not.i86 = icmp eq ptr %i.es, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87: ; preds = %bb.ac
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !62
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(24) %i.es) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91

_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.fi

bb.ad:                                            ; preds = %.loopexit
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  %i.ex = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !752 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 %2, ptr %i.ey, align 8, !tbaa !70, !noalias !752
  %.sroa.2.0..sroa_idx.i.i.i95 = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i95, align 8, !noalias !752
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11a_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.ex, align 8, !tbaa !62, !noalias !752
  store ptr %i.ex, ptr %13, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ez = load ptr, ptr %13, align 8, !tbaa !234  ; 3 uses
  %.not.i96 = icmp eq ptr %i.ez, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97: ; preds = %bb.ae
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !62
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(24) %i.ez) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.fd, align 4, !tbaa !223
  br label %bb.fh

bb.af:                                            ; preds = %bb.ad
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %13, align 8, !tbaa !234  ; 3 uses
  %.not.i100 = icmp eq ptr %i.ff, null
  br i1 %.not.i100, label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101: ; preds = %bb.af
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !62
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(24) %i.ff) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105

_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br label %bb.fi

bb.ag:                                            ; preds = %.loopexit
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  %i.fk = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !753 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i64 %2, ptr %i.fl, align 8, !tbaa !70, !noalias !753
  %.sroa.2.0..sroa_idx.i.i.i109 = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i109, align 8, !noalias !753
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11A_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.fk, align 8, !tbaa !62, !noalias !753
  store ptr %i.fk, ptr %14, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fm = load ptr, ptr %14, align 8, !tbaa !234  ; 3 uses
  %.not.i110 = icmp eq ptr %i.fm, null
  br i1 %.not.i110, label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111: ; preds = %bb.ah
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !62
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(24) %i.fm) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.fq, align 4, !tbaa !223
  br label %bb.fh

bb.ai:                                            ; preds = %bb.ag
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %14, align 8, !tbaa !234  ; 3 uses
  %.not.i114 = icmp eq ptr %i.fs, null
  br i1 %.not.i114, label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115: ; preds = %bb.ai
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !62
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(24) %i.fs) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119

_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  br label %bb.fi

bb.aj:                                            ; preds = %.loopexit, %.loopexit
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fx = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !754 ; 7 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %2, ptr %i.fy, align 8, !tbaa !70, !noalias !754
  %.sroa.2.0..sroa_idx.i.i.i123 = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i123, align 8, !noalias !754
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11b_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.fx, align 8, !tbaa !62, !noalias !754
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !232 ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !236
  %.not.i.i124 = icmp eq ptr %i.ga, %i.gc
  br i1 %.not.i.i124, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gd = ptrtoint ptr %i.fx to i64
  store i64 %i.gd, ptr %i.ga, align 8, !tbaa !234
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.ge, ptr %i.fz, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.gf = load ptr, ptr %i.fw, align 8, !tbaa !231 ; 7 uses
  %i.gg = ptrtoint ptr %i.ga to i64               ; 2 uses
  %i.gh = ptrtoint ptr %i.gf to i64               ; 2 uses
  %i.gi = sub i64 %i.gg, %i.gh                    ; 3 uses
  %i.gj = icmp eq i64 %i.gi, 9223372036854775800
  br i1 %i.gj, label %bb.am, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #42
          to label %.noexc137 unwind label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149

.noexc137:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125: ; preds = %bb.al
  %i.gk = ashr exact i64 %i.gi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i126 = tail call i64 @llvm.umax.i64(i64 %i.gk, i64 1)
  %i.gl = add nsw i64 %.sroa.speculated.i.i.i.i126, %i.gk ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.gk
  %i.gn = tail call i64 @llvm.umin.i64(i64 %i.gl, i64 1152921504606846975)
  %i.go = select i1 %i.gm, i64 1152921504606846975, i64 %i.gn ; 3 uses
  %.not.i.i.i.i127 = icmp ne i64 %i.go, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i127)
  %i.gp = shl nuw nsw i64 %i.go, 3
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #44
          to label %.noexc138 unwind label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149 ; 7 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gi
  %i.gs = ptrtoint ptr %i.fx to i64
  store i64 %i.gs, ptr %i.gr, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i128 = icmp eq ptr %i.gf, %i.ga
  br i1 %.not10.i.i.i.i.i.i.i128, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader

.lr.ph.i.i.i.i.i.i.i129.preheader:                ; preds = %.noexc138
  %i.gt = add i64 %i.gg, -8
  %i.gu = sub i64 %i.gt, %i.gh                    ; 2 uses
  %i.gv = lshr i64 %i.gu, 3
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %min.iters.check991 = icmp ult i64 %i.gu, 24
  br i1 %min.iters.check991, label %.lr.ph.i.i.i.i.i.i.i129.preheader1005, label %vector.ph992

vector.ph992:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader
  %n.vec993 = and i64 %i.gw, 4611686018427387900  ; 3 uses
  %i.gx = shl i64 %n.vec993, 3                    ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gq, i64 %i.gx  ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gf, i64 %i.gx
  br label %vector.body994

vector.body994:                                   ; preds = %vector.body994, %vector.ph992
  %index995 = phi i64 [ 0, %vector.ph992 ], [ %index.next1000, %vector.body994 ] ; 2 uses
  %i.ha = shl i64 %index995, 3                    ; 2 uses
  %next.gep996 = getelementptr i8, ptr %i.gq, i64 %i.ha ; 2 uses
  %next.gep997 = getelementptr i8, ptr %i.gf, i64 %i.ha ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %i.hb = getelementptr i8, ptr %next.gep997, i64 16 ; 2 uses
  %wide.load998 = load <2 x i64>, ptr %next.gep997, align 8, !tbaa !234, !alias.scope !756
  %wide.load999 = load <2 x i64>, ptr %i.hb, align 8, !tbaa !234, !alias.scope !756
  %i.hc = getelementptr i8, ptr %next.gep996, i64 16
  store <2 x i64> %wide.load998, ptr %next.gep996, align 8, !tbaa !234, !alias.scope !755
  store <2 x i64> %wide.load999, ptr %i.hc, align 8, !tbaa !234, !alias.scope !755
  store <2 x ptr> splat (ptr null), ptr %next.gep997, align 8, !tbaa !234, !alias.scope !756
  store <2 x ptr> splat (ptr null), ptr %i.hb, align 8, !tbaa !234, !alias.scope !756
  %index.next1000 = add nuw i64 %index995, 4      ; 2 uses
  %i.hd = icmp eq i64 %index.next1000, %n.vec993
  br i1 %i.hd, label %middle.block1001, label %vector.body994, !llvm.loop !669

middle.block1001:                                 ; preds = %vector.body994
  %cmp.n1002 = icmp eq i64 %i.gw, %n.vec993
  br i1 %cmp.n1002, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader1005

.lr.ph.i.i.i.i.i.i.i129.preheader1005:            ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader, %middle.block1001
  %.012.i.i.i.i.i.i.i130.ph = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.gy, %middle.block1001 ]
  %.0911.i.i.i.i.i.i.i131.ph = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.gz, %middle.block1001 ]
  br label %.lr.ph.i.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i.i129:                          ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader1005, %.lr.ph.i.i.i.i.i.i.i129
  %.012.i.i.i.i.i.i.i130 = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.012.i.i.i.i.i.i.i130.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader1005 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i131 = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.0911.i.i.i.i.i.i.i131.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader1005 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %i.he = load i64, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !234, !alias.scope !756
  store i64 %i.he, ptr %.012.i.i.i.i.i.i.i130, align 8, !tbaa !234, !alias.scope !755
  store ptr null, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !234, !alias.scope !756
  %i.hf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i131, i64 8 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i130, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %i.hf, %i.ga
  br i1 %.not.i.i.i.i.i.i.i132, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129, !llvm.loop !670

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133: ; preds = %.lr.ph.i.i.i.i.i.i.i129, %middle.block1001, %.noexc138
  %.0.lcssa.i.i.i.i.i.i.i134 = phi ptr [ %i.gq, %.noexc138 ], [ %i.gy, %middle.block1001 ], [ %i.hg, %.lr.ph.i.i.i.i.i.i.i129 ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i134, i64 8
  %.not.i23.i.i.i135 = icmp eq ptr %i.gf, null
  br i1 %.not.i23.i.i.i135, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133
  tail call void @_ZdlPv(ptr noundef nonnull %i.gf) #43
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136: ; preds = %bb.an, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133
  store ptr %i.gq, ptr %i.fw, align 8, !tbaa !231
  store ptr %i.hh, ptr %i.fz, align 8, !tbaa !232
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.go
  store ptr %i.hi, ptr %i.gb, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136, %bb.ak
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.hj, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149: ; preds = %bb.am, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.hk = landingpad { ptr, i32 }
          cleanup
  %i.hl = load ptr, ptr %i.fx, align 8, !tbaa !62
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  tail call void %i.hn(ptr noundef nonnull align 8 dereferenceable(24) %i.fx) #36, !inline_history !19
  br label %bb.fi

bb.ao:                                            ; preds = %.loopexit
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  %i.hp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !757 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i64 %2, ptr %i.hq, align 8, !tbaa !70, !noalias !757
  %.sroa.2.0..sroa_idx.i.i.i153 = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i153, align 8, !noalias !757
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11B_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.hp, align 8, !tbaa !62, !noalias !757
  store ptr %i.hp, ptr %15, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ho, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hr = load ptr, ptr %15, align 8, !tbaa !234  ; 3 uses
  %.not.i154 = icmp eq ptr %i.hr, null
  br i1 %.not.i154, label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155: ; preds = %bb.ap
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !62
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(24) %i.hr) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.hv, align 4, !tbaa !223
  br label %bb.fh

bb.aq:                                            ; preds = %bb.ao
  %i.hw = landingpad { ptr, i32 }
          cleanup
  %i.hx = load ptr, ptr %15, align 8, !tbaa !234  ; 3 uses
  %.not.i158 = icmp eq ptr %i.hx, null
  br i1 %.not.i158, label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159: ; preds = %bb.aq
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !62
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(24) %i.hx) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163

_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  br label %bb.fi

bb.ar:                                            ; preds = %.loopexit
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  %i.ic = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !758 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store i64 %2, ptr %i.id, align 8, !tbaa !70, !noalias !758
  %.sroa.2.0..sroa_idx.i.i.i167 = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i167, align 8, !noalias !758
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11c_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.ic, align 8, !tbaa !62, !noalias !758
  store ptr %i.ic, ptr %16, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ib, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ie = load ptr, ptr %16, align 8, !tbaa !234  ; 3 uses
  %.not.i168 = icmp eq ptr %i.ie, null
  br i1 %.not.i168, label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169: ; preds = %bb.as
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !62
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(24) %i.ie) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ii, align 4, !tbaa !223
  br label %bb.fh

bb.at:                                            ; preds = %bb.ar
  %i.ij = landingpad { ptr, i32 }
          cleanup
  %i.ik = load ptr, ptr %16, align 8, !tbaa !234  ; 3 uses
  %.not.i172 = icmp eq ptr %i.ik, null
  br i1 %.not.i172, label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173: ; preds = %bb.at
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !62
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(24) %i.ik) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177

_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %bb.fi

bb.au:                                            ; preds = %.loopexit
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  %i.ip = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !759 ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store i64 %2, ptr %i.iq, align 8, !tbaa !70, !noalias !759
  %.sroa.2.0..sroa_idx.i.i.i181 = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i181, align 8, !noalias !759
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11C_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.ip, align 8, !tbaa !62, !noalias !759
  store ptr %i.ip, ptr %17, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.io, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ir = load ptr, ptr %17, align 8, !tbaa !234  ; 3 uses
  %.not.i182 = icmp eq ptr %i.ir, null
  br i1 %.not.i182, label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183: ; preds = %bb.av
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !62
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(24) %i.ir) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.iv, align 4, !tbaa !223
  br label %bb.fh

bb.aw:                                            ; preds = %bb.au
  %i.iw = landingpad { ptr, i32 }
          cleanup
  %i.ix = load ptr, ptr %17, align 8, !tbaa !234  ; 3 uses
  %.not.i186 = icmp eq ptr %i.ix, null
  br i1 %.not.i186, label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187: ; preds = %bb.aw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !62
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(24) %i.ix) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191

_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  br label %bb.fi

bb.ax:                                            ; preds = %.loopexit
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  %i.jc = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !760 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i64 %2, ptr %i.jd, align 8, !tbaa !70, !noalias !760
  %.sroa.2.0..sroa_idx.i.i.i195 = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i195, align 8, !noalias !760
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11Y_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.jc, align 8, !tbaa !62, !noalias !760
  store ptr %i.jc, ptr %18, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.jb, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.je = load ptr, ptr %18, align 8, !tbaa !234  ; 3 uses
  %.not.i196 = icmp eq ptr %i.je, null
  br i1 %.not.i196, label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197: ; preds = %bb.ay
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !62
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(24) %i.je) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ji, align 4, !tbaa !223
  br label %bb.fh

bb.az:                                            ; preds = %bb.ax
  %i.jj = landingpad { ptr, i32 }
          cleanup
  %i.jk = load ptr, ptr %18, align 8, !tbaa !234  ; 3 uses
  %.not.i200 = icmp eq ptr %i.jk, null
  br i1 %.not.i200, label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201: ; preds = %bb.az
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !62
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(24) %i.jk) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205

_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br label %bb.fi

bb.ba:                                            ; preds = %.loopexit, %.loopexit
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.jp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !761 ; 7 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store i64 %2, ptr %i.jq, align 8, !tbaa !70, !noalias !761
  %.sroa.2.0..sroa_idx.i.i.i209 = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i209, align 8, !noalias !761
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11D_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.jp, align 8, !tbaa !62, !noalias !761
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !232 ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !236
  %.not.i.i210 = icmp eq ptr %i.js, %i.ju
  br i1 %.not.i.i210, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jv = ptrtoint ptr %i.jp to i64
  store i64 %i.jv, ptr %i.js, align 8, !tbaa !234
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  store ptr %i.jw, ptr %i.jr, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.bc:                                            ; preds = %bb.ba
  %i.jx = load ptr, ptr %i.jo, align 8, !tbaa !231 ; 7 uses
  %i.jy = ptrtoint ptr %i.js to i64               ; 2 uses
  %i.jz = ptrtoint ptr %i.jx to i64               ; 2 uses
  %i.ka = sub i64 %i.jy, %i.jz                    ; 3 uses
  %i.kb = icmp eq i64 %i.ka, 9223372036854775800
  br i1 %i.kb, label %bb.bd, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #42
          to label %.noexc223 unwind label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235

.noexc223:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211: ; preds = %bb.bc
  %i.kc = ashr exact i64 %i.ka, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i212 = tail call i64 @llvm.umax.i64(i64 %i.kc, i64 1)
  %i.kd = add nsw i64 %.sroa.speculated.i.i.i.i212, %i.kc ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %i.kc
  %i.kf = tail call i64 @llvm.umin.i64(i64 %i.kd, i64 1152921504606846975)
  %i.kg = select i1 %i.ke, i64 1152921504606846975, i64 %i.kf ; 3 uses
  %.not.i.i.i.i213 = icmp ne i64 %i.kg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i213)
  %i.kh = shl nuw nsw i64 %i.kg, 3
  %i.ki = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kh) #44
          to label %.noexc224 unwind label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235 ; 7 uses

.noexc224:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ka
  %i.kk = ptrtoint ptr %i.jp to i64
  store i64 %i.kk, ptr %i.kj, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i214 = icmp eq ptr %i.jx, %i.js
  br i1 %.not10.i.i.i.i.i.i.i214, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215.preheader

.lr.ph.i.i.i.i.i.i.i215.preheader:                ; preds = %.noexc224
  %i.kl = add i64 %i.jy, -8
  %i.km = sub i64 %i.kl, %i.jz                    ; 2 uses
  %i.kn = lshr i64 %i.km, 3
  %i.ko = add nuw nsw i64 %i.kn, 1                ; 2 uses
  %min.iters.check976 = icmp ult i64 %i.km, 24
  br i1 %min.iters.check976, label %.lr.ph.i.i.i.i.i.i.i215.preheader1006, label %vector.ph977

vector.ph977:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader
  %n.vec978 = and i64 %i.ko, 4611686018427387900  ; 3 uses
  %i.kp = shl i64 %n.vec978, 3                    ; 2 uses
  %i.kq = getelementptr i8, ptr %i.ki, i64 %i.kp  ; 2 uses
  %i.kr = getelementptr i8, ptr %i.jx, i64 %i.kp
  br label %vector.body979

vector.body979:                                   ; preds = %vector.body979, %vector.ph977
  %index980 = phi i64 [ 0, %vector.ph977 ], [ %index.next985, %vector.body979 ] ; 2 uses
  %i.ks = shl i64 %index980, 3                    ; 2 uses
  %next.gep981 = getelementptr i8, ptr %i.ki, i64 %i.ks ; 2 uses
  %next.gep982 = getelementptr i8, ptr %i.jx, i64 %i.ks ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %i.kt = getelementptr i8, ptr %next.gep982, i64 16 ; 2 uses
  %wide.load983 = load <2 x i64>, ptr %next.gep982, align 8, !tbaa !234, !alias.scope !763
  %wide.load984 = load <2 x i64>, ptr %i.kt, align 8, !tbaa !234, !alias.scope !763
  %i.ku = getelementptr i8, ptr %next.gep981, i64 16
  store <2 x i64> %wide.load983, ptr %next.gep981, align 8, !tbaa !234, !alias.scope !762
  store <2 x i64> %wide.load984, ptr %i.ku, align 8, !tbaa !234, !alias.scope !762
  store <2 x ptr> splat (ptr null), ptr %next.gep982, align 8, !tbaa !234, !alias.scope !763
  store <2 x ptr> splat (ptr null), ptr %i.kt, align 8, !tbaa !234, !alias.scope !763
  %index.next985 = add nuw i64 %index980, 4       ; 2 uses
  %i.kv = icmp eq i64 %index.next985, %n.vec978
  br i1 %i.kv, label %middle.block986, label %vector.body979, !llvm.loop !684

middle.block986:                                  ; preds = %vector.body979
  %cmp.n987 = icmp eq i64 %i.ko, %n.vec978
  br i1 %cmp.n987, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215.preheader1006

.lr.ph.i.i.i.i.i.i.i215.preheader1006:            ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader, %middle.block986
  %.012.i.i.i.i.i.i.i216.ph = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i.i.i215.preheader ], [ %i.kq, %middle.block986 ]
  %.0911.i.i.i.i.i.i.i217.ph = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i.i.i215.preheader ], [ %i.kr, %middle.block986 ]
  br label %.lr.ph.i.i.i.i.i.i.i215

.lr.ph.i.i.i.i.i.i.i215:                          ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader1006, %.lr.ph.i.i.i.i.i.i.i215
  %.012.i.i.i.i.i.i.i216 = phi ptr [ %i.ky, %.lr.ph.i.i.i.i.i.i.i215 ], [ %.012.i.i.i.i.i.i.i216.ph, %.lr.ph.i.i.i.i.i.i.i215.preheader1006 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i217 = phi ptr [ %i.kx, %.lr.ph.i.i.i.i.i.i.i215 ], [ %.0911.i.i.i.i.i.i.i217.ph, %.lr.ph.i.i.i.i.i.i.i215.preheader1006 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %i.kw = load i64, ptr %.0911.i.i.i.i.i.i.i217, align 8, !tbaa !234, !alias.scope !763
  store i64 %i.kw, ptr %.012.i.i.i.i.i.i.i216, align 8, !tbaa !234, !alias.scope !762
  store ptr null, ptr %.0911.i.i.i.i.i.i.i217, align 8, !tbaa !234, !alias.scope !763
  %i.kx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i217, i64 8 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i216, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i218 = icmp eq ptr %i.kx, %i.js
  br i1 %.not.i.i.i.i.i.i.i218, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215, !llvm.loop !685

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219: ; preds = %.lr.ph.i.i.i.i.i.i.i215, %middle.block986, %.noexc224
  %.0.lcssa.i.i.i.i.i.i.i220 = phi ptr [ %i.ki, %.noexc224 ], [ %i.kq, %middle.block986 ], [ %i.ky, %.lr.ph.i.i.i.i.i.i.i215 ]
  %i.kz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i220, i64 8
  %.not.i23.i.i.i221 = icmp eq ptr %i.jx, null
  br i1 %.not.i23.i.i.i221, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219
  tail call void @_ZdlPv(ptr noundef nonnull %i.jx) #43
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222: ; preds = %bb.be, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219
  store ptr %i.ki, ptr %i.jo, align 8, !tbaa !231
  store ptr %i.kz, ptr %i.jr, align 8, !tbaa !232
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kg
  store ptr %i.la, ptr %i.jt, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222, %bb.bb
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.lb, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235: ; preds = %bb.bd, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211
  %i.lc = landingpad { ptr, i32 }
          cleanup
  %i.ld = load ptr, ptr %i.jp, align 8, !tbaa !62
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load ptr, ptr %i.le, align 8
  tail call void %i.lf(ptr noundef nonnull align 8 dereferenceable(24) %i.jp) #36, !inline_history !19
  br label %bb.fi

bb.bf:                                            ; preds = %.loopexit
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  %i.lh = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !764 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store i64 %2, ptr %i.li, align 8, !tbaa !70, !noalias !764
  %.sroa.2.0..sroa_idx.i.i.i239 = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i239, align 8, !noalias !764
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11m_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.lh, align 8, !tbaa !62, !noalias !764
  store ptr %i.lh, ptr %19, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.lg, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.lj = load ptr, ptr %19, align 8, !tbaa !234  ; 3 uses
  %.not.i240 = icmp eq ptr %i.lj, null
  br i1 %.not.i240, label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241: ; preds = %bb.bg
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !62
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(24) %i.lj) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ln, align 4, !tbaa !223
  br label %bb.fh

bb.bh:                                            ; preds = %bb.bf
  %i.lo = landingpad { ptr, i32 }
          cleanup
  %i.lp = load ptr, ptr %19, align 8, !tbaa !234  ; 3 uses
  %.not.i244 = icmp eq ptr %i.lp, null
  br i1 %.not.i244, label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245: ; preds = %bb.bh
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !62
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(24) %i.lp) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249

_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  br label %bb.fi

bb.bi:                                            ; preds = %.loopexit
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  %i.lu = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !765 ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i64 %2, ptr %i.lv, align 8, !tbaa !70, !noalias !765
  %.sroa.2.0..sroa_idx.i.i.i253 = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i253, align 8, !noalias !765
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11d_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.lu, align 8, !tbaa !62, !noalias !765
  store ptr %i.lu, ptr %20, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lw = load ptr, ptr %20, align 8, !tbaa !234  ; 3 uses
  %.not.i254 = icmp eq ptr %i.lw, null
  br i1 %.not.i254, label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255: ; preds = %bb.bj
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !62
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8
  call void %i.lz(ptr noundef nonnull align 8 dereferenceable(24) %i.lw) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ma, align 4, !tbaa !223
  br label %bb.fh

bb.bk:                                            ; preds = %bb.bi
  %i.mb = landingpad { ptr, i32 }
          cleanup
  %i.mc = load ptr, ptr %20, align 8, !tbaa !234  ; 3 uses
  %.not.i258 = icmp eq ptr %i.mc, null
  br i1 %.not.i258, label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259: ; preds = %bb.bk
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !62
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load ptr, ptr %i.me, align 8
  call void %i.mf(ptr noundef nonnull align 8 dereferenceable(24) %i.mc) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263

_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  br label %bb.fi

bb.bl:                                            ; preds = %.loopexit
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #36
  %i.mh = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !766 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i64 %2, ptr %i.mi, align 8, !tbaa !70, !noalias !766
  %.sroa.2.0..sroa_idx.i.i.i267 = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i267, align 8, !noalias !766
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11H_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.mh, align 8, !tbaa !62, !noalias !766
  store ptr %i.mh, ptr %21, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.mg, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.mj = load ptr, ptr %21, align 8, !tbaa !234  ; 3 uses
  %.not.i268 = icmp eq ptr %i.mj, null
  br i1 %.not.i268, label %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i269

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i269: ; preds = %bb.bm
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !62
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8
  call void %i.mm(ptr noundef nonnull align 8 dereferenceable(24) %i.mj) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i269, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.mn, align 4, !tbaa !223
  br label %bb.fh

bb.bn:                                            ; preds = %bb.bl
  %i.mo = landingpad { ptr, i32 }
          cleanup
  %i.mp = load ptr, ptr %21, align 8, !tbaa !234  ; 3 uses
  %.not.i272 = icmp eq ptr %i.mp, null
  br i1 %.not.i272, label %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit277, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i273

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i273: ; preds = %bb.bn
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !62
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8
  call void %i.ms(ptr noundef nonnull align 8 dereferenceable(24) %i.mp) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit277

end_hunk_5
begin_hunk_6_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details18null_scoped_padderEEEvcNS2_12padding_infoE:bb.a
  br label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.qj, align 4, !tbaa !223
  br label %bb.fh

bb.cl:                                            ; preds = %bb.cj
  %i.qk = landingpad { ptr, i32 }
          cleanup
  %i.ql = load ptr, ptr %29, align 8, !tbaa !234  ; 3 uses
  %.not.i384 = icmp eq ptr %i.ql, null
  br i1 %.not.i384, label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385: ; preds = %bb.cl
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !62
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8
  call void %i.qo(ptr noundef nonnull align 8 dereferenceable(24) %i.ql) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389

_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  br label %bb.fi

bb.cm:                                            ; preds = %.loopexit
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36
  %i.qq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !775 ; 4 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  store i64 %2, ptr %i.qr, align 8, !tbaa !70, !noalias !775
  %.sroa.2.0..sroa_idx.i.i.i393 = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i393, align 8, !noalias !775
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11r_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.qq, align 8, !tbaa !62, !noalias !775
  store ptr %i.qq, ptr %30, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.qp, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.qs = load ptr, ptr %30, align 8, !tbaa !234  ; 3 uses
  %.not.i394 = icmp eq ptr %i.qs, null
  br i1 %.not.i394, label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395: ; preds = %bb.cn
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !62
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8
  call void %i.qv(ptr noundef nonnull align 8 dereferenceable(24) %i.qs) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.qw, align 4, !tbaa !223
  br label %bb.fh

bb.co:                                            ; preds = %bb.cm
  %i.qx = landingpad { ptr, i32 }
          cleanup
  %i.qy = load ptr, ptr %30, align 8, !tbaa !234  ; 3 uses
  %.not.i398 = icmp eq ptr %i.qy, null
  br i1 %.not.i398, label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399: ; preds = %bb.co
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !62
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8
  call void %i.rb(ptr noundef nonnull align 8 dereferenceable(24) %i.qy) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403

_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  br label %bb.fi

bb.cp:                                            ; preds = %.loopexit
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  %i.rd = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !776 ; 4 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store i64 %2, ptr %i.re, align 8, !tbaa !70, !noalias !776
  %.sroa.2.0..sroa_idx.i.i.i407 = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i407, align 8, !noalias !776
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11R_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.rd, align 8, !tbaa !62, !noalias !776
  store ptr %i.rd, ptr %31, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.rc, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.rf = load ptr, ptr %31, align 8, !tbaa !234  ; 3 uses
  %.not.i408 = icmp eq ptr %i.rf, null
  br i1 %.not.i408, label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409: ; preds = %bb.cq
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !62
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8
  call void %i.ri(ptr noundef nonnull align 8 dereferenceable(24) %i.rf) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.rj, align 4, !tbaa !223
  br label %bb.fh

bb.cr:                                            ; preds = %bb.cp
  %i.rk = landingpad { ptr, i32 }
          cleanup
  %i.rl = load ptr, ptr %31, align 8, !tbaa !234  ; 3 uses
  %.not.i412 = icmp eq ptr %i.rl, null
  br i1 %.not.i412, label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413: ; preds = %bb.cr
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !62
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.ro = load ptr, ptr %i.rn, align 8
  call void %i.ro(ptr noundef nonnull align 8 dereferenceable(24) %i.rl) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417

_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  br label %bb.fi

bb.cs:                                            ; preds = %.loopexit, %.loopexit
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.rq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !777 ; 7 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  store i64 %2, ptr %i.rr, align 8, !tbaa !70, !noalias !777
  %.sroa.2.0..sroa_idx.i.i.i421 = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i421, align 8, !noalias !777
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11T_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.rq, align 8, !tbaa !62, !noalias !777
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !232 ; 6 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !236
  %.not.i.i422 = icmp eq ptr %i.rt, %i.rv
  br i1 %.not.i.i422, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.rw = ptrtoint ptr %i.rq to i64
  store i64 %i.rw, ptr %i.rt, align 8, !tbaa !234
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  store ptr %i.rx, ptr %i.rs, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.cu:                                            ; preds = %bb.cs
  %i.ry = load ptr, ptr %i.rp, align 8, !tbaa !231 ; 7 uses
  %i.rz = ptrtoint ptr %i.rt to i64               ; 2 uses
  %i.sa = ptrtoint ptr %i.ry to i64               ; 2 uses
  %i.sb = sub i64 %i.rz, %i.sa                    ; 3 uses
  %i.sc = icmp eq i64 %i.sb, 9223372036854775800
  br i1 %i.sc, label %bb.cv, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #42
          to label %.noexc435 unwind label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447

.noexc435:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423: ; preds = %bb.cu
  %i.sd = ashr exact i64 %i.sb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i424 = tail call i64 @llvm.umax.i64(i64 %i.sd, i64 1)
  %i.se = add nsw i64 %.sroa.speculated.i.i.i.i424, %i.sd ; 2 uses
  %i.sf = icmp ult i64 %i.se, %i.sd
  %i.sg = tail call i64 @llvm.umin.i64(i64 %i.se, i64 1152921504606846975)
  %i.sh = select i1 %i.sf, i64 1152921504606846975, i64 %i.sg ; 3 uses
  %.not.i.i.i.i425 = icmp ne i64 %i.sh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i425)
  %i.si = shl nuw nsw i64 %i.sh, 3
  %i.sj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.si) #44
          to label %.noexc436 unwind label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447 ; 7 uses

.noexc436:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.sb
  %i.sl = ptrtoint ptr %i.rq to i64
  store i64 %i.sl, ptr %i.sk, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i426 = icmp eq ptr %i.ry, %i.rt
  br i1 %.not10.i.i.i.i.i.i.i426, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427.preheader

.lr.ph.i.i.i.i.i.i.i427.preheader:                ; preds = %.noexc436
  %i.sm = add i64 %i.rz, -8
  %i.sn = sub i64 %i.sm, %i.sa                    ; 2 uses
  %i.so = lshr i64 %i.sn, 3
  %i.sp = add nuw nsw i64 %i.so, 1                ; 2 uses
  %min.iters.check961 = icmp ult i64 %i.sn, 24
  br i1 %min.iters.check961, label %.lr.ph.i.i.i.i.i.i.i427.preheader1008, label %vector.ph962

vector.ph962:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader
  %n.vec963 = and i64 %i.sp, 4611686018427387900  ; 3 uses
  %i.sq = shl i64 %n.vec963, 3                    ; 2 uses
  %i.sr = getelementptr i8, ptr %i.sj, i64 %i.sq  ; 2 uses
  %i.ss = getelementptr i8, ptr %i.ry, i64 %i.sq
  br label %vector.body964

vector.body964:                                   ; preds = %vector.body964, %vector.ph962
  %index965 = phi i64 [ 0, %vector.ph962 ], [ %index.next970, %vector.body964 ] ; 2 uses
  %i.st = shl i64 %index965, 3                    ; 2 uses
  %next.gep966 = getelementptr i8, ptr %i.sj, i64 %i.st ; 2 uses
  %next.gep967 = getelementptr i8, ptr %i.ry, i64 %i.st ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %i.su = getelementptr i8, ptr %next.gep967, i64 16 ; 2 uses
  %wide.load968 = load <2 x i64>, ptr %next.gep967, align 8, !tbaa !234, !alias.scope !779
  %wide.load969 = load <2 x i64>, ptr %i.su, align 8, !tbaa !234, !alias.scope !779
  %i.sv = getelementptr i8, ptr %next.gep966, i64 16
  store <2 x i64> %wide.load968, ptr %next.gep966, align 8, !tbaa !234, !alias.scope !778
  store <2 x i64> %wide.load969, ptr %i.sv, align 8, !tbaa !234, !alias.scope !778
  store <2 x ptr> splat (ptr null), ptr %next.gep967, align 8, !tbaa !234, !alias.scope !779
  store <2 x ptr> splat (ptr null), ptr %i.su, align 8, !tbaa !234, !alias.scope !779
  %index.next970 = add nuw i64 %index965, 4       ; 2 uses
  %i.sw = icmp eq i64 %index.next970, %n.vec963
  br i1 %i.sw, label %middle.block971, label %vector.body964, !llvm.loop !717

middle.block971:                                  ; preds = %vector.body964
  %cmp.n972 = icmp eq i64 %i.sp, %n.vec963
  br i1 %cmp.n972, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427.preheader1008

.lr.ph.i.i.i.i.i.i.i427.preheader1008:            ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader, %middle.block971
  %.012.i.i.i.i.i.i.i428.ph = phi ptr [ %i.sj, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.sr, %middle.block971 ]
  %.0911.i.i.i.i.i.i.i429.ph = phi ptr [ %i.ry, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.ss, %middle.block971 ]
  br label %.lr.ph.i.i.i.i.i.i.i427

.lr.ph.i.i.i.i.i.i.i427:                          ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader1008, %.lr.ph.i.i.i.i.i.i.i427
  %.012.i.i.i.i.i.i.i428 = phi ptr [ %i.sz, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.012.i.i.i.i.i.i.i428.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader1008 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i429 = phi ptr [ %i.sy, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.0911.i.i.i.i.i.i.i429.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader1008 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %i.sx = load i64, ptr %.0911.i.i.i.i.i.i.i429, align 8, !tbaa !234, !alias.scope !779
  store i64 %i.sx, ptr %.012.i.i.i.i.i.i.i428, align 8, !tbaa !234, !alias.scope !778
  store ptr null, ptr %.0911.i.i.i.i.i.i.i429, align 8, !tbaa !234, !alias.scope !779
  %i.sy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429, i64 8 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i430 = icmp eq ptr %i.sy, %i.rt
  br i1 %.not.i.i.i.i.i.i.i430, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427, !llvm.loop !718

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431: ; preds = %.lr.ph.i.i.i.i.i.i.i427, %middle.block971, %.noexc436
  %.0.lcssa.i.i.i.i.i.i.i432 = phi ptr [ %i.sj, %.noexc436 ], [ %i.sr, %middle.block971 ], [ %i.sz, %.lr.ph.i.i.i.i.i.i.i427 ]
  %i.ta = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i432, i64 8
  %.not.i23.i.i.i433 = icmp eq ptr %i.ry, null
  br i1 %.not.i23.i.i.i433, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431
  tail call void @_ZdlPv(ptr noundef nonnull %i.ry) #43
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434: ; preds = %bb.cw, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431
  store ptr %i.sj, ptr %i.rp, align 8, !tbaa !231
  store ptr %i.ta, ptr %i.rs, align 8, !tbaa !232
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.sh
  store ptr %i.tb, ptr %i.ru, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434, %bb.ct
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.tc, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447: ; preds = %bb.cv, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.td = landingpad { ptr, i32 }
          cleanup
  %i.te = load ptr, ptr %i.rq, align 8, !tbaa !62
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8
  tail call void %i.tg(ptr noundef nonnull align 8 dereferenceable(24) %i.rq) #36, !inline_history !19
  br label %bb.fi

bb.cx:                                            ; preds = %.loopexit
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.tj = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #44, !noalias !780 ; 7 uses
  %i.tk = load i32, ptr %i.ti, align 8, !tbaa !193, !noalias !780
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  store i64 %2, ptr %i.tl, align 8, !tbaa !70, !noalias !780
  %.sroa.2.0..sroa_idx.i.i.i451 = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i451, align 8, !noalias !780
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11z_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.tj, align 8, !tbaa !62, !noalias !780
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 24
  store i32 %i.tk, ptr %i.tm, align 8, !tbaa !267, !noalias !780
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tj, i64 32
  store i64 0, ptr %i.tn, align 8, !tbaa !70, !noalias !780
  %i.to = getelementptr inbounds nuw i8, ptr %i.tj, i64 40
  store i32 0, ptr %i.to, align 8, !tbaa !268, !noalias !780
  store ptr %i.tj, ptr %32, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.th, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.tp = load ptr, ptr %32, align 8, !tbaa !234  ; 3 uses
  %.not.i452 = icmp eq ptr %i.tp, null
  br i1 %.not.i452, label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453: ; preds = %bb.cy
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !62
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8
  call void %i.ts(ptr noundef nonnull align 8 dereferenceable(24) %i.tp) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.tt, align 4, !tbaa !223
  br label %bb.fh

bb.cz:                                            ; preds = %bb.cx
  %i.tu = landingpad { ptr, i32 }
          cleanup
  %i.tv = load ptr, ptr %32, align 8, !tbaa !234  ; 3 uses
  %.not.i456 = icmp eq ptr %i.tv, null
  br i1 %.not.i456, label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457: ; preds = %bb.cz
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !62
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8
  call void %i.ty(ptr noundef nonnull align 8 dereferenceable(24) %i.tv) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461

_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  br label %bb.fi

bb.da:                                            ; preds = %.loopexit
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #36
  %i.ua = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !781 ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  store i64 %2, ptr %i.ub, align 8, !tbaa !70, !noalias !781
  %.sroa.2.0..sroa_idx.i.i.i465 = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i465, align 8, !noalias !781
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details13pid_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.ua, align 8, !tbaa !62, !noalias !781
  store ptr %i.ua, ptr %33, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.tz, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.uc = load ptr, ptr %33, align 8, !tbaa !234  ; 3 uses
  %.not.i466 = icmp eq ptr %i.uc, null
  br i1 %.not.i466, label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467: ; preds = %bb.db
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !62
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8
  call void %i.uf(ptr noundef nonnull align 8 dereferenceable(24) %i.uc) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  br label %bb.fh

bb.dc:                                            ; preds = %bb.da
  %i.ug = landingpad { ptr, i32 }
          cleanup
  %i.uh = load ptr, ptr %33, align 8, !tbaa !234  ; 3 uses
  %.not.i470 = icmp eq ptr %i.uh, null
  br i1 %.not.i470, label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i471

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i471: ; preds = %bb.dc
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !62
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8
  call void %i.uk(ptr noundef nonnull align 8 dereferenceable(24) %i.uh) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475

_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i471, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  br label %bb.fi

bb.dd:                                            ; preds = %.loopexit
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #36
  %i.um = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #44, !noalias !782 ; 4 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  store i64 %2, ptr %i.un, align 8, !tbaa !70, !noalias !782
  %.sroa.2.0..sroa_idx.i.i.i479 = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i479, align 8, !noalias !782
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details21color_start_formatterE, i64 16), ptr %i.um, align 8, !tbaa !62, !noalias !782
  store ptr %i.um, ptr %34, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ul, ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.de unwind label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.uo = load ptr, ptr %34, align 8, !tbaa !234  ; 3 uses
  %.not.i480 = icmp eq ptr %i.uo, null
  br i1 %.not.i480, label %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i481

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i481: ; preds = %bb.de
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !62
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.ur = load ptr, ptr %i.uq, align 8
  call void %i.ur(ptr noundef nonnull align 8 dereferenceable(24) %i.uo) #36, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i481, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #36
  br label %bb.fh

bb.df:                                            ; preds = %bb.dd
  %i.us = landingpad { ptr, i32 }
          cleanup
  %i.ut = load ptr, ptr %34, align 8, !tbaa !234  ; 3 uses
  %.not.i484 = icmp eq ptr %i.ut, null
  br i1 %.not.i484, label %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit489, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i485

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i485: ; preds = %bb.df
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !62
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
end_hunk_6
