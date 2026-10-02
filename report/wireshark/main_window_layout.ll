Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/main_window_layout?download=true
inline.NumInlined: 511
inline.NumDeleted: 237
begin_hunk_0_@_ZN10MainWindow11layoutPanesEv:bb.a
bb.r:                                             ; preds = %bb.q
  %i.cp = load ptr, ptr %i.cf, align 8
  invoke void @_ZN7QWidget9setParentEPS_(ptr noundef nonnull align 8 dereferenceable_or_null(40) %i.co, ptr noundef %i.cp)
          to label %bb.s unwind label %bb.db

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cq = getelementptr i8, ptr %0, i64 208       ; 7 uses
  %i.cr = load ptr, ptr %i.cf, align 8
  invoke void @_ZN7QWidget9setParentEPS_(ptr noundef align 8 dereferenceable_or_null(40) %i.cq, ptr noundef %i.cr)
          to label %bb.t unwind label %bb.db

bb.t:                                             ; preds = %bb.s
  %i.cs = getelementptr i8, ptr %0, i64 168       ; 15 uses
  %i.ct = load ptr, ptr %i.cf, align 8
  invoke void @_ZN7QWidget9setParentEPS_(ptr noundef align 8 dereferenceable_or_null(40) %i.cs, ptr noundef %i.ct)
          to label %bb.u unwind label %bb.db

bb.u:                                             ; preds = %bb.t
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @prefs, i64 132), align 4
  switch i32 %i.cu, label %.invoke219 [
    i32 2, label %bb.v
    i32 3, label %bb.v
    i32 1, label %bb.w
    i32 4, label %bb.x
    i32 5, label %bb.x
    i32 6, label %.invoke
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  invoke void @_ZN9QSplitter14setOrientationEN2Qt11OrientationE(ptr noundef align 8 dereferenceable_or_null(40) %i.cs, i32 noundef 1)
          to label %bb.w unwind label %bb.db

bb.w:                                             ; preds = %bb.v, %bb.u
  br label %.invoke

.invoke:                                          ; preds = %bb.u, %bb.x, %bb.w
  %i.cv = phi i32 [ 2, %bb.w ], [ 1, %bb.x ], [ 1, %bb.u ]
  %i.cw = getelementptr i8, ptr %0, i64 128
  invoke void @_ZN9QSplitter14setOrientationEN2Qt11OrientationE(ptr noundef align 8 dereferenceable_or_null(40) %i.cw, i32 noundef %i.cv)
          to label %bb.y unwind label %bb.db

bb.x:                                             ; preds = %bb.u, %bb.u
  invoke void @_ZN9QSplitter14setOrientationEN2Qt11OrientationE(ptr noundef align 8 dereferenceable_or_null(40) %i.cs, i32 noundef 2)
          to label %.invoke unwind label %bb.db

.invoke219:                                       ; preds = %bb.an, %bb.ai, %.thread, %bb.y, %bb.u
  %i.cx = phi i64 [ 177, %bb.y ], [ 154, %bb.u ], [ 65, %.thread ], [ 65, %bb.ai ], [ 65, %bb.an ]
  %i.cy = phi ptr [ @__func__._ZN10MainWindow11layoutPanesEv, %bb.y ], [ @__func__._ZN10MainWindow11layoutPanesEv, %bb.u ], [ @__func__._ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e, %.thread ], [ @__func__._ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e, %bb.ai ], [ @__func__._ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e, %bb.an ]
  invoke void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str, i32 noundef 7, ptr noundef nonnull @.str.1, i64 noundef %i.cx, ptr noundef nonnull %i.cy, ptr noundef nonnull @.str.2) #11
          to label %.cont unwind label %bb.db

.cont:                                            ; preds = %.invoke219
  unreachable

bb.y:                                             ; preds = %.invoke
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @prefs, i64 132), align 4
  switch i32 %i.cz, label %.invoke219 [
    i32 1, label %bb.z
    i32 6, label %bb.z
    i32 2, label %bb.aa
    i32 4, label %bb.aa
    i32 3, label %bb.ab
    i32 5, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.da = getelementptr i8, ptr %0, i64 128       ; 3 uses
  br label %.thread

bb.aa:                                            ; preds = %bb.y, %bb.y
  %i.db = getelementptr i8, ptr %0, i64 128
  br label %.thread

bb.ab:                                            ; preds = %bb.y, %bb.y
  %i.dc = getelementptr i8, ptr %0, i64 128       ; 2 uses
  invoke void @_ZN9QSplitter9addWidgetEP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %i.dc, ptr noundef %i.cs)
          to label %.thread unwind label %bb.db

