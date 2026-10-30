Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/parser?download=true
inline.NumInlined: 27
inline.NumDeleted: 5
begin_hunk_0_@yyparse:bb.a
  %i.bpt = call { ptr, ptr } @gen_location(i64 %.sroa.01295.0.insert.insert1319, ptr noundef %2, ptr %i.bpr, ptr %i.bps) #9 ; 2 uses
  %i.bpu = extractvalue { ptr, ptr } %i.bpt, 0
  %i.bpv = extractvalue { ptr, ptr } %i.bpt, 1
  %i.bpw = call { ptr, ptr } @gen_dictpair(ptr %i.bpl, ptr %i.bpm, ptr %i.bpu, ptr %i.bpv) #9 ; 2 uses
  %i.bpx = extractvalue { ptr, ptr } %i.bpw, 0
  %i.bpy = extractvalue { ptr, ptr } %i.bpw, 1
  %i.bpz = ptrtoint ptr %i.bpx to i64
  br label %bb.hj

bb.ha:                                            ; preds = %bb.aa
  %i.bqa = load i64, ptr %.31200, align 8
  %i.bqb = getelementptr inbounds nuw i8, ptr %.31200, i64 8 ; 2 uses
  %i.bqc = load ptr, ptr %i.bqb, align 8
  %i.bqd = call { i64, ptr } @jv_copy(i64 %i.bqa, ptr %i.bqc) #9 ; 2 uses
  %i.bqe = extractvalue { i64, ptr } %i.bqd, 0
  %i.bqf = extractvalue { i64, ptr } %i.bqd, 1
  %i.bqg = call { ptr, ptr } @gen_const(i64 %i.bqe, ptr %i.bqf) #9 ; 2 uses
  %i.bqh = extractvalue { ptr, ptr } %i.bqg, 0
  %i.bqi = extractvalue { ptr, ptr } %i.bqg, 1
  %i.bqj = call { ptr, ptr } @gen_noop() #9       ; 2 uses
  %i.bqk = extractvalue { ptr, ptr } %i.bqj, 0
  %i.bql = extractvalue { ptr, ptr } %i.bqj, 1
  %i.bqm = load i64, ptr %.31200, align 8
  %i.bqn = load ptr, ptr %i.bqb, align 8
  %i.bqo = call { ptr, ptr } @gen_const(i64 %i.bqm, ptr %i.bqn) #9 ; 2 uses
  %i.bqp = extractvalue { ptr, ptr } %i.bqo, 0
  %i.bqq = extractvalue { ptr, ptr } %i.bqo, 1
  %i.bqr = call fastcc { ptr, ptr } @gen_index(ptr %i.bqk, ptr %i.bql, ptr %i.bqp, ptr %i.bqq) ; 2 uses
  %i.bqs = extractvalue { ptr, ptr } %i.bqr, 0
  %i.bqt = extractvalue { ptr, ptr } %i.bqr, 1
  %i.bqu = call { ptr, ptr } @gen_dictpair(ptr %i.bqh, ptr %i.bqi, ptr %i.bqs, ptr %i.bqt) #9 ; 2 uses
  %i.bqv = extractvalue { ptr, ptr } %i.bqu, 0
  %i.bqw = extractvalue { ptr, ptr } %i.bqu, 1
  %i.bqx = ptrtoint ptr %i.bqv to i64
  br label %bb.hj

bb.hb:                                            ; preds = %bb.aa
  %i.bqy = call { i64, ptr } @jv_string(ptr noundef nonnull @.str.39) #9 ; 2 uses
  %i.bqz = extractvalue { i64, ptr } %i.bqy, 0
  %i.bra = extractvalue { i64, ptr } %i.bqy, 1
  %i.brb = call { ptr, ptr } @gen_const(i64 %i.bqz, ptr %i.bra) #9 ; 2 uses
  %i.brc = extractvalue { ptr, ptr } %i.brb, 0
  %i.brd = extractvalue { ptr, ptr } %i.brb, 1
  %i.bre = call fastcc { ptr, ptr } @gen_loc_object(i32 %.sroa.01295.0, ptr noundef %2) ; 2 uses
  %i.brf = extractvalue { ptr, ptr } %i.bre, 0
  %i.brg = extractvalue { ptr, ptr } %i.bre, 1
  %i.brh = call { ptr, ptr } @gen_dictpair(ptr %i.brc, ptr %i.brd, ptr %i.brf, ptr %i.brg) #9 ; 2 uses
  %i.bri = extractvalue { ptr, ptr } %i.brh, 0
  %i.brj = extractvalue { ptr, ptr } %i.brh, 1
  %i.brk = ptrtoint ptr %i.bri to i64
  br label %bb.hj

bb.hc:                                            ; preds = %bb.aa
  %i.brl = load i64, ptr %.31200, align 8
  %i.brm = getelementptr inbounds nuw i8, ptr %.31200, i64 8 ; 2 uses
  %i.brn = load ptr, ptr %i.brm, align 8
  %i.bro = call { i64, ptr } @jv_copy(i64 %i.brl, ptr %i.brn) #9 ; 2 uses
  %i.brp = extractvalue { i64, ptr } %i.bro, 0
  %i.brq = extractvalue { i64, ptr } %i.bro, 1
  %i.brr = call { ptr, ptr } @gen_const(i64 %i.brp, ptr %i.brq) #9 ; 2 uses
  %i.brs = extractvalue { ptr, ptr } %i.brr, 0
  %i.brt = extractvalue { ptr, ptr } %i.brr, 1
  %i.bru = call { ptr, ptr } @gen_noop() #9       ; 2 uses
  %i.brv = extractvalue { ptr, ptr } %i.bru, 0
  %i.brw = extractvalue { ptr, ptr } %i.bru, 1
  %i.brx = load i64, ptr %.31200, align 8
  %i.bry = load ptr, ptr %i.brm, align 8
  %i.brz = call { ptr, ptr } @gen_const(i64 %i.brx, ptr %i.bry) #9 ; 2 uses
  %i.bsa = extractvalue { ptr, ptr } %i.brz, 0
  %i.bsb = extractvalue { ptr, ptr } %i.brz, 1
  %i.bsc = call fastcc { ptr, ptr } @gen_index(ptr %i.brv, ptr %i.brw, ptr %i.bsa, ptr %i.bsb) ; 2 uses
  %i.bsd = extractvalue { ptr, ptr } %i.bsc, 0
  %i.bse = extractvalue { ptr, ptr } %i.bsc, 1
  %i.bsf = call { ptr, ptr } @gen_dictpair(ptr %i.brs, ptr %i.brt, ptr %i.bsd, ptr %i.bse) #9 ; 2 uses
  %i.bsg = extractvalue { ptr, ptr } %i.bsf, 0
  %i.bsh = extractvalue { ptr, ptr } %i.bsf, 1
  %i.bsi = ptrtoint ptr %i.bsg to i64
  br label %bb.hj

