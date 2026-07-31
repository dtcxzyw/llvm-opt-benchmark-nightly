inline.NumInlined: 8788
inline.NumDeleted: 3051
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !14, !alias.scope !250, !noalias !253
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !34, !alias.scope !253, !noalias !250 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !18, !alias.scope !253, !noalias !250 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !255
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !34, !alias.scope !250, !noalias !253
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !13, !alias.scope !253, !noalias !250
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !13, !alias.scope !250, !noalias !253
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !18, !alias.scope !253, !noalias !250
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !18, !alias.scope !250, !noalias !253
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !34, !alias.scope !253, !noalias !250
  store i64 0, ptr %i.bc, align 8, !tbaa !18, !alias.scope !253, !noalias !250
  store i8 0, ptr %i.au, align 8, !tbaa !13, !alias.scope !253, !noalias !250
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !249

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !43
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #34
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !40
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !135    ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #32
  unreachable

_ZNKSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !55
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !55
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !56
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !56
  br label %_ZSt12construct_atISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

_ZSt12construct_atISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt12construct_atISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit
  %i.z = sub i64 %i.m, %i.e
  %i.aa = add i64 %i.z, -16                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 304
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ad = add i64 %i.m, -16
  %i.ae = sub i64 %i.ad, %i.e
  %i.af = and i64 %i.ae, -16                      ; 2 uses
  %i.ag = or disjoint i64 %i.af, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.ag
  %scevgep36 = getelementptr i8, ptr %i.c, i64 %i.ag
  %scevgep37 = getelementptr i8, ptr %i.c, i64 8
  %i.ah = add i64 %i.af, 16                       ; 2 uses
  %scevgep38 = getelementptr i8, ptr %i.c, i64 %i.ah
  %scevgep39 = getelementptr i8, ptr %i.p, i64 8
  %scevgep40 = getelementptr i8, ptr %i.p, i64 %i.ah
  %bound0 = icmp ult ptr %i.p, %scevgep36
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound041 = icmp ult ptr %scevgep37, %scevgep40
  %bound142 = icmp ult ptr %scevgep39, %scevgep38
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx = or i1 %found.conflict, %found.conflict43
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 2305843009213693948     ; 3 uses
  %i.ai = shl i64 %n.vec, 4                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.p, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.c, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.al
  %next.gep44 = getelementptr i8, ptr %i.c, i64 %i.al ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %wide.vec = load <8 x ptr>, ptr %next.gep44, align 8, !tbaa !55, !alias.scope !259, !noalias !256
  store <8 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !55, !alias.scope !256, !noalias !259
  store <8 x ptr> splat (ptr null), ptr %next.gep44, align 8, !tbaa !55, !alias.scope !259, !noalias !256
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader80

.lr.ph.i.i.i.preheader80:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader80, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader80 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader80 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !55, !alias.scope !259, !noalias !256
  store ptr null, ptr %i.an, align 8, !tbaa !52, !alias.scope !259, !noalias !256
  store <2 x ptr> %i.ao, ptr %.012.i.i.i, align 8, !tbaa !55, !alias.scope !256, !noalias !259
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !96, !alias.scope !259, !noalias !256
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !264

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZSt12construct_atISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ], [ %i.aj, %middle.block ], [ %i.aq, %.lr.ph.i.i.i ] ; 4 uses
  %i.ar = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.as = sub i64 %i.d, %i.m
  %i.at = add i64 %i.as, -16                      ; 2 uses
  %i.au = lshr i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check62 = icmp ult i64 %i.at, 368
  br i1 %min.iters.check62, label %.lr.ph.i.i.i17.preheader79, label %vector.memcheck47

vector.memcheck47:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.aw = add i64 %i.d, -16
  %i.ax = sub i64 %i.aw, %i.m
  %i.ay = and i64 %i.ax, -16                      ; 4 uses
  %i.az = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ay
  %scevgep48 = getelementptr i8, ptr %i.az, i64 24
  %i.ba = getelementptr i8, ptr %1, i64 %i.ay
  %scevgep49 = getelementptr i8, ptr %i.ba, i64 8
  %scevgep50 = getelementptr i8, ptr %1, i64 8
  %i.bb = getelementptr i8, ptr %1, i64 %i.ay
  %scevgep51 = getelementptr i8, ptr %i.bb, i64 16
  %scevgep52 = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.bc = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ay
  %scevgep53 = getelementptr i8, ptr %i.bc, i64 32
  %bound054 = icmp ult ptr %i.ar, %scevgep49
  %bound155 = icmp ult ptr %1, %scevgep48
  %found.conflict56 = and i1 %bound054, %bound155
  %bound057 = icmp ult ptr %scevgep50, %scevgep53
  %bound158 = icmp ult ptr %scevgep52, %scevgep51
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %found.conflict56, %found.conflict59
  br i1 %conflict.rdx60, label %.lr.ph.i.i.i17.preheader79, label %vector.ph63

vector.ph63:                                      ; preds = %vector.memcheck47
  %n.vec65 = and i64 %i.av, 2305843009213693948   ; 3 uses
  %i.bd = shl i64 %n.vec65, 4                     ; 2 uses
  %i.be = getelementptr i8, ptr %i.ar, i64 %i.bd  ; 2 uses
  %i.bf = getelementptr i8, ptr %1, i64 %i.bd
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next74, %vector.body66 ] ; 2 uses
  %i.bg = shl i64 %index67, 4                     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.ar, i64 %i.bg
  %next.gep69 = getelementptr i8, ptr %1, i64 %i.bg ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %wide.vec70 = load <8 x ptr>, ptr %next.gep69, align 8, !tbaa !55, !alias.scope !268, !noalias !265
  store <8 x ptr> %wide.vec70, ptr %next.gep68, align 8, !tbaa !55, !alias.scope !265, !noalias !268
  store <8 x ptr> splat (ptr null), ptr %next.gep69, align 8, !tbaa !55, !alias.scope !268, !noalias !265
  %index.next74 = add nuw i64 %index67, 4         ; 2 uses
  %i.bh = icmp eq i64 %index.next74, %n.vec65
  br i1 %i.bh, label %middle.block75, label %vector.body66, !llvm.loop !270

middle.block75:                                   ; preds = %vector.body66
  %cmp.n76 = icmp eq i64 %i.av, %n.vec65
  br i1 %cmp.n76, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader79

.lr.ph.i.i.i17.preheader79:                       ; preds = %vector.memcheck47, %.lr.ph.i.i.i17.preheader, %middle.block75
  %.012.i.i.i18.ph = phi ptr [ %i.ar, %vector.memcheck47 ], [ %i.ar, %.lr.ph.i.i.i17.preheader ], [ %i.be, %middle.block75 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck47 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.bf, %middle.block75 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader79, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bl, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader79 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bk, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader79 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bj = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !55, !alias.scope !268, !noalias !265
  store ptr null, ptr %i.bi, align 8, !tbaa !52, !alias.scope !268, !noalias !265
  store <2 x ptr> %i.bj, ptr %.012.i.i.i18, align 8, !tbaa !55, !alias.scope !265, !noalias !268
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !96, !alias.scope !268, !noalias !265
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !271

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block75, %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ar, %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %middle.block75 ], [ %i.bl, %.lr.ph.i.i.i17 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !136
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bp) #34
  br label %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !135
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !134
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !136
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.065 = load ptr, ptr %i.a, align 8, !tbaa !221 ; 2 uses
  %.not66 = icmp eq ptr %.065, null
  br i1 %.not66, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_upper_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 8 uses
  %i.e = load ptr, ptr %1, align 8                ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.068 = phi ptr [ %.065, %.lr.ph ], [ %.0, %bb.d ] ; 8 uses
  %.02267 = phi ptr [ %i.b, %.lr.ph ], [ %.123, %bb.d ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.068, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18   ; 4 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.g) ; 3 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.068, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = tail call i32 @memcmp(ptr noundef %i.j, ptr noundef %i.e, i64 noundef %.sroa.speculated.i.i.i) #21 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %bb.b
  %i.l = sub i64 %i.g, %i.d
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.n = sub i64 %i.g, %i.d
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.p = icmp slt i32 %i.k, 0
  br i1 %i.p, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread
  %i.q = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #21 ; 2 uses
  %.not.i.i.i26 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i26, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25
  %i.r = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i29 = tail call i64 @llvm.smax.i64(i64 %i.r, i64 -2147483648)
  %.08.i.i.i.i30 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i29, i64 2147483647)
  %.0.i6.i.i.i31 = trunc nsw i64 %.08.i.i.i.i30 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28
  %.0.i.i.i27 = phi i32 [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25 ], [ %.0.i6.i.i.i31, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28 ]
  %i.s = icmp slt i32 %.0.i.i.i27, 0
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit32
  %i.t = getelementptr inbounds nuw i8, ptr %.068, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !272  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.068, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !238  ; 2 uses
  %.not10.i = icmp eq ptr %i.u, null
  br i1 %.not10.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %.012.i = phi ptr [ %.1.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %i.u, %bb.c ] ; 4 uses
  %.0811.i = phi ptr [ %.19.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %.068, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !18   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.y) ; 2 uses
  %i.z = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = tail call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.e, i64 noundef %.sroa.speculated.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.lr.ph.i
  %i.ad = sub i64 %i.y, %i.d
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ad, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.ac, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.ae = icmp slt i32 %.0.i.i.i.i, 0             ; 2 uses
  %.19.i = select i1 %i.ae, ptr %.0811.i, ptr %.012.i ; 2 uses
  %.1.in.v.i = select i1 %i.ae, i64 24, i64 16
  %.1.in.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 %.1.in.v.i
  %.1.i = load ptr, ptr %.1.in.i, align 8, !tbaa !221 ; 2 uses
  %.not.i = icmp eq ptr %.1.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit, label %.lr.ph.i, !llvm.loop !222

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %bb.c
  %.08.lcssa.i = phi ptr [ %.068, %bb.c ], [ %.19.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ] ; 2 uses
  %.not10.i33 = icmp eq ptr %i.w, null
  br i1 %.not10.i33, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_upper_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i40
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_20ConstantVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi:bb.a
  br label %bb.ad

bb.z:                                             ; preds = %tailrecurse.i.i.i.i72.3
  %i.dq = load ptr, ptr %7, align 8, !tbaa !409
  %.not.i78 = icmp eq ptr %i.dq, null
  br i1 %.not.i78, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit79, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit79

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit79: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.ab:                                            ; preds = %tailrecurse.i.i.i.i72.3
  %i.dr = landingpad { ptr, i32 }
          cleanup
  %i.ds = load ptr, ptr %7, align 8, !tbaa !409
  %.not.i80 = icmp eq ptr %i.ds, null
  br i1 %.not.i80, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81, %bb.y
  %.pn.i = phi { ptr, i32 } [ %i.dr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit81 ], [ %i.dp, %bb.y ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #33
  unreachable

bb.af:                                            ; preds = %.loopexit87
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit68, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit79
  %i.dv = add i64 %.015101, -1
  %i.dw = and i64 %i.dv, %.015101                 ; 2 uses
  %.not = icmp eq i64 %i.dw, 0
  br i1 %.not, label %.loopexit85, label %.noexc22, !llvm.loop !978

.loopexit85:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_20ConstantVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKS1_SV_EUlSV_E_EEvSZ_SV_T0_EUlSV_E_EEvSV_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.561) align 8 %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.564", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !846, !range !35, !noundef !36
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !49, !range !35
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !828
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !829  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !847
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !585    ; 2 uses
  %.not.i.i17 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i17, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i82.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i82.not, label %.critedge.i.i.i, label %.lr.ph84

bb.f:                                             ; preds = %.lr.ph84
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i83, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph84, label %.critedge.i.i.i, !llvm.loop !848

.lr.ph84:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i83, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !133
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !848

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !133
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph84, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph84 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.ac

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !829 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !828 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.noexc9.lr.ph, label %.loopexit43

.noexc9.lr.ph:                                    ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !561 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !979, !nonnull !36, !align !208 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ao = ptrtoint ptr %4 to i64
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ar = sext i32 %i.ag to i64
  br label %.noexc9

.noexc9:                                          ; preds = %.noexc9.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit
  %indvars.iv = phi i64 [ %i.ar, %.noexc9.lr.ph ], [ %indvars.iv.next, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit ] ; 4 uses
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !980, !nonnull !36, !align !208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !982
  %.sroa.0.0.copyload.i = load i64, ptr %i.as, align 8, !noalias !982 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !13, !noalias !982 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8, !noalias !982
  store ptr %.sroa.2.0.copyload.i, ptr %i.am, align 8, !noalias !982
  %i.at = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.au = icmp ult i32 %i.at, 13
  %i.av = select i1 %i.au, ptr %i.an, ptr %.sroa.2.0.copyload.i ; 3 uses
  %i.aw = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 5 uses
  %i.ax = and i64 %.sroa.0.0.copyload.i, 4294967264 ; 2 uses
  %.not.i85 = icmp samesign ult i64 %i.aw, 32
  br i1 %.not.i85, label %.preheader, label %.lr.ph87

bb.i:                                             ; preds = %.lr.ph87
  %i.ay = add nuw nsw i64 %i.ba, 32               ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.ay, %i.aw
  br i1 %.not.i, label %.preheader, label %.lr.ph87, !llvm.loop !985

.preheader:                                       ; preds = %bb.i, %.noexc9
  %i.az = icmp samesign ult i64 %i.ax, %i.aw
  br i1 %i.az, label %.lr.ph, label %.noexc11

.lr.ph87:                                         ; preds = %.noexc9, %bb.i
  %i.ba = phi i64 [ %i.ay, %bb.i ], [ 32, %.noexc9 ] ; 2 uses
  %.011.i86 = phi i64 [ %i.ba, %bb.i ], [ 0, %.noexc9 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %.011.i86
  %i.bc = load <4 x i64>, ptr %i.bb, align 1, !tbaa !13
  %i.bd = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.bc, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i = icmp eq i32 %i.bd, 0
  br i1 %.not16.not.i, label %.noexc13, label %bb.i, !llvm.loop !985

bb.j:                                             ; preds = %.lr.ph
  %i.be = add nuw nsw i64 %.1.i51, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %i.aw
  br i1 %exitcond.not, label %.noexc11, label %.lr.ph, !llvm.loop !986

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.1.i51 = phi i64 [ %i.be, %bb.j ], [ %i.ax, %.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 %.1.i51
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !13
  %.not15.i = icmp sgt i8 %i.bg, -1
  br i1 %.not15.i, label %bb.j, label %.noexc13

.noexc11:                                         ; preds = %bb.j, %.preheader
  %i.bh = invoke noundef i128 @_ZN8facebook5velox9functions10getDecimalESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.aw, ptr %i.av)
          to label %_ZN8facebook5velox6StatusD2Ev.exit29 unwind label %bb.m

.noexc13:                                         ; preds = %.lr.ph87, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !987
  store i64 %i.ao, ptr %2, align 16, !noalias !987
  store i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox10StringViewENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_ to i64), ptr %.sroa_idx3.i, align 8, !noalias !987
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.105, i64 23, i64 15, ptr nonnull %2)
          to label %.noexc14 unwind label %bb.m

