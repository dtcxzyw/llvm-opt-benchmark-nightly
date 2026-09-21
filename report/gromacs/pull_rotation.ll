Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pull_rotation?download=true
inline.NumInlined: 1360
inline.NumDeleted: 556
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #32
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !109
  %i.s = load ptr, ptr %2, align 8, !tbaa !101    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !112  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !101
  %i.z = load i64, ptr %i.t, align 8, !tbaa !111
  store i64 %i.z, ptr %i.r, align 8, !tbaa !111
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !112
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !112
  store ptr %i.t, ptr %2, align 8, !tbaa !101
  store i64 0, ptr %i.ab, align 8, !tbaa !112
  store i8 0, ptr %i.t, align 8, !tbaa !111
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !109, !alias.scope !443, !noalias !444
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !101, !alias.scope !444, !noalias !443 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !alias.scope !444, !noalias !443 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !445
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !101, !alias.scope !443, !noalias !444
  %i.al = load i64, ptr %i.af, align 8, !tbaa !111, !alias.scope !444, !noalias !443
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !111, !alias.scope !443, !noalias !444
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !112, !alias.scope !444, !noalias !443
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !112, !alias.scope !443, !noalias !444
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !101, !alias.scope !444, !noalias !443
  store i64 0, ptr %i.an, align 8, !tbaa !112, !alias.scope !444, !noalias !443
  store i8 0, ptr %i.af, align 8, !tbaa !111, !alias.scope !444, !noalias !443
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !439

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !109, !alias.scope !446, !noalias !447
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !101, !alias.scope !447, !noalias !446 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !112, !alias.scope !447, !noalias !446 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !448
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !101, !alias.scope !446, !noalias !447
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !111, !alias.scope !447, !noalias !446
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !111, !alias.scope !446, !noalias !447
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !112, !alias.scope !447, !noalias !446
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !112, !alias.scope !446, !noalias !447
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !101, !alias.scope !447, !noalias !446
  store i64 0, ptr %i.bc, align 8, !tbaa !112, !alias.scope !447, !noalias !446
  store i8 0, ptr %i.au, align 8, !tbaa !111, !alias.scope !447, !noalias !446
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !439

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !137
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !138
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !136
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !137
  ret void
}

declare noundef ptr @_Z17enumValueToString20RotationGroupFitting(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z11do_rotationRKN3gmx7MpiCommEPK12gmx_domdec_tP10gmx_enfrotPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEEflb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr %4, ptr %5, float noundef %6, i64 noundef %7, i1 noundef zeroext %8) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = alloca [3 x float], align 8              ; 6 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_Z11do_per_stepll.exit.thread, label %_Z11do_per_stepll.exit

_Z11do_per_stepll.exit:                           ; preds = %bb.a
  %i.e = sext i32 %i.d to i64
  %i.f = srem i64 %7, %i.e
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %_Z11do_per_stepll.exit.thread

bb.b:                                             ; preds = %_Z11do_per_stepll.exit
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 101
  %i.i = load i8, ptr %i.h, align 1, !tbaa !63, !range !64, !noundef !65
  %i.j = trunc nuw i8 %i.i to i1
  br label %_Z11do_per_stepll.exit.thread

_Z11do_per_stepll.exit.thread:                    ; preds = %bb.a, %bb.b, %_Z11do_per_stepll.exit
  %i.k = phi i1 [ false, %_Z11do_per_stepll.exit ], [ %i.j, %bb.b ], [ false, %bb.a ] ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !62   ; 2 uses
  %.not.i136 = icmp eq i32 %i.m, 0
  br i1 %.not.i136, label %bb.d, label %_Z11do_per_stepll.exit138

_Z11do_per_stepll.exit138:                        ; preds = %_Z11do_per_stepll.exit.thread
  %i.n = sext i32 %i.m to i64
  %i.o = srem i64 %7, %i.n
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_Z11do_per_stepll.exit138
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 101
  %i.r = load i8, ptr %i.q, align 1, !tbaa !63, !range !64, !noundef !65
  %i.s = trunc nuw i8 %i.r to i1
  br label %bb.d

bb.d:                                             ; preds = %_Z11do_per_stepll.exit.thread, %bb.c, %_Z11do_per_stepll.exit138
  %10 = phi i1 [ false, %_Z11do_per_stepll.exit138 ], [ %i.s, %bb.c ], [ false, %_Z11do_per_stepll.exit.thread ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %i.u, 0
  %or.cond = select i1 %i.k, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.y = fpext float %6 to double
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.5, double noundef %i.y) #28 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41 ; 2 uses
  %.not222235 = icmp eq ptr %i.ab, %i.ad
  br i1 %.not222235, label %._crit_edge, label %.lr.ph237

.lr.ph237:                                        ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.g

._crit_edge:                                      ; preds = %bb.o, %bb.f
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.q, label %bb.p

bb.g:                                             ; preds = %.lr.ph237, %bb.o
  %.sroa.0207.0236 = phi ptr [ %i.ab, %.lr.ph237 ], [ %i.jn, %bb.o ] ; 32 uses
  %i.af = load ptr, ptr %.sroa.0207.0236, align 8, !tbaa !77 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !95
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 60
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !125
  %i.aj = fmul float %6, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 12
  store float %i.aj, ptr %i.ak, align 4, !tbaa !108
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 16 ; 2 uses
  %i.an = fpext float %i.aj to double
  %i.ao = fmul double %i.an, f0x400921FB54442D18
  %i.ap = fdiv double %i.ao, 1.800000e+02
  %i.aq = fptrunc double %i.ap to float           ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 72
  %i.as = load float, ptr %i.ar, align 8, !tbaa !61 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 28
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 40
  %i.av = fneg float %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 20 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 44
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 36
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 48
  %i.bc = load <2 x float>, ptr %i.al, align 8, !tbaa !61 ; 5 uses
  %i.bd = tail call noundef float @cosf(float noundef %i.aq) #28 ; 2 uses
  %i.be = tail call noundef float @sinf(float noundef %i.aq) #28
  %i.bf = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bd, i64 0 ; 2 uses
  %i.bg = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float poison>, %i.bf ; 3 uses
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.bi = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> %i.bf, <4 x i32> <i32 0, i32 0, i32 4, i32 1>
  %i.bk = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %i.bi, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.bl = insertelement <4 x float> %i.bk, float %i.as, i64 1 ; 2 uses
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bn = fmul <4 x float> %i.bj, %i.bm
  %i.bo = fmul <4 x float> %i.bn, %i.bh
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 2, i32 3, i32 1, i32 3, i32 2>
  %foldExtExtBinop = fmul <2 x float> %i.bc, %i.bc
  %i.bq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.br = extractelement <4 x float> %i.bg, i64 0
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.br, float %i.bd)
  store float %i.bs, ptr %i.am, align 8, !tbaa !61
  %i.bt = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bu = insertelement <2 x float> %i.bt, float %i.as, i64 1 ; 2 uses
  %i.bv = fmul <2 x float> %i.bu, %i.bu
  %i.bw = fneg <2 x float> %i.bc
  %i.bx = shufflevector <4 x float> %i.bl, <4 x float> %i.bi, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 4, i32 poison>
  %i.by = insertelement <8 x float> %i.bx, float %i.av, i64 0
  %i.bz = shufflevector <2 x float> %i.bv, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.ca = shufflevector <8 x float> %i.by, <8 x float> %i.bz, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 6, i32 12>
  %i.cb = shufflevector <2 x float> %i.bw, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cc = shufflevector <8 x float> %i.ca, <8 x float> %i.cb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.cd = shufflevector <4 x float> %i.bg, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ce = insertelement <2 x float> %i.cd, float %i.be, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1>
  %i.cg = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cc, <8 x float> %i.cf, <8 x float> %i.bp)
  store <8 x float> %i.cg, ptr %i.aw, align 4, !tbaa !61
  switch i32 %i.ag, label %bb.h [
    i32 8, label %.critedge
    i32 9, label %.critedge
    i32 10, label %.critedge
    i32 11, label %.critedge
    i32 5, label %.critedge
    i32 7, label %.critedge
  ]

