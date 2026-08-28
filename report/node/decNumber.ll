Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/decNumber?download=true
inline.NumInlined: 181
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL8decExpOpP9decNumberPKS_P10decContextPj:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.p, ptr %i.q, align 4
  %i.r = load i32, ptr %1, align 4
  store i32 %i.r, ptr %0, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.t, ptr %i.u, align 1
  %i.v = load i32, ptr %1, align 4                ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.g, label %.thread279

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.y = icmp samesign ult i32 %i.v, 50
  %i.z = zext nneg i32 %i.v to i64                ; 2 uses
  br i1 %i.y, label %bb.h, label %iter.check

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.g, %bb.h
  %.pn.i = phi i64 [ %i.ac, %bb.h ], [ %i.z, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 %.pn.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.af = add i64 %.pn.i, %i.a
  %i.ag = add i64 %i.af, 9
  %i.ah = add i64 %i.a, 11
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.ah)
  %i.ai = add i64 %umax, -10
  %i.aj = sub i64 %i.ai, %i.a                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.aj, 4
  %i.ak = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond335 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond335, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check322 = icmp ult i64 %i.aj, 32
  br i1 %min.iters.check322, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = and i64 %i.aj, 28
  %n.vec = and i64 %i.aj, -32                     ; 5 uses
  %i.am = getelementptr i8, ptr %i.x, i64 %n.vec
  %i.an = getelementptr i8, ptr %i.ae, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %index ; 2 uses
  %next.gep323 = getelementptr i8, ptr %i.ae, i64 %index ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep323, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep323, align 1
  %wide.load324 = load <16 x i8>, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load324, ptr %i.ap, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.thread279, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec326 = and i64 %i.aj, -4                   ; 4 uses
  %i.ar = getelementptr i8, ptr %i.x, i64 %n.vec326
  %i.as = getelementptr i8, ptr %i.ae, i64 %n.vec326
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index327 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next331, %vec.epilog.vector.body ] ; 3 uses
  %next.gep328 = getelementptr i8, ptr %i.x, i64 %index327
  %next.gep329 = getelementptr i8, ptr %i.ae, i64 %index327
  %wide.load330 = load <4 x i8>, ptr %next.gep329, align 1
  store <4 x i8> %wide.load330, ptr %next.gep328, align 1
  %index.next331 = add nuw i64 %index327, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next331, %n.vec326
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n332 = icmp eq i64 %i.aj, %n.vec326
  br i1 %cmp.n332, label %.thread279, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.x, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.ae, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.au = load i8, ptr %.02631.i, align 1
  store i8 %i.au, ptr %.032.i, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %i.ax = icmp ult ptr %i.av, %i.ad
  br i1 %i.ax, label %.lr.ph.i, label %.thread279, !llvm.loop !67

bb.i:                                             ; preds = %bb.b
  %i.ay = tail call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %.thread279

bb.j:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bc = load i32, ptr %1, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bf, align 4
  store i32 1, ptr %0, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.bg, align 1
  br label %.thread279

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i8 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i32 1, ptr %10, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 9 ; 2 uses
  store i8 4, ptr %i.bj, align 1
  %i.bk = load i32, ptr %2, align 4
  %.lobit = ashr i8 %i.f, 7
  %i.bl = sext i8 %.lobit to i32
  %spec.select296 = sub i32 %i.bl, %i.bk
  store i32 %spec.select296, ptr %i.bi, align 4
  %i.bm = call fastcc noundef i32 @_ZL10decComparePK9decNumberS1_h(ptr noundef nonnull %10, ptr noundef nonnull %1, i8 noundef zeroext 1) ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -2147483648
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = load i32, ptr %3, align 4
  %i.bp = or i32 %i.bo, 16
  store i32 %i.bp, ptr %3, align 4
  br label %.thread279

