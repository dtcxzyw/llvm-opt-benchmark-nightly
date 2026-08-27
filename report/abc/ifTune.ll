Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifTune?download=true
inline.NumInlined: 335
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 25
begin_hunk_0_@If_ManDeriveGiaFromCells:bb.a
bb.f:                                             ; preds = %Abc_UtilStrsav.exit
  %i.bi = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bh) #30
  %i.bj = add i64 %i.bi, 1
  %i.bk = tail call noalias ptr @malloc(i64 noundef %i.bj) #28 ; 2 uses
  %i.bl = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bk, ptr noundef nonnull readonly dereferenceable(1) %i.bh) #26 ; 0 uses
  br label %Abc_UtilStrsav.exit108

Abc_UtilStrsav.exit108:                           ; preds = %Abc_UtilStrsav.exit, %bb.f
  %i.bm = phi ptr [ %i.bk, %bb.f ], [ null, %Abc_UtilStrsav.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !153
  tail call void @Gia_ManFillValue(ptr noundef nonnull %0) #26
  %i.bo = getelementptr i8, ptr %0, i64 32        ; 6 uses
  %.val93 = load ptr, ptr %i.bo, align 8, !tbaa !86
  %i.bp = getelementptr inbounds nuw i8, ptr %.val93, i64 8
  store i32 0, ptr %i.bp, align 4, !tbaa !92
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !84 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %.val88116 = load i32, ptr %i.bs, align 4, !tbaa !85
  %i.bt = icmp sgt i32 %.val88116, 0
  br i1 %i.bt, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_UtilStrsav.exit108, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %Abc_UtilStrsav.exit108 ] ; 2 uses
  %i.bu = phi ptr [ %i.cc, %bb.g ], [ %i.br, %Abc_UtilStrsav.exit108 ]
  %.val95 = load ptr, ptr %i.bo, align 8, !tbaa !86 ; 2 uses
  %.not = icmp eq ptr %.val95, null
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %.val96.val = load ptr, ptr %i.bv, align 8, !tbaa !88
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.val96.val, i64 %indvars.iv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !24
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [12 x i8], ptr %.val95, i64 %i.by
  %i.ca = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.az)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !92
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = load ptr, ptr %i.bq, align 8, !tbaa !84 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 4
  %.val88 = load i32, ptr %i.cd, align 4, !tbaa !85
  %i.ce = sext i32 %.val88 to i64
  %i.cf = icmp slt i64 %indvars.iv.next, %i.ce
  br i1 %i.cf, label %.lr.ph, label %.critedge, !llvm.loop !154

.critedge:                                        ; preds = %.lr.ph, %bb.g, %Abc_UtilStrsav.exit108
  %i.cg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 3 uses
  store i32 0, ptr %i.ch, align 4, !tbaa !85
  store i32 16, ptr %i.cg, align 8, !tbaa !87
  %i.ci = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !88
  %i.ck = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 0, ptr %i.cl, align 4, !tbaa !85
  store i32 65536, ptr %i.ck, align 8, !tbaa !87
  %i.cm = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #28
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !88
  tail call void @Gia_ManHashStart(ptr noundef nonnull %i.az) #26
  %i.co = load i32, ptr %i.av, align 8, !tbaa !91
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph132, label %.critedge2

.lr.ph132:                                        ; preds = %.critedge
  %i.cq = getelementptr i8, ptr %0, i64 264       ; 2 uses
  %i.cr = getelementptr i8, ptr %i.az, i64 32     ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.az, i64 56 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph132, %bb.v
  %.promoted127 = phi ptr [ %i.ci, %.lr.ph132 ], [ %.promoted127157, %bb.v ] ; 6 uses
  %.promoted124 = phi i32 [ 16, %.lr.ph132 ], [ %.promoted124154, %bb.v ] ; 5 uses
  %indvars.iv147 = phi i64 [ 0, %.lr.ph132 ], [ %indvars.iv.next148, %bb.v ] ; 5 uses
  %.0131 = phi i32 [ 0, %.lr.ph132 ], [ %.1, %bb.v ] ; 5 uses
  %.val91 = load ptr, ptr %i.bo, align 8, !tbaa !86 ; 3 uses
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %.val91, i64 %indvars.iv147 ; 2 uses
  %.not83 = icmp eq ptr %.val91, null
  br i1 %.not83, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val97 = load i64, ptr %i.ct, align 4          ; 4 uses
  %i.cu = and i64 %.val97, 2147483648
  %.not.i109 = icmp eq i64 %i.cu, 0
  %i.cv = and i64 %.val97, 536870911              ; 2 uses
  %i.cw = icmp ne i64 %i.cv, 536870911
  %narrow.i = and i1 %.not.i109, %i.cw
  br i1 %narrow.i, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.cx = trunc i64 %.val97 to i32                ; 2 uses
  %i.cy = and i32 %i.cx, 536870911                ; 2 uses
  %i.cz = lshr i64 %.val97, 32
  %i.da = trunc nuw i64 %i.cz to i32
  %i.db = and i32 %i.da, 536870911
  %i.dc = icmp eq i32 %i.cy, %i.db
  %.not.i110 = icmp ne i32 %i.cy, 536870911
  %or.cond.not.i = and i1 %.not.i110, %i.dc
  br i1 %or.cond.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dd = sub nsw i64 0, %i.cv
  %i.de = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !92 ; 2 uses
  %i.dh = lshr i32 %i.cx, 29
  %i.di = xor i32 %i.dg, %i.dh
  %i.dj = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef nonnull %i.az) ; 3 uses
  %.val11.i = load ptr, ptr %i.cr, align 8, !tbaa !86
  %i.dk = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dl = ptrtoint ptr %.val11.i to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = sdiv exact i64 %i.dm, 12
  %i.do = trunc i64 %i.dn to i32
  %i.dp = lshr i32 %i.dg, 1
  %i.dq = sub i32 %i.do, %i.dp
  %i.dr = load i64, ptr %i.dj, align 4
  %i.ds = and i32 %i.dq, 536870911
  %i.dt = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.du = shl nuw nsw i64 %i.dt, 32
  %i.dv = and i64 %i.dr, -4611686015206162432
  %i.dw = or disjoint i64 %i.du, %i.dv
  %i.dx = and i32 %i.di, 1                        ; 2 uses
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = shl nuw nsw i64 %i.dy, 61
  %i.ea = or disjoint i64 %i.dw, %i.dz
  %i.eb = shl nuw nsw i32 %i.dx, 29
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = or disjoint i64 %i.ea, %i.ec
  %i.ee = or disjoint i64 %i.ed, %i.dt
  store i64 %i.ee, ptr %i.dj, align 4
  %i.ef = load i32, ptr %i.cs, align 8, !tbaa !155
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.cs, align 8, !tbaa !155
  %.val.i = load ptr, ptr %i.cr, align 8, !tbaa !86
  %i.eh = ptrtoint ptr %.val.i to i64
  %i.ei = sub i64 %i.dk, %i.eh
  %i.ej = sdiv exact i64 %i.ei, 12
  %i.ek = trunc i64 %i.ej to i32
  %i.el = shl i32 %i.ek, 1
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %.val101 = load ptr, ptr %i.cq, align 8, !tbaa !156
  %i.em = getelementptr i8, ptr %.val101, i64 8
  %.val101.val = load ptr, ptr %i.em, align 8, !tbaa !88 ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.val101.val, i64 %indvars.iv147
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !24 ; 2 uses
  %.not115 = icmp eq i32 %i.eo, 0
  br i1 %.not115, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ch, align 4, !tbaa !85
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %.val101.val, i64 %i.ep ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !24
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %.lr.ph122, label %.critedge4

