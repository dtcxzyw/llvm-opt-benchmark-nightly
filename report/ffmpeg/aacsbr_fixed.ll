Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacsbr_fixed?download=true
inline.NumInlined: 254
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 25
begin_hunk_0_@ff_aac_sbr_apply_fixed:bb.a
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ag, %bb.z
  %indvars.iv47.i = phi i64 [ 0, %bb.z ], [ %indvars.iv.next48.i, %bb.ag ] ; 2 uses
  %.04144.i = phi ptr [ %i.mj, %bb.z ], [ %i.nb, %bb.ag ] ; 2 uses
  %i.ms = load ptr, ptr %i.mp, align 8, !tbaa !201
  tail call void %i.ms(ptr noundef nonnull %i.ki, ptr noundef nonnull @sbr_qmf_window_ds, ptr noundef nonnull %.04144.i, i32 noundef 320) #12, !inline_history !166
  %i.mt = load ptr, ptr %i.kg, align 16, !tbaa !202
  tail call void %i.mt(ptr noundef nonnull %i.ki) #12, !inline_history !166
  %i.mu = load ptr, ptr %i.kn, align 8, !tbaa !203
  tail call void %i.mu(ptr noundef nonnull %i.ki) #12, !inline_history !166
  br label %bb.ab

bb.ab:                                            ; preds = %bb.af, %bb.aa
  %indvars.iv.i169 = phi i64 [ 64, %bb.aa ], [ %indvars.iv.next.i170, %bb.af ] ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv.i169 ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !14 ; 4 uses
  %i.mx = icmp sgt i32 %i.mw, 16777216
  br i1 %i.mx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 24, ptr noundef nonnull @.str.35, i32 noundef %i.mw, i32 noundef 16777216) #12
  br label %.sink.split.i

bb.ad:                                            ; preds = %bb.ab
  %i.my = icmp slt i32 %i.mw, -16777216
  br i1 %i.my, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 24, ptr noundef nonnull @.str.36, i32 noundef %i.mw, i32 noundef -16777216) #12
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ae, %bb.ac
  %.sink.i = phi i32 [ 16777216, %bb.ac ], [ -16777216, %bb.ae ]
  store i32 %.sink.i, ptr %i.mv, align 4, !tbaa !14
  br label %bb.af

bb.af:                                            ; preds = %.sink.split.i, %bb.ad
  %indvars.iv.next.i170 = add nuw nsw i64 %indvars.iv.i169, 1 ; 2 uses
  %exitcond.not.i171 = icmp eq i64 %indvars.iv.next.i170, 128
  br i1 %exitcond.not.i171, label %bb.ag, label %bb.ab, !llvm.loop !167

bb.ag:                                            ; preds = %bb.af
  tail call void %i.mg(ptr noundef %i.mf, ptr noundef nonnull %i.ki, ptr noundef nonnull %i.ko, i64 noundef 4) #12, !inline_history !166
  %i.mz = load ptr, ptr %i.kp, align 16, !tbaa !204
  %i.na = getelementptr inbounds nuw [256 x i8], ptr %i.mr, i64 %indvars.iv47.i
  tail call void %i.mz(ptr noundef nonnull %i.na, ptr noundef nonnull %i.ki) #12, !inline_history !166
  %i.nb = getelementptr inbounds nuw i8, ptr %.04144.i, i64 128
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 2 uses
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next48.i, %wide.trip.count.i168
  br i1 %exitcond50.not.i, label %sbr_qmf_analysis.exit, label %bb.aa, !llvm.loop !168

sbr_qmf_analysis.exit:                            ; preds = %bb.ag
  %i.nc = load ptr, ptr %i.kq, align 16, !tbaa !205
  %i.nd = load i32, ptr %i.ml, align 16, !tbaa !200
  %i.ne = tail call i32 %i.nc(ptr noundef nonnull %i.a, ptr noundef nonnull %i.kr, ptr noundef nonnull %i.mk, i32 noundef %i.nd, i32 noundef %i.h) #12 ; 0 uses
  %i.nf = load i32, ptr %i.ml, align 16, !tbaa !200
  %i.ng = xor i32 %i.nf, 1
  store i32 %i.ng, ptr %i.ml, align 16, !tbaa !200
  %i.nh = load i32, ptr %i.aj, align 4, !tbaa !44
  %.not166 = icmp eq i32 %i.nh, 0
  br i1 %.not166, label %bb.fx, label %bb.ah

bb.ah:                                            ; preds = %sbr_qmf_analysis.exit
  %i.ni = load ptr, ptr %i.ks, align 8, !tbaa !206
  %i.nj = load i32, ptr %i.kv, align 16, !tbaa !14
  tail call void %i.ni(ptr noundef nonnull %i.kg, ptr noundef nonnull %i.kt, ptr noundef nonnull %i.ku, ptr noundef nonnull %i.kr, i32 noundef %i.nj) #12
  %i.nk = load i32, ptr %i.kw, align 8, !tbaa !61
  %i.nl = icmp sgt i32 %i.nk, 0
  br i1 %i.nl, label %.lr.ph.i173, label %sbr_chirp.exit

