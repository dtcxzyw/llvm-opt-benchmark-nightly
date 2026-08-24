Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/lvm?download=true
inline.NumInlined: 19
inline.NumDeleted: 6
begin_hunk_0_@luaV_execute:bb.a
bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.8727 = phi ptr [ %i.ac, %bb.en ], [ %i.yw, %bb.eo ]
  %i.yx = getelementptr inbounds nuw i8, ptr %.8727, i64 4
  br label %.critedge.backedge

bb.eq:                                            ; preds = %bb.l
  %i.yy = lshr i32 %i.ad, 23                      ; 2 uses
  %i.yz = lshr i32 %i.ad, 14
  %i.za = and i32 %i.yz, 511                      ; 2 uses
  %i.zb = icmp eq i32 %i.yy, 0
  br i1 %i.zb, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.zc = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.zd = ptrtoint ptr %i.zc to i64
  %i.ze = ptrtoint ptr %i.cb to i64
  %i.zf = sub i64 %i.zd, %i.ze
  %i.zg = lshr exact i64 %i.zf, 4
  %i.zh = trunc i64 %i.zg to i32
  %i.zi = add nsw i32 %i.zh, -1
  %i.zj = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !76
  store ptr %i.zl, ptr %i.l, align 8, !tbaa !34
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.0734 = phi i32 [ %i.zi, %bb.er ], [ %i.yy, %bb.eq ] ; 3 uses
  %i.zm = icmp eq i32 %i.za, 0
  br i1 %i.zm, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.zn = getelementptr inbounds nuw i8, ptr %.0719, i64 8
  %i.zo = load i32, ptr %i.ac, align 4, !tbaa !4
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.0733 = phi i32 [ %i.zo, %bb.et ], [ %i.za, %bb.es ]
  %.9728 = phi ptr [ %i.zn, %bb.et ], [ %i.ac, %bb.es ] ; 3 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.zq = load i32, ptr %i.zp, align 8, !tbaa !8
  %.not762 = icmp eq i32 %i.zq, 5
  br i1 %.not762, label %bb.ev, label %.critedge.backedge

bb.ev:                                            ; preds = %bb.eu
  %i.zr = load ptr, ptr %i.cb, align 8, !tbaa !10 ; 5 uses
  %i.zs = mul i32 %.0733, 50
  %i.zt = add i32 %.0734, -50
  %i.zu = add i32 %i.zt, %i.zs                    ; 3 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zr, i64 64
  %i.zw = load i32, ptr %i.zv, align 8, !tbaa !82
  %i.zx = icmp sgt i32 %i.zu, %i.zw
  br i1 %i.zx, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  call void @luaH_resizearray(ptr noundef nonnull %0, ptr noundef nonnull %i.zr, i32 noundef %i.zu) #8
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.zy = icmp sgt i32 %.0734, 0
  br i1 %i.zy, label %.lr.ph870, label %.critedge.backedge

.lr.ph870:                                        ; preds = %bb.ex
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zr, i64 9
  %i.aaa = zext nneg i32 %.0734 to i64
  br label %bb.ey

bb.ey:                                            ; preds = %.lr.ph870, %bb.fc
  %indvars.iv891 = phi i64 [ %i.aaa, %.lr.ph870 ], [ %indvars.iv.next892, %bb.fc ] ; 3 uses
  %.0732868 = phi i32 [ %i.zu, %.lr.ph870 ], [ %i.aac, %bb.fc ] ; 2 uses
  %i.aab = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %indvars.iv891 ; 3 uses
  %i.aac = add nsw i32 %.0732868, -1
  %i.aad = call ptr @luaH_setnum(ptr noundef %0, ptr noundef %i.zr, i32 noundef %.0732868) #8 ; 2 uses
  %i.aae = load i64, ptr %i.aab, align 8, !tbaa !10
  store i64 %i.aae, ptr %i.aad, align 8, !tbaa !10
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %i.aag = load i32, ptr %i.aaf, align 8, !tbaa !8 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  store i32 %i.aag, ptr %i.aah, align 8, !tbaa !8
  %i.aai = icmp sgt i32 %i.aag, 3
  br i1 %i.aai, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %bb.ey
  %i.aaj = load ptr, ptr %i.aab, align 8, !tbaa !10
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 9
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !10
  %i.aam = and i8 %i.aal, 3
  %.not763 = icmp eq i8 %i.aam, 0
  br i1 %.not763, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.aan = load i8, ptr %i.zz, align 1, !tbaa !10
  %i.aao = and i8 %i.aan, 4
  %.not764 = icmp eq i8 %i.aao, 0
  br i1 %.not764, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @luaC_barrierback(ptr noundef %0, ptr noundef nonnull %i.zr) #8
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez, %bb.ey
  %indvars.iv.next892 = add nsw i64 %indvars.iv891, -1
  %i.aap = icmp sgt i64 %indvars.iv891, 1
  br i1 %i.aap, label %bb.ey, label %.critedge.backedge, !llvm.loop !83

