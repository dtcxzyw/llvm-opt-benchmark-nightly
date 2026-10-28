Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg-runtime-gvec?download=true
inline.NumInlined: 387
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 49
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_add8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check16 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load17 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load18 = load <16 x i8>, ptr %i.p, align 1
  %wide.load19 = load <16 x i8>, ptr %i.q, align 1
  %i.r = add <16 x i8> %wide.load18, %wide.load
  %i.s = add <16 x i8> %wide.load19, %wide.load17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1
  store <16 x i8> %i.s, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index21
  %wide.load22 = load <8 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %index21
  %wide.load23 = load <8 x i8>, ptr %i.x, align 1
  %i.y = add <8 x i8> %wide.load23, %wide.load22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index21
  store <8 x i8> %i.y, ptr %i.z, align 1
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next24, %i.g
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.013 = phi i64 [ %.013.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bc, %vec.epilog.scalar.ph ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = add i8 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = or disjoint i64 %.013, 1                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = add i8 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = or disjoint i64 %.013, 2                ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %i.ao
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = add i8 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  store i8 %i.at, ptr %i.au, align 1
  %i.av = or disjoint i64 %.013, 3                ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = add i8 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = add nuw nsw i64 %.013, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bc, %i.g
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !18

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.bd = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bd, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.be = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.be, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_add16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow26 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow26 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check16 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load17 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load18 = load <8 x i16>, ptr %i.t, align 2
  %wide.load19 = load <8 x i16>, ptr %i.u, align 2
  %i.v = add <8 x i16> %wide.load18, %wide.load
  %i.w = add <8 x i16> %wide.load19, %wide.load17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <8 x i16> %i.v, ptr %i.x, align 2
  store <8 x i16> %i.w, ptr %i.y, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.aa = shl nuw i64 %index21, 1                 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %wide.load22 = load <4 x i16>, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa
  %wide.load23 = load <4 x i16>, ptr %i.ac, align 2
  %i.ad = add <4 x i16> %wide.load23, %wide.load22
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store <4 x i16> %i.ad, ptr %i.ae, align 2
  %index.next24 = add nuw i64 %index21, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next24, %i.i
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.013 = phi i64 [ %i.am, %vec.epilog.scalar.ph ], [ %.013.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = add i16 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = add nuw nsw i64 %.013, 2                ; 2 uses
  %i.an = icmp samesign ult i64 %i.am, %i.g
  br i1 %i.an, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ao = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ao, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ap = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ap, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_add32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow20 = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow20 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check16 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load17 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load18 = load <4 x i32>, ptr %i.s, align 4
  %wide.load19 = load <4 x i32>, ptr %i.t, align 4
  %i.u = add <4 x i32> %wide.load18, %wide.load
  %i.v = add <4 x i32> %wide.load19, %wide.load17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %i.u, ptr %i.w, align 4
  store <4 x i32> %i.v, ptr %i.x, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.013.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.013 = phi i64 [ %i.af, %scalar.ph ], [ %.013.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = add i32 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = add nuw nsw i64 %.013, 4                ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, %i.g
  br i1 %i.ag, label %scalar.ph, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ah = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ah, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ai = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ai, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_add64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow20 = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow20 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 88
end_hunk_0
begin_hunk_1_@helper_gvec_adds16:iter.check
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = add i16 %i.ad, %i.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i16 %i.ae, ptr %i.af, align 2
  %i.ag = add nuw nsw i64 %.012, 2                ; 2 uses
  %i.ah = icmp samesign ult i64 %i.ag, %i.g
  br i1 %i.ah, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ai = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ai, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.aj = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aj, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_adds32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = trunc i64 %2 to i32                      ; 2 uses
  %i.i = lshr exact i32 %.v.v.i, 2
  %narrow15 = add nuw nsw i32 %i.i, 2
  %i.j = zext nneg i32 %narrow15 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  %i.k = ptrtoaddr ptr %0 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.j, 1073741816               ; 3 uses
  %i.n = shl nuw nsw i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl nuw i64 %index, 2                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <4 x i32>, ptr %i.p, align 4
  %wide.load14 = load <4 x i32>, ptr %i.q, align 4
  %i.r = add <4 x i32> %wide.load, %broadcast.splat
  %i.s = add <4 x i32> %wide.load14, %broadcast.splat
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %i.r, ptr %i.t, align 4
  store <4 x i32> %i.s, ptr %i.u, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.j
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.012.ph = phi i64 [ 0, %bb.a ], [ %i.n, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.012 = phi i64 [ %i.aa, %scalar.ph ], [ %.012.ph, %scalar.ph.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.x = load i32, ptr %i.w, align 4
  %i.y = add i32 %i.x, %i.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = add nuw nsw i64 %.012, 4                ; 2 uses
  %i.ab = icmp samesign ult i64 %i.aa, %i.g
  br i1 %i.ab, label %scalar.ph, label %.loopexit, !llvm.loop !33

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ac = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ac, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ad = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ad, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_adds64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow15 = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow15 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
  %i.m = shl nuw nsw i64 %n.vec, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl nuw i64 %index, 3                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8
  %wide.load14 = load <2 x i64>, ptr %i.p, align 8
  %i.q = add <2 x i64> %wide.load, %broadcast.splat
  %i.r = add <2 x i64> %wide.load14, %broadcast.splat
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x i64> %i.q, ptr %i.s, align 8
  store <2 x i64> %i.r, ptr %i.t, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.012.ph = phi i64 [ 0, %bb.a ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.012 = phi i64 [ %i.z, %scalar.ph ], [ %.012.ph, %scalar.ph.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.w = load i64, ptr %i.v, align 8
  %i.x = add i64 %i.w, %2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i64 %i.x, ptr %i.y, align 8
  %i.z = add nuw nsw i64 %.012, 8                 ; 2 uses
  %i.aa = icmp samesign ult i64 %i.z, %i.g
  br i1 %i.aa, label %scalar.ph, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ab = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ab, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ac = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ac, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sub8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check16 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load17 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load18 = load <16 x i8>, ptr %i.p, align 1
  %wide.load19 = load <16 x i8>, ptr %i.q, align 1
  %i.r = sub <16 x i8> %wide.load, %wide.load18
  %i.s = sub <16 x i8> %wide.load17, %wide.load19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1
  store <16 x i8> %i.s, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index21
  %wide.load22 = load <8 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %index21
  %wide.load23 = load <8 x i8>, ptr %i.x, align 1
  %i.y = sub <8 x i8> %wide.load22, %wide.load23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index21
  store <8 x i8> %i.y, ptr %i.z, align 1
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next24, %i.g
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.013 = phi i64 [ %.013.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bc, %vec.epilog.scalar.ph ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = sub i8 %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = or disjoint i64 %.013, 1                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = sub i8 %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = or disjoint i64 %.013, 2                ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %i.ao
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = sub i8 %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  store i8 %i.at, ptr %i.au, align 1
  %i.av = or disjoint i64 %.013, 3                ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = sub i8 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = add nuw nsw i64 %.013, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bc, %i.g
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.bd = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bd, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.be = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.be, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sub16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow26 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow26 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check16 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load17 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load18 = load <8 x i16>, ptr %i.t, align 2
  %wide.load19 = load <8 x i16>, ptr %i.u, align 2
  %i.v = sub <8 x i16> %wide.load, %wide.load18
  %i.w = sub <8 x i16> %wide.load17, %wide.load19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <8 x i16> %i.v, ptr %i.x, align 2
  store <8 x i16> %i.w, ptr %i.y, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.aa = shl nuw i64 %index21, 1                 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %wide.load22 = load <4 x i16>, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa
  %wide.load23 = load <4 x i16>, ptr %i.ac, align 2
  %i.ad = sub <4 x i16> %wide.load22, %wide.load23
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store <4 x i16> %i.ad, ptr %i.ae, align 2
  %index.next24 = add nuw i64 %index21, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next24, %i.i
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.013 = phi i64 [ %i.am, %vec.epilog.scalar.ph ], [ %.013.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = sub i16 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = add nuw nsw i64 %.013, 2                ; 2 uses
  %i.an = icmp samesign ult i64 %i.am, %i.g
  br i1 %i.an, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !41

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ao = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ao, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ap = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ap, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sub32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow20 = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow20 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check16 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load17 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load18 = load <4 x i32>, ptr %i.s, align 4
  %wide.load19 = load <4 x i32>, ptr %i.t, align 4
  %i.u = sub <4 x i32> %wide.load, %wide.load18
  %i.v = sub <4 x i32> %wide.load17, %wide.load19
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %i.u, ptr %i.w, align 4
  store <4 x i32> %i.v, ptr %i.x, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.013.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.013 = phi i64 [ %i.af, %scalar.ph ], [ %.013.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = sub i32 %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = add nuw nsw i64 %.013, 4                ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, %i.g
  br i1 %i.ag, label %scalar.ph, label %.loopexit, !llvm.loop !43

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ah = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ah, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ai = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ai, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sub64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow20 = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow20 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 88
end_hunk_1
begin_hunk_2_@helper_gvec_subs16:iter.check
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = sub i16 %i.ad, %i.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i16 %i.ae, ptr %i.af, align 2
  %i.ag = add nuw nsw i64 %.012, 2                ; 2 uses
  %i.ah = icmp samesign ult i64 %i.ag, %i.g
  br i1 %i.ah, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ai = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ai, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.aj = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aj, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_subs32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = trunc i64 %2 to i32                      ; 2 uses
  %i.i = lshr exact i32 %.v.v.i, 2
  %narrow15 = add nuw nsw i32 %i.i, 2
  %i.j = zext nneg i32 %narrow15 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  %i.k = ptrtoaddr ptr %0 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.j, 1073741816               ; 3 uses
  %i.n = shl nuw nsw i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl nuw i64 %index, 2                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <4 x i32>, ptr %i.p, align 4
  %wide.load14 = load <4 x i32>, ptr %i.q, align 4
  %i.r = sub <4 x i32> %wide.load, %broadcast.splat
  %i.s = sub <4 x i32> %wide.load14, %broadcast.splat
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %i.r, ptr %i.t, align 4
  store <4 x i32> %i.s, ptr %i.u, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.j
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.012.ph = phi i64 [ 0, %bb.a ], [ %i.n, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.012 = phi i64 [ %i.aa, %scalar.ph ], [ %.012.ph, %scalar.ph.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.x = load i32, ptr %i.w, align 4
  %i.y = sub i32 %i.x, %i.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = add nuw nsw i64 %.012, 4                ; 2 uses
  %i.ab = icmp samesign ult i64 %i.aa, %i.g
  br i1 %i.ab, label %scalar.ph, label %.loopexit, !llvm.loop !53

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ac = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ac, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ad = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ad, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_subs64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow15 = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow15 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  %i.j = ptrtoaddr ptr %0 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
  %i.m = shl nuw nsw i64 %n.vec, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl nuw i64 %index, 3                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8
  %wide.load14 = load <2 x i64>, ptr %i.p, align 8
  %i.q = sub <2 x i64> %wide.load, %broadcast.splat
  %i.r = sub <2 x i64> %wide.load14, %broadcast.splat
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x i64> %i.q, ptr %i.s, align 8
  store <2 x i64> %i.r, ptr %i.t, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.012.ph = phi i64 [ 0, %bb.a ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.012 = phi i64 [ %i.z, %scalar.ph ], [ %.012.ph, %scalar.ph.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.w = load i64, ptr %i.v, align 8
  %i.x = sub i64 %i.w, %2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i64 %i.x, ptr %i.y, align 8
  %i.z = add nuw nsw i64 %.012, 8                 ; 2 uses
  %i.aa = icmp samesign ult i64 %i.z, %i.g
  br i1 %i.aa, label %scalar.ph, label %.loopexit, !llvm.loop !55

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ab = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ab, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ac = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ac, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_mul8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check16 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load17 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load18 = load <16 x i8>, ptr %i.p, align 1
  %wide.load19 = load <16 x i8>, ptr %i.q, align 1
  %i.r = mul <16 x i8> %wide.load18, %wide.load
  %i.s = mul <16 x i8> %wide.load19, %wide.load17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1
  store <16 x i8> %i.s, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index21
  %wide.load22 = load <8 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %index21
  %wide.load23 = load <8 x i8>, ptr %i.x, align 1
  %i.y = mul <8 x i8> %wide.load23, %wide.load22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index21
  store <8 x i8> %i.y, ptr %i.z, align 1
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next24, %i.g
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.013 = phi i64 [ %.013.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bc, %vec.epilog.scalar.ph ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = mul i8 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = or disjoint i64 %.013, 1                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = mul i8 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = or disjoint i64 %.013, 2                ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %i.ao
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = mul i8 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  store i8 %i.at, ptr %i.au, align 1
  %i.av = or disjoint i64 %.013, 3                ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = mul i8 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = add nuw nsw i64 %.013, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bc, %i.g
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.bd = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bd, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.be = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.be, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_mul16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow26 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow26 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check16 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load17 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load18 = load <8 x i16>, ptr %i.t, align 2
  %wide.load19 = load <8 x i16>, ptr %i.u, align 2
  %i.v = mul <8 x i16> %wide.load18, %wide.load
  %i.w = mul <8 x i16> %wide.load19, %wide.load17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <8 x i16> %i.v, ptr %i.x, align 2
  store <8 x i16> %i.w, ptr %i.y, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.aa = shl nuw i64 %index21, 1                 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %wide.load22 = load <4 x i16>, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa
  %wide.load23 = load <4 x i16>, ptr %i.ac, align 2
  %i.ad = mul <4 x i16> %wide.load23, %wide.load22
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store <4 x i16> %i.ad, ptr %i.ae, align 2
  %index.next24 = add nuw i64 %index21, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next24, %i.i
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !60

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.013 = phi i64 [ %i.am, %vec.epilog.scalar.ph ], [ %.013.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = mul i16 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = add nuw nsw i64 %.013, 2                ; 2 uses
  %i.an = icmp samesign ult i64 %i.am, %i.g
  br i1 %i.an, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !61

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ao = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ao, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ap = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ap, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_mul32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow20 = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow20 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check16 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load17 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load18 = load <4 x i32>, ptr %i.s, align 4
  %wide.load19 = load <4 x i32>, ptr %i.t, align 4
  %i.u = mul <4 x i32> %wide.load18, %wide.load
  %i.v = mul <4 x i32> %wide.load19, %wide.load17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %i.u, ptr %i.w, align 4
  store <4 x i32> %i.v, ptr %i.x, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.013.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.013 = phi i64 [ %i.af, %scalar.ph ], [ %.013.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = mul i32 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = add nuw nsw i64 %.013, 4                ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, %i.g
  br i1 %i.ag, label %scalar.ph, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ah = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ah, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ai = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ai, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_mul64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow20 = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow20 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 120
end_hunk_2
begin_hunk_3_@helper_gvec_rotl32i
define dso_local void @helper_gvec_rotl32i(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %i.g = lshr i32 %2, 10                          ; 5 uses
  %i.h = lshr exact i32 %.v.v.i, 2                ; 2 uses
  %i.i = or disjoint i32 %i.h, 1
  %narrow16 = add nuw nsw i32 %i.h, 2
  %i.j = zext nneg i32 %narrow16 to i64           ; 2 uses
  %xtraiter = and i64 %i.j, 2                     ; 2 uses
  %i.k = icmp samesign ult i32 %i.i, 3
  br i1 %i.k, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.j, 1073741820
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.013 = phi i64 [ 0, %.new ], [ %i.ae, %bb.b ]  ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = tail call noundef i32 @llvm.fshl.i32(i32 %i.m, i32 %i.m, i32 range(i32 -2097152, 2097152) %i.g)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i32 %i.n, ptr %i.o, align 4
  %i.p = or disjoint i64 %.013, 4                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = tail call noundef i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 range(i32 -2097152, 2097152) %i.g)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  store i32 %i.s, ptr %i.t, align 4
  %i.u = or disjoint i64 %.013, 8                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = tail call noundef i32 @llvm.fshl.i32(i32 %i.w, i32 %i.w, i32 range(i32 -2097152, 2097152) %i.g)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  store i32 %i.x, ptr %i.y, align 4
  %i.z = or disjoint i64 %.013, 12                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = tail call noundef i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.ab, i32 range(i32 -2097152, 2097152) %i.g)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = add nuw nsw i64 %.013, 16               ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.b, !llvm.loop !160

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.013.epil.init = phi i64 [ 0, %bb.a ], [ %i.ae, %.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.013.epil = phi i64 [ %.013.epil.init, %.epil.preheader ], [ %i.aj, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.013.epil
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = tail call noundef i32 @llvm.fshl.i32(i32 %i.ag, i32 %i.ag, i32 range(i32 -2097152, 2097152) %i.g)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.013.epil
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = add nuw nsw i64 %.013.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !161

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %i.ak = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ak, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.epilog-lcssa
  %i.al = zext nneg i32 %.v.v.i to i64
  %i.am = getelementptr i8, ptr %0, i64 %i.al
  %scevgep.i = getelementptr i8, ptr %i.am, i64 8
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.an = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.an, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.epilog-lcssa, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_rotl64i(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %i.g = lshr i32 %2, 10
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = lshr exact i32 %.v.v.i, 3
  %narrow16 = add nuw nsw i32 %i.i, 1
  %i.j = zext nneg i32 %narrow16 to i64           ; 2 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.k = icmp samesign ult i32 %.v.v.i, 24
  br i1 %i.k, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.j, 536870908
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.013 = phi i64 [ 0, %.new ], [ %i.ae, %bb.b ]  ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 %i.h)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i64 %i.n, ptr %i.o, align 8
  %i.p = or disjoint i64 %.013, 8                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 %i.h)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  store i64 %i.s, ptr %i.t, align 8
  %i.u = or disjoint i64 %.013, 16                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 %i.h)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  store i64 %i.x, ptr %i.y, align 8
  %i.z = or disjoint i64 %.013, 24                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 %i.h)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = add nuw nsw i64 %.013, 32               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.b, !llvm.loop !162

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.013.epil.init = phi i64 [ 0, %bb.a ], [ %i.ae, %.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.013.epil = phi i64 [ %.013.epil.init, %.epil.preheader ], [ %i.aj, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.013.epil
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 %i.h)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.013.epil
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = add nuw nsw i64 %.013.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !163

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %i.ak = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ak, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.epilog-lcssa
  %i.al = zext nneg i32 %.v.v.i to i64
  %i.am = getelementptr i8, ptr %0, i64 %i.al
  %scevgep.i = getelementptr i8, ptr %i.am, i64 8
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.an = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.an, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.epilog-lcssa, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_shl8v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %1 to i64
  %i.i = ptrtoaddr ptr %2 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check17 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check17
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load18 = load <16 x i8>, ptr %i.o, align 1
  %i.p = and <16 x i8> %wide.load, splat (i8 7)
  %i.q = and <16 x i8> %wide.load18, splat (i8 7)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load19 = load <16 x i8>, ptr %i.r, align 1
  %wide.load20 = load <16 x i8>, ptr %i.s, align 1
  %i.t = shl <16 x i8> %wide.load19, %i.p
  %i.u = shl <16 x i8> %wide.load20, %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <16 x i8> %i.t, ptr %i.v, align 1
  store <16 x i8> %i.u, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index22.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.014.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index22 = phi i64 [ %index.next25, %vec.epilog.vector.body ], [ %index22.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %index22
  %wide.load23 = load <8 x i8>, ptr %i.y, align 1
  %i.z = and <8 x i8> %wide.load23, splat (i8 7)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %index22
  %wide.load24 = load <8 x i8>, ptr %i.aa, align 1
  %i.ab = shl <8 x i8> %wide.load24, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %index22
  store <8 x i8> %i.ab, ptr %i.ac, align 1
  %index.next25 = add nuw i64 %index22, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next25, %i.g
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !165

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.014 = phi i64 [ %.014.ph, %vec.epilog.scalar.ph.preheader ], [ %i.at, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = and i8 %i.af, 7
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = shl i8 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = or disjoint i64 %.014, 1                ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = and i8 %i.an, 7
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = shl i8 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = add nuw nsw i64 %.014, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.at, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !166

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.au = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.au, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.av = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.av, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_shl16v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow19 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow19 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -16
  %i.n = sub i64 %i.l, %i.j
  %diff.check17 = icmp ugt i64 %i.n, -16
  %conflict.rdx = or i1 %diff.check, %diff.check17
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 2147483640               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 1                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %wide.load = load <8 x i16>, ptr %i.q, align 2
  %i.r = and <8 x i16> %wide.load, splat (i16 15)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %wide.load18 = load <8 x i16>, ptr %i.s, align 2
  %i.t = shl <8 x i16> %wide.load18, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  store <8 x i16> %i.t, ptr %i.u, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.014.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.014 = phi i64 [ %i.ad, %scalar.ph ], [ %.014.ph, %scalar.ph.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.x = load i16, ptr %i.w, align 2
  %i.y = and i16 %i.x, 15
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = shl i16 %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i16 %i.ab, ptr %i.ac, align 2
  %i.ad = add nuw nsw i64 %.014, 2                ; 2 uses
  %i.ae = icmp samesign ult i64 %i.ad, %i.g
  br i1 %i.ae, label %scalar.ph, label %.loopexit, !llvm.loop !168

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.af = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.af, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ag = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ag, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_shl32v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow19 = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow19 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -16
  %i.n = sub i64 %i.l, %i.j
  %diff.check17 = icmp ugt i64 %i.n, -16
  %conflict.rdx = or i1 %diff.check, %diff.check17
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741820               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %i.r = and <4 x i32> %wide.load, splat (i32 31)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %wide.load18 = load <4 x i32>, ptr %i.s, align 4
  %i.t = shl <4 x i32> %wide.load18, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  store <4 x i32> %i.t, ptr %i.u, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.014.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.014 = phi i64 [ %i.ad, %scalar.ph ], [ %.014.ph, %scalar.ph.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 31
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = shl i32 %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = add nuw nsw i64 %.014, 4                ; 2 uses
  %i.ae = icmp samesign ult i64 %i.ad, %i.g
  br i1 %i.ae, label %scalar.ph, label %.loopexit, !llvm.loop !170

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.af = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.af, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ag = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ag, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_shl64v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow21 = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow21 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check17 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check17
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 3                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8
  %wide.load18 = load <2 x i64>, ptr %i.r, align 8
  %i.s = and <2 x i64> %wide.load, splat (i64 63)
  %i.t = and <2 x i64> %wide.load18, splat (i64 63)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load19 = load <2 x i64>, ptr %i.u, align 8
  %wide.load20 = load <2 x i64>, ptr %i.v, align 8
  %i.w = shl <2 x i64> %wide.load19, %i.s
  %i.x = shl <2 x i64> %wide.load20, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x i64> %i.w, ptr %i.y, align 8
  store <2 x i64> %i.x, ptr %i.z, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.014.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.014 = phi i64 [ %i.ai, %scalar.ph ], [ %.014.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, 63
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = shl i64 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = add nuw nsw i64 %.014, 8                ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, %i.g
  br i1 %i.aj, label %scalar.ph, label %.loopexit, !llvm.loop !172

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ak = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ak, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.al = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.al, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_shr8v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %1 to i64
  %i.i = ptrtoaddr ptr %2 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -16
  %i.l = sub i64 %i.h, %i.j
  %diff.check17 = icmp ugt i64 %i.l, -16
  %conflict.rdx = or i1 %diff.check, %diff.check17
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %i.o = and <16 x i8> %wide.load, splat (i8 7)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load18 = load <16 x i8>, ptr %i.p, align 1
  %i.q = lshr <16 x i8> %wide.load18, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.q, ptr %i.r, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !15

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index20.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.014.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index20 = phi i64 [ %index.next23, %vec.epilog.vector.body ], [ %index20.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %index20
  %wide.load21 = load <8 x i8>, ptr %i.t, align 1
  %i.u = and <8 x i8> %wide.load21, splat (i8 7)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %index20
  %wide.load22 = load <8 x i8>, ptr %i.v, align 1
  %i.w = lshr <8 x i8> %wide.load22, %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %index20
  store <8 x i8> %i.w, ptr %i.x, align 1
  %index.next23 = add nuw i64 %index20, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next23, %i.g
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !174

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.014 = phi i64 [ %.014.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = and i8 %i.aa, 7
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = lshr i8 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = or disjoint i64 %.014, 1                ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = and i8 %i.ai, 7
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = lshr i8 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = add nuw nsw i64 %.014, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !175

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ap = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ap, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.aq = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aq, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_shr16v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow19 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow19 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -16
  %i.n = sub i64 %i.l, %i.j
  %diff.check17 = icmp ugt i64 %i.n, -16
  %conflict.rdx = or i1 %diff.check, %diff.check17
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 2147483640               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 1                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %wide.load = load <8 x i16>, ptr %i.q, align 2
  %i.r = and <8 x i16> %wide.load, splat (i16 15)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %wide.load18 = load <8 x i16>, ptr %i.s, align 2
  %i.t = lshr <8 x i16> %wide.load18, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  store <8 x i16> %i.t, ptr %i.u, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.014.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.014 = phi i64 [ %i.ad, %scalar.ph ], [ %.014.ph, %scalar.ph.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.x = load i16, ptr %i.w, align 2
  %i.y = and i16 %i.x, 15
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = lshr i16 %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i16 %i.ab, ptr %i.ac, align 2
  %i.ad = add nuw nsw i64 %.014, 2                ; 2 uses
  %i.ae = icmp samesign ult i64 %i.ad, %i.g
  br i1 %i.ae, label %scalar.ph, label %.loopexit, !llvm.loop !177

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.af = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.af, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ag = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ag, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_shr32v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow21 = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow21 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check17 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check17
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load18 = load <4 x i32>, ptr %i.r, align 4
  %i.s = and <4 x i32> %wide.load, splat (i32 31)
  %i.t = and <4 x i32> %wide.load18, splat (i32 31)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load19 = load <4 x i32>, ptr %i.u, align 4
  %wide.load20 = load <4 x i32>, ptr %i.v, align 4
  %i.w = lshr <4 x i32> %wide.load19, %i.s
  %i.x = lshr <4 x i32> %wide.load20, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %i.w, ptr %i.y, align 4
  store <4 x i32> %i.x, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.014.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.014 = phi i64 [ %i.ai, %scalar.ph ], [ %.014.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 31
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = lshr i32 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = add nuw nsw i64 %.014, 4                ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, %i.g
  br i1 %i.aj, label %scalar.ph, label %.loopexit, !llvm.loop !179

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ak = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ak, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.al = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.al, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_shr64v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow21 = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow21 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check17 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check17
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 3                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8
  %wide.load18 = load <2 x i64>, ptr %i.r, align 8
  %i.s = and <2 x i64> %wide.load, splat (i64 63)
  %i.t = and <2 x i64> %wide.load18, splat (i64 63)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load19 = load <2 x i64>, ptr %i.u, align 8
  %wide.load20 = load <2 x i64>, ptr %i.v, align 8
  %i.w = lshr <2 x i64> %wide.load19, %i.s
  %i.x = lshr <2 x i64> %wide.load20, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x i64> %i.w, ptr %i.y, align 8
  store <2 x i64> %i.x, ptr %i.z, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.014.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.014 = phi i64 [ %i.ai, %scalar.ph ], [ %.014.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, 63
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = lshr i64 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = add nuw nsw i64 %.014, 8                ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, %i.g
  br i1 %i.aj, label %scalar.ph, label %.loopexit, !llvm.loop !181

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ak = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ak, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.al = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.al, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sar8v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %1 to i64
  %i.i = ptrtoaddr ptr %2 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -16
  %i.l = sub i64 %i.h, %i.j
  %diff.check17 = icmp ugt i64 %i.l, -16
  %conflict.rdx = or i1 %diff.check, %diff.check17
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %i.o = and <16 x i8> %wide.load, splat (i8 7)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load18 = load <16 x i8>, ptr %i.p, align 1
  %i.q = ashr <16 x i8> %wide.load18, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.q, ptr %i.r, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !15

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index20.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.014.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index20 = phi i64 [ %index.next23, %vec.epilog.vector.body ], [ %index20.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %index20
  %wide.load21 = load <8 x i8>, ptr %i.t, align 1
  %i.u = and <8 x i8> %wide.load21, splat (i8 7)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %index20
  %wide.load22 = load <8 x i8>, ptr %i.v, align 1
  %i.w = ashr <8 x i8> %wide.load22, %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %index20
  store <8 x i8> %i.w, ptr %i.x, align 1
  %index.next23 = add nuw i64 %index20, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next23, %i.g
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !183

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.014 = phi i64 [ %.014.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = and i8 %i.aa, 7
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = ashr i8 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = or disjoint i64 %.014, 1                ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = and i8 %i.ai, 7
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = ashr i8 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = add nuw nsw i64 %.014, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !184

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ap = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ap, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.aq = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aq, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sar16v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow19 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow19 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -16
  %i.n = sub i64 %i.l, %i.j
  %diff.check17 = icmp ugt i64 %i.n, -16
  %conflict.rdx = or i1 %diff.check, %diff.check17
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 2147483640               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 1                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %wide.load = load <8 x i16>, ptr %i.q, align 2
  %i.r = and <8 x i16> %wide.load, splat (i16 15)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %wide.load18 = load <8 x i16>, ptr %i.s, align 2
  %i.t = ashr <8 x i16> %wide.load18, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  store <8 x i16> %i.t, ptr %i.u, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.014.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.014 = phi i64 [ %i.ad, %scalar.ph ], [ %.014.ph, %scalar.ph.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.x = load i16, ptr %i.w, align 2
  %i.y = and i16 %i.x, 15
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = ashr i16 %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i16 %i.ab, ptr %i.ac, align 2
  %i.ad = add nuw nsw i64 %.014, 2                ; 2 uses
  %i.ae = icmp samesign ult i64 %i.ad, %i.g
  br i1 %i.ae, label %scalar.ph, label %.loopexit, !llvm.loop !186

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.af = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.af, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ag = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ag, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sar32v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow21 = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow21 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check17 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check17
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load18 = load <4 x i32>, ptr %i.r, align 4
  %i.s = and <4 x i32> %wide.load, splat (i32 31)
  %i.t = and <4 x i32> %wide.load18, splat (i32 31)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load19 = load <4 x i32>, ptr %i.u, align 4
  %wide.load20 = load <4 x i32>, ptr %i.v, align 4
  %i.w = ashr <4 x i32> %wide.load19, %i.s
  %i.x = ashr <4 x i32> %wide.load20, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %i.w, ptr %i.y, align 4
  store <4 x i32> %i.x, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.014.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.014 = phi i64 [ %i.ai, %scalar.ph ], [ %.014.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 31
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = ashr i32 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = add nuw nsw i64 %.014, 4                ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, %i.g
  br i1 %i.aj, label %scalar.ph, label %.loopexit, !llvm.loop !188

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ak = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ak, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.al = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.al, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sar64v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %i.g = lshr exact i32 %.v.v.i, 3
  %narrow17 = add nuw nsw i32 %i.g, 1             ; 2 uses
  %i.h = zext nneg i32 %narrow17 to i64           ; 2 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i32 %.v.v.i, 0
  br i1 %i.i, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.h, 536870910
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.014 = phi i64 [ 0, %.new ], [ %i.y, %bb.b ]   ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 63
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.n = load i64, ptr %i.m, align 8
  %i.o = ashr i64 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i64 %i.o, ptr %i.p, align 8
  %i.q = or disjoint i64 %.014, 8                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 63
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.v = load i64, ptr %i.u, align 8
  %i.w = ashr i64 %i.v, %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  store i64 %i.w, ptr %i.x, align 8
  %i.y = add nuw nsw i64 %.014, 16                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %bb.b, !llvm.loop !189

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.014.epil.init = phi i64 [ 0, %bb.a ], [ %i.y, %.unr-lcssa ] ; 3 uses
  %lcmp.mod16 = trunc i32 %narrow17 to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %.014.epil.init
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, 63
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.014.epil.init
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = ashr i64 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.014.epil.init
  store i64 %i.ae, ptr %i.af, align 8
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.ag = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ag, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %bb.c
  %i.ah = zext nneg i32 %.v.v.i to i64
  %i.ai = getelementptr i8, ptr %0, i64 %i.ah
  %scevgep.i = getelementptr i8, ptr %i.ai, i64 8
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.aj = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aj, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %bb.c, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_rotl8v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %1 to i64
  %i.i = ptrtoaddr ptr %2 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -16
  %i.l = sub i64 %i.h, %i.j
  %diff.check17 = icmp ugt i64 %i.l, -16
  %conflict.rdx = or i1 %diff.check, %diff.check17
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load18 = load <16 x i8>, ptr %i.o, align 1 ; 2 uses
  %i.p = tail call <16 x i8> @llvm.fshl.v16i8(<16 x i8> %wide.load18, <16 x i8> %wide.load18, <16 x i8> %wide.load)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.p, ptr %i.q, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !15

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index20.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.014.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index20 = phi i64 [ %index.next23, %vec.epilog.vector.body ], [ %index20.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %index20
  %wide.load21 = load <8 x i8>, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %index20
  %wide.load22 = load <8 x i8>, ptr %i.t, align 1 ; 2 uses
  %i.u = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %wide.load22, <8 x i8> %wide.load22, <8 x i8> %wide.load21)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index20
  store <8 x i8> %i.u, ptr %i.v, align 1
  %index.next23 = add nuw i64 %index20, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next23, %i.g
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !191

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.014 = phi i64 [ %.014.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ay, %vec.epilog.scalar.ph ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.y = load i8, ptr %i.x, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  %i.ab = tail call noundef i8 @llvm.fshl.i8(i8 %i.aa, i8 %i.aa, i8 %i.y)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = or disjoint i64 %.014, 1                ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  %i.ai = tail call noundef i8 @llvm.fshl.i8(i8 %i.ah, i8 %i.ah, i8 %i.af)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = or disjoint i64 %.014, 2                ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %i.ao = load i8, ptr %i.an, align 1             ; 2 uses
  %i.ap = tail call noundef i8 @llvm.fshl.i8(i8 %i.ao, i8 %i.ao, i8 %i.am)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = or disjoint i64 %.014, 3                ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %i.aw = tail call noundef i8 @llvm.fshl.i8(i8 %i.av, i8 %i.av, i8 %i.at)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = add nuw nsw i64 %.014, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ay, %i.g
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !192

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.az = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.az, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ba = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ba, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_rotl16v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow19 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow19 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -16
  %i.n = sub i64 %i.l, %i.j
  %diff.check17 = icmp ugt i64 %i.n, -16
  %conflict.rdx = or i1 %diff.check, %diff.check17
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 2147483640               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 1                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %wide.load = load <8 x i16>, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %wide.load18 = load <8 x i16>, ptr %i.r, align 2 ; 2 uses
  %i.s = tail call <8 x i16> @llvm.fshl.v8i16(<8 x i16> %wide.load18, <8 x i16> %wide.load18, <8 x i16> %wide.load)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  store <8 x i16> %i.s, ptr %i.t, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !193

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.014.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.014 = phi i64 [ %i.ab, %scalar.ph ], [ %.014.ph, %scalar.ph.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.w = load i16, ptr %i.v, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.y = load i16, ptr %i.x, align 2              ; 2 uses
  %i.z = tail call noundef i16 @llvm.fshl.i16(i16 %i.y, i16 %i.y, i16 %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i16 %i.z, ptr %i.aa, align 2
  %i.ab = add nuw nsw i64 %.014, 2                ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.g
  br i1 %i.ac, label %scalar.ph, label %.loopexit, !llvm.loop !194

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ad = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ad, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ae = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ae, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_rotl32v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
end_hunk_3
begin_hunk_4_@helper_gvec_rotl32v:bb.a
.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.i, 1073741820
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.014 = phi i64 [ 0, %.new ], [ %i.al, %bb.b ]  ; 7 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = tail call noundef i32 @llvm.fshl.i32(i32 %i.n, i32 %i.n, i32 range(i32 -2097152, 2097152) %i.l)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i32 %i.o, ptr %i.p, align 4
  %i.q = or disjoint i64 %.014, 4                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = tail call noundef i32 @llvm.fshl.i32(i32 %i.u, i32 %i.u, i32 range(i32 -2097152, 2097152) %i.s)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  store i32 %i.v, ptr %i.w, align 4
  %i.x = or disjoint i64 %.014, 8                 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = tail call noundef i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.ab, i32 range(i32 -2097152, 2097152) %i.z)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = or disjoint i64 %.014, 12               ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = tail call noundef i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 range(i32 -2097152, 2097152) %i.ag)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = add nuw nsw i64 %.014, 16               ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.b, !llvm.loop !195

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.014.epil.init = phi i64 [ 0, %bb.a ], [ %i.al, %.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.014.epil = phi i64 [ %.014.epil.init, %.epil.preheader ], [ %i.as, %bb.c ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.014.epil
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.014.epil
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = tail call noundef i32 @llvm.fshl.i32(i32 %i.ap, i32 %i.ap, i32 range(i32 -2097152, 2097152) %i.an)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.014.epil
  store i32 %i.aq, ptr %i.ar, align 4
  %i.as = add nuw nsw i64 %.014.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !196

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %i.at = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.at, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.epilog-lcssa
  %i.au = zext nneg i32 %.v.v.i to i64
  %i.av = getelementptr i8, ptr %0, i64 %i.au
  %scevgep.i = getelementptr i8, ptr %i.av, i64 8
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.aw = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aw, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.epilog-lcssa, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_rotl64v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %i.g = lshr exact i32 %.v.v.i, 3
  %narrow17 = add nuw nsw i32 %i.g, 1
  %i.h = zext nneg i32 %narrow17 to i64           ; 2 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.i = icmp samesign ult i32 %.v.v.i, 24
  br i1 %i.i, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.h, 536870908
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.014 = phi i64 [ 0, %.new ], [ %i.ak, %bb.b ]  ; 7 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 %i.k)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i64 %i.n, ptr %i.o, align 8
  %i.p = or disjoint i64 %.014, 8                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 %i.r)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  store i64 %i.u, ptr %i.v, align 8
  %i.w = or disjoint i64 %.014, 16                ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 %i.y)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = or disjoint i64 %.014, 24               ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 %i.af)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  store i64 %i.ai, ptr %i.aj, align 8
  %i.ak = add nuw nsw i64 %.014, 32               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.b, !llvm.loop !197

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.014.epil.init = phi i64 [ 0, %bb.a ], [ %i.ak, %.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.014.epil = phi i64 [ %.014.epil.init, %.epil.preheader ], [ %i.ar, %bb.c ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.014.epil
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.014.epil
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 %i.am)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.014.epil
  store i64 %i.ap, ptr %i.aq, align 8
  %i.ar = add nuw nsw i64 %.014.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !198

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %i.as = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.as, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.epilog-lcssa
  %i.at = zext nneg i32 %.v.v.i to i64
  %i.au = getelementptr i8, ptr %0, i64 %i.at
  %scevgep.i = getelementptr i8, ptr %i.au, i64 8
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.av = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.av, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.epilog-lcssa, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_rotr8v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %1 to i64
  %i.i = ptrtoaddr ptr %2 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -16
  %i.l = sub i64 %i.h, %i.j
  %diff.check17 = icmp ugt i64 %i.l, -16
  %conflict.rdx = or i1 %diff.check, %diff.check17
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load18 = load <16 x i8>, ptr %i.o, align 1 ; 2 uses
  %i.p = tail call <16 x i8> @llvm.fshr.v16i8(<16 x i8> %wide.load18, <16 x i8> %wide.load18, <16 x i8> %wide.load)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.p, ptr %i.q, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !15

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index20.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.014.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index20 = phi i64 [ %index.next23, %vec.epilog.vector.body ], [ %index20.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %index20
  %wide.load21 = load <8 x i8>, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %index20
  %wide.load22 = load <8 x i8>, ptr %i.t, align 1 ; 2 uses
  %i.u = tail call <8 x i8> @llvm.fshr.v8i8(<8 x i8> %wide.load22, <8 x i8> %wide.load22, <8 x i8> %wide.load21)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index20
  store <8 x i8> %i.u, ptr %i.v, align 1
  %index.next23 = add nuw i64 %index20, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next23, %i.g
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !200

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.014 = phi i64 [ %.014.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ay, %vec.epilog.scalar.ph ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.y = load i8, ptr %i.x, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  %i.ab = tail call i8 @llvm.fshr.i8(i8 %i.aa, i8 %i.aa, i8 %i.y)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = or disjoint i64 %.014, 1                ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  %i.ai = tail call i8 @llvm.fshr.i8(i8 %i.ah, i8 %i.ah, i8 %i.af)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = or disjoint i64 %.014, 2                ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %i.ao = load i8, ptr %i.an, align 1             ; 2 uses
  %i.ap = tail call i8 @llvm.fshr.i8(i8 %i.ao, i8 %i.ao, i8 %i.am)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = or disjoint i64 %.014, 3                ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %i.aw = tail call i8 @llvm.fshr.i8(i8 %i.av, i8 %i.av, i8 %i.at)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = add nuw nsw i64 %.014, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ay, %i.g
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !201

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.az = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.az, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ba = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ba, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_rotr16v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow19 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow19 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -16
  %i.n = sub i64 %i.l, %i.j
  %diff.check17 = icmp ugt i64 %i.n, -16
  %conflict.rdx = or i1 %diff.check, %diff.check17
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 2147483640               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 1                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %wide.load = load <8 x i16>, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %wide.load18 = load <8 x i16>, ptr %i.r, align 2 ; 2 uses
  %i.s = tail call <8 x i16> @llvm.fshr.v8i16(<8 x i16> %wide.load18, <8 x i16> %wide.load18, <8 x i16> %wide.load)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  store <8 x i16> %i.s, ptr %i.t, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.014.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.014 = phi i64 [ %i.ab, %scalar.ph ], [ %.014.ph, %scalar.ph.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.w = load i16, ptr %i.v, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.y = load i16, ptr %i.x, align 2              ; 2 uses
  %i.z = tail call i16 @llvm.fshr.i16(i16 %i.y, i16 %i.y, i16 %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i16 %i.z, ptr %i.aa, align 2
  %i.ab = add nuw nsw i64 %.014, 2                ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.g
  br i1 %i.ac, label %scalar.ph, label %.loopexit, !llvm.loop !203

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ad = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ad, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ae = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ae, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_rotr32v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
end_hunk_4
begin_hunk_5_@helper_gvec_rotr32v:bb.a
.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.i, 1073741820
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.014 = phi i64 [ 0, %.new ], [ %i.al, %bb.b ]  ; 7 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = tail call noundef i32 @llvm.fshr.i32(i32 %i.n, i32 %i.n, i32 range(i32 0, 32) %i.l)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i32 %i.o, ptr %i.p, align 4
  %i.q = or disjoint i64 %.014, 4                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = tail call noundef i32 @llvm.fshr.i32(i32 %i.u, i32 %i.u, i32 range(i32 0, 32) %i.s)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  store i32 %i.v, ptr %i.w, align 4
  %i.x = or disjoint i64 %.014, 8                 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = tail call noundef i32 @llvm.fshr.i32(i32 %i.ab, i32 %i.ab, i32 range(i32 0, 32) %i.z)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = or disjoint i64 %.014, 12               ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = tail call noundef i32 @llvm.fshr.i32(i32 %i.ai, i32 %i.ai, i32 range(i32 0, 32) %i.ag)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = add nuw nsw i64 %.014, 16               ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.b, !llvm.loop !204

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.014.epil.init = phi i64 [ 0, %bb.a ], [ %i.al, %.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.014.epil = phi i64 [ %.014.epil.init, %.epil.preheader ], [ %i.as, %bb.c ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.014.epil
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.014.epil
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = tail call noundef i32 @llvm.fshr.i32(i32 %i.ap, i32 %i.ap, i32 range(i32 0, 32) %i.an)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.014.epil
  store i32 %i.aq, ptr %i.ar, align 4
  %i.as = add nuw nsw i64 %.014.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !205

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %i.at = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.at, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.epilog-lcssa
  %i.au = zext nneg i32 %.v.v.i to i64
  %i.av = getelementptr i8, ptr %0, i64 %i.au
  %scevgep.i = getelementptr i8, ptr %i.av, i64 8
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.aw = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aw, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.epilog-lcssa, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_rotr64v(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %i.g = lshr exact i32 %.v.v.i, 3
  %narrow17 = add nuw nsw i32 %i.g, 1
  %i.h = zext nneg i32 %narrow17 to i64           ; 2 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.i = icmp samesign ult i32 %.v.v.i, 24
  br i1 %i.i, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.h, 536870908
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.014 = phi i64 [ 0, %.new ], [ %i.ak, %bb.b ]  ; 7 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = tail call i64 @llvm.fshr.i64(i64 %i.m, i64 %i.m, i64 %i.k)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i64 %i.n, ptr %i.o, align 8
  %i.p = or disjoint i64 %.014, 8                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = tail call i64 @llvm.fshr.i64(i64 %i.t, i64 %i.t, i64 %i.r)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  store i64 %i.u, ptr %i.v, align 8
  %i.w = or disjoint i64 %.014, 16                ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = tail call i64 @llvm.fshr.i64(i64 %i.aa, i64 %i.aa, i64 %i.y)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = or disjoint i64 %.014, 24               ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = tail call i64 @llvm.fshr.i64(i64 %i.ah, i64 %i.ah, i64 %i.af)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  store i64 %i.ai, ptr %i.aj, align 8
  %i.ak = add nuw nsw i64 %.014, 32               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %bb.b, !llvm.loop !206

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.014.epil.init = phi i64 [ 0, %bb.a ], [ %i.ak, %.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.014.epil = phi i64 [ %.014.epil.init, %.epil.preheader ], [ %i.ar, %bb.c ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.014.epil
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.014.epil
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = tail call i64 @llvm.fshr.i64(i64 %i.ao, i64 %i.ao, i64 %i.am)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.014.epil
  store i64 %i.ap, ptr %i.aq, align 8
  %i.ar = add nuw nsw i64 %.014.epil, 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !207

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %i.as = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.as, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.epilog-lcssa
  %i.at = zext nneg i32 %.v.v.i to i64
  %i.au = getelementptr i8, ptr %0, i64 %i.at
  %scevgep.i = getelementptr i8, ptr %i.au, i64 8
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.av = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.av, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.epilog-lcssa, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_eq8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check16 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load17 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load18 = load <16 x i8>, ptr %i.p, align 1
  %wide.load19 = load <16 x i8>, ptr %i.q, align 1
  %i.r = icmp eq <16 x i8> %wide.load, %wide.load18
  %i.s = icmp eq <16 x i8> %wide.load17, %wide.load19
  %i.t = sext <16 x i1> %i.r to <16 x i8>
  %i.u = sext <16 x i1> %i.s to <16 x i8>
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <16 x i8> %i.t, ptr %i.v, align 1
  store <16 x i8> %i.u, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !208

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %index21
  %wide.load22 = load <8 x i8>, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %index21
  %wide.load23 = load <8 x i8>, ptr %i.z, align 1
  %i.aa = icmp eq <8 x i8> %wide.load22, %wide.load23
  %i.ab = sext <8 x i1> %i.aa to <8 x i8>
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %index21
  store <8 x i8> %i.ab, ptr %i.ac, align 1
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next24, %i.g
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !209

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.013 = phi i64 [ %.013.ph, %vec.epilog.scalar.ph.preheader ], [ %i.at, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = icmp eq i8 %i.af, %i.ah
  %i.aj = sext i1 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = or disjoint i64 %.013, 1                ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.an, %i.ap
  %i.ar = sext i1 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = add nuw nsw i64 %.013, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.at, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !210

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.au = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.au, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.av = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.av, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_ne8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check16 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load17 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load18 = load <16 x i8>, ptr %i.p, align 1
  %wide.load19 = load <16 x i8>, ptr %i.q, align 1
  %i.r = icmp ne <16 x i8> %wide.load, %wide.load18
  %i.s = icmp ne <16 x i8> %wide.load17, %wide.load19
  %i.t = sext <16 x i1> %i.r to <16 x i8>
  %i.u = sext <16 x i1> %i.s to <16 x i8>
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <16 x i8> %i.t, ptr %i.v, align 1
  store <16 x i8> %i.u, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %index21
  %wide.load22 = load <8 x i8>, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %index21
  %wide.load23 = load <8 x i8>, ptr %i.z, align 1
  %i.aa = icmp ne <8 x i8> %wide.load22, %wide.load23
  %i.ab = sext <8 x i1> %i.aa to <8 x i8>
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %index21
  store <8 x i8> %i.ab, ptr %i.ac, align 1
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next24, %i.g
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !212

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.013 = phi i64 [ %.013.ph, %vec.epilog.scalar.ph.preheader ], [ %i.at, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = icmp ne i8 %i.af, %i.ah
  %i.aj = sext i1 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = or disjoint i64 %.013, 1                ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp ne i8 %i.an, %i.ap
  %i.ar = sext i1 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = add nuw nsw i64 %.013, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.at, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !213

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.au = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.au, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.av = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.av, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_lt8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check16 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load17 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load18 = load <16 x i8>, ptr %i.p, align 1
  %wide.load19 = load <16 x i8>, ptr %i.q, align 1
  %i.r = icmp slt <16 x i8> %wide.load, %wide.load18
  %i.s = icmp slt <16 x i8> %wide.load17, %wide.load19
  %i.t = sext <16 x i1> %i.r to <16 x i8>
  %i.u = sext <16 x i1> %i.s to <16 x i8>
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <16 x i8> %i.t, ptr %i.v, align 1
  store <16 x i8> %i.u, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !214

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %index21
  %wide.load22 = load <8 x i8>, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %index21
  %wide.load23 = load <8 x i8>, ptr %i.z, align 1
  %i.aa = icmp slt <8 x i8> %wide.load22, %wide.load23
  %i.ab = sext <8 x i1> %i.aa to <8 x i8>
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %index21
  store <8 x i8> %i.ab, ptr %i.ac, align 1
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next24, %i.g
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !215

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.013 = phi i64 [ %.013.ph, %vec.epilog.scalar.ph.preheader ], [ %i.at, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = icmp slt i8 %i.af, %i.ah
  %i.aj = sext i1 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = or disjoint i64 %.013, 1                ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp slt i8 %i.an, %i.ap
  %i.ar = sext i1 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = add nuw nsw i64 %.013, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.at, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !216

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.au = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.au, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.av = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.av, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_le8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check16 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load17 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load18 = load <16 x i8>, ptr %i.p, align 1
  %wide.load19 = load <16 x i8>, ptr %i.q, align 1
  %i.r = icmp sle <16 x i8> %wide.load, %wide.load18
  %i.s = icmp sle <16 x i8> %wide.load17, %wide.load19
  %i.t = sext <16 x i1> %i.r to <16 x i8>
  %i.u = sext <16 x i1> %i.s to <16 x i8>
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <16 x i8> %i.t, ptr %i.v, align 1
  store <16 x i8> %i.u, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %index21
  %wide.load22 = load <8 x i8>, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %index21
  %wide.load23 = load <8 x i8>, ptr %i.z, align 1
  %i.aa = icmp sle <8 x i8> %wide.load22, %wide.load23
  %i.ab = sext <8 x i1> %i.aa to <8 x i8>
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %index21
  store <8 x i8> %i.ab, ptr %i.ac, align 1
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next24, %i.g
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !218

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.013 = phi i64 [ %.013.ph, %vec.epilog.scalar.ph.preheader ], [ %i.at, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = icmp sle i8 %i.af, %i.ah
  %i.aj = sext i1 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = or disjoint i64 %.013, 1                ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp sle i8 %i.an, %i.ap
  %i.ar = sext i1 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = add nuw nsw i64 %.013, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.at, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !219

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.au = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.au, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.av = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.av, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_ltu8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check16 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load17 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load18 = load <16 x i8>, ptr %i.p, align 1
  %wide.load19 = load <16 x i8>, ptr %i.q, align 1
  %i.r = icmp ult <16 x i8> %wide.load, %wide.load18
  %i.s = icmp ult <16 x i8> %wide.load17, %wide.load19
  %i.t = sext <16 x i1> %i.r to <16 x i8>
  %i.u = sext <16 x i1> %i.s to <16 x i8>
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <16 x i8> %i.t, ptr %i.v, align 1
  store <16 x i8> %i.u, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %index21
  %wide.load22 = load <8 x i8>, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %index21
  %wide.load23 = load <8 x i8>, ptr %i.z, align 1
  %i.aa = icmp ult <8 x i8> %wide.load22, %wide.load23
  %i.ab = sext <8 x i1> %i.aa to <8 x i8>
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %index21
  store <8 x i8> %i.ab, ptr %i.ac, align 1
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next24, %i.g
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !221

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.013 = phi i64 [ %.013.ph, %vec.epilog.scalar.ph.preheader ], [ %i.at, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = icmp ult i8 %i.af, %i.ah
  %i.aj = sext i1 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = or disjoint i64 %.013, 1                ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp ult i8 %i.an, %i.ap
  %i.ar = sext i1 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = add nuw nsw i64 %.013, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.at, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !222

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.au = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.au, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.av = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.av, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_leu8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check16 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load17 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load18 = load <16 x i8>, ptr %i.p, align 1
  %wide.load19 = load <16 x i8>, ptr %i.q, align 1
  %i.r = icmp ule <16 x i8> %wide.load, %wide.load18
  %i.s = icmp ule <16 x i8> %wide.load17, %wide.load19
  %i.t = sext <16 x i1> %i.r to <16 x i8>
  %i.u = sext <16 x i1> %i.s to <16 x i8>
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <16 x i8> %i.t, ptr %i.v, align 1
  store <16 x i8> %i.u, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %index21
  %wide.load22 = load <8 x i8>, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %index21
  %wide.load23 = load <8 x i8>, ptr %i.z, align 1
  %i.aa = icmp ule <8 x i8> %wide.load22, %wide.load23
  %i.ab = sext <8 x i1> %i.aa to <8 x i8>
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %index21
  store <8 x i8> %i.ab, ptr %i.ac, align 1
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next24, %i.g
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !224

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.013 = phi i64 [ %.013.ph, %vec.epilog.scalar.ph.preheader ], [ %i.at, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = icmp ule i8 %i.af, %i.ah
  %i.aj = sext i1 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = or disjoint i64 %.013, 1                ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp ule i8 %i.an, %i.ap
  %i.ar = sext i1 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = add nuw nsw i64 %.013, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.at, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !225

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.au = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.au, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.av = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.av, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_eq16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow26 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow26 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check16 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load17 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load18 = load <8 x i16>, ptr %i.t, align 2
  %wide.load19 = load <8 x i16>, ptr %i.u, align 2
  %i.v = icmp eq <8 x i16> %wide.load, %wide.load18
  %i.w = icmp eq <8 x i16> %wide.load17, %wide.load19
  %i.x = sext <8 x i1> %i.v to <8 x i16>
  %i.y = sext <8 x i1> %i.w to <8 x i16>
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <8 x i16> %i.x, ptr %i.z, align 2
  store <8 x i16> %i.y, ptr %i.aa, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.ac = shl nuw i64 %index21, 1                 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %wide.load22 = load <4 x i16>, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %wide.load23 = load <4 x i16>, ptr %i.ae, align 2
  %i.af = icmp eq <4 x i16> %wide.load22, %wide.load23
  %i.ag = sext <4 x i1> %i.af to <4 x i16>
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  store <4 x i16> %i.ag, ptr %i.ah, align 2
  %index.next24 = add nuw i64 %index21, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next24, %i.i
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !227

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.013 = phi i64 [ %i.aq, %vec.epilog.scalar.ph ], [ %.013.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.am = load i16, ptr %i.al, align 2
  %i.an = icmp eq i16 %i.ak, %i.am
  %i.ao = sext i1 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = add nuw nsw i64 %.013, 2                ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.g
  br i1 %i.ar, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !228

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.as = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.as, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.at = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.at, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_ne16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow26 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow26 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check16 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load17 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load18 = load <8 x i16>, ptr %i.t, align 2
  %wide.load19 = load <8 x i16>, ptr %i.u, align 2
  %i.v = icmp ne <8 x i16> %wide.load, %wide.load18
  %i.w = icmp ne <8 x i16> %wide.load17, %wide.load19
  %i.x = sext <8 x i1> %i.v to <8 x i16>
  %i.y = sext <8 x i1> %i.w to <8 x i16>
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <8 x i16> %i.x, ptr %i.z, align 2
  store <8 x i16> %i.y, ptr %i.aa, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !229

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.ac = shl nuw i64 %index21, 1                 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %wide.load22 = load <4 x i16>, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %wide.load23 = load <4 x i16>, ptr %i.ae, align 2
  %i.af = icmp ne <4 x i16> %wide.load22, %wide.load23
  %i.ag = sext <4 x i1> %i.af to <4 x i16>
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  store <4 x i16> %i.ag, ptr %i.ah, align 2
  %index.next24 = add nuw i64 %index21, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next24, %i.i
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !230

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.013 = phi i64 [ %i.aq, %vec.epilog.scalar.ph ], [ %.013.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.am = load i16, ptr %i.al, align 2
  %i.an = icmp ne i16 %i.ak, %i.am
  %i.ao = sext i1 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = add nuw nsw i64 %.013, 2                ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.g
  br i1 %i.ar, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !231

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.as = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.as, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.at = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.at, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_lt16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow26 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow26 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check16 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load17 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load18 = load <8 x i16>, ptr %i.t, align 2
  %wide.load19 = load <8 x i16>, ptr %i.u, align 2
  %i.v = icmp slt <8 x i16> %wide.load, %wide.load18
  %i.w = icmp slt <8 x i16> %wide.load17, %wide.load19
  %i.x = sext <8 x i1> %i.v to <8 x i16>
  %i.y = sext <8 x i1> %i.w to <8 x i16>
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <8 x i16> %i.x, ptr %i.z, align 2
  store <8 x i16> %i.y, ptr %i.aa, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.ac = shl nuw i64 %index21, 1                 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %wide.load22 = load <4 x i16>, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %wide.load23 = load <4 x i16>, ptr %i.ae, align 2
  %i.af = icmp slt <4 x i16> %wide.load22, %wide.load23
  %i.ag = sext <4 x i1> %i.af to <4 x i16>
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  store <4 x i16> %i.ag, ptr %i.ah, align 2
  %index.next24 = add nuw i64 %index21, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next24, %i.i
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !233

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.013 = phi i64 [ %i.aq, %vec.epilog.scalar.ph ], [ %.013.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.am = load i16, ptr %i.al, align 2
  %i.an = icmp slt i16 %i.ak, %i.am
  %i.ao = sext i1 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = add nuw nsw i64 %.013, 2                ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.g
  br i1 %i.ar, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !234

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.as = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.as, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.at = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.at, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_le16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow26 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow26 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check16 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load17 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load18 = load <8 x i16>, ptr %i.t, align 2
  %wide.load19 = load <8 x i16>, ptr %i.u, align 2
  %i.v = icmp sle <8 x i16> %wide.load, %wide.load18
  %i.w = icmp sle <8 x i16> %wide.load17, %wide.load19
  %i.x = sext <8 x i1> %i.v to <8 x i16>
  %i.y = sext <8 x i1> %i.w to <8 x i16>
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <8 x i16> %i.x, ptr %i.z, align 2
  store <8 x i16> %i.y, ptr %i.aa, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.ac = shl nuw i64 %index21, 1                 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %wide.load22 = load <4 x i16>, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %wide.load23 = load <4 x i16>, ptr %i.ae, align 2
  %i.af = icmp sle <4 x i16> %wide.load22, %wide.load23
  %i.ag = sext <4 x i1> %i.af to <4 x i16>
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  store <4 x i16> %i.ag, ptr %i.ah, align 2
  %index.next24 = add nuw i64 %index21, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next24, %i.i
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !236

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.013 = phi i64 [ %i.aq, %vec.epilog.scalar.ph ], [ %.013.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.am = load i16, ptr %i.al, align 2
  %i.an = icmp sle i16 %i.ak, %i.am
  %i.ao = sext i1 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = add nuw nsw i64 %.013, 2                ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.g
  br i1 %i.ar, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !237

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.as = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.as, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.at = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.at, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_ltu16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow26 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow26 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check16 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load17 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load18 = load <8 x i16>, ptr %i.t, align 2
  %wide.load19 = load <8 x i16>, ptr %i.u, align 2
  %i.v = icmp ult <8 x i16> %wide.load, %wide.load18
  %i.w = icmp ult <8 x i16> %wide.load17, %wide.load19
  %i.x = sext <8 x i1> %i.v to <8 x i16>
  %i.y = sext <8 x i1> %i.w to <8 x i16>
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <8 x i16> %i.x, ptr %i.z, align 2
  store <8 x i16> %i.y, ptr %i.aa, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.ac = shl nuw i64 %index21, 1                 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %wide.load22 = load <4 x i16>, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %wide.load23 = load <4 x i16>, ptr %i.ae, align 2
  %i.af = icmp ult <4 x i16> %wide.load22, %wide.load23
  %i.ag = sext <4 x i1> %i.af to <4 x i16>
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  store <4 x i16> %i.ag, ptr %i.ah, align 2
  %index.next24 = add nuw i64 %index21, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next24, %i.i
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !239

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.013 = phi i64 [ %i.aq, %vec.epilog.scalar.ph ], [ %.013.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.am = load i16, ptr %i.al, align 2
  %i.an = icmp ult i16 %i.ak, %i.am
  %i.ao = sext i1 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = add nuw nsw i64 %.013, 2                ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.g
  br i1 %i.ar, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !240

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.as = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.as, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.at = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.at, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_leu16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow26 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow26 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check16 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load17 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load18 = load <8 x i16>, ptr %i.t, align 2
  %wide.load19 = load <8 x i16>, ptr %i.u, align 2
  %i.v = icmp ule <8 x i16> %wide.load, %wide.load18
  %i.w = icmp ule <8 x i16> %wide.load17, %wide.load19
  %i.x = sext <8 x i1> %i.v to <8 x i16>
  %i.y = sext <8 x i1> %i.w to <8 x i16>
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <8 x i16> %i.x, ptr %i.z, align 2
  store <8 x i16> %i.y, ptr %i.aa, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !241

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.ac = shl nuw i64 %index21, 1                 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %wide.load22 = load <4 x i16>, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %wide.load23 = load <4 x i16>, ptr %i.ae, align 2
  %i.af = icmp ule <4 x i16> %wide.load22, %wide.load23
  %i.ag = sext <4 x i1> %i.af to <4 x i16>
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  store <4 x i16> %i.ag, ptr %i.ah, align 2
  %index.next24 = add nuw i64 %index21, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next24, %i.i
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !242

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.013 = phi i64 [ %i.aq, %vec.epilog.scalar.ph ], [ %.013.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.013
  %i.am = load i16, ptr %i.al, align 2
  %i.an = icmp ule i16 %i.ak, %i.am
  %i.ao = sext i1 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = add nuw nsw i64 %.013, 2                ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.g
  br i1 %i.ar, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !243

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.as = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.as, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.at = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.at, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_eq32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow21 = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow21 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check17 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check17
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load18 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load19 = load <4 x i32>, ptr %i.s, align 4
  %wide.load20 = load <4 x i32>, ptr %i.t, align 4
  %i.u = icmp eq <4 x i32> %wide.load, %wide.load19
  %i.v = icmp eq <4 x i32> %wide.load18, %wide.load20
  %i.w = sext <4 x i1> %i.u to <4 x i32>
  %i.x = sext <4 x i1> %i.v to <4 x i32>
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %i.w, ptr %i.y, align 4
  store <4 x i32> %i.x, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !244

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.014.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.014 = phi i64 [ %i.ah, %scalar.ph ], [ %.014.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.014
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ac, %i.ae
  %.neg = sext i1 %i.af to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  store i32 %.neg, ptr %i.ag, align 4
  %i.ah = add nuw nsw i64 %.014, 4                ; 2 uses
  %i.ai = icmp samesign ult i64 %i.ah, %i.g
  br i1 %i.ai, label %scalar.ph, label %.loopexit, !llvm.loop !245

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.aj = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aj, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ak = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ak, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_ne32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
end_hunk_5
begin_hunk_6_@helper_gvec_les64:bb.a
  %i.ai = zext i1 %i.ah to i64
  %i.aj = xor i64 %i.ai, %i.i
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = add nuw nsw i64 %.015, 8                ; 2 uses
  %i.an = icmp samesign ult i64 %i.am, %i.g
  br i1 %i.an, label %scalar.ph, label %.loopexit, !llvm.loop !312
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_ltus64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = ashr i32 %3, 10
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = lshr exact i32 %.v.v.i, 3
  %narrow20 = add nuw nsw i32 %i.j, 1
  %i.k = zext nneg i32 %narrow20 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 56
  %i.l = ptrtoaddr ptr %0 to i64
  %i.m = ptrtoaddr ptr %1 to i64
  %i.n = sub i64 %i.m, %i.l
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.k, 536870908                ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert17 = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat18 = shufflevector <2 x i64> %broadcast.splatinsert17, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 3                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8
  %wide.load19 = load <2 x i64>, ptr %i.r, align 8
  %i.s = icmp ult <2 x i64> %wide.load, %broadcast.splat18
  %i.t = icmp ult <2 x i64> %wide.load19, %broadcast.splat18
  %i.u = zext <2 x i1> %i.s to <2 x i64>
  %i.v = zext <2 x i1> %i.t to <2 x i64>
  %i.w = xor <2 x i64> %broadcast.splat, %i.u
  %i.x = xor <2 x i64> %broadcast.splat, %i.v
  %i.y = sub nsw <2 x i64> zeroinitializer, %i.w
  %i.z = sub nsw <2 x i64> zeroinitializer, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x i64> %i.y, ptr %i.aa, align 8
  store <2 x i64> %i.z, ptr %i.ab, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.k
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.015.ph = phi i64 [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ad = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ad, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ae = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ae, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.015 = phi i64 [ %i.am, %scalar.ph ], [ %.015.ph, %scalar.ph.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.015
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp ult i64 %i.ag, %2
  %i.ai = zext i1 %i.ah to i64
  %i.aj = xor i64 %i.ai, %i.i
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = add nuw nsw i64 %.015, 8                ; 2 uses
  %i.an = icmp samesign ult i64 %i.am, %i.g
  br i1 %i.an, label %scalar.ph, label %.loopexit, !llvm.loop !314
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_leus64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %i.g = ashr i32 %3, 10
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = lshr exact i32 %.v.v.i, 3
  %narrow18 = add nuw nsw i32 %i.i, 1             ; 2 uses
  %i.j = zext nneg i32 %narrow18 to i64           ; 2 uses
  %xtraiter = and i64 %i.j, 1
  %i.k = icmp eq i32 %.v.v.i, 0
  br i1 %i.k, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.j, 536870910
  br label %bb.c

.unr-lcssa:                                       ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.b, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.015.epil.init = phi i64 [ 0, %bb.a ], [ %i.al, %.unr-lcssa ] ; 2 uses
  %lcmp.mod17 = trunc i32 %narrow18 to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.015.epil.init
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp ule i64 %i.m, %2
  %i.o = zext i1 %i.n to i64
  %i.p = xor i64 %i.o, %i.h
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.015.epil.init
  store i64 %i.q, ptr %i.r, align 8
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.s = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.s, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %bb.b
  %i.t = zext nneg i32 %.v.v.i to i64
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  %scevgep.i = getelementptr i8, ptr %i.u, i64 8
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.v = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.v, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %bb.b, %.preheader.preheader.i
  ret void

bb.c:                                             ; preds = %bb.c, %.new
  %.015 = phi i64 [ 0, %.new ], [ %i.al, %bb.c ]  ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.015
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp ule i64 %i.x, %2
  %i.z = zext i1 %i.y to i64
  %i.aa = xor i64 %i.z, %i.h
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = or disjoint i64 %.015, 8                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp ule i64 %i.af, %2
  %i.ah = zext i1 %i.ag to i64
  %i.ai = xor i64 %i.ah, %i.h
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  store i64 %i.aj, ptr %i.ak, align 8
  %i.al = add nuw nsw i64 %.015, 16               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %bb.c, !llvm.loop !315
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_ssadd8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check22 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check22
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load23 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load24 = load <16 x i8>, ptr %i.p, align 1
  %wide.load25 = load <16 x i8>, ptr %i.q, align 1
  %i.r = tail call <16 x i8> @llvm.sadd.sat.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load24)
  %i.s = tail call <16 x i8> @llvm.sadd.sat.v16i8(<16 x i8> %wide.load23, <16 x i8> %wide.load25)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1
  store <16 x i8> %i.s, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index27.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.01519.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index27 = phi i64 [ %index.next30, %vec.epilog.vector.body ], [ %index27.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index27
  %wide.load28 = load <8 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %index27
  %wide.load29 = load <8 x i8>, ptr %i.x, align 1
  %i.y = tail call <8 x i8> @llvm.sadd.sat.v8i8(<8 x i8> %wide.load28, <8 x i8> %wide.load29)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index27
  store <8 x i8> %i.y, ptr %i.z, align 1
  %index.next30 = add nuw i64 %index27, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next30, %i.g
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !317

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.01519 = phi i64 [ %.01519.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.01519
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.01519
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = tail call i8 @llvm.sadd.sat.i8(i8 %i.ac, i8 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.01519
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = or disjoint i64 %.01519, 1              ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = tail call i8 @llvm.sadd.sat.i8(i8 %i.aj, i8 %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = add nuw nsw i64 %.01519, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !318

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ap = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ap, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.aq = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aq, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_ssadd16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow32 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow32 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check22 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check22
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load23 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load24 = load <8 x i16>, ptr %i.t, align 2
  %wide.load25 = load <8 x i16>, ptr %i.u, align 2
  %i.v = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load24)
  %i.w = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %wide.load23, <8 x i16> %wide.load25)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <8 x i16> %i.v, ptr %i.x, align 2
  store <8 x i16> %i.w, ptr %i.y, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !319

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index27.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.01519.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index27 = phi i64 [ %index.next30, %vec.epilog.vector.body ], [ %index27.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.aa = shl nuw i64 %index27, 1                 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %wide.load28 = load <4 x i16>, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa
  %wide.load29 = load <4 x i16>, ptr %i.ac, align 2
  %i.ad = tail call <4 x i16> @llvm.sadd.sat.v4i16(<4 x i16> %wide.load28, <4 x i16> %wide.load29)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store <4 x i16> %i.ad, ptr %i.ae, align 2
  %index.next30 = add nuw i64 %index27, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next30, %i.i
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !320

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.01519 = phi i64 [ %i.am, %vec.epilog.scalar.ph ], [ %.01519.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.01519
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.01519
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = tail call i16 @llvm.sadd.sat.i16(i16 %i.ah, i16 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.01519
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = add nuw nsw i64 %.01519, 2              ; 2 uses
  %i.an = icmp samesign ult i64 %i.am, %i.g
  br i1 %i.an, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !321

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ao = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ao, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ap = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ap, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_ssadd32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow23 = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow23 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check19 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check19
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load20 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load21 = load <4 x i32>, ptr %i.s, align 4
  %wide.load22 = load <4 x i32>, ptr %i.t, align 4
  %i.u = tail call <4 x i32> @llvm.sadd.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load21)
  %i.v = tail call <4 x i32> @llvm.sadd.sat.v4i32(<4 x i32> %wide.load20, <4 x i32> %wide.load22)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %i.u, ptr %i.w, align 4
  store <4 x i32> %i.v, ptr %i.x, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !322

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.016 = phi i64 [ %i.ae, %scalar.ph ], [ %.016.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.016
  %i.ac = load i32, ptr %i.ab, align 4
  %.0.i = tail call noundef i32 @llvm.sadd.sat.i32(i32 %i.aa, i32 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i32 %.0.i, ptr %i.ad, align 4
  %i.ae = add nuw nsw i64 %.016, 4                ; 2 uses
  %i.af = icmp samesign ult i64 %i.ae, %i.g
  br i1 %i.af, label %scalar.ph, label %.loopexit, !llvm.loop !323

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ag = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ag, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ah = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ah, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_ssadd64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %i.g = lshr exact i32 %.v.v.i, 3
  %narrow19 = add nuw nsw i32 %i.g, 1             ; 2 uses
  %i.h = zext nneg i32 %narrow19 to i64           ; 2 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i32 %.v.v.i, 0
  br i1 %i.i, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.h, 536870910
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.016 = phi i64 [ 0, %.new ], [ %i.u, %bb.b ]   ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.016
  %i.m = load i64, ptr %i.l, align 8
  %.0.i = tail call noundef i64 @llvm.sadd.sat.i64(i64 %i.k, i64 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i64 %.0.i, ptr %i.n, align 8
  %i.o = or disjoint i64 %.016, 8                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.o
  %i.s = load i64, ptr %i.r, align 8
  %.0.i.1 = tail call noundef i64 @llvm.sadd.sat.i64(i64 %i.q, i64 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  store i64 %.0.i.1, ptr %i.t, align 8
  %i.u = add nuw nsw i64 %.016, 16                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %bb.b, !llvm.loop !324

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.016.epil.init = phi i64 [ 0, %bb.a ], [ %i.u, %.unr-lcssa ] ; 3 uses
  %lcmp.mod18 = trunc i32 %narrow19 to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.016.epil.init
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.016.epil.init
  %i.y = load i64, ptr %i.x, align 8
  %.0.i.epil = tail call noundef i64 @llvm.sadd.sat.i64(i64 %i.w, i64 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.016.epil.init
  store i64 %.0.i.epil, ptr %i.z, align 8
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.aa = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aa, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %bb.c
  %i.ab = zext nneg i32 %.v.v.i to i64
  %i.ac = getelementptr i8, ptr %0, i64 %i.ab
  %scevgep.i = getelementptr i8, ptr %i.ac, i64 8
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ad = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ad, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %bb.c, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sssub8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check22 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check22
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load23 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load24 = load <16 x i8>, ptr %i.p, align 1
  %wide.load25 = load <16 x i8>, ptr %i.q, align 1
  %i.r = tail call <16 x i8> @llvm.ssub.sat.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load24)
  %i.s = tail call <16 x i8> @llvm.ssub.sat.v16i8(<16 x i8> %wide.load23, <16 x i8> %wide.load25)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1
  store <16 x i8> %i.s, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !325

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index27.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.01519.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index27 = phi i64 [ %index.next30, %vec.epilog.vector.body ], [ %index27.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index27
  %wide.load28 = load <8 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %index27
  %wide.load29 = load <8 x i8>, ptr %i.x, align 1
  %i.y = tail call <8 x i8> @llvm.ssub.sat.v8i8(<8 x i8> %wide.load28, <8 x i8> %wide.load29)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index27
  store <8 x i8> %i.y, ptr %i.z, align 1
  %index.next30 = add nuw i64 %index27, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next30, %i.g
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !326

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.01519 = phi i64 [ %.01519.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.01519
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.01519
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = tail call i8 @llvm.ssub.sat.i8(i8 %i.ac, i8 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.01519
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = or disjoint i64 %.01519, 1              ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = tail call i8 @llvm.ssub.sat.i8(i8 %i.aj, i8 %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = add nuw nsw i64 %.01519, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !327

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ap = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ap, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.aq = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aq, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sssub16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow32 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow32 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check22 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check22
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load23 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load24 = load <8 x i16>, ptr %i.t, align 2
  %wide.load25 = load <8 x i16>, ptr %i.u, align 2
  %i.v = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load24)
  %i.w = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %wide.load23, <8 x i16> %wide.load25)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <8 x i16> %i.v, ptr %i.x, align 2
  store <8 x i16> %i.w, ptr %i.y, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !328

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index27.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.01519.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index27 = phi i64 [ %index.next30, %vec.epilog.vector.body ], [ %index27.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.aa = shl nuw i64 %index27, 1                 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %wide.load28 = load <4 x i16>, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa
  %wide.load29 = load <4 x i16>, ptr %i.ac, align 2
  %i.ad = tail call <4 x i16> @llvm.ssub.sat.v4i16(<4 x i16> %wide.load28, <4 x i16> %wide.load29)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store <4 x i16> %i.ad, ptr %i.ae, align 2
  %index.next30 = add nuw i64 %index27, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next30, %i.i
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !329

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.01519 = phi i64 [ %i.am, %vec.epilog.scalar.ph ], [ %.01519.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.01519
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.01519
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = tail call i16 @llvm.ssub.sat.i16(i16 %i.ah, i16 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.01519
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = add nuw nsw i64 %.01519, 2              ; 2 uses
  %i.an = icmp samesign ult i64 %i.am, %i.g
  br i1 %i.an, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !330

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ao = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ao, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ap = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ap, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sssub32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow23 = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow23 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check19 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check19
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load20 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load21 = load <4 x i32>, ptr %i.s, align 4
  %wide.load22 = load <4 x i32>, ptr %i.t, align 4
  %i.u = icmp ne <4 x i32> %wide.load, %wide.load21
  %i.v = icmp ne <4 x i32> %wide.load20, %wide.load22
  %i.w = zext <4 x i1> %i.u to <4 x i32>
  %i.x = zext <4 x i1> %i.v to <4 x i32>
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %i.w, ptr %i.y, align 4
  store <4 x i32> %i.x, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !331

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.016 = phi i64 [ %i.ai, %scalar.ph ], [ %.016.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.016
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp ne i32 %i.ac, %i.ae
  %i.ag = zext i1 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = add nuw nsw i64 %.016, 4                ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, %i.g
  br i1 %i.aj, label %scalar.ph, label %.loopexit, !llvm.loop !332

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ak = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ak, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.al = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.al, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sssub64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow23 = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow23 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 120
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check19 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check19
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 3                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8
  %wide.load20 = load <2 x i64>, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load21 = load <2 x i64>, ptr %i.s, align 8
  %wide.load22 = load <2 x i64>, ptr %i.t, align 8
  %i.u = icmp ne <2 x i64> %wide.load, %wide.load21
  %i.v = icmp ne <2 x i64> %wide.load20, %wide.load22
  %i.w = zext <2 x i1> %i.u to <2 x i64>
  %i.x = zext <2 x i1> %i.v to <2 x i64>
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x i64> %i.w, ptr %i.y, align 8
  store <2 x i64> %i.x, ptr %i.z, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !333

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.016 = phi i64 [ %i.ai, %scalar.ph ], [ %.016.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.016
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp ne i64 %i.ac, %i.ae
  %i.ag = zext i1 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = add nuw nsw i64 %.016, 8                ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, %i.g
  br i1 %i.aj, label %scalar.ph, label %.loopexit, !llvm.loop !334

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ak = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ak, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.al = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.al, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_usadd8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check18 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check18
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load19 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load20 = load <16 x i8>, ptr %i.p, align 1
  %wide.load21 = load <16 x i8>, ptr %i.q, align 1
  %i.r = tail call <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load20)
  %i.s = tail call <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8> %wide.load19, <16 x i8> %wide.load21)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1
  store <16 x i8> %i.s, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !335

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index23.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.015.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index23 = phi i64 [ %index.next26, %vec.epilog.vector.body ], [ %index23.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index23
  %wide.load24 = load <8 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %index23
  %wide.load25 = load <8 x i8>, ptr %i.x, align 1
  %i.y = tail call <8 x i8> @llvm.uadd.sat.v8i8(<8 x i8> %wide.load24, <8 x i8> %wide.load25)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index23
  store <8 x i8> %i.y, ptr %i.z, align 1
  %index.next26 = add nuw i64 %index23, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next26, %i.g
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !336

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.015 = phi i64 [ %.015.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.015
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.015
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = tail call i8 @llvm.uadd.sat.i8(i8 %i.ac, i8 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = or disjoint i64 %.015, 1                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = tail call i8 @llvm.uadd.sat.i8(i8 %i.aj, i8 %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = add nuw nsw i64 %.015, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !337

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ap = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ap, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.aq = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aq, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_usadd16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow28 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow28 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check18 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check18
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load19 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load20 = load <8 x i16>, ptr %i.t, align 2
  %wide.load21 = load <8 x i16>, ptr %i.u, align 2
  %i.v = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load20)
  %i.w = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %wide.load19, <8 x i16> %wide.load21)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <8 x i16> %i.v, ptr %i.x, align 2
  store <8 x i16> %i.w, ptr %i.y, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !338

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index23.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.015.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index23 = phi i64 [ %index.next26, %vec.epilog.vector.body ], [ %index23.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.aa = shl nuw i64 %index23, 1                 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %wide.load24 = load <4 x i16>, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa
  %wide.load25 = load <4 x i16>, ptr %i.ac, align 2
  %i.ad = tail call <4 x i16> @llvm.uadd.sat.v4i16(<4 x i16> %wide.load24, <4 x i16> %wide.load25)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store <4 x i16> %i.ad, ptr %i.ae, align 2
  %index.next26 = add nuw i64 %index23, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next26, %i.i
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !339

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.015 = phi i64 [ %i.am, %vec.epilog.scalar.ph ], [ %.015.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.015
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.015
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = tail call i16 @llvm.uadd.sat.i16(i16 %i.ah, i16 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = add nuw nsw i64 %.015, 2                ; 2 uses
  %i.an = icmp samesign ult i64 %i.am, %i.g
  br i1 %i.an, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !340

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ao = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ao, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ap = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ap, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_usadd32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow23 = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow23 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check19 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check19
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load20 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load21 = load <4 x i32>, ptr %i.s, align 4
  %wide.load22 = load <4 x i32>, ptr %i.t, align 4
  %i.u = tail call <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load21)
  %i.v = tail call <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32> %wide.load20, <4 x i32> %wide.load22)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %i.u, ptr %i.w, align 4
  store <4 x i32> %i.v, ptr %i.x, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !341

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.016 = phi i64 [ %i.ae, %scalar.ph ], [ %.016.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.016
  %i.ac = load i32, ptr %i.ab, align 4
  %spec.select = tail call i32 @llvm.uadd.sat.i32(i32 %i.aa, i32 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i32 %spec.select, ptr %i.ad, align 4
  %i.ae = add nuw nsw i64 %.016, 4                ; 2 uses
  %i.af = icmp samesign ult i64 %i.ae, %i.g
  br i1 %i.af, label %scalar.ph, label %.loopexit, !llvm.loop !342

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ag = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ag, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ah = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ah, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_usadd64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow23 = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow23 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 120
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check19 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check19
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 3                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8
  %wide.load20 = load <2 x i64>, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load21 = load <2 x i64>, ptr %i.s, align 8
  %wide.load22 = load <2 x i64>, ptr %i.t, align 8
  %i.u = tail call <2 x i64> @llvm.uadd.sat.v2i64(<2 x i64> %wide.load, <2 x i64> %wide.load21)
  %i.v = tail call <2 x i64> @llvm.uadd.sat.v2i64(<2 x i64> %wide.load20, <2 x i64> %wide.load22)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.u, ptr %i.w, align 8
  store <2 x i64> %i.v, ptr %i.x, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.016 = phi i64 [ %i.ae, %scalar.ph ], [ %.016.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.016
  %i.ac = load i64, ptr %i.ab, align 8
  %spec.select = tail call i64 @llvm.uadd.sat.i64(i64 %i.aa, i64 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i64 %spec.select, ptr %i.ad, align 8
  %i.ae = add nuw nsw i64 %.016, 8                ; 2 uses
  %i.af = icmp samesign ult i64 %i.ae, %i.g
  br i1 %i.af, label %scalar.ph, label %.loopexit, !llvm.loop !344

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ag = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ag, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ah = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ah, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_ussub8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check18 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check18
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load19 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load20 = load <16 x i8>, ptr %i.p, align 1
  %wide.load21 = load <16 x i8>, ptr %i.q, align 1
  %i.r = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load20)
  %i.s = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %wide.load19, <16 x i8> %wide.load21)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1
  store <16 x i8> %i.s, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !345

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index23.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.015.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index23 = phi i64 [ %index.next26, %vec.epilog.vector.body ], [ %index23.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index23
  %wide.load24 = load <8 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %index23
  %wide.load25 = load <8 x i8>, ptr %i.x, align 1
  %i.y = tail call <8 x i8> @llvm.usub.sat.v8i8(<8 x i8> %wide.load24, <8 x i8> %wide.load25)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index23
  store <8 x i8> %i.y, ptr %i.z, align 1
  %index.next26 = add nuw i64 %index23, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next26, %i.g
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !346

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.015 = phi i64 [ %.015.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.015
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.015
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = tail call i8 @llvm.usub.sat.i8(i8 %i.ac, i8 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = or disjoint i64 %.015, 1                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = tail call i8 @llvm.usub.sat.i8(i8 %i.aj, i8 %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = add nuw nsw i64 %.015, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !347

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ap = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ap, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.aq = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aq, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_ussub16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow28 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow28 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check18 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check18
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load19 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load20 = load <8 x i16>, ptr %i.t, align 2
  %wide.load21 = load <8 x i16>, ptr %i.u, align 2
  %i.v = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load20)
  %i.w = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %wide.load19, <8 x i16> %wide.load21)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <8 x i16> %i.v, ptr %i.x, align 2
  store <8 x i16> %i.w, ptr %i.y, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !348

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index23.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.015.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index23 = phi i64 [ %index.next26, %vec.epilog.vector.body ], [ %index23.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.aa = shl nuw i64 %index23, 1                 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %wide.load24 = load <4 x i16>, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa
  %wide.load25 = load <4 x i16>, ptr %i.ac, align 2
  %i.ad = tail call <4 x i16> @llvm.usub.sat.v4i16(<4 x i16> %wide.load24, <4 x i16> %wide.load25)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store <4 x i16> %i.ad, ptr %i.ae, align 2
  %index.next26 = add nuw i64 %index23, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next26, %i.i
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !349

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.015 = phi i64 [ %i.am, %vec.epilog.scalar.ph ], [ %.015.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.015
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.015
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = tail call i16 @llvm.usub.sat.i16(i16 %i.ah, i16 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = add nuw nsw i64 %.015, 2                ; 2 uses
  %i.an = icmp samesign ult i64 %i.am, %i.g
  br i1 %i.an, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !350

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ao = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ao, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ap = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ap, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_ussub32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow23 = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow23 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check19 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check19
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load20 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load21 = load <4 x i32>, ptr %i.s, align 4
  %wide.load22 = load <4 x i32>, ptr %i.t, align 4
  %i.u = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load21)
  %i.v = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load20, <4 x i32> %wide.load22)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %i.u, ptr %i.w, align 4
  store <4 x i32> %i.v, ptr %i.x, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !351

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.016 = phi i64 [ %i.ae, %scalar.ph ], [ %.016.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.016
  %i.ac = load i32, ptr %i.ab, align 4
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %i.aa, i32 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i32 %spec.select, ptr %i.ad, align 4
  %i.ae = add nuw nsw i64 %.016, 4                ; 2 uses
  %i.af = icmp samesign ult i64 %i.ae, %i.g
  br i1 %i.af, label %scalar.ph, label %.loopexit, !llvm.loop !352

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ag = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ag, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ah = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ah, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_ussub64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow23 = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow23 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 120
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check19 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check19
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 3                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8
  %wide.load20 = load <2 x i64>, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load21 = load <2 x i64>, ptr %i.s, align 8
  %wide.load22 = load <2 x i64>, ptr %i.t, align 8
  %i.u = tail call <2 x i64> @llvm.usub.sat.v2i64(<2 x i64> %wide.load, <2 x i64> %wide.load21)
  %i.v = tail call <2 x i64> @llvm.usub.sat.v2i64(<2 x i64> %wide.load20, <2 x i64> %wide.load22)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.u, ptr %i.w, align 8
  store <2 x i64> %i.v, ptr %i.x, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !353

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.016 = phi i64 [ %i.ae, %scalar.ph ], [ %.016.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.016
  %i.ac = load i64, ptr %i.ab, align 8
  %spec.select = tail call i64 @llvm.usub.sat.i64(i64 %i.aa, i64 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i64 %spec.select, ptr %i.ad, align 8
  %i.ae = add nuw nsw i64 %.016, 8                ; 2 uses
  %i.af = icmp samesign ult i64 %i.ae, %i.g
  br i1 %i.af, label %scalar.ph, label %.loopexit, !llvm.loop !354

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ag = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ag, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ah = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ah, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_smin8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check21 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check21
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load22 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load23 = load <16 x i8>, ptr %i.p, align 1
  %wide.load24 = load <16 x i8>, ptr %i.q, align 1
  %i.r = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load23)
  %i.s = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load22, <16 x i8> %wide.load24)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1
  store <16 x i8> %i.s, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index26.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.018.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index26 = phi i64 [ %index.next29, %vec.epilog.vector.body ], [ %index26.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index26
  %wide.load27 = load <8 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %index26
  %wide.load28 = load <8 x i8>, ptr %i.x, align 1
  %i.y = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %wide.load27, <8 x i8> %wide.load28)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index26
  store <8 x i8> %i.y, ptr %i.z, align 1
  %index.next29 = add nuw i64 %index26, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next29, %i.g
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !356

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.018 = phi i64 [ %.018.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.018
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = tail call i8 @llvm.smin.i8(i8 %i.ac, i8 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = or disjoint i64 %.018, 1                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = tail call i8 @llvm.smin.i8(i8 %i.aj, i8 %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = add nuw nsw i64 %.018, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !357

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ap = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ap, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.aq = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aq, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_smin16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow31 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow31 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check21 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check21
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load22 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load23 = load <8 x i16>, ptr %i.t, align 2
  %wide.load24 = load <8 x i16>, ptr %i.u, align 2
  %i.v = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load23)
  %i.w = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load22, <8 x i16> %wide.load24)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <8 x i16> %i.v, ptr %i.x, align 2
  store <8 x i16> %i.w, ptr %i.y, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index26.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.018.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index26 = phi i64 [ %index.next29, %vec.epilog.vector.body ], [ %index26.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.aa = shl nuw i64 %index26, 1                 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %wide.load27 = load <4 x i16>, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa
  %wide.load28 = load <4 x i16>, ptr %i.ac, align 2
  %i.ad = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %wide.load27, <4 x i16> %wide.load28)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store <4 x i16> %i.ad, ptr %i.ae, align 2
  %index.next29 = add nuw i64 %index26, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next29, %i.i
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !359

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.018 = phi i64 [ %i.am, %vec.epilog.scalar.ph ], [ %.018.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.018
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = tail call i16 @llvm.smin.i16(i16 %i.ah, i16 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = add nuw nsw i64 %.018, 2                ; 2 uses
  %i.an = icmp samesign ult i64 %i.am, %i.g
  br i1 %i.an, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !360

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ao = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ao, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ap = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ap, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_smin32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow25 = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow25 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check21 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check21
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load22 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load23 = load <4 x i32>, ptr %i.s, align 4
  %wide.load24 = load <4 x i32>, ptr %i.t, align 4
  %i.u = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load23)
  %i.v = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load22, <4 x i32> %wide.load24)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %i.u, ptr %i.w, align 4
  store <4 x i32> %i.v, ptr %i.x, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !361

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.018.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.018 = phi i64 [ %i.af, %scalar.ph ], [ %.018.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.018
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = add nuw nsw i64 %.018, 4                ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, %i.g
  br i1 %i.ag, label %scalar.ph, label %.loopexit, !llvm.loop !362

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ah = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ah, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ai = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ai, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_smin64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow25 = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow25 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 88
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check21 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check21
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 3                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8
  %wide.load22 = load <2 x i64>, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load23 = load <2 x i64>, ptr %i.s, align 8
  %wide.load24 = load <2 x i64>, ptr %i.t, align 8
  %i.u = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load, <2 x i64> %wide.load23)
  %i.v = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load22, <2 x i64> %wide.load24)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.u, ptr %i.w, align 8
  store <2 x i64> %i.v, ptr %i.x, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !363

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.018.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.018 = phi i64 [ %i.af, %scalar.ph ], [ %.018.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.018
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = add nuw nsw i64 %.018, 8                ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, %i.g
  br i1 %i.ag, label %scalar.ph, label %.loopexit, !llvm.loop !364

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ah = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ah, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ai = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ai, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_smax8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check21 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check21
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load22 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load23 = load <16 x i8>, ptr %i.p, align 1
  %wide.load24 = load <16 x i8>, ptr %i.q, align 1
  %i.r = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load23)
  %i.s = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load22, <16 x i8> %wide.load24)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1
  store <16 x i8> %i.s, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !365

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index26.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.018.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index26 = phi i64 [ %index.next29, %vec.epilog.vector.body ], [ %index26.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index26
  %wide.load27 = load <8 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %index26
  %wide.load28 = load <8 x i8>, ptr %i.x, align 1
  %i.y = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %wide.load27, <8 x i8> %wide.load28)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index26
  store <8 x i8> %i.y, ptr %i.z, align 1
  %index.next29 = add nuw i64 %index26, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next29, %i.g
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !366

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.018 = phi i64 [ %.018.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.018
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = tail call i8 @llvm.smax.i8(i8 %i.ac, i8 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = or disjoint i64 %.018, 1                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = tail call i8 @llvm.smax.i8(i8 %i.aj, i8 %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = add nuw nsw i64 %.018, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !367

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ap = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ap, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.aq = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aq, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_smax16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow31 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow31 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check21 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check21
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load22 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load23 = load <8 x i16>, ptr %i.t, align 2
  %wide.load24 = load <8 x i16>, ptr %i.u, align 2
  %i.v = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load23)
  %i.w = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load22, <8 x i16> %wide.load24)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <8 x i16> %i.v, ptr %i.x, align 2
  store <8 x i16> %i.w, ptr %i.y, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !368

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index26.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.018.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index26 = phi i64 [ %index.next29, %vec.epilog.vector.body ], [ %index26.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.aa = shl nuw i64 %index26, 1                 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %wide.load27 = load <4 x i16>, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa
  %wide.load28 = load <4 x i16>, ptr %i.ac, align 2
  %i.ad = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load27, <4 x i16> %wide.load28)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store <4 x i16> %i.ad, ptr %i.ae, align 2
  %index.next29 = add nuw i64 %index26, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next29, %i.i
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !369

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.018 = phi i64 [ %i.am, %vec.epilog.scalar.ph ], [ %.018.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.018
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = tail call i16 @llvm.smax.i16(i16 %i.ah, i16 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = add nuw nsw i64 %.018, 2                ; 2 uses
  %i.an = icmp samesign ult i64 %i.am, %i.g
  br i1 %i.an, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !370

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ao = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ao, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ap = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ap, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_smax32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow25 = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow25 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check21 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check21
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load22 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load23 = load <4 x i32>, ptr %i.s, align 4
  %wide.load24 = load <4 x i32>, ptr %i.t, align 4
  %i.u = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load23)
  %i.v = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load22, <4 x i32> %wide.load24)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %i.u, ptr %i.w, align 4
  store <4 x i32> %i.v, ptr %i.x, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !371

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.018.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.018 = phi i64 [ %i.af, %scalar.ph ], [ %.018.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.018
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = add nuw nsw i64 %.018, 4                ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, %i.g
  br i1 %i.ag, label %scalar.ph, label %.loopexit, !llvm.loop !372

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ah = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ah, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ai = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ai, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_smax64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow25 = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow25 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 88
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check21 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check21
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 3                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8
  %wide.load22 = load <2 x i64>, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load23 = load <2 x i64>, ptr %i.s, align 8
  %wide.load24 = load <2 x i64>, ptr %i.t, align 8
  %i.u = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load, <2 x i64> %wide.load23)
  %i.v = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load22, <2 x i64> %wide.load24)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.u, ptr %i.w, align 8
  store <2 x i64> %i.v, ptr %i.x, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !373

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.018.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.018 = phi i64 [ %i.af, %scalar.ph ], [ %.018.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.018
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = add nuw nsw i64 %.018, 8                ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, %i.g
  br i1 %i.ag, label %scalar.ph, label %.loopexit, !llvm.loop !374

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ah = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ah, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ai = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ai, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_umin8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check21 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check21
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load22 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load23 = load <16 x i8>, ptr %i.p, align 1
  %wide.load24 = load <16 x i8>, ptr %i.q, align 1
  %i.r = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load23)
  %i.s = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load22, <16 x i8> %wide.load24)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1
  store <16 x i8> %i.s, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !375

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index26.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.018.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index26 = phi i64 [ %index.next29, %vec.epilog.vector.body ], [ %index26.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index26
  %wide.load27 = load <8 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %index26
  %wide.load28 = load <8 x i8>, ptr %i.x, align 1
  %i.y = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %wide.load27, <8 x i8> %wide.load28)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index26
  store <8 x i8> %i.y, ptr %i.z, align 1
  %index.next29 = add nuw i64 %index26, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next29, %i.g
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !376

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.018 = phi i64 [ %.018.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.018
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = tail call i8 @llvm.umin.i8(i8 %i.ac, i8 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = or disjoint i64 %.018, 1                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = tail call i8 @llvm.umin.i8(i8 %i.aj, i8 %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = add nuw nsw i64 %.018, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !377

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ap = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ap, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.aq = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aq, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_umin16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow31 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow31 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check21 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check21
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load22 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load23 = load <8 x i16>, ptr %i.t, align 2
  %wide.load24 = load <8 x i16>, ptr %i.u, align 2
  %i.v = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load23)
  %i.w = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %wide.load22, <8 x i16> %wide.load24)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <8 x i16> %i.v, ptr %i.x, align 2
  store <8 x i16> %i.w, ptr %i.y, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !378

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index26.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.018.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index26 = phi i64 [ %index.next29, %vec.epilog.vector.body ], [ %index26.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.aa = shl nuw i64 %index26, 1                 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %wide.load27 = load <4 x i16>, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa
  %wide.load28 = load <4 x i16>, ptr %i.ac, align 2
  %i.ad = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load27, <4 x i16> %wide.load28)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store <4 x i16> %i.ad, ptr %i.ae, align 2
  %index.next29 = add nuw i64 %index26, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next29, %i.i
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !379

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.018 = phi i64 [ %i.am, %vec.epilog.scalar.ph ], [ %.018.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.018
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = tail call i16 @llvm.umin.i16(i16 %i.ah, i16 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = add nuw nsw i64 %.018, 2                ; 2 uses
  %i.an = icmp samesign ult i64 %i.am, %i.g
  br i1 %i.an, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !380

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ao = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ao, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ap = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ap, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_umin32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow25 = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow25 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check21 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check21
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load22 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load23 = load <4 x i32>, ptr %i.s, align 4
  %wide.load24 = load <4 x i32>, ptr %i.t, align 4
  %i.u = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load23)
  %i.v = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %wide.load22, <4 x i32> %wide.load24)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %i.u, ptr %i.w, align 4
  store <4 x i32> %i.v, ptr %i.x, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !381

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.018.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.018 = phi i64 [ %i.af, %scalar.ph ], [ %.018.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.018
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = add nuw nsw i64 %.018, 4                ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, %i.g
  br i1 %i.ag, label %scalar.ph, label %.loopexit, !llvm.loop !382

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ah = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ah, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ai = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ai, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_umin64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow25 = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow25 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 88
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check21 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check21
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 3                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8
  %wide.load22 = load <2 x i64>, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load23 = load <2 x i64>, ptr %i.s, align 8
  %wide.load24 = load <2 x i64>, ptr %i.t, align 8
  %i.u = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %wide.load, <2 x i64> %wide.load23)
  %i.v = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %wide.load22, <2 x i64> %wide.load24)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.u, ptr %i.w, align 8
  store <2 x i64> %i.v, ptr %i.x, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !383

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.018.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.018 = phi i64 [ %i.af, %scalar.ph ], [ %.018.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.018
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = add nuw nsw i64 %.018, 8                ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, %i.g
  br i1 %i.ag, label %scalar.ph, label %.loopexit, !llvm.loop !384

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ah = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ah, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ai = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ai, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_umax8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.j
  %diff.check21 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check21
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load22 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load23 = load <16 x i8>, ptr %i.p, align 1
  %wide.load24 = load <16 x i8>, ptr %i.q, align 1
  %i.r = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load23)
  %i.s = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load22, <16 x i8> %wide.load24)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1
  store <16 x i8> %i.s, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !385

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !10

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index26.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.018.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index26 = phi i64 [ %index.next29, %vec.epilog.vector.body ], [ %index26.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index26
  %wide.load27 = load <8 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %index26
  %wide.load28 = load <8 x i8>, ptr %i.x, align 1
  %i.y = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %wide.load27, <8 x i8> %wide.load28)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index26
  store <8 x i8> %i.y, ptr %i.z, align 1
  %index.next29 = add nuw i64 %index26, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next29, %i.g
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !386

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.018 = phi i64 [ %.018.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.018
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = tail call i8 @llvm.umax.i8(i8 %i.ac, i8 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = or disjoint i64 %.018, 1                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = tail call i8 @llvm.umax.i8(i8 %i.aj, i8 %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = add nuw nsw i64 %.018, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !387

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ap = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ap, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.aq = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.aq, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_umax16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow31 = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow31 to i64           ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.j, %i.l
  %diff.check21 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check21
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl nuw i64 %index, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2
  %wide.load22 = load <8 x i16>, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load23 = load <8 x i16>, ptr %i.t, align 2
  %wide.load24 = load <8 x i16>, ptr %i.u, align 2
  %i.v = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load23)
  %i.w = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load22, <8 x i16> %wide.load24)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <8 x i16> %i.v, ptr %i.x, align 2
  store <8 x i16> %i.w, ptr %i.y, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !388

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !12

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index26.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.018.ph = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index26 = phi i64 [ %index.next29, %vec.epilog.vector.body ], [ %index26.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.aa = shl nuw i64 %index26, 1                 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %wide.load27 = load <4 x i16>, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa
  %wide.load28 = load <4 x i16>, ptr %i.ac, align 2
  %i.ad = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load27, <4 x i16> %wide.load28)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store <4 x i16> %i.ad, ptr %i.ae, align 2
  %index.next29 = add nuw i64 %index26, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next29, %i.i
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !389

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.018 = phi i64 [ %i.am, %vec.epilog.scalar.ph ], [ %.018.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.018
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = tail call i16 @llvm.umax.i16(i16 %i.ah, i16 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = add nuw nsw i64 %.018, 2                ; 2 uses
  %i.an = icmp samesign ult i64 %i.am, %i.g
  br i1 %i.an, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !390

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ao = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ao, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %vec.epilog.middle.block
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ap = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ap, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %vec.epilog.middle.block, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_umax32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow25 = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow25 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = ptrtoaddr ptr %2 to i64
  %i.m = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = sub i64 %i.l, %i.j
  %diff.check21 = icmp ugt i64 %i.n, -32
  %conflict.rdx = or i1 %diff.check, %diff.check21
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl nuw i64 %index, 2                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load22 = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load23 = load <4 x i32>, ptr %i.s, align 4
  %wide.load24 = load <4 x i32>, ptr %i.t, align 4
  %i.u = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load23)
  %i.v = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load22, <4 x i32> %wide.load24)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %i.u, ptr %i.w, align 4
  store <4 x i32> %i.v, ptr %i.x, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !391

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.018.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.018 = phi i64 [ %i.af, %scalar.ph ], [ %.018.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.018
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.018
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.018
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = add nuw nsw i64 %.018, 4                ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, %i.g
  br i1 %i.ag, label %scalar.ph, label %.loopexit, !llvm.loop !392

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ah = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ah, label %.preheader.preheader.i, label %clear_high.exit, !prof !11

.preheader.preheader.i:                           ; preds = %.loopexit
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.g
  %narrow = sub nuw nsw i32 %i.e, %.v.v.i
  %i.ai = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ai, i1 false)
  br label %clear_high.exit

clear_high.exit:                                  ; preds = %.loopexit, %.preheader.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_umax64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow25 = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow25 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 88
end_hunk_6
