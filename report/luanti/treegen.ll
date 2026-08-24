Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/treegen?download=true
inline.NumInlined: 1239
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7treegen15make_jungletreeER8MMVManipN4core8vector3dIsEEPK14NodeDefManageri:.noexc.i
  %i.bz = load i64, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !56
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
  %.pre.i = load ptr, ptr %i.bu, align 8, !tbaa !55 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !51
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre533.a = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ce = phi i64 [ %.pre533.a, %bb.p ], [ %i.bz, %bb.o ]
  %i.cf = phi ptr [ %.pre.i, %bb.p ], [ %i.bw, %bb.o ] ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.ce
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 240
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !63 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i, label %bb.r, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !69
  %.not.i1.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i1.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 67
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ci)
  %i.cn = load ptr, ptr %i.ci, align 8, !tbaa !51
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef signext i8 %i.cp(ptr noundef nonnull align 8 dereferenceable(570) %i.ci, i8 noundef signext 10), !inline_history !75
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
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !36, !nonnull !49, !align !50 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !51
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef zeroext i1 %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.cv), !inline_history !193
  %.v.i214 = select i1 %i.cy, i64 976, i64 984
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.v.i214 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.12, ptr %i.a, align 8, !tbaa !54
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !55 ; 5 uses
  %.not.i215 = icmp eq ptr %i.db, null
  br i1 %.not.i215, label %_ZN11StreamProxylsEPFRSoS0_E.exit217, label %bb.w

bb.w:                                             ; preds = %_ZTW11errorstream.exit213
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !51
  %i.dd = getelementptr i8, ptr %i.dc, i64 -24
  %i.de = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !56
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.db)
  %.pre.i216 = load ptr, ptr %i.cz, align 8, !tbaa !55 ; 2 uses
  %.pre534 = load ptr, ptr %.pre.i216, align 8, !tbaa !51
  %.phi.trans.insert535 = getelementptr i8, ptr %.pre534, i64 -24
  %.pre536.a = load i64, ptr %.phi.trans.insert535, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dj = phi i64 [ %.pre536.a, %bb.x ], [ %i.de, %bb.w ]
  %i.dk = phi ptr [ %.pre.i216, %bb.x ], [ %i.db, %bb.w ] ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dj
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 240
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !63 ; 6 uses
  %.not.i.i.i309 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i309, label %bb.z, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i310

bb.z:                                             ; preds = %bb.y
  call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i310: ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !69
  %.not.i1.i.i311 = icmp eq i8 %i.dp, 0
  br i1 %.not.i1.i.i311, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i310
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 67
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit313

bb.ab:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i310
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dn)
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !51
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef signext i8 %i.du(ptr noundef nonnull align 8 dereferenceable(570) %i.dn, i8 noundef signext 10), !inline_history !75
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit313

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit313: ; preds = %bb.aa, %bb.ab
  %.0.i.i.i312 = phi i8 [ %i.dr, %bb.aa ], [ %i.dv, %bb.ab ]
  %i.dw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, i8 noundef signext %.0.i.i.i312)
  %i.dx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit217

_ZN11StreamProxylsEPFRSoS0_E.exit217:             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit313, %_ZTW11errorstream.exit213, %_ZN11StreamProxylsEPFRSoS0_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store i32 %3, ptr %8, align 4, !tbaa !78
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
  %i.es = load i32, ptr %8, align 4, !tbaa !78
  %i.et = mul i32 %i.es, 1103515245
  %i.eu = add i32 %i.et, 12345                    ; 2 uses
  store i32 %i.eu, ptr %8, align 4, !tbaa !78
  %i.ev = sdiv i32 %i.eu, 65536
  %i.ew = trunc nsw i32 %i.ev to i16
  %.lhs.trunc.i218 = and i16 %i.ew, 32767
  %i.ex = urem i16 %.lhs.trunc.i218, 3
  %i.ey = icmp eq i16 %i.ex, 0
  br i1 %i.ey, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread, label %bb.ad

