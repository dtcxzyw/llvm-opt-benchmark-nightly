Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpProbingMuOracle?download=true
inline.NumInlined: 997
inline.NumDeleted: 458
begin_hunk_0_@_ZN5Ipopt15ProbingMuOracle17CalculateAffineMuEddRKNS_14IteratesVectorE:bb.a
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54, !noalias !292
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46, !noalias !292 ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not3.i.i.i, label %_ZNK5Ipopt14IteratesVector3z_LEv.exit, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, %_ZNK5Ipopt9IpoptData4currEv.exit
  %.0.i3.i.i.i = phi ptr [ %i.t, %_ZNK5Ipopt9IpoptData4currEv.exit ], [ %i.x, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !14, !noalias !293
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !14, !noalias !293
  br label %_ZNK5Ipopt14IteratesVector3z_LEv.exit

_ZNK5Ipopt14IteratesVector3z_LEv.exit:            ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i
  %storemerge.i.i = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i ], [ %.0.i3.i.i.i, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i ] ; 25 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !14
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !14
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5Ipopt14IteratesVector3z_LEv.exit
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(280) %i.m) #20, !inline_history !0
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK5Ipopt14IteratesVector3z_LEv.exit
  %i.ai = phi ptr [ %.pre, %bb.f ], [ %i.k, %_ZNK5Ipopt14IteratesVector3z_LEv.exit ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43, !noalias !294 ; 7 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i100, label %_ZNK5Ipopt9IpoptData4currEv.exit101, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !14, !noalias !294
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8, !tbaa !14, !noalias !294
  br label %_ZNK5Ipopt9IpoptData4currEv.exit101

_ZNK5Ipopt9IpoptData4currEv.exit101:              ; preds = %bb.h, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 208
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !49, !noalias !295
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !51, !noalias !295 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i102, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i106, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i103

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i106: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit101
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 232
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !54, !noalias !295
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46, !noalias !295 ; 2 uses
  %.not3.i.i.i107 = icmp eq ptr %i.av, null
  br i1 %.not3.i.i.i107, label %_ZNK5Ipopt14IteratesVector3z_UEv.exit, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i103

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i103: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i106, %_ZNK5Ipopt9IpoptData4currEv.exit101
  %.0.i3.i.i.i104 = phi ptr [ %i.ar, %_ZNK5Ipopt9IpoptData4currEv.exit101 ], [ %i.av, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i106 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i104, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !14, !noalias !296
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !14, !noalias !296
  br label %_ZNK5Ipopt14IteratesVector3z_UEv.exit

_ZNK5Ipopt14IteratesVector3z_UEv.exit:            ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i106, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i103
  %storemerge.i.i105 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i106 ], [ %.0.i3.i.i.i104, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i103 ] ; 25 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !14
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !14
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK5Ipopt14IteratesVector3z_UEv.exit
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(280) %i.ak) #20, !inline_history !0
  %.pre544 = load ptr, ptr %i.j, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK5Ipopt14IteratesVector3z_UEv.exit
  %i.bg = phi ptr [ %.pre544, %bb.i ], [ %i.ai, %_ZNK5Ipopt14IteratesVector3z_UEv.exit ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43, !noalias !297 ; 7 uses
  %.not.i.i.i.i110 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i110, label %_ZNK5Ipopt9IpoptData4currEv.exit111, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !14, !noalias !297
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !14, !noalias !297
  br label %_ZNK5Ipopt9IpoptData4currEv.exit111

_ZNK5Ipopt9IpoptData4currEv.exit111:              ; preds = %bb.k, %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 208
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !49, !noalias !298
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !51, !noalias !298 ; 2 uses
  %.not.i.i.i112 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i112, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i116, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i113

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i116: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit111
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 232
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !54, !noalias !298
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !46, !noalias !298 ; 2 uses
  %.not3.i.i.i117 = icmp eq ptr %i.bt, null
  br i1 %.not3.i.i.i117, label %_ZNK5Ipopt14IteratesVector3v_LEv.exit, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i113

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i113: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i116, %_ZNK5Ipopt9IpoptData4currEv.exit111
  %.0.i3.i.i.i114 = phi ptr [ %i.bp, %_ZNK5Ipopt9IpoptData4currEv.exit111 ], [ %i.bt, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i116 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i114, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !14, !noalias !299
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !14, !noalias !299
  br label %_ZNK5Ipopt14IteratesVector3v_LEv.exit

_ZNK5Ipopt14IteratesVector3v_LEv.exit:            ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i116, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i113
  %storemerge.i.i115 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i116 ], [ %.0.i3.i.i.i114, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i113 ] ; 25 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !14
  %i.bz = add nsw i32 %i.by, -1                   ; 2 uses
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !14
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5Ipopt14IteratesVector3v_LEv.exit
  %i.cb = load ptr, ptr %i.bi, align 8, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(280) %i.bi) #20, !inline_history !0
  %.pre545 = load ptr, ptr %i.j, align 8, !tbaa !26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK5Ipopt14IteratesVector3v_LEv.exit
  %i.ce = phi ptr [ %.pre545, %bb.l ], [ %i.bg, %_ZNK5Ipopt14IteratesVector3v_LEv.exit ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !43, !noalias !300 ; 7 uses
  %.not.i.i.i.i120 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i120, label %_ZNK5Ipopt9IpoptData4currEv.exit121, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !14, !noalias !300
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !14, !noalias !300
  br label %_ZNK5Ipopt9IpoptData4currEv.exit121

_ZNK5Ipopt9IpoptData4currEv.exit121:              ; preds = %bb.n, %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 208
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !49, !noalias !301
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !51, !noalias !301 ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i122, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i126, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i123

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i126: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit121
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 232
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !54, !noalias !301
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !46, !noalias !301 ; 2 uses
  %.not3.i.i.i127 = icmp eq ptr %i.cr, null
  br i1 %.not3.i.i.i127, label %_ZNK5Ipopt14IteratesVector3v_UEv.exit, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i123

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i123: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i126, %_ZNK5Ipopt9IpoptData4currEv.exit121
  %.0.i3.i.i.i124 = phi ptr [ %i.cn, %_ZNK5Ipopt9IpoptData4currEv.exit121 ], [ %i.cr, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i126 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i124, i64 8 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !14, !noalias !302
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !14, !noalias !302
  br label %_ZNK5Ipopt14IteratesVector3v_UEv.exit

_ZNK5Ipopt14IteratesVector3v_UEv.exit:            ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i126, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i123
  %storemerge.i.i125 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i126 ], [ %.0.i3.i.i.i124, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i123 ] ; 25 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !14
  %i.cx = add nsw i32 %i.cw, -1                   ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !14
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK5Ipopt14IteratesVector3v_UEv.exit
  %i.cz = load ptr, ptr %i.cg, align 8, !tbaa !16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(280) %i.cg) #20, !inline_history !0
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK5Ipopt14IteratesVector3v_UEv.exit
  %i.dc = load ptr, ptr %4, align 8, !tbaa !46
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !305
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !307 ; 3 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %bb.q, label %bb.bi

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !29 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 104
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.41") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %bb.r unwind label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit388.thread

