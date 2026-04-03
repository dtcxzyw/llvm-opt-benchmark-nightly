begin_hunk_0
  store i64 %i.cs, ptr %i.cc, align 8, !tbaa !71
  %i.ct = sub i32 %i.ci, %i.ck
  %i.cu = lshr i32 %i.ch, 5
  %i.cv = sub nsw i32 %i.ch, %i.cu
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
end_hunk_0
begin_hunk_1
  store i64 %i.bsz, ptr %i.ff, align 8, !tbaa !71
  %i.bta = sub i32 %i.bsp, %i.bsr
  %i.btb = lshr i32 %i.bso, 5
  %i.btc = sub nsw i32 %i.bso, %i.btb
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
end_hunk_1
begin_hunk_2
  store i64 %i.buj, ptr %i.ff, align 8, !tbaa !71
  %i.buk = sub i32 %i.btz, %i.bub
  %i.bul = lshr i32 %i.bty, 5
  %i.bum = sub nsw i32 %i.bty, %i.bul
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
end_hunk_2
begin_hunk_3
  store i64 %i.bvn, ptr %i.ff, align 8, !tbaa !71
  %i.bvo = sub i32 %i.bvi, %i.bvk                 ; 3 uses
  %i.bvp = lshr i16 %i.bvg, 5
  %i.bvq = sub i16 %i.bvg, %i.bvp
  store i32 %i.bvo, ptr %i.fe, align 8, !tbaa !72
  store i16 %i.bvq, ptr %i.bvf, align 2, !tbaa !23
  %i.bvr = icmp ult i32 %i.bvo, 16777216
end_hunk_3
begin_hunk_4
  store i64 %i.bwe, ptr %i.ff, align 8, !tbaa !71
  %i.bwf = sub i32 %i.bvz, %i.bwb                 ; 3 uses
  %i.bwg = lshr i16 %i.bvx, 5
  %i.bwh = sub i16 %i.bvx, %i.bwg
  store i32 %i.bwf, ptr %i.fe, align 8, !tbaa !72
  store i16 %i.bwh, ptr %i.bvw, align 2, !tbaa !23
  %i.bwi = icmp ult i32 %i.bwf, 16777216
end_hunk_4
begin_hunk_5
  store i64 %i.bxl, ptr %i.ff, align 8, !tbaa !71
  %i.bxm = sub i32 %i.bwz, %i.bxf
  %i.bxn = lshr i32 %i.bxd, 5
  %i.bxo = sub nsw i32 %i.bxd, %i.bxn
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
end_hunk_5
begin_hunk_6
  store i64 %i.byf, ptr %i.ff, align 8, !tbaa !71
  %i.byg = sub i32 %i.bya, %i.byc                 ; 3 uses
  %i.byh = lshr i16 %i.bxy, 5
  %i.byi = sub i16 %i.bxy, %i.byh
  store i32 %i.byg, ptr %i.fe, align 8, !tbaa !72
  store i16 %i.byi, ptr %i.bxx, align 2, !tbaa !23
  %i.byj = icmp ult i32 %i.byg, 16777216
end_hunk_6
begin_hunk_7
  store i64 %i.bzc, ptr %i.ff, align 8, !tbaa !71
  %i.bzd = sub i32 %i.byr, %i.byt                 ; 3 uses
  %i.bze = lshr i16 %i.byp, 5
  %i.bzf = sub i16 %i.byp, %i.bze
  store i16 %i.bzf, ptr %i.byo, align 2, !tbaa !23
  %i.bzg = icmp ult i32 %i.bzd, 16777216
  br i1 %i.bzg, label %bb.hu, label %RangeEnc_EncodeBit.exit293
end_hunk_7
begin_hunk_8
  store i64 %i.bzu, ptr %i.ff, align 8, !tbaa !71
  %i.bzv = sub i32 %i.bzi, %i.bzn
  %i.bzw = lshr i32 %i.bzl, 5
  %i.bzx = sub nsw i32 %i.bzl, %i.bzw
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
end_hunk_8
begin_hunk_9
  store i64 %i.cch, ptr %i.ff, align 8, !tbaa !71
  %i.cci = sub i32 %i.cby, %i.cca
  %i.ccj = lshr i32 %i.cbx, 5
  %i.cck = sub nsw i32 %i.cbx, %i.ccj
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
end_hunk_9
begin_hunk_10
  store i64 %i.cdb, ptr %i.ff, align 8, !tbaa !71
  %i.cdc = sub i32 %i.cco, %i.ccx
  %i.cdd = lshr i32 %i.ccv, 5
  %i.cde = sub nsw i32 %i.ccv, %i.cdd
  br label %bb.io

