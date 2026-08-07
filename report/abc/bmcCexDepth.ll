inline.NumInlined: 171
inline.NumDeleted: 42
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Bmc_CexTargetEnlarge:bb.a
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bf = phi ptr [ %i.bd, %bb.j ], [ %i.be, %bb.k ]
  store ptr %i.bf, ptr %i.az, align 8, !tbaa !41
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.l, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.l ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.am, align 8, !tbaa !40
  %.pre.i = load i32, ptr %i.an, align 4, !tbaa !37
  br label %Gia_ManAppendCi.exit

Gia_ManAppendCi.exit:                             ; preds = %.lr.ph226, %bb.h, %Vec_IntGrow.exit11.sink.split.i.i
  %i.bg = phi i32 [ %i.ao, %.lr.ph226 ], [ %i.ao, %bb.h ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.bh = ptrtoint ptr %i.ac to i64
  %i.bi = ptrtoint ptr %.val11.i to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 12
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !41
  %i.bo = add nsw i32 %i.bg, 1
  store i32 %i.bo, ptr %i.an, align 4, !tbaa !37
  %i.bp = sext i32 %i.bg to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bp
  store i32 %i.bl, ptr %i.bq, align 4, !tbaa !42
  %i.br = add nuw nsw i32 %.084146225, 1          ; 2 uses
  %.val109 = load i32, ptr %i.t, align 8, !tbaa !35 ; 3 uses
  %.val110 = load ptr, ptr %i.u, align 8, !tbaa !36 ; 3 uses
  %i.bs = getelementptr i8, ptr %.val110, i64 4
  %.val110.val = load i32, ptr %i.bs, align 4, !tbaa !37
  %i.bt = sub nsw i32 %.val110.val, %.val109
  %i.bu = icmp slt i32 %i.br, %i.bt
  br i1 %i.bu, label %.lr.ph, label %Gia_ManAppendCi.exit..critedge.loopexit_crit_edge, !llvm.loop !38

Gia_ManAppendCi.exit..critedge.loopexit_crit_edge: ; preds = %Gia_ManAppendCi.exit
  br label %.critedge, !llvm.loop !38

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %Gia_ManAppendCi.exit..critedge.loopexit_crit_edge, %.preheader141
  %.val110144194 = phi ptr [ %.val110144, %.preheader141 ], [ %.val110144, %.lr.ph.preheader ], [ %.val110, %Gia_ManAppendCi.exit..critedge.loopexit_crit_edge ], [ %.val110, %.lr.ph ]
  %.val109143190 = phi i32 [ %.val109143, %.preheader141 ], [ %.val109143, %.lr.ph.preheader ], [ %.val109, %Gia_ManAppendCi.exit..critedge.loopexit_crit_edge ], [ %.val109, %.lr.ph ] ; 2 uses
  %i.bv = add nuw nsw i32 %.0148, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bv, %1
  br i1 %exitcond.not, label %.preheader140, label %.preheader141, !llvm.loop !43

bb.m:                                             ; preds = %.lr.ph152, %bb.n
  %.val122151 = phi i32 [ %.val122149, %.lr.ph152 ], [ %.val122, %bb.n ] ; 2 uses
  %.185150 = phi i32 [ 0, %.lr.ph152 ], [ %i.ch, %bb.n ] ; 2 uses
  %.val116 = load ptr, ptr %i.q, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq ptr %.val116, null
  br i1 %.not, label %.critedge2, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val108 = load ptr, ptr %i.ab, align 8, !tbaa !36 ; 2 uses
  %i.bw = getelementptr i8, ptr %.val108, i64 8
  %.val117.val = load ptr, ptr %i.bw, align 8, !tbaa !41
  %i.bx = getelementptr i8, ptr %.val108, i64 4
  %.val108.val = load i32, ptr %i.bx, align 4, !tbaa !37
  %i.by = sub i32 %.185150, %.val122151
  %i.bz = add i32 %i.by, %.val108.val
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %.val117.val, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !42
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [12 x i8], ptr %.val116, i64 %i.cd
  %i.cf = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.b)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !33
  %i.ch = add nuw nsw i32 %.185150, 1             ; 2 uses
  %.val122 = load i32, ptr %i.z, align 8, !tbaa !35 ; 3 uses
  %i.ci = icmp slt i32 %i.ch, %.val122
  br i1 %i.ci, label %bb.m, label %.critedge2, !llvm.loop !44

