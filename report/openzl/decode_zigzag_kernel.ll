Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_zigzag_kernel?download=true
inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZL_zigzagDecode64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %2, 4
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  %wide.load10 = load <2 x i64>, ptr %i.e, align 8, !tbaa !12 ; 2 uses
  %i.f = and <2 x i64> %wide.load, splat (i64 1)
  %i.g = and <2 x i64> %wide.load10, splat (i64 1)
  %i.h = sub nsw <2 x i64> zeroinitializer, %i.f
  %i.i = sub nsw <2 x i64> zeroinitializer, %i.g
  %i.j = lshr <2 x i64> %wide.load, splat (i64 1)
  %i.k = lshr <2 x i64> %wide.load10, splat (i64 1)
  %i.l = xor <2 x i64> %i.j, %i.h
  %i.m = xor <2 x i64> %i.k, %i.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x i64> %i.l, ptr %i.n, align 8, !tbaa !12
  store <2 x i64> %i.m, ptr %i.o, align 8, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader11

.lr.ph.preheader11:                               ; preds = %.lr.ph.preheader, %middle.block
  %.09.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader11
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09.ph
  %i.r = load i64, ptr %i.q, align 8, !tbaa !12   ; 2 uses
  %i.s = and i64 %i.r, 1
  %i.t = sub nsw i64 0, %i.s
  %i.u = lshr i64 %i.r, 1
  %i.v = xor i64 %i.u, %i.t
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.ph
  store i64 %i.v, ptr %i.w, align 8, !tbaa !12
  %i.x = or disjoint i64 %.09.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader11
  %.09.unr = phi i64 [ %.09.ph, %.lr.ph.preheader11 ], [ %i.x, %.lr.ph.prol ]
  %i.y = icmp eq i64 %2, %.neg
  br i1 %i.y, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.09 = phi i64 [ %i.ao, %.lr.ph ], [ %.09.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !12  ; 2 uses
  %i.ab = and i64 %i.aa, 1
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = lshr i64 %i.aa, 1
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !12
  %i.ag = add nuw i64 %.09, 1                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !12 ; 2 uses
  %i.aj = and i64 %i.ai, 1
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = lshr i64 %i.ai, 1
  %i.am = xor i64 %i.al, %i.ak
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag
  store i64 %i.am, ptr %i.an, align 8, !tbaa !12
  %i.ao = add nuw i64 %.09, 2                     ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !23
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZL_zigzagDecode32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %2, 8
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x i32>, ptr %i.d, align 4, !tbaa !16 ; 2 uses
  %wide.load10 = load <4 x i32>, ptr %i.e, align 4, !tbaa !16 ; 2 uses
  %i.f = and <4 x i32> %wide.load, splat (i32 1)
  %i.g = and <4 x i32> %wide.load10, splat (i32 1)
  %i.h = sub nsw <4 x i32> zeroinitializer, %i.f
  %i.i = sub nsw <4 x i32> zeroinitializer, %i.g
  %i.j = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.k = lshr <4 x i32> %wide.load10, splat (i32 1)
  %i.l = xor <4 x i32> %i.j, %i.h
  %i.m = xor <4 x i32> %i.k, %i.i
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %i.l, ptr %i.n, align 4, !tbaa !16
  store <4 x i32> %i.m, ptr %i.o, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader11

.lr.ph.preheader11:                               ; preds = %.lr.ph.preheader, %middle.block
  %.09.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader11
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.09.ph
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16   ; 2 uses
  %i.s = and i32 %i.r, 1
  %i.t = sub nsw i32 0, %i.s
  %i.u = lshr i32 %i.r, 1
  %i.v = xor i32 %i.u, %i.t
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.09.ph
  store i32 %i.v, ptr %i.w, align 4, !tbaa !16
  %i.x = or disjoint i64 %.09.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader11
  %.09.unr = phi i64 [ %.09.ph, %.lr.ph.preheader11 ], [ %i.x, %.lr.ph.prol ]
  %i.y = icmp eq i64 %2, %.neg
  br i1 %i.y, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.09 = phi i64 [ %i.ao, %.lr.ph ], [ %.09.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.09
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !16  ; 2 uses
  %i.ab = and i32 %i.aa, 1
  %i.ac = sub nsw i32 0, %i.ab
  %i.ad = lshr i32 %i.aa, 1
  %i.ae = xor i32 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.09
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !16
  %i.ag = add nuw i64 %.09, 1                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16 ; 2 uses
  %i.aj = and i32 %i.ai, 1
  %i.ak = sub nsw i32 0, %i.aj
  %i.al = lshr i32 %i.ai, 1
  %i.am = xor i32 %i.al, %i.ak
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  store i32 %i.am, ptr %i.an, align 4, !tbaa !16
  %i.ao = add nuw i64 %.09, 2                     ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !25
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZL_zigzagDecode16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %2, 4
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %2, 16
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <8 x i16>, ptr %i.e, align 2, !tbaa !18 ; 2 uses
  %wide.load11 = load <8 x i16>, ptr %i.f, align 2, !tbaa !18 ; 2 uses
  %i.g = and <8 x i16> %wide.load, splat (i16 1)
  %i.h = and <8 x i16> %wide.load11, splat (i16 1)
  %i.i = sub nsw <8 x i16> zeroinitializer, %i.g
  %i.j = sub nsw <8 x i16> zeroinitializer, %i.h
  %i.k = lshr <8 x i16> %wide.load, splat (i16 1)
  %i.l = lshr <8 x i16> %wide.load11, splat (i16 1)
  %i.m = xor <8 x i16> %i.k, %i.i
  %i.n = xor <8 x i16> %i.l, %i.j
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <8 x i16> %i.m, ptr %i.o, align 2, !tbaa !18
  store <8 x i16> %i.n, ptr %i.p, align 2, !tbaa !18
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %2, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index13
  %wide.load14 = load <4 x i16>, ptr %i.r, align 2, !tbaa !18 ; 2 uses
  %i.s = and <4 x i16> %wide.load14, splat (i16 1)
  %i.t = sub nsw <4 x i16> zeroinitializer, %i.s
  %i.u = lshr <4 x i16> %wide.load14, splat (i16 1)
  %i.v = xor <4 x i16> %i.u, %i.t
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index13
  store <4 x i16> %i.v, ptr %i.w, align 2, !tbaa !18
  %index.next15 = add nuw i64 %index13, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next15, %n.vec12
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %2, %n.vec12
  br i1 %cmp.n16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.09.ph
  %i.z = load i16, ptr %i.y, align 2, !tbaa !18   ; 2 uses
  %i.aa = and i16 %i.z, 1
  %i.ab = sub nsw i16 0, %i.aa
  %i.ac = lshr i16 %i.z, 1
  %i.ad = xor i16 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.09.ph
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !18
  %i.af = or disjoint i64 %.09.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.09.unr = phi i64 [ %.09.ph, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = icmp eq i64 %2, %.neg
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.09 = phi i64 [ %i.aw, %.lr.ph ], [ %.09.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.09
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !18 ; 2 uses
  %i.aj = and i16 %i.ai, 1
  %i.ak = sub nsw i16 0, %i.aj
  %i.al = lshr i16 %i.ai, 1
  %i.am = xor i16 %i.al, %i.ak
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.09
  store i16 %i.am, ptr %i.an, align 2, !tbaa !18
  %i.ao = add nuw i64 %.09, 1                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !18 ; 2 uses
  %i.ar = and i16 %i.aq, 1
  %i.as = sub nsw i16 0, %i.ar
  %i.at = lshr i16 %i.aq, 1
  %i.au = xor i16 %i.at, %i.as
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ao
  store i16 %i.au, ptr %i.av, align 2, !tbaa !18
  %i.aw = add nuw i64 %.09, 2                     ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.aw, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !28
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZL_zigzagDecode8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %2, 4
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %2, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <16 x i8>, ptr %i.e, align 1, !tbaa !20 ; 2 uses
  %wide.load11 = load <16 x i8>, ptr %i.f, align 1, !tbaa !20 ; 2 uses
  %i.g = and <16 x i8> %wide.load, splat (i8 1)
  %i.h = and <16 x i8> %wide.load11, splat (i8 1)
  %i.i = sub nsw <16 x i8> zeroinitializer, %i.g
  %i.j = sub nsw <16 x i8> zeroinitializer, %i.h
  %i.k = lshr <16 x i8> %wide.load, splat (i8 1)
  %i.l = lshr <16 x i8> %wide.load11, splat (i8 1)
  %i.m = xor <16 x i8> %i.k, %i.i
  %i.n = xor <16 x i8> %i.l, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <16 x i8> %i.m, ptr %i.o, align 1, !tbaa !20
  store <16 x i8> %i.n, ptr %i.p, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %2, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %index13
  %wide.load14 = load <4 x i8>, ptr %i.r, align 1, !tbaa !20 ; 2 uses
  %i.s = and <4 x i8> %wide.load14, splat (i8 1)
  %i.t = sub nsw <4 x i8> zeroinitializer, %i.s
  %i.u = lshr <4 x i8> %wide.load14, splat (i8 1)
  %i.v = xor <4 x i8> %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %index13
  store <4 x i8> %i.v, ptr %i.w, align 1, !tbaa !20
  %index.next15 = add nuw i64 %index13, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next15, %n.vec12
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %2, %n.vec12
  br i1 %cmp.n16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.09.ph
  %i.z = load i8, ptr %i.y, align 1, !tbaa !20    ; 2 uses
  %i.aa = and i8 %i.z, 1
  %i.ab = sub nsw i8 0, %i.aa
  %i.ac = lshr i8 %i.z, 1
  %i.ad = xor i8 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.09.ph
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !20
  %i.af = or disjoint i64 %.09.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.09.unr = phi i64 [ %.09.ph, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = icmp eq i64 %2, %.neg
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.09 = phi i64 [ %i.aw, %.lr.ph ], [ %.09.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.09
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !20  ; 2 uses
  %i.aj = and i8 %i.ai, 1
  %i.ak = sub nsw i8 0, %i.aj
  %i.al = lshr i8 %i.ai, 1
  %i.am = xor i8 %i.al, %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.09
  store i8 %i.am, ptr %i.an, align 1, !tbaa !20
  %i.ao = add nuw i64 %.09, 1                     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !20  ; 2 uses
  %i.ar = and i8 %i.aq, 1
  %i.as = sub nsw i8 0, %i.ar
  %i.at = lshr i8 %i.aq, 1
  %i.au = xor i8 %i.at, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  store i8 %i.au, ptr %i.av, align 1, !tbaa !20
  %i.aw = add nuw i64 %.09, 2                     ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.aw, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !31
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZL_zigzagDecode(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64                    ; 4 uses
  %5 = ptrtoaddr ptr %0 to i64                    ; 4 uses
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %3)
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %.split, label %ZL_zigzagDecode8.exit

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %3, i1 true)
  switch i64 %i.c, label %ZL_zigzagDecode8.exit [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

bb.b:                                             ; preds = %.split
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %ZL_zigzagDecode8.exit, label %iter.check87

iter.check87:                                     ; preds = %bb.b
  %min.iters.check74 = icmp ult i64 %2, 4
  %i.d = sub i64 %4, %5
  %diff.check72 = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check74, %diff.check72
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check75

vector.main.loop.iter.check75:                    ; preds = %iter.check87
  %min.iters.check76 = icmp ult i64 %2, 32
  br i1 %min.iters.check76, label %vec.epilog.ph91, label %vector.ph77

vector.ph77:                                      ; preds = %vector.main.loop.iter.check75
  %i.e = and i64 %2, 28
  %n.vec78 = and i64 %2, -32                      ; 4 uses
  br label %vector.body79

vector.body79:                                    ; preds = %vector.ph77, %vector.body79
  %index80 = phi i64 [ 0, %vector.ph77 ], [ %index.next83, %vector.body79 ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load81 = load <16 x i8>, ptr %i.f, align 1, !tbaa !20 ; 2 uses
  %wide.load82 = load <16 x i8>, ptr %i.g, align 1, !tbaa !20 ; 2 uses
  %i.h = and <16 x i8> %wide.load81, splat (i8 1)
  %i.i = and <16 x i8> %wide.load82, splat (i8 1)
  %i.j = sub nsw <16 x i8> zeroinitializer, %i.h
  %i.k = sub nsw <16 x i8> zeroinitializer, %i.i
  %i.l = lshr <16 x i8> %wide.load81, splat (i8 1)
  %i.m = lshr <16 x i8> %wide.load82, splat (i8 1)
  %i.n = xor <16 x i8> %i.l, %i.j
  %i.o = xor <16 x i8> %i.m, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> %i.n, ptr %i.p, align 1, !tbaa !20
  store <16 x i8> %i.o, ptr %i.q, align 1, !tbaa !20
  %index.next83 = add nuw i64 %index80, 32        ; 2 uses
  %i.r = icmp eq i64 %index.next83, %n.vec78
  br i1 %i.r, label %middle.block84, label %vector.body79, !llvm.loop !32

middle.block84:                                   ; preds = %vector.body79
  %cmp.n85 = icmp eq i64 %2, %n.vec78
  br i1 %cmp.n85, label %ZL_zigzagDecode8.exit, label %vec.epilog.iter.check89

vec.epilog.iter.check89:                          ; preds = %middle.block84
  %min.epilog.iters.check90 = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check90, label %.lr.ph.i.preheader, label %vec.epilog.ph91, !prof !21

vec.epilog.ph91:                                  ; preds = %vector.main.loop.iter.check75, %vec.epilog.iter.check89
  %vec.epilog.resume.val86 = phi i64 [ %n.vec78, %vec.epilog.iter.check89 ], [ 0, %vector.main.loop.iter.check75 ]
  %n.vec92 = and i64 %2, -4                       ; 3 uses
  br label %vec.epilog.vector.body93

vec.epilog.vector.body93:                         ; preds = %vec.epilog.vector.body93, %vec.epilog.ph91
  %index94 = phi i64 [ %vec.epilog.resume.val86, %vec.epilog.ph91 ], [ %index.next96, %vec.epilog.vector.body93 ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %index94
  %wide.load95 = load <4 x i8>, ptr %i.s, align 1, !tbaa !20 ; 2 uses
  %i.t = and <4 x i8> %wide.load95, splat (i8 1)
  %i.u = sub nsw <4 x i8> zeroinitializer, %i.t
  %i.v = lshr <4 x i8> %wide.load95, splat (i8 1)
  %i.w = xor <4 x i8> %i.v, %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %index94
  store <4 x i8> %i.w, ptr %i.x, align 1, !tbaa !20
  %index.next96 = add nuw i64 %index94, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next96, %n.vec92
  br i1 %i.y, label %vec.epilog.middle.block97, label %vec.epilog.vector.body93, !llvm.loop !33

vec.epilog.middle.block97:                        ; preds = %vec.epilog.vector.body93
  %cmp.n98 = icmp eq i64 %2, %n.vec92
  br i1 %cmp.n98, label %ZL_zigzagDecode8.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check87, %vec.epilog.iter.check89, %vec.epilog.middle.block97
  %.09.i.ph = phi i64 [ 0, %iter.check87 ], [ %n.vec78, %vec.epilog.iter.check89 ], [ %n.vec92, %vec.epilog.middle.block97 ] ; 5 uses
  %.neg116 = or disjoint i64 %.09.i.ph, 1
  %xtraiter112 = and i64 %2, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i.ph
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !20   ; 2 uses
  %i.ab = and i8 %i.aa, 1
  %i.ac = sub nsw i8 0, %i.ab
  %i.ad = lshr i8 %i.aa, 1
  %i.ae = xor i8 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i.ph
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !20
  %i.ag = or disjoint i64 %.09.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %.lr.ph.i.preheader ], [ %i.ag, %.lr.ph.i.prol ]
  %i.ah = icmp eq i64 %2, %.neg116
  br i1 %i.ah, label %ZL_zigzagDecode8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi i64 [ %i.ax, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !20  ; 2 uses
  %i.ak = and i8 %i.aj, 1
  %i.al = sub nsw i8 0, %i.ak
  %i.am = lshr i8 %i.aj, 1
  %i.an = xor i8 %i.am, %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.09.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !20
  %i.ap = add nuw i64 %.09.i, 1                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !20  ; 2 uses
  %i.as = and i8 %i.ar, 1
  %i.at = sub nsw i8 0, %i.as
  %i.au = lshr i8 %i.ar, 1
  %i.av = xor i8 %i.au, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !20
  %i.ax = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ax, %2
  br i1 %exitcond.not.i.1, label %ZL_zigzagDecode8.exit, label %.lr.ph.i, !llvm.loop !34

bb.c:                                             ; preds = %.split
  %.not.i12 = icmp eq i64 %2, 0
  br i1 %.not.i12, label %ZL_zigzagDecode8.exit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %min.iters.check54 = icmp ult i64 %2, 4
  %i.ay = sub i64 %4, %5
  %diff.check52 = icmp ugt i64 %i.ay, -32
  %or.cond100 = or i1 %min.iters.check54, %diff.check52
  br i1 %or.cond100, label %.lr.ph.i13.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check55 = icmp ult i64 %2, 16
  br i1 %min.iters.check55, label %vec.epilog.ph, label %vector.ph56

vector.ph56:                                      ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %2, 12
  %n.vec57 = and i64 %2, -16                      ; 4 uses
  br label %vector.body58

vector.body58:                                    ; preds = %vector.ph56, %vector.body58
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next62, %vector.body58 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index59 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load60 = load <8 x i16>, ptr %i.ba, align 2, !tbaa !18 ; 2 uses
  %wide.load61 = load <8 x i16>, ptr %i.bb, align 2, !tbaa !18 ; 2 uses
  %i.bc = and <8 x i16> %wide.load60, splat (i16 1)
  %i.bd = and <8 x i16> %wide.load61, splat (i16 1)
  %i.be = sub nsw <8 x i16> zeroinitializer, %i.bc
  %i.bf = sub nsw <8 x i16> zeroinitializer, %i.bd
  %i.bg = lshr <8 x i16> %wide.load60, splat (i16 1)
  %i.bh = lshr <8 x i16> %wide.load61, splat (i16 1)
  %i.bi = xor <8 x i16> %i.bg, %i.be
  %i.bj = xor <8 x i16> %i.bh, %i.bf
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index59 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <8 x i16> %i.bi, ptr %i.bk, align 2, !tbaa !18
  store <8 x i16> %i.bj, ptr %i.bl, align 2, !tbaa !18
  %index.next62 = add nuw i64 %index59, 16        ; 2 uses
  %i.bm = icmp eq i64 %index.next62, %n.vec57
  br i1 %i.bm, label %middle.block63, label %vector.body58, !llvm.loop !35

middle.block63:                                   ; preds = %vector.body58
  %cmp.n64 = icmp eq i64 %2, %n.vec57
  br i1 %cmp.n64, label %ZL_zigzagDecode8.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block63
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i13.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec57, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %2, -4                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index66
  %wide.load67 = load <4 x i16>, ptr %i.bn, align 2, !tbaa !18 ; 2 uses
  %i.bo = and <4 x i16> %wide.load67, splat (i16 1)
  %i.bp = sub nsw <4 x i16> zeroinitializer, %i.bo
  %i.bq = lshr <4 x i16> %wide.load67, splat (i16 1)
  %i.br = xor <4 x i16> %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index66
  store <4 x i16> %i.br, ptr %i.bs, align 2, !tbaa !18
  %index.next68 = add nuw i64 %index66, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next68, %n.vec65
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n69 = icmp eq i64 %2, %n.vec65
  br i1 %cmp.n69, label %ZL_zigzagDecode8.exit, label %.lr.ph.i13.preheader

.lr.ph.i13.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i14.ph = phi i64 [ 0, %iter.check ], [ %n.vec57, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ] ; 5 uses
  %.neg115 = or disjoint i64 %.09.i14.ph, 1
  %xtraiter110 = and i64 %2, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %.lr.ph.i13.prol.loopexit, label %.lr.ph.i13.prol

.lr.ph.i13.prol:                                  ; preds = %.lr.ph.i13.preheader
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.09.i14.ph
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !18 ; 2 uses
  %i.bw = and i16 %i.bv, 1
  %i.bx = sub nsw i16 0, %i.bw
  %i.by = lshr i16 %i.bv, 1
  %i.bz = xor i16 %i.by, %i.bx
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.09.i14.ph
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !18
  %i.cb = or disjoint i64 %.09.i14.ph, 1
  br label %.lr.ph.i13.prol.loopexit

.lr.ph.i13.prol.loopexit:                         ; preds = %.lr.ph.i13.prol, %.lr.ph.i13.preheader
  %.09.i14.unr = phi i64 [ %.09.i14.ph, %.lr.ph.i13.preheader ], [ %i.cb, %.lr.ph.i13.prol ]
  %i.cc = icmp eq i64 %2, %.neg115
  br i1 %i.cc, label %ZL_zigzagDecode8.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.i13.prol.loopexit, %.lr.ph.i13
  %.09.i14 = phi i64 [ %i.cs, %.lr.ph.i13 ], [ %.09.i14.unr, %.lr.ph.i13.prol.loopexit ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.09.i14
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !18 ; 2 uses
  %i.cf = and i16 %i.ce, 1
  %i.cg = sub nsw i16 0, %i.cf
  %i.ch = lshr i16 %i.ce, 1
  %i.ci = xor i16 %i.ch, %i.cg
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.09.i14
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !18
  %i.ck = add nuw i64 %.09.i14, 1                 ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !18 ; 2 uses
  %i.cn = and i16 %i.cm, 1
  %i.co = sub nsw i16 0, %i.cn
  %i.cp = lshr i16 %i.cm, 1
  %i.cq = xor i16 %i.cp, %i.co
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ck
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !18
  %i.cs = add nuw i64 %.09.i14, 2                 ; 2 uses
  %exitcond.not.i15.1 = icmp eq i64 %i.cs, %2
  br i1 %exitcond.not.i15.1, label %ZL_zigzagDecode8.exit, label %.lr.ph.i13, !llvm.loop !37

bb.d:                                             ; preds = %.split
  %.not.i16 = icmp eq i64 %2, 0
  br i1 %.not.i16, label %ZL_zigzagDecode8.exit, label %.lr.ph.i17.preheader

.lr.ph.i17.preheader:                             ; preds = %bb.d
  %min.iters.check40 = icmp ult i64 %2, 8
  %i.ct = sub i64 %4, %5
  %diff.check38 = icmp ugt i64 %i.ct, -32
  %or.cond101 = or i1 %min.iters.check40, %diff.check38
  br i1 %or.cond101, label %.lr.ph.i17.preheader104, label %vector.ph41

vector.ph41:                                      ; preds = %.lr.ph.i17.preheader
  %n.vec42 = and i64 %2, -8                       ; 3 uses
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next47, %vector.body43 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index44 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load45 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !16 ; 2 uses
  %wide.load46 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !16 ; 2 uses
  %i.cw = and <4 x i32> %wide.load45, splat (i32 1)
  %i.cx = and <4 x i32> %wide.load46, splat (i32 1)
  %i.cy = sub nsw <4 x i32> zeroinitializer, %i.cw
  %i.cz = sub nsw <4 x i32> zeroinitializer, %i.cx
  %i.da = lshr <4 x i32> %wide.load45, splat (i32 1)
  %i.db = lshr <4 x i32> %wide.load46, splat (i32 1)
  %i.dc = xor <4 x i32> %i.da, %i.cy
  %i.dd = xor <4 x i32> %i.db, %i.cz
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index44 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <4 x i32> %i.dc, ptr %i.de, align 4, !tbaa !16
  store <4 x i32> %i.dd, ptr %i.df, align 4, !tbaa !16
  %index.next47 = add nuw i64 %index44, 8         ; 2 uses
  %i.dg = icmp eq i64 %index.next47, %n.vec42
  br i1 %i.dg, label %middle.block48, label %vector.body43, !llvm.loop !38

middle.block48:                                   ; preds = %vector.body43
  %cmp.n49 = icmp eq i64 %2, %n.vec42
  br i1 %cmp.n49, label %ZL_zigzagDecode8.exit, label %.lr.ph.i17.preheader104

.lr.ph.i17.preheader104:                          ; preds = %.lr.ph.i17.preheader, %middle.block48
  %.09.i18.ph = phi i64 [ 0, %.lr.ph.i17.preheader ], [ %n.vec42, %middle.block48 ] ; 5 uses
  %.neg114 = or disjoint i64 %.09.i18.ph, 1
  %xtraiter108 = and i64 %2, 1
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod109.not, label %.lr.ph.i17.prol.loopexit, label %.lr.ph.i17.prol

.lr.ph.i17.prol:                                  ; preds = %.lr.ph.i17.preheader104
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.09.i18.ph
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !16 ; 2 uses
  %i.dj = and i32 %i.di, 1
  %i.dk = sub nsw i32 0, %i.dj
  %i.dl = lshr i32 %i.di, 1
  %i.dm = xor i32 %i.dl, %i.dk
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.09.i18.ph
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !16
  %i.do = or disjoint i64 %.09.i18.ph, 1
  br label %.lr.ph.i17.prol.loopexit

.lr.ph.i17.prol.loopexit:                         ; preds = %.lr.ph.i17.prol, %.lr.ph.i17.preheader104
  %.09.i18.unr = phi i64 [ %.09.i18.ph, %.lr.ph.i17.preheader104 ], [ %i.do, %.lr.ph.i17.prol ]
  %i.dp = icmp eq i64 %2, %.neg114
  br i1 %i.dp, label %ZL_zigzagDecode8.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17.prol.loopexit, %.lr.ph.i17
  %.09.i18 = phi i64 [ %i.ef, %.lr.ph.i17 ], [ %.09.i18.unr, %.lr.ph.i17.prol.loopexit ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.09.i18
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !16 ; 2 uses
  %i.ds = and i32 %i.dr, 1
  %i.dt = sub nsw i32 0, %i.ds
  %i.du = lshr i32 %i.dr, 1
  %i.dv = xor i32 %i.du, %i.dt
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.09.i18
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !16
  %i.dx = add nuw i64 %.09.i18, 1                 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !16 ; 2 uses
  %i.ea = and i32 %i.dz, 1
  %i.eb = sub nsw i32 0, %i.ea
  %i.ec = lshr i32 %i.dz, 1
  %i.ed = xor i32 %i.ec, %i.eb
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dx
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !16
  %i.ef = add nuw i64 %.09.i18, 2                 ; 2 uses
  %exitcond.not.i19.1 = icmp eq i64 %i.ef, %2
  br i1 %exitcond.not.i19.1, label %ZL_zigzagDecode8.exit, label %.lr.ph.i17, !llvm.loop !39

bb.e:                                             ; preds = %.split
  %.not.i20 = icmp eq i64 %2, 0
  br i1 %.not.i20, label %ZL_zigzagDecode8.exit, label %.lr.ph.i21.preheader

.lr.ph.i21.preheader:                             ; preds = %bb.e
  %min.iters.check = icmp ult i64 %2, 4
  %i.eg = sub i64 %4, %5
  %diff.check = icmp ugt i64 %i.eg, -32
  %or.cond102 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond102, label %.lr.ph.i21.preheader106, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i21.preheader
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load = load <2 x i64>, ptr %i.eh, align 8, !tbaa !12 ; 2 uses
  %wide.load36 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !12 ; 2 uses
  %i.ej = and <2 x i64> %wide.load, splat (i64 1)
  %i.ek = and <2 x i64> %wide.load36, splat (i64 1)
  %i.el = sub nsw <2 x i64> zeroinitializer, %i.ej
  %i.em = sub nsw <2 x i64> zeroinitializer, %i.ek
  %i.en = lshr <2 x i64> %wide.load, splat (i64 1)
  %i.eo = lshr <2 x i64> %wide.load36, splat (i64 1)
  %i.ep = xor <2 x i64> %i.en, %i.el
  %i.eq = xor <2 x i64> %i.eo, %i.em
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <2 x i64> %i.ep, ptr %i.er, align 8, !tbaa !12
  store <2 x i64> %i.eq, ptr %i.es, align 8, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %ZL_zigzagDecode8.exit, label %.lr.ph.i21.preheader106

.lr.ph.i21.preheader106:                          ; preds = %.lr.ph.i21.preheader, %middle.block
  %.09.i22.ph = phi i64 [ 0, %.lr.ph.i21.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.i22.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i21.prol.loopexit, label %.lr.ph.i21.prol

.lr.ph.i21.prol:                                  ; preds = %.lr.ph.i21.preheader106
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09.i22.ph
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !12 ; 2 uses
  %i.ew = and i64 %i.ev, 1
  %i.ex = sub nsw i64 0, %i.ew
  %i.ey = lshr i64 %i.ev, 1
  %i.ez = xor i64 %i.ey, %i.ex
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i22.ph
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !12
  %i.fb = or disjoint i64 %.09.i22.ph, 1
  br label %.lr.ph.i21.prol.loopexit

.lr.ph.i21.prol.loopexit:                         ; preds = %.lr.ph.i21.prol, %.lr.ph.i21.preheader106
  %.09.i22.unr = phi i64 [ %.09.i22.ph, %.lr.ph.i21.preheader106 ], [ %i.fb, %.lr.ph.i21.prol ]
  %i.fc = icmp eq i64 %2, %.neg
  br i1 %i.fc, label %ZL_zigzagDecode8.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.prol.loopexit, %.lr.ph.i21
  %.09.i22 = phi i64 [ %i.fs, %.lr.ph.i21 ], [ %.09.i22.unr, %.lr.ph.i21.prol.loopexit ] ; 4 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09.i22
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !12 ; 2 uses
  %i.ff = and i64 %i.fe, 1
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = lshr i64 %i.fe, 1
  %i.fi = xor i64 %i.fh, %i.fg
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i22
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !12
  %i.fk = add nuw i64 %.09.i22, 1                 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !12 ; 2 uses
  %i.fn = and i64 %i.fm, 1
  %i.fo = sub nsw i64 0, %i.fn
  %i.fp = lshr i64 %i.fm, 1
  %i.fq = xor i64 %i.fp, %i.fo
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fk
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !12
  %i.fs = add nuw i64 %.09.i22, 2                 ; 2 uses
  %exitcond.not.i23.1 = icmp eq i64 %i.fs, %2
  br i1 %exitcond.not.i23.1, label %ZL_zigzagDecode8.exit, label %.lr.ph.i21, !llvm.loop !41

ZL_zigzagDecode8.exit:                            ; preds = %.lr.ph.i21.prol.loopexit, %.lr.ph.i21, %.lr.ph.i17.prol.loopexit, %.lr.ph.i17, %.lr.ph.i13.prol.loopexit, %.lr.ph.i13, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %middle.block48, %middle.block63, %vec.epilog.middle.block, %middle.block84, %vec.epilog.middle.block97, %bb.e, %bb.d, %bb.c, %bb.b, %.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!8, !8, i64 0}
!17 = !{!"short", !7, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"branch_weights", i32 4, i32 12}
!20 = !{!7, !7, i64 0}
!21 = !{!"branch_weights", i32 4, i32 28}
!22 = distinct !{!22, !13, !14, !15}
!23 = distinct !{!23, !13, !14}
!24 = distinct !{!24, !13, !14, !15}
!25 = distinct !{!25, !13, !14}
!26 = distinct !{!26, !13, !14, !15}
!27 = distinct !{!27, !13, !14, !15}
!28 = distinct !{!28, !13, !14}
!29 = distinct !{!29, !13, !14, !15}
!30 = distinct !{!30, !13, !14, !15}
!31 = distinct !{!31, !13, !14}
!32 = distinct !{!32, !13, !14, !15}
!33 = distinct !{!33, !13, !14, !15}
!34 = distinct !{!34, !13, !14}
!35 = distinct !{!35, !13, !14, !15}
!36 = distinct !{!36, !13, !14, !15}
!37 = distinct !{!37, !13, !14}
!38 = distinct !{!38, !13, !14, !15}
!39 = distinct !{!39, !13, !14}
!40 = distinct !{!40, !13, !14, !15}
!41 = distinct !{!41, !13, !14}
end_hunk_0