.lr.ph122:                                        ; preds = %bb.m, %Vec_IntPush.exit
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %Vec_IntPush.exit ], [ 0, %bb.m ] ; 2 uses
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %Vec_IntPush.exit ], [ 0, %bb.m ] ; 7 uses
  %storemerge128 = phi ptr [ %storemerge129, %Vec_IntPush.exit ], [ %.promoted127, %bb.m ] ; 6 uses
  %spec.select.sink.i126 = phi i32 [ %spec.select.sink.i125, %Vec_IntPush.exit ], [ %.promoted124, %bb.m ] ; 3 uses
  %i.et = phi ptr [ %i.fs, %Vec_IntPush.exit ], [ %i.eq, %bb.m ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv142
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !24
  %.val90 = load ptr, ptr %i.bo, align 8, !tbaa !86
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [12 x i8], ptr %.val90, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !92
  %i.fb = trunc nsw i64 %indvars.iv140 to i32
  %i.fc = icmp eq i32 %spec.select.sink.i126, %i.fb
  br i1 %i.fc, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %.lr.ph122
  %i.fd = icmp samesign ult i64 %indvars.iv140, 16
  br i1 %i.fd, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not9.i.i = icmp eq ptr %storemerge128, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fe = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge128, i64 noundef 64) #29
  br label %Vec_IntPush.exit

bb.q:                                             ; preds = %bb.o
  %i.ff = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit

bb.r:                                             ; preds = %bb.n
  %i.fg = icmp samesign ult i64 %indvars.iv140, 1073741823
  %indvars.iv140.tr = trunc i64 %indvars.iv140 to i32
  %i.fh = shl i32 %indvars.iv140.tr, 1
  %spec.select.i = select i1 %i.fg, i32 %i.fh, i32 2147483647 ; 4 uses
  %i.fi = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv140, %i.fi
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i = icmp eq ptr %storemerge128, null
  %i.fj = zext nneg i32 %spec.select.i to i64
  %i.fk = shl nuw nsw i64 %i.fj, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fl = tail call ptr @realloc(ptr noundef nonnull %storemerge128, i64 noundef %i.fk) #29
  br label %Vec_IntPush.exit

bb.u:                                             ; preds = %bb.s
  %i.fm = tail call noalias ptr @malloc(i64 noundef %i.fk) #28
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.q, %bb.p, %bb.u, %bb.t, %.lr.ph122, %bb.r
  %storemerge129 = phi ptr [ %storemerge128, %.lr.ph122 ], [ %storemerge128, %bb.r ], [ %i.ff, %bb.q ], [ %i.fe, %bb.p ], [ %i.fl, %bb.t ], [ %i.fm, %bb.u ] ; 4 uses
  %spec.select.sink.i125 = phi i32 [ %spec.select.sink.i126, %.lr.ph122 ], [ %spec.select.sink.i126, %bb.r ], [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i, %bb.t ], [ %spec.select.i, %bb.u ] ; 3 uses
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %storemerge129, i64 %indvars.iv140
  store i32 %i.fa, ptr %i.fn, align 4, !tbaa !24
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %.val102 = load ptr, ptr %i.cq, align 8, !tbaa !156
  %i.fo = getelementptr i8, ptr %.val102, i64 8
  %.val102.val = load ptr, ptr %i.fo, align 8, !tbaa !88 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.val102.val, i64 %indvars.iv147
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !24
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %.val102.val, i64 %i.fr ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !24
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp slt i64 %indvars.iv.next143, %i.fu
  br i1 %i.fv, label %.lr.ph122, label %..critedge4_crit_edge, !llvm.loop !157

..critedge4_crit_edge:                            ; preds = %Vec_IntPush.exit
  %i.fw = trunc nsw i64 %indvars.iv.next141 to i32
  store i32 %i.fw, ptr %i.ch, align 4, !tbaa !85
  store i32 %spec.select.sink.i125, ptr %i.cg, align 8
  store ptr %storemerge129, ptr %i.cj, align 8
  br label %.critedge4

.critedge4:                                       ; preds = %..critedge4_crit_edge, %bb.m
  %.promoted127158 = phi ptr [ %storemerge129, %..critedge4_crit_edge ], [ %.promoted127, %bb.m ]
  %.promoted124155 = phi i32 [ %spec.select.sink.i125, %..critedge4_crit_edge ], [ %.promoted124, %bb.m ]
  %i.fx = load ptr, ptr %i.aq, align 8, !tbaa !152
  %i.fy = add nsw i32 %.0131, 1
  %i.fz = mul nsw i32 %.0131, %i.au
  %i.ga = getelementptr i8, ptr %i.fx, i64 8
  %.val103 = load ptr, ptr %i.ga, align 8, !tbaa !88
  %i.gb = sext i32 %i.fz to i64
  %i.gc = getelementptr [4 x i8], ptr %.val103, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 8
  %i.ge = tail call i32 @If_ManSatDeriveGiaFromBits(ptr noundef nonnull %i.az, ptr noundef nonnull %i.c, ptr noundef %i.gd, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ck)
  %.val89 = load ptr, ptr %i.bo, align 8, !tbaa !86
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %.critedge4
  %i.gf = phi ptr [ %.val89, %.critedge4 ], [ %.val91, %bb.k ]
  %.sink = phi i32 [ %i.ge, %.critedge4 ], [ %i.el, %bb.k ]
  %.promoted127157.ph = phi ptr [ %.promoted127158, %.critedge4 ], [ %.promoted127, %bb.k ]
  %.promoted124154.ph = phi i32 [ %.promoted124155, %.critedge4 ], [ %.promoted124, %bb.k ]
  %.1.ph = phi i32 [ %i.fy, %.critedge4 ], [ %.0131, %bb.k ]
  %i.gg = getelementptr inbounds nuw [12 x i8], ptr %i.gf, i64 %indvars.iv147
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i32 %.sink, ptr %i.gh, align 4, !tbaa !92
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.i, %bb.l
  %.promoted127157 = phi ptr [ %.promoted127, %bb.l ], [ %.promoted127, %bb.i ], [ %.promoted127157.ph, %.sink.split ] ; 2 uses
  %.promoted124154 = phi i32 [ %.promoted124, %bb.l ], [ %.promoted124, %bb.i ], [ %.promoted124154.ph, %.sink.split ]
  %.1 = phi i32 [ %.0131, %bb.l ], [ %.0131, %bb.i ], [ %.1.ph, %.sink.split ]
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.gi = load i32, ptr %i.av, align 8, !tbaa !91
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv.next148, %i.gj
  br i1 %i.gk, label %bb.h, label %.critedge2, !llvm.loop !158

.critedge2:                                       ; preds = %bb.h, %bb.v, %.critedge
  %i.gl = phi ptr [ %i.ci, %.critedge ], [ %.promoted127, %bb.h ], [ %.promoted127157, %bb.v ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !89 ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %.val134 = load i32, ptr %i.go, align 4, !tbaa !85
  %i.gp = icmp sgt i32 %.val134, 0
  br i1 %i.gp, label %.lr.ph136, label %.critedge6

.lr.ph136:                                        ; preds = %.critedge2, %bb.w
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %bb.w ], [ 0, %.critedge2 ] ; 2 uses
  %i.gq = phi ptr [ %i.hi, %bb.w ], [ %i.gn, %.critedge2 ]
  %.val98 = load ptr, ptr %i.bo, align 8, !tbaa !86 ; 2 uses
  %.not84 = icmp eq ptr %.val98, null
  br i1 %.not84, label %.critedge6, label %bb.w

bb.w:                                             ; preds = %.lr.ph136
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  %.val99.val = load ptr, ptr %i.gr, align 8, !tbaa !88
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.val99.val, i64 %indvars.iv150
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !24
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [12 x i8], ptr %.val98, i64 %i.gu ; 3 uses
  %i.gw = load i64, ptr %i.gv, align 4            ; 2 uses
  %i.gx = and i64 %i.gw, 536870911
  %i.gy = sub nsw i64 0, %i.gx
  %i.gz = getelementptr inbounds [12 x i8], ptr %i.gv, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !92
  %i.hc = trunc i64 %i.gw to i32
  %i.hd = lshr i32 %i.hc, 29
  %i.he = and i32 %i.hd, 1
  %i.hf = xor i32 %i.he, %i.hb
  %i.hg = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.az, i32 noundef %i.hf)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !92
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.hi = load ptr, ptr %i.gm, align 8, !tbaa !89 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 4
  %.val = load i32, ptr %i.hj, align 4, !tbaa !85
  %i.hk = sext i32 %.val to i64
  %i.hl = icmp slt i64 %indvars.iv.next151, %i.hk
  br i1 %i.hl, label %.lr.ph136, label %.critedge6, !llvm.loop !159