bb.h:                                             ; preds = %bb.g
  br i1 %8, label %bb.i, label %.loopexit225

.critedge:                                        ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 144
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !141
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 152
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !142
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 160
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !501
  %i.cn = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !121
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 56 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !35
  %i.cr = tail call noundef i64 @_ZNK3gmx12LocalAtomSet13numAtomsLocalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !35
  %i.cu = tail call { ptr, ptr } @_ZNK3gmx12LocalAtomSet10localIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct)
  %i.cv = extractvalue { ptr, ptr } %i.cu, 0
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !35
  %i.cx = tail call { ptr, ptr } @_ZNK3gmx12LocalAtomSet15collectiveIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
  %i.cy = extractvalue { ptr, ptr } %i.cx, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 168
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !126
  tail call void @_Z27communicate_group_positionsRKN3gmx7MpiCommEPA3_fPA3_iS6_bPA3_KfiiPKiSB_S4_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ci, ptr noundef %i.ck, ptr noundef %i.cm, i1 noundef zeroext %8, ptr noundef %4, i32 noundef %i.co, i32 noundef %i.cs, ptr noundef %i.cv, ptr noundef %i.cy, ptr noundef %i.da, ptr noundef %3)
  br label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 56
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.dd = tail call { ptr, ptr } @_ZNK3gmx12LocalAtomSet15collectiveIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dc) ; 2 uses
  %i.de = extractvalue { ptr, ptr } %i.dd, 0      ; 10 uses
  %i.df = extractvalue { ptr, ptr } %i.dd, 1
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 2                 ; 4 uses
  %i.dk = icmp sgt i64 %i.dj, 0
  br i1 %i.dk, label %.lr.ph, label %.loopexit225

.lr.ph:                                           ; preds = %bb.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 200
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !123 ; 9 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 248
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !502 ; 9 uses
  %xtraiter = and i64 %i.dj, 7                    ; 3 uses
  %i.dp = icmp ult i64 %i.dj, 8
  br i1 %i.dp, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.dj, 9223372036854775800
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.new
  %.0130234 = phi i64 [ 0, %.lr.ph.new ], [ %i.ft, %bb.j ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.j ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0130234
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !60
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !61
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.0130234
  store float %i.du, ptr %i.dv, align 4, !tbaa !61
  %i.dw = or disjoint i64 %.0130234, 1            ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !60
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !61
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dw
  store float %i.eb, ptr %i.ec, align 4, !tbaa !61
  %i.ed = or disjoint i64 %.0130234, 2            ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !60
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !61
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ed
  store float %i.ei, ptr %i.ej, align 4, !tbaa !61
  %i.ek = or disjoint i64 %.0130234, 3            ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !60
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !61
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ek
  store float %i.ep, ptr %i.eq, align 4, !tbaa !61
  %i.er = or disjoint i64 %.0130234, 4            ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !60
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !61
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.er
  store float %i.ew, ptr %i.ex, align 4, !tbaa !61
  %i.ey = or disjoint i64 %.0130234, 5            ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !60
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.fb
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !61
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ey
  store float %i.fd, ptr %i.fe, align 4, !tbaa !61
  %i.ff = or disjoint i64 %.0130234, 6            ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !60
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !61
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ff
  store float %i.fk, ptr %i.fl, align 4, !tbaa !61
  %i.fm = or disjoint i64 %.0130234, 7            ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !60
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !61
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.fm
  store float %i.fr, ptr %i.fs, align 4, !tbaa !61
  %i.ft = add nuw nsw i64 %.0130234, 8            ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit225.loopexit.unr-lcssa, label %bb.j, !llvm.loop !449

.loopexit225.loopexit.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit225, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit225.loopexit.unr-lcssa, %.lr.ph
  %.0130234.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ft, %.loopexit225.loopexit.unr-lcssa ]
  %lcmp.mod694 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod694)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %.0130234.epil = phi i64 [ %.0130234.epil.init, %.epil.preheader ], [ %i.ga, %bb.k ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0130234.epil
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !60
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.fw
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !61
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.0130234.epil
  store float %i.fy, ptr %i.fz, align 4, !tbaa !61
  %i.ga = add nuw nsw i64 %.0130234.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit225, label %bb.k, !llvm.loop !450

.loopexit225:                                     ; preds = %.loopexit225.loopexit.unr-lcssa, %bb.k, %bb.i, %bb.h
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 56 ; 5 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !35
  %i.gd = tail call { ptr, ptr } @_ZNK3gmx12LocalAtomSet15collectiveIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gc)
  %i.ge = extractvalue { ptr, ptr } %i.gd, 0
  %i.gf = load ptr, ptr %i.gb, align 8, !tbaa !35
  %i.gg = tail call noundef i64 @_ZNK3gmx12LocalAtomSet13numAtomsLocalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gf)
  %.not.i139 = icmp eq i64 %i.gg, 0
  br i1 %.not.i139, label %_ZL22rotate_local_referenceP13gmx_enfrotgrp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit225
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 120
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 232
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i
  %.010.i = phi i64 [ 0, %.lr.ph.i ], [ %i.hv, %bb.l ] ; 3 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %.010.i
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !60
  %i.gl = sext i32 %i.gk to i64
  %i.gm = load ptr, ptr %i.gh, align 8, !tbaa !32
  %i.gn = getelementptr inbounds nuw [12 x i8], ptr %i.gm, i64 %i.gl ; 5 uses
  %i.go = load ptr, ptr %i.gi, align 8, !tbaa !503
  %i.gp = getelementptr inbounds nuw [12 x i8], ptr %i.go, i64 %.010.i ; 3 uses
  %i.gq = load float, ptr %i.am, align 8, !tbaa !61
  %i.gr = load float, ptr %i.gn, align 4, !tbaa !61
  %i.gs = load float, ptr %i.aw, align 4, !tbaa !61
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 4 ; 3 uses
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !61
  %i.gv = fmul float %i.gs, %i.gu
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.gr, float %i.gv)
  %i.gx = load float, ptr %i.az, align 8, !tbaa !61
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 3 uses
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !61
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.gx, float %i.gz, float %i.gw)
  store float %i.ha, ptr %i.gp, align 4, !tbaa !61
  %i.hb = load float, ptr %i.at, align 4, !tbaa !61
  %i.hc = load float, ptr %i.gn, align 4, !tbaa !61
  %i.hd = load float, ptr %i.ax, align 8, !tbaa !61
  %i.he = load float, ptr %i.gt, align 4, !tbaa !61
  %i.hf = fmul float %i.hd, %i.he
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.hb, float %i.hc, float %i.hf)
  %i.hh = load float, ptr %i.ba, align 4, !tbaa !61
  %i.hi = load float, ptr %i.gy, align 4, !tbaa !61
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.hh, float %i.hi, float %i.hg)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  store float %i.hj, ptr %i.hk, align 4, !tbaa !61
  %i.hl = load float, ptr %i.au, align 8, !tbaa !61
  %i.hm = load float, ptr %i.gn, align 4, !tbaa !61
  %i.hn = load float, ptr %i.ay, align 4, !tbaa !61
  %i.ho = load float, ptr %i.gt, align 4, !tbaa !61
  %i.hp = fmul float %i.hn, %i.ho
  %i.hq = tail call float @llvm.fmuladd.f32(float %i.hl, float %i.hm, float %i.hp)
  %i.hr = load float, ptr %i.bb, align 8, !tbaa !61
  %i.hs = load float, ptr %i.gy, align 4, !tbaa !61
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.hs, float %i.hq)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store float %i.ht, ptr %i.hu, align 4, !tbaa !61
  %i.hv = add nuw i64 %.010.i, 1                  ; 2 uses
  %i.hw = load ptr, ptr %i.gb, align 8, !tbaa !35
  %i.hx = tail call noundef i64 @_ZNK3gmx12LocalAtomSet13numAtomsLocalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hw)
  %i.hy = icmp ult i64 %i.hv, %i.hx
  br i1 %i.hy, label %bb.l, label %_ZL22rotate_local_referenceP13gmx_enfrotgrp.exit, !llvm.loop !451