.lr.ph.i173:                                      ; preds = %bb.ah
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mi, i64 39
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mi, i64 44
  %i.no = getelementptr inbounds nuw i8, ptr %i.mi, i64 14588
  br label %bb.ai

bb.ai:                                            ; preds = %bb.an, %.lr.ph.i173
  %indvars.iv.i174 = phi i64 [ 0, %.lr.ph.i173 ], [ %indvars.iv.next.i175, %bb.an ] ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 %indvars.iv.i174
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !13  ; 2 uses
  %i.nr = zext i8 %i.nq to i32
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nn, i64 %indvars.iv.i174
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !13
  %i.nu = zext i8 %i.nt to i32
  %i.nv = add nuw nsw i32 %i.nu, %i.nr
  %i.nw = icmp eq i32 %i.nv, 1
  br i1 %i.nw, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.nx = zext i8 %i.nq to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr @sbr_chirp.bw_tab, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !14
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0.i = phi i32 [ %i.nz, %bb.aj ], [ 1288490189, %bb.ai ] ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv.i174 ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !14 ; 2 uses
  %i.oc = icmp slt i32 %.0.i, %i.ob
  %i.od = sext i32 %.0.i to i64                   ; 2 uses
  %i.oe = sext i32 %i.ob to i64                   ; 2 uses
  br i1 %i.oc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.of = mul nsw i64 %i.od, 1610612736
  %i.og = shl nsw i64 %i.oe, 29
  %i.oh = add nsw i64 %i.og, %i.of
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.oi = mul nsw i64 %i.od, 1946157056
  %i.oj = mul nsw i64 %i.oe, 201326592
  %i.ok = add nsw i64 %i.oj, %i.oi
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.1.in.in.in.i = phi i64 [ %i.oh, %bb.al ], [ %i.ok, %bb.am ]
  %.1.in.in.i = add nsw i64 %.1.in.in.in.i, 1073741824
  %.1.in.i = lshr i64 %.1.in.in.i, 31
  %.1.i = trunc i64 %.1.in.i to i32               ; 2 uses
  %i.ol = icmp slt i32 %.1.i, 33554432
  %i.om = select i1 %i.ol, i32 0, i32 %.1.i
  store i32 %i.om, ptr %i.oa, align 4, !tbaa !14
  %indvars.iv.next.i175 = add nuw nsw i64 %indvars.iv.i174, 1 ; 2 uses
  %i.on = load i32, ptr %i.kw, align 8, !tbaa !61
  %i.oo = sext i32 %i.on to i64
  %i.op = icmp slt i64 %indvars.iv.next.i175, %i.oo
  br i1 %i.op, label %bb.ai, label %sbr_chirp.exit, !llvm.loop !169

sbr_chirp.exit:                                   ; preds = %bb.an, %bb.ah
  %i.oq = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 6 uses
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !67 ; 2 uses
  %i.os = icmp sgt i32 %i.or, 0
  br i1 %i.os, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %sbr_chirp.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1733) #12
  tail call void @abort() #13
  unreachable

bb.ap:                                            ; preds = %sbr_chirp.exit
  %i.ot = getelementptr inbounds nuw i8, ptr %i.mi, i64 14588
  %i.ou = getelementptr inbounds nuw i8, ptr %i.mi, i64 106632 ; 7 uses
  %i.ov = load i32, ptr %i.ky, align 8, !tbaa !14 ; 3 uses
  %i.ow = load i32, ptr %i.kz, align 16, !tbaa !62 ; 2 uses
  %i.ox = icmp sgt i32 %i.ow, 0
  br i1 %i.ox, label %.preheader.lr.ph.i176, label %._crit_edge72.i

.preheader.lr.ph.i176:                            ; preds = %bb.ap
  %i.oy = zext nneg i32 %i.or to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.oy
  br label %.preheader.i177

.preheader.i177:                                  ; preds = %._crit_edge.i184, %.preheader.lr.ph.i176
  %i.pa = phi i32 [ %i.ow, %.preheader.lr.ph.i176 ], [ %i.qq, %._crit_edge.i184 ]
  %indvars.iv81.i = phi i64 [ 0, %.preheader.lr.ph.i176 ], [ %indvars.iv.next82.i, %._crit_edge.i184 ] ; 3 uses
  %.04571.i = phi i32 [ %i.ov, %.preheader.lr.ph.i176 ], [ %.1.lcssa.i, %._crit_edge.i184 ] ; 2 uses
  %.04670.i = phi i32 [ 0, %.preheader.lr.ph.i176 ], [ %.147.lcssa.i, %._crit_edge.i184 ] ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.la, i64 %indvars.iv81.i ; 2 uses
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !13
  %.not74.i = icmp eq i8 %i.pc, 0
  br i1 %.not74.i, label %._crit_edge.i184, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %.preheader.i177
  %i.pd = getelementptr inbounds nuw i8, ptr %i.lb, i64 %indvars.iv81.i
  %i.pe = sext i32 %.04571.i to i64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.at, %.lr.ph66.i
  %indvars.iv78.i = phi i64 [ %i.pe, %.lr.ph66.i ], [ %indvars.iv.next79.i, %bb.at ] ; 4 uses
  %.14764.i = phi i32 [ %.04670.i, %.lr.ph66.i ], [ %i.pt, %bb.at ] ; 3 uses
  %.04863.i = phi i32 [ 0, %.lr.ph66.i ], [ %i.ql, %bb.at ] ; 2 uses
  %i.pf = load i8, ptr %i.pd, align 1, !tbaa !13
  %i.pg = zext i8 %i.pf to i32
  %i.ph = add nuw nsw i32 %.04863.i, %i.pg
  %i.pi = load i32, ptr %i.kw, align 8, !tbaa !61 ; 3 uses
  %.not59.i = icmp sgt i32 %.14764.i, %i.pi
  br i1 %.not59.i, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.aq
  %i.pj = zext nneg i32 %.14764.i to i64
  %i.pk = zext nneg i32 %i.pi to i64
  %i.pl = add nuw i32 %i.pi, 1
  br label %.lr.ph.i178