bb.ac:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2
  %i.ez = load ptr, ptr %i.ej, align 8, !tbaa !88
  %i.fa = ashr i48 %1, 32
  %i.fb = trunc nsw i48 %i.fa to i32              ; 4 uses
  %i.fc = load i16, ptr %i.ea, align 4, !tbaa !84
  %i.fd = sext i16 %i.fc to i32
  %i.fe = sub nsw i32 %i.fb, %i.fd
  %i.ff = load i32, ptr %i.ec, align 8, !tbaa !86
  %i.fg = mul nsw i32 %i.fe, %i.ff
  %i.fh = load i32, ptr %i.eb, align 4, !tbaa !87
  %i.fi = load i16, ptr %i.ee, align 2, !tbaa !94
  %i.fj = sext i16 %i.fi to i32
  %i.fk = add i32 %i.fg, %i.ed
  %i.fl = sub i32 %i.fk, %i.fj
  %i.fm = mul i32 %i.fl, %i.fh
  %i.fn = sext i16 %.sroa.0437.0.extract.trunc to i32 ; 2 uses
  %i.fo = load i16, ptr %i.dz, align 8, !tbaa !80
  %i.fp = sext i16 %i.fo to i32
  %i.fq = sub nsw i32 %i.fn, %i.fp
  %i.fr = add nsw i32 %i.fq, %i.fm
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fs
  store i32 %.sroa.0389.0.insert.ext399, ptr %i.ft, align 4
  %i.fu = load i32, ptr %8, align 4, !tbaa !78
  %i.fv = mul i32 %i.fu, 1103515245
  %i.fw = add i32 %i.fv, 12345                    ; 2 uses
  store i32 %i.fw, ptr %8, align 4, !tbaa !78
  %i.fx = sdiv i32 %i.fw, 65536
  %i.fy = trunc nsw i32 %i.fx to i16
  %.lhs.trunc.i = and i16 %i.fy, 32767
  %i.fz = urem i16 %.lhs.trunc.i, 5
  %9 = or disjoint i16 %i.fz, 8
  br label %bb.as

bb.ad:                                            ; preds = %.preheader463
  %i.ga = load i16, ptr %i.ea, align 4, !tbaa !84 ; 2 uses
  %i.gb = sext i16 %i.ga to i32
  %i.gc = sub nsw i32 %i.el, %i.gb
  %i.gd = load i32, ptr %i.ec, align 8, !tbaa !86
  %i.ge = mul nsw i32 %i.gc, %i.gd                ; 2 uses
  %i.gf = load i32, ptr %i.eb, align 4, !tbaa !87 ; 2 uses
  %i.gg = load i16, ptr %i.ee, align 2, !tbaa !94 ; 3 uses
  %i.gh = sext i16 %i.gg to i32                   ; 2 uses
  %i.gi = add i32 %i.ge, %i.ed
  %i.gj = sub i32 %i.gi, %i.gh
  %i.gk = mul i32 %i.gj, %i.gf
  %i.gl = load i16, ptr %i.dz, align 8, !tbaa !80 ; 2 uses
  %i.gm = sext i16 %i.gl to i32
  %i.gn = sub nsw i32 %i.er, %i.gm                ; 2 uses
  %i.go = add nsw i32 %i.gn, %i.gk
  %i.gp = add i32 %i.ge, %i.ef
  %i.gq = sub i32 %i.gp, %i.gh
  %i.gr = mul i32 %i.gq, %i.gf
  %i.gs = add nsw i32 %i.gn, %i.gr
  %.not.i234 = icmp sgt i16 %i.gl, %i.eq
  %i.gt = load i16, ptr %i.eg, align 2
  %.not6.i = icmp slt i16 %i.gt, %i.eq
  %or.cond.i = select i1 %.not.i234, i1 true, i1 %.not6.i ; 2 uses
  %.not7.i = icmp sgt i16 %i.gg, %i.dy
  %or.cond12.i = select i1 %or.cond.i, i1 true, i1 %.not7.i
  %i.gu = load i16, ptr %i.eh, align 8            ; 2 uses
  %.not8.i = icmp slt i16 %i.gu, %i.dy
  %or.cond14.i = select i1 %or.cond12.i, i1 true, i1 %.not8.i
  %.not9.i = icmp slt i16 %i.ek, %i.ga            ; 2 uses
  %or.cond = select i1 %or.cond14.i, i1 true, i1 %.not9.i
  br i1 %or.cond, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit: ; preds = %bb.ad
  %i.gv = load i16, ptr %i.ei, align 2, !tbaa !85
  %.not447 = icmp sgt i16 %i.ek, %i.gv
  br i1 %.not447, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit
  %i.gw = load ptr, ptr %i.ej, align 8, !tbaa !88
  %i.gx = zext i32 %i.gs to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.gx ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 4, !tbaa !95
  %i.ha = icmp eq i16 %i.gz, 126
  br i1 %i.ha, label %bb.af, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread

bb.af:                                            ; preds = %bb.ae
  store i32 %.sroa.0389.0.insert.ext399, ptr %i.gy, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread: ; preds = %bb.ad, %bb.ae, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit
  %.not7.i241 = icmp sgt i16 %i.gg, %.sroa.5439.0.extract.trunc
  %or.cond12.i242 = select i1 %or.cond.i, i1 true, i1 %.not7.i241
  %.not8.i243 = icmp slt i16 %i.gu, %.sroa.5439.0.extract.trunc
  %or.cond14.i244 = select i1 %or.cond12.i242, i1 true, i1 %.not8.i243
  %or.cond443 = select i1 %or.cond14.i244, i1 true, i1 %.not9.i
  br i1 %or.cond443, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246: ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread
  %i.hb = load i16, ptr %i.ei, align 2, !tbaa !85
  %.not448 = icmp sgt i16 %i.ek, %i.hb
  br i1 %.not448, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246
  %i.hc = load ptr, ptr %i.ej, align 8, !tbaa !88
  %i.hd = zext i32 %i.go to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hd ; 2 uses
  %i.hf = load i16, ptr %i.he, align 4, !tbaa !95
  %i.hg = icmp eq i16 %i.hf, 126
  br i1 %i.hg, label %bb.ah, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread

