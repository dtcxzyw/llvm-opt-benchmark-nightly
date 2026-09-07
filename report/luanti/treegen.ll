Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/treegen?download=true
inline.NumInlined: 1239
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7treegen15make_jungletreeER8MMVManipN4core8vector3dIsEEPK14NodeDefManageri:.noexc.i
  %i.bz = load i64, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !65
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
  %.pre.i = load ptr, ptr %i.bu, align 8, !tbaa !58 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !56
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre533 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ce = phi i64 [ %.pre533, %bb.p ], [ %i.bz, %bb.o ]
  %i.cf = phi ptr [ %.pre.i, %bb.p ], [ %i.bw, %bb.o ] ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.ce
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 240
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !71 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i, label %bb.r, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !77
  %.not.i1.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i1.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 67
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ci)
  %i.cn = load ptr, ptr %i.ci, align 8, !tbaa !56
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef signext i8 %i.cp(ptr noundef nonnull align 8 dereferenceable(570) %i.ci, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.s, %bb.t
  %.0.i.i.i = phi i8 [ %i.cm, %bb.s ], [ %i.cq, %bb.t ]
  %i.cr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i8 noundef signext %.0.i.i.i)
  %i.cs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cr) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZTW11errorstream.exit, %bb.l
  %i.ct = icmp eq i16 %.0143, 127
  br i1 %i.ct, label %bb.u, label %_ZN11StreamProxylsEPFRSoS0_E.exit217

bb.u:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %.not.i212 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i212, label %_ZTW11errorstream.exit213, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit213

_ZTW11errorstream.exit213:                        ; preds = %bb.u, %bb.v
  %i.cu = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !52, !nonnull !53, !align !54 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !56
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef zeroext i1 %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.cv), !inline_history !3
  %.v.i214 = select i1 %i.cy, i64 976, i64 984
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.v.i214 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.12, ptr %i.a, align 8, !tbaa !57
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !58 ; 5 uses
  %.not.i215 = icmp eq ptr %i.db, null
  br i1 %.not.i215, label %_ZN11StreamProxylsEPFRSoS0_E.exit217, label %bb.w

bb.w:                                             ; preds = %_ZTW11errorstream.exit213
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !56
  %i.dd = getelementptr i8, ptr %i.dc, i64 -24
  %i.de = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !65
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.db)
  %.pre.i216 = load ptr, ptr %i.cz, align 8, !tbaa !58 ; 2 uses
  %.pre534 = load ptr, ptr %.pre.i216, align 8, !tbaa !56
  %.phi.trans.insert535 = getelementptr i8, ptr %.pre534, i64 -24
  %.pre536 = load i64, ptr %.phi.trans.insert535, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dj = phi i64 [ %.pre536, %bb.x ], [ %i.de, %bb.w ]
  %i.dk = phi ptr [ %.pre.i216, %bb.x ], [ %i.db, %bb.w ] ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dj
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 240
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !71 ; 6 uses
  %.not.i.i.i309 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i309, label %bb.z, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i310

bb.z:                                             ; preds = %bb.y
  call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i310: ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !77
  %.not.i1.i.i311 = icmp eq i8 %i.dp, 0
  br i1 %.not.i1.i.i311, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i310
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 67
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !20
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit313

bb.ab:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i310
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dn)
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !56
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef signext i8 %i.du(ptr noundef nonnull align 8 dereferenceable(570) %i.dn, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit313

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit313: ; preds = %bb.aa, %bb.ab
  %.0.i.i.i312 = phi i8 [ %i.dr, %bb.aa ], [ %i.dv, %bb.ab ]
  %i.dw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, i8 noundef signext %.0.i.i.i312)
  %i.dx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit217

