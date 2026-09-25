Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 368
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@ChooseLeaf:bb.a
bb.ai:                                            ; preds = %bb.ah, %.loopexit178
  %.2.i90 = phi double [ %i.oz, %bb.ah ], [ 1.000000e+00, %.loopexit178 ]
  %i.pa = load float, ptr %i.ab, align 4, !tbaa !733
  %i.pb = load float, ptr %i.ac, align 8, !tbaa !733
  %i.pc = fsub float %i.pa, %i.pb
  %i.pd = fpext float %i.pc to double
  %i.pe = fmul double %.2.i90, %i.pd
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit178
  %.3.i91 = phi double [ 1.000000e+00, %.loopexit178 ], [ %i.pe, %bb.ai ]
  %i.pf = load float, ptr %i.ad, align 4, !tbaa !733
  %i.pg = load float, ptr %i.u, align 8, !tbaa !733
  %i.ph = fsub float %i.pf, %i.pg
  %i.pi = fpext float %i.ph to double
  %i.pj = fmul double %.3.i91, %i.pi
  br label %cellArea.exit94

cellUnion.exit:                                   ; preds = %.preheader57.i, %middle.block175
  switch i8 %i.hk, label %bb.ao [
    i8 5, label %bb.ak
    i8 4, label %bb.al
    i8 3, label %bb.am
    i8 2, label %bb.an
  ]

bb.ak:                                            ; preds = %cellUnion.exit
  %i.pk = load i32, ptr %i.v, align 4, !tbaa !733
  %i.pl = sext i32 %i.pk to i64
  %i.pm = load i32, ptr %i.w, align 8, !tbaa !733
  %i.pn = sext i32 %i.pm to i64
  %i.po = sub nsw i64 %i.pl, %i.pn
  %i.pp = sitofp i64 %i.po to double
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %cellUnion.exit
  %.4.i89 = phi double [ %i.pp, %bb.ak ], [ 1.000000e+00, %cellUnion.exit ]
  %i.pq = load i32, ptr %i.x, align 4, !tbaa !733
  %i.pr = sext i32 %i.pq to i64
  %i.ps = load i32, ptr %i.y, align 8, !tbaa !733
  %i.pt = sext i32 %i.ps to i64
  %i.pu = sub nsw i64 %i.pr, %i.pt
  %i.pv = sitofp i64 %i.pu to double
  %i.pw = fmul nnan double %.4.i89, %i.pv
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %cellUnion.exit
  %.5.i88 = phi double [ %i.pw, %bb.al ], [ 1.000000e+00, %cellUnion.exit ]
  %i.px = load i32, ptr %i.z, align 4, !tbaa !733
  %i.py = sext i32 %i.px to i64
  %i.pz = load i32, ptr %i.aa, align 8, !tbaa !733
  %i.qa = sext i32 %i.pz to i64
  %i.qb = sub nsw i64 %i.py, %i.qa
  %i.qc = sitofp i64 %i.qb to double
  %i.qd = fmul double %.5.i88, %i.qc
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %cellUnion.exit
  %.6.i85 = phi double [ %i.qd, %bb.am ], [ 1.000000e+00, %cellUnion.exit ]
  %i.qe = load i32, ptr %i.ab, align 4, !tbaa !733
  %i.qf = sext i32 %i.qe to i64
  %i.qg = load i32, ptr %i.ac, align 8, !tbaa !733
  %i.qh = sext i32 %i.qg to i64
  %i.qi = sub nsw i64 %i.qf, %i.qh
  %i.qj = sitofp i64 %i.qi to double
  %i.qk = fmul double %.6.i85, %i.qj
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %cellUnion.exit
  %.7.i86 = phi double [ 1.000000e+00, %cellUnion.exit ], [ %i.qk, %bb.an ]
  %i.ql = load i32, ptr %i.ad, align 4, !tbaa !733
  %i.qm = sext i32 %i.ql to i64
  %i.qn = load i32, ptr %i.u, align 8, !tbaa !733
  %i.qo = sext i32 %i.qn to i64
  %i.qp = sub nsw i64 %i.qm, %i.qo
  %i.qq = sitofp i64 %i.qp to double
  %i.qr = fmul double %.7.i86, %i.qq
  br label %cellArea.exit94