bb.o:                                             ; preds = %bb.m
  %i.bq = icmp sgt i32 %i.bm, -1
  br i1 %i.bq, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.br = load i32, ptr %2, align 4               ; 9 uses
  %i.bs = add nsw i32 %i.br, -1                   ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bv = getelementptr i8, ptr %0, i64 9         ; 6 uses
  store i8 1, ptr %i.bv, align 1
  %i.bw = icmp eq i32 %i.bs, 0
  br i1 %i.bw, label %_ZL14decShiftToMostPhii.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = icmp slt i32 %i.br, 2
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.by = sext i32 %i.bs to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = trunc i32 %i.ca to i8
  store i8 %i.cb, ptr %i.bv, align 1
  br label %_ZL14decShiftToMostPhii.exit

bb.s:                                             ; preds = %bb.q
  %i.cc = icmp samesign ult i32 %i.br, 51
  %i.cd = zext nneg i32 %i.bs to i64              ; 2 uses
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1             ; 2 uses
  %i.cg = zext i8 %i.cf to i64
  %i.ch = zext i8 %i.cf to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.pn.i227 = phi i64 [ %i.cg, %bb.t ], [ %i.cd, %bb.s ] ; 2 uses
  %i.ci = phi i32 [ %i.ch, %bb.t ], [ %i.bs, %bb.s ]
  %i.cj = getelementptr i8, ptr %i.bv, i64 %.pn.i227 ; 4 uses
  %i.ck = sub nsw i32 %i.br, %i.ci                ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %.lr.ph86.i.preheader, label %bb.v

.lr.ph86.i.preheader:                             ; preds = %bb.u
  %12 = getelementptr inbounds i8, ptr %i.cj, i64 -1
  store i8 1, ptr %i.cj, align 1
  br label %.loopexit76.i

bb.v:                                             ; preds = %bb.u
  %i.cm = icmp samesign ult i32 %i.br, 50
  br i1 %i.cm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cn = zext nneg i32 %i.br to i64
  %i.co = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cr = phi i32 [ %i.cq, %bb.w ], [ %i.br, %bb.v ]
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -1
  %i.cv = sext i32 %i.ck to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4
  %.not72.i = icmp ugt ptr %i.cj, %i.cu
  br i1 %.not72.i, label %.loopexit76.loopexit92.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 0, ptr %i.cj, align 1
  br label %.loopexit76.loopexit92.i

.loopexit76.loopexit92.i:                         ; preds = %bb.x, %bb.y
  %.pn = getelementptr i8, ptr %0, i64 %.pn.i227
  %.us-phi301 = getelementptr i8, ptr %.pn, i64 8
  %i.cy = trunc i32 %i.cx to i8
  br label %.loopexit76.i

.loopexit76.i:                                    ; preds = %.lr.ph86.i.preheader, %.loopexit76.loopexit92.i
  %.264.i = phi ptr [ %.us-phi301, %.loopexit76.loopexit92.i ], [ %12, %.lr.ph86.i.preheader ] ; 5 uses
  %.1.i = phi i8 [ %i.cy, %.loopexit76.loopexit92.i ], [ 0, %.lr.ph86.i.preheader ]
  %.264.i301 = ptrtoaddr ptr %.264.i to i64       ; 3 uses
  %.not7488.i = icmp ult ptr %.264.i, %i.bv
  br i1 %.not7488.i, label %_ZL14decShiftToMostPhii.exit, label %.lr.ph91.preheader.i

.lr.ph91.preheader.i:                             ; preds = %.loopexit76.i
  store i8 %.1.i, ptr %.264.i, align 1
  %i.cz = getelementptr inbounds i8, ptr %.264.i, i64 -1
  %.not74.peel.i = icmp ult ptr %i.cz, %i.bv
  br i1 %.not74.peel.i, label %_ZL14decShiftToMostPhii.exit, label %.lr.ph91.i.preheader

.lr.ph91.i.preheader:                             ; preds = %.lr.ph91.preheader.i
  %i.da = add i64 %.264.i301, -2
  %i.db = add i64 %i.b, 8
  %umin = call i64 @llvm.umin.i64(i64 %i.da, i64 %i.db) ; 2 uses
  %i.dc = add i64 %umin, 1
  %i.dd = sub i64 %i.dc, %.264.i301
  %scevgep = getelementptr i8, ptr %.264.i, i64 %i.dd
  %i.de = xor i64 %umin, -1
  %i.df = add i64 %i.de, %.264.i301
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.df, i1 false)
  br label %_ZL14decShiftToMostPhii.exit