.critedge2:                                       ; preds = %bb.m, %bb.n, %.preheader140
  %.val105200 = phi i32 [ %.val122149, %.preheader140 ], [ %.val122151, %bb.m ], [ %.val122, %bb.n ]
  br i1 %i.s, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.critedge2
  %i.cj = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.ck = getelementptr i8, ptr %i.b, i64 32
  %i.cl = getelementptr i8, ptr %i.b, i64 64
  %i.cm = getelementptr i8, ptr %0, i64 72        ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge10
  %.val121202 = phi i32 [ %.val105200, %.preheader.lr.ph ], [ %.val121, %.critedge10 ] ; 2 uses
  %.1173 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.hi, %.critedge10 ] ; 2 uses
  %.val106 = load ptr, ptr %i.cj, align 8, !tbaa !36 ; 2 uses
  %i.cn = getelementptr i8, ptr %.val106, i64 4
  %.val106.val = load i32, ptr %i.cn, align 4, !tbaa !37
  %i.co = sub nsw i32 %.val106.val, %.val121202   ; 3 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph155, label %.critedge4

.lr.ph155:                                        ; preds = %.preheader
  %.val114 = load ptr, ptr %i.q, align 8, !tbaa !32 ; 2 uses
  %.not93 = icmp eq ptr %.val114, null
  br i1 %.not93, label %.critedge4, label %.lr.ph155.split

.lr.ph155.split:                                  ; preds = %.lr.ph155
  %i.cq = xor i32 %.1173, -1
  %i.cr = add nsw i32 %1, %i.cq
  %i.cs = mul nsw i32 %i.co, %i.cr
  %i.ct = getelementptr i8, ptr %.val106, i64 8
  %.val115.val = load ptr, ptr %i.ct, align 8, !tbaa !41
  %.val123 = load ptr, ptr %i.ck, align 8, !tbaa !32 ; 2 uses
  %.val124 = load ptr, ptr %i.cl, align 8, !tbaa !36
  %i.cu = getelementptr i8, ptr %.val124, i64 8
  %.val124.val = load ptr, ptr %i.cu, align 8, !tbaa !41
  %i.cv = ptrtoint ptr %.val123 to i64
  %i.cw = sext i32 %i.cs to i64
  %wide.trip.count = zext nneg i32 %i.co to i64
  %invariant.gep = getelementptr [4 x i8], ptr %.val124.val, i64 %i.cw
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph155.split, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph155.split ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.val115.val, i64 %indvars.iv
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !42
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [12 x i8], ptr %.val114, i64 %i.cz
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.db = load i32, ptr %gep, align 4, !tbaa !42
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [12 x i8], ptr %.val123, i64 %i.dc
  %i.de = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.df = and i64 %i.de, -2
  %i.dg = sub i64 %i.df, %i.cv
  %i.dh = sdiv exact i64 %i.dg, 12
  %i.di = trunc i64 %i.dh to i32
  %i.dj = trunc i64 %i.de to i32
  %i.dk = and i32 %i.dj, 1
  %i.dl = shl nsw i32 %i.di, 1
  %i.dm = or disjoint i32 %i.dl, %i.dk
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond175.not, label %.critedge4, label %bb.o, !llvm.loop !45

.critedge4:                                       ; preds = %bb.o, %.lr.ph155, %.preheader
  %i.do = load i32, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph158, label %.critedge6

.lr.ph158:                                        ; preds = %.critedge4, %bb.r
  %i.dq = phi i32 [ %i.ep, %bb.r ], [ %i.do, %.critedge4 ]
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %bb.r ], [ 0, %.critedge4 ] ; 2 uses
  %.val111 = load ptr, ptr %i.q, align 8, !tbaa !32 ; 2 uses
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr %.val111, i64 %indvars.iv176 ; 4 uses
  %.not94 = icmp eq ptr %.val111, null
  br i1 %.not94, label %.critedge6.loopexit, label %bb.p

