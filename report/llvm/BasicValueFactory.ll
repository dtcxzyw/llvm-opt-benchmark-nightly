Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BasicValueFactory?download=true
begin_hunk_0_@_ZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS_16CXXBaseSpecifierEEERKNS0_6nonloc15PointerToMemberERKNS_8CastKindE:bb.a
  %.pre.i.i.i.i.i = ptrtoint ptr %i.db to i64
  %.pre122.i.i.i.i.i = sub i64 %i.s, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.d
  %.pre-phi123.i.i.i.i.i = phi i64 [ %.pre122.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.u, %bb.d ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %i.db, %._crit_edge.loopexit.i.i.i.i.i ], [ %1, %bb.d ] ; 5 uses
  %i.de = ashr exact i64 %.pre-phi123.i.i.i.i.i, 3
  switch i64 %i.de, label %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit.thread" [
    i64 3, label %bb.q
    i64 2, label %bb.u
    i64 1, label %bb.y
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.029.val.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !112
  %.val31.val.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.df = getelementptr i8, ptr %.val31.val.i.i.i.i.i, i64 16
  %.val31.val.val.i.i.i.i.i = load ptr, ptr %i.df, align 8, !tbaa !114
  %.val31.val.val.val.i.i.i.i.i = load i64, ptr %.val31.val.val.i.i.i.i.i, align 8, !tbaa !42 ; 2 uses
  %i.dg = and i64 %.val31.val.val.val.i.i.i.i.i, -16
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load ptr, ptr %i.dh, align 16, !tbaa !74 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i73.i.i.i.i.i = load i64, ptr %i.dj, align 8, !tbaa !42
  %i.dk = and i64 %.sroa.0.0.copyload.i.i.i.i.i73.i.i.i.i.i, 15
  %.not.i.i.i.i74.i.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i.i.i74.i.i.i.i.i, label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i75.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dl = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.val31.val.val.val.i.i.i.i.i) #14
  %i.dm = extractvalue { ptr, i64 } %i.dl, 0
  br label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i75.i.i.i.i.i

_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i75.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.sroa.03.0.in.in.i.i.i.i76.i.i.i.i.i = phi ptr [ %i.dm, %bb.r ], [ %i.di, %bb.q ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.029.val.i.i.i.i.i, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !114
  %.sroa.0.0.copyload.i.i2.i.i77.i.i.i.i.i = load i64, ptr %i.do, align 8, !tbaa !42 ; 2 uses
  %i.dp = and i64 %.sroa.0.0.copyload.i.i2.i.i77.i.i.i.i.i, -16
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = load ptr, ptr %i.dq, align 16, !tbaa !74 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.0.0.copyload.i.i.i3.i.i78.i.i.i.i.i = load i64, ptr %i.ds, align 8, !tbaa !42
  %i.dt = and i64 %.sroa.0.0.copyload.i.i.i3.i.i78.i.i.i.i.i, 15
  %.not.i.i4.i.i79.i.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i4.i.i79.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit83.i.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i75.i.i.i.i.i
  %i.du = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i2.i.i77.i.i.i.i.i) #14
  %i.dv = extractvalue { ptr, i64 } %i.du, 0
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit83.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit83.i.i.i.i.i": ; preds = %bb.s, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i75.i.i.i.i.i
  %.sroa.03.0.in.in.i.i5.i.i80.i.i.i.i.i = phi ptr [ %i.dv, %bb.s ], [ %i.dr, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i75.i.i.i.i.i ]
  %.sroa.03.0.in.i.i.i.i81.i.i.i.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i.i.i76.i.i.i.i.i to i64
  %.sroa.03.0.in.i.i6.i.i82.i.i.i.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i5.i.i80.i.i.i.i.i to i64
  %i.dw = xor i64 %.sroa.03.0.in.i.i6.i.i82.i.i.i.i.i, %.sroa.03.0.in.i.i.i.i81.i.i.i.i.i
  %i.dx = icmp ult i64 %i.dw, 8
  br i1 %i.dx, label %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit", label %bb.t

bb.t:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit83.i.i.i.i.i"
  %i.dy = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.dy, %bb.t ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !112
  %.val30.val.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.dz = getelementptr i8, ptr %.val30.val.i.i.i.i.i, i64 16
  %.val30.val.val.i.i.i.i.i = load ptr, ptr %i.dz, align 8, !tbaa !114
  %.val30.val.val.val.i.i.i.i.i = load i64, ptr %.val30.val.val.i.i.i.i.i, align 8, !tbaa !42 ; 2 uses
  %i.ea = and i64 %.val30.val.val.val.i.i.i.i.i, -16
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = load ptr, ptr %i.eb, align 16, !tbaa !74 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i84.i.i.i.i.i = load i64, ptr %i.ed, align 8, !tbaa !42
  %i.ee = and i64 %.sroa.0.0.copyload.i.i.i.i.i84.i.i.i.i.i, 15
  %.not.i.i.i.i85.i.i.i.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i.i85.i.i.i.i.i, label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i86.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.val30.val.val.val.i.i.i.i.i) #14
  %i.eg = extractvalue { ptr, i64 } %i.ef, 0
  br label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i86.i.i.i.i.i

_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i86.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.sroa.03.0.in.in.i.i.i.i87.i.i.i.i.i = phi ptr [ %i.eg, %bb.v ], [ %i.ec, %bb.u ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.1.val.i.i.i.i.i, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !114
  %.sroa.0.0.copyload.i.i2.i.i88.i.i.i.i.i = load i64, ptr %i.ei, align 8, !tbaa !42 ; 2 uses
  %i.ej = and i64 %.sroa.0.0.copyload.i.i2.i.i88.i.i.i.i.i, -16
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load ptr, ptr %i.ek, align 16, !tbaa !74 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.0.0.copyload.i.i.i3.i.i89.i.i.i.i.i = load i64, ptr %i.em, align 8, !tbaa !42
  %i.en = and i64 %.sroa.0.0.copyload.i.i.i3.i.i89.i.i.i.i.i, 15
  %.not.i.i4.i.i90.i.i.i.i.i = icmp eq i64 %i.en, 0
  br i1 %.not.i.i4.i.i90.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit94.i.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i86.i.i.i.i.i
  %i.eo = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i2.i.i88.i.i.i.i.i) #14
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit94.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit94.i.i.i.i.i": ; preds = %bb.w, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i86.i.i.i.i.i
  %.sroa.03.0.in.in.i.i5.i.i91.i.i.i.i.i = phi ptr [ %i.ep, %bb.w ], [ %i.el, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i86.i.i.i.i.i ]
  %.sroa.03.0.in.i.i.i.i92.i.i.i.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i.i.i87.i.i.i.i.i to i64
  %.sroa.03.0.in.i.i6.i.i93.i.i.i.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i5.i.i91.i.i.i.i.i to i64
  %i.eq = xor i64 %.sroa.03.0.in.i.i6.i.i93.i.i.i.i.i, %.sroa.03.0.in.i.i.i.i92.i.i.i.i.i
  %i.er = icmp ult i64 %i.eq, 8
  br i1 %i.er, label %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit", label %bb.x