.thread:                                          ; preds = %bb.aa, %bb.z, %bb.ab
  %.sroa.0.0161 = phi ptr [ %i.da, %bb.z ], [ %i.cs, %bb.ab ], [ %i.db, %bb.aa ]
  %.sroa.8.0160 = phi ptr [ %i.da, %bb.z ], [ %i.cs, %bb.ab ], [ %i.cs, %bb.aa ]
  %.sroa.12.0159 = phi ptr [ %i.da, %bb.z ], [ %i.dc, %bb.ab ], [ %i.cs, %bb.aa ] ; 2 uses
  %i.dd = load i32, ptr getelementptr inbounds nuw (i8, ptr @prefs, i64 136), align 8
  switch i32 %i.dd, label %.invoke219 [
    i32 0, label %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit
    i32 1, label %bb.ac
    i32 2, label %bb.ad
    i32 3, label %bb.ae
    i32 4, label %bb.af
  ]

bb.ac:                                            ; preds = %.thread
  %i.de = load ptr, ptr %i.cb, align 8
  br label %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit

bb.ad:                                            ; preds = %.thread
  %i.df = load ptr, ptr %i.ch, align 8
  br label %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit

bb.ae:                                            ; preds = %.thread
  %i.dg = load ptr, ptr %i.ck, align 8
  br label %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit

bb.af:                                            ; preds = %.thread
  %i.dh = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not.i93 = icmp eq ptr %i.dh, null
  %i.di = select i1 %.not.i93, ptr %i.cq, ptr %i.dh
  br label %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit

_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %.thread
  %.0.i94 = phi ptr [ %i.di, %bb.af ], [ %i.de, %bb.ac ], [ %i.df, %bb.ad ], [ %i.dg, %bb.ae ], [ %i.cq, %.thread ]
  invoke void @_ZN9QSplitter9addWidgetEP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %.sroa.0.0161, ptr noundef %.0.i94)
          to label %bb.ag unwind label %bb.db

bb.ag:                                            ; preds = %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit
  %i.dj = icmp eq ptr %.sroa.12.0159, %i.cs
  br i1 %i.dj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dk = getelementptr i8, ptr %0, i64 128
  invoke void @_ZN9QSplitter9addWidgetEP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %i.dk, ptr noundef %i.cs)
          to label %bb.ai unwind label %bb.db

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @prefs, i64 140), align 4
  switch i32 %i.dl, label %.invoke219 [
    i32 0, label %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit99
    i32 1, label %bb.aj
    i32 2, label %bb.ak
    i32 3, label %bb.al
    i32 4, label %bb.am
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.dm = load ptr, ptr %i.cb, align 8
  br label %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit99

bb.ak:                                            ; preds = %bb.ai
  %i.dn = load ptr, ptr %i.ch, align 8
  br label %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit99

bb.al:                                            ; preds = %bb.ai
  %i.do = load ptr, ptr %i.ck, align 8
  br label %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit99

bb.am:                                            ; preds = %bb.ai
  %i.dp = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not.i96 = icmp eq ptr %i.dp, null
  %i.dq = select i1 %.not.i96, ptr %i.cq, ptr %i.dp
  br label %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit99

_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit99: ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %.0.i97 = phi ptr [ %i.dq, %bb.am ], [ %i.dm, %bb.aj ], [ %i.dn, %bb.ak ], [ %i.do, %bb.al ], [ %i.cq, %bb.ai ]
  invoke void @_ZN9QSplitter9addWidgetEP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %.sroa.8.0160, ptr noundef %.0.i97)
          to label %bb.an unwind label %bb.db