.noexc14:                                         ; preds = %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !987
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions27ParsePrestoDataSizeFunctionINS0_4exec10VectorExecEE4callERnRKNS0_10StringViewEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.105) #32
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc14
  unreachable

bb.l:                                             ; preds = %.noexc14
  %i.bi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.bj = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ap
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bl = load i64, ptr %i.ap, align 8, !tbaa !13
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body

_ZN8facebook5velox6StatusD2Ev.exit29:             ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !982
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !990, !nonnull !36, !align !208
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !881, !nonnull !36, !align !208
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !551
  %i.br = getelementptr inbounds [16 x i8], ptr %i.bq, i64 %indvars.iv
  store i128 %i.bh, ptr %i.br, align 16, !tbaa !653
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.m:                                             ; preds = %.noexc13, %.noexc11
  %i.bs = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.bs, %bb.m ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.bt = extractvalue { ptr, i32 } %eh.lpad-body16, 0 ; 2 uses
  %i.bu = extractvalue { ptr, i32 } %eh.lpad-body16, 1 ; 2 uses
  %i.bv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #21
  %i.bw = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.body
  %i.bx = call ptr @__cxa_begin_catch(ptr %i.bt) #21
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !883 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 144
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !34 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 152
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.ce = icmp eq i64 %i.cd, 4
  br i1 %i.ce, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.n
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !13
  %or.cond.not.i.i.i = icmp eq i8 %i.cf, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !13
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ch, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !13
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.cj, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !13
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.cl, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #21
  %i.cm = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.v unwind label %bb.x

.loopexit:                                        ; preds = %bb.n, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #32
          to label %bb.ab unwind label %bb.u

bb.o:                                             ; preds = %.body
  %i.cn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.co = icmp eq i32 %i.bu, %i.cn
  br i1 %i.co, label %bb.p, label %.loopexit44

bb.p:                                             ; preds = %bb.o
  %i.cp = call ptr @__cxa_begin_catch(ptr %i.bt) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #21
  %i.cq = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cr = load ptr, ptr %5, align 8, !tbaa !409
  %.not.i30 = icmp eq ptr %i.cr, null
  br i1 %.not.i30, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.s:                                             ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %5, align 8, !tbaa !409
  %.not.i31 = icmp eq ptr %i.ct, null
  br i1 %.not.i31, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit32, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit32

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit32: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  invoke void @__cxa_end_catch()
          to label %.loopexit44 unwind label %bb.aa

bb.u:                                             ; preds = %.loopexit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.v:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cv = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i33 = icmp eq ptr %i.cv, null
  br i1 %.not.i33, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit34, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit34

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit34: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.x:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i35 = icmp eq ptr %i.cx, null
  br i1 %.not.i35, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit36, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit36

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit36: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit36, %bb.u
  %.pn.i = phi { ptr, i32 } [ %i.cw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit36 ], [ %i.cu, %bb.u ]
  invoke void @__cxa_end_catch()
          to label %.loopexit44 unwind label %bb.aa

.loopexit44:                                      ; preds = %bb.o, %bb.z, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit32
  %.merged.i = phi { ptr, i32 } [ %i.cs, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit32 ], [ %.pn.i, %bb.z ], [ %eh.lpad-body16, %bb.o ]
end_hunk_1
begin_hunk_2_@_ZNK3fmt3v119formatterIN8facebook5velox10StringViewEcvE6formatINS0_7contextEEENT_8iteratorES4_RS8_:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3)
  store i32 %i.o, ptr %i.n, align 4, !tbaa !56
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i: ; preds = %bb.d, %bb.c
  %i.p = lshr i32 %i.j, 8
  %i.q = and i32 %i.p, 3                          ; 2 uses
  %.not.i17.i = icmp eq i32 %i.q, 0
  br i1 %.not.i17.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.t = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %3)
  store i32 %i.t, ptr %i.s, align 4, !tbaa !56
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i: ; preds = %bb.e, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %.sroa.0.0.copyload.i19.i = load ptr, ptr %3, align 8, !tbaa !695
  %i.u = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i19.i, ptr %i.e, i64 %i.f, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %bb.b, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i
  %.sroa.015.0.i = phi ptr [ %i.u, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i ], [ %i.i, %bb.b ]
  ret ptr %.sroa.015.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_20ConstantVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.561) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.567, align 8            ; 6 uses
  %6 = alloca %class.anon.566, align 8            ; 8 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 %i.a, ptr %5, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.25.0..sroa_idx, align 8
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS4_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSK_EEEE7iterateIJNS4_20ConstantVectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_20ConstantVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS4_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSK_EEEE7iterateIJNS4_20ConstantVectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_20ConstantVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS4_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSK_EEEE7iterateIJNS4_20ConstantVectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_20ConstantVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !992

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_20ConstantVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS4_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSK_EEEE7iterateIJNS4_20ConstantVectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS4_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSK_EEEE7iterateIJNS4_20ConstantVectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_20ConstantVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.564", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !993, !range !35, !noundef !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !995
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !133
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit50, label %.preheader49

.preheader49:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.q = ptrtoint ptr %5 to i64
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %.noexc16

.noexc16:                                         ; preds = %.preheader49, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit
  %.059 = phi i64 [ %i.k, %.preheader49 ], [ %i.ch, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit ] ; 3 uses
  %i.s = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.059, i1 true)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = or disjoint i32 %i.m, %i.t               ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !561  ; 2 uses
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !979, !nonnull !36, !align !208 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !980, !nonnull !36, !align !208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !996
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !noalias !996 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !13, !noalias !996 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8, !noalias !996
  store ptr %.sroa.2.0.copyload.i, ptr %i.o, align 8, !noalias !996
  %i.z = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.aa = icmp ult i32 %i.z, 13
  %i.ab = select i1 %i.aa, ptr %i.p, ptr %.sroa.2.0.copyload.i ; 3 uses
  %i.ac = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 5 uses
  %i.ad = and i64 %.sroa.0.0.copyload.i, 4294967264 ; 2 uses
  %.not.i83 = icmp samesign ult i64 %i.ac, 32
  br i1 %.not.i83, label %.preheader, label %.lr.ph85

bb.b:                                             ; preds = %.lr.ph85
  %i.ae = add nuw nsw i64 %i.ag, 32               ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.ae, %i.ac
  br i1 %.not.i, label %.preheader, label %.lr.ph85, !llvm.loop !985

.preheader:                                       ; preds = %bb.b, %.noexc16
  %i.af = icmp samesign ult i64 %i.ad, %i.ac
  br i1 %i.af, label %.lr.ph, label %.noexc18

.lr.ph85:                                         ; preds = %.noexc16, %bb.b
  %i.ag = phi i64 [ %i.ae, %bb.b ], [ 32, %.noexc16 ] ; 2 uses
  %.011.i84 = phi i64 [ %i.ag, %bb.b ], [ 0, %.noexc16 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.011.i84
  %i.ai = load <4 x i64>, ptr %i.ah, align 1, !tbaa !13
  %i.aj = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ai, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not16.not.i, label %.noexc20, label %bb.b, !llvm.loop !985

bb.c:                                             ; preds = %.lr.ph
  %i.ak = add nuw nsw i64 %.1.i58, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.ac
  br i1 %exitcond.not, label %.noexc18, label %.lr.ph, !llvm.loop !986

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.1.i58 = phi i64 [ %i.ak, %bb.c ], [ %i.ad, %.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.1.i58
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %.not15.i = icmp sgt i8 %i.am, -1
  br i1 %.not15.i, label %bb.c, label %.noexc20

.noexc18:                                         ; preds = %bb.c, %.preheader
  %i.an = invoke noundef i128 @_ZN8facebook5velox9functions10getDecimalESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.ac, ptr %i.ab)
          to label %_ZN8facebook5velox6StatusD2Ev.exit35 unwind label %bb.f

.noexc20:                                         ; preds = %.lr.ph85, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !999
  store i64 %i.q, ptr %3, align 16, !noalias !999
  store i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox10StringViewENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_ to i64), ptr %.sroa_idx3.i, align 8, !noalias !999
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.105, i64 23, i64 15, ptr nonnull %3)
          to label %.noexc21 unwind label %bb.f

.noexc21:                                         ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !999
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions27ParsePrestoDataSizeFunctionINS0_4exec10VectorExecEE4callERnRKNS0_10StringViewEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.105) #32
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc21
  unreachable

bb.e:                                             ; preds = %.noexc21
  %i.ao = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ap = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.r
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ar = load i64, ptr %i.r, align 8, !tbaa !13
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body

_ZN8facebook5velox6StatusD2Ev.exit35:             ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !996
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !990, !nonnull !36, !align !208
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !881, !nonnull !36, !align !208
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !551
  %i.ay = sext i32 %i.u to i64
  %i.az = getelementptr inbounds [16 x i8], ptr %i.ax, i64 %i.ay
  store i128 %i.an, ptr %i.az, align 16, !tbaa !653
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.f:                                             ; preds = %.noexc20, %.noexc18
  %i.ba = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %eh.lpad-body23 = phi { ptr, i32 } [ %i.ba, %bb.f ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.bb = extractvalue { ptr, i32 } %eh.lpad-body23, 0 ; 2 uses
  %i.bc = extractvalue { ptr, i32 } %eh.lpad-body23, 1 ; 2 uses
  %i.bd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #21
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.body
  %i.bf = call ptr @__cxa_begin_catch(ptr %i.bb) #21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !883 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !34 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 152
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !18
  %i.bm = icmp eq i64 %i.bl, 4
  br i1 %i.bm, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.g
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !13
  %or.cond.not.i.i.i = icmp eq i8 %i.bn, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !13
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.bp, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.br, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.bt, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.v, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.o unwind label %bb.q

.loopexit:                                        ; preds = %bb.g, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #32
          to label %bb.u unwind label %bb.n

bb.h:                                             ; preds = %.body
  %i.bu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.bv = icmp eq i32 %i.bc, %i.bu
  br i1 %i.bv, label %bb.i, label %.loopexit51

bb.i:                                             ; preds = %bb.h
  %i.bw = call ptr @__cxa_begin_catch(ptr %i.bb) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.v, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bx = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i36 = icmp eq ptr %i.bx, null
  br i1 %.not.i36, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.l:                                             ; preds = %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i37 = icmp eq ptr %i.bz, null
  br i1 %.not.i37, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  invoke void @__cxa_end_catch()
          to label %.loopexit51 unwind label %bb.t

bb.n:                                             ; preds = %.loopexit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cb = load ptr, ptr %7, align 8, !tbaa !409
  %.not.i39 = icmp eq ptr %i.cb, null
  br i1 %.not.i39, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.q:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %7, align 8, !tbaa !409
  %.not.i41 = icmp eq ptr %i.cd, null
  br i1 %.not.i41, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.cc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit42 ], [ %i.ca, %bb.n ]
  invoke void @__cxa_end_catch()
          to label %.loopexit51 unwind label %bb.t

.loopexit51:                                      ; preds = %bb.h, %bb.s, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38
  %.merged.i = phi { ptr, i32 } [ %i.by, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38 ], [ %.pn.i, %bb.s ], [ %eh.lpad-body23, %bb.h ]
  resume { ptr, i32 } %.merged.i

bb.t:                                             ; preds = %bb.s, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #33
  unreachable

bb.u:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit35, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40
  %i.cg = add i64 %.059, -1
  %i.ch = and i64 %i.cg, %.059                    ; 2 uses
  %.not10 = icmp eq i64 %i.ch, 0
  br i1 %.not10, label %.loopexit50, label %.noexc16, !llvm.loop !1002

.loopexit50:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_20ConstantVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.564", align 16 ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.564", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1003, !range !35, !noundef !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1005
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !133
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.noexc22.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit113
  ]

.noexc22.lr.ph:                                   ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.p = ptrtoint ptr %9 to i64
  %.sroa_idx3.i68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %.noexc22

bb.b:                                             ; preds = %bb.a
  %i.r = shl i32 %1, 6                            ; 3 uses
  %i.s = add i32 %i.r, 64
  %i.t = sext i32 %i.s to i64
  %.not141 = icmp eq i32 %i.r, -64
  br i1 %.not141, label %.loopexit113, label %.noexc35.lr.ph

.noexc35.lr.ph:                                   ; preds = %bb.b
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.z = ptrtoint ptr %5 to i64
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %.noexc35

.noexc35:                                         ; preds = %.noexc35.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit
  %.0137 = phi i64 [ %i.u, %.noexc35.lr.ph ], [ %i.cn, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit ] ; 4 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !561 ; 2 uses
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !979, !nonnull !36, !align !208 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !980, !nonnull !36, !align !208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !1006
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 8, !noalias !1006 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !13, !noalias !1006 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8, !noalias !1006
  store ptr %.sroa.2.0.copyload.i, ptr %i.x, align 8, !noalias !1006
  %i.af = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.ag = icmp ult i32 %i.af, 13
  %i.ah = select i1 %i.ag, ptr %i.y, ptr %.sroa.2.0.copyload.i ; 3 uses
  %i.ai = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 5 uses
  %i.aj = and i64 %.sroa.0.0.copyload.i, 4294967264 ; 2 uses
  %.not.i7.i195 = icmp samesign ult i64 %i.ai, 32
  br i1 %.not.i7.i195, label %.preheader, label %.lr.ph197

bb.c:                                             ; preds = %.lr.ph197
  %i.ak = add nuw nsw i64 %i.am, 32               ; 2 uses
  %.not.i7.i = icmp samesign ugt i64 %i.ak, %i.ai
  br i1 %.not.i7.i, label %.preheader, label %.lr.ph197, !llvm.loop !985