bb.ah:                                            ; preds = %bb.ag
  store i32 %.sroa.0389.0.insert.ext399, ptr %i.he, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread: ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, %bb.af, %bb.ah, %bb.ag, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246, %.preheader463
  %i.hh = load i32, ptr %8, align 4, !tbaa !78
  %i.hi = mul i32 %i.hh, 1103515245
  %i.hj = add i32 %i.hi, 12345                    ; 2 uses
  store i32 %i.hj, ptr %8, align 4, !tbaa !78
  %i.hk = sdiv i32 %i.hj, 65536
  %i.hl = trunc nsw i32 %i.hk to i16
  %.lhs.trunc.i218.1 = and i16 %i.hl, 32767
  %i.hm = urem i16 %.lhs.trunc.i218.1, 3
  %i.hn = icmp eq i16 %i.hm, 0
  br i1 %i.hn, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1, label %bb.ai

bb.ai:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread
  %i.ho = load i16, ptr %i.ea, align 4, !tbaa !84 ; 2 uses
  %i.hp = sext i16 %i.ho to i32
  %i.hq = sub nsw i32 %i.em, %i.hp
  %i.hr = load i32, ptr %i.ec, align 8, !tbaa !86
  %i.hs = mul nsw i32 %i.hq, %i.hr                ; 2 uses
  %i.ht = load i32, ptr %i.eb, align 4, !tbaa !87 ; 2 uses
  %i.hu = load i16, ptr %i.ee, align 2, !tbaa !94 ; 3 uses
  %i.hv = sext i16 %i.hu to i32                   ; 2 uses
  %i.hw = add i32 %i.hs, %i.ed
  %i.hx = sub i32 %i.hw, %i.hv
  %i.hy = mul i32 %i.hx, %i.ht
  %i.hz = load i16, ptr %i.dz, align 8, !tbaa !80 ; 2 uses
  %i.ia = sext i16 %i.hz to i32
  %i.ib = sub nsw i32 %i.er, %i.ia                ; 2 uses
  %i.ic = add nsw i32 %i.ib, %i.hy
  %i.id = add i32 %i.hs, %i.ef
  %i.ie = sub i32 %i.id, %i.hv
  %i.if = mul i32 %i.ie, %i.ht
  %i.ig = add nsw i32 %i.ib, %i.if
  %.not.i234.1 = icmp sgt i16 %i.hz, %i.eq
  %i.ih = load i16, ptr %i.eg, align 2
  %.not6.i.1 = icmp slt i16 %i.ih, %i.eq
  %or.cond.i.1 = select i1 %.not.i234.1, i1 true, i1 %.not6.i.1 ; 2 uses
  %.not7.i.1 = icmp sgt i16 %i.hu, %i.dy
  %or.cond12.i.1 = select i1 %or.cond.i.1, i1 true, i1 %.not7.i.1
  %i.ii = load i16, ptr %i.eh, align 8            ; 2 uses
  %.not8.i.1 = icmp slt i16 %i.ii, %i.dy
  %or.cond14.i.1 = select i1 %or.cond12.i.1, i1 true, i1 %.not8.i.1
  %.not9.i.1 = icmp sgt i16 %i.ho, %.sroa.8441.0.extract.trunc ; 2 uses
  %or.cond.1 = select i1 %or.cond14.i.1, i1 true, i1 %.not9.i.1
  br i1 %or.cond.1, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.1, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.1

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.1: ; preds = %bb.ai
  %i.ij = load i16, ptr %i.ei, align 2, !tbaa !85
  %.not447.1 = icmp slt i16 %i.ij, %.sroa.8441.0.extract.trunc
  br i1 %.not447.1, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.1, label %bb.aj

bb.aj:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.1
  %i.ik = load ptr, ptr %i.ej, align 8, !tbaa !88
  %i.il = zext i32 %i.ig to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.il ; 2 uses
  %i.in = load i16, ptr %i.im, align 4, !tbaa !95
  %i.io = icmp eq i16 %i.in, 126
  br i1 %i.io, label %bb.ak, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.1

bb.ak:                                            ; preds = %bb.aj
  store i32 %.sroa.0389.0.insert.ext399, ptr %i.im, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.1: ; preds = %bb.aj, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.1, %bb.ai
  %.not7.i241.1 = icmp sgt i16 %i.hu, %.sroa.5439.0.extract.trunc
  %or.cond12.i242.1 = select i1 %or.cond.i.1, i1 true, i1 %.not7.i241.1
  %.not8.i243.1 = icmp slt i16 %i.ii, %.sroa.5439.0.extract.trunc
  %or.cond14.i244.1 = select i1 %or.cond12.i242.1, i1 true, i1 %.not8.i243.1
  %or.cond443.1 = select i1 %or.cond14.i244.1, i1 true, i1 %.not9.i.1
  br i1 %or.cond443.1, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.1

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.1: ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.1
  %i.ip = load i16, ptr %i.ei, align 2, !tbaa !85
  %.not448.1 = icmp slt i16 %i.ip, %.sroa.8441.0.extract.trunc
  br i1 %.not448.1, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1, label %bb.al

