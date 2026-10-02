Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264_loopfilter?download=true
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@ff_h264_filter_mb_fast:bb.a
  %i.gez = add i32 %i.hp, %i.ir                   ; 2 uses
  %i.gfa = add i32 %i.ht, %i.ir                   ; 2 uses
  %i.gfb = icmp ult i32 %i.gez, 68
  %i.gfc = icmp ult i32 %i.gfa, 68
  %or.cond.i285 = or i1 %i.gfb, %i.gfc
  br i1 %or.cond.i285, label %filter_mb_edgeh.exit266, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.gfd = zext i32 %i.gfa to i64
  %i.gfe = getelementptr inbounds nuw i8, ptr @beta_table, i64 %i.gfd
  %i.gff = load i8, ptr %i.gfe, align 1, !tbaa !84
  %i.gfg = zext i8 %i.gff to i32                  ; 2 uses
  %i.gfh = zext i32 %i.gez to i64                 ; 2 uses
  %i.gfi = getelementptr inbounds nuw i8, ptr @alpha_table, i64 %i.gfh
  %i.gfj = load i8, ptr %i.gfi, align 1, !tbaa !84
  %i.gfk = zext i8 %i.gfj to i32                  ; 2 uses
  %i.gfl = getelementptr inbounds nuw i8, ptr %5, i64 %i.gdq
  %i.gfm = load i16, ptr %i.gdn, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co) #5
  %i.gfn = getelementptr inbounds nuw [4 x i8], ptr @tc0_table, i64 %i.gfh ; 8 uses
  %i.gfo = sext i16 %i.gfm to i64
  %i.gfp = getelementptr inbounds i8, ptr %i.gfn, i64 %i.gfo
  %i.gfq = load i8, ptr %i.gfp, align 1, !tbaa !84
  store i8 %i.gfq, ptr %i.co, align 1, !tbaa !84
  %i.gfr = getelementptr inbounds nuw i8, ptr %i.gp, i64 58 ; 2 uses
  %i.gfs = load i16, ptr %i.gfr, align 2, !tbaa !89
  %i.gft = sext i16 %i.gfs to i64
  %i.gfu = getelementptr inbounds i8, ptr %i.gfn, i64 %i.gft
  %i.gfv = load i8, ptr %i.gfu, align 1, !tbaa !84
  %i.gfw = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store i8 %i.gfv, ptr %i.gfw, align 1, !tbaa !84
  %i.gfx = getelementptr inbounds nuw i8, ptr %i.gp, i64 60 ; 2 uses
  %i.gfy = load i16, ptr %i.gfx, align 4, !tbaa !89
  %i.gfz = sext i16 %i.gfy to i64
  %i.gga = getelementptr inbounds i8, ptr %i.gfn, i64 %i.gfz
  %i.ggb = load i8, ptr %i.gga, align 1, !tbaa !84
  %i.ggc = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  store i8 %i.ggb, ptr %i.ggc, align 1, !tbaa !84
  %i.ggd = getelementptr inbounds nuw i8, ptr %i.gp, i64 62 ; 2 uses
  %i.gge = load i16, ptr %i.ggd, align 2, !tbaa !89
  %i.ggf = sext i16 %i.gge to i64
  %i.ggg = getelementptr inbounds i8, ptr %i.gfn, i64 %i.ggf
  %i.ggh = load i8, ptr %i.ggg, align 1, !tbaa !84
  %i.ggi = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  store i8 %i.ggh, ptr %i.ggi, align 1, !tbaa !84
  %i.ggj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ggk = load ptr, ptr %i.ggj, align 8, !tbaa !90
  %i.ggl = sext i32 %7 to i64                     ; 2 uses
  call void %i.ggk(ptr noundef %i.gfl, i64 noundef %i.ggl, i32 noundef %i.gfk, i32 noundef %i.gfg, ptr noundef nonnull %i.co) #5, !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co) #5
  %i.ggm = getelementptr inbounds nuw i8, ptr %6, i64 %i.gdq
  %i.ggn = load i16, ptr %i.gdn, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp) #5
  %i.ggo = sext i16 %i.ggn to i64
  %i.ggp = getelementptr inbounds i8, ptr %i.gfn, i64 %i.ggo
  %i.ggq = load i8, ptr %i.ggp, align 1, !tbaa !84
  store i8 %i.ggq, ptr %i.cp, align 1, !tbaa !84
  %i.ggr = load i16, ptr %i.gfr, align 2, !tbaa !89
  %i.ggs = sext i16 %i.ggr to i64
  %i.ggt = getelementptr inbounds i8, ptr %i.gfn, i64 %i.ggs
  %i.ggu = load i8, ptr %i.ggt, align 1, !tbaa !84
  %i.ggv = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  store i8 %i.ggu, ptr %i.ggv, align 1, !tbaa !84
  %i.ggw = load i16, ptr %i.gfx, align 4, !tbaa !89
  %i.ggx = sext i16 %i.ggw to i64
  %i.ggy = getelementptr inbounds i8, ptr %i.gfn, i64 %i.ggx
  %i.ggz = load i8, ptr %i.ggy, align 1, !tbaa !84
  %i.gha = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  store i8 %i.ggz, ptr %i.gha, align 1, !tbaa !84
  %i.ghb = load i16, ptr %i.ggd, align 2, !tbaa !89
  %i.ghc = sext i16 %i.ghb to i64
  %i.ghd = getelementptr inbounds i8, ptr %i.gfn, i64 %i.ghc
  %i.ghe = load i8, ptr %i.ghd, align 1, !tbaa !84
  %i.ghf = getelementptr inbounds nuw i8, ptr %i.cp, i64 3
  store i8 %i.ghe, ptr %i.ghf, align 1, !tbaa !84
  %i.ghg = load ptr, ptr %i.ggj, align 8, !tbaa !90
  call void %i.ghg(ptr noundef %i.ggm, i64 noundef %i.ggl, i32 noundef %i.gfk, i32 noundef %i.gfg, ptr noundef nonnull %i.cp) #5, !inline_history !1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp) #5
  br label %filter_mb_edgeh.exit266

