Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/minilua?download=true
inline.NumInlined: 1353
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 27
begin_hunk_0_@luaH_get:bb.a

.split58:                                         ; preds = %bb.p
  %i.dh = load double, ptr %i.de, align 8, !tbaa !81
  %i.di = load double, ptr %1, align 8            ; 2 uses
  %i.dj = fcmp oeq double %i.dh, %i.di
  %i.dk = bitcast double %i.di to i64
  %i.dl = trunc i64 %i.dk to i32
  br i1 %i.dj, label %luaH_getstr.exit, label %luaO_rawequalObj.exit.thread

.split59:                                         ; preds = %bb.p
  %i.dm = load i32, ptr %i.de, align 8, !tbaa !81
  %i.dn = icmp eq i32 %i.dm, %i.dd
  br i1 %i.dn, label %luaH_getstr.exit, label %luaO_rawequalObj.exit.thread

.split:                                           ; preds = %bb.p
  %i.do = load ptr, ptr %i.de, align 8, !tbaa !81
  %i.dp = load ptr, ptr %1, align 8               ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = trunc i64 %i.dr to i32
  br i1 %i.dq, label %luaH_getstr.exit, label %luaO_rawequalObj.exit.thread

luaO_rawequalObj.exit:                            ; preds = %bb.p
  %i.dt = load ptr, ptr %i.de, align 8, !tbaa !81
  %i.du = load ptr, ptr %1, align 8               ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = trunc i64 %i.dw to i32
  br i1 %i.dv, label %luaH_getstr.exit, label %luaO_rawequalObj.exit.thread

