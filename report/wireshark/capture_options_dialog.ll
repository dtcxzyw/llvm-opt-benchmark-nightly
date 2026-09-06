Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/capture_options_dialog?download=true
inline.NumInlined: 2429
inline.NumDeleted: 781
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN20CaptureOptionsDialog16updateInterfacesEP19capture_options_tag:bb.a
  %16 = alloca %class.QString, align 16           ; 5 uses
  %17 = alloca %class.QString, align 16           ; 10 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i8, align 1                       ; 5 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  %18 = alloca %class.QList.15, align 8           ; 15 uses
  %19 = alloca %class.QIcon, align 8              ; 7 uses
  %20 = alloca %class.StockIcon, align 8          ; 8 uses
  %21 = alloca %class.QString, align 16           ; 7 uses
  %22 = alloca %class.QVariant, align 8           ; 7 uses
  %23 = alloca %class.QString, align 16           ; 10 uses
  %24 = alloca %class.QString, align 8            ; 9 uses
  %25 = alloca %class.QString, align 16           ; 10 uses
  %26 = alloca %class.QVariant, align 8           ; 7 uses
  %27 = alloca %class.QString, align 16           ; 10 uses
  %28 = alloca %class.QString, align 8            ; 12 uses
  %29 = alloca %class.QString, align 8            ; 9 uses
  %30 = alloca %class.QString, align 8            ; 9 uses
  %31 = alloca %class.QString, align 8            ; 9 uses
  %32 = alloca %class.QString, align 16           ; 10 uses
  %33 = alloca %class.QString, align 16           ; 10 uses
  %34 = alloca %class.QString, align 8            ; 9 uses
  %35 = alloca %class.QString, align 8            ; 11 uses
  %36 = alloca %class.QString, align 8            ; 9 uses
  %37 = alloca %class.QString, align 8            ; 11 uses
  %38 = alloca %class.QString, align 8            ; 9 uses
  %39 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %40 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %41 = alloca %class.QFontMetrics, align 8       ; 7 uses
  %i.m = load i8, ptr getelementptr inbounds nuw (i8, ptr @prefs, i64 242), align 2, !range !8, !noundef !9
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  %. = select i1 %i.n, i64 192, i64 200
  %i.q = getelementptr i8, ptr %i.p, i64 %.
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.r, i1 noundef zeroext true)
  %i.s = getelementptr i8, ptr %0, i64 72         ; 47 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @prefs, i64 240), align 8, !range !8, !noundef !9
  %i.x = trunc nuw i8 %i.w to i1
  tail call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.v, i1 noundef zeroext %i.x)
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @prefs, i64 241), align 1, !range !8, !noundef !9
  %i.ac = trunc nuw i8 %i.ab to i1
  tail call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.aa, i1 noundef zeroext %i.ac)
  %i.ad = load ptr, ptr %i.s, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 56
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void @_ZN7QWidget10setEnabledEb(ptr noundef align 8 dereferenceable_or_null(40) %i.af, i1 noundef zeroext false)
  %i.ag = getelementptr i8, ptr %1, i64 216
  %i.ah = load i8, ptr %i.ag, align 8, !range !8, !noundef !9
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.aj = load ptr, ptr %i.s, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 160
  %i.al = load ptr, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.am = getelementptr i8, ptr %1, i64 248
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %_ZN7QStringC2EPKc.exit, label %.split.i.i

.split.i.i:                                       ; preds = %bb.b
  %i.ao = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.an) #26
  br label %_ZN7QStringC2EPKc.exit

_ZN7QStringC2EPKc.exit:                           ; preds = %bb.b, %.split.i.i
  %.sink5.i.i = phi i64 [ %i.ao, %.split.i.i ], [ 0, %bb.b ]
  call void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %16, i64 %.sink5.i.i, ptr %i.an)
  %i.ap = load <2 x ptr>, ptr %16, align 16
  store <2 x ptr> %i.ap, ptr %17, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.as = load i64, ptr %i.ar, align 16
  store i64 %i.as, ptr %i.aq, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  invoke void @_ZN9QLineEdit7setTextERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN7QStringC2EPKc.exit
  %i.at = load ptr, ptr %17, align 16             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.c
  %i.au = atomicrmw sub ptr %i.at, i32 1 acq_rel, align 4
  %.not.i.i238 = icmp eq i32 %i.au, 1
  br i1 %.not.i.i238, label %bb.d, label %_ZN7QStringD2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.av = load ptr, ptr %17, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.av, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.g