_ZL22rotate_local_referenceP13gmx_enfrotgrp.exit: ; preds = %bb.l, %.loopexit225
  %i.hz = load ptr, ptr %i.gb, align 8, !tbaa !35
  %i.ia = tail call { ptr, ptr } @_ZNK3gmx12LocalAtomSet10localIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hz) ; 2 uses
  %i.ib = extractvalue { ptr, ptr } %i.ia, 0      ; 2 uses
  %i.ic = extractvalue { ptr, ptr } %i.ia, 1
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ib to i64
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = ashr exact i64 %i.if, 2                 ; 2 uses
  %i.ih = icmp sgt i64 %i.ig, 0
  br i1 %i.ih, label %.lr.ph.i140, label %_ZL16choose_pbc_imageN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEP13gmx_enfrotgrpPA3_Kfi.exit

.lr.ph.i140:                                      ; preds = %_ZL22rotate_local_referenceP13gmx_enfrotgrp.exit
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 232
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 108
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 116
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 240
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i140
  %.014.i = phi i64 [ 0, %.lr.ph.i140 ], [ %i.jb, %bb.m ] ; 4 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %.014.i
  %i.in = load i32, ptr %i.im, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.io = load ptr, ptr %i.ii, align 8, !tbaa !503
  %i.ip = getelementptr inbounds nuw [12 x i8], ptr %i.io, i64 %.014.i ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !61
  %i.is = load float, ptr %i.ik, align 4, !tbaa !61
  %i.it = fadd float %i.ir, %i.is
  %i.iu = load <2 x float>, ptr %i.ip, align 4, !tbaa !61
  %i.iv = load <2 x float>, ptr %i.ij, align 4, !tbaa !61
  %i.iw = fadd <2 x float> %i.iu, %i.iv
  store <2 x float> %i.iw, ptr %i.a, align 8, !tbaa !61
  store float %i.it, ptr %i.ae, align 8, !tbaa !61
  %i.ix = sext i32 %i.in to i64
  %i.iy = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ix
  %i.iz = load ptr, ptr %i.il, align 8, !tbaa !504
  %i.ja = getelementptr inbounds nuw [12 x i8], ptr %i.iz, i64 %.014.i
  call fastcc void @_ZL22copy_correct_pbc_imagePKfPfS0_PA3_S_i(ptr noundef nonnull readonly %i.iy, ptr noundef %i.ja, ptr noundef %i.a, ptr noundef readonly %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.jb = add nuw nsw i64 %.014.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.jb, %i.ig
  br i1 %exitcond.not.i, label %_ZL16choose_pbc_imageN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEP13gmx_enfrotgrpPA3_Kfi.exit, label %bb.m, !llvm.loop !452

_ZL16choose_pbc_imageN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEP13gmx_enfrotgrpPA3_Kfi.exit: ; preds = %bb.m, %_ZL22rotate_local_referenceP13gmx_enfrotgrp.exit
  %i.jc = load i32, ptr %i.af, align 8, !tbaa !95
  switch i32 %i.jc, label %bb.o [
    i32 1, label %bb.n
    i32 3, label %bb.n
  ]

bb.n:                                             ; preds = %_ZL16choose_pbc_imageN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEP13gmx_enfrotgrpPA3_Kfi.exit, %_ZL16choose_pbc_imageN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEP13gmx_enfrotgrpPA3_Kfi.exit
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 240
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !504
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 248
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !502
  %i.jh = load ptr, ptr %i.gb, align 8, !tbaa !35
  %i.ji = tail call noundef i64 @_ZNK3gmx12LocalAtomSet13numAtomsLocalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jh)
  %i.jj = trunc i64 %i.ji to i32
  %i.jk = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !121
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 96
  tail call void @_Z15get_center_commRKN3gmx7MpiCommEPA3_fPfiiS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.je, ptr noundef %i.jg, i32 noundef %i.jj, i32 noundef %i.jl, ptr noundef nonnull %i.jm)
  br label %bb.o

bb.o:                                             ; preds = %_ZL16choose_pbc_imageN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEP13gmx_enfrotgrpPA3_Kfi.exit, %bb.n, %.critedge
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0207.0236, i64 376 ; 2 uses
  %.not222 = icmp eq ptr %i.jn, %i.ad
  br i1 %.not222, label %._crit_edge, label %bb.g

bb.p:                                             ; preds = %._crit_edge
  tail call void @_Z24ddReopenBalanceRegionCpuPK12gmx_domdec_t(ptr noundef nonnull %1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  %i.jo = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 5 uses
  %i.jp = load ptr, ptr %i.ac, align 8, !tbaa !41 ; 2 uses
  %.not223241 = icmp eq ptr %i.jo, %i.jp
  br i1 %.not223241, label %._crit_edge246, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.q
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jr = fpext float %6 to double                ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %or.cond.i169 = or i1 %i.k, %10                 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %.phi.trans.insert.i.i172 = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  br label %bb.r

._crit_edge246:                                   ; preds = %_ZL8do_fixedP13gmx_enfrotgrpbb.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret void

bb.r:                                             ; preds = %.lr.ph245, %_ZL8do_fixedP13gmx_enfrotgrpbb.exit
  %indvar = phi i64 [ 0, %.lr.ph245 ], [ %indvar.next, %_ZL8do_fixedP13gmx_enfrotgrpbb.exit ] ; 4 uses
  %.sroa.0197.0242 = phi ptr [ %i.jo, %.lr.ph245 ], [ %i.cdc, %_ZL8do_fixedP13gmx_enfrotgrpbb.exit ] ; 140 uses
  %i.jx = mul i64 %indvar, 376
  %i.jy = getelementptr i8, ptr %i.jo, i64 %i.jx
  %scevgep482.a = getelementptr i8, ptr %i.jy, i64 76
  %i.jz = mul i64 %indvar, 376
  %i.ka = getelementptr i8, ptr %i.jo, i64 %i.jz
  %scevgep409.a = getelementptr i8, ptr %i.ka, i64 76
  %i.kb = mul i64 %indvar, 376
  %i.kc = getelementptr i8, ptr %i.jo, i64 %i.kb
  %scevgep305.a = getelementptr i8, ptr %i.kc, i64 76
  %i.kd = load ptr, ptr %.sroa.0197.0242, align 8, !tbaa !77 ; 4 uses
  br i1 %i.k, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ke = load i32, ptr %i.t, align 4, !tbaa !103
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %bb.t, label %.critedge135

bb.t:                                             ; preds = %bb.s
  %i.kg = load ptr, ptr %i.jq, align 8, !tbaa !24
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 12
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !108
  %i.kj = fpext float %i.ki to double
  %i.kk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kg, ptr noundef nonnull @.str.4, double noundef %i.kj) #28 ; 0 uses
  br label %.critedge135

