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
  %1 = load ptr, ptr %0, align 8, !tbaa !15       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.c ] ; 5 uses
  %.01419.i = phi i32 [ 1, %bb.a ], [ %spec.select.i.1, %bb.c ] ; 4 uses
  %i.f = zext i32 %.01419.i to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.h, ptr %i.g, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i ; 2 uses
  store i32 %.01419.i, ptr %i.i, align 4, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 262140
  store i32 %.01419.i, ptr %i.j, align 4, !tbaa !17
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 65534
  br i1 %exitcond.not.i, label %_ZN9RSCoder166gfInitEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = shl i32 %.01419.i, 1                     ; 3 uses
  %i.l = icmp ugt i32 %i.k, 65535
  %i.m = xor i32 %i.k, 69643
  %spec.select.i = select i1 %i.l, i32 %i.m, i32 %i.k ; 4 uses
  %i.n = zext i32 %spec.select.i to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.n
  %i.p = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.p, ptr %i.o, align 4, !tbaa !17
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i ; 2 uses
  store i32 %spec.select.i, ptr %i.q, align 4, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 262140
  store i32 %spec.select.i, ptr %i.r, align 4, !tbaa !17
  %i.s = shl i32 %spec.select.i, 1                ; 3 uses
  %i.t = icmp ugt i32 %i.s, 65535
  %i.u = xor i32 %i.s, 69643
  %spec.select.i.1 = select i1 %i.t, i32 %i.u, i32 %i.s
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %bb.b

_ZN9RSCoder166gfInitEv.exit:                      ; preds = %bb.b
  store i32 131070, ptr %i.d, align 4, !tbaa !17
  %scevgep.i = getelementptr nuw i8, ptr %1, i64 524280
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
  %1 = load ptr, ptr %0, align 8, !tbaa !15       ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  store i32 131070, ptr %i.b, align 4, !tbaa !17
  %scevgep = getelementptr nuw i8, ptr %1, i64 524280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(524284) %scevgep, i8 0, i64 524284, i1 false), !tbaa !17
  ret void

bb.c:                                             ; preds = %bb.d, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.d ] ; 5 uses
  %.01419 = phi i32 [ 1, %bb.a ], [ %spec.select.1, %bb.d ] ; 4 uses
  %i.d = zext i32 %.01419 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.d
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.f, ptr %i.e, align 4, !tbaa !17
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  store i32 %.01419, ptr %i.g, align 4, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 262140
  store i32 %.01419, ptr %i.h, align 4, !tbaa !17
  %exitcond.not = icmp eq i64 %indvars.iv, 65534
  br i1 %exitcond.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.i = shl i32 %.01419, 1                       ; 3 uses
  %i.j = icmp ugt i32 %i.i, 65535
  %i.k = xor i32 %i.i, 69643
  %spec.select = select i1 %i.j, i32 %i.k, i32 %i.i ; 4 uses
  %i.l = zext i32 %spec.select to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.l
  %i.n = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.n, ptr %i.m, align 4, !tbaa !17
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  store i32 %spec.select, ptr %i.o, align 4, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 262140
  store i32 %spec.select, ptr %i.p, align 4, !tbaa !17
  %i.q = shl i32 %spec.select, 1                  ; 3 uses
  %i.r = icmp ugt i32 %i.q, 65535
  %i.s = xor i32 %i.q, 69643
  %spec.select.1 = select i1 %i.r, i32 %i.s, i32 %i.q
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
  br i1 %i.d, label %bb.b, label %._crit_edge61

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #10
  %.pre = load i32, ptr %i.a, align 4, !tbaa !21
  %.pre60 = load i32, ptr %i.b, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i32 [ %.pre60, %bb.c ], [ %2, %bb.b ]
  %i.k = phi i32 [ %.pre, %bb.c ], [ %1, %bb.b ]
  %i.l = add i32 %i.j, %i.k
  %i.m = zext i32 %i.l to i64
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #9 ; 7 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !20
  %4 = load i32, ptr %i.a, align 4, !tbaa !21     ; 8 uses
  %5 = load i32, ptr %i.b, align 8, !tbaa !22     ; 2 uses
  %6 = add i32 %5, %4                             ; 4 uses
  %.not46 = icmp eq i32 %6, 0
  br i1 %.not46, label %.preheader39, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %7 = zext i32 %6 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %3, i64 %7, i1 false), !tbaa !24
  br label %.preheader39

.preheader39:                                     ; preds = %.lr.ph.preheader, %bb.d
  %.not47 = icmp eq i32 %4, 0
  br i1 %.not47, label %.preheader, label %.lr.ph42.preheader

.lr.ph42.preheader:                               ; preds = %.preheader39
  %wide.trip.count = zext i32 %4 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.o = icmp eq i32 %4, 1
  br i1 %i.o, label %.lr.ph42.epil.preheader, label %.lr.ph42.preheader.new

.lr.ph42.preheader.new:                           ; preds = %.lr.ph42.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph42

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph42.epil.preheader

.lr.ph42.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph42.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph42.preheader ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod86 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.epil.init
  %i.q = load i8, ptr %i.p, align 1, !tbaa !24, !range !25, !noundef !26
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.preheader, label %bb.e

