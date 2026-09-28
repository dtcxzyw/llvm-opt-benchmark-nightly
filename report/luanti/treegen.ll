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
  %.pre531.a = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ce = phi i64 [ %.pre531.a, %bb.p ], [ %i.bz, %bb.o ]
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
  %.pre532 = load ptr, ptr %.pre.i216, align 8, !tbaa !56
  %.phi.trans.insert533 = getelementptr i8, ptr %.pre532, i64 -24
  %.pre534.a = load i64, ptr %.phi.trans.insert533, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dj = phi i64 [ %.pre534.a, %bb.x ], [ %i.de, %bb.w ]
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
  %i.jt = sub i32 %i.js, %i.jk
  %i.ju = mul i32 %i.jt, %i.ji
  %i.jv = add nsw i32 %i.jq, %i.ju
  %.not.i234.2 = icmp sgt i16 %i.jo, %i.eq
  %i.jw = load i16, ptr %i.eg, align 2
  %.not6.i.2 = icmp slt i16 %i.jw, %i.eq
  %or.cond.i.2 = select i1 %.not.i234.2, i1 true, i1 %.not6.i.2 ; 2 uses
  %.not7.i.2 = icmp sgt i16 %i.jj, %i.dy
  %or.cond12.i.2 = select i1 %or.cond.i.2, i1 true, i1 %.not7.i.2
  %i.jx = load i16, ptr %i.eh, align 8            ; 2 uses
  %.not8.i.2 = icmp slt i16 %i.jx, %i.dy
  %or.cond14.i.2 = select i1 %or.cond12.i.2, i1 true, i1 %.not8.i.2
  %.not9.i.2 = icmp slt i16 %i.en, %i.jd          ; 2 uses
  %or.cond.2 = select i1 %or.cond14.i.2, i1 true, i1 %.not9.i.2
  br i1 %or.cond.2, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.2, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.2

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.2: ; preds = %bb.an
  %i.jy = load i16, ptr %i.ei, align 2, !tbaa !85
  %.not447.2 = icmp sgt i16 %i.en, %i.jy
  br i1 %.not447.2, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.2, label %bb.ao

bb.ao:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.2
  %i.jz = load ptr, ptr %i.ej, align 8, !tbaa !90
  %i.ka = zext i32 %i.jv to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.ka ; 2 uses
  %i.kc = load i16, ptr %i.kb, align 4, !tbaa !93
  %i.kd = icmp eq i16 %i.kc, 126
  br i1 %i.kd, label %bb.ap, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.2

bb.ap:                                            ; preds = %bb.ao
  store i32 %.sroa.0389.0.insert.ext399, ptr %i.kb, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.2: ; preds = %bb.ao, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.2, %bb.an
  %.not7.i241.2 = icmp sgt i16 %i.jj, %.sroa.5439.0.extract.trunc
  %or.cond12.i242.2 = select i1 %or.cond.i.2, i1 true, i1 %.not7.i241.2
  %.not8.i243.2 = icmp slt i16 %i.jx, %.sroa.5439.0.extract.trunc
  %or.cond14.i244.2 = select i1 %or.cond12.i242.2, i1 true, i1 %.not8.i243.2
  %or.cond443.2 = select i1 %or.cond14.i244.2, i1 true, i1 %.not9.i.2
  br i1 %or.cond443.2, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.2

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.2: ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.2
  %i.ke = load i16, ptr %i.ei, align 2, !tbaa !85
  %.not448.2 = icmp sgt i16 %i.en, %i.ke
  br i1 %.not448.2, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2, label %bb.aq

bb.aq:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.2
  %i.kf = load ptr, ptr %i.ej, align 8, !tbaa !90
  %i.kg = zext i32 %i.jr to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.kg ; 2 uses
  %i.ki = load i16, ptr %i.kh, align 4, !tbaa !93
  %i.kj = icmp eq i16 %i.ki, 126
  br i1 %i.kj, label %bb.ar, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2

