Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/benchmark?download=true
inline.NumInlined: 16777
inline.NumDeleted: 5122
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNSt6vectorI6personSaIS0_EE7reserveEm:bb.a
_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.loopexit: ; preds = %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !223
  br label %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.loopexit, %_ZNSt12_Vector_baseI6personSaIS0_EE11_M_allocateEm.exit
  %i.ai = phi ptr [ %.pre, %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseI6personSaIS0_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.ai, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseI6personSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !238
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.am) #30
  br label %_ZNSt12_Vector_baseI6personSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI6personSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !223
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.an, ptr %i.j, align 8, !tbaa !237
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %1
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !238
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseI6personSaIS0_EE13_M_deallocateEPS0_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6personSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !223    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI6personSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #32
  unreachable

_ZNKSt6vectorI6personSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, i8 0, i64 56, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.s, ptr %i.r, align 8, !tbaa !92
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI6personSaIS0_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorI6personSaIS0_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorI6personSaIS0_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %i.t = load i32, ptr %.0911.i.i.i, align 8, !tbaa !236, !alias.scope !1164, !noalias !1163
  store i32 %i.t, ptr %.012.i.i.i, align 8, !tbaa !236, !alias.scope !1163, !noalias !1164
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !92, !alias.scope !1163, !noalias !1164
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !95, !alias.scope !1164, !noalias !1163 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !93, !alias.scope !1164, !noalias !1163 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !1165
  br label %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %i.u, align 8, !tbaa !95, !alias.scope !1163, !noalias !1164
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !94, !alias.scope !1164, !noalias !1163
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !94, !alias.scope !1163, !noalias !1164
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !93, !alias.scope !1164, !noalias !1163
  br label %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.af = phi i64 [ %i.ab, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !93, !alias.scope !1163, !noalias !1164
  store ptr %i.y, ptr %i.v, align 8, !tbaa !95, !alias.scope !1164, !noalias !1163
  store i64 0, ptr %i.ag, align 8, !tbaa !93, !alias.scope !1164, !noalias !1163
  store i8 0, ptr %i.y, align 8, !tbaa !94, !alias.scope !1164, !noalias !1163
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !alias.scope !1165
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !36

_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorI6personSaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorI6personSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.al, %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit25, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i17 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.am, %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 6 uses
  %.0911.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  %i.an = load i32, ptr %.0911.i.i.i18, align 8, !tbaa !236, !alias.scope !1167, !noalias !1166
  store i32 %i.an, ptr %.012.i.i.i17, align 8, !tbaa !236, !alias.scope !1166, !noalias !1167
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 24 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !92, !alias.scope !1166, !noalias !1167
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !95, !alias.scope !1167, !noalias !1166 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 24 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19

bb.d:                                             ; preds = %.lr.ph.i.i.i16
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !93, !alias.scope !1167, !noalias !1166 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !1168
  br label %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19: ; preds = %.lr.ph.i.i.i16
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !95, !alias.scope !1166, !noalias !1167
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !94, !alias.scope !1167, !noalias !1166
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !94, !alias.scope !1166, !noalias !1167
  %.phi.trans.insert.i.i.i.i20 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16
  %.pre.i.i.i.i21 = load i64, ptr %.phi.trans.insert.i.i.i.i20, align 8, !tbaa !93, !alias.scope !1167, !noalias !1166
  br label %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19, %bb.d
  %i.az = phi i64 [ %i.av, %bb.d ], [ %.pre.i.i.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !93, !alias.scope !1166, !noalias !1167
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !95, !alias.scope !1167, !noalias !1166
  store i64 0, ptr %i.ba, align 8, !tbaa !93, !alias.scope !1167, !noalias !1166
  store i8 0, ptr %i.as, align 8, !tbaa !94, !alias.scope !1167, !noalias !1166
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !alias.scope !1168
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 56 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 56 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit25, label %.lr.ph.i.i.i16, !llvm.loop !36

_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit25: ; preds = %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.am, %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bf, %_ZSt19__relocate_object_aI6personS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseI6personSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit25
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !238
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #30
  br label %_ZNSt12_Vector_baseI6personSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI6personSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI6personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit25, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !223
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !237
  %i.bk = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !238
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorI6personSaIS1_EELb1EE8_S_do_itERS3_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !239    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !239  ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %1 = sdiv exact i64 %i.f, 56
  %i.g = icmp ugt i64 %1, 164703072086692425
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorI6personSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseI6personSaIS0_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorI6personSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorI6personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorI6personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread: ; preds = %_ZNSt6vectorI6personSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !238
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !238
  br label %_ZSt8_DestroyIP6personS0_EvT_S2_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorI6personSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29
          to label %.lr.ph.i.i.i.i.i.i unwind label %_ZNSt12_Vector_baseI6personSaIS0_EED2Ev.exit.i ; 3 uses

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %_ZSt10_ConstructI6personJS0_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructI6personJS0_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.preheader.i.i ] ; 6 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt10_ConstructI6personJS0_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.preheader.i.i ] ; 8 uses
  %i.l = load i32, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !236
  store i32 %i.l, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !236
  %i.m = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !92
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !95   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 24 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !93   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZSt10_ConstructI6personJS0_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.p, ptr %i.m, align 8, !tbaa !95
  %i.w = load i64, ptr %i.q, align 8, !tbaa !94
  store i64 %i.w, ptr %i.o, align 8, !tbaa !94
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !93
  br label %_ZSt10_ConstructI6personJS0_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructI6personJS0_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.c
  %i.x = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.t, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  store i64 %i.x, ptr %i.z, align 8, !tbaa !93
  store ptr %i.q, ptr %i.n, align 8, !tbaa !95
  store i64 0, ptr %i.y, align 8, !tbaa !93
  store i8 0, ptr %i.q, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.c
  br i1 %i.ae, label %_ZNSt6vectorI6personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1169

_ZNSt12_Vector_baseI6personSaIS0_EED2Ev.exit.i:   ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.af, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %.09) #28 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorI6personSaIS0_EED2Ev.exit unwind label %bb.e

_ZNSt6vectorI6personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit: ; preds = %_ZSt10_ConstructI6personJS0_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !223   ; 4 uses
  %.pre18 = load ptr, ptr %i.b, align 8, !tbaa !237 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !238 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !223
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !237
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !238
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre18
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP6personS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorI6personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit, %_ZSt8_DestroyI6personEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyI6personEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorI6personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !95 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZSt8_DestroyI6personEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !94
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #30
  br label %_ZSt8_DestroyI6personEvPT_.exit.i.i.i

_ZSt8_DestroyI6personEvPT_.exit.i.i.i:            ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.aq, %.pre18
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIP6personS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !31

_ZSt8_DestroyIP6personS0_EvT_S2_RSaIT0_E.exit.i:  ; preds = %_ZSt8_DestroyI6personEvPT_.exit.i.i.i, %_ZNSt6vectorI6personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread, %_ZNSt6vectorI6personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit
  %i.ar = phi ptr [ %i.j, %_ZNSt6vectorI6personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread ], [ %i.aj, %_ZNSt6vectorI6personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ], [ %i.aj, %_ZSt8_DestroyI6personEvPT_.exit.i.i.i ]
  %i.as = phi ptr [ %i.a, %_ZNSt6vectorI6personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread ], [ %.pre, %_ZNSt6vectorI6personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ], [ %.pre, %_ZSt8_DestroyI6personEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI6personSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIP6personS0_EvT_S2_RSaIT0_E.exit.i
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.av) #30
  br label %_ZNSt6vectorI6personSaIS0_EED2Ev.exit

_ZNSt6vectorI6personSaIS0_EED2Ev.exit:            ; preds = %bb.d, %_ZSt8_DestroyIP6personS0_EvT_S2_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseI6personSaIS0_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseI6personSaIS0_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIP6personS0_EvT_S2_RSaIT0_E.exit.i ], [ true, %bb.d ]
  ret i1 %.0

bb.e:                                             ; preds = %_ZNSt12_Vector_baseI6personSaIS0_EED2Ev.exit.i
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt6vectorI6personSaIS6_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.253, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347, !nonnull !272, !align !273 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !320
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !319  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.critedge, label %_ZNSt6vectorI6personSaIS0_EE13shrink_to_fitEv.exit, !prof !257

.critedge:                                        ; preds = %bb.a
  %.0.copyload = load i16, ptr %i.e, align 1      ; 2 uses
  %.0.insert.ext = zext i16 %.0.copyload to i64   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store ptr %i.j, ptr %i.b, align 8, !tbaa !319
  %i.k = icmp eq i16 %.0.copyload, 0
  br i1 %i.k, label %_ZNSt6vectorI6personSaIS0_EE13shrink_to_fitEv.exit, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.l = load ptr, ptr %1, align 8, !tbaa !223    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !237  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorI6personSaIS0_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyI6personEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyI6personEvPT_.exit.i.i.i.i ], [ %i.l, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !95   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyI6personEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !94
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZSt8_DestroyI6personEvPT_.exit.i.i.i.i

_ZSt8_DestroyI6personEvPT_.exit.i.i.i.i:          ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIP6personS0_EvT_S2_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !31

_ZSt8_DestroyIP6personS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyI6personEvPT_.exit.i.i.i.i
  store ptr %i.l, ptr %i.m, align 8, !tbaa !237
  br label %_ZNSt6vectorI6personSaIS0_EE5clearEv.exit

_ZNSt6vectorI6personSaIS0_EE5clearEv.exit:        ; preds = %bb.b, %_ZSt8_DestroyIP6personS0_EvT_S2_RSaIT0_E.exit.i.i
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.0.insert.ext, i64 18724)
  tail call void @_ZNSt6vectorI6personSaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.speculated)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorI6personSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %i.w = add nuw nsw i64 %.032, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %.0.insert.ext
  br i1 %exitcond.not, label %_ZNSt6vectorI6personSaIS0_EE13shrink_to_fitEv.exit, label %bb.d, !llvm.loop !1170

end_hunk_0
begin_hunk_1_@_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt6vectorI9zc_personSaIS6_EEEENS_8err_codeERT3_:bb.a
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #29 ; 3 uses
  %.not.i8.i = icmp eq ptr %i.h, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI9zc_personSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI9zc_personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.o) #30
  br label %_ZNSt12_Vector_baseI9zc_personSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI9zc_personSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorI9zc_personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.s, ptr %1, align 8, !tbaa !330
  store ptr %i.s, ptr %i.i, align 8, !tbaa !362
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %.0.insert.ext
  store ptr %i.t, ptr %i.k, align 8, !tbaa !331
  br label %_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit.preheader

_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit.preheader: ; preds = %_ZNSt6vectorI9zc_personSaIS0_EE5clearEv.exit, %_ZNSt12_Vector_baseI9zc_personSaIS0_EE13_M_deallocateEPS0_m.exit.i
  br label %_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit

_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit:   ; preds = %_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit.preheader, %bb.p
  %.031 = phi i64 [ %i.cm, %bb.p ], [ 0, %_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit.preheader ]
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !362  ; 5 uses
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !331
  %.not.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i8 0, i64 40, i1 false)
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  store ptr %i.x, ptr %i.i, align 8, !tbaa !362
  br label %_ZNSt6vectorI9zc_personSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

bb.f:                                             ; preds = %_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit
  %i.y = load ptr, ptr %1, align 8, !tbaa !330    ; 5 uses
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 4 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.g, label %_ZNKSt6vectorI9zc_personSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #32
  unreachable

_ZNKSt6vectorI9zc_personSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ad = sdiv exact i64 %i.ab, 40                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 230584300921369395)
  %i.ah = select i1 %i.af, i64 230584300921369395, i64 %i.ag ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = mul nuw nsw i64 %i.ah, 40
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #29 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i8 0, i64 40, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.y, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI9zc_personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI9zc_personSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %i.aj, %_ZNKSt6vectorI9zc_personSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.y, %_ZNKSt6vectorI9zc_personSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !365, !alias.scope !1177
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI9zc_personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !37

_ZNSt6vectorI9zc_personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI9zc_personSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aj, %_ZNKSt6vectorI9zc_personSaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i22.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorI9zc_personSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI9zc_personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ab) #30
  br label %_ZNSt6vectorI9zc_personSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9zc_personSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorI9zc_personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i
  store ptr %i.aj, ptr %1, align 8, !tbaa !330
  store ptr %i.an, ptr %i.i, align 8, !tbaa !362
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.ao, ptr %i.k, align 8, !tbaa !331
  br label %_ZNSt6vectorI9zc_personSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

_ZNSt6vectorI9zc_personSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorI9zc_personSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.ap = phi ptr [ %i.x, %bb.e ], [ %i.an, %_ZNSt6vectorI9zc_personSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 5 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -32
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -16
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !347, !nonnull !272, !align !273 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !320
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !319 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ugt i64 %i.az, 3
  br i1 %i.ba, label %bb.i, label %bb.n, !prof !257

bb.i:                                             ; preds = %_ZNSt6vectorI9zc_personSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %i.bb = getelementptr inbounds i8, ptr %i.ap, i64 -40
  %i.bc = load i32, ptr %i.aw, align 1
  store i32 %i.bc, ptr %i.bb, align 4
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !319
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store ptr %i.be, ptr %i.at, align 8, !tbaa !319
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !347, !nonnull !272, !align !273 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !320 ; 2 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !319 ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64               ; 2 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i.i.i16, label %bb.n, label %bb.j, !prof !169

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i.i.i.i = load i8, ptr %i.bi, align 1 ; 2 uses
  %.0.insert.ext.i.i.i.i.i = zext i8 %.0.copyload.i.i.i.i.i to i64 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 5 uses
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !319
  %i.bl = icmp eq i8 %.0.copyload.i.i.i.i.i, 0
  br i1 %i.bl, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt17basic_string_viewIcSt11char_traitsIcEEEENS_8err_codeERT3_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bj, %i.bm
  %i.bo = icmp ult i64 %i.bn, %.0.insert.ext.i.i.i.i.i
  br i1 %i.bo, label %bb.n, label %bb.l, !prof !169

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.0.insert.ext.i.i.i.i.i
  store ptr %i.bp, ptr %i.bf, align 8, !tbaa !319
  store i64 %.0.insert.ext.i.i.i.i.i, ptr %i.aq, align 8, !tbaa !249
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ap, i64 -24
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !363
  %.pre.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !320
  %.pre16.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !319
  %.pre17.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  br label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt17basic_string_viewIcSt11char_traitsIcEEEENS_8err_codeERT3_.exit.i.i.i.i

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt17basic_string_viewIcSt11char_traitsIcEEEENS_8err_codeERT3_.exit.i.i.i.i: ; preds = %bb.l, %bb.j
  %.pre-phi.i.i.i.i = phi i64 [ %.pre17.i.i.i.i, %bb.l ], [ %i.bj, %bb.j ]
  %i.bq = phi ptr [ %.pre16.i.i.i.i, %bb.l ], [ %i.bk, %bb.j ] ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %.pre-phi.i.i.i.i, %i.br
  %i.bt = icmp ugt i64 %i.bs, 3
  br i1 %i.bt, label %bb.m, label %bb.n, !prof !257

bb.m:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt17basic_string_viewIcSt11char_traitsIcEEEENS_8err_codeERT3_.exit.i.i.i.i
  %i.bu = load i32, ptr %i.bq, align 1
  store i32 %i.bu, ptr %i.ar, align 4
  %i.bv = load ptr, ptr %i.bf, align 8, !tbaa !319
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store ptr %i.bw, ptr %i.bf, align 8, !tbaa !319
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !347, !nonnull !272, !align !273 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !320
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !319 ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = icmp ugt i64 %i.cd, 7
  br i1 %i.ce, label %bb.p, label %bb.n, !prof !257

bb.n:                                             ; preds = %bb.m, %_ZNSt6vectorI9zc_personSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit, %bb.k, %bb.i, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt17basic_string_viewIcSt11char_traitsIcEEEENS_8err_codeERT3_.exit.i.i.i.i
  %i.cf = load ptr, ptr %i.k, align 8, !tbaa !331
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt6vectorI9zc_personSaIS0_EE13shrink_to_fitEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorI9zc_personSaIS1_EELb1EE8_S_do_itERS3_(ptr noundef nonnull align 8 dereferenceable(24) %1) #28 ; 0 uses
  br label %_ZNSt6vectorI9zc_personSaIS0_EE13shrink_to_fitEv.exit

bb.p:                                             ; preds = %bb.m
  %i.cj = load i64, ptr %i.ca, align 1
  store i64 %i.cj, ptr %i.as, align 8
  %i.ck = load ptr, ptr %i.bx, align 8, !tbaa !319
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cl, ptr %i.bx, align 8, !tbaa !319
  %i.cm = add nuw nsw i64 %.031, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cm, %.0.insert.ext
  br i1 %exitcond.not, label %_ZNSt6vectorI9zc_personSaIS0_EE13shrink_to_fitEv.exit, label %_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit, !llvm.loop !1176

_ZNSt6vectorI9zc_personSaIS0_EE13shrink_to_fitEv.exit: ; preds = %bb.p, %bb.a, %bb.b, %bb.o, %bb.n
  %.sroa.024.1 = phi i32 [ 0, %bb.b ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.a ], [ 0, %bb.p ]
  ret i32 %.sroa.024.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorI9zc_personSaIS1_EELb1EE8_S_do_itERS3_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1178   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1178 ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %reass.sub.fr.i = freeze i64 %i.f               ; 5 uses
  %1 = sdiv exact i64 %reass.sub.fr.i, 40
  %i.g = icmp ugt i64 %1, 230584300921369395
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorI9zc_personSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseI9zc_personSaIS0_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorI9zc_personSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseI9zc_personSaIS0_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseI9zc_personSaIS0_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorI9zc_personSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %reass.sub.fr.i
  br label %_ZNSt6vectorI9zc_personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorI9zc_personSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i) #29
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseI9zc_personSaIS0_EED2Ev.exit.i ; 4 uses