bb.al:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.1
  %i.iq = load ptr, ptr %i.ej, align 8, !tbaa !88
  %i.ir = zext i32 %i.ic to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.ir ; 2 uses
  %i.it = load i16, ptr %i.is, align 4, !tbaa !95
  %i.iu = icmp eq i16 %i.it, 126
  br i1 %i.iu, label %bb.am, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1

bb.am:                                            ; preds = %bb.al
  store i32 %.sroa.0389.0.insert.ext399, ptr %i.is, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1: ; preds = %bb.am, %bb.al, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.1, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.1, %bb.ak, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread
  %i.iv = load i32, ptr %8, align 4, !tbaa !78
  %i.iw = mul i32 %i.iv, 1103515245
  %i.ix = add i32 %i.iw, 12345                    ; 2 uses
  store i32 %i.ix, ptr %8, align 4, !tbaa !78
  %i.iy = sdiv i32 %i.ix, 65536
  %i.iz = trunc nsw i32 %i.iy to i16
  %.lhs.trunc.i218.2 = and i16 %i.iz, 32767
  %i.ja = urem i16 %.lhs.trunc.i218.2, 3
  %i.jb = icmp eq i16 %i.ja, 0
  br i1 %i.jb, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2, label %bb.an

bb.an:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1
  %i.jc = load i16, ptr %i.ea, align 4, !tbaa !84 ; 2 uses
  %i.jd = sext i16 %i.jc to i32
  %i.je = sub nsw i32 %i.eo, %i.jd
  %i.jf = load i32, ptr %i.ec, align 8, !tbaa !86
  %i.jg = mul nsw i32 %i.je, %i.jf                ; 2 uses
  %i.jh = load i32, ptr %i.eb, align 4, !tbaa !87 ; 2 uses
  %i.ji = load i16, ptr %i.ee, align 2, !tbaa !94 ; 3 uses
  %i.jj = sext i16 %i.ji to i32                   ; 2 uses
  %i.jk = add i32 %i.jg, %i.ed
  %i.jl = sub i32 %i.jk, %i.jj
  %i.jm = mul i32 %i.jl, %i.jh
  %i.jn = load i16, ptr %i.dz, align 8, !tbaa !80 ; 2 uses
  %i.jo = sext i16 %i.jn to i32
  %i.jp = sub nsw i32 %i.er, %i.jo                ; 2 uses
  %i.jq = add nsw i32 %i.jp, %i.jm
  %i.jr = add i32 %i.jg, %i.ef
  %i.js = sub i32 %i.jr, %i.jj
  %i.jt = mul i32 %i.js, %i.jh
  %i.ju = add nsw i32 %i.jp, %i.jt
  %.not.i234.2 = icmp sgt i16 %i.jn, %i.eq
  %i.jv = load i16, ptr %i.eg, align 2
  %.not6.i.2 = icmp slt i16 %i.jv, %i.eq
  %or.cond.i.2 = select i1 %.not.i234.2, i1 true, i1 %.not6.i.2 ; 2 uses
  %.not7.i.2 = icmp sgt i16 %i.ji, %i.dy
  %or.cond12.i.2 = select i1 %or.cond.i.2, i1 true, i1 %.not7.i.2
  %i.jw = load i16, ptr %i.eh, align 8            ; 2 uses
  %.not8.i.2 = icmp slt i16 %i.jw, %i.dy
  %or.cond14.i.2 = select i1 %or.cond12.i.2, i1 true, i1 %.not8.i.2
  %.not9.i.2 = icmp slt i16 %i.en, %i.jc          ; 2 uses
  %or.cond.2 = select i1 %or.cond14.i.2, i1 true, i1 %.not9.i.2
  br i1 %or.cond.2, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.2, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.2

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.2: ; preds = %bb.an
  %i.jx = load i16, ptr %i.ei, align 2, !tbaa !85
  %.not447.2 = icmp sgt i16 %i.en, %i.jx
  br i1 %.not447.2, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.2, label %bb.ao

bb.ao:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.2
  %i.jy = load ptr, ptr %i.ej, align 8, !tbaa !88
  %i.jz = zext i32 %i.ju to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.jz ; 2 uses
  %i.kb = load i16, ptr %i.ka, align 4, !tbaa !95
  %i.kc = icmp eq i16 %i.kb, 126
  br i1 %i.kc, label %bb.ap, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.2