bb.p:                                             ; preds = %.lr.ph158
  %.val125 = load i64, ptr %i.dr, align 4         ; 5 uses
  %i.ds = and i64 %.val125, 2147483648
  %.not.i138 = icmp ne i64 %i.ds, 0
  %i.dt = and i64 %.val125, 536870911             ; 2 uses
  %i.du = icmp eq i64 %i.dt, 536870911
  %narrow.i.not = or i1 %.not.i138, %i.du
  br i1 %narrow.i.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = sub nsw i64 0, %i.dt
  %i.dw = getelementptr inbounds [12 x i8], ptr %i.dr, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !33
  %i.dz = trunc i64 %.val125 to i32
  %i.ea = lshr i32 %i.dz, 29
  %i.eb = and i32 %i.ea, 1
  %i.ec = xor i32 %i.dy, %i.eb
  %i.ed = lshr i64 %.val125, 32
  %i.ee = and i64 %i.ed, 536870911
  %i.ef = sub nsw i64 0, %i.ee
  %i.eg = getelementptr inbounds [12 x i8], ptr %i.dr, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !33
  %i.ej = lshr i64 %.val125, 61
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  %i.el = and i32 %i.ek, 1
  %i.em = xor i32 %i.ei, %i.el
  %i.en = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %i.b, i32 noundef %i.ec, i32 noundef %i.em) #17
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !33
  %.pre = load i32, ptr %i.a, align 8, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ep = phi i32 [ %.pre, %bb.q ], [ %i.dq, %bb.p ] ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = icmp slt i64 %indvars.iv.next177, %i.eq
  br i1 %i.er, label %.lr.ph158, label %.critedge6.loopexit, !llvm.loop !46

.critedge6.loopexit:                              ; preds = %bb.r, %.lr.ph158
  %.val121.pre = load i32, ptr %i.z, align 8, !tbaa !35
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.critedge4
  %.val121 = phi i32 [ %.val121.pre, %.critedge6.loopexit ], [ %.val121202, %.critedge4 ] ; 9 uses
  %i.es = icmp sgt i32 %.val121, 0
  br i1 %i.es, label %.lr.ph161, label %.critedge10

.lr.ph161:                                        ; preds = %.critedge6
  %.val132 = load ptr, ptr %i.q, align 8, !tbaa !32 ; 2 uses
  %.not95 = icmp eq ptr %.val132, null
  br i1 %.not95, label %.critedge10, label %.lr.ph161.split

.lr.ph161.split:                                  ; preds = %.lr.ph161
  %.val129 = load ptr, ptr %i.cm, align 8, !tbaa !47 ; 2 uses
  %i.et = getelementptr i8, ptr %.val129, i64 8
  %.val133.val = load ptr, ptr %i.et, align 8, !tbaa !41
  %i.eu = getelementptr i8, ptr %.val129, i64 4
  %.val129.val = load i32, ptr %i.eu, align 4, !tbaa !37
  %invariant.op = sub i32 %.val129.val, %.val121
  %wide.trip.count182 = zext nneg i32 %.val121 to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph161.split, %bb.s
  %indvars.iv179 = phi i64 [ 0, %.lr.ph161.split ], [ %indvars.iv.next180, %bb.s ] ; 2 uses
  %i.ev = trunc nuw nsw i64 %indvars.iv179 to i32
  %.reass = add i32 %invariant.op, %i.ev
  %i.ew = sext i32 %.reass to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %.val133.val, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !42
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [12 x i8], ptr %.val132, i64 %i.ez ; 3 uses
  %i.fb = load i64, ptr %i.fa, align 4            ; 2 uses
  %i.fc = and i64 %i.fb, 536870911
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = getelementptr inbounds [12 x i8], ptr %i.fa, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !33
  %i.fh = trunc i64 %i.fb to i32
  %i.fi = lshr i32 %i.fh, 29
  %i.fj = and i32 %i.fi, 1
  %i.fk = xor i32 %i.fj, %i.fg
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !33
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count182
  br i1 %exitcond183.not, label %.lr.ph167, label %bb.s, !llvm.loop !48

