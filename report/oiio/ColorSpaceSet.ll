inline.NumInlined: 490
inline.NumDeleted: 212
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !41
  store ptr null, ptr %i.r, align 8, !tbaa !13
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !41
  store ptr null, ptr %2, align 8, !tbaa !38
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !41, !alias.scope !95, !noalias !92
  store ptr null, ptr %i.t, align 8, !tbaa !13, !alias.scope !95, !noalias !92
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !41, !alias.scope !92, !noalias !95
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !38, !alias.scope !95, !noalias !92
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !97

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !41, !alias.scope !101, !noalias !98
  store ptr null, ptr %i.y, align 8, !tbaa !13, !alias.scope !101, !noalias !98
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !41, !alias.scope !98, !noalias !101
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !38, !alias.scope !101, !noalias !98
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !97

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #23
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_510ColorSpaceEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !26
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !35
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11StringUtils5LowerB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !61
  store i8 0, ptr %i.c, align 8, !tbaa !31
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !54
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.f, ptr %i.b, align 8, !tbaa !57
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i11, label %._crit_edge.i.i10

.noexc.i11:                                       ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !59
  %i.i = load i64, ptr %i.b, align 8, !tbaa !57
  store i64 %i.i, ptr %i.e, align 8, !tbaa !31
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %.noexc.i11, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i11 ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i10
  %i.k = load i8, ptr %1, align 1, !tbaa !31
  store i8 %i.k, ptr %i.j, align 1, !tbaa !31
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i10
  %i.l = load i64, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !61
  %i.n = load ptr, ptr %2, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !54
  %i.q = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !61   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.r, ptr %i.a, align 8, !tbaa !57
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i16, label %._crit_edge.i.i15

