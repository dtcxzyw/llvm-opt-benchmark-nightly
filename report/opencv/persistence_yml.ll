Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/persistence_yml?download=true
inline.NumInlined: 270
inline.NumDeleted: 109
begin_hunk_0_@_ZN2cv10YAMLParser10parseValueEPcRNS_8FileNodeEib:bb.a
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = load i16, ptr %i.au, align 1
  %i.ci = xor i16 %i.ch, 25971
  %i.cj = getelementptr i8, ptr %i.au, i64 2
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = zext i8 %i.ck to i16
  %i.cm = xor i16 %i.cl, 113
  %i.cn = or i16 %i.ci, %i.cm
  %i.co = icmp ne i16 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = load i16, ptr %i.au, align 1
  %i.cs = xor i16 %i.cr, 24941
  %i.ct = getelementptr i8, ptr %i.au, i64 2
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i16
  %i.cw = xor i16 %i.cv, 112
  %i.cx = or i16 %i.cs, %i.cw
  %i.cy = icmp ne i16 %i.cx, 0
  %i.cz = zext i1 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, 0
  %spec.select = select i1 %i.da, i32 5, i32 0
  br label %bb.ai

bb.ab:                                            ; preds = %bb.w
  %i.db = icmp ne i32 %i.ay, 5
  %or.cond9 = or i1 %.2326, %i.db
  br i1 %or.cond9, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dc = load i32, ptr %i.au, align 1
  %i.dd = xor i32 %i.dc, 1634692198
  %i.de = getelementptr i8, ptr %i.au, i64 4
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i32
  %i.dh = xor i32 %i.dg, 116
  %i.di = or i32 %i.dd, %i.dh
  %i.dj = icmp ne i32 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0                    ; 2 uses
  %spec.select460 = select i1 %i.dl, i32 2, i32 0
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab
  %i.dm = icmp eq i32 %i.ay, 6
  %or.cond11 = and i1 %.2326, %i.dm
  br i1 %or.cond11, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.dn = load i32, ptr %i.au, align 1
  %i.do = xor i32 %i.dn, 1634625890
  %i.dp = getelementptr i8, ptr %i.au, i64 4
  %i.dq = load i16, ptr %i.dp, align 1
  %i.dr = zext i16 %i.dq to i32
  %i.ds = xor i32 %i.dr, 31090
  %i.dt = or i32 %i.do, %i.ds
  %i.du = icmp ne i32 %i.dt, 0
  %i.dv = zext i1 %i.du to i32
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !39
  store i8 %i.as, ptr %i.dx, align 1, !tbaa !27
  %.promoted602 = load ptr, ptr %i.a, align 8, !tbaa !39
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %i.dy = phi ptr [ %i.dz, %bb.ag ], [ %.promoted602, %bb.af ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1 ; 3 uses
  store ptr %i.dz, ptr %i.a, align 8, !tbaa !39
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !27
  %i.eb = icmp eq i8 %i.ea, 32
  br i1 %i.eb, label %bb.ag, label %bb.ah, !llvm.loop !67

bb.ah:                                            ; preds = %bb.ag
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 2 ; 3 uses
  store ptr %i.ec, ptr %i.a, align 8, !tbaa !39
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !27
  store i8 0, ptr %i.ec, align 1, !tbaa !27
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.ae, %bb.ah, %bb.ad
  %.0338 = phi i8 [ %i.ed, %bb.ah ], [ %i.as, %bb.ae ], [ %i.as, %bb.ad ], [ %i.as, %bb.z ], [ %i.as, %bb.ac ], [ %i.as, %bb.aa ], [ %i.as, %bb.x ], [ %i.as, %bb.y ] ; 2 uses
  %i.ee = phi i1 [ false, %bb.ah ], [ false, %bb.ae ], [ false, %bb.ad ], [ false, %bb.z ], [ false, %bb.ac ], [ false, %bb.aa ], [ true, %bb.x ], [ false, %bb.y ]
  %i.ef = phi i1 [ false, %bb.ah ], [ false, %bb.ae ], [ false, %bb.ad ], [ false, %bb.z ], [ false, %bb.ac ], [ false, %bb.aa ], [ false, %bb.x ], [ true, %bb.y ]
  %i.eg = phi i1 [ false, %bb.ah ], [ false, %bb.ae ], [ false, %bb.ad ], [ false, %bb.z ], [ %i.dl, %bb.ac ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.y ]
  %.0335 = phi i32 [ 4, %bb.ah ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 4, %bb.z ], [ %spec.select460, %bb.ac ], [ %spec.select, %bb.aa ], [ 3, %bb.x ], [ 1, %bb.y ]
  %.0327 = phi i1 [ true, %bb.ah ], [ false, %bb.ae ], [ false, %bb.ad ], [ false, %bb.z ], [ false, %bb.ac ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.y ]
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !39
  store i8 %.0338, ptr %i.eh, align 1, !tbaa !27
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.ej = tail call noundef ptr @_ZN2cv10YAMLParser10skipSpacesEPcii(ptr noundef nonnull align 8 dereferenceable(5136) %0, ptr noundef %i.ei, i32 noundef %3, i32 noundef 2147483647) ; 14 uses
  %.not404 = icmp eq ptr %i.ej, null
  br i1 %.not404, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !12
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 192
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @__func__._ZN2cv10YAMLParser10parseValueEPcRNS_8FileNodeEib, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.1, i32 noundef 541) #14
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468

