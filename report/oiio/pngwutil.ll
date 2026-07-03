inline.NumInlined: 101
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@png_do_write_interlace:bb.a
bb.n:                                             ; preds = %bb.b
  %i.hh = lshr i8 %i.c, 3
  %i.hi = zext nneg i8 %i.hh to i64               ; 3 uses
  %i.hj = sext i32 %2 to i64                      ; 4 uses
  %i.hk = getelementptr inbounds i8, ptr @png_pass_start, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !7
  %i.hm = zext i8 %i.hl to i32                    ; 4 uses
  %i.hn = icmp ugt i32 %i.d, %i.hm
  br i1 %i.hn, label %.lr.ph148, label %.loopexit

.lr.ph148:                                        ; preds = %bb.n
  %i.ho = getelementptr inbounds i8, ptr @png_pass_inc, i64 %i.hj
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !7
  %i.hq = zext i8 %i.hp to i32
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph148, %bb.q
  %.095146 = phi i32 [ %i.hm, %.lr.ph148 ], [ %i.hv, %bb.q ] ; 2 uses
  %.096145 = phi ptr [ %1, %.lr.ph148 ], [ %i.hu, %bb.q ] ; 3 uses
  %i.hr = zext i32 %.095146 to i64
  %i.hs = mul nuw nsw i64 %i.hr, %i.hi
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 %i.hs ; 2 uses
  %.not118 = icmp eq ptr %.096145, %i.ht
  br i1 %.not118, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.096145, ptr align 1 %i.ht, i64 %i.hi, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.hu = getelementptr inbounds nuw i8, ptr %.096145, i64 %i.hi
  %i.hv = add i32 %.095146, %i.hq                 ; 2 uses
  %i.hw = icmp ult i32 %i.hv, %i.d
  br i1 %i.hw, label %bb.o, label %.loopexit, !llvm.loop !259

.loopexit.sink.split:                             ; preds = %.outer211, %.outer209, %bb.k, %bb.l, %.outer, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sink249 = phi i32 [ %i.cv, %bb.i ], [ %i.fg, %bb.l ], [ %i.v, %.outer ], [ %i.ai, %bb.d ], [ %i.av, %bb.e ], [ %i.bi, %bb.f ], [ %i.bv, %bb.g ], [ %i.ci, %bb.h ], [ %i.ee, %.outer209 ], [ %i.es, %bb.k ], [ %i.gp, %.outer211 ]
  %.0107119.ph.sink = phi ptr [ %.0138.ph, %.outer ], [ %.0101128.ph, %.outer209 ], [ %.0138.ph, %bb.i ], [ %.0138.ph, %bb.h ], [ %.0138.ph, %bb.g ], [ %.0138.ph, %bb.f ], [ %.0138.ph, %bb.e ], [ %.0138.ph, %bb.d ], [ %.0101128.ph, %bb.l ], [ %.0101128.ph, %bb.k ], [ %.0107119.ph, %.outer211 ]
  %.pre-phi149.ph = phi i32 [ %i.h, %.outer ], [ %i.dp, %.outer209 ], [ %i.h, %bb.i ], [ %i.h, %bb.h ], [ %i.h, %bb.g ], [ %i.h, %bb.f ], [ %i.h, %bb.e ], [ %i.h, %bb.d ], [ %i.dp, %bb.l ], [ %i.dp, %bb.k ], [ %i.gb, %.outer211 ]
  %.pre-phi.ph = phi i64 [ %i.e, %.outer ], [ %i.dm, %.outer209 ], [ %i.e, %bb.i ], [ %i.e, %bb.h ], [ %i.e, %bb.g ], [ %i.e, %bb.f ], [ %i.e, %bb.e ], [ %i.e, %bb.d ], [ %i.dm, %bb.l ], [ %i.dm, %bb.k ], [ %i.fy, %.outer211 ]
  %i.hx = trunc i32 %.sink249 to i8
  store i8 %i.hx, ptr %.0107119.ph.sink, align 1, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %.thread196, %.thread182, %.thread, %bb.q, %.loopexit.sink.split, %bb.m, %bb.j, %bb.c, %bb.n
  %.pre-phi149 = phi i32 [ %i.gb, %bb.m ], [ %i.hm, %bb.n ], [ %i.hm, %bb.q ], [ %.pre-phi149.ph, %.loopexit.sink.split ], [ %i.dp, %.thread182 ], [ %i.dp, %bb.j ], [ %i.h, %bb.c ], [ %i.h, %.thread ], [ %i.gb, %.thread196 ]
  %.pre-phi = phi i64 [ %i.fy, %bb.m ], [ %i.hj, %bb.n ], [ %i.hj, %bb.q ], [ %.pre-phi.ph, %.loopexit.sink.split ], [ %i.dm, %.thread182 ], [ %i.dm, %bb.j ], [ %i.e, %bb.c ], [ %i.e, %.thread ], [ %i.fy, %.thread196 ]
  %i.hy = load i32, ptr %0, align 8, !tbaa !255
  %i.hz = getelementptr inbounds i8, ptr @png_pass_inc, i64 %.pre-phi
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !7
  %i.ib = zext i8 %i.ia to i32                    ; 2 uses
  %i.ic = add i32 %i.hy, %i.ib
  %i.id = xor i32 %.pre-phi149, -1
  %i.ie = add i32 %i.ic, %i.id
  %i.if = udiv i32 %i.ie, %i.ib                   ; 2 uses
  store i32 %i.if, ptr %0, align 8, !tbaa !255
  %i.ig = load i8, ptr %i.b, align 1, !tbaa !253  ; 3 uses
  %i.ih = icmp ugt i8 %i.ig, 7
  %i.ii = zext i32 %i.if to i64                   ; 2 uses
  br i1 %i.ih, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit
  %i.ij = lshr i8 %i.ig, 3
  %i.ik = zext nneg i8 %i.ij to i64
  %i.il = mul nuw nsw i64 %i.ik, %i.ii
  br label %bb.t

