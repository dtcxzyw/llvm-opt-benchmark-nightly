inline.NumInlined: 68
inline.NumDeleted: 43
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::locale::id" = type { i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@_ZN11OpenImageIO4v3_125softimage_imageio_versionE = local_unnamed_addr global i32 27, align 4
@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @_ZN11OpenImageIO4v3_133softimage_imageio_library_versionEv() local_unnamed_addr #0 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11OpenImageIO4v3_113softimage_pvt13PicFileHeader11swap_endianEv(ptr noundef nonnull align 4 captures(none) dereferenceable(104) %0) local_unnamed_addr #1 align 2 {
.lr.ph.i:
  %i.a = load i32, ptr %0, align 4, !tbaa !3
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a)
  store i32 %i.b, ptr %0, align 4, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !7
  %i.e = tail call noundef i16 @llvm.bswap.i16(i16 %i.d)
  store i16 %i.e, ptr %i.c, align 4, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 94 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !7
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g)
  store i16 %i.h, ptr %i.f, align 2, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9
  %i.k = tail call noundef i32 @llvm.bswap.i32(i32 %i.j)
  store i32 %i.k, ptr %i.i, align 4, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9
  %i.n = tail call noundef i32 @llvm.bswap.i32(i32 %i.m)
  store i32 %i.n, ptr %i.l, align 4, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.p = load i16, ptr %i.o, align 4, !tbaa !7
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  store i16 %i.q, ptr %i.o, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_113softimage_pvt13PicFileHeader11read_headerEP8_IO_FILE(ptr noundef nonnull align 4 captures(none) dereferenceable(104) %0, ptr noundef captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i64 @fread(ptr noundef nonnull %0, i64 noundef 1, i64 noundef 104, ptr noundef %1)
  %i.b = load i32, ptr %0, align 4, !tbaa !3
  %i.c = tail call noundef i32 @llvm.bswap.i32(i32 %i.b)
  store i32 %i.c, ptr %0, align 4, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.e = load i16, ptr %i.d, align 4, !tbaa !7
  %i.f = tail call noundef i16 @llvm.bswap.i16(i16 %i.e)
  store i16 %i.f, ptr %i.d, align 4, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 94 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !7
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h)
  store i16 %i.i, ptr %i.g, align 2, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  store i32 %i.l, ptr %i.j, align 4, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !9
  %i.o = tail call noundef i32 @llvm.bswap.i32(i32 %i.n)
  store i32 %i.o, ptr %i.m, align 4, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.q = load i16, ptr %i.p, align 4, !tbaa !7
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  store i16 %i.r, ptr %i.p, align 4, !tbaa !7
  %sext.mask = and i64 %i.a, 4294967295
  %i.s = icmp eq i64 %sext.mask, 104
  ret i1 %i.s
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11OpenImageIO4v3_113softimage_pvt13ChannelPacket8channelsEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readonly align 1 captures(none) dereferenceable(4) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !11    ; 4 uses
  %.not = icmp sgt i8 %i.b, -1
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #13 ; 4 uses
  store i32 0, ptr %i.e, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !13
  store ptr %i.f, ptr %i.c, align 8, !tbaa !17
  store ptr %i.f, ptr %i.d, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.a
  %i.g = phi ptr [ null, %bb.a ], [ %i.e, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i ] ; 6 uses
  %i.h = phi ptr [ null, %bb.a ], [ %i.f, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i ] ; 4 uses
  %i.i = and i8 %i.b, 64
  %.not4 = icmp eq i8 %i.i, 0
  br i1 %.not4, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit18, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = sub i64 %i.l, %i.m                       ; 6 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775804
  br i1 %i.o, label %bb.c, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i10

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
          to label %.noexc16.a unwind label %bb.f

.noexc16.a:                                       ; preds = %bb.c
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i10: ; preds = %bb.b
  %i.p = ashr exact i64 %i.n, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i11 = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i11, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 2305843009213693951)
  %i.t = select i1 %i.r, i64 2305843009213693951, i64 %i.s ; 3 uses
  %.not.i.i.i.i12 = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i12)
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #13
          to label %.noexc17 unwind label %bb.f   ; 5 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i10
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  store i32 1, ptr %i.w, align 4, !tbaa !3
  %i.x = icmp sgt i64 %i.n, 0
  br i1 %i.x, label %bb.d, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i13

bb.d:                                             ; preds = %.noexc17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.v, ptr align 4 %i.g, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i13

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i13: ; preds = %bb.d, %.noexc17
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %.not.i17.i.i.i14 = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i.i14, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i15, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.n) #15
  %.pre.pre = load i8, ptr %i.a, align 1, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i15

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i15: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i13
  %.pre = phi i8 [ %.pre.pre, %bb.e ], [ %i.b, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i13 ]
  store ptr %i.v, ptr %0, align 8, !tbaa !13
  store ptr %i.y, ptr %i.j, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.t ; 2 uses
  store ptr %i.z, ptr %i.k, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit18

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i10, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZNSt6vectorIiSaIiEE9push_backEOi.exit18:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i15, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ab = phi ptr [ %i.g, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.v, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i15 ] ; 7 uses
  %i.ac = phi ptr [ %i.h, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.z, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i15 ] ; 5 uses
  %i.ad = phi ptr [ %i.h, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.y, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i15 ] ; 4 uses
  %i.ae = phi i8 [ %i.b, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i15 ] ; 4 uses
  %i.af = and i8 %i.ae, 32
  %.not5 = icmp eq i8 %i.af, 0
  br i1 %.not5, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit28, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit18
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i19 = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 2, ptr %i.ad, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit28