_ZL14decShiftToMostPhii.exit:                     ; preds = %.lr.ph91.i.preheader, %bb.p, %bb.r, %.loopexit76.i, %.lr.ph91.preheader.i
  store i32 %i.br, ptr %0, align 4
  %i.dg = sub nsw i32 1, %i.br
  store i32 %i.dg, ptr %i.bu, align 4
  %i.dh = load i32, ptr %3, align 4
  %i.di = or i32 %i.dh, 2080
  store i32 %i.di, ptr %3, align 4
  br label %.thread279

bb.z:                                             ; preds = %bb.o
  %i.dj = call ptr @uprv_decContextDefault_78(ptr noundef nonnull %4, i32 noundef 64) #15 ; 0 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dm = load <2 x i32>, ptr %i.dk, align 4
  store <2 x i32> %i.dm, ptr %i.dl, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dp = load i32, ptr %i.do, align 4            ; 2 uses
  %i.dq = load i32, ptr %1, align 4               ; 7 uses
  %i.dr = add nsw i32 %i.dq, %i.dp                ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, 8
  br i1 %i.ds, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i32 0, ptr %i.du, align 4
  store i32 1, ptr %9, align 16
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 9
  store i8 2, ptr %i.dv, align 1
  %i.dw = load i8, ptr %i.e, align 4
  %.not217 = icmp sgt i8 %i.dw, -1
  br i1 %.not217, label %.thread242, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 -2, ptr %i.du, align 4
  br label %.thread242

bb.ac:                                            ; preds = %bb.z
  %i.dx = icmp sgt i32 %i.dq, 8
  %i.dy = zext i1 %i.dx to i32
  %i.dz = sub nsw i32 8, %i.dr
  %i.ea = call i32 @llvm.umin.i32(i32 %i.dz, i32 %i.dy) ; 2 uses
  %i.eb = add i32 %i.dq, %i.ea
  %i.ec = sub i32 0, %i.eb                        ; 2 uses
  %i.ed = add nsw i32 %i.ea, %i.dr                ; 3 uses
  %i.ee = icmp slt i32 %i.ed, 0
  %spec.select = call i32 @llvm.smax.i32(i32 %i.ed, i32 0) ; 2 uses
  %.not214294 = icmp eq i32 %i.dp, %i.ec
  %.not214 = or i1 %i.ee, %.not214294
  br i1 %.not214, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = icmp slt i32 %i.dq, 50
  br i1 %i.ef, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eg = sext i32 %i.dq to i64
  %i.eh = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = zext i8 %i.ei to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ek = phi i32 [ %i.ej, %bb.ae ], [ %i.dq, %bb.ad ] ; 2 uses
  %i.el = icmp samesign ugt i32 %i.ek, 73
  br i1 %i.el, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %narrow = add nuw i32 %i.ek, 11
  %i.em = zext i32 %narrow to i64
  %i.en = call noalias ptr @uprv_malloc_78(i64 noundef %i.em) #16 ; 3 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %.thread291, label %.thread

.thread:                                          ; preds = %bb.af, %bb.ag
  %.0183 = phi ptr [ null, %bb.af ], [ %i.en, %bb.ag ]
  %.0166 = phi ptr [ %7, %bb.af ], [ %i.en, %bb.ag ] ; 4 uses
  %i.ep = call ptr @uprv_decNumberCopy_78(ptr noundef nonnull %.0166, ptr noundef nonnull %1) ; 0 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0166, i64 4
  store i32 %i.ec, ptr %i.eq, align 4
  %.pre = load i32, ptr %.0166, align 4
  br label %bb.ah

.thread291:                                       ; preds = %bb.ag
  %i.er = load i32, ptr %3, align 4
  %i.es = or i32 %i.er, 16
  store i32 %i.es, ptr %3, align 4
  br label %.thread279

