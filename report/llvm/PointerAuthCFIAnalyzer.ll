Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PointerAuthCFIAnalyzer?download=true
inline.NumInlined: 520
inline.NumDeleted: 323
begin_hunk_0_@_ZN4llvm4bolt22PointerAuthCFIAnalyzer13runOnFunctionERNS0_14BinaryFunctionE:bb.a
  %i.da = load i8, ptr %i.a, align 1, !tbaa !411, !range !410, !noundef !141
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.r, label %._crit_edge173

bb.r:                                             ; preds = %bb.q
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9VerbosityE, i64 120), align 8, !tbaa !153
  %.not71 = icmp eq i32 %i.dc, 0
  br i1 %.not71, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 1608
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !159, !nonnull !141, !align !142 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !401
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 32 ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !405 ; 2 uses
  %i.dj = ptrtoint ptr %i.dg to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = icmp ult i64 %i.dl, 45
  br i1 %i.dm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.de, ptr noundef nonnull @.str, i64 noundef 45) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit84

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.di, ptr noundef nonnull align 1 dereferenceable(45) @.str, i64 45, i1 false)
  %i.do = load ptr, ptr %i.dh, align 8, !tbaa !405
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 45
  store ptr %i.dp, ptr %i.dh, align 8, !tbaa !405
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit84

_ZN4llvm11raw_ostreamlsEPKc.exit84:               ; preds = %bb.t, %bb.u
  %.0.i.i83 = phi ptr [ %i.dn, %bb.t ], [ %i.de, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZNK4llvm4bolt14BinaryFunction12getPrintNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1360) %1)
  %i.dq = load ptr, ptr %4, align 8, !tbaa !406
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !407
  %i.dt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i83, ptr noundef %i.dq, i64 noundef %i.ds) #17 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !401
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 32 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !405 ; 2 uses
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = icmp ult i64 %i.ea, 50
  br i1 %i.eb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit84
  %i.ec = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dt, ptr noundef nonnull @.str.2, i64 noundef 50) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit87

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.dx, ptr noundef nonnull align 1 dereferenceable(50) @.str.2, i64 50, i1 false)
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !405
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 50
  store ptr %i.ee, ptr %i.dw, align 8, !tbaa !405
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit87

_ZN4llvm11raw_ostreamlsEPKc.exit87:               ; preds = %bb.v, %bb.w
  %i.ef = load ptr, ptr %4, align 8, !tbaa !406   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit87
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !408
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.r
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.el = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ek) #17 ; 2 uses
  %.not.i.i91 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i91, label %.critedge78.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZSt20__throw_system_errori(i32 noundef %i.el) #19
  unreachable

bb.z:                                             ; preds = %bb.p
  %i.em = load ptr, ptr %i.cl, align 8, !tbaa !149 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !151
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 280
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call noundef zeroext i1 %i.ep(ptr noundef nonnull align 8 dereferenceable(536) %i.em, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0115.0159) #17
  %.not = xor i1 %i.eq, true
  %i.er = load i8, ptr %i.a, align 1, !range !410 ; 2 uses
  %i.es = trunc nuw i8 %i.er to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.es
  br i1 %or.cond, label %._crit_edge173, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.et = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9VerbosityE, i64 120), align 8, !tbaa !153
  %.not70 = icmp eq i32 %i.et, 0
  br i1 %.not70, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 1608
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !159, !nonnull !141, !align !142 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !401
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 32 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !405 ; 2 uses
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = icmp ult i64 %i.fc, 45
  br i1 %i.fd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fe = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ev, ptr noundef nonnull @.str, i64 noundef 45) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit95

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.ez, ptr noundef nonnull align 1 dereferenceable(45) @.str, i64 45, i1 false)
  %i.ff = load ptr, ptr %i.ey, align 8, !tbaa !405
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 45
  store ptr %i.fg, ptr %i.ey, align 8, !tbaa !405
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit95