.noexc5.i:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %reass.sub.fr.i
  %i.k = add i64 %reass.sub.fr.i, -40             ; 2 uses
  %i.l = urem i64 %i.k, 40
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = add i64 %i.m, 40                         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.a, i64 %i.n, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.i, i64 %i.n
  br label %_ZNSt6vectorI9zc_personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit

_ZNSt12_Vector_baseI9zc_personSaIS0_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.o, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %.09) #28 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorI9zc_personSaIS0_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorI9zc_personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit: ; preds = %.noexc5.i, %_ZNSt12_Vector_baseI9zc_personSaIS0_EE11_M_allocateEm.exit.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.h, %_ZNSt12_Vector_baseI9zc_personSaIS0_EE11_M_allocateEm.exit.thread.i.i ], [ %i.j, %.noexc5.i ]
  %.sroa.012.0 = phi ptr [ null, %_ZNSt12_Vector_baseI9zc_personSaIS0_EE11_M_allocateEm.exit.thread.i.i ], [ %i.i, %.noexc5.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI9zc_personSaIS0_EE11_M_allocateEm.exit.thread.i.i ], [ %scevgep.i.i, %.noexc5.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !331
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !330
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !362
  store ptr %.sroa.12.0, ptr %i.q, align 8, !tbaa !331
  %.not.i.i.i10 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorI9zc_personSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI9zc_personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.t) #30
  br label %_ZNSt6vectorI9zc_personSaIS0_EED2Ev.exit

_ZNSt6vectorI9zc_personSaIS0_EED2Ev.exit:         ; preds = %bb.c, %_ZNSt6vectorI9zc_personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit, %_ZNSt12_Vector_baseI9zc_personSaIS0_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseI9zc_personSaIS0_EED2Ev.exit.i ], [ true, %_ZNSt6vectorI9zc_personSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseI9zc_personSaIS0_EED2Ev.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt6vectorI9zc_personSaIS6_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347, !nonnull !272, !align !273 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !320
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !319  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.critedge, label %_ZNSt6vectorI9zc_personSaIS0_EE13shrink_to_fitEv.exit, !prof !257

.critedge:                                        ; preds = %bb.a
  %.0.copyload = load i16, ptr %i.e, align 1      ; 2 uses
  %.0.insert.ext = zext i16 %.0.copyload to i64   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store ptr %i.j, ptr %i.b, align 8, !tbaa !319
  %i.k = icmp eq i16 %.0.copyload, 0
  br i1 %i.k, label %_ZNSt6vectorI9zc_personSaIS0_EE13shrink_to_fitEv.exit, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.l = load ptr, ptr %1, align 8, !tbaa !330    ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !362
  %.not.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i, label %bb.c, label %_ZSt8_DestroyIP9zc_personS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP9zc_personS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.b
  store ptr %i.l, ptr %i.m, align 8, !tbaa !362
  br label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIP9zc_personS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.b
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.0.insert.ext, i64 26214) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !331
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = sdiv exact i64 %i.s, 40
  %i.u = icmp ult i64 %i.t, %.sroa.speculated
  br i1 %i.u, label %_ZNSt6vectorI9zc_personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit.preheader

_ZNSt6vectorI9zc_personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %bb.c
  %i.v = mul nuw nsw i64 %.sroa.speculated, 40
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #29 ; 3 uses
  %.not.i8.i = icmp eq ptr %i.l, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI9zc_personSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI9zc_personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.s) #30
  br label %_ZNSt12_Vector_baseI9zc_personSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI9zc_personSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorI9zc_personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.w, ptr %1, align 8, !tbaa !330
  store ptr %i.w, ptr %i.m, align 8, !tbaa !362
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.sroa.speculated
  store ptr %i.x, ptr %i.o, align 8, !tbaa !331
  br label %_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit.preheader

_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit.preheader: ; preds = %bb.c, %_ZNSt12_Vector_baseI9zc_personSaIS0_EE13_M_deallocateEPS0_m.exit.i
  br label %_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit

_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit:   ; preds = %_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit.preheader, %bb.o
  %.033 = phi i64 [ %i.ct, %bb.o ], [ 0, %_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit.preheader ]
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !362  ; 5 uses
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !331
  %.not.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, i8 0, i64 40, i1 false)
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !362
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  store ptr %i.ab, ptr %i.m, align 8, !tbaa !362
  br label %_ZNSt6vectorI9zc_personSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

bb.f:                                             ; preds = %_ZNSt6vectorI9zc_personSaIS0_EE7reserveEm.exit
  %i.ac = load ptr, ptr %1, align 8, !tbaa !330   ; 5 uses
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.g, label %_ZNKSt6vectorI9zc_personSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #32
  unreachable

_ZNKSt6vectorI9zc_personSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ah = sdiv exact i64 %i.af, 40                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 230584300921369395)
  %i.al = select i1 %i.aj, i64 230584300921369395, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = mul nuw nsw i64 %i.al, 40
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #29 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i8 0, i64 40, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI9zc_personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI9zc_personSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.an, %_ZNKSt6vectorI9zc_personSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.ac, %_ZNKSt6vectorI9zc_personSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !365, !alias.scope !1183
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI9zc_personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !37

_ZNSt6vectorI9zc_personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI9zc_personSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %_ZNKSt6vectorI9zc_personSaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i22.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorI9zc_personSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI9zc_personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #30
  br label %_ZNSt6vectorI9zc_personSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9zc_personSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorI9zc_personSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i
  store ptr %i.an, ptr %1, align 8, !tbaa !330
  store ptr %i.ar, ptr %i.m, align 8, !tbaa !362
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.al
  store ptr %i.as, ptr %i.o, align 8, !tbaa !331
  br label %_ZNSt6vectorI9zc_personSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

_ZNSt6vectorI9zc_personSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorI9zc_personSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.at = phi ptr [ %i.ab, %bb.e ], [ %i.ar, %_ZNSt6vectorI9zc_personSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 5 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -32
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -16
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -8
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !347, !nonnull !272, !align !273 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !320
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !319 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp ugt i64 %i.bd, 3
  br i1 %i.be, label %bb.i, label %bb.m, !prof !257

bb.i:                                             ; preds = %_ZNSt6vectorI9zc_personSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %i.bf = getelementptr inbounds i8, ptr %i.at, i64 -40
  %i.bg = load i32, ptr %i.ba, align 1
  store i32 %i.bg, ptr %i.bf, align 4
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !319
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store ptr %i.bi, ptr %i.ax, align 8, !tbaa !319
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !347, !nonnull !272, !align !273 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !320
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !319 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorI6WeaponSaIS0_EE7reserveEm:bb.a
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseI6WeaponSaIS0_EE13_M_deallocateEPS0_m.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP6WeaponEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIP6WeaponEEvT_S4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyI6WeaponEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyI6WeaponEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !95 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyI6WeaponEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !94
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #30
  br label %_ZSt8_DestroyI6WeaponEvPT_.exit.i

_ZSt8_DestroyI6WeaponEvPT_.exit.i:                ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIP6WeaponEEvT_S4_.exit, label %.lr.ph.i, !llvm.loop !34

_ZNSt12_Destroy_auxILb0EE9__destroyIP6WeaponEEvT_S4_.exit: ; preds = %_ZSt8_DestroyI6WeaponEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6WeaponSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !290    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI6WeaponSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #32
  unreachable

_ZNKSt6vectorI6WeaponSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store ptr %i.r, ptr %i.q, align 8, !tbaa !92
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !93
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI6WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI6WeaponSaIS0_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aI6WeaponS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aI6WeaponS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorI6WeaponSaIS0_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aI6WeaponS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorI6WeaponSaIS0_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.t, ptr %.012.i.i.i, align 8, !tbaa !92, !alias.scope !1207, !noalias !1208
  %i.u = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !95, !alias.scope !1208, !noalias !1207 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !93, !alias.scope !1208, !noalias !1207 ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false), !alias.scope !1209
  br label %_ZSt19__relocate_object_aI6WeaponS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.u, ptr %.012.i.i.i, align 8, !tbaa !95, !alias.scope !1207, !noalias !1208
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !94, !alias.scope !1208, !noalias !1207
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !94, !alias.scope !1207, !noalias !1208
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !93, !alias.scope !1208, !noalias !1207
  br label %_ZSt19__relocate_object_aI6WeaponS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aI6WeaponS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.ac = phi i64 [ %i.y, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !93, !alias.scope !1207, !noalias !1208
  store ptr %i.v, ptr %.0911.i.i.i, align 8, !tbaa !95, !alias.scope !1208, !noalias !1207
  store i64 0, ptr %i.ad, align 8, !tbaa !93, !alias.scope !1208, !noalias !1207
  store i8 0, ptr %i.v, align 8, !tbaa !94, !alias.scope !1208, !noalias !1207
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !377, !alias.scope !1208, !noalias !1207
  store i16 %i.ah, ptr %i.af, align 8, !tbaa !377, !alias.scope !1207, !noalias !1208
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorI6WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !38

_ZNSt6vectorI6WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt19__relocate_object_aI6WeaponS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorI6WeaponSaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorI6WeaponSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.aj, %_ZSt19__relocate_object_aI6WeaponS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorI6WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit25, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorI6WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %_ZSt19__relocate_object_aI6WeaponS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i17 = phi ptr [ %i.bb, %_ZSt19__relocate_object_aI6WeaponS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.ak, %_ZNSt6vectorI6WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 6 uses
  %.0911.i.i.i18 = phi ptr [ %i.ba, %_ZSt19__relocate_object_aI6WeaponS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorI6WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i17, align 8, !tbaa !92, !alias.scope !1210, !noalias !1211
  %i.am = load ptr, ptr %.0911.i.i.i18, align 8, !tbaa !95, !alias.scope !1211, !noalias !1210 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19

bb.d:                                             ; preds = %.lr.ph.i.i.i16
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !93, !alias.scope !1211, !noalias !1210 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !1212
  br label %_ZSt19__relocate_object_aI6WeaponS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19: ; preds = %.lr.ph.i.i.i16
  store ptr %i.am, ptr %.012.i.i.i17, align 8, !tbaa !95, !alias.scope !1210, !noalias !1211
  %i.at = load i64, ptr %i.an, align 8, !tbaa !94, !alias.scope !1211, !noalias !1210
  store i64 %i.at, ptr %i.al, align 8, !tbaa !94, !alias.scope !1210, !noalias !1211
  %.phi.trans.insert.i.i.i.i20 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %.pre.i.i.i.i21 = load i64, ptr %.phi.trans.insert.i.i.i.i20, align 8, !tbaa !93, !alias.scope !1211, !noalias !1210
  br label %_ZSt19__relocate_object_aI6WeaponS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aI6WeaponS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19, %bb.d
  %i.au = phi i64 [ %i.aq, %bb.d ], [ %.pre.i.i.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i19 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !93, !alias.scope !1210, !noalias !1211
  store ptr %i.an, ptr %.0911.i.i.i18, align 8, !tbaa !95, !alias.scope !1211, !noalias !1210
  store i64 0, ptr %i.av, align 8, !tbaa !93, !alias.scope !1211, !noalias !1210
  store i8 0, ptr %i.an, align 8, !tbaa !94, !alias.scope !1211, !noalias !1210
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 32
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !377, !alias.scope !1211, !noalias !1210
  store i16 %i.az, ptr %i.ax, align 8, !tbaa !377, !alias.scope !1210, !noalias !1211
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 40 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 40 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorI6WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit25, label %.lr.ph.i.i.i16, !llvm.loop !38

_ZNSt6vectorI6WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit25: ; preds = %_ZSt19__relocate_object_aI6WeaponS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorI6WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.ak, %_ZNSt6vectorI6WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bb, %_ZSt19__relocate_object_aI6WeaponS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseI6WeaponSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI6WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit25
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !333
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #30
  br label %_ZNSt12_Vector_baseI6WeaponSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI6WeaponSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI6WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit25, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !290
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !289
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !333
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorI6WeaponSaIS1_EELb1EE8_S_do_itERS3_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !306    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !306  ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %1 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %1, 230584300921369395
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorI6WeaponSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseI6WeaponSaIS0_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorI6WeaponSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorI6WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorI6WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread: ; preds = %_ZNSt6vectorI6WeaponSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !333
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !333
  br label %_ZSt8_DestroyIP6WeaponS0_EvT_S2_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorI6WeaponSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29
          to label %.lr.ph.i.i.i.i.i.i unwind label %_ZNSt12_Vector_baseI6WeaponSaIS0_EED2Ev.exit.i ; 3 uses

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %_ZSt10_ConstructI6WeaponJS0_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt10_ConstructI6WeaponJS0_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.preheader.i.i ] ; 6 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructI6WeaponJS0_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.preheader.i.i ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !92
  %i.m = load ptr, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !95 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !93   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZSt10_ConstructI6WeaponJS0_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.m, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !95
  %i.t = load i64, ptr %i.n, align 8, !tbaa !94
  store i64 %i.t, ptr %i.l, align 8, !tbaa !94
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !93
  br label %_ZSt10_ConstructI6WeaponJS0_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructI6WeaponJS0_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.c
  %i.u = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.q, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !93
  store ptr %i.n, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !95
  store i64 0, ptr %i.v, align 8, !tbaa !93
  store i8 0, ptr %i.n, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 32
  %i.z = load i16, ptr %i.y, align 8, !tbaa !377
  store i16 %i.z, ptr %i.x, align 8, !tbaa !377
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.c
  br i1 %i.ac, label %_ZNSt6vectorI6WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1213

_ZNSt12_Vector_baseI6WeaponSaIS0_EED2Ev.exit.i:   ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.ad, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %.09) #28 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorI6WeaponSaIS0_EED2Ev.exit unwind label %bb.e

_ZNSt6vectorI6WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit: ; preds = %_ZSt10_ConstructI6WeaponJS0_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !290   ; 4 uses
  %.pre18 = load ptr, ptr %i.b, align 8, !tbaa !289 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !333 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !290
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !289
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !333
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre18
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP6WeaponS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorI6WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit, %_ZSt8_DestroyI6WeaponEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyI6WeaponEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorI6WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ] ; 3 uses
  %i.ai = load ptr, ptr %.05.i.i.i, align 8, !tbaa !95 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZSt8_DestroyI6WeaponEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !94
  %i.am = add i64 %i.al, 1
  tail call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #30
  br label %_ZSt8_DestroyI6WeaponEvPT_.exit.i.i.i

_ZSt8_DestroyI6WeaponEvPT_.exit.i.i.i:            ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.an, %.pre18
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIP6WeaponS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !34

_ZSt8_DestroyIP6WeaponS0_EvT_S2_RSaIT0_E.exit.i:  ; preds = %_ZSt8_DestroyI6WeaponEvPT_.exit.i.i.i, %_ZNSt6vectorI6WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread, %_ZNSt6vectorI6WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit
  %i.ao = phi ptr [ %i.j, %_ZNSt6vectorI6WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread ], [ %i.ah, %_ZNSt6vectorI6WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ], [ %i.ah, %_ZSt8_DestroyI6WeaponEvPT_.exit.i.i.i ]
  %i.ap = phi ptr [ %i.a, %_ZNSt6vectorI6WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread ], [ %.pre, %_ZNSt6vectorI6WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ], [ %.pre, %_ZSt8_DestroyI6WeaponEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI6WeaponSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIP6WeaponS0_EvT_S2_RSaIT0_E.exit.i
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.as) #30
  br label %_ZNSt6vectorI6WeaponSaIS0_EED2Ev.exit

_ZNSt6vectorI6WeaponSaIS0_EED2Ev.exit:            ; preds = %bb.d, %_ZSt8_DestroyIP6WeaponS0_EvT_S2_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseI6WeaponSaIS0_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseI6WeaponSaIS0_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIP6WeaponS0_EvT_S2_RSaIT0_E.exit.i ], [ true, %bb.d ]
  ret i1 %.0