.lr.ph.i178:                                      ; preds = %bb.ar, %.lr.ph.preheader.i
  %indvars.iv.i179 = phi i64 [ %i.pj, %.lr.ph.preheader.i ], [ %indvars.iv.next.i180, %bb.ar ] ; 4 uses
  %i.pm = getelementptr inbounds nuw [2 x i8], ptr %i.lc, i64 %indvars.iv.i179
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !58
  %i.po = zext i16 %i.pn to i64
  %.not55.i = icmp slt i64 %indvars.iv78.i, %i.po
  br i1 %.not55.i, label %.critedge.loopexit.split.loop.exit89.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i178
  %indvars.iv.next.i180 = add nuw nsw i64 %indvars.iv.i179, 1
  %exitcond.not.i181 = icmp eq i64 %indvars.iv.i179, %i.pk
  br i1 %exitcond.not.i181, label %.critedge.i, label %.lr.ph.i178, !llvm.loop !170

.critedge.loopexit.split.loop.exit89.i:           ; preds = %.lr.ph.i178
  %i.pp = trunc nsw i64 %indvars.iv.i179 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ar, %.critedge.loopexit.split.loop.exit89.i, %bb.aq
  %.2.lcssa.i = phi i32 [ %.14764.i, %bb.aq ], [ %i.pp, %.critedge.loopexit.split.loop.exit89.i ], [ %i.pl, %bb.ar ] ; 2 uses
  %i.pq = icmp sgt i32 %.2.lcssa.i, 0
  br i1 %i.pq, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.critedge.i
  %i.pr = trunc nsw i64 %indvars.iv78.i to i32
  %i.ps = load ptr, ptr %i.le, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ps, i32 noundef 16, ptr noundef nonnull @.str.37, i32 noundef %i.pr) #12
  br label %sbr_hf_gen.exit

bb.at:                                            ; preds = %.critedge.i
  %i.pt = add nsw i32 %.2.lcssa.i, -1             ; 3 uses
  %i.pu = load ptr, ptr %i.ld, align 16, !tbaa !207
  %i.pv = getelementptr inbounds [320 x i8], ptr %i.kx, i64 %indvars.iv78.i
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.px = zext nneg i32 %i.ph to i64              ; 3 uses
  %i.py = getelementptr inbounds nuw [320 x i8], ptr %i.kr, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.px
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.px
  %i.qc = zext nneg i32 %i.pt to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.qc
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !14
  %i.qf = load i8, ptr %i.ou, align 8, !tbaa !13
  %i.qg = zext i8 %i.qf to i32
  %i.qh = shl nuw nsw i32 %i.qg, 1
  %i.qi = load i8, ptr %i.oz, align 1, !tbaa !13
  %i.qj = zext i8 %i.qi to i32
  %i.qk = shl nuw nsw i32 %i.qj, 1
  tail call void %i.pu(ptr noundef nonnull %i.pw, ptr noundef nonnull %i.pz, ptr noundef nonnull %i.qa, ptr noundef nonnull %i.qb, i32 noundef %i.qe, i32 noundef %i.qh, i32 noundef %i.qk) #12, !inline_history !171
  %i.ql = add nuw nsw i32 %.04863.i, 1            ; 2 uses
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %i.qm = load i8, ptr %i.pb, align 1, !tbaa !13
  %i.qn = zext i8 %i.qm to i32
  %i.qo = icmp samesign ult i32 %i.ql, %i.qn
  br i1 %i.qo, label %bb.aq, label %._crit_edge.loopexit.i182, !llvm.loop !172

._crit_edge.loopexit.i182:                        ; preds = %bb.at
  %i.qp = trunc nsw i64 %indvars.iv.next79.i to i32
  %.pre.i183 = load i32, ptr %i.kz, align 16, !tbaa !62
  br label %._crit_edge.i184

._crit_edge.i184:                                 ; preds = %._crit_edge.loopexit.i182, %.preheader.i177
  %i.qq = phi i32 [ %i.pa, %.preheader.i177 ], [ %.pre.i183, %._crit_edge.loopexit.i182 ] ; 2 uses
  %.147.lcssa.i = phi i32 [ %.04670.i, %.preheader.i177 ], [ %i.pt, %._crit_edge.loopexit.i182 ]
  %.1.lcssa.i = phi i32 [ %.04571.i, %.preheader.i177 ], [ %i.qp, %._crit_edge.loopexit.i182 ] ; 2 uses
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1 ; 2 uses
  %i.qr = sext i32 %i.qq to i64
  %i.qs = icmp slt i64 %indvars.iv.next82.i, %i.qr
  br i1 %i.qs, label %.preheader.i177, label %._crit_edge72.loopexit.i, !llvm.loop !173