bb.fd:                                            ; preds = %bb.l
  call void @luaF_close(ptr noundef nonnull %0, ptr noundef %i.cb) #8
  br label %.critedge.backedge

bb.fe:                                            ; preds = %bb.l
  %i.aaq = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 32
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !84
  %i.aat = lshr i32 %i.ad, 14
  %i.aau = zext nneg i32 %i.aat to i64
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.aas, i64 %i.aau
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !85 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 112
  %i.aay = load i8, ptr %i.aax, align 8, !tbaa !86 ; 3 uses
  %i.aaz = zext i8 %i.aay to i32
  %i.aba = load ptr, ptr %i.aa, align 8, !tbaa !67
  %i.abb = call ptr @luaF_newLclosure(ptr noundef nonnull %0, i32 noundef %i.aaz, ptr noundef %i.aba) #8 ; 3 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 32
  store ptr %i.aaw, ptr %i.abc, align 8, !tbaa !10
  %.not876 = icmp eq i8 %i.aay, 0
  br i1 %.not876, label %._crit_edge, label %.lr.ph866

.lr.ph866:                                        ; preds = %bb.fe
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abb, i64 40
  %wide.trip.count889 = zext i8 %i.aay to i64
  br label %bb.ff

bb.ff:                                            ; preds = %.lr.ph866, %bb.fi
  %indvars.iv886 = phi i64 [ 0, %.lr.ph866 ], [ %indvars.iv.next887, %bb.fi ] ; 2 uses
  %.10729864 = phi ptr [ %i.ac, %.lr.ph866 ], [ %i.abo, %bb.fi ] ; 2 uses
  %i.abe = load i32, ptr %.10729864, align 4, !tbaa !4 ; 2 uses
  %i.abf = and i32 %i.abe, 63
  %i.abg = icmp eq i32 %i.abf, 4
  %i.abh = lshr i32 %i.abe, 23
  %i.abi = zext nneg i32 %i.abh to i64            ; 2 uses
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.abd, i64 %indvars.iv886
  br i1 %i.abg, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.abi
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !63
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff
  %i.abm = getelementptr inbounds nuw [16 x i8], ptr %.1715, i64 %i.abi
  %i.abn = call ptr @luaF_findupval(ptr noundef %0, ptr noundef %i.abm) #8
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fg, %bb.fh
  %.sink = phi ptr [ %i.abl, %bb.fg ], [ %i.abn, %bb.fh ]
  store ptr %.sink, ptr %i.abj, align 8, !tbaa !10
  %indvars.iv.next887 = add nuw nsw i64 %indvars.iv886, 1 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %.10729864, i64 4 ; 2 uses
  %exitcond890.not = icmp eq i64 %indvars.iv.next887, %wide.trip.count889
  br i1 %exitcond890.not, label %._crit_edge, label %bb.ff, !llvm.loop !87

._crit_edge:                                      ; preds = %bb.fi, %bb.fe
  %.10729.lcssa = phi ptr [ %i.ac, %bb.fe ], [ %i.abo, %bb.fi ] ; 2 uses
  store ptr %i.abb, ptr %i.cb, align 8, !tbaa !10
  %i.abp = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 6, ptr %i.abp, align 8, !tbaa !8
  store ptr %.10729.lcssa, ptr %i.d, align 8, !tbaa !43
  %i.abq = load ptr, ptr %i.m, align 8, !tbaa !23 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 120
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !68
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abq, i64 112
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !75
  %.not761 = icmp ult i64 %i.abs, %i.abu
  br i1 %.not761, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %._crit_edge
  call void @luaC_step(ptr noundef nonnull %0) #8
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %._crit_edge
  %i.abv = load ptr, ptr %i.f, align 8, !tbaa !39
  br label %.critedge.backedge

