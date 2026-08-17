inline.NumInlined: 732
inline.NumDeleted: 337
begin_hunk_0_@_ZN6apache6thrift9transport14TFileTransport12writerThreadEv:bb.a
          to label %._crit_edge.loopexit unwind label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab, %bb.ac
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  %i.do = call ptr @__cxa_begin_catch(ptr %i.dn) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.dp = call i64 @time(ptr noundef nonnull %i.e) #30 ; 0 uses
  %i.dq = call ptr @ctime_r(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #30 ; 0 uses
  store i8 0, ptr %i.be, align 8, !tbaa !52
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !117
  %i.ds = load ptr, ptr %i.bf, align 8, !tbaa !49
  %i.dt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef 397, ptr noundef nonnull %i.f, ptr noundef %i.ds) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @__cxa_end_catch()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.du = call i64 @time(ptr noundef nonnull %i.a) #30 ; 0 uses
  %i.dv = call ptr @ctime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #30 ; 0 uses
  store i8 0, ptr %i.bc, align 8, !tbaa !52
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !117
  %i.dx = load i32, ptr %i.bd, align 8, !tbaa !45
  %i.dy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dw, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 378, ptr noundef nonnull %i.b, i32 noundef %i.dx) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.dz = load i32, ptr %i.bd, align 8, !tbaa !45
  %i.ea = call i32 @usleep(i32 noundef %i.dz)     ; 0 uses
  %i.eb = load atomic i8, ptr %i.az seq_cst, align 8, !range !56, !noundef !57
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %.loopexit, label %.lr.ph306, !llvm.loop !169

._crit_edge.loopexit:                             ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.ed = call i64 @time(ptr noundef nonnull %i.c) #30 ; 0 uses
  %i.ee = call ptr @ctime_r(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #30 ; 0 uses
  store i8 0, ptr %i.bg, align 8, !tbaa !52
  %i.ef = load ptr, ptr @stderr, align 8, !tbaa !117
  %i.eg = load ptr, ptr %i.bf, align 8, !tbaa !49
  %i.eh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.d, ptr noundef %i.eg) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.262.lcssa = phi i32 [ %.161, %.preheader ], [ 0, %._crit_edge.loopexit ] ; 7 uses
  %i.ei = load i32, ptr %i.bh, align 8, !tbaa !149 ; 2 uses
  %.not82 = icmp ne i32 %i.ei, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !151 ; 6 uses
  %i.ej = icmp ugt i32 %.pre, %i.ei
  %or.cond = select i1 %.not82, i1 %i.ej, i1 false
  br i1 %or.cond, label %bb.ad, label %._crit_edge._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.ek = call i64 @time(ptr noundef nonnull %i.g) #30 ; 0 uses
  %i.el = call ptr @ctime_r(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #30 ; 0 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !52
  %i.em = load ptr, ptr @stderr, align 8, !tbaa !117
  %i.en = load i32, ptr %.phi.trans.insert, align 8, !tbaa !151
  %i.eo = load i32, ptr %i.bh, align 8, !tbaa !149
  %i.ep = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.em, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef 405, ptr noundef nonnull %i.h, i32 noundef %i.en, i32 noundef %i.eo) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %.preheader149.backedge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 3 uses
  %.not83 = icmp eq i32 %.pre, 0
  br i1 %.not83, label %.preheader149.backedge, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge._crit_edge
  %i.er = load i32, ptr %i.bj, align 8, !tbaa !171 ; 3 uses
  %.not84 = icmp eq i32 %i.er, 0
  br i1 %.not84, label %.thread128.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.es = icmp ugt i32 %.pre, %i.er
  br i1 %i.es, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  %i.et = call i64 @time(ptr noundef nonnull %i.i) #30 ; 0 uses
  %i.eu = call ptr @ctime_r(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #30 ; 0 uses
  store i8 0, ptr %i.bl, align 8, !tbaa !52
  %i.ev = load ptr, ptr @stderr, align 8, !tbaa !117
  %i.ew = load i32, ptr %i.eq, align 8, !tbaa !151
  %i.ex = load i32, ptr %i.bj, align 8, !tbaa !171
  %i.ey = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5, i32 noundef 415, ptr noundef nonnull %i.j, i32 noundef %i.ew, i32 noundef %i.ex) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br label %.preheader149.backedge