._crit_edge72.loopexit.i:                         ; preds = %._crit_edge.i184
  %.pre84.i = load i32, ptr %i.ky, align 8, !tbaa !14
  br label %._crit_edge72.i

._crit_edge72.i:                                  ; preds = %._crit_edge72.loopexit.i, %bb.ap
  %i.qt = phi i32 [ %i.ov, %bb.ap ], [ %.pre84.i, %._crit_edge72.loopexit.i ]
  %.045.lcssa.i = phi i32 [ %i.ov, %bb.ap ], [ %.1.lcssa.i, %._crit_edge72.loopexit.i ] ; 3 uses
  %i.qu = load i32, ptr %i.lf, align 16, !tbaa !14
  %i.qv = add nsw i32 %i.qu, %i.qt                ; 2 uses
  %i.qw = icmp slt i32 %.045.lcssa.i, %i.qv
  br i1 %i.qw, label %bb.au, label %sbr_hf_gen.exit

bb.au:                                            ; preds = %._crit_edge72.i
  %i.qx = sext i32 %.045.lcssa.i to i64
  %i.qy = getelementptr inbounds [320 x i8], ptr %i.kx, i64 %i.qx
  %i.qz = sub nsw i32 %i.qv, %.045.lcssa.i
  %i.ra = zext nneg i32 %i.qz to i64
  %i.rb = mul nuw nsw i64 %i.ra, 320
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qy, i8 0, i64 %i.rb, i1 false)
  br label %sbr_hf_gen.exit

sbr_hf_gen.exit:                                  ; preds = %bb.as, %._crit_edge72.i, %bb.au
  %i.rc = getelementptr inbounds nuw i8, ptr %i.mi, i64 14580 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.mi, i64 102176 ; 5 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.mi, i64 102224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.re, i8 0, i64 336, i1 false)
  %i.rf = load i32, ptr %i.oq, align 8, !tbaa !67 ; 3 uses
  %i.rg = icmp sgt i32 %i.rf, 0
  br i1 %i.rg, label %.lr.ph148.i, label %.._crit_edge149_crit_edge.i

.._crit_edge149_crit_edge.i:                      ; preds = %sbr_hf_gen.exit
  %.pre177.i = sext i32 %i.rf to i64
  br label %.loopexit

.lr.ph148.i:                                      ; preds = %sbr_hf_gen.exit
  %i.rh = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  %i.ri = getelementptr inbounds nuw i8, ptr %i.mi, i64 103040
  %i.rj = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.rk = getelementptr inbounds nuw i8, ptr %i.mi, i64 106643
  %i.rl = getelementptr inbounds nuw i8, ptr %i.mi, i64 106512
  %i.rm = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.rn = getelementptr inbounds nuw i8, ptr %i.mi, i64 49
  %i.ro = getelementptr inbounds nuw i8, ptr %i.mi, i64 14584
  br label %bb.av

.loopexit114.i:                                   ; preds = %._crit_edge137.i, %.preheader.i191
  %i.rp = load i32, ptr %i.oq, align 8, !tbaa !67 ; 2 uses
  %i.rq = sext i32 %i.rp to i64                   ; 2 uses
  %i.rr = icmp slt i64 %indvars.iv.next170.i, %i.rq
  br i1 %i.rr, label %bb.av, label %.loopexit, !llvm.loop !174

bb.av:                                            ; preds = %.loopexit114.i, %.lr.ph148.i
  %indvars.iv169.i = phi i64 [ 0, %.lr.ph148.i ], [ %indvars.iv.next170.i, %.loopexit114.i ] ; 6 uses
  %indvars.iv.next170.i = add nuw nsw i64 %indvars.iv169.i, 1 ; 6 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rh, i64 %indvars.iv.next170.i
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !13  ; 2 uses
  %i.ru = zext i8 %i.rt to i64
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !14 ; 3 uses
  %.not.i185 = icmp eq i8 %i.rt, 0
  %i.rx = select i1 %.not.i185, ptr %i.li, ptr %i.lh ; 4 uses
  %i.ry = load i32, ptr %i.ky, align 8, !tbaa !14
  %i.rz = load i16, ptr %i.rx, align 2, !tbaa !58 ; 2 uses
  %i.sa = zext i16 %i.rz to i32
  %.not108.i = icmp eq i32 %i.ry, %i.sa
  br i1 %.not108.i, label %.preheader116.i, label %sbr_mapping.exit

.preheader116.i:                                  ; preds = %bb.av
  %.not150.i = icmp eq i32 %i.rw, 0               ; 2 uses
  br i1 %.not150.i, label %._crit_edge.i190, label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %.preheader116.i
  %i.sb = getelementptr inbounds nuw [384 x i8], ptr %i.lj, i64 %indvars.iv169.i
  %i.sc = getelementptr inbounds nuw [384 x i8], ptr %i.ri, i64 %indvars.iv.next170.i
  %wide.trip.count.i186 = zext i32 %i.rw to i64
  br label %bb.aw

