inline.NumInlined: 233
inline.NumDeleted: 110
begin_hunk_0_@_ZN22photos_editing_formats8image_io9XmlWriter18WriteAttributeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ab = load ptr, ptr %1, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !13
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.ab, i64 noundef %i.ad)
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  store i8 1, ptr %i.ah, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io9XmlWriter19WriteAttributeValueEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, i1 noundef zeroext %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i8, ptr %i.i, align 8, !tbaa !17    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.j, ptr %i.b, align 1, !tbaa !16
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.e:                                             ; preds = %bb.c
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i8 noundef signext %i.j) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.b
  %i.s = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.t = load ptr, ptr %2, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.t, i64 noundef %i.v) ; 0 uses
  br i1 %3, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i8, ptr %i.y, align 8, !tbaa !17    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.z, ptr %i.a, align 1, !tbaa !16
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !43
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !70
  %.not.i3 = icmp eq i64 %i.af, 0
  br i1 %.not.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit5

bb.i:                                             ; preds = %bb.g
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i8 noundef signext %i.z) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit5

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit5: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit5, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io9XmlWriter12WriteCommentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN22photos_editing_formats8image_io9XmlWriter22MaybeWriteCloseBracketEb(ptr noundef nonnull align 8 dereferenceable(73) %0, i1 noundef zeroext true) ; 0 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.d, i64 noundef %i.f) ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.6, i64 noundef 5) ; 0 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k) ; 4 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.7, i64 noundef 4) ; 0 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !59
  %.not.i1.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 67
  %i.w = load i8, ptr %i.v, align 1, !tbaa !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.s)
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.s, i8 noundef signext 10), !inline_history !65
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.w, %bb.c ], [ %i.aa, %bb.d ]
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext %.0.i.i.i)
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41 ; 2 uses
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -6
  store i8 1, ptr %i.ai, align 2, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !29     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #14
  unreachable

_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_M_allocateEm.exit: ; preds = %bb.a
  %3 = sdiv exact i64 %i.g, 40                    ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 230584300921369395)
  %7 = select i1 %5, i64 230584300921369395, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %.not.i)
  %10 = mul nuw nsw i64 %7, 40                    ; 2 uses
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #17 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 %9 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !10
  %i.k = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.m, ptr %i.a, align 8, !tbaa !34
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(35) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !27
  %i.p = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.p, ptr %i.j, align 8, !tbaa !16
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !16
  store i8 %i.r, ptr %i.q, align 1, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !13
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i8 0, ptr %i.w, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 33
  store i8 0, ptr %i.x, align 1, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 34
  store i8 0, ptr %i.y, align 2, !tbaa !30
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %11, %bb.e ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.an, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.z, ptr %.012.i.i.i, align 8, !tbaa !10, !alias.scope !71, !noalias !74
  %i.aa = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !27, !alias.scope !74, !noalias !71 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13, !alias.scope !74, !noalias !71 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false), !alias.scope !76
  br label %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.aa, ptr %.012.i.i.i, align 8, !tbaa !27, !alias.scope !71, !noalias !74
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !16, !alias.scope !74, !noalias !71
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !16, !alias.scope !71, !noalias !74
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !13, !alias.scope !74, !noalias !71
  br label %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.ai = phi i64 [ %i.ae, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !13, !alias.scope !71, !noalias !74
  store ptr %i.ab, ptr %.0911.i.i.i, align 8, !tbaa !27, !alias.scope !74, !noalias !71
  store i64 0, ptr %i.aj, align 8, !tbaa !13, !alias.scope !74, !noalias !71
  store i8 0, ptr %i.ab, align 8, !tbaa !16, !alias.scope !74, !noalias !71
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.al, ptr noundef nonnull align 8 dereferenceable(3) %i.am, i64 3, i1 false), !alias.scope !76
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !77