bb.e:                                             ; preds = %.lr.ph42.epil.preheader
  %i.s = load i32, ptr %i.c, align 4, !tbaa !23
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.c, align 4, !tbaa !23
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.e, %.lr.ph42.epil.preheader, %.preheader39
  %i.u = icmp ult i32 %4, %6
  br i1 %i.u, label %.lr.ph45.preheader, label %_ZN9RSCoder1617MakeEncoderMatrixEv.exit

.lr.ph45.preheader:                               ; preds = %.preheader
  %8 = zext i32 %4 to i64                         ; 4 uses
  %i.v = zext i32 %6 to i64                       ; 2 uses
  %i.w = sub nsw i64 %i.v, %8                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.w, 8
  br i1 %min.iters.check, label %.lr.ph45.preheader82, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.preheader
  %n.vec = and i64 %i.w, -8                       ; 3 uses
  %i.x = add nsw i64 %n.vec, %8
  %invariant.gep = getelementptr i8, ptr %i.n, i64 %8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load = load <4 x i8>, ptr %gep, align 1, !tbaa !24
  %wide.load80 = load <4 x i8>, ptr %i.y, align 1, !tbaa !24
  %i.z = zext nneg <4 x i8> %wide.load to <4 x i32>
  %i.aa = zext nneg <4 x i8> %wide.load80 to <4 x i32>
  %i.ab = add <4 x i32> %vec.phi, %i.z            ; 2 uses
  %i.ac = add <4 x i32> %vec.phi79, %i.aa         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ac, %i.ab
  %i.ae = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph45.preheader82

