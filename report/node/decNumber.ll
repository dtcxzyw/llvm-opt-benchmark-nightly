inline.NumInlined: 181
inline.NumDeleted: 7
begin_hunk_0_@_ZL8decExpOpP9decNumberPKS_P10decContextPj:bb.a
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.q, ptr %i.r, align 4
  %i.s = load i32, ptr %1, align 4
  store i32 %i.s, ptr %0, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.u, ptr %i.v, align 1
  %i.w = load i32, ptr %1, align 4                ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.g, label %.thread279

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.z = icmp samesign ult i32 %i.w, 50
  %i.aa = zext nneg i32 %i.w to i64               ; 2 uses
  br i1 %i.z, label %bb.h, label %iter.check

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.g, %bb.h
  %.pn.i = phi i64 [ %i.ad, %bb.h ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %.pn.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.ag = add i64 %.pn.i, %i.a
  %i.ah = add i64 %i.ag, 9
  %i.ai = add i64 %i.a, 11
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ai)
  %i.aj = add i64 %umax, -10
  %i.ak = sub i64 %i.aj, %i.a                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ak, 4
  %i.al = sub i64 %i.c, %i.b
  %diff.check = icmp ult i64 %i.al, 32
  %or.cond336 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond336, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check322 = icmp ult i64 %i.ak, 32
  br i1 %min.iters.check322, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ak, 28
  %n.vec = and i64 %i.ak, -32                     ; 5 uses
  %i.am = getelementptr i8, ptr %i.y, i64 %n.vec
  %i.an = getelementptr i8, ptr %i.af, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %index ; 2 uses
  %next.gep323 = getelementptr i8, ptr %i.af, i64 %index ; 2 uses
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
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.thread279, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec327 = and i64 %i.ak, -4                   ; 4 uses
  %i.ar = getelementptr i8, ptr %i.y, i64 %n.vec327
  %i.as = getelementptr i8, ptr %i.af, i64 %n.vec327
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index328 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next332, %vec.epilog.vector.body ] ; 3 uses
  %next.gep329 = getelementptr i8, ptr %i.y, i64 %index328
  %next.gep330 = getelementptr i8, ptr %i.af, i64 %index328
  %wide.load331 = load <4 x i8>, ptr %next.gep330, align 1
  store <4 x i8> %wide.load331, ptr %next.gep329, align 1
  %index.next332 = add nuw i64 %index328, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next332, %n.vec327
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n333 = icmp eq i64 %i.ak, %n.vec327
  br i1 %cmp.n333, label %.thread279, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.y, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.af, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.au = load i8, ptr %.02631.i, align 1
  store i8 %i.au, ptr %.032.i, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %i.ax = icmp ult ptr %i.av, %i.ae
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
  %.lobit = ashr i8 %i.g, 7
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
  %i.bv = getelementptr i8, ptr %0, i64 9         ; 3 uses
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
  %.pn.i227 = phi i64 [ %i.cg, %bb.t ], [ %i.cd, %bb.s ] ; 4 uses
  %i.ci = phi i32 [ %i.ch, %bb.t ], [ %i.bs, %bb.s ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.pn.i227 ; 3 uses
  %12 = sub nsw i32 %i.br, %i.ci                  ; 3 uses
  %i.ck = sub nsw i32 1, %12                      ; 2 uses
  %i.cl = icmp eq i32 %12, 1
  br i1 %i.cl, label %.lr.ph86.i.preheader, label %bb.v

.lr.ph86.i.preheader:                             ; preds = %bb.u
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
  %i.ct = sext i32 %i.ck to i64                   ; 2 uses
  %13 = getelementptr inbounds [4 x i8], ptr @_ZL7multies, i64 %i.ct
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.ct
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %12 to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %17
  %i.cv = load i32, ptr %i.cu, align 4
  %18 = lshr i32 1, %i.ck
  %19 = mul nuw nsw i32 %18, %14
  %20 = lshr i32 %19, 17                          ; 2 uses
  %21 = mul i32 %20, %16
  %22 = sub i32 1, %21
  %.not72.i.not = icmp samesign ult i64 %.pn.i227, %i.cs
  br i1 %.not72.i.not, label %bb.y, label %.loopexit76.loopexit92.i

bb.y:                                             ; preds = %bb.x
  %23 = trunc i32 %20 to i8
  store i8 %23, ptr %i.cj, align 1
  br label %.loopexit76.loopexit92.i

.loopexit76.loopexit92.i:                         ; preds = %bb.y, %bb.x
  %24 = mul i32 %22, %i.cv
  %i.cw = trunc i32 %24 to i8
  br label %.loopexit76.i

.loopexit76.i:                                    ; preds = %.lr.ph86.i.preheader, %.loopexit76.loopexit92.i
  %.162.i = phi i8 [ %i.cw, %.loopexit76.loopexit92.i ], [ 0, %.lr.ph86.i.preheader ]
  %.2.i = getelementptr inbounds i8, ptr %i.cj, i64 -1 ; 3 uses
  %.2.i301 = ptrtoint ptr %.2.i to i64            ; 3 uses
  %.not7488.i = icmp eq i64 %.pn.i227, 0
  br i1 %.not7488.i, label %_ZL14decShiftToMostPhii.exit, label %.lr.ph91.preheader.i

.lr.ph91.preheader.i:                             ; preds = %.loopexit76.i
  store i8 %.162.i, ptr %.2.i, align 1
  %.not74.peel.i = icmp eq i64 %.pn.i227, 1
  br i1 %.not74.peel.i, label %_ZL14decShiftToMostPhii.exit, label %.lr.ph91.i.preheader

.lr.ph91.i.preheader:                             ; preds = %.lr.ph91.preheader.i
  %i.cx = add i64 %.2.i301, -2
  %i.cy = add i64 %i.c, 8
  %umin = call i64 @llvm.umin.i64(i64 %i.cx, i64 %i.cy) ; 2 uses
  %i.cz = add i64 %umin, 1
  %i.da = sub i64 %i.cz, %.2.i301
  %scevgep = getelementptr i8, ptr %.2.i, i64 %i.da
  %i.db = xor i64 %umin, -1
  %i.dc = add i64 %i.db, %.2.i301
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.dc, i1 false)
  br label %_ZL14decShiftToMostPhii.exit