bb.s:                                             ; preds = %.loopexit
  %i.im = zext nneg i8 %i.ig to i64
  %i.in = mul nuw nsw i64 %i.im, %i.ii
  %i.io = add nuw nsw i64 %i.in, 7
  %i.ip = lshr i64 %i.io, 3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.iq = phi i64 [ %i.il, %bb.r ], [ %i.ip, %bb.s ]
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !260
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_find_filter(ptr noalias noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 622
  %i.b = load i8, ptr %i.a, align 2, !tbaa !57    ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !260  ; 37 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.g = load i8, ptr %i.f, align 1, !tbaa !253   ; 12 uses
  %i.h = zext i8 %i.g to i32
  %i.i = add nuw nsw i32 %i.h, 7
  %i.j = lshr i32 %i.i, 3                         ; 25 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !244  ; 89 uses
  %i.m = ptrtoaddr ptr %i.l to i64                ; 10 uses
  %i.n = icmp ugt i64 %i.e, 144115188075855870
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = sub nsw i32 0, %i.c
  %i.p = and i32 %i.c, %i.o
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.c, 8
  %i.r = icmp ne i32 %i.q, 0
  %i.s = icmp ne i8 %i.b, 8
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %.not227 = icmp eq i64 %i.e, 0
  br i1 %.not227, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.e, 4
  br i1 %min.iters.check, label %.lr.ph.preheader722, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 144115188075855868       ; 4 uses
  %i.t = getelementptr i8, ptr %i.l, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi271 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.l, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %wide.load = load <2 x i8>, ptr %i.u, align 1, !tbaa !7 ; 2 uses
  %wide.load272 = load <2 x i8>, ptr %i.v, align 1, !tbaa !7 ; 2 uses
  %i.w = zext <2 x i8> %wide.load to <2 x i32>    ; 2 uses
  %i.x = zext <2 x i8> %wide.load272 to <2 x i32> ; 2 uses
  %i.y = sub nuw nsw <2 x i32> splat (i32 256), %i.w
  %i.z = sub nuw nsw <2 x i32> splat (i32 256), %i.x
  %i.aa = icmp slt <2 x i8> %wide.load, zeroinitializer
  %i.ab = icmp slt <2 x i8> %wide.load272, zeroinitializer
  %i.ac = select <2 x i1> %i.aa, <2 x i32> %i.y, <2 x i32> %i.w
  %i.ad = select <2 x i1> %i.ab, <2 x i32> %i.z, <2 x i32> %i.x
  %i.ae = zext nneg <2 x i32> %i.ac to <2 x i64>
  %i.af = zext nneg <2 x i32> %i.ad to <2 x i64>
  %i.ag = add <2 x i64> %vec.phi, %i.ae           ; 2 uses
  %i.ah = add <2 x i64> %vec.phi271, %i.af        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader722

.lr.ph.preheader722:                              ; preds = %.lr.ph.preheader, %middle.block
  %.pn226.ph = phi ptr [ %i.l, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  %.0110225.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  %.0111224.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader722, %.lr.ph
  %.pn226 = phi ptr [ %.0109, %.lr.ph ], [ %.pn226.ph, %.lr.ph.preheader722 ]
  %.0110225 = phi i64 [ %i.aq, %.lr.ph ], [ %.0110225.ph, %.lr.ph.preheader722 ]
  %.0111224 = phi i64 [ %i.ar, %.lr.ph ], [ %.0111224.ph, %.lr.ph.preheader722 ]
  %.0109 = getelementptr inbounds nuw i8, ptr %.pn226, i64 1 ; 2 uses
  %i.ak = load i8, ptr %.0109, align 1, !tbaa !7  ; 2 uses
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %i.am = sub nuw nsw i32 256, %i.al
  %i.an = icmp slt i8 %i.ak, 0
  %i.ao = select i1 %i.an, i32 %i.am, i32 %i.al
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = add i64 %.0110225, %i.ap                ; 2 uses
  %i.ar = add nuw nsw i64 %.0111224, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.e
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !264

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %.preheader, %bb.c, %bb.b
  %.0102 = phi i64 [ -257, %bb.b ], [ -257, %bb.c ], [ 0, %.preheader ], [ %i.aj, %middle.block ], [ %i.aq, %.lr.ph ] ; 4 uses
  %.0 = phi i32 [ %i.p, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %.preheader ], [ %i.c, %middle.block ], [ %i.c, %.lr.ph ] ; 8 uses
  %i.as = icmp eq i32 %.0, 16
  br i1 %i.as, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.at = getelementptr i8, ptr %0, i64 568
  %.val128 = load ptr, ptr %i.at, align 8, !tbaa !245 ; 9 uses
  store i8 1, ptr %.val128, align 1, !tbaa !7
  %i.au = zext nneg i32 %i.j to i64               ; 13 uses
  %.0201.i = getelementptr inbounds nuw i8, ptr %.val128, i64 1 ; 6 uses
  %.0222.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 6 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.preheader.i, label %iter.check633

iter.check633:                                    ; preds = %bb.d
  %.val128613 = ptrtoaddr ptr %.val128 to i64
  %min.iters.check616 = icmp ult i8 %i.g, 25
  %i.av = sub i64 %i.m, %.val128613
  %diff.check614 = icmp ugt i64 %i.av, -16
  %or.cond702 = select i1 %min.iters.check616, i1 true, i1 %diff.check614
  br i1 %or.cond702, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check617

vector.main.loop.iter.check617:                   ; preds = %iter.check633
  %min.iters.check618 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check618, label %vec.epilog.ph637, label %vector.ph619

vector.ph619:                                     ; preds = %vector.main.loop.iter.check617
  %n.mod.vf620 = and i64 %i.au, 12
  %n.vec621 = and i64 %i.au, 48                   ; 6 uses
  %i.aw = getelementptr i8, ptr %.0222.i, i64 %n.vec621 ; 2 uses
  %i.ax = getelementptr i8, ptr %.0201.i, i64 %n.vec621 ; 2 uses
  %wide.load626 = load <16 x i8>, ptr %.0222.i, align 1, !tbaa !7
  store <16 x i8> %wide.load626, ptr %.0201.i, align 1, !tbaa !7
  %i.ay = icmp eq i64 %n.vec621, 16
  br i1 %i.ay, label %middle.block628, label %vector.body622.1

vector.body622.1:                                 ; preds = %vector.ph619
  %next.gep624.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep625.1 = getelementptr i8, ptr %.val128, i64 17
  %wide.load626.1 = load <16 x i8>, ptr %next.gep624.1, align 1, !tbaa !7
  store <16 x i8> %wide.load626.1, ptr %next.gep625.1, align 1, !tbaa !7
  br label %middle.block628

middle.block628:                                  ; preds = %vector.body622.1, %vector.ph619
  %cmp.n629 = icmp eq i64 %n.vec621, %i.au
  br i1 %cmp.n629, label %.preheader.i, label %vec.epilog.iter.check635

vec.epilog.iter.check635:                         ; preds = %middle.block628
  %min.epilog.iters.check636 = icmp eq i64 %n.mod.vf620, 0
  br i1 %min.epilog.iters.check636, label %.lr.ph.i.preheader, label %vec.epilog.ph637, !prof !265

vec.epilog.ph637:                                 ; preds = %vector.main.loop.iter.check617, %vec.epilog.iter.check635
  %vec.epilog.resume.val630 = phi i64 [ %n.vec621, %vec.epilog.iter.check635 ], [ 0, %vector.main.loop.iter.check617 ]
  %n.vec639 = and i64 %i.au, 60                   ; 5 uses
  %i.az = getelementptr i8, ptr %.0222.i, i64 %n.vec639 ; 2 uses
  %i.ba = getelementptr i8, ptr %.0201.i, i64 %n.vec639 ; 2 uses
  br label %vec.epilog.vector.body640

vec.epilog.vector.body640:                        ; preds = %vec.epilog.vector.body640, %vec.epilog.ph637
  %index641 = phi i64 [ %vec.epilog.resume.val630, %vec.epilog.ph637 ], [ %index.next645, %vec.epilog.vector.body640 ] ; 3 uses
  %next.gep642 = getelementptr i8, ptr %.0222.i, i64 %index641
  %next.gep643 = getelementptr i8, ptr %.0201.i, i64 %index641
  %wide.load644 = load <4 x i8>, ptr %next.gep642, align 1, !tbaa !7
  store <4 x i8> %wide.load644, ptr %next.gep643, align 1, !tbaa !7
  %index.next645 = add nuw i64 %index641, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next645, %n.vec639
  br i1 %i.bb, label %vec.epilog.middle.block646, label %vec.epilog.vector.body640, !llvm.loop !266

vec.epilog.middle.block646:                       ; preds = %vec.epilog.vector.body640
  %cmp.n647 = icmp eq i64 %n.vec639, %i.au
  br i1 %cmp.n647, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check633, %vec.epilog.iter.check635, %vec.epilog.middle.block646
  %.0225.i.ph = phi ptr [ %.0222.i, %iter.check633 ], [ %i.aw, %vec.epilog.iter.check635 ], [ %i.az, %vec.epilog.middle.block646 ] ; 2 uses
  %.0204.i.ph = phi ptr [ %.0201.i, %iter.check633 ], [ %i.ax, %vec.epilog.iter.check635 ], [ %i.ba, %vec.epilog.middle.block646 ] ; 2 uses
  %.03.i.ph = phi i64 [ 0, %iter.check633 ], [ %n.vec621, %vec.epilog.iter.check635 ], [ %n.vec639, %vec.epilog.middle.block646 ] ; 4 uses
  %i.bc = sub nsw i64 %i.au, %.03.i.ph
  %xtraiter738 = and i64 %i.bc, 7                 ; 2 uses
  %lcmp.mod739.not = icmp eq i64 %xtraiter738, 0
  br i1 %lcmp.mod739.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0225.i.prol = phi ptr [ %.022.i.prol, %.lr.ph.i.prol ], [ %.0225.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0204.i.prol = phi ptr [ %.020.i.prol, %.lr.ph.i.prol ], [ %.0204.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.03.i.prol = phi i64 [ %i.be, %.lr.ph.i.prol ], [ %.03.i.ph, %.lr.ph.i.preheader ]
  %prol.iter740 = phi i64 [ %prol.iter740.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bd = load i8, ptr %.0225.i.prol, align 1, !tbaa !7
  store i8 %i.bd, ptr %.0204.i.prol, align 1, !tbaa !7
  %i.be = add nuw nsw i64 %.03.i.prol, 1          ; 2 uses
  %.020.i.prol = getelementptr inbounds nuw i8, ptr %.0204.i.prol, i64 1 ; 3 uses
  %.022.i.prol = getelementptr inbounds nuw i8, ptr %.0225.i.prol, i64 1 ; 3 uses
  %prol.iter740.next = add i64 %prol.iter740, 1   ; 2 uses
  %prol.iter740.cmp.not = icmp eq i64 %prol.iter740.next, %xtraiter738
  br i1 %prol.iter740.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !267

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.022.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.022.i.prol, %.lr.ph.i.prol ]
  %.0225.i.unr = phi ptr [ %.0225.i.ph, %.lr.ph.i.preheader ], [ %.022.i.prol, %.lr.ph.i.prol ]
  %.0204.i.unr = phi ptr [ %.0204.i.ph, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.03.i.unr = phi i64 [ %.03.i.ph, %.lr.ph.i.preheader ], [ %i.be, %.lr.ph.i.prol ]
  %i.bf = sub nsw i64 %.03.i.ph, %i.au
  %i.bg = icmp ugt i64 %i.bf, -8
  br i1 %i.bg, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block628, %vec.epilog.middle.block646, %bb.d
  %.0.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.au, %middle.block628 ], [ %i.au, %vec.epilog.middle.block646 ], [ %i.au, %.lr.ph.i ], [ %i.au, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.020.lcssa.i = phi ptr [ %.0201.i, %bb.d ], [ %i.ax, %middle.block628 ], [ %i.ba, %vec.epilog.middle.block646 ], [ %.020.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.020.i.7, %.lr.ph.i ] ; 7 uses
  %.022.lcssa.i = phi ptr [ %.0222.i, %bb.d ], [ %i.aw, %middle.block628 ], [ %i.az, %vec.epilog.middle.block646 ], [ %.022.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.022.i.7, %.lr.ph.i ] ; 7 uses
  %.020.lcssa.i652 = ptrtoaddr ptr %.020.lcssa.i to i64 ; 2 uses
  %.022.lcssa.i654 = ptrtoaddr ptr %.022.lcssa.i to i64
  %i.bh = icmp ult i64 %.0.lcssa.i, %i.e
  br i1 %i.bh, label %iter.check681, label %.thread212.thread

iter.check681:                                    ; preds = %.preheader.i
  %i.bi = sub i64 %i.e, %i.au                     ; 7 uses
  %min.iters.check658 = icmp ult i64 %i.bi, 4
  br i1 %min.iters.check658, label %.lr.ph12.i.preheader, label %vector.memcheck651

vector.memcheck651:                               ; preds = %iter.check681
  %i.bj = sub i64 %.020.lcssa.i652, %i.m
  %2 = add i64 %i.bj, -2
  %diff.check653 = icmp ult i64 %2, 31
  %i.bk = sub i64 %.022.lcssa.i654, %.020.lcssa.i652
  %diff.check655 = icmp ugt i64 %i.bk, -32
  %conflict.rdx656 = or i1 %diff.check653, %diff.check655
  br i1 %conflict.rdx656, label %.lr.ph12.i.preheader, label %vector.main.loop.iter.check659

vector.main.loop.iter.check659:                   ; preds = %vector.memcheck651
  %min.iters.check660 = icmp ult i64 %i.bi, 32
  br i1 %min.iters.check660, label %vec.epilog.ph685, label %vector.ph661

vector.ph661:                                     ; preds = %vector.main.loop.iter.check659
  %n.mod.vf662 = and i64 %i.bi, 28
  %n.vec663 = and i64 %i.bi, -32                  ; 7 uses
  %i.bl = add i64 %.0.lcssa.i, %n.vec663
  %i.bm = getelementptr i8, ptr %i.l, i64 %n.vec663
  %i.bn = getelementptr i8, ptr %.020.lcssa.i, i64 %n.vec663
  %i.bo = getelementptr i8, ptr %.022.lcssa.i, i64 %n.vec663
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph661
  %index665 = phi i64 [ 0, %vector.ph661 ], [ %index.next673, %vector.body664 ] ; 4 uses
  %next.gep666 = getelementptr i8, ptr %i.l, i64 %index665 ; 2 uses
  %next.gep667 = getelementptr i8, ptr %.020.lcssa.i, i64 %index665 ; 2 uses
  %next.gep668 = getelementptr i8, ptr %.022.lcssa.i, i64 %index665 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %next.gep666, i64 1
  %i.bq = getelementptr i8, ptr %next.gep668, i64 16
  %wide.load669 = load <16 x i8>, ptr %next.gep668, align 1, !tbaa !7
  %wide.load670 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %next.gep666, i64 17
  %wide.load671 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !7
  %wide.load672 = load <16 x i8>, ptr %i.br, align 1, !tbaa !7
  %i.bs = sub <16 x i8> %wide.load669, %wide.load671
  %i.bt = sub <16 x i8> %wide.load670, %wide.load672
  %i.bu = getelementptr i8, ptr %next.gep667, i64 16
  store <16 x i8> %i.bs, ptr %next.gep667, align 1, !tbaa !7
  store <16 x i8> %i.bt, ptr %i.bu, align 1, !tbaa !7
  %index.next673 = add nuw i64 %index665, 32      ; 2 uses
  %i.bv = icmp eq i64 %index.next673, %n.vec663
  br i1 %i.bv, label %middle.block674, label %vector.body664, !llvm.loop !269

middle.block674:                                  ; preds = %vector.body664
  %cmp.n675 = icmp eq i64 %i.bi, %n.vec663
  br i1 %cmp.n675, label %.thread212.thread, label %vec.epilog.iter.check683

vec.epilog.iter.check683:                         ; preds = %middle.block674
  %min.epilog.iters.check684 = icmp eq i64 %n.mod.vf662, 0
  br i1 %min.epilog.iters.check684, label %.lr.ph12.i.preheader, label %vec.epilog.ph685, !prof !270

vec.epilog.ph685:                                 ; preds = %vector.main.loop.iter.check659, %vec.epilog.iter.check683
  %vec.epilog.resume.val676 = phi i64 [ %n.vec663, %vec.epilog.iter.check683 ], [ 0, %vector.main.loop.iter.check659 ]
  %n.vec687 = and i64 %i.bi, -4                   ; 6 uses
  %i.bw = add i64 %.0.lcssa.i, %n.vec687
  %i.bx = getelementptr i8, ptr %i.l, i64 %n.vec687
  %i.by = getelementptr i8, ptr %.020.lcssa.i, i64 %n.vec687
  %i.bz = getelementptr i8, ptr %.022.lcssa.i, i64 %n.vec687
  br label %vec.epilog.vector.body688

vec.epilog.vector.body688:                        ; preds = %vec.epilog.vector.body688, %vec.epilog.ph685
  %index689 = phi i64 [ %vec.epilog.resume.val676, %vec.epilog.ph685 ], [ %index.next695, %vec.epilog.vector.body688 ] ; 4 uses
  %next.gep690 = getelementptr i8, ptr %i.l, i64 %index689
  %next.gep691 = getelementptr i8, ptr %.020.lcssa.i, i64 %index689
  %next.gep692 = getelementptr i8, ptr %.022.lcssa.i, i64 %index689
  %i.ca = getelementptr inbounds nuw i8, ptr %next.gep690, i64 1
  %wide.load693 = load <4 x i8>, ptr %next.gep692, align 1, !tbaa !7
  %wide.load694 = load <4 x i8>, ptr %i.ca, align 1, !tbaa !7
  %i.cb = sub <4 x i8> %wide.load693, %wide.load694
  store <4 x i8> %i.cb, ptr %next.gep691, align 1, !tbaa !7
  %index.next695 = add nuw i64 %index689, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next695, %n.vec687
  br i1 %i.cc, label %vec.epilog.middle.block696, label %vec.epilog.vector.body688, !llvm.loop !271

vec.epilog.middle.block696:                       ; preds = %vec.epilog.vector.body688
  %cmp.n697 = icmp eq i64 %i.bi, %n.vec687
  br i1 %cmp.n697, label %.thread212.thread, label %.lr.ph12.i.preheader

.lr.ph12.i.preheader:                             ; preds = %vector.memcheck651, %iter.check681, %vec.epilog.iter.check683, %vec.epilog.middle.block696
  %.111.i.ph = phi i64 [ %.0.lcssa.i, %iter.check681 ], [ %.0.lcssa.i, %vector.memcheck651 ], [ %i.bl, %vec.epilog.iter.check683 ], [ %i.bw, %vec.epilog.middle.block696 ] ; 4 uses
  %.pn10.i.ph = phi ptr [ %i.l, %iter.check681 ], [ %i.l, %vector.memcheck651 ], [ %i.bm, %vec.epilog.iter.check683 ], [ %i.bx, %vec.epilog.middle.block696 ] ; 2 uses
  %.1219.i.ph = phi ptr [ %.020.lcssa.i, %iter.check681 ], [ %.020.lcssa.i, %vector.memcheck651 ], [ %i.bn, %vec.epilog.iter.check683 ], [ %i.by, %vec.epilog.middle.block696 ] ; 2 uses
  %.1238.i.ph = phi ptr [ %.022.lcssa.i, %iter.check681 ], [ %.022.lcssa.i, %vector.memcheck651 ], [ %i.bo, %vec.epilog.iter.check683 ], [ %i.bz, %vec.epilog.middle.block696 ] ; 2 uses
  %i.cd = sub i64 %i.e, %.111.i.ph
  %xtraiter741 = and i64 %i.cd, 3                 ; 2 uses
  %lcmp.mod742.not = icmp eq i64 %xtraiter741, 0
  br i1 %lcmp.mod742.not, label %.lr.ph12.i.prol.loopexit, label %.lr.ph12.i.prol

.lr.ph12.i.prol:                                  ; preds = %.lr.ph12.i.preheader, %.lr.ph12.i.prol
  %.111.i.prol = phi i64 [ %i.cg, %.lr.ph12.i.prol ], [ %.111.i.ph, %.lr.ph12.i.preheader ]
  %.pn10.i.prol = phi ptr [ %.019.i.prol, %.lr.ph12.i.prol ], [ %.pn10.i.ph, %.lr.ph12.i.preheader ]
  %.1219.i.prol = phi ptr [ %i.ci, %.lr.ph12.i.prol ], [ %.1219.i.ph, %.lr.ph12.i.preheader ] ; 2 uses
  %.1238.i.prol = phi ptr [ %i.ch, %.lr.ph12.i.prol ], [ %.1238.i.ph, %.lr.ph12.i.preheader ] ; 2 uses
  %prol.iter743 = phi i64 [ %prol.iter743.next, %.lr.ph12.i.prol ], [ 0, %.lr.ph12.i.preheader ]
  %.019.i.prol = getelementptr inbounds nuw i8, ptr %.pn10.i.prol, i64 1 ; 3 uses
  %i.ce = load i8, ptr %.1238.i.prol, align 1, !tbaa !7
  %i.cf = load i8, ptr %.019.i.prol, align 1, !tbaa !7
  %.narrow.i.prol = sub i8 %i.ce, %i.cf
  store i8 %.narrow.i.prol, ptr %.1219.i.prol, align 1, !tbaa !7
  %i.cg = add nuw i64 %.111.i.prol, 1             ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.1238.i.prol, i64 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.1219.i.prol, i64 1 ; 2 uses
  %prol.iter743.next = add i64 %prol.iter743, 1   ; 2 uses
  %prol.iter743.cmp.not = icmp eq i64 %prol.iter743.next, %xtraiter741
  br i1 %prol.iter743.cmp.not, label %.lr.ph12.i.prol.loopexit, label %.lr.ph12.i.prol, !llvm.loop !272

.lr.ph12.i.prol.loopexit:                         ; preds = %.lr.ph12.i.prol, %.lr.ph12.i.preheader
  %.111.i.unr = phi i64 [ %.111.i.ph, %.lr.ph12.i.preheader ], [ %i.cg, %.lr.ph12.i.prol ]
  %.pn10.i.unr = phi ptr [ %.pn10.i.ph, %.lr.ph12.i.preheader ], [ %.019.i.prol, %.lr.ph12.i.prol ]
  %.1219.i.unr = phi ptr [ %.1219.i.ph, %.lr.ph12.i.preheader ], [ %i.ci, %.lr.ph12.i.prol ]
  %.1238.i.unr = phi ptr [ %.1238.i.ph, %.lr.ph12.i.preheader ], [ %i.ch, %.lr.ph12.i.prol ]
  %i.cj = sub i64 %.111.i.ph, %i.e
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %.thread212.thread, label %.lr.ph12.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0225.i = phi ptr [ %.022.i.7, %.lr.ph.i ], [ %.0225.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.0204.i = phi ptr [ %.020.i.7, %.lr.ph.i ], [ %.0204.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.03.i = phi i64 [ %i.ct, %.lr.ph.i ], [ %.03.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.cl = load i8, ptr %.0225.i, align 1, !tbaa !7
  store i8 %i.cl, ptr %.0204.i, align 1, !tbaa !7
  %.020.i = getelementptr inbounds nuw i8, ptr %.0204.i, i64 1
  %.022.i = getelementptr inbounds nuw i8, ptr %.0225.i, i64 1
  %i.cm = load i8, ptr %.022.i, align 1, !tbaa !7
  store i8 %i.cm, ptr %.020.i, align 1, !tbaa !7
  %.020.i.1 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 2
  %.022.i.1 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 2
  %i.cn = load i8, ptr %.022.i.1, align 1, !tbaa !7
  store i8 %i.cn, ptr %.020.i.1, align 1, !tbaa !7
  %.020.i.2 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 3
  %.022.i.2 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 3
  %i.co = load i8, ptr %.022.i.2, align 1, !tbaa !7
  store i8 %i.co, ptr %.020.i.2, align 1, !tbaa !7
  %.020.i.3 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 4
  %.022.i.3 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 4
  %i.cp = load i8, ptr %.022.i.3, align 1, !tbaa !7
  store i8 %i.cp, ptr %.020.i.3, align 1, !tbaa !7
  %.020.i.4 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 5
  %.022.i.4 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 5
  %i.cq = load i8, ptr %.022.i.4, align 1, !tbaa !7
  store i8 %i.cq, ptr %.020.i.4, align 1, !tbaa !7
  %.020.i.5 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 6
  %.022.i.5 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 6
  %i.cr = load i8, ptr %.022.i.5, align 1, !tbaa !7
  store i8 %i.cr, ptr %.020.i.5, align 1, !tbaa !7
  %.020.i.6 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 7
  %.022.i.6 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 7
  %i.cs = load i8, ptr %.022.i.6, align 1, !tbaa !7
  store i8 %i.cs, ptr %.020.i.6, align 1, !tbaa !7
  %i.ct = add nuw nsw i64 %.03.i, 8               ; 2 uses
  %.020.i.7 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 8 ; 2 uses
  %.022.i.7 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.ct, %i.au
  br i1 %exitcond.not.i.7, label %.preheader.i, label %.lr.ph.i, !llvm.loop !273

.lr.ph12.i:                                       ; preds = %.lr.ph12.i.prol.loopexit, %.lr.ph12.i
  %.111.i = phi i64 [ %i.di, %.lr.ph12.i ], [ %.111.i.unr, %.lr.ph12.i.prol.loopexit ]
  %.pn10.i = phi ptr [ %.019.i.3, %.lr.ph12.i ], [ %.pn10.i.unr, %.lr.ph12.i.prol.loopexit ] ; 4 uses
  %.1219.i = phi ptr [ %i.dk, %.lr.ph12.i ], [ %.1219.i.unr, %.lr.ph12.i.prol.loopexit ] ; 5 uses
  %.1238.i = phi ptr [ %i.dj, %.lr.ph12.i ], [ %.1238.i.unr, %.lr.ph12.i.prol.loopexit ] ; 5 uses
  %.019.i = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 1
  %i.cu = load i8, ptr %.1238.i, align 1, !tbaa !7
  %i.cv = load i8, ptr %.019.i, align 1, !tbaa !7
  %.narrow.i = sub i8 %i.cu, %i.cv
  store i8 %.narrow.i, ptr %.1219.i, align 1, !tbaa !7
  %i.cw = getelementptr inbounds nuw i8, ptr %.1238.i, i64 1
  %i.cx = getelementptr inbounds nuw i8, ptr %.1219.i, i64 1
  %.019.i.1 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 2
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !7
  %i.cz = load i8, ptr %.019.i.1, align 1, !tbaa !7
  %.narrow.i.1 = sub i8 %i.cy, %i.cz
  store i8 %.narrow.i.1, ptr %i.cx, align 1, !tbaa !7
  %i.da = getelementptr inbounds nuw i8, ptr %.1238.i, i64 2
  %i.db = getelementptr inbounds nuw i8, ptr %.1219.i, i64 2
  %.019.i.2 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 3
  %i.dc = load i8, ptr %i.da, align 1, !tbaa !7
  %i.dd = load i8, ptr %.019.i.2, align 1, !tbaa !7
  %.narrow.i.2 = sub i8 %i.dc, %i.dd
  store i8 %.narrow.i.2, ptr %i.db, align 1, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %.1238.i, i64 3
  %i.df = getelementptr inbounds nuw i8, ptr %.1219.i, i64 3
  %.019.i.3 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 4 ; 2 uses
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !7
  %i.dh = load i8, ptr %.019.i.3, align 1, !tbaa !7
  %.narrow.i.3 = sub i8 %i.dg, %i.dh
  store i8 %.narrow.i.3, ptr %i.df, align 1, !tbaa !7
  %i.di = add nuw i64 %.111.i, 4                  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.1238.i, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.1219.i, i64 4
  %exitcond15.not.i.3 = icmp eq i64 %i.di, %i.e
  br i1 %exitcond15.not.i.3, label %.thread212.thread, label %.lr.ph12.i, !llvm.loop !274

bb.e:                                             ; preds = %.loopexit
  %i.dl = and i32 %.0, 16
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dm = getelementptr i8, ptr %0, i64 568       ; 2 uses
  %.val130 = load ptr, ptr %i.dm, align 8, !tbaa !245 ; 21 uses
  store i8 1, ptr %.val130, align 1, !tbaa !7
  %i.dn = zext nneg i32 %i.j to i64               ; 8 uses
  %.0331.i = getelementptr inbounds nuw i8, ptr %.val130, i64 1 ; 4 uses
  %.0352.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 4 uses
  %.not.i131 = icmp eq i32 %i.j, 0
  br i1 %.not.i131, label %.preheader.i134, label %.lr.ph.i132.preheader

.lr.ph.i132.preheader:                            ; preds = %bb.f
  %.val130274 = ptrtoaddr ptr %.val130 to i64
  %min.iters.check276 = icmp ult i8 %i.g, 25
  %i.do = sub i64 %i.m, %.val130274
  %diff.check = icmp ugt i64 %i.do, -4
  %or.cond703 = select i1 %min.iters.check276, i1 true, i1 %diff.check
  br i1 %or.cond703, label %.lr.ph.i132.preheader718, label %vector.ph277

vector.ph277:                                     ; preds = %.lr.ph.i132.preheader
  %n.vec279 = and i64 %i.dn, 60                   ; 11 uses
  %i.dp = getelementptr i8, ptr %.0352.i, i64 %n.vec279 ; 2 uses
  %i.dq = getelementptr i8, ptr %.0331.i, i64 %n.vec279 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.l, i64 3
  %wide.load286 = load <2 x i8>, ptr %.0352.i, align 1, !tbaa !7 ; 3 uses
  %wide.load287 = load <2 x i8>, ptr %i.dr, align 1, !tbaa !7 ; 3 uses
  %i.ds = getelementptr i8, ptr %.val130, i64 3
  store <2 x i8> %wide.load286, ptr %.0331.i, align 1, !tbaa !7
  store <2 x i8> %wide.load287, ptr %i.ds, align 1, !tbaa !7
  %i.dt = zext <2 x i8> %wide.load286 to <2 x i32> ; 2 uses
  %i.du = zext <2 x i8> %wide.load287 to <2 x i32> ; 2 uses
  %i.dv = sub nuw nsw <2 x i32> splat (i32 256), %i.dt
  %i.dw = sub nuw nsw <2 x i32> splat (i32 256), %i.du
  %i.dx = icmp slt <2 x i8> %wide.load286, zeroinitializer
  %i.dy = icmp slt <2 x i8> %wide.load287, zeroinitializer
  %i.dz = select <2 x i1> %i.dx, <2 x i32> %i.dv, <2 x i32> %i.dt ; 2 uses
  %i.ea = select <2 x i1> %i.dy, <2 x i32> %i.dw, <2 x i32> %i.du ; 2 uses
  %i.eb = zext nneg <2 x i32> %i.dz to <2 x i64>
  %i.ec = zext nneg <2 x i32> %i.ea to <2 x i64>
  %i.ed = icmp eq i64 %n.vec279, 4
  br i1 %i.ed, label %middle.block289, label %vector.body280.1

vector.body280.1:                                 ; preds = %vector.ph277
  %next.gep284.1 = getelementptr i8, ptr %i.l, i64 5
  %next.gep285.1 = getelementptr i8, ptr %.val130, i64 5
  %i.ee = getelementptr i8, ptr %i.l, i64 7
  %wide.load286.1 = load <2 x i8>, ptr %next.gep284.1, align 1, !tbaa !7 ; 3 uses
  %wide.load287.1 = load <2 x i8>, ptr %i.ee, align 1, !tbaa !7 ; 3 uses
  %i.ef = getelementptr i8, ptr %.val130, i64 7
  store <2 x i8> %wide.load286.1, ptr %next.gep285.1, align 1, !tbaa !7
  store <2 x i8> %wide.load287.1, ptr %i.ef, align 1, !tbaa !7
  %i.eg = zext <2 x i8> %wide.load286.1 to <2 x i32> ; 2 uses
  %i.eh = zext <2 x i8> %wide.load287.1 to <2 x i32> ; 2 uses
  %i.ei = sub nuw nsw <2 x i32> splat (i32 256), %i.eg
  %i.ej = sub nuw nsw <2 x i32> splat (i32 256), %i.eh
  %i.ek = icmp slt <2 x i8> %wide.load286.1, zeroinitializer
  %i.el = icmp slt <2 x i8> %wide.load287.1, zeroinitializer
  %i.em = select <2 x i1> %i.ek, <2 x i32> %i.ei, <2 x i32> %i.eg
  %i.en = select <2 x i1> %i.el, <2 x i32> %i.ej, <2 x i32> %i.eh
  %narrow = add nuw nsw <2 x i32> %i.dz, %i.em    ; 2 uses
  %i.eo = zext nneg <2 x i32> %narrow to <2 x i64>
  %narrow744 = add nuw nsw <2 x i32> %i.ea, %i.en ; 2 uses
  %i.ep = zext nneg <2 x i32> %narrow744 to <2 x i64>
  %i.eq = icmp eq i64 %n.vec279, 8
  br i1 %i.eq, label %middle.block289, label %vector.body280.2

vector.body280.2:                                 ; preds = %vector.body280.1
  %next.gep284.2 = getelementptr i8, ptr %i.l, i64 9
  %next.gep285.2 = getelementptr i8, ptr %.val130, i64 9
  %i.er = getelementptr i8, ptr %i.l, i64 11
  %wide.load286.2 = load <2 x i8>, ptr %next.gep284.2, align 1, !tbaa !7 ; 3 uses
  %wide.load287.2 = load <2 x i8>, ptr %i.er, align 1, !tbaa !7 ; 3 uses
  %i.es = getelementptr i8, ptr %.val130, i64 11
  store <2 x i8> %wide.load286.2, ptr %next.gep285.2, align 1, !tbaa !7
  store <2 x i8> %wide.load287.2, ptr %i.es, align 1, !tbaa !7
  %i.et = zext <2 x i8> %wide.load286.2 to <2 x i32> ; 2 uses
  %i.eu = zext <2 x i8> %wide.load287.2 to <2 x i32> ; 2 uses
  %i.ev = sub nuw nsw <2 x i32> splat (i32 256), %i.et
  %i.ew = sub nuw nsw <2 x i32> splat (i32 256), %i.eu
  %i.ex = icmp slt <2 x i8> %wide.load286.2, zeroinitializer
  %i.ey = icmp slt <2 x i8> %wide.load287.2, zeroinitializer
  %i.ez = select <2 x i1> %i.ex, <2 x i32> %i.ev, <2 x i32> %i.et
  %i.fa = select <2 x i1> %i.ey, <2 x i32> %i.ew, <2 x i32> %i.eu
  %narrow745 = add nuw nsw <2 x i32> %narrow, %i.ez ; 2 uses
  %i.fb = zext nneg <2 x i32> %narrow745 to <2 x i64>
  %narrow746 = add nuw nsw <2 x i32> %narrow744, %i.fa ; 2 uses
  %i.fc = zext nneg <2 x i32> %narrow746 to <2 x i64>
  %i.fd = icmp eq i64 %n.vec279, 12
  br i1 %i.fd, label %middle.block289, label %vector.body280.3

vector.body280.3:                                 ; preds = %vector.body280.2
  %next.gep284.3 = getelementptr i8, ptr %i.l, i64 13
  %next.gep285.3 = getelementptr i8, ptr %.val130, i64 13
  %i.fe = getelementptr i8, ptr %i.l, i64 15
  %wide.load286.3 = load <2 x i8>, ptr %next.gep284.3, align 1, !tbaa !7 ; 3 uses
  %wide.load287.3 = load <2 x i8>, ptr %i.fe, align 1, !tbaa !7 ; 3 uses
  %i.ff = getelementptr i8, ptr %.val130, i64 15
  store <2 x i8> %wide.load286.3, ptr %next.gep285.3, align 1, !tbaa !7
  store <2 x i8> %wide.load287.3, ptr %i.ff, align 1, !tbaa !7
  %i.fg = zext <2 x i8> %wide.load286.3 to <2 x i32> ; 2 uses
  %i.fh = zext <2 x i8> %wide.load287.3 to <2 x i32> ; 2 uses
  %i.fi = sub nuw nsw <2 x i32> splat (i32 256), %i.fg
  %i.fj = sub nuw nsw <2 x i32> splat (i32 256), %i.fh
  %i.fk = icmp slt <2 x i8> %wide.load286.3, zeroinitializer
  %i.fl = icmp slt <2 x i8> %wide.load287.3, zeroinitializer
  %i.fm = select <2 x i1> %i.fk, <2 x i32> %i.fi, <2 x i32> %i.fg
  %i.fn = select <2 x i1> %i.fl, <2 x i32> %i.fj, <2 x i32> %i.fh
  %narrow747 = add nuw nsw <2 x i32> %narrow745, %i.fm ; 2 uses
  %i.fo = zext nneg <2 x i32> %narrow747 to <2 x i64>
  %narrow748 = add nuw nsw <2 x i32> %narrow746, %i.fn ; 2 uses
  %i.fp = zext nneg <2 x i32> %narrow748 to <2 x i64>
  %i.fq = icmp eq i64 %n.vec279, 16
  br i1 %i.fq, label %middle.block289, label %vector.body280.4

vector.body280.4:                                 ; preds = %vector.body280.3
  %next.gep284.4 = getelementptr i8, ptr %i.l, i64 17
  %next.gep285.4 = getelementptr i8, ptr %.val130, i64 17
  %i.fr = getelementptr i8, ptr %i.l, i64 19
  %wide.load286.4 = load <2 x i8>, ptr %next.gep284.4, align 1, !tbaa !7 ; 3 uses
  %wide.load287.4 = load <2 x i8>, ptr %i.fr, align 1, !tbaa !7 ; 3 uses
  %i.fs = getelementptr i8, ptr %.val130, i64 19
  store <2 x i8> %wide.load286.4, ptr %next.gep285.4, align 1, !tbaa !7
  store <2 x i8> %wide.load287.4, ptr %i.fs, align 1, !tbaa !7
  %i.ft = zext <2 x i8> %wide.load286.4 to <2 x i32> ; 2 uses
  %i.fu = zext <2 x i8> %wide.load287.4 to <2 x i32> ; 2 uses
  %i.fv = sub nuw nsw <2 x i32> splat (i32 256), %i.ft
  %i.fw = sub nuw nsw <2 x i32> splat (i32 256), %i.fu
  %i.fx = icmp slt <2 x i8> %wide.load286.4, zeroinitializer
  %i.fy = icmp slt <2 x i8> %wide.load287.4, zeroinitializer
  %i.fz = select <2 x i1> %i.fx, <2 x i32> %i.fv, <2 x i32> %i.ft
  %i.ga = select <2 x i1> %i.fy, <2 x i32> %i.fw, <2 x i32> %i.fu
  %narrow749 = add nuw nsw <2 x i32> %narrow747, %i.fz ; 2 uses
  %i.gb = zext nneg <2 x i32> %narrow749 to <2 x i64>
  %narrow750 = add nuw nsw <2 x i32> %narrow748, %i.ga ; 2 uses
  %i.gc = zext nneg <2 x i32> %narrow750 to <2 x i64>
  %i.gd = icmp eq i64 %n.vec279, 20
  br i1 %i.gd, label %middle.block289, label %vector.body280.5

vector.body280.5:                                 ; preds = %vector.body280.4
  %next.gep284.5 = getelementptr i8, ptr %i.l, i64 21
  %next.gep285.5 = getelementptr i8, ptr %.val130, i64 21
  %i.ge = getelementptr i8, ptr %i.l, i64 23
  %wide.load286.5 = load <2 x i8>, ptr %next.gep284.5, align 1, !tbaa !7 ; 3 uses
  %wide.load287.5 = load <2 x i8>, ptr %i.ge, align 1, !tbaa !7 ; 3 uses
  %i.gf = getelementptr i8, ptr %.val130, i64 23
  store <2 x i8> %wide.load286.5, ptr %next.gep285.5, align 1, !tbaa !7
  store <2 x i8> %wide.load287.5, ptr %i.gf, align 1, !tbaa !7
  %i.gg = zext <2 x i8> %wide.load286.5 to <2 x i32> ; 2 uses
  %i.gh = zext <2 x i8> %wide.load287.5 to <2 x i32> ; 2 uses
  %i.gi = sub nuw nsw <2 x i32> splat (i32 256), %i.gg
  %i.gj = sub nuw nsw <2 x i32> splat (i32 256), %i.gh
  %i.gk = icmp slt <2 x i8> %wide.load286.5, zeroinitializer
  %i.gl = icmp slt <2 x i8> %wide.load287.5, zeroinitializer
  %i.gm = select <2 x i1> %i.gk, <2 x i32> %i.gi, <2 x i32> %i.gg
  %i.gn = select <2 x i1> %i.gl, <2 x i32> %i.gj, <2 x i32> %i.gh
  %narrow751 = add nuw nsw <2 x i32> %narrow749, %i.gm
  %i.go = zext <2 x i32> %narrow751 to <2 x i64>  ; 2 uses
  %narrow752 = add nuw nsw <2 x i32> %narrow750, %i.gn
  %i.gp = zext <2 x i32> %narrow752 to <2 x i64>  ; 2 uses
  %i.gq = icmp eq i64 %n.vec279, 24
  br i1 %i.gq, label %middle.block289, label %vector.body280.6

vector.body280.6:                                 ; preds = %vector.body280.5
  %next.gep284.6 = getelementptr i8, ptr %i.l, i64 25
  %next.gep285.6 = getelementptr i8, ptr %.val130, i64 25
  %i.gr = getelementptr i8, ptr %i.l, i64 27
  %wide.load286.6 = load <2 x i8>, ptr %next.gep284.6, align 1, !tbaa !7 ; 3 uses
  %wide.load287.6 = load <2 x i8>, ptr %i.gr, align 1, !tbaa !7 ; 3 uses
  %i.gs = getelementptr i8, ptr %.val130, i64 27
  store <2 x i8> %wide.load286.6, ptr %next.gep285.6, align 1, !tbaa !7
  store <2 x i8> %wide.load287.6, ptr %i.gs, align 1, !tbaa !7
  %i.gt = zext <2 x i8> %wide.load286.6 to <2 x i32> ; 2 uses
  %i.gu = zext <2 x i8> %wide.load287.6 to <2 x i32> ; 2 uses
  %i.gv = sub nuw nsw <2 x i32> splat (i32 256), %i.gt
  %i.gw = sub nuw nsw <2 x i32> splat (i32 256), %i.gu
  %i.gx = icmp slt <2 x i8> %wide.load286.6, zeroinitializer
  %i.gy = icmp slt <2 x i8> %wide.load287.6, zeroinitializer
  %i.gz = select <2 x i1> %i.gx, <2 x i32> %i.gv, <2 x i32> %i.gt
  %i.ha = select <2 x i1> %i.gy, <2 x i32> %i.gw, <2 x i32> %i.gu
  %i.hb = zext nneg <2 x i32> %i.gz to <2 x i64>
  %i.hc = zext nneg <2 x i32> %i.ha to <2 x i64>
  %i.hd = add nuw nsw <2 x i64> %i.go, %i.hb      ; 2 uses
  %i.he = add nuw nsw <2 x i64> %i.gp, %i.hc      ; 2 uses
  %i.hf = icmp eq i64 %n.vec279, 28
  br i1 %i.hf, label %middle.block289, label %vector.body280.7

vector.body280.7:                                 ; preds = %vector.body280.6
  %next.gep284.7 = getelementptr i8, ptr %i.l, i64 29
  %next.gep285.7 = getelementptr i8, ptr %.val130, i64 29
  %i.hg = getelementptr i8, ptr %i.l, i64 31
  %wide.load286.7 = load <2 x i8>, ptr %next.gep284.7, align 1, !tbaa !7 ; 3 uses
  %wide.load287.7 = load <2 x i8>, ptr %i.hg, align 1, !tbaa !7 ; 3 uses
  %i.hh = getelementptr i8, ptr %.val130, i64 31
  store <2 x i8> %wide.load286.7, ptr %next.gep285.7, align 1, !tbaa !7
  store <2 x i8> %wide.load287.7, ptr %i.hh, align 1, !tbaa !7
  %i.hi = zext <2 x i8> %wide.load286.7 to <2 x i32> ; 2 uses
  %i.hj = zext <2 x i8> %wide.load287.7 to <2 x i32> ; 2 uses
  %i.hk = sub nuw nsw <2 x i32> splat (i32 256), %i.hi
  %i.hl = sub nuw nsw <2 x i32> splat (i32 256), %i.hj
  %i.hm = icmp slt <2 x i8> %wide.load286.7, zeroinitializer
  %i.hn = icmp slt <2 x i8> %wide.load287.7, zeroinitializer
  %i.ho = select <2 x i1> %i.hm, <2 x i32> %i.hk, <2 x i32> %i.hi
  %i.hp = select <2 x i1> %i.hn, <2 x i32> %i.hl, <2 x i32> %i.hj
  %i.hq = zext nneg <2 x i32> %i.ho to <2 x i64>
  %i.hr = zext nneg <2 x i32> %i.hp to <2 x i64>
  %i.hs = add nuw nsw <2 x i64> %i.hd, %i.hq
  %i.ht = add nuw nsw <2 x i64> %i.he, %i.hr
  br label %middle.block289

middle.block289:                                  ; preds = %vector.body280.7, %vector.body280.6, %vector.body280.5, %vector.body280.4, %vector.body280.3, %vector.body280.2, %vector.body280.1, %vector.ph277
  %.lcssa721 = phi <2 x i64> [ %i.eb, %vector.ph277 ], [ %i.eo, %vector.body280.1 ], [ %i.fb, %vector.body280.2 ], [ %i.fo, %vector.body280.3 ], [ %i.gb, %vector.body280.4 ], [ %i.go, %vector.body280.5 ], [ %i.hd, %vector.body280.6 ], [ %i.hs, %vector.body280.7 ]
  %.lcssa720 = phi <2 x i64> [ %i.ec, %vector.ph277 ], [ %i.ep, %vector.body280.1 ], [ %i.fc, %vector.body280.2 ], [ %i.fp, %vector.body280.3 ], [ %i.gc, %vector.body280.4 ], [ %i.gp, %vector.body280.5 ], [ %i.he, %vector.body280.6 ], [ %i.ht, %vector.body280.7 ]
  %bin.rdx290 = add <2 x i64> %.lcssa720, %.lcssa721
  %i.hu = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx290) ; 2 uses
  %cmp.n291 = icmp eq i64 %n.vec279, %i.dn
  br i1 %cmp.n291, label %.preheader.i134, label %.lr.ph.i132.preheader718

.lr.ph.i132.preheader718:                         ; preds = %.lr.ph.i132.preheader, %middle.block289
  %.0356.i.ph = phi ptr [ %.0352.i, %.lr.ph.i132.preheader ], [ %i.dp, %middle.block289 ] ; 3 uses
  %.0335.i.ph = phi ptr [ %.0331.i, %.lr.ph.i132.preheader ], [ %i.dq, %middle.block289 ] ; 3 uses
  %.04.i.ph = phi i64 [ 0, %.lr.ph.i132.preheader ], [ %i.hu, %middle.block289 ] ; 2 uses
  %.0303.i.ph = phi i64 [ 0, %.lr.ph.i132.preheader ], [ %n.vec279, %middle.block289 ] ; 3 uses
  %xtraiter = and i64 %i.dn, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i132.prol.loopexit, label %.lr.ph.i132.prol

.lr.ph.i132.prol:                                 ; preds = %.lr.ph.i132.preheader718
  %i.hv = load i8, ptr %.0356.i.ph, align 1, !tbaa !7 ; 3 uses
  store i8 %i.hv, ptr %.0335.i.ph, align 1, !tbaa !7
  %i.hw = zext i8 %i.hv to i32                    ; 2 uses
  %i.hx = sub nuw nsw i32 256, %i.hw
  %i.hy = icmp slt i8 %i.hv, 0
  %i.hz = select i1 %i.hy, i32 %i.hx, i32 %i.hw
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = add i64 %.04.i.ph, %i.ia                ; 2 uses
  %i.ic = or disjoint i64 %.0303.i.ph, 1
  %.033.i.prol = getelementptr inbounds nuw i8, ptr %.0335.i.ph, i64 1 ; 2 uses
  %.035.i.prol = getelementptr inbounds nuw i8, ptr %.0356.i.ph, i64 1 ; 2 uses
  br label %.lr.ph.i132.prol.loopexit

.lr.ph.i132.prol.loopexit:                        ; preds = %.lr.ph.i132.prol, %.lr.ph.i132.preheader718
  %.lcssa719.unr = phi i64 [ poison, %.lr.ph.i132.preheader718 ], [ %i.ib, %.lr.ph.i132.prol ]
  %.033.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i132.preheader718 ], [ %.033.i.prol, %.lr.ph.i132.prol ]
  %.035.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i132.preheader718 ], [ %.035.i.prol, %.lr.ph.i132.prol ]
  %.0356.i.unr = phi ptr [ %.0356.i.ph, %.lr.ph.i132.preheader718 ], [ %.035.i.prol, %.lr.ph.i132.prol ]
  %.0335.i.unr = phi ptr [ %.0335.i.ph, %.lr.ph.i132.preheader718 ], [ %.033.i.prol, %.lr.ph.i132.prol ]
  %.04.i.unr = phi i64 [ %.04.i.ph, %.lr.ph.i132.preheader718 ], [ %i.ib, %.lr.ph.i132.prol ]
  %.0303.i.unr = phi i64 [ %.0303.i.ph, %.lr.ph.i132.preheader718 ], [ %i.ic, %.lr.ph.i132.prol ]
  %i.id = add nsw i64 %i.dn, -1
  %i.ie = icmp eq i64 %.0303.i.ph, %i.id
  br i1 %i.ie, label %.preheader.i134, label %.lr.ph.i132

.preheader.i134:                                  ; preds = %.lr.ph.i132.prol.loopexit, %.lr.ph.i132, %middle.block289, %bb.f
  %.030.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.dn, %middle.block289 ], [ %i.dn, %.lr.ph.i132 ], [ %i.dn, %.lr.ph.i132.prol.loopexit ] ; 2 uses
  %.0.lcssa.i135 = phi i64 [ 0, %bb.f ], [ %i.hu, %middle.block289 ], [ %.lcssa719.unr, %.lr.ph.i132.prol.loopexit ], [ %i.it, %.lr.ph.i132 ] ; 2 uses
  %.033.lcssa.i = phi ptr [ %.0331.i, %bb.f ], [ %i.dq, %middle.block289 ], [ %.033.i.lcssa.unr, %.lr.ph.i132.prol.loopexit ], [ %.033.i.1, %.lr.ph.i132 ]
  %.035.lcssa.i = phi ptr [ %.0352.i, %bb.f ], [ %i.dp, %middle.block289 ], [ %.035.i.lcssa.unr, %.lr.ph.i132.prol.loopexit ], [ %.035.i.1, %.lr.ph.i132 ]
  %i.if = icmp ult i64 %.030.lcssa.i, %i.e
  br i1 %i.if, label %.lr.ph16.i, label %png_setup_sub_row.exit

.lr.ph.i132:                                      ; preds = %.lr.ph.i132.prol.loopexit, %.lr.ph.i132
  %.0356.i = phi ptr [ %.035.i.1, %.lr.ph.i132 ], [ %.0356.i.unr, %.lr.ph.i132.prol.loopexit ] ; 3 uses
  %.0335.i = phi ptr [ %.033.i.1, %.lr.ph.i132 ], [ %.0335.i.unr, %.lr.ph.i132.prol.loopexit ] ; 3 uses
  %.04.i = phi i64 [ %i.it, %.lr.ph.i132 ], [ %.04.i.unr, %.lr.ph.i132.prol.loopexit ]
  %.0303.i = phi i64 [ %i.iu, %.lr.ph.i132 ], [ %.0303.i.unr, %.lr.ph.i132.prol.loopexit ]
  %i.ig = load i8, ptr %.0356.i, align 1, !tbaa !7 ; 3 uses
  store i8 %i.ig, ptr %.0335.i, align 1, !tbaa !7
  %i.ih = zext i8 %i.ig to i32                    ; 2 uses
  %i.ii = sub nuw nsw i32 256, %i.ih
  %i.ij = icmp slt i8 %i.ig, 0
  %i.ik = select i1 %i.ij, i32 %i.ii, i32 %i.ih
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = add i64 %.04.i, %i.il
  %.033.i = getelementptr inbounds nuw i8, ptr %.0335.i, i64 1
  %.035.i = getelementptr inbounds nuw i8, ptr %.0356.i, i64 1
  %i.in = load i8, ptr %.035.i, align 1, !tbaa !7 ; 3 uses
  store i8 %i.in, ptr %.033.i, align 1, !tbaa !7
  %i.io = zext i8 %i.in to i32                    ; 2 uses
  %i.ip = sub nuw nsw i32 256, %i.io
  %i.iq = icmp slt i8 %i.in, 0
  %i.ir = select i1 %i.iq, i32 %i.ip, i32 %i.io
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = add i64 %i.im, %i.is                    ; 2 uses
  %i.iu = add nuw nsw i64 %.0303.i, 2             ; 2 uses
  %.033.i.1 = getelementptr inbounds nuw i8, ptr %.0335.i, i64 2 ; 2 uses
  %.035.i.1 = getelementptr inbounds nuw i8, ptr %.0356.i, i64 2 ; 2 uses
  %exitcond.not.i133.1 = icmp eq i64 %i.iu, %i.dn
  br i1 %exitcond.not.i133.1, label %.preheader.i134, label %.lr.ph.i132, !llvm.loop !275

.lr.ph16.i:                                       ; preds = %.preheader.i134, %.lr.ph16.i
  %.03215.pn.i = phi ptr [ %.03215.i, %.lr.ph16.i ], [ %i.l, %.preheader.i134 ]
  %.114.i = phi i64 [ %i.jc, %.lr.ph16.i ], [ %.0.lcssa.i135, %.preheader.i134 ]
  %.13113.i = phi i64 [ %i.je, %.lr.ph16.i ], [ %.030.lcssa.i, %.preheader.i134 ]
  %.13412.i = phi ptr [ %i.jg, %.lr.ph16.i ], [ %.033.lcssa.i, %.preheader.i134 ] ; 2 uses
  %.13611.i = phi ptr [ %i.jf, %.lr.ph16.i ], [ %.035.lcssa.i, %.preheader.i134 ] ; 2 uses
  %.03215.i = getelementptr inbounds nuw i8, ptr %.03215.pn.i, i64 1 ; 2 uses
  %i.iv = load i8, ptr %.13611.i, align 1, !tbaa !7
  %i.iw = load i8, ptr %.03215.i, align 1, !tbaa !7
  %.narrow.i136 = sub i8 %i.iv, %i.iw             ; 3 uses
  store i8 %.narrow.i136, ptr %.13412.i, align 1, !tbaa !7
  %i.ix = zext i8 %.narrow.i136 to i32            ; 2 uses
  %i.iy = sub nuw nsw i32 256, %i.ix
  %i.iz = icmp slt i8 %.narrow.i136, 0
  %i.ja = select i1 %i.iz, i32 %i.iy, i32 %i.ix
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = add i64 %.114.i, %i.jb                  ; 3 uses
  %i.jd = icmp ule i64 %i.jc, %.0102
  %i.je = add nuw i64 %.13113.i, 1                ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.13611.i, i64 1
  %i.jg = getelementptr inbounds nuw i8, ptr %.13412.i, i64 1
  %i.jh = icmp ult i64 %i.je, %i.e
  %or.cond.i = select i1 %i.jd, i1 %i.jh, i1 false
  br i1 %or.cond.i, label %.lr.ph16.i, label %png_setup_sub_row.exit, !llvm.loop !276

png_setup_sub_row.exit:                           ; preds = %.lr.ph16.i, %.preheader.i134
  %.2.i = phi i64 [ %.0.lcssa.i135, %.preheader.i134 ], [ %i.jc, %.lr.ph16.i ] ; 3 uses
  %i.ji = icmp ult i64 %.2.i, %.0102
  br i1 %i.ji, label %bb.g, label %bb.i

bb.g:                                             ; preds = %png_setup_sub_row.exit
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !246 ; 2 uses
  %.not121 = icmp eq ptr %i.jk, null
  br i1 %.not121, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.jk, ptr %i.dm, align 8, !tbaa !245
  store ptr %.val130, ptr %i.jj, align 8, !tbaa !246
  br label %bb.i

bb.i:                                             ; preds = %png_setup_sub_row.exit, %bb.h, %bb.g, %bb.e
  %.2104 = phi i64 [ %.0102, %png_setup_sub_row.exit ], [ %.0102, %bb.e ], [ %.2.i, %bb.h ], [ %.2.i, %bb.g ] ; 4 uses
  %.1 = phi ptr [ %i.l, %png_setup_sub_row.exit ], [ %i.l, %bb.e ], [ %.val130, %bb.h ], [ %.val130, %bb.g ] ; 2 uses
  %i.jl = icmp eq i32 %.0, 32
  br i1 %i.jl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !245, !alias.scope !277 ; 13 uses
  %i.jo = ptrtoaddr ptr %i.jn to i64              ; 2 uses
  store i8 2, ptr %i.jn, align 1, !tbaa !7, !noalias !277
  %.not.i137 = icmp eq i64 %i.e, 0
  br i1 %.not.i137, label %.thread212.thread, label %iter.check591

iter.check591:                                    ; preds = %bb.j
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !247, !alias.scope !277 ; 7 uses
  %min.iters.check569 = icmp ult i64 %i.e, 4
  br i1 %min.iters.check569, label %.lr.ph.i138.preheader, label %vector.memcheck564

vector.memcheck564:                               ; preds = %iter.check591
  %i.jr = ptrtoaddr ptr %i.jq to i64
  %i.js = sub i64 %i.m, %i.jo
  %diff.check565 = icmp ugt i64 %i.js, -32
  %i.jt = sub i64 %i.jr, %i.jo
  %diff.check566 = icmp ugt i64 %i.jt, -32
  %conflict.rdx567 = or i1 %diff.check565, %diff.check566
  br i1 %conflict.rdx567, label %.lr.ph.i138.preheader, label %vector.main.loop.iter.check570

vector.main.loop.iter.check570:                   ; preds = %vector.memcheck564
  %min.iters.check571 = icmp ult i64 %i.e, 32
  br i1 %min.iters.check571, label %vec.epilog.ph595, label %vector.ph572

vector.ph572:                                     ; preds = %vector.main.loop.iter.check570
  %n.mod.vf573 = and i64 %i.e, 28
  %n.vec574 = and i64 %i.e, -32                   ; 7 uses
  %i.ju = getelementptr i8, ptr %i.jq, i64 %n.vec574
  %i.jv = getelementptr i8, ptr %i.jn, i64 %n.vec574
  %i.jw = getelementptr i8, ptr %i.l, i64 %n.vec574
  br label %vector.body575

vector.body575:                                   ; preds = %vector.body575, %vector.ph572
  %index576 = phi i64 [ 0, %vector.ph572 ], [ %index.next584, %vector.body575 ] ; 4 uses
  %next.gep577 = getelementptr i8, ptr %i.jq, i64 %index576 ; 2 uses
  %next.gep578 = getelementptr i8, ptr %i.jn, i64 %index576 ; 2 uses
  %next.gep579 = getelementptr i8, ptr %i.l, i64 %index576 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %next.gep578, i64 1
  %i.jy = getelementptr inbounds nuw i8, ptr %next.gep577, i64 1
  %i.jz = getelementptr inbounds nuw i8, ptr %next.gep579, i64 1
  %i.ka = getelementptr inbounds nuw i8, ptr %next.gep579, i64 17
  %wide.load580 = load <16 x i8>, ptr %i.jz, align 1, !tbaa !7, !noalias !277
  %wide.load581 = load <16 x i8>, ptr %i.ka, align 1, !tbaa !7, !noalias !277
  %i.kb = getelementptr inbounds nuw i8, ptr %next.gep577, i64 17
  %wide.load582 = load <16 x i8>, ptr %i.jy, align 1, !tbaa !7, !noalias !277
  %wide.load583 = load <16 x i8>, ptr %i.kb, align 1, !tbaa !7, !noalias !277
  %i.kc = sub <16 x i8> %wide.load580, %wide.load582
  %i.kd = sub <16 x i8> %wide.load581, %wide.load583
  %i.ke = getelementptr inbounds nuw i8, ptr %next.gep578, i64 17
  store <16 x i8> %i.kc, ptr %i.jx, align 1, !tbaa !7, !noalias !277
  store <16 x i8> %i.kd, ptr %i.ke, align 1, !tbaa !7, !noalias !277
  %index.next584 = add nuw i64 %index576, 32      ; 2 uses
  %i.kf = icmp eq i64 %index.next584, %n.vec574
  br i1 %i.kf, label %middle.block585, label %vector.body575, !llvm.loop !280

middle.block585:                                  ; preds = %vector.body575
  %cmp.n586 = icmp eq i64 %i.e, %n.vec574
  br i1 %cmp.n586, label %.thread212.thread, label %vec.epilog.iter.check593

vec.epilog.iter.check593:                         ; preds = %middle.block585
  %min.epilog.iters.check594 = icmp eq i64 %n.mod.vf573, 0
  br i1 %min.epilog.iters.check594, label %.lr.ph.i138.preheader, label %vec.epilog.ph595, !prof !270

vec.epilog.ph595:                                 ; preds = %vector.main.loop.iter.check570, %vec.epilog.iter.check593
  %vec.epilog.resume.val587 = phi i64 [ %n.vec574, %vec.epilog.iter.check593 ], [ 0, %vector.main.loop.iter.check570 ]
  %n.vec597 = and i64 %i.e, -4                    ; 6 uses
  %i.kg = getelementptr i8, ptr %i.jq, i64 %n.vec597
  %i.kh = getelementptr i8, ptr %i.jn, i64 %n.vec597
  %i.ki = getelementptr i8, ptr %i.l, i64 %n.vec597
  br label %vec.epilog.vector.body598

vec.epilog.vector.body598:                        ; preds = %vec.epilog.vector.body598, %vec.epilog.ph595
  %index599 = phi i64 [ %vec.epilog.resume.val587, %vec.epilog.ph595 ], [ %index.next605, %vec.epilog.vector.body598 ] ; 4 uses
  %next.gep600 = getelementptr i8, ptr %i.jq, i64 %index599
  %next.gep601 = getelementptr i8, ptr %i.jn, i64 %index599
  %next.gep602 = getelementptr i8, ptr %i.l, i64 %index599
  %i.kj = getelementptr inbounds nuw i8, ptr %next.gep601, i64 1
  %i.kk = getelementptr inbounds nuw i8, ptr %next.gep600, i64 1
  %i.kl = getelementptr inbounds nuw i8, ptr %next.gep602, i64 1
  %wide.load603 = load <4 x i8>, ptr %i.kl, align 1, !tbaa !7, !noalias !277
  %wide.load604 = load <4 x i8>, ptr %i.kk, align 1, !tbaa !7, !noalias !277
  %i.km = sub <4 x i8> %wide.load603, %wide.load604
  store <4 x i8> %i.km, ptr %i.kj, align 1, !tbaa !7, !noalias !277
  %index.next605 = add nuw i64 %index599, 4       ; 2 uses
  %i.kn = icmp eq i64 %index.next605, %n.vec597
  br i1 %i.kn, label %vec.epilog.middle.block606, label %vec.epilog.vector.body598, !llvm.loop !281

vec.epilog.middle.block606:                       ; preds = %vec.epilog.vector.body598
  %cmp.n607 = icmp eq i64 %i.e, %n.vec597
  br i1 %cmp.n607, label %.thread212.thread, label %.lr.ph.i138.preheader

.lr.ph.i138.preheader:                            ; preds = %vector.memcheck564, %iter.check591, %vec.epilog.iter.check593, %vec.epilog.middle.block606
  %.020.i139.ph = phi i64 [ 0, %iter.check591 ], [ 0, %vector.memcheck564 ], [ %n.vec574, %vec.epilog.iter.check593 ], [ %n.vec597, %vec.epilog.middle.block606 ] ; 3 uses
  %.pn1519.i.ph = phi ptr [ %i.jq, %iter.check591 ], [ %i.jq, %vector.memcheck564 ], [ %i.ju, %vec.epilog.iter.check593 ], [ %i.kg, %vec.epilog.middle.block606 ] ; 2 uses
  %.pn1618.i.ph = phi ptr [ %i.jn, %iter.check591 ], [ %i.jn, %vector.memcheck564 ], [ %i.jv, %vec.epilog.iter.check593 ], [ %i.kh, %vec.epilog.middle.block606 ] ; 2 uses
  %.pn17.i.ph = phi ptr [ %i.l, %iter.check591 ], [ %i.l, %vector.memcheck564 ], [ %i.jw, %vec.epilog.iter.check593 ], [ %i.ki, %vec.epilog.middle.block606 ] ; 2 uses
  %xtraiter735 = and i64 %i.e, 3                  ; 2 uses
  %lcmp.mod736.not = icmp eq i64 %xtraiter735, 0
  br i1 %lcmp.mod736.not, label %.lr.ph.i138.prol.loopexit, label %.lr.ph.i138.prol

.lr.ph.i138.prol:                                 ; preds = %.lr.ph.i138.preheader, %.lr.ph.i138.prol
  %.020.i139.prol = phi i64 [ %i.kq, %.lr.ph.i138.prol ], [ %.020.i139.ph, %.lr.ph.i138.preheader ]
  %.pn1519.i.prol = phi ptr [ %.012.i.prol, %.lr.ph.i138.prol ], [ %.pn1519.i.ph, %.lr.ph.i138.preheader ]
  %.pn1618.i.prol = phi ptr [ %.013.i.prol, %.lr.ph.i138.prol ], [ %.pn1618.i.ph, %.lr.ph.i138.preheader ]
  %.pn17.i.prol = phi ptr [ %.014.i.prol, %.lr.ph.i138.prol ], [ %.pn17.i.ph, %.lr.ph.i138.preheader ]
  %prol.iter737 = phi i64 [ %prol.iter737.next, %.lr.ph.i138.prol ], [ 0, %.lr.ph.i138.preheader ]
  %.013.i.prol = getelementptr inbounds nuw i8, ptr %.pn1618.i.prol, i64 1 ; 3 uses
  %.012.i.prol = getelementptr inbounds nuw i8, ptr %.pn1519.i.prol, i64 1 ; 3 uses
  %.014.i.prol = getelementptr inbounds nuw i8, ptr %.pn17.i.prol, i64 1 ; 3 uses
  %i.ko = load i8, ptr %.014.i.prol, align 1, !tbaa !7, !noalias !277
  %i.kp = load i8, ptr %.012.i.prol, align 1, !tbaa !7, !noalias !277
  %.narrow.i140.prol = sub i8 %i.ko, %i.kp
  store i8 %.narrow.i140.prol, ptr %.013.i.prol, align 1, !tbaa !7, !noalias !277
  %i.kq = add nuw i64 %.020.i139.prol, 1          ; 2 uses
  %prol.iter737.next = add i64 %prol.iter737, 1   ; 2 uses
  %prol.iter737.cmp.not = icmp eq i64 %prol.iter737.next, %xtraiter735
  br i1 %prol.iter737.cmp.not, label %.lr.ph.i138.prol.loopexit, label %.lr.ph.i138.prol, !llvm.loop !282

.lr.ph.i138.prol.loopexit:                        ; preds = %.lr.ph.i138.prol, %.lr.ph.i138.preheader
  %.020.i139.unr = phi i64 [ %.020.i139.ph, %.lr.ph.i138.preheader ], [ %i.kq, %.lr.ph.i138.prol ]
  %.pn1519.i.unr = phi ptr [ %.pn1519.i.ph, %.lr.ph.i138.preheader ], [ %.012.i.prol, %.lr.ph.i138.prol ]
  %.pn1618.i.unr = phi ptr [ %.pn1618.i.ph, %.lr.ph.i138.preheader ], [ %.013.i.prol, %.lr.ph.i138.prol ]
  %.pn17.i.unr = phi ptr [ %.pn17.i.ph, %.lr.ph.i138.preheader ], [ %.014.i.prol, %.lr.ph.i138.prol ]
  %i.kr = sub i64 %.020.i139.ph, %i.e
  %i.ks = icmp ugt i64 %i.kr, -4
  br i1 %i.ks, label %.thread212.thread, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %.lr.ph.i138.prol.loopexit, %.lr.ph.i138
  %.020.i139 = phi i64 [ %i.lb, %.lr.ph.i138 ], [ %.020.i139.unr, %.lr.ph.i138.prol.loopexit ]
  %.pn1519.i = phi ptr [ %.012.i.3, %.lr.ph.i138 ], [ %.pn1519.i.unr, %.lr.ph.i138.prol.loopexit ] ; 4 uses
  %.pn1618.i = phi ptr [ %.013.i.3, %.lr.ph.i138 ], [ %.pn1618.i.unr, %.lr.ph.i138.prol.loopexit ] ; 4 uses
  %.pn17.i = phi ptr [ %.014.i.3, %.lr.ph.i138 ], [ %.pn17.i.unr, %.lr.ph.i138.prol.loopexit ] ; 4 uses
  %.013.i = getelementptr inbounds nuw i8, ptr %.pn1618.i, i64 1
  %.012.i = getelementptr inbounds nuw i8, ptr %.pn1519.i, i64 1
  %.014.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 1
  %i.kt = load i8, ptr %.014.i, align 1, !tbaa !7, !noalias !277
  %i.ku = load i8, ptr %.012.i, align 1, !tbaa !7, !noalias !277
  %.narrow.i140 = sub i8 %i.kt, %i.ku
  store i8 %.narrow.i140, ptr %.013.i, align 1, !tbaa !7, !noalias !277
  %.013.i.1 = getelementptr inbounds nuw i8, ptr %.pn1618.i, i64 2
  %.012.i.1 = getelementptr inbounds nuw i8, ptr %.pn1519.i, i64 2
  %.014.i.1 = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 2
  %i.kv = load i8, ptr %.014.i.1, align 1, !tbaa !7, !noalias !277
  %i.kw = load i8, ptr %.012.i.1, align 1, !tbaa !7, !noalias !277
  %.narrow.i140.1 = sub i8 %i.kv, %i.kw
  store i8 %.narrow.i140.1, ptr %.013.i.1, align 1, !tbaa !7, !noalias !277
  %.013.i.2 = getelementptr inbounds nuw i8, ptr %.pn1618.i, i64 3
  %.012.i.2 = getelementptr inbounds nuw i8, ptr %.pn1519.i, i64 3
  %.014.i.2 = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 3
  %i.kx = load i8, ptr %.014.i.2, align 1, !tbaa !7, !noalias !277
  %i.ky = load i8, ptr %.012.i.2, align 1, !tbaa !7, !noalias !277
  %.narrow.i140.2 = sub i8 %i.kx, %i.ky
  store i8 %.narrow.i140.2, ptr %.013.i.2, align 1, !tbaa !7, !noalias !277
  %.013.i.3 = getelementptr inbounds nuw i8, ptr %.pn1618.i, i64 4 ; 2 uses
  %.012.i.3 = getelementptr inbounds nuw i8, ptr %.pn1519.i, i64 4 ; 2 uses
  %.014.i.3 = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 4 ; 2 uses
  %i.kz = load i8, ptr %.014.i.3, align 1, !tbaa !7, !noalias !277
  %i.la = load i8, ptr %.012.i.3, align 1, !tbaa !7, !noalias !277
  %.narrow.i140.3 = sub i8 %i.kz, %i.la
  store i8 %.narrow.i140.3, ptr %.013.i.3, align 1, !tbaa !7, !noalias !277
  %i.lb = add nuw i64 %.020.i139, 4               ; 2 uses
  %exitcond.not.i141.3 = icmp eq i64 %i.lb, %i.e
  br i1 %exitcond.not.i141.3, label %.thread212.thread, label %.lr.ph.i138, !llvm.loop !283

bb.k:                                             ; preds = %bb.i
  %i.lc = and i32 %.0, 32
  %.not122 = icmp eq i32 %i.lc, 0
  br i1 %.not122, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !245, !alias.scope !284 ; 5 uses
  store i8 2, ptr %i.le, align 1, !tbaa !7, !noalias !284
  %.not.i142 = icmp eq i64 %i.e, 0
  br i1 %.not.i142, label %png_setup_up_row.exit, label %.lr.ph.preheader.i143

.lr.ph.preheader.i143:                            ; preds = %bb.l
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !247, !alias.scope !284
  br label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %.lr.ph.i144, %.lr.ph.preheader.i143
  %.pn.pn.i = phi ptr [ %.034.i, %.lr.ph.i144 ], [ %i.l, %.lr.ph.preheader.i143 ]
  %.pn25.pn.i = phi ptr [ %.02133.i, %.lr.ph.i144 ], [ %i.lg, %.lr.ph.preheader.i143 ]
  %.pn26.pn.i = phi ptr [ %.02232.i, %.lr.ph.i144 ], [ %i.le, %.lr.ph.preheader.i143 ]
  %.01931.i = phi i64 [ %i.lo, %.lr.ph.i144 ], [ 0, %.lr.ph.preheader.i143 ]
  %.02030.i = phi i64 [ %i.lq, %.lr.ph.i144 ], [ 0, %.lr.ph.preheader.i143 ]
  %.02232.i = getelementptr inbounds nuw i8, ptr %.pn26.pn.i, i64 1 ; 2 uses
  %.02133.i = getelementptr inbounds nuw i8, ptr %.pn25.pn.i, i64 1 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.pn.pn.i, i64 1 ; 2 uses
  %i.lh = load i8, ptr %.034.i, align 1, !tbaa !7, !noalias !284
  %i.li = load i8, ptr %.02133.i, align 1, !tbaa !7, !noalias !284
  %.narrow.i145 = sub i8 %i.lh, %i.li             ; 3 uses
  store i8 %.narrow.i145, ptr %.02232.i, align 1, !tbaa !7, !noalias !284
  %i.lj = zext i8 %.narrow.i145 to i32            ; 2 uses
  %i.lk = sub nuw nsw i32 256, %i.lj
  %i.ll = icmp slt i8 %.narrow.i145, 0
  %i.lm = select i1 %i.ll, i32 %i.lk, i32 %i.lj
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = add i64 %.01931.i, %i.ln                ; 3 uses
  %i.lp = icmp ugt i64 %i.lo, %.2104
  %i.lq = add nuw i64 %.02030.i, 1                ; 2 uses
  %exitcond.not.i146 = icmp eq i64 %i.lq, %i.e
  %or.cond.i147 = select i1 %i.lp, i1 true, i1 %exitcond.not.i146
  br i1 %or.cond.i147, label %png_setup_up_row.exit, label %.lr.ph.i144, !llvm.loop !287

png_setup_up_row.exit:                            ; preds = %.lr.ph.i144, %bb.l
  %.1.i = phi i64 [ 0, %bb.l ], [ %i.lo, %.lr.ph.i144 ] ; 3 uses
  %i.lr = icmp ult i64 %.1.i, %.2104
  br i1 %i.lr, label %bb.m, label %bb.o

bb.m:                                             ; preds = %png_setup_up_row.exit
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !246 ; 2 uses
  %.not123 = icmp eq ptr %i.lt, null
  br i1 %.not123, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.lt, ptr %i.ld, align 8, !tbaa !245
  store ptr %i.le, ptr %i.ls, align 8, !tbaa !246
  br label %bb.o

bb.o:                                             ; preds = %png_setup_up_row.exit, %bb.n, %bb.m, %bb.k
  %.4106 = phi i64 [ %.2104, %png_setup_up_row.exit ], [ %.2104, %bb.k ], [ %.1.i, %bb.n ], [ %.1.i, %bb.m ] ; 4 uses
  %.3 = phi ptr [ %.1, %png_setup_up_row.exit ], [ %.1, %bb.k ], [ %i.le, %bb.n ], [ %i.le, %bb.m ] ; 2 uses
  %i.lu = icmp eq i32 %.0, 64
  br i1 %i.lu, label %bb.p, label %.thread195

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !245, !alias.scope !288 ; 8 uses
  %i.lx = ptrtoaddr ptr %i.lw to i64              ; 2 uses
  store i8 3, ptr %i.lw, align 1, !tbaa !7, !noalias !288
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !247, !alias.scope !288 ; 3 uses
  %i.ma = ptrtoaddr ptr %i.lz to i64
  %.02029.i = getelementptr inbounds nuw i8, ptr %i.lw, i64 1 ; 7 uses
  %.01830.i = getelementptr inbounds nuw i8, ptr %i.lz, i64 1 ; 7 uses
  %.02231.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 7 uses
  %.not.i148 = icmp eq i32 %i.j, 0
  br i1 %.not.i148, label %.preheader.i153, label %iter.check482

iter.check482:                                    ; preds = %bb.p
  %i.mb = zext i8 %i.g to i64
  %i.mc = add nuw nsw i64 %i.mb, 7                ; 2 uses
  %i.md = lshr i64 %i.mc, 3                       ; 4 uses
  %min.iters.check461 = icmp ult i8 %i.g, 25
  br i1 %min.iters.check461, label %.lr.ph.i149.preheader, label %vector.memcheck456

vector.memcheck456:                               ; preds = %iter.check482
  %i.me = sub i64 %i.m, %i.lx
  %diff.check457 = icmp ugt i64 %i.me, -16
  %i.mf = sub i64 %i.ma, %i.lx
  %diff.check458 = icmp ugt i64 %i.mf, -16
  %conflict.rdx459 = or i1 %diff.check457, %diff.check458
  br i1 %conflict.rdx459, label %.lr.ph.i149.preheader, label %vector.main.loop.iter.check462

vector.main.loop.iter.check462:                   ; preds = %vector.memcheck456
  %min.iters.check463 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check463, label %vec.epilog.ph486, label %vector.ph464

vector.ph464:                                     ; preds = %vector.main.loop.iter.check462
  %n.vec466 = and i64 %i.md, 48                   ; 7 uses
  %i.mg = getelementptr i8, ptr %.02231.i, i64 %n.vec466 ; 2 uses
  %i.mh = getelementptr i8, ptr %.01830.i, i64 %n.vec466 ; 2 uses
  %i.mi = getelementptr i8, ptr %.02029.i, i64 %n.vec466 ; 2 uses
  %i.mj = trunc nuw nsw i64 %n.vec466 to i32
  %wide.load472 = load <16 x i8>, ptr %.02231.i, align 1, !tbaa !7, !noalias !288
  %wide.load473 = load <16 x i8>, ptr %.01830.i, align 1, !tbaa !7, !noalias !288
  %i.mk = lshr <16 x i8> %wide.load473, splat (i8 1)
  %i.ml = sub <16 x i8> %wide.load472, %i.mk
  store <16 x i8> %i.ml, ptr %.02029.i, align 1, !tbaa !7, !noalias !288
  %i.mm = icmp eq i64 %n.vec466, 16
  br i1 %i.mm, label %middle.block475, label %vector.body467.1

vector.body467.1:                                 ; preds = %vector.ph464
  %next.gep469.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep470.1 = getelementptr i8, ptr %i.lz, i64 17
  %next.gep471.1 = getelementptr i8, ptr %i.lw, i64 17
  %wide.load472.1 = load <16 x i8>, ptr %next.gep469.1, align 1, !tbaa !7, !noalias !288
  %wide.load473.1 = load <16 x i8>, ptr %next.gep470.1, align 1, !tbaa !7, !noalias !288
  %i.mn = lshr <16 x i8> %wide.load473.1, splat (i8 1)
  %i.mo = sub <16 x i8> %wide.load472.1, %i.mn
  store <16 x i8> %i.mo, ptr %next.gep471.1, align 1, !tbaa !7, !noalias !288
  br label %middle.block475

middle.block475:                                  ; preds = %vector.body467.1, %vector.ph464
  %cmp.n476 = icmp eq i64 %i.md, %n.vec466
  br i1 %cmp.n476, label %.preheader.i153, label %vec.epilog.iter.check484

vec.epilog.iter.check484:                         ; preds = %middle.block475
  %i.mp = and i64 %i.mc, 96
  %min.epilog.iters.check485 = icmp eq i64 %i.mp, 0
  br i1 %min.epilog.iters.check485, label %.lr.ph.i149.preheader, label %vec.epilog.ph486, !prof !265

vec.epilog.ph486:                                 ; preds = %vector.main.loop.iter.check462, %vec.epilog.iter.check484
  %vec.epilog.resume.val477 = phi i64 [ %n.vec466, %vec.epilog.iter.check484 ], [ 0, %vector.main.loop.iter.check462 ]
  %n.vec488 = and i64 %i.md, 60                   ; 6 uses
  %i.mq = getelementptr i8, ptr %.02231.i, i64 %n.vec488 ; 2 uses
  %i.mr = getelementptr i8, ptr %.01830.i, i64 %n.vec488 ; 2 uses
  %i.ms = getelementptr i8, ptr %.02029.i, i64 %n.vec488 ; 2 uses
  %i.mt = trunc nuw nsw i64 %n.vec488 to i32
  br label %vec.epilog.vector.body489

vec.epilog.vector.body489:                        ; preds = %vec.epilog.vector.body489, %vec.epilog.ph486
  %index490 = phi i64 [ %vec.epilog.resume.val477, %vec.epilog.ph486 ], [ %index.next496, %vec.epilog.vector.body489 ] ; 4 uses
  %next.gep491 = getelementptr i8, ptr %.02231.i, i64 %index490
  %next.gep492 = getelementptr i8, ptr %.01830.i, i64 %index490
  %next.gep493 = getelementptr i8, ptr %.02029.i, i64 %index490
  %wide.load494 = load <4 x i8>, ptr %next.gep491, align 1, !tbaa !7, !noalias !288
  %wide.load495 = load <4 x i8>, ptr %next.gep492, align 1, !tbaa !7, !noalias !288
  %i.mu = lshr <4 x i8> %wide.load495, splat (i8 1)
  %i.mv = sub <4 x i8> %wide.load494, %i.mu
  store <4 x i8> %i.mv, ptr %next.gep493, align 1, !tbaa !7, !noalias !288
  %index.next496 = add nuw i64 %index490, 4       ; 2 uses
  %i.mw = icmp eq i64 %index.next496, %n.vec488
  br i1 %i.mw, label %vec.epilog.middle.block497, label %vec.epilog.vector.body489, !llvm.loop !291

vec.epilog.middle.block497:                       ; preds = %vec.epilog.vector.body489
  %cmp.n498 = icmp eq i64 %i.md, %n.vec488
  br i1 %cmp.n498, label %.preheader.i153, label %.lr.ph.i149.preheader

.lr.ph.i149.preheader:                            ; preds = %vector.memcheck456, %iter.check482, %vec.epilog.iter.check484, %vec.epilog.middle.block497
  %.02235.i.ph = phi ptr [ %.02231.i, %iter.check482 ], [ %.02231.i, %vector.memcheck456 ], [ %i.mg, %vec.epilog.iter.check484 ], [ %i.mq, %vec.epilog.middle.block497 ] ; 2 uses
  %.01834.i.ph = phi ptr [ %.01830.i, %iter.check482 ], [ %.01830.i, %vector.memcheck456 ], [ %i.mh, %vec.epilog.iter.check484 ], [ %i.mr, %vec.epilog.middle.block497 ] ; 2 uses
  %.02033.i.ph = phi ptr [ %.02029.i, %iter.check482 ], [ %.02029.i, %vector.memcheck456 ], [ %i.mi, %vec.epilog.iter.check484 ], [ %i.ms, %vec.epilog.middle.block497 ] ; 2 uses
  %.032.i.ph = phi i32 [ 0, %iter.check482 ], [ 0, %vector.memcheck456 ], [ %i.mj, %vec.epilog.iter.check484 ], [ %i.mt, %vec.epilog.middle.block497 ] ; 4 uses
  %i.mx = sub nsw i32 %i.j, %.032.i.ph
  %xtraiter732 = and i32 %i.mx, 3                 ; 2 uses
  %lcmp.mod733.not = icmp eq i32 %xtraiter732, 0
  br i1 %lcmp.mod733.not, label %.lr.ph.i149.prol.loopexit, label %.lr.ph.i149.prol

.lr.ph.i149.prol:                                 ; preds = %.lr.ph.i149.preheader, %.lr.ph.i149.prol
  %.02235.i.prol = phi ptr [ %.022.i151.prol, %.lr.ph.i149.prol ], [ %.02235.i.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.01834.i.prol = phi ptr [ %.018.i.prol, %.lr.ph.i149.prol ], [ %.01834.i.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.02033.i.prol = phi ptr [ %.020.i150.prol, %.lr.ph.i149.prol ], [ %.02033.i.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.032.i.prol = phi i32 [ %i.nb, %.lr.ph.i149.prol ], [ %.032.i.ph, %.lr.ph.i149.preheader ]
  %prol.iter734 = phi i32 [ %prol.iter734.next, %.lr.ph.i149.prol ], [ 0, %.lr.ph.i149.preheader ]
  %i.my = load i8, ptr %.02235.i.prol, align 1, !tbaa !7, !noalias !288
  %i.mz = load i8, ptr %.01834.i.prol, align 1, !tbaa !7, !noalias !288
  %i.na = lshr i8 %i.mz, 1
  %.narrow27.i.prol = sub i8 %i.my, %i.na
  store i8 %.narrow27.i.prol, ptr %.02033.i.prol, align 1, !tbaa !7, !noalias !288
  %i.nb = add nuw nsw i32 %.032.i.prol, 1         ; 2 uses
  %.020.i150.prol = getelementptr inbounds nuw i8, ptr %.02033.i.prol, i64 1 ; 3 uses
  %.018.i.prol = getelementptr inbounds nuw i8, ptr %.01834.i.prol, i64 1 ; 3 uses
  %.022.i151.prol = getelementptr inbounds nuw i8, ptr %.02235.i.prol, i64 1 ; 3 uses
  %prol.iter734.next = add i32 %prol.iter734, 1   ; 2 uses
  %prol.iter734.cmp.not = icmp eq i32 %prol.iter734.next, %xtraiter732
  br i1 %prol.iter734.cmp.not, label %.lr.ph.i149.prol.loopexit, label %.lr.ph.i149.prol, !llvm.loop !292

.lr.ph.i149.prol.loopexit:                        ; preds = %.lr.ph.i149.prol, %.lr.ph.i149.preheader
  %.020.i150.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.020.i150.prol, %.lr.ph.i149.prol ]
  %.018.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.018.i.prol, %.lr.ph.i149.prol ]
  %.022.i151.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.022.i151.prol, %.lr.ph.i149.prol ]
  %.02235.i.unr = phi ptr [ %.02235.i.ph, %.lr.ph.i149.preheader ], [ %.022.i151.prol, %.lr.ph.i149.prol ]
  %.01834.i.unr = phi ptr [ %.01834.i.ph, %.lr.ph.i149.preheader ], [ %.018.i.prol, %.lr.ph.i149.prol ]
  %.02033.i.unr = phi ptr [ %.02033.i.ph, %.lr.ph.i149.preheader ], [ %.020.i150.prol, %.lr.ph.i149.prol ]
  %.032.i.unr = phi i32 [ %.032.i.ph, %.lr.ph.i149.preheader ], [ %i.nb, %.lr.ph.i149.prol ]
  %i.nc = sub nsw i32 %.032.i.ph, %i.j
  %i.nd = icmp ugt i32 %i.nc, -4
  br i1 %i.nd, label %.preheader.i153, label %.lr.ph.i149

.preheader.i153:                                  ; preds = %.lr.ph.i149.prol.loopexit, %.lr.ph.i149, %middle.block475, %vec.epilog.middle.block497, %bb.p
  %.020.lcssa.i154 = phi ptr [ %.02029.i, %bb.p ], [ %i.ms, %vec.epilog.middle.block497 ], [ %i.mi, %middle.block475 ], [ %.020.i150.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.020.i150.3, %.lr.ph.i149 ] ; 8 uses
  %.018.lcssa.i = phi ptr [ %.01830.i, %bb.p ], [ %i.mr, %vec.epilog.middle.block497 ], [ %i.mh, %middle.block475 ], [ %.018.i.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.018.i.3, %.lr.ph.i149 ] ; 8 uses
  %.022.lcssa.i155 = phi ptr [ %.02231.i, %bb.p ], [ %i.mq, %vec.epilog.middle.block497 ], [ %i.mg, %middle.block475 ], [ %.022.i151.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.022.i151.3, %.lr.ph.i149 ] ; 8 uses
  %.020.lcssa.i154504 = ptrtoaddr ptr %.020.lcssa.i154 to i64 ; 3 uses
  %.022.lcssa.i155506 = ptrtoaddr ptr %.022.lcssa.i155 to i64
  %.018.lcssa.i509 = ptrtoaddr ptr %.018.lcssa.i to i64
  %i.ne = zext nneg i32 %i.j to i64               ; 3 uses
  %i.nf = icmp ugt i64 %i.e, %i.ne
  br i1 %i.nf, label %iter.check540, label %.thread212.thread

iter.check540:                                    ; preds = %.preheader.i153
  %i.ng = sub nuw i64 %i.e, %i.ne                 ; 7 uses
  %min.iters.check513 = icmp ult i64 %i.ng, 8
  br i1 %min.iters.check513, label %.lr.ph44.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check540
  %i.nh = xor i64 %i.ne, -1
  %i.ni = add i64 %i.e, %i.nh                     ; 2 uses
  %i.nj = trunc i64 %i.ni to i32
  %i.nk = sub nuw nsw i32 -2, %i.j
  %i.nl = icmp ult i32 %i.nk, %i.nj
  %i.nm = icmp ugt i64 %i.ni, 4294967295
  %i.nn = or i1 %i.nl, %i.nm
  br i1 %i.nn, label %.lr.ph44.i.preheader, label %vector.memcheck503

vector.memcheck503:                               ; preds = %vector.scevcheck
  %i.no = sub i64 %.020.lcssa.i154504, %i.m
  %3 = add i64 %i.no, -2
  %diff.check505 = icmp ult i64 %3, 31
  %i.np = sub i64 %.022.lcssa.i155506, %.020.lcssa.i154504
  %diff.check507 = icmp ugt i64 %i.np, -32
  %conflict.rdx508 = or i1 %diff.check505, %diff.check507
  %i.nq = sub i64 %.018.lcssa.i509, %.020.lcssa.i154504
  %diff.check510 = icmp ugt i64 %i.nq, -32
  %conflict.rdx511 = or i1 %conflict.rdx508, %diff.check510
  br i1 %conflict.rdx511, label %.lr.ph44.i.preheader, label %vector.main.loop.iter.check514

vector.main.loop.iter.check514:                   ; preds = %vector.memcheck503
  %min.iters.check515 = icmp ult i64 %i.ng, 32
  br i1 %min.iters.check515, label %vec.epilog.ph544, label %vector.ph516

vector.ph516:                                     ; preds = %vector.main.loop.iter.check514
  %n.mod.vf517 = and i64 %i.ng, 24
  %n.vec518 = and i64 %i.ng, -32                  ; 8 uses
  %i.nr = trunc i64 %n.vec518 to i32
  %i.ns = add i32 %i.j, %i.nr
  %i.nt = getelementptr i8, ptr %i.l, i64 %n.vec518
  %i.nu = getelementptr i8, ptr %.018.lcssa.i, i64 %n.vec518
  %i.nv = getelementptr i8, ptr %.020.lcssa.i154, i64 %n.vec518
  %i.nw = getelementptr i8, ptr %.022.lcssa.i155, i64 %n.vec518
  br label %vector.body519

vector.body519:                                   ; preds = %vector.body519, %vector.ph516
  %index520 = phi i64 [ 0, %vector.ph516 ], [ %index.next531, %vector.body519 ] ; 5 uses
  %next.gep521 = getelementptr i8, ptr %i.l, i64 %index520 ; 2 uses
  %next.gep522 = getelementptr i8, ptr %.018.lcssa.i, i64 %index520 ; 2 uses
  %next.gep523 = getelementptr i8, ptr %.020.lcssa.i154, i64 %index520 ; 2 uses
  %next.gep524 = getelementptr i8, ptr %.022.lcssa.i155, i64 %index520 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %next.gep521, i64 1
  %i.ny = getelementptr i8, ptr %next.gep524, i64 16
  %wide.load525 = load <16 x i8>, ptr %next.gep524, align 1, !tbaa !7, !noalias !288
  %wide.load526 = load <16 x i8>, ptr %i.ny, align 1, !tbaa !7, !noalias !288
  %i.nz = getelementptr i8, ptr %next.gep522, i64 16
  %wide.load527 = load <16 x i8>, ptr %next.gep522, align 1, !tbaa !7, !noalias !288
  %wide.load528 = load <16 x i8>, ptr %i.nz, align 1, !tbaa !7, !noalias !288
  %i.oa = zext <16 x i8> %wide.load527 to <16 x i16>
  %i.ob = zext <16 x i8> %wide.load528 to <16 x i16>
  %i.oc = getelementptr inbounds nuw i8, ptr %next.gep521, i64 17
  %wide.load529 = load <16 x i8>, ptr %i.nx, align 1, !tbaa !7, !noalias !288
  %wide.load530 = load <16 x i8>, ptr %i.oc, align 1, !tbaa !7, !noalias !288
  %i.od = zext <16 x i8> %wide.load529 to <16 x i16>
  %i.oe = zext <16 x i8> %wide.load530 to <16 x i16>
  %i.of = add nuw nsw <16 x i16> %i.od, %i.oa
  %i.og = add nuw nsw <16 x i16> %i.oe, %i.ob
  %i.oh = lshr <16 x i16> %i.of, splat (i16 1)
  %i.oi = lshr <16 x i16> %i.og, splat (i16 1)
  %i.oj = trunc nuw <16 x i16> %i.oh to <16 x i8>
  %i.ok = trunc nuw <16 x i16> %i.oi to <16 x i8>
  %i.ol = sub <16 x i8> %wide.load525, %i.oj
  %i.om = sub <16 x i8> %wide.load526, %i.ok
  %i.on = getelementptr i8, ptr %next.gep523, i64 16
  store <16 x i8> %i.ol, ptr %next.gep523, align 1, !tbaa !7, !noalias !288
  store <16 x i8> %i.om, ptr %i.on, align 1, !tbaa !7, !noalias !288
  %index.next531 = add nuw i64 %index520, 32      ; 2 uses
  %i.oo = icmp eq i64 %index.next531, %n.vec518
  br i1 %i.oo, label %middle.block532, label %vector.body519, !llvm.loop !293

middle.block532:                                  ; preds = %vector.body519
  %cmp.n533 = icmp eq i64 %i.ng, %n.vec518
  br i1 %cmp.n533, label %.thread212.thread, label %vec.epilog.iter.check542

vec.epilog.iter.check542:                         ; preds = %middle.block532
  %min.epilog.iters.check543 = icmp eq i64 %n.mod.vf517, 0
  br i1 %min.epilog.iters.check543, label %.lr.ph44.i.preheader, label %vec.epilog.ph544, !prof !294

vec.epilog.ph544:                                 ; preds = %vector.main.loop.iter.check514, %vec.epilog.iter.check542
  %vec.epilog.resume.val534 = phi i64 [ %n.vec518, %vec.epilog.iter.check542 ], [ 0, %vector.main.loop.iter.check514 ]
  %n.vec546 = and i64 %i.ng, -8                   ; 7 uses
  %i.op = trunc i64 %n.vec546 to i32
  %i.oq = add i32 %i.j, %i.op
  %i.or = getelementptr i8, ptr %i.l, i64 %n.vec546
  %i.os = getelementptr i8, ptr %.018.lcssa.i, i64 %n.vec546
  %i.ot = getelementptr i8, ptr %.020.lcssa.i154, i64 %n.vec546
  %i.ou = getelementptr i8, ptr %.022.lcssa.i155, i64 %n.vec546
  br label %vec.epilog.vector.body547

vec.epilog.vector.body547:                        ; preds = %vec.epilog.vector.body547, %vec.epilog.ph544
  %index548 = phi i64 [ %vec.epilog.resume.val534, %vec.epilog.ph544 ], [ %index.next556, %vec.epilog.vector.body547 ] ; 5 uses
  %next.gep549 = getelementptr i8, ptr %i.l, i64 %index548
  %next.gep550 = getelementptr i8, ptr %.018.lcssa.i, i64 %index548
  %next.gep551 = getelementptr i8, ptr %.020.lcssa.i154, i64 %index548
  %next.gep552 = getelementptr i8, ptr %.022.lcssa.i155, i64 %index548
  %i.ov = getelementptr inbounds nuw i8, ptr %next.gep549, i64 1
  %wide.load553 = load <8 x i8>, ptr %next.gep552, align 1, !tbaa !7, !noalias !288
  %wide.load554 = load <8 x i8>, ptr %next.gep550, align 1, !tbaa !7, !noalias !288
  %i.ow = zext <8 x i8> %wide.load554 to <8 x i16>
  %wide.load555 = load <8 x i8>, ptr %i.ov, align 1, !tbaa !7, !noalias !288
  %i.ox = zext <8 x i8> %wide.load555 to <8 x i16>
  %i.oy = add nuw nsw <8 x i16> %i.ox, %i.ow
  %i.oz = lshr <8 x i16> %i.oy, splat (i16 1)
  %i.pa = trunc nuw <8 x i16> %i.oz to <8 x i8>
  %i.pb = sub <8 x i8> %wide.load553, %i.pa
  store <8 x i8> %i.pb, ptr %next.gep551, align 1, !tbaa !7, !noalias !288
  %index.next556 = add nuw i64 %index548, 8       ; 2 uses
  %i.pc = icmp eq i64 %index.next556, %n.vec546
  br i1 %i.pc, label %vec.epilog.middle.block557, label %vec.epilog.vector.body547, !llvm.loop !295

vec.epilog.middle.block557:                       ; preds = %vec.epilog.vector.body547
  %cmp.n558 = icmp eq i64 %i.ng, %n.vec546
  br i1 %cmp.n558, label %.thread212.thread, label %.lr.ph44.i.preheader

.lr.ph44.i.preheader:                             ; preds = %vector.memcheck503, %vector.scevcheck, %iter.check540, %vec.epilog.iter.check542, %vec.epilog.middle.block557
  %.143.i.ph = phi i32 [ %i.j, %iter.check540 ], [ %i.j, %vector.scevcheck ], [ %i.j, %vector.memcheck503 ], [ %i.ns, %vec.epilog.iter.check542 ], [ %i.oq, %vec.epilog.middle.block557 ]
  %.pn42.i.ph = phi ptr [ %i.l, %iter.check540 ], [ %i.l, %vector.scevcheck ], [ %i.l, %vector.memcheck503 ], [ %i.nt, %vec.epilog.iter.check542 ], [ %i.or, %vec.epilog.middle.block557 ]
  %.11941.i.ph = phi ptr [ %.018.lcssa.i, %iter.check540 ], [ %.018.lcssa.i, %vector.scevcheck ], [ %.018.lcssa.i, %vector.memcheck503 ], [ %i.nu, %vec.epilog.iter.check542 ], [ %i.os, %vec.epilog.middle.block557 ]
  %.12140.i.ph = phi ptr [ %.020.lcssa.i154, %iter.check540 ], [ %.020.lcssa.i154, %vector.scevcheck ], [ %.020.lcssa.i154, %vector.memcheck503 ], [ %i.nv, %vec.epilog.iter.check542 ], [ %i.ot, %vec.epilog.middle.block557 ]
  %.12339.i.ph = phi ptr [ %.022.lcssa.i155, %iter.check540 ], [ %.022.lcssa.i155, %vector.scevcheck ], [ %.022.lcssa.i155, %vector.memcheck503 ], [ %i.nw, %vec.epilog.iter.check542 ], [ %i.ou, %vec.epilog.middle.block557 ]
  br label %.lr.ph44.i

.lr.ph.i149:                                      ; preds = %.lr.ph.i149.prol.loopexit, %.lr.ph.i149
  %.02235.i = phi ptr [ %.022.i151.3, %.lr.ph.i149 ], [ %.02235.i.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.01834.i = phi ptr [ %.018.i.3, %.lr.ph.i149 ], [ %.01834.i.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.02033.i = phi ptr [ %.020.i150.3, %.lr.ph.i149 ], [ %.02033.i.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.032.i = phi i32 [ %i.pp, %.lr.ph.i149 ], [ %.032.i.unr, %.lr.ph.i149.prol.loopexit ]
  %i.pd = load i8, ptr %.02235.i, align 1, !tbaa !7, !noalias !288
  %i.pe = load i8, ptr %.01834.i, align 1, !tbaa !7, !noalias !288
  %i.pf = lshr i8 %i.pe, 1
  %.narrow27.i = sub i8 %i.pd, %i.pf
  store i8 %.narrow27.i, ptr %.02033.i, align 1, !tbaa !7, !noalias !288
  %.020.i150 = getelementptr inbounds nuw i8, ptr %.02033.i, i64 1
  %.018.i = getelementptr inbounds nuw i8, ptr %.01834.i, i64 1
  %.022.i151 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 1
  %i.pg = load i8, ptr %.022.i151, align 1, !tbaa !7, !noalias !288
  %i.ph = load i8, ptr %.018.i, align 1, !tbaa !7, !noalias !288
  %i.pi = lshr i8 %i.ph, 1
  %.narrow27.i.1 = sub i8 %i.pg, %i.pi
  store i8 %.narrow27.i.1, ptr %.020.i150, align 1, !tbaa !7, !noalias !288
  %.020.i150.1 = getelementptr inbounds nuw i8, ptr %.02033.i, i64 2
  %.018.i.1 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 2
  %.022.i151.1 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 2
  %i.pj = load i8, ptr %.022.i151.1, align 1, !tbaa !7, !noalias !288
  %i.pk = load i8, ptr %.018.i.1, align 1, !tbaa !7, !noalias !288
  %i.pl = lshr i8 %i.pk, 1
  %.narrow27.i.2 = sub i8 %i.pj, %i.pl
  store i8 %.narrow27.i.2, ptr %.020.i150.1, align 1, !tbaa !7, !noalias !288
  %.020.i150.2 = getelementptr inbounds nuw i8, ptr %.02033.i, i64 3
  %.018.i.2 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 3
  %.022.i151.2 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 3
  %i.pm = load i8, ptr %.022.i151.2, align 1, !tbaa !7, !noalias !288
  %i.pn = load i8, ptr %.018.i.2, align 1, !tbaa !7, !noalias !288
  %i.po = lshr i8 %i.pn, 1
  %.narrow27.i.3 = sub i8 %i.pm, %i.po
  store i8 %.narrow27.i.3, ptr %.020.i150.2, align 1, !tbaa !7, !noalias !288
  %i.pp = add nuw nsw i32 %.032.i, 4              ; 2 uses
  %.020.i150.3 = getelementptr inbounds nuw i8, ptr %.02033.i, i64 4 ; 2 uses
  %.018.i.3 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 4 ; 2 uses
  %.022.i151.3 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 4 ; 2 uses
  %exitcond.not.i152.3 = icmp eq i32 %i.pp, %i.j
  br i1 %exitcond.not.i152.3, label %.preheader.i153, label %.lr.ph.i149, !llvm.loop !296

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i
  %.143.i = phi i32 [ %i.qa, %.lr.ph44.i ], [ %.143.i.ph, %.lr.ph44.i.preheader ]
  %.pn42.i = phi ptr [ %.017.i, %.lr.ph44.i ], [ %.pn42.i.ph, %.lr.ph44.i.preheader ]
  %.11941.i = phi ptr [ %i.ps, %.lr.ph44.i ], [ %.11941.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.12140.i = phi ptr [ %i.pz, %.lr.ph44.i ], [ %.12140.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.12339.i = phi ptr [ %i.pq, %.lr.ph44.i ], [ %.12339.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.017.i = getelementptr inbounds nuw i8, ptr %.pn42.i, i64 1 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.12339.i, i64 1
  %i.pr = load i8, ptr %.12339.i, align 1, !tbaa !7, !noalias !288
  %i.ps = getelementptr inbounds nuw i8, ptr %.11941.i, i64 1
  %i.pt = load i8, ptr %.11941.i, align 1, !tbaa !7, !noalias !288
  %i.pu = zext i8 %i.pt to i16
  %i.pv = load i8, ptr %.017.i, align 1, !tbaa !7, !noalias !288
  %i.pw = zext i8 %i.pv to i16
  %i.px = add nuw nsw i16 %i.pw, %i.pu
  %i.py = lshr i16 %i.px, 1
  %.tr.i = trunc nuw i16 %i.py to i8
  %.narrow.i156 = sub i8 %i.pr, %.tr.i
  %i.pz = getelementptr inbounds nuw i8, ptr %.12140.i, i64 1
  store i8 %.narrow.i156, ptr %.12140.i, align 1, !tbaa !7, !noalias !288
  %i.qa = add i32 %.143.i, 1                      ; 2 uses
  %i.qb = zext i32 %i.qa to i64
  %i.qc = icmp ugt i64 %i.e, %i.qb
  br i1 %i.qc, label %.lr.ph44.i, label %.thread212.thread, !llvm.loop !297

.thread195:                                       ; preds = %bb.o
  %i.qd = and i32 %.0, 64
  %.not124 = icmp eq i32 %i.qd, 0
  br i1 %.not124, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.thread195
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !245, !alias.scope !298 ; 21 uses
  %i.qg = ptrtoaddr ptr %i.qf to i64              ; 2 uses
  store i8 3, ptr %i.qf, align 1, !tbaa !7, !noalias !298
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !247, !alias.scope !298 ; 17 uses
  %i.qj = ptrtoaddr ptr %i.qi to i64
  %.03344.i = getelementptr inbounds nuw i8, ptr %i.qf, i64 1 ; 5 uses
  %.03145.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 1 ; 5 uses
  %.03546.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 5 uses
  %.not.i157 = icmp eq i32 %i.j, 0
  br i1 %.not.i157, label %.preheader.i162, label %.lr.ph.i158.preheader

.lr.ph.i158.preheader:                            ; preds = %bb.q
  %i.qk = zext i8 %i.g to i64
  %i.ql = add nuw nsw i64 %i.qk, 7
  %i.qm = lshr i64 %i.ql, 3                       ; 2 uses
  %min.iters.check300 = icmp ult i8 %i.g, 41
  br i1 %min.iters.check300, label %.lr.ph.i158.preheader712, label %vector.memcheck296

vector.memcheck296:                               ; preds = %.lr.ph.i158.preheader
  %i.qn = sub i64 %i.m, %i.qg
  %diff.check297 = icmp ugt i64 %i.qn, -4
  %i.qo = sub i64 %i.qj, %i.qg
  %diff.check298 = icmp ugt i64 %i.qo, -4
  %conflict.rdx = or i1 %diff.check297, %diff.check298
  br i1 %conflict.rdx, label %.lr.ph.i158.preheader712, label %vector.ph301

vector.ph301:                                     ; preds = %vector.memcheck296
  %n.vec303 = and i64 %i.qm, 60                   ; 12 uses
  %i.qp = getelementptr i8, ptr %.03546.i, i64 %n.vec303 ; 2 uses
  %i.qq = getelementptr i8, ptr %.03145.i, i64 %n.vec303 ; 2 uses
  %i.qr = getelementptr i8, ptr %.03344.i, i64 %n.vec303 ; 2 uses
  %i.qs = trunc nuw nsw i64 %n.vec303 to i32
  %i.qt = getelementptr i8, ptr %i.l, i64 3
  %wide.load311 = load <2 x i8>, ptr %.03546.i, align 1, !tbaa !7, !noalias !298
  %wide.load312 = load <2 x i8>, ptr %i.qt, align 1, !tbaa !7, !noalias !298
  %i.qu = getelementptr i8, ptr %i.qi, i64 3
  %wide.load313 = load <2 x i8>, ptr %.03145.i, align 1, !tbaa !7, !noalias !298
  %wide.load314 = load <2 x i8>, ptr %i.qu, align 1, !tbaa !7, !noalias !298
  %i.qv = lshr <2 x i8> %wide.load313, splat (i8 1)
  %i.qw = lshr <2 x i8> %wide.load314, splat (i8 1)
  %i.qx = sub <2 x i8> %wide.load311, %i.qv       ; 3 uses
  %i.qy = sub <2 x i8> %wide.load312, %i.qw       ; 3 uses
  %i.qz = getelementptr i8, ptr %i.qf, i64 3
  store <2 x i8> %i.qx, ptr %.03344.i, align 1, !tbaa !7, !noalias !298
  store <2 x i8> %i.qy, ptr %i.qz, align 1, !tbaa !7, !noalias !298
  %i.ra = zext <2 x i8> %i.qx to <2 x i32>        ; 2 uses
  %i.rb = zext <2 x i8> %i.qy to <2 x i32>        ; 2 uses
  %i.rc = sub nuw nsw <2 x i32> splat (i32 256), %i.ra
  %i.rd = sub nuw nsw <2 x i32> splat (i32 256), %i.rb
  %i.re = icmp slt <2 x i8> %i.qx, zeroinitializer
  %i.rf = icmp slt <2 x i8> %i.qy, zeroinitializer
  %i.rg = select <2 x i1> %i.re, <2 x i32> %i.rc, <2 x i32> %i.ra ; 2 uses
  %i.rh = select <2 x i1> %i.rf, <2 x i32> %i.rd, <2 x i32> %i.rb ; 2 uses
  %i.ri = zext nneg <2 x i32> %i.rg to <2 x i64>
  %i.rj = zext nneg <2 x i32> %i.rh to <2 x i64>
  %i.rk = icmp eq i64 %n.vec303, 4
  br i1 %i.rk, label %middle.block316, label %vector.body304.1

vector.body304.1:                                 ; preds = %vector.ph301
  %next.gep308.1 = getelementptr i8, ptr %i.l, i64 5
  %next.gep309.1 = getelementptr i8, ptr %i.qi, i64 5
  %next.gep310.1 = getelementptr i8, ptr %i.qf, i64 5
  %i.rl = getelementptr i8, ptr %i.l, i64 7
  %wide.load311.1 = load <2 x i8>, ptr %next.gep308.1, align 1, !tbaa !7, !noalias !298
  %wide.load312.1 = load <2 x i8>, ptr %i.rl, align 1, !tbaa !7, !noalias !298
  %i.rm = getelementptr i8, ptr %i.qi, i64 7
  %wide.load313.1 = load <2 x i8>, ptr %next.gep309.1, align 1, !tbaa !7, !noalias !298
  %wide.load314.1 = load <2 x i8>, ptr %i.rm, align 1, !tbaa !7, !noalias !298
  %i.rn = lshr <2 x i8> %wide.load313.1, splat (i8 1)
  %i.ro = lshr <2 x i8> %wide.load314.1, splat (i8 1)
  %i.rp = sub <2 x i8> %wide.load311.1, %i.rn     ; 3 uses
  %i.rq = sub <2 x i8> %wide.load312.1, %i.ro     ; 3 uses
  %i.rr = getelementptr i8, ptr %i.qf, i64 7
  store <2 x i8> %i.rp, ptr %next.gep310.1, align 1, !tbaa !7, !noalias !298
  store <2 x i8> %i.rq, ptr %i.rr, align 1, !tbaa !7, !noalias !298
  %i.rs = zext <2 x i8> %i.rp to <2 x i32>        ; 2 uses
  %i.rt = zext <2 x i8> %i.rq to <2 x i32>        ; 2 uses
  %i.ru = sub nuw nsw <2 x i32> splat (i32 256), %i.rs
  %i.rv = sub nuw nsw <2 x i32> splat (i32 256), %i.rt
  %i.rw = icmp slt <2 x i8> %i.rp, zeroinitializer
  %i.rx = icmp slt <2 x i8> %i.rq, zeroinitializer
  %i.ry = select <2 x i1> %i.rw, <2 x i32> %i.ru, <2 x i32> %i.rs
  %i.rz = select <2 x i1> %i.rx, <2 x i32> %i.rv, <2 x i32> %i.rt
  %narrow753 = add nuw nsw <2 x i32> %i.rg, %i.ry ; 2 uses
  %i.sa = zext nneg <2 x i32> %narrow753 to <2 x i64>
  %narrow754 = add nuw nsw <2 x i32> %i.rh, %i.rz ; 2 uses
  %i.sb = zext nneg <2 x i32> %narrow754 to <2 x i64>
  %i.sc = icmp eq i64 %n.vec303, 8
  br i1 %i.sc, label %middle.block316, label %vector.body304.2

vector.body304.2:                                 ; preds = %vector.body304.1
  %next.gep308.2 = getelementptr i8, ptr %i.l, i64 9
  %next.gep309.2 = getelementptr i8, ptr %i.qi, i64 9
  %next.gep310.2 = getelementptr i8, ptr %i.qf, i64 9
  %i.sd = getelementptr i8, ptr %i.l, i64 11
  %wide.load311.2 = load <2 x i8>, ptr %next.gep308.2, align 1, !tbaa !7, !noalias !298
  %wide.load312.2 = load <2 x i8>, ptr %i.sd, align 1, !tbaa !7, !noalias !298
  %i.se = getelementptr i8, ptr %i.qi, i64 11
  %wide.load313.2 = load <2 x i8>, ptr %next.gep309.2, align 1, !tbaa !7, !noalias !298
  %wide.load314.2 = load <2 x i8>, ptr %i.se, align 1, !tbaa !7, !noalias !298
  %i.sf = lshr <2 x i8> %wide.load313.2, splat (i8 1)
  %i.sg = lshr <2 x i8> %wide.load314.2, splat (i8 1)
  %i.sh = sub <2 x i8> %wide.load311.2, %i.sf     ; 3 uses
  %i.si = sub <2 x i8> %wide.load312.2, %i.sg     ; 3 uses
  %i.sj = getelementptr i8, ptr %i.qf, i64 11
  store <2 x i8> %i.sh, ptr %next.gep310.2, align 1, !tbaa !7, !noalias !298
  store <2 x i8> %i.si, ptr %i.sj, align 1, !tbaa !7, !noalias !298
  %i.sk = zext <2 x i8> %i.sh to <2 x i32>        ; 2 uses
  %i.sl = zext <2 x i8> %i.si to <2 x i32>        ; 2 uses
  %i.sm = sub nuw nsw <2 x i32> splat (i32 256), %i.sk
  %i.sn = sub nuw nsw <2 x i32> splat (i32 256), %i.sl
  %i.so = icmp slt <2 x i8> %i.sh, zeroinitializer
  %i.sp = icmp slt <2 x i8> %i.si, zeroinitializer
  %i.sq = select <2 x i1> %i.so, <2 x i32> %i.sm, <2 x i32> %i.sk
  %i.sr = select <2 x i1> %i.sp, <2 x i32> %i.sn, <2 x i32> %i.sl
  %narrow755 = add nuw nsw <2 x i32> %narrow753, %i.sq ; 2 uses
  %i.ss = zext nneg <2 x i32> %narrow755 to <2 x i64>
  %narrow756 = add nuw nsw <2 x i32> %narrow754, %i.sr ; 2 uses
  %i.st = zext nneg <2 x i32> %narrow756 to <2 x i64>
  %i.su = icmp eq i64 %n.vec303, 12
  br i1 %i.su, label %middle.block316, label %vector.body304.3

vector.body304.3:                                 ; preds = %vector.body304.2
  %next.gep308.3 = getelementptr i8, ptr %i.l, i64 13
  %next.gep309.3 = getelementptr i8, ptr %i.qi, i64 13
  %next.gep310.3 = getelementptr i8, ptr %i.qf, i64 13
  %i.sv = getelementptr i8, ptr %i.l, i64 15
  %wide.load311.3 = load <2 x i8>, ptr %next.gep308.3, align 1, !tbaa !7, !noalias !298
  %wide.load312.3 = load <2 x i8>, ptr %i.sv, align 1, !tbaa !7, !noalias !298
  %i.sw = getelementptr i8, ptr %i.qi, i64 15
  %wide.load313.3 = load <2 x i8>, ptr %next.gep309.3, align 1, !tbaa !7, !noalias !298
  %wide.load314.3 = load <2 x i8>, ptr %i.sw, align 1, !tbaa !7, !noalias !298
  %i.sx = lshr <2 x i8> %wide.load313.3, splat (i8 1)
  %i.sy = lshr <2 x i8> %wide.load314.3, splat (i8 1)
  %i.sz = sub <2 x i8> %wide.load311.3, %i.sx     ; 3 uses
  %i.ta = sub <2 x i8> %wide.load312.3, %i.sy     ; 3 uses
  %i.tb = getelementptr i8, ptr %i.qf, i64 15
  store <2 x i8> %i.sz, ptr %next.gep310.3, align 1, !tbaa !7, !noalias !298
  store <2 x i8> %i.ta, ptr %i.tb, align 1, !tbaa !7, !noalias !298
  %i.tc = zext <2 x i8> %i.sz to <2 x i32>        ; 2 uses
  %i.td = zext <2 x i8> %i.ta to <2 x i32>        ; 2 uses
  %i.te = sub nuw nsw <2 x i32> splat (i32 256), %i.tc
  %i.tf = sub nuw nsw <2 x i32> splat (i32 256), %i.td
  %i.tg = icmp slt <2 x i8> %i.sz, zeroinitializer
  %i.th = icmp slt <2 x i8> %i.ta, zeroinitializer
  %i.ti = select <2 x i1> %i.tg, <2 x i32> %i.te, <2 x i32> %i.tc
  %i.tj = select <2 x i1> %i.th, <2 x i32> %i.tf, <2 x i32> %i.td
  %narrow757 = add nuw nsw <2 x i32> %narrow755, %i.ti ; 2 uses
  %i.tk = zext nneg <2 x i32> %narrow757 to <2 x i64>
  %narrow758 = add nuw nsw <2 x i32> %narrow756, %i.tj ; 2 uses
  %i.tl = zext nneg <2 x i32> %narrow758 to <2 x i64>
  %i.tm = icmp eq i64 %n.vec303, 16
  br i1 %i.tm, label %middle.block316, label %vector.body304.4

vector.body304.4:                                 ; preds = %vector.body304.3
  %next.gep308.4 = getelementptr i8, ptr %i.l, i64 17
  %next.gep309.4 = getelementptr i8, ptr %i.qi, i64 17
  %next.gep310.4 = getelementptr i8, ptr %i.qf, i64 17
  %i.tn = getelementptr i8, ptr %i.l, i64 19
  %wide.load311.4 = load <2 x i8>, ptr %next.gep308.4, align 1, !tbaa !7, !noalias !298
  %wide.load312.4 = load <2 x i8>, ptr %i.tn, align 1, !tbaa !7, !noalias !298
  %i.to = getelementptr i8, ptr %i.qi, i64 19
  %wide.load313.4 = load <2 x i8>, ptr %next.gep309.4, align 1, !tbaa !7, !noalias !298
  %wide.load314.4 = load <2 x i8>, ptr %i.to, align 1, !tbaa !7, !noalias !298
  %i.tp = lshr <2 x i8> %wide.load313.4, splat (i8 1)
  %i.tq = lshr <2 x i8> %wide.load314.4, splat (i8 1)
  %i.tr = sub <2 x i8> %wide.load311.4, %i.tp     ; 3 uses
  %i.ts = sub <2 x i8> %wide.load312.4, %i.tq     ; 3 uses
  %i.tt = getelementptr i8, ptr %i.qf, i64 19
  store <2 x i8> %i.tr, ptr %next.gep310.4, align 1, !tbaa !7, !noalias !298
  store <2 x i8> %i.ts, ptr %i.tt, align 1, !tbaa !7, !noalias !298
  %i.tu = zext <2 x i8> %i.tr to <2 x i32>        ; 2 uses
  %i.tv = zext <2 x i8> %i.ts to <2 x i32>        ; 2 uses
  %i.tw = sub nuw nsw <2 x i32> splat (i32 256), %i.tu
  %i.tx = sub nuw nsw <2 x i32> splat (i32 256), %i.tv
  %i.ty = icmp slt <2 x i8> %i.tr, zeroinitializer
  %i.tz = icmp slt <2 x i8> %i.ts, zeroinitializer
  %i.ua = select <2 x i1> %i.ty, <2 x i32> %i.tw, <2 x i32> %i.tu
  %i.ub = select <2 x i1> %i.tz, <2 x i32> %i.tx, <2 x i32> %i.tv
  %narrow759 = add nuw nsw <2 x i32> %narrow757, %i.ua ; 2 uses
  %i.uc = zext nneg <2 x i32> %narrow759 to <2 x i64>
  %narrow760 = add nuw nsw <2 x i32> %narrow758, %i.ub ; 2 uses
  %i.ud = zext nneg <2 x i32> %narrow760 to <2 x i64>
  %i.ue = icmp eq i64 %n.vec303, 20
  br i1 %i.ue, label %middle.block316, label %vector.body304.5

vector.body304.5:                                 ; preds = %vector.body304.4
  %next.gep308.5 = getelementptr i8, ptr %i.l, i64 21
  %next.gep309.5 = getelementptr i8, ptr %i.qi, i64 21
  %next.gep310.5 = getelementptr i8, ptr %i.qf, i64 21
  %i.uf = getelementptr i8, ptr %i.l, i64 23
  %wide.load311.5 = load <2 x i8>, ptr %next.gep308.5, align 1, !tbaa !7, !noalias !298
  %wide.load312.5 = load <2 x i8>, ptr %i.uf, align 1, !tbaa !7, !noalias !298
  %i.ug = getelementptr i8, ptr %i.qi, i64 23
  %wide.load313.5 = load <2 x i8>, ptr %next.gep309.5, align 1, !tbaa !7, !noalias !298
  %wide.load314.5 = load <2 x i8>, ptr %i.ug, align 1, !tbaa !7, !noalias !298
  %i.uh = lshr <2 x i8> %wide.load313.5, splat (i8 1)
  %i.ui = lshr <2 x i8> %wide.load314.5, splat (i8 1)
  %i.uj = sub <2 x i8> %wide.load311.5, %i.uh     ; 3 uses
  %i.uk = sub <2 x i8> %wide.load312.5, %i.ui     ; 3 uses
  %i.ul = getelementptr i8, ptr %i.qf, i64 23
  store <2 x i8> %i.uj, ptr %next.gep310.5, align 1, !tbaa !7, !noalias !298
  store <2 x i8> %i.uk, ptr %i.ul, align 1, !tbaa !7, !noalias !298
  %i.um = zext <2 x i8> %i.uj to <2 x i32>        ; 2 uses
  %i.un = zext <2 x i8> %i.uk to <2 x i32>        ; 2 uses
  %i.uo = sub nuw nsw <2 x i32> splat (i32 256), %i.um
  %i.up = sub nuw nsw <2 x i32> splat (i32 256), %i.un
  %i.uq = icmp slt <2 x i8> %i.uj, zeroinitializer
  %i.ur = icmp slt <2 x i8> %i.uk, zeroinitializer
  %i.us = select <2 x i1> %i.uq, <2 x i32> %i.uo, <2 x i32> %i.um
  %i.ut = select <2 x i1> %i.ur, <2 x i32> %i.up, <2 x i32> %i.un
  %narrow761 = add nuw nsw <2 x i32> %narrow759, %i.us
  %i.uu = zext <2 x i32> %narrow761 to <2 x i64>  ; 2 uses
  %narrow762 = add nuw nsw <2 x i32> %narrow760, %i.ut
  %i.uv = zext <2 x i32> %narrow762 to <2 x i64>  ; 2 uses
  %i.uw = icmp eq i64 %n.vec303, 24
  br i1 %i.uw, label %middle.block316, label %vector.body304.6

vector.body304.6:                                 ; preds = %vector.body304.5
  %next.gep308.6 = getelementptr i8, ptr %i.l, i64 25
  %next.gep309.6 = getelementptr i8, ptr %i.qi, i64 25
  %next.gep310.6 = getelementptr i8, ptr %i.qf, i64 25
  %i.ux = getelementptr i8, ptr %i.l, i64 27
end_hunk_0
begin_hunk_1_@png_write_find_filter:bb.a
  %wide.load312.7 = load <2 x i8>, ptr %i.vr, align 1, !tbaa !7, !noalias !298
  %i.vs = getelementptr i8, ptr %i.qi, i64 31
  %wide.load313.7 = load <2 x i8>, ptr %next.gep309.7, align 1, !tbaa !7, !noalias !298
  %wide.load314.7 = load <2 x i8>, ptr %i.vs, align 1, !tbaa !7, !noalias !298
  %i.vt = lshr <2 x i8> %wide.load313.7, splat (i8 1)
  %i.vu = lshr <2 x i8> %wide.load314.7, splat (i8 1)
  %i.vv = sub <2 x i8> %wide.load311.7, %i.vt     ; 3 uses
  %i.vw = sub <2 x i8> %wide.load312.7, %i.vu     ; 3 uses
  %i.vx = getelementptr i8, ptr %i.qf, i64 31
  store <2 x i8> %i.vv, ptr %next.gep310.7, align 1, !tbaa !7, !noalias !298
  store <2 x i8> %i.vw, ptr %i.vx, align 1, !tbaa !7, !noalias !298
  %i.vy = zext <2 x i8> %i.vv to <2 x i32>        ; 2 uses
  %i.vz = zext <2 x i8> %i.vw to <2 x i32>        ; 2 uses
  %i.wa = sub nuw nsw <2 x i32> splat (i32 256), %i.vy
  %i.wb = sub nuw nsw <2 x i32> splat (i32 256), %i.vz
  %i.wc = icmp slt <2 x i8> %i.vv, zeroinitializer
  %i.wd = icmp slt <2 x i8> %i.vw, zeroinitializer
  %i.we = select <2 x i1> %i.wc, <2 x i32> %i.wa, <2 x i32> %i.vy
  %i.wf = select <2 x i1> %i.wd, <2 x i32> %i.wb, <2 x i32> %i.vz
  %i.wg = zext nneg <2 x i32> %i.we to <2 x i64>
  %i.wh = zext nneg <2 x i32> %i.wf to <2 x i64>
  %i.wi = add nuw nsw <2 x i64> %i.vo, %i.wg
  %i.wj = add nuw nsw <2 x i64> %i.vp, %i.wh
  br label %middle.block316

middle.block316:                                  ; preds = %vector.body304.7, %vector.body304.6, %vector.body304.5, %vector.body304.4, %vector.body304.3, %vector.body304.2, %vector.body304.1, %vector.ph301
  %.lcssa715 = phi <2 x i64> [ %i.ri, %vector.ph301 ], [ %i.sa, %vector.body304.1 ], [ %i.ss, %vector.body304.2 ], [ %i.tk, %vector.body304.3 ], [ %i.uc, %vector.body304.4 ], [ %i.uu, %vector.body304.5 ], [ %i.vo, %vector.body304.6 ], [ %i.wi, %vector.body304.7 ]
  %.lcssa714 = phi <2 x i64> [ %i.rj, %vector.ph301 ], [ %i.sb, %vector.body304.1 ], [ %i.st, %vector.body304.2 ], [ %i.tl, %vector.body304.3 ], [ %i.ud, %vector.body304.4 ], [ %i.uv, %vector.body304.5 ], [ %i.vp, %vector.body304.6 ], [ %i.wj, %vector.body304.7 ]
  %bin.rdx317 = add <2 x i64> %.lcssa714, %.lcssa715
  %i.wk = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx317) ; 2 uses
  %cmp.n318 = icmp eq i64 %i.qm, %n.vec303
  br i1 %cmp.n318, label %.preheader.i162, label %.lr.ph.i158.preheader712

.lr.ph.i158.preheader712:                         ; preds = %vector.memcheck296, %.lr.ph.i158.preheader, %middle.block316
  %.03551.i.ph = phi ptr [ %.03546.i, %vector.memcheck296 ], [ %.03546.i, %.lr.ph.i158.preheader ], [ %i.qp, %middle.block316 ] ; 3 uses
  %.03150.i.ph = phi ptr [ %.03145.i, %vector.memcheck296 ], [ %.03145.i, %.lr.ph.i158.preheader ], [ %i.qq, %middle.block316 ] ; 3 uses
  %.03349.i.ph = phi ptr [ %.03344.i, %vector.memcheck296 ], [ %.03344.i, %.lr.ph.i158.preheader ], [ %i.qr, %middle.block316 ] ; 3 uses
  %.048.i.ph = phi i64 [ 0, %vector.memcheck296 ], [ 0, %.lr.ph.i158.preheader ], [ %i.wk, %middle.block316 ] ; 2 uses
  %.02847.i.ph = phi i32 [ 0, %vector.memcheck296 ], [ 0, %.lr.ph.i158.preheader ], [ %i.qs, %middle.block316 ] ; 4 uses
  %i.wl = sub nsw i32 %i.j, %.02847.i.ph
  %.neg = add nsw i32 %.02847.i.ph, 1
  %xtraiter726 = and i32 %i.wl, 1
  %lcmp.mod727.not = icmp eq i32 %xtraiter726, 0
  br i1 %lcmp.mod727.not, label %.lr.ph.i158.prol.loopexit, label %.lr.ph.i158.prol

.lr.ph.i158.prol:                                 ; preds = %.lr.ph.i158.preheader712
  %i.wm = load i8, ptr %.03551.i.ph, align 1, !tbaa !7, !noalias !298
  %i.wn = load i8, ptr %.03150.i.ph, align 1, !tbaa !7, !noalias !298
  %i.wo = lshr i8 %i.wn, 1
  %.narrow42.i.prol = sub i8 %i.wm, %i.wo         ; 3 uses
  store i8 %.narrow42.i.prol, ptr %.03349.i.ph, align 1, !tbaa !7, !noalias !298
  %i.wp = zext i8 %.narrow42.i.prol to i32        ; 2 uses
  %i.wq = sub nuw nsw i32 256, %i.wp
  %i.wr = icmp slt i8 %.narrow42.i.prol, 0
  %i.ws = select i1 %i.wr, i32 %i.wq, i32 %i.wp
  %i.wt = zext nneg i32 %i.ws to i64
  %i.wu = add i64 %.048.i.ph, %i.wt               ; 2 uses
  %i.wv = add nuw nsw i32 %.02847.i.ph, 1
  %.033.i159.prol = getelementptr inbounds nuw i8, ptr %.03349.i.ph, i64 1 ; 2 uses
  %.031.i.prol = getelementptr inbounds nuw i8, ptr %.03150.i.ph, i64 1 ; 2 uses
  %.035.i160.prol = getelementptr inbounds nuw i8, ptr %.03551.i.ph, i64 1 ; 2 uses
  br label %.lr.ph.i158.prol.loopexit

.lr.ph.i158.prol.loopexit:                        ; preds = %.lr.ph.i158.prol, %.lr.ph.i158.preheader712
  %.lcssa713.unr = phi i64 [ poison, %.lr.ph.i158.preheader712 ], [ %i.wu, %.lr.ph.i158.prol ]
  %.033.i159.lcssa.unr = phi ptr [ poison, %.lr.ph.i158.preheader712 ], [ %.033.i159.prol, %.lr.ph.i158.prol ]
  %.031.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i158.preheader712 ], [ %.031.i.prol, %.lr.ph.i158.prol ]
  %.035.i160.lcssa.unr = phi ptr [ poison, %.lr.ph.i158.preheader712 ], [ %.035.i160.prol, %.lr.ph.i158.prol ]
  %.03551.i.unr = phi ptr [ %.03551.i.ph, %.lr.ph.i158.preheader712 ], [ %.035.i160.prol, %.lr.ph.i158.prol ]
  %.03150.i.unr = phi ptr [ %.03150.i.ph, %.lr.ph.i158.preheader712 ], [ %.031.i.prol, %.lr.ph.i158.prol ]
  %.03349.i.unr = phi ptr [ %.03349.i.ph, %.lr.ph.i158.preheader712 ], [ %.033.i159.prol, %.lr.ph.i158.prol ]
  %.048.i.unr = phi i64 [ %.048.i.ph, %.lr.ph.i158.preheader712 ], [ %i.wu, %.lr.ph.i158.prol ]
  %.02847.i.unr = phi i32 [ %.02847.i.ph, %.lr.ph.i158.preheader712 ], [ %i.wv, %.lr.ph.i158.prol ]
  %i.ww = icmp eq i32 %i.j, %.neg
  br i1 %i.ww, label %.preheader.i162, label %.lr.ph.i158

.preheader.i162:                                  ; preds = %.lr.ph.i158.prol.loopexit, %.lr.ph.i158, %middle.block316, %bb.q
  %.0.lcssa.i163 = phi i64 [ 0, %bb.q ], [ %i.wk, %middle.block316 ], [ %.lcssa713.unr, %.lr.ph.i158.prol.loopexit ], [ %i.xq, %.lr.ph.i158 ] ; 2 uses
  %.033.lcssa.i164 = phi ptr [ %.03344.i, %bb.q ], [ %i.qr, %middle.block316 ], [ %.033.i159.lcssa.unr, %.lr.ph.i158.prol.loopexit ], [ %.033.i159.1, %.lr.ph.i158 ]
  %.031.lcssa.i = phi ptr [ %.03145.i, %bb.q ], [ %i.qq, %middle.block316 ], [ %.031.i.lcssa.unr, %.lr.ph.i158.prol.loopexit ], [ %.031.i.1, %.lr.ph.i158 ]
  %.035.lcssa.i165 = phi ptr [ %.03546.i, %bb.q ], [ %i.qp, %middle.block316 ], [ %.035.i160.lcssa.unr, %.lr.ph.i158.prol.loopexit ], [ %.035.i160.1, %.lr.ph.i158 ]
  %i.wx = zext nneg i32 %i.j to i64
  %i.wy = icmp ugt i64 %i.e, %i.wx
  br i1 %i.wy, label %.lr.ph63.i, label %png_setup_avg_row.exit

.lr.ph.i158:                                      ; preds = %.lr.ph.i158.prol.loopexit, %.lr.ph.i158
  %.03551.i = phi ptr [ %.035.i160.1, %.lr.ph.i158 ], [ %.03551.i.unr, %.lr.ph.i158.prol.loopexit ] ; 3 uses
  %.03150.i = phi ptr [ %.031.i.1, %.lr.ph.i158 ], [ %.03150.i.unr, %.lr.ph.i158.prol.loopexit ] ; 3 uses
  %.03349.i = phi ptr [ %.033.i159.1, %.lr.ph.i158 ], [ %.03349.i.unr, %.lr.ph.i158.prol.loopexit ] ; 3 uses
  %.048.i = phi i64 [ %i.xq, %.lr.ph.i158 ], [ %.048.i.unr, %.lr.ph.i158.prol.loopexit ]
  %.02847.i = phi i32 [ %i.xr, %.lr.ph.i158 ], [ %.02847.i.unr, %.lr.ph.i158.prol.loopexit ]
  %i.wz = load i8, ptr %.03551.i, align 1, !tbaa !7, !noalias !298
  %i.xa = load i8, ptr %.03150.i, align 1, !tbaa !7, !noalias !298
  %i.xb = lshr i8 %i.xa, 1
  %.narrow42.i = sub i8 %i.wz, %i.xb              ; 3 uses
  store i8 %.narrow42.i, ptr %.03349.i, align 1, !tbaa !7, !noalias !298
  %i.xc = zext i8 %.narrow42.i to i32             ; 2 uses
  %i.xd = sub nuw nsw i32 256, %i.xc
  %i.xe = icmp slt i8 %.narrow42.i, 0
  %i.xf = select i1 %i.xe, i32 %i.xd, i32 %i.xc
  %i.xg = zext nneg i32 %i.xf to i64
  %i.xh = add i64 %.048.i, %i.xg
  %.033.i159 = getelementptr inbounds nuw i8, ptr %.03349.i, i64 1
  %.031.i = getelementptr inbounds nuw i8, ptr %.03150.i, i64 1
  %.035.i160 = getelementptr inbounds nuw i8, ptr %.03551.i, i64 1
  %i.xi = load i8, ptr %.035.i160, align 1, !tbaa !7, !noalias !298
  %i.xj = load i8, ptr %.031.i, align 1, !tbaa !7, !noalias !298
  %i.xk = lshr i8 %i.xj, 1
  %.narrow42.i.1 = sub i8 %i.xi, %i.xk            ; 3 uses
  store i8 %.narrow42.i.1, ptr %.033.i159, align 1, !tbaa !7, !noalias !298
  %i.xl = zext i8 %.narrow42.i.1 to i32           ; 2 uses
  %i.xm = sub nuw nsw i32 256, %i.xl
  %i.xn = icmp slt i8 %.narrow42.i.1, 0
  %i.xo = select i1 %i.xn, i32 %i.xm, i32 %i.xl
  %i.xp = zext nneg i32 %i.xo to i64
  %i.xq = add i64 %i.xh, %i.xp                    ; 2 uses
  %i.xr = add nuw nsw i32 %.02847.i, 2            ; 2 uses
  %.033.i159.1 = getelementptr inbounds nuw i8, ptr %.03349.i, i64 2 ; 2 uses
  %.031.i.1 = getelementptr inbounds nuw i8, ptr %.03150.i, i64 2 ; 2 uses
  %.035.i160.1 = getelementptr inbounds nuw i8, ptr %.03551.i, i64 2 ; 2 uses
  %exitcond.not.i161.1 = icmp eq i32 %i.xr, %i.j
  br i1 %exitcond.not.i161.1, label %.preheader.i162, label %.lr.ph.i158, !llvm.loop !301

.lr.ph63.i:                                       ; preds = %.preheader.i162, %.lr.ph63.i
  %.03062.pn.i = phi ptr [ %.03062.i, %.lr.ph63.i ], [ %i.l, %.preheader.i162 ]
  %.161.i = phi i64 [ %i.ye, %.lr.ph63.i ], [ %.0.lcssa.i163, %.preheader.i162 ]
  %.12960.i = phi i32 [ %i.yj, %.lr.ph63.i ], [ %i.j, %.preheader.i162 ]
  %.13259.i = phi ptr [ %i.yh, %.lr.ph63.i ], [ %.031.lcssa.i, %.preheader.i162 ] ; 2 uses
  %.13458.i = phi ptr [ %i.yg, %.lr.ph63.i ], [ %.033.lcssa.i164, %.preheader.i162 ] ; 2 uses
  %.13657.i = phi ptr [ %i.yi, %.lr.ph63.i ], [ %.035.lcssa.i165, %.preheader.i162 ] ; 2 uses
  %.03062.i = getelementptr inbounds nuw i8, ptr %.03062.pn.i, i64 1 ; 2 uses
  %i.xs = load i8, ptr %.13657.i, align 1, !tbaa !7, !noalias !298
  %i.xt = load i8, ptr %.13259.i, align 1, !tbaa !7, !noalias !298
  %i.xu = zext i8 %i.xt to i16
  %i.xv = load i8, ptr %.03062.i, align 1, !tbaa !7, !noalias !298
  %i.xw = zext i8 %i.xv to i16
  %i.xx = add nuw nsw i16 %i.xw, %i.xu
  %i.xy = lshr i16 %i.xx, 1
  %.tr.i167 = trunc nuw i16 %i.xy to i8
  %.narrow.i168 = sub i8 %i.xs, %.tr.i167         ; 3 uses
  store i8 %.narrow.i168, ptr %.13458.i, align 1, !tbaa !7, !noalias !298
  %i.xz = zext i8 %.narrow.i168 to i32            ; 2 uses
  %i.ya = sub nuw nsw i32 256, %i.xz
  %i.yb = icmp slt i8 %.narrow.i168, 0
  %i.yc = select i1 %i.yb, i32 %i.ya, i32 %i.xz
  %i.yd = zext nneg i32 %i.yc to i64
  %i.ye = add i64 %.161.i, %i.yd                  ; 3 uses
  %i.yf = icmp ule i64 %i.ye, %.4106
  %i.yg = getelementptr inbounds nuw i8, ptr %.13458.i, i64 1
  %i.yh = getelementptr inbounds nuw i8, ptr %.13259.i, i64 1
  %i.yi = getelementptr inbounds nuw i8, ptr %.13657.i, i64 1
  %i.yj = add i32 %.12960.i, 1                    ; 2 uses
  %i.yk = zext i32 %i.yj to i64
  %i.yl = icmp ugt i64 %i.e, %i.yk
  %or.cond.i169 = select i1 %i.yf, i1 %i.yl, i1 false
  br i1 %or.cond.i169, label %.lr.ph63.i, label %png_setup_avg_row.exit, !llvm.loop !302

png_setup_avg_row.exit:                           ; preds = %.lr.ph63.i, %.preheader.i162
  %.2.i166 = phi i64 [ %.0.lcssa.i163, %.preheader.i162 ], [ %i.ye, %.lr.ph63.i ] ; 3 uses
  %i.ym = icmp ult i64 %.2.i166, %.4106
  br i1 %i.ym, label %bb.r, label %bb.t

bb.r:                                             ; preds = %png_setup_avg_row.exit
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !246 ; 2 uses
  %.not125 = icmp eq ptr %i.yo, null
  br i1 %.not125, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.yo, ptr %i.qe, align 8, !tbaa !245
  store ptr %i.qf, ptr %i.yn, align 8, !tbaa !246
  br label %bb.t

bb.t:                                             ; preds = %png_setup_avg_row.exit, %bb.s, %bb.r, %.thread195
  %.6108 = phi i64 [ %.4106, %png_setup_avg_row.exit ], [ %.4106, %.thread195 ], [ %.2.i166, %bb.s ], [ %.2.i166, %bb.r ] ; 2 uses
  %.5 = phi ptr [ %.3, %png_setup_avg_row.exit ], [ %.3, %.thread195 ], [ %i.qf, %bb.s ], [ %i.qf, %bb.r ] ; 2 uses
  %i.yp = icmp eq i32 %.0, 128
  br i1 %i.yp, label %bb.u, label %.thread212

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !245, !alias.scope !303 ; 8 uses
  %i.ys = ptrtoaddr ptr %i.yr to i64              ; 2 uses
  store i8 4, ptr %i.yr, align 1, !tbaa !7, !noalias !303
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !247, !alias.scope !303 ; 9 uses
  %i.yv = ptrtoaddr ptr %i.yu to i64              ; 2 uses
  %i.yw = zext nneg i32 %i.j to i64               ; 13 uses
  %.04564.i = getelementptr inbounds nuw i8, ptr %i.yr, i64 1 ; 7 uses
  %.04765.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 1 ; 7 uses
  %.066.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 7 uses
  %.not81.i = icmp eq i32 %i.j, 0
  br i1 %.not81.i, label %.preheader.i172, label %iter.check

iter.check:                                       ; preds = %bb.u
  %min.iters.check358 = icmp ult i8 %i.g, 25
  br i1 %min.iters.check358, label %.lr.ph.i170.preheader, label %vector.memcheck353

vector.memcheck353:                               ; preds = %iter.check
  %i.yx = sub i64 %i.m, %i.ys
  %diff.check354 = icmp ugt i64 %i.yx, -16
  %i.yy = sub i64 %i.yv, %i.ys
  %diff.check355 = icmp ugt i64 %i.yy, -16
  %conflict.rdx356 = or i1 %diff.check354, %diff.check355
  br i1 %conflict.rdx356, label %.lr.ph.i170.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck353
  %min.iters.check359 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check359, label %vec.epilog.ph, label %vector.ph360

vector.ph360:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf361 = and i64 %i.yw, 12
  %n.vec362 = and i64 %i.yw, 48                   ; 7 uses
  %i.yz = getelementptr i8, ptr %.066.i, i64 %n.vec362 ; 2 uses
  %i.za = getelementptr i8, ptr %.04765.i, i64 %n.vec362 ; 2 uses
  %i.zb = getelementptr i8, ptr %.04564.i, i64 %n.vec362 ; 2 uses
  %wide.load368 = load <16 x i8>, ptr %.066.i, align 1, !tbaa !7, !noalias !303
  %wide.load369 = load <16 x i8>, ptr %.04765.i, align 1, !tbaa !7, !noalias !303
  %i.zc = sub <16 x i8> %wide.load368, %wide.load369
  store <16 x i8> %i.zc, ptr %.04564.i, align 1, !tbaa !7, !noalias !303
  %i.zd = icmp eq i64 %n.vec362, 16
  br i1 %i.zd, label %middle.block371, label %vector.body363.1

vector.body363.1:                                 ; preds = %vector.ph360
  %next.gep365.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep366.1 = getelementptr i8, ptr %i.yu, i64 17
  %next.gep367.1 = getelementptr i8, ptr %i.yr, i64 17
  %wide.load368.1 = load <16 x i8>, ptr %next.gep365.1, align 1, !tbaa !7, !noalias !303
  %wide.load369.1 = load <16 x i8>, ptr %next.gep366.1, align 1, !tbaa !7, !noalias !303
  %i.ze = sub <16 x i8> %wide.load368.1, %wide.load369.1
  store <16 x i8> %i.ze, ptr %next.gep367.1, align 1, !tbaa !7, !noalias !303
  br label %middle.block371

middle.block371:                                  ; preds = %vector.body363.1, %vector.ph360
  %cmp.n372 = icmp eq i64 %n.vec362, %i.yw
  br i1 %cmp.n372, label %.preheader.i172, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block371
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf361, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i170.preheader, label %vec.epilog.ph, !prof !265

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec362, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec377 = and i64 %i.yw, 60                   ; 6 uses
  %i.zf = getelementptr i8, ptr %.066.i, i64 %n.vec377 ; 2 uses
  %i.zg = getelementptr i8, ptr %.04765.i, i64 %n.vec377 ; 2 uses
  %i.zh = getelementptr i8, ptr %.04564.i, i64 %n.vec377 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index378 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next384, %vec.epilog.vector.body ] ; 4 uses
  %next.gep379 = getelementptr i8, ptr %.066.i, i64 %index378
  %next.gep380 = getelementptr i8, ptr %.04765.i, i64 %index378
  %next.gep381 = getelementptr i8, ptr %.04564.i, i64 %index378
  %wide.load382 = load <4 x i8>, ptr %next.gep379, align 1, !tbaa !7, !noalias !303
  %wide.load383 = load <4 x i8>, ptr %next.gep380, align 1, !tbaa !7, !noalias !303
  %i.zi = sub <4 x i8> %wide.load382, %wide.load383
  store <4 x i8> %i.zi, ptr %next.gep381, align 1, !tbaa !7, !noalias !303
  %index.next384 = add nuw i64 %index378, 4       ; 2 uses
  %i.zj = icmp eq i64 %index.next384, %n.vec377
  br i1 %i.zj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !306

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n385 = icmp eq i64 %n.vec377, %i.yw
  br i1 %cmp.n385, label %.preheader.i172, label %.lr.ph.i170.preheader

.lr.ph.i170.preheader:                            ; preds = %vector.memcheck353, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.070.i.ph = phi ptr [ %.066.i, %iter.check ], [ %.066.i, %vector.memcheck353 ], [ %i.yz, %vec.epilog.iter.check ], [ %i.zf, %vec.epilog.middle.block ] ; 2 uses
  %.04769.i.ph = phi ptr [ %.04765.i, %iter.check ], [ %.04765.i, %vector.memcheck353 ], [ %i.za, %vec.epilog.iter.check ], [ %i.zg, %vec.epilog.middle.block ] ; 2 uses
  %.04568.i.ph = phi ptr [ %.04564.i, %iter.check ], [ %.04564.i, %vector.memcheck353 ], [ %i.zb, %vec.epilog.iter.check ], [ %i.zh, %vec.epilog.middle.block ] ; 2 uses
  %.05167.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck353 ], [ %n.vec362, %vec.epilog.iter.check ], [ %n.vec377, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter730 = and i64 %i.yw, 3                 ; 2 uses
  %lcmp.mod731.not = icmp eq i64 %xtraiter730, 0
  br i1 %lcmp.mod731.not, label %.lr.ph.i170.prol.loopexit, label %.lr.ph.i170.prol

.lr.ph.i170.prol:                                 ; preds = %.lr.ph.i170.preheader, %.lr.ph.i170.prol
  %.070.i.prol = phi ptr [ %.0.i.prol, %.lr.ph.i170.prol ], [ %.070.i.ph, %.lr.ph.i170.preheader ] ; 2 uses
  %.04769.i.prol = phi ptr [ %.047.i.prol, %.lr.ph.i170.prol ], [ %.04769.i.ph, %.lr.ph.i170.preheader ] ; 2 uses
  %.04568.i.prol = phi ptr [ %.045.i.prol, %.lr.ph.i170.prol ], [ %.04568.i.ph, %.lr.ph.i170.preheader ] ; 2 uses
  %.05167.i.prol = phi i64 [ %i.zm, %.lr.ph.i170.prol ], [ %.05167.i.ph, %.lr.ph.i170.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i170.prol ], [ 0, %.lr.ph.i170.preheader ]
  %i.zk = load i8, ptr %.070.i.prol, align 1, !tbaa !7, !noalias !303
  %i.zl = load i8, ptr %.04769.i.prol, align 1, !tbaa !7, !noalias !303
  %.narrow62.i.prol = sub i8 %i.zk, %i.zl
  store i8 %.narrow62.i.prol, ptr %.04568.i.prol, align 1, !tbaa !7, !noalias !303
  %i.zm = add nuw nsw i64 %.05167.i.prol, 1       ; 2 uses
  %.045.i.prol = getelementptr inbounds nuw i8, ptr %.04568.i.prol, i64 1 ; 3 uses
  %.047.i.prol = getelementptr inbounds nuw i8, ptr %.04769.i.prol, i64 1 ; 3 uses
  %.0.i.prol = getelementptr inbounds nuw i8, ptr %.070.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter730
  br i1 %prol.iter.cmp.not, label %.lr.ph.i170.prol.loopexit, label %.lr.ph.i170.prol, !llvm.loop !307

.lr.ph.i170.prol.loopexit:                        ; preds = %.lr.ph.i170.prol, %.lr.ph.i170.preheader
  %.045.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i170.preheader ], [ %.045.i.prol, %.lr.ph.i170.prol ]
  %.047.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i170.preheader ], [ %.047.i.prol, %.lr.ph.i170.prol ]
  %.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i170.preheader ], [ %.0.i.prol, %.lr.ph.i170.prol ]
  %.070.i.unr = phi ptr [ %.070.i.ph, %.lr.ph.i170.preheader ], [ %.0.i.prol, %.lr.ph.i170.prol ]
  %.04769.i.unr = phi ptr [ %.04769.i.ph, %.lr.ph.i170.preheader ], [ %.047.i.prol, %.lr.ph.i170.prol ]
  %.04568.i.unr = phi ptr [ %.04568.i.ph, %.lr.ph.i170.preheader ], [ %.045.i.prol, %.lr.ph.i170.prol ]
  %.05167.i.unr = phi i64 [ %.05167.i.ph, %.lr.ph.i170.preheader ], [ %i.zm, %.lr.ph.i170.prol ]
  %i.zn = sub nsw i64 %.05167.i.ph, %i.yw
  %i.zo = icmp ugt i64 %i.zn, -4
  br i1 %i.zo, label %.preheader.i172, label %.lr.ph.i170

.preheader.i172:                                  ; preds = %.lr.ph.i170.prol.loopexit, %.lr.ph.i170, %middle.block371, %vec.epilog.middle.block, %bb.u
  %.051.lcssa.i = phi i64 [ 0, %bb.u ], [ %i.yw, %middle.block371 ], [ %i.yw, %vec.epilog.middle.block ], [ %i.yw, %.lr.ph.i170 ], [ %i.yw, %.lr.ph.i170.prol.loopexit ] ; 5 uses
  %.045.lcssa.i = phi ptr [ %.04564.i, %bb.u ], [ %i.zb, %middle.block371 ], [ %i.zh, %vec.epilog.middle.block ], [ %.045.i.lcssa.unr, %.lr.ph.i170.prol.loopexit ], [ %.045.i.3, %.lr.ph.i170 ] ; 7 uses
  %.047.lcssa.i = phi ptr [ %.04765.i, %bb.u ], [ %i.za, %middle.block371 ], [ %i.zg, %vec.epilog.middle.block ], [ %.047.i.lcssa.unr, %.lr.ph.i170.prol.loopexit ], [ %.047.i.3, %.lr.ph.i170 ] ; 7 uses
  %.0.lcssa.i173 = phi ptr [ %.066.i, %bb.u ], [ %i.yz, %middle.block371 ], [ %i.zf, %vec.epilog.middle.block ], [ %.0.i.lcssa.unr, %.lr.ph.i170.prol.loopexit ], [ %.0.i.3, %.lr.ph.i170 ] ; 7 uses
  %.045.lcssa.i391 = ptrtoaddr ptr %.045.lcssa.i to i64 ; 4 uses
  %.047.lcssa.i393 = ptrtoaddr ptr %.047.lcssa.i to i64
  %.0.lcssa.i173396 = ptrtoaddr ptr %.0.lcssa.i173 to i64
  %i.zp = icmp ult i64 %.051.lcssa.i, %i.e
  br i1 %i.zp, label %iter.check429, label %.thread212.thread

iter.check429:                                    ; preds = %.preheader.i172
  %i.zq = sub i64 %i.e, %i.yw                     ; 7 uses
  %min.iters.check402 = icmp ult i64 %i.zq, 4
  br i1 %min.iters.check402, label %.lr.ph80.i.preheader, label %vector.memcheck390

vector.memcheck390:                               ; preds = %iter.check429
  %i.zr = sub i64 %.045.lcssa.i391, %i.yv
  %4 = add i64 %i.zr, -2
  %diff.check392 = icmp ult i64 %4, 15
  %i.zs = sub i64 %.047.lcssa.i393, %.045.lcssa.i391
  %diff.check394 = icmp ugt i64 %i.zs, -16
  %conflict.rdx395 = or i1 %diff.check392, %diff.check394
  %i.zt = sub i64 %.0.lcssa.i173396, %.045.lcssa.i391
  %diff.check397 = icmp ugt i64 %i.zt, -16
  %conflict.rdx398 = or i1 %conflict.rdx395, %diff.check397
  %i.zu = sub i64 %.045.lcssa.i391, %i.m
  %5 = add i64 %i.zu, -2
  %diff.check399 = icmp ult i64 %5, 15
  %conflict.rdx400 = or i1 %conflict.rdx398, %diff.check399
  br i1 %conflict.rdx400, label %.lr.ph80.i.preheader, label %vector.main.loop.iter.check403

vector.main.loop.iter.check403:                   ; preds = %vector.memcheck390
  %min.iters.check404 = icmp ult i64 %i.zq, 16
  br i1 %min.iters.check404, label %vec.epilog.ph433, label %vector.ph405

vector.ph405:                                     ; preds = %vector.main.loop.iter.check403
  %n.mod.vf406 = and i64 %i.zq, 12
  %n.vec407 = and i64 %i.zq, -16                  ; 9 uses
  %i.zv = getelementptr i8, ptr %.0.lcssa.i173, i64 %n.vec407
  %i.zw = getelementptr i8, ptr %.045.lcssa.i, i64 %n.vec407
  %i.zx = getelementptr i8, ptr %.047.lcssa.i, i64 %n.vec407
  %i.zy = getelementptr i8, ptr %i.yu, i64 %n.vec407
  %i.zz = getelementptr i8, ptr %i.l, i64 %n.vec407
  %i.aaa = add i64 %.051.lcssa.i, %n.vec407
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph405
  %index409 = phi i64 [ 0, %vector.ph405 ], [ %index.next419, %vector.body408 ] ; 6 uses
  %next.gep410 = getelementptr i8, ptr %.0.lcssa.i173, i64 %index409
  %next.gep411 = getelementptr i8, ptr %.045.lcssa.i, i64 %index409
  %next.gep412 = getelementptr i8, ptr %.047.lcssa.i, i64 %index409
  %next.gep413 = getelementptr i8, ptr %i.yu, i64 %index409
  %next.gep414 = getelementptr i8, ptr %i.l, i64 %index409
  %i.aab = getelementptr inbounds nuw i8, ptr %next.gep413, i64 1
  %i.aac = getelementptr inbounds nuw i8, ptr %next.gep414, i64 1
  %wide.load415 = load <16 x i8>, ptr %next.gep412, align 1, !tbaa !7, !noalias !303 ; 2 uses
  %i.aad = zext <16 x i8> %wide.load415 to <16 x i32>
  %wide.load416 = load <16 x i8>, ptr %i.aab, align 1, !tbaa !7, !noalias !303 ; 2 uses
  %i.aae = zext <16 x i8> %wide.load416 to <16 x i32> ; 2 uses
  %wide.load417 = load <16 x i8>, ptr %i.aac, align 1, !tbaa !7, !noalias !303 ; 2 uses
  %i.aaf = zext <16 x i8> %wide.load417 to <16 x i32>
  %i.aag = sub nsw <16 x i32> %i.aad, %i.aae      ; 2 uses
  %i.aah = sub nsw <16 x i32> %i.aaf, %i.aae      ; 2 uses
  %i.aai = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aag, i1 true) ; 2 uses
  %i.aaj = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aah, i1 true) ; 2 uses
  %i.aak = add nsw <16 x i32> %i.aah, %i.aag
  %i.aal = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.aak, i1 true) ; 2 uses
  %i.aam = icmp samesign ugt <16 x i32> %i.aai, %i.aaj
  %i.aan = icmp samesign ugt <16 x i32> %i.aai, %i.aal
  %i.aao = select <16 x i1> %i.aam, <16 x i1> splat (i1 true), <16 x i1> %i.aan
  %i.aap = icmp samesign ugt <16 x i32> %i.aaj, %i.aal
  %i.aaq = select <16 x i1> %i.aap, <16 x i8> %wide.load416, <16 x i8> %wide.load415
  %i.aar = select <16 x i1> %i.aao, <16 x i8> %i.aaq, <16 x i8> %wide.load417
  %wide.load418 = load <16 x i8>, ptr %next.gep410, align 1, !tbaa !7, !noalias !303
  %i.aas = sub <16 x i8> %wide.load418, %i.aar
  store <16 x i8> %i.aas, ptr %next.gep411, align 1, !tbaa !7, !noalias !303
  %index.next419 = add nuw i64 %index409, 16      ; 2 uses
  %i.aat = icmp eq i64 %index.next419, %n.vec407
  br i1 %i.aat, label %middle.block420, label %vector.body408, !llvm.loop !308

middle.block420:                                  ; preds = %vector.body408
  %cmp.n421 = icmp eq i64 %i.zq, %n.vec407
  br i1 %cmp.n421, label %.thread212.thread, label %vec.epilog.iter.check431

vec.epilog.iter.check431:                         ; preds = %middle.block420
  %min.epilog.iters.check432 = icmp eq i64 %n.mod.vf406, 0
  br i1 %min.epilog.iters.check432, label %.lr.ph80.i.preheader, label %vec.epilog.ph433, !prof !265

vec.epilog.ph433:                                 ; preds = %vector.main.loop.iter.check403, %vec.epilog.iter.check431
  %vec.epilog.resume.val422 = phi i64 [ %n.vec407, %vec.epilog.iter.check431 ], [ 0, %vector.main.loop.iter.check403 ]
  %n.vec435 = and i64 %i.zq, -4                   ; 8 uses
  %i.aau = getelementptr i8, ptr %.0.lcssa.i173, i64 %n.vec435
  %i.aav = getelementptr i8, ptr %.045.lcssa.i, i64 %n.vec435
  %i.aaw = getelementptr i8, ptr %.047.lcssa.i, i64 %n.vec435
  %i.aax = getelementptr i8, ptr %i.yu, i64 %n.vec435
  %i.aay = getelementptr i8, ptr %i.l, i64 %n.vec435
  %i.aaz = add i64 %.051.lcssa.i, %n.vec435
  br label %vec.epilog.vector.body436

vec.epilog.vector.body436:                        ; preds = %vec.epilog.vector.body436, %vec.epilog.ph433
  %index437 = phi i64 [ %vec.epilog.resume.val422, %vec.epilog.ph433 ], [ %index.next447, %vec.epilog.vector.body436 ] ; 6 uses
  %next.gep438 = getelementptr i8, ptr %.0.lcssa.i173, i64 %index437
  %next.gep439 = getelementptr i8, ptr %.045.lcssa.i, i64 %index437
  %next.gep440 = getelementptr i8, ptr %.047.lcssa.i, i64 %index437
  %next.gep441 = getelementptr i8, ptr %i.yu, i64 %index437
  %next.gep442 = getelementptr i8, ptr %i.l, i64 %index437
  %i.aba = getelementptr inbounds nuw i8, ptr %next.gep441, i64 1
  %i.abb = getelementptr inbounds nuw i8, ptr %next.gep442, i64 1
  %wide.load443 = load <4 x i8>, ptr %next.gep440, align 1, !tbaa !7, !noalias !303 ; 2 uses
  %i.abc = zext <4 x i8> %wide.load443 to <4 x i32>
  %wide.load444 = load <4 x i8>, ptr %i.aba, align 1, !tbaa !7, !noalias !303 ; 2 uses
  %i.abd = zext <4 x i8> %wide.load444 to <4 x i32> ; 2 uses
  %wide.load445 = load <4 x i8>, ptr %i.abb, align 1, !tbaa !7, !noalias !303 ; 2 uses
  %i.abe = zext <4 x i8> %wide.load445 to <4 x i32>
  %i.abf = sub nsw <4 x i32> %i.abc, %i.abd       ; 2 uses
  %i.abg = sub nsw <4 x i32> %i.abe, %i.abd       ; 2 uses
  %i.abh = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.abf, i1 true) ; 2 uses
  %i.abi = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.abg, i1 true) ; 2 uses
  %i.abj = add nsw <4 x i32> %i.abg, %i.abf
  %i.abk = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.abj, i1 true) ; 2 uses
  %i.abl = icmp samesign ugt <4 x i32> %i.abh, %i.abi
  %i.abm = icmp samesign ugt <4 x i32> %i.abh, %i.abk
  %i.abn = select <4 x i1> %i.abl, <4 x i1> splat (i1 true), <4 x i1> %i.abm
  %i.abo = icmp samesign ugt <4 x i32> %i.abi, %i.abk
  %i.abp = select <4 x i1> %i.abo, <4 x i8> %wide.load444, <4 x i8> %wide.load443
  %i.abq = select <4 x i1> %i.abn, <4 x i8> %i.abp, <4 x i8> %wide.load445
  %wide.load446 = load <4 x i8>, ptr %next.gep438, align 1, !tbaa !7, !noalias !303
  %i.abr = sub <4 x i8> %wide.load446, %i.abq
  store <4 x i8> %i.abr, ptr %next.gep439, align 1, !tbaa !7, !noalias !303
  %index.next447 = add nuw i64 %index437, 4       ; 2 uses
  %i.abs = icmp eq i64 %index.next447, %n.vec435
  br i1 %i.abs, label %vec.epilog.middle.block448, label %vec.epilog.vector.body436, !llvm.loop !309

