Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngwutil?download=true
inline.NumInlined: 101
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@png_do_write_interlace:bb.a
  %i.eh = lshr i32 %i.ef, 2
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !10
  %i.el = zext i8 %i.ek to i32
  %i.em = shl i32 %i.ef, 1
  %i.en = and i32 %i.em, 6
  %i.eo = xor i32 %i.en, 6
  %i.ep = lshr i32 %i.el, %i.eo
  %i.eq = shl nuw nsw i32 %i.ep, 4
  %i.er = and i32 %i.eq, 48
  %i.es = or disjoint i32 %i.er, %i.ee            ; 2 uses
  %i.et = add i32 %i.ef, %i.dt                    ; 4 uses
  %i.eu = icmp ult i32 %i.et, %i.d
  br i1 %i.eu, label %bb.l, label %.loopexit.sink.split, !llvm.loop !258

bb.l:                                             ; preds = %bb.k
  %i.ev = lshr i32 %i.et, 2
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !10
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl i32 %i.et, 1
  %i.fb = and i32 %i.fa, 6
  %i.fc = xor i32 %i.fb, 6
  %i.fd = lshr i32 %i.ez, %i.fc
  %i.fe = shl nuw nsw i32 %i.fd, 2
  %i.ff = and i32 %i.fe, 12
  %i.fg = or disjoint i32 %i.ff, %i.es            ; 2 uses
  %i.fh = add i32 %i.et, %i.dt                    ; 4 uses
  %i.fi = icmp ult i32 %i.fh, %i.d
  br i1 %i.fi, label %.thread182, label %.loopexit.sink.split, !llvm.loop !258

.thread182:                                       ; preds = %bb.l
  %i.fj = lshr i32 %i.fh, 2
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !10
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl i32 %i.fh, 1
  %i.fp = and i32 %i.fo, 6
  %i.fq = xor i32 %i.fp, 6
  %i.fr = lshr i32 %i.fn, %i.fq
  %i.fs = and i32 %i.fr, 3
  %i.ft = or disjoint i32 %i.fs, %i.fg
  %i.fu = trunc nuw i32 %i.ft to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %.0105125.ph, i64 1
  store i8 %i.fu, ptr %.0105125.ph, align 1, !tbaa !10
  %i.fw = add i32 %i.fh, %i.dt                    ; 2 uses
  %i.fx = icmp ult i32 %i.fw, %i.d
  br i1 %i.fx, label %.outer209, label %.loopexit, !llvm.loop !258

bb.m:                                             ; preds = %bb.b
  %i.fy = sext i32 %2 to i64                      ; 5 uses
  %i.fz = getelementptr inbounds i8, ptr @png_pass_start, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !10
  %i.gb = zext i8 %i.ga to i32                    ; 5 uses
  %i.gc = icmp ugt i32 %i.d, %i.gb
  br i1 %i.gc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.m
  %i.gd = getelementptr inbounds i8, ptr @png_pass_inc, i64 %i.fy
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !10
  %i.gf = zext i8 %i.ge to i32                    ; 2 uses
  br label %.outer211

.outer211:                                        ; preds = %.lr.ph, %.thread196
  %.094122.ph = phi i32 [ %i.hf, %.thread196 ], [ %i.gb, %.lr.ph ] ; 3 uses
  %.098119.ph = phi ptr [ %i.he, %.thread196 ], [ %1, %.lr.ph ] ; 3 uses
  %i.gg = lshr i32 %.094122.ph, 1
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !10
  %i.gk = zext i8 %i.gj to i32
  %i.gl = shl i32 %.094122.ph, 2
  %i.gm = and i32 %i.gl, 4
  %i.gn = xor i32 %i.gm, 4
  %i.go = lshr i32 %i.gk, %i.gn
  %i.gp = shl nuw nsw i32 %i.go, 4                ; 2 uses
  %i.gq = add i32 %.094122.ph, %i.gf              ; 4 uses
  %i.gr = icmp ult i32 %i.gq, %i.d
  br i1 %i.gr, label %.thread196, label %.loopexit.sink.split, !llvm.loop !259

.thread196:                                       ; preds = %.outer211
  %i.gs = lshr i32 %i.gq, 1
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !10
  %i.gw = zext i8 %i.gv to i32
  %i.gx = shl i32 %i.gq, 2
  %i.gy = and i32 %i.gx, 4
  %i.gz = xor i32 %i.gy, 4
  %i.ha = lshr i32 %i.gw, %i.gz
  %i.hb = and i32 %i.ha, 15
  %i.hc = or disjoint i32 %i.hb, %i.gp
  %i.hd = trunc i32 %i.hc to i8
  %i.he = getelementptr inbounds nuw i8, ptr %.098119.ph, i64 1
  store i8 %i.hd, ptr %.098119.ph, align 1, !tbaa !10
  %i.hf = add i32 %i.gq, %i.gf                    ; 2 uses
  %i.hg = icmp ult i32 %i.hf, %i.d
  br i1 %i.hg, label %.outer211, label %.loopexit, !llvm.loop !259

bb.n:                                             ; preds = %bb.b
  %i.hh = lshr i8 %i.c, 3
  %i.hi = zext nneg i8 %i.hh to i64               ; 3 uses
  %i.hj = sext i32 %2 to i64                      ; 4 uses
  %i.hk = getelementptr inbounds i8, ptr @png_pass_start, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !10
  %i.hm = zext i8 %i.hl to i32                    ; 4 uses
  %i.hn = icmp ugt i32 %i.d, %i.hm
  br i1 %i.hn, label %.lr.ph148, label %.loopexit

.lr.ph148:                                        ; preds = %bb.n
  %i.ho = getelementptr inbounds i8, ptr @png_pass_inc, i64 %i.hj
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !10
  %i.hq = zext i8 %i.hp to i32
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph148, %bb.q
  %.0146 = phi i32 [ %i.hm, %.lr.ph148 ], [ %i.hv, %bb.q ] ; 2 uses
  %.093145 = phi ptr [ %1, %.lr.ph148 ], [ %i.hu, %bb.q ] ; 3 uses
  %i.hr = zext i32 %.0146 to i64
  %i.hs = mul nuw nsw i64 %i.hr, %i.hi
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 %i.hs ; 2 uses
  %.not118 = icmp eq ptr %.093145, %i.ht
  br i1 %.not118, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.093145, ptr align 1 %i.ht, i64 %i.hi, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.hu = getelementptr inbounds nuw i8, ptr %.093145, i64 %i.hi
  %i.hv = add i32 %.0146, %i.hq                   ; 2 uses
  %i.hw = icmp ult i32 %i.hv, %i.d
  br i1 %i.hw, label %bb.o, label %.loopexit, !llvm.loop !260

