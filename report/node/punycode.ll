inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wpacket_st = type { ptr, ptr, i64, i64, i64, ptr, i8 }

@.str = private unnamed_addr constant [5 x i8] c"xn--\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @ossl_punycode_decode(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !10     ; 2 uses
  %.not143 = icmp eq i64 %1, 0
  br i1 %.not143, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 12
  br i1 %min.iters.check, label %.lr.ph.preheader183, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.b = add i64 %1, -1                           ; 2 uses
  %i.c = and i64 %i.b, 4294967295
  %i.d = icmp eq i64 %i.c, 4294967295
  %i.e = icmp ugt i64 %i.b, 4294967295
  %i.f = or i1 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.preheader183, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %1, 8589934588                 ; 4 uses
  %4 = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi.a = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %5 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <4 x i8>, ptr %i.g, align 1, !tbaa !11
  %wide.load.fr = freeze <4 x i8> %wide.load
  %i.h = icmp eq <4 x i8> %wide.load.fr, splat (i8 45) ; 2 uses
  %i.i = bitcast <4 x i1> %i.h to i4
  %.not176 = icmp eq i4 %i.i, 0                   ; 2 uses
  %i.j = select i1 %.not176, <4 x i1> %5, <4 x i1> %i.h ; 2 uses
  %i.k = select i1 %.not176, <4 x i32> %vec.phi, <4 x i32> %vec.phi.a ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.phi.a, splat (i32 4)
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %i.m = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.k, <4 x i1> %i.j, i32 0) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader183

.lr.ph.preheader183:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.080125.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %4, %middle.block ]
  %.081124.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader183, %.lr.ph
  %indvars.iv = phi i64 [ %7, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader183 ]
  %.080125 = phi i32 [ %6, %.lr.ph ], [ %.080125.ph, %.lr.ph.preheader183 ] ; 2 uses
  %.081124 = phi i32 [ %spec.select, %.lr.ph ], [ %.081124.ph, %.lr.ph.preheader183 ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !11
  %i.p = icmp eq i8 %i.o, 45
  %spec.select = select i1 %i.p, i32 %.080125, i32 %.081124 ; 2 uses
  %6 = add i32 %.080125, 1                        ; 2 uses
  %7 = zext i32 %6 to i64                         ; 2 uses
  %i.q = icmp ugt i64 %1, %7
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.m, %middle.block ], [ %spec.select, %.lr.ph ] ; 4 uses
  %.not = icmp eq i32 %spec.select.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.r = icmp ugt i32 %spec.select.lcssa, %i.a
  br i1 %i.r, label %.critedge, label %.preheader116.preheader

.preheader116.preheader:                          ; preds = %bb.b
  %wide.trip.count = zext i32 %spec.select.lcssa to i64 ; 2 uses
  br label %.preheader116

