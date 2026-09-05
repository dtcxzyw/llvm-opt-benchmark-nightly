Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/treegen?download=true
inline.NumInlined: 1239
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7treegen14make_pine_treeER8MMVManipN4core8vector3dIsEEPK14NodeDefManageri:.noexc.i
  %.pre682 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cs = phi i64 [ %.pre682, %bb.r ], [ %i.cn, %bb.q ]
  %i.ct = phi ptr [ %.pre.i, %bb.r ], [ %i.ck, %bb.q ] ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.cs
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 240
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !71 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.t:                                             ; preds = %bb.s
  call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !77
  %.not.i1.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i1.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 67
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cw)
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !56
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call noundef signext i8 %i.dd(ptr noundef nonnull align 8 dereferenceable(570) %i.cw, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.u, %bb.v
  %.0.i.i.i = phi i8 [ %i.da, %bb.u ], [ %i.de, %bb.v ]
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, i8 noundef signext %.0.i.i.i)
  %i.dg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZTW11errorstream.exit, %bb.n
  %i.dh = icmp eq i16 %.0173, 127
  br i1 %i.dh, label %bb.w, label %_ZN11StreamProxylsEPFRSoS0_E.exit294

bb.w:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %.not.i289 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i289, label %_ZTW11errorstream.exit290, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit290

_ZTW11errorstream.exit290:                        ; preds = %bb.w, %bb.x
  %i.di = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !52, !nonnull !53, !align !54 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !56
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = call noundef zeroext i1 %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %i.dj), !inline_history !3
  %.v.i291 = select i1 %i.dm, i64 976, i64 984
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %.v.i291 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.17, ptr %i.a, align 8, !tbaa !57
  %i.do = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !58 ; 5 uses
  %.not.i292 = icmp eq ptr %i.dp, null
  br i1 %.not.i292, label %_ZN11StreamProxylsEPFRSoS0_E.exit294, label %bb.y

bb.y:                                             ; preds = %_ZTW11errorstream.exit290
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !56
  %i.dr = getelementptr i8, ptr %i.dq, i64 -24
  %i.ds = load i64, ptr %i.dr, align 8            ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dp, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !65
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
  %.pre.i293 = load ptr, ptr %i.dn, align 8, !tbaa !58 ; 2 uses
  %.pre683 = load ptr, ptr %.pre.i293, align 8, !tbaa !56
  %.phi.trans.insert684 = getelementptr i8, ptr %.pre683, i64 -24
  %.pre685 = load i64, ptr %.phi.trans.insert684, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dx = phi i64 [ %.pre685, %bb.z ], [ %i.ds, %bb.y ]
  %i.dy = phi ptr [ %.pre.i293, %bb.z ], [ %i.dp, %bb.y ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %i.dx
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 240
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !71 ; 6 uses
  %.not.i.i.i361 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i361, label %bb.ab, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i362

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i362: ; preds = %bb.aa
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !77
  %.not.i1.i.i363 = icmp eq i8 %i.ed, 0
  br i1 %.not.i1.i.i363, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i362
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 67
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit365

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i362
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eb)
  %i.eg = load ptr, ptr %i.eb, align 8, !tbaa !56
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = call noundef signext i8 %i.ei(ptr noundef nonnull align 8 dereferenceable(570) %i.eb, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit365

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit365: ; preds = %bb.ac, %bb.ad
  %.0.i.i.i364 = phi i8 [ %i.ef, %bb.ac ], [ %i.ej, %bb.ad ]
  %i.ek = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, i8 noundef signext %.0.i.i.i364)
  %i.el = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ek) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit294