filter_mb_edgeh.exit266:                          ; preds = %bb.ns, %bb.lt, %bb.lr, %bb.nt, %bb.lu, %bb.ls, %bb.kk, %bb.kj, %bb.ke, %bb.kd, %bb.kc, %bb.jx, %filter_mb_edgeh.exit288, %filter_mb_edgeh.exit280, %filter_mb_edgeh.exit304, %filter_mb_edgeh.exit296, %filter_mb_edgeh.exit270, %bb.jr, %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp) #5
  br label %h264_filter_mb_fast_internal.exit68

h264_filter_mb_fast_internal.exit68:              ; preds = %filter_mb_edgech.exit482, %filter_mb_edgech.exit474, %filter_mb_edgeh.exit328, %filter_mb_edgeh.exit336, %filter_mb_edgech.exit438, %filter_mb_edgech.exit430, %filter_mb_edgeh.exit250, %filter_mb_edgeh.exit258, %filter_mb_edgeh.exit266, %filter_mb_edgeh.exit340, %bb.ho, %bb.hv, %bb.if, %bb.io, %filter_mb_edgeh.exit, %filter_mb_edgeh.exit262, %bb.ag, %bb.an, %bb.ax, %bb.bg, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_h264_filter_mb(ptr nofree noundef readonly %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  %i.b = alloca [4 x i8], align 1                 ; 7 uses
  %i.c = alloca [4 x i8], align 1                 ; 7 uses
  %i.d = alloca [4 x i8], align 1                 ; 7 uses
  %i.e = alloca [4 x i8], align 1                 ; 7 uses
  %i.f = alloca [4 x i8], align 1                 ; 7 uses
  %i.g = alloca [4 x i8], align 1                 ; 7 uses
  %i.h = alloca [4 x i8], align 1                 ; 7 uses
  %i.i = alloca [4 x i8], align 1                 ; 7 uses
  %i.j = alloca [4 x i8], align 1                 ; 7 uses
  %i.k = alloca [4 x i8], align 1                 ; 7 uses
  %i.l = alloca [4 x i8], align 1                 ; 7 uses
  %i.m = alloca [4 x i8], align 1                 ; 7 uses
  %i.n = alloca [4 x i8], align 1                 ; 7 uses
  %i.o = alloca [4 x i8], align 1                 ; 7 uses
  %i.p = alloca [4 x i8], align 1                 ; 7 uses
  %i.q = alloca [4 x i8], align 1                 ; 7 uses
  %i.r = alloca [4 x i8], align 1                 ; 7 uses
  %i.s = alloca [4 x i8], align 1                 ; 7 uses
  %i.t = alloca [4 x i8], align 1                 ; 7 uses
  %i.u = alloca [4 x i8], align 1                 ; 7 uses
  %i.v = alloca [4 x i8], align 1                 ; 7 uses
  %i.w = alloca [4 x i8], align 1                 ; 7 uses
  %i.x = alloca [4 x i8], align 1                 ; 7 uses
  %i.y = alloca [4 x i8], align 1                 ; 7 uses
  %i.z = alloca [4 x i8], align 1                 ; 7 uses
  %i.aa = alloca [4 x i8], align 1                ; 7 uses
  %i.ab = alloca [4 x i8], align 1                ; 7 uses
  %i.ac = alloca [4 x i8], align 1                ; 7 uses
  %i.ad = alloca [4 x i8], align 1                ; 7 uses
  %i.ae = alloca [4 x i8], align 1                ; 7 uses
  %i.af = alloca [4 x i8], align 1                ; 7 uses
  %i.ag = alloca [4 x i8], align 1                ; 7 uses
  %i.ah = alloca [4 x i8], align 1                ; 7 uses
  %i.ai = alloca [4 x i8], align 1                ; 7 uses
  %i.aj = alloca [4 x i8], align 1                ; 7 uses
  %i.ak = alloca [4 x i8], align 1                ; 7 uses
  %i.al = alloca [4 x i8], align 1                ; 7 uses
  %i.am = alloca [4 x i8], align 1                ; 7 uses
  %i.an = alloca [4 x i8], align 1                ; 7 uses
  %i.ao = alloca [4 x i8], align 1                ; 7 uses
  %i.ap = alloca [4 x i8], align 1                ; 7 uses
  %i.aq = alloca [4 x i8], align 1                ; 7 uses
  %i.ar = alloca [4 x i8], align 1                ; 7 uses
  %i.as = alloca [4 x i8], align 1                ; 7 uses
  %i.at = alloca [4 x i8], align 1                ; 7 uses
  %i.au = alloca [4 x i8], align 1                ; 7 uses
  %i.av = alloca [4 x i8], align 1                ; 7 uses
  %i.aw = alloca [4 x i8], align 1                ; 7 uses
  %i.ax = alloca [4 x i8], align 1                ; 7 uses
  %i.ay = alloca [4 x i8], align 1                ; 7 uses
  %i.az = alloca [4 x i8], align 1                ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 31732 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !107
  %i.bc = mul nsw i32 %i.bb, %3
  %i.bd = add nsw i32 %i.bc, %2                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 28608 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !82
  %i.bg = sext i32 %i.bd to i64                   ; 7 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !78 ; 14 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 34080 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !71 ; 3 uses
  %.not452 = icmp eq i32 %i.bm, 0                 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 2004
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !79
  %.neg472 = mul i32 %i.bo, -6
  %.neg = add i32 %.neg472, 48                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bq = load i32, ptr %i.bp, align 16, !tbaa !80
  %i.br = add nsw i32 %i.bq, 52
  %i.bs = add i32 %i.br, %.neg                    ; 46 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !81
  %i.bv = add nsw i32 %i.bu, 52
  %i.bw = add i32 %i.bv, %.neg                    ; 46 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 31064 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !108
  %.not292 = icmp eq i32 %i.by, 0
  br i1 %.not292, label %bb.dv, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 20952 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !78 ; 5 uses
  %i.cb = xor i32 %i.ca, %i.bi
  %i.cc = and i32 %i.cb, 128
  %.not293 = icmp eq i32 %i.cc, 0
  %.not294 = icmp eq i32 %i.ca, 0
  %or.cond = or i1 %.not294, %.not293
  br i1 %or.cond, label %bb.dv, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cd = and i32 %i.bi, 7
  %.not295 = icmp eq i32 %i.cd, 0
  br i1 %.not295, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 20932
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !78
  %.phi.trans.insert848 = getelementptr inbounds nuw i8, ptr %1, i64 20936
  %.pre849 = load i32, ptr %.phi.trans.insert848, align 8, !tbaa !78
  %.phi.trans.insert850 = getelementptr inbounds nuw i8, ptr %1, i64 21064
  %.pre851 = load i32, ptr %.phi.trans.insert850, align 8, !tbaa !109
  br label %.loopexit454

bb.e:                                             ; preds = %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 21064
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !109 ; 3 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [16 x i8], ptr @ff_h264_filter_mb.offset, i64 %i.cg
  %i.ci = and i32 %3, 1                           ; 5 uses
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cj ; 8 uses
  %.not296 = icmp ne i32 %i.cf, 0                 ; 10 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 20932 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 34072 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 31088 ; 8 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 30640 ; 8 uses
  %i.cp = load i32, ptr %i.cl, align 4, !tbaa !78 ; 3 uses
  %i.cq = and i32 %i.ca, 7
  %.not297 = icmp eq i32 %i.cq, 0                 ; 2 uses
  br i1 %.not297, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 28628
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !84
  %i.ct = zext i8 %i.cs to i32
  %i.cu = load ptr, ptr %i.cm, align 8, !tbaa !64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !110
  %.not298 = icmp ne i32 %i.cw, 0
  %i.cx = and i32 %i.ca, 16777216
  %.not299 = icmp eq i32 %i.cx, 0
  %or.cond303 = or i1 %.not299, %.not298
  %i.cy = sext i32 %i.cp to i64                   ; 2 uses
  br i1 %or.cond303, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cz = load ptr, ptr %i.cn, align 8, !tbaa !111
  %i.da = getelementptr inbounds [2 x i8], ptr %i.cz, i64 %i.cy
  %i.db = load i16, ptr %i.da, align 2, !tbaa !89
  %i.dc = zext i16 %i.db to i32
  %.not300906 = icmp eq i32 %i.ci, 0
  %.not300 = or i1 %.not296, %.not300906
  %i.dd = select i1 %.not300, i32 8192, i32 32768
  %i.de = and i32 %i.dd, %i.dc
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.df = load ptr, ptr %i.co, align 8, !tbaa !112
  %i.dg = getelementptr inbounds [48 x i8], ptr %i.df, i64 %i.cy
  %i.dh = load i8, ptr %i.ck, align 8, !tbaa !84
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !84
  %i.dl = zext i8 %i.dk to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dm = phi i32 [ %i.de, %bb.g ], [ %i.dl, %bb.h ]
  %i.dn = or i32 %i.dm, %i.ct
  %.not301 = icmp eq i32 %i.dn, 0
  %.sroa.0.0.insert.ext = select i1 %.not301, i64 1, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.insert.ext, %bb.i ], [ 4, %bb.e ]
  %not..not296 = xor i1 %.not296, true
  %i.do = zext i1 %not..not296 to i64             ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !78 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.do
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !78 ; 3 uses
  %i.dt = and i32 %i.ds, 7
  %.not297.1 = icmp eq i32 %i.dt, 0               ; 2 uses
  br i1 %.not297.1, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 28628
  %i.dv = load i8, ptr %i.du, align 4, !tbaa !84
  %i.dw = zext i8 %i.dv to i32
  %i.dx = load ptr, ptr %i.cm, align 8, !tbaa !64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !110
  %.not298.1 = icmp ne i32 %i.dz, 0
  %i.ea = and i32 %i.ds, 16777216
  %.not299.1 = icmp eq i32 %i.ea, 0
  %or.cond303.1 = or i1 %.not299.1, %.not298.1
  %i.eb = sext i32 %i.dq to i64                   ; 2 uses
  br i1 %or.cond303.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ec = load ptr, ptr %i.cn, align 8, !tbaa !111
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !89
  %i.ef = zext i16 %i.ee to i32
  %.not300.1907 = icmp eq i32 %i.ci, 0
  %.not300.1 = or i1 %.not296, %.not300.1907
  %i.eg = select i1 %.not300.1, i32 8192, i32 32768
  %i.eh = and i32 %i.eg, %i.ef
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ei = load ptr, ptr %i.co, align 8, !tbaa !112
  %i.ej = getelementptr inbounds [48 x i8], ptr %i.ei, i64 %i.eb
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !84
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !84
  %i.ep = zext i8 %i.eo to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.eq = phi i32 [ %i.eh, %bb.l ], [ %i.ep, %bb.m ]
  %i.er = or i32 %i.eq, %i.dw
  %.not301.1 = icmp eq i32 %i.er, 0
  %.sroa.0.2.insert.ext = select i1 %.not301.1, i64 65536, i64 131072
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.n
  %.sroa.0.2.insert.ext.pn = phi i64 [ %.sroa.0.2.insert.ext, %bb.n ], [ 262144, %bb.j ]
  %.sroa.0.2 = or disjoint i64 %.sroa.0.0, %.sroa.0.2.insert.ext.pn
  br i1 %.not297, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 28636
  %i.et = load i8, ptr %i.es, align 4, !tbaa !84
  %i.eu = zext i8 %i.et to i32
  %i.ev = load ptr, ptr %i.cm, align 8, !tbaa !64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !110
  %.not298.2 = icmp ne i32 %i.ex, 0
  %i.ey = and i32 %i.ca, 16777216
  %.not299.2 = icmp eq i32 %i.ey, 0
  %or.cond303.2 = or i1 %.not299.2, %.not298.2
  %i.ez = sext i32 %i.cp to i64                   ; 2 uses
  br i1 %or.cond303.2, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fa = load ptr, ptr %i.cn, align 8, !tbaa !111
  %i.fb = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.ez
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !89
  %i.fd = zext i16 %i.fc to i32
  %.not300.2908 = trunc i32 %3 to i1
  %.not300.2.not = or i1 %.not296, %.not300.2908
  %i.fe = select i1 %.not300.2.not, i32 32768, i32 8192
  %i.ff = and i32 %i.fe, %i.fd
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.fg = load ptr, ptr %i.co, align 8, !tbaa !112
  %i.fh = getelementptr inbounds [48 x i8], ptr %i.fg, i64 %i.ez
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !84
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !84
  %i.fn = zext i8 %i.fm to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fo = phi i32 [ %i.ff, %bb.q ], [ %i.fn, %bb.r ]
  %i.fp = or i32 %i.fo, %i.eu
  %.not301.2 = icmp eq i32 %i.fp, 0
  %.sroa.0.4.insert.ext = select i1 %.not301.2, i64 4294967296, i64 8589934592
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.s
  %.sroa.0.4.insert.ext.pn = phi i64 [ %.sroa.0.4.insert.ext, %bb.s ], [ 17179869184, %bb.o ]
  %.sroa.0.3 = or disjoint i64 %.sroa.0.2, %.sroa.0.4.insert.ext.pn
  br i1 %.not297.1, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 28636
  %i.fr = load i8, ptr %i.fq, align 4, !tbaa !84
  %i.fs = zext i8 %i.fr to i32
  %i.ft = load ptr, ptr %i.cm, align 8, !tbaa !64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !110
  %.not298.3 = icmp ne i32 %i.fv, 0
  %i.fw = and i32 %i.ds, 16777216
  %.not299.3 = icmp eq i32 %i.fw, 0
  %or.cond303.3 = or i1 %.not299.3, %.not298.3
  %i.fx = sext i32 %i.dq to i64                   ; 2 uses
  br i1 %or.cond303.3, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fy = load ptr, ptr %i.cn, align 8, !tbaa !111
  %i.fz = getelementptr inbounds [2 x i8], ptr %i.fy, i64 %i.fx
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !89
  %i.gb = zext i16 %i.ga to i32
  %.not300.3910 = trunc i32 %3 to i1
  %.not300.3.not = or i1 %.not296, %.not300.3910
  %i.gc = select i1 %.not300.3.not, i32 32768, i32 8192
  %i.gd = and i32 %i.gc, %i.gb
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ge = load ptr, ptr %i.co, align 8, !tbaa !112
  %i.gf = getelementptr inbounds [48 x i8], ptr %i.ge, i64 %i.fx
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !84
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !84
  %i.gl = zext i8 %i.gk to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.gm = phi i32 [ %i.gd, %bb.v ], [ %i.gl, %bb.w ]
  %i.gn = or i32 %i.gm, %i.fs
  %.not301.3 = icmp eq i32 %i.gn, 0
  %.sroa.0.6.insert.ext = select i1 %.not301.3, i64 281474976710656, i64 562949953421312
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.x
  %.sroa.0.6.insert.ext.pn = phi i64 [ %.sroa.0.6.insert.ext, %bb.x ], [ 1125899906842624, %bb.t ]
  %.sroa.0.4 = or disjoint i64 %.sroa.0.3, %.sroa.0.6.insert.ext.pn
  %i.go = zext i1 %.not296 to i64                 ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !78 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.go
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !78 ; 3 uses
  %i.gt = and i32 %i.gs, 7
  %.not297.4 = icmp eq i32 %i.gt, 0               ; 2 uses
  br i1 %.not297.4, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 28644
  %i.gv = load i8, ptr %i.gu, align 4, !tbaa !84
  %i.gw = zext i8 %i.gv to i32
  %i.gx = load ptr, ptr %i.cm, align 8, !tbaa !64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !110
  %.not298.4 = icmp ne i32 %i.gz, 0
  %i.ha = and i32 %i.gs, 16777216
  %.not299.4 = icmp eq i32 %i.ha, 0
  %or.cond303.4 = or i1 %.not299.4, %.not298.4
  %i.hb = sext i32 %i.gq to i64                   ; 2 uses
  br i1 %or.cond303.4, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hc = load ptr, ptr %i.cn, align 8, !tbaa !111
  %i.hd = getelementptr inbounds [2 x i8], ptr %i.hc, i64 %i.hb
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !89
  %i.hf = zext i16 %i.he to i32
  %.not300.4912 = icmp eq i32 %i.ci, 0
  %.not300.4 = or i1 %.not296, %.not300.4912
  %i.hg = select i1 %.not300.4, i32 8192, i32 32768
  %i.hh = and i32 %i.hg, %i.hf
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.hi = load ptr, ptr %i.co, align 8, !tbaa !112
  %i.hj = getelementptr inbounds [48 x i8], ptr %i.hi, i64 %i.hb
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.hl = load i8, ptr %i.hk, align 4, !tbaa !84
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !84
  %i.hp = zext i8 %i.ho to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.hq = phi i32 [ %i.hh, %bb.aa ], [ %i.hp, %bb.ab ]
  %i.hr = or i32 %i.hq, %i.gw
  %.not301.4 = icmp eq i32 %i.hr, 0
  %.sroa.59.8.insert.ext = select i1 %.not301.4, i64 1, i64 2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.ac
  %.sroa.59.1 = phi i64 [ %.sroa.59.8.insert.ext, %bb.ac ], [ 4, %bb.y ]
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 20936
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !78 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 20956
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !78 ; 3 uses
  %i.hw = and i32 %i.hv, 7
  %.not297.5 = icmp eq i32 %i.hw, 0               ; 2 uses
  br i1 %.not297.5, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 28644
  %i.hy = load i8, ptr %i.hx, align 4, !tbaa !84
  %i.hz = zext i8 %i.hy to i32
  %i.ia = load ptr, ptr %i.cm, align 8, !tbaa !64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !110
  %.not298.5 = icmp ne i32 %i.ic, 0
  %i.id = and i32 %i.hv, 16777216
  %.not299.5 = icmp eq i32 %i.id, 0
  %or.cond303.5 = or i1 %.not299.5, %.not298.5
  %i.ie = sext i32 %i.ht to i64                   ; 2 uses
  br i1 %or.cond303.5, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.if = load ptr, ptr %i.cn, align 8, !tbaa !111
  %i.ig = getelementptr inbounds [2 x i8], ptr %i.if, i64 %i.ie
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !89
  %i.ii = zext i16 %i.ih to i32
  %.not300.5913 = icmp eq i32 %i.ci, 0
  %.not300.5 = or i1 %.not296, %.not300.5913
  %i.ij = select i1 %.not300.5, i32 8192, i32 32768
  %i.ik = and i32 %i.ij, %i.ii
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.il = load ptr, ptr %i.co, align 8, !tbaa !112
  %i.im = getelementptr inbounds [48 x i8], ptr %i.il, i64 %i.ie
  %i.in = getelementptr inbounds nuw i8, ptr %i.ck, i64 5
  %i.io = load i8, ptr %i.in, align 1, !tbaa !84
  %i.ip = zext i8 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !84
  %i.is = zext i8 %i.ir to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.it = phi i32 [ %i.ik, %bb.af ], [ %i.is, %bb.ag ]
  %i.iu = or i32 %i.it, %i.hz
  %.not301.5 = icmp eq i32 %i.iu, 0
  %.sroa.59.10.insert.ext = select i1 %.not301.5, i64 65536, i64 131072
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ad, %bb.ah
  %.sroa.59.10.insert.ext.pn = phi i64 [ %.sroa.59.10.insert.ext, %bb.ah ], [ 262144, %bb.ad ]
  %.sroa.59.2 = or disjoint i64 %.sroa.59.1, %.sroa.59.10.insert.ext.pn
  br i1 %.not297.4, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 28652
  %i.iw = load i8, ptr %i.iv, align 4, !tbaa !84
  %i.ix = zext i8 %i.iw to i32
  %i.iy = load ptr, ptr %i.cm, align 8, !tbaa !64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !110
  %.not298.6 = icmp ne i32 %i.ja, 0
  %i.jb = and i32 %i.gs, 16777216
  %.not299.6 = icmp eq i32 %i.jb, 0
  %or.cond303.6 = or i1 %.not299.6, %.not298.6
  %i.jc = sext i32 %i.gq to i64                   ; 2 uses
  br i1 %or.cond303.6, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jd = load ptr, ptr %i.cn, align 8, !tbaa !111
  %i.je = getelementptr inbounds [2 x i8], ptr %i.jd, i64 %i.jc
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !89
  %i.jg = zext i16 %i.jf to i32
  %.not300.6914 = trunc i32 %3 to i1
  %.not300.6.not = or i1 %.not296, %.not300.6914
  %i.jh = select i1 %.not300.6.not, i32 32768, i32 8192
  %i.ji = and i32 %i.jh, %i.jg
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.jj = load ptr, ptr %i.co, align 8, !tbaa !112
  %i.jk = getelementptr inbounds [48 x i8], ptr %i.jj, i64 %i.jc
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ck, i64 6
  %i.jm = load i8, ptr %i.jl, align 2, !tbaa !84
  %i.jn = zext i8 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !84
  %i.jq = zext i8 %i.jp to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.jr = phi i32 [ %i.ji, %bb.ak ], [ %i.jq, %bb.al ]
  %i.js = or i32 %i.jr, %i.ix
  %.not301.6 = icmp eq i32 %i.js, 0
  %.sroa.59.12.insert.ext = select i1 %.not301.6, i64 4294967296, i64 8589934592
  br label %bb.an