bb.ah:                                            ; preds = %bb.af
  %i.ez = load i64, ptr %i.bk, align 8, !tbaa !58 ; 2 uses
  %i.fa = zext i32 %i.er to i64                   ; 2 uses
  %i.fb = sdiv i64 %i.ez, %i.fa
  %i.fc = zext i32 %.pre to i64
  %i.fd = add nsw i64 %i.fc, -1
  %i.fe = add i64 %i.fd, %i.ez
  %i.ff = sdiv i64 %i.fe, %i.fa
  %.not85 = icmp eq i64 %i.fb, %i.ff
  br i1 %.not85, label %.thread128.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = load i32, ptr %i.k, align 8, !tbaa !53
  %i.fh = call i64 @lseek(i32 noundef %i.fg, i64 noundef 0, i32 noundef 1) #30 ; 3 uses
  store i64 %i.fh, ptr %i.bk, align 8, !tbaa !58
  %i.fi = load i32, ptr %i.bj, align 8, !tbaa !171
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = sdiv i64 %i.fh, %i.fj
  %i.fl = add nsw i64 %i.fk, 1
  %i.fm = mul nsw i64 %i.fl, %i.fj
  %i.fn = sub nsw i64 %i.fm, %i.fh                ; 2 uses
  %i.fo = trunc i64 %i.fn to i32
  %sext = shl i64 %i.fn, 32
  %i.fp = ashr exact i64 %sext, 32                ; 4 uses
  %i.fq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fp) #34 ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fq, i8 0, i64 %i.fp, i1 false)
  %i.fr = load i32, ptr %i.k, align 8, !tbaa !53
  %i.fs = invoke i64 @write(i32 noundef %i.fr, ptr noundef nonnull %i.fq, i64 noundef %i.fp)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %.not88 = icmp eq i64 %i.fs, -1
  br i1 %.not88, label %bb.ak, label %.thread128

bb.ak:                                            ; preds = %bb.aj
  %i.ft = tail call ptr @__errno_location() #32
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !20
  invoke void @_ZN6apache6thrift7TOutput6perrorEPKci(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6apache6thrift12GlobalOutputE, ptr noundef nonnull @.str.18, i32 noundef %i.fu)
          to label %bb.an unwind label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost12scoped_arrayIhED2Ev.exit101

bb.am:                                            ; preds = %bb.ak
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost12scoped_arrayIhED2Ev.exit101

_ZN5boost12scoped_arrayIhED2Ev.exit101:           ; preds = %bb.am, %bb.al
  %.pn86 = phi { ptr, i32 } [ %i.fw, %bb.am ], [ %i.fv, %bb.al ]
  call void @_ZdaPv(ptr noundef nonnull %i.fq) #31
  br label %_ZN6apache6thrift11concurrency5GuardD2Ev.exit111

bb.an:                                            ; preds = %bb.ak
  call void @_ZdaPv(ptr noundef nonnull %i.fq) #31
  br label %.preheader149.backedge

.thread128:                                       ; preds = %bb.aj
  %i.fx = add i32 %.262.lcssa, %i.fo              ; 2 uses
  %i.fy = load i64, ptr %i.bk, align 8, !tbaa !58
  %i.fz = add nsw i64 %i.fy, %i.fp
  store i64 %i.fz, ptr %i.bk, align 8, !tbaa !58
  call void @_ZdaPv(ptr noundef nonnull %i.fq) #31
  %.pr.pre = load i32, ptr %i.eq, align 8, !tbaa !151 ; 2 uses
  %.not89 = icmp eq i32 %.pr.pre, 0
  br i1 %.not89, label %.preheader149.backedge, label %.thread128.thread