bb.hd:                                            ; preds = %bb.aa
  %i.bsj = getelementptr inbounds i8, ptr %.31200, i64 -48 ; 2 uses
  %i.bsk = load ptr, ptr %i.bsj, align 8
  %i.bsl = getelementptr inbounds i8, ptr %.31200, i64 -40 ; 2 uses
  %i.bsm = load ptr, ptr %i.bsl, align 8
  %i.bsn = call fastcc { i64, ptr } @check_object_key(ptr %i.bsk, ptr %i.bsm) ; 2 uses
  %i.bso = extractvalue { i64, ptr } %i.bsn, 0    ; 3 uses
  %i.bsp = extractvalue { i64, ptr } %i.bsn, 1    ; 3 uses
  %i.bsq = call i32 @jv_get_kind(i64 %i.bso, ptr %i.bsp) #9
  %.not1498 = icmp eq i32 %i.bsq, 0
  br i1 %.not1498, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.bsr = getelementptr inbounds i8, ptr %.31213, i64 -24
  %i.bss = load i64, ptr %i.bsr, align 4, !tbaa !12
  %i.bst = call ptr @jv_string_value(i64 %i.bso, ptr %i.bsp) #9
  %i.bsu = load i32, ptr %1, align 4, !tbaa !12
  %i.bsv = add nsw i32 %i.bsu, 1
  store i32 %i.bsv, ptr %1, align 4, !tbaa !12
  call void (ptr, i64, ptr, ...) @locfile_locate(ptr noundef %2, i64 %i.bss, ptr noundef nonnull @.str, ptr noundef %i.bst) #9
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  call void @jv_free(i64 %i.bso, ptr %i.bsp) #9
  %i.bsw = load ptr, ptr %i.bsj, align 8
  %i.bsx = load ptr, ptr %i.bsl, align 8
  %i.bsy = load ptr, ptr %.31200, align 8
  %i.bsz = getelementptr inbounds nuw i8, ptr %.31200, i64 8
  %i.bta = load ptr, ptr %i.bsz, align 8
  %i.btb = call { ptr, ptr } @gen_dictpair(ptr %i.bsw, ptr %i.bsx, ptr %i.bsy, ptr %i.bta) #9 ; 2 uses
  %i.btc = extractvalue { ptr, ptr } %i.btb, 0
  %i.btd = extractvalue { ptr, ptr } %i.btb, 1
  %i.bte = ptrtoint ptr %i.btc to i64
  br label %bb.hj

