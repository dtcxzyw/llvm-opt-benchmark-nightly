inline.NumInlined: 22185
inline.NumDeleted: 7876
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE9push_backEOS3_:bb.a
  store ptr %i.ck, ptr %.03.i.i.i.i.i, align 8, !tbaa !20, !alias.scope !2634, !noalias !2637
  %i.cr = load i64, ptr %i.cl, align 8, !tbaa !22, !alias.scope !2637, !noalias !2634
  store i64 %i.cr, ptr %i.cj, align 8, !tbaa !22, !alias.scope !2634, !noalias !2637
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8
  %.pre.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !23, !alias.scope !2637, !noalias !2634
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.i
  %i.cs = phi i64 [ %.pre.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.co, %bb.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8
  store i64 %i.cs, ptr %i.cu, align 8, !tbaa !23, !alias.scope !2634, !noalias !2637
  store ptr %i.cl, ptr %.092.i.i.i.i.i, align 8, !tbaa !20, !alias.scope !2637, !noalias !2634
  store i64 0, ptr %i.ct, align 8, !tbaa !23, !alias.scope !2637, !noalias !2634
  store i8 0, ptr %i.cl, align 8, !tbaa !22, !alias.scope !2637, !noalias !2634
  %i.cv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 32 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 32 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 48 ; 3 uses
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !16, !alias.scope !2634, !noalias !2637
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !20, !alias.scope !2637, !noalias !2634 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 48 ; 5 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 40
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !23, !alias.scope !2637, !noalias !2634 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = add nuw nsw i64 %i.dc, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cx, ptr noundef nonnull align 8 dereferenceable(1) %i.cz, i64 %i.de, i1 false), !alias.scope !2639
  br label %_ZSt19__relocate_object_aIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i
  store ptr %i.cy, ptr %i.cv, align 8, !tbaa !20, !alias.scope !2634, !noalias !2637
  %i.df = load i64, ptr %i.cz, align 8, !tbaa !22, !alias.scope !2637, !noalias !2634
  store i64 %i.df, ptr %i.cx, align 8, !tbaa !22, !alias.scope !2634, !noalias !2637
  %.phi.trans.insert1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 40
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert1.i.i.i.i.i.i, align 8, !tbaa !23, !alias.scope !2637, !noalias !2634
  br label %_ZSt19__relocate_object_aIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i.i.i

_ZSt19__relocate_object_aIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i, %bb.j
  %i.dg = phi i64 [ %.pre2.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i.i.i.i ], [ %i.dc, %bb.j ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 40
  store i64 %i.dg, ptr %i.di, align 8, !tbaa !23, !alias.scope !2634, !noalias !2637
  store ptr %i.cz, ptr %i.cw, align 8, !tbaa !20, !alias.scope !2637, !noalias !2634
  store i64 0, ptr %i.dh, align 8, !tbaa !23, !alias.scope !2637, !noalias !2634
  store i8 0, ptr %i.cz, align 8, !tbaa !22, !alias.scope !2637, !noalias !2634
  %i.dj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 64 ; 2 uses
  %i.dl = load <2 x ptr>, ptr %i.dk, align 8, !tbaa !91, !alias.scope !2637, !noalias !2634
  store <2 x ptr> %i.dl, ptr %i.dj, align 8, !tbaa !91, !alias.scope !2634, !noalias !2637
  %i.dm = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 80
  %i.dn = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 80
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !730, !alias.scope !2637, !noalias !2634
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !730, !alias.scope !2634, !noalias !2637
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i8 0, i64 24, i1 false), !alias.scope !2637, !noalias !2634
  %i.dp = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 88
  %i.dq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i64 16, i1 false), !alias.scope !2639
  %i.dr = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 104 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dr, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2640