bb.in:                                            ; preds = %RangeEnc_EncodeBit.exit.i302
end_hunk_10
begin_hunk_11
  store i64 %i.cdz, ptr %i.ff, align 8, !tbaa !71
  %i.cea = sub i32 %i.cdl, %i.cdv
  %i.ceb = lshr i32 %i.cdt, 5
  %i.cec = sub nsw i32 %i.cdt, %i.ceb
  br label %bb.is

bb.ir:                                            ; preds = %RangeEnc_EncodeBit.exit.i302.1
end_hunk_11
begin_hunk_12
  store i64 %i.cex, ptr %i.ff, align 8, !tbaa !71
  %i.cey = sub i32 %i.cej, %i.cet
  %i.cez = lshr i32 %i.cer, 5
  %i.cfa = sub nsw i32 %i.cer, %i.cez
  br label %bb.iw

bb.iv:                                            ; preds = %RangeEnc_EncodeBit.exit.i302.2
end_hunk_12
begin_hunk_13
  store i64 %i.cfv, ptr %i.ff, align 8, !tbaa !71
  %i.cfw = sub i32 %i.cfh, %i.cfr
  %i.cfx = lshr i32 %i.cfp, 5
  %i.cfy = sub nsw i32 %i.cfp, %i.cfx
  br label %bb.ja

bb.iz:                                            ; preds = %RangeEnc_EncodeBit.exit.i302.3
end_hunk_13
begin_hunk_14
  store i64 %i.cgs, ptr %i.ff, align 8, !tbaa !71
  %i.cgt = sub i32 %i.cgf, %i.cgo
  %i.cgu = lshr i32 %i.cgm, 5
  %i.cgv = sub nsw i32 %i.cgm, %i.cgu
  br label %bb.je

bb.jd:                                            ; preds = %RangeEnc_EncodeBit.exit.i302.4
end_hunk_14
begin_hunk_15
  store i64 %i.cic, ptr %i.ff, align 8, !tbaa !71
  %i.cid = sub i32 %i.cht, %i.chv
  %i.cie = lshr i32 %i.chs, 5
  %i.cif = sub nsw i32 %i.chs, %i.cie
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj
end_hunk_15
begin_hunk_16
  store i64 %i.cjn, ptr %i.ff, align 8, !tbaa !71
  %i.cjo = sub i32 %i.cje, %i.cjg
  %i.cjp = lshr i32 %i.cjd, 5
  %i.cjq = sub nsw i32 %i.cjd, %i.cjp
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jr
end_hunk_16
begin_hunk_17
  store i64 %i.ckh, ptr %i.ff, align 8, !tbaa !71
  %i.cki = sub i32 %i.cju, %i.ckd
  %i.ckj = lshr i32 %i.ckb, 5
  %i.ckk = sub nsw i32 %i.ckb, %i.ckj
  br label %bb.jx

bb.jw:                                            ; preds = %RangeEnc_EncodeBit.exit.i316
end_hunk_17
begin_hunk_18
  store i64 %i.clf, ptr %i.ff, align 8, !tbaa !71
  %i.clg = sub i32 %i.ckr, %i.clb
  %i.clh = lshr i32 %i.ckz, 5
  %i.cli = sub nsw i32 %i.ckz, %i.clh
  br label %bb.kb

bb.ka:                                            ; preds = %RangeEnc_EncodeBit.exit.i316.1
end_hunk_18
begin_hunk_19
  store i64 %i.cmc, ptr %i.ff, align 8, !tbaa !71
  %i.cmd = sub i32 %i.clp, %i.clx
  %i.cme = lshr i32 %i.clv, 5
  %i.cmf = sub nsw i32 %i.clv, %i.cme
  br label %bb.kf

