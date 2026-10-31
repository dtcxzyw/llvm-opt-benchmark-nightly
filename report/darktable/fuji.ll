Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/fuji?download=true
inline.NumInlined: 45
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6LibRaw22parseAdobeRAFMakernoteEv:bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2978
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 2976
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 188524 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 188532 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 188528 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph702, %.thread
  %.in = phi i32 [ %i.bp, %.lr.ph702 ], [ %i.cq, %.thread ]
  %.0338700 = phi i32 [ 0, %.lr.ph702 ], [ %.5343, %.thread ] ; 14 uses
  %.0347699 = phi i32 [ %i.br, %.lr.ph702 ], [ %i.abb, %.thread ] ; 75 uses
  %i.cq = add nsw i32 %.in, -1                    ; 2 uses
  store i16 19789, ptr %1, align 8, !tbaa !131
  store i16 19789, ptr %i.m, align 8, !tbaa !76
  %i.cr = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %.0347699)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.y:                                             ; preds = %bb.x
  %i.cs = zext i16 %i.cr to i32                   ; 10 uses
  %i.ct = add i32 %.0347699, 2
  %i.cu = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ct)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

bb.z:                                             ; preds = %bb.y
  %i.cv = zext i16 %i.cu to i32                   ; 3 uses
  %i.cw = add i32 %.0347699, 4                    ; 9 uses
  store i16 %i.bc, ptr %1, align 8, !tbaa !131
  store i16 %i.bc, ptr %i.m, align 8, !tbaa !76
  %i.cx = add i16 %i.cr, -8192
  %or.cond5 = icmp ult i16 %i.cx, 1041
  br i1 %or.cond5, label %.preheader628.preheader, label %bb.ai

.preheader628.preheader:                          ; preds = %bb.z
  %i.cy = load i32, ptr @tag2wbtable, align 16, !tbaa !95
  %i.cz = icmp eq i32 %i.cy, %i.cs
  br i1 %i.cz, label %.preheader624, label %.preheader628.1

.preheader628.1:                                  ; preds = %.preheader628.preheader
  %i.da = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 8), align 8, !tbaa !95
  %i.db = icmp eq i32 %i.da, %i.cs
  br i1 %i.db, label %.preheader624, label %.preheader628.2

.preheader628.2:                                  ; preds = %.preheader628.1
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 16), align 16, !tbaa !95
  %i.dd = icmp eq i32 %i.dc, %i.cs
  br i1 %i.dd, label %.preheader624, label %.preheader628.3

.preheader628.3:                                  ; preds = %.preheader628.2
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 24), align 8, !tbaa !95
  %i.df = icmp eq i32 %i.de, %i.cs
  br i1 %i.df, label %.preheader624, label %.preheader628.4

.preheader628.4:                                  ; preds = %.preheader628.3
  %i.dg = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 32), align 16, !tbaa !95
  %i.dh = icmp eq i32 %i.dg, %i.cs
  br i1 %i.dh, label %.preheader624, label %.preheader628.5

.preheader628.5:                                  ; preds = %.preheader628.4
  %i.di = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 40), align 8, !tbaa !95
  %i.dj = icmp eq i32 %i.di, %i.cs
  br i1 %i.dj, label %.preheader624, label %.preheader628.6

.preheader628.6:                                  ; preds = %.preheader628.5
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 48), align 16, !tbaa !95
  %i.dl = icmp eq i32 %i.dk, %i.cs
  br i1 %i.dl, label %.preheader624, label %.preheader628.7

.preheader628.7:                                  ; preds = %.preheader628.6
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 56), align 8, !tbaa !95
  %i.dn = icmp eq i32 %i.dm, %i.cs
  br i1 %i.dn, label %.preheader624, label %.preheader628.8

.preheader628.8:                                  ; preds = %.preheader628.7
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 64), align 16, !tbaa !95
  %i.dp = icmp eq i32 %i.do, %i.cs
  br i1 %i.dp, label %.preheader624, label %.preheader628.9

.preheader628.9:                                  ; preds = %.preheader628.8
  %i.dq = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 72), align 8, !tbaa !95
  %i.dr = icmp eq i32 %i.dq, %i.cs
  br i1 %i.dr, label %.preheader624, label %.thread

.preheader624:                                    ; preds = %.preheader628.9, %.preheader628.8, %.preheader628.7, %.preheader628.6, %.preheader628.5, %.preheader628.4, %.preheader628.3, %.preheader628.2, %.preheader628.1, %.preheader628.preheader
  %.lcssa751 = phi ptr [ @tag2wbtable, %.preheader628.preheader ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 8), %.preheader628.1 ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 16), %.preheader628.2 ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 24), %.preheader628.3 ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 32), %.preheader628.4 ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 40), %.preheader628.5 ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 48), %.preheader628.6 ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 56), %.preheader628.7 ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 64), %.preheader628.8 ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 72), %.preheader628.9 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.lcssa751, i64 4 ; 8 uses
  %i.dt = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.cw)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %.preheader624
  %i.du = zext i16 %i.dt to i32
  %i.dv = load i32, ptr %i.ds, align 4, !tbaa !96
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store i32 %i.du, ptr %i.dy, align 4, !tbaa !97
  %i.dz = add i32 %.0347699, 6
  %i.ea = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.dz)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.eb = zext i16 %i.ea to i32
  %i.ec = load i32, ptr %i.ds, align 4, !tbaa !96
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.ed
  store i32 %i.eb, ptr %i.ee, align 8, !tbaa !97
  %i.ef = add i32 %.0347699, 8
  %i.eg = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ef)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.eh = zext i16 %i.eg to i32
  %i.ei = load i32, ptr %i.ds, align 4, !tbaa !96
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 %i.eh, ptr %i.el, align 4, !tbaa !97
  %i.em = add i32 %.0347699, 10
  %i.en = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.em)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.eo = zext i16 %i.en to i32
  %i.ep = load i32, ptr %i.ds, align 4, !tbaa !96 ; 2 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i32 %i.eo, ptr %i.es, align 8, !tbaa !97
  %i.et = icmp eq i16 %i.cu, 16
  br i1 %i.et, label %.preheader620, label %.loopexit621

.preheader620:                                    ; preds = %bb.ad
  %i.eu = add i32 %.0347699, 12
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !97
  %i.ex = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.eu)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %.preheader620
  %i.ey = zext i16 %i.ex to i32
  %i.ez = add nsw i32 %i.ew, %i.ey
  %i.fa = sdiv i32 %i.ez, 2
  %i.fb = load i32, ptr %i.ds, align 4, !tbaa !96
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 %i.fa, ptr %i.fe, align 4, !tbaa !97
  %i.ff = load i32, ptr %i.fd, align 8, !tbaa !97
  %i.fg = add i32 %.0347699, 14
  %i.fh = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.fg)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.fi = zext i16 %i.fh to i32
  %i.fj = add nsw i32 %i.ff, %i.fi
  %i.fk = sdiv i32 %i.fj, 2
  %i.fl = load i32, ptr %i.ds, align 4, !tbaa !96
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.fm ; 2 uses
  store i32 %i.fk, ptr %i.fn, align 8, !tbaa !97
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !97
  %i.fq = add i32 %.0347699, 16
  %i.fr = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.fq)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %i.fs = zext i16 %i.fr to i32
  %i.ft = add nsw i32 %i.fp, %i.fs
  %i.fu = sdiv i32 %i.ft, 2
  %i.fv = load i32, ptr %i.ds, align 4, !tbaa !96
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.fw ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  store i32 %i.fu, ptr %i.fy, align 4, !tbaa !97
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !97
  %i.gb = add i32 %.0347699, 18
  %i.gc = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.gb)
          to label %.loopexit621.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit621.loopexit:                            ; preds = %bb.ag
  %i.gd = zext i16 %i.gc to i32
  %i.ge = add nsw i32 %i.ga, %i.gd
  %i.gf = sdiv i32 %i.ge, 2
  %i.gg = load i32, ptr %i.ds, align 4, !tbaa !96 ; 2 uses
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i32 %i.gf, ptr %i.gj, align 8, !tbaa !97
  br label %.loopexit621

.loopexit621:                                     ; preds = %.loopexit621.loopexit, %bb.ad
  %i.gk = phi i32 [ %i.gg, %.loopexit621.loopexit ], [ %i.ep, %bb.ad ]
  br i1 %.not477, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %.loopexit621
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.gl ; 2 uses
  %i.gn = call <3 x i32> @llvm.masked.load.v3i32.p0(ptr nonnull align 8 %i.gm, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i32> poison), !tbaa !97
  %i.go = shufflevector <3 x i32> %i.gn, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.gp = sitofp reassoc nsz arcp contract afn <2 x i32> %i.go to <2 x double>
  %i.gq = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.i, %i.gp
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %i.gs = fptosi <3 x double> %i.gr to <3 x i32>
  call void @llvm.masked.store.v3i32.p0(<3 x i32> %i.gs, ptr align 8 %i.gm, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !97
  br label %.thread

bb.ai:                                            ; preds = %bb.z
  switch i16 %i.cr, label %bb.bo [
    i16 12032, label %bb.aj
    i16 12272, label %.preheader649.preheader
    i16 16384, label %bb.bc
    i16 -27056, label %bb.bl
  ]

.preheader649.preheader:                          ; preds = %bb.ai
  %i.gt = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.cw)
          to label %.preheader649.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %i.gu = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.cw)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.gv = icmp ult i32 %i.gu, 6
  br i1 %i.gv, label %bb.al, label %.preheader616.lr.ph

bb.al:                                            ; preds = %bb.ak
  %i.gw = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.cw)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.preheader616.lr.ph, label %.thread

.preheader616.lr.ph:                              ; preds = %bb.ak, %bb.am
  %i.gy = phi i32 [ %i.gw, %bb.am ], [ 6, %bb.ak ] ; 2 uses
  %i.gz = shl nuw nsw i32 %i.gy, 4
  %i.ha = or disjoint i32 %i.gz, 4
  %.not478 = icmp samesign ugt i32 %i.ha, %i.cv
  %i.hb = add nuw i32 %i.gy, 89
  %smax = call i32 @llvm.smax.i32(i32 %i.hb, i32 90)
  %i.hc = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.hc to i64
  br label %.preheader616