bb.an:                                            ; preds = %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit99
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @prefs, i64 144), align 8
  switch i32 %i.dr, label %.invoke219 [
    i32 0, label %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit103
    i32 1, label %bb.ao
    i32 2, label %bb.ap
    i32 3, label %bb.aq
    i32 4, label %bb.ar
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ds = load ptr, ptr %i.cb, align 8
  br label %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit103

bb.ap:                                            ; preds = %bb.an
  %i.dt = load ptr, ptr %i.ch, align 8
  br label %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit103

bb.aq:                                            ; preds = %bb.an
  %i.du = load ptr, ptr %i.ck, align 8
  br label %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit103

bb.ar:                                            ; preds = %bb.an
  %i.dv = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not.i100 = icmp eq ptr %i.dv, null
  %i.dw = select i1 %.not.i100, ptr %i.cq, ptr %i.dv
  br label %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit103

_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit103: ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.0.i101 = phi ptr [ %i.dw, %bb.ar ], [ %i.ds, %bb.ao ], [ %i.dt, %bb.ap ], [ %i.du, %bb.aq ], [ %i.cq, %bb.an ]
  invoke void @_ZN9QSplitter9addWidgetEP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %.sroa.12.0159, ptr noundef %.0.i101)
          to label %bb.as unwind label %bb.db

bb.as:                                            ; preds = %_ZN10MainWindow15getLayoutWidgetE21layout_pane_content_e.exit103
  br i1 %i.cd, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dx = load ptr, ptr %i.cb, align 8
  invoke void @_ZN7QWidget4showEv(ptr noundef align 8 dereferenceable_or_null(40) %i.dx)
          to label %bb.au unwind label %bb.db

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.dy = getelementptr i8, ptr %0, i64 128       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %3, i8 0, i64 24, i1 false), !alias.scope !22
  invoke void @_Z23qt_qFindChildren_helperPK7QObjectRK11QMetaObjectP5QListIPvE6QFlagsIN2Qt15FindChildOptionEE(ptr noundef align 8 dereferenceable_or_null(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(56) @_ZN7QWidget16staticMetaObjectE, ptr noundef nonnull align 8 %3, i32 1)
          to label %_ZNK7QObject12findChildrenIP7QWidgetEE5QListIT_E6QFlagsIN2Qt15FindChildOptionEE.exit unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ea = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i140 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i140, label %.body, label %_ZN17QArrayDataPointerIP7QWidgetE5derefEv.exit.i.i141

_ZN17QArrayDataPointerIP7QWidgetE5derefEv.exit.i.i141: ; preds = %bb.av
  %i.eb = atomicrmw sub ptr %i.ea, i32 1 acq_rel, align 4
  %.not.i.i142 = icmp eq i32 %i.eb, 1
  br i1 %.not.i.i142, label %.split, label %.body

.split:                                           ; preds = %_ZN17QArrayDataPointerIP7QWidgetE5derefEv.exit.i.i141
  %i.ec = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ec, i64 noundef 8, i64 noundef 8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br i1 %.not.i.i.i208, label %_ZN5QListIjED2Ev.exit139, label %_ZN17QArrayDataPointerIjE5derefEv.exit.i.i137

_ZNK7QObject12findChildrenIP7QWidgetEE5QListIT_E6QFlagsIN2Qt15FindChildOptionEE.exit: ; preds = %bb.au
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ee = load i64, ptr %i.ed, align 8            ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, 0
  br i1 %i.ef, label %bb.aw, label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP9QSplitterEEbRKT_.exit

bb.aw:                                            ; preds = %_ZNK7QObject12findChildrenIP7QWidgetEE5QListIT_E6QFlagsIN2Qt15FindChildOptionEE.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8            ; 3 uses
  %.idx = shl i64 %i.ee, 3                        ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 %.idx
  %.not.i.i.i104225 = icmp eq i64 %.idx, 0
  br i1 %.not.i.i.i104225, label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP9QSplitterEEbRKT_.exit, label %.lr.ph

bb.ax:                                            ; preds = %.lr.ph
  %i.ej = getelementptr i8, ptr %i.ek, i64 8      ; 2 uses
  %.not.i.i.i104 = icmp eq ptr %i.ej, %i.ei
  br i1 %.not.i.i.i104, label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP9QSplitterEEbRKT_.exit, label %.lr.ph, !llvm.loop !10

.lr.ph:                                           ; preds = %bb.aw, %bb.ax
  %i.ek = phi ptr [ %i.ej, %bb.ax ], [ %i.eh, %bb.aw ] ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = icmp eq ptr %i.el, %i.cs
  br i1 %i.em, label %bb.ay, label %bb.ax, !llvm.loop !10

bb.ay:                                            ; preds = %.lr.ph
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = ptrtoint ptr %i.eh to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = icmp ne i64 %i.ep, -8
  br label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP9QSplitterEEbRKT_.exit

_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP9QSplitterEEbRKT_.exit: ; preds = %bb.ax, %bb.aw, %_ZNK7QObject12findChildrenIP7QWidgetEE5QListIT_E6QFlagsIN2Qt15FindChildOptionEE.exit, %bb.ay
  %.1.i.i.i = phi i1 [ %i.eq, %bb.ay ], [ false, %_ZNK7QObject12findChildrenIP7QWidgetEE5QListIT_E6QFlagsIN2Qt15FindChildOptionEE.exit ], [ false, %bb.aw ], [ false, %bb.ax ]
  invoke void @_ZN7QWidget10setVisibleEb(ptr noundef align 8 dereferenceable_or_null(40) %i.cs, i1 noundef zeroext %.1.i.i.i)
          to label %bb.az unwind label %bb.bq

bb.az:                                            ; preds = %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP9QSplitterEEbRKT_.exit
  %i.er = load ptr, ptr %i.cb, align 8            ; 3 uses
  %i.es = load i64, ptr %i.ed, align 8            ; 2 uses
  %i.et = icmp sgt i64 %i.es, 0
  br i1 %i.et, label %bb.ba, label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP10PacketListEEbRKT_.exit

bb.ba:                                            ; preds = %bb.az
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8            ; 3 uses
  %.idx234 = shl i64 %i.es, 3                     ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 %.idx234
  %.not.i.i.i107226 = icmp eq i64 %.idx234, 0
  br i1 %.not.i.i.i107226, label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP10PacketListEEbRKT_.exit, label %.lr.ph227

bb.bb:                                            ; preds = %.lr.ph227
  %i.ex = getelementptr i8, ptr %i.ey, i64 8      ; 2 uses
  %.not.i.i.i107 = icmp eq ptr %i.ex, %i.ew
  br i1 %.not.i.i.i107, label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP10PacketListEEbRKT_.exit, label %.lr.ph227, !llvm.loop !11

.lr.ph227:                                        ; preds = %bb.ba, %bb.bb
  %i.ey = phi ptr [ %i.ex, %bb.bb ], [ %i.ev, %bb.ba ] ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = icmp eq ptr %i.ez, %i.er
  br i1 %i.fa, label %bb.bc, label %bb.bb, !llvm.loop !11

bb.bc:                                            ; preds = %.lr.ph227
  %i.fb = ptrtoint ptr %i.ey to i64
  %i.fc = ptrtoint ptr %i.ev to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = icmp ne i64 %i.fd, -8
  br label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP10PacketListEEbRKT_.exit

_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP10PacketListEEbRKT_.exit: ; preds = %bb.bb, %bb.ba, %bb.az, %bb.bc
  %.1.i.i.i105 = phi i1 [ %i.fe, %bb.bc ], [ false, %bb.az ], [ false, %bb.ba ], [ false, %bb.bb ]
  %i.ff = load i8, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 3), align 1, !range !17
  %i.fg = trunc nuw i8 %i.ff to i1
  %i.fh = select i1 %.1.i.i.i105, i1 %i.fg, i1 false
  %i.fi = load ptr, ptr %i.er, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 104
  %i.fk = load ptr, ptr %i.fj, align 8
  invoke void %i.fk(ptr noundef align 8 dereferenceable_or_null(40) %i.er, i1 noundef zeroext %i.fh)
          to label %bb.bd unwind label %bb.br