bb.ar:                                            ; preds = %bb.aq
  store i32 %.sroa.0389.0.insert.ext399, ptr %i.kh, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.2: ; preds = %bb.ar, %bb.aq, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.2, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.2, %bb.ap, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.1
  %indvars.iv.next = add nsw i32 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, 2
  br i1 %exitcond.not, label %bb.ac, label %.preheader463, !llvm.loop !197

_ZN6BufferIhEC2Em.exit:                           ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread
  %i.kk = call noalias noundef nonnull dereferenceable(245) ptr @_Znam(i64 noundef 245) #25 ; 27 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(245) %i.kk, i8 0, i64 245, i1 false), !tbaa !20
  %scevgep = getelementptr inbounds nuw i8, ptr %i.kk, i64 79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep, i8 1, i64 3, i1 false), !tbaa !20
  %scevgep.1 = getelementptr inbounds nuw i8, ptr %i.kk, i64 86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.1, i8 1, i64 3, i1 false), !tbaa !20
  %scevgep.2 = getelementptr inbounds nuw i8, ptr %i.kk, i64 93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.2, i8 1, i64 3, i1 false), !tbaa !20
  %scevgep.1494 = getelementptr inbounds nuw i8, ptr %i.kk, i64 114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.1494, i8 1, i64 3, i1 false), !tbaa !20
  %scevgep.1.1 = getelementptr inbounds nuw i8, ptr %i.kk, i64 121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.1.1, i8 1, i64 3, i1 false), !tbaa !20
  %scevgep.2.1 = getelementptr inbounds nuw i8, ptr %i.kk, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.2.1, i8 1, i64 3, i1 false), !tbaa !20
  %scevgep.2496 = getelementptr inbounds nuw i8, ptr %i.kk, i64 149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.2496, i8 1, i64 3, i1 false), !tbaa !20
  %scevgep.1.2 = getelementptr inbounds nuw i8, ptr %i.kk, i64 156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.1.2, i8 1, i64 3, i1 false), !tbaa !20
  %scevgep.2.2 = getelementptr inbounds nuw i8, ptr %i.kk, i64 163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.2.2, i8 1, i64 3, i1 false), !tbaa !20
  br label %.preheader459

bb.as:                                            ; preds = %bb.ac, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread
  %.0158467 = phi i16 [ 0, %bb.ac ], [ %i.lj, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread ] ; 2 uses
  %.sroa.8367.0466 = phi i16 [ %.sroa.5439.0.extract.trunc, %bb.ac ], [ %i.li, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread ] ; 5 uses
  %i.kl = load i16, ptr %i.dz, align 8, !tbaa !83 ; 2 uses
  %.not.i251 = icmp sgt i16 %i.kl, %.sroa.0437.0.extract.trunc
  %i.km = load i16, ptr %i.eg, align 2
  %.not6.i252 = icmp slt i16 %i.km, %.sroa.0437.0.extract.trunc
  %or.cond.i253 = select i1 %.not.i251, i1 true, i1 %.not6.i252
  %i.kn = load i16, ptr %i.ee, align 2            ; 2 uses
  %.not7.i254 = icmp sgt i16 %i.kn, %.sroa.8367.0466
  %or.cond12.i255 = select i1 %or.cond.i253, i1 true, i1 %.not7.i254
  %i.ko = load i16, ptr %i.eh, align 8
  %.not8.i256 = icmp slt i16 %i.ko, %.sroa.8367.0466
  %or.cond14.i257 = select i1 %or.cond12.i255, i1 true, i1 %.not8.i256
  br i1 %or.cond14.i257, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kp = load i16, ptr %i.ea, align 4, !tbaa !84
  %i.kq = sext i16 %i.kp to i32                   ; 2 uses
  %.not9.i258 = icmp slt i32 %i.fb, %i.kq
  br i1 %.not9.i258, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259: ; preds = %bb.at
  %i.kr = load i16, ptr %i.ei, align 2, !tbaa !85
  %i.ks = sext i16 %i.kr to i32
  %.not446 = icmp sgt i32 %i.fb, %i.ks
  br i1 %.not446, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread, label %bb.au