bb.ah:                                            ; preds = %.thread, %bb.ac
  %i.et = phi i32 [ %.pre, %.thread ], [ %i.dq, %bb.ac ]
  %.1188 = phi ptr [ %.0166, %.thread ], [ %1, %bb.ac ] ; 2 uses
  %.2185 = phi ptr [ %.0183, %.thread ], [ null, %bb.ac ] ; 4 uses
  %i.eu = load i32, ptr %2, align 4
  %. = call i32 @llvm.smax.i32(i32 %i.et, i32 %i.eu)
  %i.ev = add nsw i32 %., %spec.select            ; 4 uses
  %i.ew = add nsw i32 %i.ev, 2                    ; 5 uses
  %i.ex = shl nsw i32 %i.ew, 1                    ; 3 uses
  %i.ey = icmp slt i32 %i.ev, 23
  br i1 %i.ey, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ez = sext i32 %i.ex to i64
  %i.fa = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 2
  %i.fc = zext i8 %i.fb to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.fd = phi i32 [ %i.fc, %bb.ai ], [ %i.ex, %bb.ah ]
  %i.fe = add i32 %i.fd, 11                       ; 2 uses
  %i.ff = icmp ugt i32 %i.fe, 180
  br i1 %i.ff, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fg = zext i32 %i.fe to i64
  %i.fh = call noalias ptr @uprv_malloc_78(i64 noundef %i.fg) #16 ; 3 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fj = load i32, ptr %3, align 4
  %i.fk = or i32 %i.fj, 16
  store i32 %i.fk, ptr %3, align 4
  br label %uprv_decNumberCopy_78.exit

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %.0172 = phi ptr [ null, %bb.aj ], [ %i.fh, %bb.ak ] ; 3 uses
  %.0170 = phi ptr [ %9, %bb.aj ], [ %i.fh, %bb.ak ] ; 9 uses
  %i.fl = add nsw i32 %i.ev, 4                    ; 2 uses
  %i.fm = icmp slt i32 %i.ev, 46
  br i1 %i.fm, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fn = sext i32 %i.fl to i64
  %i.fo = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = zext i8 %i.fp to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.fr = phi i32 [ %i.fq, %bb.an ], [ %i.fl, %bb.am ] ; 2 uses
  %i.fs = icmp samesign ugt i32 %i.fr, 85
  br i1 %i.fs, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ft = add nuw i32 %i.fr, 11
  %i.fu = zext i32 %i.ft to i64
  %i.fv = call noalias ptr @uprv_malloc_78(i64 noundef %i.fu) #16 ; 3 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fx = load i32, ptr %3, align 4
  %i.fy = or i32 %i.fx, 16
  store i32 %i.fy, ptr %3, align 4
  br label %uprv_decNumberCopy_78.exit

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %.0179 = phi ptr [ null, %bb.ao ], [ %i.fv, %bb.ap ] ; 2 uses
  %.0176 = phi ptr [ %8, %bb.ao ], [ %i.fv, %bb.ap ] ; 9 uses
  %i.fz = call ptr @uprv_decNumberCopy_78(ptr noundef nonnull %.0176, ptr noundef nonnull %.1188) ; 0 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0170, i64 8
  store i8 0, ptr %i.ga, align 4
  %i.gb = getelementptr inbounds nuw i8, ptr %.0170, i64 4 ; 2 uses
  store i32 0, ptr %i.gb, align 4
  store i32 1, ptr %.0170, align 4
  %i.gc = getelementptr inbounds nuw i8, ptr %.0170, i64 9
  store i8 1, ptr %i.gc, align 1
  store i8 0, ptr %i.bh, align 8
  store i32 0, ptr %i.bi, align 4
  store i32 1, ptr %10, align 16
  store i8 2, ptr %i.bj, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.gd, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 0, ptr %i.ge, align 4
  store i32 1, ptr %11, align 4
  %i.gf = getelementptr inbounds nuw i8, ptr %11, i64 9
  store i8 1, ptr %i.gf, align 1
  %i.gg = call ptr @uprv_decContextDefault_78(ptr noundef nonnull %5, i32 noundef 64) #15 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 4 dereferenceable(28) %5, i64 28, i1 false)