bb.bd:                                            ; preds = %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP10PacketListEEbRKT_.exit
  %i.fl = load ptr, ptr %i.ch, align 8            ; 3 uses
  %i.fm = load i64, ptr %i.ed, align 8            ; 2 uses
  %i.fn = icmp sgt i64 %i.fm, 0
  br i1 %i.fn, label %bb.be, label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP9ProtoTreeEEbRKT_.exit

bb.be:                                            ; preds = %bb.bd
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8            ; 3 uses
  %.idx235 = shl i64 %i.fm, 3                     ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 %.idx235
  %.not.i.i.i110228 = icmp eq i64 %.idx235, 0
  br i1 %.not.i.i.i110228, label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP9ProtoTreeEEbRKT_.exit, label %.lr.ph229

bb.bf:                                            ; preds = %.lr.ph229
  %i.fr = getelementptr i8, ptr %i.fs, i64 8      ; 2 uses
  %.not.i.i.i110 = icmp eq ptr %i.fr, %i.fq
  br i1 %.not.i.i.i110, label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP9ProtoTreeEEbRKT_.exit, label %.lr.ph229, !llvm.loop !12

.lr.ph229:                                        ; preds = %bb.be, %bb.bf
  %i.fs = phi ptr [ %i.fr, %bb.bf ], [ %i.fp, %bb.be ] ; 3 uses
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = icmp eq ptr %i.ft, %i.fl
  br i1 %i.fu, label %bb.bg, label %bb.bf, !llvm.loop !12