bb.au:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259
  %i.kt = sub nsw i32 %i.fb, %i.kq
  %i.ku = load i32, ptr %i.ec, align 8, !tbaa !86
  %i.kv = mul nsw i32 %i.kt, %i.ku
  %i.kw = load i32, ptr %i.eb, align 4, !tbaa !87
  %i.kx = sext i16 %.sroa.8367.0466 to i32
  %i.ky = sext i16 %i.kn to i32
  %i.kz = sub nsw i32 %i.kx, %i.ky
  %i.la = add i32 %i.kz, %i.kv
  %i.lb = mul i32 %i.la, %i.kw
  %i.lc = sext i16 %i.kl to i32
  %i.ld = sub nsw i32 %i.fn, %i.lc
  %i.le = add nsw i32 %i.ld, %i.lb
  %i.lf = load ptr, ptr %i.ej, align 8, !tbaa !90
  %i.lg = zext i32 %i.le to i64
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.lg
  store i32 %.sroa.0389.0.insert.ext399, ptr %i.lh, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259.thread: ; preds = %bb.as, %bb.at, %bb.au, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit259
  %i.li = add i16 %.sroa.8367.0466, 1
  %i.lj = add nuw nsw i16 %.0158467, 1
  %9 = icmp samesign ugt i16 %i.ga, %.0158467
  br i1 %9, label %bb.as, label %_ZN6BufferIhEC2Em.exit, !llvm.loop !198

.preheader456:                                    ; preds = %.preheader458
  %i.lk = add i16 %.sroa.0437.0.extract.trunc, -3 ; 3 uses
  %i.ll = sext i16 %i.lk to i32
  %.sroa.0386.0.insert.ext = zext i16 %.0143 to i32 ; 7 uses
  %i.lm = add i16 %.sroa.0437.0.extract.trunc, -2 ; 2 uses
  %i.ln = add i16 %.sroa.0437.0.extract.trunc, -1 ; 2 uses
  %i.lo = add i16 %.sroa.0437.0.extract.trunc, 1  ; 2 uses
  %i.lp = add i16 %.sroa.0437.0.extract.trunc, 2  ; 2 uses
  %i.lq = add i16 %.sroa.0437.0.extract.trunc, 3  ; 2 uses
  br label %.preheader

.preheader459:                                    ; preds = %_ZN6BufferIhEC2Em.exit, %.preheader458
  %.0153475 = phi i32 [ %i.ny, %.preheader458 ], [ 0, %_ZN6BufferIhEC2Em.exit ]
  %i.lr = invoke noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef -3, i32 noundef 2)
          to label %bb.av unwind label %_ZN6BufferIhED2Ev.exit308

bb.av:                                            ; preds = %.preheader459
  %i.ls = trunc i32 %i.lr to i16                  ; 2 uses
  %i.lt = invoke noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef -2, i32 noundef 1)
          to label %bb.aw unwind label %_ZN6BufferIhED2Ev.exit308

bb.aw:                                            ; preds = %bb.av
  %i.lu = invoke noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef -3, i32 noundef 2)
          to label %.preheader458 unwind label %_ZN6BufferIhED2Ev.exit308