bb.hg:                                            ; preds = %bb.aa
  %i.btf = getelementptr inbounds i8, ptr %.31213, i64 -16
  %i.btg = load i64, ptr %i.btf, align 4, !tbaa !12
  %i.bth = load i32, ptr %1, align 4, !tbaa !12
  %i.bti = add nsw i32 %i.bth, 1
  store i32 %i.bti, ptr %1, align 4, !tbaa !12
  call void (ptr, i64, ptr, ...) @locfile_locate(ptr noundef %2, i64 %i.btg, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #9
  %.sroa.0606.sroa.0.0.copyload667 = load i64, ptr %.31200, align 8, !tbaa !22
  %.sroa.180.0..sroa_idx643 = getelementptr inbounds nuw i8, ptr %.31200, i64 8
  %.sroa.180.0.copyload644 = load ptr, ptr %.sroa.180.0..sroa_idx643, align 8, !tbaa !22
  br label %bb.hj

bb.hh:                                            ; preds = %bb.aa
  %i.btj = getelementptr inbounds i8, ptr %.31200, i64 -32
  %i.btk = load ptr, ptr %i.btj, align 8
  %i.btl = getelementptr inbounds i8, ptr %.31200, i64 -24
  %i.btm = load ptr, ptr %i.btl, align 8
  %i.btn = load ptr, ptr %.31200, align 8
  %i.bto = getelementptr inbounds nuw i8, ptr %.31200, i64 8
  %i.btp = load ptr, ptr %i.bto, align 8
  %i.btq = call { ptr, ptr } @block_join(ptr %i.btk, ptr %i.btm, ptr %i.btn, ptr %i.btp) #9 ; 2 uses
  %i.btr = extractvalue { ptr, ptr } %i.btq, 0
  %i.bts = extractvalue { ptr, ptr } %i.btq, 1
  %i.btt = ptrtoint ptr %i.btr to i64
  br label %bb.hj

bb.hi:                                            ; preds = %bb.aa
  %.sroa.0606.sroa.0.0.copyload668 = load i64, ptr %.31200, align 8, !tbaa !22
  %.sroa.180.0..sroa_idx645 = getelementptr inbounds nuw i8, ptr %.31200, i64 8
  %.sroa.180.0.copyload646 = load ptr, ptr %.sroa.180.0..sroa_idx645, align 8, !tbaa !22
  br label %bb.hj

bb.hj:                                            ; preds = %bb.aa, %bb.ca, %bb.cb, %bb.bs, %bb.bv, %bb.bu, %bb.af, %bb.ai, %bb.ah, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.by, %bb.bx, %bb.bw, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ad, %bb.ac, %bb.ab
  %.sroa.180.2 = phi ptr [ %.sroa.180.0.copyload, %bb.aa ], [ %.sroa.180.0.copyload, %bb.ab ], [ %.sroa.180.0.copyload, %bb.ac ], [ %i.du, %bb.ad ], [ %i.eu, %bb.ah ], [ %i.fc, %bb.ai ], [ %i.eh, %bb.af ], [ %i.fg, %bb.aj ], [ %i.fr, %bb.ak ], [ %i.fv, %bb.al ], [ %i.gg, %bb.am ], [ %i.gr, %bb.an ], [ %i.hg, %bb.ao ], [ %i.hz, %bb.ap ], [ %i.im, %bb.aq ], [ %i.ix, %bb.ar ], [ %.sroa.180.0.copyload608, %bb.as ], [ %i.ji, %bb.at ], [ %i.kc, %bb.au ], [ %i.kn, %bb.av ], [ %i.ky, %bb.aw ], [ %i.lj, %bb.ax ], [ %i.md, %bb.ay ], [ %i.mo, %bb.az ], [ %i.mz, %bb.ba ], [ %i.nk, %bb.bb ], [ %i.nv, %bb.bc ], [ %i.og, %bb.bd ], [ %i.or, %bb.be ], [ %i.pc, %bb.bf ], [ %i.pn, %bb.bg ], [ %i.py, %bb.bh ], [ %i.qj, %bb.bi ], [ %i.qu, %bb.bj ], [ %i.rf, %bb.bk ], [ %i.rq, %bb.bl ], [ %i.sb, %bb.bm ], [ %i.sm, %bb.bn ], [ %i.sx, %bb.bo ], [ %.sroa.180.0.copyload610, %bb.bp ], [ %.sroa.180.0.copyload612, %bb.bq ], [ %i.uc, %bb.bu ], [ %i.us, %bb.bv ], [ %i.tl, %bb.bs ], [ %i.vg, %bb.bw ], [ %i.vw, %bb.bx ], [ %i.wl, %bb.by ], [ %.sroa.180.0.copyload614, %bb.cb ], [ %i.xb, %bb.ca ], [ %i.xt, %bb.cc ], [ %i.ym, %bb.cd ], [ %.sroa.180.0.copyload616, %bb.ce ], [ %i.yz, %bb.cf ], [ %i.zh, %bb.cg ], [ %i.zr, %bb.ch ], [ %.sroa.180.0.copyload618, %bb.ci ], [ %i.zy, %bb.cj ], [ %.sroa.180.0.copyload620, %bb.ck ], [ %i.aaj, %bb.cl ], [ %i.aax, %bb.cm ], [ %i.abt, %bb.cn ], [ %i.aci, %bb.co ], [ %.sroa.180.0.copyload622, %bb.cp ], [ %i.acn, %bb.cq ], [ %i.acr, %bb.cr ], [ %i.acy, %bb.cs ], [ %i.adw, %bb.ct ], [ %i.aee, %bb.cu ], [ %i.aet, %bb.cv ], [ %i.afh, %bb.cw ], [ %i.aft, %bb.cx ], [ %i.age, %bb.cy ], [ %i.ags, %bb.cz ], [ %i.ahf, %bb.da ], [ %i.ahq, %bb.db ], [ %i.aia, %bb.dc ], [ %i.aig, %bb.dd ], [ %i.aiq, %bb.de ], [ %i.ajc, %bb.df ], [ %i.ajo, %bb.dg ], [ %i.aka, %bb.dh ], [ %i.akm, %bb.di ], [ %i.akx, %bb.dj ], [ %i.ali, %bb.dk ], [ %i.alt, %bb.dl ], [ %i.ame, %bb.dm ], [ %i.amu, %bb.dn ], [ %i.anm, %bb.do ], [ %i.aoe, %bb.dp ], [ %i.aou, %bb.dq ], [ %i.apm, %bb.dr ], [ %i.aqe, %bb.ds ], [ %i.aqp, %bb.dt ], [ %i.aqw, %bb.du ], [ %.sroa.180.0.copyload624, %bb.dv ], [ %i.arg, %bb.dw ], [ %i.art, %bb.dx ], [ %.sroa.180.0.copyload626, %bb.dy ], [ %i.asc, %bb.dz ], [ %i.asj, %bb.ea ], [ %.sroa.180.0, %bb.ed ], [ %i.atz, %bb.ee ], [ %i.aur, %bb.ef ], [ %i.avl, %bb.eg ], [ %i.awa, %bb.eh ], [ %.sroa.180.0.copyload628, %bb.ei ], [ %i.awo, %bb.ej ], [ %.sroa.180.0.copyload630, %bb.ek ], [ %i.axb, %bb.el ], [ %i.axm, %bb.em ], [ %i.axz, %bb.en ], [ %i.ayf, %bb.eo ], [ %.sroa.180.1, %bb.ew ], [ %i.bac, %bb.ex ], [ %i.bai, %bb.ey ], [ %i.bam, %bb.ez ], [ %.sroa.180.0.copyload632, %bb.fa ], [ %i.bar, %bb.fb ], [ %.sroa.180.0.copyload634, %bb.fc ], [ %i.bbc, %bb.fd ], [ %i.bbj, %bb.fe ], [ %i.bbx, %bb.ff ], [ %i.bce, %bb.fg ], [ %i.bcp, %bb.fh ], [ %.sroa.180.0.copyload636, %bb.fi ], [ %i.bcx, %bb.fj ], [ %i.bdk, %bb.fk ], [ %i.bdv, %bb.fl ], [ %i.bef, %bb.fm ], [ %i.beq, %bb.fn ], [ %.sroa.180.0.copyload638, %bb.fo ], [ %i.bfb, %bb.fp ], [ %i.bfr, %bb.fq ], [ %i.bgu, %bb.fr ], [ %i.bhi, %bb.fs ], [ %i.bhw, %bb.ft ], [ %i.bih, %bb.fu ], [ %i.bjd, %bb.fx ], [ %.sroa.180.0.copyload640, %bb.fy ], [ %i.bjj, %bb.fz ], [ %i.bjm, %bb.ga ], [ %i.bjp, %bb.gb ], [ %i.bjs, %bb.gc ], [ %i.bjv, %bb.gd ], [ %i.bjy, %bb.ge ], [ %i.bkb, %bb.gf ], [ %i.bke, %bb.gg ], [ %i.bkh, %bb.gh ], [ %i.bkk, %bb.gi ], [ %i.bkn, %bb.gj ], [ %i.bkq, %bb.gk ], [ %i.bkt, %bb.gl ], [ %i.bkw, %bb.gm ], [ %i.bkz, %bb.gn ], [ %i.blc, %bb.go ], [ %i.blf, %bb.gp ], [ %i.bli, %bb.gq ], [ %i.bll, %bb.gr ], [ %.sroa.180.0.copyload642, %bb.gs ], [ %i.blw, %bb.gt ], [ %i.bmk, %bb.gu ], [ %i.bmy, %bb.gv ], [ %i.bnj, %bb.gw ], [ %i.bol, %bb.gx ], [ %i.bpd, %bb.gy ], [ %i.bpy, %bb.gz ], [ %i.bqw, %bb.ha ], [ %i.brj, %bb.hb ], [ %i.bsh, %bb.hc ], [ %i.btd, %bb.hf ], [ %.sroa.180.0.copyload644, %bb.hg ], [ %i.bts, %bb.hh ], [ %.sroa.180.0.copyload646, %bb.hi ]
  %.sroa.0606.sroa.0.2 = phi i64 [ %.sroa.0606.sroa.0.0.copyload, %bb.aa ], [ %.sroa.0606.sroa.0.0.copyload, %bb.ab ], [ %.sroa.0606.sroa.0.0.copyload, %bb.ac ], [ %i.dv, %bb.ad ], [ %i.ev, %bb.ah ], [ %i.fd, %bb.ai ], [ %i.ei, %bb.af ], [ %i.fh, %bb.aj ], [ %i.fs, %bb.ak ], [ %i.fw, %bb.al ], [ %i.gh, %bb.am ], [ %i.gs, %bb.an ], [ %i.hh, %bb.ao ], [ %i.ia, %bb.ap ], [ %i.in, %bb.aq ], [ %i.iy, %bb.ar ], [ %.sroa.0606.sroa.0.0.copyload649, %bb.as ], [ %i.jj, %bb.at ], [ %i.kd, %bb.au ], [ %i.ko, %bb.av ], [ %i.kz, %bb.aw ], [ %i.lk, %bb.ax ], [ %i.me, %bb.ay ], [ %i.mp, %bb.az ], [ %i.na, %bb.ba ], [ %i.nl, %bb.bb ], [ %i.nw, %bb.bc ], [ %i.oh, %bb.bd ], [ %i.os, %bb.be ], [ %i.pd, %bb.bf ], [ %i.po, %bb.bg ], [ %i.pz, %bb.bh ], [ %i.qk, %bb.bi ], [ %i.qv, %bb.bj ], [ %i.rg, %bb.bk ], [ %i.rr, %bb.bl ], [ %i.sc, %bb.bm ], [ %i.sn, %bb.bn ], [ %i.sy, %bb.bo ], [ %.sroa.0606.sroa.0.0.copyload650, %bb.bp ], [ %.sroa.0606.sroa.0.0.copyload651, %bb.bq ], [ %i.ud, %bb.bu ], [ %i.ut, %bb.bv ], [ %i.tm, %bb.bs ], [ %i.vh, %bb.bw ], [ %i.vx, %bb.bx ], [ %i.wm, %bb.by ], [ %.sroa.0606.sroa.0.0.copyload652, %bb.cb ], [ %i.xc, %bb.ca ], [ %i.xu, %bb.cc ], [ %i.yn, %bb.cd ], [ %.sroa.0606.sroa.0.0.copyload653, %bb.ce ], [ %i.za, %bb.cf ], [ %i.zi, %bb.cg ], [ %i.zs, %bb.ch ], [ %.sroa.0606.sroa.0.0.copyload654, %bb.ci ], [ %i.zx, %bb.cj ], [ %.sroa.0606.sroa.0.0.copyload655, %bb.ck ], [ %i.aak, %bb.cl ], [ %i.aay, %bb.cm ], [ %i.abu, %bb.cn ], [ %i.acj, %bb.co ], [ %.sroa.0606.sroa.0.0.copyload656, %bb.cp ], [ %i.aco, %bb.cq ], [ %i.acs, %bb.cr ], [ %i.acz, %bb.cs ], [ %i.adx, %bb.ct ], [ %i.aef, %bb.cu ], [ %i.aeu, %bb.cv ], [ %i.afi, %bb.cw ], [ %i.afu, %bb.cx ], [ %i.agf, %bb.cy ], [ %i.agt, %bb.cz ], [ %i.ahg, %bb.da ], [ %i.ahr, %bb.db ], [ %i.aib, %bb.dc ], [ %i.aih, %bb.dd ], [ %i.air, %bb.de ], [ %i.ajd, %bb.df ], [ %i.ajp, %bb.dg ], [ %i.akb, %bb.dh ], [ %i.akn, %bb.di ], [ %i.aky, %bb.dj ], [ %i.alj, %bb.dk ], [ %i.alu, %bb.dl ], [ %i.amf, %bb.dm ], [ %i.amv, %bb.dn ], [ %i.ann, %bb.do ], [ %i.aof, %bb.dp ], [ %i.aov, %bb.dq ], [ %i.apn, %bb.dr ], [ %i.aqf, %bb.ds ], [ %i.aqq, %bb.dt ], [ %i.aqx, %bb.du ], [ %.sroa.0606.sroa.0.0.copyload657, %bb.dv ], [ %i.arh, %bb.dw ], [ %i.aru, %bb.dx ], [ %.sroa.0606.sroa.0.0.copyload658, %bb.dy ], [ %i.asd, %bb.dz ], [ %i.ask, %bb.ea ], [ %.sroa.0606.sroa.0.0, %bb.ed ], [ %i.aua, %bb.ee ], [ %i.aus, %bb.ef ], [ %i.avm, %bb.eg ], [ %i.awb, %bb.eh ], [ %.sroa.0606.sroa.0.0.copyload659, %bb.ei ], [ %i.awp, %bb.ej ], [ %.sroa.0606.sroa.0.0.copyload660, %bb.ek ], [ %i.axc, %bb.el ], [ %i.axn, %bb.em ], [ %i.aya, %bb.en ], [ %i.ayg, %bb.eo ], [ %.sroa.0606.sroa.0.1, %bb.ew ], [ %i.bad, %bb.ex ], [ %i.baj, %bb.ey ], [ %i.ban, %bb.ez ], [ %.sroa.0606.sroa.0.0.copyload661, %bb.fa ], [ %i.bas, %bb.fb ], [ %.sroa.0606.sroa.0.0.copyload662, %bb.fc ], [ %i.bbd, %bb.fd ], [ %i.bbk, %bb.fe ], [ %i.bby, %bb.ff ], [ %i.bcf, %bb.fg ], [ %i.bcq, %bb.fh ], [ %.sroa.0606.sroa.0.0.copyload663, %bb.fi ], [ %i.bcy, %bb.fj ], [ %i.bdl, %bb.fk ], [ %i.bdw, %bb.fl ], [ %i.beg, %bb.fm ], [ %i.ber, %bb.fn ], [ %.sroa.0606.sroa.0.0.copyload664, %bb.fo ], [ %i.bfc, %bb.fp ], [ %i.bfs, %bb.fq ], [ %i.bgv, %bb.fr ], [ %i.bhj, %bb.fs ], [ %i.bhx, %bb.ft ], [ %i.bii, %bb.fu ], [ %i.bje, %bb.fx ], [ %.sroa.0606.sroa.0.0.copyload665, %bb.fy ], [ %i.bji, %bb.fz ], [ %i.bjl, %bb.ga ], [ %i.bjo, %bb.gb ], [ %i.bjr, %bb.gc ], [ %i.bju, %bb.gd ], [ %i.bjx, %bb.ge ], [ %i.bka, %bb.gf ], [ %i.bkd, %bb.gg ], [ %i.bkg, %bb.gh ], [ %i.bkj, %bb.gi ], [ %i.bkm, %bb.gj ], [ %i.bkp, %bb.gk ], [ %i.bks, %bb.gl ], [ %i.bkv, %bb.gm ], [ %i.bky, %bb.gn ], [ %i.blb, %bb.go ], [ %i.ble, %bb.gp ], [ %i.blh, %bb.gq ], [ %i.blm, %bb.gr ], [ %.sroa.0606.sroa.0.0.copyload666, %bb.gs ], [ %i.blx, %bb.gt ], [ %i.bml, %bb.gu ], [ %i.bmz, %bb.gv ], [ %i.bnk, %bb.gw ], [ %i.bom, %bb.gx ], [ %i.bpe, %bb.gy ], [ %i.bpz, %bb.gz ], [ %i.bqx, %bb.ha ], [ %i.brk, %bb.hb ], [ %i.bsi, %bb.hc ], [ %i.bte, %bb.hf ], [ %.sroa.0606.sroa.0.0.copyload667, %bb.hg ], [ %i.btt, %bb.hh ], [ %.sroa.0606.sroa.0.0.copyload668, %bb.hi ]
  %i.btu = sub nsw i64 0, %i.bt                   ; 3 uses
  %i.btv = getelementptr inbounds [16 x i8], ptr %.31200, i64 %i.btu ; 2 uses
  %i.btw = getelementptr inbounds [2 x i8], ptr %.31187, i64 %i.btu ; 3 uses
  %i.btx = getelementptr inbounds [8 x i8], ptr %.31213, i64 %i.btu
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btv, i64 16 ; 3 uses
  store i64 %.sroa.0606.sroa.0.2, ptr %i.bty, align 8
  %.sroa.180.0..sroa_idx647 = getelementptr inbounds nuw i8, ptr %i.btv, i64 24
  store ptr %.sroa.180.2, ptr %.sroa.180.0..sroa_idx647, align 8, !tbaa !16
  %i.btz = getelementptr inbounds nuw i8, ptr %i.btx, i64 8 ; 3 uses
  %.sroa.20.0.insert.ext1409 = zext i32 %.sroa.20.0 to i64
  %.sroa.20.0.insert.shift1410 = shl nuw i64 %.sroa.20.0.insert.ext1409, 32
  %.sroa.01295.0.insert.ext1345 = zext i32 %.sroa.01295.0 to i64
  %.sroa.01295.0.insert.insert1347 = or disjoint i64 %.sroa.20.0.insert.shift1410, %.sroa.01295.0.insert.ext1345
  store i64 %.sroa.01295.0.insert.insert1347, ptr %i.btz, align 4, !tbaa !12
  %i.bua = getelementptr inbounds nuw i8, ptr @yyr1, i64 %i.bq
  %i.bub = load i8, ptr %i.bua, align 1, !tbaa !16
  %i.buc = sext i8 %i.bub to i64
  %i.bud = add nsw i64 %i.buc, -70                ; 2 uses
  %i.bue = getelementptr inbounds [2 x i8], ptr @yypgoto, i64 %i.bud
  %i.buf = load i16, ptr %i.bue, align 2, !tbaa !20
  %i.bug = sext i16 %i.buf to i32
  %i.buh = load i16, ptr %i.btw, align 2, !tbaa !20 ; 2 uses
  %i.bui = sext i16 %i.buh to i32
  %i.buj = add nsw i32 %i.bui, %i.bug             ; 2 uses
  %or.cond5 = icmp ult i32 %i.buj, 1227
  br i1 %or.cond5, label %bb.hk, label %bb.hm

bb.hk:                                            ; preds = %bb.hj
  %i.buk = zext nneg i32 %i.buj to i64            ; 2 uses
  %i.bul = getelementptr inbounds nuw [2 x i8], ptr @yycheck, i64 %i.buk
  %i.bum = load i16, ptr %i.bul, align 2, !tbaa !20
  %i.bun = icmp eq i16 %i.bum, %i.buh
  br i1 %i.bun, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.buo = getelementptr inbounds nuw [2 x i8], ptr @yytable, i64 %i.buk
  %i.bup = load i16, ptr %i.buo, align 2, !tbaa !20
  %i.buq = sext i16 %i.bup to i32
  br label %bb.b

bb.hm:                                            ; preds = %bb.hk, %bb.hj
  %i.bur = getelementptr inbounds i8, ptr @yydefgoto, i64 %i.bud
  %i.bus = load i8, ptr %i.bur, align 1, !tbaa !16
  %i.but = zext i8 %i.bus to i32
  br label %bb.b

bb.hn:                                            ; preds = %bb.w
  %i.buu = icmp eq i32 %.4, -2
  br i1 %i.buu, label %bb.hp, label %.thread1446

.thread1446:                                      ; preds = %bb.t, %bb.hn
  %.61448 = phi i32 [ %.4, %bb.hn ], [ %.3, %bb.t ] ; 4 uses
  %or.cond7 = icmp ult i32 %.61448, 304
  br i1 %or.cond7, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %.thread1446
  %i.buv = zext nneg i32 %.61448 to i64
  %i.buw = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.buv
  %i.bux = load i8, ptr %i.buw, align 1, !tbaa !16
  %i.buy = sext i8 %i.bux to i32
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %.thread1446, %bb.hn
  %.61449.a = phi i32 [ -2, %bb.hn ], [ %.61448, %bb.ho ], [ %.61448, %.thread1446 ] ; 6 uses
  %i.buz = phi i32 [ -2, %bb.hn ], [ %i.buy, %bb.ho ], [ 2, %.thread1446 ] ; 3 uses
  %.not1262 = icmp eq i32 %.11172, 0
  br i1 %.not1262, label %bb.hq, label %bb.hy

bb.hq:                                            ; preds = %bb.hp
  %i.bva = call fastcc i32 @yysyntax_error(ptr noundef %i.c, ptr %.11414, ptr nonnull %.31187, i32 %i.buz)
  switch i32 %i.bva, label %bb.hx [
    i32 0, label %bb.hr
    i32 -1, label %bb.hs
  ]

bb.hr:                                            ; preds = %bb.hq
  br label %bb.hx

bb.hs:                                            ; preds = %bb.hq
  %.not1263 = icmp eq ptr %.11414, %i.b
  br i1 %.not1263, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  call void @jv_mem_free(ptr noundef %.11414) #9
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %i.bvb = load i64, ptr %i.c, align 8, !tbaa !18
  %i.bvc = call ptr @jv_mem_alloc(i64 noundef %i.bvb) #9 ; 4 uses
  %.not1264 = icmp eq ptr %i.bvc, null
  br i1 %.not1264, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.bvd = call fastcc i32 @yysyntax_error(ptr noundef %i.c, ptr nonnull %i.bvc, ptr nonnull %.31187, i32 %i.buz)
  %i.bve = icmp eq i32 %i.bvd, -2
  br label %bb.hx

bb.hw:                                            ; preds = %bb.hu
  store i64 128, ptr %i.c, align 8, !tbaa !18
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hq, %bb.hw, %bb.hv, %bb.hr
  %.21415 = phi ptr [ %.11414, %bb.hq ], [ %.11414, %bb.hr ], [ %i.b, %bb.hw ], [ %i.bvc, %bb.hv ] ; 2 uses
  %.01161 = phi ptr [ @.str.40, %bb.hq ], [ %.11414, %bb.hr ], [ @.str.40, %bb.hw ], [ %i.bvc, %bb.hv ]
  %.0 = phi i1 [ true, %bb.hq ], [ false, %bb.hr ], [ true, %bb.hw ], [ %i.bve, %bb.hv ]
  %i.bvf = load i32, ptr %1, align 4, !tbaa !12
  %i.bvg = add nsw i32 %i.bvf, 1
  store i32 %i.bvg, ptr %1, align 4, !tbaa !12
  %i.bvh = load i64, ptr %5, align 8
  call void (ptr, i64, ptr, ...) @locfile_locate(ptr noundef %2, i64 %i.bvh, ptr noundef nonnull @.str, ptr noundef %.01161) #9
  br i1 %.0, label %.thread1428, label %.thread1450

.thread1450:                                      ; preds = %bb.hx
  %.sroa.2599.8.copyload6011453 = load i32, ptr %5, align 8, !tbaa !12
  br label %bb.ic

bb.hy:                                            ; preds = %bb.hp
  %.sroa.2599.8.copyload601 = load i32, ptr %5, align 8, !tbaa !12 ; 3 uses
  %i.bvi = icmp eq i32 %.11172, 3
  br i1 %i.bvi, label %bb.hz, label %bb.ic

bb.hz:                                            ; preds = %bb.hy
  %i.bvj = icmp slt i32 %.61449.a, 1
  br i1 %i.bvj, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %9 = icmp eq i32 %.61449.a, 0
  br i1 %9, label %.thread1476, label %bb.ic

bb.ib:                                            ; preds = %bb.hz
  call fastcc void @yydestruct(i32 noundef %i.buz, ptr noundef %4)
  br label %bb.ic

bb.ic:                                            ; preds = %.thread1450, %bb.hy, %bb.ia, %bb.ib, %bb.n
  %.41417 = phi ptr [ %.11414, %bb.ia ], [ %.11414, %bb.ib ], [ %.11414, %bb.hy ], [ %.11414, %bb.n ], [ %.21415, %.thread1450 ] ; 2 uses
  %.sroa.2599.0 = phi i32 [ %.sroa.2599.8.copyload601, %bb.ia ], [ %.sroa.2599.8.copyload601, %bb.ib ], [ %.sroa.2599.8.copyload601, %bb.hy ], [ %.sroa.2599.8.copyload, %bb.n ], [ %.sroa.2599.8.copyload6011453, %.thread1450 ]
  %.7 = phi i32 [ %.61449.a, %bb.ia ], [ -2, %bb.ib ], [ %.61449.a, %bb.hy ], [ 257, %bb.n ], [ %.61449.a, %.thread1450 ] ; 2 uses
  br label %bb.id

bb.id:                                            ; preds = %bb.ih, %bb.ic
  %i.bvk = phi i16 [ %i.am, %bb.ic ], [ %.pre, %bb.ih ] ; 2 uses
  %.sroa.2599.1 = phi i32 [ %.sroa.2599.0, %bb.ic ], [ %.sroa.2599.8.copyload602, %bb.ih ]
  %.41214 = phi ptr [ %.31213, %bb.ic ], [ %i.bwb, %bb.ih ] ; 4 uses
  %.41201 = phi ptr [ %.31200, %bb.ic ], [ %i.bvz, %bb.ih ] ; 4 uses
  %.41188 = phi ptr [ %.31187, %bb.ic ], [ %i.bwa, %bb.ih ] ; 4 uses
  %.21170 = phi i32 [ %.11169, %bb.ic ], [ %i.bwd, %bb.ih ]
  %i.bvl = sext i32 %.21170 to i64
  %i.bvm = icmp sgt i16 %i.bvk, -2
  br i1 %i.bvm, label %bb.ie, label %bb.ig

bb.ie:                                            ; preds = %bb.id
  %i.bvn = sext i16 %i.bvk to i64
  %i.bvo = add nsw i64 %i.bvn, 1                  ; 2 uses
  %i.bvp = getelementptr inbounds nuw [2 x i8], ptr @yycheck, i64 %i.bvo
  %i.bvq = load i16, ptr %i.bvp, align 2, !tbaa !20
  %i.bvr = icmp eq i16 %i.bvq, 1
  br i1 %i.bvr, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.bvs = getelementptr inbounds nuw [2 x i8], ptr @yytable, i64 %i.bvo
  %i.bvt = load i16, ptr %i.bvs, align 2, !tbaa !20 ; 2 uses
  %i.bvu = icmp sgt i16 %i.bvt, 0
  br i1 %i.bvu, label %bb.ii, label %bb.ig

bb.ig:                                            ; preds = %bb.ie, %bb.if, %bb.id
  %i.bvv = icmp eq ptr %.41188, %.31180
  br i1 %i.bvv, label %.loopexit, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %.sroa.2599.8.copyload602 = load i32, ptr %.41214, align 4, !tbaa !12
  %i.bvw = getelementptr inbounds i8, ptr @yystos, i64 %i.bvl
  %i.bvx = load i8, ptr %i.bvw, align 1, !tbaa !16
  %i.bvy = sext i8 %i.bvx to i32
  call fastcc void @yydestruct(i32 noundef %i.bvy, ptr noundef %.41201)
  %i.bvz = getelementptr inbounds i8, ptr %.41201, i64 -16
  %i.bwa = getelementptr inbounds i8, ptr %.41188, i64 -2 ; 2 uses
  %i.bwb = getelementptr inbounds i8, ptr %.41214, i64 -8
  %i.bwc = load i16, ptr %i.bwa, align 2, !tbaa !20 ; 2 uses
  %i.bwd = sext i16 %i.bwc to i32
  %.phi.trans.insert = sext i16 %i.bwc to i64
  %.phi.trans.insert1531 = getelementptr inbounds [2 x i8], ptr @yypact, i64 %.phi.trans.insert
  %.pre = load i16, ptr %.phi.trans.insert1531, align 2, !tbaa !20
  br label %bb.id

bb.ii:                                            ; preds = %bb.if
  %i.bwe = zext nneg i16 %i.bvt to i32
  %i.bwf = getelementptr inbounds nuw i8, ptr %.41201, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bwf, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !26
  %.sroa.8.16.copyload = load i32, ptr %.sroa.8.16..sroa_idx, align 4, !tbaa !12
  %i.bwg = getelementptr inbounds nuw i8, ptr %.41214, i64 8 ; 2 uses
  store i32 %.sroa.2599.1, ptr %i.bwg, align 4, !tbaa !28
  %i.bwh = getelementptr inbounds nuw i8, ptr %.41214, i64 12
  store i32 %.sroa.8.16.copyload, ptr %i.bwh, align 4, !tbaa !29
  br label %bb.b

.thread1428:                                      ; preds = %bb.e, %bb.d, %bb.hx
  %.51418 = phi ptr [ %.21415, %bb.hx ], [ %.11414, %bb.d ], [ %.11414, %bb.e ]
  %.61203 = phi ptr [ %.31200, %bb.hx ], [ %.11198, %bb.d ], [ %.11198, %bb.e ]
  %.61190 = phi ptr [ %.31187, %bb.hx ], [ %.11185, %bb.d ], [ %.11185, %bb.e ]
  %.51182 = phi ptr [ %.31180, %bb.hx ], [ %.01177, %bb.d ], [ %.01177, %bb.e ]
  %.9 = phi i32 [ %.61449.a, %bb.hx ], [ %.1, %bb.d ], [ %.1, %bb.e ]
  %i.bwi = load i32, ptr %1, align 4, !tbaa !12
  %i.bwj = add nsw i32 %i.bwi, 1
  store i32 %i.bwj, ptr %1, align 4, !tbaa !12
  %i.bwk = load i64, ptr %5, align 8
  call void (ptr, i64, ptr, ...) @locfile_locate(ptr noundef %2, i64 %i.bwk, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43) #9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.thread1437, %bb.ig, %.thread1428
  %.61419 = phi ptr [ %.41417, %bb.ig ], [ %.51418, %.thread1428 ], [ %.11414, %.thread1437 ], [ %.11414, %bb.h ] ; 3 uses
  %.01220 = phi i32 [ 1, %bb.ig ], [ 2, %.thread1428 ], [ 0, %.thread1437 ], [ 1, %bb.h ] ; 3 uses
  %.71204 = phi ptr [ %.41201, %bb.ig ], [ %.61203, %.thread1428 ], [ %.31200, %.thread1437 ], [ %i.ag, %bb.h ] ; 3 uses
  %.71191 = phi ptr [ %.41188, %bb.ig ], [ %.61190, %.thread1428 ], [ %.31187, %.thread1437 ], [ %i.ae, %bb.h ] ; 3 uses
  %.61183 = phi ptr [ %.31180, %bb.ig ], [ %.51182, %.thread1428 ], [ %.31180, %.thread1437 ], [ %i.r, %bb.h ] ; 3 uses
  %.10 = phi i32 [ %.7, %bb.ig ], [ %.9, %.thread1428 ], [ %.1, %.thread1437 ], [ %.1, %bb.h ] ; 3 uses
  %.not1265 = icmp eq i32 %.10, -2
  br i1 %.not1265, label %bb.il, label %bb.ij

bb.ij:                                            ; preds = %.loopexit
  %or.cond11 = icmp ult i32 %.10, 304
  br i1 %or.cond11, label %.thread1476, label %bb.ik

.thread1476:                                      ; preds = %bb.ia, %bb.ij
  %.6141914631497 = phi ptr [ %.61419, %bb.ij ], [ %.11414, %bb.ia ]
  %.0122014651495 = phi i32 [ %.01220, %bb.ij ], [ 1, %bb.ia ]
  %.7120414691491 = phi ptr [ %.71204, %bb.ij ], [ %.31200, %bb.ia ]
  %.7119114711489 = phi ptr [ %.71191, %bb.ij ], [ %.31187, %bb.ia ]
  %.6118314731487 = phi ptr [ %.61183, %bb.ij ], [ %.31180, %bb.ia ]
  %.1014751485 = phi i32 [ %.10, %bb.ij ], [ 0, %bb.ia ]
  %i.bwl = zext nneg i32 %.1014751485 to i64
  %i.bwm = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.bwl
  %i.bwn = load i8, ptr %i.bwm, align 1, !tbaa !16
  %i.bwo = sext i8 %i.bwn to i32
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %.thread1476
  %.6141914631496 = phi ptr [ %.6141914631497, %.thread1476 ], [ %.61419, %bb.ij ]
  %.0122014651494 = phi i32 [ %.0122014651495, %.thread1476 ], [ %.01220, %bb.ij ]
  %.7120414691490 = phi ptr [ %.7120414691491, %.thread1476 ], [ %.71204, %bb.ij ]
  %.7119114711488 = phi ptr [ %.7119114711489, %.thread1476 ], [ %.71191, %bb.ij ]
  %.6118314731486 = phi ptr [ %.6118314731487, %.thread1476 ], [ %.61183, %bb.ij ]
  %i.bwp = phi i32 [ %i.bwo, %.thread1476 ], [ 2, %bb.ij ]
  call fastcc void @yydestruct(i32 noundef %i.bwp, ptr noundef %4)
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %.loopexit
  %.611831474 = phi ptr [ %.6118314731486, %bb.ik ], [ %.61183, %.loopexit ] ; 4 uses
  %.711911472 = phi ptr [ %.7119114711488, %bb.ik ], [ %.71191, %.loopexit ] ; 2 uses
  %.712041470 = phi ptr [ %.7120414691490, %bb.ik ], [ %.71204, %.loopexit ]
  %.012201466 = phi i32 [ %.0122014651494, %bb.ik ], [ %.01220, %.loopexit ]
  %.614191464 = phi ptr [ %.6141914631496, %bb.ik ], [ %.61419, %.loopexit ] ; 2 uses
  %.not12661514 = icmp eq ptr %.711911472, %.611831474
  br i1 %.not12661514, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.il, %.lr.ph
  %.811921516 = phi ptr [ %i.bww, %.lr.ph ], [ %.711911472, %bb.il ] ; 2 uses
  %.812051515 = phi ptr [ %i.bwv, %.lr.ph ], [ %.712041470, %bb.il ] ; 2 uses
  %i.bwq = load i16, ptr %.811921516, align 2, !tbaa !20
  %i.bwr = sext i16 %i.bwq to i64
  %i.bws = getelementptr inbounds i8, ptr @yystos, i64 %i.bwr
  %i.bwt = load i8, ptr %i.bws, align 1, !tbaa !16
  %i.bwu = sext i8 %i.bwt to i32
  call fastcc void @yydestruct(i32 noundef %i.bwu, ptr noundef %.812051515)
  %i.bwv = getelementptr inbounds i8, ptr %.812051515, i64 -16
  %i.bww = getelementptr inbounds i8, ptr %.811921516, i64 -2 ; 2 uses
  %.not1266 = icmp eq ptr %i.bww, %.611831474
  br i1 %.not1266, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph, %bb.il
  %.not1267 = icmp eq ptr %.611831474, %i.a
  br i1 %.not1267, label %bb.in, label %bb.im

bb.im:                                            ; preds = %._crit_edge
  call void @jv_mem_free(ptr noundef %.611831474) #9
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %._crit_edge
  %.not1268 = icmp eq ptr %.614191464, %i.b
  br i1 %.not1268, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  call void @jv_mem_free(ptr noundef %.614191464) #9
  br label %bb.ip

bb.ip:                                            ; preds = %bb.in, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.012201466
}

