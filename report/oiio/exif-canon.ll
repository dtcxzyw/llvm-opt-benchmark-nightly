inline.NumInlined: 492
inline.NumDeleted: 220
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA9_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.r, %bb.f ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.f ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !37, !alias.scope !146, !noalias !149
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !149, !noalias !146 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !38, !alias.scope !149, !noalias !146 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !151
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !45, !alias.scope !146, !noalias !149
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !39, !alias.scope !149, !noalias !146
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !39, !alias.scope !146, !noalias !149
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !38, !alias.scope !149, !noalias !146
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.g
  %i.an = phi i64 [ %i.aj, %bb.g ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !38, !alias.scope !146, !noalias !149
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !149, !noalias !146
  store i64 0, ptr %i.ao, align 8, !tbaa !38, !alias.scope !149, !noalias !146
  store i8 0, ptr %i.ag, align 8, !tbaa !39, !alias.scope !149, !noalias !146
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !79

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.r, %bb.f ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !37, !alias.scope !152, !noalias !155
  %i.au = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !45, !alias.scope !155, !noalias !152 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.h:                                             ; preds = %.lr.ph.i.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !38, !alias.scope !155, !noalias !152 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !157
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !45, !alias.scope !152, !noalias !155
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !39, !alias.scope !155, !noalias !152
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !39, !alias.scope !152, !noalias !155
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !38, !alias.scope !155, !noalias !152
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.h
  %i.bc = phi i64 [ %i.ay, %bb.h ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !38, !alias.scope !152, !noalias !155
  store ptr %i.av, ptr %.0911.i.i.i29, align 8, !tbaa !45, !alias.scope !155, !noalias !152
  store i64 0, ptr %i.bd, align 8, !tbaa !38, !alias.scope !155, !noalias !152
  store i8 0, ptr %i.av, align 8, !tbaa !39, !alias.scope !155, !noalias !152
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !79

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.i
  store ptr %i.r, ptr %0, align 8, !tbaa !46
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.m
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !43
  ret void

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bo) #19 ; 0 uses
  %i.bq = shl nuw nsw i64 %i.m, 5
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.bq) #22
  invoke void @__cxa_rethrow() #20
          to label %bb.m unwind label %bb.j

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #23
  unreachable

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #7 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_13pvt13array_to_specIsEEvRNS0_9ImageSpecERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEENS8_IKNS1_10LabelIndexELm18446744073709551615EEEibi(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr %2, i64 %3, ptr %4, i64 %5, i32 noundef %6, i1 noundef zeroext %7, i32 noundef %8) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !158
  switch i16 %i.c, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread [
    i16 3, label %bb.b
    i16 8, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = tail call noundef i64 @_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry(ptr noundef nonnull align 4 dereferenceable(12) %1) ; 2 uses
  %i.e = icmp ult i64 %i.d, 5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.e, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread30, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.f, align 4, !tbaa !160
  %i.h = add i32 %i.g, %6                         ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = add i64 %i.d, %i.j
  %i.l = icmp ugt i64 %i.k, %3
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %cond.fr = freeze i1 %i.l
  %.not23 = icmp eq ptr %2, null
  %or.cond = select i1 %cond.fr, i1 true, i1 %.not23
  br i1 %or.cond, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread30

_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread30: ; preds = %bb.d, %bb.b
  %.1.i33 = phi ptr [ %i.m, %bb.d ], [ %i.f, %bb.b ] ; 2 uses
  %.idx = shl nuw nsw i64 %5, 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %.not2434 = icmp eq i64 %5, 0
  br i1 %.not2434, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread30
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br i1 %7, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.035.us = phi ptr [ %i.ac, %bb.g ], [ %4, %.lr.ph ] ; 3 uses
  %i.q = load i32, ptr %.035.us, align 8, !tbaa !14 ; 2 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !161
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %.lr.ph.i.preheader.us, label %bb.g

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.split.us
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %.1.i33, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !16
  %i.w = call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = sext i16 %i.w to i32                     ; 2 uses
  %.not25.us = icmp eq i32 %8, %i.x
  br i1 %.not25.us, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.preheader.us
  %i.y = getelementptr inbounds nuw i8, ptr %.035.us, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18   ; 3 uses
  %.not.i.us = icmp eq ptr %i.z, null
  br i1 %.not.i.us, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #19
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us: ; preds = %bb.f, %bb.e
  %i.ab = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %i.x, ptr %i.a, align 4, !tbaa !3
  store ptr %i.z, ptr %9, align 8, !tbaa !8
  store i64 %i.ab, ptr %i.p, align 8, !tbaa !13
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull dead_on_return %9, i64 263, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.preheader.us, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us, %.lr.ph.split.us
  %i.ac = getelementptr inbounds nuw i8, ptr %.035.us, i64 16 ; 2 uses
  %.not24.us = icmp eq ptr %i.ac, %i.n
  br i1 %.not24.us, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.035 = phi ptr [ %i.ao, %bb.j ], [ %4, %.lr.ph ] ; 3 uses
  %i.ad = load i32, ptr %.035, align 8, !tbaa !14 ; 2 uses
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !161
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %_ZN11OpenImageIO4v3_111swap_endianIsEEvPT_i.exit, label %bb.j

_ZN11OpenImageIO4v3_111swap_endianIsEEvPT_i.exit: ; preds = %.lr.ph.split
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [2 x i8], ptr %.1.i33, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !16
  %i.aj = sext i16 %i.ai to i32                   ; 2 uses
  %.not25 = icmp eq i32 %8, %i.aj
  br i1 %.not25, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianIsEEvPT_i.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 3 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #19
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %bb.h, %bb.i
  %i.an = phi i64 [ %i.am, %bb.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !3
  store ptr %i.al, ptr %9, align 8, !tbaa !8
  store i64 %i.an, ptr %i.p, align 8, !tbaa !13
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull dead_on_return %9, i64 263, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianIsEEvPT_i.exit, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, %.lr.ph.split
  %i.ao = getelementptr inbounds nuw i8, ptr %.035, i64 16 ; 2 uses
  %.not24 = icmp eq ptr %i.ao, %i.n
  br i1 %.not24, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread, label %.lr.ph.split

_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread: ; preds = %bb.j, %bb.g, %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread30, %bb.d, %bb.c, %bb.a
  ret void
}

declare noundef i64 @_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry(ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #15

declare void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_13pvt13array_to_specItEEvRNS0_9ImageSpecERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEENS8_IKNS1_10LabelIndexELm18446744073709551615EEEibi(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr %2, i64 %3, ptr %4, i64 %5, i32 noundef %6, i1 noundef zeroext %7, i32 noundef %8) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !158
  switch i16 %i.c, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread [
    i16 3, label %bb.b
    i16 8, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = tail call noundef i64 @_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry(ptr noundef nonnull align 4 dereferenceable(12) %1) ; 2 uses
  %i.e = icmp ult i64 %i.d, 5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.e, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread30, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.f, align 4, !tbaa !160
  %i.h = add i32 %i.g, %6                         ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = add i64 %i.d, %i.j
  %i.l = icmp ugt i64 %i.k, %3
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %cond.fr = freeze i1 %i.l
  %.not23 = icmp eq ptr %2, null
  %or.cond = select i1 %cond.fr, i1 true, i1 %.not23
  br i1 %or.cond, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread30

_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread30: ; preds = %bb.d, %bb.b
  %.1.i33 = phi ptr [ %i.m, %bb.d ], [ %i.f, %bb.b ] ; 2 uses
  %.idx = shl nuw nsw i64 %5, 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %.not2434 = icmp eq i64 %5, 0
  br i1 %.not2434, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread30
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br i1 %7, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.035.us = phi ptr [ %i.ac, %bb.g ], [ %4, %.lr.ph ] ; 3 uses
  %i.q = load i32, ptr %.035.us, align 8, !tbaa !14 ; 2 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !161
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %.lr.ph.i.preheader.us, label %bb.g

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.split.us
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %.1.i33, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !16
  %i.w = call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = zext i16 %i.w to i32                     ; 2 uses
  %.not25.us = icmp eq i32 %8, %i.x
  br i1 %.not25.us, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.preheader.us
  %i.y = getelementptr inbounds nuw i8, ptr %.035.us, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18   ; 3 uses
  %.not.i.us = icmp eq ptr %i.z, null
  br i1 %.not.i.us, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #19
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us: ; preds = %bb.f, %bb.e
  %i.ab = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %i.x, ptr %i.a, align 4, !tbaa !3
  store ptr %i.z, ptr %9, align 8, !tbaa !8
  store i64 %i.ab, ptr %i.p, align 8, !tbaa !13
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull dead_on_return %9, i64 263, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.preheader.us, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us, %.lr.ph.split.us
  %i.ac = getelementptr inbounds nuw i8, ptr %.035.us, i64 16 ; 2 uses
  %.not24.us = icmp eq ptr %i.ac, %i.n
  br i1 %.not24.us, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.035 = phi ptr [ %i.ao, %bb.j ], [ %4, %.lr.ph ] ; 3 uses
  %i.ad = load i32, ptr %.035, align 8, !tbaa !14 ; 2 uses
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !161
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit, label %bb.j

_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit: ; preds = %.lr.ph.split
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [2 x i8], ptr %.1.i33, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !16
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %.not25 = icmp eq i32 %8, %i.aj
  br i1 %.not25, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 3 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #19
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %bb.h, %bb.i
  %i.an = phi i64 [ %i.am, %bb.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !3
  store ptr %i.al, ptr %9, align 8, !tbaa !8
  store i64 %i.an, ptr %i.p, align 8, !tbaa !13
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull dead_on_return %9, i64 263, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, %.lr.ph.split
  %i.ao = getelementptr inbounds nuw i8, ptr %.035, i64 16 ; 2 uses
  %.not24 = icmp eq ptr %i.ao, %i.n
  br i1 %.not24, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread, label %.lr.ph.split

_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread: ; preds = %bb.j, %bb.g, %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread30, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !10, i64 0, !12, i64 8}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!9, !12, i64 8}
!14 = !{!15, !4, i64 0}
!15 = !{!"_ZTSN11OpenImageIO4v3_13pvt10LabelIndexE", !4, i64 0, !10, i64 8}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !5, i64 0}
!18 = !{!15, !10, i64 8}
!19 = !{!20, !11, i64 24}
!20 = !{!"_ZTSN11OpenImageIO4v3_17TagInfoE", !4, i64 0, !10, i64 8, !21, i64 16, !4, i64 20, !11, i64 24}
!21 = !{!"_ZTS12TIFFDataType", !5, i64 0}
!22 = !{!20, !10, i64 8}
!23 = !{!20, !4, i64 20}
!24 = !{!25, !28, i64 38}
!25 = !{!"_ZTSN11OpenImageIO4v3_110ParamValueE", !26, i64 0, !27, i64 8, !5, i64 16, !4, i64 32, !5, i64 36, !28, i64 37, !28, i64 38}
!26 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !10, i64 0}
!27 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!28 = !{!"bool", !5, i64 0}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{!20, !21, i64 16}
!32 = !{!33, !12, i64 40}
!33 = !{!"_ZTSN11OpenImageIO4v3_17ustring8TableRepE", !12, i64 0, !34, i64 8, !12, i64 40, !12, i64 48, !4, i64 56}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !12, i64 8, !5, i64 16}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!36 = !{!20, !4, i64 0}
!37 = !{!35, !10, i64 0}
!38 = !{!34, !12, i64 8}
!39 = !{!5, !5, i64 0}
!40 = !{!41, !42, i64 8}
!41 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!42 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!43 = !{!41, !42, i64 16}
!44 = !{!12, !12, i64 0}
!45 = !{!34, !10, i64 0}
!46 = !{!41, !42, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !6, i64 0}
!51 = !{!42, !42, i64 0}
!52 = !{!53}
end_hunk_0