bb.r:                                             ; preds = %bb.q
  %i.dn = load ptr, ptr %8, align 8, !tbaa !310   ; 22 uses
  %.not.i.i.i130 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i130, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !14
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.t, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(69) %i.dn) #20, !inline_history !234
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit:        ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.du = load ptr, ptr %4, align 8, !tbaa !46
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !305 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = invoke noundef ptr %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.dw)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit unwind label %bb.bf, !inline_history !235 ; 54 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit:                 ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit
  %.not.i.i133 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i133, label %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !14
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 8, !tbaa !14
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit

_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit:      ; preds = %bb.u, %_ZNK5Ipopt6Vector7MakeNewEv.exit
  %i.ee = load ptr, ptr %4, align 8, !tbaa !46    ; 16 uses
  %i.ef = load ptr, ptr %i.ea, align 8, !tbaa !16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(205) %i.ea, ptr noundef nonnull align 8 dereferenceable(205) %i.ee)
          to label %.noexc unwind label %bb.bf, !inline_history !236

.noexc:                                           ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.ea)
          to label %.noexc135 unwind label %bb.bf

.noexc135:                                        ; preds = %.noexc
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !67 ; 7 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 88
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !312
  %i.em = icmp eq i32 %i.ej, %i.el
  br i1 %i.em, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.noexc135
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !67
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  store i32 %i.eo, ptr %i.ep, align 8, !tbaa !312
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 96
  %i.er = load double, ptr %i.eq, align 8, !tbaa !313
  %i.es = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  store double %i.er, ptr %i.es, align 8, !tbaa !313
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.noexc135
  %i.et = getelementptr inbounds nuw i8, ptr %i.ee, i64 104
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !314
  %i.ev = icmp eq i32 %i.ej, %i.eu
  br i1 %i.ev, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !67
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ea, i64 104
  store i32 %i.ex, ptr %i.ey, align 8, !tbaa !314
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ee, i64 112
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !315
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ea, i64 112
  store double %i.fa, ptr %i.fb, align 8, !tbaa !315
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 120
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !316
  %i.fe = icmp eq i32 %i.ej, %i.fd
  br i1 %i.fe, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !67
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ea, i64 120
  store i32 %i.fg, ptr %i.fh, align 8, !tbaa !316
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ee, i64 128
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !317
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ea, i64 128
  store double %i.fj, ptr %i.fk, align 8, !tbaa !317
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ee, i64 136
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !318
  %i.fn = icmp eq i32 %i.ej, %i.fm
  br i1 %i.fn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !67
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ea, i64 136
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !318
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ee, i64 144
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !319
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ea, i64 144
  store double %i.fs, ptr %i.ft, align 8, !tbaa !319
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ee, i64 152
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !320
  %i.fw = icmp eq i32 %i.ej, %i.fv
  br i1 %i.fw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !67
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ea, i64 152
  store i32 %i.fy, ptr %i.fz, align 8, !tbaa !320
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ee, i64 160
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !321
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ea, i64 160
  store double %i.gb, ptr %i.gc, align 8, !tbaa !321
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ee, i64 168
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !322
  %i.gf = icmp eq i32 %i.ej, %i.ge
  br i1 %i.gf, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !67
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ea, i64 168
  store i32 %i.gh, ptr %i.gi, align 8, !tbaa !322
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ee, i64 176
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !323
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ea, i64 176
  store double %i.gk, ptr %i.gl, align 8, !tbaa !323
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ee, i64 184
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !324
  %i.go = icmp eq i32 %i.ej, %i.gn
  br i1 %i.go, label %bb.ah, label %_ZN5Ipopt6Vector4CopyERKS0_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !67
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ea, i64 184
  store i32 %i.gq, ptr %i.gr, align 8, !tbaa !324
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ee, i64 192
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !325
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ea, i64 192
  store double %i.gt, ptr %i.gu, align 8, !tbaa !325
  br label %_ZN5Ipopt6Vector4CopyERKS0_.exit