bb.u:                                             ; preds = %bb.r
  br i1 %10, label %.critedge135, label %.loopexit

.critedge135:                                     ; preds = %bb.t, %bb.s, %bb.u
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kd, i64 80
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !86
  %i.kn = icmp eq i32 %i.km, 2
  br i1 %i.kn, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %.critedge135
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kd, i64 84
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !87 ; 2 uses
  %i.kq = icmp sgt i32 %i.kp, 0
  br i1 %i.kq, label %.lr.ph240, label %.loopexit

.lr.ph240:                                        ; preds = %bb.v
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 368
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !88 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 64
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 12
  %i.kv = load ptr, ptr %i.ks, align 8, !tbaa !104
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !143
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 72
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !90
  %wide.trip.count = zext nneg i32 %i.kp to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph240, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph240 ], [ %indvars.iv.next, %bb.w ] ; 4 uses
  %i.lb = load float, ptr %i.ku, align 4, !tbaa !108
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !61
  %i.le = fadd float %i.lb, %i.ld
  %i.lf = getelementptr inbounds nuw [36 x i8], ptr %i.kx, i64 %indvars.iv ; 2 uses
  %i.lg = fpext float %i.le to double
  %i.lh = fmul double %i.lg, f0x400921FB54442D18
  %i.li = fdiv double %i.lh, 1.800000e+02
  %i.lj = fptrunc double %i.li to float           ; 2 uses
  %i.lk = load float, ptr %i.ky, align 8, !tbaa !61 ; 3 uses
  %i.ll = fneg float %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.ln = load <2 x float>, ptr %i.kt, align 8, !tbaa !61 ; 5 uses
  %i.lo = call noundef float @cosf(float noundef %i.lj) #28 ; 2 uses
  %i.lp = call noundef float @sinf(float noundef %i.lj) #28
  %i.lq = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.lo, i64 0 ; 2 uses
  %i.lr = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float poison>, %i.lq ; 3 uses
  %i.ls = shufflevector <4 x float> %i.lr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.lt = shufflevector <2 x float> %i.ln, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.lu = shufflevector <4 x float> %i.lt, <4 x float> %i.lq, <4 x i32> <i32 0, i32 0, i32 4, i32 1>
  %i.lv = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %i.lt, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.lw = insertelement <4 x float> %i.lv, float %i.lk, i64 1 ; 2 uses
  %i.lx = shufflevector <4 x float> %i.lw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ly = fmul <4 x float> %i.lu, %i.lx
  %i.lz = fmul <4 x float> %i.ly, %i.ls
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 2, i32 3, i32 1, i32 3, i32 2>
  %foldExtExtBinop674 = fmul <2 x float> %i.ln, %i.ln
  %i.mb = extractelement <2 x float> %foldExtExtBinop674, i64 0
  %i.mc = extractelement <4 x float> %i.lr, i64 0
  %i.md = call float @llvm.fmuladd.f32(float %i.mb, float %i.mc, float %i.lo)
  store float %i.md, ptr %i.lf, align 4, !tbaa !61
  %i.me = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mf = insertelement <2 x float> %i.me, float %i.lk, i64 1 ; 2 uses
  %i.mg = fmul <2 x float> %i.mf, %i.mf
  %i.mh = fneg <2 x float> %i.ln
  %i.mi = shufflevector <4 x float> %i.lw, <4 x float> %i.lt, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 4, i32 poison>
  %i.mj = insertelement <8 x float> %i.mi, float %i.ll, i64 0
  %i.mk = shufflevector <2 x float> %i.mg, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.ml = shufflevector <8 x float> %i.mj, <8 x float> %i.mk, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 6, i32 12>
  %i.mm = shufflevector <2 x float> %i.mh, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mn = shufflevector <8 x float> %i.ml, <8 x float> %i.mm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.mo = shufflevector <4 x float> %i.lr, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mp = insertelement <2 x float> %i.mo, float %i.lp, i64 0
  %i.mq = shufflevector <2 x float> %i.mp, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1>
  %i.mr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.mn, <8 x float> %i.mq, <8 x float> %i.ma)
  store <8 x float> %i.mr, ptr %i.lm, align 4, !tbaa !61
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.ms, align 4, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond258.not, label %.loopexit, label %bb.w, !llvm.loop !453

.loopexit:                                        ; preds = %bb.w, %bb.v, %bb.u, %.critedge135
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 76 ; 10 uses
  store float 0.000000e+00, ptr %i.mt, align 4, !tbaa !58
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 220 ; 9 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 224 ; 8 uses
  store <2 x float> zeroinitializer, ptr %i.mu, align 4, !tbaa !61
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 228 ; 9 uses
  store float 0.000000e+00, ptr %i.mw, align 4, !tbaa !82
  %i.mx = load i32, ptr %i.kd, align 8, !tbaa !95
  switch i32 %i.mx, label %bb.bi [
    i32 0, label %bb.x
    i32 1, label %bb.x
    i32 2, label %bb.x
    i32 3, label %bb.x
    i32 4, label %bb.af
    i32 5, label %bb.al
    i32 6, label %bb.at
    i32 7, label %bb.at
    i32 9, label %bb.bg
    i32 11, label %bb.bg
    i32 8, label %bb.bh
    i32 10, label %bb.bh
  ]

bb.x:                                             ; preds = %.loopexit, %.loopexit, %.loopexit, %.loopexit
  %i.my = load ptr, ptr %.sroa.0197.0242, align 8, !tbaa !77 ; 3 uses
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !95
  br i1 %or.cond.i169, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 80
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !86
  %i.nc = icmp eq i32 %i.nb, 2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.nd = phi i1 [ false, %bb.x ], [ %i.nc, %bb.y ]
  %i.ne = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !121
  %i.ng = sitofp i32 %i.nf to float
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 216
  %i.ni = load float, ptr %i.nh, align 8, !tbaa !124
  %i.nj = fmul float %i.ni, %i.ng
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 56 ; 3 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !35
  %i.nm = call { ptr, ptr } @_ZNK3gmx12LocalAtomSet15collectiveIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nl)
  %i.nn = extractvalue { ptr, ptr } %i.nm, 0
  %i.no = load ptr, ptr %i.nk, align 8, !tbaa !35
  %i.np = call noundef i64 @_ZNK3gmx12LocalAtomSet13numAtomsLocalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.no)
  %.not.i141 = icmp eq i64 %i.np, 0
  br i1 %.not.i141, label %_ZL8do_fixedP13gmx_enfrotgrpbb.exit, label %.lr.ph87.i