cellArea.exit94:                                  ; preds = %bb.aj, %bb.ao
  %.8.i74151 = phi double [ %i.nj, %bb.aj ], [ %i.my, %bb.ao ] ; 3 uses
  %.8.i87 = phi double [ %i.pj, %bb.aj ], [ %i.qr, %bb.ao ]
  %i.qs = fsub double %.8.i87, %.8.i74151         ; 3 uses
  %i.qt = icmp eq i64 %indvars.iv135, 0
  %i.qu = fcmp olt double %i.qs, %.042117
  %or.cond59 = select i1 %i.qt, i1 true, i1 %i.qu
  br i1 %or.cond59, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %cellArea.exit94
  %i.qv = fcmp oeq double %i.qs, %.042117
  %i.qw = fcmp olt double %.8.i74151, %.3118
  %or.cond60 = select i1 %i.qv, i1 %i.qw, i1 false
  br i1 %or.cond60, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %cellArea.exit94
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.451 = phi i64 [ %i.jj, %bb.aq ], [ %.350116, %bb.ap ] ; 2 uses
  %.143 = phi double [ %i.qs, %bb.aq ], [ %.042117, %bb.ap ]
  %.4 = phi double [ %.8.i74151, %bb.aq ], [ %.3118, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %.loopexit, label %bb.t, !llvm.loop !6651

.loopexit:                                        ; preds = %bb.ar, %bb.c, %._crit_edge
  %.5 = phi i64 [ %.249, %._crit_edge ], [ 0, %bb.c ], [ %.451, %bb.ar ]
  %i.qx = call fastcc i32 @nodeAcquire(ptr noundef %0, i64 noundef %.5, ptr noundef %i.ae, ptr noundef nonnull %i.b) ; 2 uses
  %i.qy = tail call fastcc i32 @nodeRelease(ptr noundef %0, ptr noundef %i.ae) ; 0 uses
  %i.qz = load ptr, ptr %i.b, align 8, !tbaa !2912 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  %i.ra = add nuw nsw i32 %.054122, 1
  %i.rb = icmp eq i32 %i.qx, 0
  br i1 %i.rb, label %bb.b, label %.critedge, !llvm.loop !6652

.critedge:                                        ; preds = %bb.b, %.loopexit, %bb.a
  %.lcssa = phi ptr [ %.promoted, %bb.a ], [ %i.qz, %.loopexit ], [ %i.ae, %bb.b ]
  %.055.lcssa = phi i32 [ %i.c, %bb.a ], [ %i.qx, %.loopexit ], [ 0, %bb.b ]
  store ptr %.lcssa, ptr %3, align 8, !tbaa !2912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i32 %.055.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @rtreeInsertCell(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.RtreeCell, align 8          ; 16 uses
  %5 = alloca %struct.RtreeCell, align 8          ; 16 uses
  %6 = alloca %struct.RtreeCell, align 8          ; 8 uses
  %7 = alloca %struct.RtreeCell, align 8          ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.b, label %bb.b, label %nodeHashLookup.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !2939   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = trunc i64 %i.c to i32
  %i.f = urem i32 %i.e, 97
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  %.07.i = load ptr, ptr %i.h, align 8, !tbaa !2912 ; 2 uses
  %.not8.i = icmp eq ptr %.07.i, null
  br i1 %.not8.i, label %nodeHashLookup.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.09.i = phi ptr [ %.0.i, %bb.c ], [ %.07.i, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !2956
  %.not6.i = icmp eq i64 %i.j, %i.c
  br i1 %.not6.i, label %nodeHashLookup.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i, i64 32
  %.0.i = load ptr, ptr %i.k, align 8, !tbaa !2912 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %nodeHashLookup.exit.thread, label %.lr.ph.i, !llvm.loop !530

nodeHashLookup.exit:                              ; preds = %.lr.ph.i
  %i.l = load ptr, ptr %.09.i, align 8, !tbaa !2957
  %i.m = tail call fastcc i32 @nodeRelease(ptr noundef %0, ptr noundef %i.l) ; 0 uses
  %.not.i30 = icmp eq ptr %1, null
  br i1 %.not.i30, label %nodeReference.exit, label %bb.d

bb.d:                                             ; preds = %nodeHashLookup.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !2955
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !2955
  br label %nodeReference.exit

nodeReference.exit:                               ; preds = %nodeHashLookup.exit, %bb.d
  store ptr %1, ptr %.09.i, align 8, !tbaa !2957
  br label %nodeHashLookup.exit.thread

nodeHashLookup.exit.thread:                       ; preds = %bb.c, %bb.b, %nodeReference.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 12 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !2946
  %i.s = add nsw i32 %i.r, -4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 6 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !2918
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = sdiv i32 %i.s, %i.v                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2917 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %.val.i = load i8, ptr %i.z, align 1, !tbaa !733
  %i.aa = getelementptr i8, ptr %i.y, i64 3
  %.val13.i = load i8, ptr %i.aa, align 1, !tbaa !733
  %i.ab = zext i8 %.val.i to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = zext i8 %.val13.i to i32
  %i.ae = or disjoint i32 %i.ac, %i.ad            ; 4 uses
  %i.af = icmp slt i32 %i.ae, %i.w
  br i1 %i.af, label %bb.e, label %nodeInsertCell.exit

bb.e:                                             ; preds = %nodeHashLookup.exit.thread
  %i.ag = mul nuw nsw i32 %i.ae, %i.v
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr i8, ptr %i.y, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %8 = load <8 x i8>, ptr %2, align 8, !tbaa !2939
  %9 = shufflevector <8 x i8> %8, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %9, ptr %i.aj, align 1, !tbaa !733
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !2899
  %.not.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i, label %nodeOverwriteCell.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.am = getelementptr i8, ptr %i.ai, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %.015.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.az, %bb.f ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.i
  %.val.i.i = load i32, ptr %i.ao, align 4, !tbaa !733 ; 4 uses
  %i.ap = lshr i32 %.val.i.i, 24
  %i.aq = trunc nuw i32 %i.ap to i8
  store i8 %i.aq, ptr %.015.i.i, align 1, !tbaa !733
  %i.ar = lshr i32 %.val.i.i, 16
  %i.as = trunc i32 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !733
  %i.au = lshr i32 %.val.i.i, 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 2
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !733
  %i.ax = trunc i32 %.val.i.i to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 3
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !733
  %i.az = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ba = load i8, ptr %i.ak, align 1, !tbaa !2899
  %i.bb = zext i8 %i.ba to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next.i.i, %i.bb
  br i1 %i.bc, label %bb.f, label %nodeOverwriteCell.exit.i, !llvm.loop !534

nodeOverwriteCell.exit.i:                         ; preds = %bb.f, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !2917 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = add nuw nsw i32 %i.ae, 1                ; 2 uses
  %i.bh = lshr i32 %i.bg, 8
  %i.bi = trunc i32 %i.bh to i8
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !733
  %i.bj = trunc i32 %i.bg to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !733
  store i32 1, ptr %i.bd, align 4, !tbaa !2958
  br label %nodeInsertCell.exit

nodeInsertCell.exit:                              ; preds = %nodeHashLookup.exit.thread, %nodeOverwriteCell.exit.i
  %.not = icmp eq i32 %i.ae, %i.w
  br i1 %.not, label %bb.g, label %bb.ca

bb.g:                                             ; preds = %nodeInsertCell.exit
  %i.bl = load ptr, ptr %i.x, align 8, !tbaa !2917 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %.val144.i = load i8, ptr %i.bm, align 1, !tbaa !733
  %i.bn = getelementptr i8, ptr %i.bl, i64 3
  %.val145.i = load i8, ptr %i.bn, align 1, !tbaa !733
  %i.bo = zext i8 %.val144.i to i32
  %i.bp = shl nuw nsw i32 %i.bo, 8                ; 3 uses
  %i.bq = zext i8 %.val145.i to i32               ; 3 uses
  %i.br = or disjoint i32 %i.bp, %i.bq            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  %i.bs = add nuw nsw i32 %i.br, 1                ; 5 uses
  %i.bt = zext nneg i32 %i.bs to i64              ; 6 uses
  %i.bu = tail call i32 @sqlite3_initialize(), !inline_history !6653
  %.not.i65 = icmp eq i32 %i.bu, 0
  br i1 %.not.i65, label %sqlite3_malloc64.exit, label %SplitNode.exit

sqlite3_malloc64.exit:                            ; preds = %bb.g
  %i.bv = mul nuw nsw i64 %i.bt, 52
  %i.bw = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.bv), !inline_history !6653 ; 27 uses
  %.not.i31 = icmp eq ptr %i.bw, null
  br i1 %.not.i31, label %SplitNode.exit, label %bb.h

bb.h:                                             ; preds = %sqlite3_malloc64.exit
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %i.bt
  %i.by = shl nuw nsw i64 %i.bt, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bx, i8 0, i64 %i.by, i1 false)
  %.not118 = icmp eq i32 %i.br, 0
  br i1 %.not118, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.ca = or disjoint i32 %i.bp, %i.bq
  %wide.trip.count = zext nneg i32 %i.ca to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %nodeGetCell.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %nodeGetCell.exit ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %indvars.iv ; 2 uses
  %.val148.i = load ptr, ptr %i.x, align 8, !tbaa !2917
  %.val.i62 = load i8, ptr %i.t, align 1, !tbaa !2918
  %i.cc = zext i8 %.val.i62 to i64
  %i.cd = mul nuw nsw i64 %indvars.iv, %i.cc
  %i.ce = getelementptr i8, ptr %.val148.i, i64 %i.cd ; 9 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 4
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !733
  %i.ch = zext i8 %i.cg to i64
  %i.ci = shl nuw i64 %i.ch, 56
  %i.cj = getelementptr i8, ptr %i.ce, i64 5
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !733
  %i.cl = zext i8 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 48
  %i.cn = or disjoint i64 %i.cm, %i.ci
  %i.co = getelementptr i8, ptr %i.ce, i64 6
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !733
  %i.cq = zext i8 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 40
  %i.cs = or disjoint i64 %i.cn, %i.cr
  %i.ct = getelementptr i8, ptr %i.ce, i64 7
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !733
  %i.cv = zext i8 %i.cu to i64
  %i.cw = shl nuw nsw i64 %i.cv, 32
  %i.cx = or disjoint i64 %i.cs, %i.cw
  %i.cy = getelementptr i8, ptr %i.ce, i64 8
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !733
  %i.da = zext i8 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 24
  %i.dc = or disjoint i64 %i.cx, %i.db
  %i.dd = getelementptr i8, ptr %i.ce, i64 9
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !733
  %i.df = zext i8 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 16
  %i.dh = or disjoint i64 %i.dc, %i.dg
  %i.di = getelementptr i8, ptr %i.ce, i64 10
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !733
  %i.dk = zext i8 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, 8
  %i.dm = or disjoint i64 %i.dh, %i.dl
  %i.dn = getelementptr i8, ptr %i.ce, i64 11
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !733
  %i.dp = zext i8 %i.do to i64
  %i.dq = add nuw i64 %i.dm, %i.dp
  store i64 %i.dq, ptr %i.cb, align 8, !tbaa !2939
  %i.dr = getelementptr i8, ptr %i.ce, i64 12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.i63 = phi i64 [ %indvars.iv.next.i64, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %.017.i = phi ptr [ %i.fe, %bb.j ], [ %i.dr, %bb.i ] ; 9 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.i63 ; 2 uses
  %i.du = load i8, ptr %.017.i, align 1, !tbaa !733
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw i32 %i.dv, 24
  %i.dx = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !733
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 16
  %i.eb = or disjoint i32 %i.ea, %i.dw
  %i.ec = getelementptr inbounds nuw i8, ptr %.017.i, i64 2
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !733
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 8
  %i.eg = or disjoint i32 %i.eb, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %.017.i, i64 3
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !733
  %i.ej = zext i8 %i.ei to i32
  %i.ek = or disjoint i32 %i.eg, %i.ej
  store i32 %i.ek, ptr %i.dt, align 4, !tbaa !733
  %i.el = getelementptr inbounds nuw i8, ptr %.017.i, i64 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.en = load i8, ptr %i.el, align 1, !tbaa !733
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw i32 %i.eo, 24
  %i.eq = getelementptr inbounds nuw i8, ptr %.017.i, i64 5
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !733
  %i.es = zext i8 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 16
  %i.eu = or disjoint i32 %i.et, %i.ep
  %i.ev = getelementptr inbounds nuw i8, ptr %.017.i, i64 6
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !733
  %i.ex = zext i8 %i.ew to i32
  %i.ey = shl nuw nsw i32 %i.ex, 8
  %i.ez = or disjoint i32 %i.eu, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %.017.i, i64 7
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !733
  %i.fc = zext i8 %i.fb to i32
  %i.fd = or disjoint i32 %i.ez, %i.fc
  store i32 %i.fd, ptr %i.em, align 4, !tbaa !733
  %i.fe = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i63, 2 ; 2 uses
  %i.ff = load i8, ptr %i.bz, align 1, !tbaa !2899
  %i.fg = zext i8 %i.ff to i64
  %i.fh = icmp samesign ult i64 %indvars.iv.next.i64, %i.fg
  br i1 %i.fh, label %bb.j, label %nodeGetCell.exit, !llvm.loop !524

nodeGetCell.exit:                                 ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !6654

._crit_edge:                                      ; preds = %nodeGetCell.exit, %bb.h
  %.val149.i = load i32, ptr %i.q, align 8, !tbaa !2946
  %i.fi = load ptr, ptr %i.x, align 8, !tbaa !2917
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  %i.fk = add nsw i32 %.val149.i, -2
  %i.fl = sext i32 %i.fk to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fj, i8 0, i64 %i.fl, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  store i32 1, ptr %i.fm, align 4, !tbaa !2958
  %i.fn = zext nneg i32 %i.br to i64              ; 3 uses
  %i.fo = getelementptr inbounds nuw [48 x i8], ptr %i.bw, i64 %i.fn
end_hunk_0
begin_hunk_1_@rtreeInsertCell:bb.a
  %i.tx = load float, ptr %i.kf, align 4, !tbaa !733
  %i.ty = load float, ptr %i.kg, align 8, !tbaa !733
  %i.tz = fsub float %i.tx, %i.ty
  %i.ua = fpext float %i.tz to double
  %i.ub = fmul double %.0.i179.i, %i.ua
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %.1.i178.i = phi double [ %i.ub, %bb.ai ], [ 1.000000e+00, %bb.ag ]
  %i.uc = load float, ptr %i.kh, align 4, !tbaa !733
  %i.ud = load float, ptr %i.ki, align 8, !tbaa !733
  %i.ue = fsub float %i.uc, %i.ud
  %i.uf = fpext float %i.ue to double
  %i.ug = fmul double %.1.i178.i, %i.uf
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.2.i176.i = phi double [ %i.ug, %bb.aj ], [ 1.000000e+00, %bb.ag ]
  %i.uh = load float, ptr %i.kj, align 4, !tbaa !733
  %i.ui = load float, ptr %i.kk, align 8, !tbaa !733
  %i.uj = fsub float %i.uh, %i.ui
  %i.uk = fpext float %i.uj to double
  %i.ul = fmul double %.2.i176.i, %i.uk
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag
  %.3.i177.i = phi double [ 1.000000e+00, %bb.ag ], [ %i.ul, %bb.ak ]
  %i.um = load float, ptr %i.kl, align 4, !tbaa !733
  %i.un = load float, ptr %i.js, align 8, !tbaa !733
  %i.uo = fsub float %i.um, %i.un
  %i.up = fpext float %i.uo to double
  %i.uq = fmul double %.3.i177.i, %i.up
  br label %cellArea.exit180.i

bb.am:                                            ; preds = %bb.af, %cellOverlap.exit.thread.i
  %.7.i.i = phi double [ 1.000000e+00, %cellOverlap.exit.thread.i ], [ %i.tn, %bb.af ]
  %i.ur = load i32, ptr %i.kc, align 4, !tbaa !733
  %i.us = sext i32 %i.ur to i64
  %i.ut = load i32, ptr %i.jt, align 8, !tbaa !733
  %i.uu = sext i32 %i.ut to i64
  %i.uv = sub nsw i64 %i.us, %i.uu
  %i.uw = sitofp i64 %i.uv to double
  %i.ux = fmul double %.7.i.i, %i.uw
  switch i8 %i.ls, label %bb.ar [
    i8 5, label %bb.an
    i8 4, label %bb.ao
    i8 3, label %bb.ap
    i8 2, label %bb.aq
  ]

bb.an:                                            ; preds = %bb.am
  %i.uy = load i32, ptr %i.kd, align 4, !tbaa !733
  %i.uz = sext i32 %i.uy to i64
  %i.va = load i32, ptr %i.ke, align 8, !tbaa !733
  %i.vb = sext i32 %i.va to i64
  %i.vc = sub nsw i64 %i.uz, %i.vb
  %i.vd = sitofp i64 %i.vc to double
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.4.i175.i = phi double [ %i.vd, %bb.an ], [ 1.000000e+00, %bb.am ]
  %i.ve = load i32, ptr %i.kf, align 4, !tbaa !733
  %i.vf = sext i32 %i.ve to i64
  %i.vg = load i32, ptr %i.kg, align 8, !tbaa !733
  %i.vh = sext i32 %i.vg to i64
  %i.vi = sub nsw i64 %i.vf, %i.vh
  %i.vj = sitofp i64 %i.vi to double
  %i.vk = fmul nnan double %.4.i175.i, %i.vj
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %.5.i174.i = phi double [ %i.vk, %bb.ao ], [ 1.000000e+00, %bb.am ]
  %i.vl = load i32, ptr %i.kh, align 4, !tbaa !733
  %i.vm = sext i32 %i.vl to i64
  %i.vn = load i32, ptr %i.ki, align 8, !tbaa !733
  %i.vo = sext i32 %i.vn to i64
  %i.vp = sub nsw i64 %i.vm, %i.vo
  %i.vq = sitofp i64 %i.vp to double
  %i.vr = fmul double %.5.i174.i, %i.vq
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %.6.i171.i = phi double [ %i.vr, %bb.ap ], [ 1.000000e+00, %bb.am ]
  %i.vs = load i32, ptr %i.kj, align 4, !tbaa !733
  %i.vt = sext i32 %i.vs to i64
  %i.vu = load i32, ptr %i.kk, align 8, !tbaa !733
  %i.vv = sext i32 %i.vu to i64
  %i.vw = sub nsw i64 %i.vt, %i.vv
  %i.vx = sitofp i64 %i.vw to double
  %i.vy = fmul double %.6.i171.i, %i.vx
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.am
  %.7.i172.i = phi double [ 1.000000e+00, %bb.am ], [ %i.vy, %bb.aq ]
  %i.vz = load i32, ptr %i.kl, align 4, !tbaa !733
  %i.wa = sext i32 %i.vz to i64
  %i.wb = load i32, ptr %i.js, align 8, !tbaa !733
  %i.wc = sext i32 %i.wb to i64
  %i.wd = sub nsw i64 %i.wa, %i.wc
  %i.we = sitofp i64 %i.wd to double
  %i.wf = fmul double %.7.i172.i, %i.we
  br label %cellArea.exit180.i

cellArea.exit180.i:                               ; preds = %bb.ar, %bb.al
  %.us-phi.i169291.i = phi double [ %.us-phi.i169.i75, %bb.al ], [ %.us-phi.i169292.i, %bb.ar ] ; 3 uses
  %i.wg = phi double [ %i.rs, %bb.al ], [ %i.sm, %bb.ar ] ; 3 uses
  %.8.i195.i = phi double [ %i.ts, %bb.al ], [ %i.ux, %bb.ar ]
  %.8.i173.i = phi double [ %i.uq, %bb.al ], [ %i.wf, %bb.ar ]
  %i.wh = fadd double %.8.i195.i, %.8.i173.i      ; 2 uses
  %i.wi = icmp eq i64 %indvars.iv257.i, %i.ks
  %i.wj = fcmp olt double %.us-phi.i169291.i, %.0126215.i
  %or.cond.i42 = select i1 %i.wi, i1 true, i1 %i.wj
  br i1 %or.cond.i42, label %bb.at, label %bb.as

bb.as:                                            ; preds = %cellArea.exit180.i
  %i.wk = fcmp oeq double %.us-phi.i169291.i, %.0126215.i
  %i.wl = fcmp olt double %i.wh, %.0124216.i
  %or.cond142.i = select i1 %i.wk, i1 %i.wl, i1 false
  br i1 %or.cond142.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %cellArea.exit180.i
  %i.wm = trunc nsw i64 %indvars.iv257.i to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.1127.i = phi double [ %.us-phi.i169291.i, %bb.at ], [ %.0126215.i, %bb.as ]
  %.1125.i = phi double [ %i.wh, %bb.at ], [ %.0124216.i, %bb.as ]
  %.1.i43 = phi i32 [ %i.wm, %bb.at ], [ %.0123217.i, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  %indvars.iv.next258.i = add nsw i64 %indvars.iv257.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next258.i to i32
  %exitcond260.not.i = icmp eq i32 %i.kt, %lftr.wideiv.i
  br i1 %exitcond260.not.i, label %._crit_edge221.i, label %bb.t, !llvm.loop !6672

._crit_edge221.i:                                 ; preds = %bb.au
  %i.wn = icmp eq i64 %indvars.iv261.i, 0
  %i.wo = fcmp olt double %i.wg, %.0130227.i
  %or.cond143.i = select i1 %i.wn, i1 true, i1 %i.wo ; 3 uses
  %i.wp = trunc nuw nsw i64 %indvars.iv261.i to i32
  %.1135.i = select i1 %or.cond143.i, i32 %i.wp, i32 %.0134225.i ; 2 uses
  %.1133.i = select i1 %or.cond143.i, i32 %.1.i43, i32 %.0132226.i ; 2 uses
  %.1131.i = select i1 %or.cond143.i, double %i.wg, double %.0130227.i
  %indvars.iv.next262.i = add nuw nsw i64 %indvars.iv261.i, 1 ; 2 uses
  %exitcond265.not.i = icmp eq i64 %indvars.iv.next262.i, %i.lt
  br i1 %exitcond265.not.i, label %._crit_edge229.loopexit242.i, label %.lr.ph220.i, !llvm.loop !6673

._crit_edge229.loopexit242.i:                     ; preds = %._crit_edge221.i
  %i.wq = zext nneg i32 %.1135.i to i64
  %i.wr = sext i32 %.1133.i to i64
  br label %._crit_edge229.i

._crit_edge229.i:                                 ; preds = %.lr.ph228.i, %._crit_edge229.loopexit242.i, %.preheader.i, %bb.s
  %.0134.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %bb.s ], [ %i.wq, %._crit_edge229.loopexit242.i ], [ 0, %.lr.ph228.i ]
  %.0132.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %bb.s ], [ %i.wr, %._crit_edge229.loopexit242.i ], [ 0, %.lr.ph228.i ] ; 2 uses
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.0134.lcssa.i ; 2 uses
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !786 ; 2 uses
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !570
  %i.wv = sext i32 %i.wu to i64
  %i.ww = getelementptr inbounds [48 x i8], ptr %i.bw, i64 %i.wv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %i.ww, i64 48, i1 false)
  %i.wx = getelementptr inbounds [4 x i8], ptr %i.wt, i64 %.0132.lcssa.i
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !570
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds [48 x i8], ptr %i.bw, i64 %i.wz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.xa, i64 48, i1 false)
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 3 uses
  br label %bb.av