bb.e:                                             ; preds = %_ZN7QStringC2EPKc.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %17, align 16             ; 2 uses
  %.not.i.i.i239 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i239, label %_ZN7QStringD2Ev.exit242, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i240

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i240:   ; preds = %bb.e
  %i.ay = atomicrmw sub ptr %i.ax, i32 1 acq_rel, align 4
  %.not.i.i241 = icmp eq i32 %i.ay, 1
  br i1 %.not.i.i241, label %bb.f, label %_ZN7QStringD2Ev.exit242

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i240
  %i.az = load ptr, ptr %17, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.az, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit242

_ZN7QStringD2Ev.exit242:                          ; preds = %bb.e, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i240, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.gu

bb.g:                                             ; preds = %_ZN7QStringD2Ev.exit, %bb.a
  %i.ba = load ptr, ptr %i.s, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 264
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr i8, ptr %1, i64 256       ; 3 uses
  %i.be = load i8, ptr %i.bd, align 8, !range !8, !noundef !9
  %i.bf = trunc nuw i8 %i.be to i1
  call void @_ZN9QGroupBox10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.bc, i1 noundef zeroext %i.bf)
  %i.bg = load ptr, ptr %i.s, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 280
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr i8, ptr %1, i64 280       ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8, !range !8, !noundef !9
  %i.bl = trunc nuw i8 %i.bk to i1
  call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.bi, i1 noundef zeroext %i.bl)
  %i.bm = load i8, ptr %i.bj, align 8, !range !8, !noundef !9
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bo = load ptr, ptr %i.s, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 288
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %1, i64 284
  %i.bs = load i32, ptr %i.br, align 4
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.bq, i32 noundef %i.bs)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bt = load ptr, ptr %i.s, align 8
  %i.bu = getelementptr i8, ptr %i.bt, i64 304
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr i8, ptr %1, i64 320       ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !range !8, !noundef !9
  %i.by = trunc nuw i8 %i.bx to i1
  call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.bv, i1 noundef zeroext %i.by)
  %i.bz = load i8, ptr %i.bw, align 8, !range !8, !noundef !9
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr i8, ptr %1, i64 324
  %i.cc = load i32, ptr %i.cb, align 4            ; 9 uses
  %i.cd = icmp sgt i32 %i.cc, 1000000
  br i1 %i.cd, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ce = load i8, ptr %i.bd, align 8, !range !8, !noundef !9
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = load ptr, ptr %i.s, align 8             ; 2 uses
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr i8, ptr %i.cg, i64 312
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = udiv i32 %i.cc, 1000000
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.ci, i32 noundef %i.cj)
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %i.ck = getelementptr i8, ptr %i.cg, i64 656
  %i.cl = load ptr, ptr %i.ck, align 8
  call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.cl, i1 noundef zeroext true)
  %i.cm = load ptr, ptr %i.s, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 664
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = udiv i32 %i.cc, 1000000
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.co, i32 noundef %i.cp)
  br label %.sink.split

bb.n:                                             ; preds = %bb.j
  %i.cq = icmp sgt i32 %i.cc, 1000
  %i.cr = urem i32 %i.cc, 1000
  %i.cs = udiv i32 %i.cc, 1000
  %i.ct = icmp eq i32 %i.cr, 0
  %or.cond = and i1 %i.cq, %i.ct
  %i.cu = load i8, ptr %i.bd, align 8, !range !8, !noundef !9
  %i.cv = trunc nuw i8 %i.cu to i1                ; 2 uses
  %i.cw = load ptr, ptr %i.s, align 8             ; 4 uses
  br i1 %or.cond, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cx = getelementptr i8, ptr %i.cw, i64 312
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = udiv i32 %i.cc, 1000
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.cy, i32 noundef %i.cz)
  br label %.sink.split

bb.q:                                             ; preds = %bb.o
  %i.da = getelementptr i8, ptr %i.cw, i64 656
  %i.db = load ptr, ptr %i.da, align 8
  call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.db, i1 noundef zeroext true)
  %i.dc = load ptr, ptr %i.s, align 8
  %i.dd = getelementptr i8, ptr %i.dc, i64 664
  %i.de = load ptr, ptr %i.dd, align 8
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.de, i32 noundef %i.cs)
  br label %.sink.split

bb.r:                                             ; preds = %bb.n
  br i1 %i.cv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr i8, ptr %i.cw, i64 312
  %i.dg = load ptr, ptr %i.df, align 8
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.dg, i32 noundef %i.cc)
  br label %.sink.split