.preheader:                                       ; preds = %bb.c, %.noexc35
  %i.al = icmp samesign ult i64 %i.aj, %i.ai
  br i1 %i.al, label %.lr.ph136, label %.noexc40

.lr.ph197:                                        ; preds = %.noexc35, %bb.c
  %i.am = phi i64 [ %i.ak, %bb.c ], [ 32, %.noexc35 ] ; 2 uses
  %.011.i.i196 = phi i64 [ %i.am, %bb.c ], [ 0, %.noexc35 ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.011.i.i196
  %i.ao = load <4 x i64>, ptr %i.an, align 1, !tbaa !13, !noalias !1009
  %i.ap = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ao, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not16.not.i.i, label %.noexc36, label %bb.c, !llvm.loop !985

bb.d:                                             ; preds = %.lr.ph136
  %i.aq = add nuw nsw i64 %.1.i.i135, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.ai
  br i1 %exitcond.not, label %.noexc40, label %.lr.ph136, !llvm.loop !986

.lr.ph136:                                        ; preds = %.preheader, %bb.d
  %.1.i.i135 = phi i64 [ %i.aq, %bb.d ], [ %i.aj, %.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.1.i.i135
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13, !noalias !1009
  %.not15.i.i = icmp sgt i8 %i.as, -1
  br i1 %.not15.i.i, label %bb.d, label %.noexc36

.noexc36:                                         ; preds = %.lr.ph197, %.lr.ph136
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !1009
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !1012
  store i64 %i.z, ptr %3, align 16, !noalias !1012
  store i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox10StringViewENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_ to i64), ptr %.sroa_idx3.i, align 8, !noalias !1012
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.105, i64 23, i64 15, ptr nonnull %3)
          to label %.noexc37 unwind label %bb.g

.noexc37:                                         ; preds = %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !1012
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions27ParsePrestoDataSizeFunctionINS0_4exec10VectorExecEE4callERnRKNS0_10StringViewEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.105) #32
          to label %bb.e unwind label %bb.f, !noalias !1009

bb.e:                                             ; preds = %.noexc37
  unreachable

bb.f:                                             ; preds = %.noexc37
  %i.at = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.au = load ptr, ptr %4, align 8, !tbaa !34, !noalias !1009 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.aa
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.aw = load i64, ptr %i.aa, align 8, !tbaa !13, !noalias !1009
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #34, !noalias !1009
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !1009
  br label %.body38

.noexc40:                                         ; preds = %bb.d, %.preheader
  %i.ay = invoke noundef i128 @_ZN8facebook5velox9functions10getDecimalESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.ai, ptr %i.ah)
          to label %_ZN8facebook5velox6StatusD2Ev.exit53 unwind label %bb.g

_ZN8facebook5velox6StatusD2Ev.exit53:             ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !1006
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !990, !nonnull !36, !align !208
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !881, !nonnull !36, !align !208
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !551
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %.0137
  store i128 %i.ay, ptr %i.be, align 16, !tbaa !653
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit

bb.g:                                             ; preds = %.noexc36, %.noexc40
  %i.bf = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body38

.body38:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.bf, %bb.g ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.bg = extractvalue { ptr, i32 } %eh.lpad-body39, 0 ; 2 uses
  %i.bh = extractvalue { ptr, i32 } %eh.lpad-body39, 1 ; 2 uses
  %i.bi = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #21
  %i.bj = icmp eq i32 %i.bh, %i.bi
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.body38
  %i.bk = call ptr @__cxa_begin_catch(ptr %i.bg) #21
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !883 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !34 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 152
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !18
  %i.br = icmp eq i64 %i.bq, 4
  br i1 %i.br, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !13
  %or.cond.not.i.i.i = icmp eq i8 %i.bs, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.bu, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !13
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.bw, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.by, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.bz = trunc i64 %.0137 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ab, i32 noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.p unwind label %bb.r

.loopexit:                                        ; preds = %bb.h, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #32
          to label %bb.v unwind label %bb.o

bb.i:                                             ; preds = %.body38
  %i.ca = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.cb = icmp eq i32 %i.bh, %i.ca
  br i1 %i.cb, label %bb.j, label %common.resume

bb.j:                                             ; preds = %bb.i
  %i.cc = call ptr @__cxa_begin_catch(ptr %i.bg) #21 ; 0 uses
  %i.cd = trunc i64 %.0137 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ab, i32 noundef %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ce = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i54 = icmp eq ptr %i.ce, null
  br i1 %.not.i54, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit

bb.m:                                             ; preds = %bb.j
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i55 = icmp eq ptr %i.cg, null
  br i1 %.not.i55, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.u

bb.o:                                             ; preds = %.loopexit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.ci = load ptr, ptr %7, align 8, !tbaa !409
  %.not.i57 = icmp eq ptr %i.ci, null
  br i1 %.not.i57, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit

bb.r:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %7, align 8, !tbaa !409
  %.not.i59 = icmp eq ptr %i.ck, null
  br i1 %.not.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60, %bb.o
  %.pn.i31 = phi { ptr, i32 } [ %i.cj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60 ], [ %i.ch, %bb.o ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.u

common.resume:                                    ; preds = %bb.i, %bb.ac, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94, %bb.an, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %.pn.i31, %bb.t ], [ %i.cf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56 ], [ %.pn.i, %bb.an ], [ %i.ev, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94 ], [ %eh.lpad-body29, %bb.ac ], [ %eh.lpad-body39, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.t, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #33
  unreachable

bb.v:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit53, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58
  %i.cn = add nuw i64 %.0137, 1                   ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.t
  br i1 %i.co, label %.noexc35, label %.loopexit113, !llvm.loop !1015

.noexc22:                                         ; preds = %.noexc22.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit
  %.015134 = phi i64 [ %i.j, %.noexc22.lr.ph ], [ %i.fe, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit ] ; 3 uses
  %i.cp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015134, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = or disjoint i32 %i.l, %i.cq             ; 3 uses
  %i.cs = load ptr, ptr %i.m, align 8, !tbaa !561 ; 2 uses
  %i.ct = load ptr, ptr %i.k, align 8, !tbaa !979, !nonnull !36, !align !208 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !980, !nonnull !36, !align !208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21, !noalias !1016
  %.sroa.0.0.copyload.i61 = load i64, ptr %i.cv, align 8, !noalias !1016 ; 4 uses
  %.sroa.2.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.2.0.copyload.i63 = load ptr, ptr %.sroa.2.0..sroa_idx.i62, align 8, !tbaa !13, !noalias !1016 ; 2 uses
  store i64 %.sroa.0.0.copyload.i61, ptr %9, align 8, !noalias !1016
  store ptr %.sroa.2.0.copyload.i63, ptr %i.n, align 8, !noalias !1016
  %i.cw = trunc i64 %.sroa.0.0.copyload.i61 to i32
  %i.cx = icmp ult i32 %i.cw, 13
  %i.cy = select i1 %i.cx, ptr %i.o, ptr %.sroa.2.0.copyload.i63 ; 3 uses
  %i.cz = and i64 %.sroa.0.0.copyload.i61, 4294967295 ; 5 uses
  %i.da = and i64 %.sroa.0.0.copyload.i61, 4294967264 ; 2 uses
  %.not.i198 = icmp samesign ult i64 %i.cz, 32
  br i1 %.not.i198, label %.preheader116, label %.lr.ph200

bb.w:                                             ; preds = %.lr.ph200
  %i.db = add nuw nsw i64 %i.dd, 32               ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.db, %i.cz
  br i1 %.not.i, label %.preheader116, label %.lr.ph200, !llvm.loop !985

.preheader116:                                    ; preds = %bb.w, %.noexc22
  %i.dc = icmp samesign ult i64 %i.da, %i.cz
  br i1 %i.dc, label %.lr.ph, label %.noexc24

.lr.ph200:                                        ; preds = %.noexc22, %bb.w
  %i.dd = phi i64 [ %i.db, %bb.w ], [ 32, %.noexc22 ] ; 2 uses
  %.011.i199 = phi i64 [ %i.dd, %bb.w ], [ 0, %.noexc22 ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.011.i199
  %i.df = load <4 x i64>, ptr %i.de, align 1, !tbaa !13
  %i.dg = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.df, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i = icmp eq i32 %i.dg, 0
  br i1 %.not16.not.i, label %.noexc26, label %bb.w, !llvm.loop !985

bb.x:                                             ; preds = %.lr.ph
  %i.dh = add nuw nsw i64 %.1.i132, 1             ; 2 uses
  %exitcond158.not = icmp eq i64 %i.dh, %i.cz
  br i1 %exitcond158.not, label %.noexc24, label %.lr.ph, !llvm.loop !986

.lr.ph:                                           ; preds = %.preheader116, %bb.x
  %.1.i132 = phi i64 [ %i.dh, %bb.x ], [ %i.da, %.preheader116 ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.1.i132
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %.not15.i = icmp sgt i8 %i.dj, -1
  br i1 %.not15.i, label %bb.x, label %.noexc26

.noexc24:                                         ; preds = %bb.x, %.preheader116
  %i.dk = invoke noundef i128 @_ZN8facebook5velox9functions10getDecimalESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.cz, ptr %i.cy)
          to label %_ZN8facebook5velox6StatusD2Ev.exit85 unwind label %bb.aa

.noexc26:                                         ; preds = %.lr.ph200, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !1019
  store i64 %i.p, ptr %2, align 16, !noalias !1019
  store i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox10StringViewENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_ to i64), ptr %.sroa_idx3.i68, align 8, !noalias !1019
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.105, i64 23, i64 15, ptr nonnull %2)
          to label %.noexc27 unwind label %bb.aa

.noexc27:                                         ; preds = %.noexc26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !1019
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions27ParsePrestoDataSizeFunctionINS0_4exec10VectorExecEE4callERnRKNS0_10StringViewEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.105) #32
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc27
  unreachable

bb.z:                                             ; preds = %.noexc27
  %i.dl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.dm = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.q
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.z
  %i.do = load i64, ptr %i.q, align 8, !tbaa !13
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.body

_ZN8facebook5velox6StatusD2Ev.exit85:             ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21, !noalias !1016
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !990, !nonnull !36, !align !208
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !881, !nonnull !36, !align !208
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !551
  %i.dv = sext i32 %i.cr to i64
  %i.dw = getelementptr inbounds [16 x i8], ptr %i.du, i64 %i.dv
  store i128 %i.dk, ptr %i.dw, align 16, !tbaa !653
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.aa:                                            ; preds = %.noexc26, %.noexc24
  %i.dx = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %eh.lpad-body29 = phi { ptr, i32 } [ %i.dx, %bb.aa ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ] ; 3 uses
  %i.dy = extractvalue { ptr, i32 } %eh.lpad-body29, 0 ; 2 uses
  %i.dz = extractvalue { ptr, i32 } %eh.lpad-body29, 1 ; 2 uses
  %i.ea = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #21
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.body
  %i.ec = call ptr @__cxa_begin_catch(ptr %i.dy) #21
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !883 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 144
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !34 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 152
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !18
  %i.ej = icmp eq i64 %i.ei, 4
  br i1 %i.ej, label %.lr.ph.i.i.i.i86.preheader, label %.loopexit115

.lr.ph.i.i.i.i86.preheader:                       ; preds = %bb.ab
  %i.ek = load i8, ptr %i.eg, align 1, !tbaa !13
  %or.cond.not.i.i.i88 = icmp eq i8 %i.ek, 85
  br i1 %or.cond.not.i.i.i88, label %tailrecurse.i.i.i.i89, label %.loopexit115

tailrecurse.i.i.i.i89:                            ; preds = %.lr.ph.i.i.i.i86.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !13
  %or.cond.not.i.i.i88.1 = icmp eq i8 %i.em, 83
  br i1 %or.cond.not.i.i.i88.1, label %tailrecurse.i.i.i.i89.1, label %.loopexit115

tailrecurse.i.i.i.i89.1:                          ; preds = %tailrecurse.i.i.i.i89
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !13
  %or.cond.not.i.i.i88.2 = icmp eq i8 %i.eo, 69
  br i1 %or.cond.not.i.i.i88.2, label %tailrecurse.i.i.i.i89.2, label %.loopexit115

tailrecurse.i.i.i.i89.2:                          ; preds = %tailrecurse.i.i.i.i89.1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !13
  %or.cond.not.i.i.i88.3 = icmp eq i8 %i.eq, 82
  br i1 %or.cond.not.i.i.i88.3, label %tailrecurse.i.i.i.i89.3, label %.loopexit115

tailrecurse.i.i.i.i89.3:                          ; preds = %tailrecurse.i.i.i.i89.2
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.cs, i32 noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.aj unwind label %bb.al

.loopexit115:                                     ; preds = %bb.ab, %.lr.ph.i.i.i.i86.preheader, %tailrecurse.i.i.i.i89, %tailrecurse.i.i.i.i89.1, %tailrecurse.i.i.i.i89.2
  invoke void @__cxa_rethrow() #32
          to label %bb.ap unwind label %bb.ai

bb.ac:                                            ; preds = %.body
  %i.er = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.es = icmp eq i32 %i.dz, %i.er
  br i1 %i.es, label %bb.ad, label %common.resume

bb.ad:                                            ; preds = %bb.ac
  %i.et = call ptr @__cxa_begin_catch(ptr %i.dy) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %10) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.cs, i32 noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.eu = load ptr, ptr %10, align 8, !tbaa !409
  %.not.i91 = icmp eq ptr %i.eu, null
  br i1 %.not.i91, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.ag:                                            ; preds = %bb.ad
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = load ptr, ptr %10, align 8, !tbaa !409
  %.not.i93 = icmp eq ptr %i.ew, null
  br i1 %.not.i93, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ao

