Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regexec?download=true
inline.NumInlined: 83
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@match_at:bb.a
bb.ee:                                            ; preds = %bb.eb, %bb.ed
  %i.yx = phi ptr [ %.pre2472, %bb.ed ], [ %i.yk, %bb.eb ] ; 2 uses
  %i.yy = phi ptr [ %.pre2471, %bb.ed ], [ %i.ym, %bb.eb ] ; 4 uses
  %.11465 = phi ptr [ %i.yw, %bb.ed ], [ %.014642268, %bb.eb ] ; 4 uses
  %.11459 = phi ptr [ %i.yu, %bb.ed ], [ %.014582269, %bb.eb ] ; 4 uses
  store i32 3, ptr %i.yy, align 8, !tbaa !107
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  store ptr %i.yg, ptr %i.yz, align 8, !tbaa !62
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  store ptr %i.yx, ptr %i.za, align 8, !tbaa !62
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yy, i64 32
  store ptr %i.zb, ptr %i.m, align 8, !tbaa !104
  %i.zc = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.zd = call i32 %i.zc(ptr noundef %i.yx) #30
  %i.ze = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.zf = ptrtoint ptr %i.ze to i64
  %i.zg = sub i64 %i.yj, %i.zf
  %i.zh = sext i32 %i.zd to i64                   ; 2 uses
  %i.zi = icmp slt i64 %i.zg, %i.zh
  br i1 %i.zi, label %backref_check_at_nested_level.exit.thread, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.zj = load ptr, ptr %i.dn, align 8, !tbaa !83
  %i.zk = call i32 %i.zj(ptr noundef %i.ze, ptr noundef %2) #30
  %.not1877 = icmp eq i32 %i.zk, 0
  br i1 %.not1877, label %bb.eg, label %backref_check_at_nested_level.exit.thread

bb.eg:                                            ; preds = %bb.ef
  %i.zl = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.zm = getelementptr inbounds i8, ptr %i.zl, i64 %i.zh ; 3 uses
  store ptr %i.zm, ptr %i.i, align 8, !tbaa !103
  %i.zn = icmp ult ptr %i.zm, %.11457
  br i1 %i.zn, label %bb.eb, label %.backedge.backedge, !llvm.loop !162

bb.eh:                                            ; preds = %.backedge
  %i.zo = getelementptr inbounds nuw i8, ptr %.71534, i64 24 ; 3 uses
  %i.zp = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.zq = icmp ult ptr %i.zp, %.11457
  br i1 %i.zq, label %.lr.ph2265, label %.backedge.backedge

.lr.ph2265:                                       ; preds = %bb.eh
  %i.zr = ptrtoint ptr %.11457 to i64
  br label %bb.ei

bb.ei:                                            ; preds = %.lr.ph2265, %bb.en
  %i.zs = phi ptr [ %i.zp, %.lr.ph2265 ], [ %i.aas, %bb.en ]
  %.214602263 = phi ptr [ %.50, %.lr.ph2265 ], [ %.31461, %bb.en ]
  %.214662262 = phi ptr [ %.501514, %.lr.ph2265 ], [ %.31467, %bb.en ]
  %i.zt = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.zu = load ptr, ptr %i.m, align 8, !tbaa !104 ; 2 uses
  %i.zv = ptrtoint ptr %i.zt to i64
  %i.zw = ptrtoint ptr %i.zu to i64
  %i.zx = sub i64 %i.zv, %i.zw
  %i.zy = lshr exact i64 %i.zx, 5
  %i.zz = trunc i64 %i.zy to i32
  %i.aaa = icmp slt i32 %i.zz, 1
  br i1 %i.aaa, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %bb.ei
  %i.aab = call fastcc i32 @stack_double(ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.m, ptr noundef %5) ; 2 uses
  %.not1874 = icmp eq i32 %i.aab, 0
  br i1 %.not1874, label %bb.ek, label %.loopexit

bb.ek:                                            ; preds = %bb.ej
  %i.aac = load ptr, ptr %i.k, align 8, !tbaa !103 ; 2 uses
  %i.aad = getelementptr inbounds [8 x i8], ptr %i.aac, i64 %i.cw
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %.pre2469 = load ptr, ptr %i.m, align 8, !tbaa !104
  %.pre2470 = load ptr, ptr %i.i, align 8, !tbaa !103
  br label %bb.el

bb.el:                                            ; preds = %bb.ei, %bb.ek
  %i.aaf = phi ptr [ %.pre2470, %bb.ek ], [ %i.zs, %bb.ei ] ; 2 uses
  %i.aag = phi ptr [ %.pre2469, %bb.ek ], [ %i.zu, %bb.ei ] ; 4 uses
  %.31467 = phi ptr [ %i.aae, %bb.ek ], [ %.214662262, %bb.ei ] ; 3 uses
  %.31461 = phi ptr [ %i.aac, %bb.ek ], [ %.214602263, %bb.ei ] ; 3 uses
  store i32 3, ptr %i.aag, align 8, !tbaa !107
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  store ptr %i.zo, ptr %i.aah, align 8, !tbaa !62
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  store ptr %i.aaf, ptr %i.aai, align 8, !tbaa !62
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aag, i64 32
  store ptr %i.aaj, ptr %i.m, align 8, !tbaa !104
  %i.aak = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.aal = call i32 %i.aak(ptr noundef %i.aaf) #30 ; 2 uses
  %i.aam = icmp sgt i32 %i.aal, 1
  %i.aan = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  br i1 %i.aam, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.aao = ptrtoint ptr %i.aan to i64
  %i.aap = sub i64 %i.zr, %i.aao
  %i.aaq = zext nneg i32 %i.aal to i64            ; 2 uses
  %i.aar = icmp slt i64 %i.aap, %i.aaq
  br i1 %i.aar, label %backref_check_at_nested_level.exit.thread, label %bb.en

bb.en:                                            ; preds = %bb.el, %bb.em
  %.sink2784 = phi i64 [ %i.aaq, %bb.em ], [ 1, %bb.el ]
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aan, i64 %.sink2784 ; 3 uses
  store ptr %i.aas, ptr %i.i, align 8, !tbaa !103
  %i.aat = icmp ult ptr %i.aas, %.11457
  br i1 %i.aat, label %bb.ei, label %.backedge.backedge, !llvm.loop !163

bb.eo:                                            ; preds = %.backedge
  %i.aau = getelementptr inbounds nuw i8, ptr %.71534, i64 8
  %i.aav = load i8, ptr %i.aau, align 8, !tbaa !62
  %i.aaw = getelementptr inbounds nuw i8, ptr %.71534, i64 24 ; 3 uses
  %i.aax = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.aay = icmp ult ptr %i.aax, %.11457
  br i1 %i.aay, label %.lr.ph2259, label %.backedge.backedge

.lr.ph2259:                                       ; preds = %bb.eo
  %i.aaz = ptrtoint ptr %.11457 to i64
  br label %bb.ep

bb.ep:                                            ; preds = %.lr.ph2259, %bb.ew
  %i.aba = phi ptr [ %i.aax, %.lr.ph2259 ], [ %i.acf, %bb.ew ] ; 3 uses
  %.414622257 = phi ptr [ %.50, %.lr.ph2259 ], [ %.6, %bb.ew ] ; 2 uses
  %.414682256 = phi ptr [ %.501514, %.lr.ph2259 ], [ %.61470, %bb.ew ] ; 2 uses
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !62
  %i.abc = icmp eq i8 %i.aav, %i.abb
  br i1 %i.abc, label %bb.eq, label %bb.eu

bb.eq:                                            ; preds = %bb.ep
  %i.abd = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.abe = load ptr, ptr %i.m, align 8, !tbaa !104 ; 2 uses
  %i.abf = ptrtoint ptr %i.abd to i64
  %i.abg = ptrtoint ptr %i.abe to i64
  %i.abh = sub i64 %i.abf, %i.abg
  %i.abi = lshr exact i64 %i.abh, 5
  %i.abj = trunc i64 %i.abi to i32
  %i.abk = icmp slt i32 %i.abj, 1
  br i1 %i.abk, label %bb.er, label %bb.et

bb.er:                                            ; preds = %bb.eq
  %i.abl = call fastcc i32 @stack_double(ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.m, ptr noundef %5) ; 2 uses
  %.not1872 = icmp eq i32 %i.abl, 0
  br i1 %.not1872, label %bb.es, label %.loopexit

bb.es:                                            ; preds = %bb.er
  %i.abm = load ptr, ptr %i.k, align 8, !tbaa !103 ; 2 uses
  %i.abn = getelementptr inbounds [8 x i8], ptr %i.abm, i64 %i.cw
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  %.pre2467 = load ptr, ptr %i.m, align 8, !tbaa !104
  %.pre2468 = load ptr, ptr %i.i, align 8, !tbaa !103
  br label %bb.et

bb.et:                                            ; preds = %bb.eq, %bb.es
  %i.abp = phi ptr [ %.pre2468, %bb.es ], [ %i.aba, %bb.eq ] ; 2 uses
  %i.abq = phi ptr [ %.pre2467, %bb.es ], [ %i.abe, %bb.eq ] ; 4 uses
  %.51469 = phi ptr [ %i.abo, %bb.es ], [ %.414682256, %bb.eq ]
  %.51463 = phi ptr [ %i.abm, %bb.es ], [ %.414622257, %bb.eq ]
  store i32 3, ptr %i.abq, align 8, !tbaa !107
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  store ptr %i.aaw, ptr %i.abr, align 8, !tbaa !62
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  store ptr %i.abp, ptr %i.abs, align 8, !tbaa !62
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abq, i64 32
  store ptr %i.abt, ptr %i.m, align 8, !tbaa !104
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.ep
  %i.abu = phi ptr [ %i.abp, %bb.et ], [ %i.aba, %bb.ep ]
  %.61470 = phi ptr [ %.51469, %bb.et ], [ %.414682256, %bb.ep ] ; 4 uses
  %.6 = phi ptr [ %.51463, %bb.et ], [ %.414622257, %bb.ep ] ; 4 uses
  %i.abv = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.abw = call i32 %i.abv(ptr noundef %i.abu) #30
  %i.abx = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.aby = ptrtoint ptr %i.abx to i64
  %i.abz = sub i64 %i.aaz, %i.aby
  %i.aca = sext i32 %i.abw to i64                 ; 2 uses
  %i.acb = icmp slt i64 %i.abz, %i.aca
  br i1 %i.acb, label %backref_check_at_nested_level.exit.thread, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.acc = load ptr, ptr %i.dn, align 8, !tbaa !83
  %i.acd = call i32 %i.acc(ptr noundef %i.abx, ptr noundef %2) #30
  %.not1873 = icmp eq i32 %i.acd, 0
  br i1 %.not1873, label %bb.ew, label %backref_check_at_nested_level.exit.thread