bb.an:                                            ; preds = %bb.ai, %bb.am
  %.sroa.59.12.insert.ext.pn = phi i64 [ %.sroa.59.12.insert.ext, %bb.am ], [ 17179869184, %bb.ai ]
  %.sroa.59.3 = or disjoint i64 %.sroa.59.2, %.sroa.59.12.insert.ext.pn
  br i1 %.not297.5, label %bb.ao, label %.loopexit454.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 28652
  %i.ju = load i8, ptr %i.jt, align 4, !tbaa !84
  %i.jv = zext i8 %i.ju to i32
  %i.jw = load ptr, ptr %i.cm, align 8, !tbaa !64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !110
  %.not298.7 = icmp ne i32 %i.jy, 0
  %i.jz = and i32 %i.hv, 16777216
  %.not299.7 = icmp eq i32 %i.jz, 0
  %or.cond303.7 = or i1 %.not299.7, %.not298.7
  %i.ka = sext i32 %i.ht to i64                   ; 2 uses
  br i1 %or.cond303.7, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kb = load ptr, ptr %i.cn, align 8, !tbaa !111
  %i.kc = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.ka
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !89
  %i.ke = zext i16 %i.kd to i32
  %.not300.7916 = trunc i32 %3 to i1
  %.not300.7.not = or i1 %.not296, %.not300.7916
  %i.kf = select i1 %.not300.7.not, i32 32768, i32 8192
  %i.kg = and i32 %i.kf, %i.ke
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.kh = load ptr, ptr %i.co, align 8, !tbaa !112
  %i.ki = getelementptr inbounds [48 x i8], ptr %i.kh, i64 %i.ka
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ck, i64 7
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !84
  %i.kl = zext i8 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !84
  %i.ko = zext i8 %i.kn to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.kp = phi i32 [ %i.kg, %bb.ap ], [ %i.ko, %bb.aq ]
  %i.kq = or i32 %i.kp, %i.jv
  %.not301.7 = icmp eq i32 %i.kq, 0
  %.sroa.59.14.insert.ext = select i1 %.not301.7, i64 281474976710656, i64 562949953421312
  br label %.loopexit454.loopexit

