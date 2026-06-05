inline.NumInlined: 68
inline.NumDeleted: 49
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage" = type { [16 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [1 x i8] }
%"class.llvh::raw_svector_ostream" = type { %"class.llvh::raw_pwrite_stream.base", ptr }
%"class.llvh::raw_pwrite_stream.base" = type { %"class.llvh::raw_ostream.base" }
%"class.llvh::raw_ostream.base" = type <{ ptr, ptr, ptr, ptr, i32 }>

@_ZTVN4llvh19raw_svector_ostreamE = external unnamed_addr constant { [14 x ptr] }, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes18appendSignedLEB128ERSt6vectorIhSaIhEEl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::SmallVector", align 8 ; 9 uses
  %3 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 16, ptr %i.c, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.d, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.f, align 8, !tbaa !18
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #12
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i, %bb.a
  %.0.i = phi i64 [ %1, %bb.a ], [ %i.k, %_ZN4llvh11raw_ostreamlsEc.exit.i ] ; 4 uses
  %i.i = trunc i64 %.0.i to i8
  %i.j = and i8 %i.i, 127                         ; 2 uses
  %i.k = ashr i64 %.0.i, 7                        ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = icmp ult i64 %.0.i, 64
  %or.cond.i = and i1 %i.m, %i.l
  br i1 %or.cond.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ne i64 %i.k, -1
  %i.o = and i64 %.0.i, 64
  %i.p = icmp eq i64 %i.o, 0
  %.not31.i = or i1 %i.n, %i.p
  %cond.fr = freeze i1 %.not31.i                  ; 2 uses
  %spec.select = select i1 %cond.fr, i8 -128, i8 0
  %i.q = or disjoint i8 %spec.select, %i.j
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.r = phi i1 [ %cond.fr, %bb.c ], [ false, %bb.b ]
  %.025.i = phi i8 [ %i.q, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !20   ; 3 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !21
  %.not.i.i = icmp ult ptr %i.s, %i.t
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.u = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %3, i8 noundef zeroext %.025.i) #12 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i

bb.e:                                             ; preds = %.thread
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.v, ptr %i.g, align 8, !tbaa !20
  store i8 %.025.i, ptr %i.s, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i

_ZN4llvh11raw_ostreamlsEc.exit.i:                 ; preds = %bb.e, %bb.d
  br i1 %i.r, label %bb.b, label %_ZN4llvh13encodeSLEB128ElRNS_11raw_ostreamEj.exit, !llvm.loop !23

_ZN4llvh13encodeSLEB128ElRNS_11raw_ostreamEj.exit: ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i
  %i.w = load i32, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvh13encodeSLEB128ElRNS_11raw_ostreamEj.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.w to i64
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !25
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit, %_ZN4llvh13encodeSLEB128ElRNS_11raw_ostreamEj.exit
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.aa = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.a
  br i1 %i.ab, label %_ZN4llvh11SmallVectorIcLj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.aa) #12
  br label %_ZN4llvh11SmallVectorIcLj16EED2Ev.exit