bb.av:                                            ; preds = %cellUnion.exit189.i, %._crit_edge229.i
  %indvars.iv268.i = phi i64 [ 0, %._crit_edge229.i ], [ %indvars.iv.next269.i, %cellUnion.exit189.i ] ; 3 uses
  %i.xd = icmp slt i64 %indvars.iv268.i, %.0132.lcssa.i ; 2 uses
  %i.xe = select i1 %i.xd, ptr %.0112.i, ptr %.0110.i ; 2 uses
  %i.xf = load ptr, ptr %i.ws, align 8, !tbaa !786
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.xf, i64 %indvars.iv268.i
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !570
  %i.xi = sext i32 %i.xh to i64
  %i.xj = getelementptr inbounds [48 x i8], ptr %i.bw, i64 %i.xi ; 3 uses
  %i.xk = load i32, ptr %i.q, align 8, !tbaa !2946
  %i.xl = add nsw i32 %i.xk, -4
  %i.xm = load i8, ptr %i.t, align 1, !tbaa !2918
  %i.xn = zext i8 %i.xm to i32                    ; 2 uses
  %i.xo = sdiv i32 %i.xl, %i.xn
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xe, i64 24 ; 2 uses
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !2917 ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 2
  %.val.i.i44 = load i8, ptr %i.xr, align 1, !tbaa !733
  %i.xs = getelementptr i8, ptr %i.xq, i64 3
  %.val13.i.i = load i8, ptr %i.xs, align 1, !tbaa !733
  %i.xt = zext i8 %.val.i.i44 to i32
  %i.xu = shl nuw nsw i32 %i.xt, 8
  %i.xv = zext i8 %.val13.i.i to i32
  %i.xw = or disjoint i32 %i.xu, %i.xv            ; 3 uses
  %i.xx = icmp slt i32 %i.xw, %i.xo
  br i1 %i.xx, label %bb.aw, label %nodeInsertCell.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.xy = mul nuw nsw i32 %i.xw, %i.xn
  %i.xz = zext nneg i32 %i.xy to i64
  %i.ya = getelementptr i8, ptr %i.xq, i64 %i.xz  ; 2 uses
  %i.yb = getelementptr i8, ptr %i.ya, i64 4
  %10 = load <8 x i8>, ptr %i.xj, align 8, !tbaa !2939
  %11 = shufflevector <8 x i8> %10, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %11, ptr %i.yb, align 1, !tbaa !733
  %i.yc = load i8, ptr %i.xc, align 1, !tbaa !2899
  %.not.i.i.i = icmp eq i8 %i.yc, 0
  br i1 %.not.i.i.i, label %nodeOverwriteCell.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aw
  %i.yd = getelementptr i8, ptr %i.ya, i64 12
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ax ] ; 2 uses
  %.015.i.i.i = phi ptr [ %i.yd, %.lr.ph.i.i.i ], [ %i.yq, %bb.ax ] ; 5 uses
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv.i.i.i
  %.val.i.i.i = load i32, ptr %i.yf, align 4, !tbaa !733 ; 4 uses
  %i.yg = lshr i32 %.val.i.i.i, 24
  %i.yh = trunc nuw i32 %i.yg to i8
  store i8 %i.yh, ptr %.015.i.i.i, align 1, !tbaa !733
  %i.yi = lshr i32 %.val.i.i.i, 16
  %i.yj = trunc i32 %i.yi to i8
  %i.yk = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 1
  store i8 %i.yj, ptr %i.yk, align 1, !tbaa !733
  %i.yl = lshr i32 %.val.i.i.i, 8
  %i.ym = trunc i32 %i.yl to i8
  %i.yn = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 2
  store i8 %i.ym, ptr %i.yn, align 1, !tbaa !733
  %i.yo = trunc i32 %.val.i.i.i to i8
  %i.yp = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 3
  store i8 %i.yo, ptr %i.yp, align 1, !tbaa !733
  %i.yq = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.yr = load i8, ptr %i.xc, align 1, !tbaa !2899
  %i.ys = zext i8 %i.yr to i64
  %i.yt = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.ys
  br i1 %i.yt, label %bb.ax, label %nodeOverwriteCell.exit.i.i, !llvm.loop !534