.loopexit113.i:                                   ; preds = %bb.ax, %bb.aw
  %i.sd = phi i16 [ %i.sg, %bb.aw ], [ %i.sp, %bb.ax ]
  %exitcond.not.i189 = icmp eq i64 %indvars.iv.next.i188, %wide.trip.count.i186
  br i1 %exitcond.not.i189, label %._crit_edge.i190, label %bb.aw, !llvm.loop !175

bb.aw:                                            ; preds = %.loopexit113.i, %.lr.ph125.i
  %i.se = phi i16 [ %i.rz, %.lr.ph125.i ], [ %i.sd, %.loopexit113.i ] ; 2 uses
  %indvars.iv.i187 = phi i64 [ 0, %.lr.ph125.i ], [ %indvars.iv.next.i188, %.loopexit113.i ] ; 2 uses
  %indvars.iv.next.i188 = add nuw nsw i64 %indvars.iv.i187, 1 ; 3 uses
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr %i.rx, i64 %indvars.iv.next.i188 ; 2 uses
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !58 ; 2 uses
  %i.sh = icmp ult i16 %i.se, %i.sg
  br i1 %i.sh, label %.lr.ph.i193, label %.loopexit113.i

.lr.ph.i193:                                      ; preds = %bb.aw
  %i.si = zext i16 %i.se to i32
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv.i187
  %.pre.i194 = load i64, ptr %i.sj, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i193
  %.098123.i = phi i32 [ %i.si, %.lr.ph.i193 ], [ %i.so, %bb.ax ] ; 2 uses
  %i.sk = load i32, ptr %i.ky, align 8, !tbaa !14
  %i.sl = sub nsw i32 %.098123.i, %i.sk
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds [8 x i8], ptr %i.sb, i64 %i.sm
  store i64 %.pre.i194, ptr %i.sn, align 8
  %i.so = add nuw nsw i32 %.098123.i, 1           ; 2 uses
  %i.sp = load i16, ptr %i.sf, align 2, !tbaa !58 ; 2 uses
  %i.sq = zext i16 %i.sp to i32
  %i.sr = icmp samesign ult i32 %i.so, %i.sq
  br i1 %i.sr, label %bb.ax, label %.loopexit113.i, !llvm.loop !176

._crit_edge.i190:                                 ; preds = %.loopexit113.i, %.preheader116.i
  %i.ss = load i32, ptr %i.rj, align 8, !tbaa !70
  %i.st = icmp sgt i32 %i.ss, 1
  br i1 %i.st, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i190
  %i.su = getelementptr inbounds nuw i8, ptr %i.ou, i64 %indvars.iv169.i
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !13
  %i.sw = load i8, ptr %i.rk, align 1, !tbaa !13
  %.not112.i = icmp ult i8 %i.sv, %i.sw
  %i.sx = select i1 %.not112.i, i64 1, i64 2
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge.i190
  %i.sy = phi i64 [ 1, %._crit_edge.i190 ], [ %i.sx, %bb.ay ]
  %i.sz = load i32, ptr %i.kw, align 8, !tbaa !61 ; 2 uses
  %i.ta = icmp sgt i32 %i.sz, 0
  br i1 %i.ta, label %.lr.ph131.i, label %.preheader115.i

.lr.ph131.i:                                      ; preds = %bb.az
  %i.tb = getelementptr inbounds nuw [384 x i8], ptr %i.lk, i64 %indvars.iv169.i
  %i.tc = getelementptr inbounds nuw [40 x i8], ptr %i.rl, i64 %i.sy
  %.pre172.i = load i16, ptr %i.lc, align 2, !tbaa !58
  br label %bb.ba

.loopexit.loopexit.i:                             ; preds = %bb.bb
  %.pre174.i = load i32, ptr %i.kw, align 8, !tbaa !61
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ba, %.loopexit.loopexit.i
  %i.td = phi i32 [ %.pre174.i, %.loopexit.loopexit.i ], [ %i.tm, %bb.ba ] ; 2 uses
  %i.te = phi i16 [ %i.ty, %.loopexit.loopexit.i ], [ %i.tp, %bb.ba ]
  %i.tf = sext i32 %i.td to i64
  %i.tg = icmp slt i64 %indvars.iv.next154.i, %i.tf
  br i1 %i.tg, label %bb.ba, label %.preheader115.i, !llvm.loop !177