bb.ai:                                            ; preds = %.loopexit115
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.aj:                                            ; preds = %tailrecurse.i.i.i.i89.3
  %i.ey = load ptr, ptr %11, align 8, !tbaa !409
  %.not.i95 = icmp eq ptr %i.ey, null
  br i1 %.not.i95, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit96, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit96

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit96: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_20ConstantVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.al:                                            ; preds = %tailrecurse.i.i.i.i89.3
  %i.ez = landingpad { ptr, i32 }
          cleanup
  %i.fa = load ptr, ptr %11, align 8, !tbaa !409
  %.not.i97 = icmp eq ptr %i.fa, null
  br i1 %.not.i97, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit98, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit98

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit98: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit98, %bb.ai
  %.pn.i = phi { ptr, i32 } [ %i.ez, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit98 ], [ %i.ex, %bb.ai ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94
  %i.fb = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_16FlatVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi:bb.a
bb.z:                                             ; preds = %tailrecurse.i.i.i.i68.3
  %i.du = load ptr, ptr %7, align 8, !tbaa !409
  %.not.i74 = icmp eq ptr %i.du, null
  br i1 %.not.i74, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.ab:                                            ; preds = %tailrecurse.i.i.i.i68.3
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %7, align 8, !tbaa !409
  %.not.i76 = icmp eq ptr %i.dw, null
  br i1 %.not.i76, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77, %bb.y
  %.pn.i = phi { ptr, i32 } [ %i.dv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77 ], [ %i.dt, %bb.y ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #33
  unreachable

bb.af:                                            ; preds = %.loopexit83
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit64, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75
  %i.dz = add i64 %.01597, -1
  %i.ea = and i64 %i.dz, %.01597                  ; 2 uses
  %.not = icmp eq i64 %i.ea, 0
  br i1 %.not, label %.loopexit81, label %.noexc18, !llvm.loop !1052

.loopexit81:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_16FlatVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKS1_SV_EUlSV_E_EEvSZ_SV_T0_EUlSV_E_EEvSV_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.597) align 8 %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.564", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !846, !range !35, !noundef !36
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !49, !range !35
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !828
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !829  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !847
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !585    ; 2 uses
  %.not.i.i13 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i13, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i74.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i74.not, label %.critedge.i.i.i, label %.lr.ph76

bb.f:                                             ; preds = %.lr.ph76
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i75, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph76, label %.critedge.i.i.i, !llvm.loop !848

.lr.ph76:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i75 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i75, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !133
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !848

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !133
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph76, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph76 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.ac

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !829 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !828 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.noexc6.lr.ph, label %.loopexit38

.noexc6.lr.ph:                                    ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !572 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !1053, !nonnull !36, !align !208 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ao = ptrtoint ptr %4 to i64
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ar = sext i32 %i.ag to i64
  br label %.noexc6

.noexc6:                                          ; preds = %.noexc6.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit
  %indvars.iv = phi i64 [ %i.ar, %.noexc6.lr.ph ], [ %indvars.iv.next, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit ] ; 5 uses
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !1054, !nonnull !36, !align !208
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !1056
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !566, !noalias !1056
  %i.au = getelementptr inbounds [16 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.au, align 8, !noalias !1056 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !13, !noalias !1056 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8, !noalias !1056
  store ptr %.sroa.2.0.copyload.i, ptr %i.am, align 8, !noalias !1056
  %i.av = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.aw = icmp ult i32 %i.av, 13
  %i.ax = select i1 %i.aw, ptr %i.an, ptr %.sroa.2.0.copyload.i ; 3 uses
  %i.ay = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 5 uses
  %i.az = and i64 %.sroa.0.0.copyload.i, 4294967264 ; 2 uses
  %.not.i.i577 = icmp samesign ult i64 %i.ay, 32
  br i1 %.not.i.i577, label %.preheader, label %.lr.ph79

bb.i:                                             ; preds = %.lr.ph79
  %i.ba = add nuw nsw i64 %i.bc, 32               ; 2 uses
  %.not.i.i5 = icmp samesign ugt i64 %i.ba, %i.ay
  br i1 %.not.i.i5, label %.preheader, label %.lr.ph79, !llvm.loop !985

.preheader:                                       ; preds = %bb.i, %.noexc6
  %i.bb = icmp samesign ult i64 %i.az, %i.ay
  br i1 %i.bb, label %.lr.ph, label %.noexc11

.lr.ph79:                                         ; preds = %.noexc6, %bb.i
  %i.bc = phi i64 [ %i.ba, %bb.i ], [ 32, %.noexc6 ] ; 2 uses
  %.011.i.i78 = phi i64 [ %i.bc, %bb.i ], [ 0, %.noexc6 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.011.i.i78
  %i.be = load <4 x i64>, ptr %i.bd, align 1, !tbaa !13, !noalias !1059
  %i.bf = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.be, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not16.not.i.i, label %.noexc7, label %bb.i, !llvm.loop !985

bb.j:                                             ; preds = %.lr.ph
  %i.bg = add nuw nsw i64 %.1.i.i46, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %i.ay
  br i1 %exitcond.not, label %.noexc11, label %.lr.ph, !llvm.loop !986

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.1.i.i46 = phi i64 [ %i.bg, %bb.j ], [ %i.az, %.preheader ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.1.i.i46
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13, !noalias !1059
  %.not15.i.i = icmp sgt i8 %i.bi, -1
  br i1 %.not15.i.i, label %bb.j, label %.noexc7

.noexc7:                                          ; preds = %.lr.ph79, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !1059
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !1062
  store i64 %i.ao, ptr %2, align 16, !noalias !1062
  store i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox10StringViewENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_ to i64), ptr %.sroa_idx3.i, align 8, !noalias !1062
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.105, i64 23, i64 15, ptr nonnull %2)
          to label %.noexc8 unwind label %bb.m

.noexc8:                                          ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !1062
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions27ParsePrestoDataSizeFunctionINS0_4exec10VectorExecEE4callERnRKNS0_10StringViewEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.105) #32
          to label %bb.k unwind label %bb.l, !noalias !1059

bb.k:                                             ; preds = %.noexc8
  unreachable

bb.l:                                             ; preds = %.noexc8
  %i.bj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.bk = load ptr, ptr %3, align 8, !tbaa !34, !noalias !1059 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ap
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bm = load i64, ptr %i.ap, align 8, !tbaa !13, !noalias !1059
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #34, !noalias !1059
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !1059
  br label %.body

.noexc11:                                         ; preds = %bb.j, %.preheader
  %i.bo = invoke noundef i128 @_ZN8facebook5velox9functions10getDecimalESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.ay, ptr %i.ax)
          to label %_ZN8facebook5velox6StatusD2Ev.exit24 unwind label %bb.m

_ZN8facebook5velox6StatusD2Ev.exit24:             ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !1056
  %i.bp = load ptr, ptr %i.aq, align 8, !tbaa !1065, !nonnull !36, !align !208
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1031, !nonnull !36, !align !208
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !551
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %indvars.iv
  store i128 %i.bo, ptr %i.bt, align 16, !tbaa !653
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.m:                                             ; preds = %.noexc7, %.noexc11
  %i.bu = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %eh.lpad-body10 = phi { ptr, i32 } [ %i.bu, %bb.m ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.bv = extractvalue { ptr, i32 } %eh.lpad-body10, 0 ; 2 uses
  %i.bw = extractvalue { ptr, i32 } %eh.lpad-body10, 1 ; 2 uses
  %i.bx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #21
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.body
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.bv) #21
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !883 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 144
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !34 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 152
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !18
  %i.cg = icmp eq i64 %i.cf, 4
  br i1 %i.cg, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.n
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !13
  %or.cond.not.i.i.i = icmp eq i8 %i.ch, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !13
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.cj, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !13
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.cl, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.cn, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #21
  %i.co = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.co, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.v unwind label %bb.x

.loopexit:                                        ; preds = %bb.n, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #32
          to label %bb.ab unwind label %bb.u

bb.o:                                             ; preds = %.body
  %i.cp = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.cq = icmp eq i32 %i.bw, %i.cp
  br i1 %i.cq, label %bb.p, label %.loopexit39

bb.p:                                             ; preds = %bb.o
  %i.cr = call ptr @__cxa_begin_catch(ptr %i.bv) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #21
  %i.cs = trunc nsw i64 %indvars.iv to i32
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ct = load ptr, ptr %5, align 8, !tbaa !409
  %.not.i25 = icmp eq ptr %i.ct, null
  br i1 %.not.i25, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.s:                                             ; preds = %bb.p
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %5, align 8, !tbaa !409
  %.not.i26 = icmp eq ptr %i.cv, null
  br i1 %.not.i26, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  invoke void @__cxa_end_catch()
          to label %.loopexit39 unwind label %bb.aa

bb.u:                                             ; preds = %.loopexit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.v:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cx = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i28 = icmp eq ptr %i.cx, null
  br i1 %.not.i28, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit29, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit29

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit29: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.x:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i30 = icmp eq ptr %i.cz, null
  br i1 %.not.i30, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31, %bb.u
  %.pn.i = phi { ptr, i32 } [ %i.cy, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31 ], [ %i.cw, %bb.u ]
  invoke void @__cxa_end_catch()
          to label %.loopexit39 unwind label %bb.aa

.loopexit39:                                      ; preds = %bb.o, %bb.z, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27
  %.merged.i = phi { ptr, i32 } [ %i.cu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27 ], [ %.pn.i, %bb.z ], [ %eh.lpad-body10, %bb.o ]
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_16FlatVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKS1_SV_EUlSV_E_EEvSZ_SV_T0_EUlSV_E_EEvSV_:bb.a
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #33
  unreachable

bb.ab:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond56.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond56.not, label %.loopexit38, label %.noexc6, !llvm.loop !1066

bb.ac:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.dc = load ptr, ptr %0, align 8, !tbaa !585
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !828
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !829
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_16FlatVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_(ptr noundef %i.dc, i32 noundef %i.de, i32 noundef %i.dg, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.597) align 8 %1)
  br label %.loopexit38

.loopexit38:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit, %bb.h, %bb.ac
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_16FlatVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.597) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.599, align 8            ; 6 uses
  %6 = alloca %class.anon.598, align 8            ; 8 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 %i.a, ptr %5, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.25.0..sroa_idx, align 8
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS4_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSK_EEEE7iterateIJNS4_16FlatVectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_16FlatVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS4_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSK_EEEE7iterateIJNS4_16FlatVectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_16FlatVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS4_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSK_EEEE7iterateIJNS4_16FlatVectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_16FlatVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1067

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_16FlatVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS4_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSK_EEEE7iterateIJNS4_16FlatVectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS4_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSK_EEEE7iterateIJNS4_16FlatVectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_16FlatVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.564", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1068, !range !35, !noundef !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1070
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !133
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit45, label %.preheader44

.preheader44:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.q = ptrtoint ptr %5 to i64
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %.noexc13

.noexc13:                                         ; preds = %.preheader44, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit
  %.054 = phi i64 [ %i.k, %.preheader44 ], [ %i.cj, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit ] ; 3 uses
  %i.s = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.054, i1 true)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = or disjoint i32 %i.m, %i.t               ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !572  ; 2 uses
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !1053, !nonnull !36, !align !208 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1054, !nonnull !36, !align !208
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !1071
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !566, !noalias !1071
  %i.aa = sext i32 %i.u to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ab, align 8, !noalias !1071 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !13, !noalias !1071 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8, !noalias !1071
  store ptr %.sroa.2.0.copyload.i, ptr %i.o, align 8, !noalias !1071
  %i.ac = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.ad = icmp ult i32 %i.ac, 13
  %i.ae = select i1 %i.ad, ptr %i.p, ptr %.sroa.2.0.copyload.i ; 3 uses
  %i.af = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 5 uses
  %i.ag = and i64 %.sroa.0.0.copyload.i, 4294967264 ; 2 uses
  %.not.i.i1278 = icmp samesign ult i64 %i.af, 32
  br i1 %.not.i.i1278, label %.preheader, label %.lr.ph80

bb.b:                                             ; preds = %.lr.ph80
  %i.ah = add nuw nsw i64 %i.aj, 32               ; 2 uses
  %.not.i.i12 = icmp samesign ugt i64 %i.ah, %i.af
  br i1 %.not.i.i12, label %.preheader, label %.lr.ph80, !llvm.loop !985

.preheader:                                       ; preds = %bb.b, %.noexc13
  %i.ai = icmp samesign ult i64 %i.ag, %i.af
  br i1 %i.ai, label %.lr.ph, label %.noexc18

.lr.ph80:                                         ; preds = %.noexc13, %bb.b
  %i.aj = phi i64 [ %i.ah, %bb.b ], [ 32, %.noexc13 ] ; 2 uses
  %.011.i.i79 = phi i64 [ %i.aj, %bb.b ], [ 0, %.noexc13 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.011.i.i79
  %i.al = load <4 x i64>, ptr %i.ak, align 1, !tbaa !13, !noalias !1074
  %i.am = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.al, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not16.not.i.i, label %.noexc14, label %bb.b, !llvm.loop !985

bb.c:                                             ; preds = %.lr.ph
  %i.an = add nuw nsw i64 %.1.i.i53, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %i.af
  br i1 %exitcond.not, label %.noexc18, label %.lr.ph, !llvm.loop !986

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.1.i.i53 = phi i64 [ %i.an, %bb.c ], [ %i.ag, %.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.1.i.i53
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13, !noalias !1074
  %.not15.i.i = icmp sgt i8 %i.ap, -1
  br i1 %.not15.i.i, label %bb.c, label %.noexc14

.noexc14:                                         ; preds = %.lr.ph80, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !1074
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !1077
  store i64 %i.q, ptr %3, align 16, !noalias !1077
  store i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox10StringViewENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_ to i64), ptr %.sroa_idx3.i, align 8, !noalias !1077
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.105, i64 23, i64 15, ptr nonnull %3)
          to label %.noexc15 unwind label %bb.f

.noexc15:                                         ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !1077
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions27ParsePrestoDataSizeFunctionINS0_4exec10VectorExecEE4callERnRKNS0_10StringViewEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.105) #32
          to label %bb.d unwind label %bb.e, !noalias !1074

bb.d:                                             ; preds = %.noexc15
  unreachable

bb.e:                                             ; preds = %.noexc15
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ar = load ptr, ptr %4, align 8, !tbaa !34, !noalias !1074 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.r
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.at = load i64, ptr %i.r, align 8, !tbaa !13, !noalias !1074
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #34, !noalias !1074
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !1074
  br label %.body

.noexc18:                                         ; preds = %bb.c, %.preheader
  %i.av = invoke noundef i128 @_ZN8facebook5velox9functions10getDecimalESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.af, ptr %i.ae)
          to label %_ZN8facebook5velox6StatusD2Ev.exit30 unwind label %bb.f