_ZN5Ipopt6Vector4CopyERKS0_.exit:                 ; preds = %bb.ah, %bb.ag
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !49, !noalias !326
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !51, !noalias !326 ; 2 uses
  %.not.i.i.i136 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i136, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i140, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i137

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i140: ; preds = %_ZN5Ipopt6Vector4CopyERKS0_.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !54, !noalias !326
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !46, !noalias !326, !nonnull !55, !noundef !55
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i137

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i137: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i140, %_ZN5Ipopt6Vector4CopyERKS0_.exit
  %.0.i3.i.i.i138 = phi ptr [ %i.gx, %_ZN5Ipopt6Vector4CopyERKS0_.exit ], [ %i.ha, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i140 ] ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i138, i64 8 ; 6 uses
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !14, !noalias !327
  %i.hd = add nsw i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 8, !tbaa !14, !noalias !327
  %i.he = load ptr, ptr %i.dn, align 8, !tbaa !16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  %i.hg = load ptr, ptr %i.hf, align 8
  invoke void %i.hg(ptr noundef nonnull align 8 dereferenceable(69) %i.dn, double noundef %1, ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i138, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.ea)
          to label %_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit unwind label %bb.bg, !inline_history !243

_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit: ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i137
  %i.hh = load i32, ptr %i.hb, align 8, !tbaa !14
  %i.hi = add nsw i32 %i.hh, -1                   ; 2 uses
  store i32 %i.hi, ptr %i.hb, align 8, !tbaa !14
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %bb.ai, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.ai:                                            ; preds = %_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit
  %i.hk = load ptr, ptr %.0.i3.i.i.i138, align 8, !tbaa !16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i138) #20, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit, %bb.ai
  %i.hn = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 56
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !305 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = invoke noundef ptr %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %i.ho)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit145 unwind label %bb.bf, !inline_history !235 ; 43 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit145:              ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %.not.i.i146 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i146, label %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit148, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit145
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !14
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.ht, align 8, !tbaa !14
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit148

_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit148:   ; preds = %bb.aj, %_ZNK5Ipopt6Vector7MakeNewEv.exit145
  %i.hw = load ptr, ptr %i.hs, align 8, !tbaa !16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8
  invoke void %i.hy(ptr noundef nonnull align 8 dereferenceable(205) %i.hs, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i)
          to label %.noexc149 unwind label %bb.bf, !inline_history !236

.noexc149:                                        ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit148
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.hs)
          to label %.noexc150 unwind label %bb.bf