bb.e:                                             ; preds = %_ZNSt12_Vector_baseI6WeaponSaIS0_EED2Ev.exit.i
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #31
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6WeaponSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !290    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP6WeaponS0_EvT_S2_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI6WeaponEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyI6WeaponEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !95 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyI6WeaponEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !94
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #30
  br label %_ZSt8_DestroyI6WeaponEvPT_.exit.i.i

_ZSt8_DestroyI6WeaponEvPT_.exit.i.i:              ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP6WeaponS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !34

_ZSt8_DestroyIP6WeaponS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI6WeaponEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !290
  br label %_ZSt8_DestroyIP6WeaponS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP6WeaponS0_EvT_S2_RSaIT0_E.exit:    ; preds = %_ZSt8_DestroyIP6WeaponS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIP6WeaponS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI6WeaponSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIP6WeaponS0_EvT_S2_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !333
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #30
  br label %_ZNSt12_Vector_baseI6WeaponSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI6WeaponSaIS0_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIP6WeaponS0_EvT_S2_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN3ylt10reflection8internal24object_tuple_view_helperIR7MonsterLm9EE10tuple_viewIZN11struct_pack6detail8unpackerINS8_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ES3_EENS7_8err_codeERT3_EUlDpOT_E_EEDcS4_OT_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load ptr, ptr %1, align 8, !tbaa !369    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 8 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !347, !nonnull !272, !align !273 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !320
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !319  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
end_hunk_2
begin_hunk_3_@_ZSt12construct_atI7MonsterJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_:bb.a
  store i64 %i.m, ptr %i.n, align 8, !tbaa !93
  store ptr %i.e, ptr %i.b, align 8, !tbaa !95
  store i64 0, ptr %i.l, align 8, !tbaa !93
  store i8 0, ptr %i.e, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !92
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !95   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load i64, ptr %i.u, align 8, !tbaa !93   ; 2 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.r, ptr %i.o, align 8, !tbaa !95
  %i.y = load i64, ptr %i.s, align 8, !tbaa !94
  store i64 %i.y, ptr %i.q, align 8, !tbaa !94
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !93
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !93
  store ptr %i.s, ptr %i.p, align 8, !tbaa !95
  store i64 0, ptr %i.z, align 8, !tbaa !93
  store i8 0, ptr %i.s, align 8, !tbaa !94
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !387
  store i8 %i.ae, ptr %i.ac, align 8, !tbaa !387
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !306
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !tbaa !306
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !333
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !333
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !92
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !95 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !93 ; 2 uses
  %i.at = icmp ult i64 %i.as, 16
  tail call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.au, i1 false)
  br label %_ZN7MonsterC2EOS_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !95
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !94
  store i64 %i.av, ptr %i.an, align 8, !tbaa !94
  br label %_ZN7MonsterC2EOS_.exit

_ZN7MonsterC2EOS_.exit:                           ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !93
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !93
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !95
  store i64 0, ptr %i.aw, align 8, !tbaa !93
  store i8 0, ptr %i.ap, align 8, !tbaa !94
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !377
  store i16 %i.bb, ptr %i.az, align 8, !tbaa !377
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !388
  store <2 x ptr> %i.be, ptr %i.bc, align 8, !tbaa !388
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !332
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !332
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7MonsterSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !226    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775712
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI7MonsterSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #32
  unreachable

_ZNKSt6vectorI7MonsterSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 176                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 52405522936674862)
  %i.l = select i1 %i.j, i64 52405522936674862, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 176
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.q, i8 0, i64 152, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.s, ptr %i.r, align 8, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr %i.u, ptr %i.t, align 8, !tbaa !92
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  store ptr %i.x, ptr %i.w, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI7MonsterSaIS0_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorI7MonsterSaIS0_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorI7MonsterSaIS0_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %i.z = tail call noundef ptr @_ZSt12construct_atI7MonsterJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_(ptr noundef nonnull %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.0911.i.i.i) #28 ; 0 uses
  tail call void @_ZN7MonsterD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.0911.i.i.i) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 176 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !39

_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorI7MonsterSaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorI7MonsterSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %.lr.ph.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 176 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.af, %.lr.ph.i.i.i16 ], [ %i.ac, %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i18 = phi ptr [ %i.ae, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  %i.ad = tail call noundef ptr @_ZSt12construct_atI7MonsterJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_(ptr noundef nonnull %.012.i.i.i17, ptr noundef nonnull align 8 dereferenceable(176) %.0911.i.i.i18) #28 ; 0 uses
  tail call void @_ZN7MonsterD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.0911.i.i.i18) #28
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 176 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 176 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.ae, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !39

_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.ac, %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.af, %.lr.ph.i.i.i16 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseI7MonsterSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !241
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aj) #30
  br label %_ZNSt12_Vector_baseI7MonsterSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI7MonsterSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !226
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8, !tbaa !240
  %i.ak = getelementptr inbounds nuw [176 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !241
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorI7MonsterSaIS1_EELb1EE8_S_do_itERS3_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !242    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !242  ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %1 = sdiv exact i64 %i.f, 176
  %i.g = icmp ugt i64 %1, 52405522936674862
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorI7MonsterSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
          to label %.noexc.i unwind label %.thread

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorI7MonsterSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseI7MonsterSaIS0_EE11_M_allocateEm.exit.i.i, label %_ZNSt15__new_allocatorI7MonsterE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorI7MonsterE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNSt6vectorI7MonsterSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29
          to label %_ZNSt12_Vector_baseI7MonsterSaIS0_EE11_M_allocateEm.exit.i.i unwind label %.thread

_ZNSt12_Vector_baseI7MonsterSaIS0_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorI7MonsterE8allocateEmPKv.exit.i.i.i, %_ZNSt6vectorI7MonsterSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.i = phi ptr [ null, %_ZNSt6vectorI7MonsterSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i ], [ %i.h, %_ZNSt15__new_allocatorI7MonsterE8allocateEmPKv.exit.i.i.i ] ; 5 uses
  %i.j = invoke noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP7MonsterSt6vectorIS3_SaIS3_EEEEES4_ET0_T_SB_SA_(ptr %i.a, ptr %i.c, ptr noundef %i.i)
          to label %_ZNSt6vectorI7MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit unwind label %bb.c

.thread:                                          ; preds = %bb.b, %_ZNSt15__new_allocatorI7MonsterE8allocateEmPKv.exit.i.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.c:                                             ; preds = %_ZNSt12_Vector_baseI7MonsterSaIS0_EE11_M_allocateEm.exit.i.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i7.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.f) #30
  br label %.body

_ZNSt6vectorI7MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit: ; preds = %_ZNSt12_Vector_baseI7MonsterSaIS0_EE11_M_allocateEm.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = load ptr, ptr %0, align 8, !tbaa !226    ; 5 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !240  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !241
  store ptr %i.i, ptr %0, align 8, !tbaa !226
  store ptr %i.j, ptr %i.b, align 8, !tbaa !240
  store ptr %i.k, ptr %i.n, align 8, !tbaa !241
  %.not4.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP7MonsterS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorI7MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.l, %_ZNSt6vectorI7MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ] ; 2 uses
  tail call void @_ZN7MonsterD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.05.i.i.i) #28
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.p, %i.m
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIP7MonsterS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !32

_ZSt8_DestroyIP7MonsterS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNSt6vectorI7MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI7MonsterSaIS0_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIP7MonsterS0_EvT_S2_RSaIT0_E.exit.i
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.s) #30
  br label %_ZNSt6vectorI7MonsterSaIS0_EED2Ev.exit

.body:                                            ; preds = %.thread, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.c ], [ %lpad.thr_comm.split-lp, %bb.d ], [ %lpad.thr_comm, %.thread ]
  %.09 = extractvalue { ptr, i32 } %.pn, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %.09) #28 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorI7MonsterSaIS0_EED2Ev.exit unwind label %bb.f

_ZNSt6vectorI7MonsterSaIS0_EED2Ev.exit:           ; preds = %bb.e, %_ZSt8_DestroyIP7MonsterS0_EvT_S2_RSaIT0_E.exit.i, %.body
  %.0 = phi i1 [ false, %.body ], [ true, %_ZSt8_DestroyIP7MonsterS0_EvT_S2_RSaIT0_E.exit.i ], [ true, %bb.e ]
  ret i1 %.0

bb.f:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIP7MonsterSt6vectorIS3_SaIS3_EEEEES4_ET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructI7MonsterJS0_EEvPT_DpOT0_.exit
  %.08 = phi ptr [ %i.bk, %_ZSt10_ConstructI7MonsterJS0_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 17 uses
  %.sroa.04.07 = phi ptr [ %i.bj, %_ZSt10_ConstructI7MonsterJS0_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 20 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.08, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.04.07, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.08, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.08, i64 32 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !92
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !95   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 32 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !93   ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph
  store ptr %i.e, ptr %i.b, align 8, !tbaa !95
  %i.l = load i64, ptr %i.f, align 8, !tbaa !94
  store i64 %i.l, ptr %i.d, align 8, !tbaa !94
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !93
  %i.o = getelementptr inbounds nuw i8, ptr %.08, i64 24
  store i64 %i.n, ptr %i.o, align 8, !tbaa !93
  store ptr %i.f, ptr %i.c, align 8, !tbaa !95
  store i64 0, ptr %i.m, align 8, !tbaa !93
  store i8 0, ptr %i.f, align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %.08, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08, i64 64 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !92
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !95   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 64 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !93   ; 2 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.s, ptr %i.p, align 8, !tbaa !95
  %i.z = load i64, ptr %i.t, align 8, !tbaa !94
  store i64 %i.z, ptr %i.r, align 8, !tbaa !94
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 56 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !93
  %i.ac = getelementptr inbounds nuw i8, ptr %.08, i64 56
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !93
  store ptr %i.t, ptr %i.q, align 8, !tbaa !95
  store i64 0, ptr %i.aa, align 8, !tbaa !93
  store i8 0, ptr %i.t, align 8, !tbaa !94
  %i.ad = getelementptr inbounds nuw i8, ptr %.08, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 80
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !387
  store i8 %i.af, ptr %i.ad, align 8, !tbaa !387
  %i.ag = getelementptr inbounds nuw i8, ptr %.08, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 88 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !306
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !306
  %i.aj = getelementptr inbounds nuw i8, ptr %.08, i64 104
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !333
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !333
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.08, i64 112 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 112 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.08, i64 128 ; 3 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !92
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !95 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 128 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 120
  %i.at = load i64, ptr %i.as, align 8, !tbaa !93 ; 2 uses
  %i.au = icmp ult i64 %i.at, 16
  tail call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZSt10_ConstructI7MonsterJS0_EEvPT_DpOT0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i.i
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !95
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !94
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !94
  br label %_ZSt10_ConstructI7MonsterJS0_EEvPT_DpOT0_.exit

_ZSt10_ConstructI7MonsterJS0_EEvPT_DpOT0_.exit:   ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 120 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !93
end_hunk_3
begin_hunk_4_@_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt6vectorI9zc_WeaponSaIS6_EEEENS_8err_codeERT3_:bb.a
bb.e:                                             ; preds = %_ZNSt6vectorI9zc_WeaponSaIS0_EE7reserveEm.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !393
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  store ptr %i.x, ptr %i.i, align 8, !tbaa !393
  br label %_ZNSt6vectorI9zc_WeaponSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

bb.f:                                             ; preds = %_ZNSt6vectorI9zc_WeaponSaIS0_EE7reserveEm.exit
  %i.y = load ptr, ptr %1, align 8, !tbaa !340    ; 5 uses
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 4 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.g, label %_ZNKSt6vectorI9zc_WeaponSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #32
  unreachable

_ZNKSt6vectorI9zc_WeaponSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ad = sdiv exact i64 %i.ab, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 384307168202282325)
  %i.ah = select i1 %i.af, i64 384307168202282325, i64 %i.ag ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = mul nuw nsw i64 %i.ah, 24
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #29 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.y, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI9zc_WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI9zc_WeaponSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %i.aj, %_ZNKSt6vectorI9zc_WeaponSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.y, %_ZNKSt6vectorI9zc_WeaponSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !395, !alias.scope !1245
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI9zc_WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !41

_ZNSt6vectorI9zc_WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI9zc_WeaponSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aj, %_ZNKSt6vectorI9zc_WeaponSaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i22.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorI9zc_WeaponSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI9zc_WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ab) #30
  br label %_ZNSt6vectorI9zc_WeaponSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9zc_WeaponSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorI9zc_WeaponSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i
  store ptr %i.aj, ptr %1, align 8, !tbaa !340
  store ptr %i.an, ptr %i.i, align 8, !tbaa !393
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.ao, ptr %i.k, align 8, !tbaa !341
  br label %_ZNSt6vectorI9zc_WeaponSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

_ZNSt6vectorI9zc_WeaponSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorI9zc_WeaponSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.ap = phi ptr [ %i.x, %bb.e ], [ %i.an, %_ZNSt6vectorI9zc_WeaponSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -24
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !347, !nonnull !272, !align !273 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !320 ; 2 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !319 ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i.i16, label %bb.l, label %bb.i, !prof !169

bb.i:                                             ; preds = %_ZNSt6vectorI9zc_WeaponSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %.0.copyload.i.i.i.i.i = load i8, ptr %i.av, align 1 ; 2 uses
  %.0.insert.ext.i.i.i.i.i = zext i8 %.0.copyload.i.i.i.i.i to i64 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 5 uses
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !319
  %i.ay = icmp eq i8 %.0.copyload.i.i.i.i.i, 0
  br i1 %i.ay, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt17basic_string_viewIcSt11char_traitsIcEEEENS_8err_codeERT3_.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.aw, %i.az
  %i.bb = icmp ult i64 %i.ba, %.0.insert.ext.i.i.i.i.i
  br i1 %i.bb, label %bb.l, label %bb.k, !prof !169

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0.insert.ext.i.i.i.i.i
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !319
  store i64 %.0.insert.ext.i.i.i.i.i, ptr %i.aq, align 8, !tbaa !249
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ap, i64 -16
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !363
  %.pre.i.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !320
  %.pre7.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !319
  %.pre8.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  br label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt17basic_string_viewIcSt11char_traitsIcEEEENS_8err_codeERT3_.exit.i.i.i.i

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt17basic_string_viewIcSt11char_traitsIcEEEENS_8err_codeERT3_.exit.i.i.i.i: ; preds = %bb.k, %bb.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre8.i.i.i.i, %bb.k ], [ %i.aw, %bb.i ]
  %i.bd = phi ptr [ %.pre7.i.i.i.i, %bb.k ], [ %i.ax, %bb.i ] ; 2 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %.pre-phi.i.i.i.i, %i.be
  %i.bg = icmp ugt i64 %i.bf, 1
  br i1 %i.bg, label %bb.n, label %bb.l, !prof !257