_ZN11StreamProxylsEPFRSoS0_E.exit294:             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit365, %_ZTW11errorstream.exit290, %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.em = mul i32 %3, 1103515245
  %i.en = add i32 %i.em, 12345                    ; 2 uses
  %i.eo = sdiv i32 %i.en, 65536
  %i.ep = trunc nsw i32 %i.eo to i16
  %.lhs.trunc.i = and i16 %i.ep, 32767
  %i.eq = urem i16 %.lhs.trunc.i, 5
  %.sroa.8475.0.extract.shift = lshr i48 %1, 16
  %.sroa.8475.0.extract.trunc = trunc i48 %.sroa.8475.0.extract.shift to i16
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i48 %1 to i16 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ev = ashr i48 %1, 32
  %i.ew = trunc nsw i48 %i.ev to i32              ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fb = sext i16 %.sroa.0.0.extract.trunc.i to i32
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0501.0.insert.ext = zext i16 %.0 to i32
  %i.fd = or disjoint i16 %i.eq, 8
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit294, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread
  %.0179519 = phi i16 [ 0, %_ZN11StreamProxylsEPFRSoS0_E.exit294 ], [ %i.gc, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread ] ; 2 uses
  %.sroa.8475.0518 = phi i16 [ %.sroa.8475.0.extract.trunc, %_ZN11StreamProxylsEPFRSoS0_E.exit294 ], [ %i.gb, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread ] ; 5 uses
  %i.fe = load i16, ptr %i.er, align 8, !tbaa !83 ; 2 uses
  %.not.i296 = icmp sgt i16 %i.fe, %.sroa.0.0.extract.trunc.i
  %i.ff = load i16, ptr %i.es, align 2
  %.not6.i = icmp slt i16 %i.ff, %.sroa.0.0.extract.trunc.i
  %or.cond.i = select i1 %.not.i296, i1 true, i1 %.not6.i
  %i.fg = load i16, ptr %i.et, align 2            ; 2 uses
  %.not7.i = icmp sgt i16 %i.fg, %.sroa.8475.0518
  %or.cond12.i = select i1 %or.cond.i, i1 true, i1 %.not7.i
  %i.fh = load i16, ptr %i.eu, align 8
  %.not8.i = icmp slt i16 %i.fh, %.sroa.8475.0518
  %or.cond14.i = select i1 %or.cond12.i, i1 true, i1 %.not8.i
  br i1 %or.cond14.i, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fi = load i16, ptr %i.ex, align 4, !tbaa !84
  %i.fj = sext i16 %i.fi to i32                   ; 2 uses
  %.not9.i = icmp slt i32 %i.ew, %i.fj
  br i1 %.not9.i, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit: ; preds = %bb.af
  %i.fk = load i16, ptr %i.ey, align 2, !tbaa !85
  %i.fl = sext i16 %i.fk to i32
  %.not512 = icmp sgt i32 %i.ew, %i.fl
  br i1 %.not512, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit
  %i.fm = sub nsw i32 %i.ew, %i.fj
  %i.fn = load i32, ptr %i.fa, align 8, !tbaa !86
  %i.fo = mul nsw i32 %i.fm, %i.fn
  %i.fp = load i32, ptr %i.ez, align 4, !tbaa !87
  %i.fq = sext i16 %.sroa.8475.0518 to i32
  %i.fr = sext i16 %i.fg to i32
  %i.fs = sub nsw i32 %i.fq, %i.fr
  %i.ft = add i32 %i.fs, %i.fo
  %i.fu = mul i32 %i.ft, %i.fp
  %i.fv = sext i16 %i.fe to i32
  %i.fw = sub nsw i32 %i.fb, %i.fv
  %i.fx = add nsw i32 %i.fw, %i.fu
  %i.fy = load ptr, ptr %i.fc, align 8, !tbaa !90
  %i.fz = zext i32 %i.fx to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fz
  store i32 %.sroa.0501.0.insert.ext, ptr %i.ga, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread: ; preds = %bb.ae, %bb.af, %bb.ag, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit
  %i.gb = add i16 %.sroa.8475.0518, 1
  %i.gc = add nuw i16 %.0179519, 1
  %exitcond.not = icmp eq i16 %.0179519, %i.fd
  br i1 %exitcond.not, label %.lr.ph.preheader, label %bb.ae, !llvm.loop !203

.lr.ph.preheader:                                 ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread
  %i.gd = call noalias noundef nonnull dereferenceable(490) ptr @_Znam(i64 noundef 490) #25 ; 54 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(490) %i.gd, i8 0, i64 490, i1 false), !tbaa !20
  br label %.lr.ph

.lr.ph.1:                                         ; preds = %._crit_edge, %._crit_edge.1
  %indvars.iv625 = phi i32 [ %indvars.iv.next626, %._crit_edge.1 ], [ -2, %._crit_edge ]
  %indvars.iv617 = phi i64 [ %indvars.iv.next618, %._crit_edge.1 ], [ 120, %._crit_edge ] ; 6 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.1 ], [ 113, %._crit_edge ] ; 6 uses
  %.sroa.0488.1527.1 = phi i32 [ %i.hn, %._crit_edge.1 ], [ %i.mk, %._crit_edge ]
  %i.ge = mul i32 %.sroa.0488.1527.1, 1103515245
  %i.gf = add i32 %i.ge, 12345                    ; 2 uses
  %i.gg = sdiv i32 %i.gf, 65536
  %i.gh = trunc nsw i32 %i.gg to i16
  %.lhs.trunc.i307.1 = and i16 %i.gh, 32767
  %i.gi = urem i16 %.lhs.trunc.i307.1, 21
  %.not244.1 = icmp samesign ugt i16 %i.gi, 17
  br i1 %.not244.1, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv
  store i8 1, ptr %i.gj, align 1, !tbaa !20
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv617
  store i8 2, ptr %i.gk, align 1, !tbaa !20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.1
  %i.gl = mul i32 %i.gf, 1103515245
  %i.gm = add i32 %i.gl, 12345                    ; 2 uses
  %i.gn = sdiv i32 %i.gm, 65536
  %i.go = trunc nsw i32 %i.gn to i16
  %.lhs.trunc.i307.1.1 = and i16 %i.go, 32767
  %i.gp = urem i16 %.lhs.trunc.i307.1.1, 21
  %.not244.1.1 = icmp samesign ugt i16 %i.gp, 17
  br i1 %.not244.1.1, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  store i8 1, ptr %i.gr, align 1, !tbaa !20
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv617
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  store i8 2, ptr %i.gt, align 1, !tbaa !20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gu = mul i32 %i.gm, 1103515245
  %i.gv = add i32 %i.gu, 12345                    ; 2 uses
  %i.gw = sdiv i32 %i.gv, 65536
  %i.gx = trunc nsw i32 %i.gw to i16
  %.lhs.trunc.i307.1.2 = and i16 %i.gx, 32767
  %i.gy = urem i16 %.lhs.trunc.i307.1.2, 21
  %.not244.1.2 = icmp samesign ugt i16 %i.gy, 17
  br i1 %.not244.1.2, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 2
  store i8 1, ptr %i.ha, align 1, !tbaa !20
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv617
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  store i8 2, ptr %i.hc, align 1, !tbaa !20
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.hd = mul i32 %i.gv, 1103515245
  %i.he = add i32 %i.hd, 12345                    ; 2 uses
  %i.hf = sdiv i32 %i.he, 65536
  %i.hg = trunc nsw i32 %i.hf to i16
  %.lhs.trunc.i307.1.3 = and i16 %i.hg, 32767
  %i.hh = urem i16 %.lhs.trunc.i307.1.3, 21
  %.not244.1.3 = icmp samesign ugt i16 %i.hh, 17
  br i1 %.not244.1.3, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 3
  store i8 1, ptr %i.hj, align 1, !tbaa !20
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv617
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 3
  store i8 2, ptr %i.hl, align 1, !tbaa !20
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.hm = mul i32 %i.he, 1103515245
  %i.hn = add i32 %i.hm, 12345                    ; 3 uses
  %i.ho = sdiv i32 %i.hn, 65536
  %i.hp = trunc nsw i32 %i.ho to i16
  %.lhs.trunc.i307.1.4 = and i16 %i.hp, 32767
  %i.hq = urem i16 %.lhs.trunc.i307.1.4, 21
  %.not244.1.4 = icmp samesign ugt i16 %i.hq, 17
  br i1 %.not244.1.4, label %._crit_edge.1, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  store i8 1, ptr %i.hs, align 1, !tbaa !20
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv617
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  store i8 2, ptr %i.hu, align 1, !tbaa !20
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %bb.ap, %bb.ao
  %indvars.iv.next626 = add nsw i32 %indvars.iv625, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 70
  %indvars.iv.next618 = add nuw nsw i64 %indvars.iv617, 70
  %exitcond628 = icmp eq i32 %indvars.iv.next626, 3
  br i1 %exitcond628, label %.lr.ph.preheader.2, label %.lr.ph.1, !llvm.loop !204