_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i: ; preds = %_ZSt19__relocate_object_aIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i.i.i, %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretC2EOS2_.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.az, %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretC2EOS2_.exit.i.i ], [ %i.ds, %_ZSt19__relocate_object_aIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i.i.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 104
  %.not.i35.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !1209
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.dw) #41
  br label %_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i.i
  store ptr %i.az, ptr %0, align 8, !tbaa !1206
  store ptr %i.dt, ptr %i.a, align 8, !tbaa !1207
  %i.dx = getelementptr inbounds nuw [104 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.dx, ptr %i.c, align 8, !tbaa !1209
  br label %_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretC2EOS2_.exit.i, %_ZNSt6vectorIN6google8protobuf12_GLOBAL__N_118OptionsToInterpretESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_118OptionsToInterpretC2ESt17basic_string_viewIcSt11char_traitsIcEES6_N4absl12lts_202505124SpanIKiEEPKNS0_7MessageEPSC_(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %1, ptr nofree readonly captures(address_is_null) %2, i64 %3, ptr nofree readonly captures(address_is_null) %4, ptr nofree readonly captures(none) %.0.val, i64 %.8.val, ptr noundef nonnull %5, ptr noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  %i.d = icmp eq ptr %2, null
  %i.e = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.e, %i.d
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 %1, ptr %i.b, align 8, !tbaa !19
  %i.f = icmp ugt i64 %1, 15
  br i1 %i.f, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !20
  %i.h = load i64, ptr %i.b, align 8, !tbaa !19
  store i64 %i.h, ptr %i.c, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %1, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !22
  store i8 %i.j, ptr %i.i, align 1, !tbaa !22
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.k = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !23
  %i.m = load ptr, ptr %0, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !16
  %i.q = icmp eq ptr %4, null
  %i.r = icmp ne i64 %3, 0
  %or.cond.i.i.i12 = and i1 %i.r, %i.q
  br i1 %or.cond.i.i.i12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
          to label %.noexc15 unwind label %bb.m

.noexc15:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %3, ptr %i.a, align 8, !tbaa !19
  %i.s = icmp ugt i64 %3, 15
  br i1 %i.s, label %.noexc.i.i.i14, label %._crit_edge.i.i.i.i13

.noexc.i.i.i14:                                   ; preds = %bb.g
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc16 unwind label %bb.m   ; 2 uses

.noexc16:                                         ; preds = %.noexc.i.i.i14
  store ptr %i.t, ptr %i.o, align 8, !tbaa !20
  %i.u = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.u, ptr %i.p, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i13

._crit_edge.i.i.i.i13:                            ; preds = %.noexc16, %bb.g
  %i.v = phi ptr [ %i.t, %.noexc16 ], [ %i.p, %bb.g ] ; 2 uses
  switch i64 %3, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i13
  %i.w = load i8, ptr %4, align 1, !tbaa !22
  store i8 %i.w, ptr %i.v, align 1, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %4, i64 %3, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i13
  %i.x = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.x, ptr %i.y, align 8, !tbaa !23
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %.idx = shl nuw nsw i64 %.8.val, 2              ; 4 uses
  %.not.i.i.i = icmp eq i64 %.8.val, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %7 = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %7, ptr %8, align 8, !tbaa !730
  br label %bb.l

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #45
          to label %.noexc4.i unwind label %.body ; 4 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !728
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !730
  %.not = icmp eq i64 %.8.val, 1
  br i1 %.not, label %bb.k, label %bb.j, !prof !1833

bb.j:                                             ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr align 4 %.0.val, i64 %.idx, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %.noexc4.i
  %i.af = load i32, ptr %.0.val, align 4, !tbaa !3
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.thread.i.i
  %i.ag = phi ptr [ %i.ad, %bb.j ], [ %7, %.thread.i.i ], [ %i.ad, %bb.k ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !951
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %5, ptr %i.ai, align 8, !tbaa !2301
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %6, ptr %i.aj, align 8, !tbaa !2299
  ret void

bb.m:                                             ; preds = %.noexc.i.i.i14, %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !20  ; 2 uses
  %i.am = icmp eq ptr %.pre, %i.p
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.an = load i64, ptr %i.p, align 8, !tbaa !22
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ao) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.m ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.al, %.body ]
  %i.ap = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.c
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !22
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZN6google8protobuf11FileOptions17IsInitializedImplERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

declare noundef i64 @_ZNK6google8protobuf10FeatureSet12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #13

declare void @_ZNK6google8protobuf15FeatureResolver13MergeFeaturesERKNS0_10FeatureSetES4_(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::StatusOr.1188") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !1184   ; 3 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.b

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.c) #40
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit1

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.a to i1
  br i1 %i.d, label %_ZN4absl12lts_202505126StatusD2Ev.exit1, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit1 unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #42
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit1:          ; preds = %bb.c, %bb.b, %_ZN4absl12lts_202505126StatusD2Ev.exit
  ret void
}