bb.ap:                                            ; preds = %bb.ao
  store i32 %.sroa.0389.0.insert.ext399, ptr %i.ka, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.2: ; preds = %bb.ao, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.2, %bb.an
  %.not7.i241.2 = icmp sgt i16 %i.ji, %.sroa.5439.0.extract.trunc
  %or.cond12.i242.2 = select i1 %or.cond.i.2, i1 true, i1 %.not7.i241.2
  %.not8.i243.2 = icmp slt i16 %i.jw, %.sroa.5439.0.extract.trunc
  %or.cond14.i244.2 = select i1 %or.cond12.i242.2, i1 true, i1 %.not8.i243.2
  %or.cond443.2 = select i1 %or.cond14.i244.2, i1 true, i1 %.not9.i.2
  br i1 %or.cond443.2, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.2

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.2: ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.2
  %i.kd = load i16, ptr %i.ei, align 2, !tbaa !85
  %.not448.2 = icmp sgt i16 %i.en, %i.kd
  br i1 %.not448.2, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2, label %bb.aq

bb.aq:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.2
  %i.ke = load ptr, ptr %i.ej, align 8, !tbaa !88
  %i.kf = zext i32 %i.jq to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.kf ; 2 uses
  %i.kh = load i16, ptr %i.kg, align 4, !tbaa !95
  %i.ki = icmp eq i16 %i.kh, 126
  br i1 %i.ki, label %bb.ar, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2

bb.ar:                                            ; preds = %bb.aq
  store i32 %.sroa.0389.0.insert.ext399, ptr %i.kg, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2: ; preds = %bb.ar, %bb.aq, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.2, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.2, %bb.ap, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1
  %indvars.iv.next = add nsw i32 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, 2
  br i1 %exitcond.not, label %bb.ac, label %.preheader463, !llvm.loop !194

_ZN6BufferIhEC2Em.exit:                           ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread
  %i.kj = call noalias noundef nonnull dereferenceable(245) ptr @_Znam(i64 noundef 245) #25 ; 27 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(245) %i.kj, i8 0, i64 245, i1 false), !tbaa !16
  %scevgep = getelementptr inbounds nuw i8, ptr %i.kj, i64 79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep, i8 1, i64 3, i1 false), !tbaa !16
  %scevgep.1 = getelementptr inbounds nuw i8, ptr %i.kj, i64 86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.1, i8 1, i64 3, i1 false), !tbaa !16
  %scevgep.2 = getelementptr inbounds nuw i8, ptr %i.kj, i64 93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.2, i8 1, i64 3, i1 false), !tbaa !16
  %scevgep.1494 = getelementptr inbounds nuw i8, ptr %i.kj, i64 114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.1494, i8 1, i64 3, i1 false), !tbaa !16
  %scevgep.1.1 = getelementptr inbounds nuw i8, ptr %i.kj, i64 121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.1.1, i8 1, i64 3, i1 false), !tbaa !16
  %scevgep.2.1 = getelementptr inbounds nuw i8, ptr %i.kj, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.2.1, i8 1, i64 3, i1 false), !tbaa !16
  %scevgep.2496 = getelementptr inbounds nuw i8, ptr %i.kj, i64 149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.2496, i8 1, i64 3, i1 false), !tbaa !16
  %scevgep.1.2 = getelementptr inbounds nuw i8, ptr %i.kj, i64 156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.1.2, i8 1, i64 3, i1 false), !tbaa !16
  %scevgep.2.2 = getelementptr inbounds nuw i8, ptr %i.kj, i64 163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.2.2, i8 1, i64 3, i1 false), !tbaa !16
  br label %.preheader459

bb.as:                                            ; preds = %bb.ac, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread
  %.0158467 = phi i16 [ 0, %bb.ac ], [ %i.li, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread ]
  %.sroa.8367.0466 = phi i16 [ %.sroa.5439.0.extract.trunc, %bb.ac ], [ %i.lh, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread ] ; 5 uses
  %i.kk = load i16, ptr %i.dz, align 8, !tbaa !80 ; 2 uses
  %.not.i251 = icmp sgt i16 %i.kk, %.sroa.0437.0.extract.trunc
  %i.kl = load i16, ptr %i.eg, align 2
  %.not6.i252 = icmp slt i16 %i.kl, %.sroa.0437.0.extract.trunc
  %or.cond.i253 = select i1 %.not.i251, i1 true, i1 %.not6.i252
  %i.km = load i16, ptr %i.ee, align 2            ; 2 uses
  %.not7.i254 = icmp sgt i16 %i.km, %.sroa.8367.0466
  %or.cond12.i255 = select i1 %or.cond.i253, i1 true, i1 %.not7.i254
  %i.kn = load i16, ptr %i.eh, align 8
  %.not8.i256 = icmp slt i16 %i.kn, %.sroa.8367.0466
  %or.cond14.i257 = select i1 %or.cond12.i255, i1 true, i1 %.not8.i256
  br i1 %or.cond14.i257, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ko = load i16, ptr %i.ea, align 4, !tbaa !84
  %i.kp = sext i16 %i.ko to i32                   ; 2 uses
  %.not9.i258 = icmp slt i32 %i.fb, %i.kp
  br i1 %.not9.i258, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259: ; preds = %bb.at
  %i.kq = load i16, ptr %i.ei, align 2, !tbaa !85
  %i.kr = sext i16 %i.kq to i32
  %.not446 = icmp sgt i32 %i.fb, %i.kr
  br i1 %.not446, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread, label %bb.au