.lr.ph87.i:                                       ; preds = %bb.z
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 240
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 96 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 100
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 104 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 232
  %i.nv = and i32 %i.mz, -2
  %i.nw = icmp eq i32 %i.nv, 2                    ; 2 uses
  %i.nx = getelementptr i8, ptr %.sroa.0197.0242, i64 64 ; 5 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 68 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 72 ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 248
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 80
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 368
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 120
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph87.i
  %.06285.i = phi i64 [ 0, %.lr.ph87.i ], [ %i.abc, %bb.ae ] ; 6 uses
  %i.oe = load ptr, ptr %i.nq, align 8, !tbaa !504
  %i.of = getelementptr inbounds nuw [12 x i8], ptr %i.oe, i64 %.06285.i ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 2 uses
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !61
  %i.oj = load float, ptr %i.nt, align 8, !tbaa !61
  %i.ok = fsub float %i.oi, %i.oj                 ; 7 uses
  %i.ol = load ptr, ptr %i.nu, align 8, !tbaa !503
  %i.om = getelementptr inbounds nuw [12 x i8], ptr %i.ol, i64 %.06285.i ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  %i.oo = load <2 x float>, ptr %i.of, align 4, !tbaa !61
  %i.op = load <2 x float>, ptr %i.nr, align 8, !tbaa !61
  %i.oq = fsub <2 x float> %i.oo, %i.op           ; 11 uses
  %i.or = load <2 x float>, ptr %i.om, align 4, !tbaa !61
  %i.os = fsub <2 x float> %i.or, %i.oq           ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.om, i64 8 ; 2 uses
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !61
  %i.ov = fsub float %i.ou, %i.ok                 ; 3 uses
  br i1 %i.nw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ow = load float, ptr %i.nz, align 8, !tbaa !61 ; 2 uses
  %i.ox = load <2 x float>, ptr %i.nx, align 8, !tbaa !61 ; 3 uses
  %foldExtExtBinop676 = fmul <2 x float> %i.os, %i.ox
  %i.oy = extractelement <2 x float> %foldExtExtBinop676, i64 1
  %i.oz = extractelement <2 x float> %i.os, i64 0
  %i.pa = extractelement <2 x float> %i.ox, i64 0
  %i.pb = call float @llvm.fmuladd.f32(float %i.oz, float %i.pa, float %i.oy)
  %i.pc = call noundef float @llvm.fmuladd.f32(float %i.ov, float %i.ow, float %i.pb) ; 2 uses
  %i.pd = insertelement <2 x float> poison, float %i.pc, i64 0
  %i.pe = shufflevector <2 x float> %i.pd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pf = fmul <2 x float> %i.ox, %i.pe
  %i.pg = fmul float %i.ow, %i.pc
  %i.ph = fsub <2 x float> %i.os, %i.pf
  %i.pi = fsub float %i.ov, %i.pg
end_hunk_0
begin_hunk_1_@_Z11do_rotationRKN3gmx7MpiCommEPK12gmx_domdec_tP10gmx_enfrotPA3_KfNS_8ArrayRefIKNS_11BasicVectorIfEEEEflb:bb.a
  %i.bwy = fmul <8 x double> %i.bwk, %i.bwx
  %i.bwz = getelementptr inbounds nuw [4 x i8], ptr %i.bsy, i64 %index641 ; 2 uses
  %wide.load667 = load <8 x float>, ptr %i.bwz, align 4, !tbaa !61, !alias.scope !532, !noalias !533
  %i.bxa = fpext <8 x float> %wide.load667 to <8 x double>
  %i.bxb = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.bwy, <8 x double> %i.bwx, <8 x double> %i.bxa)
  %i.bxc = fptrunc <8 x double> %i.bxb to <8 x float>
  store <8 x float> %i.bxc, ptr %i.bwz, align 4, !tbaa !61, !alias.scope !532, !noalias !533
  %index.next668 = add nuw i64 %index641, 8       ; 2 uses
  %vec.ind.next669 = add nuw nsw <8 x i64> %vec.ind642, splat (i64 8)
  %i.bxd = icmp eq i64 %index.next668, %n.vec627
  br i1 %i.bxd, label %middle.block670, label %vector.body640, !llvm.loop !498

middle.block670:                                  ; preds = %vector.body640
  %cmp.n671 = icmp eq i64 %n.vec627, %wide.trip.count.i180
  br i1 %cmp.n671, label %.loopexit.i173, label %scalar.ph624.preheader

scalar.ph624.preheader:                           ; preds = %vector.memcheck608, %.lr.ph.split.i, %middle.block670
  %indvars.iv.i181.ph = phi i64 [ 0, %vector.memcheck608 ], [ 0, %.lr.ph.split.i ], [ %n.vec627, %middle.block670 ]
  br label %scalar.ph624

scalar.ph624:                                     ; preds = %scalar.ph624.preheader, %scalar.ph624
  %indvars.iv.i181 = phi i64 [ %indvars.iv.next.i182, %scalar.ph624 ], [ %indvars.iv.i181.ph, %scalar.ph624.preheader ] ; 3 uses
  %i.bxe = getelementptr inbounds nuw [36 x i8], ptr %i.bvu, i64 %indvars.iv.i181 ; 9 uses
  %i.bxf = load float, ptr %i.bxe, align 4, !tbaa !61
  %i.bxg = load float, ptr %i.bvx, align 4, !tbaa !61 ; 3 uses
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bxe, i64 4
  %i.bxi = load float, ptr %i.bxh, align 4, !tbaa !61
  %i.bxj = load float, ptr %i.bvy, align 4, !tbaa !61 ; 3 uses
  %i.bxk = fmul float %i.bxi, %i.bxj
  %i.bxl = call float @llvm.fmuladd.f32(float %i.bxf, float %i.bxg, float %i.bxk)
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bxe, i64 8
  %i.bxn = load float, ptr %i.bxm, align 4, !tbaa !61
  %i.bxo = load float, ptr %i.bvz, align 4, !tbaa !61 ; 3 uses
  %i.bxp = call float @llvm.fmuladd.f32(float %i.bxn, float %i.bxo, float %i.bxl)
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxe, i64 12
  %i.bxr = load float, ptr %i.bxq, align 4, !tbaa !61
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bxe, i64 16
  %i.bxt = load float, ptr %i.bxs, align 4, !tbaa !61
  %i.bxu = fmul float %i.bxj, %i.bxt
  %i.bxv = call float @llvm.fmuladd.f32(float %i.bxr, float %i.bxg, float %i.bxu)
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bxe, i64 20
  %i.bxx = load float, ptr %i.bxw, align 4, !tbaa !61
  %i.bxy = call float @llvm.fmuladd.f32(float %i.bxx, float %i.bxo, float %i.bxv)
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxe, i64 24
  %i.bya = load float, ptr %i.bxz, align 4, !tbaa !61
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bxe, i64 28
  %i.byc = load float, ptr %i.byb, align 4, !tbaa !61
  %i.byd = fmul float %i.bxj, %i.byc
  %i.bye = call float @llvm.fmuladd.f32(float %i.bya, float %i.bxg, float %i.byd)
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bxe, i64 32
  %i.byg = load float, ptr %i.byf, align 4, !tbaa !61
  %i.byh = call float @llvm.fmuladd.f32(float %i.byg, float %i.bxo, float %i.bye)
  %i.byi = fmul float %i.bqh, %i.bxy
  %i.byj = call float @llvm.fmuladd.f32(float %i.bqd, float %i.bxp, float %i.byi)
  %i.byk = call noundef float @llvm.fmuladd.f32(float %i.bqk, float %i.byh, float %i.byj)
  %i.byl = load float, ptr %i.bmd, align 8, !tbaa !132
  %i.bym = fpext float %i.byl to double
  %i.byn = fmul double %i.bym, 5.000000e-01
  %i.byo = fmul double %i.byn, %i.bsu
  %i.byp = fmul double %i.byo, %i.bsv
  %i.byq = fpext float %i.byk to double           ; 2 uses
  %i.byr = fmul double %i.byp, %i.byq
  %i.bys = getelementptr inbounds nuw [4 x i8], ptr %i.bsy, i64 %indvars.iv.i181 ; 2 uses
  %i.byt = load float, ptr %i.bys, align 4, !tbaa !61
  %i.byu = fpext float %i.byt to double
  %i.byv = call double @llvm.fmuladd.f64(double %i.byr, double %i.byq, double %i.byu)
  %i.byw = fptrunc double %i.byv to float
  store float %i.byw, ptr %i.bys, align 4, !tbaa !61
  %indvars.iv.next.i182 = add nuw nsw i64 %indvars.iv.i181, 1 ; 2 uses
  %exitcond.not.i183 = icmp eq i64 %indvars.iv.next.i182, %wide.trip.count.i180
  br i1 %exitcond.not.i183, label %.loopexit.i173, label %scalar.ph624, !llvm.loop !499