end_hunk_0
begin_hunk_1_@uprv_decNumberPlus_78:bb.a
bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.h, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.m, align 4
  store i32 1, ptr %0, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.n, align 1
  store i8 32, ptr %i.l, align 4
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.k, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.b ]
  %i.o = call ptr @uprv_decContextSetStatus_78(ptr noundef %2, i32 noundef %.0.i) #15 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZL9decStatusP9decNumberjP10decContext.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @uprv_decNumberMultiply_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4
  %i.b = call fastcc noundef ptr @_ZL13decMultiplyOpP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.a) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4              ; 6 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.c, 221
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1073741824
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.c, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4
  store i32 1, ptr %0, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.i, align 1
  store i8 32, ptr %i.g, align 4
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.f, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.b ]
  %i.j = tail call ptr @uprv_decContextSetStatus_78(ptr noundef %3, i32 noundef %.0.i) #15 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZL9decStatusP9decNumberjP10decContext.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @uprv_decNumberPower_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 21 uses
  %4 = alloca %struct.decContext, align 4         ; 16 uses
  %5 = alloca %struct.decNumber, align 4          ; 10 uses
  %6 = alloca [5 x %struct.decNumber], align 16   ; 6 uses
  %7 = alloca [5 x %struct.decNumber], align 16   ; 3 uses
  %i.d = load i32, ptr %3, align 4                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4               ; 5 uses
  %i.g = zext i8 %i.f to i32                      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4               ; 6 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = or i32 %i.j, %i.g                        ; 2 uses
  %i.l = and i32 %i.k, 112
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = and i32 %i.k, 48
  %or.cond210 = icmp eq i32 %i.m, 0
  br i1 %or.cond210, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %i.c) ; 0 uses
  br label %.thread248

bb.d:                                             ; preds = %bb.b
  %i.o = and i32 %i.j, 64
  %.not186 = icmp eq i32 %i.o, 0
  br i1 %.not186, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = and i8 %i.i, -128                        ; 2 uses
  %.not203 = icmp sgt i8 %i.f, -1
  br i1 %.not203, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.g, label %.thread255

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %1, align 4
  %i.u = icmp eq i32 %i.t, 1
  %i.v = and i32 %i.g, 64
  %i.w = icmp eq i32 %i.v, 0
  %or.cond212 = and i1 %i.w, %i.u
  br i1 %or.cond212, label %bb.h, label %.thread255

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.y, align 4
  store i32 1, ptr %5, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 1, ptr %i.z, align 1
  %i.aa = call ptr @uprv_decNumberCompare_78(ptr noundef nonnull %6, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %3) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 0, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 0, ptr %i.ac, align 4
  store i32 1, ptr %0, align 4
  %i.ad = getelementptr i8, ptr %0, i64 9         ; 7 uses
  store i8 0, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = load i8, ptr %i.ae, align 8
  %.not204 = icmp sgt i8 %i.af, -1
  br i1 %.not204, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not206 = icmp eq i8 %i.p, 0
  br i1 %.not206, label %.thread248, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 64, ptr %i.ab, align 4
  br label %.thread248

bb.k:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr %3, align 4               ; 9 uses
  %i.ak = add nsw i32 %i.aj, -1                   ; 4 uses
  store i8 1, ptr %i.ad, align 1
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.thread248.thread.thread253, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = icmp slt i32 %i.aj, 2
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = sext i32 %i.ak to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = trunc i32 %i.ap to i8
  store i8 %i.aq, ptr %i.ad, align 1
  br label %.thread248.thread.thread253