_ZN4llvm11raw_ostreamlsEPKc.exit95:               ; preds = %bb.ac, %bb.ad
  %.0.i.i94 = phi ptr [ %i.fe, %bb.ac ], [ %i.ev, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZNK4llvm4bolt14BinaryFunction12getPrintNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1360) %1)
  %i.fh = load ptr, ptr %5, align 8, !tbaa !406
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !407
  %i.fk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i94, ptr noundef %i.fh, i64 noundef %i.fj) #17 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !401
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 32 ; 3 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !405 ; 2 uses
  %i.fp = ptrtoint ptr %i.fm to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = icmp ult i64 %i.fr, 59
  br i1 %i.fs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit95
  %i.ft = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fk, ptr noundef nonnull @.str.3, i64 noundef 59) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit98

bb.af:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %i.fo, ptr noundef nonnull align 1 dereferenceable(59) @.str.3, i64 59, i1 false)
  %i.fu = load ptr, ptr %i.fn, align 8, !tbaa !405
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 59
  store ptr %i.fv, ptr %i.fn, align 8, !tbaa !405
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit98

_ZN4llvm11raw_ostreamlsEPKc.exit98:               ; preds = %bb.ae, %bb.af
  %i.fw = load ptr, ptr %5, align 8, !tbaa !406   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit98
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !408
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %bb.aa
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gc = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.gb) #17 ; 2 uses
  %.not.i.i102 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i102, label %.critedge78.sink.split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_system_errori(i32 noundef %i.gc) #19
  unreachable

._crit_edge173:                                   ; preds = %bb.q, %bb.z
  %i.gd = phi i8 [ %i.er, %bb.z ], [ 0, %bb.q ]
  %i.ge = load ptr, ptr %i.cl, align 8, !tbaa !149
  %i.gf = trunc nuw i8 %i.gd to i1
  call void @_ZNK4llvm4bolt13MCPlusBuilder10setRAStateERNS_6MCInstEb(ptr noundef nonnull align 8 dereferenceable(536) %i.ge, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0115.0159, i1 noundef zeroext %i.gf) #17
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0115.0159, i64 24 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !144 ; 2 uses
  %.not166 = icmp eq i32 %i.gh, 0
  br i1 %.not166, label %.loopexit, label %.lr.ph157

.lr.ph157:                                        ; preds = %._crit_edge173
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0115.0159, i64 16
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph157, %_ZNK4llvm4bolt13MCPlusBuilder22getAnnotationAtOpIndexERKNS_6MCInstEj.exit.thread
  %indvars.iv170 = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next171, %_ZNK4llvm4bolt13MCPlusBuilder22getAnnotationAtOpIndexERKNS_6MCInstEj.exit.thread ] ; 3 uses
  %i.gj = phi i32 [ %i.gh, %.lr.ph157 ], [ %i.jd, %_ZNK4llvm4bolt13MCPlusBuilder22getAnnotationAtOpIndexERKNS_6MCInstEj.exit.thread ]
  %.01317.i.i.i = add i32 %i.gj, -1               ; 2 uses
  %i.gk = icmp sgt i32 %.01317.i.i.i, -1
  br i1 %i.gk, label %.lr.ph.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder22getAnnotationAtOpIndexERKNS_6MCInstEj.exit.thread

.lr.ph.i.i.i:                                     ; preds = %bb.ai
  %i.gl = load ptr, ptr %i.gi, align 8, !tbaa !143 ; 2 uses
  %i.gm = zext nneg i32 %.01317.i.i.i to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.backedge.i.i.i, %.lr.ph.i.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %.backedge.i.i.i ], [ %i.gm, %.lr.ph.i.i.i ] ; 4 uses
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %indvars.iv ; 2 uses
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !424 ; 2 uses
  %i.gp = icmp eq i8 %i.go, 6
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = icmp eq ptr %i.gr, null
  %i.gt = select i1 %i.gp, i1 %i.gs, i1 false
  br i1 %i.gt, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  switch i8 %i.go, label %_ZNK4llvm4bolt13MCPlusBuilder22getAnnotationAtOpIndexERKNS_6MCInstEj.exit.thread [
    i8 6, label %.backedge.i.i.i
    i8 2, label %.backedge.i.i.i
  ]