nodeOverwriteCell.exit.i.i:                       ; preds = %bb.ax, %bb.aw
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xe, i64 20
  %i.yv = load ptr, ptr %i.xp, align 8, !tbaa !2917 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 2
  %i.yx = add nuw nsw i32 %i.xw, 1                ; 2 uses
  %i.yy = lshr i32 %i.yx, 8
  %i.yz = trunc i32 %i.yy to i8
  store i8 %i.yz, ptr %i.yw, align 1, !tbaa !733
  %i.za = trunc i32 %i.yx to i8
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yv, i64 3
  store i8 %i.za, ptr %i.zb, align 1, !tbaa !733
  store i32 1, ptr %i.yu, align 4, !tbaa !2958
  br label %nodeInsertCell.exit.i

nodeInsertCell.exit.i:                            ; preds = %nodeOverwriteCell.exit.i.i, %bb.av
  %i.zc = load i8, ptr %i.xb, align 2, !tbaa !2935
  %i.zd = icmp eq i8 %i.zc, 0
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.xd, ptr %6, ptr %7
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8 ; 5 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.xj, i64 8 ; 5 uses
  %i.zf = load i8, ptr %i.xc, align 1, !tbaa !2899 ; 2 uses
  %i.zg = zext i8 %i.zf to i64                    ; 3 uses
  %i.zh = tail call i64 @llvm.umax.i64(i64 %i.zg, i64 2)
  %i.zi = add nsw i64 %i.zh, -1
  %i.zj = lshr i64 %i.zi, 1                       ; 2 uses
  %i.zk = add nuw nsw i64 %i.zj, 1                ; 4 uses
  br i1 %i.zd, label %.preheader.i185.i.preheader, label %.preheader57.i181.i.preheader

.preheader57.i181.i.preheader:                    ; preds = %nodeInsertCell.exit.i
  %min.iters.check305 = icmp eq i64 %i.zj, 0
  br i1 %min.iters.check305, label %.preheader57.i181.i.preheader338, label %vector.ph306

vector.ph306:                                     ; preds = %.preheader57.i181.i.preheader
  %n.vec307 = and i64 %i.zk, 9223372036854775806  ; 3 uses
  %i.zl = shl nuw i64 %n.vec307, 1
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308, %vector.ph306
  %index309 = phi i64 [ 0, %vector.ph306 ], [ %index.next317, %vector.body308 ] ; 2 uses
  %i.zm = shl nuw i64 %index309, 1                ; 2 uses
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.zm ; 2 uses
  %wide.vec310 = load <4 x i32>, ptr %i.zn, align 8, !tbaa !733 ; 2 uses
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.zm
  %wide.vec313 = load <4 x i32>, ptr %i.zo, align 4, !tbaa !733 ; 2 uses
  %i.zp = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec310, <4 x i32> %wide.vec313)
  %i.zq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec310, <4 x i32> %wide.vec313)
  %interleaved.vec316 = shufflevector <4 x i32> %i.zp, <4 x i32> %i.zq, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec316, ptr %i.zn, align 8, !tbaa !733
  %index.next317 = add nuw i64 %index309, 2       ; 2 uses
  %i.zr = icmp eq i64 %index.next317, %n.vec307
  br i1 %i.zr, label %middle.block318, label %vector.body308, !llvm.loop !6674

middle.block318:                                  ; preds = %vector.body308
  %cmp.n319 = icmp eq i64 %i.zk, %n.vec307
  br i1 %cmp.n319, label %cellUnion.exit189.i, label %.preheader57.i181.i.preheader338

.preheader57.i181.i.preheader338:                 ; preds = %.preheader57.i181.i.preheader, %middle.block318
  %indvars.iv.i182.i.ph = phi i64 [ 0, %.preheader57.i181.i.preheader ], [ %i.zl, %middle.block318 ]
  br label %.preheader57.i181.i

.preheader.i185.i.preheader:                      ; preds = %nodeInsertCell.exit.i
  %min.iters.check288 = icmp ult i8 %i.zf, 7
  br i1 %min.iters.check288, label %.preheader.i185.i.preheader337, label %vector.ph289

vector.ph289:                                     ; preds = %.preheader.i185.i.preheader
  %n.vec290 = and i64 %i.zk, 9223372036854775804  ; 3 uses
  %i.zs = shl nuw i64 %n.vec290, 1
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph289
  %index292 = phi i64 [ 0, %vector.ph289 ], [ %index.next300, %vector.body291 ] ; 2 uses
  %i.zt = shl nuw i64 %index292, 1                ; 2 uses
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.zt ; 2 uses
  %wide.vec293 = load <8 x float>, ptr %i.zu, align 8, !tbaa !733 ; 2 uses
  %strided.vec294 = shufflevector <8 x float> %wide.vec293, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec295 = shufflevector <8 x float> %wide.vec293, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.zt
  %wide.vec296 = load <8 x float>, ptr %i.zv, align 4, !tbaa !733 ; 2 uses
  %strided.vec297 = shufflevector <8 x float> %wide.vec296, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec298 = shufflevector <8 x float> %wide.vec296, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.zw = fcmp olt <4 x float> %strided.vec294, %strided.vec297
  %i.zx = select <4 x i1> %i.zw, <4 x float> %strided.vec294, <4 x float> %strided.vec297
  %i.zy = fcmp ogt <4 x float> %strided.vec295, %strided.vec298
  %i.zz = select <4 x i1> %i.zy, <4 x float> %strided.vec295, <4 x float> %strided.vec298
  %interleaved.vec299 = shufflevector <4 x float> %i.zx, <4 x float> %i.zz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec299, ptr %i.zu, align 8, !tbaa !733
  %index.next300 = add nuw i64 %index292, 4       ; 2 uses
  %i.aaa = icmp eq i64 %index.next300, %n.vec290
  br i1 %i.aaa, label %middle.block301, label %vector.body291, !llvm.loop !6675

middle.block301:                                  ; preds = %vector.body291
  %cmp.n302 = icmp eq i64 %i.zk, %n.vec290
  br i1 %cmp.n302, label %cellUnion.exit189.i, label %.preheader.i185.i.preheader337

.preheader.i185.i.preheader337:                   ; preds = %.preheader.i185.i.preheader, %middle.block301
  %indvars.iv61.i186.i.ph = phi i64 [ 0, %.preheader.i185.i.preheader ], [ %i.zs, %middle.block301 ]
  br label %.preheader.i185.i

.preheader.i185.i:                                ; preds = %.preheader.i185.i.preheader337, %.preheader.i185.i
  %indvars.iv61.i186.i = phi i64 [ %indvars.iv.next62.i188.i, %.preheader.i185.i ], [ %indvars.iv61.i186.i.ph, %.preheader.i185.i.preheader337 ] ; 3 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %indvars.iv61.i186.i ; 2 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %indvars.iv61.i186.i
  %i.aad = load <2 x float>, ptr %i.aab, align 8, !tbaa !733 ; 3 uses
  %i.aae = load <2 x float>, ptr %i.aac, align 4, !tbaa !733 ; 3 uses
  %i.aaf = shufflevector <2 x float> %i.aad, <2 x float> %i.aae, <2 x i32> <i32 0, i32 3>
  %i.aag = shufflevector <2 x float> %i.aae, <2 x float> %i.aad, <2 x i32> <i32 0, i32 3>
  %i.aah = fcmp olt <2 x float> %i.aaf, %i.aag
  %i.aai = select <2 x i1> %i.aah, <2 x float> %i.aad, <2 x float> %i.aae
  store <2 x float> %i.aai, ptr %i.aab, align 8, !tbaa !733
  %indvars.iv.next62.i188.i = add nuw nsw i64 %indvars.iv61.i186.i, 2 ; 2 uses
  %i.aaj = icmp samesign ult i64 %indvars.iv.next62.i188.i, %i.zg
  br i1 %i.aaj, label %.preheader.i185.i, label %cellUnion.exit189.i, !llvm.loop !6676

.preheader57.i181.i:                              ; preds = %.preheader57.i181.i.preheader338, %.preheader57.i181.i
  %indvars.iv.i182.i = phi i64 [ %indvars.iv.next.i184.i, %.preheader57.i181.i ], [ %indvars.iv.i182.i.ph, %.preheader57.i181.i.preheader338 ] ; 4 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %indvars.iv.i182.i ; 2 uses
  %i.aal = load i32, ptr %i.aak, align 8, !tbaa !733
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %indvars.iv.i182.i
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !733
  %.56.i183.i = tail call i32 @llvm.smin.i32(i32 %i.aal, i32 %i.aan)
  store i32 %.56.i183.i, ptr %i.aak, align 8, !tbaa !733
  %i.aao = or disjoint i64 %indvars.iv.i182.i, 1  ; 2 uses
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.aao ; 2 uses
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !733
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.aao
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !733
  %i.aat = tail call i32 @llvm.smax.i32(i32 %i.aaq, i32 %i.aas)
  store i32 %i.aat, ptr %i.aap, align 4, !tbaa !733
  %indvars.iv.next.i184.i = add nuw nsw i64 %indvars.iv.i182.i, 2 ; 2 uses
  %i.aau = icmp samesign ult i64 %indvars.iv.next.i184.i, %i.zg
  br i1 %i.aau, label %.preheader57.i181.i, label %cellUnion.exit189.i, !llvm.loop !6677

cellUnion.exit189.i:                              ; preds = %.preheader57.i181.i, %.preheader.i185.i, %middle.block318, %middle.block301
  %indvars.iv.next269.i = add nuw nsw i64 %indvars.iv268.i, 1 ; 2 uses
  %exitcond272.not.i = icmp eq i64 %indvars.iv.next269.i, %i.bt
  br i1 %exitcond272.not.i, label %bb.ay, label %bb.av, !llvm.loop !6678

bb.ay:                                            ; preds = %cellUnion.exit189.i
  %i.aav = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i190.i = icmp eq i32 %i.aav, 0
  br i1 %.not.i190.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.aaw = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i191.i = icmp eq ptr %i.aaw, null
  br i1 %.not.i.i191.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.aax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.aax(ptr noundef nonnull %i.aaw) #58, !inline_history !6679
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.ba, %bb.az
  %i.aay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.aaz = tail call i32 %i.aay(ptr noundef nonnull %i.iy) #58, !inline_history !6680
  %i.aba = sext i32 %i.aaz to i64
  %i.abb = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.abc = sub nsw i64 %i.abb, %i.aba
  store i64 %i.abc, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.abd = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.abe = add nsw i64 %i.abd, -1
  store i64 %i.abe, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.abf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.abf(ptr noundef nonnull %i.iy) #58, !inline_history !6681
  %i.abg = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.abg, null
  br i1 %.not.i4.i.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.abh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.abh(ptr noundef nonnull %i.abg) #58, !inline_history !6682
