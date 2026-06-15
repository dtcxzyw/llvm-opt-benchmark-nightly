inline.NumInlined: 1445
inline.NumDeleted: 684
begin_hunk_0_@_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j:bb.a
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b ; 2 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  switch i8 %i.e, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 10, label %bb.c
    i8 0, label %bb.c
    i8 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.not11 = icmp eq i8 %i.e, 0
  %i.f = add i32 %2, 1
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %storemerge = select i1 %.not11, ptr %i.d, ptr %i.h
  store ptr %storemerge, ptr %0, align 8
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #3

declare void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 42700796466920258
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 216
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_M_allocateEm.exit, label %bb.f

_ZNSt12_Vector_baseIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 216
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bh, %_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_M_allocateEm.exit ] ; 15 uses
  %.0911.i.i.i = phi ptr [ %i.bg, %_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_M_allocateEm.exit ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.p = load i32, ptr %.0911.i.i.i, align 8, !alias.scope !34, !noalias !31
  store i32 %i.p, ptr %.012.i.i.i, align 8, !alias.scope !31, !noalias !34
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !alias.scope !31, !noalias !34
  %i.t = load ptr, ptr %i.r, align 8, !alias.scope !34, !noalias !31 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !34, !noalias !31 ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false), !alias.scope !36
  br label %_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.t, ptr %i.q, align 8, !alias.scope !31, !noalias !34
  %i.aa = load i64, ptr %i.u, align 8, !alias.scope !34, !noalias !31
  store i64 %i.aa, ptr %i.s, align 8, !alias.scope !31, !noalias !34
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !34, !noalias !31
  br label %_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.ab, ptr %i.ad, align 8, !alias.scope !31, !noalias !34
  store ptr %i.u, ptr %i.r, align 8, !alias.scope !34, !noalias !31
  store i64 0, ptr %i.ac, align 8, !alias.scope !34, !noalias !31
  store i8 0, ptr %i.u, align 8, !alias.scope !34, !noalias !31
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !alias.scope !34, !noalias !31
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !alias.scope !31, !noalias !34
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !34, !noalias !31
  store ptr %i.aj, ptr %i.ah, align 8, !alias.scope !31, !noalias !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false), !alias.scope !34, !noalias !31
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !alias.scope !34, !noalias !31
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !alias.scope !31, !noalias !34
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !34, !noalias !31
  store ptr %i.ap, ptr %i.an, align 8, !alias.scope !31, !noalias !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false), !alias.scope !34, !noalias !31
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i64 64, i1 false), !alias.scope !36
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 152
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 152 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.at, align 8, !alias.scope !34, !noalias !31
  store <2 x ptr> %i.au, ptr %i.as, align 8, !alias.scope !31, !noalias !34
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 168
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 168
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !34, !noalias !31
  store ptr %i.ax, ptr %i.av, align 8, !alias.scope !31, !noalias !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false), !alias.scope !34, !noalias !31
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 176
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 176 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !alias.scope !34, !noalias !31
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !alias.scope !31, !noalias !34
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 192
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 192
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !34, !noalias !31
  store ptr %i.bd, ptr %i.bb, align 8, !alias.scope !31, !noalias !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false), !alias.scope !34, !noalias !31
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 200
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.be, ptr noundef nonnull align 8 dereferenceable(12) %i.bf, i64 12, i1 false), !alias.scope !36
  tail call void @_ZN6Assimp12AC3DImporter6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %.0911.i.i.i) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 216 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 216
  %.not.i.i.i = icmp eq ptr %i.bg, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !37

_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit: ; preds = %_ZSt19__relocate_object_aIN6Assimp12AC3DImporter6ObjectES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit, %_ZNSt12_Vector_baseIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_M_allocateEm.exit
  %i.bi = phi ptr [ %.pre, %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.bi, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN6Assimp12AC3DImporter6ObjectESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bj = load ptr, ptr %i.b, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #29
  br label %_ZNSt12_Vector_baseIN6Assimp12AC3DImporter6ObjectESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp12AC3DImporter6ObjectESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp12AC3DImporter6ObjectESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.bn, ptr %i.j, align 8
  %i.bo = getelementptr inbounds nuw [216 x i8], ptr %i.o, i64 %1
  store ptr %i.bo, ptr %i.b, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp12AC3DImporter6ObjectESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6Assimp11AcGetStringEPKcS1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = load i8, ptr %0, align 1
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.77)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #25
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 7 uses
  %i.g = load i8, ptr %i.f, align 1               ; 3 uses
  %i.h = icmp ne i8 %i.g, 34
  %i.i = icmp ne ptr %i.f, %1
  %i.j = and i1 %i.i, %i.h
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %i.k = phi i8 [ %i.q, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %i.g, %bb.e ]
  %.02127 = phi ptr [ %i.p, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %i.f, %bb.e ] ; 3 uses
  switch i8 %i.k, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 13, label %bb.f
    i8 10, label %bb.f
    i8 0, label %bb.f
    i8 12, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.l = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr noundef nonnull @.str.78)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull @.str.79, i64 noundef 5) ; 0 uses
  %.pr = load i8, ptr %.02127, align 1
  br label %.loopexit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.02127, i64 1 ; 4 uses
  %i.q = load i8, ptr %i.p, align 1               ; 3 uses
  %i.r = icmp ne i8 %i.q, 34
  %i.s = icmp ne ptr %i.p, %1
  %i.t = and i1 %i.s, %i.r
  br i1 %i.t, label %.lr.ph, label %.loopexit, !llvm.loop !38

