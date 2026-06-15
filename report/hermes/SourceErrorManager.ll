inline.NumInlined: 1564
inline.NumDeleted: 774
begin_hunk_0_@_ZN4llvh11raw_ostream5writeEh
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36), i8 noundef zeroext) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE17_M_realloc_insertIJRNS1_8DiagKindERN4llvh5SMLocERNS8_7SMRangeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !137    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = load i32, ptr %2, align 4, !tbaa !127
  %.sroa.01.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !134
  store i32 %i.r, ptr %i.q, align 8, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.01.0.copyload.i, ptr %i.s, align 8, !tbaa !134
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load <2 x ptr>, ptr %4, align 8, !tbaa !134
  store <2 x ptr> %i.u, ptr %i.t, align 8, !tbaa !134
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !121
  %i.x = load ptr, ptr %5, align 8, !tbaa !90     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !93 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.x, ptr %i.v, align 8, !tbaa !90
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !118
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !118
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.af = phi i64 [ %i.ab, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !93
  store ptr %i.y, ptr %5, align 8, !tbaa !90
  store i64 0, ptr %i.ag, align 8, !tbaa !93
  store i8 0, ptr %i.y, align 8, !tbaa !118
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i, i64 32, i1 false), !alias.scope !313
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !121, !alias.scope !308, !noalias !311
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !90, !alias.scope !311, !noalias !308 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !93, !alias.scope !311, !noalias !308 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false), !alias.scope !313
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !90, !alias.scope !308, !noalias !311
  %i.as = load i64, ptr %i.am, align 8, !tbaa !118, !alias.scope !311, !noalias !308
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !118, !alias.scope !308, !noalias !311
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !93, !alias.scope !311, !noalias !308
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.at = phi i64 [ %i.ap, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.at, ptr %i.av, align 8, !tbaa !93, !alias.scope !308, !noalias !311
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !90, !alias.scope !311, !noalias !308
  store i64 0, ptr %i.au, align 8, !tbaa !93, !alias.scope !311, !noalias !308
  store i8 0, ptr %i.am, align 8, !tbaa !118, !alias.scope !311, !noalias !308
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !314

_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN6hermes18SourceErrorManager11MessageDataC2ENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.ax, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i20 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i20, label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30, label %.lr.ph.i.i.i21

.lr.ph.i.i.i21:                                   ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27
  %.012.i.i.i22 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %i.ay, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i23 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %1, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i22, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i23, i64 32, i1 false), !alias.scope !320
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i22, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i22, i64 48 ; 3 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !121, !alias.scope !315, !noalias !318
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !90, !alias.scope !318, !noalias !315 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 48 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i24

bb.e:                                             ; preds = %.lr.ph.i.i.i21
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !93, !alias.scope !318, !noalias !315 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false), !alias.scope !320
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i24: ; preds = %.lr.ph.i.i.i21
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !90, !alias.scope !315, !noalias !318
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !118, !alias.scope !318, !noalias !315
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !118, !alias.scope !315, !noalias !318
  %.phi.trans.insert.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 40
  %.pre.i.i.i.i26 = load i64, ptr %.phi.trans.insert.i.i.i.i25, align 8, !tbaa !93, !alias.scope !318, !noalias !315
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27

_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i24, %bb.e
  %i.bk = phi i64 [ %i.bg, %bb.e ], [ %.pre.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i24 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i22, i64 40
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !93, !alias.scope !315, !noalias !318
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !90, !alias.scope !318, !noalias !315
  store i64 0, ptr %i.bl, align 8, !tbaa !93, !alias.scope !318, !noalias !315
  store i8 0, ptr %i.bd, align 8, !tbaa !118, !alias.scope !318, !noalias !315
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i23, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i22, i64 64 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bn, %i.b
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30, label %.lr.ph.i.i.i21, !llvm.loop !314

_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30: ; preds = %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i29 = phi ptr [ %i.ay, %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bo, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager11MessageDataES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i27 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN6hermes18SourceErrorManager11MessageDataESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !130
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bs) #25
  br label %_ZNSt12_Vector_baseIN6hermes18SourceErrorManager11MessageDataESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6hermes18SourceErrorManager11MessageDataESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager11MessageDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit30, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !137
  store ptr %.0.lcssa.i.i.i29, ptr %i.a, align 8, !tbaa !129
  %i.bt = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 8 uses
  %4 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 8 uses
  %5 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 8 uses
  %6 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 7 uses
  %7 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 1152
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.p = icmp eq i64 %2, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph95

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEET_SE_SE_T0_.exit"
  %i.q = icmp eq i64 %i.di, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph95, !llvm.loop !321

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa90 = phi i64 [ %i.c, %.lr.ph ], [ %i.or, %bb.b ]
  %storemerge33.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.022.1.i.i, %bb.b ]
  %i.r = udiv exact i64 %.lcssa90, 72             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.s = add nsw i64 %i.r, -2
  %i.t = lshr i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 64
  br label %bb.c

bb.c:                                             ; preds = %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit14.i.i.i, %._crit_edge
  %.08.i.i.i = phi i64 [ %i.t, %._crit_edge ], [ %i.az, %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit14.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ac = getelementptr inbounds [72 x i8], ptr %0, i64 %.08.i.i.i ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !90 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !93 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !90
  %i.al = load i64, ptr %i.af, align 8, !tbaa !118
  store i64 %i.al, ptr %i.v, align 8, !tbaa !118
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !93
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit.i.i.i

_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.am = phi ptr [ %i.v, %bb.d ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ] ; 2 uses
  %i.an = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !90
  store i64 0, ptr %i.ao, align 8, !tbaa !93
  store i8 0, ptr %i.af, align 8, !tbaa !118
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  store i64 %i.aq, ptr %i.x, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  store ptr %i.z, ptr %i.y, align 8, !tbaa !121
  %i.ar = icmp eq ptr %i.am, %i.v
  br i1 %i.ar, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i.i.i

bb.e:                                             ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit.i.i.i
  %i.as = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.at, i1 false)
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit10.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i.i.i: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit.i.i.i
  store ptr %i.am, ptr %i.y, align 8, !tbaa !90
  %i.au = load i64, ptr %i.v, align 8, !tbaa !118
  store i64 %i.au, ptr %i.z, align 8, !tbaa !118
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit10.i.i.i