bb.ew:                                            ; preds = %bb.ev
  %i.ace = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.acf = getelementptr inbounds i8, ptr %i.ace, i64 %i.aca ; 3 uses
  store ptr %i.acf, ptr %i.i, align 8, !tbaa !103
  %i.acg = icmp ult ptr %i.acf, %.11457
  br i1 %i.acg, label %bb.ep, label %.backedge.backedge, !llvm.loop !164

bb.ex:                                            ; preds = %.backedge
  %i.ach = getelementptr inbounds nuw i8, ptr %.71534, i64 8
  %i.aci = load i8, ptr %i.ach, align 8, !tbaa !62
  %i.acj = getelementptr inbounds nuw i8, ptr %.71534, i64 24 ; 3 uses
  %i.ack = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.acl = icmp ult ptr %i.ack, %.11457
  br i1 %i.acl, label %.lr.ph2253, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ff, %bb.ew, %bb.en, %bb.eg, %bb.ex, %bb.eo, %bb.eh, %bb.ea, %bb.sk, %bb.sl, %bb.rc, %bb.ri, %bb.rh, %bb.qc, %bb.qd, %bb.mq, %.critedge, %bb.an, %bb.ar, %bb.aw, %bb.bc, %bb.bj, %._crit_edge2914, %bb.br, %bb.bx, %bb.cf, %._crit_edge2288, %._crit_edge2283, %._crit_edge2278, %bb.cv, %bb.da, %bb.de, %bb.dh, %bb.do, %bb.ds, %bb.dw, %bb.dz, %bb.fi, %bb.fl, %bb.fo, %bb.fr, %bb.gf, %bb.gt, %bb.gz, %bb.hc, %bb.hk, %bb.hp, %bb.hr, %bb.ht, %bb.hw, %bb.hz, %bb.ic, %bb.ie, %bb.ih, %bb.ik, %bb.io, %bb.is, %bb.it, %bb.ix, %bb.iy, %bb.jh, %bb.jv, %.loopexit2075, %bb.kq, %bb.lb, %bb.lr, %bb.lv, %bb.ma, %backref_check_at_nested_level.exit, %bb.mm, %.loopexit2083, %bb.of, %bb.og, %bb.ok, %bb.oo, %bb.op, %bb.ox, %bb.pd, %bb.pe, %bb.pl, %bb.pu, %bb.qt, %bb.rp, %bb.ry, %.loopexit2088, %bb.ss, %bb.ta, %bb.tk, %bb.ty, %.loopexit2090, %bb.vj, %.loopexit2054
  %.51540.be = phi i64 [ %.51540, %bb.eh ], [ %.51540, %bb.vj ], [ %.51540, %bb.an ], [ %.51540, %bb.ar ], [ %.51540, %bb.aw ], [ %.51540, %bb.bc ], [ %.51540, %bb.bj ], [ %.51540, %._crit_edge2914 ], [ %.51540, %bb.br ], [ %.51540, %bb.bx ], [ %.51540, %bb.cf ], [ %.51540, %._crit_edge2288 ], [ %.51540, %._crit_edge2283 ], [ %.51540, %._crit_edge2278 ], [ %.51540, %bb.cv ], [ %.51540, %bb.da ], [ %.51540, %bb.de ], [ %.51540, %bb.dh ], [ %.51540, %bb.do ], [ %.51540, %bb.ds ], [ %.51540, %bb.dw ], [ %.51540, %bb.dz ], [ %i.cbi, %bb.ry ], [ %.41539, %.loopexit2054 ], [ %.51540, %bb.sk ], [ %.51540, %bb.ea ], [ %.51540, %bb.fi ], [ %.51540, %bb.fl ], [ %.51540, %bb.fo ], [ %.51540, %bb.fr ], [ %.51540, %bb.gf ], [ %.51540, %bb.gt ], [ %.51540, %bb.gz ], [ %.51540, %bb.hc ], [ %.51540, %bb.hk ], [ %.51540, %bb.hp ], [ %.51540, %bb.hr ], [ %.51540, %bb.ht ], [ %.51540, %bb.hw ], [ %.51540, %bb.hz ], [ %.51540, %bb.ic ], [ %.51540, %bb.ie ], [ %.51540, %bb.ih ], [ %.51540, %bb.ik ], [ %.51540, %bb.io ], [ %.51540, %.loopexit2075 ], [ %.51540, %bb.kq ], [ %.51540, %bb.lb ], [ %.51540, %bb.lr ], [ %.51540, %bb.lv ], [ %.51540, %bb.ma ], [ %.51540, %backref_check_at_nested_level.exit ], [ %.51540, %bb.it ], [ %.51540, %bb.is ], [ %.51540, %bb.ix ], [ %.51540, %bb.jh ], [ %.51540, %bb.iy ], [ %.51540, %bb.jv ], [ %.51540, %bb.og ], [ %.51540, %bb.ok ], [ %.51540, %bb.oo ], [ %.51540, %bb.op ], [ %.01535, %bb.ox ], [ %.51540, %bb.pd ], [ %.51540, %bb.pe ], [ %.51540, %bb.pl ], [ %.51540, %bb.pu ], [ %.51540, %bb.mq ], [ %.51540, %bb.qt ], [ %.51540, %bb.qc ], [ %.51540, %bb.mm ], [ %.51540, %bb.eo ], [ %.51540, %.loopexit2083 ], [ %.51540, %bb.of ], [ %.51540, %.loopexit2088 ], [ %.51540, %bb.rc ], [ %.51540, %bb.ss ], [ %.51540, %bb.ta ], [ %.51540, %bb.tk ], [ %.51540, %bb.ty ], [ %.51540, %.loopexit2090 ], [ %i.bzn, %bb.rp ], [ %.51540, %.critedge ], [ %.51540, %bb.qd ], [ %.51540, %bb.rh ], [ %.51540, %bb.ri ], [ %.51540, %bb.sl ], [ %.51540, %bb.ex ], [ %.51540, %bb.ew ], [ %.51540, %bb.eg ], [ %.51540, %bb.en ], [ %.51540, %bb.ff ]
  %.71534.be = phi ptr [ %i.zo, %bb.eh ], [ %i.cmh, %bb.vj ], [ %i.is, %bb.an ], [ %i.jg, %bb.ar ], [ %i.jy, %bb.aw ], [ %i.ku, %bb.bc ], [ %i.lu, %bb.bj ], [ %i.mn, %._crit_edge2914 ], [ %i.nb, %bb.br ], [ %i.nx, %bb.bx ], [ %i.pb, %bb.cf ], [ %i.pz, %._crit_edge2288 ], [ %i.rb, %._crit_edge2283 ], [ %i.rx, %._crit_edge2278 ], [ %i.st, %bb.cv ], [ %i.tp, %bb.da ], [ %i.ul, %bb.de ], [ %i.vh, %bb.dh ], [ %i.wf, %bb.do ], [ %i.xa, %bb.ds ], [ %i.xr, %bb.dw ], [ %i.yf, %bb.dz ], [ %i.cas, %bb.ry ], [ %i.cpn, %.loopexit2054 ], [ %i.cdf, %bb.sk ], [ %i.yg, %bb.ea ], [ %i.aeh, %bb.fi ], [ %i.aeu, %bb.fl ], [ %i.afk, %bb.fo ], [ %i.afx, %bb.fr ], [ %i.ahh, %bb.gf ], [ %i.aio, %bb.gt ], [ %i.ajd, %bb.gz ], [ %i.ajl, %bb.hc ], [ %i.akg, %bb.hk ], [ %i.aks, %bb.hp ], [ %i.akv, %bb.hr ], [ %i.aky, %bb.ht ], [ %i.alb, %bb.hw ], [ %i.alg, %bb.hz ], [ %i.alj, %bb.ic ], [ %i.alm, %bb.ie ], [ %i.alp, %bb.ih ], [ %i.aly, %bb.ik ], [ %i.ame, %bb.io ], [ %i.avb, %.loopexit2075 ], [ %i.axj, %bb.kq ], [ %i.azm, %bb.lb ], [ %i.bbz, %bb.lr ], [ %i.bcn, %bb.lv ], [ %i.bdg, %bb.ma ], [ %i.bem, %backref_check_at_nested_level.exit ], [ %i.anq, %bb.it ], [ %i.ank, %bb.is ], [ %i.aow, %bb.ix ], [ %i.arc, %bb.jh ], [ %i.apc, %bb.iy ], [ %i.atd, %bb.jv ], [ %i.blr, %bb.og ], [ %i.bmn, %bb.ok ], [ %i.bnj, %bb.oo ], [ %i.bnm, %bb.op ], [ %i.boy, %bb.ox ], [ %i.bqa, %bb.pd ], [ %i.bqc, %bb.pe ], [ %i.bre, %bb.pl ], [ %i.bsw, %bb.pu ], [ %i.bfu, %bb.mq ], [ %.41531, %bb.qt ], [ %i.buo, %bb.qc ], [ %i.bfg, %bb.mm ], [ %i.aaw, %bb.eo ], [ %i.bie, %.loopexit2083 ], [ %i.bkz, %bb.of ], [ %i.cca, %.loopexit2088 ], [ %i.byl, %bb.rc ], [ %i.ceg, %bb.ss ], [ %i.cew, %bb.ta ], [ %i.cfx, %bb.tk ], [ %i.chz, %bb.ty ], [ %i.ckd, %.loopexit2090 ], [ %i.cam, %bb.rp ], [ %i.bfv, %.critedge ], [ %i.bup, %bb.qd ], [ %i.bzh, %bb.rh ], [ %i.bzj, %bb.ri ], [ %i.cdg, %bb.sl ], [ %i.acj, %bb.ex ], [ %i.aaw, %bb.ew ], [ %i.yg, %bb.eg ], [ %i.zo, %bb.en ], [ %i.acj, %bb.ff ]
  %.11522.be = phi i64 [ %.11522, %bb.eh ], [ %.11522, %bb.vj ], [ %.11522, %bb.an ], [ %.11522, %bb.ar ], [ %.11522, %bb.aw ], [ %.11522, %bb.bc ], [ %.11522, %bb.bj ], [ %.11522, %._crit_edge2914 ], [ %.11522, %bb.br ], [ %.11522, %bb.bx ], [ %.11522, %bb.cf ], [ %.11522, %._crit_edge2288 ], [ %.11522, %._crit_edge2283 ], [ %.11522, %._crit_edge2278 ], [ %.11522, %bb.cv ], [ %.11522, %bb.da ], [ %.11522, %bb.de ], [ %.11522, %bb.dh ], [ %.11522, %bb.do ], [ %.11522, %bb.ds ], [ %.11522, %bb.dw ], [ %.11522, %bb.dz ], [ %.11522, %bb.ry ], [ %i.cpq, %.loopexit2054 ], [ %.11522, %bb.sk ], [ %.11522, %bb.ea ], [ %.11522, %bb.fi ], [ %.11522, %bb.fl ], [ %.11522, %bb.fo ], [ %.11522, %bb.fr ], [ %.11522, %bb.gf ], [ %.11522, %bb.gt ], [ %.11522, %bb.gz ], [ %.11522, %bb.hc ], [ %.11522, %bb.hk ], [ %.11522, %bb.hp ], [ %.11522, %bb.hr ], [ %.11522, %bb.ht ], [ %.11522, %bb.hw ], [ %.11522, %bb.hz ], [ %.11522, %bb.ic ], [ %.11522, %bb.ie ], [ %.11522, %bb.ih ], [ %.11522, %bb.ik ], [ %.11522, %bb.io ], [ %.11522, %.loopexit2075 ], [ %.11522, %bb.kq ], [ %.11522, %bb.lb ], [ %.11522, %bb.lr ], [ %.11522, %bb.lv ], [ %.11522, %bb.ma ], [ %.11522, %backref_check_at_nested_level.exit ], [ %.11522, %bb.it ], [ %.11522, %bb.is ], [ %.11522, %bb.ix ], [ %.11522, %bb.jh ], [ %.11522, %bb.iy ], [ %.11522, %bb.jv ], [ %.11522, %bb.og ], [ %.11522, %bb.ok ], [ %.11522, %bb.oo ], [ %.11522, %bb.op ], [ %.11522, %bb.ox ], [ %.11522, %bb.pd ], [ %.11522, %bb.pe ], [ %.11522, %bb.pl ], [ %.11522, %bb.pu ], [ %.11522, %bb.mq ], [ %.11522, %bb.qt ], [ %.11522, %bb.qc ], [ %.11522, %bb.mm ], [ %.11522, %bb.eo ], [ %.11522, %.loopexit2083 ], [ %.11522, %bb.of ], [ %.11522, %.loopexit2088 ], [ %.11522, %bb.rc ], [ %.11522, %bb.ss ], [ %.11522, %bb.ta ], [ %.11522, %bb.tk ], [ %.11522, %bb.ty ], [ %.11522, %.loopexit2090 ], [ %.11522, %bb.rp ], [ %.11522, %.critedge ], [ %.11522, %bb.qd ], [ %.11522, %bb.rh ], [ %.11522, %bb.ri ], [ %.11522, %bb.sl ], [ %.11522, %bb.ex ], [ %.11522, %bb.ew ], [ %.11522, %bb.eg ], [ %.11522, %bb.en ], [ %.11522, %bb.ff ]
  %.41519.be = phi ptr [ %.41519, %bb.eh ], [ %.41519, %bb.vj ], [ %.41519, %bb.an ], [ %.41519, %bb.ar ], [ %.41519, %bb.aw ], [ %.41519, %bb.bc ], [ %.41519, %bb.bj ], [ %.41519, %._crit_edge2914 ], [ %.41519, %bb.br ], [ %.41519, %bb.bx ], [ %.41519, %bb.cf ], [ %.41519, %._crit_edge2288 ], [ %.41519, %._crit_edge2283 ], [ %.41519, %._crit_edge2278 ], [ %.41519, %bb.cv ], [ %.41519, %bb.da ], [ %.41519, %bb.de ], [ %.41519, %bb.dh ], [ %.41519, %bb.do ], [ %.41519, %bb.ds ], [ %.41519, %bb.dw ], [ %.41519, %bb.dz ], [ %.41519, %bb.ry ], [ %.31518, %.loopexit2054 ], [ %.41519, %bb.sk ], [ %.41519, %bb.ea ], [ %.41519, %bb.fi ], [ %.41519, %bb.fl ], [ %.41519, %bb.fo ], [ %.41519, %bb.fr ], [ %.41519, %bb.gf ], [ %.41519, %bb.gt ], [ %.41519, %bb.gz ], [ %.41519, %bb.hc ], [ %.41519, %bb.hk ], [ %.41519, %bb.hp ], [ %.41519, %bb.hr ], [ %.41519, %bb.ht ], [ %.41519, %bb.hw ], [ %.41519, %bb.hz ], [ %.41519, %bb.ic ], [ %.41519, %bb.ie ], [ %.41519, %bb.ih ], [ %.41519, %bb.ik ], [ %.41519, %bb.io ], [ %.41519, %.loopexit2075 ], [ %.41519, %bb.kq ], [ %.41519, %bb.lb ], [ %.41519, %bb.lr ], [ %.41519, %bb.lv ], [ %.41519, %bb.ma ], [ %.41519, %backref_check_at_nested_level.exit ], [ %.41519, %bb.it ], [ %.41519, %bb.is ], [ %.41519, %bb.ix ], [ %.41519, %bb.jh ], [ %.41519, %bb.iy ], [ %.41519, %bb.jv ], [ %.41519, %bb.og ], [ %.41519, %bb.ok ], [ %.41519, %bb.oo ], [ %.41519, %bb.op ], [ %.41519, %bb.ox ], [ %.41519, %bb.pd ], [ %.41519, %bb.pe ], [ %.41519, %bb.pl ], [ %.41519, %bb.pu ], [ %.41519, %bb.mq ], [ %.41519, %bb.qt ], [ %.41519, %bb.qc ], [ %.41519, %bb.mm ], [ %.41519, %bb.eo ], [ %.41519, %.loopexit2083 ], [ %.41519, %bb.of ], [ %.41519, %.loopexit2088 ], [ %.41519, %bb.rc ], [ %.41519, %bb.ss ], [ %.41519, %bb.ta ], [ %.41519, %bb.tk ], [ %.41519, %bb.ty ], [ %.21517, %.loopexit2090 ], [ %.41519, %bb.rp ], [ %.41519, %.critedge ], [ %.41519, %bb.qd ], [ %.41519, %bb.rh ], [ %.41519, %bb.ri ], [ %.41519, %bb.sl ], [ %.41519, %bb.ex ], [ %.41519, %bb.ew ], [ %.41519, %bb.eg ], [ %.41519, %bb.en ], [ %.41519, %bb.ff ]
  %.501514.be = phi ptr [ %.501514, %bb.eh ], [ %.481512, %bb.vj ], [ %.501514, %bb.an ], [ %.501514, %bb.ar ], [ %.501514, %bb.aw ], [ %.501514, %bb.bc ], [ %.501514, %bb.bj ], [ %.501514, %._crit_edge2914 ], [ %.501514, %bb.br ], [ %.501514, %bb.bx ], [ %.501514, %bb.cf ], [ %.501514, %._crit_edge2288 ], [ %.501514, %._crit_edge2283 ], [ %.501514, %._crit_edge2278 ], [ %.501514, %bb.cv ], [ %.501514, %bb.da ], [ %.501514, %bb.de ], [ %.501514, %bb.dh ], [ %.501514, %bb.do ], [ %.501514, %bb.ds ], [ %.501514, %bb.dw ], [ %.501514, %bb.dz ], [ %.341498, %bb.ry ], [ %.491513, %.loopexit2054 ], [ %.351499, %bb.sk ], [ %.501514, %bb.ea ], [ %.501514, %bb.fi ], [ %.501514, %bb.fl ], [ %.501514, %bb.fo ], [ %.501514, %bb.fr ], [ %.501514, %bb.gf ], [ %.501514, %bb.gt ], [ %.501514, %bb.gz ], [ %.501514, %bb.hc ], [ %.501514, %bb.hk ], [ %.501514, %bb.hp ], [ %.501514, %bb.hr ], [ %.501514, %bb.ht ], [ %.501514, %bb.hw ], [ %.501514, %bb.hz ], [ %.501514, %bb.ic ], [ %.501514, %bb.ie ], [ %.501514, %bb.ih ], [ %.501514, %bb.ik ], [ %.501514, %bb.io ], [ %.501514, %.loopexit2075 ], [ %.501514, %bb.kq ], [ %.501514, %bb.lb ], [ %.501514, %bb.lr ], [ %.501514, %bb.lv ], [ %.501514, %bb.ma ], [ %.501514, %backref_check_at_nested_level.exit ], [ %.501514, %bb.it ], [ %.101474, %bb.is ], [ %.111475, %bb.ix ], [ %.121476, %bb.jh ], [ %.501514, %bb.iy ], [ %.131477, %bb.jv ], [ %.501514, %bb.og ], [ %.161480, %bb.ok ], [ %.171481, %bb.oo ], [ %.501514, %bb.op ], [ %.501514, %bb.ox ], [ %.181482, %bb.pd ], [ %.501514, %bb.pe ], [ %.201484, %bb.pl ], [ %.231487, %bb.pu ], [ %.501514, %bb.mq ], [ %.291493, %bb.qt ], [ %.251489, %bb.qc ], [ %.141478, %bb.mm ], [ %.501514, %bb.eo ], [ %.501514, %.loopexit2083 ], [ %.151479, %bb.of ], [ %.501514, %.loopexit2088 ], [ %.301494, %bb.rc ], [ %.381502, %bb.ss ], [ %.501514, %bb.ta ], [ %.411505, %bb.tk ], [ %.451509, %bb.ty ], [ %.501514, %.loopexit2090 ], [ %.331497, %bb.rp ], [ %.501514, %.critedge ], [ %.241488, %bb.qd ], [ %.311495, %bb.rh ], [ %.301494, %bb.ri ], [ %.501514, %bb.sl ], [ %.501514, %bb.ex ], [ %.61470, %bb.ew ], [ %.11465, %bb.eg ], [ %.31467, %bb.en ], [ %.91473, %bb.ff ]
  %.50.be = phi ptr [ %.50, %bb.eh ], [ %.48, %bb.vj ], [ %.50, %bb.an ], [ %.50, %bb.ar ], [ %.50, %bb.aw ], [ %.50, %bb.bc ], [ %.50, %bb.bj ], [ %.50, %._crit_edge2914 ], [ %.50, %bb.br ], [ %.50, %bb.bx ], [ %.50, %bb.cf ], [ %.50, %._crit_edge2288 ], [ %.50, %._crit_edge2283 ], [ %.50, %._crit_edge2278 ], [ %.50, %bb.cv ], [ %.50, %bb.da ], [ %.50, %bb.de ], [ %.50, %bb.dh ], [ %.50, %bb.do ], [ %.50, %bb.ds ], [ %.50, %bb.dw ], [ %.50, %bb.dz ], [ %.34, %bb.ry ], [ %.49, %.loopexit2054 ], [ %.35, %bb.sk ], [ %.50, %bb.ea ], [ %.50, %bb.fi ], [ %.50, %bb.fl ], [ %.50, %bb.fo ], [ %.50, %bb.fr ], [ %.50, %bb.gf ], [ %.50, %bb.gt ], [ %.50, %bb.gz ], [ %.50, %bb.hc ], [ %.50, %bb.hk ], [ %.50, %bb.hp ], [ %.50, %bb.hr ], [ %.50, %bb.ht ], [ %.50, %bb.hw ], [ %.50, %bb.hz ], [ %.50, %bb.ic ], [ %.50, %bb.ie ], [ %.50, %bb.ih ], [ %.50, %bb.ik ], [ %.50, %bb.io ], [ %.50, %.loopexit2075 ], [ %.50, %bb.kq ], [ %.50, %bb.lb ], [ %.50, %bb.lr ], [ %.50, %bb.lv ], [ %.50, %bb.ma ], [ %.50, %backref_check_at_nested_level.exit ], [ %.50, %bb.it ], [ %.10, %bb.is ], [ %.11, %bb.ix ], [ %.12, %bb.jh ], [ %.50, %bb.iy ], [ %.13, %bb.jv ], [ %.50, %bb.og ], [ %.16, %bb.ok ], [ %.17, %bb.oo ], [ %.50, %bb.op ], [ %.50, %bb.ox ], [ %.18, %bb.pd ], [ %.50, %bb.pe ], [ %.20, %bb.pl ], [ %.23, %bb.pu ], [ %.50, %bb.mq ], [ %.29, %bb.qt ], [ %.25, %bb.qc ], [ %.14, %bb.mm ], [ %.50, %bb.eo ], [ %.50, %.loopexit2083 ], [ %.15, %bb.of ], [ %.50, %.loopexit2088 ], [ %.30, %bb.rc ], [ %.38, %bb.ss ], [ %.50, %bb.ta ], [ %.41, %bb.tk ], [ %.45, %bb.ty ], [ %.50, %.loopexit2090 ], [ %.33, %bb.rp ], [ %.50, %.critedge ], [ %.24, %bb.qd ], [ %.31, %bb.rh ], [ %.30, %bb.ri ], [ %.50, %bb.sl ], [ %.50, %bb.ex ], [ %.6, %bb.ew ], [ %.11459, %bb.eg ], [ %.31461, %bb.en ], [ %.9, %bb.ff ]
  %.11457.be = phi ptr [ %.11457, %bb.eh ], [ %.11457, %bb.vj ], [ %.11457, %bb.an ], [ %.11457, %bb.ar ], [ %.11457, %bb.aw ], [ %.11457, %bb.bc ], [ %.11457, %bb.bj ], [ %.11457, %._crit_edge2914 ], [ %.11457, %bb.br ], [ %.11457, %bb.bx ], [ %.11457, %bb.cf ], [ %.11457, %._crit_edge2288 ], [ %.11457, %._crit_edge2283 ], [ %.11457, %._crit_edge2278 ], [ %.11457, %bb.cv ], [ %.11457, %bb.da ], [ %.11457, %bb.de ], [ %.11457, %bb.dh ], [ %.11457, %bb.do ], [ %.11457, %bb.ds ], [ %.11457, %bb.dw ], [ %.11457, %bb.dz ], [ %.11457, %bb.ry ], [ %.11457, %.loopexit2054 ], [ %.11457, %bb.sk ], [ %.11457, %bb.ea ], [ %.11457, %bb.fi ], [ %.11457, %bb.fl ], [ %.11457, %bb.fo ], [ %.11457, %bb.fr ], [ %.11457, %bb.gf ], [ %.11457, %bb.gt ], [ %.11457, %bb.gz ], [ %.11457, %bb.hc ], [ %.11457, %bb.hk ], [ %.11457, %bb.hp ], [ %.11457, %bb.hr ], [ %.11457, %bb.ht ], [ %.11457, %bb.hw ], [ %.11457, %bb.hz ], [ %.11457, %bb.ic ], [ %.11457, %bb.ie ], [ %.11457, %bb.ih ], [ %.11457, %bb.ik ], [ %.11457, %bb.io ], [ %.11457, %.loopexit2075 ], [ %.11457, %bb.kq ], [ %.11457, %bb.lb ], [ %.11457, %bb.lr ], [ %.11457, %bb.lv ], [ %.11457, %bb.ma ], [ %.11457, %backref_check_at_nested_level.exit ], [ %.11457, %bb.it ], [ %.11457, %bb.is ], [ %.11457, %bb.ix ], [ %.11457, %bb.jh ], [ %.11457, %bb.iy ], [ %.11457, %bb.jv ], [ %.11457, %bb.og ], [ %.11457, %bb.ok ], [ %.11457, %bb.oo ], [ %.11457, %bb.op ], [ %.11457, %bb.ox ], [ %.11457, %bb.pd ], [ %.11457, %bb.pe ], [ %.11457, %bb.pl ], [ %.11457, %bb.pu ], [ %.11457, %bb.mq ], [ %.11457, %bb.qt ], [ %.11457, %bb.qc ], [ %.11457, %bb.mm ], [ %.11457, %bb.eo ], [ %.11457, %.loopexit2083 ], [ %.11457, %bb.of ], [ %.11457, %.loopexit2088 ], [ %.11457, %bb.rc ], [ %.11457, %bb.ss ], [ %.11457, %bb.ta ], [ %.11457, %bb.tk ], [ %.11457, %bb.ty ], [ %.01456, %.loopexit2090 ], [ %.11457, %bb.rp ], [ %.11457, %.critedge ], [ %.11457, %bb.qd ], [ %.11457, %bb.rh ], [ %.11457, %bb.ri ], [ %.11457, %bb.sl ], [ %.11457, %bb.ex ], [ %.11457, %bb.ew ], [ %.11457, %bb.eg ], [ %.11457, %bb.en ], [ %.11457, %bb.ff ]
  %.31434.be = phi i32 [ %.31434, %bb.eh ], [ %.31434, %bb.vj ], [ %.31434, %bb.an ], [ %.31434, %bb.ar ], [ %.31434, %bb.aw ], [ %.31434, %bb.bc ], [ %.31434, %bb.bj ], [ %.31434, %._crit_edge2914 ], [ %.31434, %bb.br ], [ %.31434, %bb.bx ], [ %.31434, %bb.cf ], [ %.31434, %._crit_edge2288 ], [ %.31434, %._crit_edge2283 ], [ %.31434, %._crit_edge2278 ], [ %.31434, %bb.cv ], [ %.31434, %bb.da ], [ %.31434, %bb.de ], [ %.31434, %bb.dh ], [ %.31434, %bb.do ], [ %.31434, %bb.ds ], [ %.31434, %bb.dw ], [ %.31434, %bb.dz ], [ %.31434, %bb.ry ], [ %.11432, %.loopexit2054 ], [ %.31434, %bb.sk ], [ %.31434, %bb.ea ], [ %.31434, %bb.fi ], [ %.31434, %bb.fl ], [ %.31434, %bb.fo ], [ %.31434, %bb.fr ], [ %.31434, %bb.gf ], [ %.31434, %bb.gt ], [ %.31434, %bb.gz ], [ %.31434, %bb.hc ], [ %.31434, %bb.hk ], [ %.31434, %bb.hp ], [ %.31434, %bb.hr ], [ %.31434, %bb.ht ], [ %.31434, %bb.hw ], [ %.31434, %bb.hz ], [ %.31434, %bb.ic ], [ %.31434, %bb.ie ], [ %.31434, %bb.ih ], [ %.31434, %bb.ik ], [ %.31434, %bb.io ], [ %.31434, %.loopexit2075 ], [ %.31434, %bb.kq ], [ %.31434, %bb.lb ], [ %.31434, %bb.lr ], [ %.31434, %bb.lv ], [ %.31434, %bb.ma ], [ %.31434, %backref_check_at_nested_level.exit ], [ %.31434, %bb.it ], [ %.31434, %bb.is ], [ %.31434, %bb.ix ], [ %.31434, %bb.jh ], [ %.31434, %bb.iy ], [ %.31434, %bb.jv ], [ %.31434, %bb.og ], [ %.31434, %bb.ok ], [ %.31434, %bb.oo ], [ %.31434, %bb.op ], [ %.31434, %bb.ox ], [ %.31434, %bb.pd ], [ %.31434, %bb.pe ], [ %.31434, %bb.pl ], [ %.31434, %bb.pu ], [ %.31434, %bb.mq ], [ %.31434, %bb.qt ], [ %.31434, %bb.qc ], [ %.31434, %bb.mm ], [ %.31434, %bb.eo ], [ %.31434, %.loopexit2083 ], [ %.31434, %bb.of ], [ %.31434, %.loopexit2088 ], [ %.31434, %bb.rc ], [ %.31434, %bb.ss ], [ %.31434, %bb.ta ], [ %.31434, %bb.tk ], [ %.31434, %bb.ty ], [ %.31434, %.loopexit2090 ], [ %.31434, %bb.rp ], [ %.31434, %.critedge ], [ %.31434, %bb.qd ], [ %.31434, %bb.rh ], [ %.31434, %bb.ri ], [ %.31434, %bb.sl ], [ %.31434, %bb.ex ], [ %.31434, %bb.ew ], [ %.31434, %bb.eg ], [ %.31434, %bb.en ], [ %.31434, %bb.ff ]
  br label %.backedge