bb.fl:                                            ; preds = %bb.l
  %i.abw = lshr i32 %i.ad, 23                     ; 2 uses
  %i.abx = add nsw i32 %i.abw, -1
  %i.aby = load ptr, ptr %i.e, align 8, !tbaa !44 ; 3 uses
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !78
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !45
  %i.acc = ptrtoint ptr %i.abz to i64
  %i.acd = ptrtoint ptr %i.acb to i64
  %i.ace = sub i64 %i.acc, %i.acd
  %i.acf = lshr exact i64 %i.ace, 4
  %i.acg = trunc i64 %i.acf to i32
  %i.ach = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 113
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !88
  %i.ack = zext i8 %i.acj to i32
  %i.acl = xor i32 %i.ack, -1
  %i.acm = add i32 %i.acg, %i.acl                 ; 5 uses
  %i.acn = icmp eq i32 %i.abw, 0
  br i1 %i.acn, label %bb.fm, label %bb.fp

bb.fm:                                            ; preds = %bb.fl
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !43
  %i.aco = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.acp = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.acq = ptrtoint ptr %i.aco to i64
  %i.acr = ptrtoint ptr %i.acp to i64
  %i.acs = sub i64 %i.acq, %i.acr
  %i.act = shl nsw i32 %i.acm, 4
  %i.acu = sext i32 %i.act to i64
  %.not760 = icmp sgt i64 %i.acs, %i.acu
  br i1 %.not760, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @luaD_growstack(ptr noundef nonnull %0, i32 noundef %i.acm) #8
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fm, %bb.fn
  %i.acv = load ptr, ptr %i.f, align 8, !tbaa !39 ; 2 uses
  %i.acw = getelementptr inbounds nuw [16 x i8], ptr %i.acv, i64 %i.ca ; 2 uses
  %i.acx = sext i32 %i.acm to i64
  %i.acy = getelementptr inbounds [16 x i8], ptr %i.acw, i64 %i.acx
  store ptr %i.acy, ptr %i.l, align 8, !tbaa !34
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fl
  %.0736 = phi ptr [ %i.acw, %bb.fo ], [ %i.cb, %bb.fl ] ; 2 uses
  %.12 = phi ptr [ %i.acv, %bb.fo ], [ %.1715, %bb.fl ] ; 2 uses
  %.0713 = phi i32 [ %i.acm, %bb.fo ], [ %i.abx, %bb.fl ] ; 2 uses
  %i.acz = icmp sgt i32 %.0713, 0
  br i1 %i.acz, label %.lr.ph, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.fs, %bb.fc, %bb.q, %bb.fp, %bb.ex, %bb.l, %bb.eu, %bb.du, %bb.dv, %bb.dw, %bb.dl, %bb.de, %bb.bj, %bb.bk, %bb.bn, %bb.bd, %bb.be, %bb.ba, %bb.bb, %bb.aw, %bb.ax, %bb.as, %bb.at, %bb.ao, %bb.ap, %bb.ak, %bb.al, %bb.ag, %bb.ah, %bb.v, %bb.w, %bb.x, %bb.y, %bb.fk, %bb.fd, %bb.ep, %bb.em, %bb.cx, %bb.cs, %bb.cn, %bb.bz, %bb.bw, %bb.br, %bb.bq, %bb.bh, %bb.ad, %bb.ac, %bb.z, %bb.u, %bb.t, %bb.s, %bb.r, %bb.o, %bb.n, %bb.m
  %.0719.be = phi ptr [ %i.wb, %bb.dw ], [ %i.ac, %bb.fp ], [ %i.ac, %bb.m ], [ %i.ac, %bb.n ], [ %spec.select, %bb.o ], [ %i.ac, %bb.du ], [ %i.ac, %bb.r ], [ %i.ac, %bb.s ], [ %i.ac, %bb.t ], [ %i.ac, %bb.u ], [ %.9728, %bb.ex ], [ %i.ac, %bb.z ], [ %i.ac, %bb.ac ], [ %i.ac, %bb.ad ], [ %i.ac, %bb.v ], [ %i.ac, %bb.ag ], [ %i.ac, %bb.ak ], [ %i.ac, %bb.ao ], [ %i.ac, %bb.as ], [ %i.ac, %bb.aw ], [ %i.ac, %bb.ba ], [ %i.ac, %bb.bh ], [ %i.ac, %bb.bd ], [ %i.ac, %bb.bq ], [ %i.ny, %bb.br ], [ %i.oz, %bb.bw ], [ %i.pu, %bb.bz ], [ %i.rx, %bb.cn ], [ %i.sl, %bb.cs ], [ %i.te, %bb.cx ], [ %i.ac, %bb.bj ], [ %i.ac, %bb.dv ], [ %.9728, %bb.eu ], [ %.9728, %bb.fc ], [ %i.xl, %bb.em ], [ %i.yx, %bb.ep ], [ %i.ac, %bb.l ], [ %i.ac, %bb.fd ], [ %.10729.lcssa, %bb.fk ], [ %i.ac, %bb.y ], [ %i.ac, %bb.x ], [ %i.ac, %bb.w ], [ %i.ac, %bb.ah ], [ %i.ac, %bb.al ], [ %i.ac, %bb.ap ], [ %i.ac, %bb.at ], [ %i.ac, %bb.ax ], [ %i.ac, %bb.bb ], [ %i.ac, %bb.be ], [ %i.ac, %bb.bn ], [ %i.ac, %bb.bk ], [ %i.ac, %bb.de ], [ %i.ac, %bb.q ], [ %i.ac, %bb.dl ], [ %i.ac, %bb.fs ]
  %.0714.be = phi ptr [ %.1715, %bb.dw ], [ %.12, %bb.fp ], [ %.1715, %bb.m ], [ %.1715, %bb.n ], [ %.1715, %bb.o ], [ %.1715, %bb.du ], [ %.1715, %bb.r ], [ %i.do, %bb.s ], [ %i.dx, %bb.t ], [ %i.ec, %bb.u ], [ %.1715, %bb.ex ], [ %i.fh, %bb.z ], [ %i.fu, %bb.ac ], [ %i.gi, %bb.ad ], [ %.1715, %bb.v ], [ %.1715, %bb.ag ], [ %.1715, %bb.ak ], [ %.1715, %bb.ao ], [ %.1715, %bb.as ], [ %.1715, %bb.aw ], [ %.1715, %bb.ba ], [ %.1715, %bb.bh ], [ %.1715, %bb.bd ], [ %i.nn, %bb.bq ], [ %.1715, %bb.br ], [ %i.oy, %bb.bw ], [ %i.pt, %bb.bz ], [ %i.rw, %bb.cn ], [ %.1715, %bb.cs ], [ %.1715, %bb.cx ], [ %.1715, %bb.bj ], [ %.1715, %bb.dv ], [ %.1715, %bb.eu ], [ %.1715, %bb.fc ], [ %.1715, %bb.em ], [ %i.yg, %bb.ep ], [ %.1715, %bb.l ], [ %.1715, %bb.fd ], [ %i.abv, %bb.fk ], [ %.1715, %bb.y ], [ %.1715, %bb.x ], [ %.1715, %bb.w ], [ %i.hf, %bb.ah ], [ %i.ic, %bb.al ], [ %i.iz, %bb.ap ], [ %i.jw, %bb.at ], [ %i.kw, %bb.ax ], [ %i.lt, %bb.bb ], [ %i.md, %bb.be ], [ %i.nd, %bb.bn ], [ %.1715, %bb.bk ], [ %i.tq, %bb.de ], [ %.1715, %bb.q ], [ %i.vd, %bb.dl ], [ %.12, %bb.fs ]
  br label %.critedge