_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit10.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i.i.i, %bb.e
  store i64 %i.an, ptr %i.aa, align 8, !tbaa !93
  store ptr %i.v, ptr %i.u, align 8, !tbaa !90
  store i64 0, ptr %i.w, align 8, !tbaa !93
  store i8 0, ptr %i.v, align 8, !tbaa !118
  store i64 %i.aq, ptr %i.ab, align 8
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_T0_SF_T1_T2_"(ptr nonnull %0, i64 noundef %.08.i.i.i, i64 noundef %i.r, ptr noundef %7)
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !90  ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.z
  br i1 %i.aw, label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i.i.i: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit10.i.i.i
  %i.ax = load i64, ptr %i.z, align 8, !tbaa !118
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #25
  br label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit.i.i.i

_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit.i.i.i: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i.i.i
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.az = add nsw i64 %.08.i.i.i, -1
  %i.ba = load ptr, ptr %i.u, align 8, !tbaa !90  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.v
  br i1 %i.bb, label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit14.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i.i.i: ; preds = %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit.i.i.i
  %i.bc = load i64, ptr %i.v, align 8, !tbaa !118
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #25
  br label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit14.i.i.i

_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit14.i.i.i: ; preds = %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_RT0_.exit.i.i", label %bb.c, !llvm.loop !322

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_RT0_.exit.i.i": ; preds = %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 10 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.bo, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_RT0_.exit" ], [ %storemerge33.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_RT0_.exit.i.i" ] ; 7 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -72 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.bo, i64 32, i1 false)
  %i.bp = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -40 ; 3 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !121
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !90 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 9 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i9.i
  %i.bt = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !93 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.bq, ptr %i.be, align 8, !tbaa !90
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !118
  store i64 %i.bx, ptr %i.bf, align 8, !tbaa !118
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !93
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %i.by = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bu, %bb.f ]
  %i.bz = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 3 uses
  store i64 %i.by, ptr %i.bg, align 8, !tbaa !93
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !90
  store i64 0, ptr %i.bz, align 8, !tbaa !93
  store i8 0, ptr %i.br, align 8, !tbaa !118
  %i.ca = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8
  store i64 %i.cb, ptr %i.bh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 32, i1 false)
  %i.cc = load ptr, ptr %i.k, align 8, !tbaa !90  ; 5 uses
  %i.cd = icmp eq ptr %i.cc, %i.bi
  br i1 %i.cd, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2.i
  %i.ce = load i64, ptr %i.j, align 8, !tbaa !93  ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %.not21.i.i.i.i = icmp eq ptr %0, %i.bo
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_T0_T1_":bb.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i69.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i64.i.i
  %i.iv = getelementptr inbounds i8, ptr %storemerge3393, i64 -40
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !90 ; 2 uses
  %i.ix = load i128, ptr %i.iw, align 1
  %i.iy = xor i128 %i.ix, 43134731028289254705102659877621165940
  %i.iz = getelementptr i8, ptr %i.iw, i64 7
  %i.ja = load i128, ptr %i.iz, align 1
  %i.jb = xor i128 %i.ja, 133449583543812656632503265877593235577
  %i.jc = or i128 %i.iy, %i.jb
  %i.jd = icmp ne i128 %i.jc, 0
  %i.je = zext i1 %i.jd to i32
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.thread87.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.i.i": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i64.i.i
  %.old95.i.i = icmp ult ptr %i.hx, %i.iq
  br i1 %.old95.i.i, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.thread87.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.thread87.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i69.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i71.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.thread87.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i69.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit61.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i57.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit49.thread81.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit49.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i45.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit37.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i33.i.i
  %.sink.i.i = phi ptr [ %i.dl, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit49.i.i" ], [ %i.dk, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.thread87.i.i" ], [ %i.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit61.i.i" ], [ %i.dk, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit37.i.i" ], [ %i.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit49.thread81.i.i" ], [ %i.dk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i33.i.i ], [ %i.dl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i45.i.i ], [ %i.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i57.i.i ], [ %i.dl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i69.i.i ], [ %i.dl, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit73.i.i" ]
  call void @_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sink.i.i) #24
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i"
  %.sroa.022.0.i.i = phi ptr [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i" ], [ %i.op, %_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge3393, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i" ], [ %.us-phi.i.i, %_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit ] ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i", %bb.n
  %.sroa.022.1.i.i = phi ptr [ %.sroa.022.0.i.i, %bb.n ], [ %i.kp, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i" ] ; 17 uses
  %i.jg = load i32, ptr %.sroa.022.1.i.i, align 8, !tbaa !131
  %i.jh = icmp eq i32 %i.jg, 0
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8            ; 2 uses
  %i.jk = icmp eq ptr %i.jj, null
  %or.cond.not15.i.i.i13.i = select i1 %i.jh, i1 %i.jk, i1 false
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 40
  %i.jm = load i64, ptr %i.jl, align 8            ; 4 uses
  %i.jn = icmp eq i64 %i.jm, 23
  %or.cond10.i.i.i14.i = select i1 %or.cond.not15.i.i.i13.i, i1 %i.jn, i1 false
  br i1 %or.cond10.i.i.i14.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i_crit_edge.i.i

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i_crit_edge.i.i: ; preds = %bb.o
  %.pre44.i.i = load i32, ptr %0, align 8, !tbaa !131
  %.pre.i15.i = load ptr, ptr %i.i, align 8
  %.pre47.i.i = load i64, ptr %i.j, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i.i16.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i: ; preds = %bb.o
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 32
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !90 ; 2 uses
  %i.jq = load i128, ptr %i.jp, align 1
  %i.jr = xor i128 %i.jq, 43134731028289254705102659877621165940
  %i.js = getelementptr i8, ptr %i.jp, i64 7
  %i.jt = load i128, ptr %i.js, align 1
  %i.ju = xor i128 %i.jt, 133449583543812656632503265877593235577
  %i.jv = or i128 %i.jr, %i.ju
  %i.jw = icmp ne i128 %i.jv, 0
  %i.jx = zext i1 %i.jw to i32
  %i.jy = icmp eq i32 %i.jx, 0
  %.pre45.i.i = load i32, ptr %0, align 8, !tbaa !131 ; 2 uses
  %.pre46.i.i = load ptr, ptr %i.i, align 8       ; 2 uses
  %.pre48.i.i = load i64, ptr %i.j, align 8       ; 2 uses
  br i1 %i.jy, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.i.i", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i.i16.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i.i16.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i_crit_edge.i.i
  %i.jz = phi i64 [ %.pre47.i.i, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i_crit_edge.i.i ], [ %.pre48.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i ] ; 2 uses
  %i.ka = phi ptr [ %.pre.i15.i, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i_crit_edge.i.i ], [ %.pre46.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i ] ; 3 uses
  %i.kb = phi i32 [ %.pre44.i.i, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i_crit_edge.i.i ], [ %.pre45.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i ] ; 2 uses
  %i.kc = icmp eq i32 %i.kb, 0
  %i.kd = icmp eq ptr %i.ka, null
  %or.cond7.not17.i.i.i17.i = select i1 %i.kc, i1 %i.kd, i1 false
  %i.ke = icmp eq i64 %i.jz, 23
  %or.cond13.i.i.i18.i = select i1 %or.cond7.not17.i.i.i17.i, i1 %i.ke, i1 false
  br i1 %or.cond13.i.i.i18.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i21.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i19.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i21.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i.i16.i
  %i.kf = load ptr, ptr %i.k, align 8, !tbaa !90  ; 2 uses
  %i.kg = load i128, ptr %i.kf, align 1
  %i.kh = xor i128 %i.kg, 43134731028289254705102659877621165940
  %i.ki = getelementptr i8, ptr %i.kf, i64 7
  %i.kj = load i128, ptr %i.ki, align 1
  %i.kk = xor i128 %i.kj, 133449583543812656632503265877593235577
  %i.kl = or i128 %i.kh, %i.kk
  %i.km = icmp ne i128 %i.kl, 0
  %i.kn = zext i1 %i.km to i32
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i19.i": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i.i16.i
  %.old.i20.i = icmp ult ptr %i.jj, %i.ka
  br i1 %.old.i20.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i19.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i21.i
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 72
  br label %bb.o, !llvm.loop !324

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i19.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i21.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i
  %i.kq = phi i64 [ %.pre48.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i ], [ %i.jz, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i19.i" ], [ 23, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i21.i ]
  %i.kr = phi ptr [ %.pre46.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i ], [ %i.ka, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i19.i" ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i21.i ] ; 2 uses
  %i.ks = phi i32 [ %.pre45.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i23.i ], [ %i.kb, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i19.i" ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i21.i ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 40 ; 4 uses
  %i.ku = icmp eq i32 %i.ks, 0
  %i.kv = icmp eq ptr %i.kr, null
  %or.cond.not15.i.i8.i.i = select i1 %i.ku, i1 %i.kv, i1 false
  %i.kw = icmp eq i64 %i.kq, 23
  %or.cond10.i.i9.i.i = select i1 %or.cond.not15.i.i8.i.i, i1 %i.kw, i1 false
  br i1 %or.cond10.i.i9.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.split.us.i.i", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.split.us.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.i.i"
  %i.kx = load ptr, ptr %i.k, align 8, !tbaa !90  ; 2 uses
  %i.ky = load i128, ptr %i.kx, align 1
  %i.kz = xor i128 %i.ky, 43134731028289254705102659877621165940
  %i.la = getelementptr i8, ptr %i.kx, i64 7
  %i.lb = load i128, ptr %i.la, align 1
  %i.lc = xor i128 %i.lb, 133449583543812656632503265877593235577
  %i.ld = or i128 %i.kz, %i.lc
  %i.le = icmp ne i128 %i.ld, 0
  %i.lf = zext i1 %i.le to i32
  %i.lg = icmp eq i32 %i.lf, 0
  %.sroa.0.1.us33.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -72 ; 2 uses
  br i1 %i.lg, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread29.i.i", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.us.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.us.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.split.us.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread.us.i.i"
  %.sroa.0.1.us35.i.i = phi ptr [ %.sroa.0.1.us.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread.us.i.i" ], [ %.sroa.0.1.us33.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.split.us.i.i" ] ; 5 uses
  %.sroa.0.0.pn.us34.i.i = phi ptr [ %.sroa.0.1.us35.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread.us.i.i" ], [ %.sroa.0.0.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.split.us.i.i" ] ; 3 uses
  %i.lh = load i32, ptr %.sroa.0.1.us35.i.i, align 8, !tbaa !131
  %i.li = icmp eq i32 %i.lh, 0
  %i.lj = getelementptr inbounds i8, ptr %.sroa.0.0.pn.us34.i.i, i64 -64
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = icmp eq ptr %i.lk, null                 ; 2 uses
  %or.cond7.not17.i.i11.us.i.i = select i1 %i.li, i1 %i.ll, i1 false
  %i.lm = getelementptr inbounds i8, ptr %.sroa.0.0.pn.us34.i.i, i64 -32
  %i.ln = load i64, ptr %i.lm, align 8
  %i.lo = icmp eq i64 %i.ln, 23
  %or.cond13.i.i12.us.i.i = select i1 %or.cond7.not17.i.i11.us.i.i, i1 %i.lo, i1 false
  br i1 %or.cond13.i.i12.us.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.us.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.us.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.us.i.i": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.us.i.i
  br i1 %i.ll, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread29.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread.us.i.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.us.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.us.i.i
  %i.lp = getelementptr inbounds i8, ptr %.sroa.0.0.pn.us34.i.i, i64 -40
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !90 ; 2 uses
  %i.lr = load i128, ptr %i.lq, align 1
  %i.ls = xor i128 %i.lr, 43134731028289254705102659877621165940
  %i.lt = getelementptr i8, ptr %i.lq, i64 7
  %i.lu = load i128, ptr %i.lt, align 1
  %i.lv = xor i128 %i.lu, 133449583543812656632503265877593235577
  %i.lw = or i128 %i.ls, %i.lv
  %i.lx = icmp ne i128 %i.lw, 0
  %i.ly = zext i1 %i.lx to i32
  %i.lz = icmp eq i32 %i.ly, 0
  br i1 %i.lz, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread.us.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread29.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread.us.i.i": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.us.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.us.i.i"
  %.sroa.0.1.us.i.i = getelementptr inbounds i8, ptr %.sroa.0.1.us35.i.i, i64 -72
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.us.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i.backedge
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i.backedge ], [ %.sroa.0.0.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.i.i" ] ; 4 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -72 ; 4 uses
  %i.ma = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !131
  %i.mb = icmp eq i32 %i.ma, 0
  %i.mc = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -64
  %i.md = load ptr, ptr %i.mc, align 8            ; 2 uses
  %i.me = icmp eq ptr %i.md, null
  %or.cond7.not17.i.i11.i.i = select i1 %i.mb, i1 %i.me, i1 false
  %i.mf = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  %i.mg = load i64, ptr %i.mf, align 8
  %i.mh = icmp eq i64 %i.mg, 23
  %or.cond13.i.i12.i.i = select i1 %or.cond7.not17.i.i11.i.i, i1 %i.mh, i1 false
  br i1 %or.cond13.i.i12.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.i.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i
  %i.mi = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !90 ; 2 uses
  %i.mk = load i128, ptr %i.mj, align 1
  %i.ml = xor i128 %i.mk, 43134731028289254705102659877621165940
  %i.mm = getelementptr i8, ptr %i.mj, i64 7
  %i.mn = load i128, ptr %i.mm, align 1
  %i.mo = xor i128 %i.mn, 133449583543812656632503265877593235577
  %i.mp = or i128 %i.ml, %i.mo
  %i.mq = icmp ne i128 %i.mp, 0
  %i.mr = zext i1 %i.mq to i32
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i.backedge, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread29.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.i.i": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i
  %.old31.i.i = icmp ult ptr %i.kr, %i.md
  br i1 %.old31.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i.backedge, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread29.i.i"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i.backedge: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.i.i
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i10.i.i, !llvm.loop !325

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread29.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.i.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.us.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.us.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.split.us.i.i"
  %.us-phi.i.i = phi ptr [ %.sroa.0.1.us33.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread26.split.us.i.i" ], [ %.sroa.0.1.us35.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.us.i.i ], [ %.sroa.0.1.us35.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.us.i.i" ], [ %.sroa.0.1.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i15.i.i ], [ %.sroa.0.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.i.i" ] ; 10 uses
  %i.mt = icmp ult ptr %.sroa.022.1.i.i, %.us-phi.i.i
  br i1 %i.mt, label %bb.p, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEET_SE_SE_T0_.exit"

bb.p:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread29.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.022.1.i.i, i64 32, i1 false)
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 32 ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !121
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !90 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 48 ; 9 uses
  %i.mx = icmp eq ptr %i.mv, %i.mw
  br i1 %i.mx, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16

bb.q:                                             ; preds = %bb.p
  %i.my = icmp ult i64 %i.jm, 16
  call void @llvm.assume(i1 %i.my)
  %i.mz = add nuw nsw i64 %i.jm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.mw, i64 %i.mz, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16: ; preds = %bb.p
  store ptr %i.mv, ptr %i.l, align 8, !tbaa !90
  %i.na = load i64, ptr %i.mw, align 8, !tbaa !118
  store i64 %i.na, ptr %i.m, align 8, !tbaa !118
  %.pre.i18 = load i64, ptr %i.kt, align 8, !tbaa !93
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16, %bb.q
  %i.nb = phi i64 [ %.pre.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16 ], [ %i.jm, %bb.q ]
  store i64 %i.nb, ptr %i.n, align 8, !tbaa !93
  store ptr %i.mw, ptr %i.mu, align 8, !tbaa !90
  store i64 0, ptr %i.kt, align 8, !tbaa !93
  store i8 0, ptr %i.mw, align 8, !tbaa !118
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 64 ; 2 uses
  %i.nd = load i64, ptr %i.nc, align 8
  store i64 %i.nd, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.022.1.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.us-phi.i.i, i64 32, i1 false)
  %i.ne = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 32 ; 7 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !90 ; 4 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 48 ; 8 uses
  %i.nh = icmp eq ptr %i.nf, %i.ng
  br i1 %i.nh, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i
  %i.ni = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 40 ; 2 uses
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !93 ; 3 uses
  %i.nk = icmp ult i64 %i.nj, 16
  call void @llvm.assume(i1 %i.nk)
  switch i64 %i.nj, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i22
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.nl = load i8, ptr %i.nf, align 1, !tbaa !118
  store i8 %i.nl, ptr %i.mw, align 8, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i22

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mw, ptr align 1 %i.nf, i64 %i.nj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i22: ; preds = %bb.t, %bb.s, %bb.r
  %i.nm = load i64, ptr %i.ni, align 8, !tbaa !93 ; 2 uses
  store i64 %i.nm, ptr %i.kt, align 8, !tbaa !93
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.nm
  store i8 0, ptr %i.nn, align 1, !tbaa !118
  %.pre.i.i.i.i23 = load ptr, ptr %i.ne, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i19

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i
  store ptr %i.nf, ptr %i.mu, align 8, !tbaa !90
  %i.no = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 40
  %i.np = load i64, ptr %i.no, align 8, !tbaa !93
  store i64 %i.np, ptr %i.kt, align 8, !tbaa !93
  %i.nq = load i64, ptr %i.ng, align 8, !tbaa !118
  store i64 %i.nq, ptr %i.mw, align 8, !tbaa !118
  store ptr %i.ng, ptr %i.ne, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i19

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i19: ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i22
  %i.nr = phi ptr [ %.pre.i.i.i.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i22 ], [ %i.ng, %bb.u ]
  %i.ns = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 40 ; 4 uses
  store i64 0, ptr %i.ns, align 8, !tbaa !93
  store i8 0, ptr %i.nr, align 1, !tbaa !118
  %i.nt = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 64 ; 2 uses
  %i.nu = load i64, ptr %i.nt, align 8
  store i64 %i.nu, ptr %i.nc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.us-phi.i.i, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 32, i1 false)
  %i.nv = load ptr, ptr %i.ne, align 8, !tbaa !90 ; 6 uses
  %i.nw = icmp eq ptr %i.nv, %i.ng
  %i.nx = load ptr, ptr %i.l, align 8, !tbaa !90  ; 5 uses
  %i.ny = icmp eq ptr %i.nx, %i.m                 ; 2 uses
  br i1 %i.nw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i19
  br i1 %i.ny, label %bb.v, label %.thread.i.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5.i: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i19
  br i1 %i.ny, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i
  %i.nz = load i64, ptr %i.n, align 8, !tbaa !93  ; 3 uses
  %i.oa = icmp ult i64 %i.nz, 16
  call void @llvm.assume(i1 %i.oa)
  switch i64 %i.nz, label %bb.x [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.ob = load i8, ptr %i.nx, align 1, !tbaa !118
  store i8 %i.ob, ptr %i.nv, align 1, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nv, ptr align 1 %i.nx, i64 %i.nz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.oc = load i64, ptr %i.n, align 8, !tbaa !93  ; 2 uses
  store i64 %i.oc, ptr %i.ns, align 8, !tbaa !93
  %i.od = load ptr, ptr %i.ne, align 8, !tbaa !90
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.oc
  store i8 0, ptr %i.oe, align 1, !tbaa !118
  %.pre.i.i.i10.i = load ptr, ptr %i.l, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13.i

.thread.i.i.i12.i:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i
  store ptr %i.nx, ptr %i.ne, align 8, !tbaa !90
  %i.of = load i64, ptr %i.n, align 8, !tbaa !93
  store i64 %i.of, ptr %i.ns, align 8, !tbaa !93
  %i.og = load i64, ptr %i.m, align 8, !tbaa !118
  store i64 %i.og, ptr %i.ng, align 8, !tbaa !118
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5.i
  %i.oh = load i64, ptr %i.ng, align 8, !tbaa !118
  store ptr %i.nx, ptr %i.ne, align 8, !tbaa !90
  %i.oi = load i64, ptr %i.n, align 8, !tbaa !93
  store i64 %i.oi, ptr %i.ns, align 8, !tbaa !93
  %i.oj = load i64, ptr %i.m, align 8, !tbaa !118
  store i64 %i.oj, ptr %i.ng, align 8, !tbaa !118
  %.not.i.i.i7.i = icmp eq ptr %i.nv, null
  br i1 %.not.i.i.i7.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6.i
  store ptr %i.nv, ptr %i.l, align 8, !tbaa !90
  store i64 %i.oh, ptr %i.m, align 8, !tbaa !118
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6.i, %.thread.i.i.i12.i
  store ptr %i.m, ptr %i.l, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13.i

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13.i: ; preds = %bb.z, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i
  %8 = phi ptr [ %i.nv, %bb.y ], [ %i.m, %bb.z ], [ %.pre.i.i.i10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i ]
  store i64 0, ptr %i.n, align 8, !tbaa !93
  store i8 0, ptr %8, align 1, !tbaa !118
  %i.ok = load i64, ptr %i.o, align 8
  store i64 %i.ok, ptr %i.nt, align 8
  %i.ol = load ptr, ptr %i.l, align 8, !tbaa !90  ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.m
  br i1 %i.om, label %_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14.i: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13.i
  %i.on = load i64, ptr %i.m, align 8, !tbaa !118
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #25
  br label %_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit

_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.022.1.i.i, i64 72
  br label %bb.n, !llvm.loop !326

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEET_SE_SE_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit19.thread29.i.i"
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_T0_T1_"(ptr nonnull %.sroa.022.1.i.i, ptr %storemerge3393, i64 noundef %i.di)
  %i.oq = ptrtoint ptr %.sroa.022.1.i.i to i64
  %i.or = sub i64 %i.oq, %i.a                     ; 3 uses
  %i.os = icmp sgt i64 %i.or, 1152
  br i1 %i.os, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !321

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEET_SE_SE_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_SE_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_T0_SF_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 9 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit
  %.051 = phi i64 [ %i.av, %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.051, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [72 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [72 x i8], ptr %0, i64 %i.g ; 4 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !131
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %or.cond.not15.i.i = select i1 %i.j, i1 %i.m, i1 false
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %i.o, 23
  %or.cond10.i.i = select i1 %or.cond.not15.i.i, i1 %i.p, i1 false
  br i1 %or.cond10.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !90   ; 2 uses
  %i.s = load i128, ptr %i.r, align 1
  %i.t = xor i128 %i.s, 43134731028289254705102659877621165940
  %i.u = getelementptr i8, ptr %i.r, i64 7
  %i.v = load i128, ptr %i.u, align 1
  %i.w = xor i128 %i.v, 133449583543812656632503265877593235577
  %i.x = or i128 %i.t, %i.w
  %i.y = icmp ne i128 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread48", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %.lr.ph
  %i.ab = load i32, ptr %i.h, align 8, !tbaa !131
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  %or.cond7.not17.i.i = select i1 %i.ac, i1 %i.af, i1 false
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.ah, 23
  %or.cond13.i.i = select i1 %or.cond7.not17.i.i, i1 %i.ai, i1 false
  br i1 %or.cond13.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !90 ; 2 uses
  %i.al = load i128, ptr %i.ak, align 1
  %i.am = xor i128 %i.al, 43134731028289254705102659877621165940
  %i.an = getelementptr i8, ptr %i.ak, i64 7
  %i.ao = load i128, ptr %i.an, align 1
  %i.ap = xor i128 %i.ao, 133449583543812656632503265877593235577
  %i.aq = or i128 %i.am, %i.ap
  %i.ar = icmp ne i128 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i
  %i.au = icmp ult ptr %i.l, %i.ae
  %cond.fr = freeze i1 %i.au
  br i1 %cond.fr, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread48"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit"
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread48"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread48": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread"
  %i.av = phi i64 [ %i.g, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread" ], [ %i.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit" ], [ %i.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i ] ; 5 uses
  %i.aw = getelementptr inbounds [72 x i8], ptr %0, i64 %i.av ; 8 uses
  %i.ax = getelementptr inbounds [72 x i8], ptr %0, i64 %.051 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i64 32, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 4 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !90 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !90 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 4 uses
  %i.bf = icmp eq ptr %i.bd, %i.be                ; 2 uses
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread48"
  br i1 %i.bf, label %bb.b, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread48"
  br i1 %i.bf, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !93 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  tail call void @llvm.assume(i1 %i.bi)
  %.not21.i.i.i = icmp eq i64 %i.av, %.051
  br i1 %.not21.i.i.i, label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit, label %bb.c, !prof !207

bb.c:                                             ; preds = %bb.b
  switch i64 %i.bh, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !118
  store i8 %i.bj, ptr %i.ba, align 1, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bd, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.bk = load i64, ptr %i.bg, align 8, !tbaa !93 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !93
  %i.bm = load ptr, ptr %i.ay, align 8, !tbaa !90
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1, !tbaa !118
  %.pre.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !90
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bq = load <2 x i64>, ptr %i.bp, align 8, !tbaa !118
  store <2 x i64> %i.bq, ptr %i.bo, align 8, !tbaa !118
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.br = load i64, ptr %i.bb, align 8, !tbaa !118
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !90
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bu = load <2 x i64>, ptr %i.bs, align 8, !tbaa !118
  store <2 x i64> %i.bu, ptr %i.bt, align 8, !tbaa !118
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !90
  store i64 %i.br, ptr %i.be, align 8, !tbaa !118
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.be, ptr %i.az, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.f, %bb.g
  %i.bv = phi ptr [ %i.ba, %bb.f ], [ %i.be, %bb.g ], [ %i.bd, %bb.b ], [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store i64 0, ptr %i.bw, align 8, !tbaa !93
  store i8 0, ptr %i.bv, align 1, !tbaa !118
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.bz = load i64, ptr %i.by, align 8
  store i64 %i.bz, ptr %i.bx, align 8
  %i.ca = icmp slt i64 %i.av, %i.b
  br i1 %i.ca, label %.lr.ph, label %._crit_edge, !llvm.loop !327

._crit_edge:                                      ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.av, %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit ] ; 6 uses
end_hunk_1
begin_hunk_2_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_T0_SF_T1_T2_":bb.a
  %i.fm = xor i128 %i.fl, 133449583543812656632503265877593235577
  %i.fn = or i128 %i.fj, %i.fm
  %i.fo = icmp ne i128 %i.fn, 0
  %i.fp = zext i1 %i.fo to i32
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.thread.i", label %.critedge.i

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i.i
  %.old.i = icmp ult ptr %i.el, %i.fd
  br i1 %.old.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.thread.i", label %.critedge.i

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.thread.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i
  %i.fr = getelementptr inbounds [72 x i8], ptr %0, i64 %.012.i ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fr, ptr noundef nonnull align 8 dereferenceable(72) %i.eh, i64 32, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eh, i64 32 ; 4 uses
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !90 ; 6 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 48 ; 4 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !90 ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eh, i64 48 ; 6 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy                ; 2 uses
  br i1 %i.fw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.thread.i"
  br i1 %i.fz, label %bb.s, label %.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.thread.i"
  br i1 %i.fz, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ga = icmp ult i64 %i.eo, 16
  call void @llvm.assume(i1 %i.ga)
  %.not21.i.i.i.i = icmp eq i64 %.0913.i, %.012.i
  br i1 %.not21.i.i.i.i, label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i, label %bb.t, !prof !207

bb.t:                                             ; preds = %bb.s
  switch i64 %i.eo, label %bb.v [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.gb = load i8, ptr %i.fx, align 1, !tbaa !118
  store i8 %i.gb, ptr %i.fu, align 1, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fu, ptr align 1 %i.fx, i64 %i.eo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.gc = load i64, ptr %i.en, align 8, !tbaa !93 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !93
  %i.ge = load ptr, ptr %i.fs, align 8, !tbaa !90
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gc
  store i8 0, ptr %i.gf, align 1, !tbaa !118
  %.pre.i.i.i.i = load ptr, ptr %i.ft, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i

.thread.i.i.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  store ptr %i.fx, ptr %i.fs, align 8, !tbaa !90
  store i64 %i.eo, ptr %i.gg, align 8, !tbaa !93
  %i.gh = load i64, ptr %i.fy, align 8, !tbaa !118
  store i64 %i.gh, ptr %i.fv, align 8, !tbaa !118
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.gi = load i64, ptr %i.fv, align 8, !tbaa !118
  store ptr %i.fx, ptr %i.fs, align 8, !tbaa !90
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  store i64 %i.eo, ptr %i.gj, align 8, !tbaa !93
  %i.gk = load i64, ptr %i.fy, align 8, !tbaa !118
  store i64 %i.gk, ptr %i.fv, align 8, !tbaa !118
  %.not.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i
  store ptr %i.fu, ptr %i.ft, align 8, !tbaa !90
  store i64 %i.gi, ptr %i.fy, align 8, !tbaa !118
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i, %.thread.i.i.i.i
  store ptr %i.fy, ptr %i.ft, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i: ; preds = %bb.x, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i, %bb.s
  %i.gl = phi ptr [ %i.fu, %bb.w ], [ %i.fy, %bb.x ], [ %i.fx, %bb.s ], [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i ]
  store i64 0, ptr %i.en, align 8, !tbaa !93
  store i8 0, ptr %i.gl, align 1, !tbaa !118
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fr, i64 64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.go = load i64, ptr %i.gn, align 8
  store i64 %i.go, ptr %i.gm, align 8
  %i.gp = icmp sgt i64 %.0913.i, %1
  br i1 %i.gp, label %bb.r, label %.critedge.i, !llvm.loop !328

.critedge.i:                                      ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i, %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit
  %.0.lcssa.i = phi i64 [ %.1, %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit ], [ %.012.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i" ], [ %.0913.i, %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i ], [ %.012.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i ], [ %.012.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i.i ]
  %i.gq = getelementptr inbounds [72 x i8], ptr %0, i64 %.0.lcssa.i ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gq, ptr noundef nonnull align 8 dereferenceable(72) %4, i64 32, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 32 ; 4 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !90 ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 48 ; 4 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  %i.gv = load ptr, ptr %i.do, align 8, !tbaa !90 ; 6 uses
  %i.gw = icmp eq ptr %i.gv, %i.dq                ; 2 uses
  %.pre53 = load i64, ptr %i.eb, align 8, !tbaa !93 ; 5 uses
  br i1 %i.gu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i: ; preds = %.critedge.i
  br i1 %i.gw, label %bb.y, label %.thread.i.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i10.i: ; preds = %.critedge.i
  br i1 %i.gw, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i11.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i
  %i.gx = icmp ult i64 %.pre53, 16
  call void @llvm.assume(i1 %i.gx)
  %.not21.i.i.i13.i = icmp eq ptr %4, %i.gq
  br i1 %.not21.i.i.i13.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS3_16disableBufferingEvE3$_0EEEvT_T0_SF_T1_RT2_.exit", label %bb.z, !prof !207

bb.z:                                             ; preds = %bb.y
  switch i64 %.pre53, label %bb.ab [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i14.i
    i64 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.gy = load i8, ptr %i.gv, align 1, !tbaa !118
  store i8 %i.gy, ptr %i.gs, align 1, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i14.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gs, ptr align 1 %i.gv, i64 %.pre53, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i14.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.gz = load i64, ptr %i.eb, align 8, !tbaa !93 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !93
  %i.hb = load ptr, ptr %i.gr, align 8, !tbaa !90
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gz
  store i8 0, ptr %i.hc, align 1, !tbaa !118
  %.pre.i.i.i15.i = load ptr, ptr %i.do, align 8, !tbaa !90
  br label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS3_16disableBufferingEvE3$_0EEEvT_T0_SF_T1_RT2_.exit"

.thread.i.i.i17.i:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  store ptr %i.gv, ptr %i.gr, align 8, !tbaa !90
  store i64 %.pre53, ptr %i.hd, align 8, !tbaa !93
  %i.he = load i64, ptr %i.dq, align 8, !tbaa !118
  store i64 %i.he, ptr %i.gt, align 8, !tbaa !118
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i11.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i10.i
  %i.hf = load i64, ptr %i.gt, align 8, !tbaa !118
  store ptr %i.gv, ptr %i.gr, align 8, !tbaa !90
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  store i64 %.pre53, ptr %i.hg, align 8, !tbaa !93
  %i.hh = load i64, ptr %i.dq, align 8, !tbaa !118
  store i64 %i.hh, ptr %i.gt, align 8, !tbaa !118
  %.not.i.i.i12.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i12.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i11.i
  store ptr %i.gs, ptr %i.do, align 8, !tbaa !90
  store i64 %i.hf, ptr %i.dq, align 8, !tbaa !118
  br label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS3_16disableBufferingEvE3$_0EEEvT_T0_SF_T1_RT2_.exit"

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i11.i, %.thread.i.i.i17.i
  store ptr %i.dq, ptr %i.do, align 8, !tbaa !90
  br label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS3_16disableBufferingEvE3$_0EEEvT_T0_SF_T1_RT2_.exit"

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS3_16disableBufferingEvE3$_0EEEvT_T0_SF_T1_RT2_.exit": ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i14.i, %bb.ac, %bb.ad
  %i.hi = phi ptr [ %i.gs, %bb.ac ], [ %i.dq, %bb.ad ], [ %i.gv, %bb.y ], [ %.pre.i.i.i15.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i14.i ]
  store i64 0, ptr %i.eb, align 8, !tbaa !93
  store i8 0, ptr %i.hi, align 1, !tbaa !118
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gq, i64 64
  %i.hk = load i64, ptr %i.ec, align 8
  store i64 %i.hk, ptr %i.hj, align 8
  %i.hl = load ptr, ptr %i.do, align 8, !tbaa !90 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.dq
  br i1 %i.hm, label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS3_16disableBufferingEvE3$_0EEEvT_T0_SF_T1_RT2_.exit"
  %i.hn = load i64, ptr %i.dq, align 8, !tbaa !118
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #25
  br label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit

_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit: ; preds = %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS3_16disableBufferingEvE3$_0EEEvT_T0_SF_T1_RT2_.exit", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt4swapIN6hermes18SourceErrorManager15BufferedMessageEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #8 comdat {
bb.a:
  %2 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !121
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !93   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !90
  %i.k = load i64, ptr %i.e, align 8, !tbaa !118
  store i64 %i.k, ptr %i.c, align 8, !tbaa !118
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.l = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !93
  store ptr %i.e, ptr %i.b, align 8, !tbaa !90
  store i64 0, ptr %i.m, align 8, !tbaa !93
  store i8 0, ptr %i.e, align 8, !tbaa !118
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  store i64 %i.q, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !93   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %.not21.i.i.i = icmp eq ptr %1, %0
  br i1 %.not21.i.i.i, label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit, label %bb.d, !prof !207

bb.d:                                             ; preds = %bb.c
  switch i64 %i.w, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.s, align 1, !tbaa !118
  store i8 %i.y, ptr %i.e, align 8, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr align 1 %i.s, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.z = load i64, ptr %i.v, align 8, !tbaa !93   ; 2 uses
  store i64 %i.z, ptr %i.m, align 8, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !118
  %.pre.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  store ptr %i.s, ptr %i.b, align 8, !tbaa !90
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !93
  store i64 %i.ac, ptr %i.m, align 8, !tbaa !93
  %i.ad = load i64, ptr %i.t, align 8, !tbaa !118
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !118
  store ptr %i.t, ptr %i.r, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.g
  %i.ae = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.t, %bb.g ], [ %i.s, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  store i64 0, ptr %i.af, align 8, !tbaa !93
  store i8 0, ptr %i.ae, align 1, !tbaa !118
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  store i64 %i.ah, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 32, i1 false)
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !90  ; 6 uses
  %i.aj = icmp eq ptr %i.ai, %i.t
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !90  ; 5 uses
  %i.al = icmp eq ptr %i.ak, %i.c                 ; 2 uses
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit
  br i1 %i.al, label %bb.h, label %.thread.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit
  br i1 %i.al, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  %i.am = load i64, ptr %i.n, align 8, !tbaa !93  ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  switch i64 %i.am, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ao = load i8, ptr %i.ak, align 1, !tbaa !118
  store i8 %i.ao, ptr %i.ai, align 1, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ak, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9: ; preds = %bb.j, %bb.i, %bb.h
  %i.ap = load i64, ptr %i.n, align 8, !tbaa !93  ; 2 uses
  store i64 %i.ap, ptr %i.af, align 8, !tbaa !93
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !90
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 0, ptr %i.ar, align 1, !tbaa !118
  %.pre.i.i.i10 = load ptr, ptr %i.a, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13

.thread.i.i.i12:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  store ptr %i.ak, ptr %i.r, align 8, !tbaa !90
  %i.as = load <2 x i64>, ptr %i.n, align 8, !tbaa !118
  store <2 x i64> %i.as, ptr %i.af, align 8, !tbaa !118
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5
  %i.at = load i64, ptr %i.t, align 8, !tbaa !118
  store ptr %i.ak, ptr %i.r, align 8, !tbaa !90
  %i.au = load <2 x i64>, ptr %i.n, align 8, !tbaa !118
  store <2 x i64> %i.au, ptr %i.af, align 8, !tbaa !118
  %.not.i.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !90
  store i64 %i.at, ptr %i.c, align 8, !tbaa !118
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6, %.thread.i.i.i12
  store ptr %i.c, ptr %i.a, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9, %bb.k, %bb.l
  %3 = phi ptr [ %i.ai, %bb.k ], [ %i.c, %bb.l ], [ %.pre.i.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9 ]
  store i64 0, ptr %i.n, align 8, !tbaa !93
  store i8 0, ptr %3, align 1, !tbaa !118
  %i.av = load i64, ptr %i.o, align 8
  store i64 %i.av, ptr %i.ag, align 8
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !90  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.c
  br i1 %i.ax, label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !118
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #25
  br label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit

_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 9 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.022 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.not23 = icmp eq ptr %.sroa.0.022, %1
  br i1 %.not23, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.i = ptrtoint ptr %0 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.not21.i.i.i = icmp eq ptr %2, %0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.0.025 = phi ptr [ %.sroa.0.022, %.lr.ph ], [ %.sroa.0.0, %bb.o ] ; 7 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.025, %bb.o ] ; 7 uses
  %i.l = load i32, ptr %.sroa.0.025, align 8, !tbaa !131
  %i.m = icmp eq i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24, i64 80
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond.not15.i.i = select i1 %i.m, i1 %i.p, i1 false
  %i.q = getelementptr inbounds nuw i8, ptr %.pn24, i64 112 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8              ; 4 uses
  %i.s = icmp eq i64 %i.r, 23
  %or.cond10.i.i = select i1 %or.cond.not15.i.i, i1 %i.s, i1 false
  br i1 %or.cond10.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.pn24, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !90   ; 2 uses
  %i.v = load i128, ptr %i.u, align 1
  %i.w = xor i128 %i.v, 43134731028289254705102659877621165940
  %i.x = getelementptr i8, ptr %i.u, i64 7
  %i.y = load i128, ptr %i.x, align 1
  %i.z = xor i128 %i.y, 133449583543812656632503265877593235577
  %i.aa = or i128 %i.w, %i.z
  %i.ab = icmp ne i128 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread20", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %bb.b
  %i.ae = load i32, ptr %0, align 8, !tbaa !131
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  %or.cond7.not17.i.i = select i1 %i.af, i1 %i.ah, i1 false
  %i.ai = load i64, ptr %i.c, align 8
  %i.aj = icmp eq i64 %i.ai, 23
  %or.cond13.i.i = select i1 %or.cond7.not17.i.i, i1 %i.aj, i1 false
  br i1 %or.cond13.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !90  ; 2 uses
  %i.al = load i128, ptr %i.ak, align 1
  %i.am = xor i128 %i.al, 43134731028289254705102659877621165940
  %i.an = getelementptr i8, ptr %i.ak, i64 7
  %i.ao = load i128, ptr %i.an, align 1
  %i.ap = xor i128 %i.ao, 133449583543812656632503265877593235577
  %i.aq = or i128 %i.am, %i.ap
  %i.ar = icmp ne i128 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread20"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i
  %.old = icmp ult ptr %i.o, %i.ag
  br i1 %.old, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread20"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.025, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.pn24, i64 104 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !121
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !90 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn24, i64 120 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread"
  %i.ay = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false)
  %.pre = load i64, ptr %i.q, align 8, !tbaa !93
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread"
  store ptr %i.av, ptr %i.e, align 8, !tbaa !90
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !118
  store i64 %i.ba, ptr %i.f, align 8, !tbaa !118
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit

_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bb = phi i64 [ %.pre, %bb.c ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  store i64 %i.bb, ptr %i.g, align 8, !tbaa !93
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !90
  store i64 0, ptr %i.q, align 8, !tbaa !93
  store i8 0, ptr %i.aw, align 8, !tbaa !118
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn24, i64 136
  %i.bd = load i64, ptr %i.bc, align 8
  store i64 %i.bd, ptr %i.h, align 8
  %i.be = ptrtoint ptr %.sroa.0.025 to i64
  %i.bf = sub i64 %i.be, %i.i                     ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn24, i64 144
  %i.bi = udiv exact i64 %i.bf, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.cp, %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i ], [ %i.bi, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bk, %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i ], [ %i.bh, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bj, %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i ], [ %.sroa.0.025, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %i.bj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -72 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bk, ptr noundef nonnull align 8 dereferenceable(72) %i.bj, i64 32, i1 false)
  %i.bl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 4 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !90 ; 6 uses
  %i.bo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 4 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !90 ; 5 uses
  %i.br = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 6 uses
  %i.bs = icmp eq ptr %i.bq, %i.br                ; 2 uses
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.bs, label %bb.d, label %.thread.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.bs, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.bt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !93 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bv)
  switch i64 %i.bu, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.bw = load i8, ptr %i.bq, align 1, !tbaa !118
  store i8 %i.bw, ptr %i.bn, align 1, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bq, i64 %i.bu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.bx = load i64, ptr %i.bt, align 8, !tbaa !93 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !93
  %i.bz = load ptr, ptr %i.bl, align 8, !tbaa !90
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1, !tbaa !118
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !90
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.cb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
end_hunk_2
