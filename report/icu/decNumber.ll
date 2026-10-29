Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/decNumber?download=true
inline.NumInlined: 182
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL8decExpOpP9decNumberPKS_P10decContextPj:bb.a
  %i.m = icmp eq ptr %0, %1
  br i1 %i.m, label %.thread279, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %i.n, align 4, !tbaa !16
  %i.o = load <2 x i32>, ptr %1, align 4, !tbaa !21
  store <2 x i32> %i.o, ptr %0, align 4, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.q, ptr %i.r, align 1, !tbaa !19
  %i.s = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.g, label %.thread279

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.v = icmp samesign ult i32 %i.s, 50
  %i.w = zext nneg i32 %i.s to i64                ; 2 uses
  br i1 %i.v, label %bb.h, label %iter.check

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !19
  %i.z = zext i8 %i.y to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.g, %bb.h
  %.pn.i = phi i64 [ %i.z, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %.pn.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.ac = add i64 %.pn.i, %i.a
  %i.ad = add i64 %i.ac, 9
  %i.ae = add i64 %i.a, 11
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ae)
  %i.af = add i64 %umax, -10
  %i.ag = sub i64 %i.af, %i.a                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ag, 8
  %i.ah = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ah, -32
  %or.cond336 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond336, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check325 = icmp ult i64 %i.ag, 32
  br i1 %min.iters.check325, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.ag, 24
  %n.vec = and i64 %i.ag, -32                     ; 5 uses
  %i.aj = getelementptr i8, ptr %i.u, i64 %n.vec
  %i.ak = getelementptr i8, ptr %i.ab, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %index ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.ab, i64 %index ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep326, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep326, align 1, !tbaa !19
  %wide.load327 = load <16 x i8>, ptr %i.al, align 1, !tbaa !19
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !19
  store <16 x i8> %wide.load327, ptr %i.am, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %.thread279, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec328 = and i64 %i.ag, -8                   ; 4 uses
  %i.ao = getelementptr i8, ptr %i.u, i64 %n.vec328
  %i.ap = getelementptr i8, ptr %i.ab, i64 %n.vec328
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index329 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next333, %vec.epilog.vector.body ] ; 3 uses
  %next.gep330 = getelementptr i8, ptr %i.u, i64 %index329
  %next.gep331 = getelementptr i8, ptr %i.ab, i64 %index329
  %wide.load332 = load <8 x i8>, ptr %next.gep331, align 1, !tbaa !19
  store <8 x i8> %wide.load332, ptr %next.gep330, align 1, !tbaa !19
  %index.next333 = add nuw i64 %index329, 8       ; 2 uses
  %i.aq = icmp eq i64 %index.next333, %n.vec328
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n334 = icmp eq i64 %i.ag, %n.vec328
  br i1 %cmp.n334, label %.thread279, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.ak, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.as, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ar = load i8, ptr %.02631.i, align 1, !tbaa !19
  store i8 %i.ar, ptr %.032.i, align 1, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %i.au = icmp ult ptr %i.as, %i.aa
  br i1 %i.au, label %.lr.ph.i, label %.thread279, !llvm.loop !89

bb.i:                                             ; preds = %bb.b
  %i.av = tail call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %.thread279

bb.j:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !19
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr %1, align 4, !tbaa !18
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bb, align 4, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.bd, align 1, !tbaa !19
  br label %.thread279

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i8 0, ptr %i.be, align 8, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i32 1, ptr %10, align 16, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 9 ; 2 uses
  store i8 4, ptr %i.bg, align 1, !tbaa !19
  %i.bh = load i32, ptr %2, align 4, !tbaa !26
  %.lobit = ashr i8 %i.f, 7
  %i.bi = sext i8 %.lobit to i32
  %spec.select296 = sub i32 %i.bi, %i.bh
  store i32 %spec.select296, ptr %i.bf, align 4, !tbaa !17
  %i.bj = call fastcc noundef i32 @_ZL10decComparePK9decNumberS1_h(ptr noundef nonnull %10, ptr noundef nonnull %1, i8 noundef zeroext 1) ; 2 uses
  %i.bk = icmp eq i32 %i.bj, -2147483648
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = load i32, ptr %3, align 4, !tbaa !21
  %i.bm = or i32 %i.bl, 16
  store i32 %i.bm, ptr %3, align 4, !tbaa !21
  br label %.thread279