_ZN8facebook5velox6StatusD2Ev.exit30:             ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !1071
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1065, !nonnull !36, !align !208
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1031, !nonnull !36, !align !208
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !551
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.aa
  store i128 %i.av, ptr %i.bb, align 16, !tbaa !653
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.f:                                             ; preds = %.noexc14, %.noexc18
  %i.bc = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %eh.lpad-body17 = phi { ptr, i32 } [ %i.bc, %bb.f ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.bd = extractvalue { ptr, i32 } %eh.lpad-body17, 0 ; 2 uses
  %i.be = extractvalue { ptr, i32 } %eh.lpad-body17, 1 ; 2 uses
  %i.bf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #21
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.body
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bd) #21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !883 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !34 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.bo = icmp eq i64 %i.bn, 4
  br i1 %i.bo, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.g
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !13
  %or.cond.not.i.i.i = icmp eq i8 %i.bp, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.br, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.bt, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !13
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.bv, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.v, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.o unwind label %bb.q

.loopexit:                                        ; preds = %bb.g, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #32
          to label %bb.u unwind label %bb.n

bb.h:                                             ; preds = %.body
  %i.bw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.bx = icmp eq i32 %i.be, %i.bw
  br i1 %i.bx, label %bb.i, label %.loopexit46

bb.i:                                             ; preds = %bb.h
  %i.by = call ptr @__cxa_begin_catch(ptr %i.bd) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.v, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bz = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i31 = icmp eq ptr %i.bz, null
  br i1 %.not.i31, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.l:                                             ; preds = %bb.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i32 = icmp eq ptr %i.cb, null
  br i1 %.not.i32, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  invoke void @__cxa_end_catch()
          to label %.loopexit46 unwind label %bb.t

bb.n:                                             ; preds = %.loopexit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cd = load ptr, ptr %7, align 8, !tbaa !409
  %.not.i34 = icmp eq ptr %i.cd, null
  br i1 %.not.i34, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.q:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %7, align 8, !tbaa !409
  %.not.i36 = icmp eq ptr %i.cf, null
  br i1 %.not.i36, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.ce, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37 ], [ %i.cc, %bb.n ]
  invoke void @__cxa_end_catch()
          to label %.loopexit46 unwind label %bb.t

.loopexit46:                                      ; preds = %bb.h, %bb.s, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33
  %.merged.i = phi { ptr, i32 } [ %i.ca, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33 ], [ %.pn.i, %bb.s ], [ %eh.lpad-body17, %bb.h ]
  resume { ptr, i32 } %.merged.i

bb.t:                                             ; preds = %bb.s, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #33
  unreachable

bb.u:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit30, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35
  %i.ci = add i64 %.054, -1
  %i.cj = and i64 %i.ci, %.054                    ; 2 uses
  %.not10 = icmp eq i64 %i.cj, 0
  br i1 %.not10, label %.loopexit45, label %.noexc13, !llvm.loop !1080

.loopexit45:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_16FlatVectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.564", align 16 ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.564", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1081, !range !35, !noundef !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1083
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !133
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.noexc19.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit108
  ]

.noexc19.lr.ph:                                   ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.p = ptrtoint ptr %9 to i64
  %.sroa_idx3.i61 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %.noexc19

bb.b:                                             ; preds = %bb.a
  %i.r = shl i32 %1, 6                            ; 3 uses
  %i.s = add i32 %i.r, 64
  %i.t = sext i32 %i.s to i64
  %.not136 = icmp eq i32 %i.r, -64
  br i1 %.not136, label %.loopexit108, label %.noexc31.lr.ph

.noexc31.lr.ph:                                   ; preds = %bb.b
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.z = ptrtoint ptr %5 to i64
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %.noexc31

.noexc31:                                         ; preds = %.noexc31.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit
  %.0132 = phi i64 [ %i.u, %.noexc31.lr.ph ], [ %i.cp, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit ] ; 4 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !572 ; 2 uses
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !1053, !nonnull !36, !align !208 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1054, !nonnull !36, !align !208
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !1084
  %i.af = trunc i64 %.0132 to i32                 ; 2 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !566, !noalias !1084
  %sext = shl i64 %.0132, 32
  %i.ah = ashr exact i64 %sext, 28
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %i.ah ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ai, align 8, !noalias !1084 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !13, !noalias !1084 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8, !noalias !1084
  store ptr %.sroa.2.0.copyload.i, ptr %i.x, align 8, !noalias !1084
  %i.aj = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.ak = icmp ult i32 %i.aj, 13
  %i.al = select i1 %i.ak, ptr %i.y, ptr %.sroa.2.0.copyload.i ; 3 uses
  %i.am = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 5 uses
  %i.an = and i64 %.sroa.0.0.copyload.i, 4294967264 ; 2 uses
  %.not.i.i.i191 = icmp samesign ult i64 %i.am, 32
  br i1 %.not.i.i.i191, label %.preheader, label %.lr.ph193

bb.c:                                             ; preds = %.lr.ph193
  %i.ao = add nuw nsw i64 %i.aq, 32               ; 2 uses
  %.not.i.i.i = icmp samesign ugt i64 %i.ao, %i.am
  br i1 %.not.i.i.i, label %.preheader, label %.lr.ph193, !llvm.loop !985

.preheader:                                       ; preds = %bb.c, %.noexc31
  %i.ap = icmp samesign ult i64 %i.an, %i.am
  br i1 %i.ap, label %.lr.ph131, label %.noexc36

.lr.ph193:                                        ; preds = %.noexc31, %bb.c
  %i.aq = phi i64 [ %i.ao, %bb.c ], [ 32, %.noexc31 ] ; 2 uses
  %.011.i.i.i192 = phi i64 [ %i.aq, %bb.c ], [ 0, %.noexc31 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %.011.i.i.i192
  %i.as = load <4 x i64>, ptr %i.ar, align 1, !tbaa !13, !noalias !1087
  %i.at = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.as, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not16.not.i.i.i, label %.noexc32, label %bb.c, !llvm.loop !985

bb.d:                                             ; preds = %.lr.ph131
  %i.au = add nuw nsw i64 %.1.i.i.i130, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %i.am
  br i1 %exitcond.not, label %.noexc36, label %.lr.ph131, !llvm.loop !986

.lr.ph131:                                        ; preds = %.preheader, %bb.d
  %.1.i.i.i130 = phi i64 [ %i.au, %bb.d ], [ %i.an, %.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 %.1.i.i.i130
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13, !noalias !1087
  %.not15.i.i.i = icmp sgt i8 %i.aw, -1
  br i1 %.not15.i.i.i, label %bb.d, label %.noexc32

.noexc32:                                         ; preds = %.lr.ph193, %.lr.ph131
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !1087
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !1090
  store i64 %i.z, ptr %3, align 16, !noalias !1090
  store i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox10StringViewENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_ to i64), ptr %.sroa_idx3.i, align 8, !noalias !1090
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.105, i64 23, i64 15, ptr nonnull %3)
          to label %.noexc33 unwind label %bb.g

.noexc33:                                         ; preds = %.noexc32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !1090
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions27ParsePrestoDataSizeFunctionINS0_4exec10VectorExecEE4callERnRKNS0_10StringViewEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.105) #32
          to label %bb.e unwind label %bb.f, !noalias !1087

bb.e:                                             ; preds = %.noexc33
  unreachable

bb.f:                                             ; preds = %.noexc33
  %i.ax = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ay = load ptr, ptr %4, align 8, !tbaa !34, !noalias !1087 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.aa
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ba = load i64, ptr %i.aa, align 8, !tbaa !13, !noalias !1087
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #34, !noalias !1087
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !1087
  br label %.body34

.noexc36:                                         ; preds = %bb.d, %.preheader
  %i.bc = invoke noundef i128 @_ZN8facebook5velox9functions10getDecimalESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.am, ptr %i.al)
          to label %_ZN8facebook5velox6StatusD2Ev.exit48 unwind label %bb.g

_ZN8facebook5velox6StatusD2Ev.exit48:             ; preds = %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !1084
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1065, !nonnull !36, !align !208
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1031, !nonnull !36, !align !208
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !551
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %.0132
  store i128 %i.bc, ptr %i.bi, align 16, !tbaa !653
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit

bb.g:                                             ; preds = %.noexc32, %.noexc36
  %i.bj = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body34

.body34:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %eh.lpad-body35 = phi { ptr, i32 } [ %i.bj, %bb.g ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.bk = extractvalue { ptr, i32 } %eh.lpad-body35, 0 ; 2 uses
  %i.bl = extractvalue { ptr, i32 } %eh.lpad-body35, 1 ; 2 uses
  %i.bm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #21
  %i.bn = icmp eq i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.body34
  %i.bo = call ptr @__cxa_begin_catch(ptr %i.bk) #21
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !883 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 144
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !34 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 152
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !18
  %i.bv = icmp eq i64 %i.bu, 4
  br i1 %i.bv, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !13
  %or.cond.not.i.i.i = icmp eq i8 %i.bw, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.by, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !13
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ca, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !13
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.cc, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ab, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.p unwind label %bb.r

.loopexit:                                        ; preds = %bb.h, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #32
          to label %bb.v unwind label %bb.o

bb.i:                                             ; preds = %.body34
  %i.cd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.ce = icmp eq i32 %i.bl, %i.cd
  br i1 %i.ce, label %bb.j, label %common.resume

bb.j:                                             ; preds = %bb.i
  %i.cf = call ptr @__cxa_begin_catch(ptr %i.bk) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ab, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cg = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i49 = icmp eq ptr %i.cg, null
  br i1 %.not.i49, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit

bb.m:                                             ; preds = %bb.j
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i50 = icmp eq ptr %i.ci, null
  br i1 %.not.i50, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.u

bb.o:                                             ; preds = %.loopexit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.ck = load ptr, ptr %7, align 8, !tbaa !409
  %.not.i52 = icmp eq ptr %i.ck, null
  br i1 %.not.i52, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit

bb.r:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cl = landingpad { ptr, i32 }
          cleanup
  %i.cm = load ptr, ptr %7, align 8, !tbaa !409
  %.not.i54 = icmp eq ptr %i.cm, null
  br i1 %.not.i54, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55, %bb.o
  %.pn.i27 = phi { ptr, i32 } [ %i.cl, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55 ], [ %i.cj, %bb.o ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.u

common.resume:                                    ; preds = %bb.i, %bb.ac, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89, %bb.an, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %.pn.i27, %bb.t ], [ %i.ch, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51 ], [ %.pn.i, %bb.an ], [ %i.ez, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89 ], [ %eh.lpad-body23, %bb.ac ], [ %eh.lpad-body35, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.t, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #33
  unreachable

bb.v:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit48, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53
  %i.cp = add nuw i64 %.0132, 1                   ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.t
  br i1 %i.cq, label %.noexc31, label %.loopexit108, !llvm.loop !1093

.noexc19:                                         ; preds = %.noexc19.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit
  %.015129 = phi i64 [ %i.j, %.noexc19.lr.ph ], [ %i.fi, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit ] ; 3 uses
  %i.cr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015129, i1 true)
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = or disjoint i32 %i.l, %i.cs             ; 3 uses
  %i.cu = load ptr, ptr %i.m, align 8, !tbaa !572 ; 2 uses
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !1053, !nonnull !36, !align !208 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1054, !nonnull !36, !align !208
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21, !noalias !1094
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !566, !noalias !1094
  %i.cz = sext i32 %i.ct to i64                   ; 2 uses
  %i.da = getelementptr inbounds [16 x i8], ptr %i.cy, i64 %i.cz ; 2 uses
  %.sroa.0.0.copyload.i56 = load i64, ptr %i.da, align 8, !noalias !1094 ; 4 uses
  %.sroa.2.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.2.0.copyload.i58 = load ptr, ptr %.sroa.2.0..sroa_idx.i57, align 8, !tbaa !13, !noalias !1094 ; 2 uses
  store i64 %.sroa.0.0.copyload.i56, ptr %9, align 8, !noalias !1094
  store ptr %.sroa.2.0.copyload.i58, ptr %i.n, align 8, !noalias !1094
  %i.db = trunc i64 %.sroa.0.0.copyload.i56 to i32
  %i.dc = icmp ult i32 %i.db, 13
  %i.dd = select i1 %i.dc, ptr %i.o, ptr %.sroa.2.0.copyload.i58 ; 3 uses
  %i.de = and i64 %.sroa.0.0.copyload.i56, 4294967295 ; 5 uses
  %i.df = and i64 %.sroa.0.0.copyload.i56, 4294967264 ; 2 uses
  %.not.i.i18194 = icmp samesign ult i64 %i.de, 32
  br i1 %.not.i.i18194, label %.preheader111, label %.lr.ph196

bb.w:                                             ; preds = %.lr.ph196
  %i.dg = add nuw nsw i64 %i.di, 32               ; 2 uses
  %.not.i.i18 = icmp samesign ugt i64 %i.dg, %i.de
  br i1 %.not.i.i18, label %.preheader111, label %.lr.ph196, !llvm.loop !985

.preheader111:                                    ; preds = %bb.w, %.noexc19
  %i.dh = icmp samesign ult i64 %i.df, %i.de
  br i1 %i.dh, label %.lr.ph, label %.noexc24

.lr.ph196:                                        ; preds = %.noexc19, %bb.w
  %i.di = phi i64 [ %i.dg, %bb.w ], [ 32, %.noexc19 ] ; 2 uses
  %.011.i.i195 = phi i64 [ %i.di, %bb.w ], [ 0, %.noexc19 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.011.i.i195
  %i.dk = load <4 x i64>, ptr %i.dj, align 1, !tbaa !13, !noalias !1097
  %i.dl = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.dk, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not16.not.i.i, label %.noexc20, label %bb.w, !llvm.loop !985

bb.x:                                             ; preds = %.lr.ph
  %i.dm = add nuw nsw i64 %.1.i.i127, 1           ; 2 uses
  %exitcond153.not = icmp eq i64 %i.dm, %i.de
  br i1 %exitcond153.not, label %.noexc24, label %.lr.ph, !llvm.loop !986

.lr.ph:                                           ; preds = %.preheader111, %bb.x
  %.1.i.i127 = phi i64 [ %i.dm, %bb.x ], [ %i.df, %.preheader111 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.1.i.i127
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !13, !noalias !1097
  %.not15.i.i = icmp sgt i8 %i.do, -1
  br i1 %.not15.i.i, label %bb.x, label %.noexc20

.noexc20:                                         ; preds = %.lr.ph196, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !1097
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !1100
  store i64 %i.p, ptr %2, align 16, !noalias !1100
  store i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox10StringViewENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_ to i64), ptr %.sroa_idx3.i61, align 8, !noalias !1100
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.105, i64 23, i64 15, ptr nonnull %2)
          to label %.noexc21 unwind label %bb.aa

.noexc21:                                         ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !1100
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions27ParsePrestoDataSizeFunctionINS0_4exec10VectorExecEE4callERnRKNS0_10StringViewEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.105) #32
          to label %bb.y unwind label %bb.z, !noalias !1097