vec.epilog.middle.block448:                       ; preds = %vec.epilog.vector.body436
  %cmp.n449 = icmp eq i64 %i.zq, %n.vec435
  br i1 %cmp.n449, label %.thread212.thread, label %.lr.ph80.i.preheader

.lr.ph80.i.preheader:                             ; preds = %vector.memcheck390, %iter.check429, %vec.epilog.iter.check431, %vec.epilog.middle.block448
  %.179.i.ph = phi ptr [ %.0.lcssa.i173, %iter.check429 ], [ %.0.lcssa.i173, %vector.memcheck390 ], [ %i.zv, %vec.epilog.iter.check431 ], [ %i.aau, %vec.epilog.middle.block448 ]
  %.14678.i.ph = phi ptr [ %.045.lcssa.i, %iter.check429 ], [ %.045.lcssa.i, %vector.memcheck390 ], [ %i.zw, %vec.epilog.iter.check431 ], [ %i.aav, %vec.epilog.middle.block448 ]
  %.14877.i.ph = phi ptr [ %.047.lcssa.i, %iter.check429 ], [ %.047.lcssa.i, %vector.memcheck390 ], [ %i.zx, %vec.epilog.iter.check431 ], [ %i.aaw, %vec.epilog.middle.block448 ]
  %.pn76.i.ph = phi ptr [ %i.yu, %iter.check429 ], [ %i.yu, %vector.memcheck390 ], [ %i.zy, %vec.epilog.iter.check431 ], [ %i.aax, %vec.epilog.middle.block448 ]
  %.pn5675.i.ph = phi ptr [ %i.l, %iter.check429 ], [ %i.l, %vector.memcheck390 ], [ %i.zz, %vec.epilog.iter.check431 ], [ %i.aay, %vec.epilog.middle.block448 ]
  %.15274.i.ph = phi i64 [ %.051.lcssa.i, %iter.check429 ], [ %.051.lcssa.i, %vector.memcheck390 ], [ %i.aaa, %vec.epilog.iter.check431 ], [ %i.aaz, %vec.epilog.middle.block448 ]
  br label %.lr.ph80.i