.backedge.i.i.i:                                  ; preds = %bb.ak, %bb.ak
  %indvars.iv.next.a = add nsw i64 %indvars.iv, -1
  %i.gu = icmp sgt i64 %indvars.iv, 0
  br i1 %i.gu, label %bb.aj, label %_ZNK4llvm4bolt13MCPlusBuilder22getAnnotationAtOpIndexERKNS_6MCInstEj.exit.thread

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i: ; preds = %bb.aj
  %.not167 = icmp samesign ult i64 %indvars.iv, %indvars.iv170
  br i1 %.not167, label %bb.al, label %_ZNK4llvm4bolt13MCPlusBuilder22getAnnotationAtOpIndexERKNS_6MCInstEj.exit.thread

bb.al:                                            ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %indvars.iv170
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !408
  %i.gy = lshr i64 %i.gx, 56
  %trunc = trunc nuw i64 %i.gy to i8
  switch i8 %trunc, label %_ZNK4llvm4bolt13MCPlusBuilder22getAnnotationAtOpIndexERKNS_6MCInstEj.exit.thread [
    i8 14, label %bb.am
    i8 12, label %bb.an
    i8 13, label %bb.at
  ]

bb.am:                                            ; preds = %bb.al
  %i.gz = load i8, ptr %i.a, align 1, !tbaa !411, !range !410, !noundef !141
  %i.ha = xor i8 %i.gz, 1
  store i8 %i.ha, ptr %i.a, align 1, !tbaa !411
  br label %_ZNK4llvm4bolt13MCPlusBuilder22getAnnotationAtOpIndexERKNS_6MCInstEj.exit.thread

bb.an:                                            ; preds = %bb.al
  %i.hb = load ptr, ptr %i.cd, align 8, !tbaa !423 ; 4 uses
  %i.hc = load ptr, ptr %i.cg, align 8, !tbaa !427
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -1
  %.not.i = icmp eq ptr %i.hb, %i.hd
  br i1 %.not.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.he = load i8, ptr %i.a, align 1, !tbaa !411, !range !410, !noundef !141
  store i8 %i.he, ptr %i.hb, align 1, !tbaa !411
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  br label %_ZNSt5dequeIbSaIbEE9push_backERKb.exit

bb.ap:                                            ; preds = %bb.an
  %i.hg = load ptr, ptr %i.ce, align 8, !tbaa !419 ; 2 uses
  %i.hh = load ptr, ptr %i.bz, align 8, !tbaa !419
  %i.hi = ptrtoint ptr %i.hg to i64               ; 2 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = ashr exact i64 %i.hk, 3
  %i.hm = icmp ne ptr %i.hg, null
  %.neg.i.i.i.i = sext i1 %i.hm to i64
  %i.hn = add nsw i64 %i.hl, %.neg.i.i.i.i
  %i.ho = shl nsw i64 %i.hn, 9
  %i.hp = load ptr, ptr %i.cf, align 8, !tbaa !420
  %i.hq = ptrtoint ptr %i.hb to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = load ptr, ptr %i.cc, align 8, !tbaa !421
  %i.ht = load ptr, ptr %i.by, align 8, !tbaa !428
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = add i64 %i.hq, %i.hu
  %i.hx = add i64 %i.hr, %i.hv
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = add i64 %i.hy, %i.ho
  %i.ia = icmp eq i64 %i.hz, 9223372036854775807
  br i1 %i.ia, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #19
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.ib = load i64, ptr %i.bu, align 8, !tbaa !412
  %i.ic = load ptr, ptr %3, align 8, !tbaa !417
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = sub i64 %i.hi, %i.id
  %i.if = ashr exact i64 %i.ie, 3
  %i.ig = sub i64 %i.ib, %i.if
  %i.ih = icmp ult i64 %i.ig, 2
  br i1 %i.ih, label %bb.as, label %_ZNSt5dequeIbSaIbEE16_M_push_back_auxIJRKbEEEvDpOT_.exit.i