bb.l:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt17basic_string_viewIcSt11char_traitsIcEEEENS_8err_codeERT3_.exit.i.i.i.i, %_ZNSt6vectorI9zc_WeaponSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit, %bb.j
  %i.bh = load ptr, ptr %i.k, align 8, !tbaa !341
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !393
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt6vectorI9zc_WeaponSaIS0_EE13shrink_to_fitEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorI9zc_WeaponSaIS1_EELb1EE8_S_do_itERS3_(ptr noundef nonnull align 8 dereferenceable(24) %1) #28 ; 0 uses
  br label %_ZNSt6vectorI9zc_WeaponSaIS0_EE13shrink_to_fitEv.exit

bb.n:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt17basic_string_viewIcSt11char_traitsIcEEEENS_8err_codeERT3_.exit.i.i.i.i
  %i.bl = load i16, ptr %i.bd, align 1
  store i16 %i.bl, ptr %i.ar, align 2
  %i.bm = load ptr, ptr %i.as, align 8, !tbaa !319
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  store ptr %i.bn, ptr %i.as, align 8, !tbaa !319
  %i.bo = add nuw nsw i64 %.031, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bo, %.0.insert.ext
  br i1 %exitcond.not, label %_ZNSt6vectorI9zc_WeaponSaIS0_EE13shrink_to_fitEv.exit, label %_ZNSt6vectorI9zc_WeaponSaIS0_EE7reserveEm.exit, !llvm.loop !1244

_ZNSt6vectorI9zc_WeaponSaIS0_EE13shrink_to_fitEv.exit: ; preds = %bb.n, %bb.a, %bb.b, %bb.m, %bb.l
  %.sroa.024.1 = phi i32 [ 0, %bb.b ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.a ], [ 0, %bb.n ]
  ret i32 %.sroa.024.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0E9zc_WeaponEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(18) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !347, !nonnull !272, !align !273 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !320  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !319  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %_ZN3ylt10reflection13visit_membersIR9zc_WeaponZN11struct_pack6detail8unpackerINS5_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ES2_EENS4_8err_codeERT3_EUlDpOT_E_Lm2EEEDcOT_OT0_.exit, label %bb.b, !prof !169

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i.i.i.i = load i8, ptr %i.f, align 1 ; 2 uses
  %.0.insert.ext.i.i.i.i = zext i8 %.0.copyload.i.i.i.i to i64 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 5 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !319
  %i.i = icmp eq i8 %.0.copyload.i.i.i.i, 0
  br i1 %i.i, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt17basic_string_viewIcSt11char_traitsIcEEEENS_8err_codeERT3_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.g, %i.j
  %i.l = icmp ult i64 %i.k, %.0.insert.ext.i.i.i.i
  br i1 %i.l, label %_ZN3ylt10reflection13visit_membersIR9zc_WeaponZN11struct_pack6detail8unpackerINS5_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ES2_EENS4_8err_codeERT3_EUlDpOT_E_Lm2EEEDcOT_OT0_.exit, label %bb.d, !prof !169

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.0.insert.ext.i.i.i.i
  store ptr %i.m, ptr %i.c, align 8, !tbaa !319
  store i64 %.0.insert.ext.i.i.i.i, ptr %1, align 8, !tbaa !249
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !363
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !320
  %.pre7.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !319
  %.pre8.i.i.i = ptrtoint ptr %.pre.i.i.i to i64
  br label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt17basic_string_viewIcSt11char_traitsIcEEEENS_8err_codeERT3_.exit.i.i.i

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt17basic_string_viewIcSt11char_traitsIcEEEENS_8err_codeERT3_.exit.i.i.i: ; preds = %bb.d, %bb.b
  %.pre-phi.i.i.i = phi i64 [ %.pre8.i.i.i, %bb.d ], [ %i.g, %bb.b ]
  %i.n = phi ptr [ %.pre7.i.i.i, %bb.d ], [ %i.h, %bb.b ] ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %.pre-phi.i.i.i, %i.o
  %i.q = icmp ugt i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %_ZN3ylt10reflection13visit_membersIR9zc_WeaponZN11struct_pack6detail8unpackerINS5_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ES2_EENS4_8err_codeERT3_EUlDpOT_E_Lm2EEEDcOT_OT0_.exit, !prof !257

bb.e:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt17basic_string_viewIcSt11char_traitsIcEEEENS_8err_codeERT3_.exit.i.i.i
  %i.r = load i16, ptr %i.n, align 1
  store i16 %i.r, ptr %i.a, align 8
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !319
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store ptr %i.t, ptr %i.c, align 8, !tbaa !319
  br label %_ZN3ylt10reflection13visit_membersIR9zc_WeaponZN11struct_pack6detail8unpackerINS5_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ES2_EENS4_8err_codeERT3_EUlDpOT_E_Lm2EEEDcOT_OT0_.exit

_ZN3ylt10reflection13visit_membersIR9zc_WeaponZN11struct_pack6detail8unpackerINS5_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ES2_EENS4_8err_codeERT3_EUlDpOT_E_Lm2EEEDcOT_OT0_.exit: ; preds = %bb.a, %bb.c, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt17basic_string_viewIcSt11char_traitsIcEEEENS_8err_codeERT3_.exit.i.i.i, %bb.e
  %.sroa.0.0.i.i.i = phi i32 [ 1, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt17basic_string_viewIcSt11char_traitsIcEEEENS_8err_codeERT3_.exit.i.i.i ], [ 0, %bb.e ], [ 1, %bb.a ], [ 1, %bb.c ]
  ret i32 %.sroa.0.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorI9zc_WeaponSaIS1_EELb1EE8_S_do_itERS3_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !389    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !389  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %reass.sub.fr.i = freeze i64 %i.f               ; 5 uses
  %1 = sdiv exact i64 %reass.sub.fr.i, 24
  %i.g = icmp ugt i64 %1, 384307168202282325
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorI9zc_WeaponSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseI9zc_WeaponSaIS0_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorI9zc_WeaponSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseI9zc_WeaponSaIS0_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseI9zc_WeaponSaIS0_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorI9zc_WeaponSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %reass.sub.fr.i
  br label %_ZNSt6vectorI9zc_WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorI9zc_WeaponSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i) #29
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseI9zc_WeaponSaIS0_EED2Ev.exit.i ; 4 uses

.noexc5.i:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %reass.sub.fr.i
  %i.k = add i64 %reass.sub.fr.i, -24             ; 2 uses
  %i.l = urem i64 %i.k, 24
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = add i64 %i.m, 24                         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.a, i64 %i.n, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.i, i64 %i.n
  br label %_ZNSt6vectorI9zc_WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit

_ZNSt12_Vector_baseI9zc_WeaponSaIS0_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.o, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %.09) #28 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorI9zc_WeaponSaIS0_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorI9zc_WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit: ; preds = %.noexc5.i, %_ZNSt12_Vector_baseI9zc_WeaponSaIS0_EE11_M_allocateEm.exit.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.h, %_ZNSt12_Vector_baseI9zc_WeaponSaIS0_EE11_M_allocateEm.exit.thread.i.i ], [ %i.j, %.noexc5.i ]
  %.sroa.012.0 = phi ptr [ null, %_ZNSt12_Vector_baseI9zc_WeaponSaIS0_EE11_M_allocateEm.exit.thread.i.i ], [ %i.i, %.noexc5.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI9zc_WeaponSaIS0_EE11_M_allocateEm.exit.thread.i.i ], [ %scevgep.i.i, %.noexc5.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !341
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !340
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !393
  store ptr %.sroa.12.0, ptr %i.q, align 8, !tbaa !341
  %.not.i.i.i10 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorI9zc_WeaponSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI9zc_WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.t) #30
  br label %_ZNSt6vectorI9zc_WeaponSaIS0_EED2Ev.exit

_ZNSt6vectorI9zc_WeaponSaIS0_EED2Ev.exit:         ; preds = %bb.c, %_ZNSt6vectorI9zc_WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit, %_ZNSt12_Vector_baseI9zc_WeaponSaIS0_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseI9zc_WeaponSaIS0_EED2Ev.exit.i ], [ true, %_ZNSt6vectorI9zc_WeaponSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseI9zc_WeaponSaIS0_EED2Ev.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #31
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorI10zc_MonsterSaIS1_EELb1EE8_S_do_itERS3_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !390    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !390  ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %1 = sdiv exact i64 %i.f, 120
  %i.g = icmp ugt i64 %1, 76861433640456465
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorI10zc_MonsterSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseI10zc_MonsterSaIS0_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorI10zc_MonsterSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10zc_MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorI10zc_MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread: ; preds = %_ZNSt6vectorI10zc_MonsterSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !342
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !342
  br label %_ZSt8_DestroyIP10zc_MonsterS0_EvT_S2_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorI10zc_MonsterSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29
          to label %.lr.ph.i.i.i.i.i.i unwind label %_ZNSt12_Vector_baseI10zc_MonsterSaIS0_EED2Ev.exit.i ; 3 uses

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.preheader.i.i ] ; 5 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.preheader.i.i ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.04.07.i.i.i.i.i.i, i64 49, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !389
  store <2 x ptr> %i.n, ptr %i.l, align 8, !tbaa !389
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !341
  store ptr %i.q, ptr %i.o, align 8, !tbaa !341
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 120 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 120 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.c
  br i1 %i.v, label %_ZNSt6vectorI10zc_MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1246

_ZNSt12_Vector_baseI10zc_MonsterSaIS0_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.w, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.09) #28 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorI10zc_MonsterSaIS0_EED2Ev.exit unwind label %bb.e

_ZNSt6vectorI10zc_MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !336   ; 4 uses
  %.pre18 = load ptr, ptr %i.b, align 8, !tbaa !337 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !342 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !336
  store ptr %i.u, ptr %i.b, align 8, !tbaa !337
  store ptr %i.y, ptr %i.z, align 8, !tbaa !342
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre18
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP10zc_MonsterS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorI10zc_MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit, %_ZSt8_DestroyI10zc_MonsterEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyI10zc_MonsterEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorI10zc_MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !340 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI10zc_MonsterEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !341
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #30
  br label %_ZSt8_DestroyI10zc_MonsterEvPT_.exit.i.i.i

_ZSt8_DestroyI10zc_MonsterEvPT_.exit.i.i.i:       ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 120 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.ai, %.pre18
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIP10zc_MonsterS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !35

_ZSt8_DestroyIP10zc_MonsterS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyI10zc_MonsterEvPT_.exit.i.i.i, %_ZNSt6vectorI10zc_MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread, %_ZNSt6vectorI10zc_MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit
  %i.aj = phi ptr [ %i.j, %_ZNSt6vectorI10zc_MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread ], [ %i.aa, %_ZNSt6vectorI10zc_MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ], [ %i.aa, %_ZSt8_DestroyI10zc_MonsterEvPT_.exit.i.i.i ]
  %i.ak = phi ptr [ %i.a, %_ZNSt6vectorI10zc_MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit.thread ], [ %.pre, %_ZNSt6vectorI10zc_MonsterSaIS0_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEvEET_SA_RKS1_.exit ], [ %.pre, %_ZSt8_DestroyI10zc_MonsterEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI10zc_MonsterSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIP10zc_MonsterS0_EvT_S2_RSaIT0_E.exit.i
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #30
  br label %_ZNSt6vectorI10zc_MonsterSaIS0_EED2Ev.exit

_ZNSt6vectorI10zc_MonsterSaIS0_EED2Ev.exit:       ; preds = %bb.d, %_ZSt8_DestroyIP10zc_MonsterS0_EvT_S2_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseI10zc_MonsterSaIS0_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseI10zc_MonsterSaIS0_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIP10zc_MonsterS0_EvT_S2_RSaIT0_E.exit.i ], [ true, %bb.d ]
  ret i1 %.0

bb.e:                                             ; preds = %_ZNSt12_Vector_baseI10zc_MonsterSaIS0_EED2Ev.exit.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt6vectorI10zc_MonsterSaIS6_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.307, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347, !nonnull !272, !align !273 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !320
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !319  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.critedge, label %_ZNSt6vectorI10zc_MonsterSaIS0_EE13shrink_to_fitEv.exit, !prof !257

.critedge:                                        ; preds = %bb.a
  %.0.copyload = load i16, ptr %i.e, align 1      ; 2 uses
  %.0.insert.ext = zext i16 %.0.copyload to i64   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store ptr %i.j, ptr %i.b, align 8, !tbaa !319
  %i.k = icmp eq i16 %.0.copyload, 0
  br i1 %i.k, label %_ZNSt6vectorI10zc_MonsterSaIS0_EE13shrink_to_fitEv.exit, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.l = load ptr, ptr %1, align 8, !tbaa !336    ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !337  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i, label %bb.d, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyI10zc_MonsterEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyI10zc_MonsterEvPT_.exit.i.i.i.i ], [ %i.l, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !340  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI10zc_MonsterEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !341
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #30
  br label %_ZSt8_DestroyI10zc_MonsterEvPT_.exit.i.i.i.i

_ZSt8_DestroyI10zc_MonsterEvPT_.exit.i.i.i.i:     ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 120 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIP10zc_MonsterS0_EvT_S2_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !35

_ZSt8_DestroyIP10zc_MonsterS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyI10zc_MonsterEvPT_.exit.i.i.i.i
  store ptr %i.l, ptr %i.m, align 8, !tbaa !337
  %.pre = load ptr, ptr %1, align 8, !tbaa !336
  br label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIP10zc_MonsterS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.b
  %i.w = phi ptr [ %.pre, %_ZSt8_DestroyIP10zc_MonsterS0_EvT_S2_RSaIT0_E.exit.i.i ], [ %i.l, %bb.b ] ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.0.insert.ext, i64 8738) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !342
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 120
  %i.ad = icmp ult i64 %i.ac, %.sroa.speculated
  br i1 %i.ad, label %_ZNSt12_Vector_baseI10zc_MonsterSaIS0_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10zc_MonsterSaIS0_EE7reserveEm.exit.preheader

_ZNSt12_Vector_baseI10zc_MonsterSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.l to i64
  %i.af = sub i64 %i.ae, %i.aa
  %i.ag = mul nuw nsw i64 %.sroa.speculated, 120
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #29 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.w, %i.l
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10zc_MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i20

.lr.ph.i.i.i.i20:                                 ; preds = %_ZNSt12_Vector_baseI10zc_MonsterSaIS0_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i20
  %.012.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i20 ], [ %i.ah, %_ZNSt12_Vector_baseI10zc_MonsterSaIS0_EE11_M_allocateEm.exit.i ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i20 ], [ %i.w, %_ZNSt12_Vector_baseI10zc_MonsterSaIS0_EE11_M_allocateEm.exit.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.0911.i.i.i.i, i64 49, i1 false), !alias.scope !1253
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 56 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !389, !alias.scope !1252, !noalias !1251
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !389, !alias.scope !1251, !noalias !1252
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 72
end_hunk_4
begin_hunk_5_@_ZNSt6vectorI7MonsterSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.x, %.lr.ph.i.i.i27 ], [ %i.u, %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.w, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  %i.v = tail call noundef ptr @_ZSt12construct_atI7MonsterJS0_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS2_DpOS3_(ptr noundef nonnull %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(176) %.0911.i.i.i29) #28 ; 0 uses
  tail call void @_ZN7MonsterD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.0911.i.i.i29) #28
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 176 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 176 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.w, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !39

_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.u, %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.x, %.lr.ph.i.i.i27 ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseI7MonsterSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !241
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #30
  br label %_ZNSt12_Vector_baseI7MonsterSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI7MonsterSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI7MonsterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !226
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !240
  %i.ac = getelementptr inbounds nuw [176 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !241
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorI7MonsterSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.af) #28 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #30
  invoke void @__cxa_rethrow() #32
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ad