end_hunk_1
begin_hunk_2_@fixBoundingBox:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %.017.i, i64 6
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !733
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  %i.ar = or disjoint i32 %i.am, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.017.i, i64 7
  %i.at = load i8, ptr %i.as, align 1, !tbaa !733
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.ar, %i.au
  store i32 %i.av, ptr %i.ae, align 4, !tbaa !733
  %i.aw = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ax = icmp samesign ult i64 %indvars.iv.next.i, %i.k
  br i1 %i.ax, label %bb.c, label %nodeGetCell.exit.preheader, !llvm.loop !524

nodeGetCell.exit.preheader:                       ; preds = %bb.c
  %i.ay = zext i8 %.val to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = zext i8 %.val19 to i32
  %i.bb = or disjoint i32 %i.az, %i.ba            ; 2 uses
  %i.bc = icmp samesign ugt i32 %i.bb, 1
  br i1 %i.bc, label %.lr.ph, label %nodeGetCell.exit._crit_edge

.lr.ph:                                           ; preds = %nodeGetCell.exit.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !2935
  %i.bg = icmp eq i8 %i.bf, 0
  %i.bh = zext i8 %.val.i to i64
  %wide.trip.count = zext nneg i32 %i.bb to i64
  %i.bi = tail call i64 @llvm.umax.i64(i64 %i.k, i64 2)
  %i.bj = add nsw i64 %i.bi, -1
  %i.bk = lshr i64 %i.bj, 1                       ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 4 uses
  %min.iters.check59 = icmp eq i64 %i.bk, 0
  %n.vec61 = and i64 %i.bl, 9223372036854775806   ; 3 uses
  %i.bm = shl nuw i64 %n.vec61, 1
  %cmp.n73 = icmp eq i64 %i.bl, %n.vec61
  %min.iters.check = icmp ult i8 %i.j, 7
  %n.vec = and i64 %i.bl, 9223372036854775804     ; 3 uses
  %i.bn = shl nuw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %cellUnion.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %cellUnion.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.bo = mul nuw nsw i64 %indvars.iv, %i.bh
  %i.bp = getelementptr i8, ptr %i.c, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 12
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i25, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.017.i24 = phi ptr [ %i.dc, %bb.e ], [ %i.bq, %bb.d ] ; 9 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i23 ; 2 uses
  %i.bs = load i8, ptr %.017.i24, align 1, !tbaa !733
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw i32 %i.bt, 24
  %i.bv = getelementptr inbounds nuw i8, ptr %.017.i24, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !733
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 16
  %i.bz = or disjoint i32 %i.by, %i.bu
  %i.ca = getelementptr inbounds nuw i8, ptr %.017.i24, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !733
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 8
  %i.ce = or disjoint i32 %i.bz, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.017.i24, i64 3
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !733
  %i.ch = zext i8 %i.cg to i32
  %i.ci = or disjoint i32 %i.ce, %i.ch
  store i32 %i.ci, ptr %i.br, align 8, !tbaa !733
  %i.cj = getelementptr inbounds nuw i8, ptr %.017.i24, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !733
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw i32 %i.cm, 24
  %i.co = getelementptr inbounds nuw i8, ptr %.017.i24, i64 5
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !733
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 16
  %i.cs = or disjoint i32 %i.cr, %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %.017.i24, i64 6
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !733
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = or disjoint i32 %i.cs, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.017.i24, i64 7
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !733
  %i.da = zext i8 %i.cz to i32
  %i.db = or disjoint i32 %i.cx, %i.da
  store i32 %i.db, ptr %i.ck, align 4, !tbaa !733
  %i.dc = getelementptr inbounds nuw i8, ptr %.017.i24, i64 8
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i23, 2 ; 2 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next.i25, %i.k
  br i1 %i.dd, label %bb.e, label %nodeGetCell.exit26, !llvm.loop !524

nodeGetCell.exit26:                               ; preds = %bb.e
  br i1 %i.bg, label %.preheader.i.preheader, label %.preheader57.i.preheader

.preheader57.i.preheader:                         ; preds = %nodeGetCell.exit26
  br i1 %min.iters.check59, label %.preheader57.i.preheader77, label %vector.body62

vector.body62:                                    ; preds = %.preheader57.i.preheader, %vector.body62
  %index63 = phi i64 [ %index.next71, %vector.body62 ], [ 0, %.preheader57.i.preheader ] ; 2 uses
  %i.de = shl nuw i64 %index63, 1                 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.de ; 2 uses
  %wide.vec64 = load <4 x i32>, ptr %i.df, align 8, !tbaa !733 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.de
  %wide.vec67 = load <4 x i32>, ptr %i.dg, align 8, !tbaa !733 ; 2 uses
  %i.dh = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec64, <4 x i32> %wide.vec67)
  %i.di = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec64, <4 x i32> %wide.vec67)
  %interleaved.vec70 = shufflevector <4 x i32> %i.dh, <4 x i32> %i.di, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec70, ptr %i.df, align 8, !tbaa !733
  %index.next71 = add nuw i64 %index63, 2         ; 2 uses
  %i.dj = icmp eq i64 %index.next71, %n.vec61
  br i1 %i.dj, label %middle.block72, label %vector.body62, !llvm.loop !6696

middle.block72:                                   ; preds = %vector.body62
  br i1 %cmp.n73, label %cellUnion.exit, label %.preheader57.i.preheader77

.preheader57.i.preheader77:                       ; preds = %.preheader57.i.preheader, %middle.block72
  %indvars.iv.i27.ph = phi i64 [ 0, %.preheader57.i.preheader ], [ %i.bm, %middle.block72 ]
  br label %.preheader57.i

.preheader.i.preheader:                           ; preds = %nodeGetCell.exit26
  br i1 %min.iters.check, label %.preheader.i.preheader76, label %vector.body

vector.body:                                      ; preds = %.preheader.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.dk = shl nuw i64 %index, 1                   ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dk ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.dl, align 8, !tbaa !733 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec54 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.dk
  %wide.vec55 = load <8 x float>, ptr %i.dm, align 8, !tbaa !733 ; 2 uses
  %strided.vec56 = shufflevector <8 x float> %wide.vec55, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec57 = shufflevector <8 x float> %wide.vec55, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.dn = fcmp olt <4 x float> %strided.vec, %strided.vec56
  %i.do = select <4 x i1> %i.dn, <4 x float> %strided.vec, <4 x float> %strided.vec56
  %i.dp = fcmp ogt <4 x float> %strided.vec54, %strided.vec57
  %i.dq = select <4 x i1> %i.dp, <4 x float> %strided.vec54, <4 x float> %strided.vec57
  %interleaved.vec = shufflevector <4 x float> %i.do, <4 x float> %i.dq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.dl, align 8, !tbaa !733
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !6697

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %cellUnion.exit, label %.preheader.i.preheader76

.preheader.i.preheader76:                         ; preds = %.preheader.i.preheader, %middle.block
  %indvars.iv61.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.bn, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader76, %.preheader.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %.preheader.i ], [ %indvars.iv61.i.ph, %.preheader.i.preheader76 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv61.i ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv61.i
  %i.du = load <2 x float>, ptr %i.ds, align 8, !tbaa !733 ; 3 uses
  %i.dv = load <2 x float>, ptr %i.dt, align 8, !tbaa !733 ; 3 uses
  %i.dw = shufflevector <2 x float> %i.du, <2 x float> %i.dv, <2 x i32> <i32 0, i32 3>
  %i.dx = shufflevector <2 x float> %i.dv, <2 x float> %i.du, <2 x i32> <i32 0, i32 3>
  %i.dy = fcmp olt <2 x float> %i.dw, %i.dx
  %i.dz = select <2 x i1> %i.dy, <2 x float> %i.du, <2 x float> %i.dv
  store <2 x float> %i.dz, ptr %i.ds, align 8, !tbaa !733
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 2 ; 2 uses
  %i.ea = icmp samesign ult i64 %indvars.iv.next62.i, %i.k
  br i1 %i.ea, label %.preheader.i, label %cellUnion.exit, !llvm.loop !6698

.preheader57.i:                                   ; preds = %.preheader57.i.preheader77, %.preheader57.i
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i28, %.preheader57.i ], [ %indvars.iv.i27.ph, %.preheader57.i.preheader77 ] ; 4 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i27 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !733
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i27
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !733
  %.56.i = tail call i32 @llvm.smin.i32(i32 %i.ec, i32 %i.ee)
  store i32 %.56.i, ptr %i.eb, align 8, !tbaa !733
  %i.ef = or disjoint i64 %indvars.iv.i27, 1      ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !733
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ef
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !733
  %i.ek = tail call i32 @llvm.smax.i32(i32 %i.eh, i32 %i.ej)
  store i32 %i.ek, ptr %i.eg, align 4, !tbaa !733
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 2 ; 2 uses
  %i.el = icmp samesign ult i64 %indvars.iv.next.i28, %i.k
  br i1 %i.el, label %.preheader57.i, label %cellUnion.exit, !llvm.loop !6699

cellUnion.exit:                                   ; preds = %.preheader57.i, %.preheader.i, %middle.block72, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %nodeGetCell.exit._crit_edge, label %bb.d, !llvm.loop !6700

