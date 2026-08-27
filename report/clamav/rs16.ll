Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/rs16?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN9RSCoder16C1Ev = unnamed_addr alias void (ptr), ptr @_ZN9RSCoder16C2Ev
@_ZN9RSCoder16D1Ev = unnamed_addr alias void (ptr), ptr @_ZN9RSCoder16D2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN9RSCoder16C2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 17), (20, 64)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.b, i8 0, i64 44, i1 false)
  %i.c = tail call noalias noundef nonnull dereferenceable(1048564) ptr @_Znam(i64 noundef 1048564) #9
  store ptr %i.c, ptr %0, align 8, !tbaa !15
  %i.d = tail call noalias noundef nonnull dereferenceable(262144) ptr @_Znam(i64 noundef 262144) #9 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !16
  %i.f = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.c ] ; 5 uses
  %.01419.i = phi i32 [ 1, %bb.a ], [ %spec.select.i.1, %bb.c ] ; 4 uses
  %i.g = zext i32 %.01419.i to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.i, ptr %i.h, align 4, !tbaa !17
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i ; 2 uses
  store i32 %.01419.i, ptr %i.j, align 4, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 262140
  store i32 %.01419.i, ptr %i.k, align 4, !tbaa !17
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 65534
  br i1 %exitcond.not.i, label %_ZN9RSCoder166gfInitEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %1 = shl i32 %.01419.i, 1                       ; 3 uses
  %2 = icmp ugt i32 %1, 65535
  %i.l = xor i32 %1, 69643
  %spec.select.i = select i1 %2, i32 %i.l, i32 %1 ; 4 uses
  %i.m = zext i32 %spec.select.i to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.o, ptr %i.n, align 4, !tbaa !17
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i ; 2 uses
  store i32 %spec.select.i, ptr %i.p, align 4, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 262140
  store i32 %spec.select.i, ptr %i.q, align 4, !tbaa !17
  %i.r = shl i32 %spec.select.i, 1                ; 3 uses
  %i.s = icmp ugt i32 %i.r, 65535
  %i.t = xor i32 %i.r, 69643
  %spec.select.i.1 = select i1 %i.s, i32 %i.t, i32 %i.r
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %bb.b

_ZN9RSCoder166gfInitEv.exit:                      ; preds = %bb.b
  store i32 131070, ptr %i.d, align 4, !tbaa !17
  %scevgep.i = getelementptr nuw i8, ptr %i.f, i64 524280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(524284) %scevgep.i, i8 0, i64 524284, i1 false), !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9RSCoder166gfInitEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 16)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1048564) ptr @_Znam(i64 noundef 1048564) #9
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = tail call noalias noundef nonnull dereferenceable(262144) ptr @_Znam(i64 noundef 262144) #9 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !16
  %i.d = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  store i32 131070, ptr %i.b, align 4, !tbaa !17
  %scevgep = getelementptr nuw i8, ptr %i.d, i64 524280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(524284) %scevgep, i8 0, i64 524284, i1 false), !tbaa !17
  ret void

bb.c:                                             ; preds = %bb.d, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.d ] ; 5 uses
  %.01419 = phi i32 [ 1, %bb.a ], [ %spec.select.1, %bb.d ] ; 4 uses
  %i.e = zext i32 %.01419 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.g, ptr %i.f, align 4, !tbaa !17
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  store i32 %.01419, ptr %i.h, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 262140
  store i32 %.01419, ptr %i.i, align 4, !tbaa !17
  %exitcond.not = icmp eq i64 %indvars.iv, 65534
  br i1 %exitcond.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %1 = shl i32 %.01419, 1                         ; 3 uses
  %2 = icmp ugt i32 %1, 65535
  %i.j = xor i32 %1, 69643
  %spec.select = select i1 %2, i32 %i.j, i32 %1   ; 4 uses
  %i.k = zext i32 %spec.select to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k
  %i.m = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.m, ptr %i.l, align 4, !tbaa !17
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next ; 2 uses
  store i32 %spec.select, ptr %i.n, align 4, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 262140
  store i32 %spec.select, ptr %i.o, align 4, !tbaa !17
  %i.p = shl i32 %spec.select, 1                  ; 3 uses
  %i.q = icmp ugt i32 %i.p, 65535
  %i.r = xor i32 %i.p, 69643
  %spec.select.1 = select i1 %i.q, i32 %i.r, i32 %i.p
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.c
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9RSCoder16D2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(64) dereferenceable(64) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN9RSCoder164InitEjjPb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((16, 17), (20, 32)) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i32 %2, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 9 uses
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %i.d = icmp ne ptr %3, null                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 8, !tbaa !8
  br i1 %i.d, label %bb.b, label %._crit_edge65

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #10
  %.pre = load i32, ptr %i.a, align 4, !tbaa !21
  %.pre64 = load i32, ptr %i.b, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i32 [ %.pre64, %bb.c ], [ %2, %bb.b ]
  %i.k = phi i32 [ %.pre, %bb.c ], [ %1, %bb.b ]
  %i.l = add i32 %i.j, %i.k
  %i.m = zext i32 %i.l to i64
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #9 ; 7 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !20
  %i.o = load i32, ptr %i.a, align 4, !tbaa !21   ; 8 uses
  %i.p = load i32, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.q = add i32 %i.p, %i.o                       ; 4 uses
  %.not50 = icmp eq i32 %i.q, 0
  br i1 %.not50, label %.preheader39, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.r = zext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %3, i64 %i.r, i1 false), !tbaa !24
  br label %.preheader39

