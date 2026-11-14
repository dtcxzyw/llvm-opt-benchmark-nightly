Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGUITTFont?download=true
inline.NumInlined: 1171
inline.NumDeleted: 570
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE17_M_realloc_insertIJRPKNS0_11SGUITTGlyphERPN5video6IImageEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !194
  %i.s = load ptr, ptr %3, align 8, !tbaa !195
  store ptr %i.r, ptr %i.q, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !71
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.v = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !353, !alias.scope !352
  store <2 x ptr> %i.v, ptr %.012.i.i.i, align 8, !tbaa !353, !alias.scope !351
  store ptr null, ptr %i.u, align 8, !tbaa !71, !alias.scope !352
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !347

_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.x, %.lr.ph.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.ac, %.lr.ph.i.i.i18 ], [ %i.y, %_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.ab, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i20, align 8, !tbaa !353, !alias.scope !355
  store <2 x ptr> %i.aa, ptr %.012.i.i.i19, align 8, !tbaa !353, !alias.scope !354
  store ptr null, ptr %i.z, align 8, !tbaa !71, !alias.scope !355
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !347

_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.y, %_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ac, %.lr.ph.i.i.i18 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseIN3gui18SGUITTGlyphPendingESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !196
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ag) #25
  br label %_ZNSt12_Vector_baseIN3gui18SGUITTGlyphPendingESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN3gui18SGUITTGlyphPendingESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !66
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !67
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !196
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #19

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3gui11SGUITTGlyphESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !187    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 36                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !188
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 36                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 256204778801521551
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 256204778801521550, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN3gui11SGUITTGlyphEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN3gui11SGUITTGlyphEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 36                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !192
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN3gui11SGUITTGlyphESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
  unreachable

_ZNKSt6vectorIN3gui11SGUITTGlyphESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 256204778801521550) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 36
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #27 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 36
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN3gui11SGUITTGlyphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN3gui11SGUITTGlyphESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN3gui11SGUITTGlyphESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN3gui11SGUITTGlyphESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(36) %.0911.i.i.i, i64 36, i1 false), !tbaa.struct !360, !alias.scope !361
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 36
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gui11SGUITTGlyphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !359