end_hunk_0
begin_hunk_1_@read_sbr_grid:bb.a
  store i8 %i.sk, ptr %i.sn, align 1, !tbaa !13
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph224.2, %.lr.ph224.1, %.lr.ph224
  %.pre295 = load i32, ptr %i.a, align 8, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader221
  %i.so = phi i32 [ %.pre295, %._crit_edge.loopexit ], [ %i.nq, %.preheader221 ] ; 5 uses
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr inbounds i8, ptr @ceil_log2, i64 %i.sp
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !13
  %i.ss = sext i8 %i.sr to i32                    ; 2 uses
  %i.st = load i32, ptr %i.o, align 8, !tbaa !30  ; 3 uses
  %i.su = load i32, ptr %i.q, align 8, !tbaa !31
  %i.sv = load ptr, ptr %2, align 8, !tbaa !42
  %i.sw = lshr i32 %i.st, 3
  %i.sx = zext nneg i32 %i.sw to i64
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sx
  %i.sz = load i32, ptr %i.sy, align 1, !tbaa !13
  %i.ta = tail call i32 @llvm.bswap.i32(i32 %i.sz)
  %i.tb = and i32 %i.st, 7
  %i.tc = shl i32 %i.ta, %i.tb
  %i.td = sub nsw i32 32, %i.ss
  %i.te = lshr i32 %i.tc, %i.td                   ; 2 uses
  %i.tf = add i32 %i.st, %i.ss
  %i.tg = tail call i32 @llvm.umin.i32(i32 %i.su, i32 %i.tf)
  store i32 %i.tg, ptr %i.o, align 8, !tbaa !30
  %i.th = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.ti = icmp sgt i32 %i.so, 0
  br i1 %i.ti, label %.lr.ph227.preheader, label %get_bits1_vector.exit202

.lr.ph227.preheader:                              ; preds = %._crit_edge
  %wide.trip.count264 = zext nneg i32 %i.so to i64
  br label %.lr.ph227

.lr.ph227:                                        ; preds = %.lr.ph227.preheader, %.lr.ph227
  %indvars.iv261 = phi i64 [ 0, %.lr.ph227.preheader ], [ %indvars.iv.next262, %.lr.ph227 ] ; 2 uses
  %i.tj = load i32, ptr %i.o, align 8, !tbaa !30  ; 4 uses
  %i.tk = load ptr, ptr %2, align 8, !tbaa !42
  %i.tl = lshr i32 %i.tj, 3
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.tm
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !13
  %i.tp = load i32, ptr %i.q, align 8, !tbaa !31
  %i.tq = icmp slt i32 %i.tj, %i.tp
  %i.tr = zext i1 %i.tq to i32
  %spec.select.i205 = add i32 %i.tj, %i.tr
  %i.ts = zext i8 %i.to to i32
  %i.tt = and i32 %i.tj, 7
  %i.tu = shl nuw nsw i32 %i.ts, %i.tt
  store i32 %spec.select.i205, ptr %i.o, align 8, !tbaa !30
  %i.tv = trunc i32 %i.tu to i8
  %i.tw = lshr i8 %i.tv, 7
  %i.tx = getelementptr inbounds nuw i8, ptr %i.th, i64 %indvars.iv261
  store i8 %i.tw, ptr %i.tx, align 1, !tbaa !13
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %get_bits1_vector.exit202, label %.lr.ph227, !llvm.loop !0

default.unreachable309:                           ; preds = %bb.a
  unreachable

get_bits1_vector.exit202.thread:                  ; preds = %.lr.ph246.preheader, %._crit_edge243
  store i32 0, ptr %3, align 16, !tbaa !71
  br label %bb.n

get_bits1_vector.exit202.loopexit257:             ; preds = %bb.i, %bb.h, %bb.g, %._crit_edge231
  %i.ty = tail call i32 @llvm.bswap.i32(i32 %i.ka)
  %i.tz = and i32 %i.ju, 7
  %i.ua = shl i32 %i.ty, %i.tz
  %i.ub = sub nsw i32 32, %i.jt
  %i.uc = lshr i32 %i.ua, %i.ub
  br label %get_bits1_vector.exit202

get_bits1_vector.exit202:                         ; preds = %.lr.ph227, %.lr.ph239, %get_bits1_vector.exit202.loopexit257, %._crit_edge, %._crit_edge236
  %i.ud = phi i32 [ %i.fs, %.lr.ph239 ], [ %i.fs, %._crit_edge236 ], [ %i.so, %._crit_edge ], [ %i.hr, %get_bits1_vector.exit202.loopexit257 ], [ %i.so, %.lr.ph227 ]
  %.0185 = phi i32 [ %i.gi, %.lr.ph239 ], [ %i.gi, %._crit_edge236 ], [ %i.te, %._crit_edge ], [ %i.uc, %get_bits1_vector.exit202.loopexit257 ], [ %i.te, %.lr.ph227 ] ; 2 uses
  store i32 %i.aa, ptr %3, align 16, !tbaa !71
  %i.ue = icmp sgt i32 %.0185, -1
  br i1 %i.ue, label %bb.n, label %bb.m

bb.m:                                             ; preds = %get_bits1_vector.exit202
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.5, i32 noundef 738) #12
  tail call void @abort() #13
  unreachable

bb.n:                                             ; preds = %get_bits1_vector.exit202.thread, %get_bits1_vector.exit202
  %i.uf = phi i32 [ %i.an, %get_bits1_vector.exit202.thread ], [ %i.ud, %get_bits1_vector.exit202 ] ; 7 uses
  %.0185207 = phi i32 [ 0, %get_bits1_vector.exit202.thread ], [ %.0185, %get_bits1_vector.exit202 ] ; 9 uses
  %i.ug = add nsw i32 %i.uf, 1                    ; 3 uses
  %i.uh = icmp sgt i32 %.0185207, %i.ug
  br i1 %i.uh, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.n
  %.not197247 = icmp slt i32 %i.uf, 1
  br i1 %.not197247, label %._crit_edge250, label %.lr.ph249.preheader