.lr.ph167:                                        ; preds = %bb.s
  %.val130.pr = load ptr, ptr %i.q, align 8, !tbaa !32 ; 7 uses
  %.val127 = load ptr, ptr %i.cm, align 8, !tbaa !47 ; 2 uses
  %i.fm = getelementptr i8, ptr %.val127, i64 4
  %.val127.val = load i32, ptr %i.fm, align 4, !tbaa !37
  %invariant.op169 = sub i32 %.val127.val, %.val121 ; 3 uses
  %i.fn = getelementptr i8, ptr %.val127, i64 8
  %.val131.val = load ptr, ptr %i.fn, align 8, !tbaa !41 ; 3 uses
  %.not96 = icmp eq ptr %.val130.pr, null
  br i1 %.not96, label %.critedge10, label %.lr.ph167.split

.lr.ph167.split:                                  ; preds = %.lr.ph167
  %.val102 = load ptr, ptr %i.cj, align 8, !tbaa !36 ; 2 uses
  %i.fo = getelementptr i8, ptr %.val102, i64 8
  %.val113.val = load ptr, ptr %i.fo, align 8, !tbaa !41 ; 3 uses
  %i.fp = getelementptr i8, ptr %.val102, i64 4
  %.val102.val = load i32, ptr %i.fp, align 4, !tbaa !37
  %invariant.op171 = sub i32 %.val102.val, %.val121 ; 3 uses
  %wide.trip.count187 = zext nneg i32 %.val121 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count187, 1
  %i.fq = icmp eq i32 %.val121, 1
  br i1 %i.fq, label %.epil.preheader, label %.lr.ph167.split.new

.lr.ph167.split.new:                              ; preds = %.lr.ph167.split
  %unroll_iter = and i64 %wide.trip.count187, 2147483646
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph167.split.new
  %indvars.iv184 = phi i64 [ 0, %.lr.ph167.split.new ], [ %indvars.iv.next185.1, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph167.split.new ], [ %niter.next.1, %bb.t ]
  %i.fr = trunc nuw nsw i64 %indvars.iv184 to i32 ; 2 uses
  %.reass170 = add i32 %invariant.op169, %i.fr
  %i.fs = sext i32 %.reass170 to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %.val131.val, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !42
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [12 x i8], ptr %.val130.pr, i64 %i.fv
  %.reass172 = add i32 %invariant.op171, %i.fr
  %i.fx = sext i32 %.reass172 to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %.val113.val, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !42
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [12 x i8], ptr %.val130.pr, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !33
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !33
  %i.gf = trunc i64 %indvars.iv184 to i32
  %i.gg = or disjoint i32 %i.gf, 1                ; 2 uses
  %.reass170.1 = add i32 %invariant.op169, %i.gg
  %i.gh = sext i32 %.reass170.1 to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %.val131.val, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !42
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [12 x i8], ptr %.val130.pr, i64 %i.gk
  %.reass172.1 = add i32 %invariant.op171, %i.gg
  %i.gm = sext i32 %.reass172.1 to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %.val113.val, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !42
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [12 x i8], ptr %.val130.pr, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !33
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !33
  %indvars.iv.next185.1 = add nuw nsw i64 %indvars.iv184, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge10.loopexit.unr-lcssa, label %bb.t, !llvm.loop !49

.critedge10.loopexit.unr-lcssa:                   ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge10, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge10.loopexit.unr-lcssa, %.lr.ph167.split
  %indvars.iv184.epil.init = phi i64 [ 0, %.lr.ph167.split ], [ %indvars.iv.next185.1, %.critedge10.loopexit.unr-lcssa ]
  %lcmp.mod232 = trunc i32 %.val121 to i1
  tail call void @llvm.assume(i1 %lcmp.mod232)
  %i.gu = trunc nuw nsw i64 %indvars.iv184.epil.init to i32 ; 2 uses
  %.reass170.epil = add i32 %invariant.op169, %i.gu
  %i.gv = sext i32 %.reass170.epil to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %.val131.val, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !42
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [12 x i8], ptr %.val130.pr, i64 %i.gy
  %.reass172.epil = add i32 %invariant.op171, %i.gu
  %i.ha = sext i32 %.reass172.epil to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %.val113.val, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !42
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [12 x i8], ptr %.val130.pr, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !33
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !33
  br label %.critedge10