.preheader616:                                    ; preds = %.preheader616.lr.ph, %bb.aw
  %indvars.iv758 = phi i64 [ 90, %.preheader616.lr.ph ], [ %indvars.iv.next759, %bb.aw ] ; 2 uses
  %.0332.in680 = phi i32 [ %.0347699, %.preheader616.lr.ph ], [ %.1333, %bb.aw ] ; 8 uses
  %.0332682 = add i32 %.0332.in680, 8             ; 2 uses
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %indvars.iv758 ; 8 uses
  %i.he = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %.0332682)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %.preheader616
  %i.hf = zext i16 %i.he to i32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 3 uses
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !97
  %i.hh = add i32 %.0332.in680, 10
  %i.hi = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.hh)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.hj = zext i16 %i.hi to i32
  store i32 %i.hj, ptr %i.hd, align 8, !tbaa !97
  %i.hk = add i32 %.0332.in680, 12
  %i.hl = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.hk)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  %i.hm = zext i16 %i.hl to i32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hd, i64 12 ; 3 uses
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !97
  %i.ho = add i32 %.0332.in680, 14
  %i.hp = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ho)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  %i.hq = zext i16 %i.hp to i32                   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 4 uses
  store i32 %i.hq, ptr %i.hr, align 8, !tbaa !97
  br i1 %.not478, label %.loopexit614, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hs = add i32 %.0332.in680, 16                ; 2 uses
  %i.ht = load i32, ptr %i.hg, align 4, !tbaa !97
  %i.hu = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.hs)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %i.hv = zext i16 %i.hu to i32
  %i.hw = add nsw i32 %i.ht, %i.hv
  %i.hx = sdiv i32 %i.hw, 2
  store i32 %i.hx, ptr %i.hg, align 4, !tbaa !97
  %i.hy = load i32, ptr %i.hd, align 8, !tbaa !97
  %i.hz = add i32 %.0332.in680, 18
  %i.ia = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.hz)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  %i.ib = zext i16 %i.ia to i32
  %i.ic = add nsw i32 %i.hy, %i.ib
  %i.id = sdiv i32 %i.ic, 2
  store i32 %i.id, ptr %i.hd, align 8, !tbaa !97
  %i.ie = load i32, ptr %i.hn, align 4, !tbaa !97
  %i.if = add i32 %.0332.in680, 20
  %i.ig = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.if)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.at
  %i.ih = zext i16 %i.ig to i32
  %i.ii = add nsw i32 %i.ie, %i.ih
  %i.ij = sdiv i32 %i.ii, 2
  store i32 %i.ij, ptr %i.hn, align 4, !tbaa !97
  %i.ik = load i32, ptr %i.hr, align 8, !tbaa !97
  %i.il = add i32 %.0332.in680, 22
  %i.im = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.il)
          to label %.loopexit614.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit614.loopexit:                            ; preds = %bb.au
  %i.in = zext i16 %i.im to i32
  %i.io = add nsw i32 %i.ik, %i.in
  %i.ip = sdiv i32 %i.io, 2                       ; 2 uses
  store i32 %i.ip, ptr %i.hr, align 8, !tbaa !97
  br label %.loopexit614

.loopexit614:                                     ; preds = %.loopexit614.loopexit, %bb.aq
  %i.iq = phi i32 [ %i.hq, %bb.aq ], [ %i.ip, %.loopexit614.loopexit ]
  %.1333 = phi i32 [ %.0332682, %bb.aq ], [ %i.hs, %.loopexit614.loopexit ]
  br i1 %.not477, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.loopexit614
  %i.ir = load i32, ptr %i.hd, align 8, !tbaa !97
  %i.is = sitofp reassoc nsz arcp contract afn i32 %i.ir to double
  %i.it = fmul reassoc nnan nsz arcp contract afn double %.0324, %i.is
  %i.iu = fptosi double %i.it to i32
  store i32 %i.iu, ptr %i.hd, align 8, !tbaa !97
  %i.iv = sitofp reassoc nsz arcp contract afn i32 %i.iq to double
  %i.iw = fmul reassoc nnan nsz arcp contract afn double %.0323, %i.iv
  %i.ix = fptosi double %i.iw to i32
  store i32 %i.ix, ptr %i.hr, align 8, !tbaa !97
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.loopexit614
  %indvars.iv.next759 = add nuw nsw i64 %indvars.iv758, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next759, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.preheader616, !llvm.loop !116

.preheader649.1:                                  ; preds = %.preheader649.preheader
  %i.iy = zext i16 %i.gt to i32
  store i32 %i.iy, ptr %i.cn, align 4, !tbaa !97
  %i.iz = add i32 %.0347699, 6
  %i.ja = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.iz)
          to label %.preheader649.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader649.2:                                  ; preds = %.preheader649.1
  %i.jb = zext i16 %i.ja to i32
  store i32 %i.jb, ptr %i.bu, align 8, !tbaa !97
  %i.jc = add i32 %.0347699, 8
  %i.jd = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.jc)
          to label %.preheader649.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader649.3:                                  ; preds = %.preheader649.2
  %i.je = zext i16 %i.jd to i32
  store i32 %i.je, ptr %i.co, align 4, !tbaa !97
  %i.jf = add i32 %.0347699, 10
  %i.jg = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.jf)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %.preheader649.3
  %i.jh = zext i16 %i.jg to i32                   ; 2 uses
  store i32 %i.jh, ptr %i.cp, align 8, !tbaa !97
  %i.ji = icmp eq i16 %i.cu, 16
  br i1 %i.ji, label %.preheader645, label %.loopexit646

.preheader645:                                    ; preds = %bb.ax
  %i.jj = add i32 %.0347699, 12
  %i.jk = load i32, ptr %i.cn, align 4, !tbaa !97
  %i.jl = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.jj)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %.preheader645
  %i.jm = zext i16 %i.jl to i32
  %i.jn = add nsw i32 %i.jk, %i.jm
  %i.jo = sdiv i32 %i.jn, 2
  store i32 %i.jo, ptr %i.cn, align 4, !tbaa !97
  %i.jp = load i32, ptr %i.bu, align 8, !tbaa !97
  %i.jq = add i32 %.0347699, 14
  %i.jr = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.jq)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  %i.js = zext i16 %i.jr to i32
  %i.jt = add nsw i32 %i.jp, %i.js
  %i.ju = sdiv i32 %i.jt, 2
  store i32 %i.ju, ptr %i.bu, align 8, !tbaa !97
  %i.jv = load i32, ptr %i.co, align 4, !tbaa !97
  %i.jw = add i32 %.0347699, 16
  %i.jx = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.jw)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  %i.jy = zext i16 %i.jx to i32
  %i.jz = add nsw i32 %i.jv, %i.jy
  %i.ka = sdiv i32 %i.jz, 2
  store i32 %i.ka, ptr %i.co, align 4, !tbaa !97
  %i.kb = load i32, ptr %i.cp, align 8, !tbaa !97
  %i.kc = add i32 %.0347699, 18
  %i.kd = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.kc)
          to label %.loopexit646.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit646.loopexit:                            ; preds = %bb.ba
  %i.ke = zext i16 %i.kd to i32
  %i.kf = add nsw i32 %i.kb, %i.ke
  %i.kg = sdiv i32 %i.kf, 2                       ; 2 uses
  store i32 %i.kg, ptr %i.cp, align 8, !tbaa !97
  br label %.loopexit646

.loopexit646:                                     ; preds = %.loopexit646.loopexit, %bb.ax
  %i.kh = phi i32 [ %i.kg, %.loopexit646.loopexit ], [ %i.jh, %bb.ax ] ; 2 uses
  %.pre = load i32, ptr %i.bu, align 8, !tbaa !97 ; 2 uses
  br i1 %.not477, label %.thread.loopexit727, label %bb.bb

bb.bb:                                            ; preds = %.loopexit646
  %i.ki = sitofp reassoc nsz arcp contract afn i32 %.pre to double
  %i.kj = fmul reassoc nnan nsz arcp contract afn double %.0324, %i.ki
  %i.kk = fptosi double %i.kj to i32              ; 2 uses
  store i32 %i.kk, ptr %i.bu, align 8, !tbaa !97
  %i.kl = sitofp reassoc nsz arcp contract afn i32 %i.kh to double
  %i.km = fmul reassoc nnan nsz arcp contract afn double %.0323, %i.kl
  %i.kn = fptosi double %i.km to i32              ; 2 uses
  store i32 %i.kn, ptr %i.bv, align 8, !tbaa !97
  br label %.thread.loopexit727

.thread.loopexit727:                              ; preds = %.loopexit646, %bb.bb
  %i.ko = phi i32 [ %i.kn, %bb.bb ], [ %i.kh, %.loopexit646 ]
  %i.kp = phi i32 [ %i.kk, %bb.bb ], [ %.pre, %.loopexit646 ]
  %i.kq = call <3 x i32> @llvm.masked.load.v3i32.p0(ptr nonnull align 4 %i.cn, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i32> poison), !tbaa !97
  %i.kr = insertelement <4 x i32> poison, i32 %i.kp, i64 0
  %i.ks = insertelement <4 x i32> %i.kr, i32 %i.ko, i64 2
  %i.kt = shufflevector <3 x i32> %i.kq, <3 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.ku = shufflevector <4 x i32> %i.kt, <4 x i32> %i.ks, <4 x i32> <i32 4, i32 0, i32 6, i32 2>
  %i.kv = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ku to <4 x float>
  store <4 x float> %i.kv, ptr %i.bw, align 4, !tbaa !98
  br label %.thread

bb.bc:                                            ; preds = %bb.ai
  switch i16 %i.cu, label %.thread [
    i16 16, label %bb.bd
    i16 8, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc, %bb.bc
  %i.kw = lshr exact i16 %i.cu, 1
  store i16 %i.kw, ptr %i.bt, align 2, !tbaa !99
  %i.kx = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.cw)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %bb.bd
  store i16 %i.kx, ptr %i.cf, align 2, !tbaa !99
  %i.ky = add i32 %.0347699, 6
  %i.kz = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ky)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  store i16 %i.kz, ptr %i.cg, align 4, !tbaa !99
  %i.la = add i32 %.0347699, 8
  %i.lb = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.la)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  store i16 %i.lb, ptr %i.ch, align 2, !tbaa !99
  %i.lc = add i32 %.0347699, 10
  %i.ld = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.lc)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  store i16 %i.ld, ptr %i.ci, align 8, !tbaa !99
  %i.le = load i16, ptr %i.bt, align 2, !tbaa !99
  %i.lf = icmp eq i16 %i.le, 8
  br i1 %i.lf, label %.preheader653, label %.thread

.preheader653:                                    ; preds = %bb.bh
  %i.lg = add i32 %.0347699, 12
  %i.lh = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.lg)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %.preheader653
  store i16 %i.lh, ptr %i.cj, align 2, !tbaa !99
  %i.li = add i32 %.0347699, 14
  %i.lj = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.li)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  store i16 %i.lj, ptr %i.ck, align 4, !tbaa !99
  %i.lk = add i32 %.0347699, 16
  %i.ll = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.lk)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj
  store i16 %i.ll, ptr %i.cl, align 2, !tbaa !99
  %i.lm = add i32 %.0347699, 18
  %i.ln = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.lm)
          to label %.thread.loopexit736 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread.loopexit736:                              ; preds = %bb.bk
  store i16 %i.ln, ptr %i.cm, align 8, !tbaa !99
  br label %.thread

bb.bl:                                            ; preds = %bb.ai
  %i.lo = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.cw)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bm:                                            ; preds = %bb.bl
  %i.lp = add i32 %.0347699, 6
  %i.lq = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.lp)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  %i.lr = uitofp reassoc nsz arcp contract afn i16 %i.lq to float ; 2 uses
  %i.ls = fcmp reassoc nsz arcp contract afn olt float %i.lr, 1.000000e+00
  %i.lt = select reassoc nsz arcp contract afn i1 %i.ls, float 1.000000e+00, float %i.lr
  %i.lu = sitofp i16 %i.lo to float
  %i.lv = fdiv reassoc nsz arcp contract afn float %i.lu, %i.lt ; 2 uses
  store float %i.lv, ptr %i.ao, align 8, !tbaa !100
  %i.lw = load float, ptr %i.bs, align 4, !tbaa !101
  %i.lx = fadd reassoc nsz arcp contract afn float %i.lw, %i.lv
  store float %i.lx, ptr %i.bs, align 4, !tbaa !101
  br label %.thread