.loopexit.sink.split:                             ; preds = %.outer211, %.outer209, %bb.k, %bb.l, %.outer, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sink249 = phi i32 [ %i.cv, %bb.i ], [ %i.fg, %bb.l ], [ %i.v, %.outer ], [ %i.ai, %bb.d ], [ %i.av, %bb.e ], [ %i.bi, %bb.f ], [ %i.bv, %bb.g ], [ %i.ci, %bb.h ], [ %i.ee, %.outer209 ], [ %i.es, %bb.k ], [ %i.gp, %.outer211 ]
  %.098119.ph.sink = phi ptr [ %.0112135.ph, %.outer ], [ %.0105125.ph, %.outer209 ], [ %.0112135.ph, %bb.i ], [ %.0112135.ph, %bb.h ], [ %.0112135.ph, %bb.g ], [ %.0112135.ph, %bb.f ], [ %.0112135.ph, %bb.e ], [ %.0112135.ph, %bb.d ], [ %.0105125.ph, %bb.l ], [ %.0105125.ph, %bb.k ], [ %.098119.ph, %.outer211 ]
  %.pre-phi149.ph = phi i32 [ %i.h, %.outer ], [ %i.dp, %.outer209 ], [ %i.h, %bb.i ], [ %i.h, %bb.h ], [ %i.h, %bb.g ], [ %i.h, %bb.f ], [ %i.h, %bb.e ], [ %i.h, %bb.d ], [ %i.dp, %bb.l ], [ %i.dp, %bb.k ], [ %i.gb, %.outer211 ]
  %.pre-phi.ph = phi i64 [ %i.e, %.outer ], [ %i.dm, %.outer209 ], [ %i.e, %bb.i ], [ %i.e, %bb.h ], [ %i.e, %bb.g ], [ %i.e, %bb.f ], [ %i.e, %bb.e ], [ %i.e, %bb.d ], [ %i.dm, %bb.l ], [ %i.dm, %bb.k ], [ %i.fy, %.outer211 ]
  %i.hx = trunc i32 %.sink249 to i8
  store i8 %i.hx, ptr %.098119.ph.sink, align 1, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.thread196, %.thread182, %.thread, %bb.q, %.loopexit.sink.split, %bb.m, %bb.j, %bb.c, %bb.n
  %.pre-phi149 = phi i32 [ %i.gb, %bb.m ], [ %i.hm, %bb.n ], [ %i.hm, %bb.q ], [ %.pre-phi149.ph, %.loopexit.sink.split ], [ %i.dp, %.thread182 ], [ %i.dp, %bb.j ], [ %i.h, %bb.c ], [ %i.h, %.thread ], [ %i.gb, %.thread196 ]
  %.pre-phi = phi i64 [ %i.fy, %bb.m ], [ %i.hj, %bb.n ], [ %i.hj, %bb.q ], [ %.pre-phi.ph, %.loopexit.sink.split ], [ %i.dm, %.thread182 ], [ %i.dm, %bb.j ], [ %i.e, %bb.c ], [ %i.e, %.thread ], [ %i.fy, %.thread196 ]
  %i.hy = load i32, ptr %0, align 8, !tbaa !261
  %i.hz = getelementptr inbounds i8, ptr @png_pass_inc, i64 %.pre-phi
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !10
  %i.ib = zext i8 %i.ia to i32                    ; 2 uses
  %i.ic = add i32 %i.hy, %i.ib
  %i.id = xor i32 %.pre-phi149, -1
  %i.ie = add i32 %i.ic, %i.id
  %i.if = udiv i32 %i.ie, %i.ib                   ; 2 uses
  store i32 %i.if, ptr %0, align 8, !tbaa !261
  %i.ig = load i8, ptr %i.b, align 1, !tbaa !72   ; 3 uses
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
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !73
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_find_filter(ptr noalias noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 622
  %i.b = load i8, ptr %i.a, align 2, !tbaa !47    ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !73   ; 37 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.g = load i8, ptr %i.f, align 1, !tbaa !72    ; 10 uses
  %i.h = zext i8 %i.g to i32
  %i.i = add nuw nsw i32 %i.h, 7
  %i.j = lshr i32 %i.i, 3                         ; 27 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 98 uses
  %i.m = icmp ugt i64 %i.e, 144115188075855870
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = sub nsw i32 0, %i.c
  %i.o = and i32 %i.c, %i.n
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.p = and i32 %i.c, 8
  %i.q = icmp ne i32 %i.p, 0
  %i.r = icmp ne i8 %i.b, 8
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %.not229 = icmp eq i64 %i.e, 0
  br i1 %.not229, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.e, 4
  br i1 %min.iters.check, label %.lr.ph.preheader706, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 144115188075855868       ; 4 uses
  %i.s = getelementptr i8, ptr %i.l, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi272 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.l, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %wide.load = load <2 x i8>, ptr %i.t, align 1, !tbaa !10 ; 2 uses
  %wide.load273 = load <2 x i8>, ptr %i.u, align 1, !tbaa !10 ; 2 uses
  %i.v = zext <2 x i8> %wide.load to <2 x i64>    ; 2 uses
  %i.w = zext <2 x i8> %wide.load273 to <2 x i64> ; 2 uses
  %i.x = sub nuw nsw <2 x i64> splat (i64 256), %i.v
  %i.y = sub nuw nsw <2 x i64> splat (i64 256), %i.w
  %i.z = icmp slt <2 x i8> %wide.load, zeroinitializer
  %i.aa = icmp slt <2 x i8> %wide.load273, zeroinitializer
  %i.ab = select <2 x i1> %i.z, <2 x i64> %i.x, <2 x i64> %i.v
  %i.ac = select <2 x i1> %i.aa, <2 x i64> %i.y, <2 x i64> %i.w
  %i.ad = add <2 x i64> %i.ab, %vec.phi           ; 2 uses
  %i.ae = add <2 x i64> %i.ac, %vec.phi272        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader706

.lr.ph.preheader706:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0228.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0101227.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ag, %middle.block ]
  %.pn226.ph = phi ptr [ %i.l, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader706, %.lr.ph
  %.0228 = phi i64 [ %i.an, %.lr.ph ], [ %.0228.ph, %.lr.ph.preheader706 ]
  %.0101227 = phi i64 [ %i.am, %.lr.ph ], [ %.0101227.ph, %.lr.ph.preheader706 ]
  %.pn226 = phi ptr [ %.0102, %.lr.ph ], [ %.pn226.ph, %.lr.ph.preheader706 ]
  %.0102 = getelementptr inbounds nuw i8, ptr %.pn226, i64 1 ; 2 uses
  %i.ah = load i8, ptr %.0102, align 1, !tbaa !10 ; 2 uses
  %i.ai = zext i8 %i.ah to i64                    ; 2 uses
  %i.aj = sub nuw nsw i64 256, %i.ai
  %i.ak = icmp slt i8 %i.ah, 0
  %i.al = select i1 %i.ak, i64 %i.aj, i64 %i.ai
  %i.am = add i64 %i.al, %.0101227                ; 2 uses
  %i.an = add nuw nsw i64 %.0228, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %i.e
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !263

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %.preheader, %bb.c, %bb.b
  %.0111 = phi i32 [ %i.o, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %.preheader ], [ %i.c, %middle.block ], [ %i.c, %.lr.ph ] ; 8 uses
  %.0103 = phi i64 [ -257, %bb.b ], [ -257, %bb.c ], [ 0, %.preheader ], [ %i.ag, %middle.block ], [ %i.am, %.lr.ph ] ; 4 uses
  %i.ao = icmp eq i32 %.0111, 16
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.ap = getelementptr i8, ptr %0, i64 568
  %.val128 = load ptr, ptr %i.ap, align 8, !tbaa !66 ; 9 uses
  store i8 1, ptr %.val128, align 1, !tbaa !10
  %i.aq = zext nneg i32 %i.j to i64               ; 13 uses
  %.0201.i = getelementptr inbounds nuw i8, ptr %.val128, i64 1 ; 6 uses
  %.0222.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 6 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.preheader.i, label %iter.check620

iter.check620:                                    ; preds = %bb.d
  %min.iters.check637 = icmp ult i8 %i.g, 25
  %.val128601 = ptrtoaddr ptr %.val128 to i64
  %2 = ptrtoaddr ptr %i.l to i64
  %i.ar = sub i64 %2, %.val128601
  %diff.check602 = icmp ugt i64 %i.ar, -16
  %or.cond686 = select i1 %min.iters.check637, i1 true, i1 %diff.check602
  br i1 %or.cond686, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check605

vector.main.loop.iter.check605:                   ; preds = %iter.check620
  %min.iters.check606 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check606, label %vec.epilog.ph624, label %vector.ph607

vector.ph607:                                     ; preds = %vector.main.loop.iter.check605
  %i.as = and i64 %i.aq, 12
  %n.vec608 = and i64 %i.aq, 48                   ; 6 uses
  %i.at = getelementptr i8, ptr %.0222.i, i64 %n.vec608 ; 2 uses
  %i.au = getelementptr i8, ptr %.0201.i, i64 %n.vec608 ; 2 uses
  %wide.load613 = load <16 x i8>, ptr %.0222.i, align 1, !tbaa !10
  store <16 x i8> %wide.load613, ptr %.0201.i, align 1, !tbaa !10
  %i.av = icmp eq i64 %n.vec608, 16
  br i1 %i.av, label %middle.block615, label %vector.body609.1

vector.body609.1:                                 ; preds = %vector.ph607
  %next.gep611.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep612.1 = getelementptr i8, ptr %.val128, i64 17
  %wide.load613.1 = load <16 x i8>, ptr %next.gep611.1, align 1, !tbaa !10
  store <16 x i8> %wide.load613.1, ptr %next.gep612.1, align 1, !tbaa !10
  br label %middle.block615

middle.block615:                                  ; preds = %vector.body609.1, %vector.ph607
  %cmp.n616 = icmp eq i64 %n.vec608, %i.aq
  br i1 %cmp.n616, label %.preheader.i, label %vec.epilog.iter.check622

vec.epilog.iter.check622:                         ; preds = %middle.block615
  %min.epilog.iters.check623 = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check623, label %.lr.ph.i.preheader, label %vec.epilog.ph624, !prof !310

vec.epilog.ph624:                                 ; preds = %vector.main.loop.iter.check605, %vec.epilog.iter.check622
  %vec.epilog.resume.val617 = phi i64 [ %n.vec608, %vec.epilog.iter.check622 ], [ 0, %vector.main.loop.iter.check605 ]
  %n.vec625 = and i64 %i.aq, 60                   ; 5 uses
  %i.aw = getelementptr i8, ptr %.0222.i, i64 %n.vec625 ; 2 uses
  %i.ax = getelementptr i8, ptr %.0201.i, i64 %n.vec625 ; 2 uses
  br label %vec.epilog.vector.body626

vec.epilog.vector.body626:                        ; preds = %vec.epilog.vector.body626, %vec.epilog.ph624
  %index627 = phi i64 [ %vec.epilog.resume.val617, %vec.epilog.ph624 ], [ %index.next631, %vec.epilog.vector.body626 ] ; 3 uses
  %next.gep628 = getelementptr i8, ptr %.0222.i, i64 %index627
  %next.gep629 = getelementptr i8, ptr %.0201.i, i64 %index627
  %wide.load630 = load <4 x i8>, ptr %next.gep628, align 1, !tbaa !10
  store <4 x i8> %wide.load630, ptr %next.gep629, align 1, !tbaa !10
  %index.next631 = add nuw i64 %index627, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next631, %n.vec625
  br i1 %i.ay, label %vec.epilog.middle.block632, label %vec.epilog.vector.body626, !llvm.loop !264

vec.epilog.middle.block632:                       ; preds = %vec.epilog.vector.body626
  %cmp.n633 = icmp eq i64 %n.vec625, %i.aq
  br i1 %cmp.n633, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check620, %vec.epilog.iter.check622, %vec.epilog.middle.block632
  %.0225.i.ph = phi ptr [ %.0222.i, %iter.check620 ], [ %i.at, %vec.epilog.iter.check622 ], [ %i.aw, %vec.epilog.middle.block632 ] ; 2 uses
  %.0204.i.ph = phi ptr [ %.0201.i, %iter.check620 ], [ %i.au, %vec.epilog.iter.check622 ], [ %i.ax, %vec.epilog.middle.block632 ] ; 2 uses
  %.03.i.ph = phi i64 [ 0, %iter.check620 ], [ %n.vec608, %vec.epilog.iter.check622 ], [ %n.vec625, %vec.epilog.middle.block632 ] ; 4 uses
  %i.az = sub nsw i64 %i.aq, %.03.i.ph
  %xtraiter722 = and i64 %i.az, 7                 ; 2 uses
  %lcmp.mod723.not = icmp eq i64 %xtraiter722, 0
  br i1 %lcmp.mod723.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0225.i.prol = phi ptr [ %.022.i.prol, %.lr.ph.i.prol ], [ %.0225.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0204.i.prol = phi ptr [ %.020.i.prol, %.lr.ph.i.prol ], [ %.0204.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.03.i.prol = phi i64 [ %i.bb, %.lr.ph.i.prol ], [ %.03.i.ph, %.lr.ph.i.preheader ]
  %prol.iter724 = phi i64 [ %prol.iter724.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ba = load i8, ptr %.0225.i.prol, align 1, !tbaa !10
  store i8 %i.ba, ptr %.0204.i.prol, align 1, !tbaa !10
  %i.bb = add nuw nsw i64 %.03.i.prol, 1          ; 2 uses
  %.020.i.prol = getelementptr inbounds nuw i8, ptr %.0204.i.prol, i64 1 ; 3 uses
  %.022.i.prol = getelementptr inbounds nuw i8, ptr %.0225.i.prol, i64 1 ; 3 uses
  %prol.iter724.next = add i64 %prol.iter724, 1   ; 2 uses
  %prol.iter724.cmp.not = icmp eq i64 %prol.iter724.next, %xtraiter722
  br i1 %prol.iter724.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !265

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.022.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.022.i.prol, %.lr.ph.i.prol ]
  %.0225.i.unr = phi ptr [ %.0225.i.ph, %.lr.ph.i.preheader ], [ %.022.i.prol, %.lr.ph.i.prol ]
  %.0204.i.unr = phi ptr [ %.0204.i.ph, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.03.i.unr = phi i64 [ %.03.i.ph, %.lr.ph.i.preheader ], [ %i.bb, %.lr.ph.i.prol ]
  %i.bc = sub nsw i64 %.03.i.ph, %i.aq
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block615, %vec.epilog.middle.block632, %bb.d
  %.0.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.aq, %middle.block615 ], [ %i.aq, %vec.epilog.middle.block632 ], [ %i.aq, %.lr.ph.i ], [ %i.aq, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.020.lcssa.i = phi ptr [ %.0201.i, %bb.d ], [ %i.au, %middle.block615 ], [ %i.ax, %vec.epilog.middle.block632 ], [ %.020.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.020.i.7, %.lr.ph.i ] ; 7 uses
  %.022.lcssa.i = phi ptr [ %.0222.i, %bb.d ], [ %i.at, %middle.block615 ], [ %i.aw, %vec.epilog.middle.block632 ], [ %.022.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.022.i.7, %.lr.ph.i ] ; 7 uses
  %i.be = icmp ult i64 %.0.lcssa.i, %i.e
  br i1 %i.be, label %iter.check666, label %.thread214.thread

iter.check666:                                    ; preds = %.preheader.i
  %i.bf = sub i64 %i.e, %i.aq                     ; 7 uses
  %min.iters.check644 = icmp ult i64 %i.bf, 4
  br i1 %min.iters.check644, label %.lr.ph12.i.preheader, label %vector.memcheck637

vector.memcheck637:                               ; preds = %iter.check666
  %3 = ptrtoaddr ptr %.020.lcssa.i to i64         ; 2 uses
  %4 = ptrtoaddr ptr %i.l to i64
  %i.bg = sub i64 %3, %4
  %i.bh = add i64 %i.bg, -2
  %diff.check639 = icmp ult i64 %i.bh, 31
  %5 = ptrtoaddr ptr %.022.lcssa.i to i64
  %i.bi = sub i64 %5, %3
  %diff.check641 = icmp ugt i64 %i.bi, -32
  %conflict.rdx642 = or i1 %diff.check639, %diff.check641
  br i1 %conflict.rdx642, label %.lr.ph12.i.preheader, label %vector.main.loop.iter.check645

vector.main.loop.iter.check645:                   ; preds = %vector.memcheck637
  %min.iters.check646 = icmp ult i64 %i.bf, 32
  br i1 %min.iters.check646, label %vec.epilog.ph670, label %vector.ph647

vector.ph647:                                     ; preds = %vector.main.loop.iter.check645
  %i.bj = and i64 %i.bf, 28
  %n.vec648 = and i64 %i.bf, -32                  ; 7 uses
  %i.bk = add i64 %.0.lcssa.i, %n.vec648
  %i.bl = getelementptr i8, ptr %i.l, i64 %n.vec648
  %i.bm = getelementptr i8, ptr %.020.lcssa.i, i64 %n.vec648
  %i.bn = getelementptr i8, ptr %.022.lcssa.i, i64 %n.vec648
  br label %vector.body649

vector.body649:                                   ; preds = %vector.ph647, %vector.body649
  %index650 = phi i64 [ 0, %vector.ph647 ], [ %index.next658, %vector.body649 ] ; 4 uses
  %next.gep651 = getelementptr i8, ptr %i.l, i64 %index650 ; 2 uses
  %next.gep652 = getelementptr i8, ptr %.020.lcssa.i, i64 %index650 ; 2 uses
  %next.gep653 = getelementptr i8, ptr %.022.lcssa.i, i64 %index650 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %next.gep651, i64 1
  %i.bp = getelementptr i8, ptr %next.gep653, i64 16
  %wide.load654 = load <16 x i8>, ptr %next.gep653, align 1, !tbaa !10
  %wide.load655 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %next.gep651, i64 17
  %wide.load656 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !10
  %wide.load657 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !10
  %i.br = sub <16 x i8> %wide.load654, %wide.load656
  %i.bs = sub <16 x i8> %wide.load655, %wide.load657
  %i.bt = getelementptr i8, ptr %next.gep652, i64 16
  store <16 x i8> %i.br, ptr %next.gep652, align 1, !tbaa !10
  store <16 x i8> %i.bs, ptr %i.bt, align 1, !tbaa !10
  %index.next658 = add nuw i64 %index650, 32      ; 2 uses
  %i.bu = icmp eq i64 %index.next658, %n.vec648
  br i1 %i.bu, label %middle.block659, label %vector.body649, !llvm.loop !266

middle.block659:                                  ; preds = %vector.body649
  %cmp.n660 = icmp eq i64 %i.bf, %n.vec648
  br i1 %cmp.n660, label %.thread214.thread, label %vec.epilog.iter.check668

vec.epilog.iter.check668:                         ; preds = %middle.block659
  %min.epilog.iters.check669 = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check669, label %.lr.ph12.i.preheader, label %vec.epilog.ph670, !prof !312

vec.epilog.ph670:                                 ; preds = %vector.main.loop.iter.check645, %vec.epilog.iter.check668
  %vec.epilog.resume.val661 = phi i64 [ %n.vec648, %vec.epilog.iter.check668 ], [ 0, %vector.main.loop.iter.check645 ]
  %n.vec671 = and i64 %i.bf, -4                   ; 6 uses
  %i.bv = add i64 %.0.lcssa.i, %n.vec671
  %i.bw = getelementptr i8, ptr %i.l, i64 %n.vec671
  %i.bx = getelementptr i8, ptr %.020.lcssa.i, i64 %n.vec671
  %i.by = getelementptr i8, ptr %.022.lcssa.i, i64 %n.vec671
  br label %vec.epilog.vector.body672

vec.epilog.vector.body672:                        ; preds = %vec.epilog.vector.body672, %vec.epilog.ph670
  %index673 = phi i64 [ %vec.epilog.resume.val661, %vec.epilog.ph670 ], [ %index.next679, %vec.epilog.vector.body672 ] ; 4 uses
  %next.gep674 = getelementptr i8, ptr %i.l, i64 %index673
  %next.gep675 = getelementptr i8, ptr %.020.lcssa.i, i64 %index673
  %next.gep676 = getelementptr i8, ptr %.022.lcssa.i, i64 %index673
  %i.bz = getelementptr inbounds nuw i8, ptr %next.gep674, i64 1
  %wide.load677 = load <4 x i8>, ptr %next.gep676, align 1, !tbaa !10
  %wide.load678 = load <4 x i8>, ptr %i.bz, align 1, !tbaa !10
  %i.ca = sub <4 x i8> %wide.load677, %wide.load678
  store <4 x i8> %i.ca, ptr %next.gep675, align 1, !tbaa !10
  %index.next679 = add nuw i64 %index673, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next679, %n.vec671
  br i1 %i.cb, label %vec.epilog.middle.block680, label %vec.epilog.vector.body672, !llvm.loop !267

vec.epilog.middle.block680:                       ; preds = %vec.epilog.vector.body672
  %cmp.n681 = icmp eq i64 %i.bf, %n.vec671
  br i1 %cmp.n681, label %.thread214.thread, label %.lr.ph12.i.preheader

.lr.ph12.i.preheader:                             ; preds = %iter.check666, %vector.memcheck637, %vec.epilog.iter.check668, %vec.epilog.middle.block680
  %.111.i.ph = phi i64 [ %.0.lcssa.i, %iter.check666 ], [ %.0.lcssa.i, %vector.memcheck637 ], [ %i.bk, %vec.epilog.iter.check668 ], [ %i.bv, %vec.epilog.middle.block680 ] ; 4 uses
  %.pn10.i.ph = phi ptr [ %i.l, %iter.check666 ], [ %i.l, %vector.memcheck637 ], [ %i.bl, %vec.epilog.iter.check668 ], [ %i.bw, %vec.epilog.middle.block680 ] ; 2 uses
  %.1219.i.ph = phi ptr [ %.020.lcssa.i, %iter.check666 ], [ %.020.lcssa.i, %vector.memcheck637 ], [ %i.bm, %vec.epilog.iter.check668 ], [ %i.bx, %vec.epilog.middle.block680 ] ; 2 uses
  %.1238.i.ph = phi ptr [ %.022.lcssa.i, %iter.check666 ], [ %.022.lcssa.i, %vector.memcheck637 ], [ %i.bn, %vec.epilog.iter.check668 ], [ %i.by, %vec.epilog.middle.block680 ] ; 2 uses
  %i.cc = sub i64 %i.e, %.111.i.ph
  %xtraiter725 = and i64 %i.cc, 3                 ; 2 uses
  %lcmp.mod726.not = icmp eq i64 %xtraiter725, 0
  br i1 %lcmp.mod726.not, label %.lr.ph12.i.prol.loopexit, label %.lr.ph12.i.prol

.lr.ph12.i.prol:                                  ; preds = %.lr.ph12.i.preheader, %.lr.ph12.i.prol
  %.111.i.prol = phi i64 [ %i.cf, %.lr.ph12.i.prol ], [ %.111.i.ph, %.lr.ph12.i.preheader ]
  %.pn10.i.prol = phi ptr [ %.019.i.prol, %.lr.ph12.i.prol ], [ %.pn10.i.ph, %.lr.ph12.i.preheader ]
  %.1219.i.prol = phi ptr [ %i.ch, %.lr.ph12.i.prol ], [ %.1219.i.ph, %.lr.ph12.i.preheader ] ; 2 uses
  %.1238.i.prol = phi ptr [ %i.cg, %.lr.ph12.i.prol ], [ %.1238.i.ph, %.lr.ph12.i.preheader ] ; 2 uses
  %prol.iter727 = phi i64 [ %prol.iter727.next, %.lr.ph12.i.prol ], [ 0, %.lr.ph12.i.preheader ]
  %.019.i.prol = getelementptr inbounds nuw i8, ptr %.pn10.i.prol, i64 1 ; 3 uses
  %i.cd = load i8, ptr %.1238.i.prol, align 1, !tbaa !10
  %i.ce = load i8, ptr %.019.i.prol, align 1, !tbaa !10
  %.narrow.i.prol = sub i8 %i.cd, %i.ce
  store i8 %.narrow.i.prol, ptr %.1219.i.prol, align 1, !tbaa !10
  %i.cf = add nuw i64 %.111.i.prol, 1             ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1238.i.prol, i64 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.1219.i.prol, i64 1 ; 2 uses
  %prol.iter727.next = add i64 %prol.iter727, 1   ; 2 uses
  %prol.iter727.cmp.not = icmp eq i64 %prol.iter727.next, %xtraiter725
  br i1 %prol.iter727.cmp.not, label %.lr.ph12.i.prol.loopexit, label %.lr.ph12.i.prol, !llvm.loop !268

.lr.ph12.i.prol.loopexit:                         ; preds = %.lr.ph12.i.prol, %.lr.ph12.i.preheader
  %.111.i.unr = phi i64 [ %.111.i.ph, %.lr.ph12.i.preheader ], [ %i.cf, %.lr.ph12.i.prol ]
  %.pn10.i.unr = phi ptr [ %.pn10.i.ph, %.lr.ph12.i.preheader ], [ %.019.i.prol, %.lr.ph12.i.prol ]
  %.1219.i.unr = phi ptr [ %.1219.i.ph, %.lr.ph12.i.preheader ], [ %i.ch, %.lr.ph12.i.prol ]
  %.1238.i.unr = phi ptr [ %.1238.i.ph, %.lr.ph12.i.preheader ], [ %i.cg, %.lr.ph12.i.prol ]
  %i.ci = sub i64 %.111.i.ph, %i.e
  %i.cj = icmp ugt i64 %i.ci, -4
  br i1 %i.cj, label %.thread214.thread, label %.lr.ph12.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0225.i = phi ptr [ %.022.i.7, %.lr.ph.i ], [ %.0225.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.0204.i = phi ptr [ %.020.i.7, %.lr.ph.i ], [ %.0204.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.03.i = phi i64 [ %i.cs, %.lr.ph.i ], [ %.03.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.ck = load i8, ptr %.0225.i, align 1, !tbaa !10
  store i8 %i.ck, ptr %.0204.i, align 1, !tbaa !10
  %.020.i = getelementptr inbounds nuw i8, ptr %.0204.i, i64 1
  %.022.i = getelementptr inbounds nuw i8, ptr %.0225.i, i64 1
  %i.cl = load i8, ptr %.022.i, align 1, !tbaa !10
  store i8 %i.cl, ptr %.020.i, align 1, !tbaa !10
  %.020.i.1 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 2
  %.022.i.1 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 2
  %i.cm = load i8, ptr %.022.i.1, align 1, !tbaa !10
  store i8 %i.cm, ptr %.020.i.1, align 1, !tbaa !10
  %.020.i.2 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 3
  %.022.i.2 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 3
  %i.cn = load i8, ptr %.022.i.2, align 1, !tbaa !10
  store i8 %i.cn, ptr %.020.i.2, align 1, !tbaa !10
  %.020.i.3 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 4
  %.022.i.3 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 4
  %i.co = load i8, ptr %.022.i.3, align 1, !tbaa !10
  store i8 %i.co, ptr %.020.i.3, align 1, !tbaa !10
  %.020.i.4 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 5
  %.022.i.4 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 5
  %i.cp = load i8, ptr %.022.i.4, align 1, !tbaa !10
  store i8 %i.cp, ptr %.020.i.4, align 1, !tbaa !10
  %.020.i.5 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 6
  %.022.i.5 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 6
  %i.cq = load i8, ptr %.022.i.5, align 1, !tbaa !10
  store i8 %i.cq, ptr %.020.i.5, align 1, !tbaa !10
  %.020.i.6 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 7
  %.022.i.6 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 7
  %i.cr = load i8, ptr %.022.i.6, align 1, !tbaa !10
  store i8 %i.cr, ptr %.020.i.6, align 1, !tbaa !10
  %i.cs = add nuw nsw i64 %.03.i, 8               ; 2 uses
  %.020.i.7 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 8 ; 2 uses
  %.022.i.7 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.cs, %i.aq
  br i1 %exitcond.not.i.7, label %.preheader.i, label %.lr.ph.i, !llvm.loop !269

.lr.ph12.i:                                       ; preds = %.lr.ph12.i.prol.loopexit, %.lr.ph12.i
  %.111.i = phi i64 [ %i.dh, %.lr.ph12.i ], [ %.111.i.unr, %.lr.ph12.i.prol.loopexit ]
  %.pn10.i = phi ptr [ %.019.i.3, %.lr.ph12.i ], [ %.pn10.i.unr, %.lr.ph12.i.prol.loopexit ] ; 4 uses
  %.1219.i = phi ptr [ %i.dj, %.lr.ph12.i ], [ %.1219.i.unr, %.lr.ph12.i.prol.loopexit ] ; 5 uses
  %.1238.i = phi ptr [ %i.di, %.lr.ph12.i ], [ %.1238.i.unr, %.lr.ph12.i.prol.loopexit ] ; 5 uses
  %.019.i = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 1
  %i.ct = load i8, ptr %.1238.i, align 1, !tbaa !10
  %i.cu = load i8, ptr %.019.i, align 1, !tbaa !10
  %.narrow.i = sub i8 %i.ct, %i.cu
  store i8 %.narrow.i, ptr %.1219.i, align 1, !tbaa !10
  %i.cv = getelementptr inbounds nuw i8, ptr %.1238.i, i64 1
  %i.cw = getelementptr inbounds nuw i8, ptr %.1219.i, i64 1
  %.019.i.1 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 2
  %i.cx = load i8, ptr %i.cv, align 1, !tbaa !10
  %i.cy = load i8, ptr %.019.i.1, align 1, !tbaa !10
  %.narrow.i.1 = sub i8 %i.cx, %i.cy
  store i8 %.narrow.i.1, ptr %i.cw, align 1, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %.1238.i, i64 2
  %i.da = getelementptr inbounds nuw i8, ptr %.1219.i, i64 2
  %.019.i.2 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 3
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !10
  %i.dc = load i8, ptr %.019.i.2, align 1, !tbaa !10
  %.narrow.i.2 = sub i8 %i.db, %i.dc
  store i8 %.narrow.i.2, ptr %i.da, align 1, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %.1238.i, i64 3
  %i.de = getelementptr inbounds nuw i8, ptr %.1219.i, i64 3
  %.019.i.3 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 4 ; 2 uses
  %i.df = load i8, ptr %i.dd, align 1, !tbaa !10
  %i.dg = load i8, ptr %.019.i.3, align 1, !tbaa !10
  %.narrow.i.3 = sub i8 %i.df, %i.dg
  store i8 %.narrow.i.3, ptr %i.de, align 1, !tbaa !10
  %i.dh = add nuw i64 %.111.i, 4                  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.1238.i, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.1219.i, i64 4
  %exitcond15.not.i.3 = icmp eq i64 %i.dh, %i.e
  br i1 %exitcond15.not.i.3, label %.thread214.thread, label %.lr.ph12.i, !llvm.loop !270

bb.e:                                             ; preds = %.loopexit
  %i.dk = and i32 %.0111, 16
  %.not = icmp eq i32 %i.dk, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dl = getelementptr i8, ptr %0, i64 568       ; 2 uses
  %.val130 = load ptr, ptr %i.dl, align 8, !tbaa !66 ; 21 uses
  store i8 1, ptr %.val130, align 1, !tbaa !10
  %i.dm = zext nneg i32 %i.j to i64               ; 8 uses
  %.0331.i = getelementptr inbounds nuw i8, ptr %.val130, i64 1 ; 4 uses
  %.0352.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 4 uses
  %.not.i131 = icmp eq i32 %i.j, 0
  br i1 %.not.i131, label %.preheader.i134, label %.lr.ph.i132.preheader

.lr.ph.i132.preheader:                            ; preds = %bb.f
  %min.iters.check277 = icmp ult i8 %i.g, 57
  %.val130275 = ptrtoaddr ptr %.val130 to i64
  %6 = ptrtoaddr ptr %i.l to i64
  %i.dn = sub i64 %6, %.val130275
  %diff.check = icmp ugt i64 %i.dn, -4
  %or.cond687 = select i1 %min.iters.check277, i1 true, i1 %diff.check
  br i1 %or.cond687, label %.lr.ph.i132.preheader702, label %vector.ph278

vector.ph278:                                     ; preds = %.lr.ph.i132.preheader
  %n.vec279 = and i64 %i.dm, 60                   ; 11 uses
  %i.do = getelementptr i8, ptr %.0352.i, i64 %n.vec279 ; 2 uses
  %i.dp = getelementptr i8, ptr %.0331.i, i64 %n.vec279 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.l, i64 3
  %wide.load286 = load <2 x i8>, ptr %.0352.i, align 1, !tbaa !10 ; 3 uses
  %wide.load287 = load <2 x i8>, ptr %i.dq, align 1, !tbaa !10 ; 3 uses
  %i.dr = getelementptr i8, ptr %.val130, i64 3
  store <2 x i8> %wide.load286, ptr %.0331.i, align 1, !tbaa !10
  store <2 x i8> %wide.load287, ptr %i.dr, align 1, !tbaa !10
  %i.ds = zext <2 x i8> %wide.load286 to <2 x i64> ; 2 uses
  %i.dt = zext <2 x i8> %wide.load287 to <2 x i64> ; 2 uses
  %i.du = sub nuw nsw <2 x i64> splat (i64 256), %i.ds
  %i.dv = sub nuw nsw <2 x i64> splat (i64 256), %i.dt
  %i.dw = icmp slt <2 x i8> %wide.load286, zeroinitializer
  %i.dx = icmp slt <2 x i8> %wide.load287, zeroinitializer
  %i.dy = select <2 x i1> %i.dw, <2 x i64> %i.du, <2 x i64> %i.ds ; 2 uses
  %i.dz = select <2 x i1> %i.dx, <2 x i64> %i.dv, <2 x i64> %i.dt ; 2 uses
  %i.ea = icmp eq i64 %n.vec279, 4
  br i1 %i.ea, label %middle.block289, label %vector.body280.1

vector.body280.1:                                 ; preds = %vector.ph278
  %next.gep284.1 = getelementptr i8, ptr %i.l, i64 5
  %next.gep285.1 = getelementptr i8, ptr %.val130, i64 5
  %i.eb = getelementptr i8, ptr %i.l, i64 7
  %wide.load286.1 = load <2 x i8>, ptr %next.gep284.1, align 1, !tbaa !10 ; 3 uses
  %wide.load287.1 = load <2 x i8>, ptr %i.eb, align 1, !tbaa !10 ; 3 uses
  %i.ec = getelementptr i8, ptr %.val130, i64 7
  store <2 x i8> %wide.load286.1, ptr %next.gep285.1, align 1, !tbaa !10
  store <2 x i8> %wide.load287.1, ptr %i.ec, align 1, !tbaa !10
  %i.ed = zext <2 x i8> %wide.load286.1 to <2 x i64> ; 2 uses
  %i.ee = zext <2 x i8> %wide.load287.1 to <2 x i64> ; 2 uses
  %i.ef = sub nuw nsw <2 x i64> splat (i64 256), %i.ed
  %i.eg = sub nuw nsw <2 x i64> splat (i64 256), %i.ee
  %i.eh = icmp slt <2 x i8> %wide.load286.1, zeroinitializer
  %i.ei = icmp slt <2 x i8> %wide.load287.1, zeroinitializer
  %i.ej = select <2 x i1> %i.eh, <2 x i64> %i.ef, <2 x i64> %i.ed
  %i.ek = select <2 x i1> %i.ei, <2 x i64> %i.eg, <2 x i64> %i.ee
  %i.el = add nuw nsw <2 x i64> %i.ej, %i.dy      ; 2 uses
  %i.em = add nuw nsw <2 x i64> %i.ek, %i.dz      ; 2 uses
  %i.en = icmp eq i64 %n.vec279, 8
  br i1 %i.en, label %middle.block289, label %vector.body280.2

vector.body280.2:                                 ; preds = %vector.body280.1
  %next.gep284.2 = getelementptr i8, ptr %i.l, i64 9
  %next.gep285.2 = getelementptr i8, ptr %.val130, i64 9
  %i.eo = getelementptr i8, ptr %i.l, i64 11
  %wide.load286.2 = load <2 x i8>, ptr %next.gep284.2, align 1, !tbaa !10 ; 3 uses
  %wide.load287.2 = load <2 x i8>, ptr %i.eo, align 1, !tbaa !10 ; 3 uses
  %i.ep = getelementptr i8, ptr %.val130, i64 11
  store <2 x i8> %wide.load286.2, ptr %next.gep285.2, align 1, !tbaa !10
  store <2 x i8> %wide.load287.2, ptr %i.ep, align 1, !tbaa !10
  %i.eq = zext <2 x i8> %wide.load286.2 to <2 x i64> ; 2 uses
  %i.er = zext <2 x i8> %wide.load287.2 to <2 x i64> ; 2 uses
  %i.es = sub nuw nsw <2 x i64> splat (i64 256), %i.eq
  %i.et = sub nuw nsw <2 x i64> splat (i64 256), %i.er
  %i.eu = icmp slt <2 x i8> %wide.load286.2, zeroinitializer
  %i.ev = icmp slt <2 x i8> %wide.load287.2, zeroinitializer
  %i.ew = select <2 x i1> %i.eu, <2 x i64> %i.es, <2 x i64> %i.eq
  %i.ex = select <2 x i1> %i.ev, <2 x i64> %i.et, <2 x i64> %i.er
  %i.ey = add nuw nsw <2 x i64> %i.ew, %i.el      ; 2 uses
  %i.ez = add nuw nsw <2 x i64> %i.ex, %i.em      ; 2 uses
  %i.fa = icmp eq i64 %n.vec279, 12
  br i1 %i.fa, label %middle.block289, label %vector.body280.3

vector.body280.3:                                 ; preds = %vector.body280.2
  %next.gep284.3 = getelementptr i8, ptr %i.l, i64 13
  %next.gep285.3 = getelementptr i8, ptr %.val130, i64 13
  %i.fb = getelementptr i8, ptr %i.l, i64 15
  %wide.load286.3 = load <2 x i8>, ptr %next.gep284.3, align 1, !tbaa !10 ; 3 uses
  %wide.load287.3 = load <2 x i8>, ptr %i.fb, align 1, !tbaa !10 ; 3 uses
  %i.fc = getelementptr i8, ptr %.val130, i64 15
  store <2 x i8> %wide.load286.3, ptr %next.gep285.3, align 1, !tbaa !10
  store <2 x i8> %wide.load287.3, ptr %i.fc, align 1, !tbaa !10
  %i.fd = zext <2 x i8> %wide.load286.3 to <2 x i64> ; 2 uses
  %i.fe = zext <2 x i8> %wide.load287.3 to <2 x i64> ; 2 uses
  %i.ff = sub nuw nsw <2 x i64> splat (i64 256), %i.fd
  %i.fg = sub nuw nsw <2 x i64> splat (i64 256), %i.fe
  %i.fh = icmp slt <2 x i8> %wide.load286.3, zeroinitializer
  %i.fi = icmp slt <2 x i8> %wide.load287.3, zeroinitializer
  %i.fj = select <2 x i1> %i.fh, <2 x i64> %i.ff, <2 x i64> %i.fd
  %i.fk = select <2 x i1> %i.fi, <2 x i64> %i.fg, <2 x i64> %i.fe
  %i.fl = add nuw nsw <2 x i64> %i.fj, %i.ey      ; 2 uses
  %i.fm = add nuw nsw <2 x i64> %i.fk, %i.ez      ; 2 uses
  %i.fn = icmp eq i64 %n.vec279, 16
  br i1 %i.fn, label %middle.block289, label %vector.body280.4

vector.body280.4:                                 ; preds = %vector.body280.3
  %next.gep284.4 = getelementptr i8, ptr %i.l, i64 17
  %next.gep285.4 = getelementptr i8, ptr %.val130, i64 17
  %i.fo = getelementptr i8, ptr %i.l, i64 19
  %wide.load286.4 = load <2 x i8>, ptr %next.gep284.4, align 1, !tbaa !10 ; 3 uses
  %wide.load287.4 = load <2 x i8>, ptr %i.fo, align 1, !tbaa !10 ; 3 uses
  %i.fp = getelementptr i8, ptr %.val130, i64 19
  store <2 x i8> %wide.load286.4, ptr %next.gep285.4, align 1, !tbaa !10
  store <2 x i8> %wide.load287.4, ptr %i.fp, align 1, !tbaa !10
  %i.fq = zext <2 x i8> %wide.load286.4 to <2 x i64> ; 2 uses
  %i.fr = zext <2 x i8> %wide.load287.4 to <2 x i64> ; 2 uses
  %i.fs = sub nuw nsw <2 x i64> splat (i64 256), %i.fq
  %i.ft = sub nuw nsw <2 x i64> splat (i64 256), %i.fr
  %i.fu = icmp slt <2 x i8> %wide.load286.4, zeroinitializer
  %i.fv = icmp slt <2 x i8> %wide.load287.4, zeroinitializer
  %i.fw = select <2 x i1> %i.fu, <2 x i64> %i.fs, <2 x i64> %i.fq
  %i.fx = select <2 x i1> %i.fv, <2 x i64> %i.ft, <2 x i64> %i.fr
  %i.fy = add nuw nsw <2 x i64> %i.fw, %i.fl      ; 2 uses
  %i.fz = add nuw nsw <2 x i64> %i.fx, %i.fm      ; 2 uses
  %i.ga = icmp eq i64 %n.vec279, 20
  br i1 %i.ga, label %middle.block289, label %vector.body280.5

vector.body280.5:                                 ; preds = %vector.body280.4
  %next.gep284.5 = getelementptr i8, ptr %i.l, i64 21
  %next.gep285.5 = getelementptr i8, ptr %.val130, i64 21
  %i.gb = getelementptr i8, ptr %i.l, i64 23
  %wide.load286.5 = load <2 x i8>, ptr %next.gep284.5, align 1, !tbaa !10 ; 3 uses
  %wide.load287.5 = load <2 x i8>, ptr %i.gb, align 1, !tbaa !10 ; 3 uses
  %i.gc = getelementptr i8, ptr %.val130, i64 23
  store <2 x i8> %wide.load286.5, ptr %next.gep285.5, align 1, !tbaa !10
  store <2 x i8> %wide.load287.5, ptr %i.gc, align 1, !tbaa !10
  %i.gd = zext <2 x i8> %wide.load286.5 to <2 x i64> ; 2 uses
  %i.ge = zext <2 x i8> %wide.load287.5 to <2 x i64> ; 2 uses
  %i.gf = sub nuw nsw <2 x i64> splat (i64 256), %i.gd
  %i.gg = sub nuw nsw <2 x i64> splat (i64 256), %i.ge
  %i.gh = icmp slt <2 x i8> %wide.load286.5, zeroinitializer
  %i.gi = icmp slt <2 x i8> %wide.load287.5, zeroinitializer
  %i.gj = select <2 x i1> %i.gh, <2 x i64> %i.gf, <2 x i64> %i.gd
  %i.gk = select <2 x i1> %i.gi, <2 x i64> %i.gg, <2 x i64> %i.ge
  %i.gl = add nuw nsw <2 x i64> %i.gj, %i.fy      ; 2 uses
  %i.gm = add nuw nsw <2 x i64> %i.gk, %i.fz      ; 2 uses
  %i.gn = icmp eq i64 %n.vec279, 24
  br i1 %i.gn, label %middle.block289, label %vector.body280.6

vector.body280.6:                                 ; preds = %vector.body280.5
  %next.gep284.6 = getelementptr i8, ptr %i.l, i64 25
  %next.gep285.6 = getelementptr i8, ptr %.val130, i64 25
  %i.go = getelementptr i8, ptr %i.l, i64 27
  %wide.load286.6 = load <2 x i8>, ptr %next.gep284.6, align 1, !tbaa !10 ; 3 uses
  %wide.load287.6 = load <2 x i8>, ptr %i.go, align 1, !tbaa !10 ; 3 uses
  %i.gp = getelementptr i8, ptr %.val130, i64 27
  store <2 x i8> %wide.load286.6, ptr %next.gep285.6, align 1, !tbaa !10
  store <2 x i8> %wide.load287.6, ptr %i.gp, align 1, !tbaa !10
  %i.gq = zext <2 x i8> %wide.load286.6 to <2 x i64> ; 2 uses
  %i.gr = zext <2 x i8> %wide.load287.6 to <2 x i64> ; 2 uses
  %i.gs = sub nuw nsw <2 x i64> splat (i64 256), %i.gq
  %i.gt = sub nuw nsw <2 x i64> splat (i64 256), %i.gr
  %i.gu = icmp slt <2 x i8> %wide.load286.6, zeroinitializer
  %i.gv = icmp slt <2 x i8> %wide.load287.6, zeroinitializer
  %i.gw = select <2 x i1> %i.gu, <2 x i64> %i.gs, <2 x i64> %i.gq
  %i.gx = select <2 x i1> %i.gv, <2 x i64> %i.gt, <2 x i64> %i.gr
  %i.gy = add <2 x i64> %i.gw, %i.gl              ; 2 uses
  %i.gz = add <2 x i64> %i.gx, %i.gm              ; 2 uses
  %i.ha = icmp eq i64 %n.vec279, 28
  br i1 %i.ha, label %middle.block289, label %vector.body280.7

vector.body280.7:                                 ; preds = %vector.body280.6
  %next.gep284.7 = getelementptr i8, ptr %i.l, i64 29
  %next.gep285.7 = getelementptr i8, ptr %.val130, i64 29
  %i.hb = getelementptr i8, ptr %i.l, i64 31
  %wide.load286.7 = load <2 x i8>, ptr %next.gep284.7, align 1, !tbaa !10 ; 3 uses
  %wide.load287.7 = load <2 x i8>, ptr %i.hb, align 1, !tbaa !10 ; 3 uses
  %i.hc = getelementptr i8, ptr %.val130, i64 31
  store <2 x i8> %wide.load286.7, ptr %next.gep285.7, align 1, !tbaa !10
  store <2 x i8> %wide.load287.7, ptr %i.hc, align 1, !tbaa !10
  %i.hd = zext <2 x i8> %wide.load286.7 to <2 x i64> ; 2 uses
  %i.he = zext <2 x i8> %wide.load287.7 to <2 x i64> ; 2 uses
  %i.hf = sub nuw nsw <2 x i64> splat (i64 256), %i.hd
  %i.hg = sub nuw nsw <2 x i64> splat (i64 256), %i.he
  %i.hh = icmp slt <2 x i8> %wide.load286.7, zeroinitializer
  %i.hi = icmp slt <2 x i8> %wide.load287.7, zeroinitializer
  %i.hj = select <2 x i1> %i.hh, <2 x i64> %i.hf, <2 x i64> %i.hd
  %i.hk = select <2 x i1> %i.hi, <2 x i64> %i.hg, <2 x i64> %i.he
  %i.hl = add <2 x i64> %i.hj, %i.gy
  %i.hm = add <2 x i64> %i.hk, %i.gz
  br label %middle.block289

middle.block289:                                  ; preds = %vector.body280.7, %vector.body280.6, %vector.body280.5, %vector.body280.4, %vector.body280.3, %vector.body280.2, %vector.body280.1, %vector.ph278
  %.lcssa705 = phi <2 x i64> [ %i.dy, %vector.ph278 ], [ %i.el, %vector.body280.1 ], [ %i.ey, %vector.body280.2 ], [ %i.fl, %vector.body280.3 ], [ %i.fy, %vector.body280.4 ], [ %i.gl, %vector.body280.5 ], [ %i.gy, %vector.body280.6 ], [ %i.hl, %vector.body280.7 ]
  %.lcssa704 = phi <2 x i64> [ %i.dz, %vector.ph278 ], [ %i.em, %vector.body280.1 ], [ %i.ez, %vector.body280.2 ], [ %i.fm, %vector.body280.3 ], [ %i.fz, %vector.body280.4 ], [ %i.gm, %vector.body280.5 ], [ %i.gz, %vector.body280.6 ], [ %i.hm, %vector.body280.7 ]
  %bin.rdx290 = add <2 x i64> %.lcssa704, %.lcssa705
  %i.hn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx290) ; 2 uses
  %cmp.n291 = icmp eq i64 %n.vec279, %i.dm
  br i1 %cmp.n291, label %.preheader.i134, label %.lr.ph.i132.preheader702

.lr.ph.i132.preheader702:                         ; preds = %.lr.ph.i132.preheader, %middle.block289
  %.0356.i.ph = phi ptr [ %.0352.i, %.lr.ph.i132.preheader ], [ %i.do, %middle.block289 ] ; 3 uses
  %.0335.i.ph = phi ptr [ %.0331.i, %.lr.ph.i132.preheader ], [ %i.dp, %middle.block289 ] ; 3 uses
  %.04.i.ph = phi i64 [ 0, %.lr.ph.i132.preheader ], [ %i.hn, %middle.block289 ] ; 2 uses
  %.0303.i.ph = phi i64 [ 0, %.lr.ph.i132.preheader ], [ %n.vec279, %middle.block289 ] ; 3 uses
  %xtraiter = and i64 %i.dm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i132.prol.loopexit, label %.lr.ph.i132.prol

.lr.ph.i132.prol:                                 ; preds = %.lr.ph.i132.preheader702
  %i.ho = load i8, ptr %.0356.i.ph, align 1, !tbaa !10 ; 3 uses
  store i8 %i.ho, ptr %.0335.i.ph, align 1, !tbaa !10
  %i.hp = zext i8 %i.ho to i64                    ; 2 uses
  %i.hq = sub nuw nsw i64 256, %i.hp
  %i.hr = icmp slt i8 %i.ho, 0
  %i.hs = select i1 %i.hr, i64 %i.hq, i64 %i.hp
  %i.ht = add i64 %i.hs, %.04.i.ph                ; 2 uses
  %i.hu = or disjoint i64 %.0303.i.ph, 1
  %.033.i.prol = getelementptr inbounds nuw i8, ptr %.0335.i.ph, i64 1 ; 2 uses
  %.035.i.prol = getelementptr inbounds nuw i8, ptr %.0356.i.ph, i64 1 ; 2 uses
  br label %.lr.ph.i132.prol.loopexit

.lr.ph.i132.prol.loopexit:                        ; preds = %.lr.ph.i132.prol, %.lr.ph.i132.preheader702
  %.lcssa703.unr = phi i64 [ poison, %.lr.ph.i132.preheader702 ], [ %i.ht, %.lr.ph.i132.prol ]
  %.033.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i132.preheader702 ], [ %.033.i.prol, %.lr.ph.i132.prol ]
  %.035.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i132.preheader702 ], [ %.035.i.prol, %.lr.ph.i132.prol ]
  %.0356.i.unr = phi ptr [ %.0356.i.ph, %.lr.ph.i132.preheader702 ], [ %.035.i.prol, %.lr.ph.i132.prol ]
  %.0335.i.unr = phi ptr [ %.0335.i.ph, %.lr.ph.i132.preheader702 ], [ %.033.i.prol, %.lr.ph.i132.prol ]
  %.04.i.unr = phi i64 [ %.04.i.ph, %.lr.ph.i132.preheader702 ], [ %i.ht, %.lr.ph.i132.prol ]
  %.0303.i.unr = phi i64 [ %.0303.i.ph, %.lr.ph.i132.preheader702 ], [ %i.hu, %.lr.ph.i132.prol ]
  %i.hv = add nsw i64 %i.dm, -1
  %i.hw = icmp eq i64 %.0303.i.ph, %i.hv
  br i1 %i.hw, label %.preheader.i134, label %.lr.ph.i132

.preheader.i134:                                  ; preds = %.lr.ph.i132.prol.loopexit, %.lr.ph.i132, %middle.block289, %bb.f
  %.030.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.dm, %middle.block289 ], [ %i.dm, %.lr.ph.i132 ], [ %i.dm, %.lr.ph.i132.prol.loopexit ] ; 2 uses
  %.0.lcssa.i135 = phi i64 [ 0, %bb.f ], [ %i.hn, %middle.block289 ], [ %.lcssa703.unr, %.lr.ph.i132.prol.loopexit ], [ %i.ij, %.lr.ph.i132 ] ; 2 uses
  %.033.lcssa.i = phi ptr [ %.0331.i, %bb.f ], [ %i.dp, %middle.block289 ], [ %.033.i.lcssa.unr, %.lr.ph.i132.prol.loopexit ], [ %.033.i.1, %.lr.ph.i132 ]
  %.035.lcssa.i = phi ptr [ %.0352.i, %bb.f ], [ %i.do, %middle.block289 ], [ %.035.i.lcssa.unr, %.lr.ph.i132.prol.loopexit ], [ %.035.i.1, %.lr.ph.i132 ]
  %i.hx = icmp ult i64 %.030.lcssa.i, %i.e
  br i1 %i.hx, label %.lr.ph16.i, label %png_setup_sub_row.exit

.lr.ph.i132:                                      ; preds = %.lr.ph.i132.prol.loopexit, %.lr.ph.i132
  %.0356.i = phi ptr [ %.035.i.1, %.lr.ph.i132 ], [ %.0356.i.unr, %.lr.ph.i132.prol.loopexit ] ; 3 uses
  %.0335.i = phi ptr [ %.033.i.1, %.lr.ph.i132 ], [ %.0335.i.unr, %.lr.ph.i132.prol.loopexit ] ; 3 uses
  %.04.i = phi i64 [ %i.ij, %.lr.ph.i132 ], [ %.04.i.unr, %.lr.ph.i132.prol.loopexit ]
  %.0303.i = phi i64 [ %i.ik, %.lr.ph.i132 ], [ %.0303.i.unr, %.lr.ph.i132.prol.loopexit ]
  %i.hy = load i8, ptr %.0356.i, align 1, !tbaa !10 ; 3 uses
  store i8 %i.hy, ptr %.0335.i, align 1, !tbaa !10
  %i.hz = zext i8 %i.hy to i64                    ; 2 uses
  %i.ia = sub nuw nsw i64 256, %i.hz
  %i.ib = icmp slt i8 %i.hy, 0
  %i.ic = select i1 %i.ib, i64 %i.ia, i64 %i.hz
  %i.id = add i64 %i.ic, %.04.i
  %.033.i = getelementptr inbounds nuw i8, ptr %.0335.i, i64 1
  %.035.i = getelementptr inbounds nuw i8, ptr %.0356.i, i64 1
  %i.ie = load i8, ptr %.035.i, align 1, !tbaa !10 ; 3 uses
  store i8 %i.ie, ptr %.033.i, align 1, !tbaa !10
  %i.if = zext i8 %i.ie to i64                    ; 2 uses
  %i.ig = sub nuw nsw i64 256, %i.if
  %i.ih = icmp slt i8 %i.ie, 0
  %i.ii = select i1 %i.ih, i64 %i.ig, i64 %i.if
  %i.ij = add i64 %i.ii, %i.id                    ; 2 uses
  %i.ik = add nuw nsw i64 %.0303.i, 2             ; 2 uses
  %.033.i.1 = getelementptr inbounds nuw i8, ptr %.0335.i, i64 2 ; 2 uses
  %.035.i.1 = getelementptr inbounds nuw i8, ptr %.0356.i, i64 2 ; 2 uses
  %exitcond.not.i133.1 = icmp eq i64 %i.ik, %i.dm
  br i1 %exitcond.not.i133.1, label %.preheader.i134, label %.lr.ph.i132, !llvm.loop !271

.lr.ph16.i:                                       ; preds = %.preheader.i134, %.lr.ph16.i
  %.03215.pn.i = phi ptr [ %.03215.i, %.lr.ph16.i ], [ %i.l, %.preheader.i134 ]
  %.114.i = phi i64 [ %i.ir, %.lr.ph16.i ], [ %.0.lcssa.i135, %.preheader.i134 ]
  %.13113.i = phi i64 [ %i.it, %.lr.ph16.i ], [ %.030.lcssa.i, %.preheader.i134 ]
  %.13412.i = phi ptr [ %i.iv, %.lr.ph16.i ], [ %.033.lcssa.i, %.preheader.i134 ] ; 2 uses
  %.13611.i = phi ptr [ %i.iu, %.lr.ph16.i ], [ %.035.lcssa.i, %.preheader.i134 ] ; 2 uses
  %.03215.i = getelementptr inbounds nuw i8, ptr %.03215.pn.i, i64 1 ; 2 uses
  %i.il = load i8, ptr %.13611.i, align 1, !tbaa !10
  %i.im = load i8, ptr %.03215.i, align 1, !tbaa !10
  %.narrow.i136 = sub i8 %i.il, %i.im             ; 3 uses
  store i8 %.narrow.i136, ptr %.13412.i, align 1, !tbaa !10
  %i.in = zext i8 %.narrow.i136 to i64            ; 2 uses
  %i.io = sub nuw nsw i64 256, %i.in
  %i.ip = icmp slt i8 %.narrow.i136, 0
  %i.iq = select i1 %i.ip, i64 %i.io, i64 %i.in
  %i.ir = add i64 %i.iq, %.114.i                  ; 3 uses
  %i.is = icmp ule i64 %i.ir, %.0103
  %i.it = add nuw i64 %.13113.i, 1                ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.13611.i, i64 1
  %i.iv = getelementptr inbounds nuw i8, ptr %.13412.i, i64 1
  %i.iw = icmp ult i64 %i.it, %i.e
  %or.cond.i = select i1 %i.is, i1 %i.iw, i1 false
  br i1 %or.cond.i, label %.lr.ph16.i, label %png_setup_sub_row.exit, !llvm.loop !272

png_setup_sub_row.exit:                           ; preds = %.lr.ph16.i, %.preheader.i134
  %.2.i = phi i64 [ %.0.lcssa.i135, %.preheader.i134 ], [ %i.ir, %.lr.ph16.i ] ; 3 uses
  %i.ix = icmp ult i64 %.2.i, %.0103
  br i1 %i.ix, label %bb.g, label %bb.i

bb.g:                                             ; preds = %png_setup_sub_row.exit
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !67 ; 2 uses
  %.not121 = icmp eq ptr %i.iz, null
  br i1 %.not121, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.iz, ptr %i.dl, align 8, !tbaa !66
  store ptr %.val130, ptr %i.iy, align 8, !tbaa !67
  br label %bb.i

bb.i:                                             ; preds = %png_setup_sub_row.exit, %bb.h, %bb.g, %bb.e
  %.1105 = phi ptr [ %i.l, %png_setup_sub_row.exit ], [ %i.l, %bb.e ], [ %.val130, %bb.h ], [ %.val130, %bb.g ] ; 2 uses
  %.2 = phi i64 [ %.0103, %png_setup_sub_row.exit ], [ %.0103, %bb.e ], [ %.2.i, %bb.h ], [ %.2.i, %bb.g ] ; 4 uses
  %i.ja = icmp eq i32 %.0111, 32
  br i1 %i.ja, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !66, !alias.scope !313 ; 13 uses
  store i8 2, ptr %i.jc, align 1, !tbaa !10, !noalias !313
  %.not.i137 = icmp eq i64 %i.e, 0
  br i1 %.not.i137, label %.thread214.thread, label %iter.check580

iter.check580:                                    ; preds = %bb.j
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !68, !alias.scope !313 ; 7 uses
  %min.iters.check559 = icmp ult i64 %i.e, 4
  br i1 %min.iters.check559, label %.lr.ph.i138.preheader, label %vector.memcheck554

vector.memcheck554:                               ; preds = %iter.check580
  %7 = ptrtoaddr ptr %i.jc to i64                 ; 2 uses
  %i.jf = ptrtoaddr ptr %i.l to i64
  %i.jg = sub i64 %i.jf, %7
  %diff.check555 = icmp ugt i64 %i.jg, -32
  %8 = ptrtoaddr ptr %i.je to i64
  %i.jh = sub i64 %8, %7
  %diff.check556 = icmp ugt i64 %i.jh, -32
  %conflict.rdx557 = or i1 %diff.check555, %diff.check556
  br i1 %conflict.rdx557, label %.lr.ph.i138.preheader, label %vector.main.loop.iter.check560

vector.main.loop.iter.check560:                   ; preds = %vector.memcheck554
  %min.iters.check561 = icmp ult i64 %i.e, 32
  br i1 %min.iters.check561, label %vec.epilog.ph584, label %vector.ph562

vector.ph562:                                     ; preds = %vector.main.loop.iter.check560
  %i.ji = and i64 %i.e, 28
  %n.vec563 = and i64 %i.e, -32                   ; 7 uses
  %i.jj = getelementptr i8, ptr %i.je, i64 %n.vec563
  %i.jk = getelementptr i8, ptr %i.jc, i64 %n.vec563
  %i.jl = getelementptr i8, ptr %i.l, i64 %n.vec563
  br label %vector.body564

vector.body564:                                   ; preds = %vector.ph562, %vector.body564
  %index565 = phi i64 [ 0, %vector.ph562 ], [ %index.next573, %vector.body564 ] ; 4 uses
  %next.gep566 = getelementptr i8, ptr %i.je, i64 %index565 ; 2 uses
  %next.gep567 = getelementptr i8, ptr %i.jc, i64 %index565 ; 2 uses
  %next.gep568.a = getelementptr i8, ptr %i.l, i64 %index565 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %next.gep567, i64 1
  %i.jn = getelementptr inbounds nuw i8, ptr %next.gep566, i64 1
  %i.jo = getelementptr inbounds nuw i8, ptr %next.gep568.a, i64 1
  %i.jp = getelementptr inbounds nuw i8, ptr %next.gep568.a, i64 17
  %wide.load569 = load <16 x i8>, ptr %i.jo, align 1, !tbaa !10, !noalias !313
  %wide.load570 = load <16 x i8>, ptr %i.jp, align 1, !tbaa !10, !noalias !313
  %i.jq = getelementptr inbounds nuw i8, ptr %next.gep566, i64 17
  %wide.load571 = load <16 x i8>, ptr %i.jn, align 1, !tbaa !10, !noalias !313
  %wide.load572.a = load <16 x i8>, ptr %i.jq, align 1, !tbaa !10, !noalias !313
  %i.jr = sub <16 x i8> %wide.load569, %wide.load571
  %i.js = sub <16 x i8> %wide.load570, %wide.load572.a
  %i.jt = getelementptr inbounds nuw i8, ptr %next.gep567, i64 17
  store <16 x i8> %i.jr, ptr %i.jm, align 1, !tbaa !10, !noalias !313
  store <16 x i8> %i.js, ptr %i.jt, align 1, !tbaa !10, !noalias !313
  %index.next573 = add nuw i64 %index565, 32      ; 2 uses
  %i.ju = icmp eq i64 %index.next573, %n.vec563
  br i1 %i.ju, label %middle.block574, label %vector.body564, !llvm.loop !275

middle.block574:                                  ; preds = %vector.body564
  %cmp.n575 = icmp eq i64 %i.e, %n.vec563
  br i1 %cmp.n575, label %.thread214.thread, label %vec.epilog.iter.check582

vec.epilog.iter.check582:                         ; preds = %middle.block574
  %min.epilog.iters.check583 = icmp eq i64 %i.ji, 0
  br i1 %min.epilog.iters.check583, label %.lr.ph.i138.preheader, label %vec.epilog.ph584, !prof !312

vec.epilog.ph584:                                 ; preds = %vector.main.loop.iter.check560, %vec.epilog.iter.check582
  %vec.epilog.resume.val576 = phi i64 [ %n.vec563, %vec.epilog.iter.check582 ], [ 0, %vector.main.loop.iter.check560 ]
  %n.vec585 = and i64 %i.e, -4                    ; 6 uses
  %i.jv = getelementptr i8, ptr %i.je, i64 %n.vec585
  %i.jw = getelementptr i8, ptr %i.jc, i64 %n.vec585
  %i.jx = getelementptr i8, ptr %i.l, i64 %n.vec585
  br label %vec.epilog.vector.body586

vec.epilog.vector.body586:                        ; preds = %vec.epilog.vector.body586, %vec.epilog.ph584
  %index587 = phi i64 [ %vec.epilog.resume.val576, %vec.epilog.ph584 ], [ %index.next593, %vec.epilog.vector.body586 ] ; 4 uses
  %next.gep588 = getelementptr i8, ptr %i.je, i64 %index587
  %next.gep589 = getelementptr i8, ptr %i.jc, i64 %index587
  %next.gep590 = getelementptr i8, ptr %i.l, i64 %index587
  %i.jy = getelementptr inbounds nuw i8, ptr %next.gep589, i64 1
  %i.jz = getelementptr inbounds nuw i8, ptr %next.gep588, i64 1
  %i.ka = getelementptr inbounds nuw i8, ptr %next.gep590, i64 1
  %wide.load591 = load <4 x i8>, ptr %i.ka, align 1, !tbaa !10, !noalias !313
  %wide.load592 = load <4 x i8>, ptr %i.jz, align 1, !tbaa !10, !noalias !313
  %i.kb = sub <4 x i8> %wide.load591, %wide.load592
  store <4 x i8> %i.kb, ptr %i.jy, align 1, !tbaa !10, !noalias !313
  %index.next593 = add nuw i64 %index587, 4       ; 2 uses
  %i.kc = icmp eq i64 %index.next593, %n.vec585
  br i1 %i.kc, label %vec.epilog.middle.block594, label %vec.epilog.vector.body586, !llvm.loop !276

vec.epilog.middle.block594:                       ; preds = %vec.epilog.vector.body586
  %cmp.n595 = icmp eq i64 %i.e, %n.vec585
  br i1 %cmp.n595, label %.thread214.thread, label %.lr.ph.i138.preheader

.lr.ph.i138.preheader:                            ; preds = %iter.check580, %vector.memcheck554, %vec.epilog.iter.check582, %vec.epilog.middle.block594
  %.020.i139.ph = phi i64 [ 0, %iter.check580 ], [ 0, %vector.memcheck554 ], [ %n.vec563, %vec.epilog.iter.check582 ], [ %n.vec585, %vec.epilog.middle.block594 ] ; 3 uses
  %.pn1519.i.ph = phi ptr [ %i.je, %iter.check580 ], [ %i.je, %vector.memcheck554 ], [ %i.jj, %vec.epilog.iter.check582 ], [ %i.jv, %vec.epilog.middle.block594 ] ; 2 uses
  %.pn1618.i.ph = phi ptr [ %i.jc, %iter.check580 ], [ %i.jc, %vector.memcheck554 ], [ %i.jk, %vec.epilog.iter.check582 ], [ %i.jw, %vec.epilog.middle.block594 ] ; 2 uses
  %.pn17.i.ph = phi ptr [ %i.l, %iter.check580 ], [ %i.l, %vector.memcheck554 ], [ %i.jl, %vec.epilog.iter.check582 ], [ %i.jx, %vec.epilog.middle.block594 ] ; 2 uses
  %xtraiter719 = and i64 %i.e, 3                  ; 2 uses
  %lcmp.mod720.not = icmp eq i64 %xtraiter719, 0
  br i1 %lcmp.mod720.not, label %.lr.ph.i138.prol.loopexit, label %.lr.ph.i138.prol

.lr.ph.i138.prol:                                 ; preds = %.lr.ph.i138.preheader, %.lr.ph.i138.prol
  %.020.i139.prol = phi i64 [ %i.kf, %.lr.ph.i138.prol ], [ %.020.i139.ph, %.lr.ph.i138.preheader ]
  %.pn1519.i.prol = phi ptr [ %.012.i.prol, %.lr.ph.i138.prol ], [ %.pn1519.i.ph, %.lr.ph.i138.preheader ]
  %.pn1618.i.prol = phi ptr [ %.013.i.prol, %.lr.ph.i138.prol ], [ %.pn1618.i.ph, %.lr.ph.i138.preheader ]
  %.pn17.i.prol = phi ptr [ %.014.i.prol, %.lr.ph.i138.prol ], [ %.pn17.i.ph, %.lr.ph.i138.preheader ]
  %prol.iter721 = phi i64 [ %prol.iter721.next, %.lr.ph.i138.prol ], [ 0, %.lr.ph.i138.preheader ]
  %.013.i.prol = getelementptr inbounds nuw i8, ptr %.pn1618.i.prol, i64 1 ; 3 uses
  %.012.i.prol = getelementptr inbounds nuw i8, ptr %.pn1519.i.prol, i64 1 ; 3 uses
  %.014.i.prol = getelementptr inbounds nuw i8, ptr %.pn17.i.prol, i64 1 ; 3 uses
  %i.kd = load i8, ptr %.014.i.prol, align 1, !tbaa !10, !noalias !313
  %i.ke = load i8, ptr %.012.i.prol, align 1, !tbaa !10, !noalias !313
  %.narrow.i140.prol = sub i8 %i.kd, %i.ke
  store i8 %.narrow.i140.prol, ptr %.013.i.prol, align 1, !tbaa !10, !noalias !313
  %i.kf = add nuw i64 %.020.i139.prol, 1          ; 2 uses
  %prol.iter721.next = add i64 %prol.iter721, 1   ; 2 uses
  %prol.iter721.cmp.not = icmp eq i64 %prol.iter721.next, %xtraiter719
  br i1 %prol.iter721.cmp.not, label %.lr.ph.i138.prol.loopexit, label %.lr.ph.i138.prol, !llvm.loop !277

.lr.ph.i138.prol.loopexit:                        ; preds = %.lr.ph.i138.prol, %.lr.ph.i138.preheader
  %.020.i139.unr = phi i64 [ %.020.i139.ph, %.lr.ph.i138.preheader ], [ %i.kf, %.lr.ph.i138.prol ]
  %.pn1519.i.unr = phi ptr [ %.pn1519.i.ph, %.lr.ph.i138.preheader ], [ %.012.i.prol, %.lr.ph.i138.prol ]
  %.pn1618.i.unr = phi ptr [ %.pn1618.i.ph, %.lr.ph.i138.preheader ], [ %.013.i.prol, %.lr.ph.i138.prol ]
  %.pn17.i.unr = phi ptr [ %.pn17.i.ph, %.lr.ph.i138.preheader ], [ %.014.i.prol, %.lr.ph.i138.prol ]
  %i.kg = sub i64 %.020.i139.ph, %i.e
  %i.kh = icmp ugt i64 %i.kg, -4
  br i1 %i.kh, label %.thread214.thread, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %.lr.ph.i138.prol.loopexit, %.lr.ph.i138
  %.020.i139 = phi i64 [ %i.kq, %.lr.ph.i138 ], [ %.020.i139.unr, %.lr.ph.i138.prol.loopexit ]
  %.pn1519.i = phi ptr [ %.012.i.3, %.lr.ph.i138 ], [ %.pn1519.i.unr, %.lr.ph.i138.prol.loopexit ] ; 4 uses
  %.pn1618.i = phi ptr [ %.013.i.3, %.lr.ph.i138 ], [ %.pn1618.i.unr, %.lr.ph.i138.prol.loopexit ] ; 4 uses
  %.pn17.i = phi ptr [ %.014.i.3, %.lr.ph.i138 ], [ %.pn17.i.unr, %.lr.ph.i138.prol.loopexit ] ; 4 uses
  %.013.i = getelementptr inbounds nuw i8, ptr %.pn1618.i, i64 1
  %.012.i = getelementptr inbounds nuw i8, ptr %.pn1519.i, i64 1
  %.014.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 1
  %i.ki = load i8, ptr %.014.i, align 1, !tbaa !10, !noalias !313
  %i.kj = load i8, ptr %.012.i, align 1, !tbaa !10, !noalias !313
  %.narrow.i140 = sub i8 %i.ki, %i.kj
  store i8 %.narrow.i140, ptr %.013.i, align 1, !tbaa !10, !noalias !313
  %.013.i.1 = getelementptr inbounds nuw i8, ptr %.pn1618.i, i64 2
  %.012.i.1 = getelementptr inbounds nuw i8, ptr %.pn1519.i, i64 2
  %.014.i.1 = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 2
  %i.kk = load i8, ptr %.014.i.1, align 1, !tbaa !10, !noalias !313
  %i.kl = load i8, ptr %.012.i.1, align 1, !tbaa !10, !noalias !313
  %.narrow.i140.1 = sub i8 %i.kk, %i.kl
  store i8 %.narrow.i140.1, ptr %.013.i.1, align 1, !tbaa !10, !noalias !313
  %.013.i.2 = getelementptr inbounds nuw i8, ptr %.pn1618.i, i64 3
  %.012.i.2 = getelementptr inbounds nuw i8, ptr %.pn1519.i, i64 3
  %.014.i.2 = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 3
  %i.km = load i8, ptr %.014.i.2, align 1, !tbaa !10, !noalias !313
  %i.kn = load i8, ptr %.012.i.2, align 1, !tbaa !10, !noalias !313
  %.narrow.i140.2 = sub i8 %i.km, %i.kn
  store i8 %.narrow.i140.2, ptr %.013.i.2, align 1, !tbaa !10, !noalias !313
  %.013.i.3 = getelementptr inbounds nuw i8, ptr %.pn1618.i, i64 4 ; 2 uses
  %.012.i.3 = getelementptr inbounds nuw i8, ptr %.pn1519.i, i64 4 ; 2 uses
  %.014.i.3 = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 4 ; 2 uses
  %i.ko = load i8, ptr %.014.i.3, align 1, !tbaa !10, !noalias !313
  %i.kp = load i8, ptr %.012.i.3, align 1, !tbaa !10, !noalias !313
  %.narrow.i140.3 = sub i8 %i.ko, %i.kp
  store i8 %.narrow.i140.3, ptr %.013.i.3, align 1, !tbaa !10, !noalias !313
  %i.kq = add nuw i64 %.020.i139, 4               ; 2 uses
  %exitcond.not.i141.3 = icmp eq i64 %i.kq, %i.e
  br i1 %exitcond.not.i141.3, label %.thread214.thread, label %.lr.ph.i138, !llvm.loop !278

bb.k:                                             ; preds = %bb.i
  %i.kr = and i32 %.0111, 32
  %.not122 = icmp eq i32 %i.kr, 0
  br i1 %.not122, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !66, !alias.scope !314 ; 5 uses
  store i8 2, ptr %i.kt, align 1, !tbaa !10, !noalias !314
  %.not.i142 = icmp eq i64 %i.e, 0
  br i1 %.not.i142, label %png_setup_up_row.exit, label %.lr.ph.preheader.i143

.lr.ph.preheader.i143:                            ; preds = %bb.l
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !68, !alias.scope !314
  br label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %.lr.ph.i144, %.lr.ph.preheader.i143
  %.pn.pn.i = phi ptr [ %.02234.i, %.lr.ph.i144 ], [ %i.l, %.lr.ph.preheader.i143 ]
  %.pn25.pn.i = phi ptr [ %.02033.i, %.lr.ph.i144 ], [ %i.kv, %.lr.ph.preheader.i143 ]
  %.pn26.pn.i = phi ptr [ %.02132.i, %.lr.ph.i144 ], [ %i.kt, %.lr.ph.preheader.i143 ]
  %.031.i = phi i64 [ %i.lc, %.lr.ph.i144 ], [ 0, %.lr.ph.preheader.i143 ]
  %.01930.i = phi i64 [ %i.le, %.lr.ph.i144 ], [ 0, %.lr.ph.preheader.i143 ]
  %.02132.i = getelementptr inbounds nuw i8, ptr %.pn26.pn.i, i64 1 ; 2 uses
  %.02033.i = getelementptr inbounds nuw i8, ptr %.pn25.pn.i, i64 1 ; 2 uses
  %.02234.i = getelementptr inbounds nuw i8, ptr %.pn.pn.i, i64 1 ; 2 uses
  %i.kw = load i8, ptr %.02234.i, align 1, !tbaa !10, !noalias !314
  %i.kx = load i8, ptr %.02033.i, align 1, !tbaa !10, !noalias !314
  %.narrow.i145 = sub i8 %i.kw, %i.kx             ; 3 uses
  store i8 %.narrow.i145, ptr %.02132.i, align 1, !tbaa !10, !noalias !314
  %i.ky = zext i8 %.narrow.i145 to i64            ; 2 uses
  %i.kz = sub nuw nsw i64 256, %i.ky
  %i.la = icmp slt i8 %.narrow.i145, 0
  %i.lb = select i1 %i.la, i64 %i.kz, i64 %i.ky
  %i.lc = add i64 %i.lb, %.031.i                  ; 3 uses
  %i.ld = icmp ugt i64 %i.lc, %.2
  %i.le = add nuw i64 %.01930.i, 1                ; 2 uses
  %exitcond.not.i146 = icmp eq i64 %i.le, %i.e
  %or.cond.i147 = select i1 %i.ld, i1 true, i1 %exitcond.not.i146
  br i1 %or.cond.i147, label %png_setup_up_row.exit, label %.lr.ph.i144, !llvm.loop !281

png_setup_up_row.exit:                            ; preds = %.lr.ph.i144, %bb.l
  %.1.i = phi i64 [ 0, %bb.l ], [ %i.lc, %.lr.ph.i144 ] ; 3 uses
  %i.lf = icmp ult i64 %.1.i, %.2
  br i1 %i.lf, label %bb.m, label %bb.o

bb.m:                                             ; preds = %png_setup_up_row.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !67 ; 2 uses
  %.not123 = icmp eq ptr %i.lh, null
  br i1 %.not123, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.lh, ptr %i.ks, align 8, !tbaa !66
  store ptr %i.kt, ptr %i.lg, align 8, !tbaa !67
  br label %bb.o

bb.o:                                             ; preds = %png_setup_up_row.exit, %bb.n, %bb.m, %bb.k
  %.3107 = phi ptr [ %.1105, %png_setup_up_row.exit ], [ %.1105, %bb.k ], [ %i.kt, %bb.n ], [ %i.kt, %bb.m ] ; 2 uses
  %.4 = phi i64 [ %.2, %png_setup_up_row.exit ], [ %.2, %bb.k ], [ %.1.i, %bb.n ], [ %.1.i, %bb.m ] ; 4 uses
  %i.li = icmp eq i32 %.0111, 64
  br i1 %i.li, label %bb.p, label %.thread197

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !66, !alias.scope !315 ; 8 uses
  store i8 3, ptr %i.lk, align 1, !tbaa !10, !noalias !315
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !68, !alias.scope !315 ; 3 uses
  %.02029.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 1 ; 7 uses
  %.01830.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 1 ; 7 uses
  %.02231.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 7 uses
  %.not.i148 = icmp eq i32 %i.j, 0
  br i1 %.not.i148, label %.preheader.i154, label %iter.check475

iter.check475:                                    ; preds = %bb.p
  %i.ln = zext nneg i32 %i.j to i64               ; 5 uses
  %min.iters.check455 = icmp ult i8 %i.g, 25
  br i1 %min.iters.check455, label %.lr.ph.i149.preheader, label %vector.memcheck450

vector.memcheck450:                               ; preds = %iter.check475
  %9 = ptrtoaddr ptr %i.lk to i64                 ; 2 uses
  %10 = ptrtoaddr ptr %i.l to i64
  %i.lo = sub i64 %10, %9
  %diff.check451 = icmp ugt i64 %i.lo, -16
  %11 = ptrtoaddr ptr %i.lm to i64
  %i.lp = sub i64 %11, %9
  %diff.check452 = icmp ugt i64 %i.lp, -16
  %conflict.rdx453 = or i1 %diff.check451, %diff.check452
  br i1 %conflict.rdx453, label %.lr.ph.i149.preheader, label %vector.main.loop.iter.check456

vector.main.loop.iter.check456:                   ; preds = %vector.memcheck450
  %min.iters.check457 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check457, label %vec.epilog.ph479, label %vector.ph458

vector.ph458:                                     ; preds = %vector.main.loop.iter.check456
  %i.lq = and i64 %i.ln, 12
  %n.vec459 = and i64 %i.ln, 48                   ; 7 uses
  %i.lr = getelementptr i8, ptr %.02231.i, i64 %n.vec459 ; 2 uses
  %i.ls = getelementptr i8, ptr %.01830.i, i64 %n.vec459 ; 2 uses
  %i.lt = getelementptr i8, ptr %.02029.i, i64 %n.vec459 ; 2 uses
  %i.lu = trunc nuw nsw i64 %n.vec459 to i32
  %wide.load465 = load <16 x i8>, ptr %.02231.i, align 1, !tbaa !10, !noalias !315
  %wide.load466 = load <16 x i8>, ptr %.01830.i, align 1, !tbaa !10, !noalias !315
  %i.lv = lshr <16 x i8> %wide.load466, splat (i8 1)
  %i.lw = sub <16 x i8> %wide.load465, %i.lv
  store <16 x i8> %i.lw, ptr %.02029.i, align 1, !tbaa !10, !noalias !315
  %i.lx = icmp eq i64 %n.vec459, 16
  br i1 %i.lx, label %middle.block468, label %vector.body460.1

vector.body460.1:                                 ; preds = %vector.ph458
  %next.gep462.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep463.1 = getelementptr i8, ptr %i.lm, i64 17
  %next.gep464.1 = getelementptr i8, ptr %i.lk, i64 17
  %wide.load465.1 = load <16 x i8>, ptr %next.gep462.1, align 1, !tbaa !10, !noalias !315
  %wide.load466.1 = load <16 x i8>, ptr %next.gep463.1, align 1, !tbaa !10, !noalias !315
  %i.ly = lshr <16 x i8> %wide.load466.1, splat (i8 1)
  %i.lz = sub <16 x i8> %wide.load465.1, %i.ly
  store <16 x i8> %i.lz, ptr %next.gep464.1, align 1, !tbaa !10, !noalias !315
  br label %middle.block468

middle.block468:                                  ; preds = %vector.body460.1, %vector.ph458
  %cmp.n469 = icmp eq i64 %n.vec459, %i.ln
  br i1 %cmp.n469, label %.preheader.i154, label %vec.epilog.iter.check477

vec.epilog.iter.check477:                         ; preds = %middle.block468
  %min.epilog.iters.check478 = icmp eq i64 %i.lq, 0
  br i1 %min.epilog.iters.check478, label %.lr.ph.i149.preheader, label %vec.epilog.ph479, !prof !310

vec.epilog.ph479:                                 ; preds = %vector.main.loop.iter.check456, %vec.epilog.iter.check477
  %vec.epilog.resume.val470 = phi i64 [ %n.vec459, %vec.epilog.iter.check477 ], [ 0, %vector.main.loop.iter.check456 ]
  %n.vec480 = and i64 %i.ln, 60                   ; 6 uses
  %i.ma = getelementptr i8, ptr %.02231.i, i64 %n.vec480 ; 2 uses
  %i.mb = getelementptr i8, ptr %.01830.i, i64 %n.vec480 ; 2 uses
  %i.mc = getelementptr i8, ptr %.02029.i, i64 %n.vec480 ; 2 uses
  %i.md = trunc nuw nsw i64 %n.vec480 to i32
  br label %vec.epilog.vector.body481

vec.epilog.vector.body481:                        ; preds = %vec.epilog.vector.body481, %vec.epilog.ph479
  %index482 = phi i64 [ %vec.epilog.resume.val470, %vec.epilog.ph479 ], [ %index.next488, %vec.epilog.vector.body481 ] ; 4 uses
  %next.gep483 = getelementptr i8, ptr %.02231.i, i64 %index482
  %next.gep484 = getelementptr i8, ptr %.01830.i, i64 %index482
  %next.gep485 = getelementptr i8, ptr %.02029.i, i64 %index482
  %wide.load486 = load <4 x i8>, ptr %next.gep483, align 1, !tbaa !10, !noalias !315
  %wide.load487 = load <4 x i8>, ptr %next.gep484, align 1, !tbaa !10, !noalias !315
  %i.me = lshr <4 x i8> %wide.load487, splat (i8 1)
  %i.mf = sub <4 x i8> %wide.load486, %i.me
  store <4 x i8> %i.mf, ptr %next.gep485, align 1, !tbaa !10, !noalias !315
  %index.next488 = add nuw i64 %index482, 4       ; 2 uses
  %i.mg = icmp eq i64 %index.next488, %n.vec480
  br i1 %i.mg, label %vec.epilog.middle.block489, label %vec.epilog.vector.body481, !llvm.loop !284

vec.epilog.middle.block489:                       ; preds = %vec.epilog.vector.body481
  %cmp.n490 = icmp eq i64 %n.vec480, %i.ln
  br i1 %cmp.n490, label %.preheader.i154, label %.lr.ph.i149.preheader

.lr.ph.i149.preheader:                            ; preds = %iter.check475, %vector.memcheck450, %vec.epilog.iter.check477, %vec.epilog.middle.block489
  %.02235.i.ph = phi ptr [ %.02231.i, %iter.check475 ], [ %.02231.i, %vector.memcheck450 ], [ %i.lr, %vec.epilog.iter.check477 ], [ %i.ma, %vec.epilog.middle.block489 ] ; 2 uses
  %.01834.i.ph = phi ptr [ %.01830.i, %iter.check475 ], [ %.01830.i, %vector.memcheck450 ], [ %i.ls, %vec.epilog.iter.check477 ], [ %i.mb, %vec.epilog.middle.block489 ] ; 2 uses
  %.02033.i150.ph = phi ptr [ %.02029.i, %iter.check475 ], [ %.02029.i, %vector.memcheck450 ], [ %i.lt, %vec.epilog.iter.check477 ], [ %i.mc, %vec.epilog.middle.block489 ] ; 2 uses
  %.032.i.ph = phi i32 [ 0, %iter.check475 ], [ 0, %vector.memcheck450 ], [ %i.lu, %vec.epilog.iter.check477 ], [ %i.md, %vec.epilog.middle.block489 ] ; 4 uses
  %i.mh = sub nsw i32 %i.j, %.032.i.ph
  %xtraiter716 = and i32 %i.mh, 3                 ; 2 uses
  %lcmp.mod717.not = icmp eq i32 %xtraiter716, 0
  br i1 %lcmp.mod717.not, label %.lr.ph.i149.prol.loopexit, label %.lr.ph.i149.prol

.lr.ph.i149.prol:                                 ; preds = %.lr.ph.i149.preheader, %.lr.ph.i149.prol
  %.02235.i.prol = phi ptr [ %.022.i152.prol, %.lr.ph.i149.prol ], [ %.02235.i.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.01834.i.prol = phi ptr [ %.018.i.prol, %.lr.ph.i149.prol ], [ %.01834.i.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.02033.i150.prol = phi ptr [ %.020.i151.prol, %.lr.ph.i149.prol ], [ %.02033.i150.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.032.i.prol = phi i32 [ %i.ml, %.lr.ph.i149.prol ], [ %.032.i.ph, %.lr.ph.i149.preheader ]
  %prol.iter718 = phi i32 [ %prol.iter718.next, %.lr.ph.i149.prol ], [ 0, %.lr.ph.i149.preheader ]
  %i.mi = load i8, ptr %.02235.i.prol, align 1, !tbaa !10, !noalias !315
  %i.mj = load i8, ptr %.01834.i.prol, align 1, !tbaa !10, !noalias !315
  %i.mk = lshr i8 %i.mj, 1
  %.narrow27.i.prol = sub i8 %i.mi, %i.mk
  store i8 %.narrow27.i.prol, ptr %.02033.i150.prol, align 1, !tbaa !10, !noalias !315
  %i.ml = add nuw nsw i32 %.032.i.prol, 1         ; 2 uses
  %.020.i151.prol = getelementptr inbounds nuw i8, ptr %.02033.i150.prol, i64 1 ; 3 uses
  %.018.i.prol = getelementptr inbounds nuw i8, ptr %.01834.i.prol, i64 1 ; 3 uses
  %.022.i152.prol = getelementptr inbounds nuw i8, ptr %.02235.i.prol, i64 1 ; 3 uses
  %prol.iter718.next = add i32 %prol.iter718, 1   ; 2 uses
  %prol.iter718.cmp.not = icmp eq i32 %prol.iter718.next, %xtraiter716
  br i1 %prol.iter718.cmp.not, label %.lr.ph.i149.prol.loopexit, label %.lr.ph.i149.prol, !llvm.loop !285

.lr.ph.i149.prol.loopexit:                        ; preds = %.lr.ph.i149.prol, %.lr.ph.i149.preheader
  %.020.i151.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.020.i151.prol, %.lr.ph.i149.prol ]
  %.018.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.018.i.prol, %.lr.ph.i149.prol ]
  %.022.i152.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.022.i152.prol, %.lr.ph.i149.prol ]
  %.02235.i.unr = phi ptr [ %.02235.i.ph, %.lr.ph.i149.preheader ], [ %.022.i152.prol, %.lr.ph.i149.prol ]
  %.01834.i.unr = phi ptr [ %.01834.i.ph, %.lr.ph.i149.preheader ], [ %.018.i.prol, %.lr.ph.i149.prol ]
  %.02033.i150.unr = phi ptr [ %.02033.i150.ph, %.lr.ph.i149.preheader ], [ %.020.i151.prol, %.lr.ph.i149.prol ]
  %.032.i.unr = phi i32 [ %.032.i.ph, %.lr.ph.i149.preheader ], [ %i.ml, %.lr.ph.i149.prol ]
  %i.mm = sub nsw i32 %.032.i.ph, %i.j
  %i.mn = icmp ugt i32 %i.mm, -4
  br i1 %i.mn, label %.preheader.i154, label %.lr.ph.i149

.preheader.i154:                                  ; preds = %.lr.ph.i149.prol.loopexit, %.lr.ph.i149, %middle.block468, %vec.epilog.middle.block489, %bb.p
  %.020.lcssa.i155 = phi ptr [ %.02029.i, %bb.p ], [ %i.mc, %vec.epilog.middle.block489 ], [ %i.lt, %middle.block468 ], [ %.020.i151.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.020.i151.3, %.lr.ph.i149 ] ; 8 uses
  %.018.lcssa.i = phi ptr [ %.01830.i, %bb.p ], [ %i.mb, %vec.epilog.middle.block489 ], [ %i.ls, %middle.block468 ], [ %.018.i.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.018.i.3, %.lr.ph.i149 ] ; 8 uses
  %.022.lcssa.i156 = phi ptr [ %.02231.i, %bb.p ], [ %i.ma, %vec.epilog.middle.block489 ], [ %i.lr, %middle.block468 ], [ %.022.i152.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.022.i152.3, %.lr.ph.i149 ] ; 8 uses
  %i.mo = zext nneg i32 %i.j to i64               ; 3 uses
  %i.mp = icmp ugt i64 %i.e, %i.mo
  br i1 %i.mp, label %iter.check531, label %.thread214.thread

iter.check531:                                    ; preds = %.preheader.i154
  %i.mq = sub nuw i64 %i.e, %i.mo                 ; 7 uses
  %min.iters.check505 = icmp ult i64 %i.mq, 8
  br i1 %min.iters.check505, label %.lr.ph44.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check531
  %i.mr = xor i64 %i.mo, -1
  %i.ms = add i64 %i.e, %i.mr                     ; 2 uses
  %i.mt = trunc i64 %i.ms to i32
  %i.mu = sub nuw nsw i32 -2, %i.j
  %i.mv = icmp ult i32 %i.mu, %i.mt
  %i.mw = icmp ugt i64 %i.ms, 4294967295
  %i.mx = or i1 %i.mv, %i.mw
  br i1 %i.mx, label %.lr.ph44.i.preheader, label %vector.memcheck495

vector.memcheck495:                               ; preds = %vector.scevcheck
  %12 = ptrtoaddr ptr %.020.lcssa.i155 to i64     ; 3 uses
  %13 = ptrtoaddr ptr %i.l to i64
  %i.my = sub i64 %12, %13
  %i.mz = add i64 %i.my, -2
  %diff.check497 = icmp ult i64 %i.mz, 31
  %14 = ptrtoaddr ptr %.022.lcssa.i156 to i64
  %i.na = sub i64 %14, %12
  %diff.check499 = icmp ugt i64 %i.na, -32
  %conflict.rdx500 = or i1 %diff.check497, %diff.check499
  %15 = ptrtoaddr ptr %.018.lcssa.i to i64
  %i.nb = sub i64 %15, %12
  %diff.check502 = icmp ugt i64 %i.nb, -32
  %conflict.rdx503 = or i1 %conflict.rdx500, %diff.check502
  br i1 %conflict.rdx503, label %.lr.ph44.i.preheader, label %vector.main.loop.iter.check506

vector.main.loop.iter.check506:                   ; preds = %vector.memcheck495
  %min.iters.check507 = icmp ult i64 %i.mq, 32
  br i1 %min.iters.check507, label %vec.epilog.ph535, label %vector.ph508

vector.ph508:                                     ; preds = %vector.main.loop.iter.check506
  %i.nc = and i64 %i.mq, 24
  %n.vec509 = and i64 %i.mq, -32                  ; 8 uses
  %i.nd = trunc i64 %n.vec509 to i32
  %i.ne = add i32 %i.j, %i.nd
  %i.nf = getelementptr i8, ptr %i.l, i64 %n.vec509
  %i.ng = getelementptr i8, ptr %.018.lcssa.i, i64 %n.vec509
  %i.nh = getelementptr i8, ptr %.020.lcssa.i155, i64 %n.vec509
  %i.ni = getelementptr i8, ptr %.022.lcssa.i156, i64 %n.vec509
  br label %vector.body510

vector.body510:                                   ; preds = %vector.ph508, %vector.body510
  %index511 = phi i64 [ 0, %vector.ph508 ], [ %index.next522, %vector.body510 ] ; 5 uses
  %next.gep512 = getelementptr i8, ptr %i.l, i64 %index511 ; 2 uses
  %next.gep513 = getelementptr i8, ptr %.018.lcssa.i, i64 %index511 ; 2 uses
  %next.gep514 = getelementptr i8, ptr %.020.lcssa.i155, i64 %index511 ; 2 uses
  %next.gep515 = getelementptr i8, ptr %.022.lcssa.i156, i64 %index511 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %next.gep512, i64 1
  %i.nk = getelementptr i8, ptr %next.gep515, i64 16
  %wide.load516 = load <16 x i8>, ptr %next.gep515, align 1, !tbaa !10, !noalias !315
  %wide.load517 = load <16 x i8>, ptr %i.nk, align 1, !tbaa !10, !noalias !315
  %i.nl = getelementptr i8, ptr %next.gep513, i64 16
  %wide.load518 = load <16 x i8>, ptr %next.gep513, align 1, !tbaa !10, !noalias !315
  %wide.load519 = load <16 x i8>, ptr %i.nl, align 1, !tbaa !10, !noalias !315
  %i.nm = zext <16 x i8> %wide.load518 to <16 x i16>
  %i.nn = zext <16 x i8> %wide.load519 to <16 x i16>
  %i.no = getelementptr inbounds nuw i8, ptr %next.gep512, i64 17
  %wide.load520 = load <16 x i8>, ptr %i.nj, align 1, !tbaa !10, !noalias !315
  %wide.load521 = load <16 x i8>, ptr %i.no, align 1, !tbaa !10, !noalias !315
  %i.np = zext <16 x i8> %wide.load520 to <16 x i16>
  %i.nq = zext <16 x i8> %wide.load521 to <16 x i16>
  %i.nr = add nuw nsw <16 x i16> %i.np, %i.nm
  %i.ns = add nuw nsw <16 x i16> %i.nq, %i.nn
  %i.nt = lshr <16 x i16> %i.nr, splat (i16 1)
  %i.nu = lshr <16 x i16> %i.ns, splat (i16 1)
  %i.nv = trunc nuw <16 x i16> %i.nt to <16 x i8>
  %i.nw = trunc nuw <16 x i16> %i.nu to <16 x i8>
  %i.nx = sub <16 x i8> %wide.load516, %i.nv
  %i.ny = sub <16 x i8> %wide.load517, %i.nw
  %i.nz = getelementptr i8, ptr %next.gep514, i64 16
  store <16 x i8> %i.nx, ptr %next.gep514, align 1, !tbaa !10, !noalias !315
  store <16 x i8> %i.ny, ptr %i.nz, align 1, !tbaa !10, !noalias !315
  %index.next522 = add nuw i64 %index511, 32      ; 2 uses
  %i.oa = icmp eq i64 %index.next522, %n.vec509
  br i1 %i.oa, label %middle.block523, label %vector.body510, !llvm.loop !286

middle.block523:                                  ; preds = %vector.body510
  %cmp.n524 = icmp eq i64 %i.mq, %n.vec509
  br i1 %cmp.n524, label %.thread214.thread, label %vec.epilog.iter.check533

vec.epilog.iter.check533:                         ; preds = %middle.block523
  %min.epilog.iters.check534 = icmp eq i64 %i.nc, 0
  br i1 %min.epilog.iters.check534, label %.lr.ph44.i.preheader, label %vec.epilog.ph535, !prof !316

vec.epilog.ph535:                                 ; preds = %vector.main.loop.iter.check506, %vec.epilog.iter.check533
  %vec.epilog.resume.val525 = phi i64 [ %n.vec509, %vec.epilog.iter.check533 ], [ 0, %vector.main.loop.iter.check506 ]
  %n.vec536 = and i64 %i.mq, -8                   ; 7 uses
  %i.ob = trunc i64 %n.vec536 to i32
  %i.oc = add i32 %i.j, %i.ob
  %i.od = getelementptr i8, ptr %i.l, i64 %n.vec536
  %i.oe = getelementptr i8, ptr %.018.lcssa.i, i64 %n.vec536
  %i.of = getelementptr i8, ptr %.020.lcssa.i155, i64 %n.vec536
  %i.og = getelementptr i8, ptr %.022.lcssa.i156, i64 %n.vec536
  br label %vec.epilog.vector.body537

vec.epilog.vector.body537:                        ; preds = %vec.epilog.vector.body537, %vec.epilog.ph535
  %index538 = phi i64 [ %vec.epilog.resume.val525, %vec.epilog.ph535 ], [ %index.next546, %vec.epilog.vector.body537 ] ; 5 uses
  %next.gep539 = getelementptr i8, ptr %i.l, i64 %index538
  %next.gep540 = getelementptr i8, ptr %.018.lcssa.i, i64 %index538
  %next.gep541 = getelementptr i8, ptr %.020.lcssa.i155, i64 %index538
  %next.gep542 = getelementptr i8, ptr %.022.lcssa.i156, i64 %index538
  %i.oh = getelementptr inbounds nuw i8, ptr %next.gep539, i64 1
  %wide.load543 = load <8 x i8>, ptr %next.gep542, align 1, !tbaa !10, !noalias !315
  %wide.load544 = load <8 x i8>, ptr %next.gep540, align 1, !tbaa !10, !noalias !315
  %i.oi = zext <8 x i8> %wide.load544 to <8 x i16>
  %wide.load545 = load <8 x i8>, ptr %i.oh, align 1, !tbaa !10, !noalias !315
  %i.oj = zext <8 x i8> %wide.load545 to <8 x i16>
  %i.ok = add nuw nsw <8 x i16> %i.oj, %i.oi
  %i.ol = lshr <8 x i16> %i.ok, splat (i16 1)
  %i.om = trunc nuw <8 x i16> %i.ol to <8 x i8>
  %i.on = sub <8 x i8> %wide.load543, %i.om
  store <8 x i8> %i.on, ptr %next.gep541, align 1, !tbaa !10, !noalias !315
  %index.next546 = add nuw i64 %index538, 8       ; 2 uses
  %i.oo = icmp eq i64 %index.next546, %n.vec536
  br i1 %i.oo, label %vec.epilog.middle.block547, label %vec.epilog.vector.body537, !llvm.loop !287

vec.epilog.middle.block547:                       ; preds = %vec.epilog.vector.body537
  %cmp.n548 = icmp eq i64 %i.mq, %n.vec536
  br i1 %cmp.n548, label %.thread214.thread, label %.lr.ph44.i.preheader

.lr.ph44.i.preheader:                             ; preds = %iter.check531, %vector.scevcheck, %vector.memcheck495, %vec.epilog.iter.check533, %vec.epilog.middle.block547
  %.143.i.ph = phi i32 [ %i.j, %iter.check531 ], [ %i.j, %vector.scevcheck ], [ %i.j, %vector.memcheck495 ], [ %i.ne, %vec.epilog.iter.check533 ], [ %i.oc, %vec.epilog.middle.block547 ]
  %.pn42.i.ph = phi ptr [ %i.l, %iter.check531 ], [ %i.l, %vector.scevcheck ], [ %i.l, %vector.memcheck495 ], [ %i.nf, %vec.epilog.iter.check533 ], [ %i.od, %vec.epilog.middle.block547 ]
  %.11941.i.ph = phi ptr [ %.018.lcssa.i, %iter.check531 ], [ %.018.lcssa.i, %vector.scevcheck ], [ %.018.lcssa.i, %vector.memcheck495 ], [ %i.ng, %vec.epilog.iter.check533 ], [ %i.oe, %vec.epilog.middle.block547 ]
  %.12140.i.ph = phi ptr [ %.020.lcssa.i155, %iter.check531 ], [ %.020.lcssa.i155, %vector.scevcheck ], [ %.020.lcssa.i155, %vector.memcheck495 ], [ %i.nh, %vec.epilog.iter.check533 ], [ %i.of, %vec.epilog.middle.block547 ]
  %.12339.i.ph = phi ptr [ %.022.lcssa.i156, %iter.check531 ], [ %.022.lcssa.i156, %vector.scevcheck ], [ %.022.lcssa.i156, %vector.memcheck495 ], [ %i.ni, %vec.epilog.iter.check533 ], [ %i.og, %vec.epilog.middle.block547 ]
  br label %.lr.ph44.i

.lr.ph.i149:                                      ; preds = %.lr.ph.i149.prol.loopexit, %.lr.ph.i149
  %.02235.i = phi ptr [ %.022.i152.3, %.lr.ph.i149 ], [ %.02235.i.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.01834.i = phi ptr [ %.018.i.3, %.lr.ph.i149 ], [ %.01834.i.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.02033.i150 = phi ptr [ %.020.i151.3, %.lr.ph.i149 ], [ %.02033.i150.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.032.i = phi i32 [ %i.pb, %.lr.ph.i149 ], [ %.032.i.unr, %.lr.ph.i149.prol.loopexit ]
  %i.op = load i8, ptr %.02235.i, align 1, !tbaa !10, !noalias !315
  %i.oq = load i8, ptr %.01834.i, align 1, !tbaa !10, !noalias !315
  %i.or = lshr i8 %i.oq, 1
  %.narrow27.i = sub i8 %i.op, %i.or
  store i8 %.narrow27.i, ptr %.02033.i150, align 1, !tbaa !10, !noalias !315
  %.020.i151 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 1
  %.018.i = getelementptr inbounds nuw i8, ptr %.01834.i, i64 1
  %.022.i152 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 1
  %i.os = load i8, ptr %.022.i152, align 1, !tbaa !10, !noalias !315
  %i.ot = load i8, ptr %.018.i, align 1, !tbaa !10, !noalias !315
  %i.ou = lshr i8 %i.ot, 1
  %.narrow27.i.1 = sub i8 %i.os, %i.ou
  store i8 %.narrow27.i.1, ptr %.020.i151, align 1, !tbaa !10, !noalias !315
  %.020.i151.1 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 2
  %.018.i.1 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 2
  %.022.i152.1 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 2
  %i.ov = load i8, ptr %.022.i152.1, align 1, !tbaa !10, !noalias !315
  %i.ow = load i8, ptr %.018.i.1, align 1, !tbaa !10, !noalias !315
  %i.ox = lshr i8 %i.ow, 1
  %.narrow27.i.2 = sub i8 %i.ov, %i.ox
  store i8 %.narrow27.i.2, ptr %.020.i151.1, align 1, !tbaa !10, !noalias !315
  %.020.i151.2 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 3
  %.018.i.2 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 3
  %.022.i152.2 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 3
  %i.oy = load i8, ptr %.022.i152.2, align 1, !tbaa !10, !noalias !315
  %i.oz = load i8, ptr %.018.i.2, align 1, !tbaa !10, !noalias !315
  %i.pa = lshr i8 %i.oz, 1
  %.narrow27.i.3 = sub i8 %i.oy, %i.pa
  store i8 %.narrow27.i.3, ptr %.020.i151.2, align 1, !tbaa !10, !noalias !315
  %i.pb = add nuw nsw i32 %.032.i, 4              ; 2 uses
  %.020.i151.3 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 4 ; 2 uses
  %.018.i.3 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 4 ; 2 uses
  %.022.i152.3 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 4 ; 2 uses
  %exitcond.not.i153.3 = icmp eq i32 %i.pb, %i.j
  br i1 %exitcond.not.i153.3, label %.preheader.i154, label %.lr.ph.i149, !llvm.loop !288

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i
  %.143.i = phi i32 [ %i.pm, %.lr.ph44.i ], [ %.143.i.ph, %.lr.ph44.i.preheader ]
  %.pn42.i = phi ptr [ %.017.i, %.lr.ph44.i ], [ %.pn42.i.ph, %.lr.ph44.i.preheader ]
  %.11941.i = phi ptr [ %i.pe, %.lr.ph44.i ], [ %.11941.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.12140.i = phi ptr [ %i.pl, %.lr.ph44.i ], [ %.12140.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.12339.i = phi ptr [ %i.pc, %.lr.ph44.i ], [ %.12339.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.017.i = getelementptr inbounds nuw i8, ptr %.pn42.i, i64 1 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.12339.i, i64 1
  %i.pd = load i8, ptr %.12339.i, align 1, !tbaa !10, !noalias !315
  %i.pe = getelementptr inbounds nuw i8, ptr %.11941.i, i64 1
  %i.pf = load i8, ptr %.11941.i, align 1, !tbaa !10, !noalias !315
  %i.pg = zext i8 %i.pf to i16
  %i.ph = load i8, ptr %.017.i, align 1, !tbaa !10, !noalias !315
  %i.pi = zext i8 %i.ph to i16
  %i.pj = add nuw nsw i16 %i.pi, %i.pg
  %i.pk = lshr i16 %i.pj, 1
  %.tr.i = trunc nuw i16 %i.pk to i8
  %.narrow.i157 = sub i8 %i.pd, %.tr.i
  %i.pl = getelementptr inbounds nuw i8, ptr %.12140.i, i64 1
  store i8 %.narrow.i157, ptr %.12140.i, align 1, !tbaa !10, !noalias !315
  %i.pm = add i32 %.143.i, 1                      ; 2 uses
  %i.pn = zext i32 %i.pm to i64
  %i.po = icmp ugt i64 %i.e, %i.pn
  br i1 %i.po, label %.lr.ph44.i, label %.thread214.thread, !llvm.loop !289

.thread197:                                       ; preds = %bb.o
  %i.pp = and i32 %.0111, 64
  %.not124 = icmp eq i32 %i.pp, 0
  br i1 %.not124, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.thread197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !66, !alias.scope !317 ; 21 uses
  store i8 3, ptr %i.pr, align 1, !tbaa !10, !noalias !317
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !68, !alias.scope !317 ; 17 uses
  %.03344.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 1 ; 5 uses
  %.03145.i = getelementptr inbounds nuw i8, ptr %i.pt, i64 1 ; 5 uses
  %.03546.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 5 uses
  %.not.i158 = icmp eq i32 %i.j, 0
  br i1 %.not.i158, label %.preheader.i164, label %.lr.ph.i159.preheader

.lr.ph.i159.preheader:                            ; preds = %bb.q
  %i.pu = zext nneg i32 %i.j to i64               ; 2 uses
  %min.iters.check300 = icmp ult i8 %i.g, 41
  br i1 %min.iters.check300, label %.lr.ph.i159.preheader696, label %vector.memcheck296

vector.memcheck296:                               ; preds = %.lr.ph.i159.preheader
  %16 = ptrtoaddr ptr %i.pr to i64                ; 2 uses
  %17 = ptrtoaddr ptr %i.l to i64
  %i.pv = sub i64 %17, %16
  %diff.check297 = icmp ugt i64 %i.pv, -4
  %18 = ptrtoaddr ptr %i.pt to i64
  %i.pw = sub i64 %18, %16
  %diff.check298 = icmp ugt i64 %i.pw, -4
  %conflict.rdx = or i1 %diff.check297, %diff.check298
  br i1 %conflict.rdx, label %.lr.ph.i159.preheader696, label %vector.ph301

vector.ph301:                                     ; preds = %vector.memcheck296
  %n.vec302 = and i64 %i.pu, 60                   ; 12 uses
  %i.px = getelementptr i8, ptr %.03546.i, i64 %n.vec302 ; 2 uses
  %i.py = getelementptr i8, ptr %.03145.i, i64 %n.vec302 ; 2 uses
  %i.pz = getelementptr i8, ptr %.03344.i, i64 %n.vec302 ; 2 uses
  %i.qa = trunc nuw nsw i64 %n.vec302 to i32
  %i.qb = getelementptr i8, ptr %i.l, i64 3
  %wide.load310 = load <2 x i8>, ptr %.03546.i, align 1, !tbaa !10, !noalias !317
  %wide.load311 = load <2 x i8>, ptr %i.qb, align 1, !tbaa !10, !noalias !317
  %i.qc = getelementptr i8, ptr %i.pt, i64 3
  %wide.load312 = load <2 x i8>, ptr %.03145.i, align 1, !tbaa !10, !noalias !317
  %wide.load313 = load <2 x i8>, ptr %i.qc, align 1, !tbaa !10, !noalias !317
  %i.qd = lshr <2 x i8> %wide.load312, splat (i8 1)
  %i.qe = lshr <2 x i8> %wide.load313, splat (i8 1)
  %i.qf = sub <2 x i8> %wide.load310, %i.qd       ; 3 uses
  %i.qg = sub <2 x i8> %wide.load311, %i.qe       ; 3 uses
  %i.qh = getelementptr i8, ptr %i.pr, i64 3
  store <2 x i8> %i.qf, ptr %.03344.i, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.qg, ptr %i.qh, align 1, !tbaa !10, !noalias !317
  %i.qi = zext <2 x i8> %i.qf to <2 x i64>        ; 2 uses
  %i.qj = zext <2 x i8> %i.qg to <2 x i64>        ; 2 uses
  %i.qk = sub nuw nsw <2 x i64> splat (i64 256), %i.qi
  %i.ql = sub nuw nsw <2 x i64> splat (i64 256), %i.qj
  %i.qm = icmp slt <2 x i8> %i.qf, zeroinitializer
  %i.qn = icmp slt <2 x i8> %i.qg, zeroinitializer
  %i.qo = select <2 x i1> %i.qm, <2 x i64> %i.qk, <2 x i64> %i.qi ; 2 uses
  %i.qp = select <2 x i1> %i.qn, <2 x i64> %i.ql, <2 x i64> %i.qj ; 2 uses
  %i.qq = icmp eq i64 %n.vec302, 4
  br i1 %i.qq, label %middle.block315, label %vector.body303.1

vector.body303.1:                                 ; preds = %vector.ph301
  %next.gep307.1 = getelementptr i8, ptr %i.l, i64 5
  %next.gep308.1 = getelementptr i8, ptr %i.pt, i64 5
  %next.gep309.1 = getelementptr i8, ptr %i.pr, i64 5
  %i.qr = getelementptr i8, ptr %i.l, i64 7
  %wide.load310.1 = load <2 x i8>, ptr %next.gep307.1, align 1, !tbaa !10, !noalias !317
  %wide.load311.1 = load <2 x i8>, ptr %i.qr, align 1, !tbaa !10, !noalias !317
  %i.qs = getelementptr i8, ptr %i.pt, i64 7
  %wide.load312.1 = load <2 x i8>, ptr %next.gep308.1, align 1, !tbaa !10, !noalias !317
  %wide.load313.1 = load <2 x i8>, ptr %i.qs, align 1, !tbaa !10, !noalias !317
  %i.qt = lshr <2 x i8> %wide.load312.1, splat (i8 1)
  %i.qu = lshr <2 x i8> %wide.load313.1, splat (i8 1)
  %i.qv = sub <2 x i8> %wide.load310.1, %i.qt     ; 3 uses
  %i.qw = sub <2 x i8> %wide.load311.1, %i.qu     ; 3 uses
  %i.qx = getelementptr i8, ptr %i.pr, i64 7
  store <2 x i8> %i.qv, ptr %next.gep309.1, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.qw, ptr %i.qx, align 1, !tbaa !10, !noalias !317
  %i.qy = zext <2 x i8> %i.qv to <2 x i64>        ; 2 uses
  %i.qz = zext <2 x i8> %i.qw to <2 x i64>        ; 2 uses
  %i.ra = sub nuw nsw <2 x i64> splat (i64 256), %i.qy
  %i.rb = sub nuw nsw <2 x i64> splat (i64 256), %i.qz
  %i.rc = icmp slt <2 x i8> %i.qv, zeroinitializer
  %i.rd = icmp slt <2 x i8> %i.qw, zeroinitializer
  %i.re = select <2 x i1> %i.rc, <2 x i64> %i.ra, <2 x i64> %i.qy
  %i.rf = select <2 x i1> %i.rd, <2 x i64> %i.rb, <2 x i64> %i.qz
  %i.rg = add nuw nsw <2 x i64> %i.re, %i.qo      ; 2 uses
  %i.rh = add nuw nsw <2 x i64> %i.rf, %i.qp      ; 2 uses
  %i.ri = icmp eq i64 %n.vec302, 8
  br i1 %i.ri, label %middle.block315, label %vector.body303.2

vector.body303.2:                                 ; preds = %vector.body303.1
  %next.gep307.2 = getelementptr i8, ptr %i.l, i64 9
  %next.gep308.2 = getelementptr i8, ptr %i.pt, i64 9
  %next.gep309.2 = getelementptr i8, ptr %i.pr, i64 9
  %i.rj = getelementptr i8, ptr %i.l, i64 11
  %wide.load310.2 = load <2 x i8>, ptr %next.gep307.2, align 1, !tbaa !10, !noalias !317
  %wide.load311.2 = load <2 x i8>, ptr %i.rj, align 1, !tbaa !10, !noalias !317
  %i.rk = getelementptr i8, ptr %i.pt, i64 11
  %wide.load312.2 = load <2 x i8>, ptr %next.gep308.2, align 1, !tbaa !10, !noalias !317
  %wide.load313.2 = load <2 x i8>, ptr %i.rk, align 1, !tbaa !10, !noalias !317
  %i.rl = lshr <2 x i8> %wide.load312.2, splat (i8 1)
  %i.rm = lshr <2 x i8> %wide.load313.2, splat (i8 1)
  %i.rn = sub <2 x i8> %wide.load310.2, %i.rl     ; 3 uses
  %i.ro = sub <2 x i8> %wide.load311.2, %i.rm     ; 3 uses
  %i.rp = getelementptr i8, ptr %i.pr, i64 11
  store <2 x i8> %i.rn, ptr %next.gep309.2, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.ro, ptr %i.rp, align 1, !tbaa !10, !noalias !317
  %i.rq = zext <2 x i8> %i.rn to <2 x i64>        ; 2 uses
  %i.rr = zext <2 x i8> %i.ro to <2 x i64>        ; 2 uses
  %i.rs = sub nuw nsw <2 x i64> splat (i64 256), %i.rq
  %i.rt = sub nuw nsw <2 x i64> splat (i64 256), %i.rr
  %i.ru = icmp slt <2 x i8> %i.rn, zeroinitializer
  %i.rv = icmp slt <2 x i8> %i.ro, zeroinitializer
  %i.rw = select <2 x i1> %i.ru, <2 x i64> %i.rs, <2 x i64> %i.rq
  %i.rx = select <2 x i1> %i.rv, <2 x i64> %i.rt, <2 x i64> %i.rr
  %i.ry = add nuw nsw <2 x i64> %i.rw, %i.rg      ; 2 uses
  %i.rz = add nuw nsw <2 x i64> %i.rx, %i.rh      ; 2 uses
  %i.sa = icmp eq i64 %n.vec302, 12
  br i1 %i.sa, label %middle.block315, label %vector.body303.3

vector.body303.3:                                 ; preds = %vector.body303.2
  %next.gep307.3 = getelementptr i8, ptr %i.l, i64 13
  %next.gep308.3 = getelementptr i8, ptr %i.pt, i64 13
  %next.gep309.3 = getelementptr i8, ptr %i.pr, i64 13
  %i.sb = getelementptr i8, ptr %i.l, i64 15
  %wide.load310.3 = load <2 x i8>, ptr %next.gep307.3, align 1, !tbaa !10, !noalias !317
  %wide.load311.3 = load <2 x i8>, ptr %i.sb, align 1, !tbaa !10, !noalias !317
  %i.sc = getelementptr i8, ptr %i.pt, i64 15
  %wide.load312.3 = load <2 x i8>, ptr %next.gep308.3, align 1, !tbaa !10, !noalias !317
  %wide.load313.3 = load <2 x i8>, ptr %i.sc, align 1, !tbaa !10, !noalias !317
  %i.sd = lshr <2 x i8> %wide.load312.3, splat (i8 1)
  %i.se = lshr <2 x i8> %wide.load313.3, splat (i8 1)
  %i.sf = sub <2 x i8> %wide.load310.3, %i.sd     ; 3 uses
  %i.sg = sub <2 x i8> %wide.load311.3, %i.se     ; 3 uses
  %i.sh = getelementptr i8, ptr %i.pr, i64 15
  store <2 x i8> %i.sf, ptr %next.gep309.3, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.sg, ptr %i.sh, align 1, !tbaa !10, !noalias !317
  %i.si = zext <2 x i8> %i.sf to <2 x i64>        ; 2 uses
  %i.sj = zext <2 x i8> %i.sg to <2 x i64>        ; 2 uses
  %i.sk = sub nuw nsw <2 x i64> splat (i64 256), %i.si
  %i.sl = sub nuw nsw <2 x i64> splat (i64 256), %i.sj
  %i.sm = icmp slt <2 x i8> %i.sf, zeroinitializer
  %i.sn = icmp slt <2 x i8> %i.sg, zeroinitializer
  %i.so = select <2 x i1> %i.sm, <2 x i64> %i.sk, <2 x i64> %i.si
  %i.sp = select <2 x i1> %i.sn, <2 x i64> %i.sl, <2 x i64> %i.sj
  %i.sq = add nuw nsw <2 x i64> %i.so, %i.ry      ; 2 uses
  %i.sr = add nuw nsw <2 x i64> %i.sp, %i.rz      ; 2 uses
  %i.ss = icmp eq i64 %n.vec302, 16
  br i1 %i.ss, label %middle.block315, label %vector.body303.4

vector.body303.4:                                 ; preds = %vector.body303.3
  %next.gep307.4 = getelementptr i8, ptr %i.l, i64 17
  %next.gep308.4 = getelementptr i8, ptr %i.pt, i64 17
  %next.gep309.4 = getelementptr i8, ptr %i.pr, i64 17
  %i.st = getelementptr i8, ptr %i.l, i64 19
  %wide.load310.4 = load <2 x i8>, ptr %next.gep307.4, align 1, !tbaa !10, !noalias !317
  %wide.load311.4 = load <2 x i8>, ptr %i.st, align 1, !tbaa !10, !noalias !317
  %i.su = getelementptr i8, ptr %i.pt, i64 19
  %wide.load312.4 = load <2 x i8>, ptr %next.gep308.4, align 1, !tbaa !10, !noalias !317
  %wide.load313.4 = load <2 x i8>, ptr %i.su, align 1, !tbaa !10, !noalias !317
  %i.sv = lshr <2 x i8> %wide.load312.4, splat (i8 1)
  %i.sw = lshr <2 x i8> %wide.load313.4, splat (i8 1)
  %i.sx = sub <2 x i8> %wide.load310.4, %i.sv     ; 3 uses
  %i.sy = sub <2 x i8> %wide.load311.4, %i.sw     ; 3 uses
  %i.sz = getelementptr i8, ptr %i.pr, i64 19
  store <2 x i8> %i.sx, ptr %next.gep309.4, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.sy, ptr %i.sz, align 1, !tbaa !10, !noalias !317
  %i.ta = zext <2 x i8> %i.sx to <2 x i64>        ; 2 uses
  %i.tb = zext <2 x i8> %i.sy to <2 x i64>        ; 2 uses
  %i.tc = sub nuw nsw <2 x i64> splat (i64 256), %i.ta
  %i.td = sub nuw nsw <2 x i64> splat (i64 256), %i.tb
  %i.te = icmp slt <2 x i8> %i.sx, zeroinitializer
  %i.tf = icmp slt <2 x i8> %i.sy, zeroinitializer
  %i.tg = select <2 x i1> %i.te, <2 x i64> %i.tc, <2 x i64> %i.ta
  %i.th = select <2 x i1> %i.tf, <2 x i64> %i.td, <2 x i64> %i.tb
  %i.ti = add nuw nsw <2 x i64> %i.tg, %i.sq      ; 2 uses
  %i.tj = add nuw nsw <2 x i64> %i.th, %i.sr      ; 2 uses
  %i.tk = icmp eq i64 %n.vec302, 20
  br i1 %i.tk, label %middle.block315, label %vector.body303.5

vector.body303.5:                                 ; preds = %vector.body303.4
  %next.gep307.5 = getelementptr i8, ptr %i.l, i64 21
  %next.gep308.5 = getelementptr i8, ptr %i.pt, i64 21
  %next.gep309.5 = getelementptr i8, ptr %i.pr, i64 21
  %i.tl = getelementptr i8, ptr %i.l, i64 23
  %wide.load310.5 = load <2 x i8>, ptr %next.gep307.5, align 1, !tbaa !10, !noalias !317
  %wide.load311.5 = load <2 x i8>, ptr %i.tl, align 1, !tbaa !10, !noalias !317
  %i.tm = getelementptr i8, ptr %i.pt, i64 23
  %wide.load312.5 = load <2 x i8>, ptr %next.gep308.5, align 1, !tbaa !10, !noalias !317
  %wide.load313.5 = load <2 x i8>, ptr %i.tm, align 1, !tbaa !10, !noalias !317
  %i.tn = lshr <2 x i8> %wide.load312.5, splat (i8 1)
  %i.to = lshr <2 x i8> %wide.load313.5, splat (i8 1)
  %i.tp = sub <2 x i8> %wide.load310.5, %i.tn     ; 3 uses
  %i.tq = sub <2 x i8> %wide.load311.5, %i.to     ; 3 uses
  %i.tr = getelementptr i8, ptr %i.pr, i64 23
  store <2 x i8> %i.tp, ptr %next.gep309.5, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.tq, ptr %i.tr, align 1, !tbaa !10, !noalias !317
  %i.ts = zext <2 x i8> %i.tp to <2 x i64>        ; 2 uses
  %i.tt = zext <2 x i8> %i.tq to <2 x i64>        ; 2 uses
  %i.tu = sub nuw nsw <2 x i64> splat (i64 256), %i.ts
  %i.tv = sub nuw nsw <2 x i64> splat (i64 256), %i.tt
  %i.tw = icmp slt <2 x i8> %i.tp, zeroinitializer
  %i.tx = icmp slt <2 x i8> %i.tq, zeroinitializer
  %i.ty = select <2 x i1> %i.tw, <2 x i64> %i.tu, <2 x i64> %i.ts
  %i.tz = select <2 x i1> %i.tx, <2 x i64> %i.tv, <2 x i64> %i.tt
  %i.ua = add nuw nsw <2 x i64> %i.ty, %i.ti      ; 2 uses
  %i.ub = add nuw nsw <2 x i64> %i.tz, %i.tj      ; 2 uses
  %i.uc = icmp eq i64 %n.vec302, 24
  br i1 %i.uc, label %middle.block315, label %vector.body303.6

vector.body303.6:                                 ; preds = %vector.body303.5
  %next.gep307.6 = getelementptr i8, ptr %i.l, i64 25
  %next.gep308.6 = getelementptr i8, ptr %i.pt, i64 25
  %next.gep309.6 = getelementptr i8, ptr %i.pr, i64 25
  %i.ud = getelementptr i8, ptr %i.l, i64 27
  %wide.load310.6 = load <2 x i8>, ptr %next.gep307.6, align 1, !tbaa !10, !noalias !317
  %wide.load311.6 = load <2 x i8>, ptr %i.ud, align 1, !tbaa !10, !noalias !317
  %i.ue = getelementptr i8, ptr %i.pt, i64 27
  %wide.load312.6 = load <2 x i8>, ptr %next.gep308.6, align 1, !tbaa !10, !noalias !317
  %wide.load313.6 = load <2 x i8>, ptr %i.ue, align 1, !tbaa !10, !noalias !317
  %i.uf = lshr <2 x i8> %wide.load312.6, splat (i8 1)
  %i.ug = lshr <2 x i8> %wide.load313.6, splat (i8 1)
  %i.uh = sub <2 x i8> %wide.load310.6, %i.uf     ; 3 uses
  %i.ui = sub <2 x i8> %wide.load311.6, %i.ug     ; 3 uses
  %i.uj = getelementptr i8, ptr %i.pr, i64 27
  store <2 x i8> %i.uh, ptr %next.gep309.6, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.ui, ptr %i.uj, align 1, !tbaa !10, !noalias !317
  %i.uk = zext <2 x i8> %i.uh to <2 x i64>        ; 2 uses
  %i.ul = zext <2 x i8> %i.ui to <2 x i64>        ; 2 uses
  %i.um = sub nuw nsw <2 x i64> splat (i64 256), %i.uk
  %i.un = sub nuw nsw <2 x i64> splat (i64 256), %i.ul
  %i.uo = icmp slt <2 x i8> %i.uh, zeroinitializer
  %i.up = icmp slt <2 x i8> %i.ui, zeroinitializer
  %i.uq = select <2 x i1> %i.uo, <2 x i64> %i.um, <2 x i64> %i.uk
  %i.ur = select <2 x i1> %i.up, <2 x i64> %i.un, <2 x i64> %i.ul
  %i.us = add <2 x i64> %i.uq, %i.ua              ; 2 uses
  %i.ut = add <2 x i64> %i.ur, %i.ub              ; 2 uses
  %i.uu = icmp eq i64 %n.vec302, 28
  br i1 %i.uu, label %middle.block315, label %vector.body303.7

vector.body303.7:                                 ; preds = %vector.body303.6
  %next.gep307.7 = getelementptr i8, ptr %i.l, i64 29
  %next.gep308.7 = getelementptr i8, ptr %i.pt, i64 29
  %next.gep309.7 = getelementptr i8, ptr %i.pr, i64 29
  %i.uv = getelementptr i8, ptr %i.l, i64 31
  %wide.load310.7 = load <2 x i8>, ptr %next.gep307.7, align 1, !tbaa !10, !noalias !317
  %wide.load311.7 = load <2 x i8>, ptr %i.uv, align 1, !tbaa !10, !noalias !317
  %i.uw = getelementptr i8, ptr %i.pt, i64 31
  %wide.load312.7 = load <2 x i8>, ptr %next.gep308.7, align 1, !tbaa !10, !noalias !317
  %wide.load313.7 = load <2 x i8>, ptr %i.uw, align 1, !tbaa !10, !noalias !317
  %i.ux = lshr <2 x i8> %wide.load312.7, splat (i8 1)
  %i.uy = lshr <2 x i8> %wide.load313.7, splat (i8 1)
  %i.uz = sub <2 x i8> %wide.load310.7, %i.ux     ; 3 uses
  %i.va = sub <2 x i8> %wide.load311.7, %i.uy     ; 3 uses
  %i.vb = getelementptr i8, ptr %i.pr, i64 31
  store <2 x i8> %i.uz, ptr %next.gep309.7, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.va, ptr %i.vb, align 1, !tbaa !10, !noalias !317
  %i.vc = zext <2 x i8> %i.uz to <2 x i64>        ; 2 uses
  %i.vd = zext <2 x i8> %i.va to <2 x i64>        ; 2 uses
  %i.ve = sub nuw nsw <2 x i64> splat (i64 256), %i.vc
  %i.vf = sub nuw nsw <2 x i64> splat (i64 256), %i.vd
  %i.vg = icmp slt <2 x i8> %i.uz, zeroinitializer
  %i.vh = icmp slt <2 x i8> %i.va, zeroinitializer
  %i.vi = select <2 x i1> %i.vg, <2 x i64> %i.ve, <2 x i64> %i.vc
  %i.vj = select <2 x i1> %i.vh, <2 x i64> %i.vf, <2 x i64> %i.vd
  %i.vk = add <2 x i64> %i.vi, %i.us
  %i.vl = add <2 x i64> %i.vj, %i.ut
  br label %middle.block315

middle.block315:                                  ; preds = %vector.body303.7, %vector.body303.6, %vector.body303.5, %vector.body303.4, %vector.body303.3, %vector.body303.2, %vector.body303.1, %vector.ph301
  %.lcssa699 = phi <2 x i64> [ %i.qo, %vector.ph301 ], [ %i.rg, %vector.body303.1 ], [ %i.ry, %vector.body303.2 ], [ %i.sq, %vector.body303.3 ], [ %i.ti, %vector.body303.4 ], [ %i.ua, %vector.body303.5 ], [ %i.us, %vector.body303.6 ], [ %i.vk, %vector.body303.7 ]
  %.lcssa698 = phi <2 x i64> [ %i.qp, %vector.ph301 ], [ %i.rh, %vector.body303.1 ], [ %i.rz, %vector.body303.2 ], [ %i.sr, %vector.body303.3 ], [ %i.tj, %vector.body303.4 ], [ %i.ub, %vector.body303.5 ], [ %i.ut, %vector.body303.6 ], [ %i.vl, %vector.body303.7 ]
  %bin.rdx316 = add <2 x i64> %.lcssa698, %.lcssa699
  %i.vm = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx316) ; 2 uses
  %cmp.n317 = icmp eq i64 %n.vec302, %i.pu
  br i1 %cmp.n317, label %.preheader.i164, label %.lr.ph.i159.preheader696

.lr.ph.i159.preheader696:                         ; preds = %vector.memcheck296, %.lr.ph.i159.preheader, %middle.block315
  %.03551.i.ph = phi ptr [ %.03546.i, %vector.memcheck296 ], [ %.03546.i, %.lr.ph.i159.preheader ], [ %i.px, %middle.block315 ] ; 3 uses
  %.03150.i.ph = phi ptr [ %.03145.i, %vector.memcheck296 ], [ %.03145.i, %.lr.ph.i159.preheader ], [ %i.py, %middle.block315 ] ; 3 uses
  %.03349.i.ph = phi ptr [ %.03344.i, %vector.memcheck296 ], [ %.03344.i, %.lr.ph.i159.preheader ], [ %i.pz, %middle.block315 ] ; 3 uses
  %.048.i.ph = phi i64 [ 0, %vector.memcheck296 ], [ 0, %.lr.ph.i159.preheader ], [ %i.vm, %middle.block315 ] ; 2 uses
  %.02847.i.ph = phi i32 [ 0, %vector.memcheck296 ], [ 0, %.lr.ph.i159.preheader ], [ %i.qa, %middle.block315 ] ; 4 uses
  %i.vn = sub nsw i32 %i.j, %.02847.i.ph
  %.neg = add nsw i32 %.02847.i.ph, 1
  %xtraiter710 = and i32 %i.vn, 1
  %lcmp.mod711.not = icmp eq i32 %xtraiter710, 0
  br i1 %lcmp.mod711.not, label %.lr.ph.i159.prol.loopexit, label %.lr.ph.i159.prol

.lr.ph.i159.prol:                                 ; preds = %.lr.ph.i159.preheader696
  %i.vo = load i8, ptr %.03551.i.ph, align 1, !tbaa !10, !noalias !317
  %i.vp = load i8, ptr %.03150.i.ph, align 1, !tbaa !10, !noalias !317
  %i.vq = lshr i8 %i.vp, 1
  %.narrow42.i.prol = sub i8 %i.vo, %i.vq         ; 3 uses
  store i8 %.narrow42.i.prol, ptr %.03349.i.ph, align 1, !tbaa !10, !noalias !317
  %i.vr = zext i8 %.narrow42.i.prol to i64        ; 2 uses
  %i.vs = sub nuw nsw i64 256, %i.vr
  %i.vt = icmp slt i8 %.narrow42.i.prol, 0
  %i.vu = select i1 %i.vt, i64 %i.vs, i64 %i.vr
  %i.vv = add i64 %i.vu, %.048.i.ph               ; 2 uses
  %i.vw = add nuw nsw i32 %.02847.i.ph, 1
  %.033.i160.prol = getelementptr inbounds nuw i8, ptr %.03349.i.ph, i64 1 ; 2 uses
  %.031.i161.prol = getelementptr inbounds nuw i8, ptr %.03150.i.ph, i64 1 ; 2 uses
  %.035.i162.prol = getelementptr inbounds nuw i8, ptr %.03551.i.ph, i64 1 ; 2 uses
  br label %.lr.ph.i159.prol.loopexit

.lr.ph.i159.prol.loopexit:                        ; preds = %.lr.ph.i159.prol, %.lr.ph.i159.preheader696
  %.lcssa697.unr = phi i64 [ poison, %.lr.ph.i159.preheader696 ], [ %i.vv, %.lr.ph.i159.prol ]
  %.033.i160.lcssa.unr = phi ptr [ poison, %.lr.ph.i159.preheader696 ], [ %.033.i160.prol, %.lr.ph.i159.prol ]
  %.031.i161.lcssa.unr = phi ptr [ poison, %.lr.ph.i159.preheader696 ], [ %.031.i161.prol, %.lr.ph.i159.prol ]
  %.035.i162.lcssa.unr = phi ptr [ poison, %.lr.ph.i159.preheader696 ], [ %.035.i162.prol, %.lr.ph.i159.prol ]
  %.03551.i.unr = phi ptr [ %.03551.i.ph, %.lr.ph.i159.preheader696 ], [ %.035.i162.prol, %.lr.ph.i159.prol ]
  %.03150.i.unr = phi ptr [ %.03150.i.ph, %.lr.ph.i159.preheader696 ], [ %.031.i161.prol, %.lr.ph.i159.prol ]
  %.03349.i.unr = phi ptr [ %.03349.i.ph, %.lr.ph.i159.preheader696 ], [ %.033.i160.prol, %.lr.ph.i159.prol ]
  %.048.i.unr = phi i64 [ %.048.i.ph, %.lr.ph.i159.preheader696 ], [ %i.vv, %.lr.ph.i159.prol ]
  %.02847.i.unr = phi i32 [ %.02847.i.ph, %.lr.ph.i159.preheader696 ], [ %i.vw, %.lr.ph.i159.prol ]
  %i.vx = icmp eq i32 %i.j, %.neg
  br i1 %i.vx, label %.preheader.i164, label %.lr.ph.i159

.preheader.i164:                                  ; preds = %.lr.ph.i159.prol.loopexit, %.lr.ph.i159, %middle.block315, %bb.q
  %.0.lcssa.i165 = phi i64 [ 0, %bb.q ], [ %i.vm, %middle.block315 ], [ %.lcssa697.unr, %.lr.ph.i159.prol.loopexit ], [ %i.wp, %.lr.ph.i159 ] ; 2 uses
  %.033.lcssa.i166 = phi ptr [ %.03344.i, %bb.q ], [ %i.pz, %middle.block315 ], [ %.033.i160.lcssa.unr, %.lr.ph.i159.prol.loopexit ], [ %.033.i160.1, %.lr.ph.i159 ]
  %.031.lcssa.i = phi ptr [ %.03145.i, %bb.q ], [ %i.py, %middle.block315 ], [ %.031.i161.lcssa.unr, %.lr.ph.i159.prol.loopexit ], [ %.031.i161.1, %.lr.ph.i159 ]
  %.035.lcssa.i167 = phi ptr [ %.03546.i, %bb.q ], [ %i.px, %middle.block315 ], [ %.035.i162.lcssa.unr, %.lr.ph.i159.prol.loopexit ], [ %.035.i162.1, %.lr.ph.i159 ]
  %i.vy = zext nneg i32 %i.j to i64
  %i.vz = icmp ugt i64 %i.e, %i.vy
  br i1 %i.vz, label %.lr.ph63.i, label %png_setup_avg_row.exit

.lr.ph.i159:                                      ; preds = %.lr.ph.i159.prol.loopexit, %.lr.ph.i159
  %.03551.i = phi ptr [ %.035.i162.1, %.lr.ph.i159 ], [ %.03551.i.unr, %.lr.ph.i159.prol.loopexit ] ; 3 uses
  %.03150.i = phi ptr [ %.031.i161.1, %.lr.ph.i159 ], [ %.03150.i.unr, %.lr.ph.i159.prol.loopexit ] ; 3 uses
  %.03349.i = phi ptr [ %.033.i160.1, %.lr.ph.i159 ], [ %.03349.i.unr, %.lr.ph.i159.prol.loopexit ] ; 3 uses
  %.048.i = phi i64 [ %i.wp, %.lr.ph.i159 ], [ %.048.i.unr, %.lr.ph.i159.prol.loopexit ]
  %.02847.i = phi i32 [ %i.wq, %.lr.ph.i159 ], [ %.02847.i.unr, %.lr.ph.i159.prol.loopexit ]
  %i.wa = load i8, ptr %.03551.i, align 1, !tbaa !10, !noalias !317
  %i.wb = load i8, ptr %.03150.i, align 1, !tbaa !10, !noalias !317
  %i.wc = lshr i8 %i.wb, 1
  %.narrow42.i = sub i8 %i.wa, %i.wc              ; 3 uses
  store i8 %.narrow42.i, ptr %.03349.i, align 1, !tbaa !10, !noalias !317
  %i.wd = zext i8 %.narrow42.i to i64             ; 2 uses
  %i.we = sub nuw nsw i64 256, %i.wd
  %i.wf = icmp slt i8 %.narrow42.i, 0
  %i.wg = select i1 %i.wf, i64 %i.we, i64 %i.wd
  %i.wh = add i64 %i.wg, %.048.i
  %.033.i160 = getelementptr inbounds nuw i8, ptr %.03349.i, i64 1
  %.031.i161 = getelementptr inbounds nuw i8, ptr %.03150.i, i64 1
  %.035.i162 = getelementptr inbounds nuw i8, ptr %.03551.i, i64 1
  %i.wi = load i8, ptr %.035.i162, align 1, !tbaa !10, !noalias !317
  %i.wj = load i8, ptr %.031.i161, align 1, !tbaa !10, !noalias !317
  %i.wk = lshr i8 %i.wj, 1
  %.narrow42.i.1 = sub i8 %i.wi, %i.wk            ; 3 uses
  store i8 %.narrow42.i.1, ptr %.033.i160, align 1, !tbaa !10, !noalias !317
  %i.wl = zext i8 %.narrow42.i.1 to i64           ; 2 uses
  %i.wm = sub nuw nsw i64 256, %i.wl
  %i.wn = icmp slt i8 %.narrow42.i.1, 0
  %i.wo = select i1 %i.wn, i64 %i.wm, i64 %i.wl
  %i.wp = add i64 %i.wo, %i.wh                    ; 2 uses
  %i.wq = add nuw nsw i32 %.02847.i, 2            ; 2 uses
  %.033.i160.1 = getelementptr inbounds nuw i8, ptr %.03349.i, i64 2 ; 2 uses
  %.031.i161.1 = getelementptr inbounds nuw i8, ptr %.03150.i, i64 2 ; 2 uses
  %.035.i162.1 = getelementptr inbounds nuw i8, ptr %.03551.i, i64 2 ; 2 uses
  %exitcond.not.i163.1 = icmp eq i32 %i.wq, %i.j
  br i1 %exitcond.not.i163.1, label %.preheader.i164, label %.lr.ph.i159, !llvm.loop !292

.lr.ph63.i:                                       ; preds = %.preheader.i164, %.lr.ph63.i
  %.03062.pn.i = phi ptr [ %.03062.i, %.lr.ph63.i ], [ %i.l, %.preheader.i164 ]
  %.161.i = phi i64 [ %i.xc, %.lr.ph63.i ], [ %.0.lcssa.i165, %.preheader.i164 ]
  %.12960.i = phi i32 [ %i.xh, %.lr.ph63.i ], [ %i.j, %.preheader.i164 ]
  %.13259.i = phi ptr [ %i.xf, %.lr.ph63.i ], [ %.031.lcssa.i, %.preheader.i164 ] ; 2 uses
  %.13458.i = phi ptr [ %i.xe, %.lr.ph63.i ], [ %.033.lcssa.i166, %.preheader.i164 ] ; 2 uses
  %.13657.i = phi ptr [ %i.xg, %.lr.ph63.i ], [ %.035.lcssa.i167, %.preheader.i164 ] ; 2 uses
  %.03062.i = getelementptr inbounds nuw i8, ptr %.03062.pn.i, i64 1 ; 2 uses
  %i.wr = load i8, ptr %.13657.i, align 1, !tbaa !10, !noalias !317
  %i.ws = load i8, ptr %.13259.i, align 1, !tbaa !10, !noalias !317
  %i.wt = zext i8 %i.ws to i16
  %i.wu = load i8, ptr %.03062.i, align 1, !tbaa !10, !noalias !317
  %i.wv = zext i8 %i.wu to i16
  %i.ww = add nuw nsw i16 %i.wv, %i.wt
  %i.wx = lshr i16 %i.ww, 1
  %.tr.i169 = trunc nuw i16 %i.wx to i8
  %.narrow.i170 = sub i8 %i.wr, %.tr.i169         ; 3 uses
  store i8 %.narrow.i170, ptr %.13458.i, align 1, !tbaa !10, !noalias !317
  %i.wy = zext i8 %.narrow.i170 to i64            ; 2 uses
  %i.wz = sub nuw nsw i64 256, %i.wy
  %i.xa = icmp slt i8 %.narrow.i170, 0
  %i.xb = select i1 %i.xa, i64 %i.wz, i64 %i.wy
  %i.xc = add i64 %i.xb, %.161.i                  ; 3 uses
  %i.xd = icmp ule i64 %i.xc, %.4
  %i.xe = getelementptr inbounds nuw i8, ptr %.13458.i, i64 1
  %i.xf = getelementptr inbounds nuw i8, ptr %.13259.i, i64 1
  %i.xg = getelementptr inbounds nuw i8, ptr %.13657.i, i64 1
  %i.xh = add i32 %.12960.i, 1                    ; 2 uses
  %i.xi = zext i32 %i.xh to i64
  %i.xj = icmp ugt i64 %i.e, %i.xi
  %or.cond.i171 = select i1 %i.xd, i1 %i.xj, i1 false
  br i1 %or.cond.i171, label %.lr.ph63.i, label %png_setup_avg_row.exit, !llvm.loop !293

png_setup_avg_row.exit:                           ; preds = %.lr.ph63.i, %.preheader.i164
  %.2.i168 = phi i64 [ %.0.lcssa.i165, %.preheader.i164 ], [ %i.xc, %.lr.ph63.i ] ; 3 uses
  %i.xk = icmp ult i64 %.2.i168, %.4
  br i1 %i.xk, label %bb.r, label %bb.t

bb.r:                                             ; preds = %png_setup_avg_row.exit
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !67 ; 2 uses
  %.not125 = icmp eq ptr %i.xm, null
  br i1 %.not125, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.xm, ptr %i.pq, align 8, !tbaa !66
  store ptr %i.pr, ptr %i.xl, align 8, !tbaa !67
  br label %bb.t

bb.t:                                             ; preds = %png_setup_avg_row.exit, %bb.s, %bb.r, %.thread197
  %.5109 = phi ptr [ %.3107, %png_setup_avg_row.exit ], [ %.3107, %.thread197 ], [ %i.pr, %bb.s ], [ %i.pr, %bb.r ] ; 2 uses
  %.6 = phi i64 [ %.4, %png_setup_avg_row.exit ], [ %.4, %.thread197 ], [ %.2.i168, %bb.s ], [ %.2.i168, %bb.r ] ; 2 uses
  %i.xn = icmp eq i32 %.0111, 128
  br i1 %i.xn, label %bb.u, label %.thread214

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !66, !alias.scope !318 ; 8 uses
  store i8 4, ptr %i.xp, align 1, !tbaa !10, !noalias !318
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !68, !alias.scope !318 ; 10 uses
  %i.xs = zext nneg i32 %i.j to i64               ; 13 uses
  %.04964.i = getelementptr inbounds nuw i8, ptr %i.xp, i64 1 ; 7 uses
  %.04765.i = getelementptr inbounds nuw i8, ptr %i.xr, i64 1 ; 7 uses
  %.05166.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 7 uses
  %.not81.i = icmp eq i32 %i.j, 0
  br i1 %.not81.i, label %.preheader.i174, label %iter.check

iter.check:                                       ; preds = %bb.u
  %min.iters.check356 = icmp ult i8 %i.g, 25
  br i1 %min.iters.check356, label %.lr.ph.i172.preheader, label %vector.memcheck351

vector.memcheck351:                               ; preds = %iter.check
  %19 = ptrtoaddr ptr %i.xp to i64                ; 2 uses
  %20 = ptrtoaddr ptr %i.l to i64
  %i.xt = sub i64 %20, %19
  %diff.check352 = icmp ugt i64 %i.xt, -16
  %21 = ptrtoaddr ptr %i.xr to i64
  %i.xu = sub i64 %21, %19
  %diff.check353 = icmp ugt i64 %i.xu, -16
  %conflict.rdx354 = or i1 %diff.check352, %diff.check353
  br i1 %conflict.rdx354, label %.lr.ph.i172.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck351
  %min.iters.check357 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph358

vector.ph358:                                     ; preds = %vector.main.loop.iter.check
  %i.xv = and i64 %i.xs, 12
  %n.vec359 = and i64 %i.xs, 48                   ; 7 uses
  %i.xw = getelementptr i8, ptr %.05166.i, i64 %n.vec359 ; 2 uses
  %i.xx = getelementptr i8, ptr %.04765.i, i64 %n.vec359 ; 2 uses
  %i.xy = getelementptr i8, ptr %.04964.i, i64 %n.vec359 ; 2 uses
  %wide.load365 = load <16 x i8>, ptr %.05166.i, align 1, !tbaa !10, !noalias !318
  %wide.load366 = load <16 x i8>, ptr %.04765.i, align 1, !tbaa !10, !noalias !318
  %i.xz = sub <16 x i8> %wide.load365, %wide.load366
  store <16 x i8> %i.xz, ptr %.04964.i, align 1, !tbaa !10, !noalias !318
  %i.ya = icmp eq i64 %n.vec359, 16
  br i1 %i.ya, label %middle.block368, label %vector.body360.1

vector.body360.1:                                 ; preds = %vector.ph358
  %next.gep362.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep363.1 = getelementptr i8, ptr %i.xr, i64 17
  %next.gep364.1 = getelementptr i8, ptr %i.xp, i64 17
  %wide.load365.1 = load <16 x i8>, ptr %next.gep362.1, align 1, !tbaa !10, !noalias !318
  %wide.load366.1 = load <16 x i8>, ptr %next.gep363.1, align 1, !tbaa !10, !noalias !318
  %i.yb = sub <16 x i8> %wide.load365.1, %wide.load366.1
  store <16 x i8> %i.yb, ptr %next.gep364.1, align 1, !tbaa !10, !noalias !318
  br label %middle.block368

middle.block368:                                  ; preds = %vector.body360.1, %vector.ph358
  %cmp.n369 = icmp eq i64 %n.vec359, %i.xs
  br i1 %cmp.n369, label %.preheader.i174, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block368
  %min.epilog.iters.check = icmp eq i64 %i.xv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i172.preheader, label %vec.epilog.ph, !prof !310

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec359, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec373 = and i64 %i.xs, 60                   ; 6 uses
  %i.yc = getelementptr i8, ptr %.05166.i, i64 %n.vec373 ; 2 uses
  %i.yd = getelementptr i8, ptr %.04765.i, i64 %n.vec373 ; 2 uses
  %i.ye = getelementptr i8, ptr %.04964.i, i64 %n.vec373 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index374 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next380, %vec.epilog.vector.body ] ; 4 uses
  %next.gep375 = getelementptr i8, ptr %.05166.i, i64 %index374
  %next.gep376 = getelementptr i8, ptr %.04765.i, i64 %index374
  %next.gep377 = getelementptr i8, ptr %.04964.i, i64 %index374
  %wide.load378 = load <4 x i8>, ptr %next.gep375, align 1, !tbaa !10, !noalias !318
  %wide.load379 = load <4 x i8>, ptr %next.gep376, align 1, !tbaa !10, !noalias !318
  %i.yf = sub <4 x i8> %wide.load378, %wide.load379
  store <4 x i8> %i.yf, ptr %next.gep377, align 1, !tbaa !10, !noalias !318
  %index.next380 = add nuw i64 %index374, 4       ; 2 uses
  %i.yg = icmp eq i64 %index.next380, %n.vec373
  br i1 %i.yg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !296

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n381 = icmp eq i64 %n.vec373, %i.xs
  br i1 %cmp.n381, label %.preheader.i174, label %.lr.ph.i172.preheader

.lr.ph.i172.preheader:                            ; preds = %iter.check, %vector.memcheck351, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05170.i.ph = phi ptr [ %.05166.i, %iter.check ], [ %.05166.i, %vector.memcheck351 ], [ %i.xw, %vec.epilog.iter.check ], [ %i.yc, %vec.epilog.middle.block ] ; 2 uses
  %.04769.i.ph = phi ptr [ %.04765.i, %iter.check ], [ %.04765.i, %vector.memcheck351 ], [ %i.xx, %vec.epilog.iter.check ], [ %i.yd, %vec.epilog.middle.block ] ; 2 uses
  %.04968.i.ph = phi ptr [ %.04964.i, %iter.check ], [ %.04964.i, %vector.memcheck351 ], [ %i.xy, %vec.epilog.iter.check ], [ %i.ye, %vec.epilog.middle.block ] ; 2 uses
  %.067.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck351 ], [ %n.vec359, %vec.epilog.iter.check ], [ %n.vec373, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter714 = and i64 %i.xs, 3                 ; 2 uses
  %lcmp.mod715.not = icmp eq i64 %xtraiter714, 0
  br i1 %lcmp.mod715.not, label %.lr.ph.i172.prol.loopexit, label %.lr.ph.i172.prol

.lr.ph.i172.prol:                                 ; preds = %.lr.ph.i172.preheader, %.lr.ph.i172.prol
  %.05170.i.prol = phi ptr [ %.051.i.prol, %.lr.ph.i172.prol ], [ %.05170.i.ph, %.lr.ph.i172.preheader ] ; 2 uses
  %.04769.i.prol = phi ptr [ %.047.i.prol, %.lr.ph.i172.prol ], [ %.04769.i.ph, %.lr.ph.i172.preheader ] ; 2 uses
  %.04968.i.prol = phi ptr [ %.049.i.prol, %.lr.ph.i172.prol ], [ %.04968.i.ph, %.lr.ph.i172.preheader ] ; 2 uses
  %.067.i.prol = phi i64 [ %i.yj, %.lr.ph.i172.prol ], [ %.067.i.ph, %.lr.ph.i172.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i172.prol ], [ 0, %.lr.ph.i172.preheader ]
  %i.yh = load i8, ptr %.05170.i.prol, align 1, !tbaa !10, !noalias !318
  %i.yi = load i8, ptr %.04769.i.prol, align 1, !tbaa !10, !noalias !318
  %.narrow62.i.prol = sub i8 %i.yh, %i.yi
  store i8 %.narrow62.i.prol, ptr %.04968.i.prol, align 1, !tbaa !10, !noalias !318
  %i.yj = add nuw nsw i64 %.067.i.prol, 1         ; 2 uses
  %.049.i.prol = getelementptr inbounds nuw i8, ptr %.04968.i.prol, i64 1 ; 3 uses
  %.047.i.prol = getelementptr inbounds nuw i8, ptr %.04769.i.prol, i64 1 ; 3 uses
  %.051.i.prol = getelementptr inbounds nuw i8, ptr %.05170.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter714
  br i1 %prol.iter.cmp.not, label %.lr.ph.i172.prol.loopexit, label %.lr.ph.i172.prol, !llvm.loop !297

.lr.ph.i172.prol.loopexit:                        ; preds = %.lr.ph.i172.prol, %.lr.ph.i172.preheader
  %.049.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i172.preheader ], [ %.049.i.prol, %.lr.ph.i172.prol ]
  %.047.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i172.preheader ], [ %.047.i.prol, %.lr.ph.i172.prol ]
  %.051.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i172.preheader ], [ %.051.i.prol, %.lr.ph.i172.prol ]
  %.05170.i.unr = phi ptr [ %.05170.i.ph, %.lr.ph.i172.preheader ], [ %.051.i.prol, %.lr.ph.i172.prol ]
  %.04769.i.unr = phi ptr [ %.04769.i.ph, %.lr.ph.i172.preheader ], [ %.047.i.prol, %.lr.ph.i172.prol ]
  %.04968.i.unr = phi ptr [ %.04968.i.ph, %.lr.ph.i172.preheader ], [ %.049.i.prol, %.lr.ph.i172.prol ]
  %.067.i.unr = phi i64 [ %.067.i.ph, %.lr.ph.i172.preheader ], [ %i.yj, %.lr.ph.i172.prol ]
  %i.yk = sub nsw i64 %.067.i.ph, %i.xs
  %i.yl = icmp ugt i64 %i.yk, -4
  br i1 %i.yl, label %.preheader.i174, label %.lr.ph.i172

.preheader.i174:                                  ; preds = %.lr.ph.i172.prol.loopexit, %.lr.ph.i172, %middle.block368, %vec.epilog.middle.block, %bb.u
  %.0.lcssa.i175 = phi i64 [ 0, %bb.u ], [ %i.xs, %middle.block368 ], [ %i.xs, %vec.epilog.middle.block ], [ %i.xs, %.lr.ph.i172 ], [ %i.xs, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.049.lcssa.i = phi ptr [ %.04964.i, %bb.u ], [ %i.xy, %middle.block368 ], [ %i.ye, %vec.epilog.middle.block ], [ %.049.i.lcssa.unr, %.lr.ph.i172.prol.loopexit ], [ %.049.i.3, %.lr.ph.i172 ] ; 7 uses
  %.047.lcssa.i = phi ptr [ %.04765.i, %bb.u ], [ %i.xx, %middle.block368 ], [ %i.yd, %vec.epilog.middle.block ], [ %.047.i.lcssa.unr, %.lr.ph.i172.prol.loopexit ], [ %.047.i.3, %.lr.ph.i172 ] ; 7 uses
  %.051.lcssa.i = phi ptr [ %.05166.i, %bb.u ], [ %i.xw, %middle.block368 ], [ %i.yc, %vec.epilog.middle.block ], [ %.051.i.lcssa.unr, %.lr.ph.i172.prol.loopexit ], [ %.051.i.3, %.lr.ph.i172 ] ; 7 uses
  %i.ym = icmp ult i64 %.0.lcssa.i175, %i.e
  br i1 %i.ym, label %iter.check424, label %.thread214.thread

iter.check424:                                    ; preds = %.preheader.i174
  %i.yn = sub i64 %i.e, %i.xs                     ; 7 uses
  %min.iters.check398 = icmp ult i64 %i.yn, 4
  br i1 %min.iters.check398, label %.lr.ph80.i.preheader, label %vector.memcheck386

vector.memcheck386:                               ; preds = %iter.check424
  %22 = ptrtoaddr ptr %.049.lcssa.i to i64        ; 3 uses
  %23 = ptrtoaddr ptr %i.xr to i64
  %24 = add i64 %22, -1                           ; 2 uses
  %i.yo = sub i64 %23, %24
  %diff.check411 = icmp ugt i64 %i.yo, -16
  %25 = ptrtoaddr ptr %.047.lcssa.i to i64
  %i.yp = sub i64 %25, %22
  %diff.check390 = icmp ugt i64 %i.yp, -16
  %conflict.rdx391 = or i1 %diff.check411, %diff.check390
  %26 = ptrtoaddr ptr %.051.lcssa.i to i64
  %i.yq = sub i64 %26, %22
  %diff.check393 = icmp ugt i64 %i.yq, -16
  %conflict.rdx394 = or i1 %conflict.rdx391, %diff.check393
  %27 = ptrtoaddr ptr %i.l to i64
  %28 = sub i64 %27, %24
  %diff.check416 = icmp ugt i64 %28, -16
  %conflict.rdx396 = or i1 %conflict.rdx394, %diff.check416
  br i1 %conflict.rdx396, label %.lr.ph80.i.preheader, label %vector.main.loop.iter.check399

vector.main.loop.iter.check399:                   ; preds = %vector.memcheck386
  %min.iters.check400 = icmp ult i64 %i.yn, 16
  br i1 %min.iters.check400, label %vec.epilog.ph428, label %vector.ph401

vector.ph401:                                     ; preds = %vector.main.loop.iter.check399
  %i.yr = and i64 %i.yn, 12
  %n.vec402 = and i64 %i.yn, -16                  ; 9 uses
  %i.ys = add i64 %.0.lcssa.i175, %n.vec402
  %i.yt = getelementptr i8, ptr %i.l, i64 %n.vec402
  %i.yu = getelementptr i8, ptr %i.xr, i64 %n.vec402
  %i.yv = getelementptr i8, ptr %.047.lcssa.i, i64 %n.vec402
  %i.yw = getelementptr i8, ptr %.049.lcssa.i, i64 %n.vec402
  %i.yx = getelementptr i8, ptr %.051.lcssa.i, i64 %n.vec402
  br label %vector.body403

vector.body403:                                   ; preds = %vector.ph401, %vector.body403
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next414, %vector.body403 ] ; 6 uses
  %next.gep405 = getelementptr i8, ptr %i.l, i64 %index404
  %next.gep406 = getelementptr i8, ptr %i.xr, i64 %index404
  %next.gep407 = getelementptr i8, ptr %.047.lcssa.i, i64 %index404
  %next.gep408 = getelementptr i8, ptr %.049.lcssa.i, i64 %index404
  %next.gep409 = getelementptr i8, ptr %.051.lcssa.i, i64 %index404
  %i.yy = getelementptr inbounds nuw i8, ptr %next.gep406, i64 1
  %i.yz = getelementptr inbounds nuw i8, ptr %next.gep405, i64 1
  %wide.load410 = load <16 x i8>, ptr %next.gep407, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.za = zext <16 x i8> %wide.load410 to <16 x i32>
  %wide.load411 = load <16 x i8>, ptr %i.yy, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.zb = zext <16 x i8> %wide.load411 to <16 x i32> ; 2 uses
  %wide.load412 = load <16 x i8>, ptr %i.yz, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.zc = zext <16 x i8> %wide.load412 to <16 x i32>
  %i.zd = sub nsw <16 x i32> %i.za, %i.zb         ; 2 uses
  %i.ze = sub nsw <16 x i32> %i.zc, %i.zb         ; 2 uses
  %i.zf = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.zd, i1 true) ; 2 uses
  %i.zg = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ze, i1 true) ; 2 uses
  %i.zh = add nsw <16 x i32> %i.ze, %i.zd
  %i.zi = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.zh, i1 true) ; 2 uses
  %i.zj = icmp samesign ugt <16 x i32> %i.zf, %i.zg
  %i.zk = icmp samesign ugt <16 x i32> %i.zf, %i.zi
  %i.zl = select <16 x i1> %i.zj, <16 x i1> splat (i1 true), <16 x i1> %i.zk
  %i.zm = icmp samesign ugt <16 x i32> %i.zg, %i.zi
  %i.zn = select <16 x i1> %i.zm, <16 x i8> %wide.load411, <16 x i8> %wide.load410
  %i.zo = select <16 x i1> %i.zl, <16 x i8> %i.zn, <16 x i8> %wide.load412
  %wide.load413 = load <16 x i8>, ptr %next.gep409, align 1, !tbaa !10, !noalias !318
  %i.zp = sub <16 x i8> %wide.load413, %i.zo
  store <16 x i8> %i.zp, ptr %next.gep408, align 1, !tbaa !10, !noalias !318
  %index.next414 = add nuw i64 %index404, 16      ; 2 uses
  %i.zq = icmp eq i64 %index.next414, %n.vec402
  br i1 %i.zq, label %middle.block415, label %vector.body403, !llvm.loop !298

middle.block415:                                  ; preds = %vector.body403
  %cmp.n416 = icmp eq i64 %i.yn, %n.vec402
  br i1 %cmp.n416, label %.thread214.thread, label %vec.epilog.iter.check426

vec.epilog.iter.check426:                         ; preds = %middle.block415
  %min.epilog.iters.check427 = icmp eq i64 %i.yr, 0
  br i1 %min.epilog.iters.check427, label %.lr.ph80.i.preheader, label %vec.epilog.ph428, !prof !310

vec.epilog.ph428:                                 ; preds = %vector.main.loop.iter.check399, %vec.epilog.iter.check426
  %vec.epilog.resume.val417 = phi i64 [ %n.vec402, %vec.epilog.iter.check426 ], [ 0, %vector.main.loop.iter.check399 ]
  %n.vec429 = and i64 %i.yn, -4                   ; 8 uses
  %i.zr = add i64 %.0.lcssa.i175, %n.vec429
  %i.zs = getelementptr i8, ptr %i.l, i64 %n.vec429
  %i.zt = getelementptr i8, ptr %i.xr, i64 %n.vec429
  %i.zu = getelementptr i8, ptr %.047.lcssa.i, i64 %n.vec429
  %i.zv = getelementptr i8, ptr %.049.lcssa.i, i64 %n.vec429
  %i.zw = getelementptr i8, ptr %.051.lcssa.i, i64 %n.vec429
  br label %vec.epilog.vector.body430

vec.epilog.vector.body430:                        ; preds = %vec.epilog.vector.body430, %vec.epilog.ph428
  %index431 = phi i64 [ %vec.epilog.resume.val417, %vec.epilog.ph428 ], [ %index.next441, %vec.epilog.vector.body430 ] ; 6 uses
  %next.gep432 = getelementptr i8, ptr %i.l, i64 %index431
  %next.gep433 = getelementptr i8, ptr %i.xr, i64 %index431
  %next.gep434 = getelementptr i8, ptr %.047.lcssa.i, i64 %index431
  %next.gep435 = getelementptr i8, ptr %.049.lcssa.i, i64 %index431
  %next.gep436 = getelementptr i8, ptr %.051.lcssa.i, i64 %index431
  %i.zx = getelementptr inbounds nuw i8, ptr %next.gep433, i64 1
  %i.zy = getelementptr inbounds nuw i8, ptr %next.gep432, i64 1
  %wide.load437 = load <4 x i8>, ptr %next.gep434, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.zz = zext <4 x i8> %wide.load437 to <4 x i32>
  %wide.load438 = load <4 x i8>, ptr %i.zx, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.aaa = zext <4 x i8> %wide.load438 to <4 x i32> ; 2 uses
  %wide.load439 = load <4 x i8>, ptr %i.zy, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.aab = zext <4 x i8> %wide.load439 to <4 x i32>
  %i.aac = sub nsw <4 x i32> %i.zz, %i.aaa        ; 2 uses
  %i.aad = sub nsw <4 x i32> %i.aab, %i.aaa       ; 2 uses
  %i.aae = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aac, i1 true) ; 2 uses
  %i.aaf = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aad, i1 true) ; 2 uses
  %i.aag = add nsw <4 x i32> %i.aad, %i.aac
  %i.aah = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aag, i1 true) ; 2 uses
  %i.aai = icmp samesign ugt <4 x i32> %i.aae, %i.aaf
  %i.aaj = icmp samesign ugt <4 x i32> %i.aae, %i.aah
  %i.aak = select <4 x i1> %i.aai, <4 x i1> splat (i1 true), <4 x i1> %i.aaj
  %i.aal = icmp samesign ugt <4 x i32> %i.aaf, %i.aah
  %i.aam = select <4 x i1> %i.aal, <4 x i8> %wide.load438, <4 x i8> %wide.load437
  %i.aan = select <4 x i1> %i.aak, <4 x i8> %i.aam, <4 x i8> %wide.load439
  %wide.load440 = load <4 x i8>, ptr %next.gep436, align 1, !tbaa !10, !noalias !318
  %i.aao = sub <4 x i8> %wide.load440, %i.aan
  store <4 x i8> %i.aao, ptr %next.gep435, align 1, !tbaa !10, !noalias !318
  %index.next441 = add nuw i64 %index431, 4       ; 2 uses
  %i.aap = icmp eq i64 %index.next441, %n.vec429
  br i1 %i.aap, label %vec.epilog.middle.block442, label %vec.epilog.vector.body430, !llvm.loop !299