.noexc150:                                        ; preds = %.noexc149
  %i.hz = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 48
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !67 ; 7 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 88
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !312
  %i.id = icmp eq i32 %i.ia, %i.ic
  br i1 %i.id, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.noexc150
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !67
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hs, i64 88
  store i32 %i.if, ptr %i.ig, align 8, !tbaa !312
  %i.ih = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 96
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !313
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hs, i64 96
  store double %i.ii, ptr %i.ij, align 8, !tbaa !313
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.noexc150
  %i.ik = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 104
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !314
  %i.im = icmp eq i32 %i.ia, %i.il
  br i1 %i.im, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.in = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  %i.io = load i32, ptr %i.in, align 8, !tbaa !67
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hs, i64 104
  store i32 %i.io, ptr %i.ip, align 8, !tbaa !314
  %i.iq = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 112
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !315
  %i.is = getelementptr inbounds nuw i8, ptr %i.hs, i64 112
  store double %i.ir, ptr %i.is, align 8, !tbaa !315
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.it = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 120
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !316
  %i.iv = icmp eq i32 %i.ia, %i.iu
  br i1 %i.iv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !67
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hs, i64 120
  store i32 %i.ix, ptr %i.iy, align 8, !tbaa !316
  %i.iz = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 128
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !317
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hs, i64 128
  store double %i.ja, ptr %i.jb, align 8, !tbaa !317
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.jc = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 136
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !318
  %i.je = icmp eq i32 %i.ia, %i.jd
  br i1 %i.je, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !67
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hs, i64 136
  store i32 %i.jg, ptr %i.jh, align 8, !tbaa !318
  %i.ji = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 144
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !319
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hs, i64 144
  store double %i.jj, ptr %i.jk, align 8, !tbaa !319
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.jl = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 152
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !320
  %i.jn = icmp eq i32 %i.ia, %i.jm
  br i1 %i.jn, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !67
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hs, i64 152
  store i32 %i.jp, ptr %i.jq, align 8, !tbaa !320
  %i.jr = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 160
  %i.js = load double, ptr %i.jr, align 8, !tbaa !321
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hs, i64 160
  store double %i.js, ptr %i.jt, align 8, !tbaa !321
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ju = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 168
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !322
  %i.jw = icmp eq i32 %i.ia, %i.jv
  br i1 %i.jw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !67
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hs, i64 168
  store i32 %i.jy, ptr %i.jz, align 8, !tbaa !322
  %i.ka = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 176
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !323
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hs, i64 176
  store double %i.kb, ptr %i.kc, align 8, !tbaa !323
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.kd = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 184
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !324
  %i.kf = icmp eq i32 %i.ia, %i.ke
  br i1 %i.kf, label %bb.aw, label %_ZN5Ipopt6Vector4CopyERKS0_.exit151

bb.aw:                                            ; preds = %bb.av
  %i.kg = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !67
  %i.ki = getelementptr inbounds nuw i8, ptr %i.hs, i64 184
  store i32 %i.kh, ptr %i.ki, align 8, !tbaa !324
  %i.kj = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 192
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !325
  %i.kl = getelementptr inbounds nuw i8, ptr %i.hs, i64 192
  store double %i.kk, ptr %i.kl, align 8, !tbaa !325
  br label %_ZN5Ipopt6Vector4CopyERKS0_.exit151

_ZN5Ipopt6Vector4CopyERKS0_.exit151:              ; preds = %bb.aw, %bb.av
  %i.km = load ptr, ptr %i.gv, align 8, !tbaa !49, !noalias !328
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !51, !noalias !328 ; 2 uses
  %.not.i.i.i152 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i152, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i156, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i153

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i156: ; preds = %_ZN5Ipopt6Vector4CopyERKS0_.exit151
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !54, !noalias !328
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !46, !noalias !328, !nonnull !55, !noundef !55
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i153

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i153: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i156, %_ZN5Ipopt6Vector4CopyERKS0_.exit151
  %.0.i3.i.i.i154 = phi ptr [ %i.ko, %_ZN5Ipopt6Vector4CopyERKS0_.exit151 ], [ %i.ks, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i156 ] ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i154, i64 8 ; 6 uses
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !14, !noalias !329
  %i.kv = add nsw i32 %i.ku, 1
  store i32 %i.kv, ptr %i.kt, align 8, !tbaa !14, !noalias !329
  %i.kw = load ptr, ptr %i.hs, align 8, !tbaa !16
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.ky = load ptr, ptr %i.kx, align 8
  invoke void %i.ky(ptr noundef nonnull align 8 dereferenceable(205) %i.hs, double noundef %2, ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i154)
          to label %.noexc159 unwind label %bb.bh, !inline_history !250