.lr.ph.i170:                                      ; preds = %.lr.ph.i170.prol.loopexit, %.lr.ph.i170
  %.070.i = phi ptr [ %.0.i.3, %.lr.ph.i170 ], [ %.070.i.unr, %.lr.ph.i170.prol.loopexit ] ; 5 uses
  %.04769.i = phi ptr [ %.047.i.3, %.lr.ph.i170 ], [ %.04769.i.unr, %.lr.ph.i170.prol.loopexit ] ; 5 uses
  %.04568.i = phi ptr [ %.045.i.3, %.lr.ph.i170 ], [ %.04568.i.unr, %.lr.ph.i170.prol.loopexit ] ; 5 uses
  %.05167.i = phi i64 [ %i.acb, %.lr.ph.i170 ], [ %.05167.i.unr, %.lr.ph.i170.prol.loopexit ]
  %i.abt = load i8, ptr %.070.i, align 1, !tbaa !7, !noalias !303
  %i.abu = load i8, ptr %.04769.i, align 1, !tbaa !7, !noalias !303
  %.narrow62.i = sub i8 %i.abt, %i.abu
  store i8 %.narrow62.i, ptr %.04568.i, align 1, !tbaa !7, !noalias !303
  %.045.i = getelementptr inbounds nuw i8, ptr %.04568.i, i64 1
  %.047.i = getelementptr inbounds nuw i8, ptr %.04769.i, i64 1
  %.0.i = getelementptr inbounds nuw i8, ptr %.070.i, i64 1
  %i.abv = load i8, ptr %.0.i, align 1, !tbaa !7, !noalias !303
  %i.abw = load i8, ptr %.047.i, align 1, !tbaa !7, !noalias !303
  %.narrow62.i.1 = sub i8 %i.abv, %i.abw
  store i8 %.narrow62.i.1, ptr %.045.i, align 1, !tbaa !7, !noalias !303
  %.045.i.1 = getelementptr inbounds nuw i8, ptr %.04568.i, i64 2
  %.047.i.1 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 2
  %.0.i.1 = getelementptr inbounds nuw i8, ptr %.070.i, i64 2
  %i.abx = load i8, ptr %.0.i.1, align 1, !tbaa !7, !noalias !303
  %i.aby = load i8, ptr %.047.i.1, align 1, !tbaa !7, !noalias !303
  %.narrow62.i.2 = sub i8 %i.abx, %i.aby
  store i8 %.narrow62.i.2, ptr %.045.i.1, align 1, !tbaa !7, !noalias !303
  %.045.i.2 = getelementptr inbounds nuw i8, ptr %.04568.i, i64 3
  %.047.i.2 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 3
  %.0.i.2 = getelementptr inbounds nuw i8, ptr %.070.i, i64 3
  %i.abz = load i8, ptr %.0.i.2, align 1, !tbaa !7, !noalias !303
  %i.aca = load i8, ptr %.047.i.2, align 1, !tbaa !7, !noalias !303
  %.narrow62.i.3 = sub i8 %i.abz, %i.aca
  store i8 %.narrow62.i.3, ptr %.045.i.2, align 1, !tbaa !7, !noalias !303
  %i.acb = add nuw nsw i64 %.05167.i, 4           ; 2 uses
  %.045.i.3 = getelementptr inbounds nuw i8, ptr %.04568.i, i64 4 ; 2 uses
  %.047.i.3 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 4 ; 2 uses
  %.0.i.3 = getelementptr inbounds nuw i8, ptr %.070.i, i64 4 ; 2 uses
  %exitcond.not.i171.3 = icmp eq i64 %i.acb, %i.yw
  br i1 %exitcond.not.i171.3, label %.preheader.i172, label %.lr.ph.i170, !llvm.loop !310

