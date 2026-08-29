Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/pngwutil?download=true
inline.NumInlined: 101
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@png_do_write_interlace:bb.a
  %i.ef = add i32 %.0100128.ph, %i.dt             ; 4 uses
  %i.eg = icmp ult i32 %i.ef, %i.d
  br i1 %i.eg, label %bb.k, label %.loopexit.sink.split, !llvm.loop !257

bb.k:                                             ; preds = %.outer209
  %i.eh = lshr i32 %i.ef, 2
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !7
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
  br i1 %i.eu, label %bb.l, label %.loopexit.sink.split, !llvm.loop !257

bb.l:                                             ; preds = %bb.k
  %i.ev = lshr i32 %i.et, 2
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !7
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
  br i1 %i.fi, label %.thread182, label %.loopexit.sink.split, !llvm.loop !257

.thread182:                                       ; preds = %bb.l
  %i.fj = lshr i32 %i.fh, 2
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !7
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl i32 %i.fh, 1
  %i.fp = and i32 %i.fo, 6
  %i.fq = xor i32 %i.fp, 6
  %i.fr = lshr i32 %i.fn, %i.fq
  %i.fs = and i32 %i.fr, 3
  %i.ft = or disjoint i32 %i.fs, %i.fg
  %i.fu = trunc nuw i32 %i.ft to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %.0105125.ph, i64 1
  store i8 %i.fu, ptr %.0105125.ph, align 1, !tbaa !7
  %i.fw = add i32 %i.fh, %i.dt                    ; 2 uses
  %i.fx = icmp ult i32 %i.fw, %i.d
  br i1 %i.fx, label %.outer209, label %.loopexit, !llvm.loop !257

bb.m:                                             ; preds = %bb.b
  %i.fy = sext i32 %2 to i64                      ; 5 uses
  %i.fz = getelementptr inbounds i8, ptr @png_pass_start, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !7
  %i.gb = zext i8 %i.ga to i32                    ; 5 uses
  %i.gc = icmp ugt i32 %i.d, %i.gb
  br i1 %i.gc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.m
  %i.gd = getelementptr inbounds i8, ptr @png_pass_inc, i64 %i.fy
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !7
  %i.gf = zext i8 %i.ge to i32                    ; 2 uses
  br label %.outer211

.outer211:                                        ; preds = %.lr.ph, %.thread196
  %.094122.ph = phi i32 [ %i.hf, %.thread196 ], [ %i.gb, %.lr.ph ] ; 3 uses
  %.098119.ph = phi ptr [ %i.he, %.thread196 ], [ %1, %.lr.ph ] ; 3 uses
  %i.gg = lshr i32 %.094122.ph, 1
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !7
  %i.gk = zext i8 %i.gj to i32
  %i.gl = shl i32 %.094122.ph, 2
  %i.gm = and i32 %i.gl, 4
  %i.gn = xor i32 %i.gm, 4
  %i.go = lshr i32 %i.gk, %i.gn
  %i.gp = shl nuw nsw i32 %i.go, 4                ; 2 uses
  %i.gq = add i32 %.094122.ph, %i.gf              ; 4 uses
  %i.gr = icmp ult i32 %i.gq, %i.d
  br i1 %i.gr, label %.thread196, label %.loopexit.sink.split, !llvm.loop !258

.thread196:                                       ; preds = %.outer211
  %i.gs = lshr i32 %i.gq, 1
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !7
  %i.gw = zext i8 %i.gv to i32
  %i.gx = shl i32 %i.gq, 2
  %i.gy = and i32 %i.gx, 4
  %i.gz = xor i32 %i.gy, 4
  %i.ha = lshr i32 %i.gw, %i.gz
  %i.hb = and i32 %i.ha, 15
  %i.hc = or disjoint i32 %i.hb, %i.gp
  %i.hd = trunc i32 %i.hc to i8
  %i.he = getelementptr inbounds nuw i8, ptr %.098119.ph, i64 1
  store i8 %i.hd, ptr %.098119.ph, align 1, !tbaa !7
  %i.hf = add i32 %i.gq, %i.gf                    ; 2 uses
  %i.hg = icmp ult i32 %i.hf, %i.d
  br i1 %i.hg, label %.outer211, label %.loopexit, !llvm.loop !258

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
  br i1 %i.hw, label %bb.o, label %.loopexit, !llvm.loop !259

.loopexit.sink.split:                             ; preds = %.outer211, %.outer209, %bb.k, %bb.l, %.outer, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sink249 = phi i32 [ %i.cv, %bb.i ], [ %i.fg, %bb.l ], [ %i.v, %.outer ], [ %i.ai, %bb.d ], [ %i.av, %bb.e ], [ %i.bi, %bb.f ], [ %i.bv, %bb.g ], [ %i.ci, %bb.h ], [ %i.ee, %.outer209 ], [ %i.es, %bb.k ], [ %i.gp, %.outer211 ]
  %.098119.ph.sink = phi ptr [ %.0112135.ph, %.outer ], [ %.0105125.ph, %.outer209 ], [ %.0112135.ph, %bb.i ], [ %.0112135.ph, %bb.h ], [ %.0112135.ph, %bb.g ], [ %.0112135.ph, %bb.f ], [ %.0112135.ph, %bb.e ], [ %.0112135.ph, %bb.d ], [ %.0105125.ph, %bb.l ], [ %.0105125.ph, %bb.k ], [ %.098119.ph, %.outer211 ]
  %.pre-phi149.ph = phi i32 [ %i.h, %.outer ], [ %i.dp, %.outer209 ], [ %i.h, %bb.i ], [ %i.h, %bb.h ], [ %i.h, %bb.g ], [ %i.h, %bb.f ], [ %i.h, %bb.e ], [ %i.h, %bb.d ], [ %i.dp, %bb.l ], [ %i.dp, %bb.k ], [ %i.gb, %.outer211 ]
  %.pre-phi.ph = phi i64 [ %i.e, %.outer ], [ %i.dm, %.outer209 ], [ %i.e, %bb.i ], [ %i.e, %bb.h ], [ %i.e, %bb.g ], [ %i.e, %bb.f ], [ %i.e, %bb.e ], [ %i.e, %bb.d ], [ %i.dm, %bb.l ], [ %i.dm, %bb.k ], [ %i.fy, %.outer211 ]
  %i.hx = trunc i32 %.sink249 to i8
  store i8 %i.hx, ptr %.098119.ph.sink, align 1, !tbaa !7
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
  %.not229 = icmp eq i64 %i.e, 0
  br i1 %.not229, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.e, 4
  br i1 %min.iters.check, label %.lr.ph.preheader706, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 144115188075855868       ; 4 uses
  %i.t = getelementptr i8, ptr %i.l, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi272 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.l, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %wide.load = load <2 x i8>, ptr %i.u, align 1, !tbaa !7 ; 2 uses
  %wide.load273 = load <2 x i8>, ptr %i.v, align 1, !tbaa !7 ; 2 uses
  %i.w = zext <2 x i8> %wide.load to <2 x i32>    ; 2 uses
  %i.x = zext <2 x i8> %wide.load273 to <2 x i32> ; 2 uses
  %i.y = sub nuw nsw <2 x i32> splat (i32 256), %i.w
  %i.z = sub nuw nsw <2 x i32> splat (i32 256), %i.x
  %i.aa = icmp slt <2 x i8> %wide.load, zeroinitializer
  %i.ab = icmp slt <2 x i8> %wide.load273, zeroinitializer
  %i.ac = select <2 x i1> %i.aa, <2 x i32> %i.y, <2 x i32> %i.w
  %i.ad = select <2 x i1> %i.ab, <2 x i32> %i.z, <2 x i32> %i.x
  %i.ae = zext nneg <2 x i32> %i.ac to <2 x i64>
  %i.af = zext nneg <2 x i32> %i.ad to <2 x i64>
  %i.ag = add <2 x i64> %vec.phi, %i.ae           ; 2 uses
  %i.ah = add <2 x i64> %vec.phi272, %i.af        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader706