.noexc159:                                        ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i153
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.hs)
          to label %_ZN5Ipopt6Vector4AxpyEdRKS0_.exit unwind label %bb.bh

_ZN5Ipopt6Vector4AxpyEdRKS0_.exit:                ; preds = %.noexc159
  %i.kz = load i32, ptr %i.kt, align 8, !tbaa !14
  %i.la = add nsw i32 %i.kz, -1                   ; 2 uses
  store i32 %i.la, ptr %i.kt, align 8, !tbaa !14
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %bb.ax, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit162

bb.ax:                                            ; preds = %_ZN5Ipopt6Vector4AxpyEdRKS0_.exit
  %i.lc = load ptr, ptr %.0.i3.i.i.i154, align 8, !tbaa !16
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i154) #20, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit162

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit162:     ; preds = %_ZN5Ipopt6Vector4AxpyEdRKS0_.exit, %bb.ax
  %i.lf = icmp eq ptr %i.ea, %i.hs
  br i1 %i.lf, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit162
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ea, i64 88 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !312
  %i.li = getelementptr inbounds nuw i8, ptr %i.ea, i64 48 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !67
  %.not.i.i163 = icmp eq i32 %i.lh, %i.lj
  br i1 %.not.i.i163, label %._crit_edge.i.i, label %bb.az

._crit_edge.i.i:                                  ; preds = %bb.ay
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  %.pre.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !313
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.lk = load ptr, ptr %i.ea, align 8, !tbaa !16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 48
  %i.lm = load ptr, ptr %i.ll, align 8
  %i.ln = invoke noundef double %i.lm(ptr noundef nonnull align 8 dereferenceable(205) %i.ea)
          to label %.noexc164 unwind label %bb.bf, !inline_history !251 ; 2 uses

.noexc164:                                        ; preds = %bb.az
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  store double %i.ln, ptr %i.lo, align 8, !tbaa !313
  %i.lp = load i32, ptr %i.li, align 8, !tbaa !67
  store i32 %i.lp, ptr %i.lg, align 8, !tbaa !312
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i

_ZNK5Ipopt6Vector4Nrm2Ev.exit.i:                  ; preds = %.noexc164, %._crit_edge.i.i
  %i.lq = phi double [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ln, %.noexc164 ] ; 2 uses
  %i.lr = fmul double %i.lq, %i.lq
  br label %bb.bi

bb.ba:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ea, i64 64 ; 2 uses
  %i.lt = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(205) %i.ea, ptr noundef nonnull align 8 dereferenceable(205) %i.hs)
          to label %.noexc165 unwind label %bb.bf

.noexc165:                                        ; preds = %bb.ba
  br i1 %i.lt, label %.noexc167, label %bb.bb

bb.bb:                                            ; preds = %.noexc165
  %i.lu = load ptr, ptr %i.ea, align 8, !tbaa !16
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  %i.lw = load ptr, ptr %i.lv, align 8
  %i.lx = invoke noundef double %i.lw(ptr noundef nonnull align 8 dereferenceable(205) %i.ea, ptr noundef nonnull align 8 dereferenceable(205) %i.hs)
          to label %.noexc166 unwind label %bb.bf, !inline_history !251

.noexc166:                                        ; preds = %bb.bb
  store double %i.lx, ptr %i.d, align 8, !tbaa !58
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(205) %i.ea, ptr noundef nonnull align 8 dereferenceable(205) %i.hs)
          to label %.noexc167 unwind label %bb.bf

.noexc167:                                        ; preds = %.noexc166, %.noexc165
  %i.ly = load double, ptr %i.d, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %12 = fadd double %i.ly, 0.000000e+00
  br label %bb.bi

bb.bc:                                            ; preds = %bb.a
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit404

bb.bd:                                            ; preds = %bb.b
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit402

bb.be:                                            ; preds = %bb.c
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit400