.preheader39:                                     ; preds = %.lr.ph.preheader, %bb.d
  %.not51 = icmp eq i32 %i.o, 0
  br i1 %.not51, label %.preheader, label %.lr.ph45.preheader

.lr.ph45.preheader:                               ; preds = %.preheader39
  %wide.trip.count = zext i32 %i.o to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.s = icmp eq i32 %i.o, 1
  br i1 %i.s, label %.lr.ph45.epil.preheader, label %.lr.ph45.preheader.new

.lr.ph45.preheader.new:                           ; preds = %.lr.ph45.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph45

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph45.epil.preheader

.lr.ph45.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph45.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph45.preheader ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod92 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.epil.init
  %i.u = load i8, ptr %i.t, align 1, !tbaa !24, !range !25, !noundef !26
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.preheader, label %bb.e

bb.e:                                             ; preds = %.lr.ph45.epil.preheader
  %i.w = load i32, ptr %i.c, align 4, !tbaa !23
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.c, align 4, !tbaa !23
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.e, %.lr.ph45.epil.preheader, %.preheader39
  %i.y = icmp ult i32 %i.o, %i.q
  br i1 %i.y, label %.lr.ph48.preheader, label %_ZN9RSCoder1617MakeEncoderMatrixEv.exit

.lr.ph48.preheader:                               ; preds = %.preheader
  %i.z = zext i32 %i.o to i64                     ; 4 uses
  %wide.trip.count57 = zext i32 %i.q to i64       ; 2 uses
  %i.aa = sub nsw i64 %wide.trip.count57, %i.z    ; 3 uses
  %min.iters.check = icmp ult i64 %i.aa, 8
  br i1 %min.iters.check, label %.lr.ph48.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph48.preheader
  %n.vec = and i64 %i.aa, -8                      ; 3 uses
  %i.ab = add nsw i64 %n.vec, %i.z
  %invariant.gep = getelementptr i8, ptr %i.n, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi85 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load = load <4 x i8>, ptr %gep, align 1, !tbaa !24
  %wide.load86 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !24
  %i.ad = zext nneg <4 x i8> %wide.load to <4 x i32>
  %i.ae = zext nneg <4 x i8> %wide.load86 to <4 x i32>
  %i.af = add <4 x i32> %vec.phi, %i.ad           ; 2 uses
  %i.ag = add <4 x i32> %vec.phi85, %i.ae         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ag, %i.af
  %i.ai = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph48.preheader88

.lr.ph48.preheader88:                             ; preds = %.lr.ph48.preheader, %middle.block
  %indvars.iv54.ph = phi i64 [ %i.z, %.lr.ph48.preheader ], [ %i.ab, %middle.block ]
  %.02146.ph = phi i32 [ 0, %.lr.ph48.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph48

.lr.ph45:                                         ; preds = %bb.h, %.lr.ph45.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph45.preheader.new ], [ %indvars.iv.next.1, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph45.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !24, !range !25, !noundef !26
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.lr.ph45.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph45
  %i.am = load i32, ptr %i.c, align 4, !tbaa !23
  %i.an = add i32 %i.am, 1
end_hunk_0