nodeGetCell.exit._crit_edge:                      ; preds = %cellUnion.exit, %nodeGetCell.exit.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !2956 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.a, i64 24
  %.val.i29 = load ptr, ptr %i.eo, align 8, !tbaa !2917 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i29, i64 2
  %.val.i.i = load i8, ptr %i.ep, align 1, !tbaa !733
  %i.eq = getelementptr i8, ptr %.val.i29, i64 3
  %.val11.i.i = load i8, ptr %i.eq, align 1, !tbaa !733
  %i.er = zext i8 %.val.i.i to i32
  %i.es = shl nuw nsw i32 %i.er, 8
  %i.et = zext i8 %.val11.i.i to i32
  %i.eu = or disjoint i32 %i.es, %i.et            ; 2 uses
  %.not.i.i = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i, label %nodeParentIndex.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %nodeGetCell.exit._crit_edge
  %i.ev = zext i8 %.val.i to i64                  ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.eu to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 3 uses
  %i.ew = mul nuw nsw i64 %indvars.iv.i.i, %i.ev
  %i.ex = getelementptr i8, ptr %.val.i29, i64 %i.ew ; 8 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 4
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !733
  %i.fa = zext i8 %i.ez to i64
  %i.fb = shl nuw i64 %i.fa, 56
  %i.fc = getelementptr i8, ptr %i.ex, i64 5
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !733
  %i.fe = zext i8 %i.fd to i64
  %i.ff = shl nuw nsw i64 %i.fe, 48
  %i.fg = or disjoint i64 %i.ff, %i.fb
  %i.fh = getelementptr i8, ptr %i.ex, i64 6
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !733
  %i.fj = zext i8 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, 40
  %i.fl = or disjoint i64 %i.fg, %i.fk
  %i.fm = getelementptr i8, ptr %i.ex, i64 7
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !733
  %i.fo = zext i8 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 32
  %i.fq = or disjoint i64 %i.fl, %i.fp
  %i.fr = getelementptr i8, ptr %i.ex, i64 8
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !733
  %i.ft = zext i8 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 24
  %i.fv = or disjoint i64 %i.fq, %i.fu
  %i.fw = getelementptr i8, ptr %i.ex, i64 9
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !733
  %i.fy = zext i8 %i.fx to i64
  %i.fz = shl nuw nsw i64 %i.fy, 16
  %i.ga = or disjoint i64 %i.fv, %i.fz
  %i.gb = getelementptr i8, ptr %i.ex, i64 10
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !733
  %i.gd = zext i8 %i.gc to i64
  %i.ge = shl nuw nsw i64 %i.gd, 8
  %i.gf = or disjoint i64 %i.ga, %i.ge
  %i.gg = getelementptr i8, ptr %i.ex, i64 11
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !733
  %i.gi = zext i8 %i.gh to i64
  %i.gj = add nuw i64 %i.gf, %i.gi
  %i.gk = icmp eq i64 %i.gj, %i.en
  br i1 %i.gk, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %nodeParentIndex.exit.thread, label %bb.f, !llvm.loop !527

bb.h:                                             ; preds = %bb.f
  %i.gl = shl nuw nsw i64 %i.ev, 32
  %sext = mul i64 %i.gl, %indvars.iv.i.i
  %i.gm = ashr exact i64 %sext, 32
  %i.gn = getelementptr i8, ptr %.val.i29, i64 %i.gm ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %4 = bitcast i64 %i.en to <8 x i8>
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %5, ptr %i.go, align 1, !tbaa !733
  %i.gp = load i8, ptr %i.i, align 1, !tbaa !2899
  %.not.i30 = icmp eq i8 %i.gp, 0
  br i1 %.not.i30, label %nodeOverwriteCell.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.gq = getelementptr i8, ptr %i.gn, i64 12
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i31 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i33, %bb.i ] ; 2 uses
  %.015.i = phi ptr [ %i.gq, %.lr.ph.i ], [ %i.hc, %bb.i ] ; 5 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i31
  %.val.i32 = load i32, ptr %i.gr, align 4, !tbaa !733 ; 4 uses
  %i.gs = lshr i32 %.val.i32, 24
  %i.gt = trunc nuw i32 %i.gs to i8
  store i8 %i.gt, ptr %.015.i, align 1, !tbaa !733
  %i.gu = lshr i32 %.val.i32, 16
  %i.gv = trunc i32 %i.gu to i8
  %i.gw = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !733
  %i.gx = lshr i32 %.val.i32, 8
  %i.gy = trunc i32 %i.gx to i8
  %i.gz = getelementptr inbounds nuw i8, ptr %.015.i, i64 2
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !733
  %i.ha = trunc i32 %.val.i32 to i8
  %i.hb = getelementptr inbounds nuw i8, ptr %.015.i, i64 3
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !733
  %i.hc = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i31, 1 ; 2 uses
  %i.hd = load i8, ptr %i.i, align 1, !tbaa !2899
  %i.he = zext i8 %i.hd to i64
  %i.hf = icmp samesign ult i64 %indvars.iv.next.i33, %i.he
  br i1 %i.hf, label %bb.i, label %nodeOverwriteCell.exit, !llvm.loop !534