bb.g:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #31
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7MonsterC2ERKS_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !92
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !93   ; 8 uses
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i64 %i.f, 0
  br i1 %i.h, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #32
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.f, 1                      ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !169

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #29 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !95
  store i64 %i.f, ptr %i.c, align 8, !tbaa !94
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.l = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.c, %bb.a ] ; 3 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.d, align 1, !tbaa !94
  store i8 %i.m, ptr %i.l, align 1, !tbaa !94
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.n, align 8, !tbaa !93
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store i8 0, ptr %i.o, align 1, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !92
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !95   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load i64, ptr %i.t, align 8, !tbaa !93   ; 8 uses
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %bb.f, label %._crit_edge.i.i15

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = icmp slt i64 %i.u, 0
  br i1 %i.w, label %.noexc.i18, label %bb.g

.noexc.i18:                                       ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #32
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %.noexc.i18
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.x = add nuw i64 %i.u, 1                      ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %.noexc6.i17, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16, !prof !169

.noexc6.i17:                                      ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc19 unwind label %bb.y

.noexc19:                                         ; preds = %.noexc6.i17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16: ; preds = %bb.g
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #29
          to label %.noexc20 unwind label %bb.y   ; 2 uses

.noexc20:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16
  store ptr %i.z, ptr %i.p, align 8, !tbaa !95
  store i64 %i.u, ptr %i.r, align 8, !tbaa !94
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %.noexc20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = phi ptr [ %i.z, %.noexc20 ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  switch i64 %i.u, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i15
  %i.ab = load i8, ptr %i.s, align 1, !tbaa !94
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !94
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.u, ptr %i.ac, align 8, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.u
  store i8 0, ptr %i.ad, align 1, !tbaa !94
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !387
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !387
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !289 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !290 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i, label %.noexc23, label %bb.k

bb.k:                                             ; preds = %bb.j
  %2 = sdiv exact i64 %i.ao, 40
  %i.ap = icmp ugt i64 %2, 230584300921369395
  br i1 %i.ap, label %.noexc.i.i, label %_ZNSt15__new_allocatorI6WeaponE8allocateEmPKv.exit.i.i.i.i, !prof !169

.noexc.i.i:                                       ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc22 unwind label %bb.z

.noexc22:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorI6WeaponE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #29
          to label %.noexc23 unwind label %bb.z

.noexc23:                                         ; preds = %_ZNSt15__new_allocatorI6WeaponE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.ar = phi ptr [ null, %bb.j ], [ %i.aq, %_ZNSt15__new_allocatorI6WeaponE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ar, ptr %i.ah, align 8, !tbaa !290
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !289
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !333
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !306
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !306
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK6WeaponSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %i.av, ptr %i.aw, ptr noundef %i.ar)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %.noexc23
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %i.ah, align 8, !tbaa !290 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !333
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bd) #30
  br label %.body

bb.n:                                             ; preds = %.noexc23
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !289
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !92
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !93 ; 8 uses
  %i.bk = icmp ugt i64 %i.bj, 15
  br i1 %i.bk, label %bb.o, label %._crit_edge.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bl = icmp slt i64 %i.bj, 0
  br i1 %i.bl, label %.noexc.i.i24, label %bb.p

.noexc.i.i24:                                     ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #32
          to label %.noexc25 unwind label %bb.aa

.noexc25:                                         ; preds = %.noexc.i.i24
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bm = add nuw i64 %i.bj, 1                    ; 2 uses
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !169

.noexc6.i.i:                                      ; preds = %bb.p
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc26 unwind label %bb.aa

.noexc26:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.p
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #29
          to label %.noexc27 unwind label %bb.aa  ; 2 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.bo, ptr %i.be, align 8, !tbaa !95
  store i64 %i.bj, ptr %i.bg, align 8, !tbaa !94
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc27, %bb.n
  %i.bp = phi ptr [ %i.bo, %.noexc27 ], [ %i.bg, %bb.n ] ; 3 uses
  switch i64 %i.bj, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.bq = load i8, ptr %i.bh, align 1, !tbaa !94
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !94
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %i.bh, i64 %i.bj, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.bj, ptr %i.br, align 8, !tbaa !93
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bj
  store i8 0, ptr %i.bs, align 1, !tbaa !94
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bv = load i16, ptr %i.bu, align 8, !tbaa !377
  store i16 %i.bv, ptr %i.bt, align 8, !tbaa !377
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !293 ; 2 uses
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !294 ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i28 = icmp eq ptr %i.bz, %i.ca
  br i1 %.not.i.i.i.i28, label %.noexc31, label %bb.t

bb.t:                                             ; preds = %bb.s
  %3 = sdiv exact i64 %i.cd, 12
  %i.ce = icmp ugt i64 %3, 768614336404564650
  br i1 %i.ce, label %.noexc.i.i29, label %_ZNSt15__new_allocatorI4Vec3E8allocateEmPKv.exit.i.i.i.i, !prof !169

.noexc.i.i29:                                     ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc30 unwind label %bb.ab

.noexc30:                                         ; preds = %.noexc.i.i29
  unreachable

_ZNSt15__new_allocatorI4Vec3E8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.t
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #29
          to label %.noexc31 unwind label %bb.ab

.noexc31:                                         ; preds = %_ZNSt15__new_allocatorI4Vec3E8allocateEmPKv.exit.i.i.i.i, %bb.s
  %i.cg = phi ptr [ null, %bb.s ], [ %i.cf, %_ZNSt15__new_allocatorI4Vec3E8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.cg, ptr %i.bw, align 8, !tbaa !294
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !293
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cd
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !332
  %i.ck = load ptr, ptr %i.bx, align 8, !tbaa !388 ; 3 uses
  %i.cl = load ptr, ptr %i.by, align 8, !tbaa !388
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 4 uses
  %i.cp = icmp sgt i64 %i.co, 12
  br i1 %i.cp, label %bb.u, label %bb.v, !prof !257

bb.u:                                             ; preds = %.noexc31
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cg, ptr align 4 %i.ck, i64 %i.co, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %.noexc31
  %i.cq = icmp eq i64 %i.co, 12
  br i1 %i.cq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cg, ptr noundef nonnull align 4 dereferenceable(12) %i.ck, i64 12, i1 false), !tbaa.struct !1300
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.cr = getelementptr inbounds i8, ptr %i.cg, i64 %i.co
  store ptr %i.cr, ptr %i.ch, align 8, !tbaa !293
  ret void

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i16, %.noexc6.i17, %.noexc.i18
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.z:                                             ; preds = %_ZNSt15__new_allocatorI6WeaponE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i24
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6WeaponD2Ev.exit

bb.ab:                                            ; preds = %_ZNSt15__new_allocatorI4Vec3E8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i29
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = load ptr, ptr %i.be, align 8, !tbaa !95 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.bg
  br i1 %i.cx, label %_ZN6WeaponD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ab
  %i.cy = load i64, ptr %i.bg, align 8, !tbaa !94
  %i.cz = add i64 %i.cy, 1
  tail call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #30
  br label %_ZN6WeaponD2Ev.exit

_ZN6WeaponD2Ev.exit:                              ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cu, %bb.aa ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.cv, %bb.ab ]
  tail call void @_ZNSt6vectorI6WeaponSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ah) #28
  br label %.body

.body:                                            ; preds = %bb.z, %bb.m, %bb.l, %_ZN6WeaponD2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN6WeaponD2Ev.exit ], [ %i.ct, %bb.z ], [ %i.ay, %bb.m ], [ %i.ay, %bb.l ] ; 2 uses
  %i.da = load ptr, ptr %i.p, align 8, !tbaa !95  ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.r
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.dc = load i64, ptr %i.r, align 8, !tbaa !94
  %i.dd = add i64 %i.dc, 1
  tail call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cs, %bb.y ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn.pn, %.body ]
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !95  ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.c
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dg = load i64, ptr %i.c, align 8, !tbaa !94
  %i.dh = add i64 %i.dg, 1
  tail call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK6WeaponSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.019 = phi ptr [ %i.s, %bb.f ], [ %2, %bb.a ]  ; 7 uses
  %.sroa.010.018 = phi ptr [ %i.r, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 3 uses
  store ptr %i.b, ptr %.019, align 8, !tbaa !92
  %i.c = load ptr, ptr %.sroa.010.018, align 8, !tbaa !95 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !93   ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i.i.i, label %bb.c

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !169

.noexc6.i.i.i:                                    ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.c
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #29
          to label %.noexc9 unwind label %.loopexit ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.j, ptr %.019, align 8, !tbaa !95
  store i64 %i.e, ptr %i.b, align 8, !tbaa !94
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc9, %.lr.ph
  %i.k = phi ptr [ %i.j, %.noexc9 ], [ %i.b, %.lr.ph ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !94
  store i8 %i.l, ptr %i.k, align 1, !tbaa !94
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.019, i64 8
  store i64 %i.e, ptr %i.m, align 8, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 32
  %i.q = load i16, ptr %i.p, align 8, !tbaa !377
  store i16 %i.q, ptr %i.o, align 8, !tbaa !377
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.019, i64 40 ; 2 uses
  %i.t = icmp eq ptr %i.r, %1
  br i1 %i.t, label %._crit_edge, label %.lr.ph, !llvm.loop !1301

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i, %.noexc6.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.u = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #28 ; 0 uses
end_hunk_5
begin_hunk_6_@_ZNSt3any17_Manager_externalIN9pb_sample4Vec3EE9_S_manageENS_3_OpEPKS_PNS_4_ArgE:bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !536
  %i.l = load ptr, ptr %2, align 8, !tbaa !94
  store ptr %i.k, ptr %i.l, align 8, !tbaa !536
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.m = icmp eq ptr %i.b, null
  br i1 %i.m, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !126
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(28) %i.b) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %2, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.b, ptr %i.r, align 8, !tbaa !94
  %i.s = load ptr, ptr %1, align 8, !tbaa !536
  %i.t = load ptr, ptr %2, align 8, !tbaa !94
  store ptr %i.s, ptr %i.t, align 8, !tbaa !536
  store ptr null, ptr %1, align 8, !tbaa !536
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3any17_Manager_internalIN9pb_sample5ColorEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  switch i32 %0, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %2, align 8, !tbaa !94
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store ptr @_ZTIN9pb_sample5ColorE, ptr %2, align 8, !tbaa !94
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.a, align 1, !tbaa !422
  store i8 %i.d, ptr %i.c, align 8, !tbaa !422
  %i.e = load ptr, ptr %1, align 8, !tbaa !536
  %i.f = load ptr, ptr %2, align 8, !tbaa !94
  store ptr %i.e, ptr %i.f, align 8, !tbaa !536
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i8, ptr %i.a, align 1, !tbaa !422
  store i8 %i.i, ptr %i.h, align 8, !tbaa !422
  %i.j = load ptr, ptr %1, align 8, !tbaa !536
  %i.k = load ptr, ptr %2, align 8, !tbaa !94
  store ptr %i.j, ptr %i.k, align 8, !tbaa !536
  store ptr null, ptr %1, align 8, !tbaa !536
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3anyaSIRSt6vectorIN9pb_sample6WeaponESaIS3_EEEENSt9enable_ifIXsr21is_copy_constructibleINS7_IXnt9is_same_vINSt5decayIT_E4typeES_EESB_E4typeEEE5valueERS_E4typeEOS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %3 = alloca %"class.std::any", align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr @_ZNSt3any17_Manager_externalISt6vectorIN9pb_sample6WeaponESaIS3_EEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, ptr %3, align 8, !tbaa !536
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !94
  call void @_ZNSt3any17_Manager_externalISt6vectorIN9pb_sample6WeaponESaIS3_EEE9_S_createIRS5_EEvRNS_8_StorageEOT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = load ptr, ptr %3, align 8, !tbaa !536    ; 2 uses
  %.not8.i = icmp eq ptr %i.b, null
  %i.c = load ptr, ptr %0, align 8, !tbaa !536    ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null              ; 2 uses
  br i1 %.not8.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_ZNSt3anyD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.c(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !536
  br label %_ZNSt3anyaSEOS_.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #31
  unreachable

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_ZNSt3any5resetEv.exit7.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.c(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %0, align 8, !tbaa !536
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !536
  br label %_ZNSt3any5resetEv.exit7.i

bb.i:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #31
  unreachable

_ZNSt3any5resetEv.exit7.i:                        ; preds = %bb.h, %bb.f
  %i.h = phi ptr [ %i.b, %bb.f ], [ %.pre.i, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %0, ptr %2, align 8, !tbaa !94
  invoke void %i.h(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNSt3any5resetEv.exit7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZNSt3anyaSEOS_.exit

bb.k:                                             ; preds = %_ZNSt3any5resetEv.exit7.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

_ZNSt3anyaSEOS_.exit:                             ; preds = %bb.d, %bb.j
  %.pr = load ptr, ptr %3, align 8, !tbaa !536    ; 2 uses
  %.not.i.i2 = icmp eq ptr %.pr, null
  br i1 %.not.i.i2, label %_ZNSt3anyD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt3anyaSEOS_.exit
  invoke void %.pr(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef null)
          to label %_ZNSt3anyD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #31
  unreachable

_ZNSt3anyD2Ev.exit:                               ; preds = %bb.b, %_ZNSt3anyaSEOS_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3any17_Manager_externalISt6vectorIN9pb_sample6WeaponESaIS3_EEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 noundef %0, ptr noundef %1, ptr noundef %2) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 10 uses
  switch i32 %0, label %bb.n [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.j
    i32 4, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !94
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  store ptr @_ZTISt6vectorIN9pb_sample6WeaponESaIS1_EE, ptr %2, align 8, !tbaa !94
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !208  ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !207  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %.noexc16, label %bb.e

bb.e:                                             ; preds = %bb.d
  %3 = sdiv exact i64 %i.i, 56
  %i.j = icmp ugt i64 %3, 164703072086692425
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN9pb_sample6WeaponEE8allocateEmPKv.exit.i.i.i.i, !prof !169

.noexc.i.i:                                       ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN9pb_sample6WeaponEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #29
          to label %.noexc16 unwind label %bb.i

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIN9pb_sample6WeaponEE8allocateEmPKv.exit.i.i.i.i, %bb.d
  %i.l = phi ptr [ null, %bb.d ], [ %i.k, %_ZNSt15__new_allocatorIN9pb_sample6WeaponEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !207
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !208
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !209
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN9pb_sample6WeaponESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.f, ptr %i.e, ptr noundef %i.l)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %.noexc16
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !207  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !209
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #30
  br label %.body

bb.h:                                             ; preds = %.noexc16
  store ptr %i.p, ptr %i.m, align 8, !tbaa !208
  %i.w = load ptr, ptr %2, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.c, ptr %i.x, align 8, !tbaa !94
  %i.y = load ptr, ptr %1, align 8, !tbaa !536
  %i.z = load ptr, ptr %2, align 8, !tbaa !94
  store ptr %i.y, ptr %i.z, align 8, !tbaa !536
  br label %bb.n

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIN9pb_sample6WeaponEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.q, %bb.g ], [ %i.q, %bb.f ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 24) #30
  resume { ptr, i32 } %eh.lpad-body

bb.j:                                             ; preds = %bb.a
  %i.ab = icmp eq ptr %i.b, null
  br i1 %i.ab, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !207 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !208 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.ac, %bb.k ] ; 3 uses
  %i.af = load ptr, ptr %.05.i.i.i, align 8, !tbaa !126
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %.05.i.i.i) #28, !inline_history !27
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.ai, %i.ae
  br i1 %.not.i.i.i17, label %_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !28

_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !207
  br label %_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.k
  %i.aj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %bb.k ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !209
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #30
  br label %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EED2Ev.exit

_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exit.i, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #30
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.ap = load ptr, ptr %2, align 8, !tbaa !94
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.b, ptr %i.aq, align 8, !tbaa !94
  %i.ar = load ptr, ptr %1, align 8, !tbaa !536
  %i.as = load ptr, ptr %2, align 8, !tbaa !94
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !536
  store ptr null, ptr %1, align 8, !tbaa !536
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EED2Ev.exit, %bb.m, %bb.h, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3any17_Manager_externalISt6vectorIN9pb_sample6WeaponESaIS3_EEE9_S_createIRS5_EEvRNS_8_StorageEOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208  ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !207    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %.noexc3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.g, 56
  %i.h = icmp ugt i64 %2, 164703072086692425
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN9pb_sample6WeaponEE8allocateEmPKv.exit.i.i.i.i, !prof !169

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN9pb_sample6WeaponEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #29
          to label %.noexc3 unwind label %bb.f

.noexc3:                                          ; preds = %_ZNSt15__new_allocatorIN9pb_sample6WeaponEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN9pb_sample6WeaponEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !207
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !208
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !209
  %i.n = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN9pb_sample6WeaponESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.d, ptr %i.c, ptr noundef %i.j)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc3
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !207  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !209
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.t) #30
  br label %.body