_ZN4llvh11SmallVectorIcLj16EED2Ev.exit:           ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %i.ac = phi ptr [ %.pre, %.lr.ph ], [ %i.au, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !22  ; 2 uses
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !27
  %.not.i.i5 = icmp eq ptr %i.ac, %i.ag
  br i1 %.not.i.i5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 %i.af, ptr %i.ac, align 1, !tbaa !22
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !25
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %0, align 8, !tbaa !28    ; 4 uses
  %i.ak = ptrtoint ptr %i.ac to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 8 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775807
  br i1 %i.an, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.ao = add i64 %.sroa.speculated.i.i.i.i, %i.am ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.am
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ao, i64 9223372036854775807)
  %i.ar = select i1 %i.ap, i64 9223372036854775807, i64 %i.aq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ar, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %4 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #14 ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %i.am ; 2 uses
  store i8 %i.af, ptr %5, align 1, !tbaa !22
  %6 = icmp sgt i64 %i.am, 0
  br i1 %6, label %bb.k, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %4, ptr align 1 %i.aj, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.am) #15
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %4, ptr %0, align 8, !tbaa !28
  store ptr %i.as, ptr %i.y, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 %i.ar
  store ptr %i.at, ptr %i.z, align 8, !tbaa !27
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %i.au = phi ptr [ %i.ai, %bb.h ], [ %i.as, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !29
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36)) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %0, i64 %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 2 uses
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %bb.a
  %.026.us.i = phi ptr [ %i.c, %.split.us.i ], [ %i.b, %bb.a ] ; 2 uses
  %.025.us.i = phi i64 [ %i.i, %.split.us.i ], [ 0, %bb.a ]
  %.024.us.i = phi i32 [ %i.j, %.split.us.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.026.us.i, i64 1 ; 2 uses
  %i.d = load i8, ptr %.026.us.i, align 1, !tbaa !22 ; 3 uses
  %i.e = and i8 %i.d, 127
  %i.f = zext nneg i8 %i.e to i64
  %i.g = zext nneg i32 %.024.us.i to i64
  %i.h = shl i64 %i.f, %i.g
  %i.i = or i64 %i.h, %.025.us.i                  ; 2 uses
  %i.j = add i32 %.024.us.i, 7                    ; 2 uses
  %i.k = icmp slt i8 %i.d, 0
  br i1 %i.k, label %.split.us.i, label %_ZN4llvh13decodeSLEB128EPKhPjS1_PPKc.exit, !llvm.loop !30

_ZN4llvh13decodeSLEB128EPKhPjS1_PPKc.exit:        ; preds = %.split.us.i
  %i.l = ptrtoint ptr %i.b to i64
  %.not32.i = icmp samesign ult i8 %i.d, 64
  %i.m = zext nneg i32 %i.j to i64
  %i.n = shl nsw i64 -1, %i.m
  %i.o = select i1 %.not32.i, i64 0, i64 %i.n
  %.1.i = or i64 %i.i, %i.o
  %.pn.i = ptrtoint ptr %i.c to i64
  %.sink68.i = sub i64 %.pn.i, %i.l
  %i.p = trunc i64 %.sink68.i to i32
  store i64 %.1.i, ptr %3, align 8, !tbaa !31
  ret i32 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes13encodeSLEB128EiRN4llvh11raw_ostreamEm(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  %.01825.lcssa.sroa.gep36 = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.01825.lcssa.sroa.gep37 = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %.01825.lcssa.sroa.gep38 = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %.01825.lcssa.sroa.gep39 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.b = add i32 %0, 64
  %.not = icmp ult i32 %i.b, 128
  %i.c = icmp ult i64 %2, 2
  %or.cond.not = and i1 %.not, %i.c
  br i1 %or.cond.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i32 %0 to i8
  %i.e = or i8 %i.d, -128
  store i8 %i.e, ptr %i.a, align 1, !tbaa !22
  %i.f = ashr i32 %0, 7                           ; 3 uses
  %i.g = add nsw i32 %i.f, 64
  %.not.1 = icmp ult i32 %i.g, 128
  %i.h = icmp ult i64 %2, 3
  %or.cond.not.1 = and i1 %.not.1, %i.h
  br i1 %or.cond.not.1, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i32 %i.f to i8
  %i.j = or i8 %i.i, -128
  store i8 %i.j, ptr %.01825.lcssa.sroa.gep36, align 1, !tbaa !22
  %i.k = ashr i32 %0, 14                          ; 3 uses
  %i.l = add nsw i32 %i.k, 64
  %.not.2 = icmp ult i32 %i.l, 128
  %i.m = icmp ult i64 %2, 4
  %or.cond.not.2 = and i1 %.not.2, %i.m
  br i1 %or.cond.not.2, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = trunc i32 %i.k to i8
  %i.o = or i8 %i.n, -128
  store i8 %i.o, ptr %.01825.lcssa.sroa.gep37, align 1, !tbaa !22
  %i.p = ashr i32 %0, 21                          ; 3 uses
  %i.q = add nsw i32 %i.p, 64
  %.not.3 = icmp ult i32 %i.q, 128
  %i.r = icmp ult i64 %2, 5
  %or.cond.not.3 = and i1 %.not.3, %i.r
  br i1 %or.cond.not.3, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = trunc i32 %i.p to i8
  %i.t = or i8 %i.s, -128
  store i8 %i.t, ptr %.01825.lcssa.sroa.gep38, align 1, !tbaa !22
  %i.u = ashr i32 %0, 28
  %i.v = icmp ult i64 %2, 6
  tail call void @llvm.assume(i1 %i.v)
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.026.lcssa = phi i32 [ %0, %bb.a ], [ %i.f, %bb.b ], [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %i.u, %bb.e ]
  %.01825.lcssa.sroa.phi = phi ptr [ %i.a, %bb.a ], [ %.01825.lcssa.sroa.gep36, %bb.b ], [ %.01825.lcssa.sroa.gep37, %bb.c ], [ %.01825.lcssa.sroa.gep38, %bb.d ], [ %.01825.lcssa.sroa.gep39, %bb.e ]
  %.lcssa30 = phi i64 [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ]
  %i.w = trunc nsw i32 %.026.lcssa to i8
  %i.x = and i8 %i.w, 127
  store i8 %i.x, ptr %.01825.lcssa.sroa.phi, align 1, !tbaa !22
  %i.y = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %i.a, i64 noundef %.lcssa30) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36), i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind allocsize(0) }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4llvh15SmallVectorBaseE", !9, i64 0, !4, i64 8, !4, i64 12}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!8, !4, i64 8}
!11 = !{!8, !4, i64 12}
!12 = !{!13, !15, i64 32}
!13 = !{!"_ZTSN4llvh11raw_ostreamE", !14, i64 8, !14, i64 16, !14, i64 24, !15, i64 32}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTSN4llvh15SmallVectorImplIcEE", !9, i64 0}
!20 = !{!13, !14, i64 24}
!21 = !{!13, !14, i64 16}
!22 = !{!5, !5, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!26, !14, i64 8}
!26 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!27 = !{!26, !14, i64 16}
!28 = !{!26, !14, i64 0}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = !{!32, !32, i64 0}
!32 = !{!"long", !5, i64 0}
end_hunk_0