bb.bo:                                            ; preds = %bb.ai
  %i.ly = icmp eq i16 %i.cr, -16384
  %i.lz = icmp ugt i16 %i.cu, 3
  %or.cond15 = and i1 %i.ly, %i.lz
  br i1 %or.cond15, label %bb.bp, label %.thread

bb.bp:                                            ; preds = %bb.bo
  store i16 18761, ptr %1, align 8, !tbaa !131
  store i16 18761, ptr %i.m, align 8, !tbaa !76
  %.not367 = icmp eq i16 %i.cu, 4096
  br i1 %.not367, label %bb.lv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ma = add i32 %.0347699, 12
  invoke void @_ZN16checked_buffer_t11checkoffsetEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ma)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq
  %i.mb = load ptr, ptr %i.t, align 8, !tbaa !130
  %i.mc = zext i32 %i.cw to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.mc ; 3 uses
  %i.me = invoke noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.md)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc:                                           ; preds = %bb.br
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 2
  %i.mg = invoke noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.mf)
          to label %.noexc533 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc533:                                        ; preds = %.noexc
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  %i.mi = invoke noundef i32 @_ZN6LibRaw5sget4EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.mh)
          to label %.noexc534 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc534:                                        ; preds = %.noexc533
  %i.mj = icmp eq i32 %i.mi, 1398035031
  %i.mk = icmp ne i16 %i.mg, 0                    ; 2 uses
  %i.ml = add i16 %i.me, -10000
  %i.mm = icmp ult i16 %i.ml, -9999
  %or.cond4.not.i = or i1 %i.mm, %i.mk
  br i1 %or.cond4.not.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.noexc534
  store i32 1, ptr %i.by, align 4, !tbaa !74
  br label %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit

bb.bt:                                            ; preds = %.noexc534
  %i.mn = icmp ult i16 %i.me, 10001
  %or.cond6.i = or i1 %i.mn, %i.mk
  br i1 %or.cond6.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i32 2, ptr %i.by, align 4, !tbaa !74
  store i16 %i.me, ptr %i.bz, align 8, !tbaa !75
  br label %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit

bb.bv:                                            ; preds = %bb.bt
  %.not.i = icmp eq i16 %i.me, 0
  br i1 %.not.i, label %bb.bw, label %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit

bb.bw:                                            ; preds = %bb.bv
  %spec.select.i = select i1 %i.mj, i32 4, i32 3
  store i32 %spec.select.i, ptr %i.by, align 4, !tbaa !74
  store i16 %i.mg, ptr %i.bz, align 8, !tbaa !75
  br label %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit

_ZN6LibRaw23guess_RAFDataGenerationEPh.exit:      ; preds = %bb.bs, %bb.bu, %bb.bv, %bb.bw
  %i.mo = icmp ugt i16 %i.cu, 16
  br i1 %i.mo, label %.lr.ph.preheader, label %.loopexit639

.lr.ph.preheader:                                 ; preds = %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit
  %i.mp = add nsw i32 %i.cv, -16
  %wide.trip.count764 = zext nneg i32 %i.mp to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ce
  %indvars.iv761 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next762, %bb.ce ] ; 5 uses
  %i.mq = trunc i64 %indvars.iv761 to i32
  %i.mr = add i32 %i.mq, 12                       ; 2 uses
  invoke void @_ZN16checked_buffer_t11checkoffsetEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.mr)
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %.lr.ph
  %i.ms = load ptr, ptr %i.t, align 8, !tbaa !130
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %indvars.iv761
  %i.mu = load i64, ptr %i.mt, align 1
  %i.mv = icmp ne i64 %i.mu, 6004499323332481876
  %i.mw = zext i1 %i.mv to i32
  %.not369 = icmp eq i32 %i.mw, 0
  br i1 %.not369, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.mx = trunc i64 %indvars.iv761 to i32
  %i.my = add i32 %i.mx, 10                       ; 2 uses
  %i.mz = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.my)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  %i.na = icmp ugt i16 %i.mz, 125
  br i1 %i.na, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  %i.nb = trunc nuw nsw i64 %indvars.iv761 to i32
  %i.nc = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.my)
          to label %bb.cb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %bb.ca
  %i.nd = zext i16 %i.nc to i32                   ; 2 uses
  store i32 %i.nd, ptr %i.ca, align 4, !tbaa !97
  store i32 %i.nd, ptr %i.cb, align 4, !tbaa !97
  %i.ne = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.mr)
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
begin_hunk_1_@_ZN6LibRaw22parseAdobeRAFMakernoteEv:bb.a
bb.la:                                            ; preds = %bb.kz
  %i.wn = load ptr, ptr @_ZN6LibRaw13Fuji_wb_list1E, align 8, !tbaa !104
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %indvars.iv766
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit543

bb.lb:                                            ; preds = %bb.kz
  %.not.i540 = icmp eq i32 %i.wk, 0
  br i1 %.not.i540, label %_ZNK21libraw_static_table_tixEj.exit543, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.wq = load ptr, ptr @_ZN6LibRaw13Fuji_wb_list1E, align 8, !tbaa !104 ; 2 uses
  %.not6.i541 = icmp eq ptr %i.wq, null
  br i1 %.not6.i541, label %_ZNK21libraw_static_table_tixEj.exit543, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit543

_ZNK21libraw_static_table_tixEj.exit543:          ; preds = %bb.la, %bb.lb, %bb.lc, %bb.ld
  %.0.i542 = phi i32 [ %i.wp, %bb.la ], [ %i.wr, %bb.ld ], [ 0, %bb.lc ], [ 0, %bb.lb ]
  %i.ws = sext i32 %.0.i542 to i64
  %i.wt = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.ws
  store i32 %i.wj, ptr %i.wt, align 8, !tbaa !97
  %i.wu = add nsw i32 %.3335684, 4
  %i.wv = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.wu)
          to label %bb.le unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.le:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit543
  %i.ww = zext i16 %i.wv to i32
  %i.wx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list1E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.wy = zext i32 %i.wx to i64
  %i.wz = icmp samesign ult i64 %indvars.iv766, %i.wy
  br i1 %i.wz, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.xa = load ptr, ptr @_ZN6LibRaw13Fuji_wb_list1E, align 8, !tbaa !104
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %indvars.iv766
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit547

bb.lg:                                            ; preds = %bb.le
  %.not.i544 = icmp eq i32 %i.wx, 0
  br i1 %.not.i544, label %_ZNK21libraw_static_table_tixEj.exit547, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.xd = load ptr, ptr @_ZN6LibRaw13Fuji_wb_list1E, align 8, !tbaa !104 ; 2 uses
  %.not6.i545 = icmp eq ptr %i.xd, null
  br i1 %.not6.i545, label %_ZNK21libraw_static_table_tixEj.exit547, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit547

_ZNK21libraw_static_table_tixEj.exit547:          ; preds = %bb.lf, %bb.lg, %bb.lh, %bb.li
  %.0.i546 = phi i32 [ %i.xc, %bb.lf ], [ %i.xe, %bb.li ], [ 0, %bb.lh ], [ 0, %bb.lg ]
  %i.xf = sext i32 %.0.i546 to i64
  %i.xg = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.xf
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  store i32 %i.ww, ptr %i.xh, align 8, !tbaa !97
  %i.xi = add nsw i32 %.3335684, 6                ; 2 uses
  %indvars.iv.next767 = add nuw nsw i64 %indvars.iv766, 1 ; 2 uses
  %i.xj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list1E, i64 8), align 8, !tbaa !103
  %i.xk = sext i32 %i.xj to i64
  %i.xl = icmp slt i64 %indvars.iv.next767, %i.xk
  br i1 %i.xl, label %.lr.ph686, label %._crit_edge, !llvm.loop !118

bb.lj:                                            ; preds = %.preheader632, %bb.ll
  %.0308687 = phi i32 [ %i.vg, %.preheader632 ], [ %i.xn, %bb.ll ] ; 4 uses
  %i.xm = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %.0308687)
          to label %bb.lk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lk:                                            ; preds = %bb.lj
  %.not469 = icmp eq i16 %i.xm, %i.vh
  br i1 %.not469, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.xn = add nsw i32 %.0308687, 6
  %.not471 = icmp slt i32 %.0308687, %i.vi
  br i1 %.not471, label %bb.lj, label %.thread, !llvm.loop !119

bb.lm:                                            ; preds = %bb.lk
  %.2340.v = select i1 %.not468, i32 -186, i32 -204
  %.2340 = add nsw i32 %.0308687, %.2340.v        ; 2 uses
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.lu
  %indvars.iv769 = phi i64 [ 0, %bb.lm ], [ %indvars.iv.next770, %bb.lu ] ; 5 uses
  %i.xo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw9FujiCCT_KE, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.xp = zext i32 %i.xo to i64
  %i.xq = icmp samesign ult i64 %indvars.iv769, %i.xp
  br i1 %i.xq, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %bb.ln
  %i.xr = load ptr, ptr @_ZN6LibRaw9FujiCCT_KE, align 8, !tbaa !104
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.xr, i64 %indvars.iv769
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit551

bb.lp:                                            ; preds = %bb.ln
  %.not.i548 = icmp eq i32 %i.xo, 0
  br i1 %.not.i548, label %_ZNK21libraw_static_table_tixEj.exit551, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.xu = load ptr, ptr @_ZN6LibRaw9FujiCCT_KE, align 8, !tbaa !104 ; 2 uses
  %.not6.i549 = icmp eq ptr %i.xu, null
  br i1 %.not6.i549, label %_ZNK21libraw_static_table_tixEj.exit551, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit551

_ZNK21libraw_static_table_tixEj.exit551:          ; preds = %bb.lo, %bb.lp, %bb.lq, %bb.lr
  %.0.i550 = phi i32 [ %i.xt, %bb.lo ], [ %i.xv, %bb.lr ], [ 0, %bb.lq ], [ 0, %bb.lp ]
  %i.xw = sitofp reassoc nsz arcp contract afn i32 %.0.i550 to float
  %i.xx = getelementptr inbounds nuw [20 x i8], ptr %i.ce, i64 %indvars.iv769 ; 5 uses
  store float %i.xw, ptr %i.xx, align 4, !tbaa !98
  %i.xy = trunc i64 %indvars.iv769 to i32
  %i.xz = mul i32 %i.xy, 6
  %i.ya = add i32 %i.xz, %.2340                   ; 3 uses
  %i.yb = add i32 %i.ya, 2
  %i.yc = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.yb)
          to label %bb.ls unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ls:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit551
  %i.yd = uitofp reassoc nsz arcp contract afn i16 %i.yc to float
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xx, i64 4
  store float %i.yd, ptr %i.ye, align 4, !tbaa !98
  %i.yf = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.ya)
          to label %bb.lt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lt:                                            ; preds = %bb.ls
  %i.yg = uitofp reassoc nsz arcp contract afn i16 %i.yf to float ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  store float %i.yg, ptr %i.yh, align 4, !tbaa !98
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  store float %i.yg, ptr %i.yi, align 4, !tbaa !98
  %i.yj = add i32 %i.ya, 4
  %i.yk = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.yj)
          to label %bb.lu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lu:                                            ; preds = %bb.lt
  %i.yl = uitofp reassoc nsz arcp contract afn i16 %i.yk to float
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xx, i64 12
  store float %i.yl, ptr %i.ym, align 4, !tbaa !98
  %indvars.iv.next770 = add nuw nsw i64 %indvars.iv769, 1 ; 2 uses
  %exitcond772.not = icmp eq i64 %indvars.iv.next770, 31
  br i1 %exitcond772.not, label %.thread, label %bb.ln, !llvm.loop !120