bb.x:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit94.i.i.i.i.i"
  %i.es = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.es, %bb.x ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !112
  %.val.val.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.et = getelementptr i8, ptr %.val.val.i.i.i.i.i, i64 16
  %.val.val.val.i.i.i.i.i = load ptr, ptr %i.et, align 8, !tbaa !114
  %.val.val.val.val.i.i.i.i.i = load i64, ptr %.val.val.val.i.i.i.i.i, align 8, !tbaa !42 ; 2 uses
  %i.eu = and i64 %.val.val.val.val.i.i.i.i.i, -16
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load ptr, ptr %i.ev, align 16, !tbaa !74 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i95.i.i.i.i.i = load i64, ptr %i.ex, align 8, !tbaa !42
  %i.ey = and i64 %.sroa.0.0.copyload.i.i.i.i.i95.i.i.i.i.i, 15
  %.not.i.i.i.i96.i.i.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i.i.i96.i.i.i.i.i, label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i97.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ez = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.val.val.val.val.i.i.i.i.i) #14
  %i.fa = extractvalue { ptr, i64 } %i.ez, 0
  br label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i97.i.i.i.i.i

_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i97.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.sroa.03.0.in.in.i.i.i.i98.i.i.i.i.i = phi ptr [ %i.fa, %bb.z ], [ %i.ew, %bb.y ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.2.val.i.i.i.i.i, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !114
  %.sroa.0.0.copyload.i.i2.i.i99.i.i.i.i.i = load i64, ptr %i.fc, align 8, !tbaa !42 ; 2 uses
  %i.fd = and i64 %.sroa.0.0.copyload.i.i2.i.i99.i.i.i.i.i, -16
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = load ptr, ptr %i.fe, align 16, !tbaa !74 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.0.0.copyload.i.i.i3.i.i100.i.i.i.i.i = load i64, ptr %i.fg, align 8, !tbaa !42
  %i.fh = and i64 %.sroa.0.0.copyload.i.i.i3.i.i100.i.i.i.i.i, 15
  %.not.i.i4.i.i101.i.i.i.i.i = icmp eq i64 %i.fh, 0
  br i1 %.not.i.i4.i.i101.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit105.i.i.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i97.i.i.i.i.i
  %i.fi = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i2.i.i99.i.i.i.i.i) #14
  %i.fj = extractvalue { ptr, i64 } %i.fi, 0
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit105.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit105.i.i.i.i.i": ; preds = %bb.aa, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i97.i.i.i.i.i
  %.sroa.03.0.in.in.i.i5.i.i102.i.i.i.i.i = phi ptr [ %i.fj, %bb.aa ], [ %i.ff, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit.i.i97.i.i.i.i.i ]
  %.sroa.03.0.in.i.i.i.i103.i.i.i.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i.i.i98.i.i.i.i.i to i64
  %.sroa.03.0.in.i.i6.i.i104.i.i.i.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i5.i.i102.i.i.i.i.i to i64
  %i.fk = xor i64 %.sroa.03.0.in.i.i6.i.i104.i.i.i.i.i, %.sroa.03.0.in.i.i.i.i103.i.i.i.i.i
  %i.fl = icmp ult i64 %i.fk, 8
  br i1 %i.fl, label %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit", label %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit50.i.i.i.i.i"
  %i.fm = getelementptr inbounds nuw i8, ptr %.029116.i.i.i.i.i, i64 8
  br label %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit"

"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit84": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit61.i.i.i.i.i"
  %i.fn = getelementptr inbounds nuw i8, ptr %.029116.i.i.i.i.i, i64 16
  br label %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit"

"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit86": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit72.i.i.i.i.i"
  %i.fo = getelementptr inbounds nuw i8, ptr %.029116.i.i.i.i.i, i64 24
  br label %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit"

"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit.i.i.i.i.i", %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit84", %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit86", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit83.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit94.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit105.i.i.i.i.i"
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit94.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit83.i.i.i.i.i" ], [ %.2.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit105.i.i.i.i.i" ], [ %i.fo, %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit86" ], [ %i.fn, %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit84" ], [ %i.fm, %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.029116.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit.i.i.i.i.i" ]
  %i.fp = icmp eq ptr %2, %.028.i.i.i.i.i
  br i1 %i.fp, label %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit.thread", label %bb.ab

"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit.thread": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4ento17BasicValueFactory12accumCXXBaseEN4llvm14iterator_rangeIPKPKNS2_16CXXBaseSpecifierEEERKNS3_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EclISB_EEbT_.exit105.i.i.i.i.i", %._crit_edge.i.i.i.i.i, %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit"
  %i.fq = call ptr @_ZN4llvm20ImmutableListFactoryIPKN5clang16CXXBaseSpecifierEE6concatIRS4_EENS_13ImmutableListIS4_EEOT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr %.sroa.012.058)
  br label %bb.ab

bb.ab:                                            ; preds = %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit.thread", %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit"
  %.sroa.012.1 = phi ptr [ %i.fq, %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit.thread" ], [ %.sroa.012.058, %"_ZN4llvm7none_ofIRNS_14iterator_rangeIPKPKN5clang16CXXBaseSpecifierEEEZNS2_4ento17BasicValueFactory12accumCXXBaseES8_RKNSA_6nonloc15PointerToMemberERKNS2_8CastKindEE3$_0EEbOT_T0_.exit" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.033.057, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !121 ; 2 uses
  %.not44 = icmp eq ptr %i.fs, null
  br i1 %.not44, label %._crit_edge61, label %bb.d

._crit_edge:                                      ; preds = %bb.ac, %.preheader
  %.sroa.036.0.lcssa = phi ptr [ %storemerge74, %.preheader ], [ %i.fw, %bb.ac ]
  %i.ft = call noundef ptr @_ZN5clang4ento17BasicValueFactory22getPointerToMemberDataEPKNS_9NamedDeclEN4llvm13ImmutableListIPKNS_16CXXBaseSpecifierEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %.177, ptr %.sroa.036.0.lcssa)
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph, %bb.ac
  %.sroa.036.047 = phi ptr [ %storemerge74, %.lr.ph ], [ %i.fw, %bb.ac ]
  %.sroa.028.046 = phi ptr [ %2, %.lr.ph ], [ %i.fu, %bb.ac ]
  %i.fu = getelementptr inbounds i8, ptr %.sroa.028.046, i64 -8 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.fv, ptr %i.a, align 8, !tbaa !112
  %i.fw = call ptr @_ZN4llvm20ImmutableListFactoryIPKN5clang16CXXBaseSpecifierEE6concatIRS4_EENS_13ImmutableListIS4_EEOT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr %.sroa.036.047) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.fu, %1
  br i1 %.not, label %._crit_edge, label %bb.ac