bb.o:                                             ; preds = %bb.m
  %i.bn = icmp sgt i32 %i.bj, -1
  br i1 %i.bn, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %2, align 4, !tbaa !26    ; 9 uses
  %i.bp = add nsw i32 %i.bo, -1                   ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bq, align 4, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bs = getelementptr i8, ptr %0, i64 9         ; 6 uses
  store i8 1, ptr %i.bs, align 1, !tbaa !19
  %i.bt = icmp eq i32 %i.bp, 0
  br i1 %i.bt, label %_ZL14decShiftToMostPhii.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = icmp slt i32 %i.bo, 2
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = sext i32 %i.bp to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !21
  %i.by = trunc i32 %i.bx to i8
  store i8 %i.by, ptr %i.bs, align 1, !tbaa !19
  br label %_ZL14decShiftToMostPhii.exit

bb.s:                                             ; preds = %bb.q
  %i.bz = icmp samesign ult i32 %i.bo, 51
  %i.ca = zext nneg i32 %i.bp to i64              ; 2 uses
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !19  ; 2 uses
  %i.cd = zext i8 %i.cc to i64
  %i.ce = zext i8 %i.cc to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.pn.i227 = phi i64 [ %i.cd, %bb.t ], [ %i.ca, %bb.s ]
  %i.cf = phi i32 [ %i.ce, %bb.t ], [ %i.bp, %bb.s ]
  %i.cg = getelementptr i8, ptr %i.bs, i64 %.pn.i227 ; 5 uses
  %i.ch = sub nsw i32 %i.bo, %i.cf                ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %.lr.ph86.i.preheader, label %bb.v

.lr.ph86.i.preheader:                             ; preds = %bb.u
  store i8 1, ptr %i.cg, align 1, !tbaa !19
  br label %.loopexit76.i

bb.v:                                             ; preds = %bb.u
  %i.cj = icmp samesign ult i32 %i.bo, 50
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ck = zext nneg i32 %i.bo to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !19
  %i.cn = zext i8 %i.cm to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.co = phi i32 [ %i.cn, %bb.w ], [ %i.bo, %bb.v ]
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -1
  %i.cs = sext i32 %i.ch to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !21
  %.not72.i = icmp ugt ptr %i.cg, %i.cr
  br i1 %.not72.i, label %.loopexit76.loopexit92.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 0, ptr %i.cg, align 1, !tbaa !19
  br label %.loopexit76.loopexit92.i

.loopexit76.loopexit92.i:                         ; preds = %bb.y, %bb.x
  %i.cv = trunc i32 %i.cu to i8
  br label %.loopexit76.i

.loopexit76.i:                                    ; preds = %.lr.ph86.i.preheader, %.loopexit76.loopexit92.i
  %.1.i = phi i8 [ %i.cv, %.loopexit76.loopexit92.i ], [ 0, %.lr.ph86.i.preheader ]
  %.264.i = getelementptr inbounds i8, ptr %i.cg, i64 -1 ; 4 uses
  %.264.i301 = ptrtoaddr ptr %.264.i to i64       ; 3 uses
  %.not7488.i = icmp ult ptr %.264.i, %i.bs
  br i1 %.not7488.i, label %_ZL14decShiftToMostPhii.exit, label %.lr.ph91.preheader.i

.lr.ph91.preheader.i:                             ; preds = %.loopexit76.i
  store i8 %.1.i, ptr %.264.i, align 1, !tbaa !19
  %i.cw = getelementptr inbounds i8, ptr %i.cg, i64 -2
  %.not74.peel.i = icmp ult ptr %i.cw, %i.bs
  br i1 %.not74.peel.i, label %_ZL14decShiftToMostPhii.exit, label %.lr.ph91.i.preheader