.preheader149.backedge:                           ; preds = %.thread128, %bb.ap, %._crit_edge._crit_edge, %bb.ad, %bb.ag, %bb.ao, %bb.an
  %.161.be = phi i32 [ %.262.lcssa, %._crit_edge._crit_edge ], [ %.262.lcssa, %bb.an ], [ %.262.lcssa, %bb.ad ], [ %.262.lcssa, %bb.ag ], [ %.767.ph237, %bb.ao ], [ %i.gi, %bb.ap ], [ %i.fx, %.thread128 ]
  %.3.be = phi i8 [ 0, %._crit_edge._crit_edge ], [ 1, %bb.an ], [ 0, %bb.ad ], [ 0, %bb.ag ], [ 1, %bb.ao ], [ 0, %bb.ap ], [ 0, %.thread128 ]
  br label %.preheader149, !llvm.loop !172

.thread128.thread:                                ; preds = %bb.ah, %bb.ae, %.thread128
  %.767.ph237 = phi i32 [ %i.fx, %.thread128 ], [ %.262.lcssa, %bb.ae ], [ %.262.lcssa, %bb.ah ] ; 2 uses
  %.pr236 = phi i32 [ %.pr.pre, %.thread128 ], [ %.pre, %bb.ae ], [ %.pre, %bb.ah ]
  %i.ga = load i32, ptr %i.k, align 8, !tbaa !53
  %i.gb = load ptr, ptr %i.cw, align 8, !tbaa !65
  %i.gc = zext i32 %.pr236 to i64
  %i.gd = call i64 @write(i32 noundef %i.ga, ptr noundef %i.gb, i64 noundef %i.gc)
  %i.ge = icmp eq i64 %i.gd, -1
  br i1 %i.ge, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread128.thread
  %i.gf = tail call ptr @__errno_location() #32
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !20
  call void @_ZN6apache6thrift7TOutput6perrorEPKci(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6apache6thrift12GlobalOutputE, ptr noundef nonnull @.str.19, i32 noundef %i.gg)
  br label %.preheader149.backedge

bb.ap:                                            ; preds = %.thread128.thread
  %i.gh = load i32, ptr %i.eq, align 8, !tbaa !151 ; 2 uses
  %i.gi = add i32 %i.gh, %.767.ph237
  %i.gj = zext i32 %i.gh to i64
  %i.gk = load i64, ptr %i.bk, align 8, !tbaa !58
  %i.gl = add nsw i64 %i.gk, %i.gj
  store i64 %i.gl, ptr %i.bk, align 8, !tbaa !58
  br label %.preheader149.backedge

bb.aq:                                            ; preds = %bb.z
  %.not.i102 = icmp eq i32 %i.cp, 0
  br i1 %.not.i102, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6apache6thrift9transport20TFileTransportBuffer7getNextEv.exit, %bb.aq
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  br label %bb.ar

bb.ar:                                            ; preds = %bb.au, %.lr.ph.i
  %i.go = phi i32 [ %i.cp, %.lr.ph.i ], [ %i.gu, %bb.au ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.au ] ; 2 uses
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !165
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.i
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !150 ; 3 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !65 ; 2 uses
  %.not.i.i103 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i103, label %_ZN6apache6thrift9transport9eventInfoD2Ev.exit.i104, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZdaPv(ptr noundef nonnull %i.gt) #31
  br label %_ZN6apache6thrift9transport9eventInfoD2Ev.exit.i104

_ZN6apache6thrift9transport9eventInfoD2Ev.exit.i104: ; preds = %bb.at, %bb.as
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef 16) #31
  %.pre.i = load i32, ptr %i.gm, align 4, !tbaa !153
  br label %bb.au

