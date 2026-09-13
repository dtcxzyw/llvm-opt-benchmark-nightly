Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/UTF16Stream?download=true
inline.NumInlined: 103
inline.NumDeleted: 60
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNSt6vectorIDsSaIDsEE17_M_default_appendEm = comdat any

@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN6hermes11UTF16StreamC1EN4llvh8ArrayRefIhEE = hidden unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN6hermes11UTF16StreamC2EN4llvh8ArrayRefIhEE

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes11UTF16StreamC2EN4llvh8ArrayRefIhEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.c, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #11 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2048 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.g, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %i.f, i8 0, i64 2048, i1 false)
  store ptr %i.g, ptr %i.i, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 2046 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !20
  store ptr %i.j, ptr %0, align 8, !tbaa !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes11UTF16Stream12beginCaptureEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((32, 40)) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.b, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, i64 } @_ZN6hermes11UTF16Stream10endCaptureEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !22
  %i.c = load ptr, ptr %0, align 8, !tbaa !21
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 1
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.g, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6hermes11UTF16Stream13cancelCaptureEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((32, 40)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.a, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes11UTF16Stream18makeRoomForCaptureEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 5 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.f                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 1                   ; 2 uses
  %i.n = lshr i64 %i.m, 1
  %i.o = icmp ult i64 %i.h, %i.n
  br i1 %i.o, label %_ZNSt6vectorIDsSaIDsEE6resizeEm.exit, label %bb.b

_ZNSt6vectorIDsSaIDsEE6resizeEm.exit:             ; preds = %bb.a
  %1 = load ptr, ptr %0, align 8, !tbaa !21
  %2 = ptrtoint ptr %1 to i64
  %3 = sub i64 %2, %i.f
  %4 = sub nuw i64 %i.l, %i.m
  tail call void @_ZNSt6vectorIDsSaIDsEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %4)
  %5 = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.p = getelementptr inbounds i8, ptr %5, i64 -2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !20
  %6 = load ptr, ptr %i.c, align 8, !tbaa !23     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 %i.g
  store ptr %i.r, ptr %i.a, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 %3
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.e                       ; 4 uses
  %i.x = icmp sgt i64 %i.w, 2
  br i1 %i.x, label %bb.c, label %bb.d, !prof !24

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.d, ptr align 2 %i.b, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !23
  br label %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit

bb.d:                                             ; preds = %bb.b
  %i.y = icmp eq i64 %i.w, 2
  br i1 %i.y, label %bb.e, label %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.d
  %i.z = load i16, ptr %i.b, align 2, !tbaa !26
  store i16 %i.z, ptr %i.d, align 2, !tbaa !26
  br label %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.aa = phi ptr [ %.pre, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %bb.e ] ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit, %_ZNSt6vectorIDsSaIDsEE6resizeEm.exit
  %storemerge = phi ptr [ %i.ab, %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit ], [ %i.s, %_ZNSt6vectorIDsSaIDsEE6resizeEm.exit ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes11UTF16Stream6refillEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 4 uses
  %.not = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 5 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.l                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 1                   ; 2 uses
  %i.t = lshr i64 %i.s, 1
  %i.u = icmp ult i64 %i.n, %i.t
  br i1 %i.u, label %_ZNSt6vectorIDsSaIDsEE6resizeEm.exit.i, label %bb.d

_ZNSt6vectorIDsSaIDsEE6resizeEm.exit.i:           ; preds = %bb.c
  %1 = load ptr, ptr %0, align 8, !tbaa !21
  %2 = ptrtoint ptr %1 to i64
  %3 = sub i64 %2, %i.l
  %4 = sub nuw i64 %i.r, %i.s
  tail call void @_ZNSt6vectorIDsSaIDsEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %4)
  %5 = load ptr, ptr %i.o, align 8, !tbaa !23
  %6 = load ptr, ptr %i.i, align 8, !tbaa !23     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 %i.m
  store ptr %i.v, ptr %i.g, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 %3
  br label %_ZN6hermes11UTF16Stream18makeRoomForCaptureEv.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, 2
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !24

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.j, ptr nonnull align 2 %i.h, i64 %i.aa, i1 false)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !23
  %.pre.pre = load ptr, ptr %i.o, align 8, !tbaa !23
  br label %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp eq i64 %i.aa, 2
  br i1 %i.ac, label %bb.g, label %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ad = load i16, ptr %i.h, align 2, !tbaa !26
  store i16 %i.ad, ptr %i.j, align 2, !tbaa !26
  br label %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit.i

_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.pre = phi ptr [ %.pre.pre, %bb.e ], [ %i.p, %bb.f ], [ %i.p, %bb.g ]
  %i.ae = phi ptr [ %.pre.i, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.g ] ; 2 uses
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aa
  br label %_ZN6hermes11UTF16Stream18makeRoomForCaptureEv.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 4 uses
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !17  ; 5 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ugt i64 %i.al, 4096
  br i1 %i.am, label %bb.i, label %_ZN6hermes11UTF16Stream18makeRoomForCaptureEv.exit

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 2048 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.an
  br i1 %.not.i.i, label %_ZN6hermes11UTF16Stream18makeRoomForCaptureEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.an, ptr %i.ag, align 8, !tbaa !19
  br label %_ZN6hermes11UTF16Stream18makeRoomForCaptureEv.exit