.loopexit.i173:                                   ; preds = %scalar.ph624, %scalar.ph559, %middle.block670, %middle.block605, %.preheader.i178, %bb.bd
  br i1 %i.k, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.loopexit.i173
  %i.byx = load float, ptr %i.blw, align 8, !tbaa !61
  %i.byy = fsub float %.sroa.0180.0.i, %i.byx     ; 2 uses
  %i.byz = load float, ptr %i.blx, align 4, !tbaa !61
  %i.bza = fsub float %.sroa.10184.0.i, %i.byz    ; 2 uses
  %i.bzb = load float, ptr %i.bly, align 8, !tbaa !61
  %i.bzc = fsub float %.sroa.18188.0.i, %i.bzb    ; 2 uses
  %i.bzd = load float, ptr %i.bsp, align 4, !tbaa !61 ; 2 uses
  %i.bze = load float, ptr %i.bso, align 4, !tbaa !61 ; 2 uses
  %i.bzf = fneg float %i.bze
  %i.bzg = fmul float %i.bzc, %i.bzf
  %i.bzh = call float @llvm.fmuladd.f32(float %i.bza, float %i.bzd, float %i.bzg)
  %i.bzi = load float, ptr %i.bsk, align 4, !tbaa !61 ; 2 uses
  %i.bzj = fneg float %i.bzd
  %i.bzk = fmul float %i.byy, %i.bzj
  %i.bzl = call float @llvm.fmuladd.f32(float %i.bzc, float %i.bzi, float %i.bzk)
  %i.bzm = fneg float %i.bzi
  %i.bzn = fmul float %i.bza, %i.bzm
  %i.bzo = call float @llvm.fmuladd.f32(float %i.byy, float %i.bze, float %i.bzn)
  %i.bzp = load float, ptr %i.blz, align 8, !tbaa !61 ; 6 uses
  %i.bzq = load float, ptr %i.bma, align 4, !tbaa !61 ; 6 uses
  %i.bzr = fmul float %i.bzl, %i.bzq
  %i.bzs = call float @llvm.fmuladd.f32(float %i.bzh, float %i.bzp, float %i.bzr)
  %i.bzt = load float, ptr %i.bmb, align 8, !tbaa !61 ; 6 uses
  %i.bzu = call noundef float @llvm.fmuladd.f32(float %i.bzo, float %i.bzt, float %i.bzs)
  %i.bzv = load float, ptr %i.mu, align 4, !tbaa !80
  %i.bzw = fadd float %i.bzv, %i.bzu
  store float %i.bzw, ptr %i.mu, align 4, !tbaa !80
  %i.bzx = fmul float %.sroa.8129.0.i, %i.bzq
  %i.bzy = call float @llvm.fmuladd.f32(float %i.bzp, float %.sroa.0125.0.i, float %i.bzx)
  %i.bzz = call noundef float @llvm.fmuladd.f32(float %i.bzt, float %.sroa.14.0.i, float %i.bzy) ; 3 uses
  %i.caa = fmul float %i.bzp, %i.bzz
  %i.cab = fmul float %i.bzq, %i.bzz
  %i.cac = fmul float %i.bzt, %i.bzz
  %i.cad = fsub float %.sroa.0125.0.i, %i.caa     ; 5 uses
  %i.cae = fsub float %.sroa.8129.0.i, %i.cab     ; 5 uses
  %i.caf = fsub float %.sroa.14.0.i, %i.cac       ; 5 uses
  %i.cag = fmul float %i.bpw, %i.bzq
  %i.cah = call float @llvm.fmuladd.f32(float %i.bzp, float %i.bpu, float %i.cag)
  %i.cai = call noundef float @llvm.fmuladd.f32(float %i.bzt, float %i.bpy, float %i.cah) ; 3 uses
  %i.caj = fmul float %i.bzp, %i.cai
  %i.cak = fmul float %i.bzq, %i.cai
  %i.cal = fmul float %i.bzt, %i.cai
  %i.cam = fsub float %i.bpu, %i.caj              ; 7 uses
  %i.can = fsub float %i.bpw, %i.cak              ; 7 uses
  %i.cao = fsub float %i.bpy, %i.cal              ; 7 uses
  %i.cap = fneg float %i.cae
  %i.caq = fmul float %i.cao, %i.cap
  %i.car = call float @llvm.fmuladd.f32(float %i.can, float %i.caf, float %i.caq)
  %i.cas = fneg float %i.caf
  %i.cat = fmul float %i.cam, %i.cas
  %i.cau = call float @llvm.fmuladd.f32(float %i.cao, float %i.cad, float %i.cat)
  %i.cav = fneg float %i.cad
  %i.caw = fmul float %i.can, %i.cav
  %i.cax = call float @llvm.fmuladd.f32(float %i.cam, float %i.cae, float %i.caw)
  %i.cay = fmul float %i.bzq, %i.cau
  %i.caz = call float @llvm.fmuladd.f32(float %i.bzp, float %i.car, float %i.cay)
  %i.cba = call noundef float @llvm.fmuladd.f32(float %i.bzt, float %i.cax, float %i.caz)
  %i.cbb = fcmp ult float %i.cba, 0.000000e+00
  %i.cbc = fneg float %i.can
  %i.cbd = fmul float %i.caf, %i.cbc
  %i.cbe = call float @llvm.fmuladd.f32(float %i.cae, float %i.cao, float %i.cbd) ; 2 uses
  %i.cbf = fneg float %i.cao
  %i.cbg = fmul float %i.cad, %i.cbf
  %i.cbh = call float @llvm.fmuladd.f32(float %i.caf, float %i.cam, float %i.cbg) ; 2 uses
  %i.cbi = fneg float %i.cam
  %i.cbj = fmul float %i.cae, %i.cbi
  %i.cbk = call float @llvm.fmuladd.f32(float %i.cad, float %i.can, float %i.cbj) ; 2 uses
  %i.cbl = fmul float %i.cbh, %i.cbh
  %i.cbm = call float @llvm.fmuladd.f32(float %i.cbe, float %i.cbe, float %i.cbl)
  %i.cbn = call noundef float @llvm.fmuladd.f32(float %i.cbk, float %i.cbk, float %i.cbm)
  %sqrt.i.i12.i.i175 = call noundef float @llvm.sqrt.f32(float %i.cbn)
  %i.cbo = fmul float %i.cae, %i.can
  %i.cbp = call float @llvm.fmuladd.f32(float %i.cad, float %i.cam, float %i.cbo)
  %i.cbq = call noundef float @llvm.fmuladd.f32(float %i.caf, float %i.cao, float %i.cbp)
  %i.cbr = call noundef float @atan2f(float noundef %sqrt.i.i12.i.i175, float noundef %i.cbq) #28 ; 2 uses
  %i.cbs = fneg float %i.cbr
  %storemerge.i.i176 = select i1 %i.cbb, float %i.cbr, float %i.cbs
  %i.cbt = fmul float %i.can, %i.can
  %i.cbu = call float @llvm.fmuladd.f32(float %i.cam, float %i.cam, float %i.cbt)
  %i.cbv = call noundef float @llvm.fmuladd.f32(float %i.cao, float %i.cao, float %i.cbu)
  %sqrt.i.i.i177 = call noundef float @llvm.sqrt.f32(float %i.cbv) ; 2 uses
  %i.cbw = load float, ptr %i.mv, align 8, !tbaa !81
  %i.cbx = call float @llvm.fmuladd.f32(float %storemerge.i.i176, float %sqrt.i.i.i177, float %i.cbw)
  store float %i.cbx, ptr %i.mv, align 8, !tbaa !81
  %i.cby = load float, ptr %i.mw, align 4, !tbaa !82
  %i.cbz = fadd float %i.cby, %sqrt.i.i.i177
  store float %i.cbz, ptr %i.mw, align 4, !tbaa !82
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.loopexit.i173
  %i.cca = add nuw nsw i64 %.098199.i, 1          ; 2 uses
  %exitcond212.not.i = icmp eq i64 %i.cca, %i.blf
  br i1 %exitcond212.not.i, label %._crit_edge.loopexit.i174, label %bb.az, !llvm.loop !500