.lr.ph249.preheader:                              ; preds = %.preheader
  %wide.trip.count293 = zext nneg i32 %i.ug to i64
  br label %.lr.ph249

bb.o:                                             ; preds = %bb.n
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.uj, i32 noundef 16, ptr noundef nonnull @.str.26, i32 noundef %.0185207) #12
  br label %bb.ad

bb.p:                                             ; preds = %.lr.ph249
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count293
  br i1 %exitcond294.not, label %._crit_edge250, label %.lr.ph249, !llvm.loop !234

.lr.ph249:                                        ; preds = %.lr.ph249.preheader, %bb.p
  %indvars.iv290 = phi i64 [ 1, %.lr.ph249.preheader ], [ %indvars.iv.next291, %bb.p ] ; 2 uses
  %i.uk = getelementptr i8, ptr %i.j, i64 %indvars.iv290 ; 2 uses
  %i.ul = getelementptr i8, ptr %i.uk, i64 -1
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !13
  %i.un = load i8, ptr %i.uk, align 1, !tbaa !13
  %.not200 = icmp ult i8 %i.um, %i.un
  br i1 %.not200, label %bb.p, label %bb.q

bb.q:                                             ; preds = %.lr.ph249
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.up, i32 noundef 16, ptr noundef nonnull @.str.27) #12
  br label %bb.ad

._crit_edge250:                                   ; preds = %bb.p, %.preheader
  %i.uq = icmp sgt i32 %i.uf, 1                   ; 2 uses
  %i.ur = select i1 %i.uq, i32 2, i32 1           ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.ur, ptr %i.us, align 8, !tbaa !70
  %i.ut = load i8, ptr %i.j, align 8, !tbaa !13
  %i.uu = getelementptr inbounds nuw i8, ptr %3, i64 106642 ; 2 uses
  store i8 %i.ut, ptr %i.uu, align 2, !tbaa !13
  %i.uv = sext i32 %i.uf to i64
  %i.uw = getelementptr inbounds i8, ptr %i.j, i64 %i.uv
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !13
  %i.uy = zext nneg i32 %i.ur to i64
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.uy
  store i8 %i.ux, ptr %i.uz, align 1, !tbaa !13
  br i1 %i.uq, label %bb.r, label %bb.z