bb.i:                                             ; preds = %bb.g
  %i.aj = ptrtoint ptr %i.ac to i64
  %i.ak = ptrtoint ptr %i.ab to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 6 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775804
  br i1 %i.am, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i20

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
          to label %.noexc26 unwind label %bb.m

.noexc26:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i20: ; preds = %bb.i
  %i.an = ashr exact i64 %i.al, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i21 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i.i21, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 2305843009213693951)
  %i.ar = select i1 %i.ap, i64 2305843009213693951, i64 %i.aq ; 3 uses
  %.not.i.i.i.i22 = icmp ne i64 %i.ar, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i22)
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #13
          to label %.noexc27 unwind label %bb.m   ; 5 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i20
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.al ; 2 uses
  store i32 2, ptr %i.au, align 4, !tbaa !3
  %i.av = icmp sgt i64 %i.al, 0
  br i1 %i.av, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i23

bb.k:                                             ; preds = %.noexc27
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.ab, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i23

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i23: ; preds = %bb.k, %.noexc27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %.not.i17.i.i.i24 = icmp eq ptr %i.ab, null
  br i1 %.not.i17.i.i.i24, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i25, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.al) #15
  %.pre46.pre = load i8, ptr %i.a, align 1, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i25

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i25: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i23
  %.pre46 = phi i8 [ %.pre46.pre, %bb.l ], [ %i.ae, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i23 ]
  store ptr %i.at, ptr %0, align 8, !tbaa !13
  store ptr %i.aw, ptr %i.ag, align 8, !tbaa !17
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar ; 2 uses
  store ptr %i.ax, ptr %i.ah, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit28

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i20, %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZNSt6vectorIiSaIiEE9push_backEOi.exit28:         ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i25, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit18
  %i.az = phi ptr [ %i.ab, %bb.h ], [ %i.at, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i25 ], [ %i.ab, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit18 ] ; 5 uses
  %i.ba = phi ptr [ %i.ac, %bb.h ], [ %i.ax, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i25 ], [ %i.ac, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit18 ] ; 3 uses
  %i.bb = phi ptr [ %i.ai, %bb.h ], [ %i.aw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i25 ], [ %i.ad, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit18 ] ; 3 uses
  %i.bc = phi i8 [ %i.ae, %bb.h ], [ %.pre46, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i25 ], [ %i.ae, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit18 ]
  %i.bd = and i8 %i.bc, 16
  %.not6 = icmp eq i8 %i.bd, 0
  br i1 %.not6, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit38, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit28
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i29 = icmp eq ptr %i.bb, %i.ba
  br i1 %.not.i.i29, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 3, ptr %i.bb, align 4, !tbaa !3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit38

bb.p:                                             ; preds = %bb.n
  %i.bh = ptrtoint ptr %i.ba to i64
  %i.bi = ptrtoint ptr %i.az to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 6 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775804
  br i1 %i.bk, label %bb.q, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i30

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
          to label %.noexc36 unwind label %bb.t

.noexc36:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i30: ; preds = %bb.p
  %i.bl = ashr exact i64 %i.bj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i31 = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i.i31, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 2305843009213693951)
  %i.bp = select i1 %i.bn, i64 2305843009213693951, i64 %i.bo ; 3 uses
  %.not.i.i.i.i32 = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i32)
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #13
          to label %.noexc37 unwind label %bb.t   ; 4 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i30
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bj ; 2 uses
  store i32 3, ptr %i.bs, align 4, !tbaa !3
  %i.bt = icmp sgt i64 %i.bj, 0
  br i1 %i.bt, label %bb.r, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i33

bb.r:                                             ; preds = %.noexc37
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.br, ptr align 4 %i.az, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i33

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i33: ; preds = %bb.r, %.noexc37
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %.not.i17.i.i.i34 = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i.i34, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i35, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bj) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i35

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i35: ; preds = %bb.s, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i33
  store ptr %i.br, ptr %0, align 8, !tbaa !13
  store ptr %i.bu, ptr %i.be, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.bv, ptr %i.bf, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit38

bb.t:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i30, %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZNSt6vectorIiSaIiEE9push_backEOi.exit38:         ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i35, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit28
  ret void

bb.u:                                             ; preds = %bb.t, %bb.m, %bb.f
  %i.bx = phi ptr [ %i.ba, %bb.t ], [ %i.ac, %bb.m ], [ %i.h, %bb.f ]
  %i.by = phi ptr [ %i.az, %bb.t ], [ %i.ab, %bb.m ], [ %i.g, %bb.f ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.t ], [ %i.ay, %bb.m ], [ %i.aa, %bb.f ]
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cb) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.u, %bb.v
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #5 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }

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
!8 = !{!"short", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!12, !5, i64 3}
!12 = !{!"_ZTSN11OpenImageIO4v3_113softimage_pvt13ChannelPacketE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!15 = !{!"p1 int", !16, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!14, !15, i64 8}
!18 = !{!14, !15, i64 16}
end_hunk_0