bb.o:                                             ; preds = %bb.m
  %i.ar = icmp samesign ult i32 %i.aj, 51
  %i.as = zext nneg i32 %i.ak to i64              ; 2 uses
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = zext i8 %i.au to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.pn.i = phi i64 [ %i.av, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.ax = phi i32 [ %i.aw, %bb.p ], [ %i.ak, %bb.o ]
  %i.ay = getelementptr i8, ptr %i.ad, i64 %.pn.i ; 4 uses
  %i.az = sub nsw i32 %i.aj, %i.ax                ; 2 uses
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %.lr.ph86.i.preheader, label %bb.r

.lr.ph86.i.preheader:                             ; preds = %bb.q
  %8 = getelementptr inbounds i8, ptr %i.ay, i64 -1
  store i8 1, ptr %i.ay, align 1
  br label %.loopexit76.i

bb.r:                                             ; preds = %bb.q
  %i.bb = icmp samesign ult i32 %i.aj, 50
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bc = zext nneg i32 %i.aj to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bg = phi i32 [ %i.bf, %bb.s ], [ %i.aj, %bb.r ]
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -1
  %i.bk = sext i32 %i.az to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4
  %.not72.i = icmp ugt ptr %i.ay, %i.bj
  br i1 %.not72.i, label %.loopexit76.loopexit92.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr %i.ay, align 1
  br label %.loopexit76.loopexit92.i

.loopexit76.loopexit92.i:                         ; preds = %bb.t, %bb.u
  %.pn = getelementptr i8, ptr %0, i64 %.pn.i
  %.us-phi276 = getelementptr i8, ptr %.pn, i64 8
  %i.bn = trunc i32 %i.bm to i8
  br label %.loopexit76.i

.loopexit76.i:                                    ; preds = %.lr.ph86.i.preheader, %.loopexit76.loopexit92.i
  %.264.i = phi ptr [ %.us-phi276, %.loopexit76.loopexit92.i ], [ %8, %.lr.ph86.i.preheader ] ; 5 uses
  %.1.i = phi i8 [ %i.bn, %.loopexit76.loopexit92.i ], [ 0, %.lr.ph86.i.preheader ]
  %.264.i276 = ptrtoaddr ptr %.264.i to i64       ; 3 uses
  %.not7488.i = icmp ult ptr %.264.i, %i.ad
  br i1 %.not7488.i, label %.thread248.thread.thread253, label %.lr.ph91.preheader.i

.lr.ph91.preheader.i:                             ; preds = %.loopexit76.i
  store i8 %.1.i, ptr %.264.i, align 1
  %i.bo = getelementptr inbounds i8, ptr %.264.i, i64 -1
  %.not74.peel.i = icmp ult ptr %i.bo, %i.ad
  br i1 %.not74.peel.i, label %.thread248.thread.thread253, label %.lr.ph91.i.preheader

.lr.ph91.i.preheader:                             ; preds = %.lr.ph91.preheader.i
  %i.bp = add i64 %.264.i276, -2
  %i.bq = add i64 %i.a, 8
  %umin = call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bq) ; 2 uses
  %i.br = add i64 %umin, 1
  %i.bs = sub i64 %i.br, %.264.i276
  %scevgep = getelementptr i8, ptr %.264.i, i64 %i.bs
  %i.bt = xor i64 %umin, -1
  %i.bu = add i64 %i.bt, %.264.i276
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.bu, i1 false)
  br label %.thread248.thread.thread253

.thread248.thread.thread253:                      ; preds = %.lr.ph91.i.preheader, %.lr.ph91.preheader.i, %.loopexit76.i, %bb.n, %bb.l
  store i32 %i.aj, ptr %0, align 4
  %i.bv = sub nsw i32 1, %i.aj
  store i32 %i.bv, ptr %i.ac, align 4
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.v:                                             ; preds = %bb.k
  %.not205 = icmp eq i8 %i.p, 0
  br i1 %.not205, label %bb.w, label %.thread248

bb.w:                                             ; preds = %bb.v
  store i8 64, ptr %i.ab, align 4
  br label %.thread248