bb.ad:                                            ; preds = %._crit_edge, %._crit_edge61
  %.0 = phi ptr [ %i.x, %._crit_edge61 ], [ %i.ft, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i8 } @_ZN5clang4ento17BasicValueFactory10evalAPSIntENS_17UnaryOperatorKindERKN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(13) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %5 = alloca %"class.llvm::APSInt", align 8      ; 7 uses
  %6 = alloca %"class.llvm::APSInt", align 8      ; 7 uses
  switch i32 %1, label %bb.j [
    i32 7, label %bb.b
    i32 8, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !40, !noalias !123 ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !40, !noalias !123
  %i.d = icmp ult i32 %i.c, 65
  br i1 %i.d, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.b
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(13) %2) #14, !noalias !123
  %.pr.i = load i32, ptr %i.a, align 8, !tbaa !40, !noalias !126 ; 2 uses
  %i.e = icmp ult i32 %.pr.i, 65
  br i1 %i.e, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i, label %bb.c

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i:   ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i, %bb.b
  %.sink.i = phi ptr [ %2, %bb.b ], [ %4, %_ZN4llvm5APIntC2ERKS0_.exit.i ]
  %i.f = phi i32 [ %i.c, %bb.b ], [ %.pr.i, %_ZN4llvm5APIntC2ERKS0_.exit.i ] ; 2 uses
  %.pre.i = load i64, ptr %.sink.i, align 8, !tbaa !42, !noalias !123
  %i.g = xor i64 %.pre.i, -1
  %i.h = sub nsw i32 0, %i.f
  %i.i = and i32 %i.h, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = lshr i64 -1, %i.j
  %i.l = icmp eq i32 %i.f, 0
  %spec.select.i.i.i.i = select i1 %i.l, i64 0, i64 %i.k, !prof !72
  %i.m = and i64 %spec.select.i.i.i.i, %i.g
  store i64 %i.m, ptr %4, align 8, !tbaa !42, !noalias !126
  br label %_ZNK4llvm6APSIntngEv.exit

bb.c:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #14, !noalias !126
  br label %_ZNK4llvm6APSIntngEv.exit

_ZNK4llvm6APSIntngEv.exit:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i, %bb.c
  %i.n = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #14, !noalias !126 ; 0 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !40, !noalias !126
  %i.p = load i64, ptr %4, align 8, !noalias !126
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.r = load i8, ptr %i.q, align 4, !tbaa !67, !range !70, !noalias !123, !noundef !50
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 %i.o, ptr %i.s, align 8, !tbaa !40, !alias.scope !123
  store i64 %i.p, ptr %5, align 8, !alias.scope !123
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 %i.r, ptr %i.t, align 4, !tbaa !67, !alias.scope !123
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.u = call ptr @_ZN5clang4ento17BasicValueFactory8getValueERKN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(13) %5)
  %i.v = load i32, ptr %i.s, align 8, !tbaa !40
  %i.w = icmp ugt i32 %i.v, 64
  br i1 %i.w, label %bb.d, label %_ZN4llvm5APIntD2Ev.exit

bb.d:                                             ; preds = %_ZNK4llvm6APSIntngEv.exit
  %i.x = load ptr, ptr %5, align 8, !tbaa !42     ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN4llvm5APIntD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.x) #15
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm6APSIntngEv.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !40, !noalias !129 ; 3 uses
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !40, !noalias !129
  %i.ac = icmp ult i32 %i.ab, 65
  br i1 %i.ac, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i3

_ZN4llvm5APIntC2ERKS0_.exit.i3:                   ; preds = %bb.f
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(13) %2) #14, !noalias !129
  %.pr.i4 = load i32, ptr %i.z, align 8, !tbaa !40, !noalias !132 ; 2 uses
  %i.ad = icmp ult i32 %.pr.i4, 65
  br i1 %i.ad, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %bb.g

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i:     ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i3, %bb.f
  %.sink.i5 = phi ptr [ %2, %bb.f ], [ %3, %_ZN4llvm5APIntC2ERKS0_.exit.i3 ]
  %i.ae = phi i32 [ %i.ab, %bb.f ], [ %.pr.i4, %_ZN4llvm5APIntC2ERKS0_.exit.i3 ] ; 3 uses
  %.pre.i6 = load i64, ptr %.sink.i5, align 8, !tbaa !42, !noalias !129
  %i.af = xor i64 %.pre.i6, -1
  %i.ag = sub nsw i32 0, %i.ae
  %i.ah = and i32 %i.ag, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 -1, %i.ai
  %i.ak = icmp eq i32 %i.ae, 0
  %spec.select.i.i.i = select i1 %i.ak, i64 0, i64 %i.aj, !prof !72
  %i.al = and i64 %spec.select.i.i.i, %i.af
  br label %_ZNK4llvm6APSIntcoEv.exit

bb.g:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i3
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #14, !noalias !132
  %.pre.i.i = load i32, ptr %i.z, align 8, !tbaa !40, !noalias !132
  %.pre1.i.i = load i64, ptr %3, align 8, !noalias !132
  br label %_ZNK4llvm6APSIntcoEv.exit

_ZNK4llvm6APSIntcoEv.exit:                        ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, %bb.g
  %i.am = phi i64 [ %i.al, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i ], [ %.pre1.i.i, %bb.g ]
  %i.an = phi i32 [ %i.ae, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i ], [ %.pre.i.i, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !67, !range !70, !noalias !129, !noundef !50
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 %i.an, ptr %i.aq, align 8, !tbaa !40, !alias.scope !129
  store i64 %i.am, ptr %6, align 8, !alias.scope !129
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 %i.ap, ptr %i.ar, align 4, !tbaa !67, !alias.scope !129
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.as = call ptr @_ZN5clang4ento17BasicValueFactory8getValueERKN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(13) %6)
  %i.at = load i32, ptr %i.aq, align 8, !tbaa !40
  %i.au = icmp ugt i32 %i.at, 64
  br i1 %i.au, label %bb.h, label %_ZN4llvm5APIntD2Ev.exit7

bb.h:                                             ; preds = %_ZNK4llvm6APSIntcoEv.exit
  %i.av = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN4llvm5APIntD2Ev.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.av) #15
  br label %_ZN4llvm5APIntD2Ev.exit7