_ZL17do_radial_motion2P13gmx_enfrotgrpN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEEPA3_Kfbb.exit: ; preds = %bb.ay, %._crit_edge.loopexit.i174
  %.0100.lcssa.i = phi double [ 0.000000e+00, %bb.ay ], [ %i.bmi, %._crit_edge.loopexit.i174 ]
  %i.ccb = getelementptr inbounds nuw i8, ptr %.pre217.i, i64 64
  %i.ccc = load float, ptr %i.ccb, align 8, !tbaa !132
  %i.ccd = fpext float %i.ccc to double
  %i.cce = fmul double %i.ccd, 5.000000e-01
  %i.ccf = fmul double %.0100.lcssa.i, %i.cce
  %i.ccg = fptrunc double %i.ccf to float
  store float %i.ccg, ptr %i.mt, align 4, !tbaa !58
  br label %_ZL8do_fixedP13gmx_enfrotgrpbb.exit

bb.bg:                                            ; preds = %.loopexit, %.loopexit
  %i.cch = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 144 ; 2 uses
  %i.cci = load ptr, ptr %i.cch, align 8, !tbaa !141
  %i.ccj = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 200
  %i.cck = load ptr, ptr %i.ccj, align 8, !tbaa !123
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 2 uses
  %i.ccm = load i32, ptr %i.ccl, align 8, !tbaa !121
  %i.ccn = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 96 ; 2 uses
  call void @_Z10get_centerPA3_KfPfiS2_(ptr noundef %i.cci, ptr noundef %i.cck, i32 noundef %i.ccm, ptr noundef nonnull %i.ccn)
  %i.cco = load <2 x float>, ptr %i.ccn, align 8, !tbaa !61
  %i.ccp = fneg <2 x float> %i.cco
  store <2 x float> %i.ccp, ptr %i.b, align 8, !tbaa !61
  %i.ccq = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 104
  %i.ccr = load float, ptr %i.ccq, align 8, !tbaa !61
  %i.ccs = fneg float %i.ccr
  store float %i.ccs, ptr %i.js, align 8, !tbaa !61
  %i.cct = load ptr, ptr %i.cch, align 8, !tbaa !141
  %i.ccu = load i32, ptr %i.ccl, align 8, !tbaa !121
  call void @_Z11translate_xPA3_fiPKf(ptr noundef %i.cct, i32 noundef %i.ccu, ptr noundef nonnull %i.b)
  %i.ccv = load i32, ptr %i.t, align 4, !tbaa !103
  %i.ccw = icmp eq i32 %i.ccv, 0
  call fastcc void @_ZL11do_flexiblebP10gmx_enfrotP13gmx_enfrotgrpN3gmx8ArrayRefIKNS3_11BasicVectorIfEEEEPA3_Kfdbb(i1 noundef zeroext %i.ccw, ptr noundef %2, ptr noundef %.sroa.0197.0242, ptr %4, ptr noundef %3, double noundef %i.jr, i1 noundef zeroext %i.k, i1 noundef zeroext %10)
  br label %_ZL8do_fixedP13gmx_enfrotgrpbb.exit

bb.bh:                                            ; preds = %.loopexit, %.loopexit
  %i.ccx = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 96
  store <2 x float> zeroinitializer, ptr %i.ccx, align 8, !tbaa !61
  %i.ccy = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 104
  store float 0.000000e+00, ptr %i.ccy, align 8, !tbaa !61
  %i.ccz = load i32, ptr %i.t, align 4, !tbaa !103
  %i.cda = icmp eq i32 %i.ccz, 0
  call fastcc void @_ZL11do_flexiblebP10gmx_enfrotP13gmx_enfrotgrpN3gmx8ArrayRefIKNS3_11BasicVectorIfEEEEPA3_Kfdbb(i1 noundef zeroext %i.cda, ptr noundef %2, ptr noundef %.sroa.0197.0242, ptr %4, ptr noundef %3, double noundef %i.jr, i1 noundef zeroext %i.k, i1 noundef zeroext %10)
  br label %_ZL8do_fixedP13gmx_enfrotgrpbb.exit

bb.bi:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(70) @.str.2, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 4064, ptr noundef nonnull @.str.140) #32
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.cdb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  resume { ptr, i32 } %i.cdb

_ZL8do_fixedP13gmx_enfrotgrpbb.exit:              ; preds = %bb.ae, %bb.z, %bb.bh, %bb.bg, %_ZL17do_radial_motion2P13gmx_enfrotgrpN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEEPA3_Kfbb.exit, %_ZL19do_radial_motion_pfP13gmx_enfrotgrpN3gmx8ArrayRefIKNS1_11BasicVectorIfEEEEPA3_Kfbb.exit, %_ZL16do_radial_motionP13gmx_enfrotgrpbb.exit
  %i.cdc = getelementptr inbounds nuw i8, ptr %.sroa.0197.0242, i64 376 ; 2 uses
  %.not223 = icmp eq ptr %i.cdc, %i.jp
  %indvar.next = add i64 %indvar, 1
  br i1 %.not223, label %._crit_edge246, label %bb.r
}

declare void @_Z27communicate_group_positionsRKN3gmx7MpiCommEPA3_fPA3_iS6_bPA3_KfiiPKiSB_S4_S9_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK3gmx12LocalAtomSet13numAtomsLocalEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare { ptr, ptr } @_ZNK3gmx12LocalAtomSet15collectiveIndexEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_Z15get_center_commRKN3gmx7MpiCommEPA3_fPfiiS5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_Z24ddReopenBalanceRegionCpuPK12gmx_domdec_t(ptr noundef) local_unnamed_addr #4