bb.y:                                             ; preds = %.noexc21
  unreachable

bb.z:                                             ; preds = %.noexc21
  %i.dp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.dq = load ptr, ptr %8, align 8, !tbaa !34, !noalias !1097 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.q
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.z
  %i.ds = load i64, ptr %i.q, align 8, !tbaa !13, !noalias !1097
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #34, !noalias !1097
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !1097
  br label %.body

.noexc24:                                         ; preds = %bb.x, %.preheader111
  %i.du = invoke noundef i128 @_ZN8facebook5velox9functions10getDecimalESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.de, ptr %i.dd)
          to label %_ZN8facebook5velox6StatusD2Ev.exit80 unwind label %bb.aa

_ZN8facebook5velox6StatusD2Ev.exit80:             ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21, !noalias !1094
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1065, !nonnull !36, !align !208
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1031, !nonnull !36, !align !208
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !551
  %i.ea = getelementptr inbounds [16 x i8], ptr %i.dz, i64 %i.cz
  store i128 %i.du, ptr %i.ea, align 16, !tbaa !653
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.aa:                                            ; preds = %.noexc20, %.noexc24
  %i.eb = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %eh.lpad-body23 = phi { ptr, i32 } [ %i.eb, %bb.aa ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ] ; 3 uses
  %i.ec = extractvalue { ptr, i32 } %eh.lpad-body23, 0 ; 2 uses
  %i.ed = extractvalue { ptr, i32 } %eh.lpad-body23, 1 ; 2 uses
  %i.ee = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #21
  %i.ef = icmp eq i32 %i.ed, %i.ee
  br i1 %i.ef, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.body
  %i.eg = call ptr @__cxa_begin_catch(ptr %i.ec) #21
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !883 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 144
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !34 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 152
  %i.em = load i64, ptr %i.el, align 8, !tbaa !18
  %i.en = icmp eq i64 %i.em, 4
  br i1 %i.en, label %.lr.ph.i.i.i.i81.preheader, label %.loopexit110

.lr.ph.i.i.i.i81.preheader:                       ; preds = %bb.ab
  %i.eo = load i8, ptr %i.ek, align 1, !tbaa !13
  %or.cond.not.i.i.i83 = icmp eq i8 %i.eo, 85
  br i1 %or.cond.not.i.i.i83, label %tailrecurse.i.i.i.i84, label %.loopexit110

tailrecurse.i.i.i.i84:                            ; preds = %.lr.ph.i.i.i.i81.preheader
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !13
  %or.cond.not.i.i.i83.1 = icmp eq i8 %i.eq, 83
  br i1 %or.cond.not.i.i.i83.1, label %tailrecurse.i.i.i.i84.1, label %.loopexit110

tailrecurse.i.i.i.i84.1:                          ; preds = %tailrecurse.i.i.i.i84
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %i.es = load i8, ptr %i.er, align 1, !tbaa !13
  %or.cond.not.i.i.i83.2 = icmp eq i8 %i.es, 69
  br i1 %or.cond.not.i.i.i83.2, label %tailrecurse.i.i.i.i84.2, label %.loopexit110

tailrecurse.i.i.i.i84.2:                          ; preds = %tailrecurse.i.i.i.i84.1
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 3
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !13
  %or.cond.not.i.i.i83.3 = icmp eq i8 %i.eu, 82
  br i1 %or.cond.not.i.i.i83.3, label %tailrecurse.i.i.i.i84.3, label %.loopexit110

tailrecurse.i.i.i.i84.3:                          ; preds = %tailrecurse.i.i.i.i84.2
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.cu, i32 noundef %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.aj unwind label %bb.al

.loopexit110:                                     ; preds = %bb.ab, %.lr.ph.i.i.i.i81.preheader, %tailrecurse.i.i.i.i84, %tailrecurse.i.i.i.i84.1, %tailrecurse.i.i.i.i84.2
  invoke void @__cxa_rethrow() #32
          to label %bb.ap unwind label %bb.ai

bb.ac:                                            ; preds = %.body
  %i.ev = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.ew = icmp eq i32 %i.ed, %i.ev
  br i1 %i.ew, label %bb.ad, label %common.resume

bb.ad:                                            ; preds = %bb.ac
  %i.ex = call ptr @__cxa_begin_catch(ptr %i.ec) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %10) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.cu, i32 noundef %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ey = load ptr, ptr %10, align 8, !tbaa !409
  %.not.i86 = icmp eq ptr %i.ey, null
  br i1 %.not.i86, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.ag:                                            ; preds = %bb.ad
  %i.ez = landingpad { ptr, i32 }
          cleanup
  %i.fa = load ptr, ptr %10, align 8, !tbaa !409
  %.not.i88 = icmp eq ptr %i.fa, null
  br i1 %.not.i88, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ao

bb.ai:                                            ; preds = %.loopexit110
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.aj:                                            ; preds = %tailrecurse.i.i.i.i84.3
  %i.fc = load ptr, ptr %11, align 8, !tbaa !409
  %.not.i90 = icmp eq ptr %i.fc, null
  br i1 %.not.i90, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit91, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit91

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit91: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_16FlatVectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.al:                                            ; preds = %tailrecurse.i.i.i.i84.3
  %i.fd = landingpad { ptr, i32 }
          cleanup
  %i.fe = load ptr, ptr %11, align 8, !tbaa !409
  %.not.i92 = icmp eq ptr %i.fe, null
  br i1 %.not.i92, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit93, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit93

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit93: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit93, %bb.ai
  %.pn.i = phi { ptr, i32 } [ %i.fd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit93 ], [ %i.fb, %bb.ai ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
end_hunk_4
begin_hunk_5_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi:bb.a
  %.pn.i = phi { ptr, i32 } [ %i.fa, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit80 ], [ %i.ey, %bb.ag ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit76
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #33
  unreachable

bb.an:                                            ; preds = %.loopexit86
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit74, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit78
  %i.fe = add i64 %.015100, -1
  %i.ff = and i64 %i.fe, %.015100                 ; 2 uses
  %.not = icmp eq i64 %i.ff, 0
  br i1 %.not, label %.loopexit84, label %bb.v, !llvm.loop !1178

.loopexit84:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKS1_SV_EUlSV_E_EEvSZ_SV_T0_EUlSV_E_EEvSV_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.632) align 8 %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.564", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !846, !range !35, !noundef !36
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !49, !range !35
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !828
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !829  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !847
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !585    ; 2 uses
  %.not.i.i14 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i14, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i74.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i74.not, label %.critedge.i.i.i, label %.lr.ph76

bb.f:                                             ; preds = %.lr.ph76
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i75, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph76, label %.critedge.i.i.i, !llvm.loop !848

.lr.ph76:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i75 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i75, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !133
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !848

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !133
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph76, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph76 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.ag

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !829 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !828 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph47, label %.loopexit37

.lr.ph47:                                         ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !593 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !1179, !nonnull !36, !align !208 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ao = ptrtoint ptr %4 to i64
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ar = sext i32 %i.ag to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph47, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit
  %indvars.iv = phi i64 [ %i.ar, %.lr.ph47 ], [ %indvars.iv.next, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit ] ; 4 uses
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !1180, !nonnull !36, !align !208
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !1182
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1149, !nonnull !36, !align !208 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1151
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 58
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !1152, !range !35, !noundef !36
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  br i1 %i.ay, label %.noexc7, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 59
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !1153, !range !35, !noundef !36
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1154
  br label %.noexc7

bb.l:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1155
  %i.bh = shl nsw i64 %indvars.iv, 2
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !56
  br label %.noexc7

.noexc7:                                          ; preds = %bb.i, %bb.k, %bb.l
  %.0.i.i.i = phi i32 [ %i.bj, %bb.l ], [ %i.be, %bb.k ], [ %i.az, %bb.i ]
  %i.bk = sext i32 %.0.i.i.i to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.av, i64 %i.bk ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bl, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !13 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %4, align 8, !noalias !1182
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.am, align 8, !noalias !1182
  %i.bm = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.bn = icmp ult i32 %i.bm, 13
  %i.bo = select i1 %i.bn, ptr %i.an, ptr %.sroa.2.0.copyload.i.i ; 3 uses
  %i.bp = and i64 %.sroa.0.0.copyload.i.i, 4294967295 ; 5 uses
  %i.bq = and i64 %.sroa.0.0.copyload.i.i, 4294967264 ; 2 uses
  %.not.i.i577 = icmp samesign ult i64 %i.bp, 32
  br i1 %.not.i.i577, label %.preheader, label %.lr.ph79

bb.m:                                             ; preds = %.lr.ph79
  %i.br = add nuw nsw i64 %i.bt, 32               ; 2 uses
  %.not.i.i5 = icmp samesign ugt i64 %i.br, %i.bp
  br i1 %.not.i.i5, label %.preheader, label %.lr.ph79, !llvm.loop !985

.preheader:                                       ; preds = %bb.m, %.noexc7
  %i.bs = icmp samesign ult i64 %i.bq, %i.bp
  br i1 %i.bs, label %.lr.ph, label %.noexc12

.lr.ph79:                                         ; preds = %.noexc7, %bb.m
  %i.bt = phi i64 [ %i.br, %bb.m ], [ 32, %.noexc7 ] ; 2 uses
  %.011.i.i78 = phi i64 [ %i.bt, %bb.m ], [ 0, %.noexc7 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.011.i.i78
  %i.bv = load <4 x i64>, ptr %i.bu, align 1, !tbaa !13, !noalias !1185
  %i.bw = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.bv, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not16.not.i.i, label %.noexc8, label %bb.m, !llvm.loop !985

bb.n:                                             ; preds = %.lr.ph
  %i.bx = add nuw nsw i64 %.1.i.i45, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %i.bp
  br i1 %exitcond.not, label %.noexc12, label %.lr.ph, !llvm.loop !986

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %.1.i.i45 = phi i64 [ %i.bx, %bb.n ], [ %i.bq, %.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.1.i.i45
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !13, !noalias !1185
  %.not15.i.i = icmp sgt i8 %i.bz, -1
  br i1 %.not15.i.i, label %bb.n, label %.noexc8

.noexc8:                                          ; preds = %.lr.ph79, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !1188
  store i64 %i.ao, ptr %2, align 16, !noalias !1188
  store i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox10StringViewENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_ to i64), ptr %.sroa_idx3.i, align 8, !noalias !1188
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.105, i64 23, i64 15, ptr nonnull %2)
          to label %.noexc9 unwind label %bb.q

.noexc9:                                          ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !1188
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions27ParsePrestoDataSizeFunctionINS0_4exec10VectorExecEE4callERnRKNS0_10StringViewEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.105) #32
          to label %bb.o unwind label %bb.p, !noalias !1185

bb.o:                                             ; preds = %.noexc9
  unreachable

bb.p:                                             ; preds = %.noexc9
  %i.ca = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.cb = load ptr, ptr %3, align 8, !tbaa !34, !noalias !1185 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ap
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.cd = load i64, ptr %i.ap, align 8, !tbaa !13, !noalias !1185
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #34, !noalias !1185
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !1185
  br label %.body

.noexc12:                                         ; preds = %bb.n, %.preheader
  %i.cf = invoke noundef i128 @_ZN8facebook5velox9functions10getDecimalESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.bp, ptr %i.bo)
          to label %_ZN8facebook5velox6StatusD2Ev.exit23 unwind label %bb.q

_ZN8facebook5velox6StatusD2Ev.exit23:             ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !1182
  %i.cg = load ptr, ptr %i.aq, align 8, !tbaa !1191, !nonnull !36, !align !208
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1157, !nonnull !36, !align !208
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !551
  %i.ck = getelementptr inbounds [16 x i8], ptr %i.cj, i64 %indvars.iv
  store i128 %i.cf, ptr %i.ck, align 16, !tbaa !653
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.q:                                             ; preds = %.noexc8, %.noexc12
  %i.cl = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %eh.lpad-body11 = phi { ptr, i32 } [ %i.cl, %bb.q ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.cm = extractvalue { ptr, i32 } %eh.lpad-body11, 0 ; 2 uses
  %i.cn = extractvalue { ptr, i32 } %eh.lpad-body11, 1 ; 2 uses
  %i.co = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #21
  %i.cp = icmp eq i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.body
  %i.cq = call ptr @__cxa_begin_catch(ptr %i.cm) #21
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !883 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 144
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !34 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 152
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !18
  %i.cx = icmp eq i64 %i.cw, 4
  br i1 %i.cx, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.r
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !13
  %or.cond.not.i.i.i = icmp eq i8 %i.cy, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !13
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.da, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !13
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.dc, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 3
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !13
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.de, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.z unwind label %bb.ab

.loopexit:                                        ; preds = %bb.r, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #32
          to label %bb.af unwind label %bb.y

bb.s:                                             ; preds = %.body
  %i.df = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.dg = icmp eq i32 %i.cn, %i.df
  br i1 %i.dg, label %bb.t, label %.loopexit38

bb.t:                                             ; preds = %bb.s
  %i.dh = call ptr @__cxa_begin_catch(ptr %i.cm) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, i32 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.di = load ptr, ptr %5, align 8, !tbaa !409
  %.not.i24 = icmp eq ptr %i.di, null
  br i1 %.not.i24, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.w:                                             ; preds = %bb.t
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = load ptr, ptr %5, align 8, !tbaa !409
  %.not.i25 = icmp eq ptr %i.dk, null
  br i1 %.not.i25, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  invoke void @__cxa_end_catch()
          to label %.loopexit38 unwind label %bb.ae

bb.y:                                             ; preds = %.loopexit
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.z:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.dm = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i27 = icmp eq ptr %i.dm, null
  br i1 %.not.i27, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit28, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit28

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit28: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.ab:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i29 = icmp eq ptr %i.do, null
  br i1 %.not.i29, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30, %bb.y
  %.pn.i = phi { ptr, i32 } [ %i.dn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit30 ], [ %i.dl, %bb.y ]
  invoke void @__cxa_end_catch()
          to label %.loopexit38 unwind label %bb.ae

.loopexit38:                                      ; preds = %bb.s, %bb.ad, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26
  %.merged.i = phi { ptr, i32 } [ %i.dj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26 ], [ %.pn.i, %bb.ad ], [ %eh.lpad-body11, %bb.s ]
  resume { ptr, i32 } %.merged.i

end_hunk_5
begin_hunk_6_@_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_:bb.a
  %5 = alloca %class.anon.634, align 8            ; 6 uses
  %6 = alloca %class.anon.633, align 8            ; 8 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 %i.a, ptr %5, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.25.0..sroa_idx, align 8
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS4_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSK_EEEE7iterateIJNS4_12VectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS4_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSK_EEEE7iterateIJNS4_12VectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS4_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSK_EEEE7iterateIJNS4_12VectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1193

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS4_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSK_EEEE7iterateIJNS4_12VectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS4_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSF_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSK_EEEE7iterateIJNS4_12VectorReaderISK_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E2_ZNS5_22applyToSelectedNoThrowISX_EEvRKNS0_17SelectivityVectorESW_EUlSW_E_EEvS11_SW_T0_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS14_EEvS16_iibSW_EUliE_EEviiSW_S13_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.564", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1194, !range !35, !noundef !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1196
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !133
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit44, label %.preheader43

.preheader43:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.q = ptrtoint ptr %5 to i64
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader43, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit
  %.053 = phi i64 [ %i.k, %.preheader43 ], [ %i.cz, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit ] ; 3 uses
  %i.s = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.053, i1 true)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = or disjoint i32 %i.m, %i.t               ; 4 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !593  ; 2 uses
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !1179, !nonnull !36, !align !208 ; 2 uses
  %i.x = sext i32 %i.u to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1180, !nonnull !36, !align !208
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !1197
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1149, !nonnull !36, !align !208 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1151
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 58
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !1152, !range !35, !noundef !36
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.noexc14, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 59
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !1153, !range !35, !noundef !36
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1154
  br label %.noexc14