_ZN11StreamProxylsEPFRSoS0_E.exit217:             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit313, %_ZTW11errorstream.exit213, %_ZN11StreamProxylsEPFRSoS0_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store i32 %3, ptr %8, align 4, !tbaa !79
  %i.dy = add i16 %.sroa.5439.0.extract.trunc, -1 ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 12 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ed = sext i16 %.sroa.5439.0.extract.trunc to i32 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 12 uses
  %i.ef = sext i16 %i.dy to i32                   ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 11 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 14 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 15 uses
  %.sroa.0389.0.insert.ext399 = zext i16 %.0 to i32 ; 8 uses
  %i.ek = add i16 %.sroa.8441.0.extract.trunc, -1 ; 4 uses
  %i.el = sext i16 %i.ek to i32
  %i.em = sext i16 %.sroa.8441.0.extract.trunc to i32
  %i.en = add i16 %.sroa.8441.0.extract.trunc, 1  ; 4 uses
  %i.eo = sext i16 %i.en to i32
  br label %.preheader463

.preheader463:                                    ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit217, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2
  %indvars.iv = phi i32 [ -1, %_ZN11StreamProxylsEPFRSoS0_E.exit217 ], [ %indvars.iv.next, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2 ] ; 2 uses
  %i.ep = trunc nsw i32 %indvars.iv to i16
  %i.eq = add i16 %i.ep, %.sroa.0437.0.extract.trunc ; 7 uses
  %i.er = sext i16 %i.eq to i32                   ; 3 uses
  %i.es = load i32, ptr %8, align 4, !tbaa !79
  %i.et = mul i32 %i.es, 1103515245
  %i.eu = add i32 %i.et, 12345                    ; 2 uses
  store i32 %i.eu, ptr %8, align 4, !tbaa !79
  %i.ev = sdiv i32 %i.eu, 65536
  %i.ew = trunc nsw i32 %i.ev to i16
  %.lhs.trunc.i218 = and i16 %i.ew, 32767
  %i.ex = urem i16 %.lhs.trunc.i218, 3
  %i.ey = icmp eq i16 %i.ex, 0
  br i1 %i.ey, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread, label %bb.ad

bb.ac:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2
  %i.ez = load ptr, ptr %i.ej, align 8, !tbaa !90
  %i.fa = ashr i48 %1, 32
  %i.fb = trunc nsw i48 %i.fa to i32              ; 4 uses
  %i.fc = load i16, ptr %i.ea, align 4, !tbaa !84
  %i.fd = sext i16 %i.fc to i32
  %i.fe = sub nsw i32 %i.fb, %i.fd
  %i.ff = load i32, ptr %i.ec, align 8, !tbaa !86
  %i.fg = mul nsw i32 %i.fe, %i.ff
  %i.fh = load i32, ptr %i.eb, align 4, !tbaa !87
  %i.fi = load i16, ptr %i.ee, align 2, !tbaa !92
  %i.fj = sext i16 %i.fi to i32
  %i.fk = add i32 %i.fg, %i.ed
  %i.fl = sub i32 %i.fk, %i.fj
  %i.fm = mul i32 %i.fl, %i.fh
  %i.fn = sext i16 %.sroa.0437.0.extract.trunc to i32 ; 2 uses
  %i.fo = load i16, ptr %i.dz, align 8, !tbaa !83
  %i.fp = sext i16 %i.fo to i32
  %i.fq = sub nsw i32 %i.fn, %i.fp
  %i.fr = add nsw i32 %i.fq, %i.fm
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fs
  store i32 %.sroa.0389.0.insert.ext399, ptr %i.ft, align 4
  %i.fu = load i32, ptr %8, align 4, !tbaa !79
  %i.fv = mul i32 %i.fu, 1103515245
  %i.fw = add i32 %i.fv, 12345                    ; 2 uses
  store i32 %i.fw, ptr %8, align 4, !tbaa !79
  %i.fx = sdiv i32 %i.fw, 65536
  %i.fy = trunc nsw i32 %i.fx to i16
  %.lhs.trunc.i = and i16 %i.fy, 32767
  %i.fz = urem i16 %.lhs.trunc.i, 5
  %i.ga = add nuw nsw i16 %i.fz, 7
  br label %bb.as