.lr.ph80.i:                                       ; preds = %.lr.ph80.i.preheader, %.lr.ph80.i
  %.179.i = phi ptr [ %i.acq, %.lr.ph80.i ], [ %.179.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.14678.i = phi ptr [ %i.acs, %.lr.ph80.i ], [ %.14678.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.14877.i = phi ptr [ %i.acc, %.lr.ph80.i ], [ %.14877.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.pn76.i = phi ptr [ %.049.i, %.lr.ph80.i ], [ %.pn76.i.ph, %.lr.ph80.i.preheader ]
  %.pn5675.i = phi ptr [ %.050.i, %.lr.ph80.i ], [ %.pn5675.i.ph, %.lr.ph80.i.preheader ]
  %.15274.i = phi i64 [ %i.act, %.lr.ph80.i ], [ %.15274.i.ph, %.lr.ph80.i.preheader ]
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn76.i, i64 1 ; 2 uses
  %.050.i = getelementptr inbounds nuw i8, ptr %.pn5675.i, i64 1 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %.14877.i, i64 1
  %i.acd = load i8, ptr %.14877.i, align 1, !tbaa !7, !noalias !303 ; 2 uses
  %i.ace = zext i8 %i.acd to i32
  %i.acf = load i8, ptr %.049.i, align 1, !tbaa !7, !noalias !303 ; 2 uses
  %i.acg = zext i8 %i.acf to i32                  ; 2 uses
  %i.ach = load i8, ptr %.050.i, align 1, !tbaa !7, !noalias !303 ; 2 uses
  %i.aci = zext i8 %i.ach to i32
  %i.acj = sub nsw i32 %i.ace, %i.acg             ; 2 uses
  %i.ack = sub nsw i32 %i.aci, %i.acg             ; 2 uses
  %i.acl = tail call i32 @llvm.abs.i32(i32 %i.acj, i1 true) ; 2 uses
  %i.acm = tail call i32 @llvm.abs.i32(i32 %i.ack, i1 true) ; 2 uses
  %i.acn = add nsw i32 %i.ack, %i.acj
  %i.aco = tail call i32 @llvm.abs.i32(i32 %i.acn, i1 true) ; 2 uses
  %.not.i174 = icmp samesign ugt i32 %i.acl, %i.acm
  %.not57.i = icmp samesign ugt i32 %i.acl, %i.aco
  %or.cond.i175 = select i1 %.not.i174, i1 true, i1 %.not57.i
  %.not58.i = icmp samesign ugt i32 %i.acm, %i.aco
  %i.acp = select i1 %.not58.i, i8 %i.acf, i8 %i.acd
  %.tr.i176 = select i1 %or.cond.i175, i8 %i.acp, i8 %i.ach
  %i.acq = getelementptr inbounds nuw i8, ptr %.179.i, i64 1
  %i.acr = load i8, ptr %.179.i, align 1, !tbaa !7, !noalias !303
  %.narrow.i177 = sub i8 %i.acr, %.tr.i176
  %i.acs = getelementptr inbounds nuw i8, ptr %.14678.i, i64 1
  store i8 %.narrow.i177, ptr %.14678.i, align 1, !tbaa !7, !noalias !303
  %i.act = add nuw i64 %.15274.i, 1               ; 2 uses
  %exitcond85.not.i = icmp eq i64 %i.act, %i.e
  br i1 %exitcond85.not.i, label %.thread212.thread, label %.lr.ph80.i, !llvm.loop !311

.thread212:                                       ; preds = %bb.t
  %i.acu = and i32 %.0, 128
  %.not126 = icmp eq i32 %i.acu, 0
  br i1 %.not126, label %.thread212.thread, label %bb.v

bb.v:                                             ; preds = %.thread212
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !245, !alias.scope !312 ; 21 uses
  %i.acx = ptrtoaddr ptr %i.acw to i64            ; 2 uses
  store i8 4, ptr %i.acw, align 1, !tbaa !7, !noalias !312
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !247, !alias.scope !312 ; 18 uses
  %i.ada = ptrtoaddr ptr %i.acz to i64
  %i.adb = zext nneg i32 %i.j to i64              ; 8 uses
  %.05879.i = getelementptr inbounds nuw i8, ptr %i.acw, i64 1 ; 5 uses
  %.06080.i = getelementptr inbounds nuw i8, ptr %i.acz, i64 1 ; 5 uses
  %.05781.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 5 uses
  %.not109.i = icmp eq i32 %i.j, 0
  br i1 %.not109.i, label %.preheader.i180, label %.lr.ph.i178.preheader

.lr.ph.i178.preheader:                            ; preds = %bb.v
  %min.iters.check329 = icmp ult i8 %i.g, 57
  br i1 %min.iters.check329, label %.lr.ph.i178.preheader707, label %vector.memcheck324

vector.memcheck324:                               ; preds = %.lr.ph.i178.preheader
  %i.adc = sub i64 %i.m, %i.acx
  %diff.check325 = icmp ugt i64 %i.adc, -4
  %i.add = sub i64 %i.ada, %i.acx
  %diff.check326 = icmp ugt i64 %i.add, -4
  %conflict.rdx327 = or i1 %diff.check325, %diff.check326
  br i1 %conflict.rdx327, label %.lr.ph.i178.preheader707, label %vector.ph330

vector.ph330:                                     ; preds = %vector.memcheck324
  %n.vec332 = and i64 %i.adb, 60                  ; 12 uses
  %i.ade = getelementptr i8, ptr %.05781.i, i64 %n.vec332 ; 2 uses
  %i.adf = getelementptr i8, ptr %.06080.i, i64 %n.vec332 ; 2 uses
  %i.adg = getelementptr i8, ptr %.05879.i, i64 %n.vec332 ; 2 uses
  %i.adh = getelementptr i8, ptr %i.l, i64 3
  %wide.load340 = load <2 x i8>, ptr %.05781.i, align 1, !tbaa !7, !noalias !312
  %wide.load341 = load <2 x i8>, ptr %i.adh, align 1, !tbaa !7, !noalias !312
  %i.adi = getelementptr i8, ptr %i.acz, i64 3
  %wide.load342 = load <2 x i8>, ptr %.06080.i, align 1, !tbaa !7, !noalias !312
  %wide.load343 = load <2 x i8>, ptr %i.adi, align 1, !tbaa !7, !noalias !312
  %i.adj = sub <2 x i8> %wide.load340, %wide.load342 ; 3 uses
  %i.adk = sub <2 x i8> %wide.load341, %wide.load343 ; 3 uses
  %i.adl = getelementptr i8, ptr %i.acw, i64 3
  store <2 x i8> %i.adj, ptr %.05879.i, align 1, !tbaa !7, !noalias !312
  store <2 x i8> %i.adk, ptr %i.adl, align 1, !tbaa !7, !noalias !312
  %i.adm = zext <2 x i8> %i.adj to <2 x i32>      ; 2 uses
  %i.adn = zext <2 x i8> %i.adk to <2 x i32>      ; 2 uses
  %i.ado = sub nuw nsw <2 x i32> splat (i32 256), %i.adm
  %i.adp = sub nuw nsw <2 x i32> splat (i32 256), %i.adn
  %i.adq = icmp slt <2 x i8> %i.adj, zeroinitializer
  %i.adr = icmp slt <2 x i8> %i.adk, zeroinitializer
  %i.ads = select <2 x i1> %i.adq, <2 x i32> %i.ado, <2 x i32> %i.adm ; 2 uses
  %i.adt = select <2 x i1> %i.adr, <2 x i32> %i.adp, <2 x i32> %i.adn ; 2 uses
  %i.adu = zext nneg <2 x i32> %i.ads to <2 x i64>
  %i.adv = zext nneg <2 x i32> %i.adt to <2 x i64>
  %i.adw = icmp eq i64 %n.vec332, 4
  br i1 %i.adw, label %middle.block345, label %vector.body333.1

vector.body333.1:                                 ; preds = %vector.ph330
  %next.gep337.1 = getelementptr i8, ptr %i.l, i64 5
  %next.gep338.1 = getelementptr i8, ptr %i.acz, i64 5
  %next.gep339.1 = getelementptr i8, ptr %i.acw, i64 5
  %i.adx = getelementptr i8, ptr %i.l, i64 7
  %wide.load340.1 = load <2 x i8>, ptr %next.gep337.1, align 1, !tbaa !7, !noalias !312
  %wide.load341.1 = load <2 x i8>, ptr %i.adx, align 1, !tbaa !7, !noalias !312
  %i.ady = getelementptr i8, ptr %i.acz, i64 7
  %wide.load342.1 = load <2 x i8>, ptr %next.gep338.1, align 1, !tbaa !7, !noalias !312
  %wide.load343.1 = load <2 x i8>, ptr %i.ady, align 1, !tbaa !7, !noalias !312
  %i.adz = sub <2 x i8> %wide.load340.1, %wide.load342.1 ; 3 uses
  %i.aea = sub <2 x i8> %wide.load341.1, %wide.load343.1 ; 3 uses
  %i.aeb = getelementptr i8, ptr %i.acw, i64 7
  store <2 x i8> %i.adz, ptr %next.gep339.1, align 1, !tbaa !7, !noalias !312
  store <2 x i8> %i.aea, ptr %i.aeb, align 1, !tbaa !7, !noalias !312
  %i.aec = zext <2 x i8> %i.adz to <2 x i32>      ; 2 uses
  %i.aed = zext <2 x i8> %i.aea to <2 x i32>      ; 2 uses
  %i.aee = sub nuw nsw <2 x i32> splat (i32 256), %i.aec
  %i.aef = sub nuw nsw <2 x i32> splat (i32 256), %i.aed
  %i.aeg = icmp slt <2 x i8> %i.adz, zeroinitializer
  %i.aeh = icmp slt <2 x i8> %i.aea, zeroinitializer
  %i.aei = select <2 x i1> %i.aeg, <2 x i32> %i.aee, <2 x i32> %i.aec
  %i.aej = select <2 x i1> %i.aeh, <2 x i32> %i.aef, <2 x i32> %i.aed
  %narrow763 = add nuw nsw <2 x i32> %i.ads, %i.aei ; 2 uses
  %i.aek = zext nneg <2 x i32> %narrow763 to <2 x i64>
  %narrow764 = add nuw nsw <2 x i32> %i.adt, %i.aej ; 2 uses
  %i.ael = zext nneg <2 x i32> %narrow764 to <2 x i64>
  %i.aem = icmp eq i64 %n.vec332, 8
  br i1 %i.aem, label %middle.block345, label %vector.body333.2

vector.body333.2:                                 ; preds = %vector.body333.1
  %next.gep337.2 = getelementptr i8, ptr %i.l, i64 9
  %next.gep338.2 = getelementptr i8, ptr %i.acz, i64 9
  %next.gep339.2 = getelementptr i8, ptr %i.acw, i64 9
  %i.aen = getelementptr i8, ptr %i.l, i64 11
  %wide.load340.2 = load <2 x i8>, ptr %next.gep337.2, align 1, !tbaa !7, !noalias !312
  %wide.load341.2 = load <2 x i8>, ptr %i.aen, align 1, !tbaa !7, !noalias !312
  %i.aeo = getelementptr i8, ptr %i.acz, i64 11
  %wide.load342.2 = load <2 x i8>, ptr %next.gep338.2, align 1, !tbaa !7, !noalias !312
  %wide.load343.2 = load <2 x i8>, ptr %i.aeo, align 1, !tbaa !7, !noalias !312
  %i.aep = sub <2 x i8> %wide.load340.2, %wide.load342.2 ; 3 uses
  %i.aeq = sub <2 x i8> %wide.load341.2, %wide.load343.2 ; 3 uses
  %i.aer = getelementptr i8, ptr %i.acw, i64 11
  store <2 x i8> %i.aep, ptr %next.gep339.2, align 1, !tbaa !7, !noalias !312
  store <2 x i8> %i.aeq, ptr %i.aer, align 1, !tbaa !7, !noalias !312
  %i.aes = zext <2 x i8> %i.aep to <2 x i32>      ; 2 uses
  %i.aet = zext <2 x i8> %i.aeq to <2 x i32>      ; 2 uses
  %i.aeu = sub nuw nsw <2 x i32> splat (i32 256), %i.aes
  %i.aev = sub nuw nsw <2 x i32> splat (i32 256), %i.aet
  %i.aew = icmp slt <2 x i8> %i.aep, zeroinitializer
  %i.aex = icmp slt <2 x i8> %i.aeq, zeroinitializer
  %i.aey = select <2 x i1> %i.aew, <2 x i32> %i.aeu, <2 x i32> %i.aes
  %i.aez = select <2 x i1> %i.aex, <2 x i32> %i.aev, <2 x i32> %i.aet
  %narrow765 = add nuw nsw <2 x i32> %narrow763, %i.aey ; 2 uses
  %i.afa = zext nneg <2 x i32> %narrow765 to <2 x i64>
  %narrow766 = add nuw nsw <2 x i32> %narrow764, %i.aez ; 2 uses
  %i.afb = zext nneg <2 x i32> %narrow766 to <2 x i64>
  %i.afc = icmp eq i64 %n.vec332, 12
  br i1 %i.afc, label %middle.block345, label %vector.body333.3

vector.body333.3:                                 ; preds = %vector.body333.2
  %next.gep337.3 = getelementptr i8, ptr %i.l, i64 13
  %next.gep338.3 = getelementptr i8, ptr %i.acz, i64 13
  %next.gep339.3 = getelementptr i8, ptr %i.acw, i64 13
  %i.afd = getelementptr i8, ptr %i.l, i64 15
  %wide.load340.3 = load <2 x i8>, ptr %next.gep337.3, align 1, !tbaa !7, !noalias !312
  %wide.load341.3 = load <2 x i8>, ptr %i.afd, align 1, !tbaa !7, !noalias !312
  %i.afe = getelementptr i8, ptr %i.acz, i64 15
  %wide.load342.3 = load <2 x i8>, ptr %next.gep338.3, align 1, !tbaa !7, !noalias !312
  %wide.load343.3 = load <2 x i8>, ptr %i.afe, align 1, !tbaa !7, !noalias !312
  %i.aff = sub <2 x i8> %wide.load340.3, %wide.load342.3 ; 3 uses
  %i.afg = sub <2 x i8> %wide.load341.3, %wide.load343.3 ; 3 uses
  %i.afh = getelementptr i8, ptr %i.acw, i64 15
  store <2 x i8> %i.aff, ptr %next.gep339.3, align 1, !tbaa !7, !noalias !312
  store <2 x i8> %i.afg, ptr %i.afh, align 1, !tbaa !7, !noalias !312
  %i.afi = zext <2 x i8> %i.aff to <2 x i32>      ; 2 uses
  %i.afj = zext <2 x i8> %i.afg to <2 x i32>      ; 2 uses
  %i.afk = sub nuw nsw <2 x i32> splat (i32 256), %i.afi
  %i.afl = sub nuw nsw <2 x i32> splat (i32 256), %i.afj
  %i.afm = icmp slt <2 x i8> %i.aff, zeroinitializer
  %i.afn = icmp slt <2 x i8> %i.afg, zeroinitializer
  %i.afo = select <2 x i1> %i.afm, <2 x i32> %i.afk, <2 x i32> %i.afi
  %i.afp = select <2 x i1> %i.afn, <2 x i32> %i.afl, <2 x i32> %i.afj
  %narrow767 = add nuw nsw <2 x i32> %narrow765, %i.afo ; 2 uses
  %i.afq = zext nneg <2 x i32> %narrow767 to <2 x i64>
  %narrow768 = add nuw nsw <2 x i32> %narrow766, %i.afp ; 2 uses
  %i.afr = zext nneg <2 x i32> %narrow768 to <2 x i64>
  %i.afs = icmp eq i64 %n.vec332, 16
  br i1 %i.afs, label %middle.block345, label %vector.body333.4

vector.body333.4:                                 ; preds = %vector.body333.3
  %next.gep337.4 = getelementptr i8, ptr %i.l, i64 17
  %next.gep338.4 = getelementptr i8, ptr %i.acz, i64 17
  %next.gep339.4 = getelementptr i8, ptr %i.acw, i64 17
  %i.aft = getelementptr i8, ptr %i.l, i64 19
  %wide.load340.4 = load <2 x i8>, ptr %next.gep337.4, align 1, !tbaa !7, !noalias !312
  %wide.load341.4 = load <2 x i8>, ptr %i.aft, align 1, !tbaa !7, !noalias !312
  %i.afu = getelementptr i8, ptr %i.acz, i64 19
  %wide.load342.4 = load <2 x i8>, ptr %next.gep338.4, align 1, !tbaa !7, !noalias !312
  %wide.load343.4 = load <2 x i8>, ptr %i.afu, align 1, !tbaa !7, !noalias !312
  %i.afv = sub <2 x i8> %wide.load340.4, %wide.load342.4 ; 3 uses
  %i.afw = sub <2 x i8> %wide.load341.4, %wide.load343.4 ; 3 uses
  %i.afx = getelementptr i8, ptr %i.acw, i64 19
  store <2 x i8> %i.afv, ptr %next.gep339.4, align 1, !tbaa !7, !noalias !312
  store <2 x i8> %i.afw, ptr %i.afx, align 1, !tbaa !7, !noalias !312
  %i.afy = zext <2 x i8> %i.afv to <2 x i32>      ; 2 uses
  %i.afz = zext <2 x i8> %i.afw to <2 x i32>      ; 2 uses
  %i.aga = sub nuw nsw <2 x i32> splat (i32 256), %i.afy
  %i.agb = sub nuw nsw <2 x i32> splat (i32 256), %i.afz
  %i.agc = icmp slt <2 x i8> %i.afv, zeroinitializer
  %i.agd = icmp slt <2 x i8> %i.afw, zeroinitializer
  %i.age = select <2 x i1> %i.agc, <2 x i32> %i.aga, <2 x i32> %i.afy
  %i.agf = select <2 x i1> %i.agd, <2 x i32> %i.agb, <2 x i32> %i.afz
  %narrow769 = add nuw nsw <2 x i32> %narrow767, %i.age ; 2 uses
  %i.agg = zext nneg <2 x i32> %narrow769 to <2 x i64>
  %narrow770 = add nuw nsw <2 x i32> %narrow768, %i.agf ; 2 uses
  %i.agh = zext nneg <2 x i32> %narrow770 to <2 x i64>
  %i.agi = icmp eq i64 %n.vec332, 20
  br i1 %i.agi, label %middle.block345, label %vector.body333.5

vector.body333.5:                                 ; preds = %vector.body333.4
  %next.gep337.5 = getelementptr i8, ptr %i.l, i64 21
  %next.gep338.5 = getelementptr i8, ptr %i.acz, i64 21
  %next.gep339.5 = getelementptr i8, ptr %i.acw, i64 21
  %i.agj = getelementptr i8, ptr %i.l, i64 23
  %wide.load340.5 = load <2 x i8>, ptr %next.gep337.5, align 1, !tbaa !7, !noalias !312
  %wide.load341.5 = load <2 x i8>, ptr %i.agj, align 1, !tbaa !7, !noalias !312
  %i.agk = getelementptr i8, ptr %i.acz, i64 23
  %wide.load342.5 = load <2 x i8>, ptr %next.gep338.5, align 1, !tbaa !7, !noalias !312
  %wide.load343.5 = load <2 x i8>, ptr %i.agk, align 1, !tbaa !7, !noalias !312
  %i.agl = sub <2 x i8> %wide.load340.5, %wide.load342.5 ; 3 uses
  %i.agm = sub <2 x i8> %wide.load341.5, %wide.load343.5 ; 3 uses
  %i.agn = getelementptr i8, ptr %i.acw, i64 23
  store <2 x i8> %i.agl, ptr %next.gep339.5, align 1, !tbaa !7, !noalias !312
  store <2 x i8> %i.agm, ptr %i.agn, align 1, !tbaa !7, !noalias !312
  %i.ago = zext <2 x i8> %i.agl to <2 x i32>      ; 2 uses
  %i.agp = zext <2 x i8> %i.agm to <2 x i32>      ; 2 uses
  %i.agq = sub nuw nsw <2 x i32> splat (i32 256), %i.ago
  %i.agr = sub nuw nsw <2 x i32> splat (i32 256), %i.agp
  %i.ags = icmp slt <2 x i8> %i.agl, zeroinitializer
  %i.agt = icmp slt <2 x i8> %i.agm, zeroinitializer
  %i.agu = select <2 x i1> %i.ags, <2 x i32> %i.agq, <2 x i32> %i.ago
  %i.agv = select <2 x i1> %i.agt, <2 x i32> %i.agr, <2 x i32> %i.agp
  %narrow771 = add nuw nsw <2 x i32> %narrow769, %i.agu
  %i.agw = zext <2 x i32> %narrow771 to <2 x i64> ; 2 uses
  %narrow772 = add nuw nsw <2 x i32> %narrow770, %i.agv
  %i.agx = zext <2 x i32> %narrow772 to <2 x i64> ; 2 uses
  %i.agy = icmp eq i64 %n.vec332, 24
  br i1 %i.agy, label %middle.block345, label %vector.body333.6

vector.body333.6:                                 ; preds = %vector.body333.5
  %next.gep337.6 = getelementptr i8, ptr %i.l, i64 25
  %next.gep338.6 = getelementptr i8, ptr %i.acz, i64 25
  %next.gep339.6 = getelementptr i8, ptr %i.acw, i64 25
  %i.agz = getelementptr i8, ptr %i.l, i64 27
  %wide.load340.6 = load <2 x i8>, ptr %next.gep337.6, align 1, !tbaa !7, !noalias !312
  %wide.load341.6 = load <2 x i8>, ptr %i.agz, align 1, !tbaa !7, !noalias !312
  %i.aha = getelementptr i8, ptr %i.acz, i64 27
  %wide.load342.6 = load <2 x i8>, ptr %next.gep338.6, align 1, !tbaa !7, !noalias !312
  %wide.load343.6 = load <2 x i8>, ptr %i.aha, align 1, !tbaa !7, !noalias !312
  %i.ahb = sub <2 x i8> %wide.load340.6, %wide.load342.6 ; 3 uses
  %i.ahc = sub <2 x i8> %wide.load341.6, %wide.load343.6 ; 3 uses
  %i.ahd = getelementptr i8, ptr %i.acw, i64 27
  store <2 x i8> %i.ahb, ptr %next.gep339.6, align 1, !tbaa !7, !noalias !312
  store <2 x i8> %i.ahc, ptr %i.ahd, align 1, !tbaa !7, !noalias !312
  %i.ahe = zext <2 x i8> %i.ahb to <2 x i32>      ; 2 uses
  %i.ahf = zext <2 x i8> %i.ahc to <2 x i32>      ; 2 uses
  %i.ahg = sub nuw nsw <2 x i32> splat (i32 256), %i.ahe
end_hunk_1