bb.as:                                            ; preds = %bb.ar
  call void @_ZNSt5dequeIbSaIbEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIbSaIbEE16_M_push_back_auxIJRKbEEEvDpOT_.exit.i

_ZNSt5dequeIbSaIbEE16_M_push_back_auxIJRKbEEEvDpOT_.exit.i: ; preds = %bb.as, %bb.ar
  %i.ii = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #20 ; 4 uses
  %i.ij = load ptr, ptr %i.ce, align 8, !tbaa !429
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 2 uses
  store ptr %i.ii, ptr %i.ik, align 8, !tbaa !418
  %i.il = load ptr, ptr %i.cd, align 8, !tbaa !423
  %i.im = load i8, ptr %i.a, align 1, !tbaa !411, !range !410, !noundef !141
  store i8 %i.im, ptr %i.il, align 1, !tbaa !411
  store ptr %i.ik, ptr %i.ce, align 8, !tbaa !419
  store ptr %i.ii, ptr %i.cf, align 8, !tbaa !420
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 512
  store ptr %i.in, ptr %i.cg, align 8, !tbaa !421
  br label %_ZNSt5dequeIbSaIbEE9push_backERKb.exit

_ZNSt5dequeIbSaIbEE9push_backERKb.exit:           ; preds = %bb.ao, %_ZNSt5dequeIbSaIbEE16_M_push_back_auxIJRKbEEEvDpOT_.exit.i
  %storemerge.i = phi ptr [ %i.hf, %bb.ao ], [ %i.ii, %_ZNSt5dequeIbSaIbEE16_M_push_back_auxIJRKbEEEvDpOT_.exit.i ]
  store ptr %storemerge.i, ptr %i.cd, align 8, !tbaa !423
  br label %_ZNK4llvm4bolt13MCPlusBuilder22getAnnotationAtOpIndexERKNS_6MCInstEj.exit.thread

bb.at:                                            ; preds = %bb.al
  %i.io = load ptr, ptr %i.cd, align 8, !tbaa !428, !noalias !430 ; 2 uses
  %i.ip = load ptr, ptr %i.cf, align 8, !tbaa !420, !noalias !430 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ir = getelementptr inbounds i8, ptr %i.io, i64 -1 ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !411, !range !410, !noundef !141
  store i8 %i.is, ptr %i.a, align 1, !tbaa !411
  br label %_ZNSt5stackIbSt5dequeIbSaIbEEE3popEv.exit

bb.av:                                            ; preds = %bb.at
  %i.it = load ptr, ptr %i.ce, align 8, !tbaa !419, !noalias !430
  %i.iu = getelementptr inbounds i8, ptr %i.it, i64 -8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !418
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 511
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !411, !range !410, !noundef !141
  store i8 %i.ix, ptr %i.a, align 1, !tbaa !411
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef 512) #18
  %i.iy = load ptr, ptr %i.ce, align 8, !tbaa !429
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 -8 ; 2 uses
  store ptr %i.iz, ptr %i.ce, align 8, !tbaa !419
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !418 ; 3 uses
  store ptr %i.ja, ptr %i.cf, align 8, !tbaa !420
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 512
  store ptr %i.jb, ptr %i.cg, align 8, !tbaa !421
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 511
  br label %_ZNSt5stackIbSt5dequeIbSaIbEEE3popEv.exit

_ZNSt5stackIbSt5dequeIbSaIbEEE3popEv.exit:        ; preds = %bb.au, %bb.av
  %storemerge.i.i = phi ptr [ %i.ir, %bb.au ], [ %i.jc, %bb.av ]
  store ptr %storemerge.i.i, ptr %i.cd, align 8, !tbaa !423
  br label %_ZNK4llvm4bolt13MCPlusBuilder22getAnnotationAtOpIndexERKNS_6MCInstEj.exit.thread