.critedge10:                                      ; preds = %.epil.preheader, %.critedge10.loopexit.unr-lcssa, %.lr.ph161, %.critedge6, %.lr.ph167
  %i.hi = add nuw nsw i32 %.1173, 1               ; 2 uses
  %exitcond189.not = icmp eq i32 %i.hi, %1
  br i1 %exitcond189.not, label %._crit_edge, label %.preheader, !llvm.loop !50

._crit_edge:                                      ; preds = %.critedge10, %.critedge2
  %.val134 = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.hj = getelementptr i8, ptr %0, i64 72
  %.val135 = load ptr, ptr %i.hj, align 8, !tbaa !47
  %i.hk = getelementptr i8, ptr %.val135, i64 8
  %.val135.val = load ptr, ptr %i.hk, align 8, !tbaa !41
  %i.hl = load i32, ptr %.val135.val, align 4, !tbaa !42
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [12 x i8], ptr %.val134, i64 %i.hm ; 3 uses
  %i.ho = load i64, ptr %i.hn, align 4            ; 2 uses
  %i.hp = and i64 %i.ho, 536870911
  %i.hq = sub nsw i64 0, %i.hp
  %i.hr = getelementptr inbounds [12 x i8], ptr %i.hn, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !33
  %i.hu = trunc i64 %i.ho to i32
  %i.hv = lshr i32 %i.hu, 29
  %i.hw = and i32 %i.hv, 1
  %i.hx = xor i32 %i.hw, %i.ht
  %i.hy = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.b, i32 noundef %i.hx)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !33
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.b) #17
  %i.ia = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.b) #17
  tail call void @Gia_ManStop(ptr noundef nonnull %i.b) #17
  ret ptr %i.ia
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @Gia_ManStart(i32 noundef) local_unnamed_addr #2

declare void @Gia_ManHashAlloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, -1) i32 @Gia_ManAppendCi(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef %0) ; 4 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = or i64 %i.b, 2684354559                  ; 2 uses
  store i64 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val = load i32, ptr %i.f, align 4, !tbaa !37
  %i.g = and i32 %.val, 536870911
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 32
  %i.j = and i64 %i.c, -2305843004918726657
  %i.k = or disjoint i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 4
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !36   ; 6 uses
  %i.m = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val11 = load ptr, ptr %i.m, align 8, !tbaa !32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !37   ; 7 uses
  %i.p = load i32, ptr %i.l, align 8, !tbaa !40
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.r = icmp slt i32 %i.o, 16
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.t, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.t, i64 noundef 64) #20
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.v = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #19
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.w = phi ptr [ %i.u, %bb.d ], [ %i.v, %bb.e ]
  store ptr %i.w, ptr %i.s, align 8, !tbaa !41
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.x = icmp samesign ult i32 %i.o, 1073741823
  %i.y = shl nuw nsw i32 %i.o, 1
  %spec.select.i = select i1 %i.x, i32 %i.y, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.o, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41  ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.aa, null
  %i.ab = zext nneg i32 %spec.select.i to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call ptr @realloc(ptr noundef nonnull %i.aa, i64 noundef %i.ac) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ac) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ %i.ad, %bb.h ], [ %i.ae, %bb.i ]
  store ptr %i.af, ptr %i.z, align 8, !tbaa !41
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.l, align 8, !tbaa !40
  %.pre = load i32, ptr %i.n, align 4, !tbaa !37
  %.val10.pre = load ptr, ptr %i.m, align 8, !tbaa !32
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %.val10 = phi ptr [ %.val11, %bb.a ], [ %.val11, %bb.f ], [ %.val10.pre, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ag = phi i32 [ %i.o, %bb.a ], [ %i.o, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ah = ptrtoint ptr %i.a to i64                ; 2 uses
end_hunk_0