bb.bg:                                            ; preds = %.lr.ph229
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = ptrtoint ptr %i.fp to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = icmp ne i64 %i.fx, -8
  br label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP9ProtoTreeEEbRKT_.exit

_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP9ProtoTreeEEbRKT_.exit: ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bg
  %.1.i.i.i108 = phi i1 [ %i.fy, %bb.bg ], [ false, %bb.bd ], [ false, %bb.be ], [ false, %bb.bf ]
  %i.fz = load i8, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 4), align 4, !range !17
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = select i1 %.1.i.i.i108, i1 %i.ga, i1 false
  %i.gc = load ptr, ptr %i.fl, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 104
  %i.ge = load ptr, ptr %i.gd, align 8
  invoke void %i.ge(ptr noundef align 8 dereferenceable_or_null(40) %i.fl, i1 noundef zeroext %i.gb)
          to label %bb.bh unwind label %bb.br

bb.bh:                                            ; preds = %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP9ProtoTreeEEbRKT_.exit
  %i.gf = load ptr, ptr %i.ck, align 8            ; 3 uses
  %i.gg = load i64, ptr %i.ed, align 8            ; 2 uses
  %i.gh = icmp sgt i64 %i.gg, 0
  br i1 %i.gh, label %bb.bi, label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP13DataSourceTabEEbRKT_.exit

bb.bi:                                            ; preds = %bb.bh
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8            ; 3 uses
  %.idx236 = shl i64 %i.gg, 3                     ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 %.idx236
  %.not.i.i.i113230 = icmp eq i64 %.idx236, 0
  br i1 %.not.i.i.i113230, label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP13DataSourceTabEEbRKT_.exit, label %.lr.ph231

bb.bj:                                            ; preds = %.lr.ph231
  %i.gl = getelementptr i8, ptr %i.gm, i64 8      ; 2 uses
  %.not.i.i.i113 = icmp eq ptr %i.gl, %i.gk
  br i1 %.not.i.i.i113, label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP13DataSourceTabEEbRKT_.exit, label %.lr.ph231, !llvm.loop !13

.lr.ph231:                                        ; preds = %bb.bi, %bb.bj
  %i.gm = phi ptr [ %i.gl, %bb.bj ], [ %i.gj, %bb.bi ] ; 3 uses
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = icmp eq ptr %i.gn, %i.gf
  br i1 %i.go, label %bb.bk, label %bb.bj, !llvm.loop !13

bb.bk:                                            ; preds = %.lr.ph231
  %i.gp = ptrtoint ptr %i.gm to i64
  %i.gq = ptrtoint ptr %i.gj to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = icmp ne i64 %i.gr, -8
  br label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP13DataSourceTabEEbRKT_.exit

_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP13DataSourceTabEEbRKT_.exit: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bk
  %.1.i.i.i111 = phi i1 [ %i.gs, %bb.bk ], [ false, %bb.bh ], [ false, %bb.bi ], [ false, %bb.bj ]
  %i.gt = load i8, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 5), align 1, !range !17
  %i.gu = trunc nuw i8 %i.gt to i1
  %i.gv = select i1 %.1.i.i.i111, i1 %i.gu, i1 false
  %i.gw = load ptr, ptr %i.gf, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 104
  %i.gy = load ptr, ptr %i.gx, align 8
  invoke void %i.gy(ptr noundef align 8 dereferenceable_or_null(40) %i.gf, i1 noundef zeroext %i.gv)
          to label %bb.bl unwind label %bb.br

bb.bl:                                            ; preds = %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP13DataSourceTabEEbRKT_.exit
  %i.gz = load ptr, ptr %i.cn, align 8            ; 4 uses
  %.not30 = icmp eq ptr %i.gz, null
  br i1 %.not30, label %.preheader238, label %bb.bm