vec.epilog.middle.block442:                       ; preds = %vec.epilog.vector.body430
  %cmp.n443 = icmp eq i64 %i.yn, %n.vec429
  br i1 %cmp.n443, label %.thread214.thread, label %.lr.ph80.i.preheader

.lr.ph80.i.preheader:                             ; preds = %iter.check424, %vector.memcheck386, %vec.epilog.iter.check426, %vec.epilog.middle.block442
  %.179.i.ph = phi i64 [ %.0.lcssa.i175, %iter.check424 ], [ %.0.lcssa.i175, %vector.memcheck386 ], [ %i.ys, %vec.epilog.iter.check426 ], [ %i.zr, %vec.epilog.middle.block442 ]
  %.pn5678.i.ph = phi ptr [ %i.l, %iter.check424 ], [ %i.l, %vector.memcheck386 ], [ %i.yt, %vec.epilog.iter.check426 ], [ %i.zs, %vec.epilog.middle.block442 ]
  %.pn77.i.ph = phi ptr [ %i.xr, %iter.check424 ], [ %i.xr, %vector.memcheck386 ], [ %i.yu, %vec.epilog.iter.check426 ], [ %i.zt, %vec.epilog.middle.block442 ]
  %.14876.i.ph = phi ptr [ %.047.lcssa.i, %iter.check424 ], [ %.047.lcssa.i, %vector.memcheck386 ], [ %i.yv, %vec.epilog.iter.check426 ], [ %i.zu, %vec.epilog.middle.block442 ]
  %.15075.i.ph = phi ptr [ %.049.lcssa.i, %iter.check424 ], [ %.049.lcssa.i, %vector.memcheck386 ], [ %i.yw, %vec.epilog.iter.check426 ], [ %i.zv, %vec.epilog.middle.block442 ]
  %.15274.i.ph = phi ptr [ %.051.lcssa.i, %iter.check424 ], [ %.051.lcssa.i, %vector.memcheck386 ], [ %i.yx, %vec.epilog.iter.check426 ], [ %i.zw, %vec.epilog.middle.block442 ]
  br label %.lr.ph80.i