_ZN4llvm5APIntD2Ev.exit7:                         ; preds = %_ZNK4llvm6APSIntcoEv.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN4llvm5APIntD2Ev.exit7, %_ZN4llvm5APIntD2Ev.exit
  %.sroa.09.0 = phi ptr [ %i.as, %_ZN4llvm5APIntD2Ev.exit7 ], [ %i.u, %_ZN4llvm5APIntD2Ev.exit ], [ undef, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm5APIntD2Ev.exit7 ], [ 1, %_ZN4llvm5APIntD2Ev.exit ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i8 } @_ZN5clang4ento17BasicValueFactory10evalAPSIntENS_18BinaryOperatorKindERKN4llvm6APSIntES6_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(13) %2, ptr noundef nonnull align 8 dereferenceable(13) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %11 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %12 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %13 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %14 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %15 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %16 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %17 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %18 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %19 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %20 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %21 = alloca %"class.llvm::APSInt", align 8     ; 6 uses
  %22 = alloca %"class.llvm::APSInt", align 8     ; 6 uses
  %23 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %24 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %25 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %.sink11.i.sroa.gep = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sink11.i.sroa.gep113 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sink11.i49.sroa.gep = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sink11.i49.sroa.gep114 = getelementptr inbounds nuw i8, ptr %10, i64 8
  switch i32 %1, label %bb.bq [
    i32 2, label %bb.b
    i32 3, label %bb.e
    i32 4, label %bb.l
    i32 5, label %bb.s
    i32 6, label %bb.x
    i32 7, label %bb.ac
    i32 8, label %bb.ah
    i32 10, label %bb.am
    i32 11, label %bb.ap
    i32 12, label %bb.as
    i32 13, label %bb.av
    i32 14, label %bb.ay
    i32 15, label %bb.bb
    i32 16, label %bb.be
    i32 18, label %bb.bi
    i32 17, label %bb.bm
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @_ZNK4llvm5APIntmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %15, ptr noundef nonnull align 8 dereferenceable(13) %2, ptr noundef nonnull align 8 dereferenceable(13) %3) #14, !noalias !135
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !67, !range !70, !noalias !135, !noundef !50
  %i.c = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !40, !noalias !135
  store i32 %i.e, ptr %i.c, align 8, !tbaa !40, !alias.scope !135
  %i.f = load i64, ptr %15, align 8, !noalias !135
  store i64 %i.f, ptr %16, align 8, !alias.scope !135
  %i.g = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i8 %i.b, ptr %i.g, align 4, !tbaa !67, !alias.scope !135
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.h = call ptr @_ZN5clang4ento17BasicValueFactory8getValueERKN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(13) %16)
  %i.i = load i32, ptr %i.c, align 8, !tbaa !40
  %i.j = icmp ugt i32 %i.i, 64
  br i1 %i.j, label %bb.c, label %_ZN4llvm5APIntD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %16, align 8, !tbaa !42    ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4llvm5APIntD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.k) #15
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br label %bb.bq

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i32 64, ptr %i.m, align 8, !tbaa !40, !alias.scope !138
  store i64 0, ptr %14, align 8, !alias.scope !138
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i8 0, ptr %i.n, align 4, !tbaa !67, !alias.scope !138
  %i.o = call noundef i32 @_ZN4llvm6APSInt13compareValuesERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(13) %3, ptr noundef nonnull align 8 dereferenceable(13) %14)
  %i.p = load i32, ptr %i.m, align 8, !tbaa !40
  %i.q = icmp ugt i32 %i.p, 64
  br i1 %i.q, label %bb.f, label %_ZNK4llvm6APSInteqEl.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %14, align 8, !tbaa !42    ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZNK4llvm6APSInteqEl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.r) #15
  br label %_ZNK4llvm6APSInteqEl.exit

_ZNK4llvm6APSInteqEl.exit:                        ; preds = %bb.e, %bb.f, %bb.g
  %i.t = icmp eq i32 %i.o, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br i1 %i.t, label %bb.bq, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm6APSInteqEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = load i8, ptr %i.u, align 4, !tbaa !67, !range !70, !noalias !141, !noundef !50
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNK4llvm5APInt4sdivERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %13, ptr noundef nonnull align 8 dereferenceable(13) %2, ptr noundef nonnull align 8 dereferenceable(13) %3) #14, !noalias !141
  br label %_ZNK4llvm6APSIntdvERKS0_.exit

.critedge.i:                                      ; preds = %bb.h
  call void @_ZNK4llvm5APInt4udivERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %12, ptr noundef nonnull align 8 dereferenceable(13) %2, ptr noundef nonnull align 8 dereferenceable(13) %3) #14, !noalias !141
  br label %_ZNK4llvm6APSIntdvERKS0_.exit

_ZNK4llvm6APSIntdvERKS0_.exit:                    ; preds = %bb.i, %.critedge.i
  %.sink11.i.sroa.phi = phi ptr [ %.sink11.i.sroa.gep, %.critedge.i ], [ %.sink11.i.sroa.gep113, %bb.i ]
  %.sink11.i = phi ptr [ %12, %.critedge.i ], [ %13, %bb.i ]
  %.sink.i = phi i8 [ 1, %.critedge.i ], [ 0, %bb.i ]
  %i.x = load i32, ptr %.sink11.i.sroa.phi, align 8, !tbaa !40, !noalias !141
  %i.y = load i64, ptr %.sink11.i, align 8, !noalias !141
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i32 %i.x, ptr %i.z, align 8, !tbaa !40, !alias.scope !141
  store i64 %i.y, ptr %17, align 8, !alias.scope !141
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i8 %.sink.i, ptr %i.aa, align 4, !tbaa !67, !alias.scope !141
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.ab = call ptr @_ZN5clang4ento17BasicValueFactory8getValueERKN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(13) %17)
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !40
  %i.ad = icmp ugt i32 %i.ac, 64
  br i1 %i.ad, label %bb.j, label %_ZN4llvm5APIntD2Ev.exit47

bb.j:                                             ; preds = %_ZNK4llvm6APSIntdvERKS0_.exit
  %i.ae = load ptr, ptr %17, align 8, !tbaa !42   ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4llvm5APIntD2Ev.exit47, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #15
  br label %_ZN4llvm5APIntD2Ev.exit47