.lr.ph91.i.preheader:                             ; preds = %.lr.ph91.preheader.i
  %i.cx = add i64 %.264.i301, -2
  %i.cy = add i64 %i.b, 8
  %umin = call i64 @llvm.umin.i64(i64 %i.cx, i64 %i.cy) ; 2 uses
  %i.cz = add i64 %umin, 1
  %i.da = sub i64 %i.cz, %.264.i301
  %scevgep = getelementptr i8, ptr %.264.i, i64 %i.da
  %i.db = xor i64 %umin, -1
  %i.dc = add i64 %i.db, %.264.i301
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.dc, i1 false), !tbaa !19
  br label %_ZL14decShiftToMostPhii.exit

_ZL14decShiftToMostPhii.exit:                     ; preds = %.lr.ph91.i.preheader, %bb.p, %bb.r, %.loopexit76.i, %.lr.ph91.preheader.i
  store i32 %i.bo, ptr %0, align 4, !tbaa !18
  %i.dd = sub nsw i32 1, %i.bo
  store i32 %i.dd, ptr %i.br, align 4, !tbaa !17
  %i.de = load i32, ptr %3, align 4, !tbaa !21
  %i.df = or i32 %i.de, 2080
  store i32 %i.df, ptr %3, align 4, !tbaa !21
  br label %.thread279

bb.z:                                             ; preds = %bb.o
  %i.dg = call ptr @uprv_decContextDefault_78(ptr noundef nonnull %4, i32 noundef 64) ; 0 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dj = load <2 x i32>, ptr %i.dh, align 4, !tbaa !21
  store <2 x i32> %i.dj, ptr %i.di, align 4, !tbaa !21
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.dk, align 4, !tbaa !27
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !17 ; 2 uses
  %i.dn = load i32, ptr %1, align 4, !tbaa !18    ; 7 uses
  %i.do = add nsw i32 %i.dn, %i.dm                ; 3 uses
  %i.dp = icmp sgt i32 %i.do, 8
  br i1 %i.dp, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.dq, align 8, !tbaa !16
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i32 0, ptr %i.dr, align 4, !tbaa !17
  store i32 1, ptr %9, align 16, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 9
  store i8 2, ptr %i.ds, align 1, !tbaa !19
  %i.dt = load i8, ptr %i.e, align 4, !tbaa !16
  %.not217 = icmp sgt i8 %i.dt, -1
  br i1 %.not217, label %.thread242, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 -2, ptr %i.dr, align 4, !tbaa !17
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
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !19
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
  %.0183 = phi ptr [ null, %bb.af ], [ %i.ek, %bb.ag ]
  %.0166 = phi ptr [ %7, %bb.af ], [ %i.ek, %bb.ag ] ; 4 uses
  %i.em = call ptr @uprv_decNumberCopy_78(ptr noundef nonnull %.0166, ptr noundef nonnull %1) ; 0 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0166, i64 4
  store i32 %i.dz, ptr %i.en, align 4, !tbaa !17
  %.pre = load i32, ptr %.0166, align 4, !tbaa !18
  br label %bb.ah

.thread291:                                       ; preds = %bb.ag
  %i.eo = load i32, ptr %3, align 4, !tbaa !21
  %i.ep = or i32 %i.eo, 16
  store i32 %i.ep, ptr %3, align 4, !tbaa !21
  br label %.thread279