bb.bf:                                            ; preds = %.noexc355, %bb.he, %bb.hd, %bb.hc, %.noexc332, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit331, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit326, %.noexc313, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit312, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit307, %.noexc294, %bb.fe, %bb.fd, %bb.fc, %.noexc271, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit270, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit265, %.noexc253, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit252, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit247, %.noexc234, %bb.de, %bb.dd, %bb.dc, %.noexc211, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit210, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit205, %.noexc192, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit191, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit186, %.noexc166, %bb.bb, %bb.ba, %bb.az, %.noexc149, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit148, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %.noexc, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit
  %.sroa.0458.0 = phi ptr [ %i.aiq, %bb.hc ], [ %i.aiq, %.noexc355 ], [ %i.aiq, %bb.he ], [ %i.aiq, %bb.hd ], [ %i.aiq, %.noexc332 ], [ %i.aiq, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit331 ], [ %i.aiq, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit326 ], [ %i.aiq, %.noexc313 ], [ %i.aiq, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit312 ], [ %.sroa.0458.3, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit307 ], [ %i.yg, %bb.fc ], [ %i.yg, %.noexc294 ], [ %i.yg, %bb.fe ], [ %i.yg, %bb.fd ], [ %i.yg, %.noexc271 ], [ %i.yg, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit270 ], [ %i.yg, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit265 ], [ %i.yg, %.noexc253 ], [ %i.yg, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit252 ], [ %.sroa.0458.2, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit247 ], [ %i.nx, %bb.dc ], [ %i.nx, %.noexc234 ], [ %i.nx, %bb.de ], [ %i.nx, %bb.dd ], [ %i.nx, %.noexc211 ], [ %i.nx, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit210 ], [ %i.nx, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit205 ], [ %i.nx, %.noexc192 ], [ %i.nx, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit191 ], [ %.sroa.0458.1, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit186 ], [ %i.ea, %bb.az ], [ %i.ea, %.noexc166 ], [ %i.ea, %bb.bb ], [ %i.ea, %bb.ba ], [ %i.ea, %.noexc149 ], [ %i.ea, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit148 ], [ %i.ea, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit ], [ %i.ea, %.noexc ], [ %i.ea, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit ], [ null, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit ]
  %.sroa.0440.0 = phi ptr [ %i.ams, %bb.hc ], [ %i.ams, %.noexc355 ], [ %i.ams, %bb.he ], [ %i.ams, %bb.hd ], [ %i.ams, %.noexc332 ], [ %i.ams, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit331 ], [ %.sroa.0440.3, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit326 ], [ %.sroa.0440.3, %.noexc313 ], [ %.sroa.0440.3, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit312 ], [ %.sroa.0440.3, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit307 ], [ %i.ach, %bb.fc ], [ %i.ach, %.noexc294 ], [ %i.ach, %bb.fe ], [ %i.ach, %bb.fd ], [ %i.ach, %.noexc271 ], [ %i.ach, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit270 ], [ %.sroa.0440.2, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit265 ], [ %.sroa.0440.2, %.noexc253 ], [ %.sroa.0440.2, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit252 ], [ %.sroa.0440.2, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit247 ], [ %i.rx, %bb.dc ], [ %i.rx, %.noexc234 ], [ %i.rx, %bb.de ], [ %i.rx, %bb.dd ], [ %i.rx, %.noexc211 ], [ %i.rx, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit210 ], [ %.sroa.0440.1, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit205 ], [ %.sroa.0440.1, %.noexc192 ], [ %.sroa.0440.1, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit191 ], [ %.sroa.0440.1, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit186 ], [ %i.hs, %bb.az ], [ %i.hs, %.noexc166 ], [ %i.hs, %bb.bb ], [ %i.hs, %bb.ba ], [ %i.hs, %.noexc149 ], [ %i.hs, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit148 ], [ null, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit ], [ null, %.noexc ], [ null, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit ], [ null, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit ]
  %.sroa.0430.0 = phi ptr [ %i.ahr, %bb.hc ], [ %i.ahr, %.noexc355 ], [ %i.ahr, %bb.he ], [ %i.ahr, %bb.hd ], [ %i.ahr, %.noexc332 ], [ %i.ahr, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit331 ], [ %i.ahr, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit326 ], [ %i.ahr, %.noexc313 ], [ %i.ahr, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit312 ], [ %i.ahr, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit307 ], [ %i.xh, %bb.fc ], [ %i.xh, %.noexc294 ], [ %i.xh, %bb.fe ], [ %i.xh, %bb.fd ], [ %i.xh, %.noexc271 ], [ %i.xh, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit270 ], [ %i.xh, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit265 ], [ %i.xh, %.noexc253 ], [ %i.xh, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit252 ], [ %i.xh, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit247 ], [ %i.my, %bb.dc ], [ %i.my, %.noexc234 ], [ %i.my, %bb.de ], [ %i.my, %bb.dd ], [ %i.my, %.noexc211 ], [ %i.my, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit210 ], [ %i.my, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit205 ], [ %i.my, %.noexc192 ], [ %i.my, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit191 ], [ %i.my, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit186 ], [ %i.dn, %bb.az ], [ %i.dn, %.noexc166 ], [ %i.dn, %bb.bb ], [ %i.dn, %bb.ba ], [ %i.dn, %.noexc149 ], [ %i.dn, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit148 ], [ %i.dn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit ], [ %i.dn, %.noexc ], [ %i.dn, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit ], [ %i.dn, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit ]
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit179

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit388.thread: ; preds = %bb.q
  %i.md = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit390

