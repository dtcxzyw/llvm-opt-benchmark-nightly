inline.NumInlined: 117
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN10duckdb_lz4L20LZ4_compress_genericEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi:bb.a
  br label %bb.ac

bb.x:                                             ; preds = %bb.t
  br i1 %i.ac, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cx = icmp ult i32 %.0.i520.i, %i.g
  %i.cy = zext i32 %.0.i520.i to i64              ; 2 uses
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.cy
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cy
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.db = zext i32 %.0.i520.i to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.db
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.w, %bb.v
  %.4465.i = phi ptr [ %i.ct, %bb.v ], [ %i.cw, %bb.w ], [ %i.cz, %bb.z ], [ %i.da, %bb.aa ], [ %i.dc, %bb.ab ] ; 4 uses
  %.0441.i = phi i32 [ %i.cu, %bb.v ], [ %.0.i520.i, %bb.w ], [ %.0.i520.i, %bb.z ], [ %.0.i520.i, %bb.aa ], [ %.0.i520.i, %bb.ab ] ; 3 uses
  %.2402.i = phi ptr [ %i.n, %bb.v ], [ %1, %bb.w ], [ %i.n, %bb.z ], [ %1, %bb.aa ], [ %.1401.i, %bb.ab ] ; 4 uses
  br i1 %i.an, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val.i523.i = load i64, ptr %i.cl, align 1, !tbaa !7
  %i.dd = mul i64 %.val.i523.i, -3523014627271114752
  %i.de = lshr i64 %i.dd, 52
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ce
  store i32 %i.cd, ptr %i.dg, align 4, !tbaa !3
  br label %_ZN10duckdb_lz4L18LZ4_putIndexOnHashEjjPvNS_11tableType_tE.exit.i

bb.ae:                                            ; preds = %bb.ac
  %.val6.i525.i = load i32, ptr %i.cl, align 1, !tbaa !7
  %i.dh = mul i32 %.val6.i525.i, -1640531535
  %i.di = lshr i32 %i.dh, 19
  %i.dj = trunc i64 %i.cc to i16
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ce
  store i16 %i.dj, ptr %i.dk, align 2, !tbaa !17
  br label %_ZN10duckdb_lz4L18LZ4_putIndexOnHashEjjPvNS_11tableType_tE.exit.i

_ZN10duckdb_lz4L18LZ4_putIndexOnHashEjjPvNS_11tableType_tE.exit.i: ; preds = %bb.ae, %bb.ad
  %.0.i524621.i = phi i32 [ %i.df, %bb.ad ], [ %i.di, %bb.ae ]
  %i.dl = icmp ult i32 %.0441.i, %i.af
  %or.cond512.i = select i1 %.not502.i, i1 %i.dl, i1 false
  br i1 %or.cond512.i, label %.backedge, label %bb.af

bb.af:                                            ; preds = %_ZN10duckdb_lz4L18LZ4_putIndexOnHashEjjPvNS_11tableType_tE.exit.i
  %i.dm = add i32 %.0441.i, 65535
  %i.dn = icmp ult i32 %i.dm, %i.cd
  %or.cond514.i = select i1 %.not503.i, i1 %i.dn, i1 false
  br i1 %or.cond514.i, label %.backedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.4465.val.i = load i32, ptr %.4465.i, align 1, !tbaa !7
  %.0460.val.i = load i32, ptr %.0460.i, align 1, !tbaa !7
  %i.do = icmp eq i32 %.4465.val.i, %.0460.val.i
  br i1 %i.do, label %bb.ah, label %.backedge

.backedge:                                        ; preds = %bb.ag, %bb.af, %_ZN10duckdb_lz4L18LZ4_putIndexOnHashEjjPvNS_11tableType_tE.exit.i
  br label %bb.q, !llvm.loop !20

bb.ah:                                            ; preds = %bb.ag
  %i.dp = sub i32 %i.cd, %.0441.i
  %spec.select.i = select i1 %.not616.i, i32 %.0431.i, i32 %i.dp
  %i.dq = trunc i64 %.0410844.i to i32
  %i.dr = trunc i64 %i.cb to i32
  %reass.sub.i = sub i32 %i.dr, %i.dq             ; 3 uses
  %i.ds = add i32 %reass.sub.i, 239               ; 3 uses
  %i.dt = add i32 %reass.sub.i, -15               ; 2 uses
  %i.du = add i32 %reass.sub.i, -270              ; 2 uses
  %i.dv = icmp ugt ptr %.0460.i, %.0410.i
  %i.dw = icmp ugt ptr %.4465.i, %.2402.i
  %i.dx = and i1 %i.dw, %i.dv
  br i1 %i.dx, label %.lr.ph, label %.critedge10.i

bb.ai:                                            ; preds = %.lr.ph
  %indvar.next.i = add i32 %indvar.i276, 1        ; 2 uses
  %indvars.iv.next.i = add i32 %indvars.iv.i275, -1 ; 2 uses
  %indvars.iv.next848.i = add i32 %indvars.iv847.i274, -1 ; 2 uses
  %indvars.iv.next852.i = add i32 %indvars.iv851.i273, -1 ; 2 uses
  %i.dy = icmp ugt ptr %i.eb, %.0410.i
  %i.dz = icmp ugt ptr %i.ed, %.2402.i
  %i.ea = and i1 %i.dz, %i.dy
  br i1 %i.ea, label %.lr.ph, label %.critedge10.i, !llvm.loop !22