bb.t:                                             ; preds = %bb.r
  %i.dh = getelementptr i8, ptr %i.cw, i64 656
  %i.di = load ptr, ptr %i.dh, align 8
  call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.di, i1 noundef zeroext true)
  %i.dj = load ptr, ptr %i.s, align 8
  %i.dk = getelementptr i8, ptr %i.dj, i64 664
  %i.dl = load ptr, ptr %i.dk, align 8
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.dl, i32 noundef %i.cc)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.p, %bb.t, %bb.s, %bb.l, %bb.m
  %.sink724 = phi i64 [ 672, %bb.m ], [ 320, %bb.l ], [ 320, %bb.s ], [ 672, %bb.t ], [ 320, %bb.p ], [ 672, %bb.q ]
  %.sink721 = phi i32 [ 2, %bb.m ], [ 2, %bb.l ], [ 0, %bb.s ], [ 0, %bb.t ], [ 1, %bb.p ], [ 1, %bb.q ]
  %i.dm = load ptr, ptr %i.s, align 8
  %i.dn = getelementptr i8, ptr %i.dm, i64 %.sink724
  %i.do = load ptr, ptr %i.dn, align 8
  call void @_ZN9QComboBox15setCurrentIndexEi(ptr noundef align 8 dereferenceable_or_null(40) %i.do, i32 noundef %.sink721)
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.i
  %i.dp = load ptr, ptr %i.s, align 8
  %i.dq = getelementptr i8, ptr %i.dp, i64 328
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr i8, ptr %1, i64 257       ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !range !8, !noundef !9
  %i.du = trunc nuw i8 %i.dt to i1
  call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.dr, i1 noundef zeroext %i.du)
  %i.dv = load i8, ptr %i.ds, align 1, !range !8, !noundef !9
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.dx = getelementptr i8, ptr %1, i64 264
  %i.dy = load double, ptr %i.dx, align 8
  %i.dz = fptosi double %i.dy to i32              ; 7 uses
  %i.ea = icmp sgt i32 %i.dz, 3600
  %i.eb = urem i32 %i.dz, 3600
  %i.ec = udiv i32 %i.dz, 3600
  %i.ed = icmp eq i32 %i.eb, 0
  %or.cond227 = and i1 %i.ea, %i.ed
  br i1 %or.cond227, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ee = load ptr, ptr %i.s, align 8
  %i.ef = getelementptr i8, ptr %i.ee, i64 336
  %i.eg = load ptr, ptr %i.ef, align 8
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.eg, i32 noundef %i.ec)
  br label %.sink.split725

bb.x:                                             ; preds = %bb.v
  %i.eh = icmp sgt i32 %i.dz, 60
  %i.ei = urem i32 %i.dz, 60
  %i.ej = udiv i32 %i.dz, 60
  %i.ek = icmp eq i32 %i.ei, 0
  %or.cond229 = and i1 %i.eh, %i.ek
  %i.el = load ptr, ptr %i.s, align 8
  %i.em = getelementptr i8, ptr %i.el, i64 336
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  br i1 %or.cond229, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.en, i32 noundef %i.ej)
  br label %.sink.split725

bb.z:                                             ; preds = %bb.x
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.en, i32 noundef %i.dz)
  br label %.sink.split725

.sink.split725:                                   ; preds = %bb.y, %bb.z, %bb.w
  %.sink727 = phi i32 [ 2, %bb.w ], [ 0, %bb.z ], [ 1, %bb.y ]
  %i.eo = load ptr, ptr %i.s, align 8
  %i.ep = getelementptr i8, ptr %i.eo, i64 344
  %i.eq = load ptr, ptr %i.ep, align 8
  call void @_ZN9QComboBox15setCurrentIndexEi(ptr noundef align 8 dereferenceable_or_null(40) %i.eq, i32 noundef %.sink727)
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split725, %bb.u
  %i.er = load ptr, ptr %i.s, align 8
  %i.es = getelementptr i8, ptr %i.er, i64 352
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr i8, ptr %1, i64 272       ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 8, !range !8, !noundef !9
  %i.ew = trunc nuw i8 %i.ev to i1
  call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.et, i1 noundef zeroext %i.ew)
  %i.ex = load i8, ptr %i.eu, align 8, !range !8, !noundef !9
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ez = getelementptr i8, ptr %1, i64 276
  %i.fa = load i32, ptr %i.ez, align 4            ; 7 uses
  %i.fb = icmp sgt i32 %i.fa, 3600
  %i.fc = urem i32 %i.fa, 3600
  %i.fd = udiv i32 %i.fa, 3600
  %i.fe = icmp eq i32 %i.fc, 0
  %or.cond231 = and i1 %i.fb, %i.fe
  br i1 %or.cond231, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ff = load ptr, ptr %i.s, align 8
  %i.fg = getelementptr i8, ptr %i.ff, i64 360
  %i.fh = load ptr, ptr %i.fg, align 8
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.fh, i32 noundef %i.fd)
  br label %.sink.split730