_ZN4llvm5APIntD2Ev.exit47:                        ; preds = %_ZNK4llvm6APSIntdvERKS0_.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  br label %bb.bq

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i32 64, ptr %i.ag, align 8, !tbaa !40, !alias.scope !144
  store i64 0, ptr %11, align 8, !alias.scope !144
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i8 0, ptr %i.ah, align 4, !tbaa !67, !alias.scope !144
  %i.ai = call noundef i32 @_ZN4llvm6APSInt13compareValuesERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(13) %3, ptr noundef nonnull align 8 dereferenceable(13) %11)
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !40
  %i.ak = icmp ugt i32 %i.aj, 64
  br i1 %i.ak, label %bb.m, label %_ZNK4llvm6APSInteqEl.exit48

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %11, align 8, !tbaa !42   ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZNK4llvm6APSInteqEl.exit48, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.al) #15
  br label %_ZNK4llvm6APSInteqEl.exit48

_ZNK4llvm6APSInteqEl.exit48:                      ; preds = %bb.l, %bb.m, %bb.n
  %i.an = icmp eq i32 %i.ai, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br i1 %i.an, label %bb.bq, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm6APSInteqEl.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !67, !range !70, !noalias !147, !noundef !50
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %.critedge.i51, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZNK4llvm5APInt4sremERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(13) %2, ptr noundef nonnull align 8 dereferenceable(13) %3) #14, !noalias !147
end_hunk_0
begin_hunk_1_@_ZN5clang4ento17BasicValueFactory10evalAPSIntENS_18BinaryOperatorKindERKN4llvm6APSIntES6_:bb.a
bb.bd:                                            ; preds = %bb.bb
  %i.ha = tail call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %2, ptr noundef nonnull align 8 dereferenceable(13) %3) #17
  br label %_ZNK4llvm6APSIntneERKS0_.exit

_ZNK4llvm6APSIntneERKS0_.exit:                    ; preds = %bb.bc, %bb.bd
  %.0.i.i.i.i = phi i1 [ %i.gz, %bb.bc ], [ %i.ha, %bb.bd ]
  %i.hb = xor i1 %.0.i.i.i.i, true
  %i.hc = load ptr, ptr %0, align 8, !tbaa !87, !nonnull !50, !align !51 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 2600
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !162, !nonnull !50, !align !51
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = and i64 %i.hf, 4096
  %.not.i.i76 = icmp eq i64 %i.hg, 0
  %.v.i.i77 = select i1 %.not.i.i76, i64 18984, i64 18904
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.v.i.i77
  %.sroa.0.0.copyload.i.i78 = load i64, ptr %i.hh, align 8, !tbaa !42
  %i.hi = tail call ptr @_ZN5clang4ento17BasicValueFactory13getTruthValueEbNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext %i.hb, i64 %.sroa.0.0.copyload.i.i78)
  br label %bb.bq

bb.be:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !40, !noalias !543 ; 3 uses
  store i32 %i.hl, ptr %i.hj, align 8, !tbaa !40, !noalias !543
  %i.hm = icmp ult i32 %i.hl, 65
  br i1 %i.hm, label %_ZN4llvm5APIntC2ERKS0_.exit.thread.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.be
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(13) %2) #14, !noalias !543
  %.pr.i = load i32, ptr %i.hj, align 8, !tbaa !40, !noalias !546 ; 2 uses
  %i.hn = icmp ult i32 %.pr.i, 65
  br i1 %i.hn, label %_ZN4llvm5APIntC2ERKS0_.exit.thread.i, label %bb.bf

_ZN4llvm5APIntC2ERKS0_.exit.thread.i:             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i, %bb.be
  %.sink.i79 = phi ptr [ %2, %bb.be ], [ %6, %_ZN4llvm5APIntC2ERKS0_.exit.i ]
  %i.ho = phi i32 [ %i.hl, %bb.be ], [ %.pr.i, %_ZN4llvm5APIntC2ERKS0_.exit.i ]
  %.pre.i = load i64, ptr %.sink.i79, align 8, !tbaa !42, !noalias !543
  %i.hp = load i64, ptr %3, align 8, !tbaa !42, !noalias !546
  %i.hq = and i64 %i.hp, %.pre.i
  br label %_ZNK4llvm6APSIntanERKS0_.exit

bb.bf:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  call void @_ZN4llvm5APInt17andAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(13) %3) #14, !noalias !546
  %.pre.i.i = load i32, ptr %i.hj, align 8, !tbaa !40, !noalias !546
  %.pre1.i.i = load i64, ptr %6, align 8, !noalias !546
  br label %_ZNK4llvm6APSIntanERKS0_.exit

_ZNK4llvm6APSIntanERKS0_.exit:                    ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.thread.i, %bb.bf
  %i.hr = phi i64 [ %i.hq, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i ], [ %.pre1.i.i, %bb.bf ]
  %i.hs = phi i32 [ %i.ho, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i ], [ %.pre.i.i, %bb.bf ]
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.hu = load i8, ptr %i.ht, align 4, !tbaa !67, !range !70, !noalias !543, !noundef !50
  %i.hv = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store i32 %i.hs, ptr %i.hv, align 8, !tbaa !40, !alias.scope !543
  store i64 %i.hr, ptr %23, align 8, !alias.scope !543
  %i.hw = getelementptr inbounds nuw i8, ptr %23, i64 12
  store i8 %i.hu, ptr %i.hw, align 4, !tbaa !67, !alias.scope !543
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.hx = call ptr @_ZN5clang4ento17BasicValueFactory8getValueERKN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(13) %23)
  %i.hy = load i32, ptr %i.hv, align 8, !tbaa !40
  %i.hz = icmp ugt i32 %i.hy, 64
  br i1 %i.hz, label %bb.bg, label %_ZN4llvm5APIntD2Ev.exit80

bb.bg:                                            ; preds = %_ZNK4llvm6APSIntanERKS0_.exit
  %i.ia = load ptr, ptr %23, align 8, !tbaa !42   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %_ZN4llvm5APIntD2Ev.exit80, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.ia) #15
  br label %_ZN4llvm5APIntD2Ev.exit80

_ZN4llvm5APIntD2Ev.exit80:                        ; preds = %_ZNK4llvm6APSIntanERKS0_.exit, %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  br label %bb.bq

bb.bi:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !40, !noalias !549 ; 3 uses
  store i32 %i.ie, ptr %i.ic, align 8, !tbaa !40, !noalias !549
  %i.if = icmp ult i32 %i.ie, 65
  br i1 %i.if, label %_ZN4llvm5APIntC2ERKS0_.exit.thread.i85, label %_ZN4llvm5APIntC2ERKS0_.exit.i81

_ZN4llvm5APIntC2ERKS0_.exit.i81:                  ; preds = %bb.bi
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(13) %2) #14, !noalias !549
  %.pr.i82 = load i32, ptr %i.ic, align 8, !tbaa !40, !noalias !552 ; 2 uses
  %i.ig = icmp ult i32 %.pr.i82, 65
  br i1 %i.ig, label %_ZN4llvm5APIntC2ERKS0_.exit.thread.i85, label %bb.bj