bb.r:                                             ; preds = %._crit_edge250
  %i.va = icmp eq i32 %i.aa, 0
  br i1 %i.va, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.vb = lshr i32 %i.uf, 1
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.vc = and i32 %i.z, 1073741824
  %.not198 = icmp eq i32 %i.vc, 0
  br i1 %.not198, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.vd = tail call i32 @llvm.smax.i32(i32 %.0185207, i32 2)
  %reass.sub = sub nsw i32 %i.uf, %i.vd
  %i.ve = add nsw i32 %reass.sub, 1
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  switch i32 %.0185207, label %bb.x [
    i32 0, label %bb.y
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.vf = add nsw i32 %i.uf, -1
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.vg = add nsw i32 %.0185207, -1
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.u, %bb.w, %bb.x, %bb.s
  %.0 = phi i32 [ %i.vb, %bb.s ], [ %i.ve, %bb.u ], [ %i.vf, %bb.w ], [ %i.vg, %bb.x ], [ 1, %bb.v ]
  %i.vh = sext i32 %.0 to i64
  %i.vi = getelementptr inbounds i8, ptr %i.j, i64 %i.vh
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !13
  %i.vk = getelementptr inbounds nuw i8, ptr %3, i64 106643
  store i8 %i.vj, ptr %i.vk, align 1, !tbaa !13
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge250
  %i.vl = getelementptr inbounds nuw i8, ptr %3, i64 14580
  %i.vm = getelementptr inbounds nuw i8, ptr %3, i64 14584 ; 4 uses
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !14
  %i.vo = icmp ne i32 %i.vn, %i.b
  %.neg = sext i1 %i.vo to i32
  store i32 %.neg, ptr %i.vl, align 4, !tbaa !14
  store i32 -1, ptr %i.vm, align 8, !tbaa !14
  %i.vp = trunc i32 %i.aa to i1
  %i.vq = icmp ne i32 %.0185207, 0
  %or.cond = and i1 %i.vq, %i.vp
  br i1 %or.cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.vr = sub nsw i32 %i.ug, %.0185207
  store i32 %i.vr, ptr %i.vm, align 8, !tbaa !14
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.vs = icmp eq i32 %i.aa, 2
  %i.vt = icmp samesign ugt i32 %.0185207, 1
  %or.cond3 = and i1 %i.vs, %i.vt
  br i1 %or.cond3, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.vu = add nsw i32 %.0185207, -1
  store i32 %i.vu, ptr %i.vm, align 8, !tbaa !14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac, %bb.ab, %bb.q, %bb.o, %bb.k, %bb.c
  %.0187 = phi i32 [ -1, %bb.o ], [ -1, %bb.q ], [ -1, %bb.k ], [ -1, %bb.c ], [ 0, %bb.ab ], [ 0, %bb.ac ], [ 0, %bb.aa ]
  ret i32 %.0187
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @read_sbr_dtdf(i32 %.16.val, ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #8 {
bb.a:
  %.not = icmp eq i32 %.16.val, 0
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !67   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0                     ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %.lr.ph, label %get_bits1_vector.exit27

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !30   ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !42
  %i.i = lshr i32 %i.g, 3
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = load i32, ptr %i.f, align 8, !tbaa !31
  %i.n = icmp slt i32 %i.g, %i.m
  %i.o = zext i1 %i.n to i32
  %spec.select.i = add i32 %i.g, %i.o
  %i.p = zext i8 %i.l to i32
  %i.q = and i32 %i.g, 7
  %i.r = shl nuw nsw i32 %i.p, %i.q
  store i32 %spec.select.i, ptr %i.e, align 8, !tbaa !30
  %i.s = trunc i32 %i.r to i8
  %i.t = lshr i8 %i.s, 7
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.t, ptr %i.u, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %get_bits1_vector.exit27, label %bb.c, !llvm.loop !0

get_bits1_vector.exit27:                          ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !70   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph4, label %get_bits1_vector.exit25

.lr.ph4:                                          ; preds = %get_bits1_vector.exit27
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count14 = zext nneg i32 %i.x to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph4, %bb.d
  %indvars.iv11 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next12, %bb.d ] ; 2 uses
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !30  ; 4 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !42
  %i.ad = lshr i32 %i.ab, 3
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %i.ah = load i32, ptr %i.aa, align 8, !tbaa !31
  %i.ai = icmp slt i32 %i.ab, %i.ah
  %i.aj = zext i1 %i.ai to i32
  %spec.select.i28 = add i32 %i.ab, %i.aj
  %i.ak = zext i8 %i.ag to i32
  %i.al = and i32 %i.ab, 7
  %i.am = shl nuw nsw i32 %i.ak, %i.al
  store i32 %spec.select.i28, ptr %i.z, align 8, !tbaa !30
  %i.an = trunc i32 %i.am to i8
  %i.ao = lshr i8 %i.an, 7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv11
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !13
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1 ; 2 uses
  %exitcond15.not = icmp eq i64 %indvars.iv.next12, %wide.trip.count14
  br i1 %exitcond15.not, label %get_bits1_vector.exit25, label %bb.d, !llvm.loop !0

bb.e:                                             ; preds = %bb.a
  br i1 %i.d, label %.lr.ph6, label %get_bits1_vector.exit23

.lr.ph6:                                          ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count19 = zext nneg i32 %i.c to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph6, %bb.f
  %indvars.iv16 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next17, %bb.f ] ; 2 uses
  %i.as = load i32, ptr %i.aq, align 8, !tbaa !30 ; 4 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !42
  %i.au = lshr i32 %i.as, 3
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = load i32, ptr %i.ar, align 8, !tbaa !31
  %i.az = icmp slt i32 %i.as, %i.ay
  %i.ba = zext i1 %i.az to i32
  %spec.select.i29 = add i32 %i.as, %i.ba
  %i.bb = zext i8 %i.ax to i32
  %i.bc = and i32 %i.as, 7
  %i.bd = shl nuw nsw i32 %i.bb, %i.bc
  store i32 %spec.select.i29, ptr %i.aq, align 8, !tbaa !30
  %i.be = trunc i32 %i.bd to i8
  %i.bf = lshr i8 %i.be, 7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv16
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !13
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1 ; 2 uses
  %exitcond20.not = icmp eq i64 %indvars.iv.next17, %wide.trip.count19
  br i1 %exitcond20.not, label %get_bits1_vector.exit23, label %bb.f, !llvm.loop !0

get_bits1_vector.exit23:                          ; preds = %bb.f, %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !70 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph8, label %get_bits1_vector.exit25

.lr.ph8:                                          ; preds = %get_bits1_vector.exit23
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count24 = zext nneg i32 %i.bj to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph8, %bb.g
  %indvars.iv21 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next22, %bb.g ] ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 8, !tbaa !30 ; 4 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !42
  %i.bp = lshr i32 %i.bn, 3
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !13
  %i.bt = load i32, ptr %i.bm, align 8, !tbaa !31
  %i.bu = icmp slt i32 %i.bn, %i.bt
  %i.bv = zext i1 %i.bu to i32
  %spec.select.i30 = add i32 %i.bn, %i.bv
  %i.bw = zext i8 %i.bs to i32
  %i.bx = and i32 %i.bn, 7
  %i.by = shl nuw nsw i32 %i.bw, %i.bx
  store i32 %spec.select.i30, ptr %i.bl, align 8, !tbaa !30
  %i.bz = trunc i32 %i.by to i8
  %i.ca = lshr i8 %i.bz, 7
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv21
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !13
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count24
  br i1 %exitcond25.not, label %get_bits1_vector.exit25, label %bb.g, !llvm.loop !0

get_bits1_vector.exit25:                          ; preds = %bb.d, %bb.g, %get_bits1_vector.exit27, %get_bits1_vector.exit23
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @read_sbr_envelope(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 347568
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 347572
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14
  %i.d = and i32 %i.c, 1
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !66   ; 2 uses
  %i.g = icmp eq i32 %i.f, 1
  %i.h = select i1 %i.g, i32 2, i32 1             ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 347568 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 347572
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %.not161 = icmp eq i32 %i.f, 0
  br i1 %.not161, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 100
end_hunk_1