.lr.ph.i172:                                      ; preds = %.lr.ph.i172.prol.loopexit, %.lr.ph.i172
  %.05170.i = phi ptr [ %.051.i.3, %.lr.ph.i172 ], [ %.05170.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.04769.i = phi ptr [ %.047.i.3, %.lr.ph.i172 ], [ %.04769.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.04968.i = phi ptr [ %.049.i.3, %.lr.ph.i172 ], [ %.04968.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.067.i = phi i64 [ %i.aay, %.lr.ph.i172 ], [ %.067.i.unr, %.lr.ph.i172.prol.loopexit ]
  %i.aaq = load i8, ptr %.05170.i, align 1, !tbaa !10, !noalias !318
  %i.aar = load i8, ptr %.04769.i, align 1, !tbaa !10, !noalias !318
  %.narrow62.i = sub i8 %i.aaq, %i.aar
  store i8 %.narrow62.i, ptr %.04968.i, align 1, !tbaa !10, !noalias !318
  %.049.i = getelementptr inbounds nuw i8, ptr %.04968.i, i64 1
  %.047.i = getelementptr inbounds nuw i8, ptr %.04769.i, i64 1
  %.051.i = getelementptr inbounds nuw i8, ptr %.05170.i, i64 1
  %i.aas = load i8, ptr %.051.i, align 1, !tbaa !10, !noalias !318
  %i.aat = load i8, ptr %.047.i, align 1, !tbaa !10, !noalias !318
  %.narrow62.i.1 = sub i8 %i.aas, %i.aat
  store i8 %.narrow62.i.1, ptr %.049.i, align 1, !tbaa !10, !noalias !318
  %.049.i.1 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 2
  %.047.i.1 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 2
  %.051.i.1 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 2
  %i.aau = load i8, ptr %.051.i.1, align 1, !tbaa !10, !noalias !318
  %i.aav = load i8, ptr %.047.i.1, align 1, !tbaa !10, !noalias !318
  %.narrow62.i.2 = sub i8 %i.aau, %i.aav
  store i8 %.narrow62.i.2, ptr %.049.i.1, align 1, !tbaa !10, !noalias !318
  %.049.i.2 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 3
  %.047.i.2 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 3
  %.051.i.2 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 3
  %i.aaw = load i8, ptr %.051.i.2, align 1, !tbaa !10, !noalias !318
  %i.aax = load i8, ptr %.047.i.2, align 1, !tbaa !10, !noalias !318
  %.narrow62.i.3 = sub i8 %i.aaw, %i.aax
  store i8 %.narrow62.i.3, ptr %.049.i.2, align 1, !tbaa !10, !noalias !318
  %i.aay = add nuw nsw i64 %.067.i, 4             ; 2 uses
  %.049.i.3 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 4 ; 2 uses
  %.047.i.3 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 4 ; 2 uses
  %.051.i.3 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 4 ; 2 uses
  %exitcond.not.i173.3 = icmp eq i64 %i.aay, %i.xs
  br i1 %exitcond.not.i173.3, label %.preheader.i174, label %.lr.ph.i172, !llvm.loop !300

.lr.ph80.i:                                       ; preds = %.lr.ph80.i.preheader, %.lr.ph80.i
  %.179.i = phi i64 [ %i.abq, %.lr.ph80.i ], [ %.179.i.ph, %.lr.ph80.i.preheader ]
  %.pn5678.i = phi ptr [ %.045.i, %.lr.ph80.i ], [ %.pn5678.i.ph, %.lr.ph80.i.preheader ]
  %.pn77.i = phi ptr [ %.046.i, %.lr.ph80.i ], [ %.pn77.i.ph, %.lr.ph80.i.preheader ]
  %.14876.i = phi ptr [ %i.aaz, %.lr.ph80.i ], [ %.14876.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.15075.i = phi ptr [ %i.abp, %.lr.ph80.i ], [ %.15075.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.15274.i = phi ptr [ %i.abn, %.lr.ph80.i ], [ %.15274.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.046.i = getelementptr inbounds nuw i8, ptr %.pn77.i, i64 1 ; 2 uses
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn5678.i, i64 1 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %.14876.i, i64 1
  %i.aba = load i8, ptr %.14876.i, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.abb = zext i8 %i.aba to i32
  %i.abc = load i8, ptr %.046.i, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.abd = zext i8 %i.abc to i32                  ; 2 uses
  %i.abe = load i8, ptr %.045.i, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.abf = zext i8 %i.abe to i32
  %i.abg = sub nsw i32 %i.abb, %i.abd             ; 2 uses
  %i.abh = sub nsw i32 %i.abf, %i.abd             ; 2 uses
  %i.abi = tail call i32 @llvm.abs.i32(i32 %i.abg, i1 true) ; 2 uses
  %i.abj = tail call i32 @llvm.abs.i32(i32 %i.abh, i1 true) ; 2 uses
  %i.abk = add nsw i32 %i.abh, %i.abg
  %i.abl = tail call i32 @llvm.abs.i32(i32 %i.abk, i1 true) ; 2 uses
  %.not.i176 = icmp samesign ugt i32 %i.abi, %i.abj
  %.not57.i = icmp samesign ugt i32 %i.abi, %i.abl
  %or.cond.i177 = select i1 %.not.i176, i1 true, i1 %.not57.i
  %.not58.i = icmp samesign ugt i32 %i.abj, %i.abl
  %i.abm = select i1 %.not58.i, i8 %i.abc, i8 %i.aba
  %.tr.i178 = select i1 %or.cond.i177, i8 %i.abm, i8 %i.abe
  %i.abn = getelementptr inbounds nuw i8, ptr %.15274.i, i64 1
  %i.abo = load i8, ptr %.15274.i, align 1, !tbaa !10, !noalias !318
  %.narrow.i179 = sub i8 %i.abo, %.tr.i178
  %i.abp = getelementptr inbounds nuw i8, ptr %.15075.i, i64 1
  store i8 %.narrow.i179, ptr %.15075.i, align 1, !tbaa !10, !noalias !318
  %i.abq = add nuw i64 %.179.i, 1                 ; 2 uses
  %exitcond85.not.i = icmp eq i64 %i.abq, %i.e
  br i1 %exitcond85.not.i, label %.thread214.thread, label %.lr.ph80.i, !llvm.loop !301

.thread214:                                       ; preds = %bb.t
  %i.abr = and i32 %.0111, 128
  %.not126 = icmp eq i32 %i.abr, 0
  br i1 %.not126, label %.thread214.thread, label %bb.v

bb.v:                                             ; preds = %.thread214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !66, !alias.scope !319 ; 21 uses
  store i8 4, ptr %i.abt, align 1, !tbaa !10, !noalias !319
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !68, !alias.scope !319 ; 18 uses
  %i.abw = zext nneg i32 %i.j to i64              ; 8 uses
  %.06479.i = getelementptr inbounds nuw i8, ptr %i.abt, i64 1 ; 5 uses
  %.06280.i = getelementptr inbounds nuw i8, ptr %i.abv, i64 1 ; 5 uses
  %.06681.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 5 uses
  %.not109.i = icmp eq i32 %i.j, 0
  br i1 %.not109.i, label %.preheader.i182, label %.lr.ph.i180.preheader

.lr.ph.i180.preheader:                            ; preds = %bb.v
  %min.iters.check328 = icmp ult i8 %i.g, 57
  br i1 %min.iters.check328, label %.lr.ph.i180.preheader691, label %vector.memcheck323

vector.memcheck323:                               ; preds = %.lr.ph.i180.preheader
  %29 = ptrtoaddr ptr %i.abt to i64               ; 2 uses
  %30 = ptrtoaddr ptr %i.l to i64
  %i.abx = sub i64 %30, %29
  %diff.check324 = icmp ugt i64 %i.abx, -4
  %31 = ptrtoaddr ptr %i.abv to i64
  %i.aby = sub i64 %31, %29
  %diff.check325 = icmp ugt i64 %i.aby, -4
  %conflict.rdx326 = or i1 %diff.check324, %diff.check325
  br i1 %conflict.rdx326, label %.lr.ph.i180.preheader691, label %vector.ph329

vector.ph329:                                     ; preds = %vector.memcheck323
  %n.vec330 = and i64 %i.abw, 60                  ; 12 uses
  %i.abz = getelementptr i8, ptr %.06681.i, i64 %n.vec330 ; 2 uses
  %i.aca = getelementptr i8, ptr %.06280.i, i64 %n.vec330 ; 2 uses
  %i.acb = getelementptr i8, ptr %.06479.i, i64 %n.vec330 ; 2 uses
  %i.acc = getelementptr i8, ptr %i.l, i64 3
  %wide.load338 = load <2 x i8>, ptr %.06681.i, align 1, !tbaa !10, !noalias !319
  %wide.load339 = load <2 x i8>, ptr %i.acc, align 1, !tbaa !10, !noalias !319
  %i.acd = getelementptr i8, ptr %i.abv, i64 3
  %wide.load340 = load <2 x i8>, ptr %.06280.i, align 1, !tbaa !10, !noalias !319
  %wide.load341 = load <2 x i8>, ptr %i.acd, align 1, !tbaa !10, !noalias !319
  %i.ace = sub <2 x i8> %wide.load338, %wide.load340 ; 3 uses
  %i.acf = sub <2 x i8> %wide.load339, %wide.load341 ; 3 uses
  %i.acg = getelementptr i8, ptr %i.abt, i64 3
  store <2 x i8> %i.ace, ptr %.06479.i, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.acf, ptr %i.acg, align 1, !tbaa !10, !noalias !319
  %i.ach = zext <2 x i8> %i.ace to <2 x i64>      ; 2 uses
  %i.aci = zext <2 x i8> %i.acf to <2 x i64>      ; 2 uses
  %i.acj = sub nuw nsw <2 x i64> splat (i64 256), %i.ach
  %i.ack = sub nuw nsw <2 x i64> splat (i64 256), %i.aci
  %i.acl = icmp slt <2 x i8> %i.ace, zeroinitializer
  %i.acm = icmp slt <2 x i8> %i.acf, zeroinitializer
  %i.acn = select <2 x i1> %i.acl, <2 x i64> %i.acj, <2 x i64> %i.ach ; 2 uses
  %i.aco = select <2 x i1> %i.acm, <2 x i64> %i.ack, <2 x i64> %i.aci ; 2 uses
  %i.acp = icmp eq i64 %n.vec330, 4
  br i1 %i.acp, label %middle.block343, label %vector.body331.1

vector.body331.1:                                 ; preds = %vector.ph329
  %next.gep335.1 = getelementptr i8, ptr %i.l, i64 5
  %next.gep336.1 = getelementptr i8, ptr %i.abv, i64 5
  %next.gep337.1 = getelementptr i8, ptr %i.abt, i64 5
  %i.acq = getelementptr i8, ptr %i.l, i64 7
  %wide.load338.1 = load <2 x i8>, ptr %next.gep335.1, align 1, !tbaa !10, !noalias !319
  %wide.load339.1 = load <2 x i8>, ptr %i.acq, align 1, !tbaa !10, !noalias !319
  %i.acr = getelementptr i8, ptr %i.abv, i64 7
  %wide.load340.1 = load <2 x i8>, ptr %next.gep336.1, align 1, !tbaa !10, !noalias !319
  %wide.load341.1 = load <2 x i8>, ptr %i.acr, align 1, !tbaa !10, !noalias !319
  %i.acs = sub <2 x i8> %wide.load338.1, %wide.load340.1 ; 3 uses
  %i.act = sub <2 x i8> %wide.load339.1, %wide.load341.1 ; 3 uses
  %i.acu = getelementptr i8, ptr %i.abt, i64 7
  store <2 x i8> %i.acs, ptr %next.gep337.1, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.act, ptr %i.acu, align 1, !tbaa !10, !noalias !319
  %i.acv = zext <2 x i8> %i.acs to <2 x i64>      ; 2 uses
  %i.acw = zext <2 x i8> %i.act to <2 x i64>      ; 2 uses
  %i.acx = sub nuw nsw <2 x i64> splat (i64 256), %i.acv
  %i.acy = sub nuw nsw <2 x i64> splat (i64 256), %i.acw
  %i.acz = icmp slt <2 x i8> %i.acs, zeroinitializer
  %i.ada = icmp slt <2 x i8> %i.act, zeroinitializer
  %i.adb = select <2 x i1> %i.acz, <2 x i64> %i.acx, <2 x i64> %i.acv
  %i.adc = select <2 x i1> %i.ada, <2 x i64> %i.acy, <2 x i64> %i.acw
  %i.add = add nuw nsw <2 x i64> %i.adb, %i.acn   ; 2 uses
  %i.ade = add nuw nsw <2 x i64> %i.adc, %i.aco   ; 2 uses
  %i.adf = icmp eq i64 %n.vec330, 8
  br i1 %i.adf, label %middle.block343, label %vector.body331.2

vector.body331.2:                                 ; preds = %vector.body331.1
  %next.gep335.2 = getelementptr i8, ptr %i.l, i64 9
  %next.gep336.2 = getelementptr i8, ptr %i.abv, i64 9
  %next.gep337.2 = getelementptr i8, ptr %i.abt, i64 9
  %i.adg = getelementptr i8, ptr %i.l, i64 11
  %wide.load338.2 = load <2 x i8>, ptr %next.gep335.2, align 1, !tbaa !10, !noalias !319
  %wide.load339.2 = load <2 x i8>, ptr %i.adg, align 1, !tbaa !10, !noalias !319
  %i.adh = getelementptr i8, ptr %i.abv, i64 11
  %wide.load340.2 = load <2 x i8>, ptr %next.gep336.2, align 1, !tbaa !10, !noalias !319
  %wide.load341.2 = load <2 x i8>, ptr %i.adh, align 1, !tbaa !10, !noalias !319
  %i.adi = sub <2 x i8> %wide.load338.2, %wide.load340.2 ; 3 uses
  %i.adj = sub <2 x i8> %wide.load339.2, %wide.load341.2 ; 3 uses
  %i.adk = getelementptr i8, ptr %i.abt, i64 11
  store <2 x i8> %i.adi, ptr %next.gep337.2, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.adj, ptr %i.adk, align 1, !tbaa !10, !noalias !319
  %i.adl = zext <2 x i8> %i.adi to <2 x i64>      ; 2 uses
  %i.adm = zext <2 x i8> %i.adj to <2 x i64>      ; 2 uses
  %i.adn = sub nuw nsw <2 x i64> splat (i64 256), %i.adl
  %i.ado = sub nuw nsw <2 x i64> splat (i64 256), %i.adm
  %i.adp = icmp slt <2 x i8> %i.adi, zeroinitializer
  %i.adq = icmp slt <2 x i8> %i.adj, zeroinitializer
  %i.adr = select <2 x i1> %i.adp, <2 x i64> %i.adn, <2 x i64> %i.adl
  %i.ads = select <2 x i1> %i.adq, <2 x i64> %i.ado, <2 x i64> %i.adm
  %i.adt = add nuw nsw <2 x i64> %i.adr, %i.add   ; 2 uses
  %i.adu = add nuw nsw <2 x i64> %i.ads, %i.ade   ; 2 uses
  %i.adv = icmp eq i64 %n.vec330, 12
  br i1 %i.adv, label %middle.block343, label %vector.body331.3

vector.body331.3:                                 ; preds = %vector.body331.2
  %next.gep335.3 = getelementptr i8, ptr %i.l, i64 13
  %next.gep336.3 = getelementptr i8, ptr %i.abv, i64 13
  %next.gep337.3 = getelementptr i8, ptr %i.abt, i64 13
  %i.adw = getelementptr i8, ptr %i.l, i64 15
  %wide.load338.3 = load <2 x i8>, ptr %next.gep335.3, align 1, !tbaa !10, !noalias !319
  %wide.load339.3 = load <2 x i8>, ptr %i.adw, align 1, !tbaa !10, !noalias !319
  %i.adx = getelementptr i8, ptr %i.abv, i64 15
  %wide.load340.3 = load <2 x i8>, ptr %next.gep336.3, align 1, !tbaa !10, !noalias !319
  %wide.load341.3 = load <2 x i8>, ptr %i.adx, align 1, !tbaa !10, !noalias !319
  %i.ady = sub <2 x i8> %wide.load338.3, %wide.load340.3 ; 3 uses
  %i.adz = sub <2 x i8> %wide.load339.3, %wide.load341.3 ; 3 uses
  %i.aea = getelementptr i8, ptr %i.abt, i64 15
  store <2 x i8> %i.ady, ptr %next.gep337.3, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.adz, ptr %i.aea, align 1, !tbaa !10, !noalias !319
  %i.aeb = zext <2 x i8> %i.ady to <2 x i64>      ; 2 uses
  %i.aec = zext <2 x i8> %i.adz to <2 x i64>      ; 2 uses
  %i.aed = sub nuw nsw <2 x i64> splat (i64 256), %i.aeb
  %i.aee = sub nuw nsw <2 x i64> splat (i64 256), %i.aec
  %i.aef = icmp slt <2 x i8> %i.ady, zeroinitializer
  %i.aeg = icmp slt <2 x i8> %i.adz, zeroinitializer
  %i.aeh = select <2 x i1> %i.aef, <2 x i64> %i.aed, <2 x i64> %i.aeb
  %i.aei = select <2 x i1> %i.aeg, <2 x i64> %i.aee, <2 x i64> %i.aec
  %i.aej = add nuw nsw <2 x i64> %i.aeh, %i.adt   ; 2 uses
  %i.aek = add nuw nsw <2 x i64> %i.aei, %i.adu   ; 2 uses
  %i.ael = icmp eq i64 %n.vec330, 16
  br i1 %i.ael, label %middle.block343, label %vector.body331.4

vector.body331.4:                                 ; preds = %vector.body331.3
  %next.gep335.4 = getelementptr i8, ptr %i.l, i64 17
  %next.gep336.4 = getelementptr i8, ptr %i.abv, i64 17
  %next.gep337.4 = getelementptr i8, ptr %i.abt, i64 17
  %i.aem = getelementptr i8, ptr %i.l, i64 19
  %wide.load338.4 = load <2 x i8>, ptr %next.gep335.4, align 1, !tbaa !10, !noalias !319
  %wide.load339.4 = load <2 x i8>, ptr %i.aem, align 1, !tbaa !10, !noalias !319
  %i.aen = getelementptr i8, ptr %i.abv, i64 19
  %wide.load340.4 = load <2 x i8>, ptr %next.gep336.4, align 1, !tbaa !10, !noalias !319
  %wide.load341.4 = load <2 x i8>, ptr %i.aen, align 1, !tbaa !10, !noalias !319
  %i.aeo = sub <2 x i8> %wide.load338.4, %wide.load340.4 ; 3 uses
  %i.aep = sub <2 x i8> %wide.load339.4, %wide.load341.4 ; 3 uses
  %i.aeq = getelementptr i8, ptr %i.abt, i64 19
  store <2 x i8> %i.aeo, ptr %next.gep337.4, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.aep, ptr %i.aeq, align 1, !tbaa !10, !noalias !319
  %i.aer = zext <2 x i8> %i.aeo to <2 x i64>      ; 2 uses
  %i.aes = zext <2 x i8> %i.aep to <2 x i64>      ; 2 uses
  %i.aet = sub nuw nsw <2 x i64> splat (i64 256), %i.aer
  %i.aeu = sub nuw nsw <2 x i64> splat (i64 256), %i.aes
  %i.aev = icmp slt <2 x i8> %i.aeo, zeroinitializer
  %i.aew = icmp slt <2 x i8> %i.aep, zeroinitializer
  %i.aex = select <2 x i1> %i.aev, <2 x i64> %i.aet, <2 x i64> %i.aer
  %i.aey = select <2 x i1> %i.aew, <2 x i64> %i.aeu, <2 x i64> %i.aes
  %i.aez = add nuw nsw <2 x i64> %i.aex, %i.aej   ; 2 uses
  %i.afa = add nuw nsw <2 x i64> %i.aey, %i.aek   ; 2 uses
  %i.afb = icmp eq i64 %n.vec330, 20
  br i1 %i.afb, label %middle.block343, label %vector.body331.5

vector.body331.5:                                 ; preds = %vector.body331.4
  %next.gep335.5 = getelementptr i8, ptr %i.l, i64 21
  %next.gep336.5 = getelementptr i8, ptr %i.abv, i64 21
  %next.gep337.5 = getelementptr i8, ptr %i.abt, i64 21
  %i.afc = getelementptr i8, ptr %i.l, i64 23
  %wide.load338.5 = load <2 x i8>, ptr %next.gep335.5, align 1, !tbaa !10, !noalias !319
  %wide.load339.5 = load <2 x i8>, ptr %i.afc, align 1, !tbaa !10, !noalias !319
  %i.afd = getelementptr i8, ptr %i.abv, i64 23
  %wide.load340.5 = load <2 x i8>, ptr %next.gep336.5, align 1, !tbaa !10, !noalias !319
  %wide.load341.5 = load <2 x i8>, ptr %i.afd, align 1, !tbaa !10, !noalias !319
  %i.afe = sub <2 x i8> %wide.load338.5, %wide.load340.5 ; 3 uses
  %i.aff = sub <2 x i8> %wide.load339.5, %wide.load341.5 ; 3 uses
  %i.afg = getelementptr i8, ptr %i.abt, i64 23
  store <2 x i8> %i.afe, ptr %next.gep337.5, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.aff, ptr %i.afg, align 1, !tbaa !10, !noalias !319
  %i.afh = zext <2 x i8> %i.afe to <2 x i64>      ; 2 uses
  %i.afi = zext <2 x i8> %i.aff to <2 x i64>      ; 2 uses
  %i.afj = sub nuw nsw <2 x i64> splat (i64 256), %i.afh
  %i.afk = sub nuw nsw <2 x i64> splat (i64 256), %i.afi
  %i.afl = icmp slt <2 x i8> %i.afe, zeroinitializer
  %i.afm = icmp slt <2 x i8> %i.aff, zeroinitializer
  %i.afn = select <2 x i1> %i.afl, <2 x i64> %i.afj, <2 x i64> %i.afh
  %i.afo = select <2 x i1> %i.afm, <2 x i64> %i.afk, <2 x i64> %i.afi
  %i.afp = add nuw nsw <2 x i64> %i.afn, %i.aez   ; 2 uses
  %i.afq = add nuw nsw <2 x i64> %i.afo, %i.afa   ; 2 uses
  %i.afr = icmp eq i64 %n.vec330, 24
  br i1 %i.afr, label %middle.block343, label %vector.body331.6

vector.body331.6:                                 ; preds = %vector.body331.5
  %next.gep335.6 = getelementptr i8, ptr %i.l, i64 25
  %next.gep336.6 = getelementptr i8, ptr %i.abv, i64 25
  %next.gep337.6 = getelementptr i8, ptr %i.abt, i64 25
  %i.afs = getelementptr i8, ptr %i.l, i64 27
  %wide.load338.6 = load <2 x i8>, ptr %next.gep335.6, align 1, !tbaa !10, !noalias !319
  %wide.load339.6 = load <2 x i8>, ptr %i.afs, align 1, !tbaa !10, !noalias !319
  %i.aft = getelementptr i8, ptr %i.abv, i64 27
  %wide.load340.6 = load <2 x i8>, ptr %next.gep336.6, align 1, !tbaa !10, !noalias !319
  %wide.load341.6 = load <2 x i8>, ptr %i.aft, align 1, !tbaa !10, !noalias !319
  %i.afu = sub <2 x i8> %wide.load338.6, %wide.load340.6 ; 3 uses
  %i.afv = sub <2 x i8> %wide.load339.6, %wide.load341.6 ; 3 uses
  %i.afw = getelementptr i8, ptr %i.abt, i64 27
  store <2 x i8> %i.afu, ptr %next.gep337.6, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.afv, ptr %i.afw, align 1, !tbaa !10, !noalias !319
  %i.afx = zext <2 x i8> %i.afu to <2 x i64>      ; 2 uses
  %i.afy = zext <2 x i8> %i.afv to <2 x i64>      ; 2 uses
  %i.afz = sub nuw nsw <2 x i64> splat (i64 256), %i.afx
  %i.aga = sub nuw nsw <2 x i64> splat (i64 256), %i.afy
  %i.agb = icmp slt <2 x i8> %i.afu, zeroinitializer
  %i.agc = icmp slt <2 x i8> %i.afv, zeroinitializer
  %i.agd = select <2 x i1> %i.agb, <2 x i64> %i.afz, <2 x i64> %i.afx
  %i.age = select <2 x i1> %i.agc, <2 x i64> %i.aga, <2 x i64> %i.afy
  %i.agf = add <2 x i64> %i.agd, %i.afp           ; 2 uses
  %i.agg = add <2 x i64> %i.age, %i.afq           ; 2 uses
  %i.agh = icmp eq i64 %n.vec330, 28
  br i1 %i.agh, label %middle.block343, label %vector.body331.7

vector.body331.7:                                 ; preds = %vector.body331.6
end_hunk_0