bb.e:                                             ; preds = %.noexc3
  store ptr %i.n, ptr %i.k, align 8, !tbaa !208
  store ptr %i.a, ptr %0, align 8, !tbaa !94
  ret void

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN9pb_sample6WeaponEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.o, %bb.d ], [ %i.o, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !207    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %.05.i.i) #28, !inline_history !68
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !28

_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !207
  br label %_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN9pb_sample6WeaponESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !209
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #30
  br label %_ZNSt12_Vector_baseIN9pb_sample6WeaponESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN9pb_sample6WeaponESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9pb_sample6WeaponES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN9pb_sample6WeaponESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.019 = phi ptr [ %i.x, %bb.f ], [ %2, %bb.a ]  ; 9 uses
  %.sroa.010.018 = phi ptr [ %i.w, %bb.f ], [ %0, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.019, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !198
  store i64 %i.d, ptr %i.b, align 8, !tbaa !198
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6WeaponE, i64 16), ptr %.019, align 8, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.019, i64 32 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !92
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !95   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !93   ; 8 uses
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.b, label %._crit_edge.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %.noexc.i.i.i, label %bb.c

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %i.j, 1                      ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !169

.noexc6.i.i.i:                                    ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.c
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #29
          to label %.noexc9 unwind label %.loopexit ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.o, ptr %i.e, align 8, !tbaa !95
  store i64 %i.j, ptr %i.g, align 8, !tbaa !94
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc9, %.lr.ph
  %i.p = phi ptr [ %i.o, %.noexc9 ], [ %i.g, %.lr.ph ] ; 3 uses
  switch i64 %i.j, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = load i8, ptr %i.h, align 1, !tbaa !94
  store i8 %i.q, ptr %i.p, align 1, !tbaa !94
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.019, i64 24
  store i64 %i.j, ptr %i.r, align 8, !tbaa !93
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  store i8 0, ptr %i.s, align 1, !tbaa !94
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !476
  store i32 %i.v, ptr %i.t, align 8, !tbaa !476
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.019, i64 56 ; 2 uses
  %i.y = icmp eq ptr %i.w, %1
  br i1 %i.y, label %._crit_edge, label %.lr.ph, !llvm.loop !1825

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i, %.noexc6.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.z = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #28 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.019
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN9pb_sample6WeaponEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
end_hunk_6
begin_hunk_7_@_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZNK6iguana9base_implIN9pb_sample7MonsterELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_JRKSt7variantIJNS4_6detail10pb_field_tIS7_NS6_4Vec3ELm1ESK_EENSJ_IS7_iLm2EiEENSJ_IS7_iLm3EiEENSJ_IS7_NSt7__cxx1112basic_stringIcSB_SaIcEEELm4ESR_EENSJ_IS7_SR_Lm5ESR_EENSJ_IS7_NS6_5ColorELm6ESU_EENSJ_IS7_St6vectorINS6_6WeaponESaISX_EELm7ESZ_EENSJ_IS7_SX_Lm8ESX_EENSJ_IS7_SW_ISK_SaISK_EELm9ES13_EEEEEEDcOT0_DpOT1_:bb.a

bb.p:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.q, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample7MonsterELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_NS7_4Vec3ELm1ESM_EENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm4EST_EENSL_IS8_ST_Lm5EST_EENSL_IS8_NS7_5ColorELm6ESW_EENSL_IS8_St6vectorINS7_6WeaponESaISZ_EELm7ES11_EENSL_IS8_SZ_Lm8ESZ_EENSL_IS8_SY_ISM_SaISM_EELm9ES15_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_S19_.exit

bb.q:                                             ; preds = %bb.p
  %i.t = icmp eq i64 %.sroa.02.0.copyload.i.i.i.i, 0
  br i1 %i.t, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample7MonsterELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_NS7_4Vec3ELm1ESM_EENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm4EST_EENSL_IS8_ST_Lm5EST_EENSL_IS8_NS7_5ColorELm6ESW_EENSL_IS8_St6vectorINS7_6WeaponESaISZ_EELm7ES11_EENSL_IS8_SZ_Lm8ESZ_EENSL_IS8_SY_ISM_SaISM_EELm9ES15_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_S19_.exit.sink.split, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i86

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i86: ; preds = %bb.q
  %bcmp.i.i.i.i.i87 = tail call i32 @bcmp(ptr %.sroa.23.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.02.0.copyload.i.i.i.i)
  %i.u = icmp eq i32 %bcmp.i.i.i.i.i87, 0
  br i1 %i.u, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample7MonsterELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_NS7_4Vec3ELm1ESM_EENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm4EST_EENSL_IS8_ST_Lm5EST_EENSL_IS8_NS7_5ColorELm6ESW_EENSL_IS8_St6vectorINS7_6WeaponESaISZ_EELm7ES11_EENSL_IS8_SZ_Lm8ESZ_EENSL_IS8_SY_ISM_SaISM_EELm9ES15_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_S19_.exit.sink.split, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample7MonsterELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_NS7_4Vec3ELm1ESM_EENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm4EST_EENSL_IS8_ST_Lm5EST_EENSL_IS8_NS7_5ColorELm6ESW_EENSL_IS8_St6vectorINS7_6WeaponESaISZ_EELm7ES11_EENSL_IS8_SZ_Lm8ESZ_EENSL_IS8_SY_ISM_SaISM_EELm9ES15_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_S19_.exit

bb.r:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.s, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample7MonsterELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_NS7_4Vec3ELm1ESM_EENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm4EST_EENSL_IS8_ST_Lm5EST_EENSL_IS8_NS7_5ColorELm6ESW_EENSL_IS8_St6vectorINS7_6WeaponESaISZ_EELm7ES11_EENSL_IS8_SZ_Lm8ESZ_EENSL_IS8_SY_ISM_SaISM_EELm9ES15_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_S19_.exit

bb.s:                                             ; preds = %bb.r
  %i.v = icmp eq i64 %.sroa.02.0.copyload.i.i.i.i, 0
  br i1 %i.v, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample7MonsterELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_NS7_4Vec3ELm1ESM_EENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm4EST_EENSL_IS8_ST_Lm5EST_EENSL_IS8_NS7_5ColorELm6ESW_EENSL_IS8_St6vectorINS7_6WeaponESaISZ_EELm7ES11_EENSL_IS8_SZ_Lm8ESZ_EENSL_IS8_SY_ISM_SaISM_EELm9ES15_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_S19_.exit.sink.split, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i96

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i96: ; preds = %bb.s
  %bcmp.i.i.i.i.i97 = tail call i32 @bcmp(ptr %.sroa.23.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.02.0.copyload.i.i.i.i)
  %i.w = icmp eq i32 %bcmp.i.i.i.i.i97, 0
  br i1 %i.w, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample7MonsterELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_NS7_4Vec3ELm1ESM_EENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm4EST_EENSL_IS8_ST_Lm5EST_EENSL_IS8_NS7_5ColorELm6ESW_EENSL_IS8_St6vectorINS7_6WeaponESaISZ_EELm7ES11_EENSL_IS8_SZ_Lm8ESZ_EENSL_IS8_SY_ISM_SaISM_EELm9ES15_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_S19_.exit.sink.split, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample7MonsterELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_NS7_4Vec3ELm1ESM_EENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm4EST_EENSL_IS8_ST_Lm5EST_EENSL_IS8_NS7_5ColorELm6ESW_EENSL_IS8_St6vectorINS7_6WeaponESaISZ_EELm7ES11_EENSL_IS8_SZ_Lm8ESZ_EENSL_IS8_SY_ISM_SaISM_EELm9ES15_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_S19_.exit

bb.t:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample7MonsterELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_NS7_4Vec3ELm1ESM_EENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm4EST_EENSL_IS8_ST_Lm5EST_EENSL_IS8_NS7_5ColorELm6ESW_EENSL_IS8_St6vectorINS7_6WeaponESaISZ_EELm7ES11_EENSL_IS8_SZ_Lm8ESZ_EENSL_IS8_SY_ISM_SaISM_EELm9ES15_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_S19_.exit.sink.split: ; preds = %bb.s, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i96, %bb.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i86, %bb.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i76, %bb.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i66, %bb.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i56, %bb.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i46, %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36, %bb.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i26, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.sink101 = phi i64 [ 17, %bb.q ], [ 30, %bb.o ], [ 16, %bb.m ], [ 23, %bb.k ], [ 23, %bb.i ], [ 3, %bb.g ], [ 3, %bb.e ], [ 15, %bb.c ], [ 15, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ 3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i26 ], [ 3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36 ], [ 23, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i46 ], [ 23, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i56 ], [ 16, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i66 ], [ 30, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i76 ], [ 17, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i86 ], [ 28, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i96 ], [ 28, %bb.s ]
  %.sink = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.96, i64 45), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @.str.95, i64 45), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @.str.94, i64 45), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @.str.90, i64 45), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @.str.90, i64 45), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @.str.88, i64 45), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @.str.88, i64 45), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @.str.93, i64 45), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @.str.93, i64 45), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @.str.88, i64 45), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i26 ], [ getelementptr inbounds nuw (i8, ptr @.str.88, i64 45), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36 ], [ getelementptr inbounds nuw (i8, ptr @.str.90, i64 45), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i46 ], [ getelementptr inbounds nuw (i8, ptr @.str.90, i64 45), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i56 ], [ getelementptr inbounds nuw (i8, ptr @.str.94, i64 45), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i66 ], [ getelementptr inbounds nuw (i8, ptr @.str.95, i64 45), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i76 ], [ getelementptr inbounds nuw (i8, ptr @.str.96, i64 45), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i86 ], [ getelementptr inbounds nuw (i8, ptr @.str.97, i64 45), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i96 ], [ getelementptr inbounds nuw (i8, ptr @.str.97, i64 45), %bb.s ]
  %i.x = load i64, ptr %1, align 8, !tbaa !249
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1829, !nonnull !272, !align !273 ; 3 uses
  store i64 %i.x, ptr %i.z, align 8, !tbaa !544
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sink101, ptr %i.aa, align 8, !tbaa !249
  %.sroa.4.0..sroa_idx.i.i.i.i99 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %.sink, ptr %.sroa.4.0..sroa_idx.i.i.i.i99, align 8, !tbaa !363
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample7MonsterELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_NS7_4Vec3ELm1ESM_EENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm4EST_EENSL_IS8_ST_Lm5EST_EENSL_IS8_NS7_5ColorELm6ESW_EENSL_IS8_St6vectorINS7_6WeaponESaISZ_EELm7ES11_EENSL_IS8_SZ_Lm8ESZ_EENSL_IS8_SY_ISM_SaISM_EELm9ES15_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_S19_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample7MonsterELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_NS7_4Vec3ELm1ESM_EENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm4EST_EENSL_IS8_ST_Lm5EST_EENSL_IS8_NS7_5ColorELm6ESW_EENSL_IS8_St6vectorINS7_6WeaponESaISZ_EELm7ES11_EENSL_IS8_SZ_Lm8ESZ_EENSL_IS8_SY_ISM_SaISM_EELm9ES15_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_S19_.exit: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample7MonsterELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_NS7_4Vec3ELm1ESM_EENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm4EST_EENSL_IS8_ST_Lm5EST_EENSL_IS8_NS7_5ColorELm6ESW_EENSL_IS8_St6vectorINS7_6WeaponESaISZ_EELm7ES11_EENSL_IS8_SZ_Lm8ESZ_EENSL_IS8_SY_ISM_SaISM_EELm9ES15_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_S19_.exit.sink.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i96, %bb.r, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i86, %bb.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i76, %bb.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i66, %bb.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i56, %bb.j, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i46, %bb.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36, %bb.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i26, %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN9pb_sample7MonsterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !194
  store i64 %i.c, ptr %i.a, align 8, !tbaa !194
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample7MonsterE, i64 16), ptr %0, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !196
  store i64 %i.g, ptr %i.e, align 8, !tbaa !196
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample4Vec3E, i64 16), ptr %i.d, align 8, !tbaa !126
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i64 12, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8
  store i64 %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !92
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !95   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !93   ; 8 uses
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.t = icmp slt i64 %i.r, 0
  br i1 %i.t, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #32
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.u = add nuw i64 %i.r, 1                      ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !169

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #29 ; 2 uses
  store ptr %i.w, ptr %i.m, align 8, !tbaa !95
  store i64 %i.r, ptr %i.o, align 8, !tbaa !94
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.x = phi ptr [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.o, %bb.a ] ; 3 uses
  switch i64 %i.r, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.y = load i8, ptr %i.p, align 1, !tbaa !94
  store i8 %i.y, ptr %i.x, align 1, !tbaa !94
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.r, ptr %i.z, align 8, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.r
  store i8 0, ptr %i.aa, align 1, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !92
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !95 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !93 ; 8 uses
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %bb.g, label %._crit_edge.i.i21

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp slt i64 %i.ag, 0
  br i1 %i.ai, label %.noexc.i24, label %bb.h

.noexc.i24:                                       ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #32
          to label %.noexc25 unwind label %bb.v

.noexc25:                                         ; preds = %.noexc.i24
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.aj = add nuw i64 %i.ag, 1                    ; 2 uses
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %.noexc6.i23, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22, !prof !169

.noexc6.i23:                                      ; preds = %bb.h
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc26 unwind label %bb.v

.noexc26:                                         ; preds = %.noexc6.i23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22: ; preds = %bb.h
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #29
          to label %.noexc27 unwind label %bb.v   ; 2 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22
  store ptr %i.al, ptr %i.ab, align 8, !tbaa !95
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !94
  br label %._crit_edge.i.i21

._crit_edge.i.i21:                                ; preds = %.noexc27, %bb.f
  %i.am = phi ptr [ %i.al, %.noexc27 ], [ %i.ad, %bb.f ] ; 3 uses
  switch i64 %i.ag, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i21
  %i.an = load i8, ptr %i.ae, align 1, !tbaa !94
  store i8 %i.an, ptr %i.am, align 1, !tbaa !94
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ae, i64 %i.ag, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i21
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ag, ptr %i.ao, align 8, !tbaa !93
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ag
  store i8 0, ptr %i.ap, align 1, !tbaa !94
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !493
  store i8 %i.as, ptr %i.aq, align 8, !tbaa !493
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !208 ; 2 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !207 ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i.i.i.i, label %.noexc30, label %bb.l

bb.l:                                             ; preds = %bb.k
  %2 = sdiv exact i64 %i.ba, 56
  %i.bb = icmp ugt i64 %2, 164703072086692425
  br i1 %i.bb, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN9pb_sample6WeaponEE8allocateEmPKv.exit.i.i.i.i, !prof !169

.noexc.i.i:                                       ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc29 unwind label %bb.w

.noexc29:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN9pb_sample6WeaponEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #29
          to label %.noexc30 unwind label %bb.w

.noexc30:                                         ; preds = %_ZNSt15__new_allocatorIN9pb_sample6WeaponEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.bd = phi ptr [ null, %bb.k ], [ %i.bc, %_ZNSt15__new_allocatorIN9pb_sample6WeaponEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.bd, ptr %i.at, align 8, !tbaa !207
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !208
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ba
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !209
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !423
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !423
  %i.bj = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN9pb_sample6WeaponESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.bh, ptr %i.bi, ptr noundef %i.bd)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %.noexc30
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !207 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !209
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bp) #30
  br label %.body

