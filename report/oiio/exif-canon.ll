Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/exif-canon?download=true
inline.NumInlined: 492
inline.NumDeleted: 220
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA9_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !30, !alias.scope !156, !noalias !157
  %i.al = load i64, ptr %i.af, align 8, !tbaa !24, !alias.scope !157, !noalias !156
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !24, !alias.scope !156, !noalias !157
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !23, !alias.scope !157, !noalias !156
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.am = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !23, !alias.scope !156, !noalias !157
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !30, !alias.scope !157, !noalias !156
  store i64 0, ptr %i.an, align 8, !tbaa !23, !alias.scope !157, !noalias !156
  store i8 0, ptr %i.af, align 8, !tbaa !24, !alias.scope !157, !noalias !156
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i28, align 8, !tbaa !22, !alias.scope !159, !noalias !160
  %i.at = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !30, !alias.scope !160, !noalias !159 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !23, !alias.scope !160, !noalias !159 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !161
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !30, !alias.scope !159, !noalias !160
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !24, !alias.scope !160, !noalias !159
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !24, !alias.scope !159, !noalias !160
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !23, !alias.scope !160, !noalias !159
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bb = phi i64 [ %i.ax, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !23, !alias.scope !159, !noalias !160
  store ptr %i.au, ptr %.0911.i.i.i29, align 8, !tbaa !30, !alias.scope !160, !noalias !159
  store i64 0, ptr %i.bc, align 8, !tbaa !23, !alias.scope !160, !noalias !159
  store i8 0, ptr %i.au, align 8, !tbaa !24, !alias.scope !160, !noalias !159
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.be, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !1

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bj) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !31
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !27
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !28
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %i.bn) #19 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #22
  invoke void @__cxa_rethrow() #20
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bl

bb.k:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #23
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
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
  %i.c = load i16, ptr %i.b, align 2, !tbaa !34
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
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %i.h = add i32 %i.g, %6                         ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = add i64 %i.d, %i.j
  %i.l = icmp ugt i64 %i.k, %3
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %.not23 = icmp eq ptr %2, null
  %or.cond = select i1 %i.l, i1 true, i1 %.not23
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
  %i.q = load i32, ptr %.035.us, align 8, !tbaa !16 ; 2 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !36
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %.lr.ph.i.preheader.us, label %bb.g

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.split.us
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %.1.i33, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !18
  %i.w = call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = sext i16 %i.w to i32                     ; 2 uses
  %.not25.us = icmp eq i32 %8, %i.x
  br i1 %.not25.us, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.preheader.us
  %i.y = getelementptr inbounds nuw i8, ptr %.035.us, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19   ; 3 uses
  %.not.i.us = icmp eq ptr %i.z, null
  br i1 %.not.i.us, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #19
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us: ; preds = %bb.f, %bb.e
  %i.ab = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %i.x, ptr %i.a, align 4, !tbaa !8
  store ptr %i.z, ptr %9, align 8, !tbaa !13
  store i64 %i.ab, ptr %i.p, align 8, !tbaa !14
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
  %i.ad = load i32, ptr %.035, align 8, !tbaa !16 ; 2 uses
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !36
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %_ZN11OpenImageIO4v3_111swap_endianIsEEvPT_i.exit, label %bb.j

