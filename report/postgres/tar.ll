Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tar?download=true
inline.NumInlined: 12
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.4 = private unnamed_addr constant [6 x i8] c"ustar\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"postgres\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @print_tar_number(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = add i32 %i.a, -3
  %i.c = zext nneg i32 %i.b to i64
  %.highbits = lshr i64 %2, %i.c
  %i.d = icmp eq i64 %.highbits, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %1, -1                           ; 4 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  store i8 32, ptr %i.g, align 1
  %.not21 = icmp eq i32 %i.e, 0
  br i1 %.not21, label %.loopexit, label %.lr.ph24.preheader

.lr.ph24.preheader:                               ; preds = %bb.b
  %xtraiter.a = and i32 %i.e, 1
  %lcmp.mod.not.a = icmp eq i32 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %.lr.ph24.prol.loopexit, label %.lr.ph24.prol

.lr.ph24.prol:                                    ; preds = %.lr.ph24.preheader
  %i.h = trunc i64 %2 to i8
  %i.i = and i8 %i.h, 7
  %i.j = or disjoint i8 %i.i, 48
  %i.k = add i32 %1, -2                           ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  store i8 %i.j, ptr %i.m, align 1
  %i.n = lshr i64 %2, 3
  br label %.lr.ph24.prol.loopexit

.lr.ph24.prol.loopexit:                           ; preds = %.lr.ph24.prol, %.lr.ph24.preheader
  %.023.unr = phi i64 [ %2, %.lr.ph24.preheader ], [ %i.n, %.lr.ph24.prol ]
  %.01422.unr = phi i32 [ %i.e, %.lr.ph24.preheader ], [ %i.k, %.lr.ph24.prol ]
  %i.o = icmp eq i32 %1, 2
  br i1 %i.o, label %.loopexit, label %.lr.ph24

.lr.ph24:                                         ; preds = %.lr.ph24.prol.loopexit, %.lr.ph24
  %.023 = phi i64 [ %i.ac, %.lr.ph24 ], [ %.023.unr, %.lr.ph24.prol.loopexit ] ; 3 uses
  %.01422 = phi i32 [ %i.z, %.lr.ph24 ], [ %.01422.unr, %.lr.ph24.prol.loopexit ] ; 2 uses
  %i.p = trunc i64 %.023 to i8
  %i.q = and i8 %i.p, 7
  %i.r = or disjoint i8 %i.q, 48
  %i.s = add i32 %.01422, -1
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  store i8 %i.r, ptr %i.u, align 1
  %i.v = lshr i64 %.023, 3
  %i.w = trunc i64 %i.v to i8
  %i.x = and i8 %i.w, 7
  %i.y = or disjoint i8 %i.x, 48
  %i.z = add i32 %.01422, -2                      ; 3 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa
  store i8 %i.y, ptr %i.ab, align 1
  %i.ac = lshr i64 %.023, 6
  %.not.1 = icmp eq i32 %i.z, 0
  br i1 %.not.1, label %.loopexit, label %.lr.ph24, !llvm.loop !6

bb.c:                                             ; preds = %bb.a
  store i8 -128, ptr %0, align 1
  %i.ad = icmp sgt i32 %1, 1
  br i1 %i.ad, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.ae, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.120 = phi i64 [ %2, %.lr.ph.preheader ], [ %i.ah, %.lr.ph ] ; 2 uses
  %i.af = trunc i64 %.120 to i8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = lshr i64 %.120, 8
  %3 = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %3, label %.lr.ph, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph24.prol.loopexit, %.lr.ph24, %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @read_tar_number(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp eq i8 %i.a, -128
  br i1 %i.b, label %.preheader, label %.preheader19

.preheader19:                                     ; preds = %bb.a
  %.not21 = icmp eq i32 %1, 0
  br i1 %.not21, label %.critedge, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  %i.c = add i32 %1, -1                           ; 3 uses
  %.not1826 = icmp eq i32 %i.c, 0
  br i1 %.not1826, label %.critedge, label %.lr.ph29.preheader

.lr.ph29.preheader:                               ; preds = %.preheader
  %i.d = add i32 %1, -2
  %xtraiter = and i32 %i.c, 3                     ; 3 uses
  %i.e = icmp ult i32 %i.d, 3
  br i1 %i.e, label %.lr.ph29.epil.preheader, label %.lr.ph29.preheader.new

.lr.ph29.preheader.new:                           ; preds = %.lr.ph29.preheader
  %unroll_iter = and i32 %i.c, -4
  br label %.lr.ph29

.lr.ph29:                                         ; preds = %.lr.ph29, %.lr.ph29.preheader.new
  %.028 = phi i64 [ 0, %.lr.ph29.preheader.new ], [ %i.y, %.lr.ph29 ]
  %.01427 = phi ptr [ %0, %.lr.ph29.preheader.new ], [ %i.v, %.lr.ph29 ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph29.preheader.new ], [ %niter.next.3, %.lr.ph29 ]
  %i.f = getelementptr inbounds nuw i8, ptr %.01427, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i64
  %i.i = shl i64 %.028, 16
  %i.j = shl nuw nsw i64 %i.h, 8
  %i.k = or disjoint i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.01427, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = or disjoint i64 %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.01427, i64 3
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = shl i64 %i.o, 16
  %i.t = shl nuw nsw i64 %i.r, 8
  %i.u = or disjoint i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.01427, i64 4 ; 3 uses
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = or disjoint i64 %i.u, %i.x               ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %.lr.ph29, !llvm.loop !8

.lr.ph:                                           ; preds = %.preheader19, %bb.b
  %.in = phi i32 [ %i.ab, %bb.b ], [ %1, %.preheader19 ]
  %.123 = phi i64 [ %i.ae, %bb.b ], [ 0, %.preheader19 ] ; 2 uses
  %.11522 = phi ptr [ %i.af, %bb.b ], [ %0, %.preheader19 ] ; 2 uses
  %i.z = load i8, ptr %.11522, align 1            ; 2 uses
  %i.aa = and i8 %i.z, -8
  %or.cond = icmp eq i8 %i.aa, 48
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.ab = add i32 %.in, -1                        ; 2 uses
  %i.ac = shl i64 %.123, 3
  %narrow = add nsw i8 %i.z, -48
  %i.ad = zext nneg i8 %narrow to i64
  %i.ae = or disjoint i64 %i.ac, %i.ad            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.11522, i64 1
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !9

.critedge.loopexit.unr-lcssa:                     ; preds = %.lr.ph29
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.lr.ph29.epil.preheader

.lr.ph29.epil.preheader:                          ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph29.preheader
  %.028.epil.init = phi i64 [ 0, %.lr.ph29.preheader ], [ %i.y, %.critedge.loopexit.unr-lcssa ]
  %.01427.epil.init = phi ptr [ %0, %.lr.ph29.preheader ], [ %i.v, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph29.epil

.lr.ph29.epil:                                    ; preds = %.lr.ph29.epil, %.lr.ph29.epil.preheader
  %.028.epil = phi i64 [ %i.ak, %.lr.ph29.epil ], [ %.028.epil.init, %.lr.ph29.epil.preheader ]
  %.01427.epil = phi ptr [ %i.ah, %.lr.ph29.epil ], [ %.01427.epil.init, %.lr.ph29.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph29.epil ], [ 0, %.lr.ph29.epil.preheader ]
  %i.ag = shl i64 %.028.epil, 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.01427.epil, i64 1 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = or disjoint i64 %i.ag, %i.aj            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %.lr.ph29.epil, !llvm.loop !10

.critedge:                                        ; preds = %.lr.ph, %bb.b, %.critedge.loopexit.unr-lcssa, %.lr.ph29.epil, %.preheader19, %.preheader
  %.2 = phi i64 [ %i.ak, %.lr.ph29.epil ], [ 0, %.preheader ], [ 0, %.preheader19 ], [ %i.y, %.critedge.loopexit.unr-lcssa ], [ %.123, %.lr.ph ], [ %i.ae, %bb.b ]
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @tarChecksum(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.f ] ; 5 uses
  %.010 = phi i32 [ 256, %bb.a ], [ %.1.1, %bb.f ] ; 2 uses
  %i.a = trunc i64 %indvars.iv to i32
  %i.b = add nsw i32 %i.a, -156
  %or.cond = icmp ult i32 %i.b, -8
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = add i32 %.010, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %i.f, %bb.c ], [ %.010, %bb.b ] ; 2 uses
  %i.g = trunc i64 %indvars.iv to i32
  %i.h = add nsw i32 %i.g, -156
  %or.cond.1 = icmp ult i32 %i.h, -8
  br i1 %or.cond.1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = add i32 %.1, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i32 [ %i.m, %bb.e ], [ %.1, %bb.d ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 512
  br i1 %exitcond.not.1, label %bb.g, label %bb.b, !llvm.loop !0

bb.g:                                             ; preds = %bb.f
  ret i32 %.1.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i1 @isValidTarHeader(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.f ] ; 5 uses
  %.010.i = phi i32 [ 256, %bb.a ], [ %.1.i.1, %bb.f ] ; 2 uses
  %i.a = trunc i64 %indvars.iv.i to i32
  %i.b = add nsw i32 %i.a, -156
  %or.cond.i = icmp ult i32 %i.b, -8
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = add i32 %.010.i, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i32 [ %i.f, %bb.c ], [ %.010.i, %bb.b ] ; 2 uses
  %i.g = trunc i64 %indvars.iv.i to i32
  %i.h = add nsw i32 %i.g, -156
  %or.cond.i.1 = icmp ult i32 %i.h, -8
  br i1 %or.cond.i.1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = add i32 %.1.i, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i.1 = phi i32 [ %i.m, %bb.e ], [ %.1.i, %bb.d ] ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 512
  br i1 %exitcond.not.i.1, label %tarChecksum.exit, label %bb.b, !llvm.loop !0

tarChecksum.exit:                                 ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.o = load i8, ptr %i.n, align 1               ; 3 uses
  %i.p = icmp eq i8 %i.o, -128
  br i1 %i.p, label %.lr.ph29.i.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %tarChecksum.exit
  %i.q = and i8 %i.o, -8
  %or.cond.i11 = icmp eq i8 %i.q, 48
  br i1 %or.cond.i11, label %.lr.ph.i.1, label %read_tar_number.exit

.lr.ph29.i.preheader:                             ; preds = %tarChecksum.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.t, 16
  %i.y = shl nuw nsw i32 %i.w, 8
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 154
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.z, %i.ac
  %i.ae = shl nuw i32 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 155
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah
  br label %read_tar_number.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %narrow.i = add nsw i8 %i.o, -48
  %i.aj = zext nneg i8 %narrow.i to i32           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.al = load i8, ptr %i.ak, align 1             ; 2 uses
  %i.am = and i8 %i.al, -8
  %or.cond.i11.1 = icmp eq i8 %i.am, 48
  br i1 %or.cond.i11.1, label %.lr.ph.i.2, label %read_tar_number.exit

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.an = shl nuw nsw i32 %i.aj, 3
  %narrow.i.1 = add nsw i8 %i.al, -48
  %i.ao = zext nneg i8 %narrow.i.1 to i32
  %i.ap = or disjoint i32 %i.an, %i.ao            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 150
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  %i.as = and i8 %i.ar, -8
  %or.cond.i11.2 = icmp eq i8 %i.as, 48
  br i1 %or.cond.i11.2, label %.lr.ph.i.3, label %read_tar_number.exit

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.at = shl nuw nsw i32 %i.ap, 3
  %narrow.i.2 = add nsw i8 %i.ar, -48
  %i.au = zext nneg i8 %narrow.i.2 to i32
  %i.av = or disjoint i32 %i.at, %i.au            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 151
  %i.ax = load i8, ptr %i.aw, align 1             ; 2 uses
  %i.ay = and i8 %i.ax, -8
  %or.cond.i11.3 = icmp eq i8 %i.ay, 48
  br i1 %or.cond.i11.3, label %.lr.ph.i.4, label %read_tar_number.exit

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.az = shl nuw nsw i32 %i.av, 3
  %narrow.i.3 = add nsw i8 %i.ax, -48
  %i.ba = zext nneg i8 %narrow.i.3 to i32
  %i.bb = or disjoint i32 %i.az, %i.ba            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %i.be = and i8 %i.bd, -8
  %or.cond.i11.4 = icmp eq i8 %i.be, 48
  br i1 %or.cond.i11.4, label %.lr.ph.i.5, label %read_tar_number.exit

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.bf = shl nuw nsw i32 %i.bb, 3
  %narrow.i.4 = add nsw i8 %i.bd, -48
  %i.bg = zext nneg i8 %narrow.i.4 to i32
  %i.bh = or disjoint i32 %i.bf, %i.bg            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.bj = load i8, ptr %i.bi, align 1             ; 2 uses
  %i.bk = and i8 %i.bj, -8
  %or.cond.i11.5 = icmp eq i8 %i.bk, 48
  br i1 %or.cond.i11.5, label %.lr.ph.i.6, label %read_tar_number.exit

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.bl = shl nuw nsw i32 %i.bh, 3
  %narrow.i.5 = add nsw i8 %i.bj, -48
  %i.bm = zext nneg i8 %narrow.i.5 to i32
  %i.bn = or disjoint i32 %i.bl, %i.bm            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 154
  %i.bp = load i8, ptr %i.bo, align 1             ; 2 uses
  %i.bq = and i8 %i.bp, -8
  %or.cond.i11.6 = icmp eq i8 %i.bq, 48
  br i1 %or.cond.i11.6, label %.lr.ph.i.7, label %read_tar_number.exit

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.6
  %i.br = shl nuw nsw i32 %i.bn, 3
  %narrow.i.6 = add nsw i8 %i.bp, -48
  %i.bs = zext nneg i8 %narrow.i.6 to i32
  %i.bt = or disjoint i32 %i.br, %i.bs            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 155
  %i.bv = load i8, ptr %i.bu, align 1             ; 2 uses
  %i.bw = and i8 %i.bv, -8
  %or.cond.i11.7 = icmp eq i8 %i.bw, 48
  br i1 %or.cond.i11.7, label %bb.g, label %read_tar_number.exit

bb.g:                                             ; preds = %.lr.ph.i.7
end_hunk_0
begin_hunk_1_@tarCreateHeader:bb.a
  store i8 %i.hz, ptr %i.ia, align 1
  %i.ib = lshr i64 %7, 56
  %i.ic = trunc nuw i64 %i.ib to i8
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 %i.ic, ptr %i.id, align 1
  store <4 x i8> <i8 -128, i8 0, i8 0, i8 0>, ptr %i.fw, align 1
  br label %print_tar_number.exit93

print_tar_number.exit93:                          ; preds = %.lr.ph.i85, %.lr.ph24.i89
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %print_tar_number.exit93
  store i8 50, ptr %i.ie, align 1
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 157
  %i.ig = tail call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.if, ptr noundef nonnull dereferenceable(1) %2, i64 noundef 100) #10 ; 0 uses
  br label %print_tar_number.exit98

bb.h:                                             ; preds = %print_tar_number.exit93
  br i1 %i.dm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 53, ptr %i.ie, align 1
  br label %print_tar_number.exit98

bb.j:                                             ; preds = %bb.h
  store i8 48, ptr %i.ie, align 1
  br label %print_tar_number.exit98

print_tar_number.exit98:                          ; preds = %bb.i, %bb.j, %bb.g
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 257
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ih, ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 6, i1 false) #10
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 263
  store i16 12336, ptr %i.ii, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 265
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ij, ptr noundef nonnull align 1 dereferenceable(9) @.str.5, i64 noundef 9, i1 false) #10
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 297
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ik, ptr noundef nonnull align 1 dereferenceable(9) @.str.5, i64 noundef 9, i1 false) #10
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 329
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i8 32, ptr %i.im, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.il, i8 48, i64 7, i1 false)
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 337
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 32, ptr %i.io, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.in, i8 48, i64 7, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %print_tar_number.exit98
  %indvars.iv.i104 = phi i64 [ 0, %print_tar_number.exit98 ], [ %indvars.iv.next.i105.1, %bb.o ] ; 5 uses
  %.010.i = phi i32 [ 256, %print_tar_number.exit98 ], [ %.1.i.1, %bb.o ] ; 2 uses
  %i.ip = trunc i64 %indvars.iv.i104 to i32
  %i.iq = add nsw i32 %i.ip, -156
  %or.cond.i = icmp ult i32 %i.iq, -8
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i104
  %i.is = load i8, ptr %i.ir, align 1
  %i.it = zext i8 %i.is to i32
  %i.iu = add i32 %.010.i, %i.it
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i = phi i32 [ %i.iu, %bb.l ], [ %.010.i, %bb.k ] ; 2 uses
  %i.iv = trunc i64 %indvars.iv.i104 to i32
  %i.iw = add nsw i32 %i.iv, -156
  %or.cond.i.1 = icmp ult i32 %i.iw, -8
  br i1 %or.cond.i.1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i104
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 1
  %i.iz = load i8, ptr %i.iy, align 1
  %i.ja = zext i8 %i.iz to i32
  %i.jb = add i32 %.1.i, %i.ja
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.i.1 = phi i32 [ %i.jb, %bb.n ], [ %.1.i, %bb.m ] ; 14 uses
  %indvars.iv.next.i105.1 = add nuw nsw i64 %indvars.iv.i104, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i105.1, 512
  br i1 %exitcond.not.i.1, label %tarChecksum.exit, label %bb.k, !llvm.loop !0