bb.ad:                                            ; preds = %.preheader463
  %i.gb = load i16, ptr %i.ea, align 4, !tbaa !84 ; 2 uses
  %i.gc = sext i16 %i.gb to i32
  %i.gd = sub nsw i32 %i.el, %i.gc
  %i.ge = load i32, ptr %i.ec, align 8, !tbaa !86
  %i.gf = mul nsw i32 %i.gd, %i.ge                ; 2 uses
  %i.gg = load i32, ptr %i.eb, align 4, !tbaa !87 ; 2 uses
  %i.gh = load i16, ptr %i.ee, align 2, !tbaa !92 ; 3 uses
  %i.gi = sext i16 %i.gh to i32                   ; 2 uses
  %i.gj = add i32 %i.gf, %i.ed
  %i.gk = sub i32 %i.gj, %i.gi
  %i.gl = mul i32 %i.gk, %i.gg
  %i.gm = load i16, ptr %i.dz, align 8, !tbaa !83 ; 2 uses
  %i.gn = sext i16 %i.gm to i32
  %i.go = sub nsw i32 %i.er, %i.gn                ; 2 uses
  %i.gp = add nsw i32 %i.go, %i.gl
  %i.gq = add i32 %i.gf, %i.ef
  %i.gr = sub i32 %i.gq, %i.gi
  %i.gs = mul i32 %i.gr, %i.gg
  %i.gt = add nsw i32 %i.go, %i.gs
  %.not.i234 = icmp sgt i16 %i.gm, %i.eq
  %i.gu = load i16, ptr %i.eg, align 2
  %.not6.i = icmp slt i16 %i.gu, %i.eq
  %or.cond.i = select i1 %.not.i234, i1 true, i1 %.not6.i ; 2 uses
  %.not7.i = icmp sgt i16 %i.gh, %i.dy
  %or.cond12.i = select i1 %or.cond.i, i1 true, i1 %.not7.i
  %i.gv = load i16, ptr %i.eh, align 8            ; 2 uses
  %.not8.i = icmp slt i16 %i.gv, %i.dy
  %or.cond14.i = select i1 %or.cond12.i, i1 true, i1 %.not8.i
  %.not9.i = icmp slt i16 %i.ek, %i.gb            ; 2 uses
  %or.cond = select i1 %or.cond14.i, i1 true, i1 %.not9.i
  br i1 %or.cond, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit: ; preds = %bb.ad
  %i.gw = load i16, ptr %i.ei, align 2, !tbaa !85
  %.not447 = icmp sgt i16 %i.ek, %i.gw
  br i1 %.not447, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit
  %i.gx = load ptr, ptr %i.ej, align 8, !tbaa !90
  %i.gy = zext i32 %i.gt to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.gy ; 2 uses
  %i.ha = load i16, ptr %i.gz, align 4, !tbaa !93
  %i.hb = icmp eq i16 %i.ha, 126
  br i1 %i.hb, label %bb.af, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread

bb.af:                                            ; preds = %bb.ae
  store i32 %.sroa.0389.0.insert.ext399, ptr %i.gz, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread: ; preds = %bb.ad, %bb.ae, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit
  %.not7.i241 = icmp sgt i16 %i.gh, %.sroa.5439.0.extract.trunc
  %or.cond12.i242 = select i1 %or.cond.i, i1 true, i1 %.not7.i241
  %.not8.i243 = icmp slt i16 %i.gv, %.sroa.5439.0.extract.trunc
  %or.cond14.i244 = select i1 %or.cond12.i242, i1 true, i1 %.not8.i243
  %or.cond443 = select i1 %or.cond14.i244, i1 true, i1 %.not9.i
  br i1 %or.cond443, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246: ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread
  %i.hc = load i16, ptr %i.ei, align 2, !tbaa !85
  %.not448 = icmp sgt i16 %i.ek, %i.hc
  br i1 %.not448, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246
  %i.hd = load ptr, ptr %i.ej, align 8, !tbaa !90
  %i.he = zext i32 %i.gp to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.he ; 2 uses
  %i.hg = load i16, ptr %i.hf, align 4, !tbaa !93
  %i.hh = icmp eq i16 %i.hg, 126
  br i1 %i.hh, label %bb.ah, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread

bb.ah:                                            ; preds = %bb.ag
  store i32 %.sroa.0389.0.insert.ext399, ptr %i.hf, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread: ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, %bb.af, %bb.ah, %bb.ag, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246, %.preheader463
  %i.hi = load i32, ptr %8, align 4, !tbaa !79
  %i.hj = mul i32 %i.hi, 1103515245
  %i.hk = add i32 %i.hj, 12345                    ; 2 uses
  store i32 %i.hk, ptr %8, align 4, !tbaa !79
  %i.hl = sdiv i32 %i.hk, 65536
  %i.hm = trunc nsw i32 %i.hl to i16
  %.lhs.trunc.i218.1 = and i16 %i.hm, 32767
  %i.hn = urem i16 %.lhs.trunc.i218.1, 3
  %i.ho = icmp eq i16 %i.hn, 0
  br i1 %i.ho, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1, label %bb.ai

bb.ai:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread
  %i.hp = load i16, ptr %i.ea, align 4, !tbaa !84 ; 2 uses
  %i.hq = sext i16 %i.hp to i32
  %i.hr = sub nsw i32 %i.em, %i.hq
  %i.hs = load i32, ptr %i.ec, align 8, !tbaa !86
  %i.ht = mul nsw i32 %i.hr, %i.hs                ; 2 uses
  %i.hu = load i32, ptr %i.eb, align 4, !tbaa !87 ; 2 uses
  %i.hv = load i16, ptr %i.ee, align 2, !tbaa !92 ; 3 uses
  %i.hw = sext i16 %i.hv to i32                   ; 2 uses
  %i.hx = add i32 %i.ht, %i.ed
  %i.hy = sub i32 %i.hx, %i.hw
  %i.hz = mul i32 %i.hy, %i.hu
  %i.ia = load i16, ptr %i.dz, align 8, !tbaa !83 ; 2 uses
  %i.ib = sext i16 %i.ia to i32
  %i.ic = sub nsw i32 %i.er, %i.ib                ; 2 uses
  %i.id = add nsw i32 %i.ic, %i.hz
  %i.ie = add i32 %i.ht, %i.ef
  %i.if = sub i32 %i.ie, %i.hw
  %i.ig = mul i32 %i.if, %i.hu
  %i.ih = add nsw i32 %i.ic, %i.ig
  %.not.i234.1 = icmp sgt i16 %i.ia, %i.eq
  %i.ii = load i16, ptr %i.eg, align 2
  %.not6.i.1 = icmp slt i16 %i.ii, %i.eq
  %or.cond.i.1 = select i1 %.not.i234.1, i1 true, i1 %.not6.i.1 ; 2 uses
  %.not7.i.1 = icmp sgt i16 %i.hv, %i.dy
  %or.cond12.i.1 = select i1 %or.cond.i.1, i1 true, i1 %.not7.i.1
  %i.ij = load i16, ptr %i.eh, align 8            ; 2 uses
  %.not8.i.1 = icmp slt i16 %i.ij, %i.dy
  %or.cond14.i.1 = select i1 %or.cond12.i.1, i1 true, i1 %.not8.i.1
  %.not9.i.1 = icmp sgt i16 %i.hp, %.sroa.8441.0.extract.trunc ; 2 uses
  %or.cond.1 = select i1 %or.cond14.i.1, i1 true, i1 %.not9.i.1
  br i1 %or.cond.1, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.1, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.1

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.1: ; preds = %bb.ai
  %i.ik = load i16, ptr %i.ei, align 2, !tbaa !85
  %.not447.1 = icmp slt i16 %i.ik, %.sroa.8441.0.extract.trunc
  br i1 %.not447.1, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.1, label %bb.aj