_ZNK4llvm4bolt13MCPlusBuilder22getAnnotationAtOpIndexERKNS_6MCInstEj.exit.thread: ; preds = %.backedge.i.i.i, %bb.ak, %bb.al, %bb.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i, %bb.am, %_ZNSt5stackIbSt5dequeIbSaIbEEE3popEv.exit, %_ZNSt5dequeIbSaIbEE9push_backERKb.exit
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %i.jd = load i32, ptr %i.gg, align 8, !tbaa !144 ; 2 uses
  %i.je = zext i32 %i.jd to i64
  %i.jf = icmp samesign ult i64 %indvars.iv.next171, %i.je
  br i1 %i.jf, label %bb.ai, label %.loopexit, !llvm.loop !433

.loopexit:                                        ; preds = %_ZNK4llvm4bolt13MCPlusBuilder22getAnnotationAtOpIndexERKNS_6MCInstEj.exit.thread, %._crit_edge173, %.lr.ph160
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0115.0159, i64 128 ; 2 uses
  %.not141 = icmp eq ptr %i.jg, %i.cp
  br i1 %.not141, label %._crit_edge, label %.lr.ph160

._crit_edge:                                      ; preds = %.loopexit, %bb.o
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0119.0162, i64 8 ; 2 uses
  %.not140 = icmp eq ptr %i.jh, %i.ck
  br i1 %.not140, label %.critedge78, label %bb.o

.critedge78.sink.split:                           ; preds = %bb.ag, %bb.x
  %.sink = phi ptr [ %i.ek, %bb.x ], [ %i.gb, %bb.ag ]
  call void @_ZN4llvm4bolt14BinaryFunction10setIgnoredEv(ptr noundef nonnull align 8 dereferenceable(1360) %1) #17
  %i.ji = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.sink) #17 ; 0 uses
  br label %.critedge78

.critedge78:                                      ; preds = %._crit_edge, %.critedge78.sink.split, %.critedge76
  %.not140149 = phi i1 [ true, %.critedge76 ], [ false, %.critedge78.sink.split ], [ true, %._crit_edge ]
  %i.jj = load ptr, ptr %3, align 8, !tbaa !417   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i, label %_ZNSt5stackIbSt5dequeIbSaIbEEED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %.critedge78
  %i.jk = load ptr, ptr %i.bz, align 8, !tbaa !435 ; 2 uses
  %i.jl = load ptr, ptr %i.ce, align 8, !tbaa !429 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = icmp ult ptr %i.jk, %i.jm
  br i1 %i.jn, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aw, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.jp, %.lr.ph.i.i.i.i ], [ %i.jk, %bb.aw ] ; 3 uses
  %i.jo = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !418
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef 512) #18
  %i.jp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.jq = icmp ult ptr %.06.i.i.i.i, %i.jl
  br i1 %i.jq, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit.i.i.i, !llvm.loop !436

_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !417
  br label %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.i.i.i

_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit.i.i.i, %bb.aw
  %i.jr = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit.i.i.i ], [ %i.jj, %bb.aw ]
  %i.js = load i64, ptr %i.bu, align 8, !tbaa !412
  %i.jt = shl i64 %i.js, 3
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.jt) #18
  br label %_ZNSt5stackIbSt5dequeIbSaIbEEED2Ev.exit

_ZNSt5stackIbSt5dequeIbSaIbEEED2Ev.exit:          ; preds = %.critedge78, %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ax

bb.ax:                                            ; preds = %bb.n, %_ZNSt5stackIbSt5dequeIbSaIbEEED2Ev.exit
  %.11 = phi i1 [ %.not140149, %_ZNSt5stackIbSt5dequeIbSaIbEEED2Ev.exit ], [ false, %bb.n ]
  ret i1 %.11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder16hasNegateRAStateERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