.lr.ph.preheader.2:                               ; preds = %._crit_edge.1
  %i.hv = mul i32 %i.hn, 1103515245
  %i.hw = add i32 %i.hv, 12345                    ; 2 uses
  %i.hx = sdiv i32 %i.hw, 65536
  %i.hy = trunc nsw i32 %i.hx to i16
  %.lhs.trunc.i307.2 = and i16 %i.hy, 32767
  %i.hz = urem i16 %.lhs.trunc.i307.2, 21
  %.not244.2 = icmp samesign ugt i16 %i.hz, 18
  br i1 %.not244.2, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.preheader.2
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gd, i64 191
  store i8 1, ptr %i.ia, align 1, !tbaa !20
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gd, i64 198
  store i8 2, ptr %i.ib, align 1, !tbaa !20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.preheader.2
  %i.ic = mul i32 %i.hw, 1103515245
  %i.id = add i32 %i.ic, 12345                    ; 2 uses
  %i.ie = sdiv i32 %i.id, 65536
  %i.if = trunc nsw i32 %i.ie to i16
  %.lhs.trunc.i307.2.1 = and i16 %i.if, 32767
  %i.ig = urem i16 %.lhs.trunc.i307.2.1, 21
  %.not244.2.1 = icmp samesign ugt i16 %i.ig, 18
  br i1 %.not244.2.1, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gd, i64 192
  store i8 1, ptr %i.ih, align 1, !tbaa !20
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gd, i64 199
  store i8 2, ptr %i.ii, align 1, !tbaa !20
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ij = mul i32 %i.id, 1103515245
  %i.ik = add i32 %i.ij, 12345                    ; 2 uses
  %i.il = sdiv i32 %i.ik, 65536
  %i.im = trunc nsw i32 %i.il to i16
  %.lhs.trunc.i307.2.2 = and i16 %i.im, 32767
  %i.in = urem i16 %.lhs.trunc.i307.2.2, 21
  %.not244.2.2 = icmp samesign ugt i16 %i.in, 18
  br i1 %.not244.2.2, label %._crit_edge.2, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.io = getelementptr inbounds nuw i8, ptr %i.gd, i64 193
  store i8 1, ptr %i.io, align 1, !tbaa !20
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gd, i64 200
  store i8 2, ptr %i.ip, align 1, !tbaa !20
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %bb.au, %bb.at
  %i.iq = mul i32 %i.ik, 1103515245
  %i.ir = add i32 %i.iq, 12345                    ; 2 uses
  %i.is = sdiv i32 %i.ir, 65536
  %i.it = trunc nsw i32 %i.is to i16
  %.lhs.trunc.i307.2.1605 = and i16 %i.it, 32767
  %i.iu = urem i16 %.lhs.trunc.i307.2.1605, 21
  %.not244.2.1607 = icmp samesign ugt i16 %i.iu, 18
  br i1 %.not244.2.1607, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge.2
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gd, i64 261
  store i8 1, ptr %i.iv, align 1, !tbaa !20
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gd, i64 268
  store i8 2, ptr %i.iw, align 1, !tbaa !20
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge.2
  %i.ix = mul i32 %i.ir, 1103515245
  %i.iy = add i32 %i.ix, 12345                    ; 2 uses
  %i.iz = sdiv i32 %i.iy, 65536
  %i.ja = trunc nsw i32 %i.iz to i16
  %.lhs.trunc.i307.2.1.1 = and i16 %i.ja, 32767
  %i.jb = urem i16 %.lhs.trunc.i307.2.1.1, 21
  %.not244.2.1.1 = icmp samesign ugt i16 %i.jb, 18
  br i1 %.not244.2.1.1, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gd, i64 262
  store i8 1, ptr %i.jc, align 1, !tbaa !20
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gd, i64 269
  store i8 2, ptr %i.jd, align 1, !tbaa !20
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.je = mul i32 %i.iy, 1103515245
  %i.jf = add i32 %i.je, 12345                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7treegen14make_pine_treeER8MMVManipN4core8vector3dIsEEPK14NodeDefManageri:.noexc.i
  %i.jt = add i32 %i.js, 12345                    ; 2 uses
  %i.ju = sdiv i32 %i.jt, 65536
  %i.jv = trunc nsw i32 %i.ju to i16
  %.lhs.trunc.i307.2.1.2 = and i16 %i.jv, 32767
  %i.jw = urem i16 %.lhs.trunc.i307.2.1.2, 21
  %.not244.2.1.2 = icmp samesign ugt i16 %i.jw, 18
  br i1 %.not244.2.1.2, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jx = getelementptr inbounds nuw i8, ptr %i.gd, i64 332
  store i8 1, ptr %i.jx, align 1, !tbaa !20
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gd, i64 339
  store i8 2, ptr %i.jy, align 1, !tbaa !20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jz = mul i32 %i.jt, 1103515245
  %i.ka = add i32 %i.jz, 12345                    ; 2 uses
  %i.kb = sdiv i32 %i.ka, 65536
  %i.kc = trunc nsw i32 %i.kb to i16
  %.lhs.trunc.i307.2.2.2 = and i16 %i.kc, 32767
  %i.kd = urem i16 %.lhs.trunc.i307.2.2.2, 21
  %.not244.2.2.2 = icmp samesign ugt i16 %i.kd, 18
  br i1 %.not244.2.2.2, label %._crit_edge531.2, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ke = getelementptr inbounds nuw i8, ptr %i.gd, i64 333
  store i8 1, ptr %i.ke, align 1, !tbaa !20
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gd, i64 340
  store i8 2, ptr %i.kf, align 1, !tbaa !20
  br label %._crit_edge531.2