bb.lv:                                            ; preds = %bb.bp
  store i32 4096, ptr %i.by, align 4, !tbaa !74
  %i.yn = add i32 %.0347699, 516
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %.loopexit
  %.0694 = phi i32 [ 0, %bb.lv ], [ %i.aba, %.loopexit ]
  %.0305693 = phi i32 [ 0, %bb.lv ], [ %.1, %.loopexit ] ; 4 uses
  %.5337692 = phi i32 [ %i.yn, %bb.lv ], [ %i.zb, %.loopexit ] ; 7 uses
  %i.yo = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %.5337692)
          to label %bb.lx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.lx:                                            ; preds = %bb.lw
  %i.yp = add nsw i32 %.5337692, 4
  %i.yq = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.yp)
          to label %bb.ly unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ly:                                            ; preds = %bb.lx
  %i.yr = add nsw i32 %.5337692, 8
  %i.ys = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.yr)
          to label %bb.lz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lz:                                            ; preds = %bb.ly
  %i.yt = shl i32 %i.ys, 1                        ; 2 uses
  %i.yu = add nsw i32 %.5337692, 12
  %i.yv = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.yu)
          to label %bb.ma unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ma:                                            ; preds = %bb.lz
  %i.yw = add nsw i32 %.5337692, 16
  %i.yx = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.yw)
          to label %bb.mb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.mb:                                            ; preds = %bb.ma
  %i.yy = add nsw i32 %.5337692, 20
  %i.yz = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.yy)
          to label %bb.mc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mc:                                            ; preds = %bb.mb
  %i.za = shl i32 %i.yz, 1                        ; 2 uses
  %i.zb = add nsw i32 %.5337692, 24
  %i.zc = icmp ne i32 %i.yq, 0
  %i.zd = icmp slt i32 %.0305693, 64
  %or.cond19 = select i1 %i.zc, i1 %i.zd, i1 false
  br i1 %or.cond19, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  %i.ze = insertelement <4 x i32> poison, i32 %i.yq, i64 0
  %i.zf = insertelement <4 x i32> %i.ze, i32 %i.yt, i64 1
  %i.zg = insertelement <4 x i32> %i.zf, i32 %i.yv, i64 2
  %i.zh = insertelement <4 x i32> %i.zg, i32 %i.za, i64 3
  %i.zi = sitofp reassoc nsz arcp contract afn <4 x i32> %i.zh to <4 x float>
  %i.zj = sext i32 %.0305693 to i64
  %i.zk = getelementptr inbounds [20 x i8], ptr %i.ce, i64 %i.zj ; 2 uses
  store <4 x float> %i.zi, ptr %i.zk, align 4, !tbaa !98
  %i.zl = sitofp reassoc nsz arcp contract afn i32 %i.yx to float
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  store float %i.zl, ptr %i.zm, align 4, !tbaa !98
  %i.zn = add nsw i32 %.0305693, 1
  br label %bb.me

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an, %.preheader616, %bb.lj, %bb.lt, %bb.ls, %_ZNK21libraw_static_table_tixEj.exit551, %bb.mb, %bb.ma, %bb.lz, %bb.ly, %bb.lx, %bb.lw, %.lr.ph686, %_ZNK21libraw_static_table_tixEj.exit539, %_ZNK21libraw_static_table_tixEj.exit543, %bb.by, %.lr.ph, %bb.bd, %bb.be, %bb.bf, %bb.bg, %.preheader653, %bb.bi, %bb.bj, %bb.bk, %.preheader624, %bb.aa, %bb.ab, %bb.ac, %.preheader620, %bb.ae, %bb.af, %bb.ag, %bb.ba, %bb.az, %bb.ay, %.preheader645, %.preheader649.3, %.preheader649.2, %.preheader649.1, %.preheader649.preheader, %._crit_edge, %bb.al, %bb.aj, %bb.x, %bb.y, %bb.bl, %bb.bm, %bb.bq, %bb.ca, %bb.cb, %bb.cc, %bb.dq, %bb.ds, %bb.ec, %bb.ee, %bb.es, %bb.ev, %bb.ey, %bb.fc, %bb.fg, %bb.fk, %bb.fn, %bb.fr, %bb.fv, %bb.fz, %bb.ge, %bb.gi, %bb.gl, %bb.go, %bb.gr, %bb.gu, %bb.gx, %bb.ha, %bb.hd, %bb.hg, %bb.hi, %bb.hl, %bb.ho, %bb.hs, %bb.hv, %bb.hx, %bb.ib, %bb.ie, %bb.ih, %bb.ik, %bb.io, %bb.is, %bb.iw, %bb.iz, %bb.jc, %bb.ji, %bb.jk, %bb.jq, %bb.ju, %bb.jy, %bb.ke, %bb.kg, %.thread606, %bb.kl, %bb.km, %bb.kn, %bb.br, %.noexc, %.noexc533, %bb.j, %bb.m, %bb.n, %bb.o, %bb.p, %bb.r, %bb.t
  %lpad.loopexit.split-lp888 = landingpad { ptr, i32 }
          cleanup
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !132 ; 3 uses
  %.not.i.i.i.i560 = icmp eq ptr %i.zp, null
  br i1 %.not.i.i.i.i560, label %_ZN16checked_buffer_tD2Ev.exit561, label %bb.mp

bb.me:                                            ; preds = %bb.md, %bb.mc
  %.1 = phi i32 [ %i.zn, %bb.md ], [ %.0305693, %bb.mc ]
  %.not368 = icmp eq i32 %i.yo, 70
  br i1 %.not368, label %.loopexit, label %.preheader612

.preheader612:                                    ; preds = %bb.me
  %i.zq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list2E, i64 8), align 8, !tbaa !103 ; 3 uses
  %i.zr = icmp sgt i32 %i.zq, 1
  br i1 %i.zr, label %_ZNK21libraw_static_table_tixEj.exit555.lr.ph, label %.loopexit

_ZNK21libraw_static_table_tixEj.exit555.lr.ph:    ; preds = %.preheader612
  %i.zs = load ptr, ptr @_ZN6LibRaw13Fuji_wb_list2E, align 8, !tbaa !104
  %.fr = freeze ptr %i.zs                         ; 6 uses
  br label %_ZNK21libraw_static_table_tixEj.exit555

_ZNK21libraw_static_table_tixEj.exit555:          ; preds = %_ZNK21libraw_static_table_tixEj.exit555.lr.ph, %bb.mo
  %indvars.iv777 = phi i64 [ 1, %_ZNK21libraw_static_table_tixEj.exit555.lr.ph ], [ %indvars.iv.next778, %bb.mo ] ; 3 uses
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %indvars.iv777
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !97
  %i.zv = icmp eq i32 %i.zu, %i.yo
  br i1 %i.zv, label %.preheader.split.preheader, label %bb.mo

.preheader.split.preheader:                       ; preds = %_ZNK21libraw_static_table_tixEj.exit555
  %i.zw = trunc nuw nsw i64 %indvars.iv777 to i32
  %i.zx = add nsw i32 %i.zw, -1                   ; 5 uses
  %i.zy = zext i32 %i.zx to i64
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %i.zy ; 4 uses
  %i.aaa = icmp ult i32 %i.zx, %i.zq
  %spec.select = select i1 %i.aaa, ptr %i.zz, ptr %.fr
  %.0.i558 = load i32, ptr %spec.select, align 4, !tbaa !97
  %i.aab = sext i32 %.0.i558 to i64
  %i.aac = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.aab
  store i32 %i.yt, ptr %i.aac, align 8, !tbaa !97
  %i.aad = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list2E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.aae = icmp ult i32 %i.zx, %i.aad
  br i1 %i.aae, label %bb.mh, label %bb.mf

bb.mf:                                            ; preds = %.preheader.split.preheader
  %.not.i556.1 = icmp eq i32 %i.aad, 0
  br i1 %.not.i556.1, label %_ZNK21libraw_static_table_tixEj.exit559.1, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.aaf = load i32, ptr %.fr, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit559.1

bb.mh:                                            ; preds = %.preheader.split.preheader
  %i.aag = load i32, ptr %i.zz, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit559.1

_ZNK21libraw_static_table_tixEj.exit559.1:        ; preds = %bb.mh, %bb.mg, %bb.mf
  %.0.i558.1 = phi i32 [ %i.aag, %bb.mh ], [ %i.aaf, %bb.mg ], [ 0, %bb.mf ]
  %i.aah = sext i32 %.0.i558.1 to i64
  %i.aai = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.aah
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 4
  store i32 %i.yv, ptr %i.aaj, align 4, !tbaa !97
  %i.aak = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list2E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.aal = icmp ult i32 %i.zx, %i.aak
  br i1 %i.aal, label %bb.mk, label %bb.mi

bb.mi:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit559.1
  %.not.i556.2 = icmp eq i32 %i.aak, 0
  br i1 %.not.i556.2, label %_ZNK21libraw_static_table_tixEj.exit559.2, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.aam = load i32, ptr %.fr, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit559.2

bb.mk:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit559.1
  %i.aan = load i32, ptr %i.zz, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit559.2

_ZNK21libraw_static_table_tixEj.exit559.2:        ; preds = %bb.mk, %bb.mj, %bb.mi
  %.0.i558.2 = phi i32 [ %i.aan, %bb.mk ], [ %i.aam, %bb.mj ], [ 0, %bb.mi ]
  %i.aao = sext i32 %.0.i558.2 to i64
  %i.aap = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.aao
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  store i32 %i.za, ptr %i.aaq, align 8, !tbaa !97
  %i.aar = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list2E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.aas = icmp ult i32 %i.zx, %i.aar
  br i1 %i.aas, label %bb.mn, label %bb.ml

bb.ml:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit559.2
  %.not.i556.3 = icmp eq i32 %i.aar, 0
  br i1 %.not.i556.3, label %_ZNK21libraw_static_table_tixEj.exit559.3, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.aat = load i32, ptr %.fr, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit559.3

bb.mn:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit559.2
  %i.aau = load i32, ptr %i.zz, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit559.3

_ZNK21libraw_static_table_tixEj.exit559.3:        ; preds = %bb.mn, %bb.mm, %bb.ml
  %.0.i558.3 = phi i32 [ %i.aau, %bb.mn ], [ %i.aat, %bb.mm ], [ 0, %bb.ml ]
  %i.aav = sext i32 %.0.i558.3 to i64
  %i.aaw = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.aav
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 12
  store i32 %i.yx, ptr %i.aax, align 4, !tbaa !97
  br label %.loopexit

bb.mo:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit555
  %indvars.iv.next778 = add nuw nsw i64 %indvars.iv777, 2 ; 2 uses
  %i.aay = trunc nuw i64 %indvars.iv.next778 to i32
  %i.aaz = icmp sgt i32 %i.zq, %i.aay
  br i1 %i.aaz, label %_ZNK21libraw_static_table_tixEj.exit555, label %.loopexit, !llvm.loop !121

.loopexit:                                        ; preds = %bb.mo, %_ZNK21libraw_static_table_tixEj.exit559.3, %.preheader612, %bb.me
  %i.aba = add nuw nsw i32 %.0694, 1              ; 2 uses
  %exitcond788.not = icmp eq i32 %i.aba, 42
  br i1 %exitcond788.not, label %.thread, label %bb.lw, !llvm.loop !122

