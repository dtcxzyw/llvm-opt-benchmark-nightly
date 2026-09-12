Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regparse?download=true
inline.NumInlined: 358
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 21
begin_hunk_0_@fetch_token:bb.a
  %i.gp = icmp eq i32 %i.go, 123
  br i1 %i.gp, label %bb.cn, label %.thread747

bb.cn:                                            ; preds = %bb.cm
  %i.gq = load i32, ptr %i.r, align 4, !tbaa !147
  %.not653 = icmp sgt i32 %i.gq, -1
  br i1 %.not653, label %.thread747, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.gr = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.gs = tail call i32 %i.gr(ptr noundef %i.br) #26
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds i8, ptr %i.br, i64 %i.gt
  store ptr %i.gu, ptr %i.c, align 8, !tbaa !131
  %i.gv = call fastcc i32 @scan_octal_number(ptr noundef %i.c, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 11, ptr noundef nonnull %i.p, ptr noundef %i.b) ; 2 uses
  %i.gw = icmp slt i32 %i.gv, 0
  br i1 %i.gw, label %.thread750, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.gx = load ptr, ptr %i.c, align 8, !tbaa !131 ; 6 uses
  %i.gy = icmp ult ptr %i.gx, %2
  br i1 %i.gy, label %bb.cq, label %bb.cy

bb.cq:                                            ; preds = %bb.cp
  %i.gz = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.ha = tail call i32 %i.gz(ptr noundef %i.gx, ptr noundef nonnull %2) #26
  %i.hb = icmp ult i32 %i.ha, 128
  br i1 %i.hb, label %bb.cr, label %bb.cy

bb.cr:                                            ; preds = %bb.cq
  %i.hc = load ptr, ptr %i.az, align 8, !tbaa !148
  %i.hd = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.he = tail call i32 %i.hd(ptr noundef %i.gx, ptr noundef nonnull %2) #26
  %i.hf = tail call i32 %i.hc(i32 noundef %i.he, i32 noundef 4) #26
  %.not654 = icmp eq i32 %i.hf, 0
  br i1 %.not654, label %bb.cy, label %.thread750

bb.cs:                                            ; preds = %bb.m
  %i.hg = icmp ult ptr %i.br, %2
  br i1 %i.hg, label %bb.ct, label %.thread747

bb.ct:                                            ; preds = %bb.cs
  %i.hh = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.hi = tail call i32 %i.hh(ptr noundef %i.br, ptr noundef nonnull %2) #26
  %i.hj = icmp ne i32 %i.hi, 123
  %.pre1043 = load i32, ptr %i.r, align 4, !tbaa !147 ; 2 uses
  %i.hk = and i32 %.pre1043, 1073741824
  %.not650 = icmp eq i32 %i.hk, 0
  %or.cond1213 = select i1 %i.hj, i1 true, i1 %.not650
  br i1 %or.cond1213, label %bb.dh, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hl = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.hm = tail call i32 %i.hl(ptr noundef %i.br) #26
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds i8, ptr %i.br, i64 %i.hn
  store ptr %i.ho, ptr %i.c, align 8, !tbaa !131
  %i.hp = call fastcc i32 @scan_hexadecimal_number(ptr noundef %i.c, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %i.p, ptr noundef %i.b) ; 2 uses
  %i.hq = icmp slt i32 %i.hp, 0
  br i1 %i.hq, label %.thread750, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.hr = load ptr, ptr %i.c, align 8, !tbaa !131 ; 6 uses
  %i.hs = icmp ult ptr %i.hr, %2
  br i1 %i.hs, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.ht = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.hu = tail call i32 %i.ht(ptr noundef %i.hr, ptr noundef nonnull %2) #26
  %i.hv = icmp ult i32 %i.hu, 128
  br i1 %i.hv, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.hw = load ptr, ptr %i.az, align 8, !tbaa !148
  %i.hx = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.hy = tail call i32 %i.hx(ptr noundef %i.hr, ptr noundef nonnull %2) #26
  %i.hz = tail call i32 %i.hw(i32 noundef %i.hy, i32 noundef 11) #26
  %.not652 = icmp eq i32 %i.hz, 0
  br i1 %.not652, label %bb.cy, label %.thread750

bb.cy:                                            ; preds = %bb.cv, %bb.cx, %bb.cw, %bb.cp, %bb.cr, %bb.cq
  %i.ia = phi ptr [ %i.gx, %bb.cp ], [ %i.gx, %bb.cq ], [ %i.gx, %bb.cr ], [ %i.hr, %bb.cw ], [ %i.hr, %bb.cx ], [ %i.hr, %bb.cv ] ; 6 uses
  %storemerge = phi i32 [ 8, %bb.cp ], [ 8, %bb.cq ], [ 8, %bb.cr ], [ 16, %bb.cw ], [ 16, %bb.cx ], [ 16, %bb.cv ]
  store i32 %storemerge, ptr %i.an, align 4, !tbaa !141
  %i.ib = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.ic = tail call i32 %i.ib(ptr noundef %i.br) #26
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds i8, ptr %i.br, i64 %i.id
  %i.if = icmp ugt ptr %i.ia, %i.ie
  br i1 %i.if, label %bb.cz, label %bb.dg

bb.cz:                                            ; preds = %bb.cy
  %i.ig = icmp ult ptr %i.ia, %2
  br i1 %i.ig, label %bb.da, label %.thread750

bb.da:                                            ; preds = %bb.cz
  %i.ih = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.ii = tail call i32 %i.ih(ptr noundef nonnull %i.ia, ptr noundef nonnull %2) #26
  %i.ij = icmp eq i32 %i.ii, 125
  br i1 %i.ij, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ik = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.il = tail call i32 %i.ik(ptr noundef nonnull %i.ia) #26
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds i8, ptr %i.ia, i64 %i.im
  store ptr %i.in, ptr %i.c, align 8, !tbaa !131
  br label %bb.df

bb.dc:                                            ; preds = %bb.da
  %i.io = load i32, ptr %i.an, align 4, !tbaa !141
  %i.ip = tail call fastcc i32 @check_code_point_sequence(ptr noundef nonnull %i.ia, ptr noundef nonnull %2, i32 noundef %i.io, ptr noundef nonnull %i.p) ; 3 uses
  %i.iq = icmp slt i32 %i.ip, 0
  br i1 %i.iq, label %.thread750, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ir = icmp eq i32 %i.ip, 0
  br i1 %i.ir, label %.thread750, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store i32 1, ptr %i.t, align 4, !tbaa !133
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.db
  store i32 4, ptr %0, align 8, !tbaa !142
  %i.is = load i32, ptr %i.b, align 4, !tbaa !26
  store i32 %i.is, ptr %i.as, align 8, !tbaa !28
  br label %.thread747

bb.dg:                                            ; preds = %bb.cy
  store ptr %i.br, ptr %i.c, align 8, !tbaa !131
  br label %.thread747

bb.dh:                                            ; preds = %bb.ct
  %i.it = and i32 %.pre1043, 536870912
  %.not651 = icmp eq i32 %i.it, 0
  br i1 %.not651, label %.thread747, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.iu = call fastcc i32 @scan_hexadecimal_number(ptr noundef %i.c, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %i.p, ptr noundef %i.b) ; 2 uses
  %i.iv = icmp slt i32 %i.iu, 0
  br i1 %i.iv, label %.thread750, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.iw = load ptr, ptr %i.c, align 8, !tbaa !131
  %i.ix = icmp eq ptr %i.iw, %i.br
  %.pre1045 = load i32, ptr %i.b, align 4
  %i.iy = trunc i32 %.pre1045 to i8
  %i.iz = select i1 %i.ix, i8 0, i8 %i.iy
  store i32 1, ptr %0, align 8, !tbaa !142
  store i32 16, ptr %i.an, align 4, !tbaa !141
  store i8 %i.iz, ptr %i.as, align 8, !tbaa !28
  br label %.thread747

bb.dk:                                            ; preds = %bb.m
  %i.ja = icmp ult ptr %i.br, %2
  br i1 %i.ja, label %bb.dl, label %.thread747