bb.ad:                                            ; preds = %bb.ab
  %i.fi = icmp sgt i32 %i.fa, 60
  %i.fj = urem i32 %i.fa, 60
  %i.fk = udiv i32 %i.fa, 60
  %i.fl = icmp eq i32 %i.fj, 0
  %or.cond233 = and i1 %i.fi, %i.fl
  %i.fm = load ptr, ptr %i.s, align 8
  %i.fn = getelementptr i8, ptr %i.fm, i64 360
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  br i1 %or.cond233, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.fo, i32 noundef %i.fk)
  br label %.sink.split730

bb.af:                                            ; preds = %bb.ad
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.fo, i32 noundef %i.fa)
  br label %.sink.split730

.sink.split730:                                   ; preds = %bb.ae, %bb.af, %bb.ac
  %.sink732 = phi i32 [ 2, %bb.ac ], [ 0, %bb.af ], [ 1, %bb.ae ]
  %i.fp = load ptr, ptr %i.s, align 8
  %i.fq = getelementptr i8, ptr %i.fp, i64 368
  %i.fr = load ptr, ptr %i.fq, align 8
  call void @_ZN9QComboBox15setCurrentIndexEi(ptr noundef align 8 dereferenceable_or_null(40) %i.fr, i32 noundef %.sink732)
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split730, %bb.aa
  %i.fs = getelementptr i8, ptr %1, i64 288
  %i.ft = load i8, ptr %i.fs, align 8, !range !8, !noundef !9
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fv = load ptr, ptr %i.s, align 8
  %i.fw = getelementptr i8, ptr %i.fv, i64 432
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr i8, ptr %1, i64 292
  %i.fz = load i32, ptr %i.fy, align 4
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.fx, i32 noundef %i.fz)
  %i.ga = load ptr, ptr %i.s, align 8
  %i.gb = getelementptr i8, ptr %i.ga, i64 424
  %i.gc = load ptr, ptr %i.gb, align 8
  call void @_ZN9QCheckBox13setCheckStateEN2Qt10CheckStateE(ptr noundef align 8 dereferenceable_or_null(40) %i.gc, i32 noundef 2)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gd = getelementptr i8, ptr %1, i64 328
  %i.ge = load i8, ptr %i.gd, align 8, !range !8, !noundef !9
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.gg = load ptr, ptr %i.s, align 8
  %i.gh = getelementptr i8, ptr %i.gg, i64 680
  %i.gi = load ptr, ptr %i.gh, align 8
  call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.gi, i1 noundef zeroext true)
  %i.gj = getelementptr i8, ptr %1, i64 336
  %i.gk = load double, ptr %i.gj, align 8
  %i.gl = fptosi double %i.gk to i32              ; 7 uses
  %i.gm = icmp sgt i32 %i.gl, 3600
  %i.gn = urem i32 %i.gl, 3600
  %i.go = udiv i32 %i.gl, 3600
  %i.gp = icmp eq i32 %i.gn, 0
  %or.cond235 = and i1 %i.gm, %i.gp
  br i1 %or.cond235, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gq = load ptr, ptr %i.s, align 8
  %i.gr = getelementptr i8, ptr %i.gq, i64 688
  %i.gs = load ptr, ptr %i.gr, align 8
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.gs, i32 noundef %i.go)
  br label %.sink.split735

bb.al:                                            ; preds = %bb.aj
  %i.gt = icmp sgt i32 %i.gl, 60
  %i.gu = urem i32 %i.gl, 60
  %i.gv = udiv i32 %i.gl, 60
  %i.gw = icmp eq i32 %i.gu, 0
  %or.cond237 = and i1 %i.gt, %i.gw
  %i.gx = load ptr, ptr %i.s, align 8
  %i.gy = getelementptr i8, ptr %i.gx, i64 688
  %i.gz = load ptr, ptr %i.gy, align 8            ; 2 uses
  br i1 %or.cond237, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.gz, i32 noundef %i.gv)
  br label %.sink.split735