._crit_edge531.2:                                 ; preds = %bb.bd, %bb.be
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gd, i64 262
  store i8 1, ptr %i.kg, align 1, !tbaa !20
  %i.kh = getelementptr inbounds nuw i8, ptr %i.gd, i64 269
  store i8 1, ptr %i.kh, align 1, !tbaa !20
  %i.ki = getelementptr inbounds nuw i8, ptr %i.gd, i64 276
  store i8 2, ptr %i.ki, align 1, !tbaa !20
  br label %bb.bs

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv649 = phi i32 [ -3, %.lr.ph.preheader ], [ %indvars.iv.next650, %._crit_edge ]
  %indvars.iv635 = phi i64 [ 42, %.lr.ph.preheader ], [ %indvars.iv.next636, %._crit_edge ] ; 8 uses
  %indvars.iv629 = phi i64 [ 35, %.lr.ph.preheader ], [ %indvars.iv.next630, %._crit_edge ] ; 8 uses
  %.sroa.0488.1527 = phi i32 [ %i.en, %.lr.ph.preheader ], [ %i.mk, %._crit_edge ]
  %i.kj = mul i32 %.sroa.0488.1527, 1103515245
  %i.kk = add i32 %i.kj, 12345                    ; 2 uses
  %i.kl = sdiv i32 %i.kk, 65536
  %i.km = trunc nsw i32 %i.kl to i16
  %.lhs.trunc.i307 = and i16 %i.km, 32767
  %i.kn = urem i16 %.lhs.trunc.i307, 21
  %.not244 = icmp samesign ugt i16 %i.kn, 16
  br i1 %.not244, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv629
  store i8 1, ptr %i.ko, align 1, !tbaa !20
  %i.kp = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv635
  store i8 2, ptr %i.kp, align 1, !tbaa !20
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph
  %i.kq = mul i32 %i.kk, 1103515245
  %i.kr = add i32 %i.kq, 12345                    ; 2 uses
  %i.ks = sdiv i32 %i.kr, 65536
  %i.kt = trunc nsw i32 %i.ks to i16
  %.lhs.trunc.i307.1643 = and i16 %i.kt, 32767
  %i.ku = urem i16 %.lhs.trunc.i307.1643, 21
  %.not244.1645 = icmp samesign ugt i16 %i.ku, 16
  br i1 %.not244.1645, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kv = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv629
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  store i8 1, ptr %i.kw, align 1, !tbaa !20
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv635
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 1
  store i8 2, ptr %i.ky, align 1, !tbaa !20
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.kz = mul i32 %i.kr, 1103515245
  %i.la = add i32 %i.kz, 12345                    ; 2 uses
  %i.lb = sdiv i32 %i.la, 65536
  %i.lc = trunc nsw i32 %i.lb to i16
  %.lhs.trunc.i307.2646 = and i16 %i.lc, 32767
  %i.ld = urem i16 %.lhs.trunc.i307.2646, 21
  %.not244.2648 = icmp samesign ugt i16 %i.ld, 16
  br i1 %.not244.2648, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.le = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv629
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 2
  store i8 1, ptr %i.lf, align 1, !tbaa !20
  %i.lg = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv635
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  store i8 2, ptr %i.lh, align 1, !tbaa !20
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.li = mul i32 %i.la, 1103515245
  %i.lj = add i32 %i.li, 12345                    ; 2 uses
  %i.lk = sdiv i32 %i.lj, 65536
  %i.ll = trunc nsw i32 %i.lk to i16
  %.lhs.trunc.i307.3 = and i16 %i.ll, 32767
  %i.lm = urem i16 %.lhs.trunc.i307.3, 21
  %.not244.3 = icmp samesign ugt i16 %i.lm, 16
  br i1 %.not244.3, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ln = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv629
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 3
  store i8 1, ptr %i.lo, align 1, !tbaa !20
  %i.lp = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv635
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 3
  store i8 2, ptr %i.lq, align 1, !tbaa !20
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.lr = mul i32 %i.lj, 1103515245
  %i.ls = add i32 %i.lr, 12345                    ; 2 uses
  %i.lt = sdiv i32 %i.ls, 65536
  %i.lu = trunc nsw i32 %i.lt to i16
  %.lhs.trunc.i307.4 = and i16 %i.lu, 32767
  %i.lv = urem i16 %.lhs.trunc.i307.4, 21
  %.not244.4 = icmp samesign ugt i16 %i.lv, 16
  br i1 %.not244.4, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lw = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv629
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  store i8 1, ptr %i.lx, align 1, !tbaa !20
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv635
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  store i8 2, ptr %i.lz, align 1, !tbaa !20
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ma = mul i32 %i.ls, 1103515245
  %i.mb = add i32 %i.ma, 12345                    ; 2 uses
  %i.mc = sdiv i32 %i.mb, 65536
  %i.md = trunc nsw i32 %i.mc to i16
  %.lhs.trunc.i307.5 = and i16 %i.md, 32767
  %i.me = urem i16 %.lhs.trunc.i307.5, 21
  %.not244.5 = icmp samesign ugt i16 %i.me, 16
  br i1 %.not244.5, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mf = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv629
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 5
  store i8 1, ptr %i.mg, align 1, !tbaa !20
  %i.mh = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv635
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 5
  store i8 2, ptr %i.mi, align 1, !tbaa !20
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.mj = mul i32 %i.mb, 1103515245
  %i.mk = add i32 %i.mj, 12345                    ; 3 uses
  %i.ml = sdiv i32 %i.mk, 65536
  %i.mm = trunc nsw i32 %i.ml to i16
  %.lhs.trunc.i307.6 = and i16 %i.mm, 32767
  %i.mn = urem i16 %.lhs.trunc.i307.6, 21
  %.not244.6 = icmp samesign ugt i16 %i.mn, 16
  br i1 %.not244.6, label %._crit_edge, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mo = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv629
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 6
  store i8 1, ptr %i.mp, align 1, !tbaa !20
  %i.mq = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv635
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 6
  store i8 2, ptr %i.mr, align 1, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.br, %bb.bq
  %indvars.iv.next650 = add nsw i32 %indvars.iv649, 1 ; 2 uses
  %indvars.iv.next630 = add nuw nsw i64 %indvars.iv629, 70
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 70
  %exitcond652 = icmp eq i32 %indvars.iv.next650, 4
  br i1 %exitcond652, label %.lr.ph.1, label %.lr.ph, !llvm.loop !204