bb.au:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259
  %i.ks = sub nsw i32 %i.fb, %i.kp
  %i.kt = load i32, ptr %i.ec, align 8, !tbaa !86
  %i.ku = mul nsw i32 %i.ks, %i.kt
  %i.kv = load i32, ptr %i.eb, align 4, !tbaa !87
  %i.kw = sext i16 %.sroa.8367.0466 to i32
  %i.kx = sext i16 %i.km to i32
  %i.ky = sub nsw i32 %i.kw, %i.kx
  %i.kz = add i32 %i.ky, %i.ku
  %i.la = mul i32 %i.kz, %i.kv
  %i.lb = sext i16 %i.kk to i32
  %i.lc = sub nsw i32 %i.fn, %i.lb
  %i.ld = add nsw i32 %i.lc, %i.la
  %i.le = load ptr, ptr %i.ej, align 8, !tbaa !88
  %i.lf = zext i32 %i.ld to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.lf
  store i32 %.sroa.0389.0.insert.ext399, ptr %i.lg, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread: ; preds = %bb.as, %bb.at, %bb.au, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259
  %i.lh = add i16 %.sroa.8367.0466, 1
  %i.li = add nuw nsw i16 %.0158467, 1            ; 2 uses
  %10 = icmp samesign ugt i16 %9, %i.li
  br i1 %10, label %bb.as, label %_ZN6BufferIhEC2Em.exit, !llvm.loop !195

.preheader456:                                    ; preds = %.preheader458
  %i.lj = add i16 %.sroa.0437.0.extract.trunc, -3 ; 3 uses
  %i.lk = sext i16 %i.lj to i32
  %.sroa.0386.0.insert.ext = zext i16 %.0143 to i32 ; 7 uses
  %i.ll = add i16 %.sroa.0437.0.extract.trunc, -2 ; 2 uses
  %i.lm = add i16 %.sroa.0437.0.extract.trunc, -1 ; 2 uses
  %i.ln = add i16 %.sroa.0437.0.extract.trunc, 1  ; 2 uses
  %i.lo = add i16 %.sroa.0437.0.extract.trunc, 2  ; 2 uses
  %i.lp = add i16 %.sroa.0437.0.extract.trunc, 3  ; 2 uses
  br label %.preheader

.preheader459:                                    ; preds = %_ZN6BufferIhEC2Em.exit, %.preheader458
  %.0153475 = phi i32 [ %i.nx, %.preheader458 ], [ 0, %_ZN6BufferIhEC2Em.exit ]
  %i.lq = invoke noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef -3, i32 noundef 2)
          to label %bb.av unwind label %_ZN6BufferIhED2Ev.exit308

bb.av:                                            ; preds = %.preheader459
  %i.lr = trunc i32 %i.lq to i16                  ; 2 uses
  %i.ls = invoke noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef -2, i32 noundef 1)
          to label %bb.aw unwind label %_ZN6BufferIhED2Ev.exit308

bb.aw:                                            ; preds = %bb.av
  %i.lt = invoke noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef -3, i32 noundef 2)
          to label %.preheader458 unwind label %_ZN6BufferIhED2Ev.exit308