nodeOverwriteCell.exit:                           ; preds = %bb.i, %bb.h
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 1, ptr %i.hg, align 4, !tbaa !2958
  %i.hh = tail call fastcc i32 @fixBoundingBox(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  br label %nodeParentIndex.exit.thread

nodeParentIndex.exit.thread:                      ; preds = %bb.g, %nodeGetCell.exit._crit_edge, %nodeOverwriteCell.exit
  %.0 = phi i32 [ %i.hh, %nodeOverwriteCell.exit ], [ 267, %nodeGetCell.exit._crit_edge ], [ 267, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %bb.j

bb.j:                                             ; preds = %nodeParentIndex.exit.thread, %bb.a
  %.1 = phi i32 [ %.0, %nodeParentIndex.exit.thread ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 268) i32 @nodeParentIndex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #25 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2957   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %nodeRowidIndex.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !2956
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %.val = load ptr, ptr %i.d, align 8, !tbaa !2917 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %.val.i = load i8, ptr %i.e, align 1, !tbaa !733
  %i.f = getelementptr i8, ptr %.val, i64 3
  %.val11.i = load i8, ptr %i.f, align 1, !tbaa !733
  %i.g = zext i8 %.val.i to i32
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = zext i8 %.val11.i to i32
  %i.j = or disjoint i32 %i.h, %i.i               ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %nodeRowidIndex.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr i8, ptr %0, i64 39
  %.val12.i = load i8, ptr %i.k, align 1, !tbaa !2918
  %i.l = zext i8 %.val12.i to i64
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.m = mul nuw nsw i64 %indvars.iv.i, %i.l
  %i.n = getelementptr i8, ptr %.val, i64 %i.m    ; 8 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i8, ptr %i.o, align 1, !tbaa !733
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw i64 %i.q, 56
  %i.s = getelementptr i8, ptr %i.n, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !733
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 48
  %i.w = or disjoint i64 %i.v, %i.r
  %i.x = getelementptr i8, ptr %i.n, i64 6
  %i.y = load i8, ptr %i.x, align 1, !tbaa !733
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 40
  %i.ab = or disjoint i64 %i.w, %i.aa
  %i.ac = getelementptr i8, ptr %i.n, i64 7
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !733
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 32
  %i.ag = or disjoint i64 %i.ab, %i.af
  %i.ah = getelementptr i8, ptr %i.n, i64 8
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !733
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 24
  %i.al = or disjoint i64 %i.ag, %i.ak
  %i.am = getelementptr i8, ptr %i.n, i64 9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !733
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 16
  %i.aq = or disjoint i64 %i.al, %i.ap
  %i.ar = getelementptr i8, ptr %i.n, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !733
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 8
  %i.av = or disjoint i64 %i.aq, %i.au
  %i.aw = getelementptr i8, ptr %i.n, i64 11
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !733
  %i.ay = zext i8 %i.ax to i64
  %i.az = add nuw i64 %i.av, %i.ay
  %i.ba = icmp eq i64 %i.az, %i.c
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bb = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %nodeRowidIndex.exit.sink.split

bb.e:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %nodeRowidIndex.exit, label %bb.c, !llvm.loop !527

nodeRowidIndex.exit.sink.split:                   ; preds = %bb.a, %bb.d
  %.sink = phi i32 [ %i.bb, %bb.d ], [ -1, %bb.a ]
  store i32 %.sink, ptr %2, align 4, !tbaa !570
  br label %nodeRowidIndex.exit

nodeRowidIndex.exit:                              ; preds = %bb.e, %nodeRowidIndex.exit.sink.split, %bb.b
  %.0 = phi i32 [ 267, %bb.b ], [ 0, %nodeRowidIndex.exit.sink.split ], [ 267, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @nodeOverwriteCell(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #55 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2917
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.d = load i8, ptr %i.c, align 1, !tbaa !2918
  %i.e = zext i8 %i.d to i32
  %i.f = mul nsw i32 %3, %i.e
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %i.b, i64 %i.g     ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %4 = load <8 x i8>, ptr %2, align 8, !tbaa !2939
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %5, ptr %i.i, align 1, !tbaa !733
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !2899
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.h, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.015 = phi ptr [ %i.l, %.lr.ph ], [ %i.y, %bb.b ] ; 5 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %.val = load i32, ptr %i.n, align 4, !tbaa !733 ; 4 uses
  %i.o = lshr i32 %.val, 24
  %i.p = trunc nuw i32 %i.o to i8
  store i8 %i.p, ptr %.015, align 1, !tbaa !733
  %i.q = lshr i32 %.val, 16
  %i.r = trunc i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %.015, i64 1
  store i8 %i.r, ptr %i.s, align 1, !tbaa !733
  %i.t = lshr i32 %.val, 8
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.015, i64 2
  store i8 %i.u, ptr %i.v, align 1, !tbaa !733
  %i.w = trunc i32 %.val to i8
  %i.x = getelementptr inbounds nuw i8, ptr %.015, i64 3
  store i8 %i.w, ptr %i.x, align 1, !tbaa !733
  %i.y = getelementptr inbounds nuw i8, ptr %.015, i64 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i8, ptr %i.j, align 1, !tbaa !2899
  %i.aa = zext i8 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !534

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 1, ptr %i.ac, align 4, !tbaa !2958
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 268) i32 @AdjustTree(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #16 {
bb.a:
  %3 = alloca %struct.RtreeCell, align 8          ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !2957   ; 2 uses
  %.not49 = icmp eq ptr %i.a, null
  br i1 %.not49, label %.loopexit45, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 39
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  br label %bb.c

bb.b:                                             ; preds = %cellContains.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.g = add nuw nsw i32 %i.h, 1
  %exitcond = icmp eq i32 %i.h, 100
  br i1 %exitcond, label %.critedge, label %bb.c, !llvm.loop !6701

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi i32 [ 1, %.lr.ph ], [ %i.g, %bb.b ]  ; 2 uses
  %.0195070 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.b ]
  %i.i = phi ptr [ %i.a, %.lr.ph ], [ %i.hr, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0195070, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !2956
  %i.l = getelementptr i8, ptr %i.i, i64 24
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !2917 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %.val.i.i = load i8, ptr %i.m, align 1, !tbaa !733
  %i.n = getelementptr i8, ptr %.val.i, i64 3
  %.val11.i.i = load i8, ptr %i.n, align 1, !tbaa !733
  %i.o = zext i8 %.val.i.i to i32
  %i.p = shl nuw nsw i32 %i.o, 8
  %i.q = zext i8 %.val11.i.i to i32
  %i.r = or disjoint i32 %i.p, %i.q               ; 2 uses
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %.val12.i.i = load i8, ptr %i.b, align 1, !tbaa !2918
  %i.s = zext i8 %.val12.i.i to i64               ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.r to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 3 uses
  %i.t = mul nuw nsw i64 %indvars.iv.i.i, %i.s
  %i.u = getelementptr i8, ptr %.val.i, i64 %i.t  ; 8 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i8, ptr %i.v, align 1, !tbaa !733
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw i64 %i.x, 56
  %i.z = getelementptr i8, ptr %i.u, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !733
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 48
  %i.ad = or disjoint i64 %i.ac, %i.y
  %i.ae = getelementptr i8, ptr %i.u, i64 6
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !733
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 40
  %i.ai = or disjoint i64 %i.ad, %i.ah
  %i.aj = getelementptr i8, ptr %i.u, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !733
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 32
  %i.an = or disjoint i64 %i.ai, %i.am
  %i.ao = getelementptr i8, ptr %i.u, i64 8
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !733
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 24
  %i.as = or disjoint i64 %i.an, %i.ar
  %i.at = getelementptr i8, ptr %i.u, i64 9
  %i.au = load i8, ptr %i.at, align 1, !tbaa !733
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 16
  %i.ax = or disjoint i64 %i.as, %i.aw
  %i.ay = getelementptr i8, ptr %i.u, i64 10
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !733
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 8
  %i.bc = or disjoint i64 %i.ax, %i.bb
  %i.bd = getelementptr i8, ptr %i.u, i64 11
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !733
  %i.bf = zext i8 %i.be to i64
  %i.bg = add nuw i64 %i.bc, %i.bf
  %i.bh = icmp eq i64 %i.bg, %i.k
  br i1 %i.bh, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge, label %bb.d, !llvm.loop !527

bb.f:                                             ; preds = %bb.d
  %i.bi = shl i64 %indvars.iv.i.i, 32
  %sext = mul i64 %i.bi, %i.s
  %i.bj = ashr exact i64 %sext, 32
  %i.bk = getelementptr i8, ptr %.val.i, i64 %i.bj ; 9 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 4      ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !733
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw i64 %i.bn, 56
  %i.bp = getelementptr i8, ptr %i.bk, i64 5
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !733
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 48
  %i.bt = or disjoint i64 %i.bs, %i.bo
  %i.bu = getelementptr i8, ptr %i.bk, i64 6
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !733
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 40
  %i.by = or disjoint i64 %i.bt, %i.bx
  %i.bz = getelementptr i8, ptr %i.bk, i64 7
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !733
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 32
  %i.cd = or disjoint i64 %i.by, %i.cc
  %i.ce = getelementptr i8, ptr %i.bk, i64 8
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !733
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 24
  %i.ci = or disjoint i64 %i.cd, %i.ch
  %i.cj = getelementptr i8, ptr %i.bk, i64 9
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !733
  %i.cl = zext i8 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 16
  %i.cn = or disjoint i64 %i.ci, %i.cm
  %i.co = getelementptr i8, ptr %i.bk, i64 10
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !733
  %i.cq = zext i8 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 8
  %i.cs = or disjoint i64 %i.cn, %i.cr
  %i.ct = getelementptr i8, ptr %i.bk, i64 11
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !733
  %i.cv = zext i8 %i.cu to i64
  %i.cw = add nuw i64 %i.cs, %i.cv
  %i.cx = getelementptr i8, ptr %i.bk, i64 12     ; 2 uses
  %i.cy = load i8, ptr %i.d, align 1, !tbaa !2899 ; 3 uses
  %i.cz = zext i8 %i.cy to i64                    ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %.017.i = phi ptr [ %i.el, %bb.g ], [ %i.cx, %bb.f ] ; 9 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i ; 2 uses
  %i.db = load i8, ptr %.017.i, align 1, !tbaa !733
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw i32 %i.dc, 24
  %i.de = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !733
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 16
  %i.di = or disjoint i32 %i.dh, %i.dd
  %i.dj = getelementptr inbounds nuw i8, ptr %.017.i, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !733
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 8
  %i.dn = or disjoint i32 %i.di, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %.017.i, i64 3
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !733
  %i.dq = zext i8 %i.dp to i32
  %i.dr = or disjoint i32 %i.dn, %i.dq
  store i32 %i.dr, ptr %i.da, align 8, !tbaa !733
  %i.ds = getelementptr inbounds nuw i8, ptr %.017.i, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !733
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw i32 %i.dv, 24
  %i.dx = getelementptr inbounds nuw i8, ptr %.017.i, i64 5
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !733
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 16
  %i.eb = or disjoint i32 %i.ea, %i.dw
  %i.ec = getelementptr inbounds nuw i8, ptr %.017.i, i64 6
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !733
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 8
  %i.eg = or disjoint i32 %i.eb, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %.017.i, i64 7
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !733
  %i.ej = zext i8 %i.ei to i32
  %i.ek = or disjoint i32 %i.eg, %i.ej
  store i32 %i.ek, ptr %i.dt, align 4, !tbaa !733
  %i.el = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.em = icmp samesign ult i64 %indvars.iv.next.i, %i.cz
  br i1 %i.em, label %bb.g, label %nodeGetCell.exit, !llvm.loop !524

nodeGetCell.exit:                                 ; preds = %bb.g
  %i.en = load i8, ptr %i.e, align 2, !tbaa !2935 ; 2 uses
  %i.eo = icmp eq i8 %i.en, 1
  %.not45.i = icmp eq i8 %i.cy, 0                 ; 2 uses
  br i1 %i.eo, label %.preheader.i, label %.preheader32.i

.preheader32.i:                                   ; preds = %nodeGetCell.exit
  br i1 %.not45.i, label %cellContains.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %nodeGetCell.exit
  br i1 %.not45.i, label %cellContains.exit, label %.lr.ph40.i

bb.h:                                             ; preds = %.critedge.i
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 2 ; 2 uses
  %i.ep = icmp samesign ult i64 %indvars.iv.next50.i, %i.cz
  br i1 %i.ep, label %.lr.ph40.i, label %cellContains.exit, !llvm.loop !532

.lr.ph40.i:                                       ; preds = %.preheader.i, %bb.h
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %bb.h ], [ 0, %.preheader.i ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv49.i ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv49.i ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !733
  %i.et = load i32, ptr %i.eq, align 8, !tbaa !733
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.loopexit, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph40.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !733
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !733
  %i.ez = icmp sgt i32 %i.ew, %i.ey
  br i1 %i.ez, label %.loopexit, label %bb.h

bb.i:                                             ; preds = %.critedge31.i
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i26, 2 ; 2 uses
  %i.fa = icmp samesign ult i64 %indvars.iv.next.i27, %i.cz
  br i1 %i.fa, label %.lr.ph.i, label %cellContains.exit, !llvm.loop !533

.lr.ph.i:                                         ; preds = %.preheader32.i, %bb.i
  %indvars.iv.i26 = phi i64 [ %indvars.iv.next.i27, %bb.i ], [ 0, %.preheader32.i ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i26 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i26 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !733
  %i.fe = load float, ptr %i.fb, align 8, !tbaa !733
  %i.ff = fcmp olt float %i.fd, %i.fe
  br i1 %i.ff, label %.loopexit, label %.critedge31.i

.critedge31.i:                                    ; preds = %.lr.ph.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !733
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !733
  %i.fk = fcmp ogt float %i.fh, %i.fj
  br i1 %i.fk, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %.lr.ph.i, %.critedge31.i, %.critedge.i, %.lr.ph40.i
  %i.fl = icmp eq i8 %i.en, 0
  %i.fm = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 2)
  %i.fn = add nsw i64 %i.fm, -1
  %i.fo = lshr i64 %i.fn, 1                       ; 2 uses
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 4 uses
  br i1 %i.fl, label %.preheader.i30.preheader, label %.preheader57.i.preheader

.preheader57.i.preheader:                         ; preds = %.loopexit
  %min.iters.check76 = icmp eq i64 %i.fo, 0
  br i1 %min.iters.check76, label %.preheader57.i.preheader93, label %vector.ph77

vector.ph77:                                      ; preds = %.preheader57.i.preheader
  %n.vec78 = and i64 %i.fp, 9223372036854775806   ; 3 uses
  %i.fq = shl nuw i64 %n.vec78, 1
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph77
  %index80 = phi i64 [ 0, %vector.ph77 ], [ %index.next88, %vector.body79 ] ; 2 uses
  %i.fr = shl nuw i64 %index80, 1                 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fr ; 2 uses
  %wide.vec81 = load <4 x i32>, ptr %i.fs, align 8, !tbaa !733 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fr
  %wide.vec84 = load <4 x i32>, ptr %i.ft, align 4, !tbaa !733 ; 2 uses
  %i.fu = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec81, <4 x i32> %wide.vec84)
  %i.fv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec81, <4 x i32> %wide.vec84)
  %interleaved.vec87 = shufflevector <4 x i32> %i.fu, <4 x i32> %i.fv, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec87, ptr %i.fs, align 8, !tbaa !733
  %index.next88 = add nuw i64 %index80, 2         ; 2 uses
  %i.fw = icmp eq i64 %index.next88, %n.vec78
  br i1 %i.fw, label %middle.block89, label %vector.body79, !llvm.loop !6702

middle.block89:                                   ; preds = %vector.body79
  %cmp.n90 = icmp eq i64 %i.fp, %n.vec78
  br i1 %cmp.n90, label %cellUnion.exit, label %.preheader57.i.preheader93

.preheader57.i.preheader93:                       ; preds = %.preheader57.i.preheader, %middle.block89
  %indvars.iv.i28.ph = phi i64 [ 0, %.preheader57.i.preheader ], [ %i.fq, %middle.block89 ]
  br label %.preheader57.i

.preheader.i30.preheader:                         ; preds = %.loopexit
  %min.iters.check = icmp ult i8 %i.cy, 7
  br i1 %min.iters.check, label %.preheader.i30.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i30.preheader
  %n.vec = and i64 %i.fp, 9223372036854775804     ; 3 uses
  %i.fx = shl nuw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fy = shl nuw i64 %index, 1                   ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fy ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.fz, align 8, !tbaa !733 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec71 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fy
  %wide.vec72 = load <8 x float>, ptr %i.ga, align 4, !tbaa !733 ; 2 uses
  %strided.vec73 = shufflevector <8 x float> %wide.vec72, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec74 = shufflevector <8 x float> %wide.vec72, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.gb = fcmp olt <4 x float> %strided.vec, %strided.vec73
  %i.gc = select <4 x i1> %i.gb, <4 x float> %strided.vec, <4 x float> %strided.vec73
  %i.gd = fcmp ogt <4 x float> %strided.vec71, %strided.vec74
  %i.ge = select <4 x i1> %i.gd, <4 x float> %strided.vec71, <4 x float> %strided.vec74
  %interleaved.vec = shufflevector <4 x float> %i.gc, <4 x float> %i.ge, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.fz, align 8, !tbaa !733
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !6703

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %cellUnion.exit, label %.preheader.i30.preheader92

.preheader.i30.preheader92:                       ; preds = %.preheader.i30.preheader, %middle.block
  %indvars.iv61.i.ph = phi i64 [ 0, %.preheader.i30.preheader ], [ %i.fx, %middle.block ]
  br label %.preheader.i30

.preheader.i30:                                   ; preds = %.preheader.i30.preheader92, %.preheader.i30
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %.preheader.i30 ], [ %indvars.iv61.i.ph, %.preheader.i30.preheader92 ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv61.i ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv61.i
  %i.gi = load <2 x float>, ptr %i.gg, align 8, !tbaa !733 ; 3 uses
  %i.gj = load <2 x float>, ptr %i.gh, align 4, !tbaa !733 ; 3 uses
  %i.gk = shufflevector <2 x float> %i.gi, <2 x float> %i.gj, <2 x i32> <i32 0, i32 3>
  %i.gl = shufflevector <2 x float> %i.gj, <2 x float> %i.gi, <2 x i32> <i32 0, i32 3>
  %i.gm = fcmp olt <2 x float> %i.gk, %i.gl
  %i.gn = select <2 x i1> %i.gm, <2 x float> %i.gi, <2 x float> %i.gj
  store <2 x float> %i.gn, ptr %i.gg, align 8, !tbaa !733
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 2 ; 2 uses
  %i.go = icmp samesign ult i64 %indvars.iv.next62.i, %i.cz
  br i1 %i.go, label %.preheader.i30, label %cellUnion.exit, !llvm.loop !6704

.preheader57.i:                                   ; preds = %.preheader57.i.preheader93, %.preheader57.i
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i29, %.preheader57.i ], [ %indvars.iv.i28.ph, %.preheader57.i.preheader93 ] ; 4 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i28 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !733
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i28
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !733
  %.56.i = tail call i32 @llvm.smin.i32(i32 %i.gq, i32 %i.gs)
  store i32 %.56.i, ptr %i.gp, align 8, !tbaa !733
  %i.gt = or disjoint i64 %indvars.iv.i28, 1      ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gt ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !733
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gt
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !733
  %i.gy = tail call i32 @llvm.smax.i32(i32 %i.gv, i32 %i.gx)
  store i32 %i.gy, ptr %i.gu, align 4, !tbaa !733
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i28, 2 ; 2 uses
  %i.gz = icmp samesign ult i64 %indvars.iv.next.i29, %i.cz
  br i1 %i.gz, label %.preheader57.i, label %cellUnion.exit, !llvm.loop !6705

cellUnion.exit:                                   ; preds = %.preheader57.i, %.preheader.i30, %middle.block89, %middle.block
  %4 = bitcast i64 %i.cw to <8 x i8>
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %5, ptr %i.bl, align 1, !tbaa !733
  %i.ha = load i8, ptr %i.d, align 1, !tbaa !2899
  %.not.i31 = icmp eq i8 %i.ha, 0
  br i1 %.not.i31, label %nodeOverwriteCell.exit, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %cellUnion.exit, %.lr.ph.i32
  %indvars.iv.i33 = phi i64 [ %indvars.iv.next.i35, %.lr.ph.i32 ], [ 0, %cellUnion.exit ] ; 2 uses
  %.015.i = phi ptr [ %i.hm, %.lr.ph.i32 ], [ %i.cx, %cellUnion.exit ] ; 5 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i33
  %.val.i34 = load i32, ptr %i.hb, align 4, !tbaa !733 ; 4 uses
  %i.hc = lshr i32 %.val.i34, 24
  %i.hd = trunc nuw i32 %i.hc to i8
  store i8 %i.hd, ptr %.015.i, align 1, !tbaa !733
  %i.he = lshr i32 %.val.i34, 16
  %i.hf = trunc i32 %i.he to i8
  %i.hg = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !733
  %i.hh = lshr i32 %.val.i34, 8
  %i.hi = trunc i32 %i.hh to i8
  %i.hj = getelementptr inbounds nuw i8, ptr %.015.i, i64 2
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !733
  %i.hk = trunc i32 %.val.i34 to i8
  %i.hl = getelementptr inbounds nuw i8, ptr %.015.i, i64 3
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !733
  %i.hm = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i33, 1 ; 2 uses
  %i.hn = load i8, ptr %i.d, align 1, !tbaa !2899
  %i.ho = zext i8 %i.hn to i64
  %i.hp = icmp samesign ult i64 %indvars.iv.next.i35, %i.ho
  br i1 %i.hp, label %.lr.ph.i32, label %nodeOverwriteCell.exit, !llvm.loop !534

nodeOverwriteCell.exit:                           ; preds = %.lr.ph.i32, %cellUnion.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 1, ptr %i.hq, align 4, !tbaa !2958
  br label %cellContains.exit

cellContains.exit:                                ; preds = %bb.i, %bb.h, %.preheader.i, %.preheader32.i, %nodeOverwriteCell.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  %i.hr = load ptr, ptr %i.i, align 8, !tbaa !2957 ; 2 uses
  %.not = icmp eq ptr %i.hr, null
  br i1 %.not, label %.loopexit45, label %bb.b, !llvm.loop !6701

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %.loopexit45

.loopexit45:                                      ; preds = %cellContains.exit, %bb.a, %.critedge
  %.2 = phi i32 [ 267, %.critedge ], [ 0, %bb.a ], [ 0, %cellContains.exit ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @rowidWrite(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2941 ; 3 uses
  %i.c = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.b, i32 noundef 0), !inline_history !1135
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %sqlite3_bind_int64.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !693  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !686
  %i.i = and i16 %i.h, -28672
  %.not.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.f, i64 noundef %1), !inline_history !1135
  br label %sqlite3VdbeMemSetInt64.exit.i

bb.d:                                             ; preds = %bb.b
  store i64 %1, ptr %i.f, align 8, !tbaa !733
  store i16 4, ptr %i.g, align 4, !tbaa !686
  br label %sqlite3VdbeMemSetInt64.exit.i

sqlite3VdbeMemSetInt64.exit.i:                    ; preds = %bb.d, %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !679
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !594  ; 2 uses
  %.not.i8.i = icmp eq ptr %i.l, null
  br i1 %.not.i8.i, label %sqlite3_bind_int64.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.m(ptr noundef nonnull %i.l) #58, !inline_history !1136
  br label %sqlite3_bind_int64.exit

sqlite3_bind_int64.exit:                          ; preds = %bb.a, %sqlite3VdbeMemSetInt64.exit.i, %bb.e
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2941 ; 3 uses
  %i.o = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.n, i32 noundef 1), !inline_history !1135
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %sqlite3_bind_int64.exit8