bb.ah:                                            ; preds = %.thread, %bb.ac
  %i.eq = phi i32 [ %.pre, %.thread ], [ %i.dn, %bb.ac ]
  %.1188 = phi ptr [ %.0166, %.thread ], [ %1, %bb.ac ] ; 2 uses
  %.2185 = phi ptr [ %.0183, %.thread ], [ null, %bb.ac ] ; 4 uses
  %i.er = load i32, ptr %2, align 4, !tbaa !26
  %. = call i32 @llvm.smax.i32(i32 %i.eq, i32 %i.er)
  %i.es = add nsw i32 %., %spec.select            ; 4 uses
  %i.et = add nsw i32 %i.es, 2                    ; 5 uses
  %i.eu = shl nsw i32 %i.et, 1                    ; 3 uses
  %i.ev = icmp slt i32 %i.es, 23
  br i1 %i.ev, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ew = sext i32 %i.eu to i64
  %i.ex = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !19
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
  %i.fg = load i32, ptr %3, align 4, !tbaa !21
  %i.fh = or i32 %i.fg, 16
  store i32 %i.fh, ptr %3, align 4, !tbaa !21
  br label %uprv_decNumberCopy_78.exit

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %.0172 = phi ptr [ null, %bb.aj ], [ %i.fe, %bb.ak ] ; 3 uses
  %.0170 = phi ptr [ %9, %bb.aj ], [ %i.fe, %bb.ak ] ; 9 uses
  %i.fi = add nsw i32 %i.es, 4                    ; 2 uses
  %i.fj = icmp slt i32 %i.es, 46
  br i1 %i.fj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !19
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
  %i.fu = load i32, ptr %3, align 4, !tbaa !21
  %i.fv = or i32 %i.fu, 16
  store i32 %i.fv, ptr %3, align 4, !tbaa !21
  br label %uprv_decNumberCopy_78.exit

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %.0179 = phi ptr [ null, %bb.ao ], [ %i.fs, %bb.ap ] ; 2 uses
  %.0176 = phi ptr [ %8, %bb.ao ], [ %i.fs, %bb.ap ] ; 9 uses
  %i.fw = call ptr @uprv_decNumberCopy_78(ptr noundef nonnull %.0176, ptr noundef nonnull %.1188) ; 0 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0170, i64 8
  store i8 0, ptr %i.fx, align 4, !tbaa !16
  %i.fy = getelementptr inbounds nuw i8, ptr %.0170, i64 4 ; 2 uses
  store i32 0, ptr %i.fy, align 4, !tbaa !17
  store i32 1, ptr %.0170, align 4, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %.0170, i64 9
  store i8 1, ptr %i.fz, align 1, !tbaa !19
  store i8 0, ptr %i.be, align 8, !tbaa !16
  store i32 0, ptr %i.bf, align 4, !tbaa !17
  store i32 1, ptr %10, align 16, !tbaa !18
  store i8 2, ptr %i.bg, align 1, !tbaa !19
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.ga, align 4, !tbaa !16
  %i.gb = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 0, ptr %i.gb, align 4, !tbaa !17
  store i32 1, ptr %11, align 4, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %11, i64 9
  store i8 1, ptr %i.gc, align 1, !tbaa !19
  %i.gd = call ptr @uprv_decContextDefault_78(ptr noundef nonnull %5, i32 noundef 64) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 4 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !36