bb.an:                                            ; preds = %bb.al
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.gz, i32 noundef %i.gl)
  br label %.sink.split735

.sink.split735:                                   ; preds = %bb.am, %bb.an, %bb.ak
  %.sink737 = phi i32 [ 2, %bb.ak ], [ 0, %bb.an ], [ 1, %bb.am ]
  %i.ha = load ptr, ptr %i.s, align 8
  %i.hb = getelementptr i8, ptr %i.ha, i64 696
  %i.hc = load ptr, ptr %i.hb, align 8
  call void @_ZN9QComboBox15setCurrentIndexEi(ptr noundef align 8 dereferenceable_or_null(40) %i.hc, i32 noundef %.sink737)
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split735, %bb.ai
  %i.hd = getelementptr i8, ptr %1, i64 304
  %i.he = load i8, ptr %i.hd, align 8, !range !8, !noundef !9
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hg = load ptr, ptr %i.s, align 8
  %i.hh = getelementptr i8, ptr %i.hg, i64 608
  %i.hi = load ptr, ptr %i.hh, align 8
  call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.hi, i1 noundef zeroext true)
  %i.hj = load ptr, ptr %i.s, align 8
  %i.hk = getelementptr i8, ptr %i.hj, i64 616
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = getelementptr i8, ptr %1, i64 308
  %i.hn = load i32, ptr %i.hm, align 4
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.hl, i32 noundef %i.hn)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ho = getelementptr i8, ptr %1, i64 297
  %i.hp = load i8, ptr %i.ho, align 1, !range !8, !noundef !9
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hr = load ptr, ptr %i.s, align 8
  %i.hs = getelementptr i8, ptr %i.hr, i64 632
  %i.ht = load ptr, ptr %i.hs, align 8
  call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.ht, i1 noundef zeroext true)
  %i.hu = load ptr, ptr %i.s, align 8
  %i.hv = getelementptr i8, ptr %i.hu, i64 640
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = getelementptr i8, ptr %1, i64 300
  %i.hy = load i32, ptr %i.hx, align 4
  call void @_ZN8QSpinBox8setValueEi(ptr noundef align 8 dereferenceable_or_null(40) %i.hw, i32 noundef %i.hy)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.hz = load ptr, ptr %i.s, align 8
  %i.ia = getelementptr i8, ptr %i.hz, i64 504
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = getelementptr i8, ptr %1, i64 240
  %i.id = load i8, ptr %i.ic, align 8, !range !8, !noundef !9
  %i.ie = trunc nuw i8 %i.id to i1
  call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.ib, i1 noundef zeroext %i.ie)
  %i.if = load ptr, ptr %i.s, align 8
  %i.ig = getelementptr i8, ptr %i.if, i64 512
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = load i8, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 9), align 1, !range !8, !noundef !9
  %i.ij = trunc nuw i8 %i.ii to i1
  call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.ih, i1 noundef zeroext %i.ij)
  %i.ik = load ptr, ptr %i.s, align 8
  %i.il = getelementptr i8, ptr %i.ik, i64 520
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = getelementptr i8, ptr %1, i64 241
  %i.io = load i8, ptr %i.in, align 1, !range !8, !noundef !9
  %i.ip = trunc nuw i8 %i.io to i1
  call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.im, i1 noundef zeroext %i.ip)
  %i.iq = load ptr, ptr %i.s, align 8
  %i.ir = getelementptr i8, ptr %i.iq, i64 552
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = load i8, ptr @gbl_resolv_flags, align 1, !range !8, !noundef !9
  %i.iu = trunc nuw i8 %i.it to i1
  call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.is, i1 noundef zeroext %i.iu)
  %i.iv = load ptr, ptr %i.s, align 8
  %i.iw = getelementptr i8, ptr %i.iv, i64 560
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = load i8, ptr getelementptr inbounds nuw (i8, ptr @gbl_resolv_flags, i64 1), align 1, !range !8, !noundef !9
  %i.iz = trunc nuw i8 %i.iy to i1
  call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.ix, i1 noundef zeroext %i.iz)
  %i.ja = load ptr, ptr %i.s, align 8
  %i.jb = getelementptr i8, ptr %i.ja, i64 568
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = load i8, ptr getelementptr inbounds nuw (i8, ptr @gbl_resolv_flags, i64 2), align 1, !range !8, !noundef !9
  %i.je = trunc nuw i8 %i.jd to i1
  call void @_ZN15QAbstractButton10setCheckedEb(ptr noundef align 8 dereferenceable_or_null(40) %i.jc, i1 noundef zeroext %i.je)
  %i.jf = load ptr, ptr %i.s, align 8
  %i.jg = getelementptr i8, ptr %i.jf, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 ptrtoint (ptr @_ZN11QTreeWidget20itemSelectionChangedEv to i64), ptr %i.h, align 8
  %.fca.1.gep4.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %.fca.1.gep4.i, align 8
  store i64 ptrtoint (ptr @_ZN20CaptureOptionsDialog17interfaceSelectedEv to i64), ptr %i.i, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8
  %i.ji = call noundef zeroext i1 @_ZN7QObject14disconnectImplEPKS_PPvS1_S3_PK11QMetaObject(ptr noundef %i.jh, ptr noundef nonnull %i.h, ptr noundef %0, ptr noundef nonnull %i.i, ptr noundef nonnull @_ZN11QTreeWidget16staticMetaObjectE) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.jj = load ptr, ptr %i.s, align 8
  %i.jk = getelementptr i8, ptr %i.jj, i64 32
  %i.jl = load ptr, ptr %i.jk, align 8
  call void @_ZN11QTreeWidget5clearEv(ptr noundef align 8 dereferenceable_or_null(40) %i.jl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %18, i8 0, i64 24, i1 false)
  %i.jm = load ptr, ptr %i.s, align 8
  %i.jn = getelementptr i8, ptr %i.jm, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 ptrtoint (ptr @_ZN11QTreeWidget11itemChangedEP15QTreeWidgetItemi to i64), ptr %i.f, align 8
  %.fca.1.gep4.i243 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %.fca.1.gep4.i243, align 8
  store i64 ptrtoint (ptr @_ZN20CaptureOptionsDialog20interfaceItemChangedEP15QTreeWidgetItemi to i64), ptr %i.g, align 8
  %.fca.1.gep.i244 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %.fca.1.gep.i244, align 8
  %i.jp = invoke noundef zeroext i1 @_ZN7QObject14disconnectImplEPKS_PPvS1_S3_PK11QMetaObject(ptr noundef %i.jo, ptr noundef nonnull %i.f, ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef nonnull @_ZN11QTreeWidget16staticMetaObjectE)
          to label %bb.at unwind label %bb.au     ; 0 uses

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.jq = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8            ; 2 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 8
  %i.jt = load i32, ptr %i.js, align 8
  %.not = icmp eq i32 %i.jt, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.at
  %i.ju = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.jv = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.jw = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.jx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ka = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.kb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.kc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.kf = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.kg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.kj = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.kl = getelementptr inbounds nuw i8, ptr %18, i64 16
  br label %bb.av