.lr.ph2253:                                       ; preds = %bb.ex
  %i.acm = ptrtoint ptr %.11457 to i64
  br label %bb.ey

bb.ey:                                            ; preds = %.lr.ph2253, %bb.ff
  %i.acn = phi ptr [ %i.ack, %.lr.ph2253 ], [ %i.adq, %bb.ff ] ; 3 uses
  %.72251 = phi ptr [ %.50, %.lr.ph2253 ], [ %.9, %bb.ff ] ; 2 uses
  %.714712250 = phi ptr [ %.501514, %.lr.ph2253 ], [ %.91473, %bb.ff ] ; 2 uses
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !62
  %i.acp = icmp eq i8 %i.aci, %i.aco
  br i1 %i.acp, label %bb.ez, label %bb.fd

bb.ez:                                            ; preds = %bb.ey
  %i.acq = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.acr = load ptr, ptr %i.m, align 8, !tbaa !104 ; 2 uses
  %i.acs = ptrtoint ptr %i.acq to i64
  %i.act = ptrtoint ptr %i.acr to i64
  %i.acu = sub i64 %i.acs, %i.act
  %i.acv = lshr exact i64 %i.acu, 5
  %i.acw = trunc i64 %i.acv to i32
  %i.acx = icmp slt i32 %i.acw, 1
  br i1 %i.acx, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.acy = call fastcc i32 @stack_double(ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.m, ptr noundef %5) ; 2 uses
  %.not1870 = icmp eq i32 %i.acy, 0
  br i1 %.not1870, label %bb.fb, label %.loopexit