declare ptr @jv_mem_alloc(i64 noundef) local_unnamed_addr #1

declare void @jv_mem_free(ptr noundef) local_unnamed_addr #1

declare { ptr, ptr } @block_join(ptr, ptr, ptr, ptr) local_unnamed_addr #1

declare { ptr, ptr } @gen_op_simple(i32 noundef) local_unnamed_addr #1

declare { ptr, ptr } @gen_noop() local_unnamed_addr #1

declare i32 @block_is_const(ptr, ptr) local_unnamed_addr #1

declare void @block_free(ptr, ptr) local_unnamed_addr #1

declare i32 @block_const_kind(ptr, ptr) local_unnamed_addr #1

declare { ptr, ptr } @gen_module(ptr, ptr) local_unnamed_addr #1

declare { ptr, ptr } @block_bind_referenced(ptr, ptr, ptr, ptr, i32 noundef) local_unnamed_addr #1

declare { ptr, ptr } @gen_destructure(ptr, ptr, ptr, ptr, ptr, ptr) local_unnamed_addr #1

declare { i64, ptr } @jv_string_fmt(ptr noundef, ...) local_unnamed_addr #1

declare { ptr, ptr } @gen_location(i64, ptr noundef, ptr, ptr) local_unnamed_addr #1

declare { ptr, ptr } @gen_label(ptr noundef, ptr, ptr) local_unnamed_addr #1

declare { ptr, ptr } @gen_both(ptr, ptr, ptr, ptr) local_unnamed_addr #1

declare { ptr, ptr } @gen_definedor(ptr, ptr, ptr, ptr) local_unnamed_addr #1

declare { ptr, ptr } @gen_call(ptr noundef, ptr, ptr) local_unnamed_addr #1
end_hunk_0