bb.au:                                            ; preds = %_ZN6apache6thrift9transport9eventInfoD2Ev.exit.i104, %bb.ar
  %i.gu = phi i32 [ %i.go, %bb.ar ], [ %.pre.i, %_ZN6apache6thrift9transport9eventInfoD2Ev.exit.i104 ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gv = zext i32 %i.gu to i64
  %i.gw = icmp samesign ult i64 %indvars.iv.next.i, %i.gv
  br i1 %i.gw, label %bb.ar, label %_ZN6apache6thrift9transport20TFileTransportBuffer5resetEv.exit, !llvm.loop !173

_ZN6apache6thrift9transport20TFileTransportBuffer5resetEv.exit: ; preds = %bb.au
  store i32 0, ptr %i.cj, align 8, !tbaa !161
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aq, %_ZN6apache6thrift9transport20TFileTransportBuffer5resetEv.exit
  %.sink272 = phi ptr [ %i.gm, %_ZN6apache6thrift9transport20TFileTransportBuffer5resetEv.exit ], [ %i.cj, %bb.aq ]
  store i32 0, ptr %.sink272, align 4, !tbaa !52
  store i32 0, ptr %i.cm, align 8, !tbaa !168
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %bb.x
  %.1070 = phi i32 [ %.060, %bb.x ], [ %.161, %.sink.split ] ; 5 uses
  %.11 = phi i8 [ %.2, %bb.x ], [ %.3, %.sink.split ]
  %i.gx = trunc nuw i8 %.11 to i1
  br i1 %i.gx, label %.backedge151.backedge, label %bb.aw

.backedge151.sink.split:                          ; preds = %bb.bc, %bb.bd
  %i.gy = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #30
  %i.gz = load i32, ptr %i.au, align 8, !tbaa !20
  %i.ha = zext i32 %i.gz to i64
  %i.hb = mul nuw nsw i64 %i.ha, 1000
  %i.hc = add nsw i64 %i.hb, %i.gy
  store i64 %i.hc, ptr %1, align 8, !tbaa !51
  br label %.backedge151.backedge

.backedge151.backedge:                            ; preds = %.backedge151.sink.split, %bb.bb, %bb.bf, %.critedge, %bb.av
  %.060.be = phi i32 [ %.1070, %bb.av ], [ 0, %bb.bf ], [ %.1070, %bb.bb ], [ %.1070, %.critedge ], [ 0, %.backedge151.sink.split ]
  %.2.be = phi i8 [ 1, %bb.av ], [ 0, %bb.bf ], [ 0, %bb.bb ], [ 0, %.critedge ], [ 0, %.backedge151.sink.split ]
  br label %.backedge151, !llvm.loop !174

bb.aw:                                            ; preds = %bb.av
  %i.hd = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(24) %i.bm), !inline_history !152
  %i.hg = load atomic i8, ptr %i.bn seq_cst, align 8, !range !56, !noundef !57
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.ax, label %.critedge100

bb.ax:                                            ; preds = %bb.aw
  %i.hi = load ptr, ptr %i.ba, align 8, !tbaa !103
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !153
  %i.hl = icmp eq i32 %i.hk, 0
  %i.hm = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.ho = load ptr, ptr %i.hn, align 8            ; 2 uses
  br i1 %i.hl, label %bb.ay, label %.critedge, !llvm.loop !174