.loopexit454.loopexit:                            ; preds = %bb.an, %bb.ar
  %.sroa.59.14.insert.ext.pn = phi i64 [ %.sroa.59.14.insert.ext, %bb.ar ], [ 1125899906842624, %bb.an ]
  %.sroa.59.4 = or disjoint i64 %.sroa.59.3, %.sroa.59.14.insert.ext.pn
  br label %.loopexit454

.loopexit454:                                     ; preds = %.loopexit454.loopexit, %bb.d
  %i.kr = phi i32 [ %i.cf, %.loopexit454.loopexit ], [ %.pre851, %bb.d ]
  %i.ks = phi i32 [ %i.ht, %.loopexit454.loopexit ], [ %.pre849, %bb.d ]
  %i.kt = phi i32 [ %i.cp, %.loopexit454.loopexit ], [ %.pre, %bb.d ]
  %.sroa.59.0 = phi i64 [ %.sroa.59.4, %.loopexit454.loopexit ], [ 1125917086973956, %bb.d ] ; 55 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.4, %.loopexit454.loopexit ], [ 1125917086973956, %bb.d ] ; 60 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 28560
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !83 ; 3 uses
  %i.kw = getelementptr inbounds i8, ptr %i.kv, i64 %i.bg
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !84  ; 2 uses
  %i.ky = sext i32 %i.kt to i64
  %i.kz = getelementptr inbounds i8, ptr %i.kv, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !84  ; 2 uses
  %i.lb = sext i32 %i.ks to i64
  %i.lc = getelementptr inbounds i8, ptr %i.kv, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !84  ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 34072
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !64 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 558 ; 3 uses
  %i.lh = sext i8 %i.kx to i64                    ; 2 uses
  %i.li = getelementptr inbounds i8, ptr %i.lg, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !84
  %i.lk = sext i8 %i.la to i64                    ; 2 uses
  %i.ll = getelementptr inbounds i8, ptr %i.lg, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !84
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lf, i64 646 ; 3 uses
  %i.lo = getelementptr inbounds i8, ptr %i.ln, i64 %i.lh
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !84
  %i.lq = getelementptr inbounds i8, ptr %i.ln, i64 %i.lk
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !84
  %i.ls = sext i8 %i.ld to i64                    ; 2 uses
  %i.lt = getelementptr inbounds i8, ptr %i.lg, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !84
  %i.lv = getelementptr inbounds i8, ptr %i.ln, i64 %i.ls
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !84
  %i.lx = sext i8 %i.kx to i32
  %i.ly = sext i8 %i.la to i32
  %i.lz = sext i8 %i.ld to i32
  %i.ma = add nsw i32 %i.lx, 1                    ; 2 uses
  %i.mb = add nsw i32 %i.ma, %i.ly
  %i.mc = ashr i32 %i.mb, 1                       ; 4 uses
  %i.md = zext i8 %i.lj to i32
  %i.me = zext i8 %i.lm to i32
  %i.mf = add nuw nsw i32 %i.md, 1                ; 2 uses
  %i.mg = add nuw nsw i32 %i.mf, %i.me
  %i.mh = lshr i32 %i.mg, 1                       ; 4 uses
  %i.mi = zext i8 %i.lp to i32
  %i.mj = zext i8 %i.lr to i32
  %i.mk = add nuw nsw i32 %i.mi, 1                ; 2 uses
  %i.ml = add nuw nsw i32 %i.mk, %i.mj
  %i.mm = lshr i32 %i.ml, 1                       ; 10 uses
  %i.mn = add nsw i32 %i.ma, %i.lz
  %i.mo = ashr i32 %i.mn, 1                       ; 4 uses
  %i.mp = zext i8 %i.lu to i32
  %i.mq = add nuw nsw i32 %i.mf, %i.mp
  %i.mr = lshr i32 %i.mq, 1                       ; 10 uses
  %i.ms = zext i8 %i.lw to i32
  %i.mt = add nuw nsw i32 %i.mk, %i.ms
  %i.mu = lshr i32 %i.mt, 1                       ; 10 uses
  %.not302 = icmp eq i32 %i.kr, 0
  br i1 %.not302, label %bb.cn, label %bb.as