end_hunk_0
begin_hunk_1_@uprv_decNumberPlus_78:bb.a
bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.h, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.n, align 1, !tbaa !19
  store i8 32, ptr %i.l, align 4, !tbaa !16
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.k, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.b ]
  %i.o = call ptr @uprv_decContextSetStatus_78(ptr noundef %2, i32 noundef %.0.i) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZL9decStatusP9decNumberjP10decContext.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberMultiply_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.b = call fastcc noundef ptr @_ZL13decMultiplyOpP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.a) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !21   ; 6 uses
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
  store i32 0, ptr %i.h, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.i, align 1, !tbaa !19
  store i8 32, ptr %i.g, align 4, !tbaa !16
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.f, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.b ]
  %i.j = tail call ptr @uprv_decContextSetStatus_78(ptr noundef %3, i32 noundef %.0.i) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZL9decStatusP9decNumberjP10decContext.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberPower_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 21 uses
  %4 = alloca %struct.decContext, align 4         ; 16 uses
  %5 = alloca %struct.decNumber, align 4          ; 10 uses
  %6 = alloca [5 x %struct.decNumber], align 16   ; 6 uses
  %7 = alloca [5 x %struct.decNumber], align 16   ; 3 uses
  %i.d = load i32, ptr %3, align 4, !tbaa !26     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !16    ; 5 uses
  %i.g = zext i8 %i.f to i32                      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !16    ; 6 uses
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
  %i.r = load i8, ptr %i.q, align 1, !tbaa !19
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.g, label %.thread255

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %1, align 4, !tbaa !18
  %i.u = icmp eq i32 %i.t, 1
  %i.v = and i32 %i.g, 64
  %i.w = icmp eq i32 %i.v, 0
  %or.cond212 = and i1 %i.w, %i.u
  br i1 %or.cond212, label %bb.h, label %.thread255

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.x, align 4, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.y, align 4, !tbaa !17
  store i32 1, ptr %5, align 4, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 1, ptr %i.z, align 1, !tbaa !19
  %i.aa = call ptr @uprv_decNumberCompare_78(ptr noundef nonnull %6, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %3) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 0, ptr %i.ab, align 4, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !17
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.ad = getelementptr i8, ptr %0, i64 9         ; 7 uses
  store i8 0, ptr %i.ad, align 1, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !16
  %.not204 = icmp sgt i8 %i.af, -1
  br i1 %.not204, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not206 = icmp eq i8 %i.p, 0
  br i1 %.not206, label %.thread248, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 64, ptr %i.ab, align 4, !tbaa !16
  br label %.thread248

bb.k:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !19
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr %3, align 4, !tbaa !26    ; 9 uses
  %i.ak = add nsw i32 %i.aj, -1                   ; 4 uses
  store i8 1, ptr %i.ad, align 1, !tbaa !19
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.thread248.thread.thread253, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = icmp slt i32 %i.aj, 2
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = sext i32 %i.ak to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !21
  %i.aq = trunc i32 %i.ap to i8
  store i8 %i.aq, ptr %i.ad, align 1, !tbaa !19
  br label %.thread248.thread.thread253

bb.o:                                             ; preds = %bb.m
  %i.ar = icmp samesign ult i32 %i.aj, 51
  %i.as = zext nneg i32 %i.ak to i64              ; 2 uses
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !19  ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = zext i8 %i.au to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.pn.i = phi i64 [ %i.av, %bb.p ], [ %i.as, %bb.o ]
  %i.ax = phi i32 [ %i.aw, %bb.p ], [ %i.ak, %bb.o ]
  %i.ay = getelementptr i8, ptr %i.ad, i64 %.pn.i ; 5 uses
  %i.az = sub nsw i32 %i.aj, %i.ax                ; 2 uses
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %.lr.ph86.i.preheader, label %bb.r

.lr.ph86.i.preheader:                             ; preds = %bb.q
  store i8 1, ptr %i.ay, align 1, !tbaa !19
  br label %.loopexit76.i

bb.r:                                             ; preds = %bb.q
  %i.bb = icmp samesign ult i32 %i.aj, 50
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bc = zext nneg i32 %i.aj to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !19
  %i.bf = zext i8 %i.be to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bg = phi i32 [ %i.bf, %bb.s ], [ %i.aj, %bb.r ]
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -1
  %i.bk = sext i32 %i.az to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !21
  %.not72.i = icmp ugt ptr %i.ay, %i.bj
  br i1 %.not72.i, label %.loopexit76.loopexit92.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr %i.ay, align 1, !tbaa !19
  br label %.loopexit76.loopexit92.i

.loopexit76.loopexit92.i:                         ; preds = %bb.u, %bb.t
  %i.bn = trunc i32 %i.bm to i8
  br label %.loopexit76.i

.loopexit76.i:                                    ; preds = %.lr.ph86.i.preheader, %.loopexit76.loopexit92.i
  %.1.i = phi i8 [ %i.bn, %.loopexit76.loopexit92.i ], [ 0, %.lr.ph86.i.preheader ]
  %.264.i = getelementptr inbounds i8, ptr %i.ay, i64 -1 ; 4 uses
  %.264.i276 = ptrtoaddr ptr %.264.i to i64       ; 3 uses
  %.not7488.i = icmp ult ptr %.264.i, %i.ad
  br i1 %.not7488.i, label %.thread248.thread.thread253, label %.lr.ph91.preheader.i