bb.au:                                            ; preds = %.noexc467, %_ZN9QtPrivate17QForeachContainerI5QListIP15QTreeWidgetItemEED2Ev.exit, %.noexc457, %.loopexit, %bb.as, %bb.gc
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP15QTreeWidgetItemEED2Ev.exit472

bb.av:                                            ; preds = %.lr.ph, %bb.fv
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.fv ] ; 2 uses
  %i.kn = phi ptr [ %i.jr, %.lr.ph ], [ %i.uf, %bb.fv ]
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = getelementptr [160 x i8], ptr %i.ko, i64 %indvars.iv ; 20 uses
  %i.kq = getelementptr i8, ptr %i.kp, i64 137
  %i.kr = load i8, ptr %i.kq, align 1, !range !8, !noundef !9
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.fv, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kt = invoke noalias noundef dereferenceable_or_null(120) ptr @_Znwm(i64 noundef 120) #25
          to label %bb.ax unwind label %bb.bo     ; 24 uses

bb.ax:                                            ; preds = %bb.aw
  %i.ku = load ptr, ptr %i.s, align 8
  %i.kv = getelementptr i8, ptr %i.ku, i64 32
  %i.kw = load ptr, ptr %i.kv, align 8
  invoke void @_ZN15QTreeWidgetItemC2EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(120) %i.kt, ptr noundef %i.kw, i32 noundef 0)
          to label %bb.ay unwind label %bb.bp

bb.ay:                                            ; preds = %bb.ax
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV23InterfaceTreeWidgetItem, i64 16), ptr %i.kt, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 96 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %i.kx, i8 0, i64 24, i1 false)
  %i.ky = invoke i32 @_ZNK15QTreeWidgetItem5flagsEv(ptr noundef align 8 dereferenceable_or_null(92) %i.kt)
          to label %bb.az unwind label %bb.bq
end_hunk_0