_ZL14decShiftToMostPhii.exit:                     ; preds = %.lr.ph91.i.preheader, %bb.p, %bb.r, %.loopexit76.i, %.lr.ph91.preheader.i
  store i32 %i.br, ptr %0, align 4
  %i.dd = sub nsw i32 1, %i.br
  store i32 %i.dd, ptr %i.bu, align 4
  %i.de = load i32, ptr %3, align 4
  %i.df = or i32 %i.de, 2080
  store i32 %i.df, ptr %3, align 4
  br label %.thread279

bb.z:                                             ; preds = %bb.o
  %i.dg = call ptr @uprv_decContextDefault_78(ptr noundef nonnull %4, i32 noundef 64) #15 ; 0 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dj = load <2 x i32>, ptr %i.dh, align 4
  store <2 x i32> %i.dj, ptr %i.di, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dm = load i32, ptr %i.dl, align 4            ; 2 uses
  %i.dn = load i32, ptr %1, align 4               ; 7 uses
  %i.do = add nsw i32 %i.dn, %i.dm                ; 3 uses
  %i.dp = icmp sgt i32 %i.do, 8
  br i1 %i.dp, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i32 0, ptr %i.dr, align 4
  store i32 1, ptr %9, align 16
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 9
  store i8 2, ptr %i.ds, align 1
  %i.dt = load i8, ptr %i.f, align 4
  %.not217 = icmp sgt i8 %i.dt, -1
  br i1 %.not217, label %.thread242, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 -2, ptr %i.dr, align 4
  br label %.thread242

bb.ac:                                            ; preds = %bb.z
  %i.du = icmp sgt i32 %i.dn, 8
  %i.dv = zext i1 %i.du to i32
  %i.dw = sub nsw i32 8, %i.do
  %i.dx = call i32 @llvm.umin.i32(i32 %i.dw, i32 %i.dv) ; 2 uses
  %i.dy = add i32 %i.dn, %i.dx
  %i.dz = sub i32 0, %i.dy                        ; 2 uses
  %i.ea = add nsw i32 %i.dx, %i.do                ; 3 uses
  %i.eb = icmp slt i32 %i.ea, 0
  %spec.select = call i32 @llvm.smax.i32(i32 %i.ea, i32 0) ; 2 uses
  %.not214294 = icmp eq i32 %i.dm, %i.dz
  %.not214 = or i1 %i.eb, %.not214294
  br i1 %.not214, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = icmp slt i32 %i.dn, 50
  br i1 %i.ec, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ed = sext i32 %i.dn to i64
  %i.ee = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = zext i8 %i.ef to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.eh = phi i32 [ %i.eg, %bb.ae ], [ %i.dn, %bb.ad ] ; 2 uses
  %i.ei = icmp samesign ugt i32 %i.eh, 73
  br i1 %i.ei, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %narrow = add nuw i32 %i.eh, 11
  %i.ej = zext i32 %narrow to i64
  %i.ek = call noalias ptr @uprv_malloc_78(i64 noundef %i.ej) #16 ; 3 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %.thread291, label %.thread