.noexc.i16:                                       ; preds = %bb.e
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17 unwind label %bb.j   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i16
  store ptr %i.t, ptr %3, align 8, !tbaa !59
  %i.u = load i64, ptr %i.a, align 8, !tbaa !57
  store i64 %i.u, ptr %i.p, align 8, !tbaa !31
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %.noexc17, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc17 ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %i.r, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i15
  %i.w = load i8, ptr %i.q, align 1, !tbaa !31
  store i8 %i.w, ptr %i.v, align 1, !tbaa !31
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i15
  %i.x = load i64, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !61
  %i.z = load ptr, ptr %3, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.ab = load ptr, ptr %3, align 8, !tbaa !59, !noalias !103 ; 7 uses
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !61, !noalias !103 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %.not6.i.i = icmp samesign eq i64 %i.ac, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.ac, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check35 = icmp ult i64 %i.ac, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ac, 24
  %n.vec = and i64 %i.ac, -32                     ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %index ; 3 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !31, !noalias !103 ; 2 uses
  %wide.load36 = load <16 x i8>, ptr %i.af, align 1, !tbaa !31, !noalias !103 ; 2 uses
  %i.ag = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ah = add <16 x i8> %wide.load36, splat (i8 -65)
  %i.ai = icmp ult <16 x i8> %i.ag, splat (i8 26)
  %i.aj = icmp ult <16 x i8> %i.ah, splat (i8 26)
  %4 = select <16 x i1> %i.ai, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ak = or disjoint <16 x i8> %wide.load, %4
  %i.al = select <16 x i1> %i.aj, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %5 = or disjoint <16 x i8> %wide.load36, %i.al
  store <16 x i8> %i.ak, ptr %next.gep, align 1, !tbaa !31, !noalias !103
  store <16 x i8> %5, ptr %i.af, align 1, !tbaa !31, !noalias !103
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %i.ac, -8                    ; 3 uses
  %i.an = getelementptr i8, ptr %i.ab, i64 %n.vec38
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.ab, i64 %index39 ; 2 uses
  %wide.load41 = load <8 x i8>, ptr %next.gep40, align 1, !tbaa !31, !noalias !103 ; 2 uses
  %i.ao = add <8 x i8> %wide.load41, splat (i8 -65)
  %i.ap = icmp ult <8 x i8> %i.ao, splat (i8 26)
  %6 = select <8 x i1> %i.ap, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %7 = or disjoint <8 x i8> %wide.load41, %6
  store <8 x i8> %7, ptr %next.gep40, align 1, !tbaa !31, !noalias !103
  %index.next42 = add nuw i64 %index39, 8         ; 2 uses
  %i.aq = icmp eq i64 %index.next42, %n.vec38
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !110

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.ac, %n.vec38
  br i1 %cmp.n43, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.au, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ar = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !31, !noalias !103 ; 3 uses
  %i.as = add i8 %i.ar, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.as, 26
  %i.at = or disjoint i8 %i.ar, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.at, i8 %i.ar
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !31, !noalias !103
  %i.au = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, %i.ad
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !111

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !59, !noalias !103
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %bb.h
  %i.av = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.ab, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !54, !alias.scope !103
  %i.ax = icmp eq ptr %i.av, %i.p
  br i1 %i.ax, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.ay = load i64, ptr %i.y, align 8, !tbaa !61, !noalias !103 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.av, ptr %0, align 8, !tbaa !59, !alias.scope !103
  %i.bb = load i64, ptr %i.p, align 8, !tbaa !31, !noalias !103
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !31, !alias.scope !103
  %.pre4.i = load i64, ptr %i.y, align 8, !tbaa !61, !noalias !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.bc = phi i64 [ %i.ay, %bb.i ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !61, !alias.scope !103
  store ptr %i.p, ptr %3, align 8, !tbaa !59, !noalias !103
  store i64 0, ptr %i.y, align 8, !tbaa !61, !noalias !103
  store i8 0, ptr %i.p, align 8, !tbaa !31, !noalias !103
  %i.be = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.e
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !31
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.k

bb.j:                                             ; preds = %.noexc.i16
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.e
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.bl = load i64, ptr %i.e, align 8, !tbaa !31
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.bi

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %._crit_edge.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11StringUtils7CompareERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !54
  %i.d = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.f, ptr %i.b, align 8, !tbaa !57
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !59
  %i.i = load i64, ptr %i.b, align 8, !tbaa !57
  store i64 %i.i, ptr %i.c, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !31
  store i8 %i.k, ptr %i.j, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !61
  %i.n = load ptr, ptr %3, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.p = load ptr, ptr %3, align 8, !tbaa !59, !noalias !112 ; 7 uses
  %i.q = load i64, ptr %i.m, align 8, !tbaa !61, !noalias !112 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %.not6.i.i = icmp samesign eq i64 %i.q, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %min.iters.check = icmp ult i64 %i.q, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check56 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.q, 24
  %n.vec = and i64 %i.q, -32                      ; 4 uses
  %i.s = getelementptr i8, ptr %i.p, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %index ; 3 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !31, !noalias !112 ; 2 uses
  %wide.load57 = load <16 x i8>, ptr %i.t, align 1, !tbaa !31, !noalias !112 ; 2 uses
  %i.u = add <16 x i8> %wide.load, splat (i8 -65)
  %i.v = add <16 x i8> %wide.load57, splat (i8 -65)
  %i.w = icmp ult <16 x i8> %i.u, splat (i8 26)
  %i.x = icmp ult <16 x i8> %i.v, splat (i8 26)
  %6 = select <16 x i1> %i.w, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.y = or disjoint <16 x i8> %wide.load, %6
  %i.z = select <16 x i1> %i.x, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %7 = or disjoint <16 x i8> %wide.load57, %i.z
  store <16 x i8> %i.y, ptr %next.gep, align 1, !tbaa !31, !noalias !112
  store <16 x i8> %7, ptr %i.t, align 1, !tbaa !31, !noalias !112
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec59 = and i64 %i.q, -8                     ; 3 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %n.vec59
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.p, i64 %index60 ; 2 uses
  %wide.load62 = load <8 x i8>, ptr %next.gep61, align 1, !tbaa !31, !noalias !112 ; 2 uses
  %i.ac = add <8 x i8> %wide.load62, splat (i8 -65)
  %i.ad = icmp ult <8 x i8> %i.ac, splat (i8 26)
  %8 = select <8 x i1> %i.ad, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %9 = or disjoint <8 x i8> %wide.load62, %8
  store <8 x i8> %9, ptr %next.gep61, align 1, !tbaa !31, !noalias !112
  %index.next63 = add nuw i64 %index60, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next63, %n.vec59
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !116

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %i.q, %n.vec59
  br i1 %cmp.n64, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.af = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !31, !noalias !112 ; 3 uses
  %i.ag = add i8 %i.af, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.ag, 26
  %i.ah = or disjoint i8 %i.af, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.ah, i8 %i.af
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !31, !noalias !112
  %i.ai = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.r
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !117

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !59, !noalias !112
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aj = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !54, !alias.scope !112
  %i.al = icmp eq ptr %i.aj, %i.c
  br i1 %i.al, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.am = load i64, ptr %i.m, align 8, !tbaa !61, !noalias !112 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.ao, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.aj, ptr %2, align 8, !tbaa !59, !alias.scope !112
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !31, !noalias !112
  store i64 %i.ap, ptr %i.ak, align 8, !tbaa !31, !alias.scope !112
  %.pre4.i = load i64, ptr %i.m, align 8, !tbaa !61, !noalias !112
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !61, !alias.scope !112
  store ptr %i.c, ptr %3, align 8, !tbaa !59, !noalias !112
  store i64 0, ptr %i.m, align 8, !tbaa !61, !noalias !112
  store i8 0, ptr %i.c, align 8, !tbaa !31, !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.as, ptr %5, align 8, !tbaa !54
  %i.at = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !61 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.av, ptr %i.a, align 8, !tbaa !57
  %i.aw = icmp ugt i64 %i.av, 15
  br i1 %i.aw, label %.noexc.i8, label %._crit_edge.i.i7

.noexc.i8:                                        ; preds = %bb.e
  %i.ax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i8
  store ptr %i.ax, ptr %5, align 8, !tbaa !59
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !57
  store i64 %i.ay, ptr %i.as, align 8, !tbaa !31
  br label %._crit_edge.i.i7

._crit_edge.i.i7:                                 ; preds = %.noexc, %bb.e
  %i.az = phi ptr [ %i.ax, %.noexc ], [ %i.as, %bb.e ] ; 2 uses
  switch i64 %i.av, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i7
  %i.ba = load i8, ptr %i.at, align 1, !tbaa !31
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !31
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.at, i64 %i.av, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i7
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !61
  %i.bd = load ptr, ptr %5, align 8, !tbaa !59
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.bf = load ptr, ptr %5, align 8, !tbaa !59, !noalias !118 ; 7 uses
  %i.bg = load i64, ptr %i.bc, align 8, !tbaa !61, !noalias !118 ; 9 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  %.not6.i.i10 = icmp samesign eq i64 %i.bg, 0
  br i1 %.not6.i.i10, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18, label %iter.check81

iter.check81:                                     ; preds = %bb.h
  %min.iters.check66 = icmp ult i64 %i.bg, 8
  br i1 %min.iters.check66, label %.lr.ph.i.i11.preheader, label %vector.main.loop.iter.check67

vector.main.loop.iter.check67:                    ; preds = %iter.check81
  %min.iters.check68 = icmp ult i64 %i.bg, 32
  br i1 %min.iters.check68, label %vec.epilog.ph85, label %vector.ph69

vector.ph69:                                      ; preds = %vector.main.loop.iter.check67
  %n.mod.vf70 = and i64 %i.bg, 24
  %n.vec71 = and i64 %i.bg, -32                   ; 4 uses
  %i.bi = getelementptr i8, ptr %i.bf, i64 %n.vec71
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph69
  %index73 = phi i64 [ 0, %vector.ph69 ], [ %index.next77, %vector.body72 ] ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.bf, i64 %index73 ; 3 uses
  %i.bj = getelementptr i8, ptr %next.gep74, i64 16 ; 2 uses
  %wide.load75 = load <16 x i8>, ptr %next.gep74, align 1, !tbaa !31, !noalias !118 ; 2 uses
  %wide.load76 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !31, !noalias !118 ; 2 uses
  %i.bk = add <16 x i8> %wide.load75, splat (i8 -65)
  %i.bl = add <16 x i8> %wide.load76, splat (i8 -65)
  %i.bm = icmp ult <16 x i8> %i.bk, splat (i8 26)
  %i.bn = icmp ult <16 x i8> %i.bl, splat (i8 26)
  %10 = select <16 x i1> %i.bm, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.bo = or disjoint <16 x i8> %wide.load75, %10
  %i.bp = select <16 x i1> %i.bn, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %11 = or disjoint <16 x i8> %wide.load76, %i.bp
  store <16 x i8> %i.bo, ptr %next.gep74, align 1, !tbaa !31, !noalias !118
  store <16 x i8> %11, ptr %i.bj, align 1, !tbaa !31, !noalias !118
  %index.next77 = add nuw i64 %index73, 32        ; 2 uses
  %i.bq = icmp eq i64 %index.next77, %n.vec71
  br i1 %i.bq, label %middle.block78, label %vector.body72, !llvm.loop !121

middle.block78:                                   ; preds = %vector.body72
  %cmp.n79 = icmp eq i64 %i.bg, %n.vec71
  br i1 %cmp.n79, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %vec.epilog.iter.check83

vec.epilog.iter.check83:                          ; preds = %middle.block78
  %min.epilog.iters.check84 = icmp eq i64 %n.mod.vf70, 0
  br i1 %min.epilog.iters.check84, label %.lr.ph.i.i11.preheader, label %vec.epilog.ph85, !prof !109

vec.epilog.ph85:                                  ; preds = %vector.main.loop.iter.check67, %vec.epilog.iter.check83
  %vec.epilog.resume.val80 = phi i64 [ %n.vec71, %vec.epilog.iter.check83 ], [ 0, %vector.main.loop.iter.check67 ]
  %n.vec87 = and i64 %i.bg, -8                    ; 3 uses
  %i.br = getelementptr i8, ptr %i.bf, i64 %n.vec87
  br label %vec.epilog.vector.body88

vec.epilog.vector.body88:                         ; preds = %vec.epilog.vector.body88, %vec.epilog.ph85
  %index89 = phi i64 [ %vec.epilog.resume.val80, %vec.epilog.ph85 ], [ %index.next92, %vec.epilog.vector.body88 ] ; 2 uses
  %next.gep90 = getelementptr i8, ptr %i.bf, i64 %index89 ; 2 uses
  %wide.load91 = load <8 x i8>, ptr %next.gep90, align 1, !tbaa !31, !noalias !118 ; 2 uses
  %i.bs = add <8 x i8> %wide.load91, splat (i8 -65)
  %i.bt = icmp ult <8 x i8> %i.bs, splat (i8 26)
  %12 = select <8 x i1> %i.bt, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %13 = or disjoint <8 x i8> %wide.load91, %12
  store <8 x i8> %13, ptr %next.gep90, align 1, !tbaa !31, !noalias !118
  %index.next92 = add nuw i64 %index89, 8         ; 2 uses
  %i.bu = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.bu, label %vec.epilog.middle.block93, label %vec.epilog.vector.body88, !llvm.loop !122

vec.epilog.middle.block93:                        ; preds = %vec.epilog.vector.body88
  %cmp.n94 = icmp eq i64 %i.bg, %n.vec87
  br i1 %cmp.n94, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %.lr.ph.i.i11.preheader

.lr.ph.i.i11.preheader:                           ; preds = %iter.check81, %vec.epilog.iter.check83, %vec.epilog.middle.block93
  %.sroa.0.08.i.i12.ph = phi ptr [ %i.bf, %iter.check81 ], [ %i.bi, %vec.epilog.iter.check83 ], [ %i.br, %vec.epilog.middle.block93 ]
  br label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %.lr.ph.i.i11.preheader, %.lr.ph.i.i11
  %.sroa.0.08.i.i12 = phi ptr [ %i.by, %.lr.ph.i.i11 ], [ %.sroa.0.08.i.i12.ph, %.lr.ph.i.i11.preheader ] ; 3 uses
  %i.bv = load i8, ptr %.sroa.0.08.i.i12, align 1, !tbaa !31, !noalias !118 ; 3 uses
  %i.bw = add i8 %i.bv, -65
  %or.cond.i.i.i.i13 = icmp ult i8 %i.bw, 26
  %i.bx = or disjoint i8 %i.bv, 32
  %.0.i.i.i.i14 = select i1 %or.cond.i.i.i.i13, i8 %i.bx, i8 %i.bv
  store i8 %.0.i.i.i.i14, ptr %.sroa.0.08.i.i12, align 1, !tbaa !31, !noalias !118
  %i.by = getelementptr i8, ptr %.sroa.0.08.i.i12, i64 1 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.by, %i.bh
  br i1 %.not.i.i15, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, label %.lr.ph.i.i11, !llvm.loop !123

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16: ; preds = %.lr.ph.i.i11, %vec.epilog.middle.block93, %middle.block78
  %.pre.i17 = load ptr, ptr %5, align 8, !tbaa !59, !noalias !118
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16, %bb.h
  %i.bz = phi ptr [ %.pre.i17, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i16 ], [ %i.bf, %bb.h ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ca, ptr %4, align 8, !tbaa !54, !alias.scope !118
  %i.cb = icmp eq ptr %i.bz, %i.as
  br i1 %i.cb, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

bb.i:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18
  %i.cc = load i64, ptr %i.bc, align 8, !tbaa !61, !noalias !118 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.cd)
  %i.ce = add nuw nsw i64 %i.cc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ce, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i18
  store ptr %i.bz, ptr %4, align 8, !tbaa !59, !alias.scope !118
  %i.cf = load i64, ptr %i.as, align 8, !tbaa !31, !noalias !118
  store i64 %i.cf, ptr %i.ca, align 8, !tbaa !31, !alias.scope !118
  %.pre4.i20 = load i64, ptr %i.bc, align 8, !tbaa !61, !noalias !118
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.i
  %i.cg = phi ptr [ %i.ca, %bb.i ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ] ; 3 uses
  %i.ch = phi i64 [ %i.cc, %bb.i ], [ %.pre4.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ] ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !61, !alias.scope !118
  store ptr %i.as, ptr %5, align 8, !tbaa !59, !noalias !118
  store i64 0, ptr %i.bc, align 8, !tbaa !61, !noalias !118
  store i8 0, ptr %i.as, align 8, !tbaa !31, !noalias !118
  %i.cj = load i64, ptr %i.ar, align 8, !tbaa !61
  %i.ck = icmp eq i64 %i.cj, %i.ch
  br i1 %i.ck, label %bb.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.k:                                             ; preds = %bb.j
  %i.cl = icmp eq i64 %i.ch, 0
  br i1 %i.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = load ptr, ptr %2, align 8, !tbaa !59
  %bcmp.i = call i32 @bcmp(ptr %i.cm, ptr %i.cg, i64 %i.ch)
  %i.cn = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.co = phi i1 [ false, %bb.j ], [ %i.cn, %bb.l ], [ true, %bb.k ]
  %i.cp = icmp eq ptr %i.cg, %i.ca
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.cq = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.cq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.cr = load i64, ptr %i.ca, align 8, !tbaa !31
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cs) #23
  %.pre = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.ct = icmp eq ptr %.pre, %i.as
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cu = load i64, ptr %i.as, align 8, !tbaa !31
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.cv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cw = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ak
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.cy = load i64, ptr %i.ak, align 8, !tbaa !31
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.da = load ptr, ptr %3, align 8, !tbaa !59    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.c
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.dc = load i64, ptr %i.c, align 8, !tbaa !31
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 %i.co

bb.m:                                             ; preds = %.noexc.i8
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.df = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ak
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.m
  %i.dh = load i64, ptr %i.ak, align 8, !tbaa !31
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %i.dj = load ptr, ptr %3, align 8, !tbaa !59    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.c
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.dl = load i64, ptr %i.c, align 8, !tbaa !31
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.de
}

; Function Attrs: nounwind
declare noundef i64 @_ZNK16OpenColorIO_v2_510ColorSpace13getNumAliasesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nounwind
declare noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace8getAliasEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #11

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