tarChecksum.exit:                                 ; preds = %bb.o
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.jd = icmp ult i32 %.1.i.1, 2097152
  %i.je = trunc i32 %.1.i.1 to i8                 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 153 ; 2 uses
  br i1 %i.jd, label %.lr.ph24.i111, label %.lr.ph.i107

.lr.ph24.i111:                                    ; preds = %tarChecksum.exit
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 155
  store i8 32, ptr %i.jg, align 1
  %i.jh = and i8 %i.je, 7
  %i.ji = or disjoint i8 %i.jh, 48
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 %i.ji, ptr %i.jj, align 1
  %i.jk = trunc i32 %.1.i.1 to i8
  %i.jl = lshr i8 %i.jk, 3
  %i.jm = and i8 %i.jl, 7
  %i.jn = or disjoint i8 %i.jm, 48
  store i8 %i.jn, ptr %i.jf, align 1
  %i.jo = lshr i32 %.1.i.1, 6
  %i.jp = trunc i32 %i.jo to i8
  %i.jq = and i8 %i.jp, 7
  %i.jr = or disjoint i8 %i.jq, 48
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 %i.jr, ptr %i.js, align 1
  %i.jt = lshr i32 %.1.i.1, 9
  %i.ju = lshr i32 %.1.i.1, 12
  %i.jv = lshr i32 %.1.i.1, 15
  %i.jw = lshr i32 %.1.i.1, 18
  %i.jx = trunc i32 %i.jt to i8
  %i.jy = trunc i32 %i.ju to i8
  %i.jz = trunc nuw nsw i32 %i.jv to i8
  %i.ka = trunc nuw nsw i32 %i.jw to i8
  %i.kb = insertelement <4 x i8> poison, i8 %i.ka, i64 0
  %i.kc = insertelement <4 x i8> %i.kb, i8 %i.jz, i64 1
  %i.kd = insertelement <4 x i8> %i.kc, i8 %i.jy, i64 2
  %i.ke = insertelement <4 x i8> %i.kd, i8 %i.jx, i64 3
  %i.kf = and <4 x i8> %i.ke, <i8 -1, i8 7, i8 7, i8 7>
  %i.kg = or disjoint <4 x i8> %i.kf, splat (i8 48)
  store <4 x i8> %i.kg, ptr %i.jc, align 1
  br label %print_tar_number.exit115