.critedge6:                                       ; preds = %.lr.ph136, %bb.w, %.critedge2
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.az) #26
  %i.hm = getelementptr i8, ptr %0, i64 16
  %.val105 = load i32, ptr %i.hm, align 8, !tbaa !97
  tail call void @Gia_ManSetRegNum(ptr noundef nonnull %i.az, i32 noundef %.val105) #26
  %.not.i112 = icmp eq ptr %i.gl, null
  br i1 %.not.i112, label %Vec_IntFree.exit, label %bb.x

bb.x:                                             ; preds = %.critedge6
  tail call void @free(ptr noundef nonnull %i.gl) #26
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge6, %bb.x
  tail call void @free(ptr noundef nonnull %i.cg) #26
  %i.hn = load ptr, ptr %i.cn, align 8, !tbaa !88 ; 2 uses
  %.not.i113 = icmp eq ptr %i.hn, null
  br i1 %.not.i113, label %Vec_IntFree.exit114, label %bb.y

bb.y:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.hn) #26
  br label %Vec_IntFree.exit114

Vec_IntFree.exit114:                              ; preds = %Vec_IntFree.exit, %bb.y
  tail call void @free(ptr noundef nonnull %i.ck) #26
  tail call void @free(ptr noundef %i.c) #26
  %i.ho = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.az) #26
  tail call void @Gia_ManStop(ptr noundef nonnull %i.az) #26
  ret ptr %i.ho
}

declare void @Gia_ManFillValue(ptr noundef) local_unnamed_addr #9

declare void @Gia_ManHashStop(ptr noundef) local_unnamed_addr #9