.lr.ph91.preheader.i:                             ; preds = %.loopexit76.i
  store i8 %.1.i, ptr %.264.i, align 1, !tbaa !19
  %i.bo = getelementptr inbounds i8, ptr %i.ay, i64 -2
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
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.bu, i1 false), !tbaa !19
  br label %.thread248.thread.thread253

.thread248.thread.thread253:                      ; preds = %.lr.ph91.i.preheader, %.lr.ph91.preheader.i, %.loopexit76.i, %bb.n, %bb.l
  store i32 %i.aj, ptr %0, align 4, !tbaa !18
  %i.bv = sub nsw i32 1, %i.aj
  store i32 %i.bv, ptr %i.ac, align 4, !tbaa !17
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.v:                                             ; preds = %bb.k
  %.not205 = icmp eq i8 %i.p, 0
  br i1 %.not205, label %bb.w, label %.thread248

bb.w:                                             ; preds = %bb.v
  store i8 64, ptr %i.ab, align 4, !tbaa !16
  br label %.thread248

bb.x:                                             ; preds = %bb.d, %bb.a
  %i.bw = load i32, ptr %2, align 4, !tbaa !18    ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !17 ; 6 uses
  %i.bz = add i32 %i.by, %i.bw                    ; 8 uses
  %i.ca = icmp slt i8 %i.i, 0                     ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 4 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !19  ; 2 uses
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
  %i.cj = load i8, ptr %.064108.i, align 1, !tbaa !19
  %.not.i219 = icmp eq i8 %i.cj, 0
  br i1 %.not.i219, label %bb.ab, label %_ZL9decGetIntPK9decNumber.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ck = add nsw i32 %.0109.i, -1
  %i.cl = getelementptr inbounds nuw i8, ptr %.064108.i, i64 1 ; 3 uses
  %i.cm = icmp slt i32 %.0109.i, 2
  br i1 %i.cm, label %.critedge.thread.loopexit.i, label %bb.aa, !llvm.loop !6

.critedge.i:                                      ; preds = %bb.y
  %i.cn = icmp eq i32 %i.by, 0
  br i1 %i.cn, label %.critedge.thread.i, label %bb.ac

.critedge.thread.loopexit.i:                      ; preds = %bb.ab
  %.pre.i = load i8, ptr %i.cl, align 1, !tbaa !19
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
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !19
  %wide.load308 = load <4 x i8>, ptr %i.dc, align 1, !tbaa !19
  %i.dd = zext <4 x i8> %wide.load to <4 x i32>
  %i.de = zext <4 x i8> %wide.load308 to <4 x i32>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load309 = load <4 x i32>, ptr %gep, align 4, !tbaa !21
  %wide.load310 = load <4 x i32>, ptr %i.df, align 4, !tbaa !21
  %i.dg = mul <4 x i32> %wide.load309, %i.dd
  %i.dh = mul <4 x i32> %wide.load310, %i.de
  %i.di = add <4 x i32> %i.dg, %vec.phi           ; 2 uses
  %i.dj = add <4 x i32> %i.dh, %vec.phi307        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !133

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
  %i.dm = load i8, ptr %.6111.i, align 1, !tbaa !19
  %i.dn = zext i8 %i.dm to i32
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !21
  %i.dq = mul i32 %i.dp, %i.dn
  %i.dr = add i32 %i.dq, %.474110.i               ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.6111.i, i64 1 ; 2 uses
  %i.dt = trunc nuw i64 %indvars.iv.next.i to i32
  %i.du = icmp sgt i32 %i.bz, %i.dt
  br i1 %i.du, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !134

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
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !21
  %i.ea = sdiv i32 %.474.lcssa.i, %i.dz
  %i.eb = getelementptr inbounds i8, ptr %.6.lcssa.i, i64 -1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !19
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