.lr.ph.i107:                                      ; preds = %tarChecksum.exit
  %i.kh = sext i32 %.1.i.1 to i64                 ; 2 uses
  store i8 -128, ptr %i.jc, align 1
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 155
  store i8 %i.je, ptr %i.ki, align 1
  %i.kj = lshr i32 %.1.i.1, 8
  %i.kk = trunc i32 %i.kj to i8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 %i.kk, ptr %i.kl, align 1
  %i.km = lshr i32 %.1.i.1, 16
  %i.kn = trunc i32 %i.km to i8
  store i8 %i.kn, ptr %i.jf, align 1
  %i.ko = lshr i32 %.1.i.1, 24
  %i.kp = trunc nuw i32 %i.ko to i8
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 %i.kp, ptr %i.kq, align 1
  %i.kr = ashr i32 %.1.i.1, 31
  %i.ks = trunc nsw i32 %i.kr to i8
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 151
  store i8 %i.ks, ptr %i.kt, align 1
  %i.ku = lshr i64 %i.kh, 40
  %i.kv = trunc i64 %i.ku to i8
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 150
  store i8 %i.kv, ptr %i.kw, align 1
  %i.kx = lshr i64 %i.kh, 48
  %i.ky = trunc i64 %i.kx to i8
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 149
  store i8 %i.ky, ptr %i.kz, align 1
  br label %print_tar_number.exit115

print_tar_number.exit115:                         ; preds = %.lr.ph.i107, %.lr.ph24.i111, %bb.c, %bb.a
  %.0 = phi i32 [ 2, %bb.c ], [ 1, %bb.a ], [ 0, %.lr.ph24.i111 ], [ 0, %.lr.ph.i107 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