bb.o:                                             ; preds = %.noexc30
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !208
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !198
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !198
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6WeaponE, i64 16), ptr %i.bq, align 8, !tbaa !126
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !92
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !95 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !93 ; 8 uses
  %i.ca = icmp ugt i64 %i.bz, 15
  br i1 %i.ca, label %bb.p, label %._crit_edge.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.cb = icmp slt i64 %i.bz, 0
  br i1 %i.cb, label %.noexc.i.i31, label %bb.q

.noexc.i.i31:                                     ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #32
          to label %.noexc32 unwind label %bb.x, !inline_history !645

.noexc32:                                         ; preds = %.noexc.i.i31
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.cc = add nuw i64 %i.bz, 1                    ; 2 uses
  %i.cd = icmp slt i64 %i.cc, 0
  br i1 %i.cd, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !169

.noexc6.i.i:                                      ; preds = %bb.q
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc33 unwind label %bb.x, !inline_history !645

.noexc33:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.q
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #29
          to label %.noexc34 unwind label %bb.x, !inline_history !645 ; 2 uses

.noexc34:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.ce, ptr %i.bu, align 8, !tbaa !95
  store i64 %i.bz, ptr %i.bw, align 8, !tbaa !94
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc34, %bb.o
  %i.cf = phi ptr [ %i.ce, %.noexc34 ], [ %i.bw, %bb.o ] ; 3 uses
  switch i64 %i.bz, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.cg = load i8, ptr %i.bx, align 1, !tbaa !94
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !94
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr align 1 %i.bx, i64 %i.bz, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.bz, ptr %i.ch, align 8, !tbaa !93
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bz
  store i8 0, ptr %i.ci, align 1, !tbaa !94
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !476
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !476
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !202 ; 2 uses
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !201 ; 2 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false)
  %.not.i.i.i.i35 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i.i.i.i35, label %.noexc38, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = icmp ugt i64 %i.ct, 9223372036854775776
  br i1 %i.cu, label %.noexc.i.i36, label %_ZNSt15__new_allocatorIN9pb_sample4Vec3EE8allocateEmPKv.exit.i.i.i.i, !prof !169

.noexc.i.i36:                                     ; preds = %bb.u
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc37 unwind label %bb.y

.noexc37:                                         ; preds = %.noexc.i.i36
  unreachable

_ZNSt15__new_allocatorIN9pb_sample4Vec3EE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.u
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #29
          to label %.noexc38 unwind label %bb.y

.noexc38:                                         ; preds = %_ZNSt15__new_allocatorIN9pb_sample4Vec3EE8allocateEmPKv.exit.i.i.i.i, %bb.t
  %i.cw = phi ptr [ null, %bb.t ], [ %i.cv, %_ZNSt15__new_allocatorIN9pb_sample4Vec3EE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.cw, ptr %i.cm, align 8, !tbaa !201
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !202
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ct
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !203
  %i.da = load ptr, ptr %i.cn, align 8, !tbaa !424 ; 2 uses
  %i.db = load ptr, ptr %i.co, align 8, !tbaa !424 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc38, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %i.cw, %.noexc38 ] ; 4 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %i.da, %.noexc38 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !196
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !196
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample4Vec3E, i64 16), ptr %.08.i.i.i.i.i, align 8, !tbaa !126
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dg, ptr noundef nonnull align 8 dereferenceable(12) %i.dh, i64 12, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 32 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.db
  br i1 %i.dk, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !69

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc38
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cw, %.noexc38 ], [ %i.dj, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.cx, align 8, !tbaa !202
  ret void

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22, %.noexc6.i23, %.noexc.i24
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIN9pb_sample6WeaponEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i31
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9pb_sample6WeaponD2Ev.exit

bb.y:                                             ; preds = %_ZNSt15__new_allocatorIN9pb_sample4Vec3EE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i36
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6WeaponE, i64 16), ptr %i.bq, align 8, !tbaa !126
  %i.dp = load ptr, ptr %i.bu, align 8, !tbaa !95 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.bw
  br i1 %i.dq, label %_ZN9pb_sample6WeaponD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_7
begin_hunk_8_@_ZZNK6iguana9base_implIN9pb_sample7personsELh8EE15get_fields_nameEvENKUlRKT_E_clINS_6detail10pb_field_tIS2_St6vectorINS1_6personESaISC_EELm1ESE_EEEEDaS6_:bb.a
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !529
  %.not.i = icmp eq ptr %i.h, %i.o
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread
  store i64 %i.d, ptr %i.h, align 8, !tbaa !249
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !363
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.p, ptr %i.g, align 8, !tbaa !541
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775792
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #32
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.u = ashr exact i64 %i.s, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 576460752303423487)
  %i.y = select i1 %i.w, i64 576460752303423487, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 4
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #29 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i64 %i.d, ptr %i.ab, align 8, !tbaa !249
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx7, align 8, !tbaa !363
  br i1 %i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.aa, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.f, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !542, !alias.scope !2111
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !62

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.s) #30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !528
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !541
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.af, ptr %i.n, align 8, !tbaa !529
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3anyaSIRSt6vectorIN9pb_sample6personESaIS3_EEEENSt9enable_ifIXsr21is_copy_constructibleINS7_IXnt9is_same_vINSt5decayIT_E4typeES_EESB_E4typeEEE5valueERS_E4typeEOS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %3 = alloca %"class.std::any", align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr @_ZNSt3any17_Manager_externalISt6vectorIN9pb_sample6personESaIS3_EEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, ptr %3, align 8, !tbaa !536
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !94
  call void @_ZNSt3any17_Manager_externalISt6vectorIN9pb_sample6personESaIS3_EEE9_S_createIRS5_EEvRNS_8_StorageEOT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = load ptr, ptr %3, align 8, !tbaa !536    ; 2 uses
  %.not8.i = icmp eq ptr %i.b, null
  %i.c = load ptr, ptr %0, align 8, !tbaa !536    ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null              ; 2 uses
  br i1 %.not8.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_ZNSt3anyD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.c(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !536
  br label %_ZNSt3anyaSEOS_.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #31
  unreachable

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_ZNSt3any5resetEv.exit7.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.c(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %0, align 8, !tbaa !536
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !536
  br label %_ZNSt3any5resetEv.exit7.i

bb.i:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #31
  unreachable

_ZNSt3any5resetEv.exit7.i:                        ; preds = %bb.h, %bb.f
  %i.h = phi ptr [ %i.b, %bb.f ], [ %.pre.i, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %0, ptr %2, align 8, !tbaa !94
  invoke void %i.h(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNSt3any5resetEv.exit7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZNSt3anyaSEOS_.exit

bb.k:                                             ; preds = %_ZNSt3any5resetEv.exit7.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

_ZNSt3anyaSEOS_.exit:                             ; preds = %bb.d, %bb.j
  %.pr = load ptr, ptr %3, align 8, !tbaa !536    ; 2 uses
  %.not.i.i2 = icmp eq ptr %.pr, null
  br i1 %.not.i.i2, label %_ZNSt3anyD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt3anyaSEOS_.exit
  invoke void %.pr(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef null)
          to label %_ZNSt3anyD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #31
  unreachable

_ZNSt3anyD2Ev.exit:                               ; preds = %bb.b, %_ZNSt3anyaSEOS_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3any17_Manager_externalISt6vectorIN9pb_sample6personESaIS3_EEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 noundef %0, ptr noundef %1, ptr noundef %2) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 10 uses
  switch i32 %0, label %bb.n [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.j
    i32 4, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !94
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  store ptr @_ZTISt6vectorIN9pb_sample6personESaIS1_EE, ptr %2, align 8, !tbaa !94
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !191  ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !190  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %.noexc16, label %bb.e

bb.e:                                             ; preds = %bb.d
  %3 = sdiv exact i64 %i.i, 72
  %i.j = icmp ugt i64 %3, 128102389400760775
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN9pb_sample6personEE8allocateEmPKv.exit.i.i.i.i, !prof !169

.noexc.i.i:                                       ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN9pb_sample6personEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #29
          to label %.noexc16 unwind label %bb.i

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIN9pb_sample6personEE8allocateEmPKv.exit.i.i.i.i, %bb.d
  %i.l = phi ptr [ null, %bb.d ], [ %i.k, %_ZNSt15__new_allocatorIN9pb_sample6personEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !190
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !191
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !192
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN9pb_sample6personESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.f, ptr %i.e, ptr noundef %i.l)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %.noexc16
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !190  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !192
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #30
  br label %.body

bb.h:                                             ; preds = %.noexc16
  store ptr %i.p, ptr %i.m, align 8, !tbaa !191
  %i.w = load ptr, ptr %2, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.c, ptr %i.x, align 8, !tbaa !94
  %i.y = load ptr, ptr %1, align 8, !tbaa !536
  %i.z = load ptr, ptr %2, align 8, !tbaa !94
  store ptr %i.y, ptr %i.z, align 8, !tbaa !536
  br label %bb.n

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIN9pb_sample6personEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.q, %bb.g ], [ %i.q, %bb.f ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 24) #30
  resume { ptr, i32 } %eh.lpad-body

bb.j:                                             ; preds = %bb.a
  %i.ab = icmp eq ptr %i.b, null
  br i1 %i.ab, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !190 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !191 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN9pb_sample6personES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.ac, %bb.k ] ; 3 uses
  %i.af = load ptr, ptr %.05.i.i.i, align 8, !tbaa !126
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.05.i.i.i) #28, !inline_history !17
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.ai, %i.ae
  br i1 %.not.i.i.i17, label %_ZSt8_DestroyIPN9pb_sample6personES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPN9pb_sample6personES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPN9pb_sample6personES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN9pb_sample6personES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN9pb_sample6personES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.k
  %i.aj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN9pb_sample6personES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %bb.k ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN9pb_sample6personESaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN9pb_sample6personES1_EvT_S3_RSaIT0_E.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !192
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #30
  br label %_ZNSt6vectorIN9pb_sample6personESaIS1_EED2Ev.exit

_ZNSt6vectorIN9pb_sample6personESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9pb_sample6personES1_EvT_S3_RSaIT0_E.exit.i, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #30
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.ap = load ptr, ptr %2, align 8, !tbaa !94
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.b, ptr %i.aq, align 8, !tbaa !94
  %i.ar = load ptr, ptr %1, align 8, !tbaa !536
  %i.as = load ptr, ptr %2, align 8, !tbaa !94
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !536
  store ptr null, ptr %1, align 8, !tbaa !536
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %_ZNSt6vectorIN9pb_sample6personESaIS1_EED2Ev.exit, %bb.m, %bb.h, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3any17_Manager_externalISt6vectorIN9pb_sample6personESaIS3_EEE9_S_createIRS5_EEvRNS_8_StorageEOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191  ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !190    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %.noexc3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.g, 72
  %i.h = icmp ugt i64 %2, 128102389400760775
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN9pb_sample6personEE8allocateEmPKv.exit.i.i.i.i, !prof !169

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN9pb_sample6personEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #29
          to label %.noexc3 unwind label %bb.f

.noexc3:                                          ; preds = %_ZNSt15__new_allocatorIN9pb_sample6personEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN9pb_sample6personEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !190
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !191
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !192
  %i.n = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN9pb_sample6personESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.d, ptr %i.c, ptr noundef %i.j)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc3
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !190  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !192
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.t) #30
  br label %.body

bb.e:                                             ; preds = %.noexc3
  store ptr %i.n, ptr %i.k, align 8, !tbaa !191
  store ptr %i.a, ptr %0, align 8, !tbaa !94
  ret void

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN9pb_sample6personEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.o, %bb.d ], [ %i.o, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN9pb_sample6personESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.019 = phi ptr [ %i.z, %bb.f ], [ %2, %bb.a ]  ; 10 uses
  %.sroa.010.018 = phi ptr [ %i.y, %bb.f ], [ %0, %bb.a ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.019, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !187
  store i64 %i.d, ptr %i.b, align 8, !tbaa !187
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6personE, i64 16), ptr %.019, align 8, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !462
  store i32 %i.g, ptr %i.e, align 8, !tbaa !462
  %i.h = getelementptr inbounds nuw i8, ptr %.019, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %.019, i64 40 ; 3 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !92
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !95   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !93   ; 8 uses
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %bb.b, label %._crit_edge.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.o = icmp slt i64 %i.m, 0
  br i1 %i.o, label %.noexc.i.i.i, label %bb.c

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.p = add nuw i64 %i.m, 1                      ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !169

.noexc6.i.i.i:                                    ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.c
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #29
          to label %.noexc9 unwind label %.loopexit ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.r, ptr %i.h, align 8, !tbaa !95
  store i64 %i.m, ptr %i.j, align 8, !tbaa !94
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc9, %.lr.ph
  %i.s = phi ptr [ %i.r, %.noexc9 ], [ %i.j, %.lr.ph ] ; 3 uses
  switch i64 %i.m, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.t = load i8, ptr %i.k, align 1, !tbaa !94
  store i8 %i.t, ptr %i.s, align 1, !tbaa !94
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.019, i64 32
  store i64 %i.m, ptr %i.u, align 8, !tbaa !93
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  store i8 0, ptr %i.v, align 1, !tbaa !94
  %i.w = getelementptr inbounds nuw i8, ptr %.019, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 72 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.019, i64 72 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %1
  br i1 %i.aa, label %._crit_edge, label %.lr.ph, !llvm.loop !2112

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i, %.noexc6.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ab = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #28 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.019
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN9pb_sample6personEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %2, %bb.g ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i, align 8, !tbaa !126
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.05.i.i) #28, !inline_history !70
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, %.019
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN9pb_sample6personEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !18

_ZSt8_DestroyIPN9pb_sample6personEEvT_S3_.exit:   ; preds = %.lr.ph.i.i, %bb.g
  invoke void @__cxa_rethrow() #32
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.z, %bb.f ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %_ZSt8_DestroyIPN9pb_sample6personEEvT_S3_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ah

bb.j:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #31
  unreachable

bb.k:                                             ; preds = %_ZSt8_DestroyIPN9pb_sample6personEEvT_S3_.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN9pb_sample7personsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !176
  store i64 %i.c, ptr %i.a, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample7personsE, i64 16), ptr %0, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !191  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !190  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %.noexc4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.k, 72
  %i.l = icmp ugt i64 %2, 128102389400760775
  br i1 %i.l, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN9pb_sample6personEE8allocateEmPKv.exit.i.i.i.i, !prof !169

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt15__new_allocatorIN9pb_sample6personEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #29
  br label %.noexc4

.noexc4:                                          ; preds = %_ZNSt15__new_allocatorIN9pb_sample6personEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.n = phi ptr [ null, %bb.a ], [ %i.m, %_ZNSt15__new_allocatorIN9pb_sample6personEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !190
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !191
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !192
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !416
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !416
  %i.t = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN9pb_sample6personESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.r, ptr %i.s, ptr noundef %i.n)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc4
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !190  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !192
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #30
  br label %.body

bb.e:                                             ; preds = %.noexc4
  store ptr %i.t, ptr %i.o, align 8, !tbaa !191
  ret void

.body:                                            ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK6iguana9base_implIN9pb_sample8MonstersELh8EE5to_pbERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6iguana6detail17pb_key_value_sizeILm0ELb1ERKN9pb_sample8MonstersESt6vectorIjSaIjEEEEmOT1_RT2_E5tuple acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !173

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana6detail17pb_key_value_sizeILm0ELb1ERKN9pb_sample8MonstersESt6vectorIjSaIjEEEEmOT1_RT2_E5tuple) #28
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRKN9pb_sample8MonstersEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.574") align 8 @_ZZN6iguana6detail17pb_key_value_sizeILm0ELb1ERKN9pb_sample8MonstersESt6vectorIjSaIjEEEEmOT1_RT2_E5tuple, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.d unwind label %bb.as

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana6detail17pb_key_value_sizeILm0ELb1ERKN9pb_sample8MonstersESt6vectorIjSaIjEEEEmOT1_RT2_E5tuple) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.08.0.copyload = load i64, ptr @_ZZN6iguana6detail17pb_key_value_sizeILm0ELb1ERKN9pb_sample8MonstersESt6vectorIjSaIjEEEEmOT1_RT2_E5tuple, align 8, !tbaa !249
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.08.0.copyload ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !417  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !417  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph625