.preheader458:                                    ; preds = %bb.aw
  %i.lu = trunc i32 %i.ls to i16                  ; 2 uses
  %i.lv = trunc i32 %i.lt to i16                  ; 2 uses
  %i.lw = sext i16 %i.lv to i64
  %i.lx = mul nsw i64 %i.lw, 5
  %i.ly = add nsw i64 %i.lx, 15                   ; 2 uses
  %i.lz = sext i16 %i.lr to i64                   ; 4 uses
  %i.ma = sext i16 %i.lu to i64                   ; 2 uses
  %i.mb = add nsw i64 %i.ly, %i.ma
  %i.mc = mul nsw i64 %i.mb, 7                    ; 2 uses
  %i.md = add nsw i64 %i.mc, %i.lz
  %i.me = shl nsw i64 %i.md, 32
  %sext = add nsw i64 %i.me, 73014444032
  %i.mf = ashr exact i64 %sext, 32
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.mf
  store i8 1, ptr %i.mg, align 1, !tbaa !16
  %i.mh = add i16 %i.lr, 1
  %i.mi = sext i16 %i.mh to i64                   ; 4 uses
  %i.mj = add nsw i64 %i.mc, %i.mi
  %i.mk = shl nsw i64 %i.mj, 32
  %sext.1 = add nsw i64 %i.mk, 73014444032
  %i.ml = ashr exact i64 %sext.1, 32
  %i.mm = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.ml
  store i8 1, ptr %i.mm, align 1, !tbaa !16
  %i.mn = add i16 %i.lu, 1
  %i.mo = sext i16 %i.mn to i64                   ; 2 uses
  %i.mp = add nsw i64 %i.ly, %i.mo
  %i.mq = mul nsw i64 %i.mp, 7                    ; 2 uses
  %i.mr = add nsw i64 %i.mq, %i.lz
  %i.ms = shl nsw i64 %i.mr, 32
  %sext.1505 = add nsw i64 %i.ms, 73014444032
  %i.mt = ashr exact i64 %sext.1505, 32
  %i.mu = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.mt
  store i8 1, ptr %i.mu, align 1, !tbaa !16
  %i.mv = add nsw i64 %i.mq, %i.mi
  %i.mw = shl nsw i64 %i.mv, 32
  %sext.1.1 = add nsw i64 %i.mw, 73014444032
  %i.mx = ashr exact i64 %sext.1.1, 32
  %i.my = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.mx
  store i8 1, ptr %i.my, align 1, !tbaa !16
  %i.mz = add i16 %i.lv, 1
  %i.na = sext i16 %i.mz to i64
  %i.nb = mul nsw i64 %i.na, 5
  %i.nc = add nsw i64 %i.nb, 15                   ; 2 uses
  %i.nd = add nsw i64 %i.nc, %i.ma
  %i.ne = mul nsw i64 %i.nd, 7                    ; 2 uses
  %i.nf = add nsw i64 %i.ne, %i.lz
  %i.ng = shl nsw i64 %i.nf, 32
  %sext.1511 = add nsw i64 %i.ng, 73014444032
  %i.nh = ashr exact i64 %sext.1511, 32
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.nh
  store i8 1, ptr %i.ni, align 1, !tbaa !16
  %i.nj = add nsw i64 %i.ne, %i.mi
  %i.nk = shl nsw i64 %i.nj, 32
  %sext.1.1512 = add nsw i64 %i.nk, 73014444032
  %i.nl = ashr exact i64 %sext.1.1512, 32
  %i.nm = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.nl
  store i8 1, ptr %i.nm, align 1, !tbaa !16
  %i.nn = add nsw i64 %i.nc, %i.mo
  %i.no = mul nsw i64 %i.nn, 7                    ; 2 uses
  %i.np = add nsw i64 %i.no, %i.lz
  %i.nq = shl nsw i64 %i.np, 32
  %sext.1505.1 = add nsw i64 %i.nq, 73014444032
  %i.nr = ashr exact i64 %sext.1505.1, 32
  %i.ns = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.nr
  store i8 1, ptr %i.ns, align 1, !tbaa !16
  %i.nt = add nsw i64 %i.no, %i.mi
  %i.nu = shl nsw i64 %i.nt, 32
  %sext.1.1.1 = add nsw i64 %i.nu, 73014444032
  %i.nv = ashr exact i64 %sext.1.1.1, 32
  %i.nw = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.nv
  store i8 1, ptr %i.nw, align 1, !tbaa !16
  %i.nx = add nuw nsw i32 %.0153475, 1            ; 2 uses
  %exitcond513.not = icmp eq i32 %i.nx, 30
  br i1 %exitcond513.not, label %.preheader456, label %.preheader459, !llvm.loop !196

_ZN6BufferIhED2Ev.exit308:                        ; preds = %bb.aw, %bb.av, %.preheader459
  %i.ny = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.kj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ca

.preheader:                                       ; preds = %.preheader456, %bb.ax
  %indvars.iv529 = phi i32 [ -3, %.preheader456 ], [ %indvars.iv.next530, %bb.ax ] ; 2 uses
  %indvars.iv514 = phi i64 [ 0, %.preheader456 ], [ %indvars.iv.next515, %bb.ax ] ; 2 uses
  %i.nz = trunc nsw i32 %indvars.iv529 to i16
  %i.oa = add i16 %i.nz, %.sroa.8441.0.extract.trunc ; 15 uses
  %i.ob = sext i16 %i.oa to i32
  br label %bb.ay