_ZN4llvm5APIntC2ERKS0_.exit.thread.i85:           ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i81, %bb.bi
  %.sink.i86 = phi ptr [ %2, %bb.bi ], [ %5, %_ZN4llvm5APIntC2ERKS0_.exit.i81 ]
  %i.ih = phi i32 [ %i.ie, %bb.bi ], [ %.pr.i82, %_ZN4llvm5APIntC2ERKS0_.exit.i81 ]
  %.pre.i87 = load i64, ptr %.sink.i86, align 8, !tbaa !42, !noalias !549
  %i.ii = load i64, ptr %3, align 8, !tbaa !42, !noalias !552
  %i.ij = or i64 %i.ii, %.pre.i87
  br label %_ZNK4llvm6APSIntorERKS0_.exit

bb.bj:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i81
  call void @_ZN4llvm5APInt16orAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(13) %3) #14, !noalias !552
  %.pre.i.i83 = load i32, ptr %i.ic, align 8, !tbaa !40, !noalias !552
  %.pre1.i.i84 = load i64, ptr %5, align 8, !noalias !552
  br label %_ZNK4llvm6APSIntorERKS0_.exit

_ZNK4llvm6APSIntorERKS0_.exit:                    ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.thread.i85, %bb.bj
  %i.ik = phi i64 [ %i.ij, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i85 ], [ %.pre1.i.i84, %bb.bj ]
  %i.il = phi i32 [ %i.ih, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i85 ], [ %.pre.i.i83, %bb.bj ]
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.in = load i8, ptr %i.im, align 4, !tbaa !67, !range !70, !noalias !549, !noundef !50
  %i.io = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store i32 %i.il, ptr %i.io, align 8, !tbaa !40, !alias.scope !549
  store i64 %i.ik, ptr %24, align 8, !alias.scope !549
  %i.ip = getelementptr inbounds nuw i8, ptr %24, i64 12
  store i8 %i.in, ptr %i.ip, align 4, !tbaa !67, !alias.scope !549
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.iq = call ptr @_ZN5clang4ento17BasicValueFactory8getValueERKN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(13) %24)
  %i.ir = load i32, ptr %i.io, align 8, !tbaa !40
  %i.is = icmp ugt i32 %i.ir, 64
  br i1 %i.is, label %bb.bk, label %_ZN4llvm5APIntD2Ev.exit88

bb.bk:                                            ; preds = %_ZNK4llvm6APSIntorERKS0_.exit
  %i.it = load ptr, ptr %24, align 8, !tbaa !42   ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %_ZN4llvm5APIntD2Ev.exit88, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZdaPv(ptr noundef nonnull %i.it) #15
  br label %_ZN4llvm5APIntD2Ev.exit88

_ZN4llvm5APIntD2Ev.exit88:                        ; preds = %_ZNK4llvm6APSIntorERKS0_.exit, %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  br label %bb.bq

bb.bm:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !40, !noalias !555 ; 3 uses
  store i32 %i.ix, ptr %i.iv, align 8, !tbaa !40, !noalias !555
  %i.iy = icmp ult i32 %i.ix, 65
  br i1 %i.iy, label %_ZN4llvm5APIntC2ERKS0_.exit.thread.i93, label %_ZN4llvm5APIntC2ERKS0_.exit.i89

_ZN4llvm5APIntC2ERKS0_.exit.i89:                  ; preds = %bb.bm
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(13) %2) #14, !noalias !555
  %.pr.i90 = load i32, ptr %i.iv, align 8, !tbaa !40, !noalias !558 ; 2 uses
  %i.iz = icmp ult i32 %.pr.i90, 65
  br i1 %i.iz, label %_ZN4llvm5APIntC2ERKS0_.exit.thread.i93, label %bb.bn

_ZN4llvm5APIntC2ERKS0_.exit.thread.i93:           ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i89, %bb.bm
  %.sink.i94 = phi ptr [ %2, %bb.bm ], [ %4, %_ZN4llvm5APIntC2ERKS0_.exit.i89 ]
  %i.ja = phi i32 [ %i.ix, %bb.bm ], [ %.pr.i90, %_ZN4llvm5APIntC2ERKS0_.exit.i89 ]
  %.pre.i95 = load i64, ptr %.sink.i94, align 8, !tbaa !42, !noalias !555
  %i.jb = load i64, ptr %3, align 8, !tbaa !42, !noalias !558
  %i.jc = xor i64 %i.jb, %.pre.i95
  br label %_ZNK4llvm6APSInteoERKS0_.exit

bb.bn:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i89
  call void @_ZN4llvm5APInt17xorAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(13) %3) #14, !noalias !558
  %.pre.i.i91 = load i32, ptr %i.iv, align 8, !tbaa !40, !noalias !558
  %.pre1.i.i92 = load i64, ptr %4, align 8, !noalias !558
  br label %_ZNK4llvm6APSInteoERKS0_.exit

_ZNK4llvm6APSInteoERKS0_.exit:                    ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.thread.i93, %bb.bn
  %i.jd = phi i64 [ %i.jc, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i93 ], [ %.pre1.i.i92, %bb.bn ]
  %i.je = phi i32 [ %i.ja, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i93 ], [ %.pre.i.i91, %bb.bn ]
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.jg = load i8, ptr %i.jf, align 4, !tbaa !67, !range !70, !noalias !555, !noundef !50
  %i.jh = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store i32 %i.je, ptr %i.jh, align 8, !tbaa !40, !alias.scope !555
  store i64 %i.jd, ptr %25, align 8, !alias.scope !555
  %i.ji = getelementptr inbounds nuw i8, ptr %25, i64 12
  store i8 %i.jg, ptr %i.ji, align 4, !tbaa !67, !alias.scope !555
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.jj = call ptr @_ZN5clang4ento17BasicValueFactory8getValueERKN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(13) %25)
  %i.jk = load i32, ptr %i.jh, align 8, !tbaa !40
  %i.jl = icmp ugt i32 %i.jk, 64
  br i1 %i.jl, label %bb.bo, label %_ZN4llvm5APIntD2Ev.exit96

bb.bo:                                            ; preds = %_ZNK4llvm6APSInteoERKS0_.exit
  %i.jm = load ptr, ptr %25, align 8, !tbaa !42   ; 2 uses
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %_ZN4llvm5APIntD2Ev.exit96, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_ZdaPv(ptr noundef nonnull %i.jm) #15
  br label %_ZN4llvm5APIntD2Ev.exit96

_ZN4llvm5APIntD2Ev.exit96:                        ; preds = %_ZNK4llvm6APSInteoERKS0_.exit, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  br label %bb.bq