.lr.ph571.preheader:                              ; preds = %._crit_edge543
  %spec.select.le = trunc nsw i32 %spec.select510 to i16 ; 2 uses
  %.sroa.14.0.extract.shift = lshr i48 %1, 32
  %.sroa.14.0.extract.trunc = trunc nuw i48 %.sroa.14.0.extract.shift to i16
  %i.ms = add nuw nsw i32 %spec.select510, 2
  %.0184564 = add nuw nsw i16 %spec.select.le, 1
  br label %.lr.ph571

bb.bs:                                            ; preds = %._crit_edge531.2, %._crit_edge543
  %.0192546 = phi i32 [ 0, %._crit_edge531.2 ], [ %i.nm, %._crit_edge543 ]
  %.0193545 = phi i32 [ -6, %._crit_edge531.2 ], [ %spec.select510, %._crit_edge543 ]
  %.sroa.0488.3544 = phi i32 [ %i.ka, %._crit_edge531.2 ], [ %i.na, %._crit_edge543 ]
  %i.mt = mul i32 %.sroa.0488.3544, 1103515245
  %i.mu = add i32 %i.mt, 12345                    ; 2 uses
  %i.mv = mul i32 %i.mu, 1103515245
  %i.mw = add i32 %i.mv, 12345                    ; 2 uses
  %i.mx = sdiv i32 %i.mw, 65536
  %.zext.i318 = and i32 %i.mx, 1                  ; 3 uses
  %i.my = or disjoint i32 %.zext.i318, -6
  %i.mz = mul i32 %i.mw, 1103515245
  %i.na = add i32 %i.mz, 12345                    ; 3 uses
  %i.nb = sdiv i32 %i.na, 65536
  %i.nc = trunc nsw i32 %i.nb to i16
  %.lhs.trunc.i319 = and i16 %i.nc, 32767
  %i.nd = urem i16 %.lhs.trunc.i319, 6            ; 2 uses
  %.zext.i320 = zext nneg i16 %i.nd to i32
  %i.ne = add nsw i16 %i.nd, -3                   ; 2 uses
  %spec.select510 = call i32 @llvm.smax.i32(i32 %i.my, i32 %.0193545) ; 3 uses
  %i.nf = add nsw i32 %.zext.i320, -2             ; 2 uses
  %i.ng = sext i16 %i.ne to i32
  %.not226539 = icmp slt i32 %i.nf, %i.ng
  br i1 %.not226539, label %._crit_edge543, label %.lr.ph542