declare void @Gia_ManSetRegNum(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define void @If_ManConfigPrint(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !23      ; 2 uses
  %i.b = load i32, ptr @If_ManConfigPrint.Count, align 4, !tbaa !24 ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr @If_ManConfigPrint.Count, align 4, !tbaa !24
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.b) ; 0 uses
  switch i8 %i.a, label %bb.bg [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.ae
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.f = load i8, ptr %i.e, align 1, !tbaa !23
  %i.g = zext i8 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23
  %i.k = zext i8 %i.j to i64
  %i.l = or disjoint i64 %i.h, %i.k
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i64 noundef %i.l) ; 0 uses
  %i.n = icmp sgt i32 %1, 0
  br i1 %i.n, label %.lr.ph, label %.lr.ph119.preheader

.preheader:                                       ; preds = %.lr.ph
  %i.o = icmp samesign ult i32 %1, 4
  br i1 %i.o, label %.lr.ph119.preheader, label %._crit_edge

.lr.ph119.preheader:                              ; preds = %bb.b, %.preheader
  %.1118.ph = phi i32 [ 0, %bb.b ], [ %1, %.preheader ]
  br label %.lr.ph119

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0117 = phi i32 [ %i.q, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %i.p = add nuw nsw i32 %.0117, 97
  %putchar112 = tail call i32 @putchar(i32 %i.p)  ; 0 uses
end_hunk_0
begin_hunk_1_@Ifn_TtComparisonConstr:bb.a
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i33
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !49
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i33
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !49
  %i.dt = and i64 %i.ds, %i.dq
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i33
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !49
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i33, 1 ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %indvars.iv.next.i34, %i.i
  br i1 %exitcond.not.i35, label %.lr.ph.i37.preheader, label %.lr.ph.i32, !llvm.loop !244

.lr.ph.i37.preheader:                             ; preds = %vector.body104, %.lr.ph.i32
  br i1 %min.iters.check87, label %.lr.ph.i37, label %vector.body90

vector.body90:                                    ; preds = %.lr.ph.i37.preheader, %vector.body90
  %index91 = phi i64 [ %index.next96, %vector.body90 ], [ 0, %.lr.ph.i37.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index91 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %wide.load92 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !49
  %wide.load93 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !49
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index91 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load94 = load <2 x i64>, ptr %i.dx, align 16, !tbaa !49
  %wide.load95 = load <2 x i64>, ptr %i.dy, align 16, !tbaa !49
  %i.dz = or <2 x i64> %wide.load94, %wide.load92
  %i.ea = or <2 x i64> %wide.load95, %wide.load93
  store <2 x i64> %i.dz, ptr %i.dv, align 8, !tbaa !49
  store <2 x i64> %i.ea, ptr %i.dw, align 8, !tbaa !49
  %index.next96 = add nuw i64 %index91, 4         ; 2 uses
  %i.eb = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.eb, label %.lr.ph.i42.preheader, label %vector.body90, !llvm.loop !245

.lr.ph.i37:                                       ; preds = %.lr.ph.i37.preheader, %.lr.ph.i37
  %indvars.iv.i38 = phi i64 [ %indvars.iv.next.i39, %.lr.ph.i37 ], [ 0, %.lr.ph.i37.preheader ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i38 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !49
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i38
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !49
  %i.eg = or i64 %i.ef, %i.ed
  store i64 %i.eg, ptr %i.ec, align 8, !tbaa !49
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i38, 1 ; 2 uses
  %exitcond.not.i40 = icmp eq i64 %indvars.iv.next.i39, %i.i
  br i1 %exitcond.not.i40, label %.lr.ph.i42.preheader, label %.lr.ph.i37, !llvm.loop !246

.lr.ph.i42.preheader:                             ; preds = %vector.body90, %.lr.ph.i37
  br i1 %min.iters.check73, label %.lr.ph.i42, label %vector.body76

vector.body76:                                    ; preds = %.lr.ph.i42.preheader, %vector.body76
  %index77 = phi i64 [ %index.next82, %vector.body76 ], [ 0, %.lr.ph.i42.preheader ] ; 4 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %index77 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load78 = load <2 x i64>, ptr %i.eh, align 16, !tbaa !49
  %wide.load79 = load <2 x i64>, ptr %i.ei, align 16, !tbaa !49
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index77 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load80 = load <2 x i64>, ptr %i.ej, align 16, !tbaa !49
  %wide.load81 = load <2 x i64>, ptr %i.ek, align 16, !tbaa !49
  %i.el = xor <2 x i64> %wide.load78, %wide.load80
  %i.em = xor <2 x i64> %wide.load79, %wide.load81
  %i.en = xor <2 x i64> %i.el, splat (i64 -1)
  %i.eo = xor <2 x i64> %i.em, splat (i64 -1)
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index77 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <2 x i64> %i.en, ptr %i.ep, align 16, !tbaa !49
  store <2 x i64> %i.eo, ptr %i.eq, align 16, !tbaa !49
  %index.next82 = add nuw i64 %index77, 4         ; 2 uses
  %i.er = icmp eq i64 %index.next82, %n.vec75
  br i1 %i.er, label %.lr.ph.i47.preheader, label %vector.body76, !llvm.loop !247

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.preheader, %.lr.ph.i42
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i44, %.lr.ph.i42 ], [ 0, %.lr.ph.i42.preheader ] ; 4 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i43
  %i.et = load i64, ptr %i.es, align 8, !tbaa !49
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.i43
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !49
  %i.ew = xor i64 %i.et, %i.ev
  %i.ex = xor i64 %i.ew, -1
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i43
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !49
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %i.i
  br i1 %exitcond.not.i45, label %.lr.ph.i47.preheader, label %.lr.ph.i42, !llvm.loop !248

.lr.ph.i47.preheader:                             ; preds = %vector.body76, %.lr.ph.i42
  br i1 %min.iters.check, label %.lr.ph.i47, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i47.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ez, align 16, !tbaa !49
  %wide.load69 = load <2 x i64>, ptr %i.fa, align 16, !tbaa !49
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load70 = load <2 x i64>, ptr %i.fb, align 16, !tbaa !49
  %wide.load71 = load <2 x i64>, ptr %i.fc, align 16, !tbaa !49
  %i.fd = and <2 x i64> %wide.load70, %wide.load
  %i.fe = and <2 x i64> %wide.load71, %wide.load69
  store <2 x i64> %i.fd, ptr %i.ez, align 16, !tbaa !49
  store <2 x i64> %i.fe, ptr %i.fa, align 16, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %Abc_TtAnd.exit51, label %vector.body, !llvm.loop !249

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.lr.ph.i47
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i49, %.lr.ph.i47 ], [ 0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i48 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !49
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i48
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !49
  %i.fk = and i64 %i.fj, %i.fh
  store i64 %i.fk, ptr %i.fg, align 8, !tbaa !49
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1 ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %i.i
  br i1 %exitcond.not.i50, label %Abc_TtAnd.exit51, label %.lr.ph.i47, !llvm.loop !250

Abc_TtAnd.exit51:                                 ; preds = %vector.body, %.lr.ph.i47
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fl = icmp sgt i64 %indvars.iv, 0
  br i1 %i.fl, label %.lr.ph.split, label %._crit_edge, !llvm.loop !240

._crit_edge:                                      ; preds = %Abc_TtAnd.exit51, %Abc_TtAnd.exit51.us, %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %Abc_TtNot.exit, label %.lr.ph.i53.preheader

.lr.ph.i53.preheader:                             ; preds = %._crit_edge
  %min.iters.check199 = icmp samesign ult i32 %i.h, 4
  br i1 %min.iters.check199, label %.lr.ph.i53, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph.i53.preheader
  %n.vec201 = and i64 %i.i, 1431655764
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph200
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next206, %vector.body202 ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index203 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %wide.load204 = load <2 x i64>, ptr %i.fm, align 8, !tbaa !49
  %wide.load205 = load <2 x i64>, ptr %i.fn, align 8, !tbaa !49
  %i.fo = xor <2 x i64> %wide.load204, splat (i64 -1)
  %i.fp = xor <2 x i64> %wide.load205, splat (i64 -1)
  store <2 x i64> %i.fo, ptr %i.fm, align 8, !tbaa !49
  store <2 x i64> %i.fp, ptr %i.fn, align 8, !tbaa !49
  %index.next206 = add nuw i64 %index203, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next206, %n.vec201
  br i1 %i.fq, label %Abc_TtNot.exit, label %vector.body202, !llvm.loop !251

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.preheader, %.lr.ph.i53
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i55, %.lr.ph.i53 ], [ 0, %.lr.ph.i53.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i54 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !49
  %i.ft = xor i64 %i.fs, -1
  store i64 %i.ft, ptr %i.fr, align 8, !tbaa !49
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %indvars.iv.next.i55, %i.i
  br i1 %exitcond.not.i56, label %Abc_TtNot.exit, label %.lr.ph.i53, !llvm.loop !252

Abc_TtNot.exit:                                   ; preds = %vector.body202, %.lr.ph.i53, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Ifn_AddClause(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef %1, ptr noundef %2) #26
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define void @Ifn_NtkAddConstrOne(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [11 x i32], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val26 = load i32, ptr %i.b, align 4, !tbaa !85
  %i.c = icmp sgt i32 %.val26, 0
  br i1 %i.c, label %.lr.ph29, label %.critedge

.lr.ph29:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph.us.preheader, label %.lr.ph29.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph29
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv32 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next33, %._crit_edge.us ] ; 2 uses
  %.val23.us = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.val23.us, i64 %indvars.iv32
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.025.us = phi i32 [ 0, %.lr.ph.us ], [ %.1.us, %bb.e ] ; 3 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.h = shl i32 %indvars.iv.tr, 1
  %i.i = ashr i32 %i.g, %i.h
  %i.j = and i32 %i.i, 3
  switch i32 %i.j, label %bb.e [
    i32 1, label %bb.d
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !24
  %i.m = shl nsw i32 %i.l, 1
  %i.n = or disjoint i32 %i.m, 1
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24
  %i.q = shl nsw i32 %i.p, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  %i.r = add nsw i32 %.025.us, 1
  %i.s = sext i32 %.025.us to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.s
  store i32 %.sink, ptr %i.t, align 4, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b
  %.1.us = phi i32 [ %.025.us, %bb.b ], [ %i.r, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !253

._crit_edge.us:                                   ; preds = %bb.e
  %i.u = sext i32 %.1.us to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.u
  %i.w = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.v) #26 ; 0 uses
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %.val.us = load i32, ptr %i.b, align 4, !tbaa !85
  %i.x = sext i32 %.val.us to i64
  %i.y = icmp slt i64 %indvars.iv.next33, %i.x
  br i1 %i.y, label %.lr.ph.us, label %.critedge, !llvm.loop !254

.lr.ph29.split:                                   ; preds = %.lr.ph29, %.lr.ph29.split
  %.02027 = phi i32 [ %i.aa, %.lr.ph29.split ], [ 0, %.lr.ph29 ]
  %i.z = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a) #26 ; 0 uses
  %i.aa = add nuw nsw i32 %.02027, 1              ; 2 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !85
  %i.ab = icmp slt i32 %i.aa, %.val
  br i1 %i.ab, label %.lr.ph29.split, label %.critedge, !llvm.loop !254

.critedge:                                        ; preds = %.lr.ph29.split, %._crit_edge.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ifn_NtkAddConstraints(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [11 x i32], align 16              ; 8 uses
  %i.b = alloca [11 x i32], align 16              ; 8 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [11 x i32], align 16              ; 6 uses
  %i.e = alloca [4 x i64], align 16               ; 4 uses
  %i.f = alloca [22 x i32], align 16              ; 7 uses
  %calloc = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %calloc, i64 4 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %calloc, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1552 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !12
  %i.k = sub nsw i32 64, %i.j
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 -1, %i.l
  %i.n = xor i64 %i.m, -1                         ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !19   ; 7 uses
  %i.q = icmp eq i32 %i.p, 0
  %i.r = icmp ult i32 %i.p, 2
  %i.s = and i64 %i.n, 2
  %i.t = mul nuw nsw i64 %i.s, 5
  %i.u = select i1 %i.q, i64 0, i64 %i.t
  %.126.i = select i1 %i.r, i64 %i.u, i64 %i.n
  %i.v = icmp ult i32 %i.p, 3
  %i.w = and i64 %.126.i, 14
  %i.x = mul nuw nsw i64 %i.w, 17
  %.227.i = select i1 %i.v, i64 %i.x, i64 %i.n
  %i.y = icmp ult i32 %i.p, 4
  %i.z = and i64 %.227.i, 254
  %i.aa = mul nuw nsw i64 %i.z, 257
  %.328.i = select i1 %i.y, i64 %i.aa, i64 %i.n
  %i.ab = icmp ult i32 %i.p, 5
  %i.ac = and i64 %.328.i, 65534
  %i.ad = mul nuw nsw i64 %i.ac, 65537
  %.429.i = select i1 %i.ab, i64 %i.ad, i64 %i.n
  %i.ae = icmp ult i32 %i.p, 6
  %i.af = and i64 %.429.i, 4294967294
  %i.ag = mul nuw i64 %i.af, 4294967297
  %.5.i = select i1 %i.ae, i64 %i.ag, i64 %i.n    ; 2 uses
  store i64 %.5.i, ptr %i.c, align 8, !tbaa !49
  %.not = icmp eq i64 %.5.i, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.ah = call i32 @Kit_TruthIsop(ptr noundef nonnull %i.c, i32 noundef %i.p, ptr noundef nonnull %calloc, i32 noundef 0) #26 ; 0 uses
  %i.ai = load i32, ptr %0, align 8, !tbaa !15
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.preheader.lr.ph, label %._crit_edge84

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1564
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %Ifn_NtkAddConstrOne.exit
  %.05283 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bu, %Ifn_NtkAddConstrOne.exit ] ; 2 uses
  %i.al = load i32, ptr %i.o, align 8, !tbaa !19  ; 5 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !18
  %i.ao = mul nuw nsw i32 %i.al, %.05283
  %invariant.op = add i32 %i.ao, %i.an            ; 2 uses
  %wide.trip.count = zext nneg i32 %i.al to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.al, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %invariant.op, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op137 = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ap = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass138 = add <4 x i32> %vec.ind, %invariant.op137
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x i32> %i.ap, ptr %i.aq, align 16, !tbaa !24
  store <4 x i32> %.reass138, ptr %i.ar, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !255

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.at
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %.reass, ptr %i.au, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !256

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %.val26.i = load i32, ptr %i.g, align 4, !tbaa !85
  %i.av = icmp sgt i32 %.val26.i, 0
  br i1 %i.av, label %.lr.ph.us.preheader.i, label %Ifn_NtkAddConstrOne.exit

._crit_edge.thread:                               ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %.val26.i111 = load i32, ptr %i.g, align 4, !tbaa !85
  %i.aw = icmp sgt i32 %.val26.i111, 0
  br i1 %i.aw, label %.lr.ph29.split.i, label %Ifn_NtkAddConstrOne.exit

.lr.ph.us.preheader.i:                            ; preds = %._crit_edge
  %wide.trip.count.i = zext nneg i32 %i.al to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next33.i, %._crit_edge.us.i ] ; 2 uses
  %.val23.us.i = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val23.us.i, i64 %indvars.iv32.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.f ] ; 4 uses
  %.025.us.i = phi i32 [ 0, %.lr.ph.us.i ], [ %.1.us.i, %bb.f ] ; 3 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.az = shl i32 %indvars.iv.tr.i, 1
  %i.ba = ashr i32 %i.ay, %i.az
  %i.bb = and i32 %i.ba, 3
  switch i32 %i.bb, label %bb.f [
    i32 1, label %bb.e
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !24
  %i.be = shl nsw i32 %i.bd, 1
  %i.bf = or disjoint i32 %i.be, 1
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !24
  %i.bi = shl nsw i32 %i.bh, 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.sink.i = phi i32 [ %i.bi, %bb.e ], [ %i.bf, %bb.d ]
  %i.bj = add nsw i32 %.025.us.i, 1
  %i.bk = sext i32 %.025.us.i to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bk
  store i32 %.sink.i, ptr %i.bl, align 4, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i, %bb.c
  %.1.us.i = phi i32 [ %.025.us.i, %bb.c ], [ %i.bj, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.c, !llvm.loop !253

._crit_edge.us.i:                                 ; preds = %bb.f
  %i.bm = sext i32 %.1.us.i to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bm
  %i.bo = call i32 @sat_solver_addclause(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bn) #26 ; 0 uses
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %.val.us.i = load i32, ptr %i.g, align 4, !tbaa !85
  %i.bp = sext i32 %.val.us.i to i64
  %i.bq = icmp slt i64 %indvars.iv.next33.i, %i.bp
  br i1 %i.bq, label %.lr.ph.us.i, label %Ifn_NtkAddConstrOne.exit, !llvm.loop !254

.lr.ph29.split.i:                                 ; preds = %._crit_edge.thread, %.lr.ph29.split.i
  %.02027.i = phi i32 [ %i.bs, %.lr.ph29.split.i ], [ 0, %._crit_edge.thread ]
  %i.br = call i32 @sat_solver_addclause(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #26 ; 0 uses
  %i.bs = add nuw nsw i32 %.02027.i, 1            ; 2 uses
  %.val.i = load i32, ptr %i.g, align 4, !tbaa !85
  %i.bt = icmp slt i32 %i.bs, %.val.i
  br i1 %i.bt, label %.lr.ph29.split.i, label %Ifn_NtkAddConstrOne.exit, !llvm.loop !254

Ifn_NtkAddConstrOne.exit:                         ; preds = %.lr.ph29.split.i, %._crit_edge.us.i, %._crit_edge.thread, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.bu = add nuw nsw i32 %.05283, 1              ; 2 uses
  %i.bv = load i32, ptr %0, align 8, !tbaa !15
  %i.bw = icmp slt i32 %i.bu, %i.bv
  br i1 %i.bw, label %.preheader, label %._crit_edge84, !llvm.loop !257

._crit_edge84:                                    ; preds = %Ifn_NtkAddConstrOne.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %._crit_edge84
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1548 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !45
  %.not56 = icmp eq i32 %i.by, 0
  br i1 %.not56, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.bz = load i32, ptr %i.i, align 8, !tbaa !12
  %i.ca = load i32, ptr %0, align 8, !tbaa !15
  %i.cb = icmp eq i32 %i.bz, %i.ca
  %i.cc = zext i1 %i.cb to i32                    ; 2 uses
  %i.cd = load i32, ptr %i.o, align 8, !tbaa !19  ; 2 uses
  call void @Ifn_TtComparisonConstr(ptr noundef nonnull %i.e, i32 noundef %i.cd, i32 noundef %i.cc, i32 noundef %i.cc)
  %i.ce = shl nsw i32 %i.cd, 1
  %i.cf = call i32 @Kit_TruthIsop(ptr noundef nonnull %i.e, i32 noundef %i.ce, ptr noundef nonnull %calloc, i32 noundef 0) #26 ; 0 uses
  %i.cg = load i32, ptr %i.bx, align 4, !tbaa !45
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph95, label %._crit_edge96

.lr.ph95:                                         ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1564
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph95, %Ifn_NtkAddConstrOne.exit78
  %indvars.iv105 = phi i64 [ 0, %.lr.ph95 ], [ %indvars.iv.next106, %Ifn_NtkAddConstrOne.exit78 ] ; 2 uses
  %i.ck = load i32, ptr %i.o, align 8, !tbaa !19  ; 6 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph87, label %._crit_edge88.thread

.lr.ph87:                                         ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv105
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !24 ; 2 uses
  %i.co = and i32 %i.cn, 65535
  %i.cp = ashr i32 %i.cn, 16
  %i.cq = load i32, ptr %i.cj, align 4, !tbaa !18 ; 2 uses
  %i.cr = mul nsw i32 %i.ck, %i.cp
  %invariant.op89 = add i32 %i.cq, %i.cr          ; 2 uses
  %i.cs = mul nuw nsw i32 %i.ck, %i.co
  %invariant.op91 = add i32 %i.cq, %i.cs          ; 2 uses
  %wide.trip.count103 = zext nneg i32 %i.ck to i64 ; 3 uses
  %min.iters.check118 = icmp ult i32 %i.ck, 4
  br i1 %min.iters.check118, label %scalar.ph117.preheader, label %vector.ph119

vector.ph119:                                     ; preds = %.lr.ph87
  %n.vec120 = and i64 %wide.trip.count103, 2147483644 ; 3 uses
  %broadcast.splatinsert121 = insertelement <2 x i32> poison, i32 %invariant.op89, i64 0
  %broadcast.splat122 = shufflevector <2 x i32> %broadcast.splatinsert121, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert123 = insertelement <2 x i32> poison, i32 %invariant.op91, i64 0
  %broadcast.splat124 = shufflevector <2 x i32> %broadcast.splatinsert123, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op139 = add <2 x i32> splat (i32 2), %broadcast.splat122
  %invariant.op141 = add <2 x i32> splat (i32 2), %broadcast.splat124
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph119
  %index126 = phi i64 [ 0, %vector.ph119 ], [ %index.next130, %vector.body125 ] ; 3 uses
  %vec.ind127 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph119 ], [ %vec.ind.next131, %vector.body125 ] ; 5 uses
  %i.ct = add <2 x i32> %broadcast.splat122, %vec.ind127
  %.reass140 = add <2 x i32> %vec.ind127, %invariant.op139
  %i.cu = shl nuw nsw i64 %index126, 3
  %i.cv = shl i64 %index126, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cv
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = add <2 x i32> %broadcast.splat124, %vec.ind127
  %.reass142 = add <2 x i32> %vec.ind127, %invariant.op141
  %interleaved.vec = shufflevector <2 x i32> %i.ct, <2 x i32> %i.cz, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.cw, align 16, !tbaa !24
  %interleaved.vec129 = shufflevector <2 x i32> %.reass140, <2 x i32> %.reass142, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec129, ptr %i.cy, align 16, !tbaa !24
  %index.next130 = add nuw i64 %index126, 4       ; 2 uses
  %vec.ind.next131 = add <2 x i32> %vec.ind127, splat (i32 4)
  %i.da = icmp eq i64 %index.next130, %n.vec120
  br i1 %i.da, label %middle.block132, label %vector.body125, !llvm.loop !258

middle.block132:                                  ; preds = %vector.body125
  %cmp.n133 = icmp eq i64 %n.vec120, %wide.trip.count103
  br i1 %cmp.n133, label %._crit_edge88, label %scalar.ph117.preheader

scalar.ph117.preheader:                           ; preds = %.lr.ph87, %middle.block132
  %indvars.iv100.ph = phi i64 [ 0, %.lr.ph87 ], [ %n.vec120, %middle.block132 ]
  br label %scalar.ph117

scalar.ph117:                                     ; preds = %scalar.ph117.preheader, %scalar.ph117
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %scalar.ph117 ], [ %indvars.iv100.ph, %scalar.ph117.preheader ] ; 3 uses
  %i.db = trunc nuw nsw i64 %indvars.iv100 to i32 ; 2 uses
  %.reass90 = add i32 %invariant.op89, %i.db
  %.idx = shl nuw nsw i64 %indvars.iv100, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx ; 2 uses
  store i32 %.reass90, ptr %i.dc, align 8, !tbaa !24
  %.reass92 = add i32 %invariant.op91, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 %.reass92, ptr %i.dd, align 4, !tbaa !24
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %._crit_edge88, label %scalar.ph117, !llvm.loop !259

._crit_edge88:                                    ; preds = %scalar.ph117, %middle.block132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %.val26.i57 = load i32, ptr %i.g, align 4, !tbaa !85
  %i.de = icmp sgt i32 %.val26.i57, 0
  br i1 %i.de, label %.lr.ph.us.preheader.i62, label %Ifn_NtkAddConstrOne.exit78

._crit_edge88.thread:                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %.val26.i57112 = load i32, ptr %i.g, align 4, !tbaa !85
  %i.df = icmp sgt i32 %.val26.i57112, 0
  br i1 %i.df, label %.lr.ph29.split.i59, label %Ifn_NtkAddConstrOne.exit78

.lr.ph.us.preheader.i62:                          ; preds = %._crit_edge88
  %i.dg = shl nuw nsw i32 %i.ck, 1
  %wide.trip.count.i63 = zext nneg i32 %i.dg to i64
  br label %.lr.ph.us.i64

.lr.ph.us.i64:                                    ; preds = %._crit_edge.us.i75, %.lr.ph.us.preheader.i62
  %indvars.iv32.i65 = phi i64 [ 0, %.lr.ph.us.preheader.i62 ], [ %indvars.iv.next33.i76, %._crit_edge.us.i75 ] ; 2 uses
  %.val23.us.i66 = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.val23.us.i66, i64 %indvars.iv32.i65
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.us.i64
  %indvars.iv.i67 = phi i64 [ 0, %.lr.ph.us.i64 ], [ %indvars.iv.next.i73, %bb.m ] ; 4 uses
  %.025.us.i68 = phi i32 [ 0, %.lr.ph.us.i64 ], [ %.1.us.i72, %bb.m ] ; 3 uses
  %indvars.iv.tr.i69 = trunc i64 %indvars.iv.i67 to i32
  %i.dj = shl i32 %indvars.iv.tr.i69, 1
  %i.dk = ashr i32 %i.di, %i.dj
  %i.dl = and i32 %i.dk, 3
  switch i32 %i.dl, label %bb.m [
    i32 1, label %bb.l
    i32 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i67
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !24
  %i.do = shl nsw i32 %i.dn, 1
  %i.dp = or disjoint i32 %i.do, 1
  br label %.sink.split.i70

bb.l:                                             ; preds = %bb.j
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i67
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !24
  %i.ds = shl nsw i32 %i.dr, 1
  br label %.sink.split.i70

.sink.split.i70:                                  ; preds = %bb.l, %bb.k
  %.sink.i71 = phi i32 [ %i.ds, %bb.l ], [ %i.dp, %bb.k ]
  %i.dt = add nsw i32 %.025.us.i68, 1
  %i.du = sext i32 %.025.us.i68 to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.du
  store i32 %.sink.i71, ptr %i.dv, align 4, !tbaa !24
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i70, %bb.j
  %.1.us.i72 = phi i32 [ %.025.us.i68, %bb.j ], [ %i.dt, %.sink.split.i70 ] ; 2 uses
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i67, 1 ; 2 uses
  %exitcond.not.i74 = icmp eq i64 %indvars.iv.next.i73, %wide.trip.count.i63
  br i1 %exitcond.not.i74, label %._crit_edge.us.i75, label %bb.j, !llvm.loop !253

._crit_edge.us.i75:                               ; preds = %bb.m
  %i.dw = sext i32 %.1.us.i72 to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dw
  %i.dy = call i32 @sat_solver_addclause(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.dx) #26 ; 0 uses
  %indvars.iv.next33.i76 = add nuw nsw i64 %indvars.iv32.i65, 1 ; 2 uses
  %.val.us.i77 = load i32, ptr %i.g, align 4, !tbaa !85
  %i.dz = sext i32 %.val.us.i77 to i64
  %i.ea = icmp slt i64 %indvars.iv.next33.i76, %i.dz
  br i1 %i.ea, label %.lr.ph.us.i64, label %Ifn_NtkAddConstrOne.exit78, !llvm.loop !254

.lr.ph29.split.i59:                               ; preds = %._crit_edge88.thread, %.lr.ph29.split.i59
  %.02027.i60 = phi i32 [ %i.ec, %.lr.ph29.split.i59 ], [ 0, %._crit_edge88.thread ]
  %i.eb = call i32 @sat_solver_addclause(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a) #26 ; 0 uses
  %i.ec = add nuw nsw i32 %.02027.i60, 1          ; 2 uses
  %.val.i61 = load i32, ptr %i.g, align 4, !tbaa !85
  %i.ed = icmp slt i32 %i.ec, %.val.i61
  br i1 %i.ed, label %.lr.ph29.split.i59, label %Ifn_NtkAddConstrOne.exit78, !llvm.loop !254

Ifn_NtkAddConstrOne.exit78:                       ; preds = %.lr.ph29.split.i59, %._crit_edge.us.i75, %._crit_edge88.thread, %._crit_edge88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.ee = load i32, ptr %i.bx, align 4, !tbaa !45
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp slt i64 %indvars.iv.next106, %i.ef
  br i1 %i.eg, label %bb.i, label %._crit_edge96, !llvm.loop !260

._crit_edge96:                                    ; preds = %Ifn_NtkAddConstrOne.exit78, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge96, %bb.g
  %i.eh = load ptr, ptr %i.h, align 8, !tbaa !88  ; 2 uses
  %.not.i = icmp eq ptr %i.eh, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.eh) #26
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.n, %bb.o
  call void @free(ptr noundef nonnull %calloc) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  ret void
}

declare i32 @Kit_TruthIsop(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Ifn_NtkAddClauses(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [13 x i32], align 16              ; 36 uses
  %i.b = alloca [13 x i32], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = tail call i32 @sat_solver_nvars(ptr noundef %2) #26 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14   ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %i.e, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.0183254 = phi i32 [ %i.c, %.lr.ph.new ], [ %i.n, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = shl i32 %.0183254, 16
  %i.l = and i32 %i.j, 65535
  %i.m = or disjoint i32 %i.l, %i.k
  store i32 %i.m, ptr %i.i, align 8
  %i.n = add nsw i32 %.0183254, 2                 ; 3 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = shl i32 %.0183254, 16
  %i.s = add i32 %i.r, 65536
  %i.t = and i32 %i.q, 65535
  %i.u = or disjoint i32 %i.t, %i.s
  store i32 %i.u, ptr %i.p, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !261

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0183254.epil.init = phi i32 [ %i.c, %.lr.ph ], [ %i.n, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod417 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod417)
  %i.v = add nsw i32 %.0183254.epil.init, 1
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv.epil.init ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = shl i32 %.0183254.epil.init, 16
  %i.z = and i32 %i.x, 65535
  %i.aa = or disjoint i32 %i.z, %i.y
  store i32 %i.aa, ptr %i.w, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0183.lcssa = phi i32 [ %i.c, %bb.a ], [ %i.n, %._crit_edge.loopexit.unr-lcssa ], [ %i.v, %.epil.preheader ]
  tail call void @sat_solver_setnvars(ptr noundef %2, i32 noundef %.0183.lcssa) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1552 ; 2 uses
  %i.ac = load i32, ptr %0, align 8, !tbaa !15    ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph265, label %.preheader237

.lr.ph265:                                        ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1564
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i32, ptr %i.ab, align 8, !tbaa !12 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph265.split, label %.preheader237

.preheader237:                                    ; preds = %.critedge, %.lr.ph265, %._crit_edge
  %.lcssa248 = phi i32 [ %i.ac, %._crit_edge ], [ %i.ac, %.lr.ph265 ], [ %i.cg, %.critedge ] ; 2 uses
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !14  ; 2 uses
  %i.ak = icmp slt i32 %.lcssa248, %i.aj
  br i1 %i.ak, label %.lr.ph292, label %._crit_edge293

.lr.ph292:                                        ; preds = %.preheader237
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = sext i32 %.lcssa248 to i64
  br label %bb.e

.lr.ph265.split:                                  ; preds = %.lr.ph265, %.critedge
  %i.as = phi i32 [ %i.cg, %.critedge ], [ %i.ac, %.lr.ph265 ]
  %i.at = phi i32 [ %i.ch, %.critedge ], [ %i.ah, %.lr.ph265 ] ; 2 uses
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %.critedge ], [ 0, %.lr.ph265 ] ; 3 uses
  %.not224260 = icmp sgt i32 %i.at, 0
  br i1 %.not224260, label %.lr.ph263, label %.critedge

.lr.ph263:                                        ; preds = %.lr.ph265.split
  %i.au = load i32, ptr %i.af, align 8, !tbaa !19
  %i.av = trunc nuw nsw i64 %indvars.iv319 to i32
  %i.aw = mul nsw i32 %i.au, %i.av
  %i.ax = load i32, ptr %i.ae, align 4, !tbaa !18
  %i.ay = add nsw i32 %i.aw, %i.ax                ; 2 uses
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %indvars.iv319
  %broadcast.splatinsert384 = insertelement <4 x i32> poison, i32 %i.ay, i64 0
  %broadcast.splat385 = shufflevector <4 x i32> %broadcast.splatinsert384, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge258
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %i.ba = load i32, ptr %i.ab, align 8, !tbaa !12 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %.not224 = icmp slt i64 %indvars.iv.next317, %i.bb
  br i1 %.not224, label %bb.d, label %.critedge.loopexit, !llvm.loop !262

bb.d:                                             ; preds = %.lr.ph263, %bb.c
  %indvars.iv316 = phi i64 [ 0, %.lr.ph263 ], [ %indvars.iv.next317, %bb.c ] ; 3 uses
  %i.bc = load i32, ptr %i.az, align 8
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv316
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !24
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = lshr i32 %i.bc, 15
  %i.bi = and i32 %i.bh, 131070
  %i.bj = or disjoint i32 %i.bi, %i.bg
  store i32 %i.bj, ptr %i.a, align 16, !tbaa !24
  %i.bk = load i32, ptr %i.af, align 8, !tbaa !19 ; 4 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph257.preheader, label %._crit_edge258

.lr.ph257.preheader:                              ; preds = %bb.d
  %wide.trip.count314 = zext nneg i32 %i.bk to i64 ; 3 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv316 to i32 ; 2 uses
  %min.iters.check = icmp ult i32 %i.bk, 4
  br i1 %min.iters.check, label %.lr.ph257.preheader411, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph257.preheader
  %n.vec = and i64 %wide.trip.count314, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind386 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next387, %vector.body ] ; 2 uses
  %i.bn = lshr <4 x i32> %broadcast.splat, %vec.ind
  %i.bo = and <4 x i32> %i.bn, splat (i32 1)
  %i.bp = add <4 x i32> %broadcast.splat385, %vec.ind386
  %i.bq = shl <4 x i32> %i.bp, splat (i32 1)
  %i.br = or disjoint <4 x i32> %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store <4 x i32> %i.br, ptr %i.bt, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %vec.ind.next387 = add <4 x i32> %vec.ind386, splat (i32 4)
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !263

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count314
  br i1 %cmp.n, label %._crit_edge258, label %.lr.ph257.preheader411

.lr.ph257.preheader411:                           ; preds = %.lr.ph257.preheader, %middle.block
  %indvars.iv311.ph = phi i64 [ 0, %.lr.ph257.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257.preheader411, %.lr.ph257
  %indvars.iv311 = phi i64 [ %indvars.iv.next312, %.lr.ph257 ], [ %indvars.iv311.ph, %.lr.ph257.preheader411 ] ; 3 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv311 to i32
  %i.bw = lshr i32 %i.bm, %i.bv
  %i.bx = and i32 %i.bw, 1
  %i.by = trunc i64 %indvars.iv311 to i32
  %.tr = add i32 %i.ay, %i.by
  %i.bz = shl i32 %.tr, 1
  %i.ca = or disjoint i32 %i.bz, %i.bx
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next312
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !24
  %exitcond315.not = icmp eq i64 %indvars.iv.next312, %wide.trip.count314
  br i1 %exitcond315.not, label %._crit_edge258, label %.lr.ph257, !llvm.loop !264

._crit_edge258:                                   ; preds = %.lr.ph257, %middle.block, %bb.d
  %i.cc = sext i32 %i.bk to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ce) #26
  %.not223 = icmp eq i32 %i.cf, 0
  br i1 %.not223, label %.critedge228, label %bb.c

.critedge.loopexit:                               ; preds = %bb.c
  %.pre = load i32, ptr %0, align 8, !tbaa !15
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph265.split
  %i.cg = phi i32 [ %.pre, %.critedge.loopexit ], [ %i.as, %.lr.ph265.split ] ; 3 uses
  %i.ch = phi i32 [ %i.ba, %.critedge.loopexit ], [ %i.at, %.lr.ph265.split ]
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %i.ci = sext i32 %i.cg to i64
  %i.cj = icmp slt i64 %indvars.iv.next320, %i.ci
  br i1 %i.cj, label %.lr.ph265.split, label %.preheader237, !llvm.loop !265

bb.e:                                             ; preds = %.lr.ph292, %.critedge226
  %indvars.iv348 = phi i64 [ %i.ar, %.lr.ph292 ], [ %indvars.iv.next349, %.critedge226 ] ; 3 uses
  %i.ck = getelementptr inbounds [48 x i8], ptr %i.al, i64 %indvars.iv348 ; 10 uses
  %i.cl = load i32, ptr %i.ck, align 8            ; 5 uses
  %i.cm = lshr i32 %i.cl, 3                       ; 2 uses
  %i.cn = and i32 %i.cm, 31                       ; 14 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 9 uses
  %i.cp = and i32 %i.cl, 7
  switch i32 %i.cp, label %.critedge226 [
    i32 3, label %bb.f
    i32 4, label %bb.h
    i32 5, label %bb.k
    i32 6, label %bb.o
  ]

bb.f:                                             ; preds = %bb.e
  %i.cq = lshr i32 %i.cl, 15
  %i.cr = and i32 %i.cq, 131070
  store i32 %i.cr, ptr %i.a, align 16, !tbaa !24
  %.not297 = icmp eq i32 %i.cn, 0
  br i1 %.not297, label %._crit_edge289, label %.lr.ph288.preheader

.lr.ph288.preheader:                              ; preds = %bb.f
  %wide.trip.count346 = zext nneg i32 %i.cn to i64
  br label %.lr.ph288

.lr.ph288:                                        ; preds = %.lr.ph288.preheader, %bb.g
  %indvars.iv341 = phi i64 [ 0, %.lr.ph288.preheader ], [ %indvars.iv.next342, %bb.g ] ; 2 uses
  %indvars.iv339 = phi i64 [ 1, %.lr.ph288.preheader ], [ %indvars.iv.next340, %bb.g ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv341
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !24
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [48 x i8], ptr %i.al, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 8
  %i.cx = lshr i32 %i.cw, 15                      ; 2 uses
  %i.cy = and i32 %i.cx, 131070
  %i.cz = or i32 %i.cx, 1
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv339
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !24
  %i.db = load i32, ptr %i.ck, align 8
  %i.dc = lshr i32 %i.db, 15
  %i.dd = or i32 %i.dc, 1
  store i32 %i.dd, ptr %i.b, align 16, !tbaa !24
  store i32 %i.cy, ptr %i.ap, align 4, !tbaa !24
  %i.de = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.aq) #26
  %.not222 = icmp eq i32 %i.de, 0
  br i1 %.not222, label %.critedge228, label %bb.g

bb.g:                                             ; preds = %.lr.ph288
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %exitcond347.not = icmp eq i64 %indvars.iv.next342, %wide.trip.count346
  br i1 %exitcond347.not, label %._crit_edge289, label %.lr.ph288, !llvm.loop !266

._crit_edge289:                                   ; preds = %bb.g, %bb.f
  %.0184.lcssa = phi i64 [ 1, %bb.f ], [ %indvars.iv.next340, %bb.g ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0184.lcssa
  %i.dg = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.df) #26
  %.not221 = icmp eq i32 %i.dg, 0
  br i1 %.not221, label %.critedge228, label %.critedge226

bb.h:                                             ; preds = %bb.e
  %i.dh = shl nuw i32 2, %i.cn                    ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.preheader.lr.ph, label %.critedge226

.preheader.lr.ph:                                 ; preds = %bb.h
  %i.dj = zext nneg i32 %i.cn to i64              ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = add nuw nsw i32 %i.cn, 1                ; 2 uses
  %min.iters.check389 = icmp samesign ult i32 %i.cn, 7
  %n.vec391 = and i32 %i.dm, 56                   ; 5 uses
  %i.dn = icmp eq i32 %n.vec391, 8
  %i.do = icmp eq i32 %n.vec391, 16
  %i.dp = icmp eq i32 %n.vec391, 24
  %cmp.n401 = icmp eq i32 %i.dm, %n.vec391
  %xtraiter418 = and i64 %i.dj, 1
  %i.dq = icmp eq i32 %i.cn, 1                    ; 0 uses
  %unroll_iter421 = and i64 %i.dj, 30
  %lcmp.mod419.not = icmp eq i64 %xtraiter418, 0
  %lcmp.mod420 = trunc i32 %i.cm to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.j
  %.0181283 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.gd, %bb.j ] ; 7 uses
  br i1 %min.iters.check389, label %scalar.ph388.preheader, label %vector.ph390