bb.bq:                                            ; preds = %bb.ai, %_ZNK4llvm6APSInt10isNegativeEv.exit57, %_ZNK4llvm6APSInt10isNegativeEv.exit57.thread, %bb.ad, %_ZNK4llvm6APSInt10isNegativeEv.exit, %_ZNK4llvm6APSInt10isNegativeEv.exit.thread, %_ZNK4llvm6APSInteqEl.exit48, %_ZNK4llvm6APSInteqEl.exit, %bb.a, %_ZN4llvm5APIntD2Ev.exit60, %_ZN4llvm5APIntD2Ev.exit55, %_ZN4llvm5APIntD2Ev.exit96, %_ZN4llvm5APIntD2Ev.exit88, %_ZN4llvm5APIntD2Ev.exit80, %_ZNK4llvm6APSIntneERKS0_.exit, %_ZNK4llvm6APSInteqERKS0_.exit, %_ZNK4llvm6APSIntgeERKS0_.exit, %_ZNK4llvm6APSIntleERKS0_.exit, %_ZNK4llvm6APSIntgtERKS0_.exit, %_ZNK4llvm6APSIntltERKS0_.exit, %_ZN4llvm5APIntD2Ev.exit54, %_ZN4llvm5APIntD2Ev.exit53, %_ZN4llvm5APIntD2Ev.exit52, %_ZN4llvm5APIntD2Ev.exit47, %_ZN4llvm5APIntD2Ev.exit
  %.sroa.0112.0 = phi ptr [ %i.jj, %_ZN4llvm5APIntD2Ev.exit96 ], [ %i.h, %_ZN4llvm5APIntD2Ev.exit ], [ undef, %bb.a ], [ %i.ab, %_ZN4llvm5APIntD2Ev.exit47 ], [ undef, %_ZNK4llvm6APSInteqEl.exit ], [ %i.av, %_ZN4llvm5APIntD2Ev.exit52 ], [ %i.bm, %_ZN4llvm5APIntD2Ev.exit53 ], [ %i.cd, %_ZN4llvm5APIntD2Ev.exit54 ], [ undef, %_ZNK4llvm6APSInteqEl.exit48 ], [ %i.db, %_ZN4llvm5APIntD2Ev.exit55 ], [ undef, %_ZNK4llvm6APSInt10isNegativeEv.exit ], [ undef, %bb.ad ], [ %i.ea, %_ZN4llvm5APIntD2Ev.exit60 ], [ undef, %_ZNK4llvm6APSInt10isNegativeEv.exit57 ], [ %i.es, %_ZNK4llvm6APSIntltERKS0_.exit ], [ %i.ff, %_ZNK4llvm6APSIntgtERKS0_.exit ], [ %i.fs, %_ZNK4llvm6APSIntleERKS0_.exit ], [ %i.gf, %_ZNK4llvm6APSIntgeERKS0_.exit ], [ %i.gt, %_ZNK4llvm6APSInteqERKS0_.exit ], [ %i.hi, %_ZNK4llvm6APSIntneERKS0_.exit ], [ %i.hx, %_ZN4llvm5APIntD2Ev.exit80 ], [ %i.iq, %_ZN4llvm5APIntD2Ev.exit88 ], [ undef, %_ZNK4llvm6APSInt10isNegativeEv.exit.thread ], [ undef, %_ZNK4llvm6APSInt10isNegativeEv.exit57.thread ], [ undef, %bb.ai ]
  %.sroa.17.0 = phi i8 [ 1, %_ZN4llvm5APIntD2Ev.exit96 ], [ 1, %_ZN4llvm5APIntD2Ev.exit ], [ 0, %bb.a ], [ 1, %_ZN4llvm5APIntD2Ev.exit47 ], [ 0, %_ZNK4llvm6APSInteqEl.exit ], [ 1, %_ZN4llvm5APIntD2Ev.exit52 ], [ 1, %_ZN4llvm5APIntD2Ev.exit53 ], [ 1, %_ZN4llvm5APIntD2Ev.exit54 ], [ 0, %_ZNK4llvm6APSInteqEl.exit48 ], [ 1, %_ZN4llvm5APIntD2Ev.exit55 ], [ 0, %_ZNK4llvm6APSInt10isNegativeEv.exit ], [ 0, %bb.ad ], [ 1, %_ZN4llvm5APIntD2Ev.exit60 ], [ 0, %_ZNK4llvm6APSInt10isNegativeEv.exit57 ], [ 1, %_ZNK4llvm6APSIntltERKS0_.exit ], [ 1, %_ZNK4llvm6APSIntgtERKS0_.exit ], [ 1, %_ZNK4llvm6APSIntleERKS0_.exit ], [ 1, %_ZNK4llvm6APSIntgeERKS0_.exit ], [ 1, %_ZNK4llvm6APSInteqERKS0_.exit ], [ 1, %_ZNK4llvm6APSIntneERKS0_.exit ], [ 1, %_ZN4llvm5APIntD2Ev.exit80 ], [ 1, %_ZN4llvm5APIntD2Ev.exit88 ], [ 0, %_ZNK4llvm6APSInt10isNegativeEv.exit.thread ], [ 0, %_ZNK4llvm6APSInt10isNegativeEv.exit57.thread ], [ 0, %bb.ai ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0112.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.17.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm6APSIntlsEj(ptr dead_on_unwind noalias writable sret(%"class.llvm::APSInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(13) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !40, !noalias !567 ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !40, !alias.scope !567
  %i.d = icmp ult i32 %i.c, 65
  br i1 %i.d, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i

_ZN4llvm5APIntC2ERKS0_.exit.i.i:                  ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %1) #14
  %.pr.i.i = load i32, ptr %i.a, align 8, !tbaa !40, !alias.scope !567 ; 2 uses
  %i.e = icmp ult i32 %.pr.i.i, 65
  br i1 %i.e, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %bb.b

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i:     ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i, %bb.a
  %.sink.i.i = phi ptr [ %1, %bb.a ], [ %3, %_ZN4llvm5APIntC2ERKS0_.exit.i.i ]
  %i.f = phi i32 [ %i.c, %bb.a ], [ %.pr.i.i, %_ZN4llvm5APIntC2ERKS0_.exit.i.i ] ; 4 uses
  %.pre.i.i = load i64, ptr %.sink.i.i, align 8
  %i.g = icmp eq i32 %2, %i.f
  %i.h = zext nneg i32 %2 to i64
  %i.i = shl i64 %.pre.i.i, %i.h
  %storemerge.i.i.i = select i1 %i.g, i64 0, i64 %i.i
  %i.j = sub nsw i32 0, %i.f
  %i.k = and i32 %i.j, 63
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 -1, %i.l
  %i.n = icmp eq i32 %i.f, 0
  %.04.i.i.i.i = select i1 %i.n, i64 0, i64 %i.m, !prof !72
  %i.o = and i64 %.04.i.i.i.i, %storemerge.i.i.i
  br label %_ZN4llvm5APIntD2Ev.exit

bb.b:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %2) #14
  %.pre = load i32, ptr %i.a, align 8, !tbaa !40
  %.pre1 = load i64, ptr %3, align 8
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.b, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i
  %i.p = phi i64 [ %.pre1, %bb.b ], [ %i.o, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i ]
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.f, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i8, ptr %i.r, align 4, !tbaa !67, !range !70, !noundef !50
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.q, ptr %i.t, align 8, !tbaa !40
  store i64 %i.p, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.s, ptr %i.u, align 4, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm6APSIntrsEj(ptr dead_on_unwind noalias writable sret(%"class.llvm::APSInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(13) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !67, !range !70, !noundef !50
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !40, !noalias !568 ; 3 uses
  store i32 %i.f, ptr %i.e, align 8, !tbaa !40, !alias.scope !568
  %i.g = icmp ult i32 %i.f, 65
  br i1 %i.g, label %_ZN4llvm5APIntC2ERKS0_.exit.thread.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.thread.i:             ; preds = %bb.b
  %i.h = load i64, ptr %1, align 8, !tbaa !42, !noalias !568
  store i64 %i.h, ptr %3, align 8, !tbaa !42, !alias.scope !568
  br label %bb.c

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.b
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %1) #14
  %.pr.i = load i32, ptr %i.e, align 8, !tbaa !40, !alias.scope !568 ; 2 uses
  %i.i = icmp ult i32 %.pr.i, 65
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i
  %i.j = phi i32 [ %i.f, %_ZN4llvm5APIntC2ERKS0_.exit.thread.i ], [ %.pr.i, %_ZN4llvm5APIntC2ERKS0_.exit.i ] ; 2 uses
  %i.k = icmp eq i32 %2, %i.j
  br i1 %i.k, label %_ZN4llvm5APIntD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %3, align 8, !tbaa !42, !alias.scope !568
  %i.m = zext nneg i32 %2 to i64
  %i.n = lshr i64 %i.l, %i.m
  br label %_ZN4llvm5APIntD2Ev.exit

bb.e:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  call void @_ZN4llvm5APInt12lshrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %2) #14
  %.pre9 = load i32, ptr %i.e, align 8, !tbaa !40
  %.pre10 = load i64, ptr %3, align 8
  br label %_ZN4llvm5APIntD2Ev.exit

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.d, align 8, !tbaa !40, !noalias !571 ; 3 uses
  store i32 %i.p, ptr %i.o, align 8, !tbaa !40, !alias.scope !571
  %i.q = icmp ult i32 %i.p, 65
  br i1 %i.q, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i5

_ZN4llvm5APIntC2ERKS0_.exit.i5:                   ; preds = %bb.f
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %1) #14
  %.pr.i6 = load i32, ptr %i.o, align 8, !tbaa !40, !alias.scope !571 ; 2 uses
  %i.r = icmp ult i32 %.pr.i6, 65
  br i1 %i.r, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, label %bb.g

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i:       ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i5, %bb.f
  %.sink.i = phi ptr [ %1, %bb.f ], [ %4, %_ZN4llvm5APIntC2ERKS0_.exit.i5 ]
  %i.s = phi i32 [ %i.p, %bb.f ], [ %.pr.i6, %_ZN4llvm5APIntC2ERKS0_.exit.i5 ] ; 5 uses
  %.pre.i = load i64, ptr %.sink.i, align 8, !tbaa !42
  %i.t = icmp eq i32 %i.s, 0                      ; 2 uses
  %i.u = sub nuw nsw i32 64, %i.s
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = shl i64 %.pre.i, %i.v
  %i.x = ashr exact i64 %i.w, %i.v
  %.0.i.i.i = select i1 %i.t, i64 0, i64 %i.x
  %i.y = icmp eq i32 %2, %i.s
  %narrow.i.i = select i1 %i.y, i32 63, i32 %2
  %.pn.i.i = zext nneg i32 %narrow.i.i to i64
  %storemerge.i.i = ashr i64 %.0.i.i.i, %.pn.i.i
  %i.z = sub nsw i32 0, %i.s
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = lshr i64 -1, %i.ab
  %spec.select.i.i = select i1 %i.t, i64 0, i64 %i.ac, !prof !72
  %i.ad = and i64 %storemerge.i.i, %spec.select.i.i
  br label %_ZN4llvm5APIntD2Ev.exit