.lr.ph.preheader706:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0228.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0101227.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  %.pn226.ph = phi ptr [ %i.l, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader706, %.lr.ph
  %.0228 = phi i64 [ %i.ar, %.lr.ph ], [ %.0228.ph, %.lr.ph.preheader706 ]
  %.0101227 = phi i64 [ %i.aq, %.lr.ph ], [ %.0101227.ph, %.lr.ph.preheader706 ]
  %.pn226 = phi ptr [ %.0102, %.lr.ph ], [ %.pn226.ph, %.lr.ph.preheader706 ]
  %.0102 = getelementptr inbounds nuw i8, ptr %.pn226, i64 1 ; 2 uses
  %i.ak = load i8, ptr %.0102, align 1, !tbaa !7  ; 2 uses
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %i.am = sub nuw nsw i32 256, %i.al
  %i.an = icmp slt i8 %i.ak, 0
  %i.ao = select i1 %i.an, i32 %i.am, i32 %i.al
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = add i64 %.0101227, %i.ap                ; 2 uses
  %i.ar = add nuw nsw i64 %.0228, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.e
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !264

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %.preheader, %bb.c, %bb.b
  %.0111 = phi i32 [ %i.p, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %.preheader ], [ %i.c, %middle.block ], [ %i.c, %.lr.ph ] ; 8 uses
  %.0103 = phi i64 [ -257, %bb.b ], [ -257, %bb.c ], [ 0, %.preheader ], [ %i.aj, %middle.block ], [ %i.aq, %.lr.ph ] ; 4 uses
  %i.as = icmp eq i32 %.0111, 16
  br i1 %i.as, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.at = getelementptr i8, ptr %0, i64 568
  %.val128 = load ptr, ptr %i.at, align 8, !tbaa !245 ; 9 uses
  store i8 1, ptr %.val128, align 1, !tbaa !7
  %i.au = zext nneg i32 %i.j to i64               ; 13 uses
  %.0201.i = getelementptr inbounds nuw i8, ptr %.val128, i64 1 ; 6 uses
  %.0222.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 6 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.preheader.i, label %iter.check620

iter.check620:                                    ; preds = %bb.d
  %.val128601 = ptrtoaddr ptr %.val128 to i64
  %min.iters.check604 = icmp ult i8 %i.g, 25
  %i.av = sub i64 %i.m, %.val128601
  %diff.check602 = icmp ugt i64 %i.av, -16
  %or.cond686 = select i1 %min.iters.check604, i1 true, i1 %diff.check602
  br i1 %or.cond686, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check605

vector.main.loop.iter.check605:                   ; preds = %iter.check620
  %min.iters.check606 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check606, label %vec.epilog.ph624, label %vector.ph607

vector.ph607:                                     ; preds = %vector.main.loop.iter.check605
  %i.aw = and i64 %i.au, 12
  %n.vec608 = and i64 %i.au, 48                   ; 6 uses
  %i.ax = getelementptr i8, ptr %.0222.i, i64 %n.vec608 ; 2 uses
  %i.ay = getelementptr i8, ptr %.0201.i, i64 %n.vec608 ; 2 uses
  %wide.load613 = load <16 x i8>, ptr %.0222.i, align 1, !tbaa !7
  store <16 x i8> %wide.load613, ptr %.0201.i, align 1, !tbaa !7
  %i.az = icmp eq i64 %n.vec608, 16
  br i1 %i.az, label %middle.block615, label %vector.body609.1

vector.body609.1:                                 ; preds = %vector.ph607
  %next.gep611.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep612.1 = getelementptr i8, ptr %.val128, i64 17
  %wide.load613.1 = load <16 x i8>, ptr %next.gep611.1, align 1, !tbaa !7
  store <16 x i8> %wide.load613.1, ptr %next.gep612.1, align 1, !tbaa !7
  br label %middle.block615

middle.block615:                                  ; preds = %vector.body609.1, %vector.ph607
  %cmp.n616 = icmp eq i64 %n.vec608, %i.au
  br i1 %cmp.n616, label %.preheader.i, label %vec.epilog.iter.check622

vec.epilog.iter.check622:                         ; preds = %middle.block615
  %min.epilog.iters.check623 = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check623, label %.lr.ph.i.preheader, label %vec.epilog.ph624, !prof !265

vec.epilog.ph624:                                 ; preds = %vector.main.loop.iter.check605, %vec.epilog.iter.check622
  %vec.epilog.resume.val617 = phi i64 [ %n.vec608, %vec.epilog.iter.check622 ], [ 0, %vector.main.loop.iter.check605 ]
  %n.vec625 = and i64 %i.au, 60                   ; 5 uses
  %i.ba = getelementptr i8, ptr %.0222.i, i64 %n.vec625 ; 2 uses
  %i.bb = getelementptr i8, ptr %.0201.i, i64 %n.vec625 ; 2 uses
  br label %vec.epilog.vector.body626

vec.epilog.vector.body626:                        ; preds = %vec.epilog.vector.body626, %vec.epilog.ph624
  %index627 = phi i64 [ %vec.epilog.resume.val617, %vec.epilog.ph624 ], [ %index.next631, %vec.epilog.vector.body626 ] ; 3 uses
  %next.gep628 = getelementptr i8, ptr %.0222.i, i64 %index627
  %next.gep629 = getelementptr i8, ptr %.0201.i, i64 %index627
  %wide.load630 = load <4 x i8>, ptr %next.gep628, align 1, !tbaa !7
  store <4 x i8> %wide.load630, ptr %next.gep629, align 1, !tbaa !7
  %index.next631 = add nuw i64 %index627, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next631, %n.vec625
  br i1 %i.bc, label %vec.epilog.middle.block632, label %vec.epilog.vector.body626, !llvm.loop !266

vec.epilog.middle.block632:                       ; preds = %vec.epilog.vector.body626
  %cmp.n633 = icmp eq i64 %n.vec625, %i.au
  br i1 %cmp.n633, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check620, %vec.epilog.iter.check622, %vec.epilog.middle.block632
  %.0225.i.ph = phi ptr [ %.0222.i, %iter.check620 ], [ %i.ax, %vec.epilog.iter.check622 ], [ %i.ba, %vec.epilog.middle.block632 ] ; 2 uses
  %.0204.i.ph = phi ptr [ %.0201.i, %iter.check620 ], [ %i.ay, %vec.epilog.iter.check622 ], [ %i.bb, %vec.epilog.middle.block632 ] ; 2 uses
  %.03.i.ph = phi i64 [ 0, %iter.check620 ], [ %n.vec608, %vec.epilog.iter.check622 ], [ %n.vec625, %vec.epilog.middle.block632 ] ; 4 uses
  %i.bd = sub nsw i64 %i.au, %.03.i.ph
  %xtraiter722 = and i64 %i.bd, 7                 ; 2 uses
  %lcmp.mod723.not = icmp eq i64 %xtraiter722, 0
  br i1 %lcmp.mod723.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0225.i.prol = phi ptr [ %.022.i.prol, %.lr.ph.i.prol ], [ %.0225.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0204.i.prol = phi ptr [ %.020.i.prol, %.lr.ph.i.prol ], [ %.0204.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.03.i.prol = phi i64 [ %i.bf, %.lr.ph.i.prol ], [ %.03.i.ph, %.lr.ph.i.preheader ]
  %prol.iter724 = phi i64 [ %prol.iter724.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.be = load i8, ptr %.0225.i.prol, align 1, !tbaa !7
  store i8 %i.be, ptr %.0204.i.prol, align 1, !tbaa !7
  %i.bf = add nuw nsw i64 %.03.i.prol, 1          ; 2 uses
  %.020.i.prol = getelementptr inbounds nuw i8, ptr %.0204.i.prol, i64 1 ; 3 uses
  %.022.i.prol = getelementptr inbounds nuw i8, ptr %.0225.i.prol, i64 1 ; 3 uses
  %prol.iter724.next = add i64 %prol.iter724, 1   ; 2 uses
  %prol.iter724.cmp.not = icmp eq i64 %prol.iter724.next, %xtraiter722
  br i1 %prol.iter724.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !267

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.022.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.022.i.prol, %.lr.ph.i.prol ]
  %.0225.i.unr = phi ptr [ %.0225.i.ph, %.lr.ph.i.preheader ], [ %.022.i.prol, %.lr.ph.i.prol ]
  %.0204.i.unr = phi ptr [ %.0204.i.ph, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.03.i.unr = phi i64 [ %.03.i.ph, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i.prol ]
  %i.bg = sub nsw i64 %.03.i.ph, %i.au
  %i.bh = icmp ugt i64 %i.bg, -8
  br i1 %i.bh, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block615, %vec.epilog.middle.block632, %bb.d
  %.0.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.au, %middle.block615 ], [ %i.au, %vec.epilog.middle.block632 ], [ %i.au, %.lr.ph.i ], [ %i.au, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.020.lcssa.i = phi ptr [ %.0201.i, %bb.d ], [ %i.ay, %middle.block615 ], [ %i.bb, %vec.epilog.middle.block632 ], [ %.020.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.020.i.7, %.lr.ph.i ] ; 7 uses
  %.022.lcssa.i = phi ptr [ %.0222.i, %bb.d ], [ %i.ax, %middle.block615 ], [ %i.ba, %vec.epilog.middle.block632 ], [ %.022.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.022.i.7, %.lr.ph.i ] ; 7 uses
  %.020.lcssa.i638 = ptrtoaddr ptr %.020.lcssa.i to i64 ; 2 uses
  %.022.lcssa.i640 = ptrtoaddr ptr %.022.lcssa.i to i64
  %i.bi = icmp ult i64 %.0.lcssa.i, %i.e
  br i1 %i.bi, label %iter.check666, label %.thread214.thread

end_hunk_0
begin_hunk_1_@png_write_find_filter:bb.a
  %wide.load572 = load <16 x i8>, ptr %i.kf, align 1, !tbaa !7, !noalias !277
  %i.kg = sub <16 x i8> %wide.load569, %wide.load571
  %i.kh = sub <16 x i8> %wide.load570, %wide.load572
  %i.ki = getelementptr inbounds nuw i8, ptr %next.gep567, i64 17
  store <16 x i8> %i.kg, ptr %i.kb, align 1, !tbaa !7, !noalias !277
  store <16 x i8> %i.kh, ptr %i.ki, align 1, !tbaa !7, !noalias !277
  %index.next573 = add nuw i64 %index565, 32      ; 2 uses
  %i.kj = icmp eq i64 %index.next573, %n.vec563
  br i1 %i.kj, label %middle.block574, label %vector.body564, !llvm.loop !280

middle.block574:                                  ; preds = %vector.body564
  %cmp.n575 = icmp eq i64 %i.e, %n.vec563
  br i1 %cmp.n575, label %.thread214.thread, label %vec.epilog.iter.check582

vec.epilog.iter.check582:                         ; preds = %middle.block574
  %min.epilog.iters.check583 = icmp eq i64 %i.jx, 0
  br i1 %min.epilog.iters.check583, label %.lr.ph.i138.preheader, label %vec.epilog.ph584, !prof !270

vec.epilog.ph584:                                 ; preds = %vector.main.loop.iter.check560, %vec.epilog.iter.check582
  %vec.epilog.resume.val576 = phi i64 [ %n.vec563, %vec.epilog.iter.check582 ], [ 0, %vector.main.loop.iter.check560 ]
  %n.vec585 = and i64 %i.e, -4                    ; 6 uses
  %i.kk = getelementptr i8, ptr %i.jt, i64 %n.vec585
  %i.kl = getelementptr i8, ptr %i.jq, i64 %n.vec585
  %i.km = getelementptr i8, ptr %i.l, i64 %n.vec585
  br label %vec.epilog.vector.body586

vec.epilog.vector.body586:                        ; preds = %vec.epilog.vector.body586, %vec.epilog.ph584
  %index587 = phi i64 [ %vec.epilog.resume.val576, %vec.epilog.ph584 ], [ %index.next593, %vec.epilog.vector.body586 ] ; 4 uses
  %next.gep588 = getelementptr i8, ptr %i.jt, i64 %index587
  %next.gep589 = getelementptr i8, ptr %i.jq, i64 %index587
  %next.gep590 = getelementptr i8, ptr %i.l, i64 %index587
  %i.kn = getelementptr inbounds nuw i8, ptr %next.gep589, i64 1
  %i.ko = getelementptr inbounds nuw i8, ptr %next.gep588, i64 1
  %i.kp = getelementptr inbounds nuw i8, ptr %next.gep590, i64 1
  %wide.load591 = load <4 x i8>, ptr %i.kp, align 1, !tbaa !7, !noalias !277
  %wide.load592 = load <4 x i8>, ptr %i.ko, align 1, !tbaa !7, !noalias !277
  %i.kq = sub <4 x i8> %wide.load591, %wide.load592
  store <4 x i8> %i.kq, ptr %i.kn, align 1, !tbaa !7, !noalias !277
  %index.next593 = add nuw i64 %index587, 4       ; 2 uses
  %i.kr = icmp eq i64 %index.next593, %n.vec585
  br i1 %i.kr, label %vec.epilog.middle.block594, label %vec.epilog.vector.body586, !llvm.loop !281

vec.epilog.middle.block594:                       ; preds = %vec.epilog.vector.body586
  %cmp.n595 = icmp eq i64 %i.e, %n.vec585
  br i1 %cmp.n595, label %.thread214.thread, label %.lr.ph.i138.preheader

.lr.ph.i138.preheader:                            ; preds = %vector.memcheck554, %iter.check580, %vec.epilog.iter.check582, %vec.epilog.middle.block594
  %.020.i139.ph = phi i64 [ 0, %iter.check580 ], [ 0, %vector.memcheck554 ], [ %n.vec563, %vec.epilog.iter.check582 ], [ %n.vec585, %vec.epilog.middle.block594 ] ; 3 uses
  %.pn1519.i.ph = phi ptr [ %i.jt, %iter.check580 ], [ %i.jt, %vector.memcheck554 ], [ %i.jy, %vec.epilog.iter.check582 ], [ %i.kk, %vec.epilog.middle.block594 ] ; 2 uses
  %.pn1618.i.ph = phi ptr [ %i.jq, %iter.check580 ], [ %i.jq, %vector.memcheck554 ], [ %i.jz, %vec.epilog.iter.check582 ], [ %i.kl, %vec.epilog.middle.block594 ] ; 2 uses
  %.pn17.i.ph = phi ptr [ %i.l, %iter.check580 ], [ %i.l, %vector.memcheck554 ], [ %i.ka, %vec.epilog.iter.check582 ], [ %i.km, %vec.epilog.middle.block594 ] ; 2 uses
  %xtraiter719 = and i64 %i.e, 3                  ; 2 uses
  %lcmp.mod720.not = icmp eq i64 %xtraiter719, 0
  br i1 %lcmp.mod720.not, label %.lr.ph.i138.prol.loopexit, label %.lr.ph.i138.prol

.lr.ph.i138.prol:                                 ; preds = %.lr.ph.i138.preheader, %.lr.ph.i138.prol
  %.020.i139.prol = phi i64 [ %i.ku, %.lr.ph.i138.prol ], [ %.020.i139.ph, %.lr.ph.i138.preheader ]
  %.pn1519.i.prol = phi ptr [ %.012.i.prol, %.lr.ph.i138.prol ], [ %.pn1519.i.ph, %.lr.ph.i138.preheader ]
  %.pn1618.i.prol = phi ptr [ %.013.i.prol, %.lr.ph.i138.prol ], [ %.pn1618.i.ph, %.lr.ph.i138.preheader ]
  %.pn17.i.prol = phi ptr [ %.014.i.prol, %.lr.ph.i138.prol ], [ %.pn17.i.ph, %.lr.ph.i138.preheader ]
  %prol.iter721 = phi i64 [ %prol.iter721.next, %.lr.ph.i138.prol ], [ 0, %.lr.ph.i138.preheader ]
  %.013.i.prol = getelementptr inbounds nuw i8, ptr %.pn1618.i.prol, i64 1 ; 3 uses
  %.012.i.prol = getelementptr inbounds nuw i8, ptr %.pn1519.i.prol, i64 1 ; 3 uses
  %.014.i.prol = getelementptr inbounds nuw i8, ptr %.pn17.i.prol, i64 1 ; 3 uses
  %i.ks = load i8, ptr %.014.i.prol, align 1, !tbaa !7, !noalias !277
  %i.kt = load i8, ptr %.012.i.prol, align 1, !tbaa !7, !noalias !277
  %.narrow.i140.prol = sub i8 %i.ks, %i.kt
  store i8 %.narrow.i140.prol, ptr %.013.i.prol, align 1, !tbaa !7, !noalias !277
  %i.ku = add nuw i64 %.020.i139.prol, 1          ; 2 uses
  %prol.iter721.next = add i64 %prol.iter721, 1   ; 2 uses
  %prol.iter721.cmp.not = icmp eq i64 %prol.iter721.next, %xtraiter719
  br i1 %prol.iter721.cmp.not, label %.lr.ph.i138.prol.loopexit, label %.lr.ph.i138.prol, !llvm.loop !282

.lr.ph.i138.prol.loopexit:                        ; preds = %.lr.ph.i138.prol, %.lr.ph.i138.preheader
  %.020.i139.unr = phi i64 [ %.020.i139.ph, %.lr.ph.i138.preheader ], [ %i.ku, %.lr.ph.i138.prol ]
  %.pn1519.i.unr = phi ptr [ %.pn1519.i.ph, %.lr.ph.i138.preheader ], [ %.012.i.prol, %.lr.ph.i138.prol ]
  %.pn1618.i.unr = phi ptr [ %.pn1618.i.ph, %.lr.ph.i138.preheader ], [ %.013.i.prol, %.lr.ph.i138.prol ]
  %.pn17.i.unr = phi ptr [ %.pn17.i.ph, %.lr.ph.i138.preheader ], [ %.014.i.prol, %.lr.ph.i138.prol ]
  %i.kv = sub i64 %.020.i139.ph, %i.e
  %i.kw = icmp ugt i64 %i.kv, -4
  br i1 %i.kw, label %.thread214.thread, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %.lr.ph.i138.prol.loopexit, %.lr.ph.i138
  %.020.i139 = phi i64 [ %i.lf, %.lr.ph.i138 ], [ %.020.i139.unr, %.lr.ph.i138.prol.loopexit ]
  %.pn1519.i = phi ptr [ %.012.i.3, %.lr.ph.i138 ], [ %.pn1519.i.unr, %.lr.ph.i138.prol.loopexit ] ; 4 uses
  %.pn1618.i = phi ptr [ %.013.i.3, %.lr.ph.i138 ], [ %.pn1618.i.unr, %.lr.ph.i138.prol.loopexit ] ; 4 uses
  %.pn17.i = phi ptr [ %.014.i.3, %.lr.ph.i138 ], [ %.pn17.i.unr, %.lr.ph.i138.prol.loopexit ] ; 4 uses
  %.013.i = getelementptr inbounds nuw i8, ptr %.pn1618.i, i64 1
  %.012.i = getelementptr inbounds nuw i8, ptr %.pn1519.i, i64 1
  %.014.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 1
  %i.kx = load i8, ptr %.014.i, align 1, !tbaa !7, !noalias !277
  %i.ky = load i8, ptr %.012.i, align 1, !tbaa !7, !noalias !277
  %.narrow.i140 = sub i8 %i.kx, %i.ky
  store i8 %.narrow.i140, ptr %.013.i, align 1, !tbaa !7, !noalias !277
  %.013.i.1 = getelementptr inbounds nuw i8, ptr %.pn1618.i, i64 2
  %.012.i.1 = getelementptr inbounds nuw i8, ptr %.pn1519.i, i64 2
  %.014.i.1 = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 2
  %i.kz = load i8, ptr %.014.i.1, align 1, !tbaa !7, !noalias !277
  %i.la = load i8, ptr %.012.i.1, align 1, !tbaa !7, !noalias !277
  %.narrow.i140.1 = sub i8 %i.kz, %i.la
  store i8 %.narrow.i140.1, ptr %.013.i.1, align 1, !tbaa !7, !noalias !277
  %.013.i.2 = getelementptr inbounds nuw i8, ptr %.pn1618.i, i64 3
  %.012.i.2 = getelementptr inbounds nuw i8, ptr %.pn1519.i, i64 3
  %.014.i.2 = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 3
  %i.lb = load i8, ptr %.014.i.2, align 1, !tbaa !7, !noalias !277
  %i.lc = load i8, ptr %.012.i.2, align 1, !tbaa !7, !noalias !277
  %.narrow.i140.2 = sub i8 %i.lb, %i.lc
  store i8 %.narrow.i140.2, ptr %.013.i.2, align 1, !tbaa !7, !noalias !277
  %.013.i.3 = getelementptr inbounds nuw i8, ptr %.pn1618.i, i64 4 ; 2 uses
  %.012.i.3 = getelementptr inbounds nuw i8, ptr %.pn1519.i, i64 4 ; 2 uses
  %.014.i.3 = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 4 ; 2 uses
  %i.ld = load i8, ptr %.014.i.3, align 1, !tbaa !7, !noalias !277
  %i.le = load i8, ptr %.012.i.3, align 1, !tbaa !7, !noalias !277
  %.narrow.i140.3 = sub i8 %i.ld, %i.le
  store i8 %.narrow.i140.3, ptr %.013.i.3, align 1, !tbaa !7, !noalias !277
  %i.lf = add nuw i64 %.020.i139, 4               ; 2 uses
  %exitcond.not.i141.3 = icmp eq i64 %i.lf, %i.e
  br i1 %exitcond.not.i141.3, label %.thread214.thread, label %.lr.ph.i138, !llvm.loop !283

bb.k:                                             ; preds = %bb.i
  %i.lg = and i32 %.0111, 32
  %.not122 = icmp eq i32 %i.lg, 0
  br i1 %.not122, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !245, !alias.scope !284 ; 5 uses
  store i8 2, ptr %i.li, align 1, !tbaa !7, !noalias !284
  %.not.i142 = icmp eq i64 %i.e, 0
  br i1 %.not.i142, label %png_setup_up_row.exit, label %.lr.ph.preheader.i143

.lr.ph.preheader.i143:                            ; preds = %bb.l
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !247, !alias.scope !284
  br label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %.lr.ph.i144, %.lr.ph.preheader.i143
  %.pn.pn.i = phi ptr [ %.02234.i, %.lr.ph.i144 ], [ %i.l, %.lr.ph.preheader.i143 ]
  %.pn25.pn.i = phi ptr [ %.02033.i, %.lr.ph.i144 ], [ %i.lk, %.lr.ph.preheader.i143 ]
  %.pn26.pn.i = phi ptr [ %.02132.i, %.lr.ph.i144 ], [ %i.li, %.lr.ph.preheader.i143 ]
  %.031.i = phi i64 [ %i.ls, %.lr.ph.i144 ], [ 0, %.lr.ph.preheader.i143 ]
  %.01930.i = phi i64 [ %i.lu, %.lr.ph.i144 ], [ 0, %.lr.ph.preheader.i143 ]
  %.02132.i = getelementptr inbounds nuw i8, ptr %.pn26.pn.i, i64 1 ; 2 uses
  %.02033.i = getelementptr inbounds nuw i8, ptr %.pn25.pn.i, i64 1 ; 2 uses
  %.02234.i = getelementptr inbounds nuw i8, ptr %.pn.pn.i, i64 1 ; 2 uses
  %i.ll = load i8, ptr %.02234.i, align 1, !tbaa !7, !noalias !284
  %i.lm = load i8, ptr %.02033.i, align 1, !tbaa !7, !noalias !284
  %.narrow.i145 = sub i8 %i.ll, %i.lm             ; 3 uses
  store i8 %.narrow.i145, ptr %.02132.i, align 1, !tbaa !7, !noalias !284
  %i.ln = zext i8 %.narrow.i145 to i32            ; 2 uses
  %i.lo = sub nuw nsw i32 256, %i.ln
  %i.lp = icmp slt i8 %.narrow.i145, 0
  %i.lq = select i1 %i.lp, i32 %i.lo, i32 %i.ln
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = add i64 %.031.i, %i.lr                  ; 3 uses
  %i.lt = icmp ugt i64 %i.ls, %.2
  %i.lu = add nuw i64 %.01930.i, 1                ; 2 uses
  %exitcond.not.i146 = icmp eq i64 %i.lu, %i.e
  %or.cond.i147 = select i1 %i.lt, i1 true, i1 %exitcond.not.i146
  br i1 %or.cond.i147, label %png_setup_up_row.exit, label %.lr.ph.i144, !llvm.loop !287

png_setup_up_row.exit:                            ; preds = %.lr.ph.i144, %bb.l
  %.1.i = phi i64 [ 0, %bb.l ], [ %i.ls, %.lr.ph.i144 ] ; 3 uses
  %i.lv = icmp ult i64 %.1.i, %.2
  br i1 %i.lv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %png_setup_up_row.exit
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !246 ; 2 uses
  %.not123 = icmp eq ptr %i.lx, null
  br i1 %.not123, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.lx, ptr %i.lh, align 8, !tbaa !245
  store ptr %i.li, ptr %i.lw, align 8, !tbaa !246
  br label %bb.o

bb.o:                                             ; preds = %png_setup_up_row.exit, %bb.n, %bb.m, %bb.k
  %.3107 = phi ptr [ %.1105, %png_setup_up_row.exit ], [ %.1105, %bb.k ], [ %i.li, %bb.n ], [ %i.li, %bb.m ] ; 2 uses
  %.4 = phi i64 [ %.2, %png_setup_up_row.exit ], [ %.2, %bb.k ], [ %.1.i, %bb.n ], [ %.1.i, %bb.m ] ; 4 uses
  %i.ly = icmp eq i32 %.0111, 64
  br i1 %i.ly, label %bb.p, label %.thread197

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !245, !alias.scope !288 ; 8 uses
  %i.mb = ptrtoaddr ptr %i.ma to i64              ; 2 uses
  store i8 3, ptr %i.ma, align 1, !tbaa !7, !noalias !288
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !247, !alias.scope !288 ; 3 uses
  %i.me = ptrtoaddr ptr %i.md to i64
  %.02029.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 1 ; 7 uses
  %.01830.i = getelementptr inbounds nuw i8, ptr %i.md, i64 1 ; 7 uses
  %.02231.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 7 uses
  %.not.i148 = icmp eq i32 %i.j, 0
  br i1 %.not.i148, label %.preheader.i154, label %iter.check475

iter.check475:                                    ; preds = %bb.p
  %i.mf = zext i8 %i.g to i64
  %2 = add nuw nsw i64 %i.mf, 7                   ; 2 uses
  %3 = lshr i64 %2, 3                             ; 4 uses
  %min.iters.check455 = icmp ult i8 %i.g, 25
  br i1 %min.iters.check455, label %.lr.ph.i149.preheader, label %vector.memcheck450

vector.memcheck450:                               ; preds = %iter.check475
  %i.mg = sub i64 %i.m, %i.mb
  %diff.check451 = icmp ugt i64 %i.mg, -16
  %i.mh = sub i64 %i.me, %i.mb
  %diff.check452 = icmp ugt i64 %i.mh, -16
  %conflict.rdx453 = or i1 %diff.check451, %diff.check452
  br i1 %conflict.rdx453, label %.lr.ph.i149.preheader, label %vector.main.loop.iter.check456

vector.main.loop.iter.check456:                   ; preds = %vector.memcheck450
  %min.iters.check457 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check457, label %vec.epilog.ph479, label %vector.ph458

vector.ph458:                                     ; preds = %vector.main.loop.iter.check456
  %n.vec459 = and i64 %3, 48                      ; 7 uses
  %i.mi = getelementptr i8, ptr %.02231.i, i64 %n.vec459 ; 2 uses
  %i.mj = getelementptr i8, ptr %.01830.i, i64 %n.vec459 ; 2 uses
  %i.mk = getelementptr i8, ptr %.02029.i, i64 %n.vec459 ; 2 uses
  %i.ml = trunc nuw nsw i64 %n.vec459 to i32
  %wide.load465 = load <16 x i8>, ptr %.02231.i, align 1, !tbaa !7, !noalias !288
  %wide.load466 = load <16 x i8>, ptr %.01830.i, align 1, !tbaa !7, !noalias !288
  %i.mm = lshr <16 x i8> %wide.load466, splat (i8 1)
  %i.mn = sub <16 x i8> %wide.load465, %i.mm
  store <16 x i8> %i.mn, ptr %.02029.i, align 1, !tbaa !7, !noalias !288
  %i.mo = icmp eq i64 %n.vec459, 16
  br i1 %i.mo, label %middle.block468, label %vector.body460.1

vector.body460.1:                                 ; preds = %vector.ph458
  %next.gep462.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep463.1 = getelementptr i8, ptr %i.md, i64 17
  %next.gep464.1 = getelementptr i8, ptr %i.ma, i64 17
  %wide.load465.1 = load <16 x i8>, ptr %next.gep462.1, align 1, !tbaa !7, !noalias !288
  %wide.load466.1 = load <16 x i8>, ptr %next.gep463.1, align 1, !tbaa !7, !noalias !288
  %i.mp = lshr <16 x i8> %wide.load466.1, splat (i8 1)
  %i.mq = sub <16 x i8> %wide.load465.1, %i.mp
  store <16 x i8> %i.mq, ptr %next.gep464.1, align 1, !tbaa !7, !noalias !288
  br label %middle.block468

middle.block468:                                  ; preds = %vector.body460.1, %vector.ph458
  %cmp.n469 = icmp eq i64 %3, %n.vec459
  br i1 %cmp.n469, label %.preheader.i154, label %vec.epilog.iter.check477

vec.epilog.iter.check477:                         ; preds = %middle.block468
  %4 = and i64 %2, 96
  %min.epilog.iters.check478 = icmp eq i64 %4, 0
  br i1 %min.epilog.iters.check478, label %.lr.ph.i149.preheader, label %vec.epilog.ph479, !prof !265

vec.epilog.ph479:                                 ; preds = %vector.main.loop.iter.check456, %vec.epilog.iter.check477
  %vec.epilog.resume.val470 = phi i64 [ %n.vec459, %vec.epilog.iter.check477 ], [ 0, %vector.main.loop.iter.check456 ]
  %n.vec480 = and i64 %3, 60                      ; 6 uses
  %i.mr = getelementptr i8, ptr %.02231.i, i64 %n.vec480 ; 2 uses
  %i.ms = getelementptr i8, ptr %.01830.i, i64 %n.vec480 ; 2 uses
  %i.mt = getelementptr i8, ptr %.02029.i, i64 %n.vec480 ; 2 uses
  %i.mu = trunc nuw nsw i64 %n.vec480 to i32
  br label %vec.epilog.vector.body481

vec.epilog.vector.body481:                        ; preds = %vec.epilog.vector.body481, %vec.epilog.ph479
  %index482 = phi i64 [ %vec.epilog.resume.val470, %vec.epilog.ph479 ], [ %index.next488, %vec.epilog.vector.body481 ] ; 4 uses
  %next.gep483 = getelementptr i8, ptr %.02231.i, i64 %index482
  %next.gep484 = getelementptr i8, ptr %.01830.i, i64 %index482
  %next.gep485 = getelementptr i8, ptr %.02029.i, i64 %index482
  %wide.load486 = load <4 x i8>, ptr %next.gep483, align 1, !tbaa !7, !noalias !288
  %wide.load487 = load <4 x i8>, ptr %next.gep484, align 1, !tbaa !7, !noalias !288
  %i.mv = lshr <4 x i8> %wide.load487, splat (i8 1)
  %i.mw = sub <4 x i8> %wide.load486, %i.mv
  store <4 x i8> %i.mw, ptr %next.gep485, align 1, !tbaa !7, !noalias !288
  %index.next488 = add nuw i64 %index482, 4       ; 2 uses
  %i.mx = icmp eq i64 %index.next488, %n.vec480
  br i1 %i.mx, label %vec.epilog.middle.block489, label %vec.epilog.vector.body481, !llvm.loop !291

vec.epilog.middle.block489:                       ; preds = %vec.epilog.vector.body481
  %cmp.n490 = icmp eq i64 %3, %n.vec480
  br i1 %cmp.n490, label %.preheader.i154, label %.lr.ph.i149.preheader

.lr.ph.i149.preheader:                            ; preds = %vector.memcheck450, %iter.check475, %vec.epilog.iter.check477, %vec.epilog.middle.block489
  %.02235.i.ph = phi ptr [ %.02231.i, %iter.check475 ], [ %.02231.i, %vector.memcheck450 ], [ %i.mi, %vec.epilog.iter.check477 ], [ %i.mr, %vec.epilog.middle.block489 ] ; 2 uses
  %.01834.i.ph = phi ptr [ %.01830.i, %iter.check475 ], [ %.01830.i, %vector.memcheck450 ], [ %i.mj, %vec.epilog.iter.check477 ], [ %i.ms, %vec.epilog.middle.block489 ] ; 2 uses
  %.02033.i150.ph = phi ptr [ %.02029.i, %iter.check475 ], [ %.02029.i, %vector.memcheck450 ], [ %i.mk, %vec.epilog.iter.check477 ], [ %i.mt, %vec.epilog.middle.block489 ] ; 2 uses
  %.032.i.ph = phi i32 [ 0, %iter.check475 ], [ 0, %vector.memcheck450 ], [ %i.ml, %vec.epilog.iter.check477 ], [ %i.mu, %vec.epilog.middle.block489 ] ; 4 uses
  %i.my = sub nsw i32 %i.j, %.032.i.ph
  %xtraiter716 = and i32 %i.my, 3                 ; 2 uses
  %lcmp.mod717.not = icmp eq i32 %xtraiter716, 0
  br i1 %lcmp.mod717.not, label %.lr.ph.i149.prol.loopexit, label %.lr.ph.i149.prol

.lr.ph.i149.prol:                                 ; preds = %.lr.ph.i149.preheader, %.lr.ph.i149.prol
  %.02235.i.prol = phi ptr [ %.022.i152.prol, %.lr.ph.i149.prol ], [ %.02235.i.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.01834.i.prol = phi ptr [ %.018.i.prol, %.lr.ph.i149.prol ], [ %.01834.i.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.02033.i150.prol = phi ptr [ %.020.i151.prol, %.lr.ph.i149.prol ], [ %.02033.i150.ph, %.lr.ph.i149.preheader ] ; 2 uses
  %.032.i.prol = phi i32 [ %i.nc, %.lr.ph.i149.prol ], [ %.032.i.ph, %.lr.ph.i149.preheader ]
  %prol.iter718 = phi i32 [ %prol.iter718.next, %.lr.ph.i149.prol ], [ 0, %.lr.ph.i149.preheader ]
  %i.mz = load i8, ptr %.02235.i.prol, align 1, !tbaa !7, !noalias !288
  %i.na = load i8, ptr %.01834.i.prol, align 1, !tbaa !7, !noalias !288
  %i.nb = lshr i8 %i.na, 1
  %.narrow27.i.prol = sub i8 %i.mz, %i.nb
  store i8 %.narrow27.i.prol, ptr %.02033.i150.prol, align 1, !tbaa !7, !noalias !288
  %i.nc = add nuw nsw i32 %.032.i.prol, 1         ; 2 uses
  %.020.i151.prol = getelementptr inbounds nuw i8, ptr %.02033.i150.prol, i64 1 ; 3 uses
  %.018.i.prol = getelementptr inbounds nuw i8, ptr %.01834.i.prol, i64 1 ; 3 uses
  %.022.i152.prol = getelementptr inbounds nuw i8, ptr %.02235.i.prol, i64 1 ; 3 uses
  %prol.iter718.next = add i32 %prol.iter718, 1   ; 2 uses
  %prol.iter718.cmp.not = icmp eq i32 %prol.iter718.next, %xtraiter716
  br i1 %prol.iter718.cmp.not, label %.lr.ph.i149.prol.loopexit, label %.lr.ph.i149.prol, !llvm.loop !292

.lr.ph.i149.prol.loopexit:                        ; preds = %.lr.ph.i149.prol, %.lr.ph.i149.preheader
  %.020.i151.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.020.i151.prol, %.lr.ph.i149.prol ]
  %.018.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.018.i.prol, %.lr.ph.i149.prol ]
  %.022.i152.lcssa.unr = phi ptr [ poison, %.lr.ph.i149.preheader ], [ %.022.i152.prol, %.lr.ph.i149.prol ]
  %.02235.i.unr = phi ptr [ %.02235.i.ph, %.lr.ph.i149.preheader ], [ %.022.i152.prol, %.lr.ph.i149.prol ]
  %.01834.i.unr = phi ptr [ %.01834.i.ph, %.lr.ph.i149.preheader ], [ %.018.i.prol, %.lr.ph.i149.prol ]
  %.02033.i150.unr = phi ptr [ %.02033.i150.ph, %.lr.ph.i149.preheader ], [ %.020.i151.prol, %.lr.ph.i149.prol ]
  %.032.i.unr = phi i32 [ %.032.i.ph, %.lr.ph.i149.preheader ], [ %i.nc, %.lr.ph.i149.prol ]
  %i.nd = sub nsw i32 %.032.i.ph, %i.j
  %i.ne = icmp ugt i32 %i.nd, -4
  br i1 %i.ne, label %.preheader.i154, label %.lr.ph.i149

.preheader.i154:                                  ; preds = %.lr.ph.i149.prol.loopexit, %.lr.ph.i149, %middle.block468, %vec.epilog.middle.block489, %bb.p
  %.020.lcssa.i155 = phi ptr [ %.02029.i, %bb.p ], [ %i.mt, %vec.epilog.middle.block489 ], [ %i.mk, %middle.block468 ], [ %.020.i151.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.020.i151.3, %.lr.ph.i149 ] ; 8 uses
  %.018.lcssa.i = phi ptr [ %.01830.i, %bb.p ], [ %i.ms, %vec.epilog.middle.block489 ], [ %i.mj, %middle.block468 ], [ %.018.i.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.018.i.3, %.lr.ph.i149 ] ; 8 uses
  %.022.lcssa.i156 = phi ptr [ %.02231.i, %bb.p ], [ %i.mr, %vec.epilog.middle.block489 ], [ %i.mi, %middle.block468 ], [ %.022.i152.lcssa.unr, %.lr.ph.i149.prol.loopexit ], [ %.022.i152.3, %.lr.ph.i149 ] ; 8 uses
  %.020.lcssa.i155496 = ptrtoaddr ptr %.020.lcssa.i155 to i64 ; 3 uses
  %.022.lcssa.i156498 = ptrtoaddr ptr %.022.lcssa.i156 to i64
  %.018.lcssa.i501 = ptrtoaddr ptr %.018.lcssa.i to i64
  %i.nf = zext nneg i32 %i.j to i64               ; 3 uses
  %i.ng = icmp ugt i64 %i.e, %i.nf
  br i1 %i.ng, label %iter.check531, label %.thread214.thread

iter.check531:                                    ; preds = %.preheader.i154
  %i.nh = sub nuw i64 %i.e, %i.nf                 ; 7 uses
  %min.iters.check505 = icmp ult i64 %i.nh, 8
  br i1 %min.iters.check505, label %.lr.ph44.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check531
  %i.ni = xor i64 %i.nf, -1
  %i.nj = add i64 %i.e, %i.ni                     ; 2 uses
  %i.nk = trunc i64 %i.nj to i32
  %i.nl = sub nuw nsw i32 -2, %i.j
  %i.nm = icmp ult i32 %i.nl, %i.nk
  %i.nn = icmp ugt i64 %i.nj, 4294967295
  %i.no = or i1 %i.nm, %i.nn
  br i1 %i.no, label %.lr.ph44.i.preheader, label %vector.memcheck495

vector.memcheck495:                               ; preds = %vector.scevcheck
  %i.np = sub i64 %.020.lcssa.i155496, %i.m
  %i.nq = add i64 %i.np, -2
  %diff.check497 = icmp ult i64 %i.nq, 31
  %i.nr = sub i64 %.022.lcssa.i156498, %.020.lcssa.i155496
  %diff.check499 = icmp ugt i64 %i.nr, -32
  %conflict.rdx500 = or i1 %diff.check497, %diff.check499
  %i.ns = sub i64 %.018.lcssa.i501, %.020.lcssa.i155496
  %diff.check502 = icmp ugt i64 %i.ns, -32
  %conflict.rdx503 = or i1 %conflict.rdx500, %diff.check502
  br i1 %conflict.rdx503, label %.lr.ph44.i.preheader, label %vector.main.loop.iter.check506

vector.main.loop.iter.check506:                   ; preds = %vector.memcheck495
  %min.iters.check507 = icmp ult i64 %i.nh, 32
  br i1 %min.iters.check507, label %vec.epilog.ph535, label %vector.ph508

vector.ph508:                                     ; preds = %vector.main.loop.iter.check506
  %i.nt = and i64 %i.nh, 24
  %n.vec509 = and i64 %i.nh, -32                  ; 8 uses
  %i.nu = trunc i64 %n.vec509 to i32
  %i.nv = add i32 %i.j, %i.nu
  %i.nw = getelementptr i8, ptr %i.l, i64 %n.vec509
  %i.nx = getelementptr i8, ptr %.018.lcssa.i, i64 %n.vec509
  %i.ny = getelementptr i8, ptr %.020.lcssa.i155, i64 %n.vec509
  %i.nz = getelementptr i8, ptr %.022.lcssa.i156, i64 %n.vec509
  br label %vector.body510

vector.body510:                                   ; preds = %vector.body510, %vector.ph508
  %index511 = phi i64 [ 0, %vector.ph508 ], [ %index.next522, %vector.body510 ] ; 5 uses
  %next.gep512 = getelementptr i8, ptr %i.l, i64 %index511 ; 2 uses
  %next.gep513 = getelementptr i8, ptr %.018.lcssa.i, i64 %index511 ; 2 uses
  %next.gep514 = getelementptr i8, ptr %.020.lcssa.i155, i64 %index511 ; 2 uses
  %next.gep515 = getelementptr i8, ptr %.022.lcssa.i156, i64 %index511 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %next.gep512, i64 1
  %i.ob = getelementptr i8, ptr %next.gep515, i64 16
  %wide.load516 = load <16 x i8>, ptr %next.gep515, align 1, !tbaa !7, !noalias !288
  %wide.load517 = load <16 x i8>, ptr %i.ob, align 1, !tbaa !7, !noalias !288
  %i.oc = getelementptr i8, ptr %next.gep513, i64 16
  %wide.load518 = load <16 x i8>, ptr %next.gep513, align 1, !tbaa !7, !noalias !288
  %wide.load519 = load <16 x i8>, ptr %i.oc, align 1, !tbaa !7, !noalias !288
  %i.od = zext <16 x i8> %wide.load518 to <16 x i16>
  %i.oe = zext <16 x i8> %wide.load519 to <16 x i16>
  %i.of = getelementptr inbounds nuw i8, ptr %next.gep512, i64 17
  %wide.load520 = load <16 x i8>, ptr %i.oa, align 1, !tbaa !7, !noalias !288
  %wide.load521 = load <16 x i8>, ptr %i.of, align 1, !tbaa !7, !noalias !288
  %i.og = zext <16 x i8> %wide.load520 to <16 x i16>
  %i.oh = zext <16 x i8> %wide.load521 to <16 x i16>
  %i.oi = add nuw nsw <16 x i16> %i.og, %i.od
  %i.oj = add nuw nsw <16 x i16> %i.oh, %i.oe
  %i.ok = lshr <16 x i16> %i.oi, splat (i16 1)
  %i.ol = lshr <16 x i16> %i.oj, splat (i16 1)
  %i.om = trunc nuw <16 x i16> %i.ok to <16 x i8>
  %i.on = trunc nuw <16 x i16> %i.ol to <16 x i8>
  %i.oo = sub <16 x i8> %wide.load516, %i.om
  %i.op = sub <16 x i8> %wide.load517, %i.on
  %i.oq = getelementptr i8, ptr %next.gep514, i64 16
  store <16 x i8> %i.oo, ptr %next.gep514, align 1, !tbaa !7, !noalias !288
  store <16 x i8> %i.op, ptr %i.oq, align 1, !tbaa !7, !noalias !288
  %index.next522 = add nuw i64 %index511, 32      ; 2 uses
  %i.or = icmp eq i64 %index.next522, %n.vec509
  br i1 %i.or, label %middle.block523, label %vector.body510, !llvm.loop !293

middle.block523:                                  ; preds = %vector.body510
  %cmp.n524 = icmp eq i64 %i.nh, %n.vec509
  br i1 %cmp.n524, label %.thread214.thread, label %vec.epilog.iter.check533

vec.epilog.iter.check533:                         ; preds = %middle.block523
  %min.epilog.iters.check534 = icmp eq i64 %i.nt, 0
  br i1 %min.epilog.iters.check534, label %.lr.ph44.i.preheader, label %vec.epilog.ph535, !prof !294

vec.epilog.ph535:                                 ; preds = %vector.main.loop.iter.check506, %vec.epilog.iter.check533
  %vec.epilog.resume.val525 = phi i64 [ %n.vec509, %vec.epilog.iter.check533 ], [ 0, %vector.main.loop.iter.check506 ]
  %n.vec536 = and i64 %i.nh, -8                   ; 7 uses
  %i.os = trunc i64 %n.vec536 to i32
  %i.ot = add i32 %i.j, %i.os
  %i.ou = getelementptr i8, ptr %i.l, i64 %n.vec536
  %i.ov = getelementptr i8, ptr %.018.lcssa.i, i64 %n.vec536
  %i.ow = getelementptr i8, ptr %.020.lcssa.i155, i64 %n.vec536
  %i.ox = getelementptr i8, ptr %.022.lcssa.i156, i64 %n.vec536
  br label %vec.epilog.vector.body537

vec.epilog.vector.body537:                        ; preds = %vec.epilog.vector.body537, %vec.epilog.ph535
  %index538 = phi i64 [ %vec.epilog.resume.val525, %vec.epilog.ph535 ], [ %index.next546, %vec.epilog.vector.body537 ] ; 5 uses
  %next.gep539 = getelementptr i8, ptr %i.l, i64 %index538
  %next.gep540 = getelementptr i8, ptr %.018.lcssa.i, i64 %index538
  %next.gep541 = getelementptr i8, ptr %.020.lcssa.i155, i64 %index538
  %next.gep542 = getelementptr i8, ptr %.022.lcssa.i156, i64 %index538
  %i.oy = getelementptr inbounds nuw i8, ptr %next.gep539, i64 1
  %wide.load543 = load <8 x i8>, ptr %next.gep542, align 1, !tbaa !7, !noalias !288
  %wide.load544 = load <8 x i8>, ptr %next.gep540, align 1, !tbaa !7, !noalias !288
  %i.oz = zext <8 x i8> %wide.load544 to <8 x i16>
  %wide.load545 = load <8 x i8>, ptr %i.oy, align 1, !tbaa !7, !noalias !288
  %i.pa = zext <8 x i8> %wide.load545 to <8 x i16>
  %i.pb = add nuw nsw <8 x i16> %i.pa, %i.oz
  %i.pc = lshr <8 x i16> %i.pb, splat (i16 1)
  %i.pd = trunc nuw <8 x i16> %i.pc to <8 x i8>
  %i.pe = sub <8 x i8> %wide.load543, %i.pd
  store <8 x i8> %i.pe, ptr %next.gep541, align 1, !tbaa !7, !noalias !288
  %index.next546 = add nuw i64 %index538, 8       ; 2 uses
  %i.pf = icmp eq i64 %index.next546, %n.vec536
  br i1 %i.pf, label %vec.epilog.middle.block547, label %vec.epilog.vector.body537, !llvm.loop !295

vec.epilog.middle.block547:                       ; preds = %vec.epilog.vector.body537
  %cmp.n548 = icmp eq i64 %i.nh, %n.vec536
  br i1 %cmp.n548, label %.thread214.thread, label %.lr.ph44.i.preheader

.lr.ph44.i.preheader:                             ; preds = %vector.memcheck495, %vector.scevcheck, %iter.check531, %vec.epilog.iter.check533, %vec.epilog.middle.block547
  %.143.i.ph = phi i32 [ %i.j, %iter.check531 ], [ %i.j, %vector.scevcheck ], [ %i.j, %vector.memcheck495 ], [ %i.nv, %vec.epilog.iter.check533 ], [ %i.ot, %vec.epilog.middle.block547 ]
  %.pn42.i.ph = phi ptr [ %i.l, %iter.check531 ], [ %i.l, %vector.scevcheck ], [ %i.l, %vector.memcheck495 ], [ %i.nw, %vec.epilog.iter.check533 ], [ %i.ou, %vec.epilog.middle.block547 ]
  %.11941.i.ph = phi ptr [ %.018.lcssa.i, %iter.check531 ], [ %.018.lcssa.i, %vector.scevcheck ], [ %.018.lcssa.i, %vector.memcheck495 ], [ %i.nx, %vec.epilog.iter.check533 ], [ %i.ov, %vec.epilog.middle.block547 ]
  %.12140.i.ph = phi ptr [ %.020.lcssa.i155, %iter.check531 ], [ %.020.lcssa.i155, %vector.scevcheck ], [ %.020.lcssa.i155, %vector.memcheck495 ], [ %i.ny, %vec.epilog.iter.check533 ], [ %i.ow, %vec.epilog.middle.block547 ]
  %.12339.i.ph = phi ptr [ %.022.lcssa.i156, %iter.check531 ], [ %.022.lcssa.i156, %vector.scevcheck ], [ %.022.lcssa.i156, %vector.memcheck495 ], [ %i.nz, %vec.epilog.iter.check533 ], [ %i.ox, %vec.epilog.middle.block547 ]
  br label %.lr.ph44.i

.lr.ph.i149:                                      ; preds = %.lr.ph.i149.prol.loopexit, %.lr.ph.i149
  %.02235.i = phi ptr [ %.022.i152.3, %.lr.ph.i149 ], [ %.02235.i.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.01834.i = phi ptr [ %.018.i.3, %.lr.ph.i149 ], [ %.01834.i.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.02033.i150 = phi ptr [ %.020.i151.3, %.lr.ph.i149 ], [ %.02033.i150.unr, %.lr.ph.i149.prol.loopexit ] ; 5 uses
  %.032.i = phi i32 [ %i.ps, %.lr.ph.i149 ], [ %.032.i.unr, %.lr.ph.i149.prol.loopexit ]
  %i.pg = load i8, ptr %.02235.i, align 1, !tbaa !7, !noalias !288
  %i.ph = load i8, ptr %.01834.i, align 1, !tbaa !7, !noalias !288
  %i.pi = lshr i8 %i.ph, 1
  %.narrow27.i = sub i8 %i.pg, %i.pi
  store i8 %.narrow27.i, ptr %.02033.i150, align 1, !tbaa !7, !noalias !288
  %.020.i151 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 1
  %.018.i = getelementptr inbounds nuw i8, ptr %.01834.i, i64 1
  %.022.i152 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 1
  %i.pj = load i8, ptr %.022.i152, align 1, !tbaa !7, !noalias !288
  %i.pk = load i8, ptr %.018.i, align 1, !tbaa !7, !noalias !288
  %i.pl = lshr i8 %i.pk, 1
  %.narrow27.i.1 = sub i8 %i.pj, %i.pl
  store i8 %.narrow27.i.1, ptr %.020.i151, align 1, !tbaa !7, !noalias !288
  %.020.i151.1 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 2
  %.018.i.1 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 2
  %.022.i152.1 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 2
  %i.pm = load i8, ptr %.022.i152.1, align 1, !tbaa !7, !noalias !288
  %i.pn = load i8, ptr %.018.i.1, align 1, !tbaa !7, !noalias !288
  %i.po = lshr i8 %i.pn, 1
  %.narrow27.i.2 = sub i8 %i.pm, %i.po
  store i8 %.narrow27.i.2, ptr %.020.i151.1, align 1, !tbaa !7, !noalias !288
  %.020.i151.2 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 3
  %.018.i.2 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 3
  %.022.i152.2 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 3
  %i.pp = load i8, ptr %.022.i152.2, align 1, !tbaa !7, !noalias !288
  %i.pq = load i8, ptr %.018.i.2, align 1, !tbaa !7, !noalias !288
  %i.pr = lshr i8 %i.pq, 1
  %.narrow27.i.3 = sub i8 %i.pp, %i.pr
  store i8 %.narrow27.i.3, ptr %.020.i151.2, align 1, !tbaa !7, !noalias !288
  %i.ps = add nuw nsw i32 %.032.i, 4              ; 2 uses
  %.020.i151.3 = getelementptr inbounds nuw i8, ptr %.02033.i150, i64 4 ; 2 uses
  %.018.i.3 = getelementptr inbounds nuw i8, ptr %.01834.i, i64 4 ; 2 uses
  %.022.i152.3 = getelementptr inbounds nuw i8, ptr %.02235.i, i64 4 ; 2 uses
  %exitcond.not.i153.3 = icmp eq i32 %i.ps, %i.j
  br i1 %exitcond.not.i153.3, label %.preheader.i154, label %.lr.ph.i149, !llvm.loop !296

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i
  %.143.i = phi i32 [ %i.qd, %.lr.ph44.i ], [ %.143.i.ph, %.lr.ph44.i.preheader ]
  %.pn42.i = phi ptr [ %.017.i, %.lr.ph44.i ], [ %.pn42.i.ph, %.lr.ph44.i.preheader ]
  %.11941.i = phi ptr [ %i.pv, %.lr.ph44.i ], [ %.11941.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.12140.i = phi ptr [ %i.qc, %.lr.ph44.i ], [ %.12140.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.12339.i = phi ptr [ %i.pt, %.lr.ph44.i ], [ %.12339.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %.017.i = getelementptr inbounds nuw i8, ptr %.pn42.i, i64 1 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.12339.i, i64 1
  %i.pu = load i8, ptr %.12339.i, align 1, !tbaa !7, !noalias !288
  %i.pv = getelementptr inbounds nuw i8, ptr %.11941.i, i64 1
  %i.pw = load i8, ptr %.11941.i, align 1, !tbaa !7, !noalias !288
  %i.px = zext i8 %i.pw to i16
  %i.py = load i8, ptr %.017.i, align 1, !tbaa !7, !noalias !288
  %i.pz = zext i8 %i.py to i16
  %i.qa = add nuw nsw i16 %i.pz, %i.px
  %i.qb = lshr i16 %i.qa, 1
  %.tr.i = trunc nuw i16 %i.qb to i8
  %.narrow.i157 = sub i8 %i.pu, %.tr.i
  %i.qc = getelementptr inbounds nuw i8, ptr %.12140.i, i64 1
  store i8 %.narrow.i157, ptr %.12140.i, align 1, !tbaa !7, !noalias !288
  %i.qd = add i32 %.143.i, 1                      ; 2 uses
  %i.qe = zext i32 %i.qd to i64
  %i.qf = icmp ugt i64 %i.e, %i.qe
  br i1 %i.qf, label %.lr.ph44.i, label %.thread214.thread, !llvm.loop !297

.thread197:                                       ; preds = %bb.o
  %i.qg = and i32 %.0111, 64
  %.not124 = icmp eq i32 %i.qg, 0
  br i1 %.not124, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.thread197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !245, !alias.scope !298 ; 21 uses
  %i.qj = ptrtoaddr ptr %i.qi to i64              ; 2 uses
  store i8 3, ptr %i.qi, align 1, !tbaa !7, !noalias !298
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !247, !alias.scope !298 ; 17 uses
  %i.qm = ptrtoaddr ptr %i.ql to i64
  %.03344.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 1 ; 5 uses
  %.03145.i = getelementptr inbounds nuw i8, ptr %i.ql, i64 1 ; 5 uses
  %.03546.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 5 uses
  %.not.i158 = icmp eq i32 %i.j, 0
  br i1 %.not.i158, label %.preheader.i164, label %.lr.ph.i159.preheader

.lr.ph.i159.preheader:                            ; preds = %bb.q
  %i.qn = zext i8 %i.g to i64
  %5 = add nuw nsw i64 %i.qn, 7
  %6 = lshr i64 %5, 3                             ; 2 uses
  %min.iters.check300 = icmp ult i8 %i.g, 41
  br i1 %min.iters.check300, label %.lr.ph.i159.preheader696, label %vector.memcheck296

vector.memcheck296:                               ; preds = %.lr.ph.i159.preheader
  %i.qo = sub i64 %i.m, %i.qj
  %diff.check297 = icmp ugt i64 %i.qo, -4
  %i.qp = sub i64 %i.qm, %i.qj
  %diff.check298 = icmp ugt i64 %i.qp, -4
  %conflict.rdx = or i1 %diff.check297, %diff.check298
  br i1 %conflict.rdx, label %.lr.ph.i159.preheader696, label %vector.ph301

vector.ph301:                                     ; preds = %vector.memcheck296
  %n.vec302 = and i64 %6, 60                      ; 12 uses
  %i.qq = getelementptr i8, ptr %.03546.i, i64 %n.vec302 ; 2 uses
  %i.qr = getelementptr i8, ptr %.03145.i, i64 %n.vec302 ; 2 uses
  %i.qs = getelementptr i8, ptr %.03344.i, i64 %n.vec302 ; 2 uses
  %i.qt = trunc nuw nsw i64 %n.vec302 to i32
  %i.qu = getelementptr i8, ptr %i.l, i64 3
  %wide.load310 = load <2 x i8>, ptr %.03546.i, align 1, !tbaa !7, !noalias !298
  %wide.load311 = load <2 x i8>, ptr %i.qu, align 1, !tbaa !7, !noalias !298
  %i.qv = getelementptr i8, ptr %i.ql, i64 3
  %wide.load312 = load <2 x i8>, ptr %.03145.i, align 1, !tbaa !7, !noalias !298
  %wide.load313 = load <2 x i8>, ptr %i.qv, align 1, !tbaa !7, !noalias !298
  %i.qw = lshr <2 x i8> %wide.load312, splat (i8 1)
  %i.qx = lshr <2 x i8> %wide.load313, splat (i8 1)
  %i.qy = sub <2 x i8> %wide.load310, %i.qw       ; 3 uses
  %i.qz = sub <2 x i8> %wide.load311, %i.qx       ; 3 uses
  %i.ra = getelementptr i8, ptr %i.qi, i64 3
  store <2 x i8> %i.qy, ptr %.03344.i, align 1, !tbaa !7, !noalias !298
  store <2 x i8> %i.qz, ptr %i.ra, align 1, !tbaa !7, !noalias !298
  %i.rb = zext <2 x i8> %i.qy to <2 x i32>        ; 2 uses
  %i.rc = zext <2 x i8> %i.qz to <2 x i32>        ; 2 uses
  %i.rd = sub nuw nsw <2 x i32> splat (i32 256), %i.rb
  %i.re = sub nuw nsw <2 x i32> splat (i32 256), %i.rc
  %i.rf = icmp slt <2 x i8> %i.qy, zeroinitializer
  %i.rg = icmp slt <2 x i8> %i.qz, zeroinitializer
  %i.rh = select <2 x i1> %i.rf, <2 x i32> %i.rd, <2 x i32> %i.rb ; 2 uses
  %i.ri = select <2 x i1> %i.rg, <2 x i32> %i.re, <2 x i32> %i.rc ; 2 uses
  %i.rj = zext nneg <2 x i32> %i.rh to <2 x i64>
  %i.rk = zext nneg <2 x i32> %i.ri to <2 x i64>
  %i.rl = icmp eq i64 %n.vec302, 4
  br i1 %i.rl, label %middle.block315, label %vector.body303.1

vector.body303.1:                                 ; preds = %vector.ph301
  %next.gep307.1 = getelementptr i8, ptr %i.l, i64 5
  %next.gep308.1 = getelementptr i8, ptr %i.ql, i64 5
  %next.gep309.1 = getelementptr i8, ptr %i.qi, i64 5
  %i.rm = getelementptr i8, ptr %i.l, i64 7
  %wide.load310.1 = load <2 x i8>, ptr %next.gep307.1, align 1, !tbaa !7, !noalias !298
  %wide.load311.1 = load <2 x i8>, ptr %i.rm, align 1, !tbaa !7, !noalias !298
  %i.rn = getelementptr i8, ptr %i.ql, i64 7
  %wide.load312.1 = load <2 x i8>, ptr %next.gep308.1, align 1, !tbaa !7, !noalias !298
  %wide.load313.1 = load <2 x i8>, ptr %i.rn, align 1, !tbaa !7, !noalias !298
  %i.ro = lshr <2 x i8> %wide.load312.1, splat (i8 1)
  %i.rp = lshr <2 x i8> %wide.load313.1, splat (i8 1)
  %i.rq = sub <2 x i8> %wide.load310.1, %i.ro     ; 3 uses
  %i.rr = sub <2 x i8> %wide.load311.1, %i.rp     ; 3 uses
  %i.rs = getelementptr i8, ptr %i.qi, i64 7
  store <2 x i8> %i.rq, ptr %next.gep309.1, align 1, !tbaa !7, !noalias !298
  store <2 x i8> %i.rr, ptr %i.rs, align 1, !tbaa !7, !noalias !298
  %i.rt = zext <2 x i8> %i.rq to <2 x i32>        ; 2 uses
  %i.ru = zext <2 x i8> %i.rr to <2 x i32>        ; 2 uses
  %i.rv = sub nuw nsw <2 x i32> splat (i32 256), %i.rt
  %i.rw = sub nuw nsw <2 x i32> splat (i32 256), %i.ru
  %i.rx = icmp slt <2 x i8> %i.rq, zeroinitializer
  %i.ry = icmp slt <2 x i8> %i.rr, zeroinitializer
  %i.rz = select <2 x i1> %i.rx, <2 x i32> %i.rv, <2 x i32> %i.rt
  %i.sa = select <2 x i1> %i.ry, <2 x i32> %i.rw, <2 x i32> %i.ru
  %narrow737 = add nuw nsw <2 x i32> %i.rh, %i.rz ; 2 uses
  %i.sb = zext nneg <2 x i32> %narrow737 to <2 x i64>
  %narrow738 = add nuw nsw <2 x i32> %i.ri, %i.sa ; 2 uses
  %i.sc = zext nneg <2 x i32> %narrow738 to <2 x i64>
  %i.sd = icmp eq i64 %n.vec302, 8
  br i1 %i.sd, label %middle.block315, label %vector.body303.2

vector.body303.2:                                 ; preds = %vector.body303.1
  %next.gep307.2 = getelementptr i8, ptr %i.l, i64 9
  %next.gep308.2 = getelementptr i8, ptr %i.ql, i64 9
  %next.gep309.2 = getelementptr i8, ptr %i.qi, i64 9
  %i.se = getelementptr i8, ptr %i.l, i64 11
  %wide.load310.2 = load <2 x i8>, ptr %next.gep307.2, align 1, !tbaa !7, !noalias !298
  %wide.load311.2 = load <2 x i8>, ptr %i.se, align 1, !tbaa !7, !noalias !298
  %i.sf = getelementptr i8, ptr %i.ql, i64 11
  %wide.load312.2 = load <2 x i8>, ptr %next.gep308.2, align 1, !tbaa !7, !noalias !298
  %wide.load313.2 = load <2 x i8>, ptr %i.sf, align 1, !tbaa !7, !noalias !298
  %i.sg = lshr <2 x i8> %wide.load312.2, splat (i8 1)
  %i.sh = lshr <2 x i8> %wide.load313.2, splat (i8 1)
  %i.si = sub <2 x i8> %wide.load310.2, %i.sg     ; 3 uses
  %i.sj = sub <2 x i8> %wide.load311.2, %i.sh     ; 3 uses
  %i.sk = getelementptr i8, ptr %i.qi, i64 11
  store <2 x i8> %i.si, ptr %next.gep309.2, align 1, !tbaa !7, !noalias !298
  store <2 x i8> %i.sj, ptr %i.sk, align 1, !tbaa !7, !noalias !298
  %i.sl = zext <2 x i8> %i.si to <2 x i32>        ; 2 uses
  %i.sm = zext <2 x i8> %i.sj to <2 x i32>        ; 2 uses
  %i.sn = sub nuw nsw <2 x i32> splat (i32 256), %i.sl
  %i.so = sub nuw nsw <2 x i32> splat (i32 256), %i.sm
  %i.sp = icmp slt <2 x i8> %i.si, zeroinitializer
  %i.sq = icmp slt <2 x i8> %i.sj, zeroinitializer
  %i.sr = select <2 x i1> %i.sp, <2 x i32> %i.sn, <2 x i32> %i.sl
  %i.ss = select <2 x i1> %i.sq, <2 x i32> %i.so, <2 x i32> %i.sm
  %narrow739 = add nuw nsw <2 x i32> %narrow737, %i.sr ; 2 uses
  %i.st = zext nneg <2 x i32> %narrow739 to <2 x i64>
  %narrow740 = add nuw nsw <2 x i32> %narrow738, %i.ss ; 2 uses
  %i.su = zext nneg <2 x i32> %narrow740 to <2 x i64>
  %i.sv = icmp eq i64 %n.vec302, 12
  br i1 %i.sv, label %middle.block315, label %vector.body303.3

vector.body303.3:                                 ; preds = %vector.body303.2
  %next.gep307.3 = getelementptr i8, ptr %i.l, i64 13
  %next.gep308.3 = getelementptr i8, ptr %i.ql, i64 13
  %next.gep309.3 = getelementptr i8, ptr %i.qi, i64 13
  %i.sw = getelementptr i8, ptr %i.l, i64 15
  %wide.load310.3 = load <2 x i8>, ptr %next.gep307.3, align 1, !tbaa !7, !noalias !298
  %wide.load311.3 = load <2 x i8>, ptr %i.sw, align 1, !tbaa !7, !noalias !298
  %i.sx = getelementptr i8, ptr %i.ql, i64 15
  %wide.load312.3 = load <2 x i8>, ptr %next.gep308.3, align 1, !tbaa !7, !noalias !298
  %wide.load313.3 = load <2 x i8>, ptr %i.sx, align 1, !tbaa !7, !noalias !298
  %i.sy = lshr <2 x i8> %wide.load312.3, splat (i8 1)
  %i.sz = lshr <2 x i8> %wide.load313.3, splat (i8 1)
  %i.ta = sub <2 x i8> %wide.load310.3, %i.sy     ; 3 uses
  %i.tb = sub <2 x i8> %wide.load311.3, %i.sz     ; 3 uses
  %i.tc = getelementptr i8, ptr %i.qi, i64 15
  store <2 x i8> %i.ta, ptr %next.gep309.3, align 1, !tbaa !7, !noalias !298
  store <2 x i8> %i.tb, ptr %i.tc, align 1, !tbaa !7, !noalias !298
  %i.td = zext <2 x i8> %i.ta to <2 x i32>        ; 2 uses
  %i.te = zext <2 x i8> %i.tb to <2 x i32>        ; 2 uses
  %i.tf = sub nuw nsw <2 x i32> splat (i32 256), %i.td
  %i.tg = sub nuw nsw <2 x i32> splat (i32 256), %i.te
  %i.th = icmp slt <2 x i8> %i.ta, zeroinitializer
  %i.ti = icmp slt <2 x i8> %i.tb, zeroinitializer
  %i.tj = select <2 x i1> %i.th, <2 x i32> %i.tf, <2 x i32> %i.td
  %i.tk = select <2 x i1> %i.ti, <2 x i32> %i.tg, <2 x i32> %i.te
  %narrow741 = add nuw nsw <2 x i32> %narrow739, %i.tj ; 2 uses
  %i.tl = zext nneg <2 x i32> %narrow741 to <2 x i64>
  %narrow742 = add nuw nsw <2 x i32> %narrow740, %i.tk ; 2 uses
  %i.tm = zext nneg <2 x i32> %narrow742 to <2 x i64>
  %i.tn = icmp eq i64 %n.vec302, 16
  br i1 %i.tn, label %middle.block315, label %vector.body303.4

vector.body303.4:                                 ; preds = %vector.body303.3
  %next.gep307.4 = getelementptr i8, ptr %i.l, i64 17
  %next.gep308.4 = getelementptr i8, ptr %i.ql, i64 17
  %next.gep309.4 = getelementptr i8, ptr %i.qi, i64 17
  %i.to = getelementptr i8, ptr %i.l, i64 19
  %wide.load310.4 = load <2 x i8>, ptr %next.gep307.4, align 1, !tbaa !7, !noalias !298
  %wide.load311.4 = load <2 x i8>, ptr %i.to, align 1, !tbaa !7, !noalias !298
  %i.tp = getelementptr i8, ptr %i.ql, i64 19
  %wide.load312.4 = load <2 x i8>, ptr %next.gep308.4, align 1, !tbaa !7, !noalias !298
  %wide.load313.4 = load <2 x i8>, ptr %i.tp, align 1, !tbaa !7, !noalias !298
  %i.tq = lshr <2 x i8> %wide.load312.4, splat (i8 1)
  %i.tr = lshr <2 x i8> %wide.load313.4, splat (i8 1)
  %i.ts = sub <2 x i8> %wide.load310.4, %i.tq     ; 3 uses
  %i.tt = sub <2 x i8> %wide.load311.4, %i.tr     ; 3 uses
  %i.tu = getelementptr i8, ptr %i.qi, i64 19
  store <2 x i8> %i.ts, ptr %next.gep309.4, align 1, !tbaa !7, !noalias !298
  store <2 x i8> %i.tt, ptr %i.tu, align 1, !tbaa !7, !noalias !298
  %i.tv = zext <2 x i8> %i.ts to <2 x i32>        ; 2 uses
  %i.tw = zext <2 x i8> %i.tt to <2 x i32>        ; 2 uses
  %i.tx = sub nuw nsw <2 x i32> splat (i32 256), %i.tv
  %i.ty = sub nuw nsw <2 x i32> splat (i32 256), %i.tw
  %i.tz = icmp slt <2 x i8> %i.ts, zeroinitializer
  %i.ua = icmp slt <2 x i8> %i.tt, zeroinitializer
  %i.ub = select <2 x i1> %i.tz, <2 x i32> %i.tx, <2 x i32> %i.tv
  %i.uc = select <2 x i1> %i.ua, <2 x i32> %i.ty, <2 x i32> %i.tw
  %narrow743 = add nuw nsw <2 x i32> %narrow741, %i.ub ; 2 uses
  %i.ud = zext nneg <2 x i32> %narrow743 to <2 x i64>
  %narrow744 = add nuw nsw <2 x i32> %narrow742, %i.uc ; 2 uses
  %i.ue = zext nneg <2 x i32> %narrow744 to <2 x i64>
  %i.uf = icmp eq i64 %n.vec302, 20
  br i1 %i.uf, label %middle.block315, label %vector.body303.5

vector.body303.5:                                 ; preds = %vector.body303.4
  %next.gep307.5 = getelementptr i8, ptr %i.l, i64 21
  %next.gep308.5 = getelementptr i8, ptr %i.ql, i64 21
  %next.gep309.5 = getelementptr i8, ptr %i.qi, i64 21
  %i.ug = getelementptr i8, ptr %i.l, i64 23
  %wide.load310.5 = load <2 x i8>, ptr %next.gep307.5, align 1, !tbaa !7, !noalias !298
  %wide.load311.5 = load <2 x i8>, ptr %i.ug, align 1, !tbaa !7, !noalias !298
  %i.uh = getelementptr i8, ptr %i.ql, i64 23
  %wide.load312.5 = load <2 x i8>, ptr %next.gep308.5, align 1, !tbaa !7, !noalias !298
  %wide.load313.5 = load <2 x i8>, ptr %i.uh, align 1, !tbaa !7, !noalias !298
  %i.ui = lshr <2 x i8> %wide.load312.5, splat (i8 1)
  %i.uj = lshr <2 x i8> %wide.load313.5, splat (i8 1)
  %i.uk = sub <2 x i8> %wide.load310.5, %i.ui     ; 3 uses
  %i.ul = sub <2 x i8> %wide.load311.5, %i.uj     ; 3 uses
  %i.um = getelementptr i8, ptr %i.qi, i64 23
  store <2 x i8> %i.uk, ptr %next.gep309.5, align 1, !tbaa !7, !noalias !298
  store <2 x i8> %i.ul, ptr %i.um, align 1, !tbaa !7, !noalias !298
  %i.un = zext <2 x i8> %i.uk to <2 x i32>        ; 2 uses
  %i.uo = zext <2 x i8> %i.ul to <2 x i32>        ; 2 uses
  %i.up = sub nuw nsw <2 x i32> splat (i32 256), %i.un
  %i.uq = sub nuw nsw <2 x i32> splat (i32 256), %i.uo
  %i.ur = icmp slt <2 x i8> %i.uk, zeroinitializer
  %i.us = icmp slt <2 x i8> %i.ul, zeroinitializer
  %i.ut = select <2 x i1> %i.ur, <2 x i32> %i.up, <2 x i32> %i.un
  %i.uu = select <2 x i1> %i.us, <2 x i32> %i.uq, <2 x i32> %i.uo
  %narrow745 = add nuw nsw <2 x i32> %narrow743, %i.ut
  %i.uv = zext <2 x i32> %narrow745 to <2 x i64>  ; 2 uses
  %narrow746 = add nuw nsw <2 x i32> %narrow744, %i.uu
  %i.uw = zext <2 x i32> %narrow746 to <2 x i64>  ; 2 uses
  %i.ux = icmp eq i64 %n.vec302, 24
  br i1 %i.ux, label %middle.block315, label %vector.body303.6

vector.body303.6:                                 ; preds = %vector.body303.5
  %next.gep307.6 = getelementptr i8, ptr %i.l, i64 25
  %next.gep308.6 = getelementptr i8, ptr %i.ql, i64 25
  %next.gep309.6 = getelementptr i8, ptr %i.qi, i64 25
  %i.uy = getelementptr i8, ptr %i.l, i64 27
  %wide.load310.6 = load <2 x i8>, ptr %next.gep307.6, align 1, !tbaa !7, !noalias !298
  %wide.load311.6 = load <2 x i8>, ptr %i.uy, align 1, !tbaa !7, !noalias !298
  %i.uz = getelementptr i8, ptr %i.ql, i64 27
  %wide.load312.6 = load <2 x i8>, ptr %next.gep308.6, align 1, !tbaa !7, !noalias !298
  %wide.load313.6 = load <2 x i8>, ptr %i.uz, align 1, !tbaa !7, !noalias !298
  %i.va = lshr <2 x i8> %wide.load312.6, splat (i8 1)
  %i.vb = lshr <2 x i8> %wide.load313.6, splat (i8 1)
  %i.vc = sub <2 x i8> %wide.load310.6, %i.va     ; 3 uses
  %i.vd = sub <2 x i8> %wide.load311.6, %i.vb     ; 3 uses
  %i.ve = getelementptr i8, ptr %i.qi, i64 27
  store <2 x i8> %i.vc, ptr %next.gep309.6, align 1, !tbaa !7, !noalias !298
  store <2 x i8> %i.vd, ptr %i.ve, align 1, !tbaa !7, !noalias !298
  %i.vf = zext <2 x i8> %i.vc to <2 x i32>        ; 2 uses
  %i.vg = zext <2 x i8> %i.vd to <2 x i32>        ; 2 uses
  %i.vh = sub nuw nsw <2 x i32> splat (i32 256), %i.vf
  %i.vi = sub nuw nsw <2 x i32> splat (i32 256), %i.vg
  %i.vj = icmp slt <2 x i8> %i.vc, zeroinitializer
  %i.vk = icmp slt <2 x i8> %i.vd, zeroinitializer
  %i.vl = select <2 x i1> %i.vj, <2 x i32> %i.vh, <2 x i32> %i.vf
  %i.vm = select <2 x i1> %i.vk, <2 x i32> %i.vi, <2 x i32> %i.vg
  %i.vn = zext nneg <2 x i32> %i.vl to <2 x i64>
  %i.vo = zext nneg <2 x i32> %i.vm to <2 x i64>
  %i.vp = add nuw nsw <2 x i64> %i.uv, %i.vn      ; 2 uses
  %i.vq = add nuw nsw <2 x i64> %i.uw, %i.vo      ; 2 uses
  %i.vr = icmp eq i64 %n.vec302, 28
  br i1 %i.vr, label %middle.block315, label %vector.body303.7

vector.body303.7:                                 ; preds = %vector.body303.6
  %next.gep307.7 = getelementptr i8, ptr %i.l, i64 29
  %next.gep308.7 = getelementptr i8, ptr %i.ql, i64 29
  %next.gep309.7 = getelementptr i8, ptr %i.qi, i64 29
  %i.vs = getelementptr i8, ptr %i.l, i64 31
  %wide.load310.7 = load <2 x i8>, ptr %next.gep307.7, align 1, !tbaa !7, !noalias !298
  %wide.load311.7 = load <2 x i8>, ptr %i.vs, align 1, !tbaa !7, !noalias !298
  %i.vt = getelementptr i8, ptr %i.ql, i64 31
  %wide.load312.7 = load <2 x i8>, ptr %next.gep308.7, align 1, !tbaa !7, !noalias !298
  %wide.load313.7 = load <2 x i8>, ptr %i.vt, align 1, !tbaa !7, !noalias !298
  %i.vu = lshr <2 x i8> %wide.load312.7, splat (i8 1)
  %i.vv = lshr <2 x i8> %wide.load313.7, splat (i8 1)
  %i.vw = sub <2 x i8> %wide.load310.7, %i.vu     ; 3 uses
  %i.vx = sub <2 x i8> %wide.load311.7, %i.vv     ; 3 uses
  %i.vy = getelementptr i8, ptr %i.qi, i64 31
  store <2 x i8> %i.vw, ptr %next.gep309.7, align 1, !tbaa !7, !noalias !298
  store <2 x i8> %i.vx, ptr %i.vy, align 1, !tbaa !7, !noalias !298
  %i.vz = zext <2 x i8> %i.vw to <2 x i32>        ; 2 uses
  %i.wa = zext <2 x i8> %i.vx to <2 x i32>        ; 2 uses
  %i.wb = sub nuw nsw <2 x i32> splat (i32 256), %i.vz
  %i.wc = sub nuw nsw <2 x i32> splat (i32 256), %i.wa
  %i.wd = icmp slt <2 x i8> %i.vw, zeroinitializer
  %i.we = icmp slt <2 x i8> %i.vx, zeroinitializer
  %i.wf = select <2 x i1> %i.wd, <2 x i32> %i.wb, <2 x i32> %i.vz
  %i.wg = select <2 x i1> %i.we, <2 x i32> %i.wc, <2 x i32> %i.wa
  %i.wh = zext nneg <2 x i32> %i.wf to <2 x i64>
  %i.wi = zext nneg <2 x i32> %i.wg to <2 x i64>
  %i.wj = add nuw nsw <2 x i64> %i.vp, %i.wh
  %i.wk = add nuw nsw <2 x i64> %i.vq, %i.wi
  br label %middle.block315

middle.block315:                                  ; preds = %vector.body303.7, %vector.body303.6, %vector.body303.5, %vector.body303.4, %vector.body303.3, %vector.body303.2, %vector.body303.1, %vector.ph301
  %.lcssa699 = phi <2 x i64> [ %i.rj, %vector.ph301 ], [ %i.sb, %vector.body303.1 ], [ %i.st, %vector.body303.2 ], [ %i.tl, %vector.body303.3 ], [ %i.ud, %vector.body303.4 ], [ %i.uv, %vector.body303.5 ], [ %i.vp, %vector.body303.6 ], [ %i.wj, %vector.body303.7 ]
  %.lcssa698 = phi <2 x i64> [ %i.rk, %vector.ph301 ], [ %i.sc, %vector.body303.1 ], [ %i.su, %vector.body303.2 ], [ %i.tm, %vector.body303.3 ], [ %i.ue, %vector.body303.4 ], [ %i.uw, %vector.body303.5 ], [ %i.vq, %vector.body303.6 ], [ %i.wk, %vector.body303.7 ]
  %bin.rdx316 = add <2 x i64> %.lcssa698, %.lcssa699
  %i.wl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx316) ; 2 uses
  %cmp.n317 = icmp eq i64 %6, %n.vec302
  br i1 %cmp.n317, label %.preheader.i164, label %.lr.ph.i159.preheader696

.lr.ph.i159.preheader696:                         ; preds = %vector.memcheck296, %.lr.ph.i159.preheader, %middle.block315
  %.03551.i.ph = phi ptr [ %.03546.i, %vector.memcheck296 ], [ %.03546.i, %.lr.ph.i159.preheader ], [ %i.qq, %middle.block315 ] ; 3 uses
  %.03150.i.ph = phi ptr [ %.03145.i, %vector.memcheck296 ], [ %.03145.i, %.lr.ph.i159.preheader ], [ %i.qr, %middle.block315 ] ; 3 uses
  %.03349.i.ph = phi ptr [ %.03344.i, %vector.memcheck296 ], [ %.03344.i, %.lr.ph.i159.preheader ], [ %i.qs, %middle.block315 ] ; 3 uses
  %.048.i.ph = phi i64 [ 0, %vector.memcheck296 ], [ 0, %.lr.ph.i159.preheader ], [ %i.wl, %middle.block315 ] ; 2 uses
  %.02847.i.ph = phi i32 [ 0, %vector.memcheck296 ], [ 0, %.lr.ph.i159.preheader ], [ %i.qt, %middle.block315 ] ; 4 uses
  %i.wm = sub nsw i32 %i.j, %.02847.i.ph
  %.neg = add nsw i32 %.02847.i.ph, 1
  %xtraiter710 = and i32 %i.wm, 1
  %lcmp.mod711.not = icmp eq i32 %xtraiter710, 0
  br i1 %lcmp.mod711.not, label %.lr.ph.i159.prol.loopexit, label %.lr.ph.i159.prol

.lr.ph.i159.prol:                                 ; preds = %.lr.ph.i159.preheader696
  %i.wn = load i8, ptr %.03551.i.ph, align 1, !tbaa !7, !noalias !298
  %i.wo = load i8, ptr %.03150.i.ph, align 1, !tbaa !7, !noalias !298
  %i.wp = lshr i8 %i.wo, 1
  %.narrow42.i.prol = sub i8 %i.wn, %i.wp         ; 3 uses
  store i8 %.narrow42.i.prol, ptr %.03349.i.ph, align 1, !tbaa !7, !noalias !298
  %i.wq = zext i8 %.narrow42.i.prol to i32        ; 2 uses
  %i.wr = sub nuw nsw i32 256, %i.wq
  %i.ws = icmp slt i8 %.narrow42.i.prol, 0
  %i.wt = select i1 %i.ws, i32 %i.wr, i32 %i.wq
  %i.wu = zext nneg i32 %i.wt to i64
  %i.wv = add i64 %.048.i.ph, %i.wu               ; 2 uses
  %i.ww = add nuw nsw i32 %.02847.i.ph, 1
  %.033.i160.prol = getelementptr inbounds nuw i8, ptr %.03349.i.ph, i64 1 ; 2 uses
  %.031.i161.prol = getelementptr inbounds nuw i8, ptr %.03150.i.ph, i64 1 ; 2 uses
  %.035.i162.prol = getelementptr inbounds nuw i8, ptr %.03551.i.ph, i64 1 ; 2 uses
  br label %.lr.ph.i159.prol.loopexit

.lr.ph.i159.prol.loopexit:                        ; preds = %.lr.ph.i159.prol, %.lr.ph.i159.preheader696
  %.lcssa697.unr = phi i64 [ poison, %.lr.ph.i159.preheader696 ], [ %i.wv, %.lr.ph.i159.prol ]
  %.033.i160.lcssa.unr = phi ptr [ poison, %.lr.ph.i159.preheader696 ], [ %.033.i160.prol, %.lr.ph.i159.prol ]
  %.031.i161.lcssa.unr = phi ptr [ poison, %.lr.ph.i159.preheader696 ], [ %.031.i161.prol, %.lr.ph.i159.prol ]
  %.035.i162.lcssa.unr = phi ptr [ poison, %.lr.ph.i159.preheader696 ], [ %.035.i162.prol, %.lr.ph.i159.prol ]
  %.03551.i.unr = phi ptr [ %.03551.i.ph, %.lr.ph.i159.preheader696 ], [ %.035.i162.prol, %.lr.ph.i159.prol ]
  %.03150.i.unr = phi ptr [ %.03150.i.ph, %.lr.ph.i159.preheader696 ], [ %.031.i161.prol, %.lr.ph.i159.prol ]
  %.03349.i.unr = phi ptr [ %.03349.i.ph, %.lr.ph.i159.preheader696 ], [ %.033.i160.prol, %.lr.ph.i159.prol ]
  %.048.i.unr = phi i64 [ %.048.i.ph, %.lr.ph.i159.preheader696 ], [ %i.wv, %.lr.ph.i159.prol ]
  %.02847.i.unr = phi i32 [ %.02847.i.ph, %.lr.ph.i159.preheader696 ], [ %i.ww, %.lr.ph.i159.prol ]
  %i.wx = icmp eq i32 %i.j, %.neg
  br i1 %i.wx, label %.preheader.i164, label %.lr.ph.i159

.preheader.i164:                                  ; preds = %.lr.ph.i159.prol.loopexit, %.lr.ph.i159, %middle.block315, %bb.q
  %.0.lcssa.i165 = phi i64 [ 0, %bb.q ], [ %i.wl, %middle.block315 ], [ %.lcssa697.unr, %.lr.ph.i159.prol.loopexit ], [ %i.xr, %.lr.ph.i159 ] ; 2 uses
  %.033.lcssa.i166 = phi ptr [ %.03344.i, %bb.q ], [ %i.qs, %middle.block315 ], [ %.033.i160.lcssa.unr, %.lr.ph.i159.prol.loopexit ], [ %.033.i160.1, %.lr.ph.i159 ]
  %.031.lcssa.i = phi ptr [ %.03145.i, %bb.q ], [ %i.qr, %middle.block315 ], [ %.031.i161.lcssa.unr, %.lr.ph.i159.prol.loopexit ], [ %.031.i161.1, %.lr.ph.i159 ]
  %.035.lcssa.i167 = phi ptr [ %.03546.i, %bb.q ], [ %i.qq, %middle.block315 ], [ %.035.i162.lcssa.unr, %.lr.ph.i159.prol.loopexit ], [ %.035.i162.1, %.lr.ph.i159 ]
  %i.wy = zext nneg i32 %i.j to i64
  %i.wz = icmp ugt i64 %i.e, %i.wy
  br i1 %i.wz, label %.lr.ph63.i, label %png_setup_avg_row.exit

.lr.ph.i159:                                      ; preds = %.lr.ph.i159.prol.loopexit, %.lr.ph.i159
  %.03551.i = phi ptr [ %.035.i162.1, %.lr.ph.i159 ], [ %.03551.i.unr, %.lr.ph.i159.prol.loopexit ] ; 3 uses
  %.03150.i = phi ptr [ %.031.i161.1, %.lr.ph.i159 ], [ %.03150.i.unr, %.lr.ph.i159.prol.loopexit ] ; 3 uses
  %.03349.i = phi ptr [ %.033.i160.1, %.lr.ph.i159 ], [ %.03349.i.unr, %.lr.ph.i159.prol.loopexit ] ; 3 uses
  %.048.i = phi i64 [ %i.xr, %.lr.ph.i159 ], [ %.048.i.unr, %.lr.ph.i159.prol.loopexit ]
  %.02847.i = phi i32 [ %i.xs, %.lr.ph.i159 ], [ %.02847.i.unr, %.lr.ph.i159.prol.loopexit ]
  %i.xa = load i8, ptr %.03551.i, align 1, !tbaa !7, !noalias !298
  %i.xb = load i8, ptr %.03150.i, align 1, !tbaa !7, !noalias !298
  %i.xc = lshr i8 %i.xb, 1
  %.narrow42.i = sub i8 %i.xa, %i.xc              ; 3 uses
  store i8 %.narrow42.i, ptr %.03349.i, align 1, !tbaa !7, !noalias !298
  %i.xd = zext i8 %.narrow42.i to i32             ; 2 uses
  %i.xe = sub nuw nsw i32 256, %i.xd
  %i.xf = icmp slt i8 %.narrow42.i, 0
  %i.xg = select i1 %i.xf, i32 %i.xe, i32 %i.xd
  %i.xh = zext nneg i32 %i.xg to i64
  %i.xi = add i64 %.048.i, %i.xh
  %.033.i160 = getelementptr inbounds nuw i8, ptr %.03349.i, i64 1
  %.031.i161 = getelementptr inbounds nuw i8, ptr %.03150.i, i64 1
  %.035.i162 = getelementptr inbounds nuw i8, ptr %.03551.i, i64 1
  %i.xj = load i8, ptr %.035.i162, align 1, !tbaa !7, !noalias !298
  %i.xk = load i8, ptr %.031.i161, align 1, !tbaa !7, !noalias !298
  %i.xl = lshr i8 %i.xk, 1
  %.narrow42.i.1 = sub i8 %i.xj, %i.xl            ; 3 uses
  store i8 %.narrow42.i.1, ptr %.033.i160, align 1, !tbaa !7, !noalias !298
  %i.xm = zext i8 %.narrow42.i.1 to i32           ; 2 uses
  %i.xn = sub nuw nsw i32 256, %i.xm
  %i.xo = icmp slt i8 %.narrow42.i.1, 0
  %i.xp = select i1 %i.xo, i32 %i.xn, i32 %i.xm
  %i.xq = zext nneg i32 %i.xp to i64
  %i.xr = add i64 %i.xi, %i.xq                    ; 2 uses
  %i.xs = add nuw nsw i32 %.02847.i, 2            ; 2 uses
  %.033.i160.1 = getelementptr inbounds nuw i8, ptr %.03349.i, i64 2 ; 2 uses
  %.031.i161.1 = getelementptr inbounds nuw i8, ptr %.03150.i, i64 2 ; 2 uses
  %.035.i162.1 = getelementptr inbounds nuw i8, ptr %.03551.i, i64 2 ; 2 uses
  %exitcond.not.i163.1 = icmp eq i32 %i.xs, %i.j
  br i1 %exitcond.not.i163.1, label %.preheader.i164, label %.lr.ph.i159, !llvm.loop !301

.lr.ph63.i:                                       ; preds = %.preheader.i164, %.lr.ph63.i
  %.03062.pn.i = phi ptr [ %.03062.i, %.lr.ph63.i ], [ %i.l, %.preheader.i164 ]
  %.161.i = phi i64 [ %i.yf, %.lr.ph63.i ], [ %.0.lcssa.i165, %.preheader.i164 ]
  %.12960.i = phi i32 [ %i.yk, %.lr.ph63.i ], [ %i.j, %.preheader.i164 ]
  %.13259.i = phi ptr [ %i.yi, %.lr.ph63.i ], [ %.031.lcssa.i, %.preheader.i164 ] ; 2 uses
  %.13458.i = phi ptr [ %i.yh, %.lr.ph63.i ], [ %.033.lcssa.i166, %.preheader.i164 ] ; 2 uses
  %.13657.i = phi ptr [ %i.yj, %.lr.ph63.i ], [ %.035.lcssa.i167, %.preheader.i164 ] ; 2 uses
  %.03062.i = getelementptr inbounds nuw i8, ptr %.03062.pn.i, i64 1 ; 2 uses
  %i.xt = load i8, ptr %.13657.i, align 1, !tbaa !7, !noalias !298
  %i.xu = load i8, ptr %.13259.i, align 1, !tbaa !7, !noalias !298
  %i.xv = zext i8 %i.xu to i16
  %i.xw = load i8, ptr %.03062.i, align 1, !tbaa !7, !noalias !298
  %i.xx = zext i8 %i.xw to i16
  %i.xy = add nuw nsw i16 %i.xx, %i.xv
  %i.xz = lshr i16 %i.xy, 1
  %.tr.i169 = trunc nuw i16 %i.xz to i8
  %.narrow.i170 = sub i8 %i.xt, %.tr.i169         ; 3 uses
  store i8 %.narrow.i170, ptr %.13458.i, align 1, !tbaa !7, !noalias !298
  %i.ya = zext i8 %.narrow.i170 to i32            ; 2 uses
  %i.yb = sub nuw nsw i32 256, %i.ya
  %i.yc = icmp slt i8 %.narrow.i170, 0
  %i.yd = select i1 %i.yc, i32 %i.yb, i32 %i.ya
  %i.ye = zext nneg i32 %i.yd to i64
  %i.yf = add i64 %.161.i, %i.ye                  ; 3 uses
  %i.yg = icmp ule i64 %i.yf, %.4
  %i.yh = getelementptr inbounds nuw i8, ptr %.13458.i, i64 1
  %i.yi = getelementptr inbounds nuw i8, ptr %.13259.i, i64 1
  %i.yj = getelementptr inbounds nuw i8, ptr %.13657.i, i64 1
  %i.yk = add i32 %.12960.i, 1                    ; 2 uses
  %i.yl = zext i32 %i.yk to i64
  %i.ym = icmp ugt i64 %i.e, %i.yl
  %or.cond.i171 = select i1 %i.yg, i1 %i.ym, i1 false
  br i1 %or.cond.i171, label %.lr.ph63.i, label %png_setup_avg_row.exit, !llvm.loop !302

png_setup_avg_row.exit:                           ; preds = %.lr.ph63.i, %.preheader.i164
  %.2.i168 = phi i64 [ %.0.lcssa.i165, %.preheader.i164 ], [ %i.yf, %.lr.ph63.i ] ; 3 uses
  %i.yn = icmp ult i64 %.2.i168, %.4
  br i1 %i.yn, label %bb.r, label %bb.t

bb.r:                                             ; preds = %png_setup_avg_row.exit
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !246 ; 2 uses
  %.not125 = icmp eq ptr %i.yp, null
  br i1 %.not125, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.yp, ptr %i.qh, align 8, !tbaa !245
  store ptr %i.qi, ptr %i.yo, align 8, !tbaa !246
  br label %bb.t

bb.t:                                             ; preds = %png_setup_avg_row.exit, %bb.s, %bb.r, %.thread197
  %.5109 = phi ptr [ %.3107, %png_setup_avg_row.exit ], [ %.3107, %.thread197 ], [ %i.qi, %bb.s ], [ %i.qi, %bb.r ] ; 2 uses
  %.6 = phi i64 [ %.4, %png_setup_avg_row.exit ], [ %.4, %.thread197 ], [ %.2.i168, %bb.s ], [ %.2.i168, %bb.r ] ; 2 uses
  %i.yq = icmp eq i32 %.0111, 128
  br i1 %i.yq, label %bb.u, label %.thread214

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !245, !alias.scope !303 ; 8 uses
  %i.yt = ptrtoaddr ptr %i.ys to i64              ; 2 uses
  store i8 4, ptr %i.ys, align 1, !tbaa !7, !noalias !303
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !247, !alias.scope !303 ; 9 uses
  %i.yw = ptrtoaddr ptr %i.yv to i64              ; 2 uses
  %i.yx = zext nneg i32 %i.j to i64               ; 13 uses
  %.04964.i = getelementptr inbounds nuw i8, ptr %i.ys, i64 1 ; 7 uses
  %.04765.i = getelementptr inbounds nuw i8, ptr %i.yv, i64 1 ; 7 uses
  %.05166.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 7 uses
  %.not81.i = icmp eq i32 %i.j, 0
  br i1 %.not81.i, label %.preheader.i174, label %iter.check

iter.check:                                       ; preds = %bb.u
  %min.iters.check356 = icmp ult i8 %i.g, 25
  br i1 %min.iters.check356, label %.lr.ph.i172.preheader, label %vector.memcheck351

vector.memcheck351:                               ; preds = %iter.check
  %i.yy = sub i64 %i.m, %i.yt
  %diff.check352 = icmp ugt i64 %i.yy, -16
  %i.yz = sub i64 %i.yw, %i.yt
  %diff.check353 = icmp ugt i64 %i.yz, -16
  %conflict.rdx354 = or i1 %diff.check352, %diff.check353
  br i1 %conflict.rdx354, label %.lr.ph.i172.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck351
  %min.iters.check357 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph358

vector.ph358:                                     ; preds = %vector.main.loop.iter.check
  %i.za = and i64 %i.yx, 12
  %n.vec359 = and i64 %i.yx, 48                   ; 7 uses
  %i.zb = getelementptr i8, ptr %.05166.i, i64 %n.vec359 ; 2 uses
  %i.zc = getelementptr i8, ptr %.04765.i, i64 %n.vec359 ; 2 uses
  %i.zd = getelementptr i8, ptr %.04964.i, i64 %n.vec359 ; 2 uses
  %wide.load365 = load <16 x i8>, ptr %.05166.i, align 1, !tbaa !7, !noalias !303
  %wide.load366 = load <16 x i8>, ptr %.04765.i, align 1, !tbaa !7, !noalias !303
  %i.ze = sub <16 x i8> %wide.load365, %wide.load366
  store <16 x i8> %i.ze, ptr %.04964.i, align 1, !tbaa !7, !noalias !303
  %i.zf = icmp eq i64 %n.vec359, 16
  br i1 %i.zf, label %middle.block368, label %vector.body360.1

vector.body360.1:                                 ; preds = %vector.ph358
  %next.gep362.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep363.1 = getelementptr i8, ptr %i.yv, i64 17
  %next.gep364.1 = getelementptr i8, ptr %i.ys, i64 17
  %wide.load365.1 = load <16 x i8>, ptr %next.gep362.1, align 1, !tbaa !7, !noalias !303
  %wide.load366.1 = load <16 x i8>, ptr %next.gep363.1, align 1, !tbaa !7, !noalias !303
  %i.zg = sub <16 x i8> %wide.load365.1, %wide.load366.1
end_hunk_1