vector.ph390:                                     ; preds = %.preheader
  %broadcast.splatinsert392 = insertelement <4 x i32> poison, i32 %.0181283, i64 0
  %broadcast.splat393 = shufflevector <4 x i32> %broadcast.splatinsert392, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.dr = lshr <4 x i32> %broadcast.splat393, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ds = lshr <4 x i32> %broadcast.splat393, <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  br i1 %i.dn, label %middle.block400, label %vector.body394.1

vector.body394.1:                                 ; preds = %vector.ph390
  %i.dt = lshr <4 x i32> %broadcast.splat393, <i32 8, i32 9, i32 10, i32 11>
  %i.du = lshr <4 x i32> %broadcast.splat393, <i32 12, i32 13, i32 14, i32 15>
  %i.dv = add nuw <4 x i32> %i.dt, %i.dr          ; 2 uses
  %i.dw = add nuw nsw <4 x i32> %i.du, %i.ds      ; 2 uses
  br i1 %i.do, label %middle.block400, label %vector.body394.2

vector.body394.2:                                 ; preds = %vector.body394.1
  %i.dx = lshr <4 x i32> %broadcast.splat393, <i32 16, i32 17, i32 18, i32 19>
  %i.dy = lshr <4 x i32> %broadcast.splat393, <i32 20, i32 21, i32 22, i32 23>
  %i.dz = add <4 x i32> %i.dx, %i.dv              ; 2 uses
  %i.ea = add nuw nsw <4 x i32> %i.dy, %i.dw      ; 2 uses
  br i1 %i.dp, label %middle.block400, label %vector.body394.3