.lr.ph542:                                        ; preds = %bb.bs
  %i.nh = sdiv i32 %i.mu, 65536
  %i.ni = trunc nsw i32 %i.nh to i16
  %.lhs.trunc.i315 = and i16 %i.ni, 32767
  %i.nj = urem i16 %.lhs.trunc.i315, 6
  %.zext.i316 = zext nneg i16 %i.nj to i32        ; 2 uses
  %.sroa.2.0.extract.trunc.i323 = or disjoint i32 %.zext.i318, 24
  %i.nk = add nuw nsw i32 %.zext.i316, 42
  %i.nl = add nuw nsw i32 %.zext.i316, 217
  br label %bb.bt

._crit_edge543:                                   ; preds = %bb.bx, %bb.bs
  %i.nm = add nuw nsw i32 %.0192546, 1            ; 2 uses
  %exitcond654.not = icmp eq i32 %i.nm, 20
  br i1 %exitcond654.not, label %.lr.ph571.preheader, label %bb.bs, !llvm.loop !205

bb.bt:                                            ; preds = %.lr.ph542, %bb.bx
  %.0191540 = phi i16 [ %i.ne, %.lr.ph542 ], [ %22, %bb.bx ] ; 2 uses
  %9 = sext i16 %.0191540 to i32
  %10 = mul nsw i32 %9, 10                        ; 2 uses
  %11 = add nsw i32 %.sroa.2.0.extract.trunc.i323, %10
  %12 = mul nsw i32 %11, 7
  %13 = add nsw i32 %i.nk, %12                    ; 2 uses
  %14 = or disjoint i32 %10, %.zext.i318
  %15 = mul nsw i32 %14, 7
  %16 = add nsw i32 %i.nl, %15                    ; 2 uses
  %i.nn = zext i32 %13 to i64
  %i.no = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.nn
  store i8 1, ptr %i.no, align 1, !tbaa !20
  %17 = zext i32 %16 to i64
  %i.np = getelementptr inbounds nuw i8, ptr %i.gd, i64 %17 ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !20
  %i.nr = icmp eq i8 %i.nq, 0
  br i1 %i.nr, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i8 2, ptr %i.np, align 1, !tbaa !20
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %18 = add nsw i32 %13, 1
  %19 = add nsw i32 %16, 1
  %20 = zext i32 %18 to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.gd, i64 %20
  store i8 1, ptr %i.ns, align 1, !tbaa !20
  %21 = zext i32 %19 to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.gd, i64 %21 ; 2 uses
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !20
  %i.nv = icmp eq i8 %i.nu, 0
  br i1 %i.nv, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i8 2, ptr %i.nt, align 1, !tbaa !20
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %22 = add i16 %.0191540, 1                      ; 2 uses
  %23 = sext i16 %22 to i32
  %.not226 = icmp slt i32 %i.nf, %23
  br i1 %.not226, label %._crit_edge543, label %bb.bt, !llvm.loop !206

.preheader516:                                    ; preds = %._crit_edge561
  %i.nw = add i16 %.sroa.0.0.extract.trunc.i, -3
  %i.nx = sext i16 %i.nw to i32
  br label %.preheader

.lr.ph571:                                        ; preds = %.lr.ph571.preheader, %._crit_edge561
  %.0184569 = phi i16 [ %.0184, %._crit_edge561 ], [ %.0184564, %.lr.ph571.preheader ] ; 3 uses
  %.0184.in568 = phi i16 [ %.0184569, %._crit_edge561 ], [ %spec.select.le, %.lr.ph571.preheader ]
  %.1187567 = phi i16 [ %i.oi, %._crit_edge561 ], [ 2, %.lr.ph571.preheader ] ; 3 uses
  %.sroa.0488.4566 = phi i32 [ %.sroa.0488.5.lcssa, %._crit_edge561 ], [ %i.na, %.lr.ph571.preheader ] ; 2 uses
  %i.ny = zext i16 %.1187567 to i32               ; 4 uses
  %i.nz = sub i16 0, %.1187567                    ; 3 uses
  %i.oa = sext i16 %i.nz to i32                   ; 2 uses
  %.not219556 = icmp sgt i32 %i.oa, %i.ny
  br i1 %.not219556, label %._crit_edge561, label %.lr.ph553.preheader

.lr.ph553.preheader:                              ; preds = %.lr.ph571
  %i.ob = sext i16 %.0184569 to i32
  %i.oc = add nsw i32 %i.ob, 30
  %i.od = add nsw i32 %i.oa, 45                   ; 2 uses
  %i.oe = add i16 %.0184.in568, 2
  %i.of = sext i16 %i.oe to i32
  %i.og = add nsw i32 %i.of, 30
  %i.oh = sub nsw i32 19, %i.ny
  br label %.lr.ph553