bb.dl:                                            ; preds = %bb.dk
  %i.jb = load i32, ptr %i.ar, align 4, !tbaa !145
  %i.jc = and i32 %i.jb, 16384
  %.not649 = icmp eq i32 %i.jc, 0
  br i1 %.not649, label %.thread747, label %.split

.split:                                           ; preds = %bb.dl
  %i.jd = call fastcc i32 @scan_hexadecimal_number(ptr noundef %i.c, ptr noundef nonnull %2, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %i.p, ptr noundef %i.b)
  br label %bb.dm

bb.dm:                                            ; preds = %.split, %.split584
  %phi.call = phi i32 [ %i.jd, %.split ], [ %i.jm, %.split584 ] ; 2 uses
  %i.je = icmp slt i32 %phi.call, 0
  br i1 %i.je, label %.thread750, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.jf = load ptr, ptr %i.c, align 8, !tbaa !131
  %i.jg = icmp eq ptr %i.jf, %i.br
  %.pre1041 = load i32, ptr %i.b, align 4
  %i.jh = select i1 %i.jg, i32 0, i32 %.pre1041
  store i32 4, ptr %0, align 8, !tbaa !142
  store i32 16, ptr %i.an, align 4, !tbaa !141
  store i32 %i.jh, ptr %i.as, align 8, !tbaa !28
  br label %.thread747

bb.do:                                            ; preds = %bb.m
  %i.ji = icmp ult ptr %i.br, %2
  br i1 %i.ji, label %bb.dp, label %.thread747

bb.dp:                                            ; preds = %bb.do
  %i.jj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !66
  %i.jl = and i32 %i.jk, 4096
  %.not648 = icmp eq i32 %i.jl, 0
  br i1 %.not648, label %.thread747, label %.split584

.split584:                                        ; preds = %bb.dp
  %i.jm = call fastcc i32 @scan_hexadecimal_number(ptr noundef %i.c, ptr noundef nonnull %2, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %i.p, ptr noundef %i.b)
  br label %bb.dm

bb.dq:                                            ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  store ptr %i.bg, ptr %i.c, align 8, !tbaa !131
  %i.jn = call fastcc i32 @scan_number(ptr noundef %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.p) ; 5 uses
  %or.cond = icmp ugt i32 %i.jn, 1000
  br i1 %or.cond, label %bb.dx, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.jo = load i32, ptr %i.r, align 4, !tbaa !147
  %i.jp = and i32 %i.jo, 65536
  %.not643 = icmp eq i32 %i.jp, 0
  br i1 %.not643, label %bb.dx, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !135
  %i.js = icmp sle i32 %i.jn, %i.jr               ; 2 uses
  %i.jt = icmp samesign ult i32 %i.jn, 10
  %or.cond5 = or i1 %i.jt, %i.js
  br i1 %or.cond5, label %bb.dt, label %bb.dx

bb.dt:                                            ; preds = %bb.ds
  %i.ju = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !66
  %i.jw = and i32 %i.jv, 32
  %.not644 = icmp eq i32 %i.jw, 0
  br i1 %.not644, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  br i1 %i.js, label %bb.dv, label %.thread750

bb.dv:                                            ; preds = %bb.du
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !136 ; 2 uses
  %.not645 = icmp eq ptr %i.jy, null
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ka = select i1 %.not645, ptr %i.jz, ptr %i.jy
  %i.kb = zext nneg i32 %i.jn to i64
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.ka, i64 %i.kb
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !138
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %.thread750, label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dt
  store i32 7, ptr %0, align 8, !tbaa !142
  store i32 1, ptr %i.as, align 8, !tbaa !28
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.jn, ptr %i.kf, align 4, !tbaa !28
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.kg, align 8, !tbaa !28
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.kh, align 4, !tbaa !28
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.ki, align 8, !tbaa !28
  br label %.thread747

bb.dx:                                            ; preds = %bb.dr, %bb.ds, %bb.dq
  %i.kj = and i32 %i.bn, -2
  %or.cond7 = icmp eq i32 %i.kj, 56
  br i1 %or.cond7, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.kk = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.kl = tail call i32 %i.kk(ptr noundef %i.bg) #26
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds i8, ptr %i.bg, i64 %i.km
  store ptr %i.kn, ptr %i.c, align 8, !tbaa !131
  br label %.thread747

bb.dz:                                            ; preds = %bb.dx
  store ptr %i.bg, ptr %i.c, align 8, !tbaa !131
  %i.ko = load i32, ptr %i.r, align 4, !tbaa !147
  %i.kp = and i32 %i.ko, 268435456
  %.not646 = icmp eq i32 %i.kp, 0
  br i1 %.not646, label %bb.ec, label %bb.ea

.thread:                                          ; preds = %bb.m
  %i.kq = load i32, ptr %i.r, align 4, !tbaa !147
  %i.kr = and i32 %i.kq, 268435456
  %.not646746 = icmp eq i32 %i.kr, 0
  br i1 %.not646746, label %.thread747, label %bb.ea

bb.ea:                                            ; preds = %.thread, %bb.dz
  %i.ks = phi ptr [ %i.br, %.thread ], [ %i.bg, %bb.dz ]
  %i.kt = icmp eq i32 %i.bn, 48
  %i.ku = select i1 %i.kt, i32 2, i32 3
  %i.kv = call fastcc i32 @scan_octal_number(ptr noundef %i.c, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %i.ku, ptr noundef nonnull %i.p, ptr noundef %i.b)
  %i.kw = icmp slt i32 %i.kv, 0
  br i1 %i.kw, label %.thread750, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.kx = load ptr, ptr %i.c, align 8, !tbaa !131
  %i.ky = icmp eq ptr %i.kx, %i.ks
  %.pre1039 = load i32, ptr %i.b, align 4
  %i.kz = trunc i32 %.pre1039 to i8
  %i.la = select i1 %i.ky, i8 0, i8 %i.kz
  store i32 1, ptr %0, align 8, !tbaa !142
  store i32 8, ptr %i.an, align 4, !tbaa !141
  store i8 %i.la, ptr %i.as, align 8, !tbaa !28
  br label %.thread747

bb.ec:                                            ; preds = %bb.dz
  %i.lb = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.lc = tail call i32 %i.lb(ptr noundef %i.bg) #26
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds i8, ptr %i.bg, i64 %i.ld
  store ptr %i.le, ptr %i.c, align 8, !tbaa !131
  br label %.thread747

bb.ed:                                            ; preds = %bb.m
  %i.lf = icmp ult ptr %i.br, %2
  br i1 %i.lf, label %bb.ee, label %.thread747

bb.ee:                                            ; preds = %bb.ed
  %i.lg = load i32, ptr %i.ar, align 4, !tbaa !145
  %i.lh = and i32 %i.lg, 256
  %.not642 = icmp eq i32 %i.lh, 0
  br i1 %.not642, label %.thread747, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.li = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.lj = tail call i32 %i.li(ptr noundef %i.br, ptr noundef nonnull %2) #26 ; 3 uses
  %i.lk = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.ll = tail call i32 %i.lk(ptr noundef %i.br) #26
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds i8, ptr %i.br, i64 %i.lm ; 3 uses
  store ptr %i.ln, ptr %i.c, align 8, !tbaa !131
  switch i32 %i.lj, label %bb.ez [
    i32 60, label %bb.eg
    i32 39, label %bb.eg
  ]

bb.eg:                                            ; preds = %bb.hx, %bb.ef, %bb.ef
  %i.lo = phi ptr [ %i.ln, %bb.ef ], [ %i.ln, %bb.ef ], [ %i.vs, %bb.hx ]
  %.0576 = phi i32 [ %i.lj, %bb.ef ], [ %i.lj, %bb.ef ], [ 40, %bb.hx ]
  %i.lp = phi i1 [ false, %bb.ef ], [ false, %bb.ef ], [ true, %bb.hx ]
  store ptr null, ptr %i.d, align 8, !tbaa !131
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.lr = call fastcc i32 @fetch_name_with_level(i32 noundef %.0576, ptr noundef %i.c, ptr noundef nonnull %2, ptr noundef %i.d, ptr noundef %3, ptr noundef %i.f, ptr noundef %i.lq, ptr noundef %i.g) ; 3 uses
  %i.ls = icmp eq i32 %i.lr, 1
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  br i1 %i.ls, label %.thread749, label %bb.eh

