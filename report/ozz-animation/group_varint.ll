Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/group_varint?download=true
inline.NumInlined: 30
inline.NumDeleted: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const._ZN3ozz9DecodeGV4ERKNS_4spanIKhEERKNS0_IjEE.kMask = private unnamed_addr constant [4 x i32] [i32 255, i32 65535, i32 16777215, i32 -1], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZN3ozz9EncodeGV4ERKNS_4spanIKjEERKNS0_IhEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = load <4 x i32>, ptr %i.a, align 4, !tbaa !14 ; 3 uses
  %i.c = icmp ugt <4 x i32> %i.b, splat (i32 16777215)
  %i.d = zext <4 x i1> %i.c to <4 x i8>
  %i.e = icmp ugt <4 x i32> %i.b, splat (i32 65535)
  %i.f = zext <4 x i1> %i.e to <4 x i8>
  %i.g = add nuw nsw <4 x i8> %i.d, %i.f          ; 4 uses
  %2 = extractelement <4 x i8> %i.g, i64 0
  %3 = extractelement <4 x i8> %i.g, i64 1
  %4 = extractelement <4 x i8> %i.g, i64 2
  %i.h = icmp ugt <4 x i32> %i.b, splat (i32 255) ; 4 uses
  %5 = extractelement <4 x i1> %i.h, i64 0
  %6 = zext i1 %5 to i8
  %7 = add nuw nsw i8 %2, %6                      ; 2 uses
  %8 = extractelement <4 x i1> %i.h, i64 1
  %9 = zext i1 %8 to i8
  %10 = add nuw nsw i8 %3, %9                     ; 2 uses
  %11 = extractelement <4 x i1> %i.h, i64 2
  %12 = zext i1 %11 to i8
  %13 = add nuw nsw i8 %4, %12                    ; 2 uses
  %i.i = extractelement <4 x i8> %i.g, i64 3
  %14 = extractelement <4 x i1> %i.h, i64 3
  %15 = zext i1 %14 to i8
  %16 = add nuw nsw i8 %i.i, %15                  ; 2 uses
  %17 = load ptr, ptr %1, align 8, !tbaa !24      ; 2 uses
  %i.j = zext nneg i8 %16 to i64
  %18 = shl nuw i8 %16, 6
  %i.k = zext nneg i8 %13 to i64
  %19 = shl nuw nsw i8 %13, 4
  %i.l = zext nneg i8 %10 to i64
  %20 = shl nuw nsw i8 %10, 2
  %21 = zext nneg i8 %7 to i64
  %22 = or i8 %20, %19
  %23 = or i8 %22, %18
  %24 = or i8 %23, %7
  %i.m = getelementptr inbounds nuw i8, ptr %17, i64 1 ; 2 uses
  store i8 %24, ptr %17, align 1, !tbaa !16
  %i.n = load ptr, ptr %0, align 8, !tbaa !13
  %i.o = load i32, ptr %i.n, align 4, !tbaa !14
  store i32 %i.o, ptr %i.m, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %21
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14
  store i32 %i.t, ptr %i.q, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.l
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !14
  store i32 %i.y, ptr %i.v, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !14
  store i32 %i.ad, ptr %i.aa, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.af to i64
  %i.am = sub i64 %i.ak, %i.al
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.af, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.am, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZN3ozz9DecodeGV4ERKNS_4spanIKhEERKNS0_IjEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.c = load i8, ptr %i.a, align 1, !tbaa !16    ; 4 uses
  %i.d = and i8 %i.c, 3
  %i.e = load i32, ptr %i.b, align 1
  %i.f = zext nneg i8 %i.d to i64                 ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3ozz9DecodeGV4ERKNS_4spanIKhEERKNS0_IjEE.kMask, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14
  %i.i = and i32 %i.h, %i.e
  %i.j = load ptr, ptr %1, align 8, !tbaa !18     ; 4 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.m = lshr i8 %i.c, 2
  %i.n = and i8 %i.m, 3
  %i.o = load i32, ptr %i.l, align 1
  %i.p = zext nneg i8 %i.n to i64                 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3ozz9DecodeGV4ERKNS_4spanIKhEERKNS0_IjEE.kMask, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14
  %i.s = and i32 %i.r, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.s, ptr %i.t, align 4, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.w = lshr i8 %i.c, 4
  %i.x = and i8 %i.w, 3
  %i.y = load i32, ptr %i.v, align 1
  %i.z = zext nneg i8 %i.x to i64                 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3ozz9DecodeGV4ERKNS_4spanIKhEERKNS0_IjEE.kMask, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !14
  %i.ac = and i32 %i.ab, %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  %i.ag = lshr i8 %i.c, 6
  %i.ah = load i32, ptr %i.af, align 1
  %i.ai = zext nneg i8 %i.ag to i64               ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3ozz9DecodeGV4ERKNS_4spanIKhEERKNS0_IjEE.kMask, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.al = and i32 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %i.al, ptr %i.am, align 4, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = sub i64 %i.as, %i.at
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.ao, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.au, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN3ozz25ComputeGV4WorstBufferSizeERKNS_4spanIKjEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = shl i64 %i.b, 2
  %i.d = lshr i64 %i.b, 2
  %i.e = add i64 %i.c, %i.d
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZN3ozz15EncodeGV4StreamERKNS_4spanIKjEERKNS0_IhEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 {
bb.a:
  %.sroa.011.0.copyload = load ptr, ptr %1, align 8, !tbaa !20 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.011.0.lcssa = phi ptr [ %.sroa.011.0.copyload, %bb.a ], [ %i.ad, %.lr.ph ]
  %.sroa.5.0.lcssa = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ah, %.lr.ph ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.011.0.lcssa, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0.lcssa, 1
  ret { ptr, i64 } %.fca.1.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.016 = phi ptr [ %i.ai, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 6 uses
  %.sroa.5.015 = phi i64 [ %i.ah, %.lr.ph ], [ %.sroa.5.0.copyload, %.lr.ph.preheader ]
  %.sroa.011.014 = phi ptr [ %i.ad, %.lr.ph ], [ %.sroa.011.0.copyload, %.lr.ph.preheader ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.016, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %.016, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.016, i64 12
  %i.g = load <4 x i32>, ptr %.016, align 4, !tbaa !14 ; 3 uses
  %i.h = icmp ugt <4 x i32> %i.g, splat (i32 16777215)
  %i.i = zext <4 x i1> %i.h to <4 x i8>
  %i.j = icmp ugt <4 x i32> %i.g, splat (i32 65535)
  %i.k = zext <4 x i1> %i.j to <4 x i8>
  %i.l = add nuw nsw <4 x i8> %i.i, %i.k          ; 4 uses
  %2 = extractelement <4 x i8> %i.l, i64 0
  %3 = extractelement <4 x i8> %i.l, i64 1
  %4 = extractelement <4 x i8> %i.l, i64 2
  %i.m = icmp ugt <4 x i32> %i.g, splat (i32 255) ; 4 uses
  %5 = extractelement <4 x i1> %i.m, i64 0
  %6 = zext i1 %5 to i8
  %7 = add nuw nsw i8 %2, %6                      ; 2 uses
  %8 = extractelement <4 x i1> %i.m, i64 1
  %9 = zext i1 %8 to i8
  %10 = add nuw nsw i8 %3, %9                     ; 2 uses
  %11 = extractelement <4 x i1> %i.m, i64 2
  %12 = zext i1 %11 to i8
  %13 = add nuw nsw i8 %4, %12                    ; 2 uses
  %i.n = extractelement <4 x i8> %i.l, i64 3
  %14 = extractelement <4 x i1> %i.m, i64 3
  %15 = zext i1 %14 to i8
  %16 = add nuw nsw i8 %i.n, %15                  ; 2 uses
  %i.o = zext nneg i8 %16 to i64
  %17 = shl nuw i8 %16, 6
  %i.p = zext nneg i8 %13 to i64
  %18 = shl nuw nsw i8 %13, 4
  %i.q = zext nneg i8 %10 to i64
  %19 = shl nuw nsw i8 %10, 2
  %20 = zext nneg i8 %7 to i64
  %21 = or i8 %19, %18
  %22 = or i8 %21, %17
  %23 = or i8 %22, %7
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.014, i64 1 ; 2 uses
  store i8 %23, ptr %.sroa.011.014, align 1, !tbaa !16
  %i.s = load i32, ptr %.016, align 4, !tbaa !14
  store i32 %i.s, ptr %i.r, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.v = load i32, ptr %i.d, align 4, !tbaa !14
  store i32 %i.v, ptr %i.u, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.y = load i32, ptr %i.e, align 4, !tbaa !14
  store i32 %i.y, ptr %i.x, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.ab = load i32, ptr %i.f, align 4, !tbaa !14
  store i32 %i.ab, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.o
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.011.014, i64 %.sroa.5.015
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !13
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = icmp ult ptr %i.ai, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZN3ozz15DecodeGV4StreamERKNS_4spanIKhEERKNS0_IjEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 {
bb.a:
  %.sroa.08.0.copyload = load ptr, ptr %0, align 8, !tbaa !20 ; 2 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.49.0.copyload = load i64, ptr %.sroa.49.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.08.0.lcssa = phi ptr [ %.sroa.08.0.copyload, %bb.a ], [ %i.aq, %.lr.ph ]
  %.sroa.49.0.lcssa = phi i64 [ %.sroa.49.0.copyload, %bb.a ], [ %i.au, %.lr.ph ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.08.0.lcssa, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.49.0.lcssa, 1
  ret { ptr, i64 } %.fca.1.insert

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.013 = phi ptr [ %i.av, %.lr.ph ], [ %i.a, %bb.a ] ; 5 uses
  %.sroa.49.012 = phi i64 [ %i.au, %.lr.ph ], [ %.sroa.49.0.copyload, %bb.a ]
  %.sroa.08.011 = phi ptr [ %i.aq, %.lr.ph ], [ %.sroa.08.0.copyload, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.08.011, i64 1 ; 2 uses
  %i.f = load i8, ptr %.sroa.08.011, align 1, !tbaa !16 ; 4 uses
  %i.g = and i8 %i.f, 3
  %i.h = load i32, ptr %i.e, align 1
  %i.i = zext nneg i8 %i.g to i64                 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3ozz9DecodeGV4ERKNS_4spanIKhEERKNS0_IjEE.kMask, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14
  %i.l = and i32 %i.k, %i.h
  store i32 %i.l, ptr %.013, align 4, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.o = lshr i8 %i.f, 2
  %i.p = and i8 %i.o, 3
  %i.q = load i32, ptr %i.n, align 1
  %i.r = zext nneg i8 %i.p to i64                 ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3ozz9DecodeGV4ERKNS_4spanIKhEERKNS0_IjEE.kMask, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14
  %i.u = and i32 %i.t, %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %.013, i64 4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.y = lshr i8 %i.f, 4
  %i.z = and i8 %i.y, 3
  %i.aa = load i32, ptr %i.x, align 1
  %i.ab = zext nneg i8 %i.z to i64                ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3ozz9DecodeGV4ERKNS_4spanIKhEERKNS0_IjEE.kMask, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !14
  %i.ae = and i32 %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %.013, i64 8
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.ai = lshr i8 %i.f, 6
  %i.aj = load i32, ptr %i.ah, align 1
  %i.ak = zext nneg i8 %i.ai to i64               ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3ozz9DecodeGV4ERKNS_4spanIKhEERKNS0_IjEE.kMask, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !14
  %i.an = and i32 %i.am, %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %.013, i64 12
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.011, i64 %.sroa.49.012
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.013, i64 16 ; 2 uses
  %i.aw = icmp ult ptr %i.av, %i.d
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !30
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTSN3ozz4spanIKjEE", !10, i64 0, !11, i64 8}
!13 = !{!12, !10, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!"p1 omnipotent char", !9, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!"_ZTSN3ozz4spanIjEE", !10, i64 0, !11, i64 8}
!18 = !{!17, !10, i64 0}
!19 = !{!12, !11, i64 8}
!20 = !{!15, !15, i64 0}
!21 = !{!11, !11, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"_ZTSN3ozz4spanIhEE", !15, i64 0, !11, i64 8}
!24 = !{!23, !15, i64 0}
!25 = !{!23, !11, i64 8}
!26 = !{!"_ZTSN3ozz4spanIKhEE", !15, i64 0, !11, i64 8}
!27 = !{!26, !15, i64 0}
!28 = !{!26, !11, i64 8}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = !{!17, !11, i64 8}
end_hunk_0