.preheader458:                                    ; preds = %bb.aw
  %i.lv = trunc i32 %i.lt to i16                  ; 2 uses
  %i.lw = trunc i32 %i.lu to i16                  ; 2 uses
  %i.lx = sext i16 %i.lw to i64
  %i.ly = mul nsw i64 %i.lx, 5
  %i.lz = add nsw i64 %i.ly, 15                   ; 2 uses
  %i.ma = sext i16 %i.ls to i64                   ; 4 uses
  %i.mb = sext i16 %i.lv to i64                   ; 2 uses
  %i.mc = add nsw i64 %i.lz, %i.mb
  %i.md = mul nsw i64 %i.mc, 7                    ; 2 uses
  %i.me = add nsw i64 %i.md, %i.ma
  %i.mf = shl nsw i64 %i.me, 32
  %sext = add nsw i64 %i.mf, 73014444032
  %i.mg = ashr exact i64 %sext, 32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.mg
  store i8 1, ptr %i.mh, align 1, !tbaa !20
  %i.mi = add i16 %i.ls, 1
  %i.mj = sext i16 %i.mi to i64                   ; 4 uses
  %i.mk = add nsw i64 %i.md, %i.mj
  %i.ml = shl nsw i64 %i.mk, 32
  %sext.1 = add nsw i64 %i.ml, 73014444032
  %i.mm = ashr exact i64 %sext.1, 32
  %i.mn = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.mm
  store i8 1, ptr %i.mn, align 1, !tbaa !20
  %i.mo = add i16 %i.lv, 1
  %i.mp = sext i16 %i.mo to i64                   ; 2 uses
  %i.mq = add nsw i64 %i.lz, %i.mp
  %i.mr = mul nsw i64 %i.mq, 7                    ; 2 uses
  %i.ms = add nsw i64 %i.mr, %i.ma
  %i.mt = shl nsw i64 %i.ms, 32
  %sext.1504 = add nsw i64 %i.mt, 73014444032
  %i.mu = ashr exact i64 %sext.1504, 32
  %i.mv = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.mu
  store i8 1, ptr %i.mv, align 1, !tbaa !20
  %i.mw = add nsw i64 %i.mr, %i.mj
  %i.mx = shl nsw i64 %i.mw, 32
  %sext.1.1 = add nsw i64 %i.mx, 73014444032
  %i.my = ashr exact i64 %sext.1.1, 32
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.my
  store i8 1, ptr %i.mz, align 1, !tbaa !20
  %i.na = add i16 %i.lw, 1
  %i.nb = sext i16 %i.na to i64
  %i.nc = mul nsw i64 %i.nb, 5
  %i.nd = add nsw i64 %i.nc, 15                   ; 2 uses
  %i.ne = add nsw i64 %i.nd, %i.mb
  %i.nf = mul nsw i64 %i.ne, 7                    ; 2 uses
  %i.ng = add nsw i64 %i.nf, %i.ma
  %i.nh = shl nsw i64 %i.ng, 32
  %sext.1509 = add nsw i64 %i.nh, 73014444032
  %i.ni = ashr exact i64 %sext.1509, 32
  %i.nj = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.ni
  store i8 1, ptr %i.nj, align 1, !tbaa !20
  %i.nk = add nsw i64 %i.nf, %i.mj
  %i.nl = shl nsw i64 %i.nk, 32
  %sext.1.1510 = add nsw i64 %i.nl, 73014444032
  %i.nm = ashr exact i64 %sext.1.1510, 32
  %i.nn = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.nm
  store i8 1, ptr %i.nn, align 1, !tbaa !20
  %i.no = add nsw i64 %i.nd, %i.mp
  %i.np = mul nsw i64 %i.no, 7                    ; 2 uses
  %i.nq = add nsw i64 %i.np, %i.ma
  %i.nr = shl nsw i64 %i.nq, 32
  %sext.1504.1 = add nsw i64 %i.nr, 73014444032
  %i.ns = ashr exact i64 %sext.1504.1, 32
  %i.nt = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.ns
  store i8 1, ptr %i.nt, align 1, !tbaa !20
  %i.nu = add nsw i64 %i.np, %i.mj
  %i.nv = shl nsw i64 %i.nu, 32
  %sext.1.1.1 = add nsw i64 %i.nv, 73014444032
  %i.nw = ashr exact i64 %sext.1.1.1, 32
  %i.nx = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.nw
  store i8 1, ptr %i.nx, align 1, !tbaa !20
  %i.ny = add nuw nsw i32 %.0153475, 1            ; 2 uses
  %exitcond511.not = icmp eq i32 %i.ny, 30
  br i1 %exitcond511.not, label %.preheader456, label %.preheader459, !llvm.loop !199