_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %11, %bb.e ], [ %i.ao, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ap, %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 6 uses
  %.0911.i.i.i29 = phi ptr [ %i.be, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.aq, ptr %.012.i.i.i28, align 8, !tbaa !10, !alias.scope !78, !noalias !81
  %i.ar = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !27, !alias.scope !81, !noalias !78 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !13, !alias.scope !81, !noalias !78 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !83
  br label %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.ar, ptr %.012.i.i.i28, align 8, !tbaa !27, !alias.scope !78, !noalias !81
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !16, !alias.scope !81, !noalias !78
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !16, !alias.scope !78, !noalias !81
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !13, !alias.scope !81, !noalias !78
  br label %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.az = phi i64 [ %i.av, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !13, !alias.scope !78, !noalias !81
  store ptr %i.as, ptr %.0911.i.i.i29, align 8, !tbaa !27, !alias.scope !81, !noalias !78
  store i64 0, ptr %i.ba, align 8, !tbaa !13, !alias.scope !81, !noalias !78
  store i8 0, ptr %i.as, align 8, !tbaa !16, !alias.scope !81, !noalias !78
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bc, ptr noundef nonnull align 8 dereferenceable(3) %i.bd, i64 3, i1 false), !alias.scope !83
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.be, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !77

_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36: ; preds = %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ap, %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.bf, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !33
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bj) #15
  br label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36, %bb.h
  store ptr %11, ptr %0, align 8, !tbaa !29
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %11, i64 %7
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !33
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %i.bn) #13 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef %10) #15
  invoke void @__cxa_rethrow() #14
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bl

bb.l:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #16
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin allocsize(0) }

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
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSSo", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!14, !15, i64 8}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !15, i64 8, !5, i64 16}
!15 = !{!"long", !5, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !5, i64 72}
!18 = !{!"_ZTSN22photos_editing_formats8image_io9XmlWriterE", !8, i64 0, !14, i64 8, !19, i64 40, !15, i64 64, !5, i64 72}
!19 = !{!"_ZTSSt6vectorIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE", !20, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE12_Vector_implE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io9XmlWriter11ElementDataESaIS3_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 _ZTSN22photos_editing_formats8image_io9XmlWriter11ElementDataE", !9, i64 0}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!26 = distinct !{!26, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!27 = !{!14, !12, i64 0}
!28 = !{!22, !23, i64 8}
!29 = !{!22, !23, i64 0}
!30 = !{!31, !32, i64 34}
!31 = !{!"_ZTSN22photos_editing_formats8image_io9XmlWriter11ElementDataE", !14, i64 0, !32, i64 32, !32, i64 33, !32, i64 34}
!32 = !{!"bool", !5, i64 0}
!33 = !{!22, !23, i64 16}
!34 = !{!15, !15, i64 0}
!35 = !{!31, !32, i64 32}
!36 = !{!31, !32, i64 33}
!37 = !{!18, !8, i64 0}
!38 = !{}
!39 = !{i64 8}
!40 = !{!18, !15, i64 64}
!41 = !{!23, !23, i64 0}
!42 = !{i8 0, i8 2}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !6, i64 0}
!45 = !{!46, !56, i64 240}
!46 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !47, i64 0, !8, i64 216, !5, i64 224, !32, i64 225, !55, i64 232, !56, i64 240, !57, i64 248, !58, i64 256}
!47 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !48, i64 24, !49, i64 28, !49, i64 32, !50, i64 40, !51, i64 48, !5, i64 64, !4, i64 192, !52, i64 200, !53, i64 208}
!48 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!49 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!50 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!51 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !15, i64 8}
!52 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!53 = !{!"_ZTSSt6locale", !54, i64 0}
!54 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!55 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 0}
!56 = !{!"p1 _ZTSSt5ctypeIcE", !9, i64 0}
!57 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!58 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!59 = !{!60, !5, i64 56}
!60 = !{!"_ZTSSt5ctypeIcE", !61, i64 0, !62, i64 16, !32, i64 24, !63, i64 32, !63, i64 40, !64, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!61 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!62 = !{!"p1 _ZTS15__locale_struct", !9, i64 0}
!63 = !{!"p1 int", !9, i64 0}
!64 = !{!"p1 short", !9, i64 0}
!65 = distinct !{null, null, null, null}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!70 = !{!47, !15, i64 16}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!73 = distinct !{!73, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!76 = !{!72, !75}
!77 = distinct !{!77, !67}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!80 = distinct !{!80, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_"}
!81 = !{!82}
!82 = distinct !{!82, !80, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9XmlWriter11ElementDataES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!83 = !{!79, !82}
end_hunk_0