declare void @_ZN6google8protobuf10FeatureSet5ClearEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS4_14FileDescriptorEEEvNS4_7EditionERKNT_5ProtoEPS9_PNS9_11OptionsTypeERNS4_8internal13FlatAllocatorENS4_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2650)
  %i.b = load ptr, ptr %1, align 8, !tbaa !2653, !noalias !2655, !nonnull !51, !align !644
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1184, !noalias !2655 ; 3 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20, !noalias !2655
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23, !noalias !2655
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.j = and i64 %i.c, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 0           ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 27
  %spec.select1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr null, ptr @_ZN4absl12lts_202505126Status16kMovedFromStringE
  br label %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i

_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.c ], [ %i.i, %bb.b ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi ptr [ %spec.select1.i.i.i.i.i, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !16, !alias.scope !2655
  %i.l = icmp eq ptr %.sroa.4.0.i.i.i.i.i, null
  %i.m = icmp ne i64 %.sroa.0.0.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i = and i1 %i.m, %i.l
  br i1 %or.cond.i.i.i.i.i.i.i, label %.noexc.i.i.i.i, label %bb.d

.noexc.i.i.i.i:                                   ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.d:                                             ; preds = %_ZNK4absl12lts_202505126Status7messageEv.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2655
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !tbaa !19, !noalias !2655
  %i.n = icmp ugt i64 %.sroa.0.0.i.i.i.i.i, 15
  br i1 %i.n, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !20, !alias.scope !2655
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2655
  store i64 %i.p, ptr %i.k, align 8, !tbaa !22, !alias.scope !2655
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %bb.d
  %i.q = phi ptr [ %i.o, %.noexc.i.i.i.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  switch i64 %.sroa.0.0.i.i.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_14FileDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.r = load i8, ptr %.sroa.4.0.i.i.i.i.i, align 1, !tbaa !22
  store i8 %i.r, ptr %i.q, align 1, !tbaa !22
  br label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_14FileDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %.sroa.4.0.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, i1 false)
  br label %_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_14FileDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit

_ZSt6invokeB5cxx11IRKZN6google8protobuf17DescriptorBuilder19ResolveFeaturesImplINS1_14FileDescriptorEEEvNS1_7EditionERKNT_5ProtoEPS6_PNS6_11OptionsTypeERNS1_8internal13FlatAllocatorENS1_14DescriptorPool14ErrorCollector13ErrorLocationEbEUlvE_JEENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSN_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2655 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23, !alias.scope !2655
  %i.u = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !2655
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2655
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder23AddRecursiveImportErrorERKNS4_19FileDescriptorProtoEiE3$_0NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readonly captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2665)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1323, !noalias !2668
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !16, !alias.scope !2668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2668
  store i64 33, ptr %i.a, align 8, !tbaa !19, !noalias !2668
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !20, !alias.scope !2668
  %i.f = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !2668 ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !22, !alias.scope !2668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.e, ptr noundef nonnull align 1 dereferenceable(33) @.str.349, i64 33, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !23, !alias.scope !2668
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2668
  %i.i = load ptr, ptr %1, align 8, !tbaa !2669, !noalias !2668, !nonnull !51, !align !2670
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !818  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !101  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 5
end_hunk_0