bb.as:                                            ; preds = %.loopexit454
  %i.mv = add nsw i32 %i.mc, %i.bs                ; 2 uses
  %i.mw = zext i32 %i.mv to i64                   ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr @alpha_table, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !84
  %i.mz = zext i8 %i.my to i32                    ; 2 uses
  %i.na = add nsw i32 %i.mc, %i.bw                ; 2 uses
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds i8, ptr @beta_table, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !84
  %i.ne = zext i8 %i.nd to i32                    ; 2 uses
  %i.nf = icmp ult i32 %i.mv, 68
  %i.ng = icmp ult i32 %i.na, 68
  %or.cond.i324 = or i1 %i.nf, %i.ng
  br i1 %or.cond.i324, label %filter_mb_mbaff_edgev.exit325, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.0.0.extract.trunc515 = trunc i64 %.sroa.0.1 to i16
  %i.nh = icmp sgt i16 %.sroa.0.0.extract.trunc515, 3
  br i1 %i.nh, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #5
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr @tc0_table, i64 %i.mw ; 4 uses
  %sext = shl i64 %.sroa.0.1, 48
  %i.nj = ashr exact i64 %sext, 48
  %i.nk = getelementptr inbounds i8, ptr %i.ni, i64 %i.nj
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !84
  store i8 %i.nl, ptr %i.ao, align 1, !tbaa !84
  %i.nm = shl i64 %.sroa.0.1, 32
  %i.nn = ashr i64 %i.nm, 48
  %i.no = getelementptr inbounds i8, ptr %i.ni, i64 %i.nn
  %i.np = load i8, ptr %i.no, align 1, !tbaa !84
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !84
  %i.nr = shl i64 %.sroa.0.1, 16
  %i.ns = ashr i64 %i.nr, 48
  %i.nt = getelementptr inbounds i8, ptr %i.ni, i64 %i.ns
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !84
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i8 %i.nu, ptr %i.nv, align 1, !tbaa !84
  %.sroa.0.6.extract.shift = lshr i64 %.sroa.0.1, 48
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ni, i64 %.sroa.0.6.extract.shift
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !84
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !84
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !113
  %i.ob = sext i32 %7 to i64
  call void %i.oa(ptr noundef %4, i64 noundef %i.ob, i32 noundef %i.mz, i32 noundef %i.ne, ptr noundef nonnull %i.ao) #5, !inline_history !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #5
  br label %filter_mb_mbaff_edgev.exit325