.thread:                                          ; preds = %bb.aw, %bb.ll, %bb.lu, %.loopexit, %.preheader628.9, %.thread.loopexit736, %.thread.loopexit727, %bb.am, %bb.bc, %bb.ki, %bb.kj, %bb.ah, %.loopexit621, %bb.bh, %bb.bo, %bb.bn
  %.5343 = phi i32 [ %.0338700, %bb.bo ], [ %.0338700, %.thread.loopexit727 ], [ %.0338700, %.loopexit ], [ %.0338700, %bb.am ], [ %.0338700, %bb.bh ], [ %.0338700, %bb.bn ], [ %.0338700, %.thread.loopexit736 ], [ %.0338700, %.preheader628.9 ], [ %.0338700, %.loopexit621 ], [ %.0338700, %bb.ah ], [ 0, %bb.ki ], [ %.1339609, %bb.kj ], [ %.1339609, %bb.ll ], [ %.0338700, %bb.bc ], [ %.2340, %bb.lu ], [ %.0338700, %bb.aw ]
  %i.abb = add i32 %i.cw, %i.cv
  %.not366 = icmp eq i32 %i.cq, 0
  br i1 %.not366, label %._crit_edge703, label %bb.x, !llvm.loop !123

._crit_edge703:                                   ; preds = %.thread, %bb.w
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !132 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.abd, null
  br i1 %.not.i.i.i.i, label %.sink.split, label %.sink.split.sink.split

bb.mp:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !133
  %i.abg = ptrtoint ptr %i.abf to i64
  %i.abh = ptrtoint ptr %i.zp to i64
  %i.abi = sub i64 %i.abg, %i.abh
  call void @_ZdlPvm(ptr noundef nonnull %i.zp, i64 noundef %i.abi) #13
  br label %_ZN16checked_buffer_tD2Ev.exit561

_ZN16checked_buffer_tD2Ev.exit561:                ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  resume { ptr, i32 } %lpad.loopexit.split-lp888

.critedge:                                        ; preds = %bb.v, %bb.u
  %i.abj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !132 ; 2 uses
  %.not.i.i.i.i562 = icmp eq ptr %i.abk, null
  br i1 %.not.i.i.i.i562, label %.sink.split, label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.critedge, %._crit_edge703
  %.sink841 = phi ptr [ %i.abd, %._crit_edge703 ], [ %i.abk, %.critedge ] ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !133
  %i.abn = ptrtoint ptr %i.abm to i64
  %i.abo = ptrtoint ptr %.sink841 to i64
  %i.abp = sub i64 %i.abn, %i.abo
  call void @_ZdlPvm(ptr noundef nonnull %.sink841, i64 noundef %i.abp) #13
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %.critedge, %._crit_edge703
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.mq

bb.mq:                                            ; preds = %.sink.split, %bb.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #3

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

declare void @_ZN16checked_buffer_t11checkoffsetEi(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN24fuji_wb_checked_buffer_t4isWBEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZN6LibRaw10parse_fujiEx:bb.a
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !79
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call noundef i64 %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cz), !call_target !110 ; 3 uses
  %i.de = icmp eq i16 %i.cv, 256
  br i1 %i.de, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.df = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.df, ptr %i.bb, align 8, !tbaa !178
  %i.dg = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.dg, ptr %i.bc, align 2, !tbaa !179
  br label %.thread.thread

bb.m:                                             ; preds = %bb.k
  %i.dh = icmp eq i16 %i.cv, 272
  %i.di = icmp ne i16 %.0192275, 0                ; 3 uses
  %or.cond = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dj = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.dj, ptr %i.ba, align 8, !tbaa !181
  %i.dk = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.dk, ptr %i.az, align 2, !tbaa !182
  br label %.thread.thread

bb.o:                                             ; preds = %bb.m
  %i.dl = icmp eq i16 %i.cv, 273
  %or.cond3 = select i1 %i.dl, i1 %i.di, i1 false
  br i1 %or.cond3, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dm = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.dm, ptr %i.ax, align 4, !tbaa !183
  %i.dn = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.dn, ptr %i.ay, align 2, !tbaa !184
  br label %.thread.thread

bb.q:                                             ; preds = %bb.o
  %i.do = icmp eq i16 %i.cv, 277
  %or.cond5 = select i1 %i.do, i1 %i.di, i1 false
  br i1 %or.cond5, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.dp = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dq = zext i16 %i.dp to i32
  %i.dr = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ds = zext i16 %i.dr to i32
  %i.dt = mul nuw nsw i32 %i.ds, %i.dq
  switch i32 %i.dt, label %.thread.thread [
    i32 6, label %bb.s
    i32 12, label %bb.t
    i32 144, label %bb.u
    i32 1, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  store i16 1500, ptr %i.aw, align 4, !tbaa !185
  br label %.thread.thread

bb.t:                                             ; preds = %bb.r
  store i16 1333, ptr %i.aw, align 4, !tbaa !185
  br label %.thread.thread

bb.u:                                             ; preds = %bb.r
  store i16 1777, ptr %i.aw, align 4, !tbaa !185
  br label %.thread.thread

bb.v:                                             ; preds = %bb.r
  store i16 1000, ptr %i.aw, align 4, !tbaa !185
  br label %.thread.thread

bb.w:                                             ; preds = %bb.q
  switch i16 %i.cv, label %.loopexit243 [
    i16 289, label %bb.x
    i16 304, label %bb.y
    i16 305, label %bb.z
    i16 12272, label %.preheader247.preheader
    i16 16384, label %bb.ac
    i16 -28160, label %bb.af
    i16 -27056, label %bb.am
  ]

.preheader247.preheader:                          ; preds = %bb.w
  %i.du = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dv = zext i16 %i.du to i32
  store i32 %i.dv, ptr %i.bm, align 4, !tbaa !97
  %i.dw = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dx = zext i16 %i.dw to i32
  store i32 %i.dx, ptr %i.ad, align 8, !tbaa !97
  %i.dy = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.dz = zext i16 %i.dy to i32
  store i32 %i.dz, ptr %i.bn, align 4, !tbaa !97
  %i.ea = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.eb = zext i16 %i.ea to i32                   ; 2 uses
  store i32 %i.eb, ptr %i.bo, align 8, !tbaa !97
  %i.ec = icmp eq i16 %i.cx, 16
  br i1 %i.ec, label %.preheader245.preheader, label %.loopexit246

bb.x:                                             ; preds = %bb.w
  %i.ed = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.ed, ptr %i.ak, align 4, !tbaa !186
  %i.ee = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.ef = icmp eq i16 %i.ee, 4284
  %spec.store.select = select i1 %i.ef, i16 4287, i16 %i.ee
  store i16 %spec.store.select, ptr %i.al, align 2, !tbaa !187
  br label %.thread.thread

bb.y:                                             ; preds = %bb.w
  %i.eg = load ptr, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !79
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call noundef i32 %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.eg), !call_target !190
  %i.el = ashr i32 %i.ek, 7
  store i32 %i.el, ptr %i.ai, align 4, !tbaa !191
  %i.em = load ptr, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !79
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call noundef i32 %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.em), !call_target !190
  %i.er = and i32 %i.eq, 8
  %.not218 = icmp eq i32 %i.er, 0
  %i.es = zext i1 %.not218 to i16
  store i16 %i.es, ptr %i.aj, align 2, !tbaa !192
  br label %.thread.thread

bb.z:                                             ; preds = %bb.w
  store i32 9, ptr %i.ag, align 8, !tbaa !193
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.aa
  %indvars.iv = phi i64 [ 0, %bb.z ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !79
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = call noundef i32 %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %i.et), !call_target !190
  %i.ey = call i32 @llvm.smax.i32(i32 %i.ex, i32 0)
  %i.ez = call i32 @llvm.umin.i32(i32 %i.ey, i32 2)
  %i.fa = trunc nuw nsw i32 %i.ez to i8
  %i.fb = sub nuw nsw i64 35, %indvars.iv
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fb
  store i8 %i.fa, ptr %i.fc, align 1, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 36
  br i1 %exitcond.not, label %.thread.thread, label %bb.aa, !llvm.loop !172

.preheader245.preheader:                          ; preds = %.preheader247.preheader
  %i.fd = load i32, ptr %i.bm, align 4, !tbaa !97
  %i.fe = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ff = zext i16 %i.fe to i32
  %i.fg = add nsw i32 %i.fd, %i.ff
  %i.fh = sdiv i32 %i.fg, 2
  store i32 %i.fh, ptr %i.bm, align 4, !tbaa !97
  %i.fi = load i32, ptr %i.ad, align 8, !tbaa !97
  %i.fj = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.fk = zext i16 %i.fj to i32
  %i.fl = add nsw i32 %i.fi, %i.fk
  %i.fm = sdiv i32 %i.fl, 2
  store i32 %i.fm, ptr %i.ad, align 8, !tbaa !97
  %i.fn = load i32, ptr %i.bn, align 4, !tbaa !97
  %i.fo = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.fp = zext i16 %i.fo to i32
  %i.fq = add nsw i32 %i.fn, %i.fp
  %i.fr = sdiv i32 %i.fq, 2
  store i32 %i.fr, ptr %i.bn, align 4, !tbaa !97
  %i.fs = load i32, ptr %i.bo, align 8, !tbaa !97
  %i.ft = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.fu = zext i16 %i.ft to i32
  %i.fv = add nsw i32 %i.fs, %i.fu
  %i.fw = sdiv i32 %i.fv, 2                       ; 2 uses
  store i32 %i.fw, ptr %i.bo, align 8, !tbaa !97
  br label %.loopexit246

.loopexit246:                                     ; preds = %.preheader245.preheader, %.preheader247.preheader
  %i.fx = phi i32 [ %i.fw, %.preheader245.preheader ], [ %i.eb, %.preheader247.preheader ] ; 2 uses
  %.pre = load i32, ptr %i.ad, align 8, !tbaa !97 ; 2 uses
  br i1 %.not217, label %.loopexit243.loopexit279, label %bb.ab

bb.ab:                                            ; preds = %.loopexit246
  %i.fy = sitofp reassoc nsz arcp contract afn i32 %.pre to double
  %i.fz = fmul reassoc nnan nsz arcp contract afn double %.0190, %i.fy
  %i.ga = fptosi double %i.fz to i32              ; 2 uses
  store i32 %i.ga, ptr %i.ad, align 8, !tbaa !97
  %i.gb = sitofp reassoc nsz arcp contract afn i32 %i.fx to double
  %i.gc = fmul reassoc nnan nsz arcp contract afn double %.0189, %i.gb
  %i.gd = fptosi double %i.gc to i32              ; 2 uses
  store i32 %i.gd, ptr %i.ae, align 8, !tbaa !97
  br label %.loopexit243.loopexit279

.loopexit243.loopexit279:                         ; preds = %.loopexit246, %bb.ab
  %i.ge = phi i32 [ %i.gd, %bb.ab ], [ %i.fx, %.loopexit246 ]
  %i.gf = phi i32 [ %i.ga, %bb.ab ], [ %.pre, %.loopexit246 ]
  %i.gg = call <3 x i32> @llvm.masked.load.v3i32.p0(ptr nonnull align 4 %i.bm, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i32> poison), !tbaa !97
  %i.gh = insertelement <4 x i32> poison, i32 %i.gf, i64 0
  %i.gi = insertelement <4 x i32> %i.gh, i32 %i.ge, i64 2
  %i.gj = shufflevector <3 x i32> %i.gg, <3 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.gk = shufflevector <4 x i32> %i.gj, <4 x i32> %i.gi, <4 x i32> <i32 4, i32 0, i32 6, i32 2>
  %i.gl = sitofp reassoc nsz arcp contract afn <4 x i32> %i.gk to <4 x float>
  store <4 x float> %i.gl, ptr %i.af, align 4, !tbaa !98
  br label %.thread.thread