bb.bg:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i137
  %i.me = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mf = load i32, ptr %i.hb, align 8, !tbaa !14
  %i.mg = add nsw i32 %i.mf, -1                   ; 2 uses
  store i32 %i.mg, ptr %i.hb, align 8, !tbaa !14
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit179.thread.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit179.thread

bb.bh:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i153, %.noexc159
  %i.mi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mj = load i32, ptr %i.kt, align 8, !tbaa !14
  %i.mk = add nsw i32 %i.mj, -1                   ; 2 uses
  store i32 %i.mk, ptr %i.kt, align 8, !tbaa !14
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit179.thread.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit179.thread

bb.bi:                                            ; preds = %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i, %.noexc167, %bb.p
  %.sroa.0458.1 = phi ptr [ null, %bb.p ], [ %i.ea, %.noexc167 ], [ %i.ea, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i ] ; 7 uses
  %.sroa.0440.1 = phi ptr [ null, %bb.p ], [ %i.hs, %.noexc167 ], [ %i.hs, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i ] ; 12 uses
  %.sroa.0430.1 = phi ptr [ null, %bb.p ], [ %i.dn, %.noexc167 ], [ %i.dn, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i ] ; 6 uses
  %.028 = phi i32 [ 0, %bb.p ], [ %i.dg, %.noexc167 ], [ %i.dg, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i ] ; 2 uses
  %.0 = phi double [ 0.000000e+00, %bb.p ], [ %12, %.noexc167 ], [ %i.lr, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i ] ; 2 uses
  %i.mm = load ptr, ptr %5, align 8, !tbaa !46
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 56
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !305
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 12
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !307 ; 2 uses
  %i.mr = icmp sgt i32 %i.mq, 0
  br i1 %i.mr, label %bb.bj, label %bb.di

bb.bj:                                            ; preds = %bb.bi
  %i.ms = add nuw nsw i32 %i.mq, %.028
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !29 ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !16
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 120
  %i.mx = load ptr, ptr %i.mw, align 8
  invoke void %i.mx(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.41") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.mu)
          to label %bb.bk unwind label %bb.df

bb.bk:                                            ; preds = %bb.bj
  %i.my = load ptr, ptr %9, align 8, !tbaa !310   ; 21 uses
  %.not.i.i.i182 = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i182, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 2 uses
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !14
  %i.nb = add nsw i32 %i.na, 1
  store i32 %i.nb, ptr %i.mz, align 8, !tbaa !14
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.not.i.i.i.i183 = icmp eq ptr %.sroa.0430.1, null
  br i1 %.not.i.i.i.i183, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSERKS3_.exit184, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.0430.1, i64 8 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !14
  %i.ne = add nsw i32 %i.nd, -1                   ; 2 uses
  store i32 %i.ne, ptr %i.nc, align 8, !tbaa !14
  %i.nf = icmp eq i32 %i.ne, 0
  br i1 %i.nf, label %bb.bo, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSERKS3_.exit184

bb.bo:                                            ; preds = %bb.bn
  %i.ng = load ptr, ptr %.sroa.0430.1, align 8, !tbaa !16
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8
  call void %i.ni(ptr noundef nonnull align 8 dereferenceable(69) %.sroa.0430.1) #20, !inline_history !252
  %.pre546 = load ptr, ptr %9, align 8, !tbaa !310
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSERKS3_.exit184

_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSERKS3_.exit184: ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.nj = phi ptr [ %.pre546, %bb.bo ], [ %i.my, %bb.bn ], [ %i.my, %bb.bm ] ; 4 uses
  %.not.i.i185 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i185, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit186, label %bb.bp

bb.bp:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSERKS3_.exit184
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !14
  %i.nm = add nsw i32 %i.nl, -1                   ; 2 uses
  store i32 %i.nm, ptr %i.nk, align 8, !tbaa !14
  %i.nn = icmp eq i32 %i.nm, 0
  br i1 %i.nn, label %bb.bq, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit186

bb.bq:                                            ; preds = %bb.bp
  %i.no = load ptr, ptr %i.nj, align 8, !tbaa !16
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8
  call void %i.nq(ptr noundef nonnull align 8 dereferenceable(69) %i.nj) #20, !inline_history !234
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit186

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit186:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEEaSERKS3_.exit184, %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.nr = load ptr, ptr %5, align 8, !tbaa !46
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 56
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !305 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !16
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8
  %i.nx = invoke noundef ptr %i.nw(ptr noundef nonnull align 8 dereferenceable(16) %i.nt)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit188 unwind label %bb.bf, !inline_history !235 ; 53 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit188:              ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit186
  %.not.i.i189 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i189, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit188
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !14
  %i.oa = add nsw i32 %i.nz, 1
  store i32 %i.oa, ptr %i.ny, align 8, !tbaa !14
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %_ZNK5Ipopt6Vector7MakeNewEv.exit188
  %.not.i.i.i190 = icmp eq ptr %.sroa.0458.1, null
  br i1 %.not.i.i.i190, label %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit191, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0458.1, i64 8 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !14
  %i.od = add nsw i32 %i.oc, -1                   ; 2 uses
  store i32 %i.od, ptr %i.ob, align 8, !tbaa !14
  %i.oe = icmp eq i32 %i.od, 0
  br i1 %i.oe, label %bb.bu, label %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit191

bb.bu:                                            ; preds = %bb.bt
  %i.of = load ptr, ptr %.sroa.0458.1, align 8, !tbaa !16
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oh = load ptr, ptr %i.og, align 8
  call void %i.oh(ptr noundef nonnull align 8 dereferenceable(205) %.sroa.0458.1) #20, !inline_history !253
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit191

_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit191:   ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.oi = load ptr, ptr %5, align 8, !tbaa !46    ; 16 uses
  %i.oj = load ptr, ptr %i.nx, align 8, !tbaa !16
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8
  invoke void %i.ol(ptr noundef nonnull align 8 dereferenceable(205) %i.nx, ptr noundef nonnull align 8 dereferenceable(205) %i.oi)
          to label %.noexc192 unwind label %bb.bf, !inline_history !236

.noexc192:                                        ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit191
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.nx)
          to label %.noexc193 unwind label %bb.bf