bb.ke:                                            ; preds = %RangeEnc_EncodeBit.exit.i316.2
end_hunk_19
begin_hunk_20
  store i64 %i.w, ptr %i.u, align 8, !tbaa !71
  %i.x = sub i32 %i.q, %i.s                       ; 3 uses
  %i.y = lshr i16 %i.o, 5
  %i.z = sub i16 %i.o, %i.y
  store i16 %i.z, ptr %i.n, align 2, !tbaa !23
  %i.aa = icmp ult i32 %i.x, 16777216
  br i1 %i.aa, label %bb.c, label %RangeEnc_EncodeBit.exit.i
end_hunk_20
begin_hunk_21
  store i64 %i.be, ptr %i.u, align 8, !tbaa !71
  %i.bf = sub i32 %i.ax, %i.bb                    ; 3 uses
  %i.bg = lshr i16 %i.az, 5
  %i.bh = sub i16 %i.az, %i.bg
  store i16 %i.bh, ptr %i.aw, align 2, !tbaa !23
  %i.bi = icmp ult i32 %i.bf, 16777216
  br i1 %i.bi, label %bb.f, label %bb.g
end_hunk_21
begin_hunk_22
  store i64 %i.bs, ptr %i.u, align 8, !tbaa !71
  %i.bt = sub i32 %i.bl, %i.bq                    ; 3 uses
  %i.bu = lshr i16 %i.bo, 5
  %i.bv = sub i16 %i.bo, %i.bu
  store i16 %i.bv, ptr %i.bm, align 2, !tbaa !23
  %i.bw = icmp ult i32 %i.bt, 16777216
  br i1 %i.bw, label %bb.h, label %bb.i
end_hunk_22
begin_hunk_23
  store i64 %i.cg, ptr %i.u, align 8, !tbaa !71
  %i.ch = sub i32 %i.bz, %i.ce                    ; 3 uses
  %i.ci = lshr i16 %i.cc, 5
  %i.cj = sub i16 %i.cc, %i.ci
  store i16 %i.cj, ptr %i.ca, align 2, !tbaa !23
  %i.ck = icmp ult i32 %i.ch, 16777216
  br i1 %i.ck, label %bb.j, label %bb.k
end_hunk_23
begin_hunk_24
  store i64 %i.cu, ptr %i.u, align 8, !tbaa !71
  %i.cv = sub i32 %i.cn, %i.cs                    ; 3 uses
  %i.cw = lshr i16 %i.cq, 5
  %i.cx = sub i16 %i.cq, %i.cw
  store i16 %i.cx, ptr %i.co, align 2, !tbaa !23
  %i.cy = icmp ult i32 %i.cv, 16777216
  br i1 %i.cy, label %bb.l, label %bb.m
end_hunk_24
begin_hunk_25
  store i64 %i.di, ptr %i.u, align 8, !tbaa !71
  %i.dj = sub i32 %i.db, %i.dg                    ; 3 uses
  %i.dk = lshr i16 %i.de, 5
  %i.dl = sub i16 %i.de, %i.dk
  store i16 %i.dl, ptr %i.dc, align 2, !tbaa !23
  %i.dm = icmp ult i32 %i.dj, 16777216
  br i1 %i.dm, label %bb.n, label %bb.o
end_hunk_25
begin_hunk_26
  store i64 %i.dw, ptr %i.u, align 8, !tbaa !71
  %i.dx = sub i32 %i.dp, %i.du                    ; 3 uses
  %i.dy = lshr i16 %i.ds, 5
  %i.dz = sub i16 %i.ds, %i.dy
  store i32 %i.dx, ptr %i.g, align 8, !tbaa !72
  store i16 %i.dz, ptr %i.dq, align 2, !tbaa !23
  %i.ea = icmp ult i32 %i.dx, 16777216
end_hunk_26
begin_hunk_27
  store i64 %i.es, ptr %i.u, align 8, !tbaa !71
  %i.et = sub i32 %i.el, %i.ep                    ; 3 uses
  %i.eu = lshr i16 %i.en, 5
  %i.ev = sub i16 %i.en, %i.eu
  store i16 %i.ev, ptr %i.ek, align 2, !tbaa !23
  %i.ew = icmp ult i32 %i.et, 16777216
  br i1 %i.ew, label %bb.t, label %bb.u