bb.ac:                                            ; preds = %bb.w
  switch i16 %i.cx, label %.thread.thread [
    i16 16, label %bb.ad
    i16 8, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %i.gm = lshr exact i16 %i.cx, 1
  store i16 %i.gm, ptr %i.ab, align 2, !tbaa !99
  %i.gn = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.gn, ptr %i.be, align 2, !tbaa !99
  %i.go = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.go, ptr %i.bd, align 4, !tbaa !99
  %i.gp = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.gp, ptr %i.bf, align 2, !tbaa !99
  %i.gq = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.gq, ptr %i.bg, align 8, !tbaa !99
  %i.gr = load i16, ptr %i.ab, align 2, !tbaa !99 ; 2 uses
  %i.gs = icmp eq i16 %i.gr, 8
  br i1 %i.gs, label %.preheader252.preheader, label %bb.ae

.preheader252.preheader:                          ; preds = %bb.ad
  %i.gt = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.gt, ptr %i.bh, align 2, !tbaa !99
  %i.gu = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.gu, ptr %i.bi, align 4, !tbaa !99
  %i.gv = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.gv, ptr %i.bj, align 2, !tbaa !99
  %i.gw = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.gw, ptr %i.bk, align 8, !tbaa !99
  %.pr = load i16, ptr %i.ab, align 2, !tbaa !99
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader252.preheader, %bb.ad
  %i.gx = phi i16 [ %.pr, %.preheader252.preheader ], [ %i.gr, %bb.ad ]
  switch i16 %i.gx, label %.thread.thread [
    i16 4, label %.preheader248.preheader
    i16 8, label %.preheader250.preheader
  ]

.preheader250.preheader:                          ; preds = %bb.ae
  %i.gy = load <4 x i16>, ptr %i.bd, align 4, !tbaa !99
  %i.gz = zext <4 x i16> %i.gy to <4 x i32>
  %i.ha = load <4 x i16>, ptr %i.bl, align 4, !tbaa !99
  %i.hb = zext <4 x i16> %i.ha to <4 x i32>
  %i.hc = add nuw nsw <4 x i32> %i.hb, %i.gz
  %i.hd = lshr <4 x i32> %i.hc, splat (i32 1)
  store <4 x i32> %i.hd, ptr %i.ac, align 8, !tbaa !97
  br label %.thread.thread

.preheader248.preheader:                          ; preds = %bb.ae
  %i.he = load <4 x i16>, ptr %i.bd, align 4, !tbaa !99
  %i.hf = zext <4 x i16> %i.he to <4 x i32>
  store <4 x i32> %i.hf, ptr %i.ac, align 8, !tbaa !97
  br label %.thread.thread

bb.af:                                            ; preds = %bb.w
  %i.hg = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 4 uses
  %i.hh = zext i16 %i.hg to i32                   ; 2 uses
  %i.hi = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.hj = zext i16 %i.hi to i32                   ; 2 uses
  %i.hk = icmp ne i16 %i.hg, %i.hi
  %i.hl = icmp ne i16 %i.hg, 0
  %or.cond11 = and i1 %i.hl, %i.hk
  br i1 %or.cond11, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store float 0.000000e+00, ptr %i.aa, align 8, !tbaa !194
  br label %.thread.thread

bb.ah:                                            ; preds = %bb.af
  %i.hm = shl nuw nsw i32 %i.hh, 2
  %i.hn = icmp eq i32 %i.hm, %i.hj
  br i1 %i.hn, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store float 2.000000e+00, ptr %i.aa, align 8, !tbaa !194
  br label %.thread.thread

bb.aj:                                            ; preds = %bb.ah
  %i.ho = shl nuw nsw i32 %i.hh, 4
  %i.hp = icmp eq i32 %i.ho, %i.hj
  br i1 %i.hp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store float 4.000000e+00, ptr %i.aa, align 8, !tbaa !194
  br label %.thread.thread

bb.al:                                            ; preds = %bb.aj
  %i.hq = uitofp i16 %i.hi to float
  %i.hr = uitofp i16 %i.hg to float
  %i.hs = fdiv reassoc nsz arcp contract afn float %i.hq, %i.hr
  %i.ht = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.hs)
  %i.hu = fmul reassoc nsz arcp contract afn float %i.ht, f0x3FB8AA3B
  store float %i.hu, ptr %i.aa, align 8, !tbaa !194
  br label %.thread.thread

bb.am:                                            ; preds = %bb.w
  %i.hv = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hw = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.hx = uitofp reassoc nsz arcp contract afn i16 %i.hw to float ; 2 uses
  %i.hy = fcmp reassoc nsz arcp contract afn olt float %i.hx, 1.000000e+00
  %i.hz = select reassoc nsz arcp contract afn i1 %i.hy, float 1.000000e+00, float %i.hx
  %i.ia = sitofp i16 %i.hv to float
  %i.ib = fdiv reassoc nsz arcp contract afn float %i.ia, %i.hz ; 2 uses
  store float %i.ib, ptr %i.y, align 8, !tbaa !100
  %i.ic = load float, ptr %i.z, align 4, !tbaa !101
  %i.id = fadd reassoc nsz arcp contract afn float %i.ib, %i.ic
  store float %i.id, ptr %i.z, align 4, !tbaa !101
  br label %.thread.thread

.loopexit243:                                     ; preds = %bb.w
  %i.ie = add i16 %i.cv, -8192
  %or.cond13 = icmp ult i16 %i.ie, 1041
  br i1 %or.cond13, label %.preheader241.preheader, label %.thread

.preheader241.preheader:                          ; preds = %.loopexit243
  %i.if = load i32, ptr @tag2wbtable, align 16, !tbaa !95
  %i.ig = icmp eq i32 %i.if, %i.cw
  br i1 %i.ig, label %.preheader240, label %.preheader241.1

.preheader241.1:                                  ; preds = %.preheader241.preheader
  %i.ih = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 8), align 8, !tbaa !95
  %i.ii = icmp eq i32 %i.ih, %i.cw
  br i1 %i.ii, label %.preheader240, label %.preheader241.2

.preheader241.2:                                  ; preds = %.preheader241.1
  %i.ij = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 16), align 16, !tbaa !95
  %i.ik = icmp eq i32 %i.ij, %i.cw
  br i1 %i.ik, label %.preheader240, label %.preheader241.3

.preheader241.3:                                  ; preds = %.preheader241.2
  %i.il = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 24), align 8, !tbaa !95
  %i.im = icmp eq i32 %i.il, %i.cw
  br i1 %i.im, label %.preheader240, label %.preheader241.4

.preheader241.4:                                  ; preds = %.preheader241.3
  %i.in = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 32), align 16, !tbaa !95
  %i.io = icmp eq i32 %i.in, %i.cw
  br i1 %i.io, label %.preheader240, label %.preheader241.5

.preheader241.5:                                  ; preds = %.preheader241.4
  %i.ip = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 40), align 8, !tbaa !95
  %i.iq = icmp eq i32 %i.ip, %i.cw
  br i1 %i.iq, label %.preheader240, label %.preheader241.6

.preheader241.6:                                  ; preds = %.preheader241.5
  %i.ir = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 48), align 16, !tbaa !95
  %i.is = icmp eq i32 %i.ir, %i.cw
  br i1 %i.is, label %.preheader240, label %.preheader241.7

.preheader241.7:                                  ; preds = %.preheader241.6
  %i.it = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 56), align 8, !tbaa !95
  %i.iu = icmp eq i32 %i.it, %i.cw
  br i1 %i.iu, label %.preheader240, label %.preheader241.8

.preheader241.8:                                  ; preds = %.preheader241.7
  %i.iv = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 64), align 16, !tbaa !95
  %i.iw = icmp eq i32 %i.iv, %i.cw
  br i1 %i.iw, label %.preheader240, label %.preheader241.9

.preheader241.9:                                  ; preds = %.preheader241.8
  %i.ix = load i32, ptr getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 72), align 8, !tbaa !95
  %i.iy = icmp eq i32 %i.ix, %i.cw
  br i1 %i.iy, label %.preheader240, label %.thread.thread

.preheader240:                                    ; preds = %.preheader241.9, %.preheader241.8, %.preheader241.7, %.preheader241.6, %.preheader241.5, %.preheader241.4, %.preheader241.3, %.preheader241.2, %.preheader241.1, %.preheader241.preheader
  %.lcssa = phi ptr [ @tag2wbtable, %.preheader241.preheader ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 8), %.preheader241.1 ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 16), %.preheader241.2 ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 24), %.preheader241.3 ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 32), %.preheader241.4 ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 40), %.preheader241.5 ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 48), %.preheader241.6 ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 56), %.preheader241.7 ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 64), %.preheader241.8 ], [ getelementptr inbounds nuw (i8, ptr @tag2wbtable, i64 72), %.preheader241.9 ]
  %i.iz = getelementptr inbounds nuw i8, ptr %.lcssa, i64 4 ; 8 uses
  %i.ja = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.jb = zext i16 %i.ja to i32
  %i.jc = load i32, ptr %i.iz, align 4, !tbaa !96
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  store i32 %i.jb, ptr %i.jf, align 4, !tbaa !97
  %i.jg = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.jh = zext i16 %i.jg to i32
  %i.ji = load i32, ptr %i.iz, align 4, !tbaa !96
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.jj
  store i32 %i.jh, ptr %i.jk, align 8, !tbaa !97
  %i.jl = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.jm = zext i16 %i.jl to i32
  %i.jn = load i32, ptr %i.iz, align 4, !tbaa !96
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  store i32 %i.jm, ptr %i.jq, align 4, !tbaa !97
  %i.jr = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.js = zext i16 %i.jr to i32
  %i.jt = load i32, ptr %i.iz, align 4, !tbaa !96 ; 2 uses
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.ju ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i32 %i.js, ptr %i.jw, align 8, !tbaa !97
  %i.jx = icmp eq i16 %i.cx, 16
  br i1 %i.jx, label %.preheader238, label %.loopexit239

.preheader238:                                    ; preds = %.preheader240
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !97
  %i.ka = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.kb = zext i16 %i.ka to i32
  %i.kc = add nsw i32 %i.jz, %i.kb
  %i.kd = sdiv i32 %i.kc, 2
  %i.ke = load i32, ptr %i.iz, align 4, !tbaa !96
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.kf ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  store i32 %i.kd, ptr %i.kh, align 4, !tbaa !97
  %i.ki = load i32, ptr %i.kg, align 8, !tbaa !97
  %i.kj = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.kk = zext i16 %i.kj to i32
  %i.kl = add nsw i32 %i.ki, %i.kk
  %i.km = sdiv i32 %i.kl, 2
  %i.kn = load i32, ptr %i.iz, align 4, !tbaa !96
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.ko ; 2 uses
  store i32 %i.km, ptr %i.kp, align 8, !tbaa !97
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 12
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !97
  %i.ks = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.kt = zext i16 %i.ks to i32
  %i.ku = add nsw i32 %i.kr, %i.kt
  %i.kv = sdiv i32 %i.ku, 2
  %i.kw = load i32, ptr %i.iz, align 4, !tbaa !96
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.kx ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  store i32 %i.kv, ptr %i.kz, align 4, !tbaa !97
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !97
  %i.lc = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ld = zext i16 %i.lc to i32
  %i.le = add nsw i32 %i.lb, %i.ld
  %i.lf = sdiv i32 %i.le, 2
  %i.lg = load i32, ptr %i.iz, align 4, !tbaa !96 ; 2 uses
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store i32 %i.lf, ptr %i.lj, align 8, !tbaa !97
  br label %.loopexit239