bb.aj:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.1
  %i.il = load ptr, ptr %i.ej, align 8, !tbaa !90
  %i.im = zext i32 %i.ih to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.im ; 2 uses
  %i.io = load i16, ptr %i.in, align 4, !tbaa !93
  %i.ip = icmp eq i16 %i.io, 126
  br i1 %i.ip, label %bb.ak, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.1

bb.ak:                                            ; preds = %bb.aj
  store i32 %.sroa.0389.0.insert.ext399, ptr %i.in, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.1: ; preds = %bb.aj, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.1, %bb.ai
  %.not7.i241.1 = icmp sgt i16 %i.hv, %.sroa.5439.0.extract.trunc
  %or.cond12.i242.1 = select i1 %or.cond.i.1, i1 true, i1 %.not7.i241.1
  %.not8.i243.1 = icmp slt i16 %i.ij, %.sroa.5439.0.extract.trunc
  %or.cond14.i244.1 = select i1 %or.cond12.i242.1, i1 true, i1 %.not8.i243.1
  %or.cond443.1 = select i1 %or.cond14.i244.1, i1 true, i1 %.not9.i.1
  br i1 %or.cond443.1, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.1

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.1: ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.1
  %i.iq = load i16, ptr %i.ei, align 2, !tbaa !85
  %.not448.1 = icmp slt i16 %i.iq, %.sroa.8441.0.extract.trunc
  br i1 %.not448.1, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1, label %bb.al

bb.al:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.1
  %i.ir = load ptr, ptr %i.ej, align 8, !tbaa !90
  %i.is = zext i32 %i.id to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.is ; 2 uses
  %i.iu = load i16, ptr %i.it, align 4, !tbaa !93
  %i.iv = icmp eq i16 %i.iu, 126
  br i1 %i.iv, label %bb.am, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1

bb.am:                                            ; preds = %bb.al
  store i32 %.sroa.0389.0.insert.ext399, ptr %i.it, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1: ; preds = %bb.am, %bb.al, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.1, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.1, %bb.ak, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread
  %i.iw = load i32, ptr %8, align 4, !tbaa !79
  %i.ix = mul i32 %i.iw, 1103515245
  %i.iy = add i32 %i.ix, 12345                    ; 2 uses
  store i32 %i.iy, ptr %8, align 4, !tbaa !79
  %i.iz = sdiv i32 %i.iy, 65536
  %i.ja = trunc nsw i32 %i.iz to i16
  %.lhs.trunc.i218.2 = and i16 %i.ja, 32767
  %i.jb = urem i16 %.lhs.trunc.i218.2, 3
  %i.jc = icmp eq i16 %i.jb, 0
  br i1 %i.jc, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2, label %bb.an

bb.an:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1
  %i.jd = load i16, ptr %i.ea, align 4, !tbaa !84 ; 2 uses
  %i.je = sext i16 %i.jd to i32
  %i.jf = sub nsw i32 %i.eo, %i.je
  %i.jg = load i32, ptr %i.ec, align 8, !tbaa !86
  %i.jh = mul nsw i32 %i.jf, %i.jg                ; 2 uses
  %i.ji = load i32, ptr %i.eb, align 4, !tbaa !87 ; 2 uses
  %i.jj = load i16, ptr %i.ee, align 2, !tbaa !92 ; 3 uses
  %i.jk = sext i16 %i.jj to i32                   ; 2 uses
  %i.jl = add i32 %i.jh, %i.ed
  %i.jm = sub i32 %i.jl, %i.jk
  %i.jn = mul i32 %i.jm, %i.ji
  %i.jo = load i16, ptr %i.dz, align 8, !tbaa !83 ; 2 uses
  %i.jp = sext i16 %i.jo to i32
  %i.jq = sub nsw i32 %i.er, %i.jp                ; 2 uses
  %i.jr = add nsw i32 %i.jq, %i.jn
  %i.js = add i32 %i.jh, %i.ef
end_hunk_0