.noexc193:                                        ; preds = %.noexc192
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 48
  %i.on = load i32, ptr %i.om, align 8, !tbaa !67 ; 7 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oi, i64 88
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !312
  %i.oq = icmp eq i32 %i.on, %i.op
  br i1 %i.oq, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.noexc193
  %i.or = getelementptr inbounds nuw i8, ptr %i.nx, i64 48
  %i.os = load i32, ptr %i.or, align 8, !tbaa !67
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nx, i64 88
  store i32 %i.os, ptr %i.ot, align 8, !tbaa !312
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oi, i64 96
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !313
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nx, i64 96
  store double %i.ov, ptr %i.ow, align 8, !tbaa !313
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.noexc193
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oi, i64 104
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !314
  %i.oz = icmp eq i32 %i.on, %i.oy
  br i1 %i.oz, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.pa = getelementptr inbounds nuw i8, ptr %i.nx, i64 48
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !67
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nx, i64 104
  store i32 %i.pb, ptr %i.pc, align 8, !tbaa !314
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oi, i64 112
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !315
  %i.pf = getelementptr inbounds nuw i8, ptr %i.nx, i64 112
  store double %i.pe, ptr %i.pf, align 8, !tbaa !315
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oi, i64 120
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !316
  %i.pi = icmp eq i32 %i.on, %i.ph
  br i1 %i.pi, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nx, i64 48
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !67
  %i.pl = getelementptr inbounds nuw i8, ptr %i.nx, i64 120
  store i32 %i.pk, ptr %i.pl, align 8, !tbaa !316
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oi, i64 128
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !317
  %i.po = getelementptr inbounds nuw i8, ptr %i.nx, i64 128
  store double %i.pn, ptr %i.po, align 8, !tbaa !317
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oi, i64 136
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !318
  %i.pr = icmp eq i32 %i.on, %i.pq
  br i1 %i.pr, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ps = getelementptr inbounds nuw i8, ptr %i.nx, i64 48
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !67
  %i.pu = getelementptr inbounds nuw i8, ptr %i.nx, i64 136
  store i32 %i.pt, ptr %i.pu, align 8, !tbaa !318
  %i.pv = getelementptr inbounds nuw i8, ptr %i.oi, i64 144
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !319
  %i.px = getelementptr inbounds nuw i8, ptr %i.nx, i64 144
  store double %i.pw, ptr %i.px, align 8, !tbaa !319
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.py = getelementptr inbounds nuw i8, ptr %i.oi, i64 152
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !320
  %i.qa = icmp eq i32 %i.on, %i.pz
  br i1 %i.qa, label %bb.cd, label %bb.ce

end_hunk_0