.thread:                                          ; preds = %bb.af, %bb.ag
  %.0187 = phi ptr [ null, %bb.af ], [ %i.ek, %bb.ag ]
  %.0166 = phi ptr [ %7, %bb.af ], [ %i.ek, %bb.ag ] ; 4 uses
  %i.em = call ptr @uprv_decNumberCopy_78(ptr noundef nonnull %.0166, ptr noundef nonnull %1) ; 0 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0166, i64 4
  store i32 %i.dz, ptr %i.en, align 4
  %.pre = load i32, ptr %.0166, align 4
  br label %bb.ah

.thread291:                                       ; preds = %bb.ag
  %i.eo = load i32, ptr %3, align 4
  %i.ep = or i32 %i.eo, 16
  store i32 %i.ep, ptr %3, align 4
  br label %.thread279

bb.ah:                                            ; preds = %.thread, %bb.ac
  %i.eq = phi i32 [ %.pre, %.thread ], [ %i.dn, %bb.ac ]
  %.2189 = phi ptr [ %.0187, %.thread ], [ null, %bb.ac ] ; 4 uses
  %.1173 = phi ptr [ %.0166, %.thread ], [ %1, %bb.ac ] ; 2 uses
  %i.er = load i32, ptr %2, align 4
  %. = call i32 @llvm.smax.i32(i32 %i.eq, i32 %i.er)
  %i.es = add nsw i32 %., %spec.select            ; 4 uses
  %i.et = add nsw i32 %i.es, 2                    ; 5 uses
  %i.eu = shl nsw i32 %i.et, 1                    ; 3 uses
  %i.ev = icmp slt i32 %i.es, 23
  br i1 %i.ev, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ew = sext i32 %i.eu to i64
  %i.ex = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 2
  %i.ez = zext i8 %i.ey to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.fa = phi i32 [ %i.ez, %bb.ai ], [ %i.eu, %bb.ah ]
  %i.fb = add i32 %i.fa, 11                       ; 2 uses
  %i.fc = icmp ugt i32 %i.fb, 180
  br i1 %i.fc, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fd = zext i32 %i.fb to i64
  %i.fe = call noalias ptr @uprv_malloc_78(i64 noundef %i.fd) #16 ; 3 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fg = load i32, ptr %3, align 4
  %i.fh = or i32 %i.fg, 16
  store i32 %i.fh, ptr %3, align 4
  br label %uprv_decNumberCopy_78.exit

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %.0176 = phi ptr [ null, %bb.aj ], [ %i.fe, %bb.ak ] ; 3 uses
  %.0174 = phi ptr [ %9, %bb.aj ], [ %i.fe, %bb.ak ] ; 9 uses
  %i.fi = add nsw i32 %i.es, 4                    ; 2 uses
  %i.fj = icmp slt i32 %i.es, 46
  br i1 %i.fj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = zext i8 %i.fm to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.fo = phi i32 [ %i.fn, %bb.an ], [ %i.fi, %bb.am ] ; 2 uses
  %i.fp = icmp samesign ugt i32 %i.fo, 85
  br i1 %i.fp, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fq = add nuw i32 %i.fo, 11
  %i.fr = zext i32 %i.fq to i64
  %i.fs = call noalias ptr @uprv_malloc_78(i64 noundef %i.fr) #16 ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fu = load i32, ptr %3, align 4
  %i.fv = or i32 %i.fu, 16
  store i32 %i.fv, ptr %3, align 4
  br label %uprv_decNumberCopy_78.exit

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %.0183 = phi ptr [ null, %bb.ao ], [ %i.fs, %bb.ap ] ; 2 uses
  %.0180 = phi ptr [ %8, %bb.ao ], [ %i.fs, %bb.ap ] ; 9 uses
  %i.fw = call ptr @uprv_decNumberCopy_78(ptr noundef nonnull %.0180, ptr noundef nonnull %.1173) ; 0 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0174, i64 8
  store i8 0, ptr %i.fx, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %.0174, i64 4 ; 2 uses
  store i32 0, ptr %i.fy, align 4
  store i32 1, ptr %.0174, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %.0174, i64 9
  store i8 1, ptr %i.fz, align 1
  store i8 0, ptr %i.bh, align 8
  store i32 0, ptr %i.bi, align 4
