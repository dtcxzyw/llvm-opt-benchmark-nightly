inline.NumInlined: 3702
inline.NumDeleted: 1236
begin_hunk_0_@_ZN11OpenImageIO4v3_111ImageOutput10check_openENS1_8OpenModeERKNS0_9ImageSpecENS0_3ROIEm:bb.a
bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #2
  %i.ck = load ptr, ptr %0, align 8, !tbaa !40
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.cn, ptr %i.h, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #2
  br label %bb.bb

thread-pre-split:                                 ; preds = %bb.o
  %.pr = load i32, ptr %i.cc, align 4, !tbaa !130
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split, %bb.n
  %i.co = phi i32 [ %.pr, %thread-pre-split ], [ %i.cd, %bb.n ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !233
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !234
  %i.ct = sub nsw i32 %i.cq, %i.cs                ; 2 uses
  %i.cu = icmp sgt i32 %i.co, %i.ct
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #2
  %i.cv = load ptr, ptr %0, align 8, !tbaa !40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef ptr %i.cx(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.cy, ptr %i.i, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #2
  store i32 %i.ct, ptr %i.j, align 4, !tbaa !3
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKciiiiEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.37, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #2
  br label %bb.bb

bb.s:                                             ; preds = %bb.q
  %i.cz = icmp slt i32 %i.co, 1
  br i1 %i.cz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.cc, align 4, !tbaa !130
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !109 ; 4 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !235
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !236
  %i.dh = sub nsw i32 %i.de, %i.dg
  %i.di = icmp sgt i32 %i.db, %i.dh
  br i1 %i.di, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = icmp ne i32 %i.db, 1
  %i.dk = and i64 %4, 1
  %.not22 = icmp eq i64 %i.dk, 0
  %or.cond41 = or i1 %.not22, %i.dj
  br i1 %or.cond41, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dl = icmp ne i32 %i.db, 2
  %i.dm = and i64 %4, 2
  %.not23 = icmp eq i64 %i.dm, 0
  %or.cond42 = or i1 %.not23, %i.dl
  br i1 %or.cond42, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #2
  %i.dn = load ptr, ptr %0, align 8, !tbaa !40
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call noundef ptr %i.dp(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.dq, ptr %i.k, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKciEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #2
  br label %bb.bb

bb.z:                                             ; preds = %bb.x
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !143 ; 2 uses
  %i.dt = load ptr, ptr %i.al, align 8, !tbaa !69 ; 3 uses
  %.not24 = icmp eq ptr %i.ds, %i.dt
  br i1 %.not24, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = call fastcc noundef zeroext i1 @"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_18TypeDescESt6vectorIS4_SaIS4_EEEEZNS3_11ImageOutput10check_openENSA_8OpenModeERKNS3_9ImageSpecENS3_3ROIEmE3$_0EbT_SH_T0_"(ptr %i.dt, ptr %i.ds, ptr %0)
  br i1 %i.du, label %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i, label %bb.ab

_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.aa
  store ptr %i.dt, ptr %i.dr, align 8, !tbaa !143
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit

bb.ab:                                            ; preds = %bb.aa
  store ptr @.str.6, ptr %9, align 8, !tbaa !75
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 14, ptr %i.dv, align 8, !tbaa !77
  %i.dw = load ptr, ptr %0, align 8, !tbaa !40
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef i32 %i.dy(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %9)
  %.not25 = icmp eq i32 %i.dz, 0
  br i1 %.not25, label %bb.ac, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #2
  %i.ea = load ptr, ptr %0, align 8, !tbaa !40
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = call noundef ptr %i.ec(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.ed, ptr %i.l, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #2
  br label %bb.bb

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.ab, %bb.z
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !237
  %i.eg = icmp slt i32 %i.ef, 1
  br i1 %i.eg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit
  %i.eh = load i32, ptr %i.aw, align 4, !tbaa !78
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !237
  %i.ei = load i32, ptr %i.ak, align 8, !tbaa !131
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ei, ptr %i.ej, align 8, !tbaa !238
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !239
  %i.em = icmp slt i32 %i.el, 1
  br i1 %i.em, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.en = load i32, ptr %i.bd, align 8, !tbaa !111
  store i32 %i.en, ptr %i.ek, align 8, !tbaa !239
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !132
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !240
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !241
  %i.et = icmp slt i32 %i.es, 1
  br i1 %i.et, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.eu = load i32, ptr %i.cc, align 4, !tbaa !130
  store i32 %i.eu, ptr %i.er, align 4, !tbaa !241
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !133
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ew, ptr %i.ex, align 8, !tbaa !242
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !243, !range !172, !noundef !173
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  store ptr @.str.40, ptr %10, align 8, !tbaa !75
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 8, ptr %i.fb, align 8, !tbaa !77
  %i.fc = load ptr, ptr %0, align 8, !tbaa !40
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = call noundef i32 %i.fe(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %10)
  %.not26 = icmp eq i32 %i.ff, 0
  br i1 %.not26, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #2
  %i.fg = load ptr, ptr %0, align 8, !tbaa !40
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = call noundef ptr %i.fi(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.fj, ptr %i.m, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.41, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #2
  br label %bb.bb

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !126
  %.not27 = icmp eq i32 %i.fl, 0
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4
  %.not28 = icmp eq i32 %i.fn, 0
  %or.cond44 = select i1 %.not27, i1 %.not28, i1 false
  br i1 %or.cond44, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr @.str.10, ptr %11, align 8, !tbaa !75
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 5, ptr %i.fo, align 8, !tbaa !77
  %i.fp = load ptr, ptr %0, align 8, !tbaa !40
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = call noundef i32 %i.fr(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %11)
  %.not29 = icmp eq i32 %i.fs, 0
  br i1 %.not29, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #2
  %i.ft = load ptr, ptr %0, align 8, !tbaa !40
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = call noundef ptr %i.fv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.fw, ptr %i.n, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.42, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #2
  br label %bb.bb

bb.ao:                                            ; preds = %bb.am
  %16 = load <3 x i32>, ptr %i.fk, align 8
  %.fr = freeze <3 x i32> %16
  %17 = icmp slt <3 x i32> %.fr, splat (i32 1)
  %18 = bitcast <3 x i1> %17 to i3
  %.not80 = icmp eq i3 %18, 0
  br i1 %.not80, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #2
  %i.fx = load ptr, ptr %0, align 8, !tbaa !40
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = call noundef ptr %i.fz(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.ga, ptr %i.o, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKciiiEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.43, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.fk, ptr noundef nonnull align 4 dereferenceable(4) %i.fm, ptr noundef nonnull align 4 dereferenceable(4) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #2
  br label %bb.bb

bb.aq:                                            ; preds = %bb.ao, %bb.al
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load <3 x i32>, ptr %i.ak, align 8
  %.fr81 = freeze <3 x i32> %21
  %22 = icmp ne <3 x i32> %.fr81, zeroinitializer
  %23 = bitcast <3 x i1> %22 to i3
  %.not32 = icmp eq i3 %23, 0
  br i1 %.not32, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr @.str.44, ptr %12, align 8, !tbaa !75
  %i.gc = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 6, ptr %i.gc, align 8, !tbaa !77
  %i.gd = load ptr, ptr %0, align 8, !tbaa !40
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = call noundef i32 %i.gf(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %12)
  %.not33 = icmp eq i32 %i.gg, 0
  br i1 %.not33, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.gh = and i64 %4, 4294967296
  %.not34 = icmp eq i64 %i.gh, 0
  br i1 %.not34, label %.sink.split, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #2
  %i.gi = load ptr, ptr %0, align 8, !tbaa !40
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = call noundef ptr %i.gk(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.gl, ptr %i.p, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.45, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #2
  br label %bb.bb

bb.au:                                            ; preds = %bb.ar
  %24 = load <3 x i32>, ptr %i.ak, align 8
  %.fr82 = freeze <3 x i32> %24
  %25 = icmp slt <3 x i32> %.fr82, zeroinitializer
  %26 = bitcast <3 x i1> %25 to i3
  %.not83 = icmp eq i3 %26, 0
  br i1 %.not83, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  store ptr @.str.46, ptr %13, align 8, !tbaa !75
  %i.gm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 14, ptr %i.gm, align 8, !tbaa !77
  %i.gn = load ptr, ptr %0, align 8, !tbaa !40
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = call noundef i32 %i.gp(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %13)
  %.not35 = icmp eq i32 %i.gq, 0
  br i1 %.not35, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.gr = and i64 %4, 4294967296
  %.not36 = icmp eq i64 %i.gr, 0
  br i1 %.not36, label %.sink.split, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #2
  %i.gs = load ptr, ptr %0, align 8, !tbaa !40
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = call noundef ptr %i.gu(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.gv, ptr %i.q, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.47, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #2
  br label %bb.bb

.sink.split:                                      ; preds = %bb.aw, %bb.as
  store i32 0, ptr %i.ak, align 8, !tbaa !131
  store i32 0, ptr %i.gb, align 4, !tbaa !132
  store i32 0, ptr %20, align 8, !tbaa !133
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split, %bb.au, %bb.aq, %bb.av
  store ptr @.str.22, ptr %14, align 8, !tbaa !75
  %i.gw = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 7, ptr %i.gw, align 8, !tbaa !77
  %i.gx = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_114ParamValueList8containsENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull dead_on_return %14, i64 256, i1 noundef zeroext true)
  br i1 %i.gx, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  store ptr @.str.22, ptr %15, align 8, !tbaa !75
  %i.gy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 7, ptr %i.gy, align 8, !tbaa !77
  %i.gz = load ptr, ptr %0, align 8, !tbaa !40
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = call noundef i32 %i.hb(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %15)
  %.not37 = icmp eq i32 %i.hc, 0
  br i1 %.not37, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #2
  %i.hd = load ptr, ptr %0, align 8, !tbaa !40
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = call noundef ptr %i.hf(ptr noundef nonnull align 8 dereferenceable(184) %0)
  store ptr %i.hg, ptr %i.r, align 8, !tbaa !227
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.48, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #2
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ay, %bb.az, %bb.ba, %bb.ax, %bb.at, %bb.ap, %bb.an, %bb.ak, %bb.ac, %bb.y, %bb.r, %bb.p, %bb.m, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi i1 [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.r ], [ false, %bb.y ], [ false, %bb.ap ], [ false, %bb.c ], [ false, %bb.ba ], [ false, %bb.ax ], [ false, %bb.at ], [ false, %bb.an ], [ false, %bb.ak ], [ false, %bb.ac ], [ false, %bb.p ], [ false, %bb.m ], [ false, %bb.e ], [ true, %bb.az ], [ true, %bb.ay ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.166", align 16 ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #2
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #2, !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #2, !noalias !244
  %i.b = load ptr, ptr %2, align 8, !tbaa !227, !noalias !244
  %i.c = ptrtoint ptr %i.b to i64
  store i64 %i.c, ptr %3, align 16, !noalias !244
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 12, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2, !noalias !244
  %i.d = load ptr, ptr %5, align 8, !tbaa !30
  store ptr %i.d, ptr %4, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !106
  store i64 %i.g, ptr %i.e, align 8, !tbaa !77
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !30     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !34
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #2
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !30     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !34
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #2
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKciiiiEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.167", align 16 ; 8 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #2
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #2, !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2, !noalias !247
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.b = load ptr, ptr %2, align 8, !tbaa !227, !noalias !253
  store ptr %i.b, ptr %7, align 16, !tbaa !34, !alias.scope !250, !noalias !247
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !3, !noalias !253
  store i32 %i.d, ptr %i.c, align 16, !tbaa !34, !alias.scope !250, !noalias !247
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.f = load i32, ptr %4, align 4, !tbaa !3, !noalias !253
  store i32 %i.f, ptr %i.e, align 16, !tbaa !34, !alias.scope !250, !noalias !247
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.h = load i32, ptr %5, align 4, !tbaa !3, !noalias !253
  store i32 %i.h, ptr %i.g, align 16, !tbaa !34, !alias.scope !250, !noalias !247
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.j = load i32, ptr %6, align 4, !tbaa !3, !noalias !253
  store i32 %i.j, ptr %i.i, align 16, !tbaa !34, !alias.scope !250, !noalias !247
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull %1, i64 %i.a, i64 69916, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #2, !noalias !247
  %i.k = load ptr, ptr %9, align 8, !tbaa !30
  store ptr %i.k, ptr %8, align 8, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !106
  store i64 %i.n, ptr %i.l, align 8, !tbaa !77
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %8)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %9, align 8, !tbaa !30     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.r = load i64, ptr %i.p, align 8, !tbaa !34
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #2
  ret void

bb.c:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %9, align 8, !tbaa !30     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.c
  %i.x = load i64, ptr %i.v, align 8, !tbaa !34
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #2
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKciiEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.168", align 16 ; 6 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #2, !noalias !254
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #2, !noalias !254
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.b = load ptr, ptr %2, align 8, !tbaa !227, !noalias !260
  store ptr %i.b, ptr %5, align 16, !tbaa !34, !alias.scope !257, !noalias !254
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !3, !noalias !260
  store i32 %i.d, ptr %i.c, align 16, !tbaa !34, !alias.scope !257, !noalias !254
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.f = load i32, ptr %4, align 4, !tbaa !3, !noalias !260
  store i32 %i.f, ptr %i.e, align 16, !tbaa !34, !alias.scope !257, !noalias !254
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull %1, i64 %i.a, i64 284, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #2, !noalias !254
  %i.g = load ptr, ptr %7, align 8, !tbaa !30
  store ptr %i.g, ptr %6, align 8, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !106
  store i64 %i.j, ptr %i.h, align 8, !tbaa !77
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %7, align 8, !tbaa !30     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
end_hunk_0
