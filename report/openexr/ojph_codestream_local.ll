Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_codestream_local?download=true
inline.NumInlined: 233
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ojph5local10codestream4readEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !92
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call noundef i64 %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull %i.p, i64 noundef 2), !inline_history !1
  %.not.i58 = icmp eq i64 %i.dk, 2
  br i1 %.not.i58, label %bb.t, label %bb.r

_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit.jt0: ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  %i.dl = load ptr, ptr %i.t, align 8, !tbaa !130 ; 4 uses
  %i.dm = load i8, ptr %i.u, align 4, !tbaa !131, !range !103, !noundef !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !92
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call noundef i64 %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull %i.q, i64 noundef 2), !inline_history !1
  %.not.i57 = icmp eq i64 %i.dq, 2
  br i1 %.not.i57, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit.jt0
  %i.dr = trunc nuw i8 %i.dm to i1
  br i1 %i.dr, label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !92
  %i.du = load ptr, ptr %i.dt, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i32 noundef 196673, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 717, ptr noundef nonnull @.str.89), !inline_history !1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit.jt0
  %i.dv = load i16, ptr %i.q, align 2, !tbaa !126
  %i.dw = call noundef i16 @llvm.bswap.i16(i16 %i.dv) ; 2 uses
  store i16 %i.dw, ptr %i.q, align 2, !tbaa !126
  %i.dx = zext i16 %i.dw to i64
  %i.dy = add nsw i64 %i.dx, -2
  %i.dz = load ptr, ptr %i.dl, align 8, !tbaa !92
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = call noundef i32 %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, i64 noundef %i.dy, i32 noundef 1), !inline_history !1 ; 0 uses
  %i.ed = call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !92
  %i.ef = load ptr, ptr %i.ee, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, i32 noundef 196609, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 729, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.60), !inline_history !1
  br label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit

_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit: ; preds = %bb.o, %bb.q
  %.0.i = phi i32 [ -1, %bb.o ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  br label %bb.af

bb.r:                                             ; preds = %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit.jt1
  %i.eg = trunc nuw i8 %i.dg to i1
  br i1 %i.eg, label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit60, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eh = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !92
  %i.ej = load ptr, ptr %i.ei, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, i32 noundef 196673, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 717, ptr noundef nonnull @.str.89), !inline_history !1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit.jt1
  %i.ek = load i16, ptr %i.p, align 2, !tbaa !126
  %i.el = call noundef i16 @llvm.bswap.i16(i16 %i.ek) ; 2 uses
  store i16 %i.el, ptr %i.p, align 2, !tbaa !126
  %i.em = zext i16 %i.el to i64
  %i.en = add nsw i64 %i.em, -2
  %i.eo = load ptr, ptr %i.df, align 8, !tbaa !92
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = call noundef i32 %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %i.df, i64 noundef %i.en, i32 noundef 1), !inline_history !1 ; 0 uses
  %i.es = call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !92
  %i.eu = load ptr, ptr %i.et, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %i.es, i32 noundef 196609, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 729, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.62), !inline_history !1
  br label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit60

_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit60: ; preds = %bb.r, %bb.t
  %.0.i59 = phi i32 [ -1, %bb.r ], [ 0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  br label %bb.af

bb.u:                                             ; preds = %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit.jt2
  %i.ev = trunc nuw i8 %i.da to i1
  br i1 %i.ev, label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit63, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ew = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !92
  %i.ey = load ptr, ptr %i.ex, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, i32 noundef 196673, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 717, ptr noundef nonnull @.str.89), !inline_history !1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit.jt2
  %i.ez = load i16, ptr %i.o, align 2, !tbaa !126
  %i.fa = call noundef i16 @llvm.bswap.i16(i16 %i.ez) ; 2 uses
  store i16 %i.fa, ptr %i.o, align 2, !tbaa !126
  %i.fb = zext i16 %i.fa to i64
  %i.fc = add nsw i64 %i.fb, -2
  %i.fd = load ptr, ptr %i.cz, align 8, !tbaa !92
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = call noundef i32 %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i64 noundef %i.fc, i32 noundef 1), !inline_history !1 ; 0 uses
  br label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit63