_ZN6BufferIhED2Ev.exit:                           ; preds = %bb.ax
  call void @_ZdaPv(ptr noundef nonnull %i.kj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void

bb.ax:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread.6
  %indvars.iv.next530 = add nsw i32 %indvars.iv529, 1 ; 2 uses
  %indvars.iv.next515 = add nuw nsw i64 %indvars.iv514, 35
  %exitcond532 = icmp eq i32 %indvars.iv.next530, 4
  br i1 %exitcond532, label %_ZN6BufferIhED2Ev.exit, label %.preheader, !llvm.loop !197

bb.ay:                                            ; preds = %.preheader, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread.6
  %indvars.iv525 = phi i32 [ -2, %.preheader ], [ %indvars.iv.next526, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread.6 ] ; 2 uses
  %indvars.iv516 = phi i64 [ %indvars.iv514, %.preheader ], [ %indvars.iv.next517, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread.6 ] ; 8 uses
  %i.oc = trunc nsw i32 %indvars.iv525 to i16
  %i.od = add i16 %.sroa.8367.0466, %i.oc         ; 15 uses
  %i.oe = load i16, ptr %i.ea, align 4, !tbaa !84 ; 2 uses
  %i.of = sext i16 %i.oe to i32
  %i.og = sub nsw i32 %i.ob, %i.of
  %i.oh = load i32, ptr %i.ec, align 8, !tbaa !86
  %i.oi = mul nsw i32 %i.og, %i.oh
  %i.oj = load i32, ptr %i.eb, align 4, !tbaa !87
  %i.ok = sext i16 %i.od to i32
  %i.ol = load i16, ptr %i.ee, align 2, !tbaa !94 ; 6 uses
  %i.om = sext i16 %i.ol to i32
  %i.on = add i32 %i.oi, %i.ok
  %i.oo = sub i32 %i.on, %i.om
  %i.op = mul i32 %i.oo, %i.oj
  %i.oq = load i16, ptr %i.dz, align 8, !tbaa !80 ; 6 uses
  %i.or = sext i16 %i.oq to i32
  %i.os = sub nsw i32 %i.lk, %i.or
  %i.ot = add nsw i32 %i.os, %i.op                ; 7 uses
  %.not.i299 = icmp sgt i16 %i.oq, %i.lj
  %i.ou = load i16, ptr %i.eg, align 2            ; 5 uses
  %.not6.i300 = icmp slt i16 %i.ou, %i.lj
  %or.cond.i301 = select i1 %.not.i299, i1 true, i1 %.not6.i300
  %.not7.i302 = icmp sgt i16 %i.ol, %i.od
  %or.cond12.i303 = select i1 %or.cond.i301, i1 true, i1 %.not7.i302
  %i.ov = load i16, ptr %i.eh, align 8            ; 5 uses
  %.not8.i304 = icmp slt i16 %i.ov, %i.od
  %or.cond14.i305 = select i1 %or.cond12.i303, i1 true, i1 %.not8.i304
  %.not9.i306 = icmp slt i16 %i.oa, %i.oe
  %or.cond616 = select i1 %or.cond14.i305, i1 true, i1 %.not9.i306
  br i1 %or.cond616, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307: ; preds = %bb.ay
  %i.ow = load i16, ptr %i.ei, align 2, !tbaa !85
  %.not444 = icmp sgt i16 %i.oa, %i.ow
  br i1 %.not444, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread, label %bb.az

bb.az:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307
  %i.ox = load ptr, ptr %i.ej, align 8, !tbaa !88
  %i.oy = zext i32 %i.ot to i64
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.oy ; 2 uses
  %i.pa = load i16, ptr %i.oz, align 4, !tbaa !95
  %i.pb = and i16 %i.pa, -2
  %switch = icmp eq i16 %i.pb, 126
  br i1 %switch, label %bb.ba, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread

bb.ba:                                            ; preds = %bb.az
  %i.pc = getelementptr inbounds nuw i8, ptr %i.kj, i64 %indvars.iv516
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !16
  %i.pe = icmp eq i8 %i.pd, 1
  br i1 %i.pe, label %bb.bb, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread

bb.bb:                                            ; preds = %bb.ba
  store i32 %.sroa.0386.0.insert.ext, ptr %i.oz, align 4
  %.pre537.a = load i16, ptr %i.dz, align 8, !tbaa !80
  %.pre538.a = load i16, ptr %i.eg, align 2
  %.pre539.a = load i16, ptr %i.ee, align 2
  %.pre540.a = load i16, ptr %i.eh, align 8
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread: ; preds = %bb.az, %bb.ay, %bb.ba, %bb.bb, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307
  %i.pf = phi i16 [ %i.ov, %bb.az ], [ %i.ov, %bb.ay ], [ %i.ov, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307 ], [ %i.ov, %bb.ba ], [ %.pre540.a, %bb.bb ] ; 6 uses
  %i.pg = phi i16 [ %i.ol, %bb.az ], [ %i.ol, %bb.ay ], [ %i.ol, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307 ], [ %i.ol, %bb.ba ], [ %.pre539.a, %bb.bb ] ; 6 uses
  %i.ph = phi i16 [ %i.ou, %bb.az ], [ %i.ou, %bb.ay ], [ %i.ou, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307 ], [ %i.ou, %bb.ba ], [ %.pre538.a, %bb.bb ] ; 6 uses
  %i.pi = phi i16 [ %i.oq, %bb.az ], [ %i.oq, %bb.ay ], [ %i.oq, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307 ], [ %i.oq, %bb.ba ], [ %.pre537.a, %bb.bb ] ; 6 uses
  %i.pj = add i32 %i.ot, 1
  %.not.i299.1 = icmp sgt i16 %i.pi, %i.ll
  %.not6.i300.1 = icmp slt i16 %i.ph, %i.ll
  %or.cond.i301.1 = select i1 %.not.i299.1, i1 true, i1 %.not6.i300.1
  %.not7.i302.1 = icmp sgt i16 %i.pg, %i.od
end_hunk_0