.thread749:                                       ; preds = %bb.eg
  store i32 1, ptr %i.lt, align 4, !tbaa !28
  br label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  store i32 0, ptr %i.lt, align 4, !tbaa !28
  %i.lu = icmp slt i32 %i.lr, 0
  br i1 %i.lu, label %.thread750, label %bb.ei

bb.ei:                                            ; preds = %.thread749, %bb.eh
  %i.lv = load i32, ptr %i.g, align 4, !tbaa !26  ; 2 uses
  %.not711 = icmp eq i32 %i.lv, 0
  br i1 %.not711, label %bb.es, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  br i1 %i.lp, label %.thread750, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.lw = icmp eq i32 %i.lv, 2
  %i.lx = load i32, ptr %i.f, align 4, !tbaa !26  ; 5 uses
  br i1 %i.lw, label %bb.el, label %backref_rel_to_abs.exit

bb.el:                                            ; preds = %bb.ek
  %i.ly = icmp sgt i32 %i.lx, 0
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !135 ; 3 uses
  br i1 %i.ly, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.mb = sub nsw i32 2147483647, %i.ma
  %i.mc = icmp samesign ugt i32 %i.lx, %i.mb
  %i.md = add nsw i32 %i.ma, %i.lx
  %spec.select.i = select i1 %i.mc, i32 -208, i32 %i.md
  br label %backref_rel_to_abs.exit

bb.en:                                            ; preds = %bb.el
  %i.me = add i32 %i.ma, %i.lx
  %i.mf = add i32 %i.me, 1
  br label %backref_rel_to_abs.exit

backref_rel_to_abs.exit:                          ; preds = %bb.ek, %bb.en, %bb.em
  %i.mg = phi i32 [ %spec.select.i, %bb.em ], [ %i.mf, %bb.en ], [ %i.lx, %bb.ek ] ; 4 uses
  %i.mh = icmp slt i32 %i.mg, 1
  br i1 %i.mh, label %.thread750, label %bb.eo

bb.eo:                                            ; preds = %backref_rel_to_abs.exit
  %i.mi = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !66
  %i.mk = and i32 %i.mj, 32
  %.not715 = icmp eq i32 %i.mk, 0
  br i1 %.not715, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ml = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !135
  %i.mn = icmp sgt i32 %i.mg, %i.mm
  br i1 %i.mn, label %.thread750, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.mo = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !136 ; 2 uses
  %.not716 = icmp eq ptr %i.mp, null
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.mr = select i1 %.not716, ptr %i.mq, ptr %i.mp
  %i.ms = zext nneg i32 %i.mg to i64
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr %i.mr, i64 %i.ms
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !138
  %i.mv = icmp eq ptr %i.mu, null
  br i1 %i.mv, label %.thread750, label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.eo
  store i32 7, ptr %0, align 8, !tbaa !142
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.mw, align 8, !tbaa !28
  store i32 1, ptr %i.as, align 8, !tbaa !28
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.mg, ptr %i.mx, align 4, !tbaa !28
  br label %.thread747

bb.es:                                            ; preds = %bb.ei
  %i.my = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.mz = call fastcc i32 @name_to_group_numbers(ptr noundef %3, ptr noundef %i.lo, ptr noundef %i.my, ptr noundef %i.e) ; 4 uses
  %i.na = icmp slt i32 %i.mz, 1
  br i1 %i.na, label %.thread750, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.nb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