bb.av:                                            ; preds = %bb.at
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !114
  %i.oe = sext i32 %7 to i64
  tail call void %i.od(ptr noundef %4, i64 noundef %i.oe, i32 noundef %i.mz, i32 noundef %i.ne) #5, !inline_history !103
  br label %filter_mb_mbaff_edgev.exit325

filter_mb_mbaff_edgev.exit325:                    ; preds = %bb.as, %bb.au, %bb.av
  %i.of = shl i32 %7, 3
  %i.og = zext i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %4, i64 %i.og ; 2 uses
  %i.oi = add nsw i32 %i.mo, %i.bs                ; 2 uses
  %i.oj = zext i32 %i.oi to i64                   ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr @alpha_table, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !84
  %i.om = zext i8 %i.ol to i32                    ; 2 uses
  %i.on = add nsw i32 %i.mo, %i.bw                ; 2 uses
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds i8, ptr @beta_table, i64 %i.oo
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !84
  %i.or = zext i8 %i.oq to i32                    ; 2 uses
  %i.os = icmp ult i32 %i.oi, 68
  %i.ot = icmp ult i32 %i.on, 68
  %or.cond.i322 = or i1 %i.os, %i.ot
  br i1 %or.cond.i322, label %filter_mb_mbaff_edgev.exit323, label %bb.aw