bb.g:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i5
  call void @_ZN4llvm5APInt12ashrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %2) #14
  %.pre = load i32, ptr %i.o, align 8, !tbaa !40
  %.pre8 = load i64, ptr %4, align 8
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.d, %bb.e, %bb.c, %bb.g, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i
  %.sink16 = phi i32 [ %.pre, %bb.g ], [ %i.s, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i ], [ %.pre9, %bb.e ], [ %i.j, %bb.d ], [ %2, %bb.c ]
  %.sink15 = phi i64 [ %.pre8, %bb.g ], [ %i.ad, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i ], [ %.pre10, %bb.e ], [ %i.n, %bb.d ], [ 0, %bb.c ]
  %.sink = phi i8 [ 0, %bb.g ], [ 0, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i ], [ 1, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink16, ptr %i.ae, align 8, !tbaa !40
  store i64 %.sink15, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sink, ptr %i.af, align 4, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN5clang4ento17BasicValueFactory25getPersistentSValWithDataERKNS0_4SValEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::FoldingSetNodeID", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.sroa.0 = alloca %"class.clang::ento::SVal", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %_ZN4llvm16FoldingSetNodeID10AddPointerEPKv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18 ; 3 uses
  tail call void @_ZN4llvm14FoldingSetBaseC2Ej(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i32 noundef 6) #14
  store ptr %i.d, ptr %i.b, align 8, !tbaa !21
  br label %_ZN4llvm16FoldingSetNodeID10AddPointerEPKv.exit

_ZN4llvm16FoldingSetNodeID10AddPointerEPKv.exit:  ; preds = %bb.b, %bb.a
  %.pre13 = phi ptr [ %i.d, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 32, ptr %i.g, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.h = load ptr, ptr %1, align 8, !tbaa !107
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = trunc i64 %i.i to i32
  store i32 %i.j, ptr %i.e, align 8
  %i.k = lshr i64 %i.i, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.l, ptr %i.m, align 4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !574
  %i.n = zext i8 %.pre to i32
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.n, ptr %i.o, align 8
end_hunk_1