end_hunk_0
begin_hunk_1_@prs_callout_of_contents:bb.a
  store i32 0, ptr %i.dj, align 4, !tbaa !28
  %i.dk = getelementptr i8, ptr %i.dc, i64 -140
  store i32 0, ptr %i.dk, align 4, !tbaa !114
  %i.dl = getelementptr i8, ptr %i.dc, i64 -136
  store i32 %.0154, ptr %i.dl, align 8, !tbaa !166
  %i.dm = getelementptr i8, ptr %i.dc, i64 -132
  store i32 -1, ptr %i.dm, align 4, !tbaa !167
  %i.dn = getelementptr i8, ptr %i.dc, i64 -88
  store ptr %i.co, ptr %i.dn, align 8, !tbaa !28
  %i.do = ptrtoint ptr %.us-phi200 to i64
  %i.dp = ptrtoint ptr %.0 to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.co, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dc, i64 -80
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !28
  store ptr %.8, ptr %1, align 8, !tbaa !131
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %.thread.us, %.preheader181.us, %.thread.us204, %bb.i, %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.h, %.split.us, %bb.a, %bb.z, %node_new_callout.exit, %onig_reg_callout_list_at.exit.thread
  %.0156 = phi i32 [ -227, %bb.a ], [ -118, %bb.n ], [ -227, %bb.o ], [ %i.by, %bb.p ], [ -5, %bb.q ], [ %i.cj, %bb.s ], [ %i.cn, %bb.u ], [ -5, %onig_reg_callout_list_at.exit.thread ], [ -5, %node_new_callout.exit ], [ 0, %bb.z ], [ -227, %.preheader181.us ], [ -118, %bb.l ], [ -118, %bb.m ], [ %.mux, %bb.i ], [ -118, %bb.h ], [ -227, %.thread.us ], [ -118, %.split.us ], [ -5, %bb.v ], [ -227, %.thread.us204 ], [ -227, %bb.b ], [ -227, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.0156
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @prs_callout_of_name(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca [4 x i32], align 16               ; 7 uses
  %4 = alloca [4 x %union.OnigValue], align 16    ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !125  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.g = load ptr, ptr %1, align 8, !tbaa !131    ; 7 uses
  %i.h = icmp ult ptr %i.g, %2
  br i1 %i.h, label %.preheader236, label %clear_callout_args.exit

.preheader236:                                    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader236, %bb.c
  %i.j = phi ptr [ %i.g, %.preheader236 ], [ %i.q, %bb.c ] ; 9 uses
  %i.k = icmp ult ptr %i.j, %2
  br i1 %i.k, label %bb.c, label %clear_callout_args.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.m = tail call i32 %i.l(ptr noundef %i.j, ptr noundef nonnull %2) #26 ; 3 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.o = tail call i32 %i.n(ptr noundef %i.j) #26
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.j, i64 %i.p ; 8 uses
  switch i32 %i.m, label %bb.b [
    i32 123, label %bb.d
    i32 91, label %bb.d
    i32 41, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.r = icmp eq i32 %i.m, 91
  %.not.i = icmp ult ptr %i.g, %i.j
  br i1 %.not.i, label %.preheader.i, label %clear_callout_args.exit

.preheader.i:                                     ; preds = %bb.d, %.thread.i
  %.038.i = phi ptr [ %i.ac, %.thread.i ], [ %i.g, %bb.d ] ; 4 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.t = tail call i32 %i.s(ptr noundef %.038.i, ptr noundef nonnull %i.j) #26, !inline_history !168 ; 4 uses
  %i.u = and i32 %i.t, -33
  %i.v = add i32 %i.u, -65
  %or.cond34.i = icmp ult i32 %i.v, 26
  br i1 %or.cond34.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.w = add i32 %i.t, -48
  %or.cond5.i = icmp ult i32 %i.w, 10
  %i.x = icmp eq i32 %i.t, 95
  %or.cond7.i = or i1 %i.x, %or.cond5.i
  br i1 %or.cond7.i, label %bb.f, label %clear_callout_args.exit

bb.f:                                             ; preds = %bb.e
  %i.y = icmp eq ptr %.038.i, %i.g
  %or.cond9.i = icmp samesign ult i32 %i.t, 58
  %or.cond35.i = and i1 %i.y, %or.cond9.i
  br i1 %or.cond35.i, label %clear_callout_args.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.f, %.preheader.i
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.aa = tail call i32 %i.z(ptr noundef %.038.i) #26, !inline_history !168
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %.038.i, i64 %i.ab ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.j
  br i1 %i.ad, label %.preheader.i, label %is_allowed_callout_name.exit, !llvm.loop !0

is_allowed_callout_name.exit:                     ; preds = %.thread.i
  br i1 %i.r, label %bb.g, label %bb.l

bb.g:                                             ; preds = %is_allowed_callout_name.exit
  %i.ae = icmp ult ptr %i.q, %2
  br i1 %i.ae, label %.lr.ph, label %clear_callout_args.exit

bb.h:                                             ; preds = %.lr.ph
  %.not172 = icmp ult ptr %i.al, %2
  br i1 %.not172, label %.lr.ph, label %._crit_edge256, !llvm.loop !294

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %i.af = phi ptr [ %i.al, %bb.h ], [ %i.q, %bb.g ] ; 7 uses
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.ah = tail call i32 %i.ag(ptr noundef %i.af, ptr noundef nonnull %2) #26
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.aj = tail call i32 %i.ai(ptr noundef %i.af) #26
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.af, i64 %i.ak ; 6 uses
  %i.am = icmp eq i32 %i.ah, 93
  br i1 %i.am, label %._crit_edge, label %bb.h, !llvm.loop !294

._crit_edge:                                      ; preds = %.lr.ph
  br label %._crit_edge256, !llvm.loop !294

._crit_edge256:                                   ; preds = %bb.h, %._crit_edge
  %.not.i185 = icmp ult ptr %i.q, %i.af
  br i1 %.not.i185, label %.preheader.i187, label %clear_callout_args.exit

.preheader.i187:                                  ; preds = %._crit_edge256, %.thread.i194
  %.038.i188 = phi ptr [ %i.ax, %.thread.i194 ], [ %i.q, %._crit_edge256 ] ; 4 uses
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.ao = tail call i32 %i.an(ptr noundef %.038.i188, ptr noundef nonnull %i.af) #26, !inline_history !297 ; 4 uses
  %i.ap = and i32 %i.ao, -33
  %i.aq = add i32 %i.ap, -65
  %or.cond34.i189 = icmp ult i32 %i.aq, 26
  br i1 %or.cond34.i189, label %.thread.i194, label %bb.i

bb.i:                                             ; preds = %.preheader.i187
  %i.ar = add i32 %i.ao, -48
  %or.cond5.i190 = icmp ult i32 %i.ar, 10
  %i.as = icmp eq i32 %i.ao, 95
  %or.cond7.i191 = or i1 %i.as, %or.cond5.i190
  br i1 %or.cond7.i191, label %bb.j, label %clear_callout_args.exit

bb.j:                                             ; preds = %bb.i
  %i.at = icmp eq ptr %.038.i188, %i.q
  %or.cond9.i192 = icmp samesign ult i32 %i.ao, 58
  %or.cond35.i193 = and i1 %i.at, %or.cond9.i192
  br i1 %or.cond35.i193, label %clear_callout_args.exit, label %.thread.i194

.thread.i194:                                     ; preds = %bb.j, %.preheader.i187
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.av = tail call i32 %i.au(ptr noundef %.038.i188) #26, !inline_history !297
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %.038.i188, i64 %i.aw ; 2 uses
  %i.ay = icmp ult ptr %i.ax, %i.af
  br i1 %i.ay, label %.preheader.i187, label %is_allowed_callout_tag_name.exit, !llvm.loop !9

is_allowed_callout_tag_name.exit:                 ; preds = %.thread.i194
  %i.az = icmp ult ptr %i.al, %2
  br i1 %i.az, label %bb.k, label %clear_callout_args.exit

bb.k:                                             ; preds = %is_allowed_callout_tag_name.exit
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.bb = tail call i32 %i.ba(ptr noundef nonnull %i.al, ptr noundef nonnull %2) #26
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.bd = tail call i32 %i.bc(ptr noundef nonnull %i.al) #26
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %i.al, i64 %i.be
  br label %bb.l

bb.l:                                             ; preds = %is_allowed_callout_name.exit, %bb.k
  %i.bg = phi ptr [ %i.bf, %bb.k ], [ %i.q, %is_allowed_callout_name.exit ] ; 5 uses
  %.0137 = phi i32 [ %i.bb, %bb.k ], [ %i.m, %is_allowed_callout_name.exit ] ; 3 uses
  %.0136 = phi ptr [ %i.q, %bb.k ], [ null, %is_allowed_callout_name.exit ] ; 2 uses
  %.2 = phi ptr [ %i.af, %bb.k ], [ null, %is_allowed_callout_name.exit ] ; 2 uses
  %i.bh = icmp eq i32 %.0137, 123
  br i1 %i.bh, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.bi = icmp ult ptr %i.bg, %2
  br i1 %i.bi, label %.preheader.i195, label %clear_callout_args.exit

.preheader.i195:                                  ; preds = %bb.m
  %.val184 = load ptr, ptr %i.e, align 8, !tbaa !125 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val184, i64 32
  br label %bb.n

bb.n:                                             ; preds = %.split.us.i, %.preheader.i195
  %.0127.i = phi i32 [ %spec.select, %.split.us.i ], [ 0, %.preheader.i195 ]
  %.0112.i = phi ptr [ %i.bq, %.split.us.i ], [ %i.bg, %.preheader.i195 ] ; 2 uses
  %i.bk = icmp ult ptr %.0112.i, %2
  br i1 %i.bk, label %.lr.ph.split.i, label %clear_callout_args.exit

.lr.ph.split.i:                                   ; preds = %bb.n, %bb.s
  %.111348.i = phi ptr [ %i.bq, %bb.s ], [ %.0112.i, %bb.n ] ; 3 uses
  %.012145.i = phi i32 [ %.2123.i, %bb.s ], [ 0, %bb.n ] ; 7 uses
  %.012444.i = phi i32 [ %.2126.i, %bb.s ], [ 0, %bb.n ]
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !83
  %i.bm = tail call i32 %i.bl(ptr noundef %.111348.i, ptr noundef nonnull %2) #26, !inline_history !295 ; 3 uses
  %i.bn = load ptr, ptr %.val184, align 8, !tbaa !84
  %i.bo = tail call i32 %i.bn(ptr noundef %.111348.i) #26, !inline_history !295
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %.111348.i, i64 %i.bp ; 5 uses
  %.not.i196 = icmp eq i32 %.012444.i, 0
  br i1 %.not.i196, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i
  switch i32 %i.bm, label %bb.p [
    i32 92, label %bb.r
    i32 125, label %bb.r
    i32 44, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.br = add nsw i32 %.012145.i, 1
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.split.i
  switch i32 %i.bm, label %bb.r [
    i32 92, label %bb.s
    i32 125, label %.split.us.i
    i32 44, label %.split.us.i
  ]

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.o, %bb.o
  %.1122.i = phi i32 [ %.012145.i, %bb.o ], [ %.012145.i, %bb.o ], [ %i.br, %bb.p ], [ %.012145.i, %bb.q ], [ %.012145.i, %bb.o ]
  %i.bs = add nsw i32 %.1122.i, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2126.i = phi i32 [ 0, %bb.r ], [ 1, %bb.q ]
  %.2123.i = phi i32 [ %i.bs, %bb.r ], [ %.012145.i, %bb.q ]
  %i.bt = icmp ult ptr %i.bq, %2
  br i1 %i.bt, label %.lr.ph.split.i, label %clear_callout_args.exit

.split.us.i:                                      ; preds = %bb.q, %bb.q
  %.not141.i = icmp ne i32 %.012145.i, 0
  %i.bu = zext i1 %.not141.i to i32
  %spec.select = add nuw nsw i32 %.0127.i, %i.bu  ; 2 uses
  %i.bv = icmp ne i32 %i.bm, 125                  ; 2 uses
  %i.bw = icmp samesign ult i32 %spec.select, 4
  %or.cond5.i197 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond5.i197, label %bb.n, label %bb.t, !llvm.loop !10

bb.t:                                             ; preds = %.split.us.i
  br i1 %i.bv, label %clear_callout_args.exit, label %prs_callout_args.exit

prs_callout_args.exit:                            ; preds = %bb.t
  %i.bx = icmp ult ptr %i.bq, %2
  br i1 %i.bx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %prs_callout_args.exit
  %i.by = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.bz = tail call i32 %i.by(ptr noundef %i.bq, ptr noundef nonnull %2) #26
  %i.ca = icmp ne i32 %i.bz, 41
  %i.cb = zext i1 %i.ca to i32
  br label %bb.v

bb.v:                                             ; preds = %prs_callout_args.exit, %bb.u
  %not. = phi i32 [ %i.cb, %bb.u ], [ 1, %prs_callout_args.exit ]
  store ptr %i.bg, ptr %i.d, align 8, !tbaa !131
  %i.cc = call fastcc i32 @get_callout_name_id_by_name(ptr noundef nonnull %i.f, i32 noundef %not., ptr noundef %i.g, ptr noundef nonnull %i.j, ptr noundef %i.b) ; 2 uses
  %.not175 = icmp eq i32 %i.cc, 0
  br i1 %.not175, label %bb.w, label %clear_callout_args.exit

bb.w:                                             ; preds = %bb.v
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !26  ; 2 uses
  %i.ce = load ptr, ptr @GlobalCalloutNameList, align 8, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !70
  %i.ch = sext i32 %i.cd to i64
  %i.ci = getelementptr inbounds [120 x i8], ptr %i.cg, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !76 ; 4 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph264, label %._crit_edge265

.lr.ph264:                                        ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cn = zext nneg i32 %i.ck to i64
  %i.co = shl nuw nsw i64 %i.cn, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 8 %i.cm, i64 %i.co, i1 false), !tbaa !26
  br label %._crit_edge265

._crit_edge265:                                   ; preds = %.lr.ph264, %bb.w
  %.val183 = load ptr, ptr %i.e, align 8, !tbaa !125
  %i.cp = call fastcc i32 @prs_callout_args(i32 noundef 0, ptr noundef %i.d, ptr noundef nonnull %2, i32 noundef %i.ck, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr %.val183) ; 4 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %clear_callout_args.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge265
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !131 ; 4 uses
  %i.cs = icmp ult ptr %i.cr, %2
  br i1 %i.cs, label %.thread220, label %node_new_callout.exit

.thread220:                                       ; preds = %bb.x
  %i.ct = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.cu = tail call i32 %i.ct(ptr noundef %i.cr, ptr noundef nonnull %2) #26
  %i.cv = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.cw = tail call i32 %i.cv(ptr noundef %i.cr) #26
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %i.cr, i64 %i.cx
  %.pre.pre = load ptr, ptr @GlobalCalloutNameList, align 8, !tbaa !25
  br label %.loopexit

bb.y:                                             ; preds = %bb.l
  %i.cz = call fastcc i32 @get_callout_name_id_by_name(ptr noundef nonnull %i.f, i32 noundef 0, ptr noundef %i.g, ptr noundef nonnull %i.j, ptr noundef %i.b) ; 2 uses
  %.not174 = icmp eq i32 %i.cz, 0
  br i1 %.not174, label %bb.z, label %clear_callout_args.exit

bb.z:                                             ; preds = %bb.y
  %i.da = load i32, ptr %i.b, align 4, !tbaa !26  ; 3 uses
  %i.db = load ptr, ptr @GlobalCalloutNameList, align 8, !tbaa !25 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !70
  %i.de = sext i32 %i.da to i64
  %i.df = getelementptr inbounds [120 x i8], ptr %i.dd, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !76 ; 4 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph261, label %.loopexit

.lr.ph261:                                        ; preds = %bb.z
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dk = zext nneg i32 %i.dh to i64
  %i.dl = shl nuw nsw i64 %i.dk, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 8 %i.dj, i64 %i.dl, i1 false), !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph261, %bb.z, %.thread220
  %.pre = phi ptr [ %.pre.pre, %.thread220 ], [ %i.db, %bb.z ], [ %i.db, %.lr.ph261 ] ; 3 uses
  %i.dm = phi ptr [ %i.cy, %.thread220 ], [ %i.bg, %bb.z ], [ %i.bg, %.lr.ph261 ]
  %i.dn = phi i32 [ %i.cd, %.thread220 ], [ %i.da, %bb.z ], [ %i.da, %.lr.ph261 ] ; 11 uses
  %.1143 = phi i32 [ %i.cp, %.thread220 ], [ 0, %bb.z ], [ 0, %.lr.ph261 ] ; 14 uses
  %.1141 = phi i32 [ %i.ck, %.thread220 ], [ %i.dh, %bb.z ], [ %i.dh, %.lr.ph261 ] ; 5 uses
  %.2139 = phi i32 [ %i.cu, %.thread220 ], [ %.0137, %bb.z ], [ %.0137, %.lr.ph261 ]
  %i.do = icmp slt i32 %i.dn, 0                   ; 2 uses
  br i1 %i.do, label %onig_get_callout_in_by_name_id.exit, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.dp = load i32, ptr %.pre, align 8, !tbaa !68
  %.not.i198 = icmp slt i32 %i.dn, %i.dp
  br i1 %.not.i198, label %bb.ab, label %onig_get_callout_in_by_name_id.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !70
  %i.ds = zext nneg i32 %i.dn to i64
  %i.dt = getelementptr inbounds nuw [120 x i8], ptr %i.dr, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !73
  br label %onig_get_callout_in_by_name_id.exit

onig_get_callout_in_by_name_id.exit:              ; preds = %.loopexit, %bb.aa, %bb.ab
  %.0.i = phi i32 [ %i.dv, %bb.ab ], [ 0, %bb.aa ], [ 0, %.loopexit ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !70
  %i.dy = sext i32 %i.dn to i64                   ; 2 uses
  %i.dz = getelementptr inbounds [120 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 28
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !77
  %i.ec = icmp sgt i32 %.1143, %.1141
  %i.ed = sub nsw i32 %.1141, %i.eb
  %i.ee = icmp slt i32 %.1143, %i.ed
  %or.cond = select i1 %i.ec, i1 true, i1 %i.ee
  br i1 %or.cond, label %node_new_callout.exit, label %bb.ac

bb.ac:                                            ; preds = %onig_get_callout_in_by_name_id.exit
  %.not176 = icmp eq i32 %.2139, 41
  br i1 %.not176, label %bb.ad, label %node_new_callout.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ef = getelementptr i8, ptr %3, i64 72        ; 5 uses
  %.val = load ptr, ptr %i.ef, align 8, !tbaa !129
  %i.eg = call fastcc i32 @reg_callout_list_entry(ptr %.val, ptr noundef %i.a) ; 2 uses
  %.not177 = icmp eq i32 %i.eg, 0
  br i1 %.not177, label %bb.ae, label %node_new_callout.exit

bb.ae:                                            ; preds = %bb.ad
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !129
  %i.ei = tail call ptr @onig_get_regex_ext(ptr noundef %i.eh) #26 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %node_new_callout.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !165
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !129
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !127
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !128
  %i.er = tail call i32 @onig_ext_set_pattern(ptr noundef %i.em, ptr noundef %i.eo, ptr noundef %i.eq) #26 ; 2 uses
  %.not178 = icmp eq i32 %i.er, 0
  br i1 %.not178, label %bb.ah, label %node_new_callout.exit

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not179 = icmp eq ptr %.0136, %.2
  %.pre289 = load i32, ptr %i.a, align 4, !tbaa !26 ; 5 uses
  br i1 %.not179, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.es = load ptr, ptr %i.ef, align 8, !tbaa !129
  %i.et = sext i32 %.pre289 to i64
  %i.eu = tail call fastcc i32 @callout_tag_entry(ptr noundef nonnull %3, ptr noundef %i.es, ptr noundef %.0136, ptr noundef %.2, i64 noundef %i.et) ; 2 uses
  %.not180 = icmp eq i32 %i.eu, 0
  br i1 %.not180, label %bb.aj, label %node_new_callout.exit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ev = load ptr, ptr %i.ef, align 8, !tbaa !129
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 448
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !89 ; 3 uses
  %i.ey = icmp eq ptr %i.ex, null
  %i.ez = icmp slt i32 %.pre289, 1
  %or.cond.i = or i1 %i.ez, %i.ey
  br i1 %or.cond.i, label %node_new_callout.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !91
  %i.fc = icmp sgt i32 %.pre289, %i.fb
  br i1 %i.fc, label %node_new_callout.exit, label %onig_reg_callout_list_at.exit

onig_reg_callout_list_at.exit:                    ; preds = %bb.ak
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !92
  %i.ff = zext nneg i32 %.pre289 to i64
  %i.fg = getelementptr [144 x i8], ptr %i.fe, i64 %i.ff ; 14 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 -144
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %node_new_callout.exit, label %bb.al

bb.al:                                            ; preds = %onig_reg_callout_list_at.exit
  %calloc.i.i = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 7 uses
  %i.fj = icmp eq ptr %calloc.i.i, null
  br i1 %i.fj, label %node_new_callout.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 10, ptr %calloc.i.i, align 8, !tbaa !28
  %i.fk = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 28
  store i32 %i.dn, ptr %i.fk, align 4, !tbaa !28
  %i.fl = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 24
  store i32 %.pre289, ptr %i.fl, align 8, !tbaa !28
end_hunk_1
begin_hunk_2_@callout_tag_entry:bb.a
  store ptr %3, ptr %i.q, align 8, !tbaa !31
  %i.r = ptrtoint ptr %5 to i64
  %i.s = call i32 @onig_st_lookup(ptr noundef nonnull %i.l, i64 noundef %i.r, ptr noundef nonnull %i.a) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.t = icmp sgt i64 %.pre.i.i, -1
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %callout_tag_find.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %2, ptr %i.u, align 8, !tbaa !139
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %3, ptr %i.v, align 8, !tbaa !140
  br label %callout_tag_entry_raw.exit

bb.i:                                             ; preds = %callout_tag_find.exit.i, %callout_tag_find.exit.thread.i
  %i.w = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %callout_tag_entry_raw.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %2, ptr %i.w, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %3, ptr %i.y, align 8, !tbaa !31
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = call i32 @onig_st_insert(ptr noundef %i.l, i64 noundef %i.z, i64 noundef range(i64 -2147483648, 2147483648) %4) #26
  %.fr.i = freeze i32 %i.aa                       ; 2 uses
  %.not.i16.i = icmp eq i32 %.fr.i, 0
  br i1 %.not.i16.i, label %callout_tag_entry_raw.exit, label %onig_st_insert_strend.exit.i

onig_st_insert_strend.exit.i:                     ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.w) #26
  %spec.select.i = call i32 @llvm.smin.i32(i32 %.fr.i, i32 0)
  br label %callout_tag_entry_raw.exit

callout_tag_entry_raw.exit:                       ; preds = %bb.f, %bb.h, %bb.i, %bb.j, %onig_st_insert_strend.exit.i
  %.0.i21 = phi i32 [ -231, %bb.f ], [ -219, %bb.h ], [ -5, %bb.i ], [ %spec.select.i, %onig_st_insert_strend.exit.i ], [ 0, %bb.j ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !89 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  %i.ae = icmp slt i64 %4, 1
  %or.cond.i = or i1 %i.ae, %i.ad
  br i1 %or.cond.i, label %ext_ensure_tag_table.exit, label %bb.k

bb.k:                                             ; preds = %callout_tag_entry_raw.exit
  %i.af = trunc nuw nsw i64 %4 to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !91
  %i.ai = icmp slt i32 %i.ah, %i.af
  br i1 %i.ai, label %ext_ensure_tag_table.exit, label %onig_reg_callout_list_at.exit

onig_reg_callout_list_at.exit:                    ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !92
  %i.al = getelementptr [144 x i8], ptr %i.ak, i64 %4 ; 3 uses
  %i.am = getelementptr i8, ptr %i.al, i64 -144
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %ext_ensure_tag_table.exit, label %bb.l

bb.l:                                             ; preds = %onig_reg_callout_list_at.exit
  %i.ao = getelementptr i8, ptr %i.al, i64 -128
  store ptr %2, ptr %i.ao, align 8, !tbaa !95
  %i.ap = getelementptr i8, ptr %i.al, i64 -120
  store ptr %3, ptr %i.ap, align 8, !tbaa !96
  br label %ext_ensure_tag_table.exit

ext_ensure_tag_table.exit:                        ; preds = %bb.k, %callout_tag_entry_raw.exit, %bb.c, %bb.a, %onig_reg_callout_list_at.exit, %bb.e, %bb.l
  %.0 = phi i32 [ %.0.i21, %bb.l ], [ -5, %onig_reg_callout_list_at.exit ], [ -5, %bb.e ], [ -5, %bb.c ], [ -5, %bb.a ], [ -5, %callout_tag_entry_raw.exit ], [ -5, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @prs_callout_args(i32 noundef range(i32 0, 2) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr %.8.val) unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.c = load ptr, ptr %1, align 8, !tbaa !131    ; 2 uses
  %i.d = icmp ult ptr %i.c, %2
  br i1 %i.d, label %.preheader, label %clear_callout_args.exit

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 32 ; 3 uses
  %i.f = icmp eq i32 %0, 0                        ; 3 uses
  %i.g = icmp slt i32 %3, 0
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.z
  %.0127 = phi i32 [ %.1128, %bb.z ], [ 0, %.preheader ] ; 16 uses
  %.0112 = phi ptr [ %.us-phi52, %bb.z ], [ %i.c, %.preheader ] ; 6 uses
  %i.h = icmp ult ptr %.0112, %2
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.0114.ptr49.us = phi ptr [ %.0114.ptr.us, %bb.h ], [ %i.a, %.lr.ph ] ; 3 uses
  %.111348.us = phi ptr [ %i.n, %bb.h ], [ %.0112, %.lr.ph ] ; 10 uses
  %.0114.idx47.us = phi i64 [ %.2116.idx.us, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %.011846.us = phi ptr [ %.1119.us, %bb.h ], [ null, %.lr.ph ] ; 4 uses
  %.012145.us = phi i32 [ %.2123.us, %bb.h ], [ 0, %.lr.ph ] ; 8 uses
  %.012444.us = phi i32 [ %.2126.us, %bb.h ], [ 0, %.lr.ph ]
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.j = call i32 %i.i(ptr noundef %.111348.us, ptr noundef nonnull %2) #26 ; 4 uses
  %i.k = load ptr, ptr %.8.val, align 8, !tbaa !84
  %i.l = call i32 %i.k(ptr noundef %.111348.us) #26
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %.111348.us, i64 %i.m ; 5 uses
  %.not.us = icmp eq i32 %.012444.us, 0
  br i1 %.not.us, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  switch i32 %i.j, label %bb.d [
    i32 92, label %bb.f
    i32 125, label %bb.f
    i32 44, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %.012145.us, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us
  switch i32 %i.j, label %bb.f [
    i32 92, label %bb.h
    i32 125, label %.split.us
    i32 44, label %.split.us
  ]

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.c, %bb.c
  %.1122.us = phi i32 [ %.012145.us, %bb.c ], [ %.012145.us, %bb.c ], [ %i.o, %bb.d ], [ %.012145.us, %bb.e ], [ %.012145.us, %bb.c ]
  %.0120.us = phi ptr [ %.111348.us, %bb.c ], [ %.111348.us, %bb.c ], [ %.011846.us, %bb.d ], [ %.111348.us, %bb.e ], [ %.111348.us, %bb.c ] ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %.0120.us to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %.0114.add.us = add nuw nsw i64 %i.r, %.0114.idx47.us ; 2 uses
  %i.s = icmp sgt i64 %.0114.add.us, 128
  br i1 %i.s, label %.thread13, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0114.ptr49.us, ptr align 1 %.0120.us, i64 %i.r, i1 false)
  %i.t = add nsw i32 %.1122.us, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.2126.us = phi i32 [ 0, %bb.g ], [ 1, %bb.e ]
  %.2123.us = phi i32 [ %i.t, %bb.g ], [ %.012145.us, %bb.e ]
  %.1119.us = phi ptr [ %.011846.us, %bb.g ], [ %.111348.us, %bb.e ]
  %.2116.idx.us = phi i64 [ %.0114.add.us, %bb.g ], [ %.0114.idx47.us, %bb.e ] ; 2 uses
  %.0114.ptr.us = getelementptr inbounds nuw i8, ptr %i.a, i64 %.2116.idx.us
  %i.u = icmp ult ptr %i.n, %2
  br i1 %i.u, label %.lr.ph.split.us, label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %.111348 = phi ptr [ %i.aa, %bb.m ], [ %.0112, %.lr.ph ] ; 6 uses
  %.011846 = phi ptr [ %.1119, %bb.m ], [ null, %.lr.ph ] ; 3 uses
  %.012145 = phi i32 [ %.2123, %bb.m ], [ 0, %.lr.ph ] ; 8 uses
  %.012444 = phi i32 [ %.2126, %bb.m ], [ 0, %.lr.ph ]
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.w = call i32 %i.v(ptr noundef %.111348, ptr noundef nonnull %2) #26 ; 4 uses
  %i.x = load ptr, ptr %.8.val, align 8, !tbaa !84
  %i.y = call i32 %i.x(ptr noundef %.111348) #26
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %.111348, i64 %i.z ; 4 uses
  %.not = icmp eq i32 %.012444, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  switch i32 %i.w, label %bb.j [
    i32 92, label %bb.l
    i32 125, label %bb.l
    i32 44, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ab = add nsw i32 %.012145, 1
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split
  switch i32 %i.w, label %bb.l [
    i32 92, label %bb.m
    i32 125, label %.split.us
    i32 44, label %.split.us
  ]

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.i, %bb.i, %bb.j
  %.1122 = phi i32 [ %.012145, %bb.i ], [ %.012145, %bb.i ], [ %i.ab, %bb.j ], [ %.012145, %bb.k ], [ %.012145, %bb.i ]
  %i.ac = add nsw i32 %.1122, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.2126 = phi i32 [ 0, %bb.l ], [ 1, %bb.k ]
  %.2123 = phi i32 [ %i.ac, %bb.l ], [ %.012145, %bb.k ]
  %.1119 = phi ptr [ %.011846, %bb.l ], [ %.111348, %bb.k ]
  %i.ad = icmp ult ptr %i.aa, %2
  br i1 %i.ad, label %.lr.ph.split, label %.loopexit

.split.us:                                        ; preds = %bb.k, %bb.k, %bb.e, %bb.e
  %.us-phi = phi i32 [ %i.j, %bb.e ], [ %i.j, %bb.e ], [ %i.w, %bb.k ], [ %i.w, %bb.k ]
  %.us-phi52 = phi ptr [ %i.n, %bb.e ], [ %i.n, %bb.e ], [ %i.aa, %bb.k ], [ %i.aa, %bb.k ] ; 2 uses
  %.us-phi53 = phi i32 [ %.012145.us, %bb.e ], [ %.012145.us, %bb.e ], [ %.012145, %bb.k ], [ %.012145, %bb.k ] ; 3 uses
  %.us-phi54 = phi ptr [ %.011846.us, %bb.e ], [ %.011846.us, %bb.e ], [ %.011846, %bb.k ], [ %.011846, %bb.k ]
  %.us-phi55 = phi ptr [ %.111348.us, %bb.e ], [ %.111348.us, %bb.e ], [ %.111348, %bb.k ], [ %.111348, %bb.k ] ; 3 uses
  %.us-phi56 = phi ptr [ %.0114.ptr49.us, %bb.e ], [ %.0114.ptr49.us, %bb.e ], [ %i.a, %bb.k ], [ %i.a, %bb.k ] ; 3 uses
  %.not141 = icmp eq i32 %.us-phi53, 0
  br i1 %.not141, label %bb.z, label %bb.n

bb.n:                                             ; preds = %.split.us
  %.not142 = icmp slt i32 %.0127, %3
  %or.cond = select i1 %i.g, i1 true, i1 %.not142
  br i1 %or.cond, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  br i1 %i.f, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.ae = sext i32 %.0127 to i64                  ; 5 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ae ; 4 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !26 ; 3 uses
  %i.ah = and i32 %i.ag, 1
  %.not143 = icmp eq i32 %i.ah, 0
  br i1 %.not143, label %.thread6, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = icmp sgt i32 %.us-phi53, 0
  br i1 %i.ai, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.aj = call fastcc i64 @prs_long(ptr noundef nonnull %.8.val, ptr noundef %i.a, ptr noundef %.us-phi56, ptr noundef %i.b)
  %.not18 = icmp eq i64 %i.aj, 0
  br i1 %.not18, label %.thread6.thread, label %.thread5

.thread5:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.pre = load i32, ptr %i.af, align 4, !tbaa !26
  br label %.thread

.thread6.thread:                                  ; preds = %bb.r
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !100
  %i.al = getelementptr inbounds [16 x i8], ptr %5, i64 %i.ae
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !28
  store i32 1, ptr %i.af, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.y

.thread:                                          ; preds = %bb.q, %.thread5
  %i.am = phi i32 [ %i.ag, %bb.q ], [ %.pre, %.thread5 ]
  %i.an = and i32 %i.am, -2                       ; 3 uses
  store i32 %i.an, ptr %i.af, align 4, !tbaa !26
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.thread13, label %.thread6

.thread6:                                         ; preds = %.thread, %bb.p
  %i.ap = phi i32 [ %i.ag, %bb.p ], [ %i.an, %.thread ]
  switch i32 %i.ap, label %bb.y [
    i32 8, label %.thread13
    i32 2, label %bb.s
    i32 4, label %bb.u
    i32 16, label %bb.v
    i32 0, label %.thread13
  ]

bb.s:                                             ; preds = %.thread6
  %.not146 = icmp eq i32 %.us-phi53, 1
  br i1 %.not146, label %bb.t, label %.thread13

bb.t:                                             ; preds = %bb.s
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.ar = call i32 %i.aq(ptr noundef nonnull %i.a, ptr noundef nonnull %.us-phi56) #26
  %i.as = getelementptr inbounds [16 x i8], ptr %5, i64 %i.ae
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !28
  br label %bb.y

bb.u:                                             ; preds = %.thread6
  %i.at = call ptr @onigenc_strdup(ptr noundef nonnull %.8.val, ptr noundef nonnull %i.a, ptr noundef nonnull %.us-phi56) #26 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.thread13, label %.thread9

.thread9:                                         ; preds = %bb.u
  %i.av = getelementptr inbounds [16 x i8], ptr %5, i64 %i.ae ; 2 uses
  store ptr %i.at, ptr %i.av, align 8, !tbaa !28
  %i.aw = ptrtoint ptr %.us-phi55 to i64
  %i.ax = ptrtoint ptr %.0112 to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.at, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !28
  br label %bb.y

bb.v:                                             ; preds = %.thread6
  %.not144 = icmp eq ptr %.us-phi54, null
  br i1 %.not144, label %bb.w, label %.thread13

bb.w:                                             ; preds = %bb.v
  %i.bb = call fastcc i32 @is_allowed_callout_tag_name(ptr noundef nonnull %.8.val, ptr noundef %.0112, ptr noundef %.us-phi55)
  %.not145 = icmp eq i32 %i.bb, 0
  br i1 %.not145, label %.thread13, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = getelementptr inbounds [16 x i8], ptr %5, i64 %i.ae ; 2 uses
  store ptr %.0112, ptr %i.bc, align 8, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.us-phi55, ptr %i.bd, align 8, !tbaa !28
  br label %bb.y

bb.y:                                             ; preds = %.thread6.thread, %.thread9, %.thread6, %bb.t, %bb.x, %bb.o
  %i.be = add nsw i32 %.0127, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.split.us
  %.1128 = phi i32 [ %i.be, %bb.y ], [ %.0127, %.split.us ] ; 4 uses
  %i.bf = icmp ne i32 %.us-phi, 125               ; 2 uses
  %i.bg = icmp slt i32 %.1128, 4
  %or.cond5 = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond5, label %bb.b, label %bb.aa, !llvm.loop !10

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bf, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %.us-phi52, ptr %1, align 8, !tbaa !131
  br label %clear_callout_args.exit

.loopexit:                                        ; preds = %bb.n, %bb.b, %bb.m, %bb.h, %bb.aa
  %.7 = phi i32 [ -227, %bb.aa ], [ -227, %bb.m ], [ -227, %bb.h ], [ -232, %bb.n ], [ -227, %bb.b ] ; 2 uses
  %.3 = phi i32 [ %.1128, %bb.aa ], [ %.0127, %bb.m ], [ %.0127, %bb.h ], [ %.0127, %bb.b ], [ %.0127, %bb.n ]
  br i1 %i.f, label %.thread13, label %clear_callout_args.exit

.thread13:                                        ; preds = %bb.s, %bb.w, %bb.v, %.thread6, %.thread6, %.thread, %bb.u, %bb.f, %.loopexit
  %.317 = phi i32 [ %.3, %.loopexit ], [ %.0127, %bb.f ], [ %.0127, %bb.u ], [ %.0127, %.thread ], [ %.0127, %.thread6 ], [ %.0127, %.thread6 ], [ %.0127, %bb.v ], [ %.0127, %bb.w ], [ %.0127, %bb.s ] ; 2 uses
  %.716 = phi i32 [ %.7, %.loopexit ], [ -232, %bb.f ], [ -231, %bb.w ], [ -231, %bb.v ], [ -11, %.thread6 ], [ -11, %.thread6 ], [ -232, %.thread ], [ -5, %bb.u ], [ -232, %bb.s ] ; 2 uses
  %i.bh = icmp sgt i32 %.317, 0
  br i1 %i.bh, label %.lr.ph.preheader.i, label %clear_callout_args.exit

.lr.ph.preheader.i:                               ; preds = %.thread13
  %wide.trip.count.i = zext nneg i32 %.317 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ae, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ae ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !26
  %cond.i = icmp eq i32 %i.bj, 4
  br i1 %cond.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph.i
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.i
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @free(ptr noundef nonnull %i.bl) #26
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %clear_callout_args.exit, label %.lr.ph.i, !llvm.loop !11

clear_callout_args.exit:                          ; preds = %bb.ae, %.thread13, %.loopexit, %bb.a, %bb.ab
  %.0109 = phi i32 [ %.1128, %bb.ab ], [ -227, %bb.a ], [ %.7, %.loopexit ], [ %.716, %.thread13 ], [ %.716, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.0109
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -229, 1) i32 @get_callout_name_id_by_name(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.st_callout_name_key, align 8 ; 7 uses
  %6 = alloca %struct.st_callout_name_key, align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %.not.i = icmp ult ptr %2, %3
  br i1 %.not.i, label %.preheader.i, label %is_allowed_callout_name.exit.thread

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.thread.i, %.preheader.i
  %.038.i = phi ptr [ %2, %.preheader.i ], [ %i.m, %.thread.i ] ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.d = tail call i32 %i.c(ptr noundef %.038.i, ptr noundef nonnull %3) #26, !inline_history !168 ; 4 uses
  %i.e = and i32 %i.d, -33
  %i.f = add i32 %i.e, -65
  %or.cond34.i = icmp ult i32 %i.f, 26
  br i1 %or.cond34.i, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %i.d, -48
  %or.cond5.i = icmp ult i32 %i.g, 10
  %i.h = icmp eq i32 %i.d, 95
  %or.cond7.i = or i1 %i.h, %or.cond5.i
  br i1 %or.cond7.i, label %bb.d, label %is_allowed_callout_name.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq ptr %.038.i, %2
  %or.cond9.i = icmp samesign ult i32 %i.d, 58
  %or.cond35.i = and i1 %i.i, %or.cond9.i
  br i1 %or.cond35.i, label %is_allowed_callout_name.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !84
  %i.k = tail call i32 %i.j(ptr noundef %.038.i) #26, !inline_history !168
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %.038.i, i64 %i.l ; 2 uses
  %i.n = icmp ult ptr %i.m, %3
  br i1 %i.n, label %bb.b, label %is_allowed_callout_name.exit, !llvm.loop !0

is_allowed_callout_name.exit:                     ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.o = load ptr, ptr @GlobalCalloutNameTable, align 8, !tbaa !86 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %.not.i12 = icmp eq ptr %i.o, null
  br i1 %.not.i12, label %callout_name_find.exit.thread, label %bb.e

callout_name_find.exit.thread:                    ; preds = %is_allowed_callout_name.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %is_allowed_callout_name.exit.thread

bb.e:                                             ; preds = %is_allowed_callout_name.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %0, ptr %6, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %1, ptr %i.p, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %2, ptr %i.q, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %3, ptr %i.r, align 8, !tbaa !38
  %i.s = ptrtoint ptr %6 to i64
  %i.t = call i32 @onig_st_lookup(ptr noundef nonnull %i.o, i64 noundef %i.s, ptr noundef nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.u = icmp eq i32 %i.t, 0
  %i.v = icmp ne ptr %0, @OnigEncodingASCII
  %or.cond.i = and i1 %i.v, %i.u
  br i1 %or.cond.i, label %bb.f, label %callout_name_find.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load i32, ptr %i.w, align 8, !tbaa !87
  %i.y = and i32 %i.x, 1
  %.not15.i = icmp eq i32 %i.y, 0
  br i1 %.not15.i, label %callout_name_find.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr @OnigEncodingASCII, ptr %5, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %1, ptr %i.z, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.aa, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %3, ptr %i.ab, align 8, !tbaa !38
  %i.ac = ptrtoint ptr %5 to i64
  %i.ad = call i32 @onig_st_lookup(ptr noundef nonnull %i.o, i64 noundef %i.ac, ptr noundef nonnull %i.a) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %callout_name_find.exit

callout_name_find.exit:                           ; preds = %bb.e, %bb.f, %bb.g
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ae = icmp eq ptr %.pr, null
  br i1 %i.ae, label %is_allowed_callout_name.exit.thread, label %bb.h

bb.h:                                             ; preds = %callout_name_find.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !88
  store i32 %i.ag, ptr %4, align 4, !tbaa !26
  br label %is_allowed_callout_name.exit.thread

is_allowed_callout_name.exit.thread:              ; preds = %bb.d, %bb.c, %bb.a, %callout_name_find.exit.thread, %callout_name_find.exit, %bb.h
  %.0 = phi i32 [ -229, %callout_name_find.exit.thread ], [ 0, %bb.h ], [ -229, %callout_name_find.exit ], [ -228, %bb.a ], [ -228, %bb.c ], [ -228, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -232, 1) i64 @prs_long(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = tail call i32 %i.b(ptr noundef nonnull %1, ptr noundef nonnull %2) #26 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !84
  %i.e = tail call i32 %i.d(ptr noundef nonnull %1) #26
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f ; 2 uses
  %i.h = add i32 %i.c, -48                        ; 2 uses
  %or.cond.peel = icmp ult i32 %i.h, 10
  br i1 %or.cond.peel, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.preheader
  switch i32 %i.c, label %.loopexit [
    i32 45, label %bb.c
    i32 43, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.i = zext nneg i32 %i.h to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.131.peel = phi i64 [ %i.i, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.1.peel = phi i64 [ 1, %bb.d ], [ -1, %bb.c ], [ 1, %bb.b ]
  %i.j = icmp ult ptr %i.g, %2
  br i1 %i.j, label %.peel.next, label %.loopexit45

.peel.next:                                       ; preds = %bb.e, %bb.g
  %.043 = phi ptr [ %i.p, %bb.g ], [ %i.g, %bb.e ] ; 3 uses
  %.03041 = phi i64 [ %i.w, %bb.g ], [ %.131.peel, %bb.e ] ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.l = tail call i32 %i.k(ptr noundef %.043, ptr noundef nonnull %2) #26
  %i.m = load ptr, ptr %0, align 8, !tbaa !84
end_hunk_2