_ZN6hermes11UTF16Stream18makeRoomForCaptureEv.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit.i, %_ZNSt6vectorIDsSaIDsEE6resizeEm.exit.i
  %i.ao = phi ptr [ %5, %_ZNSt6vectorIDsSaIDsEE6resizeEm.exit.i ], [ %.pre, %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit.i ], [ %i.an, %bb.j ], [ %i.ah, %bb.i ], [ %i.ah, %bb.h ]
  %storemerge = phi ptr [ %i.w, %_ZNSt6vectorIDsSaIDsEE6resizeEm.exit.i ], [ %i.af, %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit.i ], [ %i.ai, %bb.j ], [ %i.ai, %bb.i ], [ %i.ai, %bb.h ] ; 4 uses
  store ptr %storemerge, ptr %0, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -2 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !20
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %storemerge to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 1
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !16  ; 2 uses
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !15  ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.az, i64 %i.au) ; 3 uses
  %i.ba = trunc i64 %.sroa.speculated to i32
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %_ZN6hermes11UTF16Stream18makeRoomForCaptureEv.exit
  %wide.trip.count = and i64 %.sroa.speculated, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !28  ; 2 uses
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %bb.k, label %.critedge.loopexit

bb.k:                                             ; preds = %.lr.ph
  %i.bf = zext nneg i8 %i.bd to i16
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %storemerge, i64 %indvars.iv
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !27

.critedge.loopexit:                               ; preds = %bb.k, %.lr.ph
  %.0.lcssa.ph = phi i64 [ %indvars.iv, %.lr.ph ], [ %.sroa.speculated, %bb.k ]
  %i.bh = and i64 %.0.lcssa.ph, 4294967295
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %_ZN6hermes11UTF16Stream18makeRoomForCaptureEv.exit
  %.0.lcssa = phi i64 [ 0, %_ZN6hermes11UTF16Stream18makeRoomForCaptureEv.exit ], [ %i.bh, %.critedge.loopexit ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0.lcssa
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %storemerge, i64 %.0.lcssa
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !23
  %i.bk = call noundef i32 @_ZN4llvh18ConvertUTF8toUTF16EPPKhS1_PPtS3_NS_15ConversionFlagsE(ptr noundef nonnull %i.b, ptr noundef %i.av, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ap, i32 noundef 1) #12
  %.not11 = icmp eq i32 %i.bk, 2
  br i1 %.not11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !16
  store ptr %i.bl, ptr %i.b, align 8, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  store ptr %i.bm, ptr %i.aq, align 8, !tbaa !20
  %i.bn = load ptr, ptr %0, align 8, !tbaa !21
  %i.bo = icmp ne ptr %i.bn, %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  %.010 = phi i1 [ %i.bo, %bb.m ], [ false, %bb.a ]
  ret i1 %.010
}

declare noundef i32 @_ZN4llvh18ConvertUTF8toUTF16EPPKhS1_PPtS3_NS_15ConversionFlagsE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIDsSaIDsEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 1                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 4611686018427387904
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 4611686018427387903        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 0, ptr %i.b, align 2, !tbaa !26
  %i.p = getelementptr i8, ptr %i.b, i64 2        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPDsmDsET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPDsmDsET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPDsmDsET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 1       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPDsmDsET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPDsmDsET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPDsmDsET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPDsmDsET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !19
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
  unreachable

_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit:  ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 4611686018427387903) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #11 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i16 0, ptr %i.y, align 2, !tbaa !26
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPDsmDsET_S1_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPDsmDsET_S1_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPDsmDsET_S1_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 2
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false), !tbaa !26
  br label %_ZSt27__uninitialized_default_n_aIPDsmDsET_S1_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPDsmDsET_S1_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPDsmDsET_S1_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIDsSaIDsEE11_S_relocateEPDsS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPDsmDsET_S1_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.x, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIDsSaIDsEE11_S_relocateEPDsS2_S2_RS0_.exit

_ZNSt6vectorIDsSaIDsEE11_S_relocateEPDsS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPDsmDsET_S1_T0_RSaIT1_E.exit28, %bb.f
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIDsSaIDsEE13_M_deallocateEPDsm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIDsSaIDsEE11_S_relocateEPDsS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #14
  br label %_ZNSt12_Vector_baseIDsSaIDsEE13_M_deallocateEPDsm.exit

_ZNSt12_Vector_baseIDsSaIDsEE13_M_deallocateEPDsm.exit: ; preds = %_ZNSt6vectorIDsSaIDsEE11_S_relocateEPDsS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPDsmDsET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIDsSaIDsEE13_M_deallocateEPDsm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

end_hunk_0