bb.ay:                                            ; preds = %bb.ax
  invoke void %i.ho(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.be unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  call void @__clang_call_terminate(ptr %i.hq) #35
  unreachable

.critedge100:                                     ; preds = %bb.aw
  %i.hr = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 40
  %i.ht = load ptr, ptr %i.hs, align 8
  invoke void %i.ht(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_ZN6apache6thrift11concurrency5GuardD2Ev.exit107 unwind label %bb.ba

bb.ba:                                            ; preds = %.critedge100
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #35
  unreachable

_ZN6apache6thrift11concurrency5GuardD2Ev.exit107: ; preds = %.critedge100
  %i.hw = load i32, ptr %i.bo, align 4, !tbaa !175
  %i.hx = icmp ugt i32 %.1070, %i.hw
  br i1 %i.hx, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZN6apache6thrift11concurrency5GuardD2Ev.exit107
  %i.hy = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #30
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !51
  %i.hz = icmp slt i64 %.sroa.0.0.copyload.i.i.i, %i.hy
  br i1 %i.hz, label %bb.bc, label %.backedge151.backedge

bb.bc:                                            ; preds = %bb.bb
  %.not91 = icmp eq i32 %.1070, 0
  br i1 %.not91, label %.backedge151.sink.split, label %bb.bd

bb.bd:                                            ; preds = %_ZN6apache6thrift11concurrency5GuardD2Ev.exit107, %bb.bc
  %i.ia = load i32, ptr %i.k, align 8, !tbaa !53
  %i.ib = call i32 @fsync(i32 noundef %i.ia)      ; 0 uses
  br label %.backedge151.sink.split

bb.be:                                            ; preds = %bb.ay
  %i.ic = load i32, ptr %i.k, align 8, !tbaa !53
  %i.id = call i32 @fsync(i32 noundef %i.ic)      ; 0 uses
  %i.ie = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #30
  %i.if = load i32, ptr %i.au, align 8, !tbaa !20
  %i.ig = zext i32 %i.if to i64
  %i.ih = mul nuw nsw i64 %i.ig, 1000
  %i.ii = add nsw i64 %i.ih, %i.ie
  store i64 %i.ii, ptr %1, align 8, !tbaa !51
  %i.ij = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(24) %i.bm), !inline_history !152
  store atomic i8 0, ptr %i.bn seq_cst, align 8
  invoke void @_ZNK6apache6thrift11concurrency7Monitor9notifyAllEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.im = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 40
  %i.io = load ptr, ptr %i.in, align 8
  invoke void %i.io(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.backedge151.backedge unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ip = landingpad { ptr, i32 }
          catch ptr null
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  call void @__clang_call_terminate(ptr %i.iq) #35
  unreachable

bb.bh:                                            ; preds = %bb.be
  %i.ir = landingpad { ptr, i32 }
          cleanup
  %i.is = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  %i.iu = load ptr, ptr %i.it, align 8
  invoke void %i.iu(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_ZN6apache6thrift11concurrency5GuardD2Ev.exit111 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #35
  unreachable

.critedge:                                        ; preds = %bb.ax
  invoke void %i.ho(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.backedge151.backedge unwind label %bb.bj

bb.bj:                                            ; preds = %.critedge
  %i.ix = landingpad { ptr, i32 }
          catch ptr null
  %i.iy = extractvalue { ptr, i32 } %i.ix, 0
  call void @__clang_call_terminate(ptr %i.iy) #35
  unreachable

.loopexit:                                        ; preds = %bb.r, %.lr.ph.preheader, %.lr.ph, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

_ZN6apache6thrift11concurrency5GuardD2Ev.exit111: ; preds = %bb.bh, %_ZN5boost12scoped_arrayIhED2Ev.exit101
  %.pn92 = phi { ptr, i32 } [ %.pn86, %_ZN5boost12scoped_arrayIhED2Ev.exit101 ], [ %i.ir, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.bk

bb.bk:                                            ; preds = %bb.p, %bb.d, %_ZN6apache6thrift11concurrency5GuardD2Ev.exit111
  %.pn92.pn = phi { ptr, i32 } [ %.pn92, %_ZN6apache6thrift11concurrency5GuardD2Ev.exit111 ], [ %i.as, %bb.p ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %.pn92.pn

bb.bl:                                            ; preds = %bb.p, %bb.d
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  tail call void @__clang_call_terminate(ptr %i.ja) #35
  unreachable
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6apache6thrift9transport9readState14resetAllValuesEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 1, ptr %i.a, align 1, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !18
  %i.f = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN6apache6thrift9transport9eventInfoD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #31
  br label %_ZN6apache6thrift9transport9eventInfoD2Ev.exit

_ZN6apache6thrift9transport9eventInfoD2Ev.exit:   ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 16) #31
  br label %bb.d
end_hunk_0