bb.an:                                            ; preds = %bb.ak
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466: ; preds = %bb.an
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !27
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466, %bb.am
  %.pn405 = phi { ptr, i32 } [ %i.ep, %bb.am ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466 ], [ %i.eq, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.gd

bb.ao:                                            ; preds = %bb.ai
  %i.ew = load i8, ptr %i.ej, align 1, !tbaa !27  ; 2 uses
  br i1 %.2326, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.ee, label %switch.early.test, label %bb.aq

switch.early.test:                                ; preds = %bb.ap
  switch i8 %i.ew, label %.split.us [
    i8 39, label %bb.aq
    i8 34, label %bb.aq
  ]

bb.aq:                                            ; preds = %switch.early.test, %switch.early.test, %bb.ap
  br i1 %i.ef, label %bb.bb, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.eg, label %bb.ba, label %bb.as

bb.as:                                            ; preds = %bb.ao, %bb.ar
  br i1 %.0327, label %bb.at, label %.thread

bb.at:                                            ; preds = %bb.as
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !23 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 96
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = tail call noundef ptr %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.ey)
  %i.fd = ptrtoint ptr %i.ej to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = load ptr, ptr %i.ex, align 8, !tbaa !23 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !12
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 184
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = tail call noundef ptr %i.fk(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef nonnull %i.ej, i32 noundef %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %.thread555

.thread:                                          ; preds = %bb.g, %bb.as
  %.3533 = phi ptr [ %i.ej, %bb.as ], [ %1, %bb.g ] ; 21 uses
  %.1336532 = phi i32 [ %.0335, %bb.as ], [ 0, %bb.g ]
  %.1339531 = phi i8 [ %.0338, %bb.as ], [ %i.t, %bb.g ] ; 4 uses
  %.0340530 = phi i8 [ %i.ew, %bb.as ], [ %i.r, %bb.g ] ; 9 uses
  %i.fm = add i8 %.0340530, -48
  %i.fn = icmp ult i8 %i.fm, 10
  br i1 %i.fn, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %.thread
  switch i8 %.0340530, label %bb.cw [
    i8 45, label %bb.av
    i8 43, label %bb.av
    i8 46, label %bb.aw
    i8 39, label %.preheader562
    i8 34, label %.preheader563
  ]

.preheader563:                                    ; preds = %bb.au
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  br label %bb.bz

bb.av:                                            ; preds = %bb.au, %bb.au
  %i.fp = add i8 %.1339531, -48
  %i.fq = icmp ult i8 %i.fp, 10
  %i.fr = icmp eq i8 %.1339531, 46
  %or.cond26 = or i1 %i.fr, %i.fq
  br i1 %or.cond26, label %bb.ax, label %bb.cw

bb.aw:                                            ; preds = %bb.au
  %i.fs = add i8 %.1339531, -48
  %or.cond.i = icmp ult i8 %i.fs, 10
  %i.ft = and i8 %.1339531, -33
  %i.fu = add i8 %i.ft, -65
  %i.fv = icmp ult i8 %i.fu, 26
  %i.fw = or i1 %or.cond.i, %i.fv
  br i1 %i.fw, label %bb.ax, label %.thread549

bb.ax:                                            ; preds = %bb.aw, %bb.av, %.thread
  %i.fx = icmp eq i8 %.0340530, 45
  %i.fy = icmp eq i8 %.0340530, 43
  %i.fz = or i1 %i.fx, %i.fy
  %i.ga = zext i1 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %.3533, i64 %i.ga
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %storemerge = phi ptr [ %i.gb, %bb.ax ], [ %i.gf, %bb.ay ] ; 3 uses
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !39
  %i.gc = load i8, ptr %storemerge, align 1, !tbaa !27 ; 2 uses
  %i.gd = add i8 %i.gc, -48
  %i.ge = icmp ult i8 %i.gd, 10
  %i.gf = getelementptr inbounds nuw i8, ptr %storemerge, i64 1
  br i1 %i.ge, label %bb.ay, label %bb.az, !llvm.loop !68

bb.az:                                            ; preds = %bb.ay
  switch i8 %i.gc, label %bb.bb [
    i8 46, label %bb.ba
    i8 101, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az, %bb.ar
  %.4 = phi ptr [ %.3533, %bb.az ], [ %.3533, %bb.az ], [ %i.ej, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !23 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !12
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 176
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = call noundef double %i.gk(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noundef nonnull %.4, ptr noundef nonnull %i.a)
  store double %i.gl, ptr %i.b, align 8, !tbaa !75
  call void @_ZN2cv8FileNode8setValueEiPKvi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 2, ptr noundef nonnull %i.b, i32 noundef -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az, %bb.aq
  %.5 = phi ptr [ %.3533, %bb.az ], [ %i.ej, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.gm = call i64 @__isoc23_strtoll(ptr noundef nonnull %.5, ptr noundef nonnull %i.a, i32 noundef 0) #13
  store i64 %i.gm, ptr %i.c, align 8, !tbaa !38
  call void @_ZN2cv8FileNode8setValueEiPKvi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1, ptr noundef nonnull %i.c, i32 noundef -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.6 = phi ptr [ %.4, %bb.ba ], [ %.5, %bb.bb ]
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !39  ; 6 uses
  %.not446 = icmp eq ptr %i.gn, null
  %i.go = icmp eq ptr %i.gn, %.6
  %or.cond461 = or i1 %.not446, %i.go
  br i1 %or.cond461, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !12
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 192
  %i.gt = load ptr, ptr %i.gs, align 8
  invoke void %i.gt(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, ptr noundef nonnull @__func__._ZN2cv10YAMLParser10parseValueEPcRNS_8FileNodeEib, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.1, i32 noundef 582) #14
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  unreachable

bb.bg:                                            ; preds = %bb.bd
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

bb.bh:                                            ; preds = %bb.be
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gw = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469: ; preds = %bb.bh
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !27
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469, %bb.bg
  %.pn449 = phi { ptr, i32 } [ %i.gu, %bb.bg ], [ %i.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469 ], [ %i.gv, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.gd

bb.bi:                                            ; preds = %bb.bc
  %i.hb = load i8, ptr %i.gn, align 1, !tbaa !27
  %i.hc = icmp eq i8 %i.hb, 0
  br i1 %i.hc, label %bb.bj, label %.thread555

bb.bj:                                            ; preds = %bb.bi
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !23 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !12
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 104
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = call noundef ptr %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.he)
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -1
  %i.hk = icmp eq ptr %i.gn, %i.hj
  br i1 %i.hk, label %bb.bk, label %.thread555

bb.bk:                                            ; preds = %bb.bj
  %i.hl = load ptr, ptr %i.hd, align 8, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !12
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 192
  %i.ho = load ptr, ptr %i.hn, align 8
  invoke void %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef nonnull @__func__._ZN2cv10YAMLParser10parseValueEPcRNS_8FileNodeEib, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.1, i32 noundef 585) #14
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  unreachable

bb.bn:                                            ; preds = %bb.bk
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474

bb.bo:                                            ; preds = %bb.bl
  %i.hq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hr = load ptr, ptr %13, align 8, !tbaa !31   ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472: ; preds = %bb.bo
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !27
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472, %bb.bn
  %.pn447 = phi { ptr, i32 } [ %i.hp, %bb.bn ], [ %i.hq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472 ], [ %i.hq, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.gd

.preheader562:                                    ; preds = %bb.au
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.bp

bb.bp:                                            ; preds = %.preheader562, %bb.by
  %indvars.iv = phi i64 [ 0, %.preheader562 ], [ %indvars.iv.next, %bb.by ] ; 3 uses
  %.7606 = phi ptr [ %.3533, %.preheader562 ], [ %.8, %bb.by ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.7606, i64 1 ; 3 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !27  ; 6 uses
  %i.hy = add i8 %i.hx, -48
  %or.cond.i475 = icmp ult i8 %i.hy, 10
  %i.hz = and i8 %i.hx, -33
  %i.ia = add i8 %i.hz, -65
  %i.ib = icmp ult i8 %i.ia, 26
  %i.ic = or i1 %or.cond.i475, %i.ib
  br i1 %i.ic, label %bb.by, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.id = icmp ne i8 %i.hx, 39                    ; 2 uses
  %i.ie = icmp ugt i8 %i.hx, 31
  %or.cond32 = and i1 %i.id, %i.ie
  br i1 %or.cond32, label %bb.by, label %bb.br

bb.br:                                            ; preds = %bb.bq
  br i1 %i.id, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.if = getelementptr inbounds nuw i8, ptr %.7606, i64 2 ; 3 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !27
  %.not443 = icmp eq i8 %i.ig, 39
  br i1 %.not443, label %bb.by, label %.thread535.loopexit

bb.bt:                                            ; preds = %bb.br
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !12
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 192
  %i.il = load ptr, ptr %i.ik, align 8
  invoke void %i.il(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, ptr noundef nonnull @__func__._ZN2cv10YAMLParser10parseValueEPcRNS_8FileNodeEib, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.1, i32 noundef 603) #14
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  unreachable

bb.bw:                                            ; preds = %bb.bt
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478

bb.bx:                                            ; preds = %bb.bu
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.io = load ptr, ptr %15, align 8, !tbaa !31   ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i476

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i476: ; preds = %bb.bx
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !27
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i476, %bb.bw
  %.pn441 = phi { ptr, i32 } [ %i.im, %bb.bw ], [ %i.in, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i476 ], [ %i.in, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %bb.gd

bb.by:                                            ; preds = %bb.bs, %bb.bp, %bb.bq
  %.sink = phi i8 [ %i.hx, %bb.bp ], [ %i.hx, %bb.bq ], [ 39, %bb.bs ]
  %.8 = phi ptr [ %i.hw, %bb.bp ], [ %i.hw, %bb.bq ], [ %i.if, %bb.bs ]
  %i.it = getelementptr inbounds nuw i8, ptr %45, i64 %indvars.iv
  store i8 %.sink, ptr %i.it, align 1, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4096
  br i1 %exitcond.not, label %.thread540, label %bb.bp, !llvm.loop !69

bb.bz:                                            ; preds = %.preheader563, %bb.cr
  %.9604 = phi ptr [ %.3533, %.preheader563 ], [ %.11, %bb.cr ] ; 4 uses
  %.2331603 = phi i32 [ 0, %.preheader563 ], [ %.4333, %bb.cr ] ; 16 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.9604, i64 1 ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !27  ; 5 uses
  %i.iw = add i8 %i.iv, -48
  %or.cond.i479 = icmp ult i8 %i.iw, 10
  %i.ix = and i8 %i.iv, -33
  %i.iy = add i8 %i.ix, -65
  %i.iz = icmp ult i8 %i.iy, 26
  %i.ja = or i1 %or.cond.i479, %i.iz
  br i1 %i.ja, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jb = icmp ugt i8 %i.iv, 31
  br i1 %i.jb, label %switch.early.test462, label %bb.cm

switch.early.test462:                             ; preds = %bb.ca
  switch i8 %i.iv, label %bb.cb [
    i8 34, label %bb.cc
    i8 92, label %bb.cd
  ]

bb.cb:                                            ; preds = %switch.early.test462, %bb.bz
  %i.jc = add nsw i32 %.2331603, 1
  %i.jd = sext i32 %.2331603 to i64
  %i.je = getelementptr inbounds i8, ptr %i.fo, i64 %i.jd
  store i8 %i.iv, ptr %i.je, align 1, !tbaa !27
  br label %bb.cr

bb.cc:                                            ; preds = %switch.early.test462
  %i.jf = getelementptr inbounds nuw i8, ptr %.9604, i64 2
  br label %.thread535

bb.cd:                                            ; preds = %switch.early.test462
  %i.jg = getelementptr inbounds nuw i8, ptr %.9604, i64 2 ; 9 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !27  ; 4 uses
  switch i8 %i.jh, label %bb.cj [
    i8 39, label %bb.ce
    i8 92, label %bb.cf
    i8 34, label %bb.cf
    i8 110, label %bb.cg
    i8 114, label %bb.ch
    i8 116, label %bb.ci
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.ji = add nsw i32 %.2331603, 1
  %i.jj = sext i32 %.2331603 to i64
  %i.jk = getelementptr inbounds i8, ptr %i.fo, i64 %i.jj
  store i8 39, ptr %i.jk, align 1, !tbaa !27
  br label %bb.cr

bb.cf:                                            ; preds = %bb.cd, %bb.cd
  %i.jl = add nsw i32 %.2331603, 1
  %i.jm = sext i32 %.2331603 to i64
  %i.jn = getelementptr inbounds i8, ptr %i.fo, i64 %i.jm
  store i8 %i.jh, ptr %i.jn, align 1, !tbaa !27
  br label %bb.cr

bb.cg:                                            ; preds = %bb.cd
  %i.jo = add nsw i32 %.2331603, 1
  %i.jp = sext i32 %.2331603 to i64
  %i.jq = getelementptr inbounds i8, ptr %i.fo, i64 %i.jp
  store i8 10, ptr %i.jq, align 1, !tbaa !27
  br label %bb.cr

bb.ch:                                            ; preds = %bb.cd
  %i.jr = add nsw i32 %.2331603, 1
  %i.js = sext i32 %.2331603 to i64
  %i.jt = getelementptr inbounds i8, ptr %i.fo, i64 %i.js
  store i8 13, ptr %i.jt, align 1, !tbaa !27
  br label %bb.cr

bb.ci:                                            ; preds = %bb.cd
  %i.ju = add nsw i32 %.2331603, 1
  %i.jv = sext i32 %.2331603 to i64
  %i.jw = getelementptr inbounds i8, ptr %i.fo, i64 %i.jv
  store i8 9, ptr %i.jw, align 1, !tbaa !27
  br label %bb.cr

bb.cj:                                            ; preds = %bb.cd
  %i.jx = icmp eq i8 %i.jh, 120                   ; 2 uses
  br i1 %i.jx, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jy = and i8 %i.jh, -8
  %or.cond47 = icmp eq i8 %i.jy, 48
  br i1 %or.cond47, label %bb.cl, label %bb.cr

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.jz = phi i32 [ 16, %bb.ck ], [ 8, %bb.cj ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.9604, i64 5 ; 3 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !27
  store i8 0, ptr %i.ka, align 1, !tbaa !27
  %i.kc = zext i1 %i.jx to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.kc ; 2 uses
  %i.ke = call i64 @__isoc23_strtol(ptr noundef nonnull %i.kd, ptr noundef nonnull %i.a, i32 noundef %i.jz) #13
  store i8 %i.kb, ptr %i.ka, align 1, !tbaa !27
  %i.kf = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.kg = icmp eq ptr %i.kf, %i.kd                ; 2 uses
  %i.kh = trunc i64 %i.ke to i8
  %.sink819 = select i1 %i.kg, i8 120, i8 %i.kh
  %.10 = select i1 %i.kg, ptr %i.jg, ptr %i.kf
  %i.ki = sext i32 %.2331603 to i64
  %i.kj = getelementptr inbounds i8, ptr %i.fo, i64 %i.ki
  store i8 %.sink819, ptr %i.kj, align 1, !tbaa !27
  %.3332 = add nsw i32 %.2331603, 1
  br label %bb.cr

bb.cm:                                            ; preds = %bb.ca
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.cn unwind label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !12
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 192
  %i.ko = load ptr, ptr %i.kn, align 8
  invoke void %i.ko(ptr noundef nonnull align 8 dereferenceable(8) %i.kl, ptr noundef nonnull @__func__._ZN2cv10YAMLParser10parseValueEPcRNS_8FileNodeEib, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.1, i32 noundef 646) #14
          to label %bb.co unwind label %bb.cq

bb.co:                                            ; preds = %bb.cn
  unreachable

bb.cp:                                            ; preds = %bb.cm
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482

bb.cq:                                            ; preds = %bb.cn
  %i.kq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kr = load ptr, ptr %17, align 8, !tbaa !31   ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i480

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i480: ; preds = %bb.cq
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !27
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kv) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i480, %bb.cp
  %.pn439 = phi { ptr, i32 } [ %i.kp, %bb.cp ], [ %i.kq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i480 ], [ %i.kq, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %bb.gd

bb.cr:                                            ; preds = %bb.ce, %bb.cg, %bb.ci, %bb.cl, %bb.ck, %bb.ch, %bb.cf, %bb.cb
  %.4333 = phi i32 [ %i.jc, %bb.cb ], [ %i.ji, %bb.ce ], [ %i.jl, %bb.cf ], [ %i.jo, %bb.cg ], [ %i.jr, %bb.ch ], [ %i.ju, %bb.ci ], [ %.3332, %bb.cl ], [ %.2331603, %bb.ck ] ; 2 uses
  %.11 = phi ptr [ %i.iu, %bb.cb ], [ %i.jg, %bb.ce ], [ %i.jg, %bb.cf ], [ %i.jg, %bb.cg ], [ %i.jg, %bb.ch ], [ %i.jg, %bb.ci ], [ %.10, %bb.cl ], [ %i.jg, %bb.ck ]
  %i.kw = icmp slt i32 %.4333, 4096
  br i1 %i.kw, label %bb.bz, label %.thread540, !llvm.loop !70

.thread540:                                       ; preds = %bb.cr, %bb.by
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %.thread540
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !12
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 192
  %i.lb = load ptr, ptr %i.la, align 8
  invoke void %i.lb(ptr noundef nonnull align 8 dereferenceable(8) %i.ky, ptr noundef nonnull @__func__._ZN2cv10YAMLParser10parseValueEPcRNS_8FileNodeEib, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.1, i32 noundef 650) #14
          to label %bb.ct unwind label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  unreachable

bb.cu:                                            ; preds = %.thread540
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485

bb.cv:                                            ; preds = %bb.cs
  %i.ld = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.le = load ptr, ptr %19, align 8, !tbaa !31   ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.lg = icmp eq ptr %i.le, %i.lf
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i483

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i483: ; preds = %bb.cv
  %i.lh = load i64, ptr %i.lf, align 8, !tbaa !27
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.li) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i483, %bb.cu
  %.pn444 = phi { ptr, i32 } [ %i.lc, %bb.cu ], [ %i.ld, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i483 ], [ %i.ld, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %bb.gd

.thread535.loopexit:                              ; preds = %bb.bs
  %i.lj = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread535

.thread535:                                       ; preds = %.thread535.loopexit, %bb.cc
  %.12539 = phi ptr [ %i.jf, %bb.cc ], [ %i.if, %.thread535.loopexit ]
  %.5334538 = phi i32 [ %.2331603, %bb.cc ], [ %i.lj, %.thread535.loopexit ]
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN2cv8FileNode8setValueEiPKvi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 3, ptr noundef nonnull %i.lk, i32 noundef %.5334538)
  br label %.thread555

bb.cw:                                            ; preds = %bb.av, %bb.au
  %i.ll = icmp eq i8 %.0340530, 123               ; 3 uses
  switch i8 %.0340530, label %bb.eg [
    i8 123, label %bb.cx
    i8 91, label %bb.cx
  ]

bb.cx:                                            ; preds = %bb.cw, %bb.cw
  %i.lm = icmp eq i8 %.0340530, 91
  %i.ln = xor i1 %4, true
  %i.lo = zext i1 %i.ln to i32
  %i.lp = add nsw i32 %3, %i.lo                   ; 8 uses
  %i.lq = select i1 %i.ll, i32 5, i32 4
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !23 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !12
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 152
  %i.lv = load ptr, ptr %i.lu, align 8
  tail call void %i.lv(ptr noundef nonnull align 8 dereferenceable(8) %i.ls, i32 noundef %i.lq, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.lw = select i1 %i.lm, i32 93, i32 125
  %i.lx = getelementptr inbounds nuw i8, ptr %.3533, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  call void @_ZN2cv8FileNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %21)
  %i.ly = call noundef ptr @_ZN2cv10YAMLParser10skipSpacesEPcii(ptr noundef nonnull align 8 dereferenceable(5136) %0, ptr noundef nonnull %i.lx, i32 noundef %i.lp, i32 noundef 2147483647) ; 6 uses
  %.not425607 = icmp eq ptr %i.ly, null
  br i1 %.not425607, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cx
  %i.lz = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 10 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.mb = load i8, ptr %i.ly, align 1, !tbaa !27  ; 3 uses
  switch i8 %i.mb, label %bb.cy [
    i8 125, label %.loopexit680.a
    i8 93, label %.loopexit680.a
  ]

bb.cy:                                            ; preds = %.lr.ph
  br i1 %i.ll, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  %i.mc = load ptr, ptr %i.lr, align 8, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #13
  store ptr %i.lz, ptr %31, align 8, !tbaa !32
  store i64 0, ptr %i.ma, align 8, !tbaa !33
  store i8 0, ptr %i.lz, align 8, !tbaa !27
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !12
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 160
  %i.mf = load ptr, ptr %i.me, align 8
  invoke void %i.mf(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %i.mc, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %31, i32 noundef 0, ptr noundef null, i32 noundef -1)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.da:                                            ; preds = %bb.cz
  %i.mg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv8FileNodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %30)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.db:                                            ; preds = %bb.da
  %i.mh = load ptr, ptr %31, align 8, !tbaa !31   ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.lz
  br i1 %i.mi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i499.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i498.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i498.peel: ; preds = %bb.db
  %i.mj = load i64, ptr %i.lz, align 8, !tbaa !27
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mk) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i499.peel: ; preds = %bb.db
  %i.ml = load i64, ptr %i.ma, align 8, !tbaa !33
  %i.mm = icmp ult i64 %i.ml, 16
  call void @llvm.assume(i1 %i.mm)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i499.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i498.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cy
  %i.mn = call noundef ptr @_ZN2cv10YAMLParser8parseKeyEPcRNS_8FileNodeES3_(ptr noundef nonnull align 8 dereferenceable(5136) %0, ptr noundef nonnull %i.ly, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %21)
  %i.mo = call noundef ptr @_ZN2cv10YAMLParser10skipSpacesEPcii(ptr noundef nonnull align 8 dereferenceable(5136) %0, ptr noundef %i.mn, i32 noundef %i.lp, i32 noundef 2147483647)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500.peel
  %.15.peel = phi ptr [ %i.mo, %bb.dc ], [ %i.ly, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500.peel ]
  %i.mp = call noundef ptr @_ZN2cv10YAMLParser10parseValueEPcRNS_8FileNodeEib(ptr noundef nonnull align 8 dereferenceable(5136) %0, ptr noundef %.15.peel, ptr noundef nonnull align 8 dereferenceable(24) %21, i32 noundef %i.lp, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  call void @_ZN2cv8FileNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %21)
  %i.mq = call noundef ptr @_ZN2cv10YAMLParser10skipSpacesEPcii(ptr noundef nonnull align 8 dereferenceable(5136) %0, ptr noundef %i.mp, i32 noundef %i.lp, i32 noundef 2147483647) ; 2 uses
  %.not425.peel = icmp eq ptr %i.mq, null
  br i1 %.not425.peel, label %._crit_edge, label %.peel.next

end_hunk_0