bb.x:                                             ; preds = %bb.d, %bb.a
  %i.bw = load i32, ptr %2, align 4               ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.by = load i32, ptr %i.bx, align 4            ; 6 uses
  %i.bz = add i32 %i.by, %i.bw                    ; 8 uses
  %i.ca = icmp slt i8 %i.i, 0                     ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 4 uses
  %i.cc = load i8, ptr %i.cb, align 1             ; 2 uses
  %i.cd = icmp eq i32 %i.bw, 1                    ; 2 uses
  %i.ce = and i8 %i.i, 112
  %i.cf = or i8 %i.cc, %i.ce
  %i.cg = icmp eq i8 %i.cf, 0                     ; 2 uses
  %or.cond89.i = select i1 %i.cg, i1 %i.cd, i1 false
  br i1 %or.cond89.i, label %_ZL9decGetIntPK9decNumber.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = icmp sgt i32 %i.by, -1
  br i1 %i.ch, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = sub nsw i32 0, %i.by
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %.0109.i = phi i32 [ %i.ci, %bb.z ], [ %i.ck, %bb.ab ] ; 2 uses
  %.064108.i = phi ptr [ %i.cb, %bb.z ], [ %i.cl, %bb.ab ] ; 2 uses
  %i.cj = load i8, ptr %.064108.i, align 1
  %.not.i219 = icmp eq i8 %i.cj, 0
  br i1 %.not.i219, label %bb.ab, label %_ZL9decGetIntPK9decNumber.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ck = add nsw i32 %.0109.i, -1
  %i.cl = getelementptr inbounds nuw i8, ptr %.064108.i, i64 1 ; 3 uses
  %i.cm = icmp slt i32 %.0109.i, 2
  br i1 %i.cm, label %.critedge.thread.loopexit.i, label %bb.aa, !llvm.loop !108

.critedge.i:                                      ; preds = %bb.y
  %i.cn = icmp eq i32 %i.by, 0
  br i1 %i.cn, label %.critedge.thread.i, label %bb.ac

.critedge.thread.loopexit.i:                      ; preds = %bb.ab
  %.pre.i = load i8, ptr %i.cl, align 1
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.thread.loopexit.i, %.critedge.i
  %i.co = phi i8 [ %i.cc, %.critedge.i ], [ %.pre.i, %.critedge.thread.loopexit.i ]
  %.46896.i = phi ptr [ %i.cb, %.critedge.i ], [ %i.cl, %.critedge.thread.loopexit.i ]
  %i.cp = zext i8 %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %.46896.i, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge.thread.i, %.critedge.i
  %.373.i = phi i32 [ %i.cp, %.critedge.thread.i ], [ 0, %.critedge.i ] ; 4 uses
  %.569.i = phi ptr [ %i.cq, %.critedge.thread.i ], [ %i.cb, %.critedge.i ] ; 4 uses
  %.4.i = phi i32 [ 1, %.critedge.thread.i ], [ %i.by, %.critedge.i ] ; 4 uses
  %i.cr = icmp slt i32 %i.bz, 11
  br i1 %i.cr, label %.preheader.i220, label %.thread.i