._crit_edge561:                                   ; preds = %._crit_edge554, %.lr.ph571
  %.sroa.0488.5.lcssa = phi i32 [ %.sroa.0488.4566, %.lr.ph571 ], [ %i.ov, %._crit_edge554 ]
  %i.oi = add i16 %.1187567, -1
  %.0184 = add i16 %.0184569, 1                   ; 2 uses
  %i.oj = sext i16 %.0184 to i32
  %.not = icmp slt i32 %i.ms, %i.oj
  br i1 %.not, label %.preheader516, label %.lr.ph571, !llvm.loop !207

.lr.ph553:                                        ; preds = %.lr.ph553.preheader, %._crit_edge554
  %.0183558 = phi i16 [ %i.os, %._crit_edge554 ], [ %i.nz, %.lr.ph553.preheader ] ; 2 uses
  %.sroa.0488.5557 = phi i32 [ %i.ov, %._crit_edge554 ], [ %.sroa.0488.4566, %.lr.ph553.preheader ]
  %i.ok = sext i16 %.0183558 to i32
  %i.ol = mul nsw i32 %i.ok, 10                   ; 2 uses
  %i.om = add nsw i32 %i.oc, %i.ol
  %i.on = mul nsw i32 %i.om, 7
  %i.oo = add nsw i32 %i.od, %i.on
  %i.op = add nsw i32 %i.og, %i.ol
  %i.oq = mul nsw i32 %i.op, 7
  %i.or = add nsw i32 %i.od, %i.oq
  br label %bb.by

._crit_edge554:                                   ; preds = %bb.ca
  %i.os = add i16 %.0183558, 1                    ; 2 uses
  %i.ot = sext i16 %i.os to i32
  %.not219 = icmp sgt i32 %i.ot, %i.ny
  br i1 %.not219, label %._crit_edge561, label %.lr.ph553, !llvm.loop !208

bb.by:                                            ; preds = %.lr.ph553, %bb.ca
  %.0178551 = phi i16 [ %i.nz, %.lr.ph553 ], [ %i.pf, %bb.ca ]
  %.0180550 = phi i32 [ %i.or, %.lr.ph553 ], [ %i.pe, %bb.ca ] ; 2 uses
  %.0182549 = phi i32 [ %i.oo, %.lr.ph553 ], [ %i.pd, %bb.ca ] ; 2 uses
  %.sroa.0488.6548 = phi i32 [ %.sroa.0488.5557, %.lr.ph553 ], [ %i.ov, %bb.ca ]
  %i.ou = mul i32 %.sroa.0488.6548, 1103515245
  %i.ov = add i32 %i.ou, 12345                    ; 4 uses
  %i.ow = sdiv i32 %i.ov, 65536
  %i.ox = trunc nsw i32 %i.ow to i16
  %.lhs.trunc.i333 = and i16 %i.ox, 32767
  %i.oy = urem i16 %.lhs.trunc.i333, 21
  %.zext.i334 = zext nneg i16 %i.oy to i32
  %.not224 = icmp slt i32 %i.oh, %.zext.i334
  br i1 %.not224, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.oz = zext i32 %.0182549 to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.oz
  store i8 1, ptr %i.pa, align 1, !tbaa !20
  %i.pb = zext i32 %.0180550 to i64
  %i.pc = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.pb
  store i8 2, ptr %i.pc, align 1, !tbaa !20
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.pd = add i32 %.0182549, 1
  %i.pe = add i32 %.0180550, 1
  %i.pf = add i16 %.0178551, 1                    ; 2 uses
  %i.pg = sext i16 %i.pf to i32
  %.not220 = icmp sgt i32 %i.pg, %i.ny
  br i1 %.not220, label %._crit_edge554, label %bb.by, !llvm.loop !209

.preheader:                                       ; preds = %.preheader516, %bb.cb
  %indvars.iv676 = phi i32 [ -3, %.preheader516 ], [ %indvars.iv.next677, %bb.cb ] ; 2 uses
  %indvars.iv666 = phi i64 [ 7, %.preheader516 ], [ %indvars.iv.next667, %bb.cb ] ; 2 uses
  %indvars.iv655 = phi i64 [ 0, %.preheader516 ], [ %indvars.iv.next656, %bb.cb ] ; 2 uses
  %i.ph = trunc nsw i32 %indvars.iv676 to i16
  %i.pi = add i16 %i.ph, %.sroa.14.0.extract.trunc ; 3 uses
  %i.pj = sext i16 %i.pi to i32
  br label %bb.cc

_ZN6BufferIhED2Ev.exit:                           ; preds = %bb.cb
  call void @_ZdaPv(ptr noundef nonnull %i.gd) #23
  ret void

bb.cb:                                            ; preds = %bb.cd
  %indvars.iv.next677 = add nsw i32 %indvars.iv676, 1 ; 2 uses
  %indvars.iv.next656 = add nuw nsw i64 %indvars.iv655, 70
  %indvars.iv.next667 = add nuw nsw i64 %indvars.iv666, 70
  %exitcond681 = icmp eq i32 %indvars.iv.next677, 4
  br i1 %exitcond681, label %_ZN6BufferIhED2Ev.exit, label %.preheader, !llvm.loop !210