declare void @_Z11translate_xPA3_fiPKf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL11do_flexiblebP10gmx_enfrotP13gmx_enfrotgrpN3gmx8ArrayRefIKNS3_11BasicVectorIfEEEEPA3_Kfdbb(i1 noundef zeroext %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull %2, ptr nofree readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, double noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 12 uses
  %i.b = alloca [3 x float], align 8              ; 12 uses
  %i.c = alloca [3 x float], align 8              ; 8 uses
  %i.d = alloca [3 x float], align 4              ; 6 uses
  %i.e = alloca [3 x float], align 4              ; 6 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %.sroa.5.i.i25.i.i.i.i = alloca { i32, float, [3 x float], [3 x float] }, align 8 ; 4 uses
  %10 = alloca %struct.sort_along_vec_t, align 4  ; 4 uses
  %.sroa.5.i.i13.i.i.i.i = alloca { i32, float, [3 x float], [3 x float] }, align 8 ; 4 uses
  %.sroa.5.i.i.i.i.i.i = alloca { i32, float, [3 x float], [3 x float] }, align 8 ; 4 uses
  %11 = alloca %struct.sort_along_vec_t, align 4  ; 4 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !77     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  %i.h = load float, ptr %i.g, align 4, !tbaa !116
  %i.i = fpext float %i.h to double
  %i.j = fmul double %i.i, f0x3FE6666666666666
  %i.k = fptrunc double %i.j to float             ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !584  ; 24 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !121  ; 7 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !141  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32   ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.o to i64  ; 8 uses
  %min.iters.check = icmp ult i32 %i.o, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.z = mul nuw nsw i64 %wide.trip.count.i, 36
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.z ; 4 uses
  %i.aa = mul nuw nsw i64 %wide.trip.count.i, 12  ; 2 uses
  %scevgep5 = getelementptr i8, ptr %i.r, i64 %i.aa
  %scevgep6 = getelementptr i8, ptr %2, i64 76
  %i.ab = shl nuw nsw i64 %wide.trip.count.i, 2
  %scevgep7 = getelementptr i8, ptr %i.w, i64 %i.ab
  %scevgep8 = getelementptr i8, ptr %i.y, i64 %i.aa
  %bound0 = icmp ult ptr %i.m, %scevgep5
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound09 = icmp ult ptr %i.m, %scevgep6
  %bound110 = icmp ult ptr %i.s, %scevgep
  %found.conflict11 = and i1 %bound09, %bound110
  %conflict.rdx = or i1 %found.conflict, %found.conflict11
  %bound012 = icmp ult ptr %i.m, %scevgep7
  %bound113 = icmp ult ptr %i.w, %scevgep
  %found.conflict14 = and i1 %bound012, %bound113
  %conflict.rdx15 = or i1 %conflict.rdx, %found.conflict14
  %bound016 = icmp ult ptr %i.m, %scevgep8
  %bound117 = icmp ult ptr %i.y, %scevgep
  %found.conflict18 = and i1 %bound016, %bound117
  %conflict.rdx19 = or i1 %conflict.rdx15, %found.conflict18
  br i1 %conflict.rdx19, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %i.ac = load float, ptr %i.s, align 8, !tbaa !61, !alias.scope !585
  %broadcast.splatinsert23 = insertelement <8 x float> poison, float %i.ac, i64 0
  %broadcast.splat24 = shufflevector <8 x float> %broadcast.splatinsert23, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ad = load float, ptr %i.t, align 4, !tbaa !61, !alias.scope !585
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ad, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ae = load float, ptr %i.u, align 8, !tbaa !61, !alias.scope !585
  %broadcast.splatinsert25 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat26 = shufflevector <8 x float> %broadcast.splatinsert25, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind20 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next43, %vector.body ] ; 2 uses
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %index ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.af, align 4, !tbaa !61, !alias.scope !586 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec21 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec22 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.ag = fmul <8 x float> %strided.vec21, %broadcast.splat
  %i.ah = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec, <8 x float> %broadcast.splat24, <8 x float> %i.ag)
  %i.ai = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec22, <8 x float> %broadcast.splat26, <8 x float> %i.ah)
  %wide.gep = getelementptr inbounds nuw [36 x i8], ptr %i.m, <8 x i64> %vec.ind ; 9 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ai, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !145, !alias.scope !587, !noalias !588
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index
  %wide.load = load <8 x float>, ptr %i.aj, align 4, !tbaa !61, !alias.scope !589
  %wide.gep27 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load, <8 x ptr> align 4 %wide.gep27, <8 x i1> splat (i1 true)), !tbaa !590, !alias.scope !587, !noalias !588
  %wide.gep28 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %vec.ind20, <8 x ptr> align 4 %wide.gep28, <8 x i1> splat (i1 true)), !tbaa !591
  %wide.gep29 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.vec30 = load <24 x float>, ptr %i.af, align 4, !tbaa !61, !alias.scope !586 ; 3 uses
  %strided.vec31 = shufflevector <24 x float> %wide.vec30, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec32 = shufflevector <24 x float> %wide.vec30, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec33 = shufflevector <24 x float> %wide.vec30, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec31, <8 x ptr> align 4 %wide.gep29, <8 x i1> splat (i1 true)), !tbaa !61, !alias.scope !587, !noalias !588
  %wide.gep34 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec32, <8 x ptr> align 4 %wide.gep34, <8 x i1> splat (i1 true)), !tbaa !61, !alias.scope !587, !noalias !588
  %wide.gep35 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec33, <8 x ptr> align 4 %wide.gep35, <8 x i1> splat (i1 true)), !tbaa !61, !alias.scope !587, !noalias !588
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %index
  %wide.gep36 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %wide.vec37 = load <24 x float>, ptr %i.ak, align 4, !tbaa !61, !alias.scope !592 ; 3 uses
  %strided.vec38 = shufflevector <24 x float> %wide.vec37, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec39 = shufflevector <24 x float> %wide.vec37, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec40 = shufflevector <24 x float> %wide.vec37, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec38, <8 x ptr> align 4 %wide.gep36, <8 x i1> splat (i1 true)), !tbaa !61, !alias.scope !587, !noalias !588
  %wide.gep41 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec39, <8 x ptr> align 4 %wide.gep41, <8 x i1> splat (i1 true)), !tbaa !61, !alias.scope !587, !noalias !588
  %wide.gep42 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec40, <8 x ptr> align 4 %wide.gep42, <8 x i1> splat (i1 true)), !tbaa !61, !alias.scope !587, !noalias !588
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next43 = add <8 x i32> %vec.ind20, splat (i32 8)
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !540

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %bb.a
  %i.am = sext i32 %i.o to i64
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %"_ZSt4sortIP16sort_along_vec_tZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EvT_S5_T0_.exit.i", label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %scalar.ph, %middle.block, %._crit_edge.i
  %i.an = phi i64 [ %i.am, %._crit_edge.i ], [ %wide.trip.count.i, %middle.block ], [ %wide.trip.count.i, %scalar.ph ] ; 2 uses
  %.idx59.pn.i = mul nsw i64 %i.an, 36
  %i.ao = getelementptr inbounds i8, ptr %i.m, i64 %.idx59.pn.i ; 3 uses
  %i.ap = ptrtoint ptr %i.m to i64
  %i.aq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 true)
  %i.ar = shl nuw nsw i64 %i.aq, 1
  %i.as = xor i64 %i.ar, 126
  tail call fastcc void @"_ZSt16__introsort_loopIP16sort_along_vec_tlN9__gnu_cxx5__ops15_Iter_comp_iterIZL27sort_collective_coordinatesP13gmx_enfrotgrpS1_E3$_0EEEvT_S9_T0_T1_"(ptr noundef %i.m, ptr noundef nonnull %i.ao, i64 noundef %i.as)
  %i.at = icmp sgt i32 %i.o, 16
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.m, i64 36 ; 2 uses
  br i1 %i.at, label %.preheader.i.i, label %bb.g

.preheader.i.i:                                   ; preds = %._crit_edge.thread.i, %bb.f
  %.019.i.idx.i.i.i.i = phi i64 [ %.019.i.add.i.i.i.i, %bb.f ], [ 36, %._crit_edge.thread.i ] ; 4 uses
  %.pn18.i.i.i.i.i = phi ptr [ %.019.i.ptr.i.i.i.i, %bb.f ], [ %i.m, %._crit_edge.thread.i ] ; 4 uses
  %.019.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.019.i.idx.i.i.i.i ; 5 uses
  %.0.val.i.i.i.i.i = load float, ptr %.019.i.ptr.i.i.i.i, align 4, !tbaa !145 ; 4 uses
end_hunk_1