_ZN11OpenImageIO4v3_111swap_endianIsEEvPT_i.exit: ; preds = %.lr.ph.split
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [2 x i8], ptr %.1.i33, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !18
  %i.aj = sext i16 %i.ai to i32                   ; 2 uses
  %.not25 = icmp eq i32 %8, %i.aj
  br i1 %.not25, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianIsEEvPT_i.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19 ; 3 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #19
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %bb.h, %bb.i
  %i.an = phi i64 [ %i.am, %bb.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !8
  store ptr %i.al, ptr %9, align 8, !tbaa !13
  store i64 %i.an, ptr %i.p, align 8, !tbaa !14
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
  %i.c = load i16, ptr %i.b, align 2, !tbaa !34
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
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %i.h = add i32 %i.g, %6                         ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %_ZN11OpenImageIO4v3_13pvt7dataptrERK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = add i64 %i.d, %i.j
  %i.l = icmp ugt i64 %i.k, %3
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %.not23 = icmp eq ptr %2, null
  %or.cond = select i1 %i.l, i1 true, i1 %.not23
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
  %i.q = load i32, ptr %.035.us, align 8, !tbaa !16 ; 2 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !36
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %.lr.ph.i.preheader.us, label %bb.g

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.split.us
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %.1.i33, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !18
  %i.w = call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = zext i16 %i.w to i32                     ; 2 uses
  %.not25.us = icmp eq i32 %8, %i.x
  br i1 %.not25.us, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.preheader.us
  %i.y = getelementptr inbounds nuw i8, ptr %.035.us, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19   ; 3 uses
  %.not.i.us = icmp eq ptr %i.z, null
  br i1 %.not.i.us, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #19
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us: ; preds = %bb.f, %bb.e
  %i.ab = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %i.x, ptr %i.a, align 4, !tbaa !8
  store ptr %i.z, ptr %9, align 8, !tbaa !13
  store i64 %i.ab, ptr %i.p, align 8, !tbaa !14
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
  %i.ad = load i32, ptr %.035, align 8, !tbaa !16 ; 2 uses
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !36
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit, label %bb.j

_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit: ; preds = %.lr.ph.split
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [2 x i8], ptr %.1.i33, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !18
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %.not25 = icmp eq i32 %8, %i.aj
  br i1 %.not25, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19 ; 3 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #19
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %bb.h, %bb.i
  %i.an = phi i64 [ %i.am, %bb.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !8
  store ptr %i.al, ptr %9, align 8, !tbaa !13
  store i64 %i.an, ptr %i.p, align 8, !tbaa !14
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

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !32}
!1 = distinct !{!1, !32}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !10, i64 0, !11, i64 8}
!13 = !{!12, !10, i64 0}
!14 = !{!12, !11, i64 8}
!15 = !{!"_ZTSN11OpenImageIO4v3_13pvt10LabelIndexE", !7, i64 0, !10, i64 8}
!16 = !{!15, !7, i64 0}
!17 = !{!"short", !6, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!15, !10, i64 8}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !11, i64 8, !6, i64 16}
!22 = !{!20, !10, i64 0}
!23 = !{!21, !11, i64 8}
!24 = !{!6, !6, i64 0}
!25 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!26, !25, i64 8}
!28 = !{!26, !25, i64 16}
!29 = !{!11, !11, i64 0}
!30 = !{!21, !10, i64 0}
!31 = !{!26, !25, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"_ZTS12TIFFDirEntry", !17, i64 0, !17, i64 2, !7, i64 4, !7, i64 8}
!34 = !{!33, !17, i64 2}
!35 = !{!33, !7, i64 8}
!36 = !{!33, !7, i64 4}
!37 = !{!"branch_weights", i32 1, i32 1048575}
!38 = !{!"_ZTS12TIFFDataType", !6, i64 0}
!39 = !{!"_ZTSN11OpenImageIO4v3_17TagInfoE", !7, i64 0, !10, i64 8, !38, i64 16, !7, i64 20, !9, i64 24}
!40 = !{!39, !9, i64 24}
!41 = !{!39, !10, i64 8}
!42 = !{!39, !7, i64 20}
!43 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !10, i64 0}
!44 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !7, i64 4}
!45 = !{!"bool", !6, i64 0}
!46 = !{!"_ZTSN11OpenImageIO4v3_110ParamValueE", !43, i64 0, !44, i64 8, !6, i64 16, !7, i64 32, !6, i64 36, !45, i64 37, !45, i64 38}
!47 = !{!46, !45, i64 38}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!39, !38, i64 16}
!51 = !{!"_ZTSN11OpenImageIO4v3_17ustring8TableRepE", !11, i64 0, !21, i64 8, !11, i64 40, !11, i64 48, !7, i64 56}
!52 = !{!51, !11, i64 40}
!53 = !{!39, !7, i64 0}
!54 = distinct !{!54, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!55 = distinct !{!55, !54, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!56 = distinct !{!56, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!57 = distinct !{!57, !56, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!58 = distinct !{!58, !77}
!59 = !{!"vtable pointer", !5, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!25, !25, i64 0}
!62 = !{!55}
!63 = !{!57}
!64 = !{!57, !55}
!65 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!66 = !{!"_ZTSSt6locale", !65, i64 0}
!67 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !66, i64 56}
!68 = !{!67, !10, i64 40}
!69 = !{!67, !10, i64 32}
!70 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!71 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!72 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!73 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !11, i64 8}
!74 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!75 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !70, i64 24, !71, i64 28, !71, i64 32, !72, i64 40, !73, i64 48, !6, i64 64, !7, i64 192, !74, i64 200, !66, i64 208}
!76 = !{!75, !71, i64 32}
!77 = !{!"llvm.loop.peeled.count", i32 1}
!78 = distinct !{!78, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
end_hunk_0