end_hunk_0
begin_hunk_1_@uprv_decNumberPlus_78:bb.a

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
define dso_local noundef ptr @uprv_decNumberMultiply_78(ptr noundef returned %0, ptr noundef readonly captures(address) %1, ptr noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #3 {
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
define dso_local noundef ptr @uprv_decNumberPower_78(ptr noundef returned %0, ptr noundef readonly captures(address) %1, ptr noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 20 uses
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
  br label %.thread249

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
  br i1 %i.s, label %bb.g, label %.thread254

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %1, align 4
  %i.u = icmp eq i32 %i.t, 1
  %i.v = and i32 %i.g, 64
  %i.w = icmp eq i32 %i.v, 0
  %or.cond212 = and i1 %i.w, %i.u
  br i1 %or.cond212, label %bb.h, label %.thread254

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
  %i.ad = getelementptr i8, ptr %0, i64 9         ; 4 uses
  store i8 0, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = load i8, ptr %i.ae, align 8
  %.not204 = icmp sgt i8 %i.af, -1
  br i1 %.not204, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not206 = icmp eq i8 %i.p, 0
  br i1 %.not206, label %.thread249, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 64, ptr %i.ab, align 4
  br label %.thread249

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
  br i1 %i.al, label %.thread249.thread.thread295, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = icmp slt i32 %i.aj, 2
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = sext i32 %i.ak to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = trunc i32 %i.ap to i8
  store i8 %i.aq, ptr %i.ad, align 1
  br label %.thread249.thread.thread295

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
  %.pn.i = phi i64 [ %i.av, %bb.p ], [ %i.as, %bb.o ] ; 4 uses
  %i.ax = phi i32 [ %i.aw, %bb.p ], [ %i.ak, %bb.o ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.pn.i ; 3 uses
  %8 = sub nsw i32 %i.aj, %i.ax                   ; 3 uses
  %i.az = sub nsw i32 1, %8                       ; 2 uses
  %i.ba = icmp eq i32 %8, 1
  br i1 %i.ba, label %.lr.ph86.i.preheader, label %bb.r

.lr.ph86.i.preheader:                             ; preds = %bb.q
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
  %i.bi = sext i32 %i.az to i64                   ; 2 uses
  %9 = getelementptr inbounds [4 x i8], ptr @_ZL7multies, i64 %i.bi
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.bi
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %8 to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %13
  %i.bk = load i32, ptr %i.bj, align 4
  %14 = lshr i32 1, %i.az
  %15 = mul nuw nsw i32 %14, %10
  %16 = lshr i32 %15, 17                          ; 2 uses
  %17 = mul i32 %16, %12
  %18 = sub i32 1, %17
  %.not72.i.not = icmp samesign ult i64 %.pn.i, %i.bh
  br i1 %.not72.i.not, label %bb.u, label %.loopexit76.loopexit92.i

bb.u:                                             ; preds = %bb.t
  %19 = trunc i32 %16 to i8
  store i8 %19, ptr %i.ay, align 1
  br label %.loopexit76.loopexit92.i

.loopexit76.loopexit92.i:                         ; preds = %bb.u, %bb.t
  %20 = mul i32 %18, %i.bk
  %i.bl = trunc i32 %20 to i8
  br label %.loopexit76.i

.loopexit76.i:                                    ; preds = %.lr.ph86.i.preheader, %.loopexit76.loopexit92.i
  %.162.i = phi i8 [ %i.bl, %.loopexit76.loopexit92.i ], [ 0, %.lr.ph86.i.preheader ]
  %.2.i = getelementptr inbounds i8, ptr %i.ay, i64 -1 ; 3 uses
  %.2.i275 = ptrtoint ptr %.2.i to i64            ; 3 uses
  %.not7488.i = icmp eq i64 %.pn.i, 0
  br i1 %.not7488.i, label %.thread249.thread.thread295, label %.lr.ph91.preheader.i

.lr.ph91.preheader.i:                             ; preds = %.loopexit76.i
  store i8 %.162.i, ptr %.2.i, align 1
  %.not74.peel.i = icmp eq i64 %.pn.i, 1
  br i1 %.not74.peel.i, label %.thread249.thread.thread295, label %.lr.ph91.i.preheader

.lr.ph91.i.preheader:                             ; preds = %.lr.ph91.preheader.i
  %i.bm = add i64 %.2.i275, -2
  %i.bn = add i64 %i.a, 8
  %umin = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bn) ; 2 uses
  %i.bo = add i64 %umin, 1
  %i.bp = sub i64 %i.bo, %.2.i275
  %scevgep = getelementptr i8, ptr %.2.i, i64 %i.bp
  %i.bq = xor i64 %umin, -1
  %i.br = add i64 %i.bq, %.2.i275
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.br, i1 false)
  br label %.thread249.thread.thread295

.thread249.thread.thread295:                      ; preds = %.lr.ph91.preheader.i, %.loopexit76.i, %bb.n, %bb.l, %.lr.ph91.i.preheader
  store i32 %i.aj, ptr %0, align 4
  %i.bs = sub nsw i32 1, %i.aj
  store i32 %i.bs, ptr %i.ac, align 4
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.v:                                             ; preds = %bb.k
  %.not205 = icmp eq i8 %i.p, 0
  br i1 %.not205, label %bb.w, label %.thread249

bb.w:                                             ; preds = %bb.v
  store i8 64, ptr %i.ab, align 4
  br label %.thread249

bb.x:                                             ; preds = %bb.d, %bb.a
  %i.bt = load i32, ptr %2, align 4               ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bv = load i32, ptr %i.bu, align 4            ; 6 uses
  %i.bw = add i32 %i.bv, %i.bt                    ; 8 uses
  %i.bx = icmp slt i8 %i.i, 0                     ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 4 uses
  %i.bz = load i8, ptr %i.by, align 1             ; 2 uses
  %i.ca = icmp eq i32 %i.bt, 1                    ; 2 uses
  %i.cb = and i8 %i.i, 112
  %i.cc = or i8 %i.bz, %i.cb
  %i.cd = icmp eq i8 %i.cc, 0                     ; 2 uses
  %or.cond87.i = select i1 %i.cd, i1 %i.ca, i1 false
  br i1 %or.cond87.i, label %_ZL9decGetIntPK9decNumber.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = icmp sgt i32 %i.bv, -1
  br i1 %i.ce, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = sub nsw i32 0, %i.bv
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %.062107.i = phi i32 [ %i.cf, %bb.z ], [ %i.ch, %bb.ab ] ; 2 uses
  %.065106.i = phi ptr [ %i.by, %bb.z ], [ %i.ci, %bb.ab ] ; 2 uses
  %i.cg = load i8, ptr %.065106.i, align 1
  %.not.i219 = icmp eq i8 %i.cg, 0
  br i1 %.not.i219, label %bb.ab, label %_ZL9decGetIntPK9decNumber.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ch = add nsw i32 %.062107.i, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %.065106.i, i64 1 ; 3 uses
  %i.cj = icmp slt i32 %.062107.i, 2
  br i1 %i.cj, label %.critedge.thread.loopexit.i, label %bb.aa, !llvm.loop !116

.critedge.i:                                      ; preds = %bb.y
  %i.ck = icmp eq i32 %i.bv, 0
  br i1 %i.ck, label %.critedge.thread.i, label %bb.ac

.critedge.thread.loopexit.i:                      ; preds = %bb.ab
  %.pre.i = load i8, ptr %i.ci, align 1
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.thread.loopexit.i, %.critedge.i
  %i.cl = phi i8 [ %i.bz, %.critedge.i ], [ %.pre.i, %.critedge.thread.loopexit.i ]
  %.46994.i = phi ptr [ %i.by, %.critedge.i ], [ %i.ci, %.critedge.thread.loopexit.i ]
  %i.cm = zext i8 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %.46994.i, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge.thread.i, %.critedge.i
  %.479.i = phi i32 [ 1, %.critedge.thread.i ], [ %i.bv, %.critedge.i ] ; 4 uses
  %.570.i = phi ptr [ %i.cn, %.critedge.thread.i ], [ %i.by, %.critedge.i ] ; 4 uses
  %.361.i = phi i32 [ %i.cm, %.critedge.thread.i ], [ 0, %.critedge.i ] ; 4 uses
  %i.co = icmp slt i32 %i.bw, 11
  br i1 %i.co, label %.preheader.i220, label %.thread.i

.preheader.i220:                                  ; preds = %bb.ac
  %i.cp = icmp slt i32 %.479.i, %i.bw
  br i1 %i.cp, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i220
  %i.cq = zext nneg i32 %.479.i to i64            ; 3 uses
  %i.cr = add i32 %i.bv, %i.bt
  %i.cs = xor i32 %.479.i, -1
  %i.ct = add i32 %i.cr, %i.cs                    ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ct, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.cv, 8589934584              ; 4 uses
  %i.cw = add nuw nsw i64 %n.vec, %i.cq
  %i.cx = getelementptr i8, ptr %.570.i, i64 %n.vec ; 2 uses
  %i.cy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.361.i, i64 0
  %invariant.gep = getelementptr [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.cq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.cy, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi306 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %next.gep = getelementptr i8, ptr %.570.i, i64 %index ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1
  %wide.load307 = load <4 x i8>, ptr %i.cz, align 1
  %i.da = zext <4 x i8> %wide.load to <4 x i32>
  %i.db = zext <4 x i8> %wide.load307 to <4 x i32>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load308 = load <4 x i32>, ptr %gep, align 4
  %wide.load309 = load <4 x i32>, ptr %i.dc, align 4
  %i.dd = mul <4 x i32> %wide.load308, %i.da
  %i.de = mul <4 x i32> %wide.load309, %i.db
  %i.df = add <4 x i32> %i.dd, %vec.phi           ; 2 uses
  %i.dg = add <4 x i32> %i.de, %vec.phi306        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dg, %i.df
  %i.di = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cv, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.cq, %.lr.ph.preheader.i ], [ %i.cw, %middle.block ]
  %.4110.i.ph = phi i32 [ %.361.i, %.lr.ph.preheader.i ], [ %i.di, %middle.block ]
  %.671109.i.ph = phi ptr [ %.570.i, %.lr.ph.preheader.i ], [ %i.cx, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.4110.i = phi i32 [ %i.do, %.lr.ph.i ], [ %.4110.i.ph, %.lr.ph.i.preheader ]
  %.671109.i = phi ptr [ %i.dp, %.lr.ph.i ], [ %.671109.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.dj = load i8, ptr %.671109.i, align 1
  %i.dk = zext i8 %i.dj to i32
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = mul i32 %i.dm, %i.dk
  %i.do = add i32 %i.dn, %.4110.i                 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.671109.i, i64 1 ; 2 uses
  %i.dq = trunc nuw i64 %indvars.iv.next.i to i32
  %i.dr = icmp sgt i32 %i.bw, %i.dq
  br i1 %i.dr, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !118

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %.preheader.i220
  %.580.lcssa.i = phi i32 [ %.479.i, %.preheader.i220 ], [ %i.bw, %middle.block ], [ %i.bw, %.lr.ph.i ]
  %.671.lcssa.i = phi ptr [ %.570.i, %.preheader.i220 ], [ %i.cx, %middle.block ], [ %i.dp, %.lr.ph.i ]
  %.4.lcssa.i = phi i32 [ %.361.i, %.preheader.i220 ], [ %i.di, %middle.block ], [ %i.do, %.lr.ph.i ] ; 5 uses
  %i.ds = icmp eq i32 %i.bw, 10
  br i1 %i.ds, label %bb.ad, label %.thread101.i

bb.ad:                                            ; preds = %._crit_edge.i
  %i.dt = zext nneg i32 %.580.lcssa.i to i64
  %i.du = getelementptr [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 -4
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = sdiv i32 %.4.lcssa.i, %i.dw
  %i.dy = getelementptr inbounds i8, ptr %.671.lcssa.i, i64 -1
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = zext i8 %i.dz to i32
  %.not83.i = icmp ne i32 %i.dx, %i.ea
  %i.eb = icmp sgt i32 %.4.lcssa.i, 1999999997
  %or.cond.i = select i1 %i.bx, i1 %i.eb, i1 false
  %or.cond91.i = or i1 %or.cond.i, %.not83.i
  %i.ec = icmp sgt i8 %i.i, -1
  %i.ed = icmp sgt i32 %.4.lcssa.i, 999999999
  %or.cond4.i = select i1 %i.ec, i1 %i.ed, i1 false
  %i.ee = select i1 %or.cond91.i, i1 true, i1 %or.cond4.i
  br i1 %i.ee, label %.thread.i, label %.thread101.i

.thread.i:                                        ; preds = %bb.ad, %bb.ac
  %i.ef = and i32 %.361.i, 1
  %..i = or disjoint i32 %i.ef, -2147483646
  br label %_ZL9decGetIntPK9decNumber.exit
end_hunk_1
