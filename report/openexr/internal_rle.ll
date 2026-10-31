Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_rle?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @internal_rle_compress(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 5 uses
  %i.d = add nuw i64 %3, %i.b                     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.063 = phi ptr [ %2, %bb.a ], [ %.265, %.loopexit ] ; 12 uses
  %.pn = phi ptr [ %2, %bb.a ], [ %.362, %.loopexit ] ; 3 uses
  %.057 = phi i64 [ 0, %bb.a ], [ %.2, %.loopexit ] ; 6 uses
  %.063109 = ptrtoaddr ptr %.063 to i64           ; 3 uses
  %.pn100 = ptrtoaddr ptr %.pn to i64
  %i.e = icmp ult ptr %.063, %i.c
  br i1 %i.e, label %.preheader73, label %bb.k

.preheader73:                                     ; preds = %bb.b
  %.16074 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 3 uses
  %i.f = icmp ult ptr %.16074, %i.c
  br i1 %i.f, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader73
  %i.g = load i8, ptr %.063, align 1, !tbaa !11
  %scevgep = getelementptr i8, ptr %.pn, i64 %i.d
  %i.h = sub i64 0, %.pn100
  %scevgep101 = getelementptr i8, ptr %scevgep, i64 %i.h ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.16076 = phi ptr [ %.16074, %.lr.ph ], [ %.160, %bb.d ] ; 3 uses
  %.05675 = phi i8 [ 0, %.lr.ph ], [ %i.l, %bb.d ] ; 3 uses
  %i.i = load i8, ptr %.16076, align 1, !tbaa !11
  %i.j = icmp eq i8 %i.g, %i.i
  %i.k = icmp ne i8 %.05675, 127
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw nsw i8 %.05675, 1                ; 2 uses
  %.160 = getelementptr inbounds nuw i8, ptr %.16076, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %.160, %scevgep101
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !0

.critedge:                                        ; preds = %bb.d, %bb.c
  %.056.lcssa = phi i8 [ %.05675, %bb.c ], [ %i.l, %bb.d ] ; 3 uses
  %.160.lcssa = phi ptr [ %.16076, %bb.c ], [ %scevgep101, %bb.d ] ; 3 uses
  %i.m = icmp samesign ugt i8 %.056.lcssa, 1
  br i1 %i.m, label %bb.e, label %.preheader

.preheader:                                       ; preds = %.preheader73, %.critedge
  %.160.lcssa119 = phi ptr [ %.160.lcssa, %.critedge ], [ %.16074, %.preheader73 ] ; 5 uses
  %.056.lcssa118 = phi i8 [ %.056.lcssa, %.critedge ], [ 0, %.preheader73 ] ; 2 uses
  %.160.lcssa103120 = ptrtoaddr ptr %.160.lcssa119 to i64 ; 2 uses
  %i.n = icmp ult ptr %.160.lcssa119, %i.c
  br i1 %i.n, label %.lr.ph85.preheader, label %.critedge2

.lr.ph85.preheader:                               ; preds = %.preheader
  %scevgep102 = getelementptr i8, ptr %.160.lcssa119, i64 %i.d
  %i.o = sub i64 0, %.160.lcssa103120
  %scevgep104 = getelementptr i8, ptr %scevgep102, i64 %i.o ; 2 uses
  br label %.lr.ph85

bb.e:                                             ; preds = %.critedge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.057 ; 2 uses
  store i8 %.056.lcssa, ptr %i.p, align 1, !tbaa !11
  %i.q = load i8, ptr %.063, align 1, !tbaa !11
  %i.r = add i64 %.057, 2
  %i.s = getelementptr i8, ptr %i.p, i64 1
  store i8 %i.q, ptr %i.s, align 1, !tbaa !11
  br label %.loopexit

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %bb.j
  %.1.in83 = phi i8 [ %.184, %bb.j ], [ %.056.lcssa118, %.lr.ph85.preheader ] ; 2 uses
  %.26182 = phi ptr [ %i.t, %bb.j ], [ %.160.lcssa119, %.lr.ph85.preheader ] ; 5 uses
  %.184 = add nuw nsw i8 %.1.in83, 1              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.26182, i64 1 ; 4 uses
  %.not = icmp ult ptr %i.t, %i.c
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph85
  %i.u = load i8, ptr %.26182, align 1, !tbaa !11 ; 2 uses
  %i.v = load i8, ptr %i.t, align 1, !tbaa !11
  %.not70 = icmp eq i8 %i.u, %i.v
  br i1 %.not70, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.26182, i64 2 ; 2 uses
  %.not71 = icmp ult ptr %i.w, %i.c
  br i1 %.not71, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = icmp ne i8 %i.u, %i.x
  %i.z = icmp ne i8 %.184, 127
  %or.cond7 = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond7, label %bb.j, label %.critedge2.loopexit

bb.i:                                             ; preds = %bb.g, %bb.f, %.lr.ph85
  %.old6.not = icmp eq i8 %.184, 127
  br i1 %.old6.not, label %.critedge2.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %exitcond105.not = icmp eq ptr %i.t, %scevgep104
  br i1 %exitcond105.not, label %.critedge2.loopexit, label %.lr.ph85, !llvm.loop !1

.critedge2.loopexit:                              ; preds = %bb.h, %bb.j, %bb.i
  %.261.lcssa.ph = phi ptr [ %.26182, %bb.i ], [ %scevgep104, %bb.j ], [ %.26182, %bb.h ] ; 2 uses
  %.1.in.lcssa.ph = phi i8 [ 126, %bb.i ], [ %.184, %bb.j ], [ %.1.in83, %bb.h ]
  %.pre = ptrtoaddr ptr %.261.lcssa.ph to i64
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.preheader
  %.261.lcssa108.pre-phi = phi i64 [ %.pre, %.critedge2.loopexit ], [ %.160.lcssa103120, %.preheader ] ; 2 uses
  %.261.lcssa = phi ptr [ %.261.lcssa.ph, %.critedge2.loopexit ], [ %.160.lcssa119, %.preheader ] ; 5 uses
  %.1.in.lcssa = phi i8 [ %.1.in.lcssa.ph, %.critedge2.loopexit ], [ %.056.lcssa118, %.preheader ]
  %i.aa = xor i8 %.1.in.lcssa, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.057
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !11
  %.15894 = add i64 %.057, 1                      ; 8 uses
  %i.ac = icmp ult ptr %.063, %.261.lcssa
  br i1 %i.ac, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.critedge2
  %i.ad = add i64 %.15894, %.261.lcssa108.pre-phi
  %i.ae = sub i64 %i.ad, %.063109                 ; 4 uses
  %i.af = sub i64 %.261.lcssa108.pre-phi, %.063109 ; 7 uses
  %min.iters.check = icmp ult i64 %i.af, 8
  br i1 %min.iters.check, label %.lr.ph97.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ag = add i64 %.057, %i.a
  %i.ah = sub i64 %i.ag, %.063109
  %diff.check = icmp ult i64 %i.ah, 31
  br i1 %diff.check, label %.lr.ph97.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check121 = icmp ult i64 %i.af, 32
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.af, 24
  %n.vec = and i64 %i.af, -32                     ; 5 uses
  %i.aj = add i64 %.15894, %n.vec
  %i.ak = getelementptr i8, ptr %.063, i64 %n.vec ; 2 uses
  %i.al = getelementptr i8, ptr %0, i64 %.15894
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.063, i64 %index ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !11
  %wide.load122 = load <16 x i8>, ptr %i.am, align 1, !tbaa !11
  %i.an = getelementptr i8, ptr %i.al, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <16 x i8> %wide.load, ptr %i.an, align 1, !tbaa !11
  store <16 x i8> %wide.load122, ptr %i.ao, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph97.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec123 = and i64 %i.af, -8                   ; 4 uses
  %i.aq = add i64 %.15894, %n.vec123
  %i.ar = getelementptr i8, ptr %.063, i64 %n.vec123 ; 2 uses
  %i.as = getelementptr i8, ptr %0, i64 %.15894
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 3 uses
  %next.gep125 = getelementptr i8, ptr %.063, i64 %index124
  %wide.load126 = load <8 x i8>, ptr %next.gep125, align 1, !tbaa !11
  %i.at = getelementptr i8, ptr %i.as, i64 %index124
  store <8 x i8> %wide.load126, ptr %i.at, align 1, !tbaa !11
  %index.next127 = add nuw i64 %index124, 8       ; 2 uses
  %i.au = icmp eq i64 %index.next127, %n.vec123
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n128 = icmp eq i64 %i.af, %n.vec123
  br i1 %cmp.n128, label %.loopexit, label %.lr.ph97.preheader

.lr.ph97.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.15896.ph = phi i64 [ %.15894, %iter.check ], [ %.15894, %vector.memcheck ], [ %i.aj, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.16495.ph = phi ptr [ %.063, %iter.check ], [ %.063, %vector.memcheck ], [ %i.ak, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader, %.lr.ph97
  %.15896 = phi i64 [ %.158, %.lr.ph97 ], [ %.15896.ph, %.lr.ph97.preheader ] ; 2 uses
  %.16495 = phi ptr [ %i.av, %.lr.ph97 ], [ %.16495.ph, %.lr.ph97.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.16495, i64 1 ; 2 uses
  %i.aw = load i8, ptr %.16495, align 1, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %.15896
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !11
  %.158 = add i64 %.15896, 1                      ; 2 uses
  %exitcond110.not = icmp eq i64 %.158, %i.ae
  br i1 %exitcond110.not, label %.loopexit, label %.lr.ph97, !llvm.loop !24

.loopexit:                                        ; preds = %.lr.ph97, %middle.block, %vec.epilog.middle.block, %.critedge2, %bb.e
  %.265 = phi ptr [ %.160.lcssa, %bb.e ], [ %.063, %.critedge2 ], [ %i.ar, %vec.epilog.middle.block ], [ %i.ak, %middle.block ], [ %i.av, %.lr.ph97 ]
  %.362 = phi ptr [ %.160.lcssa, %bb.e ], [ %.261.lcssa, %.critedge2 ], [ %.261.lcssa, %vec.epilog.middle.block ], [ %.261.lcssa, %middle.block ], [ %.261.lcssa, %.lr.ph97 ]
  %.2 = phi i64 [ %i.r, %bb.e ], [ %.15894, %.critedge2 ], [ %i.ae, %vec.epilog.middle.block ], [ %i.ae, %middle.block ], [ %i.ae, %.lr.ph97 ] ; 3 uses
  %.not72 = icmp ult i64 %.2, %1
  br i1 %.not72, label %bb.b, label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.b
  %.3 = phi i64 [ %.2, %.loopexit ], [ %.057, %bb.b ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_apply_rle(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = tail call i32 @internal_encode_alloc_buffer(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef %i.b) #7 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !33   ; 6 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.b ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %reorder_and_predict.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.k = add i64 %i.b, 1
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.02434.i = phi ptr [ %.1.i, %bb.d ], [ %i.i, %.lr.ph.preheader.i ] ; 3 uses
  %.02533.i = phi ptr [ %.126.i, %bb.d ], [ %i.m, %.lr.ph.preheader.i ] ; 3 uses
  %.02732.i = phi ptr [ %i.p, %bb.d ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02434.i, i64 1 ; 3 uses
  %i.o = load i8, ptr %.02434.i, align 1, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %.02732.i, i64 1
  store i8 %i.o, ptr %.02732.i, align 1, !tbaa !11
  %i.q = icmp ult ptr %i.n, %i.j
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.02434.i, i64 2
  %i.s = load i8, ptr %i.n, align 1, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %.02533.i, i64 1
  store i8 %i.s, ptr %.02533.i, align 1, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.126.i = phi ptr [ %i.t, %bb.c ], [ %.02533.i, %.lr.ph.i ]
  %.1.i = phi ptr [ %i.r, %bb.c ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.u = icmp ult ptr %.1.i, %i.j
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b
  %.not42.i = icmp eq i64 %i.b, 1
  br i1 %.not42.i, label %reorder_and_predict.exit, label %.lr.ph39.preheader.i

.lr.ph39.preheader.i:                             ; preds = %._crit_edge.i
  %.12835.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  %i.w = load i8, ptr %i.f, align 1, !tbaa !11    ; 2 uses
  %i.x = add i64 %i.b, %i.g
  %i.y = add i64 %i.g, 2
  %i.z = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.y)
  %i.aa = xor i64 %i.g, -1
  %i.ab = add i64 %i.z, %i.aa                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 32
  br i1 %min.iters.check, label %.lr.ph39.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph39.preheader.i
  %n.vec = and i64 %i.ab, -32                     ; 3 uses
  %i.ac = getelementptr i8, ptr %.12835.i, i64 %n.vec
  %vector.recur.init = insertelement <16 x i8> poison, i8 %i.w, i64 15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <16 x i8> [ %vector.recur.init, %vector.ph ], [ %wide.load40, %vector.body ]
  %next.gep = getelementptr i8, ptr %.12835.i, i64 %index ; 3 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !11 ; 3 uses
  %wide.load40 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !11 ; 4 uses
  %i.ae = shufflevector <16 x i8> %vector.recur, <16 x i8> %wide.load, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.af = shufflevector <16 x i8> %wide.load, <16 x i8> %wide.load40, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.ag = sub <16 x i8> %wide.load, %i.ae
  %i.ah = sub <16 x i8> %wide.load40, %i.af
  %i.ai = xor <16 x i8> %i.ag, splat (i8 -128)
  %i.aj = xor <16 x i8> %i.ah, splat (i8 -128)
  store <16 x i8> %i.ai, ptr %next.gep, align 1, !tbaa !11
  store <16 x i8> %i.aj, ptr %i.ad, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <16 x i8> %wide.load40, i64 15
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %reorder_and_predict.exit, label %.lr.ph39.i.preheader

.lr.ph39.i.preheader:                             ; preds = %.lr.ph39.preheader.i, %middle.block
  %.12837.i.ph = phi ptr [ %.12835.i, %.lr.ph39.preheader.i ], [ %i.ac, %middle.block ]
  %.036.i.ph = phi i8 [ %i.w, %.lr.ph39.preheader.i ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %.lr.ph39.i.preheader, %.lr.ph39.i
  %.12837.i = phi ptr [ %.128.i, %.lr.ph39.i ], [ %.12837.i.ph, %.lr.ph39.i.preheader ] ; 3 uses
  %.036.i = phi i8 [ %i.al, %.lr.ph39.i ], [ %.036.i.ph, %.lr.ph39.i.preheader ]
  %i.al = load i8, ptr %.12837.i, align 1, !tbaa !11 ; 2 uses
  %i.am = sub i8 %i.al, %.036.i
  %i.an = xor i8 %i.am, -128
  store i8 %i.an, ptr %.12837.i, align 1, !tbaa !11
  %.128.i = getelementptr inbounds nuw i8, ptr %.12837.i, i64 1 ; 2 uses
  %i.ao = icmp ult ptr %.128.i, %i.v
  br i1 %i.ao, label %.lr.ph39.i, label %reorder_and_predict.exit, !llvm.loop !27

reorder_and_predict.exit:                         ; preds = %.lr.ph39.i, %middle.block, %bb.b, %._crit_edge.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !35 ; 6 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.at = load i64, ptr %i.as, align 8, !tbaa !36
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !33  ; 4 uses
  %i.av = ptrtoaddr ptr %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.b ; 5 uses
  %i.ax = add i64 %i.b, %i.av                     ; 3 uses
  %i.ay = add i64 %i.ax, 254
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.i, %reorder_and_predict.exit
  %.063.i = phi ptr [ %i.au, %reorder_and_predict.exit ], [ %.265.i, %.loopexit.i ] ; 12 uses
  %.pn.i = phi ptr [ %i.au, %reorder_and_predict.exit ], [ %.362.i, %.loopexit.i ] ; 3 uses
  %.057.i = phi i64 [ 0, %reorder_and_predict.exit ], [ %.2.i, %.loopexit.i ] ; 6 uses
  %.063109.i = ptrtoaddr ptr %.063.i to i64       ; 3 uses
  %.pn100.i = ptrtoaddr ptr %.pn.i to i64         ; 2 uses
  %i.az = icmp ult ptr %.063.i, %i.aw
  br i1 %i.az, label %.preheader73.i, label %internal_rle_compress.exit

.preheader73.i:                                   ; preds = %bb.e
  %.16074.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 3 uses
  %i.ba = icmp ult ptr %.16074.i, %i.aw
  br i1 %i.ba, label %.lr.ph.i28, label %.preheader.i

.lr.ph.i28:                                       ; preds = %.preheader73.i
  %i.bb = load i8, ptr %.063.i, align 1, !tbaa !11
  %scevgep.i = getelementptr i8, ptr %.pn.i, i64 %i.ax
  %i.bc = sub i64 0, %.pn100.i
  %scevgep101.i = getelementptr i8, ptr %scevgep.i, i64 %i.bc ; 2 uses
  %i.bd = sub i64 %i.ay, %.pn100.i
  %i.be = trunc i64 %i.bd to i8
  %i.bf = add i8 %i.be, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i28
  %.16076.i = phi ptr [ %.16074.i, %.lr.ph.i28 ], [ %.160.i, %bb.g ] ; 3 uses
  %.05675.i = phi i8 [ 0, %.lr.ph.i28 ], [ %i.bj, %bb.g ] ; 3 uses
  %i.bg = load i8, ptr %.16076.i, align 1, !tbaa !11
  %i.bh = icmp eq i8 %i.bb, %i.bg
  %i.bi = icmp ne i8 %.05675.i, 127
  %or.cond.i = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.bj = add nuw nsw i8 %.05675.i, 1
  %.160.i = getelementptr inbounds nuw i8, ptr %.16076.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %.160.i, %scevgep101.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.f, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %.056.lcssa.i = phi i8 [ %.05675.i, %bb.f ], [ %i.bf, %bb.g ] ; 3 uses
  %.160.lcssa.i = phi ptr [ %.16076.i, %bb.f ], [ %scevgep101.i, %bb.g ] ; 3 uses
  %i.bk = icmp samesign ugt i8 %.056.lcssa.i, 1
  br i1 %i.bk, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader73.i, %.critedge.i
  %.160.lcssa119.i = phi ptr [ %.160.lcssa.i, %.critedge.i ], [ %.16074.i, %.preheader73.i ] ; 5 uses
  %.056.lcssa118.i = phi i8 [ %.056.lcssa.i, %.critedge.i ], [ 0, %.preheader73.i ] ; 2 uses
  %.160.lcssa103120.i = ptrtoaddr ptr %.160.lcssa119.i to i64 ; 2 uses
  %i.bl = icmp ult ptr %.160.lcssa119.i, %i.aw
  br i1 %i.bl, label %.lr.ph85.preheader.i, label %.critedge2.i

.lr.ph85.preheader.i:                             ; preds = %.preheader.i
  %scevgep102.i = getelementptr i8, ptr %.160.lcssa119.i, i64 %i.ax
  %i.bm = sub i64 0, %.160.lcssa103120.i
  %scevgep104.i = getelementptr i8, ptr %scevgep102.i, i64 %i.bm ; 2 uses
  br label %.lr.ph85.i

bb.h:                                             ; preds = %.critedge.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.057.i ; 2 uses
  store i8 %.056.lcssa.i, ptr %i.bn, align 1, !tbaa !11
  %i.bo = load i8, ptr %.063.i, align 1, !tbaa !11
  %i.bp = add i64 %.057.i, 2
  %i.bq = getelementptr i8, ptr %i.bn, i64 1
  store i8 %i.bo, ptr %i.bq, align 1, !tbaa !11
  br label %.loopexit.i

.lr.ph85.i:                                       ; preds = %bb.m, %.lr.ph85.preheader.i
  %.1.in83.i = phi i8 [ %.184.i, %bb.m ], [ %.056.lcssa118.i, %.lr.ph85.preheader.i ] ; 2 uses
  %.26182.i = phi ptr [ %i.br, %bb.m ], [ %.160.lcssa119.i, %.lr.ph85.preheader.i ] ; 5 uses
  %.184.i = add nuw nsw i8 %.1.in83.i, 1          ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.26182.i, i64 1 ; 4 uses
  %.not.i27 = icmp ult ptr %i.br, %i.aw
  br i1 %.not.i27, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.lr.ph85.i
  %i.bs = load i8, ptr %.26182.i, align 1, !tbaa !11 ; 2 uses
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !11
  %.not70.i = icmp eq i8 %i.bs, %i.bt
  br i1 %.not70.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.26182.i, i64 2 ; 2 uses
  %.not71.i = icmp ult ptr %i.bu, %i.aw
  br i1 %.not71.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !11
  %i.bw = icmp ne i8 %i.bs, %i.bv
  %i.bx = icmp ne i8 %.184.i, 127
  %or.cond7.i = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond7.i, label %bb.m, label %.critedge2.loopexit.i

bb.l:                                             ; preds = %bb.j, %bb.i, %.lr.ph85.i
  %.old6.not.i = icmp eq i8 %.184.i, 127
  br i1 %.old6.not.i, label %.critedge2.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %exitcond105.not.i = icmp eq ptr %i.br, %scevgep104.i
  br i1 %exitcond105.not.i, label %.critedge2.loopexit.i, label %.lr.ph85.i, !llvm.loop !1

.critedge2.loopexit.i:                            ; preds = %bb.m, %bb.l, %bb.k
  %.261.lcssa.ph.i = phi ptr [ %.26182.i, %bb.l ], [ %scevgep104.i, %bb.m ], [ %.26182.i, %bb.k ] ; 2 uses
  %.1.in.lcssa.ph.i = phi i8 [ 126, %bb.l ], [ %.184.i, %bb.m ], [ %.1.in83.i, %bb.k ]
  %.pre.i = ptrtoaddr ptr %.261.lcssa.ph.i to i64
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.loopexit.i, %.preheader.i
  %.261.lcssa108.pre-phi.i = phi i64 [ %.pre.i, %.critedge2.loopexit.i ], [ %.160.lcssa103120.i, %.preheader.i ] ; 2 uses
  %.261.lcssa.i = phi ptr [ %.261.lcssa.ph.i, %.critedge2.loopexit.i ], [ %.160.lcssa119.i, %.preheader.i ] ; 5 uses
  %.1.in.lcssa.i = phi i8 [ %.1.in.lcssa.ph.i, %.critedge2.loopexit.i ], [ %.056.lcssa118.i, %.preheader.i ]
  %i.by = xor i8 %.1.in.lcssa.i, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.057.i
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !11
  %.15894.i = add i64 %.057.i, 1                  ; 8 uses
  %i.ca = icmp ult ptr %.063.i, %.261.lcssa.i
  br i1 %i.ca, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %.critedge2.i
  %i.cb = sub i64 %.15894.i, %.063109.i
  %i.cc = add i64 %i.cb, %.261.lcssa108.pre-phi.i ; 4 uses
  %i.cd = sub i64 %.261.lcssa108.pre-phi.i, %.063109.i ; 7 uses
  %min.iters.check42 = icmp ult i64 %i.cd, 8
  br i1 %min.iters.check42, label %.lr.ph97.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ce = add i64 %.057.i, %i.ar
  %i.cf = sub i64 %i.ce, %.063109.i
  %diff.check = icmp ult i64 %i.cf, 31
  br i1 %diff.check, label %.lr.ph97.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check43 = icmp ult i64 %i.cd, 32
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph44

vector.ph44:                                      ; preds = %vector.main.loop.iter.check
  %i.cg = and i64 %i.cd, 24
  %n.vec45 = and i64 %i.cd, -32                   ; 5 uses
  %i.ch = add i64 %.15894.i, %n.vec45
  %i.ci = getelementptr i8, ptr %.063.i, i64 %n.vec45 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.aq, i64 %.15894.i
  br label %vector.body46

vector.body46:                                    ; preds = %vector.ph44, %vector.body46
  %index47 = phi i64 [ 0, %vector.ph44 ], [ %index.next51, %vector.body46 ] ; 3 uses
  %next.gep48 = getelementptr i8, ptr %.063.i, i64 %index47 ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load49 = load <16 x i8>, ptr %next.gep48, align 1, !tbaa !11
  %wide.load50 = load <16 x i8>, ptr %i.ck, align 1, !tbaa !11
  %i.cl = getelementptr i8, ptr %i.cj, i64 %index47 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <16 x i8> %wide.load49, ptr %i.cl, align 1, !tbaa !11
  store <16 x i8> %wide.load50, ptr %i.cm, align 1, !tbaa !11
  %index.next51 = add nuw i64 %index47, 32        ; 2 uses
  %i.cn = icmp eq i64 %index.next51, %n.vec45
  br i1 %i.cn, label %middle.block52, label %vector.body46, !llvm.loop !28

middle.block52:                                   ; preds = %vector.body46
  %cmp.n53 = icmp eq i64 %i.cd, %n.vec45
  br i1 %cmp.n53, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block52
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph97.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec45, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.cd, -8                    ; 4 uses
  %i.co = add i64 %.15894.i, %n.vec54
  %i.cp = getelementptr i8, ptr %.063.i, i64 %n.vec54 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.aq, i64 %.15894.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 3 uses
  %next.gep56 = getelementptr i8, ptr %.063.i, i64 %index55
  %wide.load57 = load <8 x i8>, ptr %next.gep56, align 1, !tbaa !11
  %i.cr = getelementptr i8, ptr %i.cq, i64 %index55
  store <8 x i8> %wide.load57, ptr %i.cr, align 1, !tbaa !11
  %index.next58 = add nuw i64 %index55, 8         ; 2 uses
  %i.cs = icmp eq i64 %index.next58, %n.vec54
  br i1 %i.cs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.cd, %n.vec54
  br i1 %cmp.n59, label %.loopexit.i, label %.lr.ph97.i.preheader

.lr.ph97.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.15896.i.ph = phi i64 [ %.15894.i, %iter.check ], [ %.15894.i, %vector.memcheck ], [ %i.ch, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  %.16495.i.ph = phi ptr [ %.063.i, %iter.check ], [ %.063.i, %vector.memcheck ], [ %i.ci, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.middle.block ]
  br label %.lr.ph97.i

.lr.ph97.i:                                       ; preds = %.lr.ph97.i.preheader, %.lr.ph97.i
  %.15896.i = phi i64 [ %.158.i, %.lr.ph97.i ], [ %.15896.i.ph, %.lr.ph97.i.preheader ] ; 2 uses
  %.16495.i = phi ptr [ %i.ct, %.lr.ph97.i ], [ %.16495.i.ph, %.lr.ph97.i.preheader ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.16495.i, i64 1 ; 2 uses
  %i.cu = load i8, ptr %.16495.i, align 1, !tbaa !11
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.15896.i
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !11
  %.158.i = add i64 %.15896.i, 1                  ; 2 uses
  %exitcond110.not.i = icmp eq i64 %.158.i, %i.cc
  br i1 %exitcond110.not.i, label %.loopexit.i, label %.lr.ph97.i, !llvm.loop !30

.loopexit.i:                                      ; preds = %.lr.ph97.i, %middle.block52, %vec.epilog.middle.block, %.critedge2.i, %bb.h
  %.265.i = phi ptr [ %.160.lcssa.i, %bb.h ], [ %.063.i, %.critedge2.i ], [ %i.cp, %vec.epilog.middle.block ], [ %i.ci, %middle.block52 ], [ %i.ct, %.lr.ph97.i ]
  %.362.i = phi ptr [ %.160.lcssa.i, %bb.h ], [ %.261.lcssa.i, %.critedge2.i ], [ %.261.lcssa.i, %vec.epilog.middle.block ], [ %.261.lcssa.i, %middle.block52 ], [ %.261.lcssa.i, %.lr.ph97.i ]
  %.2.i = phi i64 [ %i.bp, %bb.h ], [ %.15894.i, %.critedge2.i ], [ %i.cc, %vec.epilog.middle.block ], [ %i.cc, %middle.block52 ], [ %i.cc, %.lr.ph97.i ] ; 3 uses
  %.not72.i = icmp ult i64 %.2.i, %i.at
  br i1 %.not72.i, label %bb.e, label %internal_rle_compress.exit

internal_rle_compress.exit:                       ; preds = %bb.e, %.loopexit.i
  %.3.i = phi i64 [ %.2.i, %.loopexit.i ], [ %.057.i, %bb.e ] ; 2 uses
  %.not26 = icmp ult i64 %.3.i, %i.b
  br i1 %.not26, label %bb.o, label %bb.n

bb.n:                                             ; preds = %internal_rle_compress.exit
  %i.cw = load ptr, ptr %i.ap, align 8, !tbaa !35
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.cx, i64 %i.b, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %internal_rle_compress.exit
  %.0 = phi i64 [ %i.b, %bb.n ], [ %.3.i, %internal_rle_compress.exit ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.0, ptr %i.cy, align 8, !tbaa !37
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %.022 = phi i32 [ 0, %bb.o ], [ %i.e, %bb.a ]
  ret i32 %.022
}

declare i32 @internal_encode_alloc_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i64 @internal_rle_decompress(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.04473 = phi i64 [ %.3, %bb.h ], [ 0, %bb.a ]  ; 2 uses
  %.04672 = phi i64 [ %.349, %bb.h ], [ 0, %bb.a ] ; 2 uses
  %.05071 = phi ptr [ %.353, %bb.h ], [ %0, %bb.a ] ; 3 uses
  %.05470 = phi ptr [ %.357, %bb.h ], [ %2, %bb.a ] ; 4 uses
  %i.a = load i8, ptr %.05470, align 1, !tbaa !11 ; 3 uses
  %i.b = icmp slt i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.c = sext i8 %i.a to i64                      ; 3 uses
  %i.d = sub nsw i64 0, %i.c                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05470, i64 1 ; 2 uses
  %i.f = add nuw i64 %.04672, 1
  %i.g = sub i64 %i.f, %i.c                       ; 2 uses
  %i.h = icmp ugt i64 %i.g, %3
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sub i64 %.04473, %i.c                    ; 2 uses
  %i.j = icmp ugt i64 %i.i, %1
  br i1 %i.j, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05071, ptr nonnull align 1 %i.e, i64 %i.d, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.05470, i64 1
  %i.m = add i64 %.04672, 2                       ; 2 uses
  %i.n = icmp ugt i64 %i.m, %3
  br i1 %i.n, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %narrow = add nuw i8 %i.a, 1
  %i.o = zext i8 %narrow to i64                   ; 3 uses
  %i.p = add i64 %.04473, %i.o                    ; 2 uses
  %i.q = icmp ugt i64 %i.p, %1
  br i1 %i.q, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i8, ptr %i.l, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.05071, i8 %i.r, i64 %i.o, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.05470, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.357 = phi ptr [ %i.k, %bb.d ], [ %i.s, %bb.g ]
  %.pn = phi i64 [ %i.d, %bb.d ], [ %i.o, %bb.g ]
  %.349 = phi i64 [ %i.g, %bb.d ], [ %i.m, %bb.g ] ; 2 uses
  %.3 = phi i64 [ %i.i, %bb.d ], [ %i.p, %bb.g ]  ; 2 uses
  %.353 = getelementptr inbounds nuw i8, ptr %.05071, i64 %.pn
  %i.t = icmp ult i64 %.349, %3
  br i1 %i.t, label %.lr.ph, label %.critedge, !llvm.loop !2

.critedge:                                        ; preds = %bb.h, %bb.c, %bb.b, %bb.f, %bb.e, %bb.a
  %.4 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.e ], [ %.3, %bb.h ]
  ret i64 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_undo_rle(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr nofree noundef writeonly captures(address) %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = tail call i32 @internal_decode_alloc_buffer(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef %4) #7 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !41
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.j
  %.04473.i = phi i64 [ %.3.i, %bb.j ], [ 0, %bb.c ] ; 2 uses
  %.04672.i = phi i64 [ %.349.i, %bb.j ], [ 0, %bb.c ] ; 2 uses
end_hunk_0