bb.e:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1155
  %i.an = shl nsw i64 %i.x, 2
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !56
  br label %.noexc14

.noexc14:                                         ; preds = %bb.b, %bb.d, %bb.e
  %.0.i.i.i = phi i32 [ %i.ap, %bb.e ], [ %i.ak, %bb.d ], [ %i.u, %bb.b ]
  %i.aq = sext i32 %.0.i.i.i to i64
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %i.aq ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ar, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !13 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %5, align 8, !noalias !1197
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.o, align 8, !noalias !1197
  %i.as = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.at = icmp ult i32 %i.as, 13
  %i.au = select i1 %i.at, ptr %i.p, ptr %.sroa.2.0.copyload.i.i ; 3 uses
  %i.av = and i64 %.sroa.0.0.copyload.i.i, 4294967295 ; 5 uses
  %i.aw = and i64 %.sroa.0.0.copyload.i.i, 4294967264 ; 2 uses
  %.not.i.i1277 = icmp samesign ult i64 %i.av, 32
  br i1 %.not.i.i1277, label %.preheader, label %.lr.ph79

bb.f:                                             ; preds = %.lr.ph79
  %i.ax = add nuw nsw i64 %i.az, 32               ; 2 uses
  %.not.i.i12 = icmp samesign ugt i64 %i.ax, %i.av
  br i1 %.not.i.i12, label %.preheader, label %.lr.ph79, !llvm.loop !985

.preheader:                                       ; preds = %bb.f, %.noexc14
  %i.ay = icmp samesign ult i64 %i.aw, %i.av
  br i1 %i.ay, label %.lr.ph, label %.noexc19

.lr.ph79:                                         ; preds = %.noexc14, %bb.f
  %i.az = phi i64 [ %i.ax, %bb.f ], [ 32, %.noexc14 ] ; 2 uses
  %.011.i.i78 = phi i64 [ %i.az, %bb.f ], [ 0, %.noexc14 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %.011.i.i78
  %i.bb = load <4 x i64>, ptr %i.ba, align 1, !tbaa !13, !noalias !1200
  %i.bc = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.bb, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not16.not.i.i, label %.noexc15, label %bb.f, !llvm.loop !985

bb.g:                                             ; preds = %.lr.ph
  %i.bd = add nuw nsw i64 %.1.i.i52, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %i.av
  br i1 %exitcond.not, label %.noexc19, label %.lr.ph, !llvm.loop !986

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.1.i.i52 = phi i64 [ %i.bd, %bb.g ], [ %i.aw, %.preheader ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 %.1.i.i52
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13, !noalias !1200
  %.not15.i.i = icmp sgt i8 %i.bf, -1
  br i1 %.not15.i.i, label %bb.g, label %.noexc15

.noexc15:                                         ; preds = %.lr.ph79, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !1200
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !1203
  store i64 %i.q, ptr %3, align 16, !noalias !1203
  store i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox10StringViewENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_ to i64), ptr %.sroa_idx3.i, align 8, !noalias !1203
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.105, i64 23, i64 15, ptr nonnull %3)
          to label %.noexc16 unwind label %bb.j

.noexc16:                                         ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !1203
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions27ParsePrestoDataSizeFunctionINS0_4exec10VectorExecEE4callERnRKNS0_10StringViewEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.105) #32
          to label %bb.h unwind label %bb.i, !noalias !1200

bb.h:                                             ; preds = %.noexc16
  unreachable

bb.i:                                             ; preds = %.noexc16
  %i.bg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.bh = load ptr, ptr %4, align 8, !tbaa !34, !noalias !1200 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.r
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !13, !noalias !1200
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #34, !noalias !1200
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !1200
  br label %.body

.noexc19:                                         ; preds = %bb.g, %.preheader
  %i.bl = invoke noundef i128 @_ZN8facebook5velox9functions10getDecimalESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.av, ptr %i.au)
          to label %_ZN8facebook5velox6StatusD2Ev.exit29 unwind label %bb.j

_ZN8facebook5velox6StatusD2Ev.exit29:             ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !1197
  %i.bm = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1191, !nonnull !36, !align !208
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1157, !nonnull !36, !align !208
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !551
  %i.br = getelementptr inbounds [16 x i8], ptr %i.bq, i64 %i.x
  store i128 %i.bl, ptr %i.br, align 16, !tbaa !653
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.j:                                             ; preds = %.noexc15, %.noexc19
  %i.bs = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.bs, %bb.j ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.bt = extractvalue { ptr, i32 } %eh.lpad-body18, 0 ; 2 uses
  %i.bu = extractvalue { ptr, i32 } %eh.lpad-body18, 1 ; 2 uses
  %i.bv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #21
  %i.bw = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.body
  %i.bx = call ptr @__cxa_begin_catch(ptr %i.bt) #21
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !883 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 144
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !34 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 152
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.ce = icmp eq i64 %i.cd, 4
  br i1 %i.ce, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.k
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !13
  %or.cond.not.i.i.i = icmp eq i8 %i.cf, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !13
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ch, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !13
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.cj, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !13
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.cl, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.v, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.s unwind label %bb.u

.loopexit:                                        ; preds = %bb.k, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #32
          to label %bb.y unwind label %bb.r

bb.l:                                             ; preds = %.body
  %i.cm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.cn = icmp eq i32 %i.bu, %i.cm
  br i1 %i.cn, label %bb.m, label %.loopexit45

bb.m:                                             ; preds = %bb.l
  %i.co = call ptr @__cxa_begin_catch(ptr %i.bt) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.v, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cp = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i30 = icmp eq ptr %i.cp, null
  br i1 %.not.i30, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.p:                                             ; preds = %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i31 = icmp eq ptr %i.cr, null
  br i1 %.not.i31, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit32, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit32

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit32: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  invoke void @__cxa_end_catch()
          to label %.loopexit45 unwind label %bb.x

bb.r:                                             ; preds = %.loopexit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.s:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.ct = load ptr, ptr %7, align 8, !tbaa !409
  %.not.i33 = icmp eq ptr %i.ct, null
  br i1 %.not.i33, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit34, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit34

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit34: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.u:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %7, align 8, !tbaa !409
  %.not.i35 = icmp eq ptr %i.cv, null
  br i1 %.not.i35, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit36, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit36

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit36: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit36, %bb.r
  %.pn.i = phi { ptr, i32 } [ %i.cu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit36 ], [ %i.cs, %bb.r ]
  invoke void @__cxa_end_catch()
          to label %.loopexit45 unwind label %bb.x

.loopexit45:                                      ; preds = %bb.l, %bb.w, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit32
  %.merged.i = phi { ptr, i32 } [ %i.cq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit32 ], [ %.pn.i, %bb.w ], [ %eh.lpad-body18, %bb.l ]
  resume { ptr, i32 } %.merged.i

bb.x:                                             ; preds = %bb.w, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit32
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #33
  unreachable

bb.y:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit29, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit34
  %i.cy = add i64 %.053, -1
  %i.cz = and i64 %i.cy, %.053                    ; 2 uses
  %.not10 = icmp eq i64 %i.cz, 0
  br i1 %.not10, label %.loopexit44, label %bb.b, !llvm.loop !1206

.loopexit44:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS3_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSJ_EEEE7iterateIJNS3_12VectorReaderISJ_EEEEEvRNSM_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.564", align 16 ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.564", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1207, !range !35, !noundef !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1209
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !133
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph133 [
    i64 -1, label %bb.b
    i64 0, label %.loopexit111
  ]

.lr.ph133:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.p = ptrtoint ptr %9 to i64
  %.sroa_idx3.i64 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.r = shl i32 %1, 6                            ; 3 uses
  %i.s = add i32 %i.r, 64
  %i.t = sext i32 %i.s to i64
  %.not141 = icmp eq i32 %i.r, -64
  br i1 %.not141, label %.loopexit111, label %.lr.ph140

.lr.ph140:                                        ; preds = %bb.b
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.z = ptrtoint ptr %5 to i64
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph140, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit
  %.0136 = phi i64 [ %i.u, %.lr.ph140 ], [ %i.de, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit ] ; 4 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !593 ; 2 uses
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !1179, !nonnull !36, !align !208 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1180, !nonnull !36, !align !208
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !1210
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1149, !nonnull !36, !align !208 ; 5 uses
  %i.ag = trunc i64 %.0136 to i32                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1151
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !1152, !range !35, !noundef !36
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.noexc33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.an = load i8, ptr %i.am, align 1, !tbaa !1153, !range !35, !noundef !36
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1154
  br label %.noexc33

bb.f:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1155
  %sext.i = shl i64 %.0136, 32
  %i.at = ashr exact i64 %sext.i, 30
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !56
  br label %.noexc33

.noexc33:                                         ; preds = %bb.c, %bb.e, %bb.f
  %.0.i.i.i = phi i32 [ %i.av, %bb.f ], [ %i.aq, %bb.e ], [ %i.ag, %bb.c ]
  %i.aw = sext i32 %.0.i.i.i to i64
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.aw ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ax, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !13 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %5, align 8, !noalias !1210
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.x, align 8, !noalias !1210
  %i.ay = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.az = icmp ult i32 %i.ay, 13
  %i.ba = select i1 %i.az, ptr %i.y, ptr %.sroa.2.0.copyload.i.i ; 3 uses
  %i.bb = and i64 %.sroa.0.0.copyload.i.i, 4294967295 ; 5 uses
  %i.bc = and i64 %.sroa.0.0.copyload.i.i, 4294967264 ; 2 uses
  %.not.i.i.i195 = icmp samesign ult i64 %i.bb, 32
  br i1 %.not.i.i.i195, label %.preheader, label %.lr.ph197

bb.g:                                             ; preds = %.lr.ph197
  %i.bd = add nuw nsw i64 %i.bf, 32               ; 2 uses
  %.not.i.i.i = icmp samesign ugt i64 %i.bd, %i.bb
  br i1 %.not.i.i.i, label %.preheader, label %.lr.ph197, !llvm.loop !985

.preheader:                                       ; preds = %bb.g, %.noexc33
  %i.be = icmp samesign ult i64 %i.bc, %i.bb
  br i1 %i.be, label %.lr.ph135, label %.noexc38

.lr.ph197:                                        ; preds = %.noexc33, %bb.g
  %i.bf = phi i64 [ %i.bd, %bb.g ], [ 32, %.noexc33 ] ; 2 uses
  %.011.i.i.i196 = phi i64 [ %i.bf, %bb.g ], [ 0, %.noexc33 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.011.i.i.i196
  %i.bh = load <4 x i64>, ptr %i.bg, align 1, !tbaa !13, !noalias !1213
  %i.bi = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.bh, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not16.not.i.i.i, label %.noexc34, label %bb.g, !llvm.loop !985

bb.h:                                             ; preds = %.lr.ph135
  %i.bj = add nuw nsw i64 %.1.i.i.i134, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %i.bb
  br i1 %exitcond.not, label %.noexc38, label %.lr.ph135, !llvm.loop !986

.lr.ph135:                                        ; preds = %.preheader, %bb.h
  %.1.i.i.i134 = phi i64 [ %i.bj, %bb.h ], [ %i.bc, %.preheader ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.1.i.i.i134
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13, !noalias !1213
  %.not15.i.i.i = icmp sgt i8 %i.bl, -1
  br i1 %.not15.i.i.i, label %bb.h, label %.noexc34

.noexc34:                                         ; preds = %.lr.ph197, %.lr.ph135
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !1213
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !1216
  store i64 %i.z, ptr %3, align 16, !noalias !1216
  store i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox10StringViewENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_ to i64), ptr %.sroa_idx3.i, align 8, !noalias !1216
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.105, i64 23, i64 15, ptr nonnull %3)
          to label %.noexc35 unwind label %bb.k

.noexc35:                                         ; preds = %.noexc34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !1216
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions27ParsePrestoDataSizeFunctionINS0_4exec10VectorExecEE4callERnRKNS0_10StringViewEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.105) #32
          to label %bb.i unwind label %bb.j, !noalias !1213

bb.i:                                             ; preds = %.noexc35
  unreachable

bb.j:                                             ; preds = %.noexc35
  %i.bm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.bn = load ptr, ptr %4, align 8, !tbaa !34, !noalias !1213 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.aa
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bp = load i64, ptr %i.aa, align 8, !tbaa !13, !noalias !1213
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #34, !noalias !1213
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !1213
  br label %.body36