.lr.ph:                                           ; preds = %bb.fp
  %4 = sext i32 %i.acm to i64                     ; 2 uses
  %i.ada = sub nsw i64 0, %4
  %wide.trip.count = zext nneg i32 %.0713 to i64
  br label %bb.fq

bb.fq:                                            ; preds = %.lr.ph, %bb.fs
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.fs ] ; 5 uses
  %i.adb = icmp slt i64 %indvars.iv, %4
  br i1 %i.adb, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.adc = load ptr, ptr %i.aby, align 8, !tbaa !78
  %i.add = getelementptr inbounds [16 x i8], ptr %i.adc, i64 %i.ada
  %i.ade = getelementptr inbounds nuw [16 x i8], ptr %i.add, i64 %indvars.iv ; 2 uses
  %i.adf = getelementptr inbounds nuw [16 x i8], ptr %.0736, i64 %indvars.iv
  %i.adg = load i64, ptr %i.ade, align 8, !tbaa !10
  store i64 %i.adg, ptr %i.adf, align 8, !tbaa !10
  %i.adh = getelementptr inbounds nuw i8, ptr %i.ade, i64 8
  %i.adi = load i32, ptr %i.adh, align 8, !tbaa !8
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fq, %bb.fr
  %.sink951 = phi i32 [ %i.adi, %bb.fr ], [ 0, %bb.fq ]
  %i.adj = getelementptr inbounds nuw [16 x i8], ptr %.0736, i64 %indvars.iv
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 8
  store i32 %.sink951, ptr %i.adk, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.backedge, label %bb.fq, !llvm.loop !89