.preheader238:                                    ; preds = %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP13PacketDiagramEEbRKT_.exit, %bb.bl
  br label %bb.bs

bb.bm:                                            ; preds = %bb.bl
  %i.ha = load i64, ptr %i.ed, align 8            ; 2 uses
  %i.hb = icmp sgt i64 %i.ha, 0
  br i1 %i.hb, label %bb.bn, label %_ZNK23QListSpecialMethodsBaseIP7QWidgetE8containsIP13PacketDiagramEEbRKT_.exit

end_hunk_0
begin_hunk_1_@_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_:bb.a
  %i.ax = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ay = load i64, ptr %i.aw, align 16
  store i64 %i.ay, ptr %i.ac, align 8
  store i64 %i.ax, ptr %i.aw, align 16
  br i1 %i.b, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN9QtPrivate12QPodArrayOpsIiE10copyAppendEPKiS3_.exit
  %i.az = getelementptr i8, ptr %3, i64 8
  %i.ba = load <2 x ptr>, ptr %3, align 8
  %i.bb = load ptr, ptr %3, align 8
  store ptr %i.as, ptr %3, align 8
  store ptr %i.au, ptr %i.az, align 8
  store <2 x ptr> %i.ba, ptr %4, align 16
  %i.bc = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  store i64 %i.ax, ptr %i.bc, align 8
  store i64 %i.bd, ptr %i.aw, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN9QtPrivate12QPodArrayOpsIiE10copyAppendEPKiS3_.exit
  %i.be = phi ptr [ %i.bb, %bb.k ], [ %i.as, %_ZN9QtPrivate12QPodArrayOpsIiE10copyAppendEPKiS3_.exit ] ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.be, null
  br i1 %.not.i.i32, label %_ZN17QArrayDataPointerIiED2Ev.exit35, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i33

_ZN17QArrayDataPointerIiE5derefEv.exit.i33:       ; preds = %bb.l
  %i.bf = atomicrmw sub ptr %i.be, i32 1 acq_rel, align 4
  %.not.i34 = icmp eq i32 %i.bf, 1
  br i1 %.not.i34, label %bb.m, label %_ZN17QArrayDataPointerIiED2Ev.exit35

bb.m:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i33
  %i.bg = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bg, i64 noundef 4, i64 noundef 8) #12
  br label %_ZN17QArrayDataPointerIiED2Ev.exit35

_ZN17QArrayDataPointerIiED2Ev.exit35:             ; preds = %bb.l, %_ZN17QArrayDataPointerIiE5derefEv.exit.i33, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.n

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIiED2Ev.exit35, %_ZN9QtPrivate12QPodArrayOpsIiE10reallocateExN10QArrayData16AllocationOptionE.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerIiE12allocateGrowERKS0_xN10QArrayData14GrowthPositionE(ptr dead_on_unwind noalias writable sret(%struct.QArrayDataPointer.17) align 8 %0, ptr noundef align 8 dereferenceable(24) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit, label %_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit.thread

_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.d, i64 0)
  %i.e = add i64 %.sroa.speculated, %2
  br label %_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit.thread: ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = load i64, ptr %i.b, align 8              ; 2 uses
  %.sroa.speculated45 = tail call i64 @llvm.smax.i64(i64 %i.h, i64 %i.g)
  %i.i = add i64 %.sroa.speculated45, %2
  %i.j = icmp eq i32 %3, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = add i64 %i.m, 23
  %i.o = and i64 %i.n, -8
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.p, %i.o
  %i.r = ashr exact i64 %i.q, 2                   ; 2 uses
  %i.s = add i64 %i.h, %i.r
  %i.t = sub i64 %i.g, %i.s
  %.ph = select i1 %i.j, i64 %i.t, i64 %i.r
  %i.u = sub i64 %i.i, %.ph                       ; 2 uses
  %i.v = getelementptr i8, ptr %i.c, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 1
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit31, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit.thread
  %spec.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 %i.g)
  br label %_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit31