.noexc38:                                         ; preds = %bb.h, %.preheader
  %i.br = invoke noundef i128 @_ZN8facebook5velox9functions10getDecimalESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.bb, ptr %i.ba)
          to label %_ZN8facebook5velox6StatusD2Ev.exit48 unwind label %bb.k

_ZN8facebook5velox6StatusD2Ev.exit48:             ; preds = %.noexc38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !1210
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1191, !nonnull !36, !align !208
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1157, !nonnull !36, !align !208
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !551
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.0136
  store i128 %i.br, ptr %i.bx, align 16, !tbaa !653
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit

bb.k:                                             ; preds = %.noexc34, %.noexc38
  %i.by = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body36

.body36:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  %eh.lpad-body37 = phi { ptr, i32 } [ %i.by, %bb.k ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.bz = extractvalue { ptr, i32 } %eh.lpad-body37, 0 ; 2 uses
  %i.ca = extractvalue { ptr, i32 } %eh.lpad-body37, 1 ; 2 uses
  %i.cb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #21
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.body36
  %i.cd = call ptr @__cxa_begin_catch(ptr %i.bz) #21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !883 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 144
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !34 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !18
  %i.ck = icmp eq i64 %i.cj, 4
  br i1 %i.ck, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.l
  %i.cl = load i8, ptr %i.ch, align 1, !tbaa !13
  %or.cond.not.i.i.i = icmp eq i8 %i.cl, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.cn, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !13
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.cp, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.cr, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ab, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.t unwind label %bb.v

.loopexit:                                        ; preds = %bb.l, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #32
          to label %bb.z unwind label %bb.s

bb.m:                                             ; preds = %.body36
  %i.cs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.ct = icmp eq i32 %i.ca, %i.cs
  br i1 %i.ct, label %bb.n, label %common.resume

bb.n:                                             ; preds = %bb.m
  %i.cu = call ptr @__cxa_begin_catch(ptr %i.bz) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ab, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cv = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i49 = icmp eq ptr %i.cv, null
  br i1 %.not.i49, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit

bb.q:                                             ; preds = %bb.n
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load ptr, ptr %6, align 8, !tbaa !409
  %.not.i50 = icmp eq ptr %i.cx, null
  br i1 %.not.i50, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.y

bb.s:                                             ; preds = %.loopexit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.t:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cz = load ptr, ptr %7, align 8, !tbaa !409
  %.not.i52 = icmp eq ptr %i.cz, null
  br i1 %.not.i52, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit

bb.v:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.da = landingpad { ptr, i32 }
          cleanup
  %i.db = load ptr, ptr %7, align 8, !tbaa !409
  %.not.i54 = icmp eq ptr %i.db, null
  br i1 %.not.i54, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55, %bb.s
  %.pn.i28 = phi { ptr, i32 } [ %i.da, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55 ], [ %i.cy, %bb.s ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.y

common.resume:                                    ; preds = %bb.m, %bb.ak, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92, %bb.av, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %.pn.i28, %bb.x ], [ %i.cw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51 ], [ %.pn.i, %bb.av ], [ %i.ge, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92 ], [ %eh.lpad-body24, %bb.ak ], [ %eh.lpad-body37, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.y:                                             ; preds = %bb.x, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #33
  unreachable

bb.z:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clImEEDaST_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit48, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53
  %i.de = add nuw i64 %.0136, 1                   ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.t
  br i1 %i.df, label %bb.c, label %.loopexit111, !llvm.loop !1219

bb.aa:                                            ; preds = %.lr.ph133, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit
  %.015132 = phi i64 [ %i.j, %.lr.ph133 ], [ %i.gn, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit ] ; 3 uses
  %i.dg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015132, i1 true)
  %i.dh = trunc nuw nsw i64 %i.dg to i32
  %i.di = or disjoint i32 %i.l, %i.dh             ; 4 uses
  %i.dj = load ptr, ptr %i.m, align 8, !tbaa !593 ; 2 uses
  %i.dk = load ptr, ptr %i.k, align 8, !tbaa !1179, !nonnull !36, !align !208 ; 2 uses
  %i.dl = sext i32 %i.di to i64                   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !1180, !nonnull !36, !align !208
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21, !noalias !1220
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1149, !nonnull !36, !align !208 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1151
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 58
  %i.ds = load i8, ptr %i.dr, align 2, !tbaa !1152, !range !35, !noundef !36
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %.noexc20, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 59
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !1153, !range !35, !noundef !36
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !1154
  br label %.noexc20

bb.ad:                                            ; preds = %bb.ab
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1155
  %i.eb = shl nsw i64 %i.dl, 2
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !56
  br label %.noexc20

.noexc20:                                         ; preds = %bb.aa, %bb.ac, %bb.ad
  %.0.i.i.i57 = phi i32 [ %i.ed, %bb.ad ], [ %i.dy, %bb.ac ], [ %i.di, %bb.aa ]
  %i.ee = sext i32 %.0.i.i.i57 to i64
  %i.ef = getelementptr inbounds [16 x i8], ptr %i.dq, i64 %i.ee ; 2 uses
  %.sroa.0.0.copyload.i.i58 = load i64, ptr %i.ef, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i59 = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.sroa.2.0.copyload.i.i60 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i59, align 8, !tbaa !13 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i58, ptr %9, align 8, !noalias !1220
  store ptr %.sroa.2.0.copyload.i.i60, ptr %i.n, align 8, !noalias !1220
  %i.eg = trunc i64 %.sroa.0.0.copyload.i.i58 to i32
  %i.eh = icmp ult i32 %i.eg, 13
  %i.ei = select i1 %i.eh, ptr %i.o, ptr %.sroa.2.0.copyload.i.i60 ; 3 uses
  %i.ej = and i64 %.sroa.0.0.copyload.i.i58, 4294967295 ; 5 uses
  %i.ek = and i64 %.sroa.0.0.copyload.i.i58, 4294967264 ; 2 uses
  %.not.i.i18198 = icmp samesign ult i64 %i.ej, 32
  br i1 %.not.i.i18198, label %.preheader114, label %.lr.ph200

bb.ae:                                            ; preds = %.lr.ph200
  %i.el = add nuw nsw i64 %i.en, 32               ; 2 uses
  %.not.i.i18 = icmp samesign ugt i64 %i.el, %i.ej
  br i1 %.not.i.i18, label %.preheader114, label %.lr.ph200, !llvm.loop !985

.preheader114:                                    ; preds = %bb.ae, %.noexc20
  %i.em = icmp samesign ult i64 %i.ek, %i.ej
  br i1 %i.em, label %.lr.ph, label %.noexc25

.lr.ph200:                                        ; preds = %.noexc20, %bb.ae
  %i.en = phi i64 [ %i.el, %bb.ae ], [ 32, %.noexc20 ] ; 2 uses
  %.011.i.i199 = phi i64 [ %i.en, %bb.ae ], [ 0, %.noexc20 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.011.i.i199
  %i.ep = load <4 x i64>, ptr %i.eo, align 1, !tbaa !13, !noalias !1223
  %i.eq = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ep, <4 x i64> splat (i64 -9187201950435737472))
  %.not16.not.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not16.not.i.i, label %.noexc21, label %bb.ae, !llvm.loop !985

bb.af:                                            ; preds = %.lr.ph
  %i.er = add nuw nsw i64 %.1.i.i130, 1           ; 2 uses
  %exitcond158.not = icmp eq i64 %i.er, %i.ej
  br i1 %exitcond158.not, label %.noexc25, label %.lr.ph, !llvm.loop !986

.lr.ph:                                           ; preds = %.preheader114, %bb.af
  %.1.i.i130 = phi i64 [ %i.er, %bb.af ], [ %i.ek, %.preheader114 ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.1.i.i130
  %i.et = load i8, ptr %i.es, align 1, !tbaa !13, !noalias !1223
  %.not15.i.i = icmp sgt i8 %i.et, -1
  br i1 %.not15.i.i, label %bb.af, label %.noexc21

.noexc21:                                         ; preds = %.lr.ph200, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !1223
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !1226
  store i64 %i.p, ptr %2, align 16, !noalias !1226
  store i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox10StringViewENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_ to i64), ptr %.sroa_idx3.i64, align 8, !noalias !1226
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.105, i64 23, i64 15, ptr nonnull %2)
          to label %.noexc22 unwind label %bb.ai

.noexc22:                                         ; preds = %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !1226
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions27ParsePrestoDataSizeFunctionINS0_4exec10VectorExecEE4callERnRKNS0_10StringViewEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.105) #32
          to label %bb.ag unwind label %bb.ah, !noalias !1223

bb.ag:                                            ; preds = %.noexc22
  unreachable

bb.ah:                                            ; preds = %.noexc22
  %i.eu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ev = load ptr, ptr %8, align 8, !tbaa !34, !noalias !1223 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.q
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.ah
  %i.ex = load i64, ptr %i.q, align 8, !tbaa !13, !noalias !1223
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #34, !noalias !1223
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !1223
  br label %.body

.noexc25:                                         ; preds = %bb.af, %.preheader114
  %i.ez = invoke noundef i128 @_ZN8facebook5velox9functions10getDecimalESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.ej, ptr %i.ei)
          to label %_ZN8facebook5velox6StatusD2Ev.exit83 unwind label %bb.ai

_ZN8facebook5velox6StatusD2Ev.exit83:             ; preds = %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21, !noalias !1220
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !1191, !nonnull !36, !align !208
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1157, !nonnull !36, !align !208
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !551
  %i.ff = getelementptr inbounds [16 x i8], ptr %i.fe, i64 %i.dl
  store i128 %i.ez, ptr %i.ff, align 16, !tbaa !653
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.ai:                                            ; preds = %.noexc21, %.noexc25
  %i.fg = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %eh.lpad-body24 = phi { ptr, i32 } [ %i.fg, %bb.ai ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ] ; 3 uses
  %i.fh = extractvalue { ptr, i32 } %eh.lpad-body24, 0 ; 2 uses
  %i.fi = extractvalue { ptr, i32 } %eh.lpad-body24, 1 ; 2 uses
  %i.fj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #21
  %i.fk = icmp eq i32 %i.fi, %i.fj
  br i1 %i.fk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.body
  %i.fl = call ptr @__cxa_begin_catch(ptr %i.fh) #21
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !883 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 144
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !34 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 152
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !18
  %i.fs = icmp eq i64 %i.fr, 4
  br i1 %i.fs, label %.lr.ph.i.i.i.i84.preheader, label %.loopexit113

.lr.ph.i.i.i.i84.preheader:                       ; preds = %bb.aj
  %i.ft = load i8, ptr %i.fp, align 1, !tbaa !13
  %or.cond.not.i.i.i86 = icmp eq i8 %i.ft, 85
  br i1 %or.cond.not.i.i.i86, label %tailrecurse.i.i.i.i87, label %.loopexit113

tailrecurse.i.i.i.i87:                            ; preds = %.lr.ph.i.i.i.i84.preheader
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !13
  %or.cond.not.i.i.i86.1 = icmp eq i8 %i.fv, 83
  br i1 %or.cond.not.i.i.i86.1, label %tailrecurse.i.i.i.i87.1, label %.loopexit113

tailrecurse.i.i.i.i87.1:                          ; preds = %tailrecurse.i.i.i.i87
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !13
  %or.cond.not.i.i.i86.2 = icmp eq i8 %i.fx, 69
  br i1 %or.cond.not.i.i.i86.2, label %tailrecurse.i.i.i.i87.2, label %.loopexit113

tailrecurse.i.i.i.i87.2:                          ; preds = %tailrecurse.i.i.i.i87.1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 3
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !13
  %or.cond.not.i.i.i86.3 = icmp eq i8 %i.fz, 82
  br i1 %or.cond.not.i.i.i86.3, label %tailrecurse.i.i.i.i87.3, label %.loopexit113

tailrecurse.i.i.i.i87.3:                          ; preds = %tailrecurse.i.i.i.i87.2
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.dj, i32 noundef %i.di, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ar unwind label %bb.at

.loopexit113:                                     ; preds = %bb.aj, %.lr.ph.i.i.i.i84.preheader, %tailrecurse.i.i.i.i87, %tailrecurse.i.i.i.i87.1, %tailrecurse.i.i.i.i87.2
  invoke void @__cxa_rethrow() #32
          to label %bb.ax unwind label %bb.aq

bb.ak:                                            ; preds = %.body
  %i.ga = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.gb = icmp eq i32 %i.fi, %i.ga
  br i1 %i.gb, label %bb.al, label %common.resume

bb.al:                                            ; preds = %bb.ak
  %i.gc = call ptr @__cxa_begin_catch(ptr %i.fh) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %10) #21
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.dj, i32 noundef %i.di, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.gd = load ptr, ptr %10, align 8, !tbaa !409
  %.not.i89 = icmp eq ptr %i.gd, null
  br i1 %.not.i89, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit90, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit90

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit90: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.ao:                                            ; preds = %bb.al
  %i.ge = landingpad { ptr, i32 }
          cleanup
  %i.gf = load ptr, ptr %10, align 8, !tbaa !409
  %.not.i91 = icmp eq ptr %i.gf, null
  br i1 %.not.i91, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.aw

bb.aq:                                            ; preds = %.loopexit113
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ar:                                            ; preds = %tailrecurse.i.i.i.i87.3
  %i.gh = load ptr, ptr %11, align 8, !tbaa !409
  %.not.i93 = icmp eq ptr %i.gh, null
  br i1 %.not.i93, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions27ParsePrestoDataSizeFunctionINS1_10VectorExecEEES9_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJNS0_7VarcharEEEEJSH_EEEE7iterateIJNS1_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E2_ZNS2_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_ENKUlST_E_clIiEEDaST_.exit

bb.at:                                            ; preds = %tailrecurse.i.i.i.i87.3
  %i.gi = landingpad { ptr, i32 }
          cleanup
  %i.gj = load ptr, ptr %11, align 8, !tbaa !409
  %.not.i95 = icmp eq ptr %i.gj, null
  br i1 %.not.i95, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit96, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit96

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit96: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit96, %bb.aq
  %.pn.i = phi { ptr, i32 } [ %i.gi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit96 ], [ %i.gg, %bb.aq ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
end_hunk_6