end_hunk_27
begin_hunk_28
  store i64 %i.fg, ptr %i.u, align 8, !tbaa !71
  %i.fh = sub i32 %i.ez, %i.fe                    ; 3 uses
  %i.fi = lshr i16 %i.fc, 5
  %i.fj = sub i16 %i.fc, %i.fi
  store i16 %i.fj, ptr %i.fa, align 2, !tbaa !23
  %i.fk = icmp ult i32 %i.fh, 16777216
  br i1 %i.fk, label %bb.v, label %bb.w
end_hunk_28
begin_hunk_29
  store i64 %i.fu, ptr %i.u, align 8, !tbaa !71
  %i.fv = sub i32 %i.fn, %i.fs                    ; 3 uses
  %i.fw = lshr i16 %i.fq, 5
  %i.fx = sub i16 %i.fq, %i.fw
  store i16 %i.fx, ptr %i.fo, align 2, !tbaa !23
  %i.fy = icmp ult i32 %i.fv, 16777216
  br i1 %i.fy, label %bb.x, label %bb.y
end_hunk_29
begin_hunk_30
  store i64 %i.gi, ptr %i.u, align 8, !tbaa !71
  %i.gj = sub i32 %i.gb, %i.gg                    ; 3 uses
  %i.gk = lshr i16 %i.ge, 5
  %i.gl = sub i16 %i.ge, %i.gk
  store i32 %i.gj, ptr %i.g, align 8, !tbaa !72
  store i16 %i.gl, ptr %i.gc, align 2, !tbaa !23
  %i.gm = icmp ult i32 %i.gj, 16777216
end_hunk_30
begin_hunk_31
  store i64 %i.ae, ptr %i.r, align 8, !tbaa !71
  %i.af = sub i32 %i.m, %i.x
  %i.ag = lshr i32 %i.v, 5
  %i.ah = sub nsw i32 %i.v, %i.ag
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
end_hunk_31
begin_hunk_32
  store i64 %i.ay, ptr %i.r, align 8, !tbaa !71
  %i.az = sub i32 %i.al, %i.au
  %i.ba = lshr i32 %i.as, 5
  %i.bb = sub nsw i32 %i.as, %i.ba
  br label %bb.j

bb.i:                                             ; preds = %RangeEnc_EncodeBit.exit.i.i
end_hunk_32
begin_hunk_33
  store i64 %i.bv, ptr %i.r, align 8, !tbaa !71
  %i.bw = sub i32 %i.bi, %i.br
  %i.bx = lshr i32 %i.bp, 5
  %i.by = sub nsw i32 %i.bp, %i.bx
  br label %bb.n

bb.m:                                             ; preds = %RangeEnc_EncodeBit.exit.i.1.i
end_hunk_33
begin_hunk_34
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !71
  %i.ci = sub i32 %i.d, %i.f                      ; 3 uses
  %i.cj = lshr i16 %i.b, 5
  %i.ck = sub i16 %i.b, %i.cj
  store i16 %i.ck, ptr %0, align 2, !tbaa !23
  %i.cl = icmp ult i32 %i.ci, 16777216
  br i1 %i.cl, label %bb.p, label %RangeEnc_EncodeBit.exit20.i
end_hunk_34
begin_hunk_35
  store i64 %i.ds, ptr %i.cf, align 8, !tbaa !71
  %i.dt = sub i32 %i.da, %i.dl
  %i.du = lshr i32 %i.dj, 5
  %i.dv = sub nsw i32 %i.dj, %i.du
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
end_hunk_35
begin_hunk_36
  store i64 %i.em, ptr %i.cf, align 8, !tbaa !71
  %i.en = sub i32 %i.dz, %i.ei
  %i.eo = lshr i32 %i.eg, 5
  %i.ep = sub nsw i32 %i.eg, %i.eo
  br label %bb.y

bb.x:                                             ; preds = %RangeEnc_EncodeBit.exit.i26.i
end_hunk_36
begin_hunk_37
  store i64 %i.fj, ptr %i.cf, align 8, !tbaa !71
  %i.fk = sub i32 %i.ew, %i.ff
  %i.fl = lshr i32 %i.fd, 5
  %i.fm = sub nsw i32 %i.fd, %i.fl
  br label %bb.ac