.lr.ph:                                           ; preds = %bb.ah, %bb.ai
  %.2394.i278 = phi ptr [ %i.eb, %bb.ai ], [ %.0460.i, %bb.ah ] ; 2 uses
  %.7468.i277 = phi ptr [ %i.ed, %bb.ai ], [ %.4465.i, %bb.ah ] ; 2 uses
  %indvar.i276 = phi i32 [ %indvar.next.i, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %indvars.iv.i275 = phi i32 [ %indvars.iv.next.i, %bb.ai ], [ %i.ds, %bb.ah ] ; 2 uses
  %indvars.iv847.i274 = phi i32 [ %indvars.iv.next848.i, %bb.ai ], [ %i.dt, %bb.ah ] ; 2 uses
  %indvars.iv851.i273 = phi i32 [ %indvars.iv.next852.i, %bb.ai ], [ %i.du, %bb.ah ] ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %.2394.i278, i64 -1 ; 4 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !7
  %i.ed = getelementptr inbounds i8, ptr %.7468.i277, i64 -1 ; 4 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !7
  %i.ef = icmp eq i8 %i.ec, %i.ee
  br i1 %i.ef, label %bb.ai, label %..critedge10.i_crit_edge, !llvm.loop !22

..critedge10.i_crit_edge:                         ; preds = %.lr.ph
  br label %.critedge10.i, !llvm.loop !22

.critedge10.i:                                    ; preds = %bb.ai, %..critedge10.i_crit_edge, %bb.ah
  %indvars.iv851.i.lcssa = phi i32 [ %indvars.iv851.i273, %..critedge10.i_crit_edge ], [ %i.du, %bb.ah ], [ %indvars.iv.next852.i, %bb.ai ]
  %indvars.iv847.i.lcssa = phi i32 [ %indvars.iv847.i274, %..critedge10.i_crit_edge ], [ %i.dt, %bb.ah ], [ %indvars.iv.next848.i, %bb.ai ]
  %indvars.iv.i.lcssa = phi i32 [ %indvars.iv.i275, %..critedge10.i_crit_edge ], [ %i.ds, %bb.ah ], [ %indvars.iv.next.i, %bb.ai ]
  %indvar.i.lcssa = phi i32 [ %indvar.i276, %..critedge10.i_crit_edge ], [ 0, %bb.ah ], [ %indvar.next.i, %bb.ai ]
  %.7468.i.lcssa = phi ptr [ %.7468.i277, %..critedge10.i_crit_edge ], [ %.4465.i, %bb.ah ], [ %i.ed, %bb.ai ]
  %.2394.i.lcssa = phi ptr [ %.2394.i278, %..critedge10.i_crit_edge ], [ %.0460.i, %bb.ah ], [ %i.eb, %bb.ai ] ; 2 uses
  %i.eg = ptrtoint ptr %.2394.i.lcssa to i64
  %i.eh = sub i64 %i.eg, %.0410844.i              ; 5 uses
  %i.ei = trunc i64 %i.eh to i32                  ; 4 uses
  %i.ej = getelementptr i8, ptr %.0414.i, i64 1   ; 5 uses
  br i1 %i.bu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.critedge10.i
  %i.ek = and i64 %i.eh, 4294967295
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = udiv i32 %i.ei, 255
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eo
  %i.eq = icmp ugt ptr %i.ep, %i.ak
  br i1 %i.eq, label %_ZN10duckdb_lz4L30LZ4_compress_generic_validatedEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi.exit, label %.thread650.i, !prof !19

bb.ak:                                            ; preds = %.critedge10.i
  br i1 %i.al, label %bb.al, label %.thread650.i

bb.al:                                            ; preds = %bb.ak
  %i.er = add i32 %i.ei, 240
  %i.es = udiv i32 %i.er, 255
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.et
  %i.ev = and i64 %i.eh, 4294967295
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 11
  %i.ey = icmp ugt ptr %i.ex, %i.ak
  br i1 %i.ey, label %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.thread.thread.i, label %.thread650.i, !prof !19

.thread650.i:                                     ; preds = %bb.al, %bb.ak, %bb.aj
  %i.ez = icmp ugt i32 %i.ei, 14
  br i1 %i.ez, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.thread650.i
  %i.fa = add i32 %i.ei, -15                      ; 3 uses
  store i8 -16, ptr %.0414.i, align 1, !tbaa !7
  %i.fb = icmp sgt i32 %i.fa, 254
  br i1 %i.fb, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.am
  %i.fc = tail call i32 @llvm.umin.i32(i32 %i.fa, i32 509)
  %i.fd = add i32 %indvar.i.lcssa, %i.fc
  %i.fe = sub i32 %i.ds, %i.fd
  %i.ff = udiv i32 %i.fe, 255
  %narrow885.i = add nuw nsw i32 %i.ff, 1
  %i.fg = zext nneg i32 %narrow885.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ej, i8 -1, i64 %i.fg, i1 false), !tbaa !7
  %scevgep.i = getelementptr i8, ptr %.0414.i, i64 2
  %smin849.i = tail call i32 @llvm.smin.i32(i32 %indvars.iv847.i.lcssa, i32 509)
  %i.fh = sub i32 %indvars.iv.i.lcssa, %smin849.i
  %.fr.i = freeze i32 %i.fh                       ; 3 uses
  %i.fi = udiv i32 %.fr.i, 255
  %i.fj = zext nneg i32 %i.fi to i64
  %scevgep850.i = getelementptr i8, ptr %scevgep.i, i64 %i.fj
  %i.fk = urem i32 %.fr.i, 255
  %.neg.i = sub i32 %indvars.iv851.i.lcssa, %.fr.i
  %i.fl = add i32 %.neg.i, %i.fk
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.am
  %.0430.lcssa.i = phi i32 [ %i.fa, %bb.am ], [ %i.fl, %.lr.ph.preheader.i ]
  %.1415.lcssa.i = phi ptr [ %i.ej, %bb.am ], [ %scevgep850.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.fm = trunc i32 %.0430.lcssa.i to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %.1415.lcssa.i, i64 1
  store i8 %i.fm, ptr %.1415.lcssa.i, align 1, !tbaa !7
  br label %bb.ao

bb.an:                                            ; preds = %.thread650.i
  %.tr.i = trunc i64 %i.eh to i8
  %i.fo = shl nuw i8 %.tr.i, 4
  store i8 %i.fo, ptr %.0414.i, align 1, !tbaa !7
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge.i
  %.2416.i = phi ptr [ %i.fn, %._crit_edge.i ], [ %i.ej, %bb.an ] ; 5 uses
  %i.fp = and i64 %i.eh, 4294967295               ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.2416.i, i64 %i.fp ; 3 uses
  %i.fr = tail call i64 @llvm.umax.i64(i64 %i.fp, i64 8)
  %i.fs = add nsw i64 %i.fr, -1
  %i.ft = lshr i64 %i.fs, 3
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.fp, 25
  %.2416.i291 = ptrtoaddr ptr %.2416.i to i64
  %i.fv = sub i64 %.2416.i291, %.0410844.i
  %diff.check = icmp ult i64 %i.fv, 32
  %or.cond296 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond296, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ao
  %n.vec = and i64 %i.fu, 4611686018427387900     ; 3 uses
  %i.fw = shl i64 %n.vec, 3                       ; 2 uses
  %i.fx = getelementptr i8, ptr %.0410.i, i64 %i.fw
  %i.fy = getelementptr i8, ptr %.2416.i, i64 %i.fw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0410.i, i64 %i.fz ; 2 uses
  %next.gep293 = getelementptr i8, ptr %.2416.i, i64 %i.fz ; 2 uses
  %i.ga = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %wide.load294 = load <2 x i64>, ptr %i.ga, align 1
  %i.gb = getelementptr i8, ptr %next.gep293, i64 16
  store <2 x i64> %wide.load, ptr %next.gep293, align 1
  store <2 x i64> %wide.load294, ptr %i.gb, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fu, %n.vec
  br i1 %cmp.n, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.preheader.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.ao, %middle.block
  %.09.i.i.ph = phi ptr [ %.0410.i, %bb.ao ], [ %i.fx, %middle.block ]
  %.0.i527.i.ph = phi ptr [ %.2416.i, %bb.ao ], [ %i.fy, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi ptr [ %i.gf, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.i527.i = phi ptr [ %i.ge, %scalar.ph ], [ %.0.i527.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gd = load i64, ptr %.09.i.i, align 1
  store i64 %i.gd, ptr %.0.i527.i, align 1
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.i527.i, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.gg = icmp ult ptr %i.ge, %i.fq
  br i1 %i.gg, label %scalar.ph, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.preheader.i, !llvm.loop !26

_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.preheader.i: ; preds = %scalar.ph, %middle.block
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 11
  %i.gi = icmp ugt ptr %i.gh, %i.ak
  %or.cond516773.i = select i1 %i.al, i1 %i.gi, i1 false
  br i1 %or.cond516773.i, label %_ZN10duckdb_lz4L16LZ4_hashPositionEPKvNS_11tableType_tE.exit612.thread.thread.i, label %.lr.ph784.i

.lr.ph784.i:                                      ; preds = %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.preheader.i, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.i
  %.3395781.i = phi ptr [ %.6398.i, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.i ], [ %.2394.i.lcssa, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.preheader.i ] ; 8 uses
  %.5405779.i = phi ptr [ %.6406.i, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.i ], [ %.2402.i, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.preheader.i ] ; 2 uses
  %.4418777.i = phi ptr [ %i.pl, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.i ], [ %i.fq, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.preheader.i ] ; 5 uses
  %.5436776.i = phi i32 [ %spec.select519.i, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.i ], [ %spec.select.i, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.preheader.i ] ; 3 uses
  %.8469775.i = phi ptr [ %.9470.i, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.i ], [ %.7468.i.lcssa, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.preheader.i ] ; 6 uses
  %.0476774.i = phi ptr [ %.8422.ph.i, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.i ], [ %.0414.i, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit.preheader.i ] ; 3 uses
  br i1 %.not616.i, label %.thread654.i, label %bb.ap

.thread654.i:                                     ; preds = %.lr.ph784.i
  %i.gj = ptrtoint ptr %.3395781.i to i64
  %i.gk = ptrtoint ptr %.8469775.i to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = trunc i64 %i.gl to i16
  store i16 %i.gm, ptr %.4418777.i, align 1, !tbaa !7
  %.5419655.i = getelementptr inbounds nuw i8, ptr %.4418777.i, i64 2
  br label %bb.bq

bb.ap:                                            ; preds = %.lr.ph784.i
  %i.gn = trunc i32 %.5436776.i to i16
  store i16 %i.gn, ptr %.4418777.i, align 1, !tbaa !7
  %.5419.i = getelementptr inbounds nuw i8, ptr %.4418777.i, i64 2 ; 3 uses
  %i.go = icmp eq ptr %.5405779.i, %i.n
  br i1 %i.go, label %bb.aq, label %bb.bq

bb.aq:                                            ; preds = %bb.ap
  %i.gp = ptrtoint ptr %.8469775.i to i64
  %i.gq = sub i64 %i.bv, %i.gp
  %i.gr = getelementptr inbounds i8, ptr %.3395781.i, i64 %i.gq ; 2 uses
  %i.gs = icmp ugt ptr %i.gr, %i.ai
  %spec.select518.i = select i1 %i.gs, ptr %i.ai, ptr %i.gr ; 11 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.3395781.i, i64 4 ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.8469775.i, i64 4 ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %spec.select518.i, i64 -7 ; 3 uses
  %i.gw = icmp ult ptr %i.gt, %i.gv
  br i1 %i.gw, label %bb.ar, label %bb.at, !prof !27

bb.ar:                                            ; preds = %bb.aq
  %.val60.i.i = load i64, ptr %i.gu, align 1, !tbaa !7 ; 2 uses
  %.val.i528.i = load i64, ptr %i.gt, align 1, !tbaa !7 ; 2 uses
  %.not.i529.i = icmp eq i64 %.val60.i.i, %.val.i528.i
  br i1 %.not.i529.i, label %.thread.i.i, label %bb.as

.thread.i.i:                                      ; preds = %bb.ar
  %i.gx = getelementptr inbounds nuw i8, ptr %.3395781.i, i64 12
  %i.gy = getelementptr inbounds nuw i8, ptr %.8469775.i, i64 12
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gz = xor i64 %.val.i528.i, %.val60.i.i       ; 2 uses
  %i.ha = add i64 %i.gz, 144115188075855871
  %i.hb = xor i64 %i.ha, %i.gz
  %i.hc = and i64 %i.hb, 72340172838076672
  %i.hd = mul i64 %i.hc, 72340172838076673
  %i.he = lshr i64 %i.hd, 56
  br label %_ZN10duckdb_lz4L9LZ4_countEPKhS1_S1_.exit.i

bb.at:                                            ; preds = %.thread.i.i, %bb.aq
  %.150.i.i = phi ptr [ %i.gy, %.thread.i.i ], [ %i.gu, %bb.aq ] ; 2 uses
  %.145.i.i = phi ptr [ %i.gx, %.thread.i.i ], [ %i.gt, %bb.aq ] ; 3 uses
  %i.hf = icmp ult ptr %.145.i.i, %i.gv
  br i1 %i.hf, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !28

.lr.ph.i.i:                                       ; preds = %bb.at, %bb.au
  %.24673.i.i = phi ptr [ %i.hq, %bb.au ], [ %.145.i.i, %bb.at ] ; 3 uses
  %.25172.i.i = phi ptr [ %i.hr, %bb.au ], [ %.150.i.i, %bb.at ] ; 2 uses
  %.251.val.i.i = load i64, ptr %.25172.i.i, align 1, !tbaa !7 ; 2 uses
  %.246.val.i.i = load i64, ptr %.24673.i.i, align 1, !tbaa !7 ; 2 uses
  %.not59.i.i = icmp eq i64 %.251.val.i.i, %.246.val.i.i
  br i1 %.not59.i.i, label %bb.au, label %.thread66.i.i

.thread66.i.i:                                    ; preds = %.lr.ph.i.i
  %i.hg = xor i64 %.246.val.i.i, %.251.val.i.i    ; 2 uses
  %i.hh = add i64 %i.hg, 144115188075855871
  %i.hi = xor i64 %i.hh, %i.hg
  %i.hj = and i64 %i.hi, 72340172838076672
  %i.hk = mul i64 %i.hj, 72340172838076673
  %i.hl = lshr i64 %i.hk, 56
  %i.hm = getelementptr inbounds nuw i8, ptr %.24673.i.i, i64 %i.hl
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.gt to i64
  %i.hp = sub i64 %i.hn, %i.ho
  br label %_ZN10duckdb_lz4L9LZ4_countEPKhS1_S1_.exit.i

bb.au:                                            ; preds = %.lr.ph.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %.24673.i.i, i64 8 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.25172.i.i, i64 8 ; 2 uses
  %i.hs = icmp ult ptr %i.hq, %i.gv
  br i1 %i.hs, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !29

._crit_edge.i.i:                                  ; preds = %bb.au, %bb.at
  %.251.lcssa.i.i = phi ptr [ %.150.i.i, %bb.at ], [ %i.hr, %bb.au ] ; 4 uses
  %.246.lcssa.i.i = phi ptr [ %.145.i.i, %bb.at ], [ %i.hq, %bb.au ] ; 5 uses
  %i.ht = getelementptr inbounds i8, ptr %spec.select518.i, i64 -3
  %i.hu = icmp ult ptr %.246.lcssa.i.i, %i.ht
  br i1 %i.hu, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %._crit_edge.i.i
  %.251.val62.i.i = load i32, ptr %.251.lcssa.i.i, align 1, !tbaa !7
  %.246.val61.i.i = load i32, ptr %.246.lcssa.i.i, align 1, !tbaa !7
  %i.hv = icmp eq i32 %.251.val62.i.i, %.246.val61.i.i
  br i1 %i.hv, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hw = getelementptr inbounds nuw i8, ptr %.246.lcssa.i.i, i64 4
  %i.hx = getelementptr inbounds nuw i8, ptr %.251.lcssa.i.i, i64 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %._crit_edge.i.i
  %.453.i.i = phi ptr [ %i.hx, %bb.aw ], [ %.251.lcssa.i.i, %bb.av ], [ %.251.lcssa.i.i, %._crit_edge.i.i ] ; 4 uses
  %.448.i.i = phi ptr [ %i.hw, %bb.aw ], [ %.246.lcssa.i.i, %bb.av ], [ %.246.lcssa.i.i, %._crit_edge.i.i ] ; 5 uses
  %i.hy = getelementptr inbounds i8, ptr %spec.select518.i, i64 -1
  %i.hz = icmp ult ptr %.448.i.i, %i.hy
  br i1 %i.hz, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %.453.val.i.i = load i16, ptr %.453.i.i, align 1, !tbaa !7
  %.448.val.i.i = load i16, ptr %.448.i.i, align 1, !tbaa !7
  %i.ia = icmp eq i16 %.453.val.i.i, %.448.val.i.i
  br i1 %i.ia, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ib = getelementptr inbounds nuw i8, ptr %.448.i.i, i64 2
  %i.ic = getelementptr inbounds nuw i8, ptr %.453.i.i, i64 2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.554.i.i = phi ptr [ %i.ic, %bb.az ], [ %.453.i.i, %bb.ay ], [ %.453.i.i, %bb.ax ]
  %.5.i.i = phi ptr [ %i.ib, %bb.az ], [ %.448.i.i, %bb.ay ], [ %.448.i.i, %bb.ax ] ; 4 uses
  %i.id = icmp ult ptr %.5.i.i, %spec.select518.i
  br i1 %i.id, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ie = load i8, ptr %.554.i.i, align 1, !tbaa !7
  %i.if = load i8, ptr %.5.i.i, align 1, !tbaa !7
  %i.ig = icmp eq i8 %i.ie, %i.if
  %spec.select.idx.i.i = zext i1 %i.ig to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 %spec.select.idx.i.i
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.6.i.i = phi ptr [ %.5.i.i, %bb.ba ], [ %spec.select.i.i, %bb.bb ]
  %i.ih = ptrtoint ptr %.6.i.i to i64
  %i.ii = ptrtoint ptr %i.gt to i64
  %i.ij = sub i64 %i.ih, %i.ii
  br label %_ZN10duckdb_lz4L9LZ4_countEPKhS1_S1_.exit.i

_ZN10duckdb_lz4L9LZ4_countEPKhS1_S1_.exit.i:      ; preds = %bb.bc, %.thread66.i.i, %bb.as
  %.4.in.i.i = phi i64 [ %i.hp, %.thread66.i.i ], [ %i.ij, %bb.bc ], [ %i.he, %bb.as ] ; 2 uses
  %.4.i.i = trunc i64 %.4.in.i.i to i32           ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m:bb.a

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit: ; preds = %bb.k
  %i.ax = icmp eq i64 %i.av, -1
  br i1 %i.ax, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit
  %i.ay = add i64 %i.av, 15                       ; 5 uses
  %i.az = ptrtoint ptr %.0362 to i64
  %i.ba = xor i64 %i.az, -1
  %i.bb = icmp ugt i64 %i.ay, %i.ba
  %i.bc = ptrtoint ptr %i.ar to i64
  %i.bd = xor i64 %i.bc, -1
  %i.be = icmp ugt i64 %i.ay, %i.bd
  %or.cond583 = select i1 %i.bb, i1 true, i1 %i.be, !prof !39
  br i1 %or.cond583, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.m, !prof !39

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.0362, i64 %i.ay ; 4 uses
  %i.bg = icmp ugt ptr %i.bf, %i.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay ; 2 uses
  %i.bi = icmp ugt ptr %i.bh, %i.z
  %or.cond456 = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %or.cond456, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit, label %.preheader602

.preheader602:                                    ; preds = %bb.m, %.preheader602
  %.011.i485 = phi ptr [ %i.bm, %.preheader602 ], [ %i.ar, %bb.m ] ; 3 uses
  %.0.i486 = phi ptr [ %i.bl, %.preheader602 ], [ %.0362, %bb.m ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i486, ptr noundef nonnull align 1 dereferenceable(16) %.011.i485, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i486, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i485, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bj, ptr noundef nonnull align 1 dereferenceable(16) %i.bk, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i486, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.011.i485, i64 32
  %i.bn = icmp ult ptr %i.bl, %i.bf
  br i1 %i.bn, label %.preheader602, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558, !llvm.loop !40

bb.n:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %.0362, i64 %i.am ; 2 uses
  %i.bp = icmp ugt ptr %i.ai, %i.w
  br i1 %i.bp, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0362, ptr noundef nonnull align 1 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am
  br label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558

_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558: ; preds = %.preheader602, %bb.o
  %.2541 = phi ptr [ %i.bq, %bb.o ], [ %i.bh, %.preheader602 ] ; 3 uses
  %.2 = phi ptr [ %i.bo, %bb.o ], [ %i.bf, %.preheader602 ] ; 20 uses
  %.21010 = ptrtoint ptr %.2 to i64
  %.val484 = load i16, ptr %.2541, align 1, !tbaa !7 ; 5 uses
  %i.br = zext i16 %.val484 to i64                ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.2541, i64 2 ; 8 uses
  %i.bt = sub nsw i64 0, %i.br
  %i.bu = getelementptr inbounds i8, ptr %.2, i64 %i.bt ; 12 uses
  %i.bv = and i32 %i.ak, 15                       ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 15
  br i1 %i.bw, label %bb.p, label %bb.t

bb.p:                                             ; preds = %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558
  %.promoted13.i490 = ptrtoint ptr %i.bs to i64
  %i.bx = tail call i64 @llvm.usub.sat.i64(i64 %i.ad, i64 %.promoted13.i490)
  %scevgep.i491 = getelementptr i8, ptr %i.bs, i64 %i.bx
  %i.by = getelementptr inbounds nuw i8, ptr %.2541, i64 3 ; 2 uses
  %exitcond.i493993.not = icmp ugt ptr %i.ac, %i.bs
  br i1 %exitcond.i493993.not, label %.lr.ph996, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !28

bb.q:                                             ; preds = %.lr.ph996
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  %exitcond.i493 = icmp eq ptr %i.ca, %scevgep.i491
  br i1 %exitcond.i493, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.lr.ph996, !prof !37, !llvm.loop !38

.lr.ph996:                                        ; preds = %bb.p, %bb.q
  %i.ca = phi ptr [ %i.bz, %bb.q ], [ %i.by, %bb.p ] ; 7 uses
  %.0.i492994 = phi i64 [ %i.ce, %bb.q ], [ 0, %bb.p ]
  %i.cb = phi ptr [ %i.ca, %bb.q ], [ %i.bs, %bb.p ]
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !7   ; 2 uses
  %i.cd = zext i8 %i.cc to i64
  %i.ce = add i64 %.0.i492994, %i.cd              ; 3 uses
  %i.cf = icmp eq i8 %i.cc, -1
  br i1 %i.cf, label %bb.q, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494: ; preds = %.lr.ph996
  %i.cg = icmp eq i64 %i.ce, -1
  br i1 %i.cg, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494
  %i.ch = add i64 %i.ce, 19                       ; 4 uses
  %i.ci = ptrtoint ptr %.2 to i64
  %i.cj = xor i64 %i.ci, -1
  %i.ck = icmp ugt i64 %i.ch, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 %8
  %i.cm = icmp ult ptr %i.cl, %6
  %or.cond458 = select i1 %i.k, i1 %i.cm, i1 false, !prof !41
  %or.cond480 = select i1 %i.ck, i1 true, i1 %or.cond458, !prof !42
  br i1 %or.cond480, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.s, !prof !42

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %.2, i64 %i.ch
  %.not442 = icmp ult ptr %i.cn, %i.aa
  br i1 %.not442, label %.thread567, label %.loopexit606

bb.t:                                             ; preds = %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread558
  %narrow = add nuw nsw i32 %i.bv, 4
  %i.co = zext nneg i32 %narrow to i64            ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.2, i64 %i.co ; 2 uses
  %.not = icmp ult ptr %i.cp, %i.aa
  br i1 %.not, label %bb.u, label %.loopexit606

bb.u:                                             ; preds = %bb.t
  br i1 %i.ab, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = icmp uge ptr %i.bu, %6
  %i.cr = icmp ugt i16 %.val484, 7
  %or.cond5 = and i1 %i.cr, %i.cq
  br i1 %or.cond5, label %bb.x, label %.thread567

bb.w:                                             ; preds = %bb.u
  %.old4 = icmp ugt i16 %.val484, 7
  br i1 %.old4, label %bb.x, label %.thread567

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.cs = load i64, ptr %i.bu, align 1
  store i64 %i.cs, ptr %.2, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cv = load i64, ptr %i.cu, align 1
  store i64 %i.cv, ptr %i.ct, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cy = load i16, ptr %i.cx, align 1
  store i16 %i.cy, ptr %i.cw, align 1
  br label %.backedge

.backedge:                                        ; preds = %.preheader600, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.ah, %bb.ad, %bb.af, %bb.x
  %.0539.be = phi ptr [ %i.bs, %bb.x ], [ %.3542, %bb.ad ], [ %.3542, %middle.block ], [ %.3542, %bb.ah ], [ %.3542, %bb.af ], [ %.3542, %.lr.ph ], [ %.3542, %vec.epilog.middle.block ], [ %.3542, %.preheader600 ]
  %.0362.be = phi ptr [ %i.cp, %bb.x ], [ %i.dl, %bb.ad ], [ %i.dy, %middle.block ], [ %i.dc, %bb.ah ], [ %i.ek, %bb.af ], [ %i.ei, %.lr.ph ], [ %i.ed, %vec.epilog.middle.block ], [ %i.dc, %.preheader600 ]
  br label %bb.h, !llvm.loop !43

.thread567:                                       ; preds = %bb.s, %bb.v, %bb.w
  %.3542 = phi ptr [ %i.bs, %bb.v ], [ %i.bs, %bb.w ], [ %i.ca, %bb.s ] ; 9 uses
  %.2382 = phi i64 [ %i.co, %bb.v ], [ %i.co, %bb.w ], [ %i.ch, %bb.s ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %8
  %i.da = icmp ult ptr %i.cz, %6
  %or.cond461 = select i1 %i.k, i1 %i.da, i1 false, !prof !41
  br i1 %or.cond461, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.y, !prof !41

bb.y:                                             ; preds = %.thread567
  %i.db = icmp ult ptr %i.bu, %6
  %or.cond462 = select i1 %i.ae, i1 %i.db, i1 false
  %i.dc = getelementptr inbounds nuw i8, ptr %.2, i64 %.2382 ; 5 uses
  br i1 %or.cond462, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.dd = icmp ugt ptr %i.dc, %i.af
  br i1 %i.dd, label %bb.aa, label %bb.ac, !prof !19

bb.aa:                                            ; preds = %bb.z
  br i1 %.not443, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.de = ptrtoint ptr %.2 to i64
  %i.df = sub i64 %i.t, %i.de
  %i.dg = tail call i64 @llvm.umin.i64(i64 %.2382, i64 %i.df)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.3383 = phi i64 [ %i.dg, %bb.ab ], [ %.2382, %bb.z ] ; 7 uses
  %i.dh = ptrtoint ptr %i.bu to i64
  %i.di = sub i64 %i.ag, %i.dh                    ; 6 uses
  %.not444 = icmp ugt i64 %.3383, %i.di
  br i1 %.not444, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = sub i64 0, %i.di
  %i.dk = getelementptr inbounds i8, ptr %i.j, i64 %i.dj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.2, ptr align 1 %i.dk, i64 %.3383, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %.2, i64 %.3383
  br label %.backedge

bb.ae:                                            ; preds = %bb.ac
  %i.dm = sub nuw i64 %.3383, %i.di               ; 2 uses
  %i.dn = sub i64 0, %i.di
  %i.do = getelementptr inbounds i8, ptr %i.j, i64 %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2, ptr align 1 %i.do, i64 %i.di, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %.2, i64 %i.di ; 7 uses
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.ag
  %i.ds = icmp ugt i64 %i.dm, %i.dr
  br i1 %i.ds, label %iter.check, label %bb.af

iter.check:                                       ; preds = %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %.2, i64 %.3383
  %i.du = add i64 %i.ah, %i.br
  %i.dv = add i64 %.3383, %.21010
  %umax = tail call i64 @llvm.umax.i64(i64 %i.du, i64 %i.dv)
  %i.dw = add i64 %i.ag, %i.br
  %i.dx = sub i64 %umax, %i.dw                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.dx, 4
  %diff.check = icmp ult i16 %.val484, 32
  %or.cond1205 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1205, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1011 = icmp ult i64 %i.dx, 32
  br i1 %min.iters.check1011, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dx, 28
  %n.vec = and i64 %i.dx, -32                     ; 5 uses
  %i.dy = getelementptr i8, ptr %i.dp, i64 %n.vec ; 2 uses
  %i.dz = getelementptr i8, ptr %6, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %index ; 2 uses
  %next.gep1012 = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep1012, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep1012, align 1, !tbaa !7
  %wide.load1013 = load <16 x i8>, ptr %i.ea, align 1, !tbaa !7
  %i.eb = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !7
  store <16 x i8> %wide.load1013, ptr %i.eb, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dx, %n.vec
  br i1 %cmp.n, label %.backedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1016 = and i64 %i.dx, -4                  ; 4 uses
  %i.ed = getelementptr i8, ptr %i.dp, i64 %n.vec1016 ; 2 uses
  %i.ee = getelementptr i8, ptr %6, i64 %n.vec1016
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1017 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1021, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1018 = getelementptr i8, ptr %i.dp, i64 %index1017
  %next.gep1019 = getelementptr i8, ptr %6, i64 %index1017
  %wide.load1020 = load <4 x i8>, ptr %next.gep1019, align 1, !tbaa !7
  store <4 x i8> %wide.load1020, ptr %next.gep1018, align 1, !tbaa !7
  %index.next1021 = add nuw i64 %index1017, 4     ; 2 uses
  %i.ef = icmp eq i64 %index.next1021, %n.vec1016
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1022 = icmp eq i64 %i.dx, %n.vec1016
  br i1 %cmp.n1022, label %.backedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3648.ph = phi ptr [ %i.dp, %iter.check ], [ %i.dy, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ]
  %.0400647.ph = phi ptr [ %6, %iter.check ], [ %i.dz, %vec.epilog.iter.check ], [ %i.ee, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.3648 = phi ptr [ %i.ei, %.lr.ph ], [ %.3648.ph, %.lr.ph.preheader ] ; 2 uses
  %.0400647 = phi ptr [ %i.eg, %.lr.ph ], [ %.0400647.ph, %.lr.ph.preheader ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0400647, i64 1
  %i.eh = load i8, ptr %.0400647, align 1, !tbaa !7
  %i.ei = getelementptr inbounds nuw i8, ptr %.3648, i64 1 ; 3 uses
  store i8 %i.eh, ptr %.3648, align 1, !tbaa !7
  %i.ej = icmp ult ptr %i.ei, %i.dt
  br i1 %i.ej, label %.lr.ph, label %.backedge, !llvm.loop !47

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr nonnull align 1 %6, i64 %i.dm, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %.2, i64 %.3383
  br label %.backedge

bb.ag:                                            ; preds = %bb.y
  %i.el = icmp ult i16 %.val484, 16
  br i1 %i.el, label %bb.ah, label %.preheader600, !prof !19

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @_ZN10duckdb_lz4L23LZ4_memcpy_using_offsetEPhPKhS0_m(ptr noundef %.2, ptr noundef %i.bu, ptr noundef %i.dc, i64 noundef %i.br)
  br label %.backedge

.preheader600:                                    ; preds = %bb.ag, %.preheader600
  %.011.i495 = phi ptr [ %i.ep, %.preheader600 ], [ %i.bu, %bb.ag ] ; 3 uses
  %.0.i496 = phi ptr [ %i.eo, %.preheader600 ], [ %.2, %bb.ag ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.i496, ptr noundef nonnull align 1 dereferenceable(16) %.011.i495, i64 16, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i496, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %.011.i495, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.em, ptr noundef nonnull align 1 dereferenceable(16) %i.en, i64 16, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i496, i64 32 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.011.i495, i64 32
  %i.eq = icmp ult ptr %i.eo, %i.dc
  br i1 %i.eq, label %.preheader600, label %.backedge, !llvm.loop !40

.lr.ph651.split:                                  ; preds = %.lr.ph651, %bb.aj
  %i.er = phi i64 [ %i.fu, %bb.aj ], [ %i.lw, %.lr.ph651 ] ; 3 uses
  %i.es = phi i32 [ %i.fs, %bb.aj ], [ %i.lu, %.lr.ph651 ] ; 2 uses
  %i.et = phi ptr [ %i.fq, %bb.aj ], [ %i.ls, %.lr.ph651 ] ; 4 uses
  %.6650 = phi ptr [ %i.fp, %bb.aj ], [ %.6.ph, %.lr.ph651 ] ; 4 uses
  %i.eu = icmp ult ptr %i.et, %i.l
  %i.ev = icmp ule ptr %.6650, %i.m
  %i.ew = and i1 %i.eu, %i.ev
  br i1 %i.ew, label %bb.ai, label %.loopexit597, !prof !27

bb.ai:                                            ; preds = %.lr.ph651.split
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6650, ptr noundef nonnull align 1 dereferenceable(16) %i.et, i64 16, i1 false)
  %i.ex = getelementptr inbounds nuw i8, ptr %.6650, i64 %i.er ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.er ; 3 uses
  %i.ez = and i32 %i.es, 15                       ; 2 uses
  %i.fa = zext nneg i32 %i.ez to i64              ; 2 uses
  %.val483 = load i16, ptr %i.ey, align 1, !tbaa !7 ; 2 uses
  %i.fb = zext i16 %.val483 to i64                ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 2 ; 2 uses
  %i.fd = sub nsw i64 0, %i.fb
  %i.fe = getelementptr inbounds i8, ptr %i.ex, i64 %i.fd ; 5 uses
  %i.ff = icmp eq i32 %i.ez, 15
  %i.fg = icmp ult i16 %.val483, 8
  %or.cond3.not682 = or i1 %i.ff, %i.fg
  %.not449 = icmp ult ptr %i.fe, %6
  %or.cond678 = select i1 %or.cond3.not682, i1 true, i1 %.not449
  br i1 %or.cond678, label %.loopexit598, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fh = load i64, ptr %i.fe, align 1
  store i64 %i.fh, ptr %i.ex, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fk = load i64, ptr %i.fj, align 1
  store i64 %i.fk, ptr %i.fi, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fn = load i16, ptr %i.fm, align 1
  store i16 %i.fn, ptr %i.fl, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fa
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ey, i64 3 ; 2 uses
  %i.fr = load i8, ptr %i.fc, align 1, !tbaa !7
  %i.fs = zext i8 %i.fr to i32                    ; 3 uses
  %i.ft = lshr i32 %i.fs, 4                       ; 2 uses
  %i.fu = zext nneg i32 %i.ft to i64
  %cond = icmp eq i32 %i.ft, 15
  br i1 %cond, label %._crit_edge, label %.lr.ph651.split, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.aj, %bb.bi, %.preheader596
  %.6.lcssa = phi ptr [ %.6.ph, %.preheader596 ], [ %i.mv, %bb.bi ], [ %i.fp, %bb.aj ] ; 2 uses
  %.lcssa616 = phi ptr [ %i.ls, %.preheader596 ], [ %i.mw, %bb.bi ], [ %i.fq, %bb.aj ] ; 6 uses
  %.lcssa613 = phi i32 [ %i.lu, %.preheader596 ], [ %i.my, %bb.bi ], [ %i.fs, %bb.aj ]
  %i.fv = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 2 uses
  %.not12.i499 = icmp ult ptr %.lcssa616, %i.fv
  br i1 %.not12.i499, label %.lr.ph1003, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !36

.lr.ph1003:                                       ; preds = %._crit_edge
  %i.fw = ptrtoint ptr %i.fv to i64
  %.promoted13.i501 = ptrtoint ptr %.lcssa616 to i64
  %i.fx = tail call i64 @llvm.usub.sat.i64(i64 %i.fw, i64 %.promoted13.i501)
  %scevgep.i502 = getelementptr i8, ptr %.lcssa616, i64 %i.fx
  %i.fy = getelementptr inbounds nuw i8, ptr %.lcssa616, i64 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.al
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 2 uses
  %exitcond.i504 = icmp eq ptr %i.ga, %scevgep.i502
  br i1 %exitcond.i504, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.al, !prof !37, !llvm.loop !38

bb.al:                                            ; preds = %.lr.ph1003, %bb.ak
  %i.ga = phi ptr [ %i.fy, %.lr.ph1003 ], [ %i.fz, %bb.ak ] ; 7 uses
  %.0.i5031001 = phi i64 [ 0, %.lr.ph1003 ], [ %i.ge, %bb.ak ]
  %i.gb = phi ptr [ %.lcssa616, %.lr.ph1003 ], [ %i.ga, %bb.ak ]
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !7   ; 2 uses
  %i.gd = zext i8 %i.gc to i64
  %i.ge = add i64 %.0.i5031001, %i.gd             ; 3 uses
  %i.gf = icmp eq i8 %i.gc, -1
  br i1 %i.gf, label %bb.ak, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505: ; preds = %bb.al
  %i.gg = icmp eq i64 %i.ge, -1
  br i1 %i.gg, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.am

bb.am:                                            ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505
  %i.gh = add i64 %i.ge, 15                       ; 3 uses
  %i.gi = ptrtoint ptr %.6.lcssa to i64
  %i.gj = xor i64 %i.gi, -1
  %i.gk = icmp ugt i64 %i.gh, %i.gj
  %i.gl = ptrtoint ptr %i.ga to i64
  %i.gm = xor i64 %i.gl, -1
  %i.gn = icmp ugt i64 %i.gh, %i.gm
  %or.cond586 = select i1 %i.gk, i1 true, i1 %i.gn, !prof !39
  br i1 %or.cond586, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.loopexit597, !prof !39

.loopexit597:                                     ; preds = %.lr.ph651.split, %.lr.ph651.split.us, %bb.am
  %.6621 = phi ptr [ %.6.lcssa, %bb.am ], [ %.6650.us, %.lr.ph651.split.us ], [ %.6650, %.lr.ph651.split ] ; 2 uses
  %i.go = phi i32 [ %.lcssa613, %bb.am ], [ %i.ly, %.lr.ph651.split.us ], [ %i.es, %.lr.ph651.split ]
  %.5543 = phi ptr [ %i.ga, %bb.am ], [ %i.lz, %.lr.ph651.split.us ], [ %i.et, %.lr.ph651.split ]
  %.5385 = phi i64 [ %i.gh, %bb.am ], [ %i.lx, %.lr.ph651.split.us ], [ %i.er, %.lr.ph651.split ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.6621, i64 %.5385
  br label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit

_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit:   ; preds = %bb.m, %bb.n, %.loopexit597
  %.6544 = phi ptr [ %.5543, %.loopexit597 ], [ %i.ar, %bb.m ], [ %i.ai, %bb.n ] ; 11 uses
  %.6386 = phi i64 [ %.5385, %.loopexit597 ], [ %i.ay, %bb.m ], [ %i.am, %bb.n ] ; 4 uses
  %.0379 = phi i32 [ %i.go, %.loopexit597 ], [ %i.ak, %bb.n ], [ %i.ak, %bb.m ]
  %.3367 = phi ptr [ %i.gp, %.loopexit597 ], [ %i.bf, %bb.m ], [ %i.bo, %bb.n ] ; 7 uses
  %.7 = phi ptr [ %.6621, %.loopexit597 ], [ %.0362, %bb.n ], [ %.0362, %bb.m ] ; 11 uses
  %.33671029 = ptrtoint ptr %.3367 to i64
  %.71030 = ptrtoint ptr %.7 to i64               ; 2 uses
  %.71026 = ptrtoaddr ptr %.7 to i64
  %.65441027 = ptrtoaddr ptr %.6544 to i64
  %i.gq = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.gr = icmp ugt ptr %.3367, %i.gq
  br i1 %i.gr, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit
  %i.gs = getelementptr inbounds nuw i8, ptr %.6544, i64 %.6386 ; 3 uses
  %i.gt = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.gu = icmp ugt ptr %i.gs, %i.gt
  br i1 %i.gu, label %bb.ao, label %.preheader595.preheader

.preheader595.preheader:                          ; preds = %bb.an
  %i.gv = add i64 %.71030, 8
  %umax1031 = tail call i64 @llvm.umax.i64(i64 %.33671029, i64 %i.gv)
  %i.gw = xor i64 %.71030, -1
  %i.gx = add i64 %umax1031, %i.gw                ; 2 uses
  %i.gy = lshr i64 %i.gx, 3
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check1032 = icmp ult i64 %i.gx, 56
  %i.ha = sub i64 %.71026, %.65441027
  %diff.check1028 = icmp ult i64 %i.ha, 32
  %or.cond1206 = select i1 %min.iters.check1032, i1 true, i1 %diff.check1028
  br i1 %or.cond1206, label %.preheader595.preheader1216, label %vector.ph1033

vector.ph1033:                                    ; preds = %.preheader595.preheader
  %n.vec1035 = and i64 %i.gz, 4611686018427387900 ; 3 uses
  %i.hb = shl i64 %n.vec1035, 3                   ; 2 uses
  %i.hc = getelementptr i8, ptr %.6544, i64 %i.hb
  %i.hd = getelementptr i8, ptr %.7, i64 %i.hb
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1033
  %index1037 = phi i64 [ 0, %vector.ph1033 ], [ %index.next1042, %vector.body1036 ] ; 2 uses
  %i.he = shl i64 %index1037, 3                   ; 2 uses
  %next.gep1038 = getelementptr i8, ptr %.6544, i64 %i.he ; 2 uses
  %next.gep1039 = getelementptr i8, ptr %.7, i64 %i.he ; 2 uses
  %i.hf = getelementptr i8, ptr %next.gep1038, i64 16
  %wide.load1040 = load <2 x i64>, ptr %next.gep1038, align 1
  %wide.load1041 = load <2 x i64>, ptr %i.hf, align 1
  %i.hg = getelementptr i8, ptr %next.gep1039, i64 16
  store <2 x i64> %wide.load1040, ptr %next.gep1039, align 1
  store <2 x i64> %wide.load1041, ptr %i.hg, align 1
  %index.next1042 = add nuw i64 %index1037, 4     ; 2 uses
  %i.hh = icmp eq i64 %index.next1042, %n.vec1035
  br i1 %i.hh, label %middle.block1043, label %vector.body1036, !llvm.loop !49

middle.block1043:                                 ; preds = %vector.body1036
  %cmp.n1044 = icmp eq i64 %i.gz, %n.vec1035
  br i1 %cmp.n1044, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, label %.preheader595.preheader1216

.preheader595.preheader1216:                      ; preds = %.preheader595.preheader, %middle.block1043
  %.09.i.ph = phi ptr [ %.6544, %.preheader595.preheader ], [ %i.hc, %middle.block1043 ]
  %.0.i506.ph = phi ptr [ %.7, %.preheader595.preheader ], [ %i.hd, %middle.block1043 ]
  br label %.preheader595

bb.ao:                                            ; preds = %bb.an, %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit
  %.not446.not = icmp eq i32 %4, 0
  %i.hi = getelementptr inbounds nuw i8, ptr %.6544, i64 %.6386 ; 2 uses
  br i1 %.not446.not, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hj = icmp ugt ptr %i.hi, %i.e                ; 2 uses
  %i.hk = ptrtoint ptr %i.e to i64
  %i.hl = ptrtoint ptr %.6544 to i64
  %i.hm = sub i64 %i.hk, %i.hl                    ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.7, i64 %i.hm
  %.4368 = select i1 %i.hj, ptr %i.hn, ptr %.3367 ; 2 uses
  %i.ho = icmp ugt ptr %.4368, %i.g
  br i1 %i.ho, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.hp = ptrtoint ptr %.7 to i64
  %i.hq = sub i64 %i.t, %i.hp
  br label %.thread

bb.ar:                                            ; preds = %bb.ao
  %.not447 = icmp ne ptr %i.hi, %i.e
  %i.hr = icmp ugt ptr %.3367, %i.g
  %or.cond467 = select i1 %.not447, i1 true, i1 %i.hr
  br i1 %or.cond467, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.thread

.thread:                                          ; preds = %bb.ar, %bb.aq
  %.8388.ph = phi i64 [ %.6386, %bb.ar ], [ %i.hq, %bb.aq ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7, ptr nonnull align 1 %.6544, i64 %.8388.ph, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %.7, i64 %.8388.ph
  br label %._crit_edge765

bb.as:                                            ; preds = %bb.ap
  %.7387 = select i1 %i.hj, i64 %i.hm, i64 %.6386 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7, ptr nonnull align 1 %.6544, i64 %.7387, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %.6544, i64 %.7387 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.7, i64 %.7387 ; 2 uses
  %i.hv = icmp ne ptr %.4368, %i.g
  %i.hw = getelementptr inbounds i8, ptr %i.e, i64 -2
  %.not448 = icmp ult ptr %i.ht, %i.hw
  %or.cond469 = select i1 %i.hv, i1 %.not448, i1 false
  br i1 %or.cond469, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, label %._crit_edge765

._crit_edge765:                                   ; preds = %.thread, %bb.as
  %i.hx = phi ptr [ %i.hs, %.thread ], [ %i.hu, %bb.as ]
  %.pre = ptrtoint ptr %i.hx to i64
  br label %bb.bs

.preheader595:                                    ; preds = %.preheader595.preheader1216, %.preheader595
  %.09.i = phi ptr [ %i.ia, %.preheader595 ], [ %.09.i.ph, %.preheader595.preheader1216 ] ; 2 uses
  %.0.i506 = phi ptr [ %i.hz, %.preheader595 ], [ %.0.i506.ph, %.preheader595.preheader1216 ] ; 2 uses
  %i.hy = load i64, ptr %.09.i, align 1
  store i64 %i.hy, ptr %.0.i506, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.i506, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.ib = icmp ult ptr %i.hz, %.3367
  br i1 %i.ib, label %.preheader595, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, !llvm.loop !50

_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit:    ; preds = %.preheader595, %middle.block1043, %bb.as
  %.7545 = phi ptr [ %i.ht, %bb.as ], [ %i.gs, %middle.block1043 ], [ %i.gs, %.preheader595 ] ; 2 uses
  %.8 = phi ptr [ %i.hu, %bb.as ], [ %.3367, %middle.block1043 ], [ %.3367, %.preheader595 ] ; 2 uses
  %.val = load i16, ptr %.7545, align 1, !tbaa !7
  %i.ic = zext i16 %.val to i64                   ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.7545, i64 2
  %i.ie = sub nsw i64 0, %i.ic
  %i.if = getelementptr inbounds i8, ptr %.8, i64 %i.ie
  %i.ig = and i32 %.0379, 15
  %i.ih = zext nneg i32 %i.ig to i64
  br label %.loopexit598

.loopexit598:                                     ; preds = %bb.ai, %bb.bh, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit
  %.8546 = phi ptr [ %i.id, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mi, %bb.bh ], [ %i.fc, %bb.ai ] ; 6 uses
  %.9389 = phi i64 [ %i.ih, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mg, %bb.bh ], [ %i.fa, %bb.ai ] ; 2 uses
  %.0377 = phi i64 [ %i.ic, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mh, %bb.bh ], [ %i.fb, %bb.ai ]
  %.0370 = phi ptr [ %i.if, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mk, %bb.bh ], [ %i.fe, %bb.ai ]
  %.9 = phi ptr [ %.8, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.md, %bb.bh ], [ %i.ex, %bb.ai ] ; 2 uses
  %i.ii = icmp eq i64 %.9389, 15
  br i1 %i.ii, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.loopexit598
  %i.ij = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.ik = ptrtoint ptr %i.ij to i64
  %.promoted13.i510 = ptrtoint ptr %.8546 to i64
  %i.il = tail call i64 @llvm.usub.sat.i64(i64 %i.ik, i64 %.promoted13.i510)
  %scevgep.i511 = getelementptr i8, ptr %.8546, i64 %i.il
  %i.im = getelementptr inbounds nuw i8, ptr %.8546, i64 1 ; 2 uses
  %exitcond.i5131005.not = icmp ugt ptr %i.ij, %.8546
  br i1 %exitcond.i5131005.not, label %.lr.ph1008, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !28

bb.au:                                            ; preds = %.lr.ph1008
  %i.in = getelementptr inbounds nuw i8, ptr %i.io, i64 1 ; 2 uses
  %exitcond.i513 = icmp eq ptr %i.io, %scevgep.i511
  br i1 %exitcond.i513, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.lr.ph1008, !prof !37, !llvm.loop !38

.lr.ph1008:                                       ; preds = %bb.at, %bb.au
  %i.io = phi ptr [ %i.in, %bb.au ], [ %i.im, %bb.at ] ; 5 uses
  %.0.i5121006 = phi i64 [ %i.is, %bb.au ], [ 0, %bb.at ]
  %i.ip = phi ptr [ %i.io, %bb.au ], [ %.8546, %bb.at ]
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !7   ; 2 uses
  %i.ir = zext i8 %i.iq to i64
  %i.is = add i64 %.0.i5121006, %i.ir             ; 3 uses
  %i.it = icmp eq i8 %i.iq, -1
  br i1 %i.it, label %bb.au, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514: ; preds = %.lr.ph1008
  %i.iu = icmp ne i64 %i.is, -1                   ; 2 uses
  %i.iv = add i64 %i.is, 15                       ; 2 uses
  %i.iw = ptrtoint ptr %.9 to i64
  %i.ix = xor i64 %i.iw, -1
  %i.iy = icmp ule i64 %i.iv, %i.ix
  %.not591 = select i1 %i.iu, i1 %i.iy, i1 false
  %.10390 = select i1 %i.iu, i64 %i.iv, i64 15
  br i1 %.not591, label %bb.av, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread

bb.av:                                            ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514, %.loopexit598
  %.9547 = phi ptr [ %i.io, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514 ], [ %.8546, %.loopexit598 ]
  %.11391 = phi i64 [ %.10390, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514 ], [ %.9389, %.loopexit598 ]
  %i.iz = add i64 %.11391, 4
  br label %.loopexit606

.loopexit606:                                     ; preds = %bb.s, %bb.t, %bb.av
  %.10548 = phi ptr [ %.9547, %bb.av ], [ %i.ca, %bb.s ], [ %i.bs, %bb.t ] ; 6 uses
  %.12392 = phi i64 [ %i.iz, %bb.av ], [ %i.ch, %bb.s ], [ %i.co, %bb.t ] ; 7 uses
  %.1378 = phi i64 [ %.0377, %bb.av ], [ %i.br, %bb.t ], [ %i.br, %bb.s ] ; 3 uses
  %.1371 = phi ptr [ %.0370, %bb.av ], [ %i.bu, %bb.t ], [ %i.bu, %bb.s ] ; 18 uses
  %.10 = phi ptr [ %.9, %bb.av ], [ %.2, %bb.t ], [ %.2, %bb.s ] ; 28 uses
  %.13711127 = ptrtoaddr ptr %.1371 to i64        ; 2 uses
  %.101050 = ptrtoint ptr %.10 to i64             ; 17 uses
  %.101047 = ptrtoaddr ptr %.10 to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %.1371, i64 %8
  %i.jb = icmp ult ptr %i.ja, %6
  %or.cond472 = select i1 %i.k, i1 %i.jb, i1 false, !prof !41
  br i1 %or.cond472, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.aw, !prof !41

bb.aw:                                            ; preds = %.loopexit606
  %i.jc = icmp eq i32 %5, 2
  %i.jd = icmp ult ptr %.1371, %6
  %or.cond473 = select i1 %i.jc, i1 %i.jd, i1 false
  %i.je = getelementptr inbounds nuw i8, ptr %.10, i64 %.12392 ; 7 uses
  br i1 %or.cond473, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.jf = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.jg = icmp ugt ptr %i.je, %i.jf
  br i1 %i.jg, label %bb.ay, label %bb.ba, !prof !19

bb.ay:                                            ; preds = %bb.ax
  %.not451 = icmp eq i32 %4, 0
  br i1 %.not451, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jh = ptrtoint ptr %.10 to i64
  %i.ji = sub i64 %i.t, %i.jh
  %i.jj = tail call i64 @llvm.umin.i64(i64 %.12392, i64 %i.ji)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.13393 = phi i64 [ %i.jj, %bb.az ], [ %.12392, %bb.ax ] ; 7 uses
  %i.jk = ptrtoint ptr %6 to i64                  ; 4 uses
  %i.jl = ptrtoint ptr %.1371 to i64              ; 3 uses
  %i.jm = sub i64 %i.jk, %i.jl                    ; 6 uses
  %.not452 = icmp ugt i64 %.13393, %i.jm
  br i1 %.not452, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jn = sub i64 0, %i.jm
  %i.jo = getelementptr inbounds i8, ptr %i.j, i64 %i.jn
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.10, ptr align 1 %i.jo, i64 %.13393, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %.10, i64 %.13393
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ba
  %i.jq = sub nuw i64 %.13393, %i.jm              ; 2 uses
  %i.jr = sub i64 0, %i.jm
  %i.js = getelementptr inbounds i8, ptr %i.j, i64 %i.jr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10, ptr align 1 %i.js, i64 %i.jm, i1 false)
  %i.jt = getelementptr inbounds nuw i8, ptr %.10, i64 %i.jm ; 7 uses
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = sub i64 %i.ju, %i.jk
  %i.jw = icmp ugt i64 %i.jq, %i.jv
  br i1 %i.jw, label %iter.check1188, label %bb.bd

iter.check1188:                                   ; preds = %bb.bc
  %i.jx = getelementptr inbounds nuw i8, ptr %.10, i64 %.13393
  %i.jy = add i64 %.101050, %i.jk
  %i.jz = add i64 %i.jy, 1
  %i.ka = sub i64 %i.jz, %i.jl
  %i.kb = add i64 %.13393, %.101050
  %umax1168 = tail call i64 @llvm.umax.i64(i64 %i.ka, i64 %i.kb)
  %i.kc = add i64 %umax1168, %i.jl
  %i.kd = add i64 %.101050, %i.jk
  %i.ke = sub i64 %i.kc, %i.kd                    ; 7 uses
  %min.iters.check1170 = icmp ult i64 %i.ke, 4
  %i.kf = sub i64 %.101050, %.13711127
  %diff.check1167 = icmp ult i64 %i.kf, 32
  %or.cond1207 = select i1 %min.iters.check1170, i1 true, i1 %diff.check1167
  br i1 %or.cond1207, label %.lr.ph676.preheader, label %vector.main.loop.iter.check1171

vector.main.loop.iter.check1171:                  ; preds = %iter.check1188
  %min.iters.check1172 = icmp ult i64 %i.ke, 32
  br i1 %min.iters.check1172, label %vec.epilog.ph1192, label %vector.ph1173

vector.ph1173:                                    ; preds = %vector.main.loop.iter.check1171
  %n.mod.vf1174 = and i64 %i.ke, 28
  %n.vec1175 = and i64 %i.ke, -32                 ; 5 uses
  %i.kg = getelementptr i8, ptr %i.jt, i64 %n.vec1175 ; 2 uses
  %i.kh = getelementptr i8, ptr %6, i64 %n.vec1175
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %vector.ph1173
  %index1177 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1182, %vector.body1176 ] ; 3 uses
  %next.gep1178 = getelementptr i8, ptr %i.jt, i64 %index1177 ; 2 uses
  %next.gep1179 = getelementptr i8, ptr %6, i64 %index1177 ; 2 uses
  %i.ki = getelementptr i8, ptr %next.gep1179, i64 16
  %wide.load1180 = load <16 x i8>, ptr %next.gep1179, align 1, !tbaa !7
  %wide.load1181 = load <16 x i8>, ptr %i.ki, align 1, !tbaa !7
  %i.kj = getelementptr i8, ptr %next.gep1178, i64 16
  store <16 x i8> %wide.load1180, ptr %next.gep1178, align 1, !tbaa !7
  store <16 x i8> %wide.load1181, ptr %i.kj, align 1, !tbaa !7
  %index.next1182 = add nuw i64 %index1177, 32    ; 2 uses
  %i.kk = icmp eq i64 %index.next1182, %n.vec1175
  br i1 %i.kk, label %middle.block1183, label %vector.body1176, !llvm.loop !51

middle.block1183:                                 ; preds = %vector.body1176
  %cmp.n1184 = icmp eq i64 %i.ke, %n.vec1175
  br i1 %cmp.n1184, label %.loopexit, label %vec.epilog.iter.check1190

vec.epilog.iter.check1190:                        ; preds = %middle.block1183
  %min.epilog.iters.check1191 = icmp eq i64 %n.mod.vf1174, 0
  br i1 %min.epilog.iters.check1191, label %.lr.ph676.preheader, label %vec.epilog.ph1192, !prof !45

vec.epilog.ph1192:                                ; preds = %vector.main.loop.iter.check1171, %vec.epilog.iter.check1190
  %vec.epilog.resume.val1185 = phi i64 [ %n.vec1175, %vec.epilog.iter.check1190 ], [ 0, %vector.main.loop.iter.check1171 ]
  %n.vec1194 = and i64 %i.ke, -4                  ; 4 uses
  %i.kl = getelementptr i8, ptr %i.jt, i64 %n.vec1194 ; 2 uses
  %i.km = getelementptr i8, ptr %6, i64 %n.vec1194
  br label %vec.epilog.vector.body1195

vec.epilog.vector.body1195:                       ; preds = %vec.epilog.vector.body1195, %vec.epilog.ph1192
  %index1196 = phi i64 [ %vec.epilog.resume.val1185, %vec.epilog.ph1192 ], [ %index.next1200, %vec.epilog.vector.body1195 ] ; 3 uses
  %next.gep1197 = getelementptr i8, ptr %i.jt, i64 %index1196
  %next.gep1198 = getelementptr i8, ptr %6, i64 %index1196
  %wide.load1199 = load <4 x i8>, ptr %next.gep1198, align 1, !tbaa !7
  store <4 x i8> %wide.load1199, ptr %next.gep1197, align 1, !tbaa !7
  %index.next1200 = add nuw i64 %index1196, 4     ; 2 uses
  %i.kn = icmp eq i64 %index.next1200, %n.vec1194
  br i1 %i.kn, label %vec.epilog.middle.block1201, label %vec.epilog.vector.body1195, !llvm.loop !52

vec.epilog.middle.block1201:                      ; preds = %vec.epilog.vector.body1195
  %cmp.n1202 = icmp eq i64 %i.ke, %n.vec1194
  br i1 %cmp.n1202, label %.loopexit, label %.lr.ph676.preheader

.lr.ph676.preheader:                              ; preds = %iter.check1188, %vec.epilog.iter.check1190, %vec.epilog.middle.block1201
  %.11674.ph = phi ptr [ %i.jt, %iter.check1188 ], [ %i.kg, %vec.epilog.iter.check1190 ], [ %i.kl, %vec.epilog.middle.block1201 ]
  %.0376673.ph = phi ptr [ %6, %iter.check1188 ], [ %i.kh, %vec.epilog.iter.check1190 ], [ %i.km, %vec.epilog.middle.block1201 ]
  br label %.lr.ph676

.lr.ph676:                                        ; preds = %.lr.ph676.preheader, %.lr.ph676
  %.11674 = phi ptr [ %i.kq, %.lr.ph676 ], [ %.11674.ph, %.lr.ph676.preheader ] ; 2 uses
  %.0376673 = phi ptr [ %i.ko, %.lr.ph676 ], [ %.0376673.ph, %.lr.ph676.preheader ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.0376673, i64 1
  %i.kp = load i8, ptr %.0376673, align 1, !tbaa !7
  %i.kq = getelementptr inbounds nuw i8, ptr %.11674, i64 1 ; 3 uses
  store i8 %i.kp, ptr %.11674, align 1, !tbaa !7
  %i.kr = icmp ult ptr %i.kq, %i.jx
  br i1 %i.kr, label %.lr.ph676, label %.loopexit, !llvm.loop !53

bb.bd:                                            ; preds = %bb.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr nonnull align 1 %6, i64 %i.jq, i1 false)
  %i.ks = getelementptr inbounds nuw i8, ptr %.10, i64 %.13393
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph676, %middle.block1183, %vec.epilog.middle.block1201, %bb.bd, %bb.bb
  %.13 = phi ptr [ %i.jp, %bb.bb ], [ %i.ks, %bb.bd ], [ %i.kl, %vec.epilog.middle.block1201 ], [ %i.kg, %middle.block1183 ], [ %i.kq, %.lr.ph676 ]
  br label %.preheader596, !llvm.loop !48

bb.be:                                            ; preds = %bb.aw
  %.not450 = icmp ne i32 %4, 0
  %i.kt = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.ku = icmp ugt ptr %i.je, %i.kt               ; 2 uses
  %or.cond475 = select i1 %.not450, i1 %i.ku, i1 false
  br i1 %or.cond475, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.kv = ptrtoint ptr %.10 to i64
  %i.kw = sub i64 %i.t, %i.kv
  %i.kx = tail call i64 @llvm.umin.i64(i64 %.12392, i64 %i.kw) ; 5 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.1371, i64 %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %.10, i64 %i.kx ; 3 uses
  %i.la = icmp ugt ptr %i.ky, %.10
  br i1 %i.la, label %.preheader, label %bb.bg

.preheader:                                       ; preds = %bb.bf
  %.not683 = icmp eq i64 %i.kx, 0
  br i1 %.not683, label %.loopexit592, label %iter.check1149

iter.check1149:                                   ; preds = %.preheader
  %i.lb = add i64 %i.kx, %.101050
  %i.lc = add i64 %.101050, 1
  %umax1129 = tail call i64 @llvm.umax.i64(i64 %i.lb, i64 %i.lc)
  %i.ld = sub i64 %umax1129, %.101050             ; 7 uses
  %min.iters.check1131 = icmp ult i64 %i.ld, 4
  %i.le = sub i64 %.101050, %.13711127
  %diff.check1128 = icmp ult i64 %i.le, 32
  %or.cond1208 = select i1 %min.iters.check1131, i1 true, i1 %diff.check1128
  br i1 %or.cond1208, label %.lr.ph672.preheader, label %vector.main.loop.iter.check1132

vector.main.loop.iter.check1132:                  ; preds = %iter.check1149
  %min.iters.check1133 = icmp ult i64 %i.ld, 32
  br i1 %min.iters.check1133, label %vec.epilog.ph1153, label %vector.ph1134

vector.ph1134:                                    ; preds = %vector.main.loop.iter.check1132
  %n.mod.vf1135 = and i64 %i.ld, 28
  %n.vec1136 = and i64 %i.ld, -32                 ; 5 uses
  %i.lf = getelementptr i8, ptr %.10, i64 %n.vec1136
  %i.lg = getelementptr i8, ptr %.1371, i64 %n.vec1136
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %vector.ph1134
  %index1138 = phi i64 [ 0, %vector.ph1134 ], [ %index.next1143, %vector.body1137 ] ; 3 uses
  %next.gep1139 = getelementptr i8, ptr %.10, i64 %index1138 ; 2 uses
  %next.gep1140 = getelementptr i8, ptr %.1371, i64 %index1138 ; 2 uses
  %i.lh = getelementptr i8, ptr %next.gep1140, i64 16
  %wide.load1141 = load <16 x i8>, ptr %next.gep1140, align 1, !tbaa !7
  %wide.load1142 = load <16 x i8>, ptr %i.lh, align 1, !tbaa !7
  %i.li = getelementptr i8, ptr %next.gep1139, i64 16
  store <16 x i8> %wide.load1141, ptr %next.gep1139, align 1, !tbaa !7
  store <16 x i8> %wide.load1142, ptr %i.li, align 1, !tbaa !7
  %index.next1143 = add nuw i64 %index1138, 32    ; 2 uses
  %i.lj = icmp eq i64 %index.next1143, %n.vec1136
  br i1 %i.lj, label %middle.block1144, label %vector.body1137, !llvm.loop !54

middle.block1144:                                 ; preds = %vector.body1137
  %cmp.n1145 = icmp eq i64 %i.ld, %n.vec1136
  br i1 %cmp.n1145, label %.loopexit592, label %vec.epilog.iter.check1151

vec.epilog.iter.check1151:                        ; preds = %middle.block1144
  %min.epilog.iters.check1152 = icmp eq i64 %n.mod.vf1135, 0
  br i1 %min.epilog.iters.check1152, label %.lr.ph672.preheader, label %vec.epilog.ph1153, !prof !45

vec.epilog.ph1153:                                ; preds = %vector.main.loop.iter.check1132, %vec.epilog.iter.check1151
  %vec.epilog.resume.val1146 = phi i64 [ %n.vec1136, %vec.epilog.iter.check1151 ], [ 0, %vector.main.loop.iter.check1132 ]
  %n.vec1155 = and i64 %i.ld, -4                  ; 4 uses
  %i.lk = getelementptr i8, ptr %.10, i64 %n.vec1155
  %i.ll = getelementptr i8, ptr %.1371, i64 %n.vec1155
  br label %vec.epilog.vector.body1156

vec.epilog.vector.body1156:                       ; preds = %vec.epilog.vector.body1156, %vec.epilog.ph1153
  %index1157 = phi i64 [ %vec.epilog.resume.val1146, %vec.epilog.ph1153 ], [ %index.next1161, %vec.epilog.vector.body1156 ] ; 3 uses
  %next.gep1158 = getelementptr i8, ptr %.10, i64 %index1157
  %next.gep1159 = getelementptr i8, ptr %.1371, i64 %index1157
  %wide.load1160 = load <4 x i8>, ptr %next.gep1159, align 1, !tbaa !7
  store <4 x i8> %wide.load1160, ptr %next.gep1158, align 1, !tbaa !7
  %index.next1161 = add nuw i64 %index1157, 4     ; 2 uses
  %i.lm = icmp eq i64 %index.next1161, %n.vec1155
  br i1 %i.lm, label %vec.epilog.middle.block1162, label %vec.epilog.vector.body1156, !llvm.loop !55

vec.epilog.middle.block1162:                      ; preds = %vec.epilog.vector.body1156
  %cmp.n1163 = icmp eq i64 %i.ld, %n.vec1155
  br i1 %cmp.n1163, label %.loopexit592, label %.lr.ph672.preheader

.lr.ph672.preheader:                              ; preds = %iter.check1149, %vec.epilog.iter.check1151, %vec.epilog.middle.block1162
  %.14671.ph = phi ptr [ %.10, %iter.check1149 ], [ %i.lf, %vec.epilog.iter.check1151 ], [ %i.lk, %vec.epilog.middle.block1162 ]
  %.2372670.ph = phi ptr [ %.1371, %iter.check1149 ], [ %i.lg, %vec.epilog.iter.check1151 ], [ %i.ll, %vec.epilog.middle.block1162 ]
  br label %.lr.ph672

.lr.ph672:                                        ; preds = %.lr.ph672.preheader, %.lr.ph672
  %.14671 = phi ptr [ %i.lp, %.lr.ph672 ], [ %.14671.ph, %.lr.ph672.preheader ] ; 2 uses
  %.2372670 = phi ptr [ %i.ln, %.lr.ph672 ], [ %.2372670.ph, %.lr.ph672.preheader ] ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.2372670, i64 1
  %i.lo = load i8, ptr %.2372670, align 1, !tbaa !7
  %i.lp = getelementptr inbounds nuw i8, ptr %.14671, i64 1 ; 2 uses
  store i8 %i.lo, ptr %.14671, align 1, !tbaa !7
  %i.lq = icmp ult ptr %i.lp, %i.kz
  br i1 %i.lq, label %.lr.ph672, label %.loopexit592, !llvm.loop !56

bb.bg:                                            ; preds = %bb.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10, ptr align 1 %.1371, i64 %i.kx, i1 false)
  br label %.loopexit592

.loopexit592:                                     ; preds = %.lr.ph672, %middle.block1144, %vec.epilog.middle.block1162, %.preheader, %bb.bg
  %i.lr = icmp eq ptr %i.kz, %i.g
  br i1 %i.lr, label %bb.bs, label %.preheader596

.preheader596:                                    ; preds = %.loopexit, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, %bb.g, %.loopexit592
  %.4.ph = phi ptr [ %.10548, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520 ], [ %.10548, %.loopexit592 ], [ %.10548, %.loopexit ], [ %0, %bb.g ] ; 2 uses
  %.6.ph = phi ptr [ %i.je, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520 ], [ %i.kz, %.loopexit592 ], [ %.13, %.loopexit ], [ %1, %bb.g ] ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.4.ph, i64 1 ; 3 uses
  %i.lt = load i8, ptr %.4.ph, align 1, !tbaa !7
  %i.lu = zext i8 %i.lt to i32                    ; 4 uses
  %i.lv = lshr i32 %i.lu, 4                       ; 2 uses
  %cond649 = icmp eq i32 %i.lv, 15
  br i1 %cond649, label %._crit_edge, label %.lr.ph651

.lr.ph651:                                        ; preds = %.preheader596
  %i.lw = zext nneg i32 %i.lv to i64              ; 2 uses
  %.not679 = icmp eq i32 %5, 1
  br i1 %.not679, label %.lr.ph651.split.us, label %.lr.ph651.split

.lr.ph651.split.us:                               ; preds = %.lr.ph651, %bb.bi
  %i.lx = phi i64 [ %i.na, %bb.bi ], [ %i.lw, %.lr.ph651 ] ; 3 uses
  %i.ly = phi i32 [ %i.my, %bb.bi ], [ %i.lu, %.lr.ph651 ] ; 2 uses
  %i.lz = phi ptr [ %i.mw, %bb.bi ], [ %i.ls, %.lr.ph651 ] ; 4 uses
  %.6650.us = phi ptr [ %i.mv, %bb.bi ], [ %.6.ph, %.lr.ph651 ] ; 4 uses
  %i.ma = icmp ult ptr %i.lz, %i.l
  %i.mb = icmp ule ptr %.6650.us, %i.m
  %i.mc = and i1 %i.ma, %i.mb
  br i1 %i.mc, label %bb.bh, label %.loopexit597, !prof !27

bb.bh:                                            ; preds = %.lr.ph651.split.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6650.us, ptr noundef nonnull align 1 dereferenceable(16) %i.lz, i64 16, i1 false)
  %i.md = getelementptr inbounds nuw i8, ptr %.6650.us, i64 %i.lx ; 6 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.lx ; 3 uses
  %i.mf = and i32 %i.ly, 15                       ; 2 uses
  %i.mg = zext nneg i32 %i.mf to i64              ; 2 uses
  %.val483.us = load i16, ptr %i.me, align 1, !tbaa !7 ; 2 uses
  %i.mh = zext i16 %.val483.us to i64             ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 2 ; 2 uses
  %i.mj = sub nsw i64 0, %i.mh
  %i.mk = getelementptr inbounds i8, ptr %i.md, i64 %i.mj ; 4 uses
  %i.ml = icmp ne i32 %i.mf, 15
  %i.mm = icmp ugt i16 %.val483.us, 7
  %or.cond3.us = and i1 %i.ml, %i.mm
  br i1 %or.cond3.us, label %bb.bi, label %.loopexit598

bb.bi:                                            ; preds = %bb.bh
  %i.mn = load i64, ptr %i.mk, align 1
  store i64 %i.mn, ptr %i.md, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mq = load i64, ptr %i.mp, align 1
  store i64 %i.mq, ptr %i.mo, align 1
  %i.mr = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mt = load i16, ptr %i.ms, align 1
  store i16 %i.mt, ptr %i.mr, align 1
  %i.mu = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mg
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 4 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.me, i64 3 ; 2 uses
  %i.mx = load i8, ptr %i.mi, align 1, !tbaa !7
  %i.my = zext i8 %i.mx to i32                    ; 3 uses
  %i.mz = lshr i32 %i.my, 4                       ; 2 uses
  %i.na = zext nneg i32 %i.mz to i64
  %cond.us = icmp eq i32 %i.mz, 15
  br i1 %cond.us, label %._crit_edge, label %.lr.ph651.split.us, !llvm.loop !48

bb.bj:                                            ; preds = %bb.be
  %i.nb = icmp ult i64 %.1378, 8
  br i1 %i.nb, label %bb.bk, label %bb.bl, !prof !19

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %.10, align 1, !tbaa !7
  %i.nc = load i8, ptr %.1371, align 1, !tbaa !7
  store i8 %i.nc, ptr %.10, align 1, !tbaa !7
  %i.nd = getelementptr inbounds nuw i8, ptr %.1371, i64 1
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !7
  %i.nf = getelementptr inbounds nuw i8, ptr %.10, i64 1
  store i8 %i.ne, ptr %i.nf, align 1, !tbaa !7
  %i.ng = getelementptr inbounds nuw i8, ptr %.1371, i64 2
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !7
  %i.ni = getelementptr inbounds nuw i8, ptr %.10, i64 2
  store i8 %i.nh, ptr %i.ni, align 1, !tbaa !7
  %i.nj = getelementptr inbounds nuw i8, ptr %.1371, i64 3
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !7
  %i.nl = getelementptr inbounds nuw i8, ptr %.10, i64 3
  store i8 %i.nk, ptr %i.nl, align 1, !tbaa !7
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10inc32tableE, i64 %.1378
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !3
  %i.no = zext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw i8, ptr %.1371, i64 %i.no ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.10, i64 4
  %i.nr = load i32, ptr %i.np, align 1
  store i32 %i.nr, ptr %i.nq, align 1
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10dec64tableE, i64 %.1378
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !3
  %i.nu = sext i32 %i.nt to i64
  %i.nv = sub nsw i64 0, %i.nu
  %i.nw = getelementptr inbounds i8, ptr %i.np, i64 %i.nv
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.nx = load i64, ptr %.1371, align 1
  store i64 %i.nx, ptr %.10, align 1
  %i.ny = getelementptr inbounds nuw i8, ptr %.1371, i64 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.3373 = phi ptr [ %i.nw, %bb.bk ], [ %i.ny, %bb.bl ] ; 12 uses
  %.33731048 = ptrtoaddr ptr %.3373 to i64        ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.10, i64 8 ; 8 uses
  br i1 %i.ku, label %bb.bn, label %bb.bq, !prof !19

bb.bn:                                            ; preds = %bb.bm
  %i.oa = getelementptr inbounds i8, ptr %i.g, i64 -7 ; 4 uses
  %i.ob = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.oc = icmp ugt ptr %i.je, %i.ob
  br i1 %i.oc, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.od = icmp ult ptr %i.nz, %i.oa
  br i1 %i.od, label %.preheader593.preheader, label %bb.bp

.preheader593.preheader:                          ; preds = %bb.bo
  %i.oe = add i64 %i.a, %i.f
  %i.of = add i64 %i.oe, -7
  %i.og = add i64 %.101050, 16
  %umax1070 = tail call i64 @llvm.umax.i64(i64 %i.of, i64 %i.og)
  %i.oh = add i64 %umax1070, -9
  %i.oi = sub i64 %i.oh, %.101050                 ; 2 uses
  %i.oj = lshr i64 %i.oi, 3
  %i.ok = add nuw nsw i64 %i.oj, 1                ; 2 uses
  %min.iters.check1072 = icmp ult i64 %i.oi, 72
  br i1 %min.iters.check1072, label %.preheader593.preheader1209, label %vector.memcheck1068

vector.memcheck1068:                              ; preds = %.preheader593.preheader
  %9 = add i64 %.101050, 8
  %10 = sub i64 %9, %.33731048
  %diff.check1069 = icmp ult i64 %10, 32
  br i1 %diff.check1069, label %.preheader593.preheader1209, label %vector.ph1073

vector.ph1073:                                    ; preds = %vector.memcheck1068
  %n.vec1075 = and i64 %i.ok, 4611686018427387900 ; 3 uses
  %i.ol = shl i64 %n.vec1075, 3                   ; 2 uses
  %i.om = getelementptr i8, ptr %.3373, i64 %i.ol
  %i.on = getelementptr i8, ptr %i.nz, i64 %i.ol
  br label %vector.body1076

vector.body1076:                                  ; preds = %vector.body1076, %vector.ph1073
  %index1077 = phi i64 [ 0, %vector.ph1073 ], [ %index.next1082, %vector.body1076 ] ; 2 uses
  %i.oo = shl i64 %index1077, 3                   ; 2 uses
  %next.gep1078 = getelementptr i8, ptr %.3373, i64 %i.oo ; 2 uses
  %next.gep1079 = getelementptr i8, ptr %i.nz, i64 %i.oo ; 2 uses
  %i.op = getelementptr i8, ptr %next.gep1078, i64 16
  %wide.load1080 = load <2 x i64>, ptr %next.gep1078, align 1
  %wide.load1081 = load <2 x i64>, ptr %i.op, align 1
  %i.oq = getelementptr i8, ptr %next.gep1079, i64 16
  store <2 x i64> %wide.load1080, ptr %next.gep1079, align 1
  store <2 x i64> %wide.load1081, ptr %i.oq, align 1
  %index.next1082 = add nuw i64 %index1077, 4     ; 2 uses
  %i.or = icmp eq i64 %index.next1082, %n.vec1075
  br i1 %i.or, label %middle.block1083, label %vector.body1076, !llvm.loop !57

middle.block1083:                                 ; preds = %vector.body1076
  %cmp.n1084 = icmp eq i64 %i.ok, %n.vec1075
  br i1 %cmp.n1084, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517, label %.preheader593.preheader1209

.preheader593.preheader1209:                      ; preds = %vector.memcheck1068, %.preheader593.preheader, %middle.block1083
  %.09.i515.ph = phi ptr [ %.3373, %vector.memcheck1068 ], [ %.3373, %.preheader593.preheader ], [ %i.om, %middle.block1083 ]
  %.0.i516.ph = phi ptr [ %i.nz, %vector.memcheck1068 ], [ %i.nz, %.preheader593.preheader ], [ %i.on, %middle.block1083 ]
  br label %.preheader593

.preheader593:                                    ; preds = %.preheader593.preheader1209, %.preheader593
  %.09.i515 = phi ptr [ %i.ou, %.preheader593 ], [ %.09.i515.ph, %.preheader593.preheader1209 ] ; 2 uses
  %.0.i516 = phi ptr [ %i.ot, %.preheader593 ], [ %.0.i516.ph, %.preheader593.preheader1209 ] ; 2 uses
  %i.os = load i64, ptr %.09.i515, align 1
  store i64 %i.os, ptr %.0.i516, align 1
  %i.ot = getelementptr inbounds nuw i8, ptr %.0.i516, i64 8 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.09.i515, i64 8
  %i.ov = icmp ult ptr %i.ot, %i.oa
  br i1 %i.ov, label %.preheader593, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517, !llvm.loop !58

_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517: ; preds = %.preheader593, %middle.block1083
  %i.ow = ptrtoint ptr %i.oa to i64
  %i.ox = ptrtoint ptr %i.nz to i64
  %i.oy = sub i64 %i.ow, %i.ox
  %i.oz = getelementptr inbounds i8, ptr %.3373, i64 %i.oy
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517, %bb.bo
  %.4374 = phi ptr [ %i.oz, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517 ], [ %.3373, %bb.bo ] ; 6 uses
  %.15 = phi ptr [ %i.oa, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517 ], [ %i.nz, %bb.bo ] ; 7 uses
  %i.pa = icmp ult ptr %.15, %i.je
  br i1 %i.pa, label %iter.check1109, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520

iter.check1109:                                   ; preds = %bb.bp
  %i.pb = add i64 %.12392, %.101050
  %i.pc = add i64 %i.a, %i.f
  %i.pd = add i64 %i.pc, -7
  %i.pe = add i64 %.101050, 8
  %umax1089 = tail call i64 @llvm.umax.i64(i64 %i.pd, i64 %i.pe)
  %i.pf = sub i64 %i.pb, %umax1089                ; 7 uses
  %min.iters.check1091 = icmp ult i64 %i.pf, 4
  br i1 %min.iters.check1091, label %.lr.ph669.preheader, label %vector.memcheck1087

vector.memcheck1087:                              ; preds = %iter.check1109
  %11 = add i64 %.101050, 8
  %12 = sub i64 %11, %.33731048
  %diff.check1088 = icmp ult i64 %12, 32
  br i1 %diff.check1088, label %.lr.ph669.preheader, label %vector.main.loop.iter.check1092

vector.main.loop.iter.check1092:                  ; preds = %vector.memcheck1087
  %min.iters.check1093 = icmp ult i64 %i.pf, 32
  br i1 %min.iters.check1093, label %vec.epilog.ph1113, label %vector.ph1094

vector.ph1094:                                    ; preds = %vector.main.loop.iter.check1092
  %n.mod.vf1095 = and i64 %i.pf, 28
  %n.vec1096 = and i64 %i.pf, -32                 ; 5 uses
  %i.pg = getelementptr i8, ptr %.15, i64 %n.vec1096
  %i.ph = getelementptr i8, ptr %.4374, i64 %n.vec1096
  br label %vector.body1097

vector.body1097:                                  ; preds = %vector.body1097, %vector.ph1094
  %index1098 = phi i64 [ 0, %vector.ph1094 ], [ %index.next1103, %vector.body1097 ] ; 3 uses
  %next.gep1099 = getelementptr i8, ptr %.15, i64 %index1098 ; 2 uses
  %next.gep1100 = getelementptr i8, ptr %.4374, i64 %index1098 ; 2 uses
  %i.pi = getelementptr i8, ptr %next.gep1100, i64 16
  %wide.load1101 = load <16 x i8>, ptr %next.gep1100, align 1, !tbaa !7
  %wide.load1102 = load <16 x i8>, ptr %i.pi, align 1, !tbaa !7
  %i.pj = getelementptr i8, ptr %next.gep1099, i64 16
  store <16 x i8> %wide.load1101, ptr %next.gep1099, align 1, !tbaa !7
  store <16 x i8> %wide.load1102, ptr %i.pj, align 1, !tbaa !7
  %index.next1103 = add nuw i64 %index1098, 32    ; 2 uses
  %i.pk = icmp eq i64 %index.next1103, %n.vec1096
  br i1 %i.pk, label %middle.block1104, label %vector.body1097, !llvm.loop !59

middle.block1104:                                 ; preds = %vector.body1097
  %cmp.n1105 = icmp eq i64 %i.pf, %n.vec1096
  br i1 %cmp.n1105, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, label %vec.epilog.iter.check1111

vec.epilog.iter.check1111:                        ; preds = %middle.block1104
  %min.epilog.iters.check1112 = icmp eq i64 %n.mod.vf1095, 0
  br i1 %min.epilog.iters.check1112, label %.lr.ph669.preheader, label %vec.epilog.ph1113, !prof !45

vec.epilog.ph1113:                                ; preds = %vector.main.loop.iter.check1092, %vec.epilog.iter.check1111
  %vec.epilog.resume.val1106 = phi i64 [ %n.vec1096, %vec.epilog.iter.check1111 ], [ 0, %vector.main.loop.iter.check1092 ]
  %n.vec1115 = and i64 %i.pf, -4                  ; 4 uses
  %i.pl = getelementptr i8, ptr %.15, i64 %n.vec1115
  %i.pm = getelementptr i8, ptr %.4374, i64 %n.vec1115
  br label %vec.epilog.vector.body1116

vec.epilog.vector.body1116:                       ; preds = %vec.epilog.vector.body1116, %vec.epilog.ph1113
  %index1117 = phi i64 [ %vec.epilog.resume.val1106, %vec.epilog.ph1113 ], [ %index.next1121, %vec.epilog.vector.body1116 ] ; 3 uses
  %next.gep1118 = getelementptr i8, ptr %.15, i64 %index1117
  %next.gep1119 = getelementptr i8, ptr %.4374, i64 %index1117
  %wide.load1120 = load <4 x i8>, ptr %next.gep1119, align 1, !tbaa !7
  store <4 x i8> %wide.load1120, ptr %next.gep1118, align 1, !tbaa !7
  %index.next1121 = add nuw i64 %index1117, 4     ; 2 uses
  %i.pn = icmp eq i64 %index.next1121, %n.vec1115
  br i1 %i.pn, label %vec.epilog.middle.block1122, label %vec.epilog.vector.body1116, !llvm.loop !60

vec.epilog.middle.block1122:                      ; preds = %vec.epilog.vector.body1116
  %cmp.n1123 = icmp eq i64 %i.pf, %n.vec1115
  br i1 %cmp.n1123, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, label %.lr.ph669.preheader

.lr.ph669.preheader:                              ; preds = %vector.memcheck1087, %iter.check1109, %vec.epilog.iter.check1111, %vec.epilog.middle.block1122
  %.16667.ph = phi ptr [ %.15, %iter.check1109 ], [ %.15, %vector.memcheck1087 ], [ %i.pg, %vec.epilog.iter.check1111 ], [ %i.pl, %vec.epilog.middle.block1122 ]
  %.5375666.ph = phi ptr [ %.4374, %iter.check1109 ], [ %.4374, %vector.memcheck1087 ], [ %i.ph, %vec.epilog.iter.check1111 ], [ %i.pm, %vec.epilog.middle.block1122 ]
  br label %.lr.ph669

.lr.ph669:                                        ; preds = %.lr.ph669.preheader, %.lr.ph669
  %.16667 = phi ptr [ %i.pq, %.lr.ph669 ], [ %.16667.ph, %.lr.ph669.preheader ] ; 2 uses
  %.5375666 = phi ptr [ %i.po, %.lr.ph669 ], [ %.5375666.ph, %.lr.ph669.preheader ] ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.5375666, i64 1
  %i.pp = load i8, ptr %.5375666, align 1, !tbaa !7
  %i.pq = getelementptr inbounds nuw i8, ptr %.16667, i64 1 ; 2 uses
  store i8 %i.pp, ptr %.16667, align 1, !tbaa !7
  %i.pr = icmp ult ptr %i.pq, %i.je
  br i1 %i.pr, label %.lr.ph669, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, !llvm.loop !61

bb.bq:                                            ; preds = %bb.bm
  %i.ps = load i64, ptr %.3373, align 1
  store i64 %i.ps, ptr %i.nz, align 1
  %i.pt = icmp ugt i64 %.12392, 16
  br i1 %i.pt, label %bb.br, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520

bb.br:                                            ; preds = %bb.bq
  %i.pu = getelementptr inbounds nuw i8, ptr %.10, i64 16 ; 4 uses
  %i.pv = add i64 %.12392, %.101050
  %i.pw = add i64 %.101050, 24
  %umax1051 = tail call i64 @llvm.umax.i64(i64 %i.pv, i64 %i.pw)
  %i.px = add i64 %umax1051, -17
  %i.py = sub i64 %i.px, %.101050                 ; 2 uses
  %i.pz = lshr i64 %i.py, 3
  %i.qa = add nuw nsw i64 %i.pz, 1                ; 2 uses
  %min.iters.check1053 = icmp ult i64 %i.py, 72
  br i1 %min.iters.check1053, label %scalar.ph1052.preheader, label %vector.memcheck1046

vector.memcheck1046:                              ; preds = %bb.br
  %13 = add i64 %.101047, 8
  %14 = sub i64 %13, %.33731048
  %diff.check1049 = icmp ult i64 %14, 32
  br i1 %diff.check1049, label %scalar.ph1052.preheader, label %vector.ph1054

vector.ph1054:                                    ; preds = %vector.memcheck1046
  %n.vec1056 = and i64 %i.qa, 4611686018427387900 ; 3 uses
  %i.qb = shl i64 %n.vec1056, 3                   ; 2 uses
  %i.qc = getelementptr i8, ptr %.3373, i64 %i.qb
  %i.qd = getelementptr i8, ptr %i.pu, i64 %i.qb
  br label %vector.body1057

vector.body1057:                                  ; preds = %vector.body1057, %vector.ph1054
  %index1058 = phi i64 [ 0, %vector.ph1054 ], [ %index.next1063, %vector.body1057 ] ; 2 uses
  %i.qe = shl i64 %index1058, 3                   ; 2 uses
  %next.gep1059 = getelementptr i8, ptr %.3373, i64 %i.qe ; 2 uses
  %next.gep1060 = getelementptr i8, ptr %i.pu, i64 %i.qe ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %next.gep1059, i64 8
  %i.qg = getelementptr inbounds nuw i8, ptr %next.gep1059, i64 24
  %wide.load1061 = load <2 x i64>, ptr %i.qf, align 1
  %wide.load1062 = load <2 x i64>, ptr %i.qg, align 1
  %i.qh = getelementptr i8, ptr %next.gep1060, i64 16
  store <2 x i64> %wide.load1061, ptr %next.gep1060, align 1
  store <2 x i64> %wide.load1062, ptr %i.qh, align 1
  %index.next1063 = add nuw i64 %index1058, 4     ; 2 uses
  %i.qi = icmp eq i64 %index.next1063, %n.vec1056
  br i1 %i.qi, label %middle.block1064, label %vector.body1057, !llvm.loop !62

middle.block1064:                                 ; preds = %vector.body1057
  %cmp.n1065 = icmp eq i64 %i.qa, %n.vec1056
  br i1 %cmp.n1065, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, label %scalar.ph1052.preheader

scalar.ph1052.preheader:                          ; preds = %vector.memcheck1046, %bb.br, %middle.block1064
  %.3373.pn.ph = phi ptr [ %.3373, %vector.memcheck1046 ], [ %.3373, %bb.br ], [ %i.qc, %middle.block1064 ]
  %.0.i519.ph = phi ptr [ %i.pu, %vector.memcheck1046 ], [ %i.pu, %bb.br ], [ %i.qd, %middle.block1064 ]
  br label %scalar.ph1052

scalar.ph1052:                                    ; preds = %scalar.ph1052.preheader, %scalar.ph1052
  %.3373.pn = phi ptr [ %.09.i518, %scalar.ph1052 ], [ %.3373.pn.ph, %scalar.ph1052.preheader ]
  %.0.i519 = phi ptr [ %i.qk, %scalar.ph1052 ], [ %.0.i519.ph, %scalar.ph1052.preheader ] ; 2 uses
  %.09.i518 = getelementptr inbounds nuw i8, ptr %.3373.pn, i64 8 ; 2 uses
  %i.qj = load i64, ptr %.09.i518, align 1
  store i64 %i.qj, ptr %.0.i519, align 1
  %i.qk = getelementptr inbounds nuw i8, ptr %.0.i519, i64 8 ; 2 uses
  %i.ql = icmp ult ptr %i.qk, %i.je
  br i1 %i.ql, label %scalar.ph1052, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520, !llvm.loop !63

_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit520: ; preds = %scalar.ph1052, %.lr.ph669, %middle.block1064, %middle.block1104, %vec.epilog.middle.block1122, %bb.bp, %bb.bq
  br label %.preheader596, !llvm.loop !48

bb.bs:                                            ; preds = %._crit_edge765, %.loopexit592
  %.pre-phi = phi i64 [ %.pre, %._crit_edge765 ], [ %i.t, %.loopexit592 ]
  %i.qm = sub i64 %.pre-phi, %i.u
  %i.qn = trunc i64 %i.qm to i32
  br label %bb.bt

_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread: ; preds = %bb.r, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494, %bb.i, %bb.l, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit, %.thread567, %bb.aa, %bb.p, %bb.j, %bb.q, %bb.ak, %bb.au, %bb.at, %._crit_edge, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505, %bb.am, %bb.bn, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514, %.loopexit606, %bb.ay, %bb.ar
  %.11549 = phi ptr [ %.6544, %bb.ar ], [ %.10548, %.loopexit606 ], [ %.10548, %bb.ay ], [ %.10548, %bb.bn ], [ %i.io, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit514 ], [ %i.aq, %bb.j ], [ %i.bz, %bb.q ], [ %i.ga, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit505 ], [ %i.in, %bb.au ], [ %i.ga, %bb.am ], [ %.lcssa616, %._crit_edge ], [ %i.fz, %bb.ak ], [ %i.im, %bb.at ], [ %i.ca, %bb.r ], [ %i.ca, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit494 ], [ %i.ai, %bb.i ], [ %i.ar, %bb.l ], [ %i.ar, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit ], [ %.3542, %bb.aa ], [ %i.by, %bb.p ], [ %.3542, %.thread567 ]
  %i.qo = ptrtoint ptr %.11549 to i64
  %i.qp = ptrtoint ptr %0 to i64
  %.neg = sub i64 %i.qp, %i.qo
  %i.qq = trunc i64 %.neg to i32
  %i.qr = add nsw i32 %i.qq, -1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, %bb.c, %bb.e, %bb.d, %bb.f, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %bb.d ], [ 0, %bb.c ], [ %i.r, %bb.e ], [ -1, %bb.f ], [ %i.qr, %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread ], [ %i.qn, %bb.bs ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz427LZ4_decompress_safe_partialEPKcPciii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %3, i32 %4)
  %i.b = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.a, i32 noundef 1, i32 noundef 0, ptr noundef %1, ptr noundef null, i64 noundef 0)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = ptrtoint ptr %1 to i64
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i, %bb.a
  %.0115.i = phi ptr [ %0, %bb.a ], [ %.3.i, %._crit_edge.i ] ; 2 uses
  %.080.i = phi ptr [ %1, %bb.a ], [ %i.bw, %._crit_edge.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0115.i, i64 1 ; 2 uses
  %i.f = load i8, ptr %.0115.i, align 1, !tbaa !7
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 4                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = icmp eq i32 %i.h, 15
  br i1 %i.j, label %.preheader140.i, label %bb.b

.preheader140.i:                                  ; preds = %.thread.i, %.preheader140.i
  %i.k = phi ptr [ %i.n, %.preheader140.i ], [ %i.e, %.thread.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %.preheader140.i ], [ 0, %.thread.i ]
  %i.l = load i8, ptr %i.k, align 1, !tbaa !7     ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.o = add i64 %.0.i.i, %i.m                    ; 2 uses
  %i.p = icmp eq i8 %i.l, -1
  br i1 %i.p, label %.preheader140.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i: ; preds = %.preheader140.i
  %i.q = add i64 %i.o, 15
  br label %bb.b

bb.b:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i, %.thread.i
  %.1.i = phi ptr [ %i.n, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i ], [ %i.e, %.thread.i ] ; 2 uses
  %.086.i = phi i64 [ %i.q, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i ], [ %i.i, %.thread.i ] ; 4 uses
  %i.r = ptrtoint ptr %.080.i to i64
  %i.s = sub i64 %i.c, %i.r
  %i.t = icmp ult i64 %i.s, %.086.i
  br i1 %i.t, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.080.i, ptr nonnull align 1 %.1.i, i64 %.086.i, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.080.i, i64 %.086.i ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.086.i ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.c, %i.w                       ; 2 uses
  %i.y = icmp ult i64 %i.x, 12
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq ptr %i.u, %i.b
  br i1 %i.z, label %bb.h, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = and i32 %i.g, 15                        ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %.val.i = load i16, ptr %i.v, align 1, !tbaa !7 ; 2 uses
  %i.ac = zext i16 %.val.i to i64                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  %i.ae = icmp eq i32 %i.aa, 15
  br i1 %i.ae, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %i.af = phi ptr [ %i.ai, %.preheader.i ], [ %i.ad, %bb.e ] ; 2 uses
  %.0.i108.i = phi i64 [ %i.aj, %.preheader.i ], [ 0, %bb.e ]
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !7   ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.aj = add i64 %.0.i108.i, %i.ah               ; 2 uses
  %i.ak = icmp eq i8 %i.ag, -1
  br i1 %i.ak, label %.preheader.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i: ; preds = %.preheader.i
  %i.al = add i64 %i.aj, 15
  br label %bb.f

bb.f:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i, %bb.e
  %.3.i = phi ptr [ %i.ai, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i ], [ %i.ad, %bb.e ]
  %.092.i = phi i64 [ %i.al, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i ], [ %i.ab, %bb.e ] ; 5 uses
  %i.am = add i64 %.092.i, 4                      ; 9 uses
  %i.an = icmp ult i64 %i.x, %i.am
  %i.ao = sub i64 %i.w, %i.d
  %.not.i = icmp ult i64 %i.ao, %i.ac
  %or.cond = select i1 %i.an, i1 true, i1 %.not.i
  br i1 %or.cond, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = sub nsw i64 0, %i.ac
  %i.aq = getelementptr inbounds i8, ptr %i.u, i64 %i.ap ; 7 uses
  %.not147.i = icmp eq i64 %i.am, 0
  br i1 %.not147.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ugt i64 %.092.i, -5
  %diff.check = icmp ult i16 %.val.i, 32
  %or.cond32 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond32, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %i.am, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.am, 28
  %n.vec = and i64 %i.am, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <16 x i8>, ptr %i.ar, align 1, !tbaa !7
  %wide.load25 = load <16 x i8>, ptr %i.as, align 1, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <16 x i8> %wide.load, ptr %i.at, align 1, !tbaa !7
  store <16 x i8> %wide.load25, ptr %i.au, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec27 = and i64 %i.am, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index28
  %wide.load29 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 %index28
  store <4 x i8> %wide.load29, ptr %i.ax, align 1, !tbaa !7
  %index.next30 = add nuw i64 %index28, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next30, %n.vec27
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %i.am, %n.vec27
  br i1 %cmp.n31, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0146.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec27, %vec.epilog.middle.block ] ; 3 uses
  %i.az = add i64 %.092.i, 3
  %i.ba = sub i64 %i.az, %.0146.i.ph
  %xtraiter = and i64 %.092.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0146.i.prol = phi i64 [ %i.be, %.lr.ph.i.prol ], [ %.0146.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0146.i.prol
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0146.i.prol
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !7
  %i.be = add nuw i64 %.0146.i.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !66

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0146.i.unr = phi i64 [ %.0146.i.ph, %.lr.ph.i.preheader ], [ %i.be, %.lr.ph.i.prol ]
  %i.bf = icmp ult i64 %i.ba, 3
  br i1 %i.bf, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0146.i = phi i64 [ %i.bv, %.lr.ph.i ], [ %.0146.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0146.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0146.i
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !7
  %i.bj = add nuw i64 %.0146.i, 1                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bj
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !7
  %i.bn = add nuw i64 %.0146.i, 2                 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bn
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !7
  %i.br = add nuw i64 %.0146.i, 3                 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !7
  %i.bv = add nuw i64 %.0146.i, 4
  %exitcond.not.i.3 = icmp eq i64 %.0146.i, %.092.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !68

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.am ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.c, %i.bx
  %i.bz = icmp ult i64 %i.by, 5
  br i1 %i.bz, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, label %.thread.i

bb.h:                                             ; preds = %bb.d
  %i.ca = ptrtoint ptr %i.v to i64
  %i.cb = ptrtoint ptr %0 to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = trunc i64 %i.cc to i32
  br label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit

_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit: ; preds = %bb.b, %bb.f, %._crit_edge.i, %bb.d, %bb.h
  %.5.i = phi i32 [ -1, %bb.d ], [ %i.cd, %bb.h ], [ -1, %._crit_edge.i ], [ -1, %bb.f ], [ -1, %bb.b ]
  ret i32 %.5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz433LZ4_decompress_safe_withPrefix64kEPKcPcii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -65536
  %i.b = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef null, i64 noundef 0)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_ZN10duckdb_lz433LZ4_decompress_fast_withPrefix64kEPKcPci(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -65536
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i, %bb.a
  %.0115.i = phi ptr [ %0, %bb.a ], [ %.3.i, %._crit_edge.i ] ; 2 uses
  %.080.i = phi ptr [ %1, %bb.a ], [ %i.bx, %._crit_edge.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0115.i, i64 1 ; 2 uses
  %i.g = load i8, ptr %.0115.i, align 1, !tbaa !7
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 4                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = icmp eq i32 %i.i, 15
  br i1 %i.k, label %.preheader140.i, label %bb.b

.preheader140.i:                                  ; preds = %.thread.i, %.preheader140.i
  %i.l = phi ptr [ %i.o, %.preheader140.i ], [ %i.f, %.thread.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.p, %.preheader140.i ], [ 0, %.thread.i ]
  %i.m = load i8, ptr %i.l, align 1, !tbaa !7     ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %i.p = add i64 %.0.i.i, %i.n                    ; 2 uses
  %i.q = icmp eq i8 %i.m, -1
  br i1 %i.q, label %.preheader140.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i: ; preds = %.preheader140.i
  %i.r = add i64 %i.p, 15
  br label %bb.b

bb.b:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i, %.thread.i
  %.1.i = phi ptr [ %i.o, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i ], [ %i.f, %.thread.i ] ; 2 uses
  %.086.i = phi i64 [ %i.r, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i ], [ %i.j, %.thread.i ] ; 4 uses
  %i.s = ptrtoint ptr %.080.i to i64
  %i.t = sub i64 %i.d, %i.s
  %i.u = icmp ult i64 %i.t, %.086.i
  br i1 %i.u, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.080.i, ptr nonnull align 1 %.1.i, i64 %.086.i, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.080.i, i64 %.086.i ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.086.i ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.d, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, 12
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq ptr %i.v, %i.b
  br i1 %i.aa, label %bb.h, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = and i32 %i.h, 15                        ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %.val.i = load i16, ptr %i.w, align 1, !tbaa !7 ; 2 uses
  %i.ad = zext i16 %.val.i to i64                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %i.af = icmp eq i32 %i.ab, 15
  br i1 %i.af, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %i.ag = phi ptr [ %i.aj, %.preheader.i ], [ %i.ae, %bb.e ] ; 2 uses
  %.0.i108.i = phi i64 [ %i.ak, %.preheader.i ], [ 0, %bb.e ]
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !7   ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.ak = add i64 %.0.i108.i, %i.ai               ; 2 uses
  %i.al = icmp eq i8 %i.ah, -1
  br i1 %i.al, label %.preheader.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i: ; preds = %.preheader.i
  %i.am = add i64 %i.ak, 15
  br label %bb.f

bb.f:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i, %bb.e
  %.3.i = phi ptr [ %i.aj, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i ], [ %i.ae, %bb.e ]
  %.092.i = phi i64 [ %i.am, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i ], [ %i.ac, %bb.e ] ; 5 uses
  %i.an = add i64 %.092.i, 4                      ; 9 uses
  %i.ao = icmp ult i64 %i.y, %i.an
  %i.ap = sub i64 %i.x, %i.e
  %.not.i = icmp ult i64 %i.ap, %i.ad
  %or.cond = select i1 %i.ao, i1 true, i1 %.not.i
  br i1 %or.cond, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = sub nsw i64 0, %i.ad
  %i.ar = getelementptr inbounds i8, ptr %i.v, i64 %i.aq ; 7 uses
  %.not147.i = icmp eq i64 %i.an, 0
  br i1 %.not147.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ugt i64 %.092.i, -5
  %diff.check = icmp ult i16 %.val.i, 32
  %or.cond32 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond32, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %i.an, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.an, 28
  %n.vec = and i64 %i.an, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <16 x i8>, ptr %i.as, align 1, !tbaa !7
  %wide.load25 = load <16 x i8>, ptr %i.at, align 1, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %wide.load, ptr %i.au, align 1, !tbaa !7
  store <16 x i8> %wide.load25, ptr %i.av, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec27 = and i64 %i.an, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index28
  %wide.load29 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 %index28
  store <4 x i8> %wide.load29, ptr %i.ay, align 1, !tbaa !7
  %index.next30 = add nuw i64 %index28, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next30, %n.vec27
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %i.an, %n.vec27
  br i1 %cmp.n31, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0146.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec27, %vec.epilog.middle.block ] ; 3 uses
  %i.ba = add i64 %.092.i, 3
  %i.bb = sub i64 %i.ba, %.0146.i.ph
  %xtraiter = and i64 %.092.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0146.i.prol = phi i64 [ %i.bf, %.lr.ph.i.prol ], [ %.0146.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0146.i.prol
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0146.i.prol
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !7
  %i.bf = add nuw i64 %.0146.i.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !71

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0146.i.unr = phi i64 [ %.0146.i.ph, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i.prol ]
  %i.bg = icmp ult i64 %i.bb, 3
  br i1 %i.bg, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0146.i = phi i64 [ %i.bw, %.lr.ph.i ], [ %.0146.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0146.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0146.i
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !7
  %i.bk = add nuw i64 %.0146.i, 1                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bk
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !7
  %i.bo = add nuw i64 %.0146.i, 2                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !7
  %i.bs = add nuw i64 %.0146.i, 3                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !7
  %i.bw = add nuw i64 %.0146.i, 4
  %exitcond.not.i.3 = icmp eq i64 %.0146.i, %.092.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !72

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.an ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.d, %i.by
  %i.ca = icmp ult i64 %i.bz, 5
  br i1 %i.ca, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, label %.thread.i

bb.h:                                             ; preds = %bb.d
  %i.cb = ptrtoint ptr %i.w to i64
  %i.cc = ptrtoint ptr %0 to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = trunc i64 %i.cd to i32
  br label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit

_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit: ; preds = %bb.b, %bb.f, %._crit_edge.i, %bb.d, %bb.h
  %.5.i = phi i32 [ -1, %bb.d ], [ %i.ce, %bb.h ], [ -1, %._crit_edge.i ], [ -1, %bb.f ], [ -1, %bb.b ]
  ret i32 %.5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN10duckdb_lz432LZ4_decompress_safe_forceExtDictEPKcPciiPKvm(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 2, ptr noundef %1, ptr noundef %4, i64 noundef %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN10duckdb_lz440LZ4_decompress_safe_partial_forceExtDictEPKcPciiiPKvm(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %3, i32 %4)
  %i.b = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.a, i32 noundef 1, i32 noundef 2, ptr noundef %1, ptr noundef %5, i64 noundef %6)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @_ZN10duckdb_lz422LZ4_createStreamDecodeEv() local_unnamed_addr #13 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #19
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i32 @_ZN10duckdb_lz420LZ4_freeStreamDecodeEPNS_18LZ4_streamDecode_uE(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @_ZN10duckdb_lz419LZ4_setStreamDecodeEPNS_18LZ4_streamDecode_uEPKci(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.a, ptr %i.b, align 8, !tbaa !73
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !76
  store ptr null, ptr %0, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !78
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2113994767) i32 @_ZN10duckdb_lz425LZ4_decoderRingBufferSizeEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ugt i32 %0, 2113929216
  %i.a = tail call i32 @llvm.umax.i32(i32 %0, i32 16)
  %i.b = add nuw nsw i32 %i.a, 65550
  %.0 = select i1 %or.cond, i32 0, i32 %i.b
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz428LZ4_decompress_safe_continueEPNS_18LZ4_streamDecode_uEPKcPcii(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !73   ; 7 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef %2, ptr noundef null, i64 noundef 0) ; 4 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %i.d to i64                ; 2 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !76
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76   ; 2 uses
  %i.k = icmp eq ptr %i.j, %2
  br i1 %i.k, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.b, 65534
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds i8, ptr %2, i64 -65536
  %i.n = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.m, ptr noundef null, i64 noundef 0)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !78   ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = sub nsw i64 0, %i.b
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r
  %i.t = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.s, ptr noundef null, i64 noundef 0)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8, !tbaa !77
  %i.v = sub nsw i64 0, %i.b
  %i.w = getelementptr inbounds i8, ptr %2, i64 %i.v
  %i.x = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %i.w, ptr noundef readonly %i.u, i64 noundef range(i64 1, 0) %i.p)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %.0 = phi i32 [ %i.n, %bb.f ], [ %i.t, %bb.h ], [ %i.x, %bb.i ] ; 4 uses
  %i.y = icmp slt i32 %.0, 1
  br i1 %i.y, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !73
  %i.ab = add i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !73
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.z
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !76
  br label %bb.n

bb.l:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.ae, align 8, !tbaa !78
  %i.af = sub i64 0, %i.b
  %i.ag = getelementptr inbounds i8, ptr %i.j, i64 %i.af ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !77
  %i.ah = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 2, ptr noundef %2, ptr noundef nonnull readonly %i.ag, i64 noundef %i.b) ; 4 uses
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = zext nneg i32 %i.ah to i64              ; 2 uses
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  store ptr %i.ak, ptr %i.i, align 8, !tbaa !76
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.m, %bb.k, %bb.l, %bb.j, %bb.b
  %.058 = phi i32 [ %.0, %bb.j ], [ %i.ah, %bb.l ], [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.0, %bb.k ], [ %i.ah, %bb.m ]
  ret i32 %.058
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz428LZ4_decompress_fast_continueEPNS_18LZ4_streamDecode_uEPKcPci(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !73   ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %3 to i64                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.g = ptrtoint ptr %2 to i64
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %._crit_edge.i.i, %bb.b
  %.0115.i.i = phi ptr [ %1, %bb.b ], [ %.3.i.i, %._crit_edge.i.i ] ; 2 uses
  %.080.i.i = phi ptr [ %2, %bb.b ], [ %i.bz, %._crit_edge.i.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0115.i.i, i64 1 ; 2 uses
  %i.i = load i8, ptr %.0115.i.i, align 1, !tbaa !7
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = lshr i32 %i.j, 4                         ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = icmp eq i32 %i.k, 15
  br i1 %i.m, label %.preheader140.i.i, label %bb.c

.preheader140.i.i:                                ; preds = %.thread.i.i, %.preheader140.i.i
  %i.n = phi ptr [ %i.q, %.preheader140.i.i ], [ %i.h, %.thread.i.i ] ; 2 uses
  %.0.i.i.i = phi i64 [ %i.r, %.preheader140.i.i ], [ 0, %.thread.i.i ]
  %i.o = load i8, ptr %i.n, align 1, !tbaa !7     ; 2 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.r = add i64 %.0.i.i.i, %i.p                  ; 2 uses
  %i.s = icmp eq i8 %i.o, -1
  br i1 %i.s, label %.preheader140.i.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i: ; preds = %.preheader140.i.i
  %i.t = add i64 %i.r, 15
  br label %bb.c

bb.c:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i, %.thread.i.i
  %.1.i.i = phi ptr [ %i.q, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i ], [ %i.h, %.thread.i.i ] ; 2 uses
  %.086.i.i = phi i64 [ %i.t, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i ], [ %i.l, %.thread.i.i ] ; 4 uses
  %i.u = ptrtoint ptr %.080.i.i to i64
  %i.v = sub i64 %i.f, %i.u
  %i.w = icmp ult i64 %i.v, %.086.i.i
  br i1 %i.w, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.080.i.i, ptr nonnull align 1 %.1.i.i, i64 %.086.i.i, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.080.i.i, i64 %.086.i.i ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %.086.i.i ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.f, %i.z                      ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 12
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.x, %i.e
  br i1 %i.ac, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ad = and i32 %i.j, 15                        ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %.val.i.i = load i16, ptr %i.y, align 1, !tbaa !7 ; 2 uses
  %i.af = zext i16 %.val.i.i to i64               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.ah = icmp eq i32 %i.ad, 15
  br i1 %i.ah, label %.preheader.i.i, label %bb.g

.preheader.i.i:                                   ; preds = %bb.f, %.preheader.i.i
  %i.ai = phi ptr [ %i.al, %.preheader.i.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.0.i108.i.i = phi i64 [ %i.am, %.preheader.i.i ], [ 0, %bb.f ]
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !7   ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.am = add i64 %.0.i108.i.i, %i.ak             ; 2 uses
  %i.an = icmp eq i8 %i.aj, -1
  br i1 %i.an, label %.preheader.i.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i: ; preds = %.preheader.i.i
  %i.ao = add i64 %i.am, 15
  br label %bb.g

bb.g:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i, %bb.f
  %.3.i.i = phi ptr [ %i.al, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i ], [ %i.ag, %bb.f ]
  %.092.i.i = phi i64 [ %i.ao, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i ], [ %i.ae, %bb.f ] ; 5 uses
  %i.ap = add i64 %.092.i.i, 4                    ; 9 uses
  %i.aq = icmp ult i64 %i.aa, %i.ap
  %i.ar = sub i64 %i.z, %i.g
  %.not.i.i = icmp ult i64 %i.ar, %i.af
  %or.cond.i = select i1 %i.aq, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = sub nsw i64 0, %i.af
  %i.at = getelementptr inbounds i8, ptr %i.x, i64 %i.as ; 7 uses
  %.not147.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not147.i.i, label %._crit_edge.i.i, label %iter.check232

iter.check232:                                    ; preds = %bb.h
  %min.iters.check218 = icmp ugt i64 %.092.i.i, -5
  %diff.check217 = icmp ult i16 %.val.i.i, 32
  %or.cond = select i1 %min.iters.check218, i1 true, i1 %diff.check217
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check219

vector.main.loop.iter.check219:                   ; preds = %iter.check232
  %min.iters.check220 = icmp ult i64 %i.ap, 32
  br i1 %min.iters.check220, label %vec.epilog.ph236, label %vector.ph221

vector.ph221:                                     ; preds = %vector.main.loop.iter.check219
  %n.mod.vf222 = and i64 %i.ap, 28
  %n.vec223 = and i64 %i.ap, -32                  ; 4 uses
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph221
  %index225 = phi i64 [ 0, %vector.ph221 ], [ %index.next228, %vector.body224 ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %index225 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load226 = load <16 x i8>, ptr %i.au, align 1, !tbaa !7
  %wide.load227 = load <16 x i8>, ptr %i.av, align 1, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 %index225 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <16 x i8> %wide.load226, ptr %i.aw, align 1, !tbaa !7
  store <16 x i8> %wide.load227, ptr %i.ax, align 1, !tbaa !7
  %index.next228 = add nuw i64 %index225, 32      ; 2 uses
  %i.ay = icmp eq i64 %index.next228, %n.vec223
  br i1 %i.ay, label %middle.block229, label %vector.body224, !llvm.loop !79

middle.block229:                                  ; preds = %vector.body224
  %cmp.n230 = icmp eq i64 %i.ap, %n.vec223
  br i1 %cmp.n230, label %._crit_edge.i.i, label %vec.epilog.iter.check234

vec.epilog.iter.check234:                         ; preds = %middle.block229
  %min.epilog.iters.check235 = icmp eq i64 %n.mod.vf222, 0
  br i1 %min.epilog.iters.check235, label %.lr.ph.i.i.preheader, label %vec.epilog.ph236, !prof !45

vec.epilog.ph236:                                 ; preds = %vector.main.loop.iter.check219, %vec.epilog.iter.check234
  %vec.epilog.resume.val231 = phi i64 [ %n.vec223, %vec.epilog.iter.check234 ], [ 0, %vector.main.loop.iter.check219 ]
  %n.vec238 = and i64 %i.ap, -4                   ; 3 uses
  br label %vec.epilog.vector.body239

vec.epilog.vector.body239:                        ; preds = %vec.epilog.vector.body239, %vec.epilog.ph236
  %index240 = phi i64 [ %vec.epilog.resume.val231, %vec.epilog.ph236 ], [ %index.next242, %vec.epilog.vector.body239 ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %index240
  %wide.load241 = load <4 x i8>, ptr %i.az, align 1, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 %index240
  store <4 x i8> %wide.load241, ptr %i.ba, align 1, !tbaa !7
  %index.next242 = add nuw i64 %index240, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next242, %n.vec238
  br i1 %i.bb, label %vec.epilog.middle.block243, label %vec.epilog.vector.body239, !llvm.loop !80

vec.epilog.middle.block243:                       ; preds = %vec.epilog.vector.body239
  %cmp.n244 = icmp eq i64 %i.ap, %n.vec238
  br i1 %cmp.n244, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check232, %vec.epilog.iter.check234, %vec.epilog.middle.block243
  %.0146.i.i.ph = phi i64 [ 0, %iter.check232 ], [ %n.vec223, %vec.epilog.iter.check234 ], [ %n.vec238, %vec.epilog.middle.block243 ] ; 3 uses
  %i.bc = add i64 %.092.i.i, 3
  %i.bd = sub i64 %i.bc, %.0146.i.i.ph
  %xtraiter270 = and i64 %.092.i.i, 3             ; 2 uses
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  br i1 %lcmp.mod271.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.0146.i.i.prol = phi i64 [ %i.bh, %.lr.ph.i.i.prol ], [ %.0146.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter272 = phi i64 [ %prol.iter272.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 %.0146.i.i.prol
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0146.i.i.prol
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !7
  %i.bh = add nuw i64 %.0146.i.i.prol, 1          ; 2 uses
  %prol.iter272.next = add i64 %prol.iter272, 1   ; 2 uses
  %prol.iter272.cmp.not = icmp eq i64 %prol.iter272.next, %xtraiter270
  br i1 %prol.iter272.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !81

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.0146.i.i.unr = phi i64 [ %.0146.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.prol ]
  %i.bi = icmp ult i64 %i.bd, 3
  br i1 %i.bi, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.0146.i.i = phi i64 [ %i.by, %.lr.ph.i.i ], [ %.0146.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 %.0146.i.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0146.i.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !7
  %i.bm = add nuw i64 %.0146.i.i, 1               ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !7
  %i.bq = add nuw i64 %.0146.i.i, 2               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bq
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !7
  %i.bu = add nuw i64 %.0146.i.i, 3               ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bu
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !7
  %i.by = add nuw i64 %.0146.i.i, 4
  %exitcond.not.i.i.3 = icmp eq i64 %.0146.i.i, %.092.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !82

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block229, %vec.epilog.middle.block243, %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ap ; 2 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.f, %i.ca
  %i.cc = icmp ult i64 %i.cb, 5
  br i1 %i.cc, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread, label %.thread.i.i

_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit: ; preds = %bb.e
  %i.cd = ptrtoint ptr %i.y to i64
  %i.ce = ptrtoint ptr %1 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = trunc i64 %i.cf to i32                  ; 3 uses
  %i.ch = icmp slt i32 %i.cg, 1
  br i1 %i.ch, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit
  store i64 %i.d, ptr %i.a, align 8, !tbaa !73
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.ci, align 8, !tbaa !76
  br label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread

bb.j:                                             ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !76 ; 3 uses
  %i.cl = icmp eq ptr %i.ck, %2
  br i1 %i.cl, label %bb.k, label %bb.y

bb.k:                                             ; preds = %bb.j
  %i.cm = load ptr, ptr %0, align 8, !tbaa !77
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !78 ; 2 uses
  %i.cp = sext i32 %3 to i64                      ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %2, i64 %i.cp ; 2 uses
  %i.cr = sub i64 0, %i.b
  %i.cs = getelementptr inbounds i8, ptr %2, i64 %i.cr ; 2 uses
  %i.ct = ptrtoint ptr %i.cq to i64               ; 3 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.co
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i, %bb.k
  %.0115.i = phi ptr [ %1, %bb.k ], [ %.3.i, %._crit_edge.i ] ; 2 uses
  %.080.i = phi ptr [ %2, %bb.k ], [ %i.ft, %._crit_edge.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0115.i, i64 1 ; 2 uses
  %i.cx = load i8, ptr %.0115.i, align 1, !tbaa !7
  %i.cy = zext i8 %i.cx to i32                    ; 2 uses
  %i.cz = lshr i32 %i.cy, 4                       ; 2 uses
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = icmp eq i32 %i.cz, 15
  br i1 %i.db, label %.preheader140.i, label %bb.l

.preheader140.i:                                  ; preds = %.thread.i, %.preheader140.i
  %i.dc = phi ptr [ %i.df, %.preheader140.i ], [ %i.cw, %.thread.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.dg, %.preheader140.i ], [ 0, %.thread.i ]
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !7   ; 2 uses
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 2 uses
  %i.dg = add i64 %.0.i.i, %i.de                  ; 2 uses
  %i.dh = icmp eq i8 %i.dd, -1
  br i1 %i.dh, label %.preheader140.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i: ; preds = %.preheader140.i
  %i.di = add i64 %i.dg, 15
  br label %bb.l

bb.l:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i, %.thread.i
  %.1.i = phi ptr [ %i.df, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i ], [ %i.cw, %.thread.i ] ; 2 uses
  %.086.i = phi i64 [ %i.di, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i ], [ %i.da, %.thread.i ] ; 4 uses
  %i.dj = ptrtoint ptr %.080.i to i64
  %i.dk = sub i64 %i.ct, %i.dj
  %i.dl = icmp ult i64 %i.dk, %.086.i
  br i1 %i.dl, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.080.i, ptr nonnull align 1 %.1.i, i64 %.086.i, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %.080.i, i64 %.086.i ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.086.i ; 3 uses
  %i.do = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.dp = sub i64 %i.ct, %i.do                    ; 2 uses
  %i.dq = icmp ult i64 %i.dp, 12
  br i1 %i.dq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dr = icmp eq ptr %i.dm, %i.cq
  br i1 %i.dr, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.ds = and i32 %i.cy, 15                       ; 2 uses
  %i.dt = zext nneg i32 %i.ds to i64
  %.val.i = load i16, ptr %i.dn, align 1, !tbaa !7
  %i.du = zext i16 %.val.i to i64                 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 2 ; 2 uses
  %i.dw = icmp eq i32 %i.ds, 15
  br i1 %i.dw, label %.preheader.i, label %bb.p

.preheader.i:                                     ; preds = %bb.o, %.preheader.i
  %i.dx = phi ptr [ %i.ea, %.preheader.i ], [ %i.dv, %bb.o ] ; 2 uses
  %.0.i108.i = phi i64 [ %i.eb, %.preheader.i ], [ 0, %bb.o ]
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !7   ; 2 uses
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 1 ; 2 uses
  %i.eb = add i64 %.0.i108.i, %i.dz               ; 2 uses
  %i.ec = icmp eq i8 %i.dy, -1
  br i1 %i.ec, label %.preheader.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i: ; preds = %.preheader.i
  %i.ed = add i64 %i.eb, 15
  br label %bb.p

bb.p:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i, %bb.o
  %.3.i = phi ptr [ %i.ea, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i ], [ %i.dv, %bb.o ]
  %.092.i = phi i64 [ %i.ed, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i ], [ %i.dt, %bb.o ]
  %i.ee = add i64 %.092.i, 4                      ; 6 uses
  %i.ef = icmp ult i64 %i.dp, %i.ee
  br i1 %i.ef, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eg = sub i64 %i.do, %i.cu                    ; 3 uses
  %i.eh = add i64 %i.eg, %i.co
  %.not.i = icmp ult i64 %i.eh, %i.du
  br i1 %.not.i, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ei = sub nsw i64 0, %i.du
  %i.ej = getelementptr inbounds i8, ptr %i.dm, i64 %i.ei
  %i.ek = icmp ult i64 %i.eg, %i.du
  br i1 %i.ek, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %.neg.i = sub nsw i64 %i.eg, %i.du              ; 3 uses
  %i.el = getelementptr inbounds i8, ptr %i.cv, i64 %.neg.i ; 2 uses
  %gepdiff.i = sub nsw i64 0, %.neg.i             ; 3 uses
  %i.em = icmp ult i64 %i.ee, %gepdiff.i
  br i1 %i.em, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dm, ptr readonly align 1 %i.el, i64 %i.ee, i1 false)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dm, ptr readonly align 1 %i.el, i64 %gepdiff.i, i1 false)
  %i.en = add i64 %i.ee, %.neg.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.193.i = phi i64 [ 0, %bb.t ], [ %i.en, %bb.u ]
  %.pn.i = phi i64 [ %i.ee, %bb.t ], [ %gepdiff.i, %bb.u ]
  %.282.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.pn.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r
  %.294.i = phi i64 [ %.193.i, %bb.v ], [ %i.ee, %bb.r ] ; 12 uses
  %.087.i = phi ptr [ %i.cs, %bb.v ], [ %i.ej, %bb.r ] ; 8 uses
  %.383.i = phi ptr [ %.282.i, %bb.v ], [ %i.dm, %bb.r ] ; 9 uses
  %.not147.i = icmp eq i64 %.294.i, 0
  br i1 %.not147.i, label %._crit_edge.i, label %iter.check202

iter.check202:                                    ; preds = %bb.w
  %.087.i186 = ptrtoaddr ptr %.087.i to i64
  %.383.i185 = ptrtoaddr ptr %.383.i to i64
  %min.iters.check188 = icmp ult i64 %.294.i, 4
  %i.eo = sub i64 %.383.i185, %.087.i186
  %diff.check187 = icmp ult i64 %i.eo, 32
  %or.cond246 = select i1 %min.iters.check188, i1 true, i1 %diff.check187
  br i1 %or.cond246, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check189

vector.main.loop.iter.check189:                   ; preds = %iter.check202
  %min.iters.check190 = icmp ult i64 %.294.i, 32
  br i1 %min.iters.check190, label %vec.epilog.ph206, label %vector.ph191

vector.ph191:                                     ; preds = %vector.main.loop.iter.check189
  %n.mod.vf192 = and i64 %.294.i, 28
  %n.vec193 = and i64 %.294.i, -32                ; 4 uses
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph191
  %index195 = phi i64 [ 0, %vector.ph191 ], [ %index.next198, %vector.body194 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.087.i, i64 %index195 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load196 = load <16 x i8>, ptr %i.ep, align 1, !tbaa !7
  %wide.load197 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !7
  %i.er = getelementptr inbounds nuw i8, ptr %.383.i, i64 %index195 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <16 x i8> %wide.load196, ptr %i.er, align 1, !tbaa !7
  store <16 x i8> %wide.load197, ptr %i.es, align 1, !tbaa !7
  %index.next198 = add nuw i64 %index195, 32      ; 2 uses
  %i.et = icmp eq i64 %index.next198, %n.vec193
  br i1 %i.et, label %middle.block199, label %vector.body194, !llvm.loop !83

middle.block199:                                  ; preds = %vector.body194
  %cmp.n200 = icmp eq i64 %.294.i, %n.vec193
  br i1 %cmp.n200, label %._crit_edge.i, label %vec.epilog.iter.check204

vec.epilog.iter.check204:                         ; preds = %middle.block199
  %min.epilog.iters.check205 = icmp eq i64 %n.mod.vf192, 0
  br i1 %min.epilog.iters.check205, label %.lr.ph.i.preheader, label %vec.epilog.ph206, !prof !45

vec.epilog.ph206:                                 ; preds = %vector.main.loop.iter.check189, %vec.epilog.iter.check204
  %vec.epilog.resume.val201 = phi i64 [ %n.vec193, %vec.epilog.iter.check204 ], [ 0, %vector.main.loop.iter.check189 ]
  %n.vec208 = and i64 %.294.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body209

vec.epilog.vector.body209:                        ; preds = %vec.epilog.vector.body209, %vec.epilog.ph206
  %index210 = phi i64 [ %vec.epilog.resume.val201, %vec.epilog.ph206 ], [ %index.next212, %vec.epilog.vector.body209 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.087.i, i64 %index210
  %wide.load211 = load <4 x i8>, ptr %i.eu, align 1, !tbaa !7
  %i.ev = getelementptr inbounds nuw i8, ptr %.383.i, i64 %index210
  store <4 x i8> %wide.load211, ptr %i.ev, align 1, !tbaa !7
  %index.next212 = add nuw i64 %index210, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next212, %n.vec208
  br i1 %i.ew, label %vec.epilog.middle.block213, label %vec.epilog.vector.body209, !llvm.loop !84

vec.epilog.middle.block213:                       ; preds = %vec.epilog.vector.body209
  %cmp.n214 = icmp eq i64 %.294.i, %n.vec208
  br i1 %cmp.n214, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check202, %vec.epilog.iter.check204, %vec.epilog.middle.block213
  %.0146.i.ph = phi i64 [ 0, %iter.check202 ], [ %n.vec193, %vec.epilog.iter.check204 ], [ %n.vec208, %vec.epilog.middle.block213 ] ; 3 uses
  %xtraiter267 = and i64 %.294.i, 3               ; 2 uses
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0146.i.prol = phi i64 [ %i.fa, %.lr.ph.i.prol ], [ %.0146.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter269 = phi i64 [ %prol.iter269.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.087.i, i64 %.0146.i.prol
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !7
  %i.ez = getelementptr inbounds nuw i8, ptr %.383.i, i64 %.0146.i.prol
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !7
  %i.fa = add nuw i64 %.0146.i.prol, 1            ; 2 uses
  %prol.iter269.next = add i64 %prol.iter269, 1   ; 2 uses
  %prol.iter269.cmp.not = icmp eq i64 %prol.iter269.next, %xtraiter267
  br i1 %prol.iter269.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !85

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0146.i.unr = phi i64 [ %.0146.i.ph, %.lr.ph.i.preheader ], [ %i.fa, %.lr.ph.i.prol ]
  %i.fb = sub i64 %.0146.i.ph, %.294.i
  %i.fc = icmp ugt i64 %i.fb, -4
  br i1 %i.fc, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0146.i = phi i64 [ %i.fs, %.lr.ph.i ], [ %.0146.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.087.i, i64 %.0146.i
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !7
  %i.ff = getelementptr inbounds nuw i8, ptr %.383.i, i64 %.0146.i
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !7
  %i.fg = add nuw i64 %.0146.i, 1                 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.087.i, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !7
  %i.fj = getelementptr inbounds nuw i8, ptr %.383.i, i64 %i.fg
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !7
  %i.fk = add nuw i64 %.0146.i, 2                 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.087.i, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !7
  %i.fn = getelementptr inbounds nuw i8, ptr %.383.i, i64 %i.fk
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !7
  %i.fo = add nuw i64 %.0146.i, 3                 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.087.i, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !7
  %i.fr = getelementptr inbounds nuw i8, ptr %.383.i, i64 %i.fo
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !7
  %i.fs = add nuw i64 %.0146.i, 4                 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.fs, %.294.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !86

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block199, %vec.epilog.middle.block213, %bb.w
  %i.ft = getelementptr inbounds nuw i8, ptr %.383.i, i64 %.294.i ; 2 uses
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.ct, %i.fu
  %i.fw = icmp ult i64 %i.fv, 5
  br i1 %i.fw, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread, label %.thread.i

_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit: ; preds = %bb.n
  %i.fx = ptrtoint ptr %i.dn to i64
  %i.fy = ptrtoint ptr %1 to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = trunc i64 %i.fz to i32                  ; 3 uses
  %i.gb = icmp slt i32 %i.ga, 1
  br i1 %i.gb, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit
  %i.gc = load i64, ptr %i.a, align 8, !tbaa !73
  %i.gd = add i64 %i.gc, %i.cp
  store i64 %i.gd, ptr %i.a, align 8, !tbaa !73
  %i.ge = load ptr, ptr %i.cj, align 8, !tbaa !76
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 %i.cp
  store ptr %i.gf, ptr %i.cj, align 8, !tbaa !76
  br label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread

bb.y:                                             ; preds = %bb.j
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.gg, align 8, !tbaa !78
  %i.gh = sub i64 0, %i.b
  %i.gi = getelementptr inbounds i8, ptr %i.ck, i64 %i.gh
  store ptr %i.gi, ptr %0, align 8, !tbaa !77
  %i.gj = sext i32 %3 to i64                      ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %2, i64 %i.gj ; 3 uses
  %i.gl = ptrtoint ptr %i.gk to i64               ; 3 uses
  %i.gm = ptrtoint ptr %2 to i64
  br label %.thread.i.i53

.thread.i.i53:                                    ; preds = %._crit_edge.i.i66, %bb.y
  %.0115.i.i54 = phi ptr [ %1, %bb.y ], [ %.3.i.i59, %._crit_edge.i.i66 ] ; 2 uses
  %.080.i.i55 = phi ptr [ %2, %bb.y ], [ %i.jk, %._crit_edge.i.i66 ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0115.i.i54, i64 1 ; 2 uses
  %i.go = load i8, ptr %.0115.i.i54, align 1, !tbaa !7
  %i.gp = zext i8 %i.go to i32                    ; 2 uses
  %i.gq = lshr i32 %i.gp, 4                       ; 2 uses
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = icmp eq i32 %i.gq, 15
  br i1 %i.gs, label %.preheader140.i.i71, label %bb.z

.preheader140.i.i71:                              ; preds = %.thread.i.i53, %.preheader140.i.i71
  %i.gt = phi ptr [ %i.gw, %.preheader140.i.i71 ], [ %i.gn, %.thread.i.i53 ] ; 2 uses
  %.0.i.i.i72 = phi i64 [ %i.gx, %.preheader140.i.i71 ], [ 0, %.thread.i.i53 ]
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !7   ; 2 uses
  %i.gv = zext i8 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 2 uses
  %i.gx = add i64 %.0.i.i.i72, %i.gv              ; 2 uses
  %i.gy = icmp eq i8 %i.gu, -1
  br i1 %i.gy, label %.preheader140.i.i71, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i73, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i73: ; preds = %.preheader140.i.i71
  %i.gz = add i64 %i.gx, 15
  br label %bb.z

bb.z:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i73, %.thread.i.i53
  %.1.i.i56 = phi ptr [ %i.gw, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i73 ], [ %i.gn, %.thread.i.i53 ] ; 2 uses
  %.086.i.i57 = phi i64 [ %i.gz, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i73 ], [ %i.gr, %.thread.i.i53 ] ; 4 uses
  %i.ha = ptrtoint ptr %.080.i.i55 to i64
  %i.hb = sub i64 %i.gl, %i.ha
  %i.hc = icmp ult i64 %i.hb, %.086.i.i57
  br i1 %i.hc, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.080.i.i55, ptr nonnull align 1 %.1.i.i56, i64 %.086.i.i57, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %.080.i.i55, i64 %.086.i.i57 ; 7 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.1.i.i56, i64 %.086.i.i57 ; 3 uses
  %i.hf = ptrtoint ptr %i.hd to i64               ; 2 uses
  %i.hg = sub i64 %i.gl, %i.hf                    ; 2 uses
  %i.hh = icmp ult i64 %i.hg, 12
  br i1 %i.hh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hi = icmp eq ptr %i.hd, %i.gk
  br i1 %i.hi, label %_ZN10duckdb_lz4L27LZ4_decompress_fast_extDictEPKcPciPKvm.exit, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread

bb.ac:                                            ; preds = %bb.aa
  %i.hj = and i32 %i.gp, 15                       ; 2 uses
  %i.hk = zext nneg i32 %i.hj to i64
  %.val.i.i58 = load i16, ptr %i.he, align 1, !tbaa !7
  %i.hl = zext i16 %.val.i.i58 to i64             ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 2 ; 2 uses
  %i.hn = icmp eq i32 %i.hj, 15
  br i1 %i.hn, label %.preheader.i.i68, label %bb.ad

.preheader.i.i68:                                 ; preds = %bb.ac, %.preheader.i.i68
  %i.ho = phi ptr [ %i.hr, %.preheader.i.i68 ], [ %i.hm, %bb.ac ] ; 2 uses
  %.0.i108.i.i69 = phi i64 [ %i.hs, %.preheader.i.i68 ], [ 0, %bb.ac ]
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !7   ; 2 uses
  %i.hq = zext i8 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 1 ; 2 uses
  %i.hs = add i64 %.0.i108.i.i69, %i.hq           ; 2 uses
  %i.ht = icmp eq i8 %i.hp, -1
  br i1 %i.ht, label %.preheader.i.i68, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i70, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i70: ; preds = %.preheader.i.i68
  %i.hu = add i64 %i.hs, 15
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i70, %bb.ac
  %.3.i.i59 = phi ptr [ %i.hr, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i70 ], [ %i.hm, %bb.ac ]
  %.092.i.i60 = phi i64 [ %i.hu, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i70 ], [ %i.hk, %bb.ac ]
  %i.hv = add i64 %.092.i.i60, 4                  ; 6 uses
  %i.hw = icmp ult i64 %i.hg, %i.hv
  br i1 %i.hw, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hx = sub i64 %i.hf, %i.gm                    ; 3 uses
  %i.hy = add i64 %i.hx, %i.b
  %.not.i.i61 = icmp ult i64 %i.hy, %i.hl
  br i1 %.not.i.i61, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hz = sub nsw i64 0, %i.hl
  %i.ia = getelementptr inbounds i8, ptr %i.hd, i64 %i.hz
  %i.ib = icmp ult i64 %i.hx, %i.hl
  br i1 %i.ib, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %.neg.i.i = sub nsw i64 %i.hx, %i.hl            ; 3 uses
  %i.ic = getelementptr inbounds i8, ptr %i.ck, i64 %.neg.i.i ; 2 uses
  %gepdiff.i.i = sub nsw i64 0, %.neg.i.i         ; 3 uses
  %i.id = icmp ult i64 %i.hv, %gepdiff.i.i
  br i1 %i.id, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.hd, ptr readonly align 1 %i.ic, i64 %i.hv, i1 false)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.hd, ptr readonly align 1 %i.ic, i64 %gepdiff.i.i, i1 false)
  %i.ie = add i64 %i.hv, %.neg.i.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.193.i.i = phi i64 [ 0, %bb.ah ], [ %i.ie, %bb.ai ]
  %.pn.i.i = phi i64 [ %i.hv, %bb.ah ], [ %gepdiff.i.i, %bb.ai ]
  %.282.i.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.pn.i.i
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.294.i.i = phi i64 [ %.193.i.i, %bb.aj ], [ %i.hv, %bb.af ] ; 12 uses
  %.087.i.i = phi ptr [ %2, %bb.aj ], [ %i.ia, %bb.af ] ; 8 uses
  %.383.i.i = phi ptr [ %.282.i.i, %bb.aj ], [ %i.hd, %bb.af ] ; 9 uses
  %.not147.i.i62 = icmp eq i64 %.294.i.i, 0
  br i1 %.not147.i.i62, label %._crit_edge.i.i66, label %iter.check

iter.check:                                       ; preds = %bb.ak
  %.087.i.i175 = ptrtoaddr ptr %.087.i.i to i64
  %.383.i.i174 = ptrtoaddr ptr %.383.i.i to i64
  %min.iters.check = icmp ult i64 %.294.i.i, 4
  %i.if = sub i64 %.383.i.i174, %.087.i.i175
  %diff.check = icmp ult i64 %i.if, 32
  %or.cond247 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond247, label %.lr.ph.i.i63.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check176 = icmp ult i64 %.294.i.i, 32
  br i1 %min.iters.check176, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.294.i.i, 28
  %n.vec = and i64 %.294.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %index ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load = load <16 x i8>, ptr %i.ig, align 1, !tbaa !7
  %wide.load177 = load <16 x i8>, ptr %i.ih, align 1, !tbaa !7
  %i.ii = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %index ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <16 x i8> %wide.load, ptr %i.ii, align 1, !tbaa !7
  store <16 x i8> %wide.load177, ptr %i.ij, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ik = icmp eq i64 %index.next, %n.vec
  br i1 %i.ik, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.294.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i66, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i63.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec179 = and i64 %.294.i.i, -4               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index180 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next182, %vec.epilog.vector.body ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %index180
  %wide.load181 = load <4 x i8>, ptr %i.il, align 1, !tbaa !7
  %i.im = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %index180
  store <4 x i8> %wide.load181, ptr %i.im, align 1, !tbaa !7
  %index.next182 = add nuw i64 %index180, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next182, %n.vec179
  br i1 %i.in, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n183 = icmp eq i64 %.294.i.i, %n.vec179
  br i1 %cmp.n183, label %._crit_edge.i.i66, label %.lr.ph.i.i63.preheader

.lr.ph.i.i63.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0146.i.i64.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec179, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.294.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i63.prol.loopexit, label %.lr.ph.i.i63.prol

.lr.ph.i.i63.prol:                                ; preds = %.lr.ph.i.i63.preheader, %.lr.ph.i.i63.prol
  %.0146.i.i64.prol = phi i64 [ %i.ir, %.lr.ph.i.i63.prol ], [ %.0146.i.i64.ph, %.lr.ph.i.i63.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i63.prol ], [ 0, %.lr.ph.i.i63.preheader ]
  %i.io = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %.0146.i.i64.prol
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !7
  %i.iq = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %.0146.i.i64.prol
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !7
  %i.ir = add nuw i64 %.0146.i.i64.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i63.prol.loopexit, label %.lr.ph.i.i63.prol, !llvm.loop !89

.lr.ph.i.i63.prol.loopexit:                       ; preds = %.lr.ph.i.i63.prol, %.lr.ph.i.i63.preheader
  %.0146.i.i64.unr = phi i64 [ %.0146.i.i64.ph, %.lr.ph.i.i63.preheader ], [ %i.ir, %.lr.ph.i.i63.prol ]
  %i.is = sub i64 %.0146.i.i64.ph, %.294.i.i
  %i.it = icmp ugt i64 %i.is, -4
  br i1 %i.it, label %._crit_edge.i.i66, label %.lr.ph.i.i63

.lr.ph.i.i63:                                     ; preds = %.lr.ph.i.i63.prol.loopexit, %.lr.ph.i.i63
  %.0146.i.i64 = phi i64 [ %i.jj, %.lr.ph.i.i63 ], [ %.0146.i.i64.unr, %.lr.ph.i.i63.prol.loopexit ] ; 6 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %.0146.i.i64
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !7
  %i.iw = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %.0146.i.i64
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !7
  %i.ix = add nuw i64 %.0146.i.i64, 1             ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !7
  %i.ja = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %i.ix
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !7
  %i.jb = add nuw i64 %.0146.i.i64, 2             ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !7
  %i.je = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %i.jb
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !7
  %i.jf = add nuw i64 %.0146.i.i64, 3             ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !7
  %i.ji = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %i.jf
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !7
  %i.jj = add nuw i64 %.0146.i.i64, 4             ; 2 uses
  %exitcond.not.i.i65.3 = icmp eq i64 %i.jj, %.294.i.i
  br i1 %exitcond.not.i.i65.3, label %._crit_edge.i.i66, label %.lr.ph.i.i63, !llvm.loop !90

._crit_edge.i.i66:                                ; preds = %.lr.ph.i.i63.prol.loopexit, %.lr.ph.i.i63, %middle.block, %vec.epilog.middle.block, %bb.ak
  %i.jk = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %.294.i.i ; 2 uses
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = sub i64 %i.gl, %i.jl
  %i.jn = icmp ult i64 %i.jm, 5
  br i1 %i.jn, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread, label %.thread.i.i53

_ZN10duckdb_lz4L27LZ4_decompress_fast_extDictEPKcPciPKvm.exit: ; preds = %bb.ab
  %i.jo = ptrtoint ptr %i.he to i64
  %i.jp = ptrtoint ptr %1 to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = trunc i64 %i.jq to i32                  ; 3 uses
  %i.js = icmp slt i32 %i.jr, 1
  br i1 %i.js, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread, label %bb.al

bb.al:                                            ; preds = %_ZN10duckdb_lz4L27LZ4_decompress_fast_extDictEPKcPciPKvm.exit
  store i64 %i.gj, ptr %i.a, align 8, !tbaa !73
  store ptr %i.gk, ptr %i.cj, align 8, !tbaa !76
  br label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread

_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit.thread: ; preds = %bb.z, %bb.ad, %bb.ae, %._crit_edge.i.i66, %bb.l, %bb.q, %bb.p, %._crit_edge.i, %bb.c, %bb.g, %._crit_edge.i.i, %bb.ab, %bb.n, %bb.e, %bb.i, %bb.al, %bb.x, %_ZN10duckdb_lz4L27LZ4_decompress_fast_extDictEPKcPciPKvm.exit, %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit
  %.044 = phi i32 [ %i.ga, %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit ], [ %i.jr, %_ZN10duckdb_lz4L27LZ4_decompress_fast_extDictEPKcPciPKvm.exit ], [ %i.cg, %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit ], [ %i.cg, %bb.i ], [ %i.ga, %bb.x ], [ %i.jr, %bb.al ], [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %bb.e ], [ -1, %bb.ab ], [ -1, %bb.c ], [ -1, %._crit_edge.i.i ], [ -1, %bb.g ], [ -1, %._crit_edge.i ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %._crit_edge.i.i66 ], [ -1, %bb.ae ], [ -1, %bb.ad ], [ -1, %bb.z ]
  ret i32 %.044
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz429LZ4_decompress_safe_usingDictEPKcPciiS1_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address) %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %5, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef %1, ptr noundef null, i64 noundef 0)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %5 to i64                       ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %4, i64 %i.c
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = icmp sgt i32 %5, 65534
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds i8, ptr %1, i64 -65536
  %i.h = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.g, ptr noundef null, i64 noundef 0)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.i = sub nsw i64 0, %i.c
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.j, ptr noundef null, i64 noundef 0)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.l = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 2, ptr noundef %1, ptr noundef readonly %4, i64 noundef %i.c)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.h, %bb.e ], [ %i.k, %bb.f ], [ %i.l, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz437LZ4_decompress_safe_partial_usingDictEPKcPciiiS1_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address) %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %6, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @llvm.smin.i32(i32 %3, i32 %4)
  %i.c = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.b, i32 noundef 1, i32 noundef 0, ptr noundef %1, ptr noundef null, i64 noundef 0)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = sext i32 %6 to i64                       ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %5, i64 %i.d
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = icmp sgt i32 %6, 65534
  %i.h = tail call i32 @llvm.smin.i32(i32 %3, i32 %4) ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds i8, ptr %1, i64 -65536
  %i.j = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.h, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.i, ptr noundef null, i64 noundef 0)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.k = sub nsw i64 0, %i.d
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.m = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.h, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.l, ptr noundef null, i64 noundef 0)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.n = tail call i32 @llvm.smin.i32(i32 %3, i32 %4)
  %i.o = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.n, i32 noundef 1, i32 noundef 2, ptr noundef %1, ptr noundef readonly %5, i64 noundef %i.d)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.j, %bb.e ], [ %i.m, %bb.f ], [ %i.o, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_ZN10duckdb_lz429LZ4_decompress_fast_usingDictEPKcPciS1_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, i32 noundef %4) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i32 %4, 0
  br i1 %i.a, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %4 to i64                       ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %3, i64 %i.b ; 2 uses
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e ; 2 uses
  %i.g = sub nsw i64 0, %.pre-phi
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i, %._crit_edge
  %.0115.i = phi ptr [ %0, %._crit_edge ], [ %.3.i, %._crit_edge.i ] ; 2 uses
  %.080.i = phi ptr [ %1, %._crit_edge ], [ %i.cc, %._crit_edge.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0115.i, i64 1 ; 2 uses
  %i.l = load i8, ptr %.0115.i, align 1, !tbaa !7
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = lshr i32 %i.m, 4                         ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 15
  br i1 %i.p, label %.preheader140.i, label %bb.c

.preheader140.i:                                  ; preds = %.thread.i, %.preheader140.i
  %i.q = phi ptr [ %i.t, %.preheader140.i ], [ %i.k, %.thread.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.u, %.preheader140.i ], [ 0, %.thread.i ]
  %i.r = load i8, ptr %i.q, align 1, !tbaa !7     ; 2 uses
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.u = add i64 %.0.i.i, %i.s                    ; 2 uses
  %i.v = icmp eq i8 %i.r, -1
  br i1 %i.v, label %.preheader140.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i: ; preds = %.preheader140.i
  %i.w = add i64 %i.u, 15
  br label %bb.c

bb.c:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i, %.thread.i
  %.1.i = phi ptr [ %i.t, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i ], [ %i.k, %.thread.i ] ; 2 uses
  %.086.i = phi i64 [ %i.w, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i ], [ %i.o, %.thread.i ] ; 4 uses
  %i.x = ptrtoint ptr %.080.i to i64
  %i.y = sub i64 %i.i, %i.x
  %i.z = icmp ult i64 %i.y, %.086.i
  br i1 %i.z, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.080.i, ptr nonnull align 1 %.1.i, i64 %.086.i, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.080.i, i64 %.086.i ; 11 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.086.i ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.i, %i.ac                     ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 12
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = icmp eq ptr %i.aa, %i.f
  br i1 %i.af, label %bb.i, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = and i32 %i.m, 15                        ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %.val.i = load i16, ptr %i.ab, align 1, !tbaa !7 ; 2 uses
  %i.ai = zext i16 %.val.i to i64                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2 ; 2 uses
  %i.ak = icmp eq i32 %i.ag, 15
  br i1 %i.ak, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %i.al = phi ptr [ %i.ao, %.preheader.i ], [ %i.aj, %bb.f ] ; 2 uses
  %.0.i108.i = phi i64 [ %i.ap, %.preheader.i ], [ 0, %bb.f ]
  %i.am = load i8, ptr %i.al, align 1, !tbaa !7   ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  %i.ap = add i64 %.0.i108.i, %i.an               ; 2 uses
  %i.aq = icmp eq i8 %i.am, -1
  br i1 %i.aq, label %.preheader.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i: ; preds = %.preheader.i
  %i.ar = add i64 %i.ap, 15
  br label %bb.g

bb.g:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i, %bb.f
  %.3.i = phi ptr [ %i.ao, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i ], [ %i.aj, %bb.f ]
  %.092.i = phi i64 [ %i.ar, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i ], [ %i.ah, %bb.f ] ; 5 uses
  %i.as = add i64 %.092.i, 4                      ; 9 uses
  %i.at = icmp ult i64 %i.ad, %i.as
  %i.au = sub i64 %i.ac, %i.j
  %.not.i = icmp ult i64 %i.au, %i.ai
  %or.cond = select i1 %i.at, i1 true, i1 %.not.i
  br i1 %or.cond, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = sub nsw i64 0, %i.ai
  %i.aw = getelementptr inbounds i8, ptr %i.aa, i64 %i.av ; 7 uses
  %.not147.i = icmp eq i64 %i.as, 0
  br i1 %.not147.i, label %._crit_edge.i, label %iter.check99

iter.check99:                                     ; preds = %bb.h
  %min.iters.check85 = icmp ugt i64 %.092.i, -5
  %diff.check84 = icmp ult i16 %.val.i, 32
  %or.cond113 = select i1 %min.iters.check85, i1 true, i1 %diff.check84
  br i1 %or.cond113, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check86

vector.main.loop.iter.check86:                    ; preds = %iter.check99
  %min.iters.check87 = icmp ult i64 %i.as, 32
  br i1 %min.iters.check87, label %vec.epilog.ph103, label %vector.ph88

vector.ph88:                                      ; preds = %vector.main.loop.iter.check86
  %n.mod.vf89 = and i64 %i.as, 28
  %n.vec90 = and i64 %i.as, -32                   ; 4 uses
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph88
  %index92 = phi i64 [ 0, %vector.ph88 ], [ %index.next95, %vector.body91 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index92 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load93 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !7
  %wide.load94 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index92 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <16 x i8> %wide.load93, ptr %i.az, align 1, !tbaa !7
  store <16 x i8> %wide.load94, ptr %i.ba, align 1, !tbaa !7
  %index.next95 = add nuw i64 %index92, 32        ; 2 uses
  %i.bb = icmp eq i64 %index.next95, %n.vec90
  br i1 %i.bb, label %middle.block96, label %vector.body91, !llvm.loop !91

middle.block96:                                   ; preds = %vector.body91
  %cmp.n97 = icmp eq i64 %i.as, %n.vec90
  br i1 %cmp.n97, label %._crit_edge.i, label %vec.epilog.iter.check101

vec.epilog.iter.check101:                         ; preds = %middle.block96
  %min.epilog.iters.check102 = icmp eq i64 %n.mod.vf89, 0
  br i1 %min.epilog.iters.check102, label %.lr.ph.i.preheader, label %vec.epilog.ph103, !prof !45

vec.epilog.ph103:                                 ; preds = %vector.main.loop.iter.check86, %vec.epilog.iter.check101
  %vec.epilog.resume.val98 = phi i64 [ %n.vec90, %vec.epilog.iter.check101 ], [ 0, %vector.main.loop.iter.check86 ]
  %n.vec105 = and i64 %i.as, -4                   ; 3 uses
  br label %vec.epilog.vector.body106

vec.epilog.vector.body106:                        ; preds = %vec.epilog.vector.body106, %vec.epilog.ph103
  %index107 = phi i64 [ %vec.epilog.resume.val98, %vec.epilog.ph103 ], [ %index.next109, %vec.epilog.vector.body106 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index107
  %wide.load108 = load <4 x i8>, ptr %i.bc, align 1, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index107
  store <4 x i8> %wide.load108, ptr %i.bd, align 1, !tbaa !7
  %index.next109 = add nuw i64 %index107, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next109, %n.vec105
  br i1 %i.be, label %vec.epilog.middle.block110, label %vec.epilog.vector.body106, !llvm.loop !92

vec.epilog.middle.block110:                       ; preds = %vec.epilog.vector.body106
  %cmp.n111 = icmp eq i64 %i.as, %n.vec105
  br i1 %cmp.n111, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check99, %vec.epilog.iter.check101, %vec.epilog.middle.block110
  %.0146.i.ph = phi i64 [ 0, %iter.check99 ], [ %n.vec90, %vec.epilog.iter.check101 ], [ %n.vec105, %vec.epilog.middle.block110 ] ; 3 uses
  %i.bf = add i64 %.092.i, 3
  %i.bg = sub i64 %i.bf, %.0146.i.ph
  %xtraiter127 = and i64 %.092.i, 3               ; 2 uses
  %lcmp.mod128.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod128.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0146.i.prol = phi i64 [ %i.bk, %.lr.ph.i.prol ], [ %.0146.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter129 = phi i64 [ %prol.iter129.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0146.i.prol
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0146.i.prol
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !7
  %i.bk = add nuw i64 %.0146.i.prol, 1            ; 2 uses
  %prol.iter129.next = add i64 %prol.iter129, 1   ; 2 uses
  %prol.iter129.cmp.not = icmp eq i64 %prol.iter129.next, %xtraiter127
  br i1 %prol.iter129.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !93

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0146.i.unr = phi i64 [ %.0146.i.ph, %.lr.ph.i.preheader ], [ %i.bk, %.lr.ph.i.prol ]
  %i.bl = icmp ult i64 %i.bg, 3
  br i1 %i.bl, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0146.i = phi i64 [ %i.cb, %.lr.ph.i ], [ %.0146.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0146.i
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0146.i
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !7
  %i.bp = add nuw i64 %.0146.i, 1                 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !7
  %i.bt = add nuw i64 %.0146.i, 2                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bt
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !7
  %i.bx = add nuw i64 %.0146.i, 3                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bx
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !7
  %i.cb = add nuw i64 %.0146.i, 4
  %exitcond.not.i.3 = icmp eq i64 %.0146.i, %.092.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !94

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block96, %vec.epilog.middle.block110, %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.as ; 2 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.i, %i.cd
  %i.cf = icmp ult i64 %i.ce, 5
  br i1 %i.cf, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, label %.thread.i

bb.i:                                             ; preds = %bb.e
  %i.cg = ptrtoint ptr %i.ab to i64
  %i.ch = ptrtoint ptr %0 to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32
  br label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit

bb.j:                                             ; preds = %bb.b
  %i.ck = sext i32 %2 to i64
  %i.cl = getelementptr inbounds i8, ptr %1, i64 %i.ck ; 2 uses
  %i.cm = ptrtoint ptr %i.cl to i64               ; 3 uses
  %i.cn = ptrtoint ptr %1 to i64
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %._crit_edge.i.i, %bb.j
  %.0115.i.i = phi ptr [ %0, %bb.j ], [ %.3.i.i, %._crit_edge.i.i ] ; 2 uses
  %.080.i.i = phi ptr [ %1, %bb.j ], [ %i.fl, %._crit_edge.i.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0115.i.i, i64 1 ; 2 uses
  %i.cp = load i8, ptr %.0115.i.i, align 1, !tbaa !7
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = lshr i32 %i.cq, 4                       ; 2 uses
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = icmp eq i32 %i.cr, 15
  br i1 %i.ct, label %.preheader140.i.i, label %bb.k

.preheader140.i.i:                                ; preds = %.thread.i.i, %.preheader140.i.i
  %i.cu = phi ptr [ %i.cx, %.preheader140.i.i ], [ %i.co, %.thread.i.i ] ; 2 uses
  %.0.i.i.i = phi i64 [ %i.cy, %.preheader140.i.i ], [ 0, %.thread.i.i ]
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !7   ; 2 uses
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1 ; 2 uses
  %i.cy = add i64 %.0.i.i.i, %i.cw                ; 2 uses
  %i.cz = icmp eq i8 %i.cv, -1
  br i1 %i.cz, label %.preheader140.i.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i: ; preds = %.preheader140.i.i
  %i.da = add i64 %i.cy, 15
  br label %bb.k

bb.k:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i, %.thread.i.i
  %.1.i.i = phi ptr [ %i.cx, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i ], [ %i.co, %.thread.i.i ] ; 2 uses
  %.086.i.i = phi i64 [ %i.da, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i ], [ %i.cs, %.thread.i.i ] ; 4 uses
  %i.db = ptrtoint ptr %.080.i.i to i64
  %i.dc = sub i64 %i.cm, %i.db
  %i.dd = icmp ult i64 %i.dc, %.086.i.i
  br i1 %i.dd, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.080.i.i, ptr nonnull align 1 %.1.i.i, i64 %.086.i.i, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %.080.i.i, i64 %.086.i.i ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %.086.i.i ; 3 uses
  %i.dg = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dh = sub i64 %i.cm, %i.dg                    ; 2 uses
  %i.di = icmp ult i64 %i.dh, 12
  br i1 %i.di, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dj = icmp eq ptr %i.de, %i.cl
  br i1 %i.dj, label %bb.w, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit

bb.n:                                             ; preds = %bb.l
  %i.dk = and i32 %i.cq, 15                       ; 2 uses
  %i.dl = zext nneg i32 %i.dk to i64
  %.val.i.i = load i16, ptr %i.df, align 1, !tbaa !7
  %i.dm = zext i16 %.val.i.i to i64               ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 2 ; 2 uses
  %i.do = icmp eq i32 %i.dk, 15
  br i1 %i.do, label %.preheader.i.i, label %bb.o

.preheader.i.i:                                   ; preds = %bb.n, %.preheader.i.i
  %i.dp = phi ptr [ %i.ds, %.preheader.i.i ], [ %i.dn, %bb.n ] ; 2 uses
  %.0.i108.i.i = phi i64 [ %i.dt, %.preheader.i.i ], [ 0, %bb.n ]
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !7   ; 2 uses
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 2 uses
  %i.dt = add i64 %.0.i108.i.i, %i.dr             ; 2 uses
  %i.du = icmp eq i8 %i.dq, -1
  br i1 %i.du, label %.preheader.i.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i: ; preds = %.preheader.i.i
  %i.dv = add i64 %i.dt, 15
  br label %bb.o

bb.o:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i, %bb.n
  %.3.i.i = phi ptr [ %i.ds, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i ], [ %i.dn, %bb.n ]
  %.092.i.i = phi i64 [ %i.dv, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i ], [ %i.dl, %bb.n ]
  %i.dw = add i64 %.092.i.i, 4                    ; 6 uses
  %i.dx = icmp ult i64 %i.dh, %i.dw
  br i1 %i.dx, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dy = sub i64 %i.dg, %i.cn                    ; 3 uses
  %i.dz = add i64 %i.dy, %i.b
  %.not.i.i = icmp ult i64 %i.dz, %i.dm
  br i1 %.not.i.i, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ea = sub nsw i64 0, %i.dm
  %i.eb = getelementptr inbounds i8, ptr %i.de, i64 %i.ea
  %i.ec = icmp ult i64 %i.dy, %i.dm
  br i1 %i.ec, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %.neg.i.i = sub nsw i64 %i.dy, %i.dm            ; 3 uses
  %i.ed = getelementptr inbounds i8, ptr %i.c, i64 %.neg.i.i ; 2 uses
  %gepdiff.i.i = sub nsw i64 0, %.neg.i.i         ; 3 uses
  %i.ee = icmp ult i64 %i.dw, %gepdiff.i.i
  br i1 %i.ee, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.de, ptr nonnull readonly align 1 %i.ed, i64 %i.dw, i1 false)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.de, ptr nonnull readonly align 1 %i.ed, i64 %gepdiff.i.i, i1 false)
  %i.ef = add i64 %i.dw, %.neg.i.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.193.i.i = phi i64 [ 0, %bb.s ], [ %i.ef, %bb.t ]
  %.pn.i.i = phi i64 [ %i.dw, %bb.s ], [ %gepdiff.i.i, %bb.t ]
  %.282.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 %.pn.i.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %.294.i.i = phi i64 [ %.193.i.i, %bb.u ], [ %i.dw, %bb.q ] ; 12 uses
  %.087.i.i = phi ptr [ %1, %bb.u ], [ %i.eb, %bb.q ] ; 8 uses
  %.383.i.i = phi ptr [ %.282.i.i, %bb.u ], [ %i.de, %bb.q ] ; 9 uses
  %.not147.i.i = icmp eq i64 %.294.i.i, 0
  br i1 %.not147.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.v
  %.087.i.i74 = ptrtoaddr ptr %.087.i.i to i64
  %.383.i.i73 = ptrtoaddr ptr %.383.i.i to i64
  %min.iters.check = icmp ult i64 %.294.i.i, 4
  %i.eg = sub i64 %.383.i.i73, %.087.i.i74
  %diff.check = icmp ult i64 %i.eg, 32
  %or.cond114 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond114, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check75 = icmp ult i64 %.294.i.i, 32
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.294.i.i, 28
  %n.vec = and i64 %.294.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %index ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load = load <16 x i8>, ptr %i.eh, align 1, !tbaa !7
  %wide.load76 = load <16 x i8>, ptr %i.ei, align 1, !tbaa !7
  %i.ej = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %index ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <16 x i8> %wide.load, ptr %i.ej, align 1, !tbaa !7
  store <16 x i8> %wide.load76, ptr %i.ek, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.294.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec78 = and i64 %.294.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index79 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %index79
  %wide.load80 = load <4 x i8>, ptr %i.em, align 1, !tbaa !7
  %i.en = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %index79
  store <4 x i8> %wide.load80, ptr %i.en, align 1, !tbaa !7
  %index.next81 = add nuw i64 %index79, 4         ; 2 uses
  %i.eo = icmp eq i64 %index.next81, %n.vec78
  br i1 %i.eo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !96

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n82 = icmp eq i64 %.294.i.i, %n.vec78
  br i1 %cmp.n82, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0146.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec78, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.294.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.0146.i.i.prol = phi i64 [ %i.es, %.lr.ph.i.i.prol ], [ %.0146.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %.0146.i.i.prol
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !7
  %i.er = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %.0146.i.i.prol
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !7
  %i.es = add nuw i64 %.0146.i.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !97

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.0146.i.i.unr = phi i64 [ %.0146.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.es, %.lr.ph.i.i.prol ]
  %i.et = sub i64 %.0146.i.i.ph, %.294.i.i
  %i.eu = icmp ugt i64 %i.et, -4
  br i1 %i.eu, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.0146.i.i = phi i64 [ %i.fk, %.lr.ph.i.i ], [ %.0146.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %.0146.i.i
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !7
  %i.ex = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %.0146.i.i
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !7
  %i.ey = add nuw i64 %.0146.i.i, 1               ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !7
  %i.fb = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %i.ey
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !7
  %i.fc = add nuw i64 %.0146.i.i, 2               ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !7
  %i.ff = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %i.fc
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !7
  %i.fg = add nuw i64 %.0146.i.i, 3               ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !7
  %i.fj = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %i.fg
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !7
  %i.fk = add nuw i64 %.0146.i.i, 4               ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.fk, %.294.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !98

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.v
  %i.fl = getelementptr inbounds nuw i8, ptr %.383.i.i, i64 %.294.i.i ; 2 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.cm, %i.fm
  %i.fo = icmp ult i64 %i.fn, 5
  br i1 %i.fo, label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit, label %.thread.i.i

bb.w:                                             ; preds = %bb.m
  %i.fp = ptrtoint ptr %i.df to i64
  %i.fq = ptrtoint ptr %0 to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = trunc i64 %i.fr to i32
  br label %_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit

_ZN10duckdb_lz4L29LZ4_decompress_unsafe_genericEPKhPhimS1_m.exit: ; preds = %._crit_edge.i.i, %bb.p, %bb.o, %bb.k, %._crit_edge.i, %bb.g, %bb.c, %bb.w, %bb.m, %bb.i, %bb.e
  %.0 = phi i32 [ -1, %._crit_edge.i ], [ -1, %bb.e ], [ %i.cj, %bb.i ], [ -1, %bb.m ], [ %i.fs, %bb.w ], [ -1, %bb.c ], [ -1, %bb.g ], [ -1, %bb.k ], [ -1, %bb.o ], [ -1, %bb.p ], [ -1, %._crit_edge.i.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz426LZ4_compress_limitedOutputEPKcPcii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %"union.duckdb_lz4::LZ4_stream_u", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = call noundef i32 @_ZN10duckdb_lz426LZ4_compress_fast_extStateEPvPKcPciii(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz412LZ4_compressEPKcPci(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %"union.duckdb_lz4::LZ4_stream_u", align 8 ; 3 uses
  %i.a = icmp ugt i32 %2, 2113929216
  br i1 %i.a, label %_ZN10duckdb_lz417LZ4_compressBoundEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %2, 255
  %i.c = add nuw nsw i32 %2, 16
  %i.d = add nuw nsw i32 %i.c, %i.b
  br label %_ZN10duckdb_lz417LZ4_compressBoundEi.exit

_ZN10duckdb_lz417LZ4_compressBoundEi.exit:        ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.f = call noundef i32 @_ZN10duckdb_lz426LZ4_compress_fast_extStateEPvPKcPciii(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.e, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz436LZ4_compress_limitedOutput_withStateEPvPKcPcii(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i32 @_ZN10duckdb_lz426LZ4_compress_fast_extStateEPvPKcPciii(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz422LZ4_compress_withStateEPvPKcPci(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %3, 2113929216
  br i1 %i.a, label %_ZN10duckdb_lz417LZ4_compressBoundEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %3, 255
  %i.c = add nuw nsw i32 %3, 16
  %i.d = add nuw nsw i32 %i.c, %i.b
  br label %_ZN10duckdb_lz417LZ4_compressBoundEi.exit

_ZN10duckdb_lz417LZ4_compressBoundEi.exit:        ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = tail call noundef i32 @_ZN10duckdb_lz426LZ4_compress_fast_extStateEPvPKcPciii(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %i.e, i32 noundef 1)
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz435LZ4_compress_limitedOutput_continueEPNS_12LZ4_stream_uEPKcPcii(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i32 @_ZN10duckdb_lz426LZ4_compress_fast_continueEPNS_12LZ4_stream_uEPKcPciii(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz421LZ4_compress_continueEPNS_12LZ4_stream_uEPKcPci(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %3, 2113929216
  br i1 %i.a, label %_ZN10duckdb_lz417LZ4_compressBoundEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %3, 255
  %i.c = add nuw nsw i32 %3, 16
  %i.d = add nuw nsw i32 %i.c, %i.b
  br label %_ZN10duckdb_lz417LZ4_compressBoundEi.exit

_ZN10duckdb_lz417LZ4_compressBoundEi.exit:        ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = tail call noundef i32 @_ZN10duckdb_lz426LZ4_compress_fast_continueEPNS_12LZ4_stream_uEPKcPciii(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %i.e, i32 noundef 1)
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_ZN10duckdb_lz414LZ4_uncompressEPKcPci(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = ptrtoint ptr %1 to i64
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %._crit_edge.i.i, %bb.a
  %.0115.i.i = phi ptr [ %0, %bb.a ], [ %.3.i.i, %._crit_edge.i.i ] ; 2 uses
  %.080.i.i = phi ptr [ %1, %bb.a ], [ %i.bw, %._crit_edge.i.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0115.i.i, i64 1 ; 2 uses
  %i.f = load i8, ptr %.0115.i.i, align 1, !tbaa !7
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 4                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = icmp eq i32 %i.h, 15
  br i1 %i.j, label %.preheader140.i.i, label %bb.b

.preheader140.i.i:                                ; preds = %.thread.i.i, %.preheader140.i.i
  %i.k = phi ptr [ %i.n, %.preheader140.i.i ], [ %i.e, %.thread.i.i ] ; 2 uses
  %.0.i.i.i = phi i64 [ %i.o, %.preheader140.i.i ], [ 0, %.thread.i.i ]
  %i.l = load i8, ptr %i.k, align 1, !tbaa !7     ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.o = add i64 %.0.i.i.i, %i.m                  ; 2 uses
  %i.p = icmp eq i8 %i.l, -1
  br i1 %i.p, label %.preheader140.i.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i: ; preds = %.preheader140.i.i
  %i.q = add i64 %i.o, 15
  br label %bb.b

bb.b:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i, %.thread.i.i
  %.1.i.i = phi ptr [ %i.n, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i ], [ %i.e, %.thread.i.i ] ; 2 uses
  %.086.i.i = phi i64 [ %i.q, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit.i.i ], [ %i.i, %.thread.i.i ] ; 4 uses
  %i.r = ptrtoint ptr %.080.i.i to i64
  %i.s = sub i64 %i.c, %i.r
  %i.t = icmp ult i64 %i.s, %.086.i.i
  br i1 %i.t, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.080.i.i, ptr nonnull align 1 %.1.i.i, i64 %.086.i.i, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.080.i.i, i64 %.086.i.i ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %.086.i.i ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.c, %i.w                       ; 2 uses
  %i.y = icmp ult i64 %i.x, 12
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq ptr %i.u, %i.b
  br i1 %i.z, label %bb.h, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = and i32 %i.g, 15                        ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %.val.i.i = load i16, ptr %i.v, align 1, !tbaa !7 ; 2 uses
  %i.ac = zext i16 %.val.i.i to i64               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  %i.ae = icmp eq i32 %i.aa, 15
  br i1 %i.ae, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %i.af = phi ptr [ %i.ai, %.preheader.i.i ], [ %i.ad, %bb.e ] ; 2 uses
  %.0.i108.i.i = phi i64 [ %i.aj, %.preheader.i.i ], [ 0, %bb.e ]
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !7   ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.aj = add i64 %.0.i108.i.i, %i.ah             ; 2 uses
  %i.ak = icmp eq i8 %i.ag, -1
  br i1 %i.ak, label %.preheader.i.i, label %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i, !llvm.loop !35

_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i: ; preds = %.preheader.i.i
  %i.al = add i64 %i.aj, 15
  br label %bb.f

bb.f:                                             ; preds = %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i, %bb.e
  %.3.i.i = phi ptr [ %i.ai, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i ], [ %i.ad, %bb.e ]
  %.092.i.i = phi i64 [ %i.al, %_ZN10duckdb_lz425read_long_length_no_checkEPPKh.exit109.i.i ], [ %i.ab, %bb.e ] ; 5 uses
  %i.am = add i64 %.092.i.i, 4                    ; 9 uses
  %i.an = icmp ult i64 %i.x, %i.am
  %i.ao = sub i64 %i.w, %i.d
  %.not.i.i = icmp ult i64 %i.ao, %i.ac
  %or.cond.i = select i1 %i.an, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = sub nsw i64 0, %i.ac
  %i.aq = getelementptr inbounds i8, ptr %i.u, i64 %i.ap ; 7 uses
  %.not147.i.i = icmp eq i64 %i.am, 0
  br i1 %.not147.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ugt i64 %.092.i.i, -5
  %diff.check = icmp ult i16 %.val.i.i, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %i.am, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.am, 28
  %n.vec = and i64 %i.am, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <16 x i8>, ptr %i.ar, align 1, !tbaa !7
  %wide.load25 = load <16 x i8>, ptr %i.as, align 1, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <16 x i8> %wide.load, ptr %i.at, align 1, !tbaa !7
  store <16 x i8> %wide.load25, ptr %i.au, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec27 = and i64 %i.am, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index28
  %wide.load29 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 %index28
  store <4 x i8> %wide.load29, ptr %i.ax, align 1, !tbaa !7
  %index.next30 = add nuw i64 %index28, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next30, %n.vec27
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !100

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %i.am, %n.vec27
  br i1 %cmp.n31, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0146.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec27, %vec.epilog.middle.block ] ; 3 uses
  %i.az = add i64 %.092.i.i, 3
  %i.ba = sub i64 %i.az, %.0146.i.i.ph
  %xtraiter = and i64 %.092.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.0146.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.prol ], [ %.0146.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0146.i.i.prol
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0146.i.i.prol
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !7
  %i.be = add nuw i64 %.0146.i.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !101

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.0146.i.i.unr = phi i64 [ %.0146.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.be, %.lr.ph.i.i.prol ]
  %i.bf = icmp ult i64 %i.ba, 3
  br i1 %i.bf, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.0146.i.i = phi i64 [ %i.bv, %.lr.ph.i.i ], [ %.0146.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0146.i.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0146.i.i
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !7
  %i.bj = add nuw i64 %.0146.i.i, 1               ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bj
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !7
  %i.bn = add nuw i64 %.0146.i.i, 2               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bn
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !7
  %i.br = add nuw i64 %.0146.i.i, 3               ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !7
  %i.bv = add nuw i64 %.0146.i.i, 4
  %exitcond.not.i.i.3 = icmp eq i64 %.0146.i.i, %.092.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !102

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.am ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.c, %i.bx
  %i.bz = icmp ult i64 %i.by, 5
  br i1 %i.bz, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit, label %.thread.i.i

bb.h:                                             ; preds = %bb.d
  %i.ca = ptrtoint ptr %i.v to i64
  %i.cb = ptrtoint ptr %0 to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = trunc i64 %i.cc to i32
  br label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit

_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit: ; preds = %bb.b, %bb.f, %._crit_edge.i.i, %bb.d, %bb.h
  %.5.i.i = phi i32 [ -1, %bb.d ], [ %i.cd, %bb.h ], [ -1, %._crit_edge.i.i ], [ -1, %bb.f ], [ -1, %bb.b ]
  ret i32 %.5.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz432LZ4_uncompress_unknownOutputSizeEPKcPcii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef %1, ptr noundef null, i64 noundef 0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN10duckdb_lz421LZ4_sizeofStreamStateEv() local_unnamed_addr #0 {
bb.a:
  ret i32 16416
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @_ZN10duckdb_lz420LZ4_resetStreamStateEPvPc(ptr nofree noundef writeonly captures(none) initializes((0, 16416)) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_lz410LZ4_createEPc(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16416) ptr @malloc(i64 noundef 16416) #18 ; 4 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, 7
  %.not.i.i = icmp eq i64 %i.d, 0
  %or.cond.i = and i1 %i.b, %.not.i.i
  br i1 %or.cond.i, label %bb.b, label %_ZN10duckdb_lz416LZ4_createStreamEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %i.a, i8 0, i64 16416, i1 false)
  br label %_ZN10duckdb_lz416LZ4_createStreamEv.exit

_ZN10duckdb_lz416LZ4_createStreamEv.exit:         ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN10duckdb_lz420LZ4_slideInputBufferEPv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN10duckdb_lz4L23LZ4_memcpy_using_offsetEPhPKhS0_m(ptr nofree noundef writeonly captures(address) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(address) %2, i64 noundef range(i64 0, 16) %3) unnamed_addr #10 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = ptrtoint ptr %2 to i64
  switch i64 %3, label %bb.e [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !7
  %i.f = zext i8 %i.e to i32
  %.sroa.0.0.isplat = mul nuw i32 %i.f, 16843009
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload9 = load i16, ptr %1, align 1
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.0.copyload9 to i32 ; 2 uses
  %.sroa.0.2.insert.shift = shl nuw i32 %.sroa.0.0.insert.ext, 16
  %.sroa.0.2.insert.insert = or disjoint i32 %.sroa.0.2.insert.shift, %.sroa.0.0.insert.ext
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload2 = load i32, ptr %1, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.g = icmp samesign ult i64 %3, 8
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %0, align 1, !tbaa !7
  %i.h = load i8, ptr %1, align 1, !tbaa !7
  store i8 %i.h, ptr %0, align 1, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.p, ptr %i.q, align 1, !tbaa !7
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10inc32tableE, i64 %3
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.u, align 1
  store i32 %i.w, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10dec64tableE, i64 %3
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = sext i32 %i.y to i64
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 %i.aa
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %1, align 1
  store i64 %i.ac, ptr %0, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.023.i = phi ptr [ %i.ab, %bb.f ], [ %i.ad, %bb.g ] ; 5 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ae = add i64 %i.a, 16
  %umax37 = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.ae)
  %i.af = add i64 %umax37, -9
  %i.ag = sub i64 %i.af, %i.a                     ; 2 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.ag, 72
  br i1 %min.iters.check39, label %scalar.ph38.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.h
  %.023.i36 = ptrtoaddr ptr %.023.i to i64
  %4 = add i64 %i.c, 8
  %5 = sub i64 %4, %.023.i36
  %diff.check = icmp ult i64 %5, 32
  br i1 %diff.check, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.ai, 4611686018427387900   ; 3 uses
  %i.aj = shl i64 %n.vec42, 3                     ; 2 uses
  %i.ak = getelementptr i8, ptr %.023.i, i64 %i.aj
  %i.al = getelementptr i8, ptr %.0.i, i64 %i.aj
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph40
  %index44 = phi i64 [ 0, %vector.ph40 ], [ %index.next48, %vector.body43 ] ; 2 uses
  %i.am = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %.023.i, i64 %i.am ; 2 uses
  %next.gep46 = getelementptr i8, ptr %.0.i, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep45, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep45, align 1
  %wide.load47 = load <2 x i64>, ptr %i.an, align 1
  %i.ao = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x i64> %wide.load, ptr %next.gep46, align 1
  store <2 x i64> %wide.load47, ptr %i.ao, align 1
  %index.next48 = add nuw i64 %index44, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next48, %n.vec42
  br i1 %i.ap, label %middle.block49, label %vector.body43, !llvm.loop !103

middle.block49:                                   ; preds = %vector.body43
  %cmp.n50 = icmp eq i64 %i.ai, %n.vec42
  br i1 %cmp.n50, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, label %scalar.ph38.preheader

scalar.ph38.preheader:                            ; preds = %vector.memcheck, %bb.h, %middle.block49
  %.09.i.i.ph = phi ptr [ %.023.i, %vector.memcheck ], [ %.023.i, %bb.h ], [ %i.ak, %middle.block49 ]
  %.0.i.i.ph = phi ptr [ %.0.i, %vector.memcheck ], [ %.0.i, %bb.h ], [ %i.al, %middle.block49 ]
  br label %scalar.ph38

scalar.ph38:                                      ; preds = %scalar.ph38.preheader, %scalar.ph38
  %.09.i.i = phi ptr [ %i.as, %scalar.ph38 ], [ %.09.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ar, %scalar.ph38 ], [ %.0.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %i.aq = load i64, ptr %.09.i.i, align 1
  store i64 %i.aq, ptr %.0.i.i, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.at = icmp ult ptr %i.ar, %2
  br i1 %i.at, label %scalar.ph38, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, !llvm.loop !104

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.9.0 = phi i32 [ %.sroa.0.0.isplat, %bb.b ], [ %.sroa.0.2.insert.insert, %bb.c ], [ %.sroa.0.0.copyload2, %bb.d ] ; 5 uses
  store i32 %.sroa.9.0, ptr %0, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 1
  %.025 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.au = icmp ult ptr %.025, %2
  br i1 %i.au, label %.lr.ph.preheader, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.av = add i64 %i.c, 16
  %umax = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.av)
  %i.aw = add i64 %umax, -9
  %i.ax = sub i64 %i.aw, %i.c                     ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 24
  br i1 %min.iters.check, label %.lr.ph.preheader53, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.az, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %.025, i64 %i.ba
  %i.bc = getelementptr i8, ptr %0, i64 %i.ba
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0, i64 0
  %i.bd = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.025, i64 %i.be
  %i.bf = getelementptr i8, ptr %.025, i64 %i.be
  %next.gep33 = getelementptr i8, ptr %i.bf, i64 16
  store <4 x i32> %i.bd, ptr %next.gep, align 1
  store <4 x i32> %i.bd, ptr %next.gep33, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, label %.lr.ph.preheader53

.lr.ph.preheader53:                               ; preds = %.lr.ph.preheader, %middle.block
  %.027.ph = phi ptr [ %.025, %.lr.ph.preheader ], [ %i.bb, %middle.block ]
  %.pn26.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader53, %.lr.ph
  %.027 = phi ptr [ %.0, %.lr.ph ], [ %.027.ph, %.lr.ph.preheader53 ] ; 3 uses
  %.pn26 = phi ptr [ %.027, %.lr.ph ], [ %.pn26.ph, %.lr.ph.preheader53 ]
  store i32 %.sroa.9.0, ptr %.027, align 1
  %.sroa.9.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %.pn26, i64 12
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx3, align 1
  %.0 = getelementptr inbounds nuw i8, ptr %.027, i64 8 ; 2 uses
  %i.bh = icmp ult ptr %.0, %2
  br i1 %i.bh, label %.lr.ph, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, !llvm.loop !106

_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit: ; preds = %.lr.ph, %scalar.ph38, %middle.block, %middle.block49, %bb.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.usub.sat.v4i32(<4 x i32>, <4 x i32>) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !4, i64 16400}
!9 = !{!"_ZTSN10duckdb_lz421LZ4_stream_t_internalE", !5, i64 0, !10, i64 16384, !12, i64 16392, !4, i64 16400, !4, i64 16404, !4, i64 16408}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTSN10duckdb_lz421LZ4_stream_t_internalE", !11, i64 0}
!13 = !{!9, !12, i64 16392}
!14 = !{!9, !10, i64 16384}
!15 = !{!9, !4, i64 16408}
!16 = !{!9, !4, i64 16404}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !21, !24}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!"branch_weights", i32 127, i32 1}
!29 = !{!"branch_weights", i32 255873, i32 127}
!30 = distinct !{!30, !21}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21, !24, !25}
!33 = distinct !{!33, !21, !24, !25}
!34 = !{!10, !10, i64 0}
!35 = distinct !{!35, !21}
!36 = !{!"branch_weights", i32 4001, i32 1}
!37 = !{!"branch_weights", i32 127, i32 255873}
!38 = distinct !{!38, !21}
!39 = !{!"branch_weights", i32 4001, i32 4000000}
!40 = distinct !{!40, !21}
!41 = !{!"branch_weights", i32 1, i32 4001}
!42 = !{!"branch_weights", i32 6002, i32 8002000}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21, !24, !25}
end_hunk_1