.preheader116:                                    ; preds = %.preheader116.preheader, %bb.c
  %.083126 = phi i64 [ %i.x, %bb.c ], [ 0, %.preheader116.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.083126
  %i.t = load i8, ptr %i.s, align 1, !tbaa !11    ; 2 uses
  %i.u = icmp slt i8 %i.t, 0
  br i1 %i.u, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.preheader116
  %i.v = zext nneg i8 %i.t to i32
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.083126
  store i32 %i.v, ptr %i.w, align 4, !tbaa !10
  %i.x = add nuw nsw i64 %.083126, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %.preheader116, !llvm.loop !17

bb.d:                                             ; preds = %bb.c
  %i.y = add i32 %spec.select.lcssa, 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.d, %._crit_edge
  %.087 = phi i32 [ %i.y, %bb.d ], [ 0, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.184 = phi i64 [ %wide.trip.count, %bb.d ], [ 0, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.z = zext i32 %.087 to i64
  %i.aa = icmp ugt i64 %1, %i.z
  br i1 %i.aa, label %.preheader.lr.ph, label %.._crit_edge141_crit_edge

.._crit_edge141_crit_edge:                        ; preds = %._crit_edge.thread
  %.pre = trunc nuw i64 %.184 to i32
  br label %._crit_edge141

.preheader.lr.ph:                                 ; preds = %._crit_edge.thread
  %i.ab = zext i32 %i.a to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.q
  %.2140 = phi i32 [ %.087, %.preheader.lr.ph ], [ %i.ao, %bb.q ] ; 2 uses
  %.285139 = phi i64 [ %.184, %.preheader.lr.ph ], [ %i.bc, %bb.q ] ; 3 uses
  %.088138 = phi i32 [ 72, %.preheader.lr.ph ], [ %i.bw, %bb.q ] ; 3 uses
  %.090137 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ce, %bb.q ] ; 3 uses
  %.093136 = phi i32 [ 128, %.preheader.lr.ph ], [ %i.bz, %bb.q ] ; 2 uses
  %i.ac = zext i32 %.2140 to i64                  ; 2 uses
  %.not104128 = icmp ugt i64 %1, %i.ac
  br i1 %.not104128, label %.lr.ph133, label %.critedge

.lr.ph133:                                        ; preds = %.preheader
  %i.ad = add i32 %.088138, 26
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph133, %bb.l
  %i.ae = phi i64 [ %i.ac, %.lr.ph133 ], [ %i.bb, %bb.l ]
  %.0132 = phi i32 [ 36, %.lr.ph133 ], [ %i.ba, %bb.l ] ; 4 uses
  %.078131 = phi i32 [ 1, %.lr.ph133 ], [ %i.az, %bb.l ] ; 4 uses
  %.3130 = phi i32 [ %.2140, %.lr.ph133 ], [ %i.ao, %bb.l ]
  %.191129 = phi i32 [ %.090137, %.lr.ph133 ], [ %i.at, %bb.l ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11  ; 4 uses
  %i.ah = zext i8 %i.ag to i32                    ; 3 uses
  %i.ai = add i8 %i.ag, -65
  %or.cond.i = icmp ult i8 %i.ai, 26
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = add nsw i32 %i.ah, -65
  br label %digit_decoded.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ak = add i8 %i.ag, -97
  %or.cond5.i = icmp ult i8 %i.ak, 26
  br i1 %or.cond5.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = add nsw i32 %i.ah, -97
  br label %digit_decoded.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.am = add nsw i32 %i.ah, -22
  %i.an = add i8 %i.ag, -58
  %or.cond = icmp ult i8 %i.an, -10
  br i1 %or.cond, label %.critedge, label %digit_decoded.exit.thread

digit_decoded.exit.thread:                        ; preds = %bb.h, %bb.f, %bb.i
  %.0.i109 = phi i32 [ %i.am, %bb.i ], [ %i.al, %bb.h ], [ %i.aj, %bb.f ] ; 3 uses
  %i.ao = add i32 %.3130, 1                       ; 4 uses
  %i.ap = xor i32 %.191129, -1
  %i.aq = udiv i32 %i.ap, %.078131
  %i.ar = icmp ugt i32 %.0.i109, %i.aq
  br i1 %i.ar, label %.critedge, label %bb.j

bb.j:                                             ; preds = %digit_decoded.exit.thread
  %i.as = mul i32 %.0.i109, %.078131
  %i.at = add i32 %i.as, %.191129                 ; 4 uses
  %.not105 = icmp ugt i32 %.0132, %.088138
  %.not106 = icmp ult i32 %.0132, %i.ad
  %i.au = sub nuw i32 %.0132, %.088138
  %i.av = select i1 %.not106, i32 %i.au, i32 26
  %i.aw = select i1 %.not105, i32 %i.av, i32 1    ; 2 uses
  %i.ax = icmp ult i32 %.0.i109, %i.aw
  br i1 %i.ax, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = sub nsw i32 36, %i.aw                   ; 2 uses
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ay, i32 %.078131)
  %mul.ov = extractvalue { i32, i1 } %mul, 1
  br i1 %mul.ov, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = mul i32 %i.ay, %.078131
  %i.ba = add i32 %.0132, 36
  %i.bb = zext i32 %i.ao to i64                   ; 2 uses
  %.not104 = icmp ugt i64 %1, %i.bb
  br i1 %.not104, label %bb.e, label %.critedge

bb.m:                                             ; preds = %bb.j
  %i.bc = add nuw nsw i64 %.285139, 1             ; 4 uses
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %.not113 = icmp eq i32 %.090137, 0
  br i1 %.not113, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = udiv i32 %i.at, 700
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bf = sub i32 %i.at, %.090137
  %i.bg = lshr i32 %i.bf, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bh = phi i32 [ %i.be, %bb.n ], [ %i.bg, %bb.o ] ; 2 uses
  %i.bi = udiv i32 %i.bh, %i.bd
  %i.bj = add nuw i32 %i.bi, %i.bh                ; 3 uses
  %i.bk = icmp ugt i32 %i.bj, 455
  br i1 %i.bk, label %.lr.ph.i, label %adapt.exit

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %.014.i = phi i32 [ %i.bm, %.lr.ph.i ], [ 0, %bb.p ]
  %.01213.i = phi i32 [ %i.bl, %.lr.ph.i ], [ %i.bj, %bb.p ] ; 2 uses
  %i.bl = udiv i32 %.01213.i, 35                  ; 2 uses
  %i.bm = add i32 %.014.i, 36                     ; 2 uses
  %i.bn = icmp ugt i32 %.01213.i, 15959
  br i1 %i.bn, label %.lr.ph.i, label %adapt.exit, !llvm.loop !18

adapt.exit:                                       ; preds = %.lr.ph.i, %bb.p
  %.012.lcssa.i = phi i32 [ %i.bj, %bb.p ], [ %i.bl, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ 0, %bb.p ], [ %i.bm, %.lr.ph.i ]
  %i.bo = zext i32 %i.at to i64                   ; 2 uses
  %i.bp = udiv i64 %i.bo, %i.bc                   ; 2 uses
  %i.bq = urem i64 %i.bo, %i.bc                   ; 3 uses
  %i.br = xor i32 %.093136, -1
  %i.bs = zext i32 %i.br to i64
  %i.bt = icmp samesign ule i64 %i.bp, %i.bs
  %.not107 = icmp samesign ult i64 %.285139, %i.ab
  %or.cond114 = select i1 %i.bt, i1 %.not107, i1 false
  br i1 %or.cond114, label %bb.q, label %.critedge

bb.q:                                             ; preds = %adapt.exit
  %i.bu = trunc nuw i32 %.012.lcssa.i to i16      ; 2 uses
  %.lhs.trunc.i = mul nuw i16 %i.bu, 36
  %.rhs.trunc.i = add nuw nsw i16 %i.bu, 38
  %i.bv = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i
  %.zext.i = zext nneg i16 %i.bv to i32
  %i.bw = add i32 %.0.lcssa.i, %.zext.i
  %i.bx = trunc nuw i64 %i.bq to i32
  %i.by = trunc nuw i64 %i.bp to i32
  %i.bz = add i32 %.093136, %i.by                 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bq ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = sub nsw i64 %.285139, %i.bq
  %i.cd = shl nsw i64 %i.cc, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cb, ptr align 4 %i.ca, i64 %i.cd, i1 false)
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !10
  %i.ce = add i32 %i.bx, 1
  %i.cf = zext i32 %i.ao to i64
  %i.cg = icmp ugt i64 %1, %i.cf
  br i1 %i.cg, label %.preheader, label %._crit_edge141, !llvm.loop !19

._crit_edge141:                                   ; preds = %bb.q, %.._crit_edge141_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge141_crit_edge ], [ %i.bd, %bb.q ]
  store i32 %.pre-phi, ptr %3, align 4, !tbaa !10
  br label %.critedge

.critedge:                                        ; preds = %.preheader116, %adapt.exit, %.preheader, %bb.k, %bb.l, %digit_decoded.exit.thread, %bb.i, %bb.b, %._crit_edge141
  %.297 = phi i32 [ 1, %._crit_edge141 ], [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %adapt.exit ], [ 0, %bb.i ], [ 0, %digit_decoded.exit.thread ], [ 0, %bb.l ], [ 0, %.preheader ], [ 0, %.preheader116 ]
  ret i32 %.297
}
end_hunk_0