_ZN6BufferIhED2Ev.exit308:                        ; preds = %bb.aw, %bb.av, %.preheader459
  %i.nz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.kk) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ca

.preheader:                                       ; preds = %.preheader456, %bb.ax
  %indvars.iv527 = phi i32 [ -3, %.preheader456 ], [ %indvars.iv.next528, %bb.ax ] ; 2 uses
  %indvars.iv512 = phi i64 [ 0, %.preheader456 ], [ %indvars.iv.next513, %bb.ax ] ; 2 uses
  %i.oa = trunc nsw i32 %indvars.iv527 to i16
  %i.ob = add i16 %i.oa, %.sroa.8441.0.extract.trunc ; 15 uses
  %i.oc = sext i16 %i.ob to i32
  br label %bb.ay

_ZN6BufferIhED2Ev.exit:                           ; preds = %bb.ax
  call void @_ZdaPv(ptr noundef nonnull %i.kk) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void

bb.ax:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread.6
  %indvars.iv.next528 = add nsw i32 %indvars.iv527, 1 ; 2 uses
  %indvars.iv.next513 = add nuw nsw i64 %indvars.iv512, 35
  %exitcond530 = icmp eq i32 %indvars.iv.next528, 4
  br i1 %exitcond530, label %_ZN6BufferIhED2Ev.exit, label %.preheader, !llvm.loop !200

bb.ay:                                            ; preds = %.preheader, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread.6
  %indvars.iv523 = phi i32 [ -2, %.preheader ], [ %indvars.iv.next524, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread.6 ] ; 2 uses
  %indvars.iv514 = phi i64 [ %indvars.iv512, %.preheader ], [ %indvars.iv.next515, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread.6 ] ; 8 uses
  %i.od = trunc nsw i32 %indvars.iv523 to i16
  %i.oe = add i16 %.sroa.8367.0466, %i.od         ; 15 uses
  %i.of = load i16, ptr %i.ea, align 4, !tbaa !84 ; 2 uses
  %i.og = sext i16 %i.of to i32
  %i.oh = sub nsw i32 %i.oc, %i.og
  %i.oi = load i32, ptr %i.ec, align 8, !tbaa !86
  %i.oj = mul nsw i32 %i.oh, %i.oi
  %i.ok = load i32, ptr %i.eb, align 4, !tbaa !87
  %i.ol = sext i16 %i.oe to i32
  %i.om = load i16, ptr %i.ee, align 2, !tbaa !92 ; 6 uses
  %i.on = sext i16 %i.om to i32
  %i.oo = add i32 %i.oj, %i.ol
  %i.op = sub i32 %i.oo, %i.on
  %i.oq = mul i32 %i.op, %i.ok
  %i.or = load i16, ptr %i.dz, align 8, !tbaa !83 ; 6 uses
  %i.os = sext i16 %i.or to i32
  %i.ot = sub nsw i32 %i.ll, %i.os
  %i.ou = add nsw i32 %i.ot, %i.oq                ; 7 uses
  %.not.i299 = icmp sgt i16 %i.or, %i.lk
  %i.ov = load i16, ptr %i.eg, align 2            ; 5 uses
  %.not6.i300 = icmp slt i16 %i.ov, %i.lk
  %or.cond.i301 = select i1 %.not.i299, i1 true, i1 %.not6.i300
  %.not7.i302 = icmp sgt i16 %i.om, %i.oe
  %or.cond12.i303 = select i1 %or.cond.i301, i1 true, i1 %.not7.i302
  %i.ow = load i16, ptr %i.eh, align 8            ; 5 uses
  %.not8.i304 = icmp slt i16 %i.ow, %i.oe
  %or.cond14.i305 = select i1 %or.cond12.i303, i1 true, i1 %.not8.i304
  %.not9.i306 = icmp slt i16 %i.ob, %i.of
  %or.cond614 = select i1 %or.cond14.i305, i1 true, i1 %.not9.i306
  br i1 %or.cond614, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307: ; preds = %bb.ay
  %i.ox = load i16, ptr %i.ei, align 2, !tbaa !85
  %.not444 = icmp sgt i16 %i.ob, %i.ox
  br i1 %.not444, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread, label %bb.az