bb.cc:                                            ; preds = %.preheader, %bb.cd
  %indvars.iv670 = phi i32 [ -6, %.preheader ], [ %indvars.iv.next671, %bb.cd ] ; 2 uses
  %indvars.iv668 = phi i64 [ %indvars.iv666, %.preheader ], [ %indvars.iv.next669, %bb.cd ] ; 2 uses
  %indvars.iv657.a = phi i64 [ %indvars.iv655, %.preheader ], [ %indvars.iv.next658.a, %bb.cd ] ; 2 uses
  %i.pk = trunc nsw i32 %indvars.iv670 to i16
  %i.pl = add i16 %.sroa.8475.0518, %i.pk         ; 2 uses
  %i.pm = load i16, ptr %i.ex, align 4, !tbaa !84
  %i.pn = sext i16 %i.pm to i32
  %i.po = sub nsw i32 %i.pj, %i.pn
  %i.pp = load i32, ptr %i.fa, align 8, !tbaa !86
  %i.pq = mul nsw i32 %i.po, %i.pp
  %i.pr = load i32, ptr %i.ez, align 4, !tbaa !87
  %i.ps = sext i16 %i.pl to i32
  %i.pt = load i16, ptr %i.et, align 2, !tbaa !92
  %i.pu = sext i16 %i.pt to i32
  %i.pv = add i32 %i.pq, %i.ps
  %i.pw = sub i32 %i.pv, %i.pu
  %i.px = mul i32 %i.pw, %i.pr
  %i.py = load i16, ptr %i.er, align 8, !tbaa !83
  %i.pz = sext i16 %i.py to i32
  %i.qa = sub nsw i32 %i.nx, %i.pz
  %i.qb = add nsw i32 %i.qa, %i.px
  %i.qc = insertelement <4 x i16> poison, i16 %i.pl, i64 1
  br label %bb.ce

bb.cd:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread
  %indvars.iv.next671 = add nsw i32 %indvars.iv670, 1 ; 2 uses
  %indvars.iv.next658.a = add nuw nsw i64 %indvars.iv657.a, 7
  %indvars.iv.next669 = add nuw nsw i64 %indvars.iv668, 7
  %exitcond675 = icmp eq i32 %indvars.iv.next671, 4
  br i1 %exitcond675, label %bb.cb, label %bb.cc, !llvm.loop !211

bb.ce:                                            ; preds = %bb.cc, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread
  %indvars.iv659 = phi i64 [ %indvars.iv657.a, %bb.cc ], [ %indvars.iv.next660, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread ] ; 2 uses
  %.0152574 = phi i16 [ -3, %bb.cc ], [ %i.rf, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread ] ; 2 uses
  %.0174573 = phi i32 [ %i.qb, %bb.cc ], [ %i.re, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread ] ; 2 uses
  %i.qd = add i16 %.0152574, %.sroa.0.0.extract.trunc.i
  %i.qe = load <2 x i16>, ptr %i.er, align 8
  %i.qf = load <2 x i16>, ptr %i.es, align 2
  %i.qg = shufflevector <2 x i16> %i.qf, <2 x i16> %i.qe, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.qh = insertelement <4 x i16> %i.qc, i16 %i.qd, i64 0
  %i.qi = shufflevector <4 x i16> %i.qh, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.qj = icmp slt <4 x i16> %i.qg, %i.qi
  %i.qk = icmp sgt <4 x i16> %i.qg, %i.qi
  %i.ql = shufflevector <4 x i1> %i.qj, <4 x i1> %i.qk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qm = freeze <4 x i1> %i.ql
  %i.qn = bitcast <4 x i1> %i.qm to i4
  %.not729 = icmp eq i4 %i.qn, 0
  br i1 %.not729, label %bb.cf, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread

bb.cf:                                            ; preds = %bb.ce
  %i.qo = load i16, ptr %i.ex, align 4, !tbaa !84
  %.not9.i358 = icmp slt i16 %i.pi, %i.qo
  br i1 %.not9.i358, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359: ; preds = %bb.cf
  %i.qp = load i16, ptr %i.ey, align 2, !tbaa !85
  %.not509 = icmp sgt i16 %i.pi, %i.qp
  br i1 %.not509, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread, label %bb.cg

bb.cg:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359
  %i.qq = load ptr, ptr %i.fc, align 8, !tbaa !90
  %i.qr = zext i32 %.0174573 to i64
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.qr ; 4 uses
  %i.qt = load i16, ptr %i.qs, align 4, !tbaa !93 ; 2 uses
  %i.qu = and i16 %i.qt, -2
  %switch = icmp eq i16 %i.qu, 126
  br i1 %switch, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qv = icmp eq i16 %i.qt, %spec.store.select
  br i1 %i.qv, label %bb.ci, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread

bb.ci:                                            ; preds = %bb.ch
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qs, i64 2
  %i.qx = load i8, ptr %i.qw, align 2, !tbaa !213
  %i.qy = icmp eq i8 %i.qx, 0
  br i1 %i.qy, label %_ZNK7MapNodeeqERKS_.exit, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread

_ZNK7MapNodeeqERKS_.exit:                         ; preds = %bb.ci
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qs, i64 3
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !214
  %i.rb = icmp eq i8 %i.ra, 0
  br i1 %i.rb, label %bb.cj, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread

bb.cj:                                            ; preds = %bb.cg, %_ZNK7MapNodeeqERKS_.exit
  %i.rc = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv659
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !20
  switch i8 %i.rd, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread [
    i8 1, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread.sink.split
    i8 2, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj
end_hunk_1