bb.fb:                                            ; preds = %bb.fa
  %i.acz = load ptr, ptr %i.k, align 8, !tbaa !103 ; 2 uses
  %i.ada = getelementptr inbounds [8 x i8], ptr %i.acz, i64 %i.cw
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  %.pre2465 = load ptr, ptr %i.m, align 8, !tbaa !104
  %.pre2466 = load ptr, ptr %i.i, align 8, !tbaa !103
  br label %bb.fc

bb.fc:                                            ; preds = %bb.ez, %bb.fb
  %i.adc = phi ptr [ %.pre2466, %bb.fb ], [ %i.acn, %bb.ez ] ; 2 uses
  %i.add = phi ptr [ %.pre2465, %bb.fb ], [ %i.acr, %bb.ez ] ; 4 uses
  %.81472 = phi ptr [ %i.adb, %bb.fb ], [ %.714712250, %bb.ez ]
  %.8 = phi ptr [ %i.acz, %bb.fb ], [ %.72251, %bb.ez ]
  store i32 3, ptr %i.add, align 8, !tbaa !107
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  store ptr %i.acj, ptr %i.ade, align 8, !tbaa !62
  %i.adf = getelementptr inbounds nuw i8, ptr %i.add, i64 16
  store ptr %i.adc, ptr %i.adf, align 8, !tbaa !62
  %i.adg = getelementptr inbounds nuw i8, ptr %i.add, i64 32
  store ptr %i.adg, ptr %i.m, align 8, !tbaa !104
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.ey
  %i.adh = phi ptr [ %i.adc, %bb.fc ], [ %i.acn, %bb.ey ]
  %.91473 = phi ptr [ %.81472, %bb.fc ], [ %.714712250, %bb.ey ] ; 3 uses
  %.9 = phi ptr [ %.8, %bb.fc ], [ %.72251, %bb.ey ] ; 3 uses
  %i.adi = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.adj = call i32 %i.adi(ptr noundef %i.adh) #30 ; 2 uses
  %i.adk = icmp sgt i32 %i.adj, 1
  %i.adl = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  br i1 %i.adk, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.adm = ptrtoint ptr %i.adl to i64
  %i.adn = sub i64 %i.acm, %i.adm
  %i.ado = zext nneg i32 %i.adj to i64            ; 2 uses
  %i.adp = icmp slt i64 %i.adn, %i.ado
  br i1 %i.adp, label %backref_check_at_nested_level.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fd, %bb.fe
  %.sink2785 = phi i64 [ %i.ado, %bb.fe ], [ 1, %bb.fd ]
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adl, i64 %.sink2785 ; 3 uses
  store ptr %i.adq, ptr %i.i, align 8, !tbaa !103
  %i.adr = icmp ult ptr %i.adq, %.11457
  br i1 %i.adr, label %bb.ey, label %.backedge.backedge, !llvm.loop !165