.lr.ph625:                                        ; preds = %bb.e, %_ZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_.exit.i
  %.0.i.i624 = phi i64 [ %i.ho, %_ZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_.exit.i ], [ 0, %bb.e ]
  %.sroa.011.0623 = phi ptr [ %i.hp, %_ZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_.exit.i ], [ %i.e, %bb.e ] ; 12 uses
  %i.i = load atomic i8, ptr @_ZGVZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_E5tupleB5cxx11 acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.i, !prof !173

bb.f:                                             ; preds = %.lr.ph625
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_E5tupleB5cxx11) #28
  %.not.i6.i = icmp eq i32 %i.k, 0
  br i1 %.not.i6.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRKN9pb_sample7MonsterEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.433") align 8 @_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_E5tupleB5cxx11, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.011.0623)
          to label %bb.h unwind label %bb.aq

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_E5tupleB5cxx11) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %.lr.ph625
  %.sroa.039.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_E5tupleB5cxx11, i64 192), align 8, !tbaa !249
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.011.0623, i64 %.sroa.039.0.copyload ; 5 uses
  %i.m = load atomic i8, ptr @_ZGVZN6iguana6detail17pb_key_value_sizeILm1ELb1ERKN9pb_sample4Vec3ESt6vectorIjSaIjEEEEmOT1_RT2_E5tuple acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.j, label %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm0EEEEDaSD_.exit.i, !prof !173

bb.j:                                             ; preds = %bb.i
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana6detail17pb_key_value_sizeILm1ELb1ERKN9pb_sample4Vec3ESt6vectorIjSaIjEEEEmOT1_RT2_E5tuple) #28
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm0EEEEDaSD_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRKN9pb_sample4Vec3EEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.514") align 8 @_ZZN6iguana6detail17pb_key_value_sizeILm1ELb1ERKN9pb_sample4Vec3ESt6vectorIjSaIjEEEEmOT1_RT2_E5tuple, ptr noundef nonnull align 8 dereferenceable(28) %i.l)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana6detail17pb_key_value_sizeILm1ELb1ERKN9pb_sample4Vec3ESt6vectorIjSaIjEEEEmOT1_RT2_E5tuple) #28
  br label %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm0EEEEDaSD_.exit.i

_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm0EEEEDaSD_.exit.i: ; preds = %bb.l, %bb.j, %bb.i
  %.sroa.049.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana6detail17pb_key_value_sizeILm1ELb1ERKN9pb_sample4Vec3ESt6vectorIjSaIjEEEEmOT1_RT2_E5tuple, i64 48), align 8, !tbaa !249
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.049.0.copyload
  %i.q = load float, ptr %i.p, align 4, !tbaa !402
  %i.r = fcmp oeq float %i.q, 0.000000e+00
  %..i.i.i = select i1 %i.r, i64 0, i64 5, !prof !169
  %.sroa.051.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana6detail17pb_key_value_sizeILm1ELb1ERKN9pb_sample4Vec3ESt6vectorIjSaIjEEEEmOT1_RT2_E5tuple, i64 24), align 8, !tbaa !249
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.051.0.copyload
  %i.t = load float, ptr %i.s, align 4, !tbaa !402
  %i.u = fcmp oeq float %i.t, 0.000000e+00
  %..i2.i.i = select i1 %i.u, i64 0, i64 5, !prof !169
  %i.v = add nuw nsw i64 %..i2.i.i, %..i.i.i
  %.sroa.053.0.copyload = load i64, ptr @_ZZN6iguana6detail17pb_key_value_sizeILm1ELb1ERKN9pb_sample4Vec3ESt6vectorIjSaIjEEEEmOT1_RT2_E5tuple, align 8, !tbaa !249
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.053.0.copyload
  %i.x = load float, ptr %i.w, align 4, !tbaa !402
  %i.y = fcmp oeq float %i.x, 0.000000e+00
  %..i3.i.i = select i1 %i.y, i64 0, i64 5, !prof !169
  %i.z = add nuw nsw i64 %i.v, %..i3.i.i          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !196
  %i.ab = add nuw nsw i64 %i.z, 2
  %.sroa.055.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_E5tupleB5cxx11, i64 168), align 8, !tbaa !249
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.011.0623, i64 %.sroa.055.0.copyload
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !164 ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm1EEEEDaSD_.exit.i, label %bb.n, !prof !169

bb.m:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.n:                                             ; preds = %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm0EEEEDaSD_.exit.i
  %i.ag = icmp slt i32 %i.ad, 0
  br i1 %i.ag, label %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm1EEEEDaSD_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = or i32 %i.ad, 1
  %i.ai = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ah, i1 true)
  %i.aj = xor i32 %i.ai, 31
  %i.ak = mul nuw nsw i32 %i.aj, 9
  %i.al = add nuw nsw i32 %i.ak, 73
  %i.am = lshr i32 %i.al, 6
  %narrow554 = add nuw nsw i32 %i.am, 1
  %i.an = zext nneg i32 %narrow554 to i64
  br label %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm1EEEEDaSD_.exit.i

_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm1EEEEDaSD_.exit.i: ; preds = %bb.n, %bb.o, %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm0EEEEDaSD_.exit.i
  %.0.i.i21.i = phi i64 [ 0, %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm0EEEEDaSD_.exit.i ], [ %i.an, %bb.o ], [ 11, %bb.n ]
  %i.ao = add nuw nsw i64 %.0.i.i21.i, %i.ab
  %.sroa.057.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_E5tupleB5cxx11, i64 144), align 8, !tbaa !249
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.011.0623, i64 %.sroa.057.0.copyload
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !164 ; 3 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm2EEEEDaSD_.exit.i, label %bb.p, !prof !169

bb.p:                                             ; preds = %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm1EEEEDaSD_.exit.i
  %i.as = icmp slt i32 %i.aq, 0
  br i1 %i.as, label %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm2EEEEDaSD_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = or i32 %i.aq, 1
  %i.au = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.at, i1 true)
  %i.av = xor i32 %i.au, 31
  %i.aw = mul nuw nsw i32 %i.av, 9
  %i.ax = add nuw nsw i32 %i.aw, 73
  %i.ay = lshr i32 %i.ax, 6
  %narrow555 = add nuw nsw i32 %i.ay, 1
  %i.az = zext nneg i32 %narrow555 to i64
  br label %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm2EEEEDaSD_.exit.i

_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm2EEEEDaSD_.exit.i: ; preds = %bb.p, %bb.q, %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm1EEEEDaSD_.exit.i
  %.0.i.i24.i = phi i64 [ 0, %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm1EEEEDaSD_.exit.i ], [ %i.az, %bb.q ], [ 11, %bb.p ]
  %i.ba = add nuw nsw i64 %i.ao, %.0.i.i24.i
  %.sroa.059.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_E5tupleB5cxx11, i64 120), align 8, !tbaa !249
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.011.0623, i64 %.sroa.059.0.copyload
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !93 ; 3 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm3EEEEDaSD_.exit.i, label %bb.r, !prof !169

bb.r:                                             ; preds = %_ZZN6iguana6detail17pb_key_value_sizeILm1ELb0ERKN9pb_sample7MonsterESt6vectorIjSaIjEEEEmOT1_RT2_ENKUlT_E_clISt17integral_constantImLm2EEEEDaSD_.exit.i
  %i.bf = trunc i64 %i.bd to i32
  %i.bg = or i32 %i.bf, 1
  %i.bh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bg, i1 true)
end_hunk_8
begin_hunk_9_@_ZZNK6iguana9base_implIN9pb_sample8MonstersELh8EE15get_fields_nameEvENKUlRKT_E_clINS_6detail10pb_field_tIS2_St6vectorINS1_7MonsterESaISC_EELm1ESE_EEEEDaS6_:bb.a

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !528
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !541
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.af, ptr %i.n, align 8, !tbaa !529
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3anyaSIRSt6vectorIN9pb_sample7MonsterESaIS3_EEEENSt9enable_ifIXsr21is_copy_constructibleINS7_IXnt9is_same_vINSt5decayIT_E4typeES_EESB_E4typeEEE5valueERS_E4typeEOS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %3 = alloca %"class.std::any", align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr @_ZNSt3any17_Manager_externalISt6vectorIN9pb_sample7MonsterESaIS3_EEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, ptr %3, align 8, !tbaa !536
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 3 uses
  invoke void @_ZNSt6vectorIN9pb_sample7MonsterESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #30
  resume { ptr, i32 } %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !94
  %i.d = load ptr, ptr %0, align 8, !tbaa !536    ; 2 uses
  %.not.i6.i = icmp eq ptr %i.d, null
  br i1 %.not.i6.i, label %_ZNSt3any5resetEv.exit7.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.d(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !536
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !536
  br label %_ZNSt3any5resetEv.exit7.i

bb.f:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #31
  unreachable

_ZNSt3any5resetEv.exit7.i:                        ; preds = %bb.e, %bb.c
  %i.g = phi ptr [ @_ZNSt3any17_Manager_externalISt6vectorIN9pb_sample7MonsterESaIS3_EEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, %bb.c ], [ %.pre.i, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %0, ptr %2, align 8, !tbaa !94
  invoke void %i.g(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %2)
          to label %_ZNSt3anyaSEOS_.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt3any5resetEv.exit7.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #31
  unreachable

_ZNSt3anyaSEOS_.exit:                             ; preds = %_ZNSt3any5resetEv.exit7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.pr.pre = load ptr, ptr %3, align 8, !tbaa !536 ; 2 uses
  %.not.i.i2 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i2, label %_ZNSt3anyD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3anyaSEOS_.exit
  invoke void %.pr.pre(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef null)
          to label %_ZNSt3anyD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

_ZNSt3anyD2Ev.exit:                               ; preds = %_ZNSt3anyaSEOS_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3any17_Manager_externalISt6vectorIN9pb_sample7MonsterESaIS3_EEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 noundef %0, ptr noundef %1, ptr noundef %2) #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 9 uses
  switch i32 %0, label %bb.k [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.g
    i32 4, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !94
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  store ptr @_ZTISt6vectorIN9pb_sample7MonsterESaIS1_EE, ptr %2, align 8, !tbaa !94
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 3 uses
  invoke void @_ZNSt6vectorIN9pb_sample7MonsterESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.d = load ptr, ptr %2, align 8, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !94
  %i.f = load ptr, ptr %1, align 8, !tbaa !536
  %i.g = load ptr, ptr %2, align 8, !tbaa !94
  store ptr %i.f, ptr %i.g, align 8, !tbaa !536
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 24) #30
  resume { ptr, i32 } %i.h

bb.g:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.b, null
  br i1 %i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !212  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !213  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN9pb_sample7MonsterES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.j, %bb.h ] ; 3 uses
  %i.m = load ptr, ptr %.05.i.i.i, align 8, !tbaa !126
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %.05.i.i.i) #28, !inline_history !29
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 232 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.l
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN9pb_sample7MonsterES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !30

_ZSt8_DestroyIPN9pb_sample7MonsterES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !212
  br label %_ZSt8_DestroyIPN9pb_sample7MonsterES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN9pb_sample7MonsterES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN9pb_sample7MonsterES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.h
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN9pb_sample7MonsterES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.j, %bb.h ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN9pb_sample7MonsterESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN9pb_sample7MonsterES1_EvT_S3_RSaIT0_E.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !214
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #30
  br label %_ZNSt6vectorIN9pb_sample7MonsterESaIS1_EED2Ev.exit

_ZNSt6vectorIN9pb_sample7MonsterESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9pb_sample7MonsterES1_EvT_S3_RSaIT0_E.exit.i, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %2, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.b, ptr %i.x, align 8, !tbaa !94
  %i.y = load ptr, ptr %1, align 8, !tbaa !536
  %i.z = load ptr, ptr %2, align 8, !tbaa !94
  store ptr %i.y, ptr %i.z, align 8, !tbaa !536
  store ptr null, ptr %1, align 8, !tbaa !536
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %_ZNSt6vectorIN9pb_sample7MonsterESaIS1_EED2Ev.exit, %bb.j, %bb.e, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9pb_sample7MonsterESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !212    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 232
  %i.g = icmp ugt i64 %2, 39755913951960240
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN9pb_sample7MonsterEE8allocateEmPKv.exit.i.i.i, !prof !169

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt15__new_allocatorIN9pb_sample7MonsterEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN9pb_sample7MonsterEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN9pb_sample7MonsterEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !212
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !213
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !214
  %i.m = load ptr, ptr %1, align 8, !tbaa !417    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !417  ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9pb_sample7MonsterESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN9pb_sample7MonsterEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN9pb_sample7MonsterEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 4 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN9pb_sample7MonsterEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN9pb_sample7MonsterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(232) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.08.012.i.i.i.i)
          to label %_ZSt10_ConstructIN9pb_sample7MonsterEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN9pb_sample7MonsterEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 232 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 232 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.n
  br i1 %i.r, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9pb_sample7MonsterESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2148

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #28 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %.013.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN9pb_sample7MonsterEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !126
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %.05.i.i.i.i.i.i) #28, !inline_history !2149
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 232 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %.013.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN9pb_sample7MonsterEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !30

_ZSt8_DestroyIPN9pb_sample7MonsterEEvT_S3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN9pb_sample7MonsterEEvT_S3_.exit.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #31
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN9pb_sample7MonsterEEvT_S3_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9pb_sample7MonsterESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN9pb_sample7MonsterEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.q, %_ZSt10_ConstructIN9pb_sample7MonsterEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !213
  ret void

.body:                                            ; preds = %bb.e
  %i.ac = load ptr, ptr %0, align 8, !tbaa !212   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN9pb_sample7MonsterESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !214
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #30
  br label %_ZNSt12_Vector_baseIN9pb_sample7MonsterESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN9pb_sample7MonsterESaIS1_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.z
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #13

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeI7LibTypeSt4pairIKS0_St10shared_ptrI11base_sampleEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE22_M_emplace_hint_uniqueIJS0_P18struct_pack_sampleEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Rb_tree<LibType, std::pair<const LibType, std::shared_ptr<base_sample>>, std::_Select1st<std::pair<const LibType, std::shared_ptr<base_sample>>>, std::less<LibType>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %0, ptr %4, align 8, !tbaa !672
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29 ; 7 uses
  tail call void @_ZNSt8_Rb_treeI7LibTypeSt4pairIKS0_St10shared_ptrI11base_sampleEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE17_M_construct_nodeIJS0_P18struct_pack_sampleEEEvPSt13_Rb_tree_nodeIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !675
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeI7LibTypeSt4pairIKS0_St10shared_ptrI11base_sampleEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load i32, ptr %i.c, align 4, !tbaa !144
  %i.k = load i32, ptr %i.i, align 4, !tbaa !144
  %i.l = icmp slt i32 %i.j, %i.k
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.m = phi i1 [ %i.l, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.m, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !143
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !143
  br label %_ZNSt8_Rb_treeI7LibTypeSt4pairIKS0_St10shared_ptrI11base_sampleEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeI7LibTypeSt4pairIKS0_St10shared_ptrI11base_sampleEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.q

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !162  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeI7LibTypeSt4pairIKS0_St10shared_ptrI11base_sampleEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.t, align 8, !tbaa !167
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !168
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !126
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !inline_history !74
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !126
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !inline_history !74
  br label %_ZNSt8_Rb_treeI7LibTypeSt4pairIKS0_St10shared_ptrI11base_sampleEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !94
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !164
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.j ], [ %i.ag, %bb.k ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.l, label %_ZNSt8_Rb_treeI7LibTypeSt4pairIKS0_St10shared_ptrI11base_sampleEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i, !prof !169

end_hunk_9