.lr.ph45.preheader82:                             ; preds = %.lr.ph45.preheader, %middle.block
  %indvars.iv50.ph = phi i64 [ %8, %.lr.ph45.preheader ], [ %i.x, %middle.block ]
  %.02143.ph = phi i32 [ 0, %.lr.ph45.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph45

.lr.ph42:                                         ; preds = %bb.h, %.lr.ph42.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph42.preheader.new ], [ %indvars.iv.next.1, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph42.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !24, !range !25, !noundef !26
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.lr.ph42.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph42
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !23
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.c, align 4, !tbaa !23
  br label %.lr.ph42.1

.lr.ph42.1:                                       ; preds = %.lr.ph42, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !24, !range !25, !noundef !26
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph42.1
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !23
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.c, align 4, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph42.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph42, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph45, %middle.block
  %spec.select.lcssa = phi i32 [ %i.ae, %middle.block ], [ %spec.select, %.lr.ph45 ]
  %i.aq = load i32, ptr %i.c, align 4, !tbaa !23
  %i.ar = add i32 %i.aq, -1
  %.not = icmp ult i32 %i.ar, %spec.select.lcssa
  br i1 %.not, label %._crit_edge61, label %_ZN9RSCoder1617MakeEncoderMatrixEv.exit

.lr.ph45:                                         ; preds = %.lr.ph45.preheader82, %.lr.ph45
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %.lr.ph45 ], [ %indvars.iv50.ph, %.lr.ph45.preheader82 ] ; 2 uses
  %.02143 = phi i32 [ %spec.select, %.lr.ph45 ], [ %.02143.ph, %.lr.ph45.preheader82 ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv50
  %i.at = load i8, ptr %i.as, align 1, !tbaa !24, !range !25, !noundef !26
  %i.au = zext nneg i8 %i.at to i32
  %spec.select = add i32 %.02143, %i.au           ; 2 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %i.v
  br i1 %exitcond54.not, label %._crit_edge, label %.lr.ph45, !llvm.loop !32

._crit_edge61:                                    ; preds = %bb.a, %._crit_edge
  %i.av = phi i32 [ %5, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %i.aw = phi i32 [ %4, %._crit_edge ], [ %1, %bb.a ] ; 2 uses
  %i.ax = add i32 %i.av, %i.aw
  %i.ay = icmp ugt i32 %i.ax, 65535
  %i.az = icmp eq i32 %i.aw, 0
  %or.cond31 = or i1 %i.az, %i.ay
  %i.ba = icmp eq i32 %i.av, 0
  %or.cond32 = or i1 %i.ba, %or.cond31
  br i1 %or.cond32, label %_ZN9RSCoder1617MakeEncoderMatrixEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge61
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !19 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.bc) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.be = load i8, ptr %i.e, align 8, !tbaa !8, !range !25, !noundef !26
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  br i1 %i.bf, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !23
  %i.bi = mul i32 %i.bg, %i.bh
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #9 ; 5 uses
  store ptr %i.bl, ptr %i.bb, align 8, !tbaa !19
  %9 = load i32, ptr %i.a, align 4, !tbaa !21     ; 8 uses
  %.not.i = icmp eq i32 %9, 0
  br i1 %.not.i, label %_ZN9RSCoder1617MakeDecoderMatrixEv.exit, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !20 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %exitcond58.peel.not = icmp eq i32 %9, 1
  %i.bp = zext i32 %9 to i64
  %i.bq = add i32 %9, -1                          ; 3 uses
  %xtraiter92 = and i32 %i.bq, 1
  %i.br = icmp eq i32 %9, 2
  %unroll_iter95 = and i32 %i.bq, -2
  %lcmp.mod93.not = icmp eq i32 %xtraiter92, 0
  %lcmp.mod94 = trunc i32 %i.bq to i1
  br label %bb.m

bb.m:                                             ; preds = %bb.r, %.lr.ph23.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph23.i ], [ %indvars.iv.next.i, %bb.r ] ; 2 uses
  %.01321.i = phi i32 [ 0, %.lr.ph23.i ], [ %.1.i, %bb.r ] ; 4 uses
  %.01420.i = phi i32 [ %9, %.lr.ph23.i ], [ %.2.i, %bb.r ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !24, !range !25, !noundef !26
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.r, label %.preheader17.i

.preheader17.i:                                   ; preds = %bb.m, %.preheader17.i
  %.115.i = phi i32 [ %i.bz, %.preheader17.i ], [ %.01420.i, %bb.m ] ; 9 uses
  %i.bv = zext i32 %.115.i to i64                 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !24, !range !25, !noundef !26
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = add i32 %.115.i, 1                      ; 2 uses
  br i1 %i.by, label %.lr.ph.i.preheader, label %.preheader17.i, !llvm.loop !33

.lr.ph.i.preheader:                               ; preds = %.preheader17.i
  %i.ca = icmp eq i32 %.115.i, 0
  br i1 %i.ca, label %_ZN9RSCoder165gfInvEj.exit.i.peel, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.preheader
  %i.cb = load ptr, ptr %0, align 8, !tbaa !15
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bv
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !17
  %i.cf = sub i32 65535, %i.ce
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !17
  br label %_ZN9RSCoder165gfInvEj.exit.i.peel

_ZN9RSCoder165gfInvEj.exit.i.peel:                ; preds = %bb.n, %.lr.ph.i.preheader
  %i.cj = phi i32 [ %i.ci, %bb.n ], [ 0, %.lr.ph.i.preheader ]
  %i.ck = mul i32 %9, %.01321.i
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cl
  store i32 %i.cj, ptr %i.cm, align 4, !tbaa !17
  br i1 %exitcond58.peel.not, label %._crit_edge.i, label %.lr.ph.i.peel.next

.lr.ph.i.peel.next:                               ; preds = %_ZN9RSCoder165gfInvEj.exit.i.peel
  %i.cn = mul i32 %9, %.01321.i                   ; 3 uses
  br i1 %i.br, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %_ZN9RSCoder165gfInvEj.exit.i.1
  br i1 %lcmp.mod93.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.peel.next
  %.018.i.epil.init = phi i32 [ 1, %.lr.ph.i.peel.next ], [ %i.ej, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.co = icmp eq i32 %.018.i.epil.init, %.115.i
  br i1 %i.co, label %_ZN9RSCoder165gfInvEj.exit.i.epil, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.cp = xor i32 %.018.i.epil.init, %.115.i
  %i.cq = load ptr, ptr %0, align 8, !tbaa !15
  %i.cr = load ptr, ptr %i.bo, align 8, !tbaa !16
  %i.cs = zext i32 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !17
  %i.cv = sub i32 65535, %i.cu
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !17
  br label %_ZN9RSCoder165gfInvEj.exit.i.epil

_ZN9RSCoder165gfInvEj.exit.i.epil:                ; preds = %bb.o, %.lr.ph.i.epil.preheader
  %i.cz = phi i32 [ %i.cy, %bb.o ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.da = add i32 %i.cn, %.018.i.epil.init
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.db
  store i32 %i.cz, ptr %i.dc, align 4, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN9RSCoder165gfInvEj.exit.i.epil, %._crit_edge.i.loopexit.unr-lcssa, %_ZN9RSCoder165gfInvEj.exit.i.peel
  %i.dd = add i32 %.01321.i, 1
  br label %bb.r

.lr.ph.i:                                         ; preds = %.lr.ph.i.peel.next, %_ZN9RSCoder165gfInvEj.exit.i.1
  %.018.i = phi i32 [ %i.ej, %_ZN9RSCoder165gfInvEj.exit.i.1 ], [ 1, %.lr.ph.i.peel.next ] ; 5 uses
  %niter96 = phi i32 [ %niter96.next.1, %_ZN9RSCoder165gfInvEj.exit.i.1 ], [ 0, %.lr.ph.i.peel.next ]
  %i.de = icmp eq i32 %.018.i, %.115.i
  br i1 %i.de, label %_ZN9RSCoder165gfInvEj.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.df = xor i32 %.018.i, %.115.i
  %i.dg = load ptr, ptr %0, align 8, !tbaa !15
  %i.dh = load ptr, ptr %i.bo, align 8, !tbaa !16
  %i.di = zext i32 %i.df to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !17
  %i.dl = sub i32 65535, %i.dk
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !17
  br label %_ZN9RSCoder165gfInvEj.exit.i

_ZN9RSCoder165gfInvEj.exit.i:                     ; preds = %bb.p, %.lr.ph.i
  %i.dp = phi i32 [ %i.do, %bb.p ], [ 0, %.lr.ph.i ]
  %i.dq = add i32 %i.cn, %.018.i
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.dr
  store i32 %i.dp, ptr %i.ds, align 4, !tbaa !17
  %i.dt = add nuw i32 %.018.i, 1                  ; 3 uses
  %i.du = icmp eq i32 %i.dt, %.115.i
  br i1 %i.du, label %_ZN9RSCoder165gfInvEj.exit.i.1, label %bb.q

bb.q:                                             ; preds = %_ZN9RSCoder165gfInvEj.exit.i
  %i.dv = xor i32 %i.dt, %.115.i
  %i.dw = load ptr, ptr %0, align 8, !tbaa !15
  %i.dx = load ptr, ptr %i.bo, align 8, !tbaa !16
  %i.dy = zext i32 %i.dv to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !17
  %i.eb = sub i32 65535, %i.ea
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !17
  br label %_ZN9RSCoder165gfInvEj.exit.i.1

_ZN9RSCoder165gfInvEj.exit.i.1:                   ; preds = %bb.q, %_ZN9RSCoder165gfInvEj.exit.i
  %i.ef = phi i32 [ %i.ee, %bb.q ], [ 0, %_ZN9RSCoder165gfInvEj.exit.i ]
  %i.eg = add i32 %i.cn, %i.dt
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.eh
  store i32 %i.ef, ptr %i.ei, align 4, !tbaa !17
  %i.ej = add nuw i32 %.018.i, 2                  ; 2 uses
  %niter96.next.1 = add i32 %niter96, 2           ; 2 uses
  %niter96.ncmp.1 = icmp eq i32 %niter96.next.1, %unroll_iter95
  br i1 %niter96.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !34

bb.r:                                             ; preds = %._crit_edge.i, %bb.m
  %.2.i = phi i32 [ %.01420.i, %bb.m ], [ %i.bz, %._crit_edge.i ]
  %.1.i = phi i32 [ %.01321.i, %bb.m ], [ %i.dd, %._crit_edge.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ek = icmp samesign ult i64 %indvars.iv.next.i, %i.bp
  br i1 %i.ek, label %bb.m, label %_ZN9RSCoder1617MakeDecoderMatrixEv.exit, !llvm.loop !36

_ZN9RSCoder1617MakeDecoderMatrixEv.exit:          ; preds = %bb.r, %bb.l
  tail call void @_ZN9RSCoder1619InvertDecoderMatrixEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %_ZN9RSCoder1617MakeEncoderMatrixEv.exit

bb.s:                                             ; preds = %bb.k
  %i.el = load i32, ptr %i.b, align 8, !tbaa !22
  %i.em = mul i32 %i.bg, %i.el
  %i.en = zext i32 %i.em to i64
  %i.eo = shl nuw nsw i64 %i.en, 2
  %i.ep = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eo) #9 ; 5 uses
  store ptr %i.ep, ptr %i.bb, align 8, !tbaa !19
  %10 = load i32, ptr %i.b, align 8, !tbaa !22    ; 2 uses
  %.not.i34 = icmp eq i32 %10, 0
  br i1 %.not.i34, label %_ZN9RSCoder1617MakeEncoderMatrixEv.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.s
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %11 = load i32, ptr %i.a, align 4, !tbaa !21    ; 8 uses
  %.not13.i = icmp eq i32 %11, 0
  br i1 %.not13.i, label %_ZN9RSCoder1617MakeEncoderMatrixEv.exit, label %.preheader.i35.preheader

.preheader.i35.preheader:                         ; preds = %.preheader.lr.ph.i
  %exitcond55.peel.not = icmp eq i32 %11, 1
  %i.er = add i32 %11, -1                         ; 3 uses
  %xtraiter87 = and i32 %i.er, 1
  %i.es = icmp eq i32 %11, 2
  %unroll_iter90 = and i32 %i.er, -2
  %lcmp.mod88.not = icmp eq i32 %xtraiter87, 0
  %lcmp.mod89 = trunc i32 %i.er to i1
  br label %.lr.ph.i36.preheader

.lr.ph.i36.preheader:                             ; preds = %._crit_edge.i38, %.preheader.i35.preheader
  %.0811.i = phi i32 [ %i.fz, %._crit_edge.i38 ], [ 0, %.preheader.i35.preheader ] ; 5 uses
  %i.et = add i32 %11, %.0811.i                   ; 2 uses
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %_ZN9RSCoder165gfInvEj.exit.i37.peel, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i36.preheader
  %i.ev = load ptr, ptr %0, align 8, !tbaa !15
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !16
  %i.ex = zext i32 %i.et to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !17
  %i.fa = sub i32 65535, %i.ez
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !17
  br label %_ZN9RSCoder165gfInvEj.exit.i37.peel

_ZN9RSCoder165gfInvEj.exit.i37.peel:              ; preds = %bb.t, %.lr.ph.i36.preheader
  %i.fe = phi i32 [ %i.fd, %bb.t ], [ 0, %.lr.ph.i36.preheader ]
  %i.ff = mul i32 %11, %.0811.i
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.fg
  store i32 %i.fe, ptr %i.fh, align 4, !tbaa !17
  br i1 %exitcond55.peel.not, label %._crit_edge.i38, label %.lr.ph.i36.peel.next

.lr.ph.i36.peel.next:                             ; preds = %_ZN9RSCoder165gfInvEj.exit.i37.peel
  %i.fi = add i32 %11, %.0811.i                   ; 6 uses
  %i.fj = mul i32 %11, %.0811.i                   ; 3 uses
  br i1 %i.es, label %.lr.ph.i36.epil.preheader, label %.lr.ph.i36

._crit_edge.i38.loopexit.unr-lcssa:               ; preds = %_ZN9RSCoder165gfInvEj.exit.i37.1
  br i1 %lcmp.mod88.not, label %._crit_edge.i38, label %.lr.ph.i36.epil.preheader

.lr.ph.i36.epil.preheader:                        ; preds = %._crit_edge.i38.loopexit.unr-lcssa, %.lr.ph.i36.peel.next
  %.010.i.epil.init = phi i32 [ 1, %.lr.ph.i36.peel.next ], [ %i.hf, %._crit_edge.i38.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.fk = icmp eq i32 %.010.i.epil.init, %i.fi
  br i1 %i.fk, label %_ZN9RSCoder165gfInvEj.exit.i37.epil, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i36.epil.preheader
  %i.fl = xor i32 %i.fi, %.010.i.epil.init
  %i.fm = load ptr, ptr %0, align 8, !tbaa !15
  %i.fn = load ptr, ptr %i.eq, align 8, !tbaa !16
  %i.fo = zext i32 %i.fl to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !17
  %i.fr = sub i32 65535, %i.fq
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !17
  br label %_ZN9RSCoder165gfInvEj.exit.i37.epil

_ZN9RSCoder165gfInvEj.exit.i37.epil:              ; preds = %bb.u, %.lr.ph.i36.epil.preheader
  %i.fv = phi i32 [ %i.fu, %bb.u ], [ 0, %.lr.ph.i36.epil.preheader ]
  %i.fw = add i32 %i.fj, %.010.i.epil.init
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.fx
  store i32 %i.fv, ptr %i.fy, align 4, !tbaa !17
  br label %._crit_edge.i38

._crit_edge.i38:                                  ; preds = %_ZN9RSCoder165gfInvEj.exit.i37.epil, %._crit_edge.i38.loopexit.unr-lcssa, %_ZN9RSCoder165gfInvEj.exit.i37.peel
  %i.fz = add nuw i32 %.0811.i, 1                 ; 2 uses
  %exitcond57.not = icmp eq i32 %i.fz, %10
  br i1 %exitcond57.not, label %_ZN9RSCoder1617MakeEncoderMatrixEv.exit, label %.lr.ph.i36.preheader, !llvm.loop !37

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.peel.next, %_ZN9RSCoder165gfInvEj.exit.i37.1
  %.010.i = phi i32 [ %i.hf, %_ZN9RSCoder165gfInvEj.exit.i37.1 ], [ 1, %.lr.ph.i36.peel.next ] ; 5 uses
  %niter91 = phi i32 [ %niter91.next.1, %_ZN9RSCoder165gfInvEj.exit.i37.1 ], [ 0, %.lr.ph.i36.peel.next ]
  %i.ga = icmp eq i32 %.010.i, %i.fi
  br i1 %i.ga, label %_ZN9RSCoder165gfInvEj.exit.i37, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i36
  %i.gb = xor i32 %i.fi, %.010.i
  %i.gc = load ptr, ptr %0, align 8, !tbaa !15
  %i.gd = load ptr, ptr %i.eq, align 8, !tbaa !16
  %i.ge = zext i32 %i.gb to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !17
  %i.gh = sub i32 65535, %i.gg
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !17
  br label %_ZN9RSCoder165gfInvEj.exit.i37

_ZN9RSCoder165gfInvEj.exit.i37:                   ; preds = %bb.v, %.lr.ph.i36
  %i.gl = phi i32 [ %i.gk, %bb.v ], [ 0, %.lr.ph.i36 ]
  %i.gm = add i32 %i.fj, %.010.i
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.gn
  store i32 %i.gl, ptr %i.go, align 4, !tbaa !17
  %i.gp = add nuw i32 %.010.i, 1                  ; 3 uses
  %i.gq = icmp eq i32 %i.gp, %i.fi
  br i1 %i.gq, label %_ZN9RSCoder165gfInvEj.exit.i37.1, label %bb.w

bb.w:                                             ; preds = %_ZN9RSCoder165gfInvEj.exit.i37
  %i.gr = xor i32 %i.fi, %i.gp
  %i.gs = load ptr, ptr %0, align 8, !tbaa !15
  %i.gt = load ptr, ptr %i.eq, align 8, !tbaa !16
  %i.gu = zext i32 %i.gr to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !17
  %i.gx = sub i32 65535, %i.gw
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !17
  br label %_ZN9RSCoder165gfInvEj.exit.i37.1

_ZN9RSCoder165gfInvEj.exit.i37.1:                 ; preds = %bb.w, %_ZN9RSCoder165gfInvEj.exit.i37
  %i.hb = phi i32 [ %i.ha, %bb.w ], [ 0, %_ZN9RSCoder165gfInvEj.exit.i37 ]
  %i.hc = add i32 %i.fj, %i.gp
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.hd
  store i32 %i.hb, ptr %i.he, align 4, !tbaa !17
  %i.hf = add nuw i32 %.010.i, 2                  ; 2 uses
  %niter91.next.1 = add i32 %niter91, 2           ; 2 uses
  %niter91.ncmp.1 = icmp eq i32 %niter91.next.1, %unroll_iter90
  br i1 %niter91.ncmp.1, label %._crit_edge.i38.loopexit.unr-lcssa, label %.lr.ph.i36, !llvm.loop !39

_ZN9RSCoder1617MakeEncoderMatrixEv.exit:          ; preds = %._crit_edge.i38, %.preheader, %.preheader.lr.ph.i, %bb.s, %_ZN9RSCoder1617MakeDecoderMatrixEv.exit, %._crit_edge61, %._crit_edge
  %.125 = phi i1 [ false, %._crit_edge ], [ false, %._crit_edge61 ], [ true, %_ZN9RSCoder1617MakeDecoderMatrixEv.exit ], [ true, %bb.s ], [ true, %.preheader.lr.ph.i ], [ false, %.preheader ], [ true, %._crit_edge.i38 ]
  ret i1 %.125
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN9RSCoder1617MakeDecoderMatrixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge24, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.b

._crit_edge24:                                    ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph23, %bb.d
  %i.h = phi i32 [ %i.b, %.lr.ph23 ], [ %i.am, %bb.d ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.01321 = phi i32 [ 0, %.lr.ph23 ], [ %.1, %bb.d ] ; 3 uses
  %.01420 = phi i32 [ %i.b, %.lr.ph23 ], [ %.2, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !24, !range !25, !noundef !26
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %.preheader17

.preheader17:                                     ; preds = %bb.b, %.preheader17
  %.115 = phi i32 [ %i.p, %.preheader17 ], [ %.01420, %bb.b ] ; 4 uses
  %i.l = zext i32 %.115 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24, !range !25, !noundef !26
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = add i32 %.115, 1                         ; 2 uses
  br i1 %i.o, label %.preheader, label %.preheader17, !llvm.loop !33

.preheader:                                       ; preds = %.preheader17
  %.not25 = icmp eq i32 %i.h, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.q = load ptr, ptr %0, align 8
  %i.r = load ptr, ptr %i.e, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN9RSCoder165gfInvEj.exit, %.preheader
  %i.s = phi i32 [ 0, %.preheader ], [ %i.ak, %_ZN9RSCoder165gfInvEj.exit ]
  %i.t = add i32 %.01321, 1
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN9RSCoder165gfInvEj.exit
  %i.u = phi i32 [ %i.ak, %_ZN9RSCoder165gfInvEj.exit ], [ %i.h, %.lr.ph.preheader ]
  %.018 = phi i32 [ %i.aj, %_ZN9RSCoder165gfInvEj.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.v = icmp eq i32 %.018, %.115
  br i1 %i.v, label %_ZN9RSCoder165gfInvEj.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.w = xor i32 %.018, %.115
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17
  %i.aa = sub i32 65535, %i.z
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !17
  br label %_ZN9RSCoder165gfInvEj.exit

_ZN9RSCoder165gfInvEj.exit:                       ; preds = %.lr.ph, %bb.c
  %i.ae = phi i32 [ %i.ad, %bb.c ], [ 0, %.lr.ph ]
  %i.af = mul i32 %i.u, %.01321
  %i.ag = add i32 %i.af, %.018
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ah
  store i32 %i.ae, ptr %i.ai, align 4, !tbaa !17
  %i.aj = add nuw i32 %.018, 1                    ; 2 uses
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !21  ; 3 uses
  %i.al = icmp ult i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !40

bb.d:                                             ; preds = %bb.b, %._crit_edge
  %i.am = phi i32 [ %i.h, %bb.b ], [ %i.s, %._crit_edge ] ; 2 uses
  %.2 = phi i32 [ %.01420, %bb.b ], [ %i.p, %._crit_edge ]
  %.1 = phi i32 [ %.01321, %bb.b ], [ %i.t, %._crit_edge ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp samesign ult i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge24, !llvm.loop !36
}

; Function Attrs: mustprogress uwtable
define void @_ZN9RSCoder1619InvertDecoderMatrixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = mul i32 %i.d, %i.b
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #9 ; 14 uses
  %1 = load i32, ptr %i.c, align 4, !tbaa !21     ; 6 uses
  %2 = load i32, ptr %i.a, align 4, !tbaa !23     ; 7 uses
  %3 = mul i32 %2, %1
  %4 = zext i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %5, i1 false)
  %.not99 = icmp eq i32 %2, 0
  br i1 %.not99, label %.preheader79, label %.preheader80.lr.ph

.preheader80.lr.ph:                               ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 3 uses
  %xtraiter = and i32 %2, 1
  %i.k = icmp eq i32 %2, 1
  br i1 %i.k, label %.preheader80.epil.preheader, label %.preheader80.lr.ph.new

.preheader80.lr.ph.new:                           ; preds = %.preheader80.lr.ph
  %unroll_iter = and i32 %2, -2
  br label %.preheader80

.preheader80:                                     ; preds = %bb.e, %.preheader80.lr.ph.new
  %.07382 = phi i32 [ 0, %.preheader80.lr.ph.new ], [ %i.am, %bb.e ]
  %.07581 = phi i32 [ 0, %.preheader80.lr.ph.new ], [ %i.ar, %bb.e ] ; 3 uses
  %niter = phi i32 [ 0, %.preheader80.lr.ph.new ], [ %niter.next.1, %bb.e ]
  br label %bb.c

.preheader79.loopexit.unr-lcssa:                  ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader79, label %.preheader80.epil.preheader

.preheader80.epil.preheader:                      ; preds = %.preheader79.loopexit.unr-lcssa, %.preheader80.lr.ph
  %.07382.epil.init = phi i32 [ 0, %.preheader80.lr.ph ], [ %i.am, %.preheader79.loopexit.unr-lcssa ]
  %.07581.epil.init = phi i32 [ 0, %.preheader80.lr.ph ], [ %i.ar, %.preheader79.loopexit.unr-lcssa ]
  %lcmp.mod174 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod174)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader80.epil.preheader
  %.174.epil = phi i32 [ %i.p, %bb.b ], [ %.07382.epil.init, %.preheader80.epil.preheader ] ; 3 uses
  %i.l = zext i32 %.174.epil to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24, !range !25, !noundef !26
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = add i32 %.174.epil, 1
  br i1 %i.o, label %bb.b, label %.preheader79.loopexit.epilog-lcssa, !llvm.loop !41

.preheader79.loopexit.epilog-lcssa:               ; preds = %bb.b
  %i.q = mul i32 %.07581.epil.init, %1
  %i.r = add i32 %.174.epil, %i.q
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.s
  store i32 1, ptr %i.t, align 4, !tbaa !17
  br label %.preheader79

.preheader79:                                     ; preds = %.preheader79.loopexit.epilog-lcssa, %.preheader79.loopexit.unr-lcssa, %bb.a
  %.not100 = icmp eq i32 %1, 0
  br i1 %.not100, label %._crit_edge98, label %.preheader78.lr.ph

.preheader78.lr.ph:                               ; preds = %.preheader79
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %.preheader78

bb.c:                                             ; preds = %bb.c, %.preheader80
  %.174 = phi i32 [ %i.ac, %bb.c ], [ %.07382, %.preheader80 ] ; 3 uses
  %i.y = zext i32 %.174 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24, !range !25, !noundef !26
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = add i32 %.174, 1                        ; 2 uses
  br i1 %i.ab, label %bb.c, label %.preheader80.1, !llvm.loop !41

.preheader80.1:                                   ; preds = %bb.c
  %i.ad = mul i32 %.07581, %1
  %i.ae = add i32 %.174, %i.ad
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.af
  store i32 1, ptr %i.ag, align 4, !tbaa !17
  %i.ah = or disjoint i32 %.07581, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader80.1
  %.174.1 = phi i32 [ %i.am, %bb.d ], [ %i.ac, %.preheader80.1 ] ; 3 uses
  %i.ai = zext i32 %.174.1 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !24, !range !25, !noundef !26
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = add i32 %.174.1, 1                      ; 3 uses
  br i1 %i.al, label %bb.d, label %bb.e, !llvm.loop !41

bb.e:                                             ; preds = %bb.d
  %i.an = mul i32 %i.ah, %1
  %i.ao = add i32 %.174.1, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ap
  store i32 1, ptr %i.aq, align 4, !tbaa !17
  %i.ar = add nuw i32 %.07581, 2                  ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader79.loopexit.unr-lcssa, label %.preheader80, !llvm.loop !42

.preheader78:                                     ; preds = %.preheader78.lr.ph, %._crit_edge
  %i.as = phi i32 [ %1, %.preheader78.lr.ph ], [ %i.fe, %._crit_edge ] ; 9 uses
  %i.at = phi i32 [ %2, %.preheader78.lr.ph ], [ %i.ff, %._crit_edge ] ; 4 uses
  %.07193 = phi i32 [ 0, %.preheader78.lr.ph ], [ %i.fh, %._crit_edge ] ; 5 uses
  %.07292 = phi i32 [ 0, %.preheader78.lr.ph ], [ %i.fg, %._crit_edge ] ; 3 uses
  %i.au = zext i32 %.07193 to i64                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !24, !range !25, !noundef !26
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %.preheader78
  %.not101 = icmp eq i32 %i.at, 0
  br i1 %.not101, label %.preheader, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.ay = load ptr, ptr %i.w, align 8, !tbaa !19  ; 6 uses
  %wide.trip.count = zext i32 %i.at to i64        ; 7 uses
  %i.az = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ba = zext i32 %.07193 to i64                 ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, %wide.trip.count
  %min.iters.check = icmp ult i32 %i.at, 12
  %ident.check = icmp ne i32 %i.as, 1
  %i.bc = trunc i64 %i.az to i32
  %i.bd = icmp ugt i64 %i.az, 4294967295
  %invariant.op = or i1 %i.bd, %ident.check
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter175 = and i64 %wide.trip.count, 1
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  %i.be = add nsw i64 %wide.trip.count, -1
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 3 uses
  %.184.us = phi i32 [ %i.cy, %._crit_edge.us ], [ %.07193, %.preheader.lr.ph.split.us ] ; 6 uses
  %i.bf = add i64 %indvar, %i.ba
  %i.bg = shl i64 %i.bf, 2                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.bg
  %i.bh = add i64 %i.bb, %indvar
  %i.bi = shl i64 %i.bh, 2                        ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.h, i64 %i.bi
  %scevgep159 = getelementptr i8, ptr %i.ay, i64 %i.bg
  %scevgep160 = getelementptr i8, ptr %i.ay, i64 %i.bi
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us
  %i.bj = xor i32 %.184.us, -1
  %i.bk = icmp ult i32 %i.bj, %i.bc
  %.reass = or i1 %i.bk, %invariant.op
  br i1 %.reass, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep160
  %bound1 = icmp ult ptr %scevgep159, %scevgep158
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.bl = trunc nuw i64 %index to i32
  %i.bm = add i32 %.184.us, %i.bl
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <4 x i32>, ptr %i.bo, align 4, !tbaa !17, !alias.scope !43
  %wide.load161 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !17, !alias.scope !43
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bn ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %wide.load162 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !17, !alias.scope !46, !noalias !43
  %wide.load163 = load <4 x i32>, ptr %i.br, align 4, !tbaa !17, !alias.scope !46, !noalias !43
  %i.bs = xor <4 x i32> %wide.load162, %wide.load
  %i.bt = xor <4 x i32> %wide.load163, %wide.load161
  store <4 x i32> %i.bs, ptr %i.bq, align 4, !tbaa !17, !alias.scope !46, !noalias !43
  store <4 x i32> %i.bt, ptr %i.br, align 4, !tbaa !17, !alias.scope !46, !noalias !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.us ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod176.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bv = trunc nuw i64 %indvars.iv.ph to i32
  %i.bw = mul i32 %i.as, %i.bv
  %i.bx = add i32 %i.bw, %.184.us
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !17
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.by ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !17
  %i.cd = xor i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !17
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ce = icmp eq i64 %indvars.iv.ph, %i.be
  br i1 %i.ce, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cf = trunc nuw i64 %indvars.iv to i32
  %i.cg = mul i32 %i.as, %i.cf
  %i.ch = add i32 %i.cg, %.184.us
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !17
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ci ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !17
  %i.cn = xor i32 %i.cm, %i.ck
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !17
  %i.co = trunc i64 %indvars.iv to i32
  %i.cp = add i32 %i.co, 1
  %i.cq = mul i32 %i.as, %i.cp
  %i.cr = add i32 %i.cq, %.184.us
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !17
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cs ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !17
  %i.cx = xor i32 %i.cw, %i.cu
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond112.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond112.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !49

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cy = add nuw i32 %.184.us, 1                 ; 4 uses
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !24, !range !25, !noundef !26
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = icmp ult i32 %i.cy, %i.as
  %or.cond.us = and i1 %i.dd, %i.dc
  %indvar.next = add i64 %indvar, 1
  br i1 %or.cond.us, label %.preheader.us, label %.critedge, !llvm.loop !50

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.184 = phi i32 [ %i.de, %.preheader ], [ %.07193, %.preheader.lr.ph ]
  %i.de = add nuw i32 %.184, 1                    ; 4 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !24, !range !25, !noundef !26
  %i.di = trunc nuw i8 %i.dh to i1
  %i.dj = icmp ult i32 %i.de, %i.as
  %or.cond = and i1 %i.dj, %i.di
  br i1 %or.cond, label %.preheader, label %.critedge, !llvm.loop !50

.critedge:                                        ; preds = %._crit_edge.us, %.preheader, %.preheader78
  %.1.lcssa = phi i32 [ %.07193, %.preheader78 ], [ %i.de, %.preheader ], [ %i.cy, %._crit_edge.us ] ; 2 uses
  %.lcssa = phi i64 [ %i.au, %.preheader78 ], [ %i.df, %.preheader ], [ %i.cz, %._crit_edge.us ] ; 2 uses
  %i.dk = icmp eq i32 %.1.lcssa, %i.as
  br i1 %i.dk, label %.critedge._crit_edge, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.dl = load ptr, ptr %i.w, align 8, !tbaa !19  ; 2 uses
  %i.dm = mul i32 %i.as, %.07292
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dn ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dn ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.lcssa
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !17 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dt = load ptr, ptr %0, align 8, !tbaa !15
  %i.du = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.dv = zext i32 %i.dr to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !17
  %i.dy = sub i32 65535, %i.dx
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !17
  %i.ec = zext i32 %i.eb to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.f
  %i.ed = phi i64 [ %i.ec, %bb.g ], [ 0, %bb.f ]
  %i.ee = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ef = load ptr, ptr %i.x, align 8, !tbaa !16  ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ed ; 2 uses
  %.pre = load i32, ptr %i.eg, align 4, !tbaa !17
  br label %bb.h

.preheader77:                                     ; preds = %bb.h
  %.pre122 = load i32, ptr %i.a, align 4, !tbaa !23 ; 2 uses
  %.not103 = icmp eq i32 %.pre122, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph91

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %i.eh = phi i32 [ %.pre, %.lr.ph ], [ %i.ew, %bb.h ]
  %indvars.iv113 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next114, %bb.h ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv113 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !17
  %i.ek = zext i32 %i.ej to i64
end_hunk_0