bb.fg:                                            ; preds = %.backedge
  %i.ads = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.adt = ptrtoint ptr %.11457 to i64
  %i.adu = ptrtoint ptr %i.ads to i64
  %i.adv = sub i64 %i.adt, %i.adu
  %i.adw = icmp slt i64 %i.adv, 1
  br i1 %i.adw, label %backref_check_at_nested_level.exit.thread, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.adx = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.ady = load ptr, ptr %i.dv, align 8, !tbaa !115
  %i.adz = call i32 %i.ady(ptr noundef %i.ads, ptr noundef %2) #30
  %i.aea = call i32 %i.adx(i32 noundef %i.adz, i32 noundef 12) #30
  %.not1869 = icmp eq i32 %i.aea, 0
  br i1 %.not1869, label %backref_check_at_nested_level.exit.thread, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aeb = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.aec = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.aed = call i32 %i.aeb(ptr noundef %i.aec) #30
  %i.aee = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.aef = sext i32 %i.aed to i64
  %i.aeg = getelementptr inbounds i8, ptr %i.aee, i64 %i.aef
  store ptr %i.aeg, ptr %i.i, align 8, !tbaa !103
  %i.aeh = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.fj:                                            ; preds = %.backedge
  %i.aei = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.aej = ptrtoint ptr %.11457 to i64
  %i.aek = ptrtoint ptr %i.aei to i64
  %i.ael = sub i64 %i.aej, %i.aek
  %i.aem = icmp slt i64 %i.ael, 1
  br i1 %i.aem, label %backref_check_at_nested_level.exit.thread, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aen = call i32 @onigenc_is_mbc_word_ascii(ptr noundef %i.r, ptr noundef %i.aei, ptr noundef %2) #30
  %.not1868 = icmp eq i32 %i.aen, 0
  br i1 %.not1868, label %backref_check_at_nested_level.exit.thread, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aeo = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.aep = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.aeq = call i32 %i.aeo(ptr noundef %i.aep) #30
  %i.aer = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.aes = sext i32 %i.aeq to i64
  %i.aet = getelementptr inbounds i8, ptr %i.aer, i64 %i.aes
  store ptr %i.aet, ptr %i.i, align 8, !tbaa !103
  %i.aeu = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.fm:                                            ; preds = %.backedge
  %i.aev = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.aew = ptrtoint ptr %.11457 to i64
  %i.aex = ptrtoint ptr %i.aev to i64
  %i.aey = sub i64 %i.aew, %i.aex
  %i.aez = icmp slt i64 %i.aey, 1
  br i1 %i.aez, label %backref_check_at_nested_level.exit.thread, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.afa = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.afb = load ptr, ptr %i.dv, align 8, !tbaa !115
  %i.afc = call i32 %i.afb(ptr noundef %i.aev, ptr noundef %2) #30
  %i.afd = call i32 %i.afa(i32 noundef %i.afc, i32 noundef 12) #30
  %.not1867 = icmp eq i32 %i.afd, 0
  br i1 %.not1867, label %bb.fo, label %backref_check_at_nested_level.exit.thread

bb.fo:                                            ; preds = %bb.fn
  %i.afe = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.aff = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.afg = call i32 %i.afe(ptr noundef %i.aff) #30
  %i.afh = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.afi = sext i32 %i.afg to i64
  %i.afj = getelementptr inbounds i8, ptr %i.afh, i64 %i.afi
  store ptr %i.afj, ptr %i.i, align 8, !tbaa !103
  %i.afk = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.fp:                                            ; preds = %.backedge
  %i.afl = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.afm = ptrtoint ptr %.11457 to i64
  %i.afn = ptrtoint ptr %i.afl to i64
  %i.afo = sub i64 %i.afm, %i.afn
  %i.afp = icmp slt i64 %i.afo, 1
  br i1 %i.afp, label %backref_check_at_nested_level.exit.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.afq = call i32 @onigenc_is_mbc_word_ascii(ptr noundef %i.r, ptr noundef %i.afl, ptr noundef %2) #30
  %.not1866 = icmp eq i32 %i.afq, 0
  br i1 %.not1866, label %bb.fr, label %backref_check_at_nested_level.exit.thread

bb.fr:                                            ; preds = %bb.fq
  %i.afr = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.afs = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.aft = call i32 %i.afr(ptr noundef %i.afs) #30
  %i.afu = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.afv = sext i32 %i.aft to i64
  %i.afw = getelementptr inbounds i8, ptr %i.afu, i64 %i.afv
  store ptr %i.afw, ptr %i.i, align 8, !tbaa !103
  %i.afx = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.fs:                                            ; preds = %.backedge
  %i.afy = getelementptr inbounds nuw i8, ptr %.71534, i64 8
  %i.afz = load i32, ptr %i.afy, align 8, !tbaa !62 ; 2 uses
  %i.aga = load ptr, ptr %i.i, align 8, !tbaa !103 ; 4 uses
  %i.agb = icmp eq ptr %i.aga, %1
  br i1 %i.agb, label %bb.ft, label %bb.fx

bb.ft:                                            ; preds = %bb.fs
  %i.agc = ptrtoint ptr %.11457 to i64
  %i.agd = sub i64 %i.agc, %i.ed
  %i.age = icmp slt i64 %i.agd, 1
  br i1 %i.age, label %backref_check_at_nested_level.exit.thread, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.agf = icmp eq i32 %i.afz, 0
  br i1 %i.agf, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.agg = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.agh = load ptr, ptr %i.dv, align 8, !tbaa !115
end_hunk_0
begin_hunk_1_@match_at:bb.a
  br i1 %.not1850, label %backref_check_at_nested_level.exit.thread, label %bb.hh

bb.hg:                                            ; preds = %bb.he
  %i.ajw = call i32 @onigenc_is_mbc_word_ascii(ptr noundef %i.r, ptr noundef %i.ajq, ptr noundef %2) #30
  %.not1849 = icmp eq i32 %i.ajw, 0
  br i1 %.not1849, label %backref_check_at_nested_level.exit.thread, label %.thread2010

bb.hh:                                            ; preds = %bb.hf
  %i.ajx = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.ajy = icmp eq ptr %i.ajx, %2
  br i1 %i.ajy, label %bb.hk, label %bb.hi

.thread2010:                                      ; preds = %bb.hg
  %i.ajz = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.aka = icmp eq ptr %i.ajz, %2
  br i1 %i.aka, label %bb.hk, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.akb = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.akc = load ptr, ptr %i.dv, align 8, !tbaa !115
  %i.akd = call i32 %i.akc(ptr noundef %i.ajx, ptr noundef %2) #30
  %i.ake = call i32 %i.akb(i32 noundef %i.akd, i32 noundef 12) #30
  %.not1852 = icmp eq i32 %i.ake, 0
  br i1 %.not1852, label %bb.hk, label %backref_check_at_nested_level.exit.thread

bb.hj:                                            ; preds = %.thread2010
  %i.akf = call i32 @onigenc_is_mbc_word_ascii(ptr noundef %i.r, ptr noundef %i.ajz, ptr noundef %2) #30
  %.not1851 = icmp eq i32 %i.akf, 0
  br i1 %.not1851, label %bb.hk, label %backref_check_at_nested_level.exit.thread