.loopexit239:                                     ; preds = %.preheader238, %.preheader240
  %i.lk = phi i32 [ %i.lg, %.preheader238 ], [ %i.jt, %.preheader240 ]
  br i1 %.not217, label %.thread.thread, label %bb.an

bb.an:                                            ; preds = %.loopexit239
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.ll ; 2 uses
  %i.ln = call <3 x i32> @llvm.masked.load.v3i32.p0(ptr nonnull align 8 %i.lm, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i32> poison), !tbaa !97
  %i.lo = shufflevector <3 x i32> %i.ln, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.lp = sitofp reassoc nsz arcp contract afn <2 x i32> %i.lo to <2 x double>
  %i.lq = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.x, %i.lp
  %i.lr = shufflevector <2 x double> %i.lq, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %i.ls = fptosi <3 x double> %i.lr to <3 x i32>
  call void @llvm.masked.store.v3i32.p0(<3 x i32> %i.ls, ptr align 8 %i.lm, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !97
  br label %.thread.thread

.thread:                                          ; preds = %.loopexit243
  switch i16 %i.cv, label %.thread.thread [
    i16 12032, label %bb.ao
    i16 -16384, label %bb.ar
  ]

bb.ao:                                            ; preds = %.thread
  %i.lt = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.lu = icmp sgt i32 %i.lt, 0
  br i1 %i.lu, label %.preheader233.lr.ph, label %.thread.thread

.preheader233.lr.ph:                              ; preds = %bb.ao
  %i.lv = call i32 @llvm.umin.i32(i32 %i.lt, i32 6) ; 2 uses
  %i.lw = shl nuw nsw i32 %i.lv, 4
  %i.lx = or disjoint i32 %i.lw, 4
  %.not220 = icmp samesign ugt i32 %i.lx, %i.cy
  %i.ly = add nuw nsw i32 %i.lv, 90
  %wide.trip.count = zext nneg i32 %i.ly to i64
  br label %.preheader233

.preheader233:                                    ; preds = %.preheader233.lr.ph, %bb.aq
  %indvars.iv310 = phi i64 [ 90, %.preheader233.lr.ph ], [ %indvars.iv.next311, %bb.aq ] ; 3 uses
  %i.lz = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %indvars.iv310 ; 6 uses
  %i.ma = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.mb = zext i16 %i.ma to i32
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 4 ; 3 uses
  store i32 %i.mb, ptr %i.mc, align 4, !tbaa !97
  %i.md = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.me = zext i16 %i.md to i32
  store i32 %i.me, ptr %i.lz, align 8, !tbaa !97
  %i.mf = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.mg = zext i16 %i.mf to i32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lz, i64 12 ; 3 uses
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !97
  %i.mi = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.mj = zext i16 %i.mi to i32
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 3 uses
  store i32 %i.mj, ptr %i.mk, align 8, !tbaa !97
  br i1 %.not220, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader233
  %i.ml = load i32, ptr %i.mc, align 4, !tbaa !97
  %i.mm = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.mn = zext i16 %i.mm to i32
  %i.mo = add nsw i32 %i.ml, %i.mn
  %i.mp = sdiv i32 %i.mo, 2
  store i32 %i.mp, ptr %i.mc, align 4, !tbaa !97
  %i.mq = load i32, ptr %i.lz, align 8, !tbaa !97
  %i.mr = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ms = zext i16 %i.mr to i32
  %i.mt = add nsw i32 %i.mq, %i.ms
  %i.mu = sdiv i32 %i.mt, 2
  store i32 %i.mu, ptr %i.lz, align 8, !tbaa !97
  %i.mv = load i32, ptr %i.mh, align 4, !tbaa !97
  %i.mw = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.mx = zext i16 %i.mw to i32
  %i.my = add nsw i32 %i.mv, %i.mx
  %i.mz = sdiv i32 %i.my, 2
  store i32 %i.mz, ptr %i.mh, align 4, !tbaa !97
  %i.na = load i32, ptr %i.mk, align 8, !tbaa !97
  %i.nb = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.nc = zext i16 %i.nb to i32
  %i.nd = add nsw i32 %i.na, %i.nc
  %i.ne = sdiv i32 %i.nd, 2
  store i32 %i.ne, ptr %i.mk, align 8, !tbaa !97
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader233
  br i1 %.not217, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.loopexit
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv310
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 188664 ; 2 uses
  %i.nh = call <3 x i32> @llvm.masked.load.v3i32.p0(ptr nonnull align 8 %i.ng, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i32> poison), !tbaa !97
  %i.ni = shufflevector <3 x i32> %i.nh, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.nj = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ni to <2 x double>
  %i.nk = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.x, %i.nj
  %i.nl = shufflevector <2 x double> %i.nk, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %i.nm = fptosi <3 x double> %i.nl to <3 x i32>
  call void @llvm.masked.store.v3i32.p0(<3 x i32> %i.nm, ptr align 8 %i.ng, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !97
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit, %bb.ap
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 1 ; 2 uses
  %exitcond313.not = icmp eq i64 %indvars.iv.next311, %wide.trip.count
  br i1 %exitcond313.not, label %.thread.thread, label %.preheader233, !llvm.loop !173

bb.ar:                                            ; preds = %.thread
  %i.nn = load i16, ptr %i.am, align 8, !tbaa !76
  store i16 18761, ptr %i.am, align 8, !tbaa !76
  %i.no = icmp ugt i16 %i.cx, 20000
  br i1 %i.no, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.dd, ptr %i.aq, align 8, !tbaa !195
  %i.np = lshr i32 %i.cy, 1
  store i32 %i.np, ptr %i.ar, align 8, !tbaa !196
  %i.nq = load ptr, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !79
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.nt = load ptr, ptr %i.ns, align 8
  %i.nu = call noundef i32 %i.nt(ptr noundef nonnull align 8 dereferenceable(8) %i.nq, ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 1), !call_target !89 ; 0 uses
  %i.nv = call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a) ; 4 uses
  %i.nw = call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.as) ; 2 uses
  %i.nx = call noundef i32 @_ZN6LibRaw5sget4EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.at)
  %i.ny = icmp eq i32 %i.nx, 1398035031           ; 2 uses
  %i.nz = icmp ne i16 %i.nw, 0                    ; 2 uses
  %i.oa = add i16 %i.nv, -10000
  %i.ob = icmp ult i16 %i.oa, -9999
  %or.cond4.not.i = or i1 %i.ob, %i.nz
  br i1 %or.cond4.not.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 1, ptr %i.an, align 4, !tbaa !74
  br label %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit

bb.au:                                            ; preds = %bb.as
  %i.oc = icmp ult i16 %i.nv, 10001
  %or.cond6.i = or i1 %i.oc, %i.nz
  br i1 %or.cond6.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i32 2, ptr %i.an, align 4, !tbaa !74
  store i16 %i.nv, ptr %i.au, align 8, !tbaa !75
  br label %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit

bb.aw:                                            ; preds = %bb.au
  %.not.i = icmp eq i16 %i.nv, 0
  br i1 %.not.i, label %bb.ax, label %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit

bb.ax:                                            ; preds = %bb.aw
  %spec.select.i = select i1 %i.ny, i32 4, i32 3
  store i32 %spec.select.i, ptr %i.an, align 4, !tbaa !74
  store i16 %i.nw, ptr %i.au, align 8, !tbaa !75
  %i.od = select i1 %i.ny, i64 -8, i64 -12
  br label %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit

_ZN6LibRaw23guess_RAFDataGenerationEPh.exit:      ; preds = %bb.at, %bb.av, %bb.aw, %bb.ax
  %.1.i = phi i64 [ -16, %bb.at ], [ -16, %bb.aw ], [ %i.od, %bb.ax ], [ -12, %bb.av ]
  %i.oe = load ptr, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !79
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %i.oh = load ptr, ptr %i.og, align 8
  %i.oi = call noundef i32 %i.oh(ptr noundef nonnull align 8 dereferenceable(8) %i.oe, i64 noundef %.1.i, i32 noundef 1), !call_target !113 ; 0 uses
  %i.oj = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.oj, ptr %i.av, align 4, !tbaa !97
  %i.ok = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.ok, ptr %i.bp, align 8, !tbaa !97
  %i.ol = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.ol, ptr %i.bq, align 4, !tbaa !97
  %i.om = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.om, ptr %i.br, align 8, !tbaa !97
  %i.on = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.on, ptr %i.bs, align 4, !tbaa !97
  %i.oo = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.oo, ptr %i.bt, align 8, !tbaa !97
  %i.op = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.op, ptr %i.bu, align 4, !tbaa !97
  %i.oq = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.oq, ptr %i.bv, align 8, !tbaa !97
  %i.or = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.or, ptr %i.bw, align 4, !tbaa !97
  %i.os = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.os, ptr %i.bx, align 8, !tbaa !97
  %i.ot = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.ot, ptr %i.by, align 4, !tbaa !97
  %i.ou = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.ou, ptr %i.bz, align 8, !tbaa !97
  %i.ov = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.ov, ptr %i.ca, align 4, !tbaa !97
  %i.ow = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.ow, ptr %i.cb, align 8, !tbaa !97
  %i.ox = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.ox, ptr %i.cc, align 4, !tbaa !97
  %i.oy = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.oy, ptr %i.cd, align 8, !tbaa !97
  %i.oz = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.oz, ptr %i.ce, align 4, !tbaa !97
  %i.pa = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pa, ptr %i.cf, align 8, !tbaa !97
  %i.pb = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pb, ptr %i.cg, align 4, !tbaa !97
  %i.pc = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pc, ptr %i.ch, align 8, !tbaa !97
  %i.pd = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pd, ptr %i.ci, align 4, !tbaa !97
  %i.pe = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pe, ptr %i.cj, align 8, !tbaa !97
  %i.pf = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pf, ptr %i.ck, align 4, !tbaa !97
  %i.pg = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pg, ptr %i.cl, align 8, !tbaa !97
  %i.ph = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.ph, ptr %i.cm, align 4, !tbaa !97
  %i.pi = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pi, ptr %i.cn, align 8, !tbaa !97
  %i.pj = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pj, ptr %i.co, align 4, !tbaa !97
  %i.pk = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pk, ptr %i.cp, align 8, !tbaa !97
  %i.pl = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pl, ptr %i.cq, align 4, !tbaa !97
  %i.pm = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pm, ptr %i.cr, align 8, !tbaa !97
  %i.pn = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pn, ptr %i.cs, align 4, !tbaa !97
  %i.po = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.po, ptr %i.ct, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit346

bb.ay:                                            ; preds = %bb.ar
  %i.pp = icmp eq i16 %i.cx, 4096
  br i1 %i.pp, label %bb.az, label %.loopexit346