bb.f:                                             ; preds = %sqlite3_bind_int64.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !693  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 76 ; 2 uses
  %i.u = load i16, ptr %i.t, align 4, !tbaa !686
  %i.v = and i16 %i.u, -28672
  %.not.i.i5 = icmp eq i16 %i.v, 0
  br i1 %.not.i.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.s, i64 noundef %2), !inline_history !1135
  br label %sqlite3VdbeMemSetInt64.exit.i6

bb.h:                                             ; preds = %bb.f
  store i64 %2, ptr %i.s, align 8, !tbaa !733
  store i16 4, ptr %i.t, align 4, !tbaa !686
  br label %sqlite3VdbeMemSetInt64.exit.i6

sqlite3VdbeMemSetInt64.exit.i6:                   ; preds = %bb.h, %bb.g
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !679
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !594  ; 2 uses
  %.not.i8.i7 = icmp eq ptr %i.y, null
  br i1 %.not.i8.i7, label %sqlite3_bind_int64.exit8, label %bb.i

bb.i:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i6
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.z(ptr noundef nonnull %i.y) #58, !inline_history !1136
  br label %sqlite3_bind_int64.exit8

sqlite3_bind_int64.exit8:                         ; preds = %sqlite3_bind_int64.exit, %sqlite3VdbeMemSetInt64.exit.i6, %bb.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !2941
  %i.ab = tail call i32 @sqlite3_step(ptr noundef %i.aa) ; 0 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !2941
  %i.ad = tail call i32 @sqlite3_reset(ptr noundef %i.ac)
  ret i32 %i.ad
}

; Function Attrs: nounwind uwtable
define internal i32 @parentWrite(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2952 ; 3 uses
  %i.c = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.b, i32 noundef 0), !inline_history !1135
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %sqlite3_bind_int64.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !693  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !686
  %i.i = and i16 %i.h, -28672
  %.not.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.f, i64 noundef %1), !inline_history !1135
  br label %sqlite3VdbeMemSetInt64.exit.i

bb.d:                                             ; preds = %bb.b
  store i64 %1, ptr %i.f, align 8, !tbaa !733
  store i16 4, ptr %i.g, align 4, !tbaa !686
  br label %sqlite3VdbeMemSetInt64.exit.i

sqlite3VdbeMemSetInt64.exit.i:                    ; preds = %bb.d, %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !679
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !594  ; 2 uses
  %.not.i8.i = icmp eq ptr %i.l, null
  br i1 %.not.i8.i, label %sqlite3_bind_int64.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.m(ptr noundef nonnull %i.l) #58, !inline_history !1136
  br label %sqlite3_bind_int64.exit

sqlite3_bind_int64.exit:                          ; preds = %bb.a, %sqlite3VdbeMemSetInt64.exit.i, %bb.e
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2952 ; 3 uses
  %i.o = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.n, i32 noundef 1), !inline_history !1135
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %sqlite3_bind_int64.exit8

bb.f:                                             ; preds = %sqlite3_bind_int64.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !693  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 76 ; 2 uses
  %i.u = load i16, ptr %i.t, align 4, !tbaa !686
  %i.v = and i16 %i.u, -28672
  %.not.i.i5 = icmp eq i16 %i.v, 0
  br i1 %.not.i.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.s, i64 noundef %2), !inline_history !1135
  br label %sqlite3VdbeMemSetInt64.exit.i6

bb.h:                                             ; preds = %bb.f
  store i64 %2, ptr %i.s, align 8, !tbaa !733
  store i16 4, ptr %i.t, align 4, !tbaa !686
  br label %sqlite3VdbeMemSetInt64.exit.i6

sqlite3VdbeMemSetInt64.exit.i6:                   ; preds = %bb.h, %bb.g
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !679
end_hunk_2