_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit63: ; preds = %bb.u, %bb.w
  %.0.i62 = phi i32 [ -1, %bb.u ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  br label %bb.af

bb.x:                                             ; preds = %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit.jt3
  %i.fh = trunc nuw i8 %i.cu to i1
  br i1 %i.fh, label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit66, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fi = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !92
  %i.fk = load ptr, ptr %i.fj, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.fk(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, i32 noundef 196673, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 717, ptr noundef nonnull @.str.89), !inline_history !1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit.jt3
  %i.fl = load i16, ptr %i.n, align 2, !tbaa !126
  %i.fm = call noundef i16 @llvm.bswap.i16(i16 %i.fl) ; 2 uses
  store i16 %i.fm, ptr %i.n, align 2, !tbaa !126
  %i.fn = zext i16 %i.fm to i64
  %i.fo = add nsw i64 %i.fn, -2
  %i.fp = load ptr, ptr %i.ct, align 8, !tbaa !92
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = call noundef i32 %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, i64 noundef %i.fo, i32 noundef 1), !inline_history !1 ; 0 uses
  br label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit66

_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit66: ; preds = %bb.x, %bb.z
  %.0.i65 = phi i32 [ -1, %bb.x ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  br label %bb.af

bb.aa:                                            ; preds = %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit.jt4
  %i.ft = trunc nuw i8 %i.co to i1
  br i1 %i.ft, label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit69, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fu = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !92
  %i.fw = load ptr, ptr %i.fv, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.fw(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, i32 noundef 196673, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 717, ptr noundef nonnull @.str.89), !inline_history !1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit.jt4
  %i.fx = load i16, ptr %i.m, align 2, !tbaa !126
  %i.fy = call noundef i16 @llvm.bswap.i16(i16 %i.fx) ; 2 uses
  store i16 %i.fy, ptr %i.m, align 2, !tbaa !126
  %i.fz = zext i16 %i.fy to i64
  %i.ga = add nsw i64 %i.fz, -2
  %i.gb = load ptr, ptr %i.cn, align 8, !tbaa !92
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = call noundef i32 %i.gd(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i64 noundef %i.ga, i32 noundef 1), !inline_history !1 ; 0 uses
  %i.gf = call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !92
  %i.gh = load ptr, ptr %i.gg, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.gh(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, i32 noundef 196609, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 729, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.65), !inline_history !1
  br label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit69

_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit69: ; preds = %bb.aa, %bb.ac
  %.0.i68 = phi i32 [ -1, %bb.aa ], [ 0, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  br label %bb.af

.thread134:                                       ; preds = %.thread137, %.loopexit.i, %bb.k, %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit.thread128
  %i.gi = load i8, ptr %i.u, align 4, !tbaa !131, !range !103, !noundef !104
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread134
  %i.gk = call noundef ptr @_ZN4ojph8get_infoEv() ; 2 uses
  %i.gl = load i16, ptr %i.v, align 2, !tbaa !212
  %i.gm = zext i16 %i.gl to i32
  %i.gn = load i8, ptr %i.y, align 4, !tbaa !213
  %i.go = zext i8 %i.gn to i32
  %i.gp = load ptr, ptr %i.gk, align 8, !tbaa !92
  %i.gq = load ptr, ptr %i.gp, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.gq(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, i32 noundef 196707, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 964, ptr noundef nonnull @.str.66, i32 noundef %i.gm, i32 noundef %i.go)
  br label %bb.cg

bb.ae:                                            ; preds = %.thread134
  %i.gr = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.gs = load i16, ptr %i.v, align 2, !tbaa !212
  %i.gt = zext i16 %i.gs to i32
  %i.gu = load i8, ptr %i.y, align 4, !tbaa !213
  %i.gv = zext i8 %i.gu to i32
  %i.gw = load ptr, ptr %i.gr, align 8, !tbaa !92
  %i.gx = load ptr, ptr %i.gw, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.gx(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, i32 noundef 196707, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 969, ptr noundef nonnull @.str.66, i32 noundef %i.gt, i32 noundef %i.gv)
  br label %bb.cg

bb.af:                                            ; preds = %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit60, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit63, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit66, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit69
  %.034.ph = phi i32 [ %.0.i68, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit69 ], [ %.0.i65, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit66 ], [ %.0.i62, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit63 ], [ %.0.i59, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit60 ], [ %.0.i, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit ]
  %i.gy = icmp eq i32 %.034.ph, -1
  br i1 %i.gy, label %bb.ag, label %.thread137

bb.ag:                                            ; preds = %bb.af
  %i.gz = load i8, ptr %i.u, align 4, !tbaa !131, !range !103, !noundef !104
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hb = call noundef ptr @_ZN4ojph8get_infoEv() ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !92
  %i.hd = load ptr, ptr %i.hc, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.hd(ptr noundef nonnull align 8 dereferenceable(8) %i.hb, i32 noundef 196708, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 976, ptr noundef nonnull @.str.67)
  br label %bb.cg

bb.ai:                                            ; preds = %bb.ag
  %i.he = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !92
  %i.hg = load ptr, ptr %i.hf, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.hg(ptr noundef nonnull align 8 dereferenceable(8) %i.he, i32 noundef 196708, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 979, ptr noundef nonnull @.str.67)
  br label %bb.cg

.thread137:                                       ; preds = %bb.af
  %i.hh = load ptr, ptr %i.t, align 8, !tbaa !130 ; 3 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !92
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 40
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call noundef zeroext i1 %i.hk(ptr noundef nonnull align 8 dereferenceable(8) %i.hh), !inline_history !0
  br i1 %i.hl, label %.thread134, label %.lr.ph

.lr.ph181:                                        ; preds = %.preheader, %.thread159
  %i.hm = phi ptr [ %i.qx, %.thread159 ], [ %i.ay, %.preheader ] ; 6 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph181, %.loopexit.i74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !92
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = call noundef i64 %i.hp(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef nonnull %i.l, i64 noundef 1), !inline_history !0
  %.not.i70 = icmp eq i64 %i.hq, 1
  br i1 %.not.i70, label %bb.ak, label %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit82.thread148

bb.ak:                                            ; preds = %bb.aj
  %i.hr = load i8, ptr %i.l, align 1, !tbaa !49
  %i.hs = icmp eq i8 %i.hr, -1
  br i1 %i.hs, label %bb.al, label %.loopexit.i74

bb.al:                                            ; preds = %bb.ak
  %i.ht = load ptr, ptr %i.hm, align 8, !tbaa !92
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = call noundef i64 %i.hv(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef nonnull %i.l, i64 noundef 1), !inline_history !0
  %.not19.i75 = icmp eq i64 %i.hw, 1
  br i1 %.not19.i75, label %.preheader.i76, label %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit82.thread148

.preheader.i76:                                   ; preds = %bb.al
  %i.hx = load i8, ptr %i.l, align 1, !tbaa !49
  switch i8 %i.hx, label %.loopexit.i74 [
    i8 82, label %bb.am
    i8 83, label %bb.aq
    i8 92, label %bb.au
    i8 93, label %bb.ay
    i8 94, label %bb.bc
    i8 95, label %bb.bg
    i8 97, label %bb.bk
    i8 88, label %bb.bo
    i8 100, label %bb.bs
    i8 118, label %bb.bw
    i8 -109, label %.thread166
  ]

.loopexit.i74:                                    ; preds = %.preheader.i76, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  %i.hy = load ptr, ptr %i.hm, align 8, !tbaa !92
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = call noundef zeroext i1 %i.ia(ptr noundef nonnull align 8 dereferenceable(8) %i.hm), !inline_history !0
  br i1 %i.ib, label %.thread156, label %bb.aj

_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit82.thread148: ; preds = %bb.aj, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  br label %.thread156

bb.am:                                            ; preds = %.preheader.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  %i.ic = load ptr, ptr %i.t, align 8, !tbaa !130 ; 4 uses
  %i.id = load i8, ptr %i.u, align 4, !tbaa !131, !range !103, !noundef !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  %i.ie = load ptr, ptr %i.ic, align 8, !tbaa !92
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = call noundef i64 %i.ig(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, ptr noundef nonnull %i.k, i64 noundef 2), !inline_history !1
  %.not.i83 = icmp eq i64 %i.ih, 2
  br i1 %.not.i83, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ii = trunc nuw i8 %i.id to i1
  br i1 %i.ii, label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit85, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ij = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !92
  %i.il = load ptr, ptr %i.ik, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.il(ptr noundef nonnull align 8 dereferenceable(8) %i.ij, i32 noundef 196673, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 717, ptr noundef nonnull @.str.89), !inline_history !1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %i.im = load i16, ptr %i.k, align 2, !tbaa !126
  %i.in = call noundef i16 @llvm.bswap.i16(i16 %i.im) ; 2 uses
  store i16 %i.in, ptr %i.k, align 2, !tbaa !126
  %i.io = zext i16 %i.in to i64
  %i.ip = add nsw i64 %i.io, -2
  %i.iq = load ptr, ptr %i.ic, align 8, !tbaa !92
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = call noundef i32 %i.is(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, i64 noundef %i.ip, i32 noundef 1), !inline_history !1 ; 0 uses
  %i.iu = call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !92
  %i.iw = load ptr, ptr %i.iv, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.iw(ptr noundef nonnull align 8 dereferenceable(8) %i.iu, i32 noundef 196609, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 729, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.69), !inline_history !1
  br label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit85

_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit85: ; preds = %bb.an, %bb.ap
  %.0.i84 = phi i32 [ -1, %bb.an ], [ 0, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br label %bb.cc

bb.aq:                                            ; preds = %.preheader.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  %i.ix = load ptr, ptr %i.t, align 8, !tbaa !130 ; 4 uses
  %i.iy = load i8, ptr %i.u, align 4, !tbaa !131, !range !103, !noundef !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.iz = load ptr, ptr %i.ix, align 8, !tbaa !92
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = call noundef i64 %i.jb(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, ptr noundef nonnull %i.j, i64 noundef 2), !inline_history !1
  %.not.i86 = icmp eq i64 %i.jc, 2
  br i1 %.not.i86, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jd = trunc nuw i8 %i.iy to i1
  br i1 %i.jd, label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit88, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.je = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !92
  %i.jg = load ptr, ptr %i.jf, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.jg(ptr noundef nonnull align 8 dereferenceable(8) %i.je, i32 noundef 196673, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 717, ptr noundef nonnull @.str.89), !inline_history !1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq
  %i.jh = load i16, ptr %i.j, align 2, !tbaa !126
  %i.ji = call noundef i16 @llvm.bswap.i16(i16 %i.jh) ; 2 uses
  store i16 %i.ji, ptr %i.j, align 2, !tbaa !126
  %i.jj = zext i16 %i.ji to i64
  %i.jk = add nsw i64 %i.jj, -2
  %i.jl = load ptr, ptr %i.ix, align 8, !tbaa !92
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = call noundef i32 %i.jn(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, i64 noundef %i.jk, i32 noundef 1), !inline_history !1 ; 0 uses
  %i.jp = call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !92
  %i.jr = load ptr, ptr %i.jq, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.jr(ptr noundef nonnull align 8 dereferenceable(8) %i.jp, i32 noundef 196609, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 729, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.71), !inline_history !1
  br label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit88

_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit88: ; preds = %bb.ar, %bb.at
  %.0.i87 = phi i32 [ -1, %bb.ar ], [ 0, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  br label %bb.cc

bb.au:                                            ; preds = %.preheader.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  %i.js = load ptr, ptr %i.t, align 8, !tbaa !130 ; 4 uses
  %i.jt = load i8, ptr %i.u, align 4, !tbaa !131, !range !103, !noundef !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.ju = load ptr, ptr %i.js, align 8, !tbaa !92
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = call noundef i64 %i.jw(ptr noundef nonnull align 8 dereferenceable(8) %i.js, ptr noundef nonnull %i.i, i64 noundef 2), !inline_history !1
  %.not.i89 = icmp eq i64 %i.jx, 2
  br i1 %.not.i89, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jy = trunc nuw i8 %i.jt to i1
  br i1 %i.jy, label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit91, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jz = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !92
  %i.kb = load ptr, ptr %i.ka, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.kb(ptr noundef nonnull align 8 dereferenceable(8) %i.jz, i32 noundef 196673, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 717, ptr noundef nonnull @.str.89), !inline_history !1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %i.kc = load i16, ptr %i.i, align 2, !tbaa !126
  %i.kd = call noundef i16 @llvm.bswap.i16(i16 %i.kc) ; 2 uses
  store i16 %i.kd, ptr %i.i, align 2, !tbaa !126
  %i.ke = zext i16 %i.kd to i64
end_hunk_0
begin_hunk_1_@_ZN4ojph5local10codestream4readEv:bb.a
  %.0.i99 = phi i32 [ -1, %bb.bh ], [ 0, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.cc

bb.bk:                                            ; preds = %.preheader.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  %i.my = load ptr, ptr %i.t, align 8, !tbaa !130 ; 4 uses
  %i.mz = load i8, ptr %i.u, align 4, !tbaa !131, !range !103, !noundef !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.na = load ptr, ptr %i.my, align 8, !tbaa !92
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = call noundef i64 %i.nc(ptr noundef nonnull align 8 dereferenceable(8) %i.my, ptr noundef nonnull %i.e, i64 noundef 2), !inline_history !1
  %.not.i101 = icmp eq i64 %i.nd, 2
  br i1 %.not.i101, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ne = trunc nuw i8 %i.mz to i1
  br i1 %i.ne, label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit103, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nf = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !92
  %i.nh = load ptr, ptr %i.ng, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.nh(ptr noundef nonnull align 8 dereferenceable(8) %i.nf, i32 noundef 196673, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 717, ptr noundef nonnull @.str.89), !inline_history !1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %i.ni = load i16, ptr %i.e, align 2, !tbaa !126
  %i.nj = call noundef i16 @llvm.bswap.i16(i16 %i.ni) ; 2 uses
  store i16 %i.nj, ptr %i.e, align 2, !tbaa !126
  %i.nk = zext i16 %i.nj to i64
  %i.nl = add nsw i64 %i.nk, -2
  %i.nm = load ptr, ptr %i.my, align 8, !tbaa !92
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8
  %i.np = call noundef i32 %i.no(ptr noundef nonnull align 8 dereferenceable(8) %i.my, i64 noundef %i.nl, i32 noundef 1), !inline_history !1 ; 0 uses
  %i.nq = call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !92
  %i.ns = load ptr, ptr %i.nr, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ns(ptr noundef nonnull align 8 dereferenceable(8) %i.nq, i32 noundef 196609, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 729, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.62), !inline_history !1
  br label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit103

_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit103: ; preds = %bb.bl, %bb.bn
  %.0.i102 = phi i32 [ -1, %bb.bl ], [ 0, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.cc

bb.bo:                                            ; preds = %.preheader.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  %i.nt = load ptr, ptr %i.t, align 8, !tbaa !130 ; 4 uses
  %i.nu = load i8, ptr %i.u, align 4, !tbaa !131, !range !103, !noundef !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.nv = load ptr, ptr %i.nt, align 8, !tbaa !92
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = call noundef i64 %i.nx(ptr noundef nonnull align 8 dereferenceable(8) %i.nt, ptr noundef nonnull %i.d, i64 noundef 2), !inline_history !1
  %.not.i104 = icmp eq i64 %i.ny, 2
  br i1 %.not.i104, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nz = trunc nuw i8 %i.nu to i1
  br i1 %i.nz, label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit106, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.oa = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !92
  %i.oc = load ptr, ptr %i.ob, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.oc(ptr noundef nonnull align 8 dereferenceable(8) %i.oa, i32 noundef 196673, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 717, ptr noundef nonnull @.str.89), !inline_history !1
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bo
  %i.od = load i16, ptr %i.d, align 2, !tbaa !126
  %i.oe = call noundef i16 @llvm.bswap.i16(i16 %i.od) ; 2 uses
  store i16 %i.oe, ptr %i.d, align 2, !tbaa !126
  %i.of = zext i16 %i.oe to i64
  %i.og = add nsw i64 %i.of, -2
  %i.oh = load ptr, ptr %i.nt, align 8, !tbaa !92
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = call noundef i32 %i.oj(ptr noundef nonnull align 8 dereferenceable(8) %i.nt, i64 noundef %i.og, i32 noundef 1), !inline_history !1 ; 0 uses
  br label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit106

_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit106: ; preds = %bb.bp, %bb.br
  %.0.i105 = phi i32 [ -1, %bb.bp ], [ 0, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.cc

bb.bs:                                            ; preds = %.preheader.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  %i.ol = load ptr, ptr %i.t, align 8, !tbaa !130 ; 4 uses
  %i.om = load i8, ptr %i.u, align 4, !tbaa !131, !range !103, !noundef !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.on = load ptr, ptr %i.ol, align 8, !tbaa !92
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = load ptr, ptr %i.oo, align 8
  %i.oq = call noundef i64 %i.op(ptr noundef nonnull align 8 dereferenceable(8) %i.ol, ptr noundef nonnull %i.c, i64 noundef 2), !inline_history !1
  %.not.i107 = icmp eq i64 %i.oq, 2
  br i1 %.not.i107, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.or = trunc nuw i8 %i.om to i1
  br i1 %i.or, label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit109, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.os = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !92
  %i.ou = load ptr, ptr %i.ot, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ou(ptr noundef nonnull align 8 dereferenceable(8) %i.os, i32 noundef 196673, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 717, ptr noundef nonnull @.str.89), !inline_history !1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %i.ov = load i16, ptr %i.c, align 2, !tbaa !126
  %i.ow = call noundef i16 @llvm.bswap.i16(i16 %i.ov) ; 2 uses
  store i16 %i.ow, ptr %i.c, align 2, !tbaa !126
  %i.ox = zext i16 %i.ow to i64
  %i.oy = add nsw i64 %i.ox, -2
  %i.oz = load ptr, ptr %i.ol, align 8, !tbaa !92
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.pb = load ptr, ptr %i.pa, align 8
  %i.pc = call noundef i32 %i.pb(ptr noundef nonnull align 8 dereferenceable(8) %i.ol, i64 noundef %i.oy, i32 noundef 1), !inline_history !1 ; 0 uses
  br label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit109

_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit109: ; preds = %bb.bt, %bb.bv
  %.0.i108 = phi i32 [ -1, %bb.bt ], [ 0, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.cc

bb.bw:                                            ; preds = %.preheader.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  %i.pd = load ptr, ptr %i.t, align 8, !tbaa !130 ; 4 uses
  %i.pe = load i8, ptr %i.u, align 4, !tbaa !131, !range !103, !noundef !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.pf = load ptr, ptr %i.pd, align 8, !tbaa !92
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8
  %i.pi = call noundef i64 %i.ph(ptr noundef nonnull align 8 dereferenceable(8) %i.pd, ptr noundef nonnull %i.b, i64 noundef 2), !inline_history !1
  %.not.i110 = icmp eq i64 %i.pi, 2
  br i1 %.not.i110, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pj = trunc nuw i8 %i.pe to i1
  br i1 %i.pj, label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit112, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pk = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !92
  %i.pm = load ptr, ptr %i.pl, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.pm(ptr noundef nonnull align 8 dereferenceable(8) %i.pk, i32 noundef 196673, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 717, ptr noundef nonnull @.str.89), !inline_history !1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bw
  %i.pn = load i16, ptr %i.b, align 2, !tbaa !126
  %i.po = call noundef i16 @llvm.bswap.i16(i16 %i.pn) ; 2 uses
  store i16 %i.po, ptr %i.b, align 2, !tbaa !126
  %i.pp = zext i16 %i.po to i64
  %i.pq = add nsw i64 %i.pp, -2
  %i.pr = load ptr, ptr %i.pd, align 8, !tbaa !92
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.pt = load ptr, ptr %i.ps, align 8
  %i.pu = call noundef i32 %i.pt(ptr noundef nonnull align 8 dereferenceable(8) %i.pd, i64 noundef %i.pq, i32 noundef 1), !inline_history !1 ; 0 uses
  %i.pv = call noundef ptr @_ZN4ojph11get_warningEv() ; 2 uses
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !92
  %i.px = load ptr, ptr %i.pw, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.px(ptr noundef nonnull align 8 dereferenceable(8) %i.pv, i32 noundef 196609, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 729, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.62), !inline_history !1
  br label %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit112

_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit112: ; preds = %bb.bx, %bb.bz
  %.0.i111 = phi i32 [ -1, %bb.bx ], [ 0, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.cc

.thread156:                                       ; preds = %.thread159, %.loopexit.i74, %.preheader, %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit82.thread148
  %i.py = load i8, ptr %i.u, align 4, !tbaa !131, !range !103, !noundef !104
  %i.pz = trunc nuw i8 %i.py to i1
  br i1 %i.pz, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.thread156
  %i.qa = call noundef ptr @_ZN4ojph8get_infoEv() ; 2 uses
  %i.qb = load i16, ptr %i.v, align 2, !tbaa !212
  %i.qc = zext i16 %i.qb to i32
  %i.qd = load i8, ptr %i.y, align 4, !tbaa !213
  %i.qe = zext i8 %i.qd to i32
  %i.qf = load ptr, ptr %i.qa, align 8, !tbaa !92
  %i.qg = load ptr, ptr %i.qf, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.qg(ptr noundef nonnull align 8 dereferenceable(8) %i.qa, i32 noundef 196709, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1048, ptr noundef nonnull @.str.66, i32 noundef %i.qc, i32 noundef %i.qe)
  br label %bb.cg

bb.cb:                                            ; preds = %.thread156
  %i.qh = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.qi = load i16, ptr %i.v, align 2, !tbaa !212
  %i.qj = zext i16 %i.qi to i32
  %i.qk = load i8, ptr %i.y, align 4, !tbaa !213
  %i.ql = zext i8 %i.qk to i32
  %i.qm = load ptr, ptr %i.qh, align 8, !tbaa !92
  %i.qn = load ptr, ptr %i.qm, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.qn(ptr noundef nonnull align 8 dereferenceable(8) %i.qh, i32 noundef 196709, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1053, ptr noundef nonnull @.str.66, i32 noundef %i.qj, i32 noundef %i.ql)
  br label %bb.cg

bb.cc:                                            ; preds = %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit85, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit88, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit91, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit94, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit97, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit100, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit103, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit106, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit109, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit112
  %.0.ph = phi i32 [ %.0.i111, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit112 ], [ %.0.i108, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit109 ], [ %.0.i105, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit106 ], [ %.0.i102, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit103 ], [ %.0.i99, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit100 ], [ %.0.i96, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit97 ], [ %.0.i93, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit94 ], [ %.0.i90, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit91 ], [ %.0.i87, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit88 ], [ %.0.i84, %_ZN4ojph5localL11skip_markerEPNS_11infile_baseEPKcS4_ib.exit85 ]
  %i.qo = icmp eq i32 %.0.ph, -1
  br i1 %i.qo, label %bb.cd, label %.thread159

bb.cd:                                            ; preds = %bb.cc
  %i.qp = load i8, ptr %i.u, align 4, !tbaa !131, !range !103, !noundef !104
  %i.qq = trunc nuw i8 %i.qp to i1
  br i1 %i.qq, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.qr = call noundef ptr @_ZN4ojph8get_infoEv() ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !92
  %i.qt = load ptr, ptr %i.qs, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.qt(ptr noundef nonnull align 8 dereferenceable(8) %i.qr, i32 noundef 196710, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1060, ptr noundef nonnull @.str.67)
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.qu = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !92
  %i.qw = load ptr, ptr %i.qv, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.qw(ptr noundef nonnull align 8 dereferenceable(8) %i.qu, i32 noundef 196710, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1063, ptr noundef nonnull @.str.67)
  br label %bb.cg

.thread159:                                       ; preds = %bb.cc
  %i.qx = load ptr, ptr %i.t, align 8, !tbaa !130 ; 3 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !92
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 40
  %i.ra = load ptr, ptr %i.qz, align 8
  %i.rb = call noundef zeroext i1 %i.ra(ptr noundef nonnull align 8 dereferenceable(8) %i.qx), !inline_history !0
  br i1 %i.rb, label %.thread156, label %.lr.ph181

.thread166:                                       ; preds = %.preheader.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  %i.rc = load ptr, ptr %i.aa, align 8, !tbaa !106
  %i.rd = load i16, ptr %i.v, align 2, !tbaa !212
  %i.re = zext i16 %i.rd to i64
  %i.rf = getelementptr inbounds nuw [168 x i8], ptr %i.rc, i64 %i.re
  %i.rg = load ptr, ptr %i.t, align 8, !tbaa !130
  call void @_ZN4ojph5local4tile17parse_tile_headerERKNS0_9param_sotEPNS_11infile_baseERKm(ptr noundef nonnull align 8 dereferenceable(164) %i.rf, ptr noundef nonnull align 4 dereferenceable(10) %1, ptr noundef %i.rg, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  br label %bb.cg

bb.cg:                                            ; preds = %.thread166, %bb.ca, %bb.ce, %bb.cb, %bb.cf, %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit.jt5, %bb.ad, %bb.ah, %bb.ae, %bb.ai, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.b
  %i.rh = load ptr, ptr %i.t, align 8, !tbaa !130 ; 8 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !92
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 40
  %i.rk = load ptr, ptr %i.rj, align 8
  %i.rl = call noundef zeroext i1 %i.rk(ptr noundef nonnull align 8 dereferenceable(8) %i.rh), !inline_history !0
  br i1 %i.rl, label %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit125.thread, label %.lr.ph183

.lr.ph183:                                        ; preds = %bb.ch, %.loopexit.i117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.rm = load ptr, ptr %i.rh, align 8, !tbaa !92
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = call noundef i64 %i.ro(ptr noundef nonnull align 8 dereferenceable(8) %i.rh, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !0
  %.not.i113 = icmp eq i64 %i.rp, 1
  br i1 %.not.i113, label %bb.ci, label %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit125.thread169

bb.ci:                                            ; preds = %.lr.ph183
  %i.rq = load i8, ptr %i.a, align 1, !tbaa !49
  %i.rr = icmp eq i8 %i.rq, -1
  br i1 %i.rr, label %bb.cj, label %.loopexit.i117

bb.cj:                                            ; preds = %bb.ci
  %i.rs = load ptr, ptr %i.rh, align 8, !tbaa !92
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8
  %i.rv = call noundef i64 %i.ru(ptr noundef nonnull align 8 dereferenceable(8) %i.rh, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !0
  %.not19.i118 = icmp eq i64 %i.rv, 1
  br i1 %.not19.i118, label %.preheader.i119, label %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit125.thread169

.preheader.i119:                                  ; preds = %bb.cj
  %i.rw = load i8, ptr %i.a, align 1, !tbaa !49
  switch i8 %i.rw, label %.loopexit.i117 [
    i8 -112, label %bb.ck
    i8 -39, label %.loopexit.loopexit
  ]

.loopexit.i117:                                   ; preds = %.preheader.i119, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.rx = load ptr, ptr %i.rh, align 8, !tbaa !92
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 40
  %i.rz = load ptr, ptr %i.ry, align 8
  %i.sa = call noundef zeroext i1 %i.rz(ptr noundef nonnull align 8 dereferenceable(8) %i.rh), !inline_history !0
  br i1 %i.sa, label %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit125.thread, label %.lr.ph183

_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit125.thread169: ; preds = %.lr.ph183, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit125.thread

_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit125.thread: ; preds = %bb.ch, %.loopexit.i117, %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit125.thread169
  %i.sb = call noundef ptr @_ZN4ojph8get_infoEv() ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !92
  %i.sd = load ptr, ptr %i.sc, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.sd(ptr noundef nonnull align 8 dereferenceable(8) %i.sb, i32 noundef 196711, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1080, ptr noundef nonnull @.str.77)
  br label %.loopexit

bb.ck:                                            ; preds = %.preheader.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.b

.loopexit.loopexit:                               ; preds = %.preheader.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN4ojph5localL11find_markerEPNS_11infile_baseEPKti.exit125.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

declare noundef zeroext i1 @_ZN4ojph5local9param_sot4readEPNS_11infile_baseEb(ptr noundef nonnull align 4 dereferenceable(10), ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4ojph5local4tile17parse_tile_headerERKNS0_9param_sotEPNS_11infile_baseERKm(ptr noundef nonnull align 8 dereferenceable(164), ptr noundef nonnull align 4 dereferenceable(10), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4ojph5local10codestream10set_planarEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(832) initializes((92, 96)) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %1, ptr %i.a, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local10codestream11set_profileEPKc(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(832) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  switch i64 %i.a, label %.tail.thread [
    i64 9, label %bb.b
    i64 3, label %sub_0
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @_ZN4ojphL24OJPH_PN_STRING_BROADCASTE, i64 noundef 9) #18
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %.tail.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 7, ptr %i.d, align 8, !tbaa !127
  br label %bb.e

sub_0:                                            ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1
  %.not = icmp eq i8 %i.e, 73
  br i1 %.not, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %.not5 = icmp eq i8 %i.g, 77
  br i1 %.not5, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 70
  br i1 %i.j, label %bb.d, label %.tail.thread

bb.d:                                             ; preds = %.tail
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 8, ptr %i.k, align 8, !tbaa !127
  br label %bb.e

.tail.thread:                                     ; preds = %sub_1, %sub_0, %bb.b, %bb.a, %.tail
  %i.l = tail call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !92
  %i.n = load ptr, ptr %i.m, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef 196769, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1105, ptr noundef nonnull @.str.78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.tail.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4ojph5local10codestream22set_tilepart_divisionsEj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(832) initializes((100, 104)) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %1, ptr %i.a, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4ojph5local10codestream18request_tlm_markerEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(832) initializes((104, 105)) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.a, ptr %i.b, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local10codestream5flushEv(ptr noundef nonnull align 8 dereferenceable(832) %0) local_unnamed_addr #0 align 2 {
end_hunk_1