bb.az:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307
  %i.oy = load ptr, ptr %i.ej, align 8, !tbaa !90
  %i.oz = zext i32 %i.ou to i64
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.oz ; 2 uses
  %i.pb = load i16, ptr %i.pa, align 4, !tbaa !93
  %i.pc = and i16 %i.pb, -2
  %switch = icmp eq i16 %i.pc, 126
  br i1 %switch, label %bb.ba, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread

bb.ba:                                            ; preds = %bb.az
  %i.pd = getelementptr inbounds nuw i8, ptr %i.kk, i64 %indvars.iv514
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !20
  %i.pf = icmp eq i8 %i.pe, 1
  br i1 %i.pf, label %bb.bb, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread

bb.bb:                                            ; preds = %bb.ba
  store i32 %.sroa.0386.0.insert.ext, ptr %i.pa, align 4
  %.pre535.a = load i16, ptr %i.dz, align 8, !tbaa !83
  %.pre536.a = load i16, ptr %i.eg, align 2
  %.pre537.a = load i16, ptr %i.ee, align 2
  %.pre538.a = load i16, ptr %i.eh, align 8
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307.thread: ; preds = %bb.az, %bb.ay, %bb.ba, %bb.bb, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307
  %i.pg = phi i16 [ %i.ow, %bb.az ], [ %i.ow, %bb.ay ], [ %i.ow, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307 ], [ %i.ow, %bb.ba ], [ %.pre538.a, %bb.bb ] ; 6 uses
  %i.ph = phi i16 [ %i.om, %bb.az ], [ %i.om, %bb.ay ], [ %i.om, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307 ], [ %i.om, %bb.ba ], [ %.pre537.a, %bb.bb ] ; 6 uses
  %i.pi = phi i16 [ %i.ov, %bb.az ], [ %i.ov, %bb.ay ], [ %i.ov, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307 ], [ %i.ov, %bb.ba ], [ %.pre536.a, %bb.bb ] ; 6 uses
  %i.pj = phi i16 [ %i.or, %bb.az ], [ %i.or, %bb.ay ], [ %i.or, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit307 ], [ %i.or, %bb.ba ], [ %.pre535.a, %bb.bb ] ; 6 uses
  %i.pk = add i32 %i.ou, 1
  %.not.i299.1 = icmp sgt i16 %i.pj, %i.lm
  %.not6.i300.1 = icmp slt i16 %i.pi, %i.lm
  %or.cond.i301.1 = select i1 %.not.i299.1, i1 true, i1 %.not6.i300.1
  %.not7.i302.1 = icmp sgt i16 %i.ph, %i.oe
end_hunk_0
begin_hunk_1_@_ZN7treegen14make_pine_treeER8MMVManipN4core8vector3dIsEEPK14NodeDefManageri:.noexc.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cs = phi i64 [ %.pre696, %bb.r ], [ %i.cn, %bb.q ]
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
  %.pre697 = load ptr, ptr %.pre.i293, align 8, !tbaa !56
  %.phi.trans.insert698 = getelementptr i8, ptr %.pre697, i64 -24
  %.pre699 = load i64, ptr %.phi.trans.insert698, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dx = phi i64 [ %.pre699, %bb.z ], [ %i.ds, %bb.y ]
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
  %i.gc = add nuw nsw i16 %.0179519, 1
  %9 = icmp samesign ugt i16 %i.fd, %.0179519
  br i1 %9, label %bb.ae, label %.lr.ph.preheader, !llvm.loop !203

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
  %i.jg = sdiv i32 %i.jf, 65536
  %i.jh = trunc nsw i32 %i.jg to i16
end_hunk_1