vector.body394.3:                                 ; preds = %vector.body394.2
  %i.eb = lshr <4 x i32> %broadcast.splat393, <i32 24, i32 25, i32 26, i32 27>
  %i.ec = lshr <4 x i32> %broadcast.splat393, <i32 28, i32 29, i32 30, i32 31>
  %i.ed = add <4 x i32> %i.eb, %i.dz
  %i.ee = add nuw nsw <4 x i32> %i.ec, %i.ea
  br label %middle.block400

middle.block400:                                  ; preds = %vector.body394.3, %vector.body394.2, %vector.body394.1, %vector.ph390
  %.lcssa408 = phi <4 x i32> [ %i.dr, %vector.ph390 ], [ %i.dv, %vector.body394.1 ], [ %i.dz, %vector.body394.2 ], [ %i.ed, %vector.body394.3 ]
  %.lcssa407 = phi <4 x i32> [ %i.ds, %vector.ph390 ], [ %i.dw, %vector.body394.1 ], [ %i.ea, %vector.body394.2 ], [ %i.ee, %vector.body394.3 ]
  %bin.rdx = add <4 x i32> %.lcssa407, %.lcssa408
  %i.ef = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n401, label %.loopexit, label %scalar.ph388.preheader

scalar.ph388.preheader:                           ; preds = %.preheader, %middle.block400
  %.0278.ph = phi i32 [ 0, %.preheader ], [ %i.ef, %middle.block400 ]
  %.1188277.ph = phi i32 [ 0, %.preheader ], [ %n.vec391, %middle.block400 ]
  br label %scalar.ph388