.critedge.thread:                                 ; preds = %bb.dq, %bb.dh, %bb.da, %bb.j
  ret void
}

declare hidden void @luaC_barrierf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @luaH_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @luaO_fb2int(i32 noundef) local_unnamed_addr #2

declare hidden void @luaC_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @Arith(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 5, 12) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %.sroa.060 = alloca ptr, align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.060)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8
  switch i32 %i.d, label %luaV_tonumber.exit [
    i32 3, label %bb.d
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = call i32 @luaO_str2d(ptr noundef nonnull %i.f, ptr noundef nonnull %i.b) #8
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %luaV_tonumber.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load double, ptr %i.b, align 8, !tbaa !11
  store double %i.h, ptr %.sroa.060, align 8, !tbaa !10
  br label %bb.d

luaV_tonumber.exit:                               ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.m

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0.i.ph = phi ptr [ %2, %bb.a ], [ %.sroa.060, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !8
  switch i32 %i.j, label %luaV_tonumber.exit53 [
    i32 3, label %._crit_edge
    i32 4, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %3, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = call i32 @luaO_str2d(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a) #8
  %.not.i51 = icmp eq i32 %i.m, 0
  br i1 %.not.i51, label %luaV_tonumber.exit53, label %._crit_edge

luaV_tonumber.exit53:                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.m

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.in = phi ptr [ %3, %bb.d ], [ %i.a, %bb.e ]
  %i.n = load double, ptr %.in, align 8, !tbaa !10 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.o = load double, ptr %.0.i.ph, align 8, !tbaa !10 ; 8 uses
  switch i32 %4, label %default.unreachable63 [
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.p = fadd double %i.o, %i.n
  store double %i.p, ptr %1, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.q, align 8, !tbaa !8
  br label %bb.o

bb.g:                                             ; preds = %._crit_edge
  %i.r = fsub double %i.o, %i.n
  store double %i.r, ptr %1, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.s, align 8, !tbaa !8
  br label %bb.o

bb.h:                                             ; preds = %._crit_edge
  %i.t = fmul double %i.o, %i.n
  store double %i.t, ptr %1, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !8
  br label %bb.o

bb.i:                                             ; preds = %._crit_edge
  %i.v = fdiv double %i.o, %i.n
  store double %i.v, ptr %1, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.w, align 8, !tbaa !8
  br label %bb.o

bb.j:                                             ; preds = %._crit_edge
  %i.x = fdiv double %i.o, %i.n
  %i.y = call double @llvm.floor.f64(double %i.x)
  %i.z = fneg double %i.y
  %i.aa = call double @llvm.fmuladd.f64(double %i.z, double %i.n, double %i.o)
  store double %i.aa, ptr %1, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.ab, align 8, !tbaa !8
  br label %bb.o

bb.k:                                             ; preds = %._crit_edge
  %i.ac = call double @pow(double noundef %i.o, double noundef %i.n) #8, !tbaa !4
  store double %i.ac, ptr %1, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.ad, align 8, !tbaa !8
  br label %bb.o

bb.l:                                             ; preds = %._crit_edge
  %i.ae = fneg double %i.o
  store double %i.ae, ptr %1, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.af, align 8, !tbaa !8
  br label %bb.o

default.unreachable63:                            ; preds = %._crit_edge
  unreachable

bb.m:                                             ; preds = %luaV_tonumber.exit53, %luaV_tonumber.exit
  %i.ag = call fastcc i32 @call_binTM(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %1, i32 noundef %4)
  %.not50 = icmp eq i32 %i.ag, 0
  br i1 %.not50, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @luaG_aritherror(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.060)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

declare hidden i32 @luaH_getn(ptr noundef) local_unnamed_addr #2

declare hidden i32 @luaD_precall(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @luaF_close(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @luaD_poscall(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @luaD_call(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @luaH_resizearray(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden ptr @luaH_setnum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden ptr @luaF_newLclosure(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @luaF_findupval(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @luaD_growstack(ptr noundef, i32 noundef) local_unnamed_addr #2

end_hunk_0