bb.hk:                                            ; preds = %.thread2010, %bb.hj, %bb.hi, %bb.hh
  %i.akg = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.hl:                                            ; preds = %.backedge
  %i.akh = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.aki = call ptr @onigenc_get_prev_char_head(ptr noundef %i.r, ptr noundef %1, ptr noundef %i.akh) #30 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.71534, i64 8
  %i.akk = load i32, ptr %i.akj, align 8, !tbaa !62
  switch i32 %i.akk, label %.loopexit2094 [
    i32 0, label %bb.hm
    i32 1, label %bb.hn
  ]

bb.hm:                                            ; preds = %bb.hl
  %i.akl = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.akm = call i32 @onigenc_egcb_is_break_position(ptr noundef %i.r, ptr noundef %i.akl, ptr noundef %i.aki, ptr noundef %1, ptr noundef %2) #30
  br label %bb.ho

bb.hn:                                            ; preds = %bb.hl
  %i.akn = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.ako = call i32 @onigenc_wb_is_break_position(ptr noundef %i.r, ptr noundef %i.akn, ptr noundef %i.aki, ptr noundef %1, ptr noundef %2) #30
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %.01547 = phi i32 [ %i.akm, %bb.hm ], [ %i.ako, %bb.hn ] ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %.71534, i64 12
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !62
  %.not1846 = icmp eq i32 %i.akq, 0
  %.not1847 = icmp eq i32 %.01547, 0
  %i.akr = zext i1 %.not1847 to i32
  %.11548 = select i1 %.not1846, i32 %.01547, i32 %i.akr
  %.not1848 = icmp eq i32 %.11548, 0
  br i1 %.not1848, label %backref_check_at_nested_level.exit.thread, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.aks = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.hq:                                            ; preds = %.backedge
  %i.akt = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.aku = icmp eq ptr %i.akt, %1
  %or.cond1956 = select i1 %i.aku, i1 %i.dt, i1 false
  br i1 %or.cond1956, label %bb.hr, label %backref_check_at_nested_level.exit.thread

bb.hr:                                            ; preds = %bb.hq
  %i.akv = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.hs:                                            ; preds = %.backedge
  %i.akw = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.akx = icmp eq ptr %i.akw, %2
  %or.cond1958 = select i1 %i.akx, i1 %i.dp, i1 false
  br i1 %or.cond1958, label %bb.ht, label %backref_check_at_nested_level.exit.thread

bb.ht:                                            ; preds = %bb.hs
  %i.aky = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.hu:                                            ; preds = %.backedge
  %i.akz = load ptr, ptr %i.i, align 8, !tbaa !103 ; 3 uses
  %i.ala = icmp eq ptr %i.akz, %1
  br i1 %i.ala, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %bb.hu
  br i1 %.not1841, label %bb.hw, label %backref_check_at_nested_level.exit.thread

bb.hw:                                            ; preds = %bb.hv
  %i.alb = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.hx:                                            ; preds = %bb.hu
  %i.alc = icmp eq ptr %i.akz, %2
  br i1 %i.alc, label %backref_check_at_nested_level.exit.thread, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.ald = call ptr @onigenc_get_prev_char_head(ptr noundef %i.r, ptr noundef %1, ptr noundef %i.akz) #30
  %i.ale = load ptr, ptr %i.dn, align 8, !tbaa !83
  %i.alf = call i32 %i.ale(ptr noundef %i.ald, ptr noundef %2) #30
  %.not1840 = icmp eq i32 %i.alf, 0
  br i1 %.not1840, label %backref_check_at_nested_level.exit.thread, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.alg = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.ia:                                            ; preds = %.backedge
  %i.alh = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.ali = icmp eq ptr %i.alh, %2
  br i1 %i.ali, label %bb.ib, label %bb.id

bb.ib:                                            ; preds = %bb.ia
  br i1 %.not1839, label %bb.ic, label %backref_check_at_nested_level.exit.thread

bb.ic:                                            ; preds = %bb.ib
  %i.alj = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.id:                                            ; preds = %bb.ia
  %i.alk = load ptr, ptr %i.dn, align 8, !tbaa !83
  %i.all = call i32 %i.alk(ptr noundef %i.alh, ptr noundef %2) #30
  %.not1838 = icmp eq i32 %i.all, 0
  br i1 %.not1838, label %backref_check_at_nested_level.exit.thread, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.alm = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.if:                                            ; preds = %.backedge
  %i.aln = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.alo = icmp eq ptr %i.aln, %2
  br i1 %i.alo, label %bb.ig, label %bb.ii

bb.ig:                                            ; preds = %bb.if
  br i1 %i.dp, label %bb.ih, label %backref_check_at_nested_level.exit.thread

bb.ih:                                            ; preds = %bb.ig
  %i.alp = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.ii:                                            ; preds = %bb.if
  %i.alq = load ptr, ptr %i.dn, align 8, !tbaa !83
  %i.alr = call i32 %i.alq(ptr noundef %i.aln, ptr noundef %2) #30
  %.not1833 = icmp eq i32 %i.alr, 0
  br i1 %.not1833, label %backref_check_at_nested_level.exit.thread, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.als = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.alt = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.alu = call i32 %i.alt(ptr noundef %i.als) #30
  %i.alv = sext i32 %i.alu to i64
  %i.alw = getelementptr inbounds i8, ptr %i.als, i64 %i.alv
  %i.alx = icmp eq ptr %i.alw, %2
  %or.cond1961 = select i1 %i.alx, i1 %i.dp, i1 false
  br i1 %or.cond1961, label %bb.ik, label %backref_check_at_nested_level.exit.thread

bb.ik:                                            ; preds = %bb.ij
  %i.aly = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.il:                                            ; preds = %.backedge
  %i.alz = getelementptr inbounds nuw i8, ptr %.71534, i64 8
  %i.ama = load i32, ptr %i.alz, align 8, !tbaa !62
  switch i32 %i.ama, label %bb.io [
    i32 0, label %bb.im
    i32 1, label %bb.in
  ]

bb.im:                                            ; preds = %bb.il
  %i.amb = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.amc = load ptr, ptr %i.dl, align 8, !tbaa !88
  %.not1831 = icmp eq ptr %i.amb, %i.amc
  %or.cond1962 = select i1 %.not1831, i1 %.not1832, i1 false
  br i1 %or.cond1962, label %bb.io, label %backref_check_at_nested_level.exit.thread

bb.in:                                            ; preds = %bb.il
  %i.amd = load ptr, ptr %i.i, align 8, !tbaa !103
  %.not1830 = icmp eq ptr %i.amd, %.11457
  br i1 %.not1830, label %bb.io, label %backref_check_at_nested_level.exit.thread

bb.io:                                            ; preds = %bb.im, %bb.il, %bb.in
  %i.ame = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.ip:                                            ; preds = %.backedge
  %i.amf = getelementptr inbounds nuw i8, ptr %.71534, i64 8
  %i.amg = load i32, ptr %i.amf, align 8, !tbaa !62 ; 2 uses
  %i.amh = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.ami = load ptr, ptr %i.m, align 8, !tbaa !104 ; 2 uses
  %i.amj = ptrtoint ptr %i.amh to i64
  %i.amk = ptrtoint ptr %i.ami to i64             ; 2 uses
  %i.aml = sub i64 %i.amj, %i.amk
  %i.amm = lshr exact i64 %i.aml, 5
  %i.amn = trunc i64 %i.amm to i32
  %i.amo = icmp slt i32 %i.amn, 1
  br i1 %i.amo, label %bb.iq, label %bb.is

bb.iq:                                            ; preds = %bb.ip
  %i.amp = call fastcc i32 @stack_double(ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.m, ptr noundef %5) ; 2 uses
  %.not1797 = icmp eq i32 %i.amp, 0
  br i1 %.not1797, label %bb.ir, label %.loopexit

bb.ir:                                            ; preds = %bb.iq
  %i.amq = load ptr, ptr %i.k, align 8, !tbaa !103 ; 2 uses
  %i.amr = getelementptr inbounds [8 x i8], ptr %i.amq, i64 %i.cw
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 8
  %.pre2464 = load ptr, ptr %i.m, align 8, !tbaa !104 ; 2 uses
  %.pre2479 = ptrtoint ptr %.pre2464 to i64
  br label %bb.is

bb.is:                                            ; preds = %bb.ip, %bb.ir
  %.pre-phi2480 = phi i64 [ %i.amk, %bb.ip ], [ %.pre2479, %bb.ir ]
  %i.amt = phi ptr [ %i.ami, %bb.ip ], [ %.pre2464, %bb.ir ] ; 5 uses
  %.101474 = phi ptr [ %.501514, %bb.ip ], [ %i.ams, %bb.ir ] ; 2 uses
  %.10 = phi ptr [ %.50, %bb.ip ], [ %i.amq, %bb.ir ] ; 2 uses
  store i32 16, ptr %i.amt, align 8, !tbaa !107
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 4
  store i32 %i.amg, ptr %i.amu, align 4, !tbaa !116
  %i.amv = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  store ptr %i.amv, ptr %i.amw, align 8, !tbaa !62
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amt, i64 16
  %i.amy = sext i32 %i.amg to i64                 ; 2 uses
  %i.amz = getelementptr inbounds [8 x i8], ptr %.10, i64 %i.amy ; 2 uses
  %i.ana = load i64, ptr %i.amz, align 8, !tbaa !62
  store i64 %i.ana, ptr %i.amx, align 8, !tbaa !62
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amt, i64 24
  %i.anc = getelementptr inbounds [8 x i8], ptr %.101474, i64 %i.amy ; 2 uses
  %i.and = load i64, ptr %i.anc, align 8, !tbaa !62
  store i64 %i.and, ptr %i.anb, align 8, !tbaa !62
  %i.ane = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.anf = ptrtoint ptr %i.ane to i64
  %i.ang = sub i64 %.pre-phi2480, %i.anf
  %i.anh = ashr exact i64 %i.ang, 5
  store i64 %i.anh, ptr %i.amz, align 8, !tbaa !62
  store i64 -1, ptr %i.anc, align 8, !tbaa !62
  %i.ani = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 32
  store ptr %i.anj, ptr %i.m, align 8, !tbaa !104
  %i.ank = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.it:                                            ; preds = %.backedge
  %i.anl = getelementptr inbounds nuw i8, ptr %.71534, i64 8
  %i.anm = load i32, ptr %i.anl, align 8, !tbaa !62
  %i.ann = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.ano = sext i32 %i.anm to i64
  %i.anp = getelementptr inbounds [8 x i8], ptr %.50, i64 %i.ano
  store ptr %i.ann, ptr %i.anp, align 8, !tbaa !62
  %i.anq = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.iu:                                            ; preds = %.backedge
  %i.anr = getelementptr inbounds nuw i8, ptr %.71534, i64 8
  %i.ans = load i32, ptr %i.anr, align 8, !tbaa !62 ; 2 uses
  %i.ant = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.anu = load ptr, ptr %i.m, align 8, !tbaa !104 ; 2 uses
  %i.anv = ptrtoint ptr %i.ant to i64
  %i.anw = ptrtoint ptr %i.anu to i64             ; 2 uses
  %i.anx = sub i64 %i.anv, %i.anw
  %i.any = lshr exact i64 %i.anx, 5
  %i.anz = trunc i64 %i.any to i32
  %i.aoa = icmp slt i32 %i.anz, 1
  br i1 %i.aoa, label %bb.iv, label %bb.ix