bb.aw:                                            ; preds = %filter_mb_mbaff_edgev.exit325
  %.sroa.59.8.extract.trunc642 = trunc i64 %.sroa.59.0 to i16
  %i.ou = icmp sgt i16 %.sroa.59.8.extract.trunc642, 3
  br i1 %i.ou, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #5
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr @tc0_table, i64 %i.oj ; 4 uses
  %sext920 = shl i64 %.sroa.59.0, 48
  %i.ow = ashr exact i64 %sext920, 48
  %i.ox = getelementptr inbounds i8, ptr %i.ov, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !84
  store i8 %i.oy, ptr %i.ap, align 1, !tbaa !84
  %i.oz = shl i64 %.sroa.59.0, 32
  %i.pa = ashr i64 %i.oz, 48
  %i.pb = getelementptr inbounds i8, ptr %i.ov, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !84
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 %i.pc, ptr %i.pd, align 1, !tbaa !84
  %i.pe = shl i64 %.sroa.59.0, 16
  %i.pf = ashr i64 %i.pe, 48
  %i.pg = getelementptr inbounds i8, ptr %i.ov, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !84
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i8 %i.ph, ptr %i.pi, align 1, !tbaa !84
  %.sroa.59.14.extract.shift = lshr i64 %.sroa.59.0, 48
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ov, i64 %.sroa.59.14.extract.shift
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !84
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  store i8 %i.pk, ptr %i.pl, align 1, !tbaa !84
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !113
  %i.po = sext i32 %7 to i64
end_hunk_0