bb.ab:                                            ; preds = %RangeEnc_EncodeBit.exit.i26.1.i
end_hunk_37
begin_hunk_38
  store i64 %i.fu, ptr %i.cf, align 8, !tbaa !71
  %i.fv = sub i32 %i.cn, %i.ct                    ; 3 uses
  %i.fw = lshr i16 %i.cq, 5
  %i.fx = sub i16 %i.cq, %i.fw
  store i16 %i.fx, ptr %i.cp, align 2, !tbaa !23
  %i.fy = icmp ult i32 %i.fv, 16777216
  br i1 %i.fy, label %bb.ae, label %RangeEnc_EncodeBit.exit29.i
end_hunk_38
begin_hunk_39
  store i64 %i.gq, ptr %i.cf, align 8, !tbaa !71
  %i.gr = sub i32 %i.ga, %i.gj
  %i.gs = lshr i32 %i.gh, 5
  %i.gt = sub nsw i32 %i.gh, %i.gs
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
end_hunk_39
begin_hunk_40
  store i64 %i.hk, ptr %i.cf, align 8, !tbaa !71
  %i.hl = sub i32 %i.gx, %i.hg
  %i.hm = lshr i32 %i.he, 5
  %i.hn = sub nsw i32 %i.he, %i.hm
  br label %bb.al

bb.ak:                                            ; preds = %RangeEnc_EncodeBit.exit.i34.i
end_hunk_40
begin_hunk_41
  store i64 %i.ii, ptr %i.cf, align 8, !tbaa !71
  %i.ij = sub i32 %i.hu, %i.ie
  %i.ik = lshr i32 %i.ic, 5
  %i.il = sub nsw i32 %i.ic, %i.ik
  br label %bb.ap

bb.ao:                                            ; preds = %RangeEnc_EncodeBit.exit.i34.1.i
end_hunk_41
begin_hunk_42
  store i64 %i.jg, ptr %i.cf, align 8, !tbaa !71
  %i.jh = sub i32 %i.is, %i.jc
  %i.ji = lshr i32 %i.ja, 5
  %i.jj = sub nsw i32 %i.ja, %i.ji
  br label %bb.at

bb.as:                                            ; preds = %RangeEnc_EncodeBit.exit.i34.2.i
end_hunk_42
begin_hunk_43
  store i64 %i.ke, ptr %i.cf, align 8, !tbaa !71
  %i.kf = sub i32 %i.jq, %i.ka
  %i.kg = lshr i32 %i.jy, 5
  %i.kh = sub nsw i32 %i.jy, %i.kg
  br label %bb.ax

bb.aw:                                            ; preds = %RangeEnc_EncodeBit.exit.i34.3.i
end_hunk_43
begin_hunk_44
  store i64 %i.lc, ptr %i.cf, align 8, !tbaa !71
  %i.ld = sub i32 %i.ko, %i.ky
  %i.le = lshr i32 %i.kw, 5
  %i.lf = sub nsw i32 %i.kw, %i.le
  br label %bb.bb

bb.ba:                                            ; preds = %RangeEnc_EncodeBit.exit.i34.4.i
end_hunk_44
begin_hunk_45
  store i64 %i.ma, ptr %i.cf, align 8, !tbaa !71
  %i.mb = sub i32 %i.lm, %i.lw
  %i.mc = lshr i32 %i.lu, 5
  %i.md = sub nsw i32 %i.lu, %i.mc
  br label %bb.bf

bb.be:                                            ; preds = %RangeEnc_EncodeBit.exit.i34.5.i
end_hunk_45
begin_hunk_46
  store i64 %i.mx, ptr %i.cf, align 8, !tbaa !71
  %i.my = sub i32 %i.mk, %i.mt
  %i.mz = lshr i32 %i.mr, 5
  %i.na = sub nsw i32 %i.mr, %i.mz
  br label %bb.bj

bb.bi:                                            ; preds = %RangeEnc_EncodeBit.exit.i34.6.i
end_hunk_46