bb.iv:                                            ; preds = %bb.iu
  %i.aob = call fastcc i32 @stack_double(ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.m, ptr noundef %5) ; 2 uses
  %.not1796 = icmp eq i32 %i.aob, 0
  br i1 %.not1796, label %bb.iw, label %.loopexit

bb.iw:                                            ; preds = %bb.iv
  %i.aoc = load ptr, ptr %i.k, align 8, !tbaa !103 ; 2 uses
  %i.aod = getelementptr inbounds [8 x i8], ptr %i.aoc, i64 %i.cw
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  %.pre2463 = load ptr, ptr %i.m, align 8, !tbaa !104 ; 2 uses
  %.pre2481 = ptrtoint ptr %.pre2463 to i64
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iu, %bb.iw
  %.pre-phi2482 = phi i64 [ %i.anw, %bb.iu ], [ %.pre2481, %bb.iw ]
  %i.aof = phi ptr [ %i.anu, %bb.iu ], [ %.pre2463, %bb.iw ] ; 5 uses
  %.111475 = phi ptr [ %.501514, %bb.iu ], [ %i.aoe, %bb.iw ] ; 2 uses
  %.11 = phi ptr [ %.50, %bb.iu ], [ %i.aoc, %bb.iw ] ; 2 uses
  store i32 32816, ptr %i.aof, align 8, !tbaa !107
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 4
  store i32 %i.ans, ptr %i.aog, align 4, !tbaa !116
  %i.aoh = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aof, i64 8
  store ptr %i.aoh, ptr %i.aoi, align 8, !tbaa !62
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aof, i64 16
  %i.aok = sext i32 %i.ans to i64                 ; 2 uses
  %i.aol = getelementptr inbounds [8 x i8], ptr %.11, i64 %i.aok
  %i.aom = load i64, ptr %i.aol, align 8, !tbaa !62
  store i64 %i.aom, ptr %i.aoj, align 8, !tbaa !62
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aof, i64 24
  %i.aoo = getelementptr inbounds [8 x i8], ptr %.111475, i64 %i.aok ; 2 uses
  %i.aop = load i64, ptr %i.aoo, align 8, !tbaa !62
  store i64 %i.aop, ptr %i.aon, align 8, !tbaa !62
  %i.aoq = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.aor = ptrtoint ptr %i.aoq to i64
  %i.aos = sub i64 %.pre-phi2482, %i.aor
  %i.aot = ashr exact i64 %i.aos, 5
  store i64 %i.aot, ptr %i.aoo, align 8, !tbaa !62
  %i.aou = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 32
  store ptr %i.aov, ptr %i.m, align 8, !tbaa !104
  %i.aow = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.iy:                                            ; preds = %.backedge
  %i.aox = getelementptr inbounds nuw i8, ptr %.71534, i64 8
  %i.aoy = load i32, ptr %i.aox, align 8, !tbaa !62
  %i.aoz = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.apa = sext i32 %i.aoy to i64
  %i.apb = getelementptr inbounds [8 x i8], ptr %.501514, i64 %i.apa
  store ptr %i.aoz, ptr %i.apb, align 8, !tbaa !62
  %i.apc = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.iz:                                            ; preds = %.backedge
  %i.apd = getelementptr inbounds nuw i8, ptr %.71534, i64 8
  %i.ape = load i32, ptr %i.apd, align 8, !tbaa !62 ; 4 uses
  %i.apf = load ptr, ptr %i.m, align 8, !tbaa !104 ; 5 uses
  %i.apg = load ptr, ptr %i.l, align 8, !tbaa !104 ; 3 uses
  %i.aph = icmp ugt ptr %i.apf, %i.apg
  br i1 %i.aph, label %.lr.ph2212, label %._crit_edge2213

.lr.ph2212:                                       ; preds = %bb.iz, %.thread2012
  %.015492210 = phi i32 [ %.11550, %.thread2012 ], [ 0, %bb.iz ] ; 5 uses
  %i.api = phi ptr [ %i.apj, %.thread2012 ], [ %i.apf, %bb.iz ] ; 3 uses
  %i.apj = getelementptr inbounds i8, ptr %i.api, i64 -32 ; 5 uses
  %i.apk = load i32, ptr %i.apj, align 8, !tbaa !107 ; 2 uses
  %i.apl = and i32 %i.apk, 32768
  %.not1794 = icmp eq i32 %i.apl, 0
  br i1 %.not1794, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %.lr.ph2212
  %i.apm = getelementptr inbounds i8, ptr %i.api, i64 -28
  %i.apn = load i32, ptr %i.apm, align 4, !tbaa !116
  %i.apo = icmp eq i32 %i.apn, %i.ape
  %i.app = zext i1 %i.apo to i32
  %spec.select2034 = add nsw i32 %.015492210, %i.app
  br label %.thread2012

bb.jb:                                            ; preds = %.lr.ph2212
  %i.apq = icmp eq i32 %i.apk, 16
  br i1 %i.apq, label %bb.jc, label %.thread2012

bb.jc:                                            ; preds = %bb.jb
  %i.apr = getelementptr inbounds i8, ptr %i.api, i64 -28
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !116
  %i.apt = icmp eq i32 %i.aps, %i.ape
  br i1 %i.apt, label %bb.jd, label %.thread2012

bb.jd:                                            ; preds = %bb.jc
  %i.apu = icmp eq i32 %.015492210, 0
  br i1 %i.apu, label %._crit_edge2213, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.apv = add nsw i32 %.015492210, -1
  br label %.thread2012

.thread2012:                                      ; preds = %bb.ja, %bb.jb, %bb.jc, %bb.je
  %.11550 = phi i32 [ %spec.select2034, %bb.ja ], [ %i.apv, %bb.je ], [ %.015492210, %bb.jc ], [ %.015492210, %bb.jb ]
  %i.apw = icmp ugt ptr %i.apj, %i.apg
  br i1 %i.apw, label %.lr.ph2212, label %._crit_edge2213, !llvm.loop !166

._crit_edge2213:                                  ; preds = %bb.jd, %.thread2012, %bb.iz
  %i.apx = phi ptr [ %i.apf, %bb.iz ], [ %i.apj, %.thread2012 ], [ %i.apj, %bb.jd ] ; 2 uses
  store ptr %i.apx, ptr %i.o, align 8
  %i.apy = ptrtoint ptr %i.apx to i64
  %i.apz = ptrtoint ptr %i.apg to i64             ; 2 uses
  %i.aqa = sub i64 %i.apy, %i.apz
  %i.aqb = ashr exact i64 %i.aqa, 5
  %i.aqc = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.aqd = ptrtoint ptr %i.aqc to i64
  %i.aqe = ptrtoint ptr %i.apf to i64             ; 2 uses
  %i.aqf = sub i64 %i.aqd, %i.aqe
  %i.aqg = lshr exact i64 %i.aqf, 5
  %i.aqh = trunc i64 %i.aqg to i32
  %i.aqi = icmp slt i32 %i.aqh, 1
  br i1 %i.aqi, label %bb.jf, label %bb.jh

bb.jf:                                            ; preds = %._crit_edge2213
  %i.aqj = call fastcc i32 @stack_double(ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.m, ptr noundef %5) ; 2 uses
  %.not1795 = icmp eq i32 %i.aqj, 0
  br i1 %.not1795, label %bb.jg, label %.loopexit

bb.jg:                                            ; preds = %bb.jf
  %i.aqk = load ptr, ptr %i.k, align 8, !tbaa !103 ; 2 uses
  %i.aql = getelementptr inbounds [8 x i8], ptr %i.aqk, i64 %i.cw
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 8
  %.pre2461 = load ptr, ptr %i.m, align 8, !tbaa !104 ; 2 uses
  %.pre2462 = load ptr, ptr %i.l, align 8, !tbaa !104
  %.pre2483 = ptrtoint ptr %.pre2461 to i64
  %.pre2485 = ptrtoint ptr %.pre2462 to i64
  br label %bb.jh

bb.jh:                                            ; preds = %._crit_edge2213, %bb.jg
  %.pre-phi2486 = phi i64 [ %i.apz, %._crit_edge2213 ], [ %.pre2485, %bb.jg ]
  %.pre-phi2484 = phi i64 [ %i.aqe, %._crit_edge2213 ], [ %.pre2483, %bb.jg ]
  %i.aqn = phi ptr [ %i.apf, %._crit_edge2213 ], [ %.pre2461, %bb.jg ] ; 5 uses
  %.121476 = phi ptr [ %.501514, %._crit_edge2213 ], [ %i.aqm, %bb.jg ] ; 2 uses
  %.12 = phi ptr [ %.50, %._crit_edge2213 ], [ %i.aqk, %bb.jg ] ; 2 uses
  store i32 32816, ptr %i.aqn, align 8, !tbaa !107
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 4
  store i32 %i.ape, ptr %i.aqo, align 4, !tbaa !116
  %i.aqp = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqn, i64 8
  store ptr %i.aqp, ptr %i.aqq, align 8, !tbaa !62
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqn, i64 16
  %i.aqs = sext i32 %i.ape to i64                 ; 2 uses
  %i.aqt = getelementptr inbounds [8 x i8], ptr %.12, i64 %i.aqs ; 2 uses
  %i.aqu = load i64, ptr %i.aqt, align 8, !tbaa !62
  store i64 %i.aqu, ptr %i.aqr, align 8, !tbaa !62
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqn, i64 24
  %i.aqw = getelementptr inbounds [8 x i8], ptr %.121476, i64 %i.aqs ; 2 uses
  %i.aqx = load i64, ptr %i.aqw, align 8, !tbaa !62
  store i64 %i.aqx, ptr %i.aqv, align 8, !tbaa !62
  %i.aqy = sub i64 %.pre-phi2484, %.pre-phi2486
  %i.aqz = ashr exact i64 %i.aqy, 5
  store i64 %i.aqz, ptr %i.aqw, align 8, !tbaa !62
  %i.ara = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 32
  store ptr %i.arb, ptr %i.m, align 8, !tbaa !104
  store i64 %i.aqb, ptr %i.aqt, align 8, !tbaa !62
  %i.arc = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.ji:                                            ; preds = %.backedge
  %i.ard = getelementptr inbounds nuw i8, ptr %.71534, i64 8
  %i.are = load i32, ptr %i.ard, align 8, !tbaa !62 ; 6 uses
  %i.arf = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.arg = sext i32 %i.are to i64                 ; 3 uses
  %i.arh = getelementptr inbounds [8 x i8], ptr %.501514, i64 %i.arg
  store ptr %i.arf, ptr %i.arh, align 8, !tbaa !62
  %i.ari = load ptr, ptr %i.m, align 8, !tbaa !104 ; 3 uses
  %i.arj = load ptr, ptr %i.l, align 8, !tbaa !104 ; 3 uses
  %i.ark = icmp ugt ptr %i.ari, %i.arj
  br i1 %i.ark, label %.lr.ph2203, label %._crit_edge2204