_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit31: ; preds = %bb.b, %_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit.thread, %_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit
  %i.y = phi i64 [ %i.e, %_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit ], [ %spec.select.i.i, %bb.b ], [ %i.u, %_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit.thread ] ; 2 uses
  %i.z = phi i64 [ 0, %_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit ], [ %i.g, %bb.b ], [ %i.g, %_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit.thread ]
  %i.aa = icmp sle i64 %i.y, %i.z
  %i.ab = zext i1 %i.aa to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ac = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 8, i64 noundef %i.y, i32 noundef %i.ab) #12 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 8) ]
  %i.ad = load ptr, ptr %i.a, align 8             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not = icmp ne ptr %i.ad, null
  %i.ae = icmp ne ptr %i.ac, null
  %i.af = and i1 %i.ae, %.not
  br i1 %i.af, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit31
  %i.ag = icmp eq i32 %3, 1
  br i1 %i.ag, label %_ZNK17QArrayDataPointerIiE16freeSpaceAtBeginEv.exit33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %1, align 8               ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNK17QArrayDataPointerIiE5flagsEv.exit, label %_ZNK17QArrayDataPointerIiE16freeSpaceAtBeginEv.exit33.thread

_ZNK17QArrayDataPointerIiE16freeSpaceAtBeginEv.exit33.thread: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = add i64 %i.al, 23
  %i.an = and i64 %i.am, -8
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = getelementptr i8, ptr %i.ac, i64 %i.ap
  br label %bb.e

_ZNK17QArrayDataPointerIiE16freeSpaceAtBeginEv.exit33: ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %i.ad, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.b, align 8
  %i.au = add i64 %2, %i.at
  %i.av = sub i64 %i.as, %i.au
  %i.aw = sdiv i64 %i.av, 2
  %i.ax = call noundef i64 @llvm.smax.i64(i64 %i.aw, i64 0)
  %.pr.pre = load ptr, ptr %1, align 8            ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ac, i64 %i.ax
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %2 ; 2 uses
  %.not.i34 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i34, label %_ZNK17QArrayDataPointerIiE5flagsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerIiE16freeSpaceAtBeginEv.exit33.thread, %_ZNK17QArrayDataPointerIiE16freeSpaceAtBeginEv.exit33
  %i.ba = phi ptr [ %i.aq, %_ZNK17QArrayDataPointerIiE16freeSpaceAtBeginEv.exit33.thread ], [ %i.az, %_ZNK17QArrayDataPointerIiE16freeSpaceAtBeginEv.exit33 ]
  %.pr62 = phi ptr [ %i.ah, %_ZNK17QArrayDataPointerIiE16freeSpaceAtBeginEv.exit33.thread ], [ %.pr.pre, %_ZNK17QArrayDataPointerIiE16freeSpaceAtBeginEv.exit33 ]
  %i.bb = getelementptr i8, ptr %.pr62, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  br label %_ZNK17QArrayDataPointerIiE5flagsEv.exit

_ZNK17QArrayDataPointerIiE5flagsEv.exit:          ; preds = %bb.d, %_ZNK17QArrayDataPointerIiE16freeSpaceAtBeginEv.exit33, %bb.e
  %i.bd = phi ptr [ %i.ba, %bb.e ], [ %i.az, %_ZNK17QArrayDataPointerIiE16freeSpaceAtBeginEv.exit33 ], [ %i.ac, %bb.d ]
  %.sroa.0.0.i = phi i32 [ %i.bc, %bb.e ], [ 0, %_ZNK17QArrayDataPointerIiE16freeSpaceAtBeginEv.exit33 ], [ 0, %bb.d ]
  %i.be = getelementptr i8, ptr %i.ad, i64 4
  store i32 %.sroa.0.0.i, ptr %i.be, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit31, %_ZNK17QArrayDataPointerIiE5flagsEv.exit
  %.sink = phi ptr [ %i.bd, %_ZNK17QArrayDataPointerIiE5flagsEv.exit ], [ %i.ac, %_ZNK17QArrayDataPointerIiE22constAllocatedCapacityEv.exit31 ]
  store ptr %i.ad, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bg, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

attributes #0 = { mustprogress null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { noreturn }
attributes #12 = { nounwind }
attributes #13 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = !{i8 0, i8 2}
!18 = !{}
!20 = distinct !{!20, i1 false, !"_ZNK7QObject12findChildrenIP7QWidgetEE5QListIT_E6QFlagsIN2Qt15FindChildOptionEE"}
!21 = distinct !{!21, !20, !"_ZNK7QObject12findChildrenIP7QWidgetEE5QListIT_E6QFlagsIN2Qt15FindChildOptionEE: argument 0"}
!22 = !{!21}
end_hunk_1
