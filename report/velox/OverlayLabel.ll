Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/OverlayLabel?download=true
inline.NumInlined: 67
inline.NumDeleted: 39
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@.str.4 = private unnamed_addr constant [3 x i8] c"A:\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"/B:\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9operation9overlayng12OverlayLabel12initBoundaryEhNS_4geom8LocationES4_b(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %0, i8 noundef zeroext %1, i8 noundef signext %2, i8 noundef signext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %0, align 4, !tbaa !8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.b, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink10 = phi i64 [ 12, %bb.c ], [ 4, %bb.b ]
  %.sink9 = phi i64 [ 13, %bb.c ], [ 5, %bb.b ]
  %.sink8 = phi i64 [ 14, %bb.c ], [ 6, %bb.b ]
  %.sink7 = phi i64 [ 15, %bb.c ], [ 7, %bb.b ]
  %i.c = zext i1 %4 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sink10
  store i8 %i.c, ptr %i.d, align 4, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  store i8 %2, ptr %i.e, align 1, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8
  store i8 %3, ptr %i.f, align 2, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sink7
  store i8 0, ptr %i.g, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9operation9overlayng12OverlayLabel12initCollapseEhb(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %0, align 4, !tbaa !8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.b, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink3 = phi i64 [ 12, %bb.c ], [ 4, %bb.b ]
  %i.c = zext i1 %2 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sink3
  store i8 %i.c, ptr %i.d, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9operation9overlayng12OverlayLabel8initLineEh(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 4, !tbaa !8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.b, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink1 = phi i64 [ 15, %bb.c ], [ 7, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sink1
  store i8 -1, ptr %i.c, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9operation9overlayng12OverlayLabel11initNotPartEh(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 4, !tbaa !8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.b, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9operation9overlayng12OverlayLabel15setLocationLineEhNS_4geom8LocationE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %0, i8 noundef zeroext %1, i8 noundef signext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  %. = select i1 %i.a, i64 7, i64 15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.
  store i8 %2, ptr %i.b, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9operation9overlayng12OverlayLabel14setLocationAllEhNS_4geom8LocationE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %0, i8 noundef zeroext %1, i8 noundef signext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i8 %1, 0                         ; 3 uses
  %. = select i1 %i.a, i64 7, i64 15
  %.10 = select i1 %i.a, i64 5, i64 13
  %.11 = select i1 %i.a, i64 6, i64 14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.
  store i8 %2, ptr %i.b, align 1, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.10
  store i8 %2, ptr %i.c, align 1, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.11
  store i8 %2, ptr %i.d, align 2, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9operation9overlayng12OverlayLabel19setLocationCollapseEh(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %0, i8 noundef zeroext %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i8 %1, 0                         ; 2 uses
  %.0.in.in.v.i = select i1 %i.a, i64 4, i64 12
  %.0.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.in.v.i
  %.0.in.i = load i8, ptr %.0.in.in.i, align 4, !tbaa !13, !range !15, !noundef !16
  %i.b = shl nuw nsw i8 %.0.in.i, 1
  %i.c = xor i8 %i.b, 2
  %. = select i1 %i.a, i64 7, i64 15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.
  store i8 %i.c, ptr %i.d, align 1, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos9operation9overlayng12OverlayLabel28isCollapseAndNotPartInteriorEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !8      ; 2 uses
  %i.b = icmp eq i32 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  %or.cond = select i1 %i.b, i1 %i.e, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 0
  %or.cond6 = select i1 %or.cond, i1 %i.h, i1 false
  br i1 %or.cond6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %i.d, 3
  %i.j = icmp eq i32 %i.a, -1
  %or.cond8 = and i1 %i.j, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 0
  %or.cond11 = select i1 %or.cond8, i1 %i.m, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %or.cond11, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext i8 @_ZNK4geos9operation9overlayng12OverlayLabel11getLocationEhib(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, i8 noundef zeroext %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i8 %1, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.h [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 0, label %.sink.split
  ]

bb.c:                                             ; preds = %bb.b
  %.in8.v = select i1 %3, i64 5, i64 6
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %.in.v = select i1 %3, i64 6, i64 5
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  switch i32 %2, label %bb.h [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 0, label %.sink.split
  ]

bb.f:                                             ; preds = %bb.e
  %.in10.v = select i1 %3, i64 13, i64 14
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %.in9.v = select i1 %3, i64 14, i64 13
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %bb.f, %bb.g
  %.sink11 = phi i64 [ 7, %bb.b ], [ %.in9.v, %bb.g ], [ %.in10.v, %bb.f ], [ %.in8.v, %bb.c ], [ %.in.v, %bb.d ], [ 15, %bb.e ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.sink11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.e, %bb.b
  %.0 = phi i8 [ -1, %bb.b ], [ -1, %bb.e ], [ %i.c, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZNK4geos9operation9overlayng12OverlayLabel15dimensionSymbolB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  %i.b = icmp ult i32 %2, 4
  %switch.shiftamt = shl nuw nsw i32 %2, 3
  %switch.downshift = lshr i32 1128418389, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %.sink = select i1 %i.b, i8 %switch.masked, i8 85
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.a, align 8, !tbaa !21
  store i64 1, ptr %i.d, align 8, !tbaa !22
  store i8 0, ptr %i.c, align 1, !tbaa !21
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos9operation9overlaynglsERSoRKNS1_12OverlayLabelE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 2) ; 0 uses
  tail call void @_ZNK4geos9operation9overlayng12OverlayLabel14locationStringEhbRSo(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 noundef zeroext 0, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 3) ; 0 uses
  tail call void @_ZNK4geos9operation9overlayng12OverlayLabel14locationStringEhbRSo(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 noundef zeroext 1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos9operation9overlayng12OverlayLabel8toStringEbRSo(ptr noundef nonnull align 4 dereferenceable(16) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.4, i64 noundef 2) ; 0 uses
  tail call void @_ZNK4geos9operation9overlayng12OverlayLabel14locationStringEhbRSo(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 noundef zeroext 0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.5, i64 noundef 3) ; 0 uses
  tail call void @_ZNK4geos9operation9overlayng12OverlayLabel14locationStringEhbRSo(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 noundef zeroext 1, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos9operation9overlayng12OverlayLabel14locationStringEhbRSo(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = icmp eq i8 %1, 0                         ; 4 uses
  %.0.in.in.idx.i = select i1 %i.c, i64 0, i64 8
  %.0.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.in.idx.i ; 3 uses
  %.0.in.i = load i32, ptr %.0.in.in.i, align 4, !tbaa !25
  %.0.i = icmp eq i32 %.0.in.i, 2
  br i1 %.0.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.in8.v.i = select i1 %2, i64 5, i64 6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.in8.v.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  store i8 %i.e, ptr %i.a, align 1, !tbaa !14
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_8LocationE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %.in.v.i = select i1 %2, i64 6, i64 5
  br label %_ZNK4geos9operation9overlayng12OverlayLabel11getLocationEhib.exit23

bb.d:                                             ; preds = %bb.b
  %.in10.v.i = select i1 %2, i64 13, i64 14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.in10.v.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  store i8 %i.h, ptr %i.a, align 1, !tbaa !14
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_8LocationE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %.in9.v.i = select i1 %2, i64 14, i64 13
  br label %_ZNK4geos9operation9overlayng12OverlayLabel11getLocationEhib.exit23

_ZNK4geos9operation9overlayng12OverlayLabel11getLocationEhib.exit23: ; preds = %bb.c, %bb.d
  %.sink11.i21 = phi i64 [ %.in.v.i, %bb.c ], [ %.in9.v.i, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink11.i21
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  store i8 %i.k, ptr %i.b, align 1, !tbaa !14
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_8LocationE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %.v = select i1 %i.c, i64 7, i64 15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.v
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_8LocationE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.m) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK4geos9operation9overlayng12OverlayLabel11getLocationEhib.exit23
  %.0.in.i26 = load i32, ptr %.0.in.in.i, align 4, !tbaa !25 ; 3 uses
  %.0.i27.not = icmp eq i32 %.0.in.i26, -1
  br i1 %.0.i27.not, label %.thread, label %_ZNK4geos9operation9overlayng12OverlayLabel15dimensionSymbolB5cxx11Ei.exit

_ZNK4geos9operation9overlayng12OverlayLabel15dimensionSymbolB5cxx11Ei.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !17, !alias.scope !26
  %i.p = icmp ult i32 %.0.in.i26, 4
  %switch.shiftamt = shl nuw nsw i32 %.0.in.i26, 3
  %switch.downshift = lshr i32 1128418389, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %.sink.i = select i1 %i.p, i8 %switch.masked, i8 85
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %.sink.i, ptr %i.o, align 8, !tbaa !21, !alias.scope !26
  store i64 1, ptr %i.r, align 8, !tbaa !22, !alias.scope !26
  store i8 0, ptr %i.q, align 1, !tbaa !21, !alias.scope !26
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.o, i64 noundef 1)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK4geos9operation9overlayng12OverlayLabel15dimensionSymbolB5cxx11Ei.exit
  %i.t = load ptr, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.o
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @_ZdlPv(ptr noundef %i.t) #8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.g:                                             ; preds = %_ZNK4geos9operation9overlayng12OverlayLabel15dimensionSymbolB5cxx11Ei.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.o
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.w) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  resume { ptr, i32 } %i.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.pr = load i32, ptr %.0.in.in.i, align 4, !tbaa !25
  %i.y = icmp eq i32 %.pr, 3
  br i1 %i.y, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.in19.in.v = select i1 %i.c, i64 4, i64 12
  %.in19.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in19.in.v
  %.in19 = load i8, ptr %.in19.in, align 4, !tbaa !13, !range !15, !noundef !16
end_hunk_0