luaO_rawequalObj.exit.thread:                     ; preds = %.split59, %.split58, %.split, %mainposition.exit, %luaO_rawequalObj.exit
  %i.dy = phi i32 [ %i.dd, %mainposition.exit ], [ %i.dx, %luaO_rawequalObj.exit ], [ %i.ds, %.split ], [ %i.dl, %.split58 ], [ %i.dd, %.split59 ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !81 ; 2 uses
  %.not20 = icmp eq ptr %i.ea, null
  br i1 %.not20, label %luaH_getstr.exit, label %mainposition.exit, !llvm.loop !374

luaH_getstr.exit:                                 ; preds = %bb.j, %bb.k, %bb.e, %bb.d, %bb.p, %luaO_rawequalObj.exit, %luaO_rawequalObj.exit.thread, %.split, %.split58, %.split59, %bb.a, %luaH_getnum.exit.thread34
  %.2 = phi ptr [ @luaO_nilobject_, %bb.a ], [ %i.ai, %luaH_getnum.exit.thread34 ], [ %.0, %.split59 ], [ @luaO_nilobject_, %bb.e ], [ %.0, %.split58 ], [ %.0, %.split ], [ %.0, %bb.p ], [ %.0, %luaO_rawequalObj.exit ], [ @luaO_nilobject_, %luaO_rawequalObj.exit.thread ], [ %.0.i, %bb.d ], [ @luaO_nilobject_, %bb.k ], [ %.0.i22, %bb.j ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @newkey(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [31 x i32], align 16              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 10
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %i.i = load i32, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  switch i32 %i.i, label %bb.g [
    i32 3, label %bb.b
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.j = load double, ptr %2, align 8, !tbaa !81  ; 2 uses
  %i.k = fcmp oeq double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.c, label %.preheader.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !103  ; 2 uses
  br label %mainposition.exit

.preheader.i.i:                                   ; preds = %bb.b
  %i.m = bitcast double %i.j to i64               ; 2 uses
  %.sroa.0.4.extract.shift.i.i = lshr i64 %i.m, 32
  %i.n = add i64 %.sroa.0.4.extract.shift.i.i, %i.m
  %.sroa.0.0.insert.ext.i.i = and i64 %i.n, 4294967295
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !103  ; 2 uses
  %i.p = load i8, ptr %i.d, align 1, !tbaa !120
  %i.q = zext nneg i8 %i.p to i64
  %notmask.i.i = shl nsw i64 -1, %i.q
  %i.r = xor i64 %notmask.i.i, -1
  %i.s = or i64 %i.r, 1
  %i.t = urem i64 %.sroa.0.0.insert.ext.i.i, %i.s
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.t
  br label %mainposition.exit

bb.d:                                             ; preds = %tailrecurse
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !103  ; 2 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !81
  %i.z = load i8, ptr %i.d, align 1, !tbaa !120
  %i.aa = zext nneg i8 %i.z to i64
  %notmask17.i = shl nsw i64 -1, %i.aa
  %i.ab = trunc i64 %notmask17.i to i32
  %i.ac = xor i32 %i.ab, -1
  %i.ad = and i32 %i.y, %i.ac
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [40 x i8], ptr %i.v, i64 %i.ae
  br label %mainposition.exit

bb.e:                                             ; preds = %tailrecurse
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !103 ; 2 uses
  %i.ah = load i32, ptr %2, align 8, !tbaa !81
  %i.ai = load i8, ptr %i.d, align 1, !tbaa !120
  %i.aj = zext nneg i8 %i.ai to i64
  %notmask16.i = shl nsw i64 -1, %i.aj
  %i.ak = trunc i64 %notmask16.i to i32
  %i.al = xor i32 %i.ak, -1
  %i.am = and i32 %i.ah, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [40 x i8], ptr %i.ag, i64 %i.an
  br label %mainposition.exit

bb.f:                                             ; preds = %tailrecurse
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !103 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !81
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 4294967295
  %i.at = load i8, ptr %i.d, align 1, !tbaa !120
  %i.au = zext nneg i8 %i.at to i64
  %notmask.i = shl nsw i64 -1, %i.au
  %i.av = xor i64 %notmask.i, -1
  %i.aw = or i64 %i.av, 1
  %i.ax = urem i64 %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ap, i64 %i.ax
  br label %mainposition.exit

bb.g:                                             ; preds = %tailrecurse
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !103 ; 2 uses
  %i.ba = load ptr, ptr %2, align 8, !tbaa !81
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = load i8, ptr %i.d, align 1, !tbaa !120
  %i.be = zext nneg i8 %i.bd to i64
  %notmask18.i = shl nsw i64 -1, %i.be
  %i.bf = xor i64 %notmask18.i, -1
  %i.bg = or i64 %i.bf, 1
  %i.bh = urem i64 %i.bc, %i.bg
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %i.bh
  br label %mainposition.exit

mainposition.exit:                                ; preds = %bb.c, %.preheader.i.i, %bb.d, %bb.e, %bb.f, %bb.g
  %i.bj = phi ptr [ %i.az, %bb.g ], [ %i.ap, %bb.f ], [ %i.v, %bb.d ], [ %i.ag, %bb.e ], [ %i.l, %bb.c ], [ %i.o, %.preheader.i.i ] ; 8 uses
  %.0.i = phi ptr [ %i.bi, %bb.g ], [ %i.ay, %bb.f ], [ %i.af, %bb.d ], [ %i.ao, %bb.e ], [ %i.l, %bb.c ], [ %i.u, %.preheader.i.i ] ; 12 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !185
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = icmp eq ptr %.0.i, @dummynode_
  %or.cond = or i1 %i.bn, %i.bm
  br i1 %or.cond, label %bb.h, label %luaH_set.exit

bb.h:                                             ; preds = %mainposition.exit
  %.promoted.i = load ptr, ptr %i.e, align 8, !tbaa !186
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.bo = phi ptr [ %i.bp, %bb.j ], [ %.promoted.i, %bb.h ] ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -40 ; 6 uses
  store ptr %i.bp, ptr %i.e, align 8, !tbaa !186
  %i.bq = icmp ugt ptr %i.bo, %i.bj
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 -16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !81
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %getfreepos.exit, label %bb.i, !llvm.loop !375

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(124) %i.a, i8 0, i64 124, i1 false), !tbaa !162
  %i.bu = load i32, ptr %i.f, align 8, !tbaa !118 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i, %bb.k
  %indvars.iv45.i.i = phi i64 [ 0, %bb.k ], [ %indvars.iv.next46.i.i, %._crit_edge.i.i ] ; 2 uses
  %.02343.i.i = phi i32 [ 1, %bb.k ], [ %.124.lcssa.i.i, %._crit_edge.i.i ] ; 4 uses
  %.02542.i.i = phi i32 [ 0, %bb.k ], [ %i.eb, %._crit_edge.i.i ] ; 2 uses
  %.02841.i.i = phi i32 [ 1, %bb.k ], [ %i.ec, %._crit_edge.i.i ] ; 3 uses
  %i.bv = icmp sgt i32 %.02841.i.i, %i.bu
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = icmp sgt i32 %.02343.i.i, %i.bu
  br i1 %i.bw, label %numusearray.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.021.i.i = phi i32 [ %i.bu, %bb.m ], [ %.02841.i.i, %bb.l ] ; 3 uses
  %.not36.i.i = icmp sgt i32 %.02343.i.i, %.021.i.i
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !119 ; 9 uses
  %i.by = sext i32 %.02343.i.i to i64             ; 4 uses
  %i.bz = sext i32 %.021.i.i to i64               ; 2 uses
  %i.ca = add nsw i64 %i.bz, 1
  %i.cb = sub nsw i64 %i.ca, %i.by                ; 3 uses
  %min.iters.check = icmp ult i64 %i.cb, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec.a = and i64 %i.cb, 7                     ; 2 uses
  %3 = icmp eq i64 %n.vec.a, 0
  %4 = select i1 %3, i64 8, i64 %n.vec.a
  %n.vec = sub nsw i64 %i.cb, %4                  ; 2 uses
  %i.cc = add nsw i64 %n.vec, %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %vec.phi156 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dp, %vector.body ]
  %i.cd = add i64 %index, %i.by                   ; 8 uses
  %i.ce = getelementptr [16 x i8], ptr %i.bx, i64 %i.cd
  %i.cf = getelementptr [16 x i8], ptr %i.bx, i64 %i.cd
  %i.cg = getelementptr [16 x i8], ptr %i.bx, i64 %i.cd
  %i.ch = getelementptr [16 x i8], ptr %i.bx, i64 %i.cd
  %i.ci = getelementptr [16 x i8], ptr %i.bx, i64 %i.cd
  %i.cj = getelementptr [16 x i8], ptr %i.bx, i64 %i.cd
  %i.ck = getelementptr [16 x i8], ptr %i.bx, i64 %i.cd
  %i.cl = getelementptr [16 x i8], ptr %i.bx, i64 %i.cd
  %i.cm = getelementptr i8, ptr %i.ce, i64 -8
  %i.cn = getelementptr i8, ptr %i.cf, i64 8
  %i.co = getelementptr i8, ptr %i.cg, i64 24
  %i.cp = getelementptr i8, ptr %i.ch, i64 40
  %i.cq = getelementptr i8, ptr %i.ci, i64 56
  %i.cr = getelementptr i8, ptr %i.cj, i64 72
  %i.cs = getelementptr i8, ptr %i.ck, i64 88
  %i.ct = getelementptr i8, ptr %i.cl, i64 104
  %i.cu = load i32, ptr %i.cm, align 8, !tbaa !99
  %i.cv = load i32, ptr %i.cn, align 8, !tbaa !99
  %i.cw = load i32, ptr %i.co, align 8, !tbaa !99
  %i.cx = load i32, ptr %i.cp, align 8, !tbaa !99
  %i.cy = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %i.cz = insertelement <4 x i32> %i.cy, i32 %i.cv, i64 1
  %i.da = insertelement <4 x i32> %i.cz, i32 %i.cw, i64 2
  %i.db = insertelement <4 x i32> %i.da, i32 %i.cx, i64 3
  %i.dc = load i32, ptr %i.cq, align 8, !tbaa !99
  %i.dd = load i32, ptr %i.cr, align 8, !tbaa !99
  %i.de = load i32, ptr %i.cs, align 8, !tbaa !99
  %i.df = load i32, ptr %i.ct, align 8, !tbaa !99
  %i.dg = insertelement <4 x i32> poison, i32 %i.dc, i64 0
  %i.dh = insertelement <4 x i32> %i.dg, i32 %i.dd, i64 1
  %i.di = insertelement <4 x i32> %i.dh, i32 %i.de, i64 2
  %i.dj = insertelement <4 x i32> %i.di, i32 %i.df, i64 3
  %i.dk = icmp ne <4 x i32> %i.db, zeroinitializer
  %i.dl = icmp ne <4 x i32> %i.dj, zeroinitializer
  %i.dm = zext <4 x i1> %i.dk to <4 x i32>
  %i.dn = zext <4 x i1> %i.dl to <4 x i32>
  %i.do = add <4 x i32> %vec.phi, %i.dm           ; 2 uses
  %i.dp = add <4 x i32> %vec.phi156, %i.dn        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dp, %i.do
  %i.dr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %i.by, %.lr.ph.i.i ], [ %i.cc, %middle.block ]
  %.02238.i.i.ph = phi i32 [ 0, %.lr.ph.i.i ], [ %i.dr, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.02238.i.i = phi i32 [ %spec.select.i.i, %scalar.ph ], [ %.02238.i.i.ph, %scalar.ph.preheader ]
  %i.ds = getelementptr [16 x i8], ptr %i.bx, i64 %indvars.iv.i.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 -8
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !99
  %i.dv = icmp ne i32 %i.du, 0
  %i.dw = zext i1 %i.dv to i32
  %spec.select.i.i = add nuw nsw i32 %.02238.i.i, %i.dw ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.bz
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %scalar.ph, !llvm.loop !377

._crit_edge.loopexit.i.i:                         ; preds = %scalar.ph
  %i.dx = add i32 %.021.i.i, 1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.n
  %.124.lcssa.i.i = phi i32 [ %.02343.i.i, %bb.n ], [ %i.dx, %._crit_edge.loopexit.i.i ]
  %.022.lcssa.i.i = phi i32 [ 0, %bb.n ], [ %spec.select.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv45.i.i ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !162
  %i.ea = add nsw i32 %i.dz, %.022.lcssa.i.i
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !162
  %i.eb = add nuw nsw i32 %.022.lcssa.i.i, %.02542.i.i ; 2 uses
  %indvars.iv.next46.i.i = add nuw nsw i64 %indvars.iv45.i.i, 1 ; 2 uses
  %i.ec = shl nuw nsw i32 %.02841.i.i, 1
  %exitcond48.not.i.i = icmp eq i64 %indvars.iv.next46.i.i, 31
  br i1 %exitcond48.not.i.i, label %numusearray.exit.i, label %bb.l, !llvm.loop !378

numusearray.exit.i:                               ; preds = %._crit_edge.i.i, %bb.m
  %.025.lcssa.i.i = phi i32 [ %.02542.i.i, %bb.m ], [ %i.eb, %._crit_edge.i.i ] ; 2 uses
  %i.ed = load i8, ptr %i.d, align 1, !tbaa !120  ; 2 uses
  %.not15.i.i = icmp ugt i8 %i.ed, 31
  br i1 %.not15.i.i, label %numusehash.exit.i, label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %numusearray.exit.i
  %i.ee = zext nneg i8 %i.ed to i64
  %sext.i.i = shl nuw i64 4294967296, %i.ee
  %i.ef = ashr exact i64 %sext.i.i, 32
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i11.i
  %indvars.iv.i12.i = phi i64 [ %i.ef, %.lr.ph.i11.i ], [ %indvars.iv.next.i13.i, %bb.s ]
  %.01117.i.i = phi i32 [ 0, %.lr.ph.i11.i ], [ %.1.i.i, %bb.s ] ; 2 uses
  %.01216.i.i = phi i32 [ 0, %.lr.ph.i11.i ], [ %.113.i.i, %bb.s ] ; 2 uses
  %indvars.iv.next.i13.i = add nsw i64 %indvars.iv.i12.i, -1 ; 3 uses
  %i.eg = getelementptr inbounds [40 x i8], ptr %i.bj, i64 %indvars.iv.next.i13.i ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !185
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !99
  %i.em = icmp eq i32 %i.el, 3
  br i1 %i.em, label %bb.q, label %countint.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.eo = load double, ptr %i.en, align 8, !tbaa !81 ; 2 uses
  %i.ep = fptosi double %i.eo to i32              ; 2 uses
  %i.eq = sitofp i32 %i.ep to double
  %i.er = fcmp une double %i.eo, %i.eq
  br i1 %i.er, label %countint.exit.i.i, label %arrayindex.exit.i.i.i

arrayindex.exit.i.i.i:                            ; preds = %bb.q
  %i.es = add i32 %i.ep, -1                       ; 4 uses
  %or.cond.i.i.i = icmp ult i32 %i.es, 1073741824
  br i1 %or.cond.i.i.i, label %bb.r, label %countint.exit.i.i

bb.r:                                             ; preds = %arrayindex.exit.i.i.i
  %i.et = icmp samesign ugt i32 %i.es, 255
  br i1 %i.et, label %.lr.ph.i.i.i.i, label %luaO_log2.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi i32 [ %i.eu, %.lr.ph.i.i.i.i ], [ -1, %bb.r ]
  %.056.i.i.i.i = phi i32 [ %i.ev, %.lr.ph.i.i.i.i ], [ %i.es, %bb.r ] ; 2 uses
  %i.eu = add nsw i32 %.07.i.i.i.i, 8             ; 2 uses
  %i.ev = lshr i32 %.056.i.i.i.i, 8               ; 2 uses
  %i.ew = icmp ugt i32 %.056.i.i.i.i, 65535
  br i1 %i.ew, label %.lr.ph.i.i.i.i, label %luaO_log2.exit.i.i.i, !llvm.loop !22

luaO_log2.exit.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %bb.r
  %.05.lcssa.i.i.i.i = phi i32 [ %i.es, %bb.r ], [ %i.ev, %.lr.ph.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ -1, %bb.r ], [ %i.eu, %.lr.ph.i.i.i.i ]
  %i.ex = zext nneg i32 %.05.lcssa.i.i.i.i to i64
  %i.ey = getelementptr inbounds nuw i8, ptr @luaO_log2.log_2, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !81
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nsw i32 %.0.lcssa.i.i.i.i, %i.fa
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr [4 x i8], ptr %i.a, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 4      ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !162
  %i.fg = add nsw i32 %i.ff, 1
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !162
  br label %countint.exit.i.i

countint.exit.i.i:                                ; preds = %luaO_log2.exit.i.i.i, %arrayindex.exit.i.i.i, %bb.q, %bb.p
  %.0.i.i.i = phi i32 [ 1, %luaO_log2.exit.i.i.i ], [ 0, %arrayindex.exit.i.i.i ], [ 0, %bb.p ], [ 0, %bb.q ]
  %i.fh = add nsw i32 %.0.i.i.i, %.01117.i.i
  %i.fi = add nsw i32 %.01216.i.i, 1
  br label %bb.s

bb.s:                                             ; preds = %countint.exit.i.i, %bb.o
  %.113.i.i = phi i32 [ %.01216.i.i, %bb.o ], [ %i.fi, %countint.exit.i.i ] ; 2 uses
  %.1.i.i = phi i32 [ %.01117.i.i, %bb.o ], [ %i.fh, %countint.exit.i.i ] ; 2 uses
  %i.fj = icmp eq i64 %indvars.iv.next.i13.i, 0
  br i1 %i.fj, label %numusehash.exit.i, label %bb.o, !llvm.loop !379

numusehash.exit.i:                                ; preds = %bb.s, %numusearray.exit.i
  %.012.lcssa.i.i = phi i32 [ 0, %numusearray.exit.i ], [ %.113.i.i, %bb.s ]
  %.011.lcssa.i.i = phi i32 [ 0, %numusearray.exit.i ], [ %.1.i.i, %bb.s ]
  %i.fk = add nsw i32 %.011.lcssa.i.i, %.025.lcssa.i.i
  %i.fl = icmp eq i32 %i.i, 3
  br i1 %i.fl, label %bb.t, label %countint.exit.i

bb.t:                                             ; preds = %numusehash.exit.i
  %i.fm = load double, ptr %2, align 8, !tbaa !81 ; 2 uses
  %i.fn = fptosi double %i.fm to i32              ; 2 uses
  %i.fo = sitofp i32 %i.fn to double
  %i.fp = fcmp une double %i.fm, %i.fo
  br i1 %i.fp, label %countint.exit.i, label %arrayindex.exit.i.i

arrayindex.exit.i.i:                              ; preds = %bb.t
  %i.fq = add i32 %i.fn, -1                       ; 4 uses
  %or.cond.i.i = icmp ult i32 %i.fq, 1073741824
  br i1 %or.cond.i.i, label %bb.u, label %countint.exit.i

bb.u:                                             ; preds = %arrayindex.exit.i.i
  %i.fr = icmp samesign ugt i32 %i.fq, 255
  br i1 %i.fr, label %.lr.ph.i.i.i, label %luaO_log2.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u, %.lr.ph.i.i.i
  %.07.i.i.i = phi i32 [ %i.fs, %.lr.ph.i.i.i ], [ -1, %bb.u ]
  %.056.i.i.i = phi i32 [ %i.ft, %.lr.ph.i.i.i ], [ %i.fq, %bb.u ] ; 2 uses
  %i.fs = add nsw i32 %.07.i.i.i, 8               ; 2 uses
  %i.ft = lshr i32 %.056.i.i.i, 8                 ; 2 uses
  %i.fu = icmp ugt i32 %.056.i.i.i, 65535
  br i1 %i.fu, label %.lr.ph.i.i.i, label %luaO_log2.exit.i.i, !llvm.loop !22

luaO_log2.exit.i.i:                               ; preds = %.lr.ph.i.i.i, %bb.u
  %.05.lcssa.i.i.i = phi i32 [ %i.fq, %bb.u ], [ %i.ft, %.lr.ph.i.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ -1, %bb.u ], [ %i.fs, %.lr.ph.i.i.i ]
  %i.fv = zext nneg i32 %.05.lcssa.i.i.i to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @luaO_log2.log_2, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !81
  %i.fy = zext i8 %i.fx to i32
  %i.fz = add nsw i32 %.0.lcssa.i.i.i, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr [4 x i8], ptr %i.a, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.gb, i64 4      ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !162
  %i.ge = add nsw i32 %i.gd, 1
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !162
  br label %countint.exit.i

countint.exit.i:                                  ; preds = %luaO_log2.exit.i.i, %arrayindex.exit.i.i, %bb.t, %numusehash.exit.i
  %.0.i.i = phi i32 [ 1, %luaO_log2.exit.i.i ], [ 0, %arrayindex.exit.i.i ], [ 0, %numusehash.exit.i ], [ 0, %bb.t ]
  %i.gf = add nsw i32 %i.fk, %.0.i.i              ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, 0
  br i1 %i.gg, label %.lr.ph.i16.i, label %rehash.exit

.lr.ph.i16.i:                                     ; preds = %countint.exit.i, %bb.v
  %indvars.iv.i17.i = phi i64 [ %indvars.iv.next.i19.i, %bb.v ], [ 0, %countint.exit.i ] ; 2 uses
  %i.gh = phi i32 [ %i.gq, %bb.v ], [ 0, %countint.exit.i ]
  %.033.i.i = phi i32 [ %.1.i18.i, %bb.v ], [ 0, %countint.exit.i ]
  %.01732.i.i = phi i32 [ %.118.i.i, %bb.v ], [ 0, %countint.exit.i ]
  %.02031.i.i = phi i32 [ %.121.i.i, %bb.v ], [ 0, %countint.exit.i ] ; 2 uses
  %.02230.i.i = phi i32 [ %i.gp, %bb.v ], [ 1, %countint.exit.i ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i17.i
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !162 ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, 0                   ; 2 uses
  %i.gl = add nuw nsw i32 %i.gj, %.02031.i.i      ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, %i.gh
  %.121.i.i = select i1 %i.gk, i32 %i.gl, i32 %.02031.i.i ; 2 uses
  %i.gn = select i1 %i.gk, i1 %i.gm, i1 false     ; 2 uses
  %.118.i.i = select i1 %i.gn, i32 %i.gl, i32 %.01732.i.i ; 3 uses
  %.1.i18.i = select i1 %i.gn, i32 %.02230.i.i, i32 %.033.i.i ; 3 uses
  %i.go = icmp eq i32 %.121.i.i, %i.gf
  br i1 %i.go, label %rehash.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i16.i
  %indvars.iv.next.i19.i = add nuw nsw i64 %indvars.iv.i17.i, 1
  %i.gp = shl nsw i32 %.02230.i.i, 1
  %i.gq = and i32 %.02230.i.i, 2147483647         ; 2 uses
  %i.gr = icmp samesign ult i32 %i.gq, %i.gf
  br i1 %i.gr, label %.lr.ph.i16.i, label %rehash.exit, !llvm.loop !380

rehash.exit:                                      ; preds = %.lr.ph.i16.i, %bb.v, %countint.exit.i
  %.219.i.i = phi i32 [ 0, %countint.exit.i ], [ %.118.i.i, %bb.v ], [ %.118.i.i, %.lr.ph.i16.i ]
  %.2.i.i = phi i32 [ 0, %countint.exit.i ], [ %.1.i18.i, %bb.v ], [ %.1.i18.i, %.lr.ph.i16.i ]
  %i.gs = add i32 %.025.lcssa.i.i, 1
  %i.gt = add i32 %i.gs, %.012.lcssa.i.i
  %i.gu = sub i32 %i.gt, %.219.i.i
  tail call fastcc void @resize(ptr noundef %0, ptr noundef %1, i32 noundef %.2.i.i, i32 noundef %i.gu), !inline_history !381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.gv = tail call fastcc ptr @luaH_get(ptr noundef %1, ptr noundef %2), !inline_history !21 ; 2 uses
  store i8 0, ptr %i.h, align 2, !tbaa !147
  %.not.i = icmp eq ptr %i.gv, @luaO_nilobject_
  br i1 %.not.i, label %bb.w, label %luaH_set.exit.thread

bb.w:                                             ; preds = %rehash.exit
  %i.gw = load i32, ptr %i.b, align 8, !tbaa !99
  switch i32 %i.gw, label %tailrecurse.backedge [
    i32 0, label %.sink.split
    i32 3, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.gx = load double, ptr %2, align 8, !tbaa !81
  %i.gy = fcmp ord double %i.gx, 0.000000e+00
  br i1 %i.gy, label %tailrecurse.backedge, label %.sink.split

tailrecurse.backedge:                             ; preds = %bb.x, %bb.w
  br label %tailrecurse

.sink.split:                                      ; preds = %bb.x, %bb.w
end_hunk_0