.loopexit:                                        ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %bb.e, %bb.f
  %.02126 = phi ptr [ %.02127, %bb.f ], [ %i.f, %bb.e ], [ %i.p, %_ZN6Assimp9IsLineEndIcEEbT_.exit ] ; 6 uses
  %i.u = phi i8 [ %.pr, %bb.f ], [ %i.g, %bb.e ], [ %i.q, %_ZN6Assimp9IsLineEndIcEEbT_.exit ]
  switch i8 %i.u, label %_ZN6Assimp9IsLineEndIcEEbT_.exit23 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit23.thread
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit23.thread
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit23.thread
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit23.thread
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit23:               ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.v = ptrtoint ptr %.02126 to i64
  %i.w = ptrtoint ptr %i.f to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = and i64 %i.x, 4294967295                 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.z, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.y, ptr %i.a, align 8
  %i.aa = icmp samesign ugt i64 %i.y, 15
  br i1 %i.aa, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit23
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ab, ptr %3, align 8
  %i.ac = load i64, ptr %i.a, align 8
  store i64 %i.ac, ptr %i.z, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit23
  %i.ad = phi ptr [ %i.ab, %.noexc.i ], [ %i.z, %_ZN6Assimp9IsLineEndIcEEbT_.exit23 ] ; 2 uses
  %trunc = trunc i64 %i.x to i32
  switch i32 %trunc, label %bb.h [
    i32 1, label %bb.g
    i32 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ae = load i8, ptr %i.f, align 1
  store i8 %i.ae, ptr %i.ad, align 1
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 %i.f, i64 %i.y, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.af = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.af, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %3, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.aj = load ptr, ptr %2, align 8               ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  %i.am = load ptr, ptr %3, align 8               ; 6 uses
  %i.an = icmp eq ptr %i.am, %i.z                 ; 2 uses
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.i
  br i1 %i.an, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.i
  br i1 %i.an, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ao = load i64, ptr %i.ag, align 8            ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %.not21.i = icmp eq ptr %3, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %4, !prof !7

4:                                                ; preds = %bb.j
  switch i64 %i.ao, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %4
  %i.aq = load i8, ptr %i.am, align 1
  store i8 %i.aq, ptr %i.aj, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.am, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %4
  %i.ar = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ar, ptr %i.as, align 8
  %i.at = load ptr, ptr %2, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1
  %.pre.i = load ptr, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.am, ptr %2, align 8
  %i.aw = load <2 x i64>, ptr %i.ag, align 8
  store <2 x i64> %i.aw, ptr %i.av, align 8
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ax = load i64, ptr %i.ak, align 8
  store ptr %i.am, ptr %2, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load <2 x i64>, ptr %i.ag, align 8
  store <2 x i64> %i.az, ptr %i.ay, align 8
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.aj, ptr %3, align 8
  store i64 %i.ax, ptr %i.z, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.z, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %5 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.aj, %bb.m ], [ %i.z, %bb.n ], [ %i.am, %bb.j ]
  store i64 0, ptr %i.ag, align 8
  store i8 0, ptr %5, align 1
  %i.ba = load ptr, ptr %3, align 8               ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.z
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bc = load i64, ptr %i.z, align 8
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.be = getelementptr inbounds nuw i8, ptr %.02126, i64 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit23.thread

_ZN6Assimp9IsLineEndIcEEbT_.exit23.thread:        ; preds = %.loopexit, %.loopexit, %.loopexit, %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi ptr [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.02126, %.loopexit ], [ %.02126, %.loopexit ], [ %.02126, %.loopexit ], [ %.02126, %.loopexit ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #25
  resume { ptr, i32 } %i.p
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 768614336404564650
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 12
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !alias.scope !39
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !14

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit
  %.not.i8 = icmp eq ptr %i.d, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #29
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.r, ptr %i.j, align 8
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %1
  store ptr %i.s, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.c
  ret void
}

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6Assimp24TAcCheckedLoadFloatArrayIfEEPKcS2_S2_S2_mmPT_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = ptrtoint ptr %0 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.c, %i.b
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.d ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i.i = phi ptr [ %0, %bb.a ], [ %i.f, %bb.d ] ; 4 uses
  %i.e = load i8, ptr %.0.i.i.i, align 1          ; 2 uses
  switch i8 %i.e, label %.critedge.i.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %1
  br i1 %.not.i.i.i, label %.critedge.i.ithread-pre-split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.b, !llvm.loop !6

.critedge.i.ithread-pre-split.i:                  ; preds = %bb.c
  %.pr.i = load i8, ptr %scevgep.i.i.i, align 1
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.b, %.critedge.i.ithread-pre-split.i
  %i.g = phi i8 [ %.pr.i, %.critedge.i.ithread-pre-split.i ], [ %i.e, %bb.b ]
  %.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %.critedge.i.ithread-pre-split.i ], [ %.0.i.i.i, %bb.b ] ; 4 uses
  switch i8 %i.g, label %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i:       ; preds = %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i
  %i.h = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull @.str.83)
  br label %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit

_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit:        ; preds = %.critedge.i.i.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp17AcSkipToNextTokenEPKcS1_.exit
  %i.i = tail call i32 @strncmp(ptr noundef nonnull %.0.lcssa.i.i.i, ptr noundef %2, i64 noundef %3) #26
  %.not23 = icmp eq i32 %i.i, 0
  br i1 %.not23, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 %3 ; 2 uses
end_hunk_0