scalar.ph388:                                     ; preds = %scalar.ph388.preheader, %scalar.ph388
  %.0278 = phi i32 [ %i.eh, %scalar.ph388 ], [ %.0278.ph, %scalar.ph388.preheader ]
  %.1188277 = phi i32 [ %i.ei, %scalar.ph388 ], [ %.1188277.ph, %scalar.ph388.preheader ] ; 3 uses
  %i.eg = lshr i32 %.0181283, %.1188277
  %i.eh = add i32 %i.eg, %.0278                   ; 2 uses
  %i.ei = add nuw nsw i32 %.1188277, 1
  %exitcond332.not = icmp eq i32 %.1188277, %i.cn
  br i1 %exitcond332.not, label %.loopexit, label %scalar.ph388, !llvm.loop !267

.loopexit:                                        ; preds = %scalar.ph388, %middle.block400
  %.lcssa379 = phi i32 [ %i.ef, %middle.block400 ], [ %i.eh, %scalar.ph388 ]
  %i.ej = and i32 %.lcssa379, 1
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.el = load i32, ptr %i.ck, align 8
  %i.em = lshr i32 %.0181283, %i.cn
  %i.en = and i32 %i.em, 1
  %i.eo = lshr i32 %i.el, 15
  %i.ep = and i32 %i.eo, 131070
  %i.eq = or disjoint i32 %i.ep, %i.en
  store i32 %i.eq, ptr %i.a, align 16, !tbaa !24
  switch i32 %i.cn, label %.lr.ph281 [
    i32 0, label %._crit_edge282
    i32 1, label %.lr.ph281.epil.preheader
  ]

.lr.ph281:                                        ; preds = %bb.i, %.lr.ph281
  %indvars.iv333 = phi i64 [ %indvars.iv.next334.1, %.lr.ph281 ], [ 0, %bb.i ] ; 4 uses
  %niter422 = phi i64 [ %niter422.next.1, %.lr.ph281 ], [ 0, %bb.i ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv333
  %i.es = load i32, ptr %i.er, align 4, !tbaa !24
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [48 x i8], ptr %i.al, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = trunc nuw nsw i64 %indvars.iv333 to i32
  %i.ex = lshr i32 %.0181283, %i.ew
  %i.ey = and i32 %i.ex, 1
  %i.ez = lshr i32 %i.ev, 15
  %i.fa = and i32 %i.ez, 131070
  %i.fb = or disjoint i32 %i.fa, %i.ey
  %indvars.iv.next334 = or disjoint i64 %indvars.iv333, 1 ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next334
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !24
end_hunk_1
