Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpCGPenaltyLSAcceptor?download=true
inline.NumInlined: 1819
inline.NumDeleted: 488
begin_hunk_0_@_ZN5Ipopt19CGPenaltyLSAcceptor15RestoredIterateEv:bb.a
  store i32 %i.aq, ptr %i.ax, align 4, !tbaa !86
  br label %_ZN5Ipopt19CGPenaltyLSAcceptor16RestoreBestPointEv.exit

_ZN5Ipopt19CGPenaltyLSAcceptor16RestoreBestPointEv.exit: ; preds = %bb.c, %bb.b, %bb.m, %bb.a
  %.0 = phi i1 [ true, %bb.m ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt19CGPenaltyLSAcceptor19MultipliersDivergedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 8 dereferenceable(2185) %i.b, i32 noundef 1)
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef double %i.j(ptr noundef nonnull align 8 dereferenceable(2185) %i.g, i32 noundef 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.m = load double, ptr %i.l, align 8, !tbaa !501 ; 2 uses
  %i.n = fcmp ogt double %i.f, %i.m
  %i.o = fcmp ogt double %i.k, %i.m
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %bb.b, label %.critedge296

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef double %i.s(ptr noundef nonnull align 8 dereferenceable(2185) %i.p, i32 noundef 2)
  %i.u = fcmp ogt double %i.t, 1.000000e+04
  br i1 %i.u, label %bb.c, label %.critedge296

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.w = load double, ptr %i.v, align 8, !tbaa !502
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !94
  %i.aa = tail call noundef double @_ZN5Ipopt11CGPenaltyCq18curr_scaled_y_AmaxEv(ptr noundef nonnull align 8 dereferenceable(241) %i.z) ; 2 uses
  %i.ab = fcmp ogt double %i.aa, %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29 ; 3 uses
  br i1 %i.ab, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12, !noalias !503 ; 19 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt9IpoptData4currEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !8, !noalias !503
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !8, !noalias !503
  br label %_ZNK5Ipopt9IpoptData4currEv.exit

_ZNK5Ipopt9IpoptData4currEv.exit:                 ; preds = %bb.d, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 208
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !109, !noalias !506 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !117, !noalias !506 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 232
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !120, !noalias !506
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !123, !noalias !506, !nonnull !90, !noundef !90
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, %_ZNK5Ipopt9IpoptData4currEv.exit
  %.0.i3.i.i.i = phi ptr [ %i.am, %_ZNK5Ipopt9IpoptData4currEv.exit ], [ %i.aq, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !8, !noalias !511
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !8, !noalias !511
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !190
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !301
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 18 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !8, !noalias !514
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !8, !noalias !514
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !117, !noalias !517 ; 2 uses
  %.not.i.i.i310 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i310, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i314, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i311

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i314: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 232
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !120, !noalias !517
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !123, !noalias !517, !nonnull !90, !noundef !90
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i311

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i311: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i314, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i
  %.0.i3.i.i.i312 = phi ptr [ %i.bc, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i ], [ %i.bg, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i314 ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i312, i64 8 ; 4 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !8, !noalias !522
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !8, !noalias !522
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i312, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !190
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !301
  %i.bo = add nsw i32 %i.bn, %i.ax
  %i.bp = load i32, ptr %i.ay, align 8, !tbaa !8, !noalias !525
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.ay, align 8, !tbaa !8, !noalias !525
  %i.br = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !117, !noalias !528 ; 2 uses
  %.not.i.i.i318 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i318, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i322, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i319

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i322: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i311
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 232
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !120, !noalias !528
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !123, !noalias !528, !nonnull !90, !noundef !90
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i319

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i319: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i322, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i311
  %.0.i3.i.i.i320 = phi ptr [ %i.bs, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i311 ], [ %i.bw, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i322 ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i320, i64 8 ; 4 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !8, !noalias !533
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !8, !noalias !533
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i320, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !190
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !301
  %i.ce = add nsw i32 %i.bo, %i.cd
  %i.cf = load i32, ptr %i.ay, align 8, !tbaa !8, !noalias !536
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ay, align 8, !tbaa !8, !noalias !536
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !117, !noalias !539 ; 2 uses
  %.not.i.i.i326 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i326, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i330, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i327

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i330: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i319
  %i.cj = getelementptr inbounds nuw i8, ptr %i.af, i64 232
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !120, !noalias !539
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !123, !noalias !539, !nonnull !90, !noundef !90
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i327

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i327: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i330, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i319
  %.0.i3.i.i.i328 = phi ptr [ %i.ci, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i319 ], [ %i.cm, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i330 ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i328, i64 8 ; 4 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !8, !noalias !544
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !8, !noalias !544
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i328, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !190
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !301
  %i.cu = add nsw i32 %i.ce, %i.ct
  %i.cv = load i32, ptr %i.ay, align 8, !tbaa !8, !noalias !547
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.ay, align 8, !tbaa !8, !noalias !547
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !117, !noalias !550 ; 2 uses
  %.not.i.i.i334 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i334, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i338, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i335

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i338: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i327
  %i.cz = getelementptr inbounds nuw i8, ptr %i.af, i64 232
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !120, !noalias !550
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !123, !noalias !550, !nonnull !90, !noundef !90
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i335

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i335: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i338, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i327
  %.0.i3.i.i.i336 = phi ptr [ %i.cy, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i327 ], [ %i.dc, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i338 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i336, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !8, !noalias !555
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i336, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !190
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !301
  %i.dj = sub i32 0, %i.di
  %i.dk = icmp eq i32 %i.cu, %i.dj
  br i1 %i.dk, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i335
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ad, i64 2192
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !78
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  %i.do = load double, ptr %i.dn, align 8, !tbaa !101
  %i.dp = fcmp olt double %i.do, 1.000000e-02
  br label %.critedge

bb.g:                                             ; preds = %bb.c
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ad, i64 2192
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !78
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !101
  %i.du = fcmp olt double %i.dt, 1.000000e-04
  %i.dv = fcmp ogt double %i.aa, 1.000000e+04
  %i.dw = and i1 %i.dv, %i.du
  br label %.critedge296

.critedge:                                        ; preds = %bb.f, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i335
  %1 = phi i1 [ %i.dp, %bb.f ], [ true, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i335 ] ; 2 uses
  %i.dx = icmp eq i32 %i.de, 0
  br i1 %i.dx, label %bb.h, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.h:                                             ; preds = %.critedge
  %i.dy = load ptr, ptr %.0.i3.i.i.i336, align 8, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  tail call void %i.ea(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i336) #22, !inline_history !159
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.h, %.critedge
  %i.eb = load i32, ptr %i.ay, align 8, !tbaa !8
  %i.ec = add nsw i32 %i.eb, -1                   ; 2 uses
  store i32 %i.ec, ptr %i.ay, align 8, !tbaa !8
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.i, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

bb.i:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.ee = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  tail call void %i.eg(ptr noundef nonnull align 8 dereferenceable(280) %i.af) #22, !inline_history !19
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit: ; preds = %bb.i, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.eh = load i32, ptr %i.cn, align 8, !tbaa !8
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.cn, align 8, !tbaa !8
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.j, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit342

bb.j:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  %i.ek = load ptr, ptr %.0.i3.i.i.i328, align 8, !tbaa !10
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  tail call void %i.em(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i328) #22, !inline_history !159
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit342

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit342:     ; preds = %bb.j, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  %i.en = load i32, ptr %i.ay, align 8, !tbaa !8
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  store i32 %i.eo, ptr %i.ay, align 8, !tbaa !8
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.k, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit344

bb.k:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit342
  %i.eq = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  tail call void %i.es(ptr noundef nonnull align 8 dereferenceable(280) %i.af) #22, !inline_history !19
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit344

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit344: ; preds = %bb.k, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit342
  %i.et = load i32, ptr %i.bx, align 8, !tbaa !8
  %i.eu = add nsw i32 %i.et, -1                   ; 2 uses
  store i32 %i.eu, ptr %i.bx, align 8, !tbaa !8
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.l, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit346

bb.l:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit344
  %i.ew = load ptr, ptr %.0.i3.i.i.i320, align 8, !tbaa !10
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  tail call void %i.ey(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i320) #22, !inline_history !159
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit346

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit346:     ; preds = %bb.l, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit344
  %i.ez = load i32, ptr %i.ay, align 8, !tbaa !8
  %i.fa = add nsw i32 %i.ez, -1                   ; 2 uses
  store i32 %i.fa, ptr %i.ay, align 8, !tbaa !8
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.m, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit348

bb.m:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit346
  %i.fc = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  tail call void %i.fe(ptr noundef nonnull align 8 dereferenceable(280) %i.af) #22, !inline_history !19
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit348

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit348: ; preds = %bb.m, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit346
  %i.ff = load i32, ptr %i.bh, align 8, !tbaa !8
  %i.fg = add nsw i32 %i.ff, -1                   ; 2 uses
  store i32 %i.fg, ptr %i.bh, align 8, !tbaa !8
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.n, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit350

bb.n:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit348
  %i.fi = load ptr, ptr %.0.i3.i.i.i312, align 8, !tbaa !10
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  tail call void %i.fk(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i312) #22, !inline_history !159
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit350

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit350:     ; preds = %bb.n, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit348
  %i.fl = load i32, ptr %i.ay, align 8, !tbaa !8
  %i.fm = add nsw i32 %i.fl, -1                   ; 2 uses
  store i32 %i.fm, ptr %i.ay, align 8, !tbaa !8
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.o, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit352

bb.o:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit350
  %i.fo = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  tail call void %i.fq(ptr noundef nonnull align 8 dereferenceable(280) %i.af) #22, !inline_history !19
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit352

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit352: ; preds = %bb.o, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit350
  %i.fr = load i32, ptr %i.ar, align 8, !tbaa !8
  %i.fs = add nsw i32 %i.fr, -1                   ; 2 uses
  store i32 %i.fs, ptr %i.ar, align 8, !tbaa !8
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.p, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit354

bb.p:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit352
  %i.fu = load ptr, ptr %.0.i3.i.i.i, align 8, !tbaa !10
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  tail call void %i.fw(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i) #22, !inline_history !159
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit354

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit354:     ; preds = %bb.p, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit352
  %i.fx = load i32, ptr %i.ay, align 8, !tbaa !8
  %i.fy = add nsw i32 %i.fx, -1                   ; 2 uses
  store i32 %i.fy, ptr %i.ay, align 8, !tbaa !8
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.q, label %.critedge296

bb.q:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit354
  %i.ga = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  tail call void %i.gc(ptr noundef nonnull align 8 dereferenceable(280) %i.af) #22, !inline_history !19
  br label %.critedge296

.critedge296:                                     ; preds = %bb.q, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit354, %bb.g, %bb.b, %bb.a
  %.1264 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.dw, %bb.g ], [ %1, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit354 ], [ %1, %bb.q ]
  ret i1 %.1264
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt19CGPenaltyLSAcceptor16RestoreBestPointEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Ipopt::SmartPtr.56", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = icmp ne ptr %i.b, null                   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZNK5Ipopt14IteratesVector16MakeNewContainerEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.56") align 8 %1, ptr noundef nonnull align 8 dereferenceable(280) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = load ptr, ptr %1, align 8, !tbaa !207, !noalias !558 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !8, !noalias !558
  %i.i = add nsw i32 %i.h, 2
  store i32 %i.i, ptr %i.g, align 8, !tbaa !8
  br label %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i

_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i: ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !8
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !8
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(280) %i.k) #22, !inline_history !561
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i
  store ptr %i.f, ptr %i.j, align 8, !tbaa !12
  br i1 %.not.i.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !8
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !8
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i

bb.h:                                             ; preds = %bb.g
end_hunk_0