.preheader.i220:                                  ; preds = %bb.ac
  %i.cs = icmp slt i32 %.4.i, %i.bz
  br i1 %i.cs, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i220
  %i.ct = zext nneg i32 %.4.i to i64              ; 3 uses
  %i.cu = add i32 %i.by, %i.bw
  %i.cv = xor i32 %.4.i, -1
  %i.cw = add i32 %i.cu, %i.cv                    ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cw, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.cy, 8589934584              ; 4 uses
  %i.cz = add nuw nsw i64 %n.vec, %i.ct
  %i.da = getelementptr i8, ptr %.569.i, i64 %n.vec ; 2 uses
  %i.db = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.373.i, i64 0
  %invariant.gep = getelementptr [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.ct
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.db, %vector.ph ], [ %i.di, %vector.body ]
  %vec.phi307 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dj, %vector.body ]
  %next.gep = getelementptr i8, ptr %.569.i, i64 %index ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1
  %wide.load308 = load <4 x i8>, ptr %i.dc, align 1
  %i.dd = zext <4 x i8> %wide.load to <4 x i32>
  %i.de = zext <4 x i8> %wide.load308 to <4 x i32>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load309 = load <4 x i32>, ptr %gep, align 4
  %wide.load310 = load <4 x i32>, ptr %i.df, align 4
  %i.dg = mul <4 x i32> %wide.load309, %i.dd
  %i.dh = mul <4 x i32> %wide.load310, %i.de
  %i.di = add <4 x i32> %i.dg, %vec.phi           ; 2 uses
  %i.dj = add <4 x i32> %i.dh, %vec.phi307        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dj, %i.di
  %i.dl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ct, %.lr.ph.preheader.i ], [ %i.cz, %middle.block ]
  %.6111.i.ph = phi ptr [ %.569.i, %.lr.ph.preheader.i ], [ %i.da, %middle.block ]
  %.474110.i.ph = phi i32 [ %.373.i, %.lr.ph.preheader.i ], [ %i.dl, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.6111.i = phi ptr [ %i.ds, %.lr.ph.i ], [ %.6111.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.474110.i = phi i32 [ %i.dr, %.lr.ph.i ], [ %.474110.i.ph, %.lr.ph.i.preheader ]
  %i.dm = load i8, ptr %.6111.i, align 1
  %i.dn = zext i8 %i.dm to i32
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = mul i32 %i.dp, %i.dn
  %i.dr = add i32 %i.dq, %.474110.i               ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.6111.i, i64 1 ; 2 uses
  %i.dt = trunc nuw i64 %indvars.iv.next.i to i32
  %i.du = icmp sgt i32 %i.bz, %i.dt
  br i1 %i.du, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !110

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %.preheader.i220
  %.474.lcssa.i = phi i32 [ %.373.i, %.preheader.i220 ], [ %i.dl, %middle.block ], [ %i.dr, %.lr.ph.i ] ; 5 uses
  %.6.lcssa.i = phi ptr [ %.569.i, %.preheader.i220 ], [ %i.da, %middle.block ], [ %i.ds, %.lr.ph.i ]
  %.5.lcssa.i = phi i32 [ %.4.i, %.preheader.i220 ], [ %i.bz, %middle.block ], [ %i.bz, %.lr.ph.i ]
  %i.dv = icmp eq i32 %i.bz, 10
  br i1 %i.dv, label %bb.ad, label %.thread103.i

bb.ad:                                            ; preds = %._crit_edge.i
  %i.dw = zext nneg i32 %.5.lcssa.i to i64
  %i.dx = getelementptr [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 -4
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = sdiv i32 %.474.lcssa.i, %i.dz
  %i.eb = getelementptr inbounds i8, ptr %.6.lcssa.i, i64 -1
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = zext i8 %i.ec to i32
  %.not85.i = icmp ne i32 %i.ea, %i.ed
  %i.ee = icmp sgt i32 %.474.lcssa.i, 1999999997
  %or.cond.i = select i1 %i.ca, i1 %i.ee, i1 false
  %or.cond93.i = or i1 %or.cond.i, %.not85.i
  %i.ef = icmp sgt i8 %i.i, -1
  %i.eg = icmp sgt i32 %.474.lcssa.i, 999999999
  %or.cond4.i = select i1 %i.ef, i1 %i.eg, i1 false
  %i.eh = select i1 %or.cond93.i, i1 true, i1 %or.cond4.i
  br i1 %i.eh, label %.thread.i, label %.thread103.i

.thread.i:                                        ; preds = %bb.ad, %bb.ac
  %i.ei = and i32 %.373.i, 1
  %..i = or disjoint i32 %i.ei, -2147483646
  br label %_ZL9decGetIntPK9decNumber.exit

.thread103.i:                                     ; preds = %bb.ad, %._crit_edge.i
  %i.ej = sub nsw i32 0, %.474.lcssa.i
  %spec.select92.i = select i1 %i.ca, i32 %i.ej, i32 %.474.lcssa.i
  br label %_ZL9decGetIntPK9decNumber.exit

_ZL9decGetIntPK9decNumber.exit:                   ; preds = %bb.aa, %bb.x, %.thread.i, %.thread103.i
  %.380.i = phi i32 [ %spec.select92.i, %.thread103.i ], [ %..i, %.thread.i ], [ 0, %bb.x ], [ -2147483648, %bb.aa ] ; 8 uses
  %.not187 = icmp eq i32 %.380.i, -2147483648     ; 2 uses
  %i.ek = icmp slt i8 %i.f, 0
  %i.el = trunc i32 %.380.i to i1
end_hunk_1