bb.az:                                            ; preds = %bb.ay
  store i32 4096, ptr %i.an, align 4, !tbaa !74
  %i.pq = load ptr, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  %i.pr = add nsw i64 %i.dd, 512
  %i.ps = load ptr, ptr %i.pq, align 8, !tbaa !79
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 32
  %i.pu = load ptr, ptr %i.pt, align 8
  %i.pv = call noundef i32 %i.pu(ptr noundef nonnull align 8 dereferenceable(8) %i.pq, i64 noundef %i.pr, i32 noundef 0), !call_target !113 ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.loopexit235
  %.0183266 = phi i32 [ 0, %bb.az ], [ %i.sa, %.loopexit235 ]
  %.0184265 = phi i32 [ 0, %bb.az ], [ %.1, %.loopexit235 ] ; 4 uses
  %i.pw = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.px = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.py = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.pz = shl i32 %i.py, 1                        ; 2 uses
  %i.qa = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.qb = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.qc = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.qd = shl i32 %i.qc, 1                        ; 2 uses
  %i.qe = icmp ne i32 %i.px, 0
  %i.qf = icmp slt i32 %.0184265, 64
  %or.cond19 = select i1 %i.qe, i1 %i.qf, i1 false
  br i1 %or.cond19, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.qg = insertelement <4 x i32> poison, i32 %i.px, i64 0
  %i.qh = insertelement <4 x i32> %i.qg, i32 %i.pz, i64 1
  %i.qi = insertelement <4 x i32> %i.qh, i32 %i.qa, i64 2
  %i.qj = insertelement <4 x i32> %i.qi, i32 %i.qd, i64 3
  %i.qk = sitofp reassoc nsz arcp contract afn <4 x i32> %i.qj to <4 x float>
  %i.ql = sext i32 %.0184265 to i64
  %i.qm = getelementptr inbounds [20 x i8], ptr %i.ao, i64 %i.ql ; 2 uses
  store <4 x float> %i.qk, ptr %i.qm, align 4, !tbaa !98
  %i.qn = sitofp reassoc nsz arcp contract afn i32 %i.qb to float
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  store float %i.qn, ptr %i.qo, align 4, !tbaa !98
  %i.qp = add nsw i32 %.0184265, 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1 = phi i32 [ %i.qp, %bb.bb ], [ %.0184265, %bb.ba ]
  %.not219 = icmp eq i32 %i.pw, 70
  br i1 %.not219, label %.loopexit235, label %.preheader236

.preheader236:                                    ; preds = %bb.bc
  %i.qq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list2E, i64 8), align 8, !tbaa !103 ; 3 uses
  %i.qr = icmp sgt i32 %i.qq, 1
  br i1 %i.qr, label %_ZNK21libraw_static_table_tixEj.exit.lr.ph, label %.loopexit235

_ZNK21libraw_static_table_tixEj.exit.lr.ph:       ; preds = %.preheader236
  %i.qs = load ptr, ptr @_ZN6LibRaw13Fuji_wb_list2E, align 8, !tbaa !104
  %.fr = freeze ptr %i.qs                         ; 6 uses
  br label %_ZNK21libraw_static_table_tixEj.exit

_ZNK21libraw_static_table_tixEj.exit:             ; preds = %_ZNK21libraw_static_table_tixEj.exit.lr.ph, %bb.bm
  %indvars.iv292 = phi i64 [ 1, %_ZNK21libraw_static_table_tixEj.exit.lr.ph ], [ %indvars.iv.next293, %bb.bm ] ; 3 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %indvars.iv292
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !97
  %i.qv = icmp eq i32 %i.qu, %i.pw
  br i1 %i.qv, label %.preheader234.split.preheader, label %bb.bm

.preheader234.split.preheader:                    ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %i.qw = trunc nuw nsw i64 %indvars.iv292 to i32
  %i.qx = add nsw i32 %i.qw, -1                   ; 5 uses
  %i.qy = zext i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %i.qy ; 4 uses
  %i.ra = icmp ult i32 %i.qx, %i.qq
  %spec.select = select i1 %i.ra, ptr %i.qz, ptr %.fr
  %.0.i226 = load i32, ptr %spec.select, align 4, !tbaa !97
  %i.rb = sext i32 %.0.i226 to i64
  %i.rc = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.rb
  store i32 %i.pz, ptr %i.rc, align 8, !tbaa !97
  %i.rd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list2E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.re = icmp ult i32 %i.qx, %i.rd
  br i1 %i.re, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %.preheader234.split.preheader
  %.not.i224.1 = icmp eq i32 %i.rd, 0
  br i1 %.not.i224.1, label %_ZNK21libraw_static_table_tixEj.exit227.1, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.rf = load i32, ptr %.fr, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit227.1

bb.bf:                                            ; preds = %.preheader234.split.preheader
  %i.rg = load i32, ptr %i.qz, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit227.1

_ZNK21libraw_static_table_tixEj.exit227.1:        ; preds = %bb.bf, %bb.be, %bb.bd
  %.0.i226.1 = phi i32 [ %i.rg, %bb.bf ], [ %i.rf, %bb.be ], [ 0, %bb.bd ]
  %i.rh = sext i32 %.0.i226.1 to i64
  %i.ri = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.rh
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 4
  store i32 %i.qa, ptr %i.rj, align 4, !tbaa !97
  %i.rk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list2E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.rl = icmp ult i32 %i.qx, %i.rk
  br i1 %i.rl, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit227.1
  %.not.i224.2 = icmp eq i32 %i.rk, 0
  br i1 %.not.i224.2, label %_ZNK21libraw_static_table_tixEj.exit227.2, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.rm = load i32, ptr %.fr, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit227.2

bb.bi:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit227.1
  %i.rn = load i32, ptr %i.qz, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit227.2

_ZNK21libraw_static_table_tixEj.exit227.2:        ; preds = %bb.bi, %bb.bh, %bb.bg
  %.0.i226.2 = phi i32 [ %i.rn, %bb.bi ], [ %i.rm, %bb.bh ], [ 0, %bb.bg ]
  %i.ro = sext i32 %.0.i226.2 to i64
  %i.rp = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.ro
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  store i32 %i.qd, ptr %i.rq, align 8, !tbaa !97
  %i.rr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list2E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.rs = icmp ult i32 %i.qx, %i.rr
  br i1 %i.rs, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit227.2
  %.not.i224.3 = icmp eq i32 %i.rr, 0
  br i1 %.not.i224.3, label %_ZNK21libraw_static_table_tixEj.exit227.3, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rt = load i32, ptr %.fr, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit227.3

bb.bl:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit227.2
  %i.ru = load i32, ptr %i.qz, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit227.3

_ZNK21libraw_static_table_tixEj.exit227.3:        ; preds = %bb.bl, %bb.bk, %bb.bj
  %.0.i226.3 = phi i32 [ %i.ru, %bb.bl ], [ %i.rt, %bb.bk ], [ 0, %bb.bj ]
  %i.rv = sext i32 %.0.i226.3 to i64
  %i.rw = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 12
  store i32 %i.qb, ptr %i.rx, align 4, !tbaa !97
  br label %.loopexit235

bb.bm:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 2 ; 2 uses
  %i.ry = trunc nuw i64 %indvars.iv.next293 to i32
  %i.rz = icmp sgt i32 %i.qq, %i.ry
  br i1 %i.rz, label %_ZNK21libraw_static_table_tixEj.exit, label %.loopexit235, !llvm.loop !174

.loopexit235:                                     ; preds = %bb.bm, %_ZNK21libraw_static_table_tixEj.exit227.3, %.preheader236, %bb.bc
  %i.sa = add nuw nsw i32 %.0183266, 1            ; 2 uses
  %exitcond303.not = icmp eq i32 %i.sa, 42
  br i1 %exitcond303.not, label %.loopexit346, label %bb.ba, !llvm.loop !175

.loopexit346:                                     ; preds = %.loopexit235, %bb.ay, %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit
  store i16 %i.nn, ptr %i.am, align 8, !tbaa !76
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.aa, %bb.aq, %.preheader250.preheader, %.preheader248.preheader, %.loopexit243.loopexit279, %bb.ae, %.preheader241.9, %bb.ao, %bb.ac, %bb.x, %bb.ag, %bb.ak, %bb.al, %bb.ai, %bb.s, %bb.u, %bb.v, %bb.t, %bb.r, %bb.n, %bb.y, %bb.am, %bb.p, %bb.l, %.thread, %bb.an, %.loopexit239, %.loopexit346
  %.1193230 = phi i16 [ %.0192275, %.thread ], [ %.0192275, %bb.ao ], [ %.0192275, %bb.ac ], [ %.0192275, %bb.an ], [ %.0192275, %.loopexit239 ], [ %.0192275, %.loopexit346 ], [ 1, %bb.l ], [ 1, %bb.n ], [ 1, %bb.p ], [ 1, %bb.s ], [ %.0192275, %bb.ag ], [ %.0192275, %bb.y ], [ %.0192275, %bb.x ], [ %.0192275, %bb.am ], [ 1, %bb.r ], [ 1, %bb.t ], [ 1, %bb.v ], [ 1, %bb.u ], [ %.0192275, %bb.ai ], [ %.0192275, %bb.al ], [ %.0192275, %bb.ak ], [ %.0192275, %.preheader241.9 ], [ %.0192275, %bb.aq ], [ %.0192275, %bb.ae ], [ %.0192275, %.loopexit243.loopexit279 ], [ %.0192275, %.preheader248.preheader ], [ %.0192275, %.preheader250.preheader ], [ %.0192275, %bb.aa ]
  %i.sb = load ptr, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  %i.sc = zext i16 %i.cx to i64
  %i.sd = add nsw i64 %i.dd, %i.sc
  %i.se = load ptr, ptr %i.sb, align 8, !tbaa !79
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 32
  %i.sg = load ptr, ptr %i.sf, align 8
  %i.sh = call noundef i32 %i.sg(ptr noundef nonnull align 8 dereferenceable(8) %i.sb, i64 noundef %i.sd, i32 noundef 0), !call_target !113 ; 0 uses
  %.not215 = icmp eq i32 %i.cu, 0
  br i1 %.not215, label %._crit_edge, label %bb.k, !llvm.loop !176

._crit_edge:                                      ; preds = %.thread.thread, %bb.j
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 2948
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !74
  %.not216 = icmp eq i32 %i.sj, 0
  br i1 %.not216, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %._crit_edge
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 381828
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !191 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.sn = load i16, ptr %i.sm, align 4, !tbaa !186
  %i.so = zext i16 %i.sn to i32
  %i.sp = shl i32 %i.so, %i.sl
  %i.sq = trunc i32 %i.sp to i16
  store i16 %i.sq, ptr %i.sm, align 4, !tbaa !186
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !187
  %i.st = zext i16 %i.ss to i32
  %i.su = lshr i32 %i.st, %i.sl
  %i.sv = trunc nuw i32 %i.su to i16
  store i16 %i.sv, ptr %i.sr, align 2, !tbaa !187
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge, %bb.bn, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #8

declare void @_ZN16checked_buffer_tC2Esi(ptr noundef nonnull align 8 dereferenceable(48), i16 noundef signext, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i32> @llvm.masked.load.v3i32.p0(ptr captures(none), <3 x i1>, <3 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v3i32.p0(<3 x i32>, ptr captures(none), <3 x i1>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
end_hunk_2