_ZNSt6vectorIN3gui11SGUITTGlyphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN3gui11SGUITTGlyphESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN3gui11SGUITTGlyphESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3gui11SGUITTGlyphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !188
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #25
  br label %_ZNSt12_Vector_baseIN3gui11SGUITTGlyphESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseIN3gui11SGUITTGlyphESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorIN3gui11SGUITTGlyphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !187
  %i.ac = getelementptr inbounds nuw [36 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !192
  %i.ad = getelementptr inbounds nuw [36 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !188
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN3gui11SGUITTGlyphEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN3gui11SGUITTGlyphESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !29
  store i8 0, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.c = icmp ult i32 %1, 10
  br i1 %i.c, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %bb.a, %bb.g
  %.030.i.i = phi i32 [ %7, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02329.i.i = phi i32 [ %6, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %i.d = icmp ult i32 %.02329.i.i, 100
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.a
  %3 = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i.a
  %i.e = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %4 = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.f = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %5 = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %6 = udiv i32 %.02329.i.i, 10000
  %7 = add i32 %.030.i.i, 4                       ; 2 uses
  %8 = icmp ult i32 %.02329.i.i, 100000
  br i1 %8, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i.a, !llvm.loop !364

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.022.i.i = phi i32 [ %5, %bb.f ], [ %3, %bb.b ], [ %4, %bb.d ], [ 1, %bb.a ], [ %7, %bb.g ]
  %9 = zext i32 %.022.i.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !25, !alias.scope !366
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !28, !alias.scope !366 ; 4 uses
  %i.i = icmp ugt i32 %1, 99
  br i1 %i.i, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !29, !alias.scope !366
  %10 = trunc i64 %i.k to i32
  %11 = add i32 %10, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.n, %.lr.ph.i2.i ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %15, %.lr.ph.i2.i ], [ %11, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.l = urem i32 %.020.i.i, 100
  %i.m = shl nuw nsw i32 %i.l, 1
  %i.n = udiv i32 %.020.i.i, 100                  ; 2 uses
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !30, !noalias !366
  %12 = zext i32 %.01819.i.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %12
  store i8 %i.r, ptr %i.s, align 1, !tbaa !30
  %i.t = load i8, ptr %i.p, align 2, !tbaa !30, !noalias !366
  %13 = add i32 %.01819.i.i, -1
  %14 = zext i32 %13 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %14
  store i8 %i.t, ptr %i.u, align 1, !tbaa !30
  %15 = add i32 %.01819.i.i, -2
  %i.v = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.v, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !365

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.n, %.lr.ph.i2.i ] ; 3 uses
  %i.w = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.x = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !30, !noalias !366
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !30
  %i.ad = load i8, ptr %i.z, align 2, !tbaa !30, !noalias !366
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ae = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.af = or disjoint i8 %i.ae, 48
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.j:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #26
  unreachable

_ZNSt7__cxx119to_stringEj.exit:                   ; preds = %bb.h, %bb.i
  %storemerge.i.i = phi i8 [ %i.af, %bb.i ], [ %i.ad, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.h, align 1, !tbaa !30
  %i.ai = load ptr, ptr %0, align 8, !tbaa !28    ; 6 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  %i.ak = load ptr, ptr %2, align 8, !tbaa !28    ; 5 uses
  %i.al = icmp eq ptr %i.ak, %i.g                 ; 2 uses
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx119to_stringEj.exit
  br i1 %i.al, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx119to_stringEj.exit
  br i1 %i.al, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !29 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  switch i64 %i.an, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ap = load i8, ptr %i.ak, align 1, !tbaa !30
  store i8 %i.ap, ptr %i.ai, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !29 ; 2 uses
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !29
  %i.ar = load ptr, ptr %0, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  store i8 0, ptr %i.as, align 1, !tbaa !30
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ak, ptr %0, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load <2 x i64>, ptr %i.at, align 8, !tbaa !30
  store <2 x i64> %i.au, ptr %i.b, align 8, !tbaa !30
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.av = load i64, ptr %i.a, align 8, !tbaa !30
  store ptr %i.ak, ptr %0, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load <2 x i64>, ptr %i.aw, align 8, !tbaa !30
  store <2 x i64> %i.ax, ptr %i.b, align 8, !tbaa !30
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ai, ptr %2, align 8, !tbaa !28
  store i64 %i.av, ptr %i.g, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %2, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.ay = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ai, %bb.n ], [ %i.g, %bb.o ]
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !29
  store i8 0, ptr %i.ay, align 1, !tbaa !30
  %i.ba = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.g
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !30
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef signext) local_unnamed_addr #2

declare extern_weak void @_ZTH11errorstream() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

declare extern_weak void @_ZTH13warningstream() #2

declare extern_weak void @_ZTH13verbosestream() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{null, null, null}
!1 = distinct !{null}
!2 = distinct !{!2, !72}
!3 = distinct !{null, null, null, null, null}
!4 = distinct !{null, null, null}
!5 = distinct !{!5, !72}
!6 = distinct !{null}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 _ZTS14FT_LibraryRec_", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"_ZTS17IReferenceCounted", !13, i64 8}
!20 = !{!19, !13, i64 8}
!21 = !{!"vtable pointer", !11, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"p1 omnipotent char", !16, i64 0}
end_hunk_0
begin_hunk_1_@llvm.smin.i32
!164 = !{!"p1 _ZTSN3gui8IGUIFontE", !16, i64 0}
!165 = !{!"_ZTS7irr_ptrIN3gui8IGUIFontEE", !164, i64 0}
!166 = !{!"_ZTSN3gui10CGUITTFontE", !148, i64 0, !64, i64 8, !64, i64 9, !64, i64 10, !13, i64 12, !13, i64 16, !56, i64 24, !150, i64 32, !32, i64 40, !151, i64 48, !13, i64 104, !155, i64 112, !160, i64 144, !13, i64 176, !13, i64 180, !163, i64 184, !13, i64 216, !13, i64 220, !165, i64 224}
!167 = !{!166, !32, i64 40}
!168 = !{!166, !13, i64 12}
!169 = !{!166, !56, i64 24}
!170 = !{!141, !136, i64 16}
!171 = !{!155, !64, i64 24}
!172 = !{!166, !13, i64 216}
!173 = !{!166, !13, i64 220}
!174 = !{!166, !64, i64 8}
!175 = !{!166, !64, i64 9}
!176 = !{!166, !64, i64 10}
!177 = !{!166, !13, i64 16}
!178 = !{!160, !64, i64 24}
!179 = !{!166, !13, i64 176}
!180 = !{!166, !13, i64 180}
!181 = !{!162, !161, i64 0}
!182 = !{!163, !26, i64 8}
!183 = !{!"char32_t", !12, i64 0}
!184 = !{!183, !183, i64 0}
!185 = !{!165, !164, i64 0}
!186 = !{!163, !161, i64 0}
!187 = !{!156, !68, i64 0}
!188 = !{!156, !68, i64 16}
!189 = !{!150, !149, i64 0}
!190 = !{i8 0, i8 2}
!191 = !{!166, !13, i64 104}
!192 = !{!156, !68, i64 8}
!193 = !{!144, !13, i64 0}
!194 = !{!68, !68, i64 0}
!195 = !{!69, !69, i64 0}
!196 = !{!52, !51, i64 16}
!197 = !{ptr @_ZN3gui10CGUITTFontD1Ev}
!198 = !{!47, !46, i64 0}
!199 = !{!47, !46, i64 16}
!200 = !{!42, !41, i64 0}
!201 = !{!42, !41, i64 16}
!202 = !{!37, !36, i64 0}
!203 = !{!37, !36, i64 16}
!204 = !{!"p1 wchar_t", !16, i64 0}
!205 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !204, i64 0}
!206 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !205, i64 0, !26, i64 8, !12, i64 16}
!207 = !{!206, !204, i64 0}
!208 = !{!166, !26, i64 88}
!209 = !{!146, !13, i64 28}
!210 = !{!"wchar_t", !12, i64 0}
!211 = !{!210, !210, i64 0}
!212 = !{!166, !26, i64 72}
!213 = !{ptr @_ZN3gui10SGUITTFaceD2Ev}
!214 = distinct !{null, null, null, null, null, null, null}
!215 = !{!"_ZTSN2io10SNamedPathE", !57, i64 0, !57, i64 32}
!216 = !{!"_ZTSN5video13E_DRIVER_TYPEE", !12, i64 0}
!217 = !{!"_ZTSN5video14E_TEXTURE_TYPEE", !12, i64 0}
!218 = !{!"_ZTSN5video8ITextureE", !215, i64 8, !62, i64 72, !62, i64 80, !216, i64 88, !63, i64 92, !63, i64 96, !13, i64 100, !64, i64 104, !64, i64 105, !217, i64 108}
!219 = !{!218, !63, i64 96}
!220 = distinct !{!220, !72}
!221 = distinct !{!221, !72}
!222 = distinct !{!222, !72}
!223 = distinct !{!223, !72}
!224 = distinct !{!224, !72, !234}
!225 = distinct !{!225, !72}
!226 = distinct !{null}
!227 = !{!62, !13, i64 4}
!228 = !{!"_ZTSN5video6IImageE", !63, i64 8, !62, i64 12, !23, i64 24, !13, i64 32, !13, i64 36, !64, i64 40}
!229 = !{!228, !23, i64 24}
!230 = !{!75, !23, i64 16}
!231 = !{!228, !13, i64 36}
!232 = !{!75, !13, i64 8}
!233 = !{!75, !74, i64 24}
!234 = !{!"llvm.loop.unswitch.partial.disable"}
!235 = distinct !{null}
!236 = !{!"_ZTS17FT_Glyph_Metrics_", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56}
!237 = !{!"_ZTS16FT_Glyph_Format_", !12, i64 0}
!238 = !{!"p1 _ZTS10FT_Vector_", !16, i64 0}
!239 = !{!"_ZTS11FT_Outline_", !74, i64 0, !74, i64 2, !238, i64 8, !23, i64 16, !116, i64 24, !13, i64 32}
!240 = !{!"p1 _ZTS15FT_SubGlyphRec_", !16, i64 0}
!241 = !{!"p1 _ZTS20FT_Slot_InternalRec_", !16, i64 0}
!242 = !{!"_ZTS16FT_GlyphSlotRec_", !17, i64 0, !32, i64 8, !124, i64 16, !13, i64 24, !122, i64 32, !236, i64 48, !26, i64 112, !26, i64 120, !135, i64 128, !237, i64 144, !75, i64 152, !13, i64 192, !13, i64 196, !239, i64 200, !13, i64 240, !240, i64 248, !16, i64 256, !26, i64 264, !26, i64 272, !26, i64 280, !16, i64 288, !241, i64 296}
!243 = !{!242, !26, i64 128}
!244 = !{!242, !26, i64 136}
!245 = !{!58, !13, i64 12}
!246 = distinct !{null}
!247 = distinct !{null}
!248 = distinct !{null, null}
!249 = !{!133, !23, i64 40}
!250 = !{!133, !23, i64 48}
!251 = !{ptr @_ZN3gui15CGUITTGlyphPage17createPageTextureEhN4core11dimension2dIjEE}
!252 = distinct !{null}
!253 = distinct !{null}
!254 = !{!133, !125, i64 160}
!255 = !{i64 0, i64 2, !82, i64 2, i64 2, !82, i64 8, i64 8, !31, i64 16, i64 8, !31, i64 24, i64 8, !31, i64 32, i64 8, !31, i64 40, i64 8, !31, i64 48, i64 8, !31}
!256 = !{!133, !26, i64 32}
!257 = distinct !{!257, i1 true, !"_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw"}
!258 = distinct !{!258, !257, !"_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw: argument 0"}
!259 = !{!258}
!260 = distinct !{!260, !72}
!261 = distinct !{!261, !72}
!262 = distinct !{!262, !72}
!263 = !{ptr @_ZN3gui10CGUITTFontD0Ev, ptr @_ZN3gui10CGUITTFontD1Ev}
!264 = !{ptr @_ZN3gui10CGUITTFontD0Ev}
!265 = distinct !{ptr @_ZNSt6vectorIN3gui18SGUITTGlyphPendingESaIS1_EED2Ev, null, null, null, null, null}
!266 = distinct !{null}
!267 = distinct !{!267, !72}
!268 = distinct !{!268, i1 true, !"_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw"}
!269 = distinct !{!269, !268, !"_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw: argument 0"}
!270 = distinct !{!270, !72}
!271 = distinct !{!271, i1 true, !"_ZSt19__relocate_object_aIN4core8vector2dIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!272 = distinct !{!272, !271, !"_ZSt19__relocate_object_aIN4core8vector2dIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!273 = distinct !{!273, !271, !"_ZSt19__relocate_object_aIN4core8vector2dIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!274 = distinct !{!274, !72, !316, !317}
!275 = distinct !{!275, !72, !316}
!276 = distinct !{!276, i1 true, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!277 = distinct !{!277, !276, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!278 = distinct !{!278, !276, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!279 = distinct !{!279, !72}
!280 = distinct !{!280, i1 true, !"_ZSt19__relocate_object_aIN5video6SColorES1_SaIS1_EEvPT_PT0_RT1_"}
!281 = distinct !{!281, !280, !"_ZSt19__relocate_object_aIN5video6SColorES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!282 = distinct !{!282, !280, !"_ZSt19__relocate_object_aIN5video6SColorES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!283 = distinct !{!283, !72, !316, !317}
!284 = distinct !{!284, !72, !316}
!285 = distinct !{!285, !72}
!286 = distinct !{!286, !72}
!287 = distinct !{!287, i1 true, !"_ZSt19__relocate_object_aIN4core8vector2dIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!288 = distinct !{!288, !287, !"_ZSt19__relocate_object_aIN4core8vector2dIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!289 = distinct !{!289, !287, !"_ZSt19__relocate_object_aIN4core8vector2dIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!290 = distinct !{!290, !72, !316, !317}
!291 = distinct !{!291, !72, !316}
!292 = distinct !{!292, i1 true, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!293 = distinct !{!293, !292, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!294 = distinct !{!294, !292, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!295 = distinct !{!295, !72, !316, !317}
!296 = distinct !{!296, !72, !317, !316}
!297 = distinct !{!297, !72, !316, !317}
!298 = distinct !{!298, !72, !317, !316}
!299 = distinct !{!299, !72}
!300 = distinct !{!300, !72}
!301 = !{!37, !36, i64 8}
!302 = !{!42, !41, i64 8}
!303 = !{!47, !46, i64 8}
!304 = !{!145, !13, i64 8}
!305 = !{!145, !13, i64 0}
!306 = !{!145, !13, i64 12}
!307 = !{!145, !13, i64 4}
!308 = !{!269}
!309 = !{!"_ZTSN4core5arrayINS_8vector2dIiEEEE", !40, i64 0, !64, i64 24}
!310 = !{!309, !64, i64 24}
!311 = !{!146, !13, i64 20}
!312 = !{!146, !13, i64 24}
!313 = !{!144, !13, i64 4}
!314 = !{!272}
!315 = !{!273}
!316 = !{!"llvm.loop.isvectorized", i32 1}
!317 = !{!"llvm.loop.unroll.runtime.disable"}
!318 = !{i64 0, i64 4, !65, i64 4, i64 4, !65, i64 8, i64 4, !65, i64 12, i64 4, !65}
!319 = !{!278, !277}
!320 = !{!281}
!321 = !{!282}
!322 = !{!205, !204, i64 0}
!323 = !{!206, !26, i64 8}
!324 = !{!"_ZTSN4core5arrayINS_4rectIiEEEE", !45, i64 0, !64, i64 24}
!325 = !{!324, !64, i64 24}
!326 = !{!36, !36, i64 0}
!327 = !{!288}
!328 = !{!289}
!329 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!330 = !{!41, !41, i64 0}
!331 = !{!294, !293}
!332 = distinct !{!332, i1 true, !"_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw"}
!333 = distinct !{!333, !332, !"_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw: argument 0"}
!334 = !{!333}
!335 = !{!133, !26, i64 16}
!336 = !{!135, !26, i64 0}
!337 = !{!135, !26, i64 8}
!338 = distinct !{!338, !72}
!339 = distinct !{!339, i1 true, !"_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw"}
!340 = distinct !{!340, !339, !"_ZNK3gui10CGUITTFont23convertWCharToU32StringB5cxx11EPKw: argument 0"}
!341 = !{!340}
!342 = !{ptr @_ZNK3gui10CGUITTFont19getCharacterFromPosERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEi}
!343 = distinct !{null, null, null, null, null}
!344 = distinct !{!344, i1 true, !"_ZSt19__relocate_object_aIN3gui18SGUITTGlyphPendingES1_SaIS1_EEvPT_PT0_RT1_"}
!345 = distinct !{!345, !344, !"_ZSt19__relocate_object_aIN3gui18SGUITTGlyphPendingES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!346 = distinct !{!346, !344, !"_ZSt19__relocate_object_aIN3gui18SGUITTGlyphPendingES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!347 = distinct !{!347, !72}
!348 = distinct !{!348, i1 true, !"_ZSt19__relocate_object_aIN3gui18SGUITTGlyphPendingES1_SaIS1_EEvPT_PT0_RT1_"}
!349 = distinct !{!349, !348, !"_ZSt19__relocate_object_aIN3gui18SGUITTGlyphPendingES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!350 = distinct !{!350, !348, !"_ZSt19__relocate_object_aIN3gui18SGUITTGlyphPendingES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!351 = !{!345}
!352 = !{!346}
!353 = !{!16, !16, i64 0}
!354 = !{!349}
!355 = !{!350}
!356 = distinct !{!356, i1 true, !"_ZSt19__relocate_object_aIN3gui11SGUITTGlyphES1_SaIS1_EEvPT_PT0_RT1_"}
!357 = distinct !{!357, !356, !"_ZSt19__relocate_object_aIN3gui11SGUITTGlyphES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!358 = distinct !{!358, !356, !"_ZSt19__relocate_object_aIN3gui11SGUITTGlyphES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!359 = distinct !{!359, !72}
!360 = !{i64 0, i64 4, !65, i64 4, i64 4, !65, i64 8, i64 4, !65, i64 12, i64 4, !65, i64 16, i64 4, !65, i64 20, i64 4, !65, i64 24, i64 4, !65, i64 28, i64 4, !65, i64 32, i64 4, !65}
!361 = !{!358, !357}
!362 = distinct !{!362, i1 true, !"_ZNSt7__cxx119to_stringEj"}
!363 = distinct !{!363, !362, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!364 = distinct !{!364, !72}
!365 = distinct !{!365, !72}
!366 = !{!363}
end_hunk_1