.lr.ph2203:                                       ; preds = %bb.ji, %.thread2013
  %.015562201 = phi i32 [ %.11557, %.thread2013 ], [ 0, %bb.ji ] ; 5 uses
  %i.arl = phi ptr [ %i.arm, %.thread2013 ], [ %i.ari, %bb.ji ] ; 3 uses
  %i.arm = getelementptr inbounds i8, ptr %i.arl, i64 -32 ; 5 uses
  %i.arn = load i32, ptr %i.arm, align 8, !tbaa !107 ; 2 uses
  %i.aro = and i32 %i.arn, 32768
  %.not1790 = icmp eq i32 %i.aro, 0
  br i1 %.not1790, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %.lr.ph2203
  %i.arp = getelementptr inbounds i8, ptr %i.arl, i64 -28
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !116
  %i.arr = icmp eq i32 %i.arq, %i.are
  %i.ars = zext i1 %i.arr to i32
  %spec.select2035 = add nsw i32 %.015562201, %i.ars
  br label %.thread2013

bb.jk:                                            ; preds = %.lr.ph2203
  %i.art = icmp eq i32 %i.arn, 16
  br i1 %i.art, label %bb.jl, label %.thread2013

bb.jl:                                            ; preds = %bb.jk
  %i.aru = getelementptr inbounds i8, ptr %i.arl, i64 -28
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !116
  %i.arw = icmp eq i32 %i.arv, %i.are
  br i1 %i.arw, label %bb.jm, label %.thread2013

bb.jm:                                            ; preds = %bb.jl
  %i.arx = icmp eq i32 %.015562201, 0
  br i1 %i.arx, label %._crit_edge2204, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.ary = add nsw i32 %.015562201, -1
  br label %.thread2013

.thread2013:                                      ; preds = %bb.jj, %bb.jk, %bb.jl, %bb.jn
  %.11557 = phi i32 [ %spec.select2035, %bb.jj ], [ %i.ary, %bb.jn ], [ %.015562201, %bb.jl ], [ %.015562201, %bb.jk ]
  %i.arz = icmp ugt ptr %i.arm, %i.arj
  br i1 %i.arz, label %.lr.ph2203, label %._crit_edge2204, !llvm.loop !167

._crit_edge2204:                                  ; preds = %bb.jm, %.thread2013, %bb.ji
  %i.asa = phi ptr [ %i.ari, %bb.ji ], [ %i.arm, %.thread2013 ], [ %i.arm, %bb.jm ] ; 3 uses
  store ptr %i.asa, ptr %i.o, align 8
  %i.asb = icmp slt i32 %i.are, 32
  %i.asc = load i32, ptr %i.di, align 4, !tbaa !109 ; 2 uses
  br i1 %i.asb, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %._crit_edge2204
  %i.asd = shl nuw i32 1, %i.are
  %i.ase = and i32 %i.asc, %i.asd
  %.not1792 = icmp eq i32 %i.ase, 0
  br i1 %.not1792, label %bb.jr, label %bb.jq

bb.jp:                                            ; preds = %._crit_edge2204
  %i.asf = and i32 %i.asc, 1
  %.not1791 = icmp eq i32 %i.asf, 0
  br i1 %.not1791, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo
  %i.asg = ptrtoint ptr %i.asa to i64
  %i.ash = ptrtoint ptr %i.arj to i64
  %i.asi = sub i64 %i.asg, %i.ash
  %i.asj = ashr exact i64 %i.asi, 5
  %i.ask = getelementptr inbounds [8 x i8], ptr %.50, i64 %i.arg
  store i64 %i.asj, ptr %i.ask, align 8, !tbaa !62
  br label %bb.js

bb.jr:                                            ; preds = %bb.jp, %bb.jo
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asa, i64 8
  %i.asm = load ptr, ptr %i.asl, align 8, !tbaa !62
  %i.asn = getelementptr inbounds [8 x i8], ptr %.50, i64 %i.arg
  store ptr %i.asm, ptr %i.asn, align 8, !tbaa !62
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %i.aso = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.asp = load ptr, ptr %i.m, align 8, !tbaa !104 ; 2 uses
  %i.asq = ptrtoint ptr %i.aso to i64
  %i.asr = ptrtoint ptr %i.asp to i64
  %i.ass = sub i64 %i.asq, %i.asr
  %i.ast = lshr exact i64 %i.ass, 5
  %i.asu = trunc i64 %i.ast to i32
  %i.asv = icmp slt i32 %i.asu, 1
  br i1 %i.asv, label %bb.jt, label %bb.jv

bb.jt:                                            ; preds = %bb.js
  %i.asw = call fastcc i32 @stack_double(ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.m, ptr noundef %5) ; 2 uses
  %.not1793 = icmp eq i32 %i.asw, 0
  br i1 %.not1793, label %bb.ju, label %.loopexit

bb.ju:                                            ; preds = %bb.jt
  %i.asx = load ptr, ptr %i.k, align 8, !tbaa !103 ; 2 uses
  %i.asy = getelementptr inbounds [8 x i8], ptr %i.asx, i64 %i.cw
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asy, i64 8
  %.pre2460 = load ptr, ptr %i.m, align 8, !tbaa !104
  br label %bb.jv

bb.jv:                                            ; preds = %bb.js, %bb.ju
  %i.ata = phi ptr [ %.pre2460, %bb.ju ], [ %i.asp, %bb.js ] ; 3 uses
  %.131477 = phi ptr [ %i.asz, %bb.ju ], [ %.501514, %bb.js ]
  %.13 = phi ptr [ %i.asx, %bb.ju ], [ %.50, %bb.js ]
  store i32 33024, ptr %i.ata, align 8, !tbaa !107
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 4
  store i32 %i.are, ptr %i.atb, align 4, !tbaa !116
  %i.atc = getelementptr inbounds nuw i8, ptr %i.ata, i64 32
  store ptr %i.atc, ptr %i.m, align 8, !tbaa !104
  %i.atd = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.jw:                                            ; preds = %.backedge
  br label %bb.jy

bb.jx:                                            ; preds = %.backedge
  %i.ate = getelementptr inbounds nuw i8, ptr %.71534, i64 8
  %i.atf = load i32, ptr %i.ate, align 8, !tbaa !62
  br label %bb.jy

bb.jy:                                            ; preds = %.backedge, %bb.jx, %bb.jw
  %.01450 = phi i32 [ %i.atf, %bb.jx ], [ 2, %bb.jw ], [ 1, %.backedge ] ; 4 uses
  %i.atg = sext i32 %.01450 to i64                ; 2 uses
  %i.ath = getelementptr inbounds [8 x i8], ptr %.501514, i64 %i.atg ; 2 uses
  %i.ati = load i64, ptr %i.ath, align 8, !tbaa !62 ; 2 uses
  %i.atj = icmp eq i64 %i.ati, -1
  br i1 %i.atj, label %backref_check_at_nested_level.exit.thread, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.atk = getelementptr inbounds [8 x i8], ptr %.50, i64 %i.atg ; 3 uses
  %i.atl = load i64, ptr %i.atk, align 8, !tbaa !62 ; 3 uses
  %i.atm = icmp eq i64 %i.atl, -1
  br i1 %i.atm, label %backref_check_at_nested_level.exit.thread, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.atn = icmp slt i32 %.01450, 32
  %i.ato = load i32, ptr %i.di, align 4, !tbaa !109 ; 2 uses
  br i1 %i.atn, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.atp = shl nuw i32 1, %.01450
  %i.atq = and i32 %i.ato, %i.atp
  %.not18232667 = icmp eq i32 %i.atq, 0
  %i.atr = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.ats = getelementptr inbounds [32 x i8], ptr %i.atr, i64 %i.atl
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 8
  %.in18242668 = select i1 %.not18232667, ptr %i.atk, ptr %i.att
  %i.atu = load i32, ptr %i.dj, align 8, !tbaa !110
  %i.atv = shl nuw i32 1, %.01450
  %i.atw = and i32 %i.atu, %i.atv
  br label %bb.kd

bb.kc:                                            ; preds = %bb.ka
  %i.atx = and i32 %i.ato, 1
  %.not1823 = icmp eq i32 %i.atx, 0
  %i.aty = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.atz = getelementptr inbounds [32 x i8], ptr %i.aty, i64 %i.atl
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 8
  %.in1824 = select i1 %.not1823, ptr %i.atk, ptr %i.aua
  %i.aub = load i32, ptr %i.dj, align 8, !tbaa !110
  %i.auc = and i32 %i.aub, 1
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %.in2806 = phi ptr [ %.in18242668, %bb.kb ], [ %.in1824, %bb.kc ]
  %i.aud = phi ptr [ %i.atr, %bb.kb ], [ %i.aty, %bb.kc ]
  %i.aue = phi i32 [ %i.atw, %bb.kb ], [ %i.auc, %bb.kc ]
  %i.auf = load ptr, ptr %.in2806, align 8, !tbaa !62 ; 2 uses
  %.not1825 = icmp eq i32 %i.aue, 0
  %i.aug = getelementptr inbounds [32 x i8], ptr %i.aud, i64 %i.ati
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 8
  %.in1826 = select i1 %.not1825, ptr %i.ath, ptr %i.auh
  %i.aui = load ptr, ptr %.in1826, align 8, !tbaa !62
  %i.auj = ptrtoint ptr %i.aui to i64
  %i.auk = ptrtoint ptr %i.auf to i64
  %i.aul = sub i64 %i.auj, %i.auk                 ; 2 uses
  %i.aum = trunc i64 %i.aul to i32                ; 3 uses
  %.not1827 = icmp eq i32 %i.aum, 0
  br i1 %.not1827, label %.loopexit2075, label %bb.ke
end_hunk_1
