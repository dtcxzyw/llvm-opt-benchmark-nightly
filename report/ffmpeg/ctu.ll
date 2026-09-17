Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ctu?download=true
inline.NumInlined: 95
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 44
begin_hunk_0_@hls_palette_coding:bb.a

._crit_edge.i.2:                                  ; preds = %bb.ab, %.lr.ph39.split.i.2
  %.030.lcssa.i.2 = phi i32 [ %i.ni, %.lr.ph39.split.i.2 ], [ %.1.i.2, %bb.ab ] ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nf, i64 2
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ng, i64 2
  %i.nz = zext nneg i32 %.030.lcssa.i.2 to i64
  %i.oa = shl nuw nsw i64 %i.nz, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.nx, ptr nonnull align 2 %i.ny, i64 %i.oa, i1 false)
  %i.ob = trunc nuw i32 %.030.lcssa.i.2 to i8
  store i8 %i.ob, ptr %i.nf, align 2, !tbaa !391
  br label %palette_update_predictor.exit

bb.ac:                                            ; preds = %bb.ae, %.lr.ph.i82
  %indvars.iv.i83 = phi i64 [ 0, %.lr.ph.i82 ], [ %indvars.iv.next.i84, %bb.ae ] ; 3 uses
  %.03035.i = phi i32 [ %i.lv, %.lr.ph.i82 ], [ %.1.i, %bb.ae ] ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i83
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !224, !range !392, !noundef !393
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %i.lx, i64 %indvars.iv.i83
  %i.og = load i16, ptr %i.of, align 2, !tbaa !83
  %i.oh = zext nneg i32 %.03035.i to i64
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %i.ly, i64 %i.oh
  store i16 %i.og, ptr %i.oi, align 2, !tbaa !83
  %i.oj = add nuw nsw i32 %.03035.i, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.i = phi i32 [ %.03035.i, %bb.ac ], [ %i.oj, %bb.ad ] ; 3 uses
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %i.ok = icmp samesign ult i64 %indvars.iv.next.i84, %i.ga
  %i.ol = icmp slt i32 %.1.i, %i.kl
  %i.om = select i1 %i.ok, i1 %i.ol, i1 false
  br i1 %i.om, label %bb.ac, label %._crit_edge.i, !llvm.loop !384

palette_update_predictor.exit:                    ; preds = %._crit_edge.i, %._crit_edge.i.1, %._crit_edge.i.2, %.lr.ph39.split.us.i, %.lr.ph39.split.us.i.1, %.lr.ph39.split.us.i.2, %.loopexit128
  %i.on = getelementptr inbounds nuw [128 x i8], ptr %i.fu, i64 %.pre-phi ; 2 uses
  %i.oo = load i8, ptr %i.on, align 4, !tbaa !391
  %.not64 = icmp eq i8 %i.oo, 0
  br i1 %.not64, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %palette_update_predictor.exit
  %i.op = tail call zeroext i1 @ff_vvc_palette_escape_val_present_flag(ptr noundef %0) #14
  %.pre153 = load i8, ptr %i.on, align 4, !tbaa !391
  %i.oq = zext i8 %.pre153 to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %palette_update_predictor.exit
  %i.or = phi i32 [ %i.oq, %bb.af ], [ 0, %palette_update_predictor.exit ]
  %.055 = phi i1 [ %i.op, %bb.af ], [ false, %palette_update_predictor.exit ] ; 2 uses
  %not..055 = xor i1 %.055, true
  %i.os = sext i1 %not..055 to i32
  %i.ot = add nsw i32 %i.or, %i.os                ; 3 uses
  %i.ou = icmp sgt i32 %i.ot, 0                   ; 4 uses
  br i1 %i.ou, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ov = tail call zeroext i1 @ff_vvc_palette_transpose_flag(ptr noundef %0) #14
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.054 = phi i1 [ %i.ov, %bb.ah ], [ false, %bb.ag ] ; 7 uses
  %i.ow = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 2072
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !76
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.pa = load ptr, ptr %i.oz, align 16, !tbaa !91
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !99
  %i.pd = load ptr, ptr %i.i, align 16, !tbaa !90 ; 2 uses
  br i1 %.not.i, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %.055, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.pe = load ptr, ptr %i.oy, align 8, !tbaa !164
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 1992103
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !166
  %.not21.i = icmp eq i8 %i.pg, 0
  br i1 %.not21.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pi = load i8, ptr %i.ph, align 16, !tbaa !168
  %.not22.i = icmp eq i8 %i.pi, 0
  %i.pj = zext i1 %.not22.i to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.pk = phi i32 [ 0, %bb.ak ], [ 0, %bb.aj ], [ %i.pj, %bb.al ]
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !145
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !138
  %i.pp = tail call fastcc i32 @set_qp_y(ptr noundef nonnull %0, i32 noundef %i.pm, i32 noundef %i.po, i32 noundef %i.pk) ; 2 uses
  %i.pq = icmp sgt i32 %i.pp, -1
  br i1 %i.pq, label %bb.an, label %palette_signaled.exit

bb.an:                                            ; preds = %bb.am
  br i1 %i.ad, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pc, i64 2330
  %i.ps = load i8, ptr %i.pr, align 2, !tbaa !171
  %.not24.i = icmp eq i8 %i.ps, 0
  br i1 %.not24.i, label %chroma_qp_offset_decode.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !225
  %.not25.i = icmp eq i32 %i.pu, 0
  br i1 %.not25.i, label %bb.aq, label %chroma_qp_offset_decode.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.pv = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 2072
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !76 ; 2 uses
  %i.py = load ptr, ptr %i.oz, align 16, !tbaa !91
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !99
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 2330
  %i.qc = load i8, ptr %i.qb, align 2, !tbaa !171
  %.not.i.i = icmp eq i8 %i.qc, 0
  br i1 %.not.i.i, label %chroma_qp_offset_decode.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qd = tail call i32 @ff_vvc_cu_chroma_qp_offset_flag(ptr noundef nonnull %0) #14
  %.not21.i.i = icmp eq i32 %i.qd, 0
  br i1 %.not21.i.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.qe = load ptr, ptr %i.px, align 8, !tbaa !164
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 1992111
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !226
  %.not22.i.i = icmp eq i8 %i.qg, 0
  br i1 %.not22.i.i, label %.loopexit.loopexit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.qh = tail call i32 @ff_vvc_cu_chroma_qp_offset_idx(ptr noundef nonnull %0) #14
  %i.qi = sext i32 %i.qh to i64
  br label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.at, %bb.as
  %.019.i.i = phi i64 [ %i.qi, %bb.at ], [ 0, %bb.as ]
  %i.qj = getelementptr inbounds nuw i8, ptr %i.px, i64 11
  %i.qk = getelementptr inbounds [3 x i8], ptr %i.qj, i64 %.019.i.i ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qm = load i8, ptr %i.qk, align 1, !tbaa !108
  %i.qn = sext i8 %i.qm to i32
  store i32 %i.qn, ptr %i.ql, align 16, !tbaa !109
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 1
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !108
  %i.qq = sext i8 %i.qp to i32
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.qq, ptr %i.qr, align 4, !tbaa !109
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qk, i64 2
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !108
  %i.qu = sext i8 %i.qt to i32
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.qu, ptr %i.qv, align 8, !tbaa !109
  br label %.loopexit.i.i

bb.au:                                            ; preds = %bb.ar
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.qw, i8 0, i64 12, i1 false)
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.au, %.loopexit.loopexit.i.i
  store i32 1, ptr %i.pt, align 4, !tbaa !225
  br label %chroma_qp_offset_decode.exit.i

chroma_qp_offset_decode.exit.i:                   ; preds = %.loopexit.i.i, %bb.aq, %bb.ap, %bb.ao
  tail call fastcc void @set_qp_c(ptr noundef nonnull %0)
  br label %bb.av

bb.av:                                            ; preds = %chroma_qp_offset_decode.exit.i, %bb.an
  store i8 0, ptr %i.d, align 16, !tbaa !108
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ai, i64 36 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %i.qz = load i32, ptr %i.qx, align 4, !tbaa !207
  %i.ra = load i32, ptr %i.qy, align 8, !tbaa !206
  %i.rb = mul nsw i32 %i.ra, %i.qz
  %.not65138 = icmp slt i32 %i.rb, 1
  br i1 %.not65138, label %palette_signaled.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.av
  %i.rc = xor i1 %.054, true
  %.neg.i = sext i1 %i.rc to i32                  ; 2 uses
  %.neg289.i = sext i1 %.054 to i32               ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.0109140 = phi i32 [ 0, %.lr.ph ], [ %.1110187, %.loopexit ] ; 3 uses
  %.1112139 = phi i8 [ 0, %.lr.ph ], [ %.2113185, %.loopexit ] ; 3 uses
  %i.rd = load ptr, ptr %i.i, align 16, !tbaa !90 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 96
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !200 ; 8 uses
  %i.rg = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 2064
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !75 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.rf, i64 24 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rf, i64 36
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !207 ; 11 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rf, i64 40
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !206 ; 5 uses
  %i.rn = shl nuw nsw i64 %indvars.iv, 4          ; 8 uses
  %i.ro = mul nsw i32 %i.rm, %i.rk
  %.fr.i86 = freeze i32 %i.ro                     ; 2 uses
  %i.rp = trunc i64 %i.rn to i32
  %i.rq = add i32 %i.rp, 16
  %..i = tail call i32 @llvm.smin.i32(i32 %i.rq, i32 %.fr.i86) ; 2 uses
  %i.rr = add nsw i32 %i.rk, -1                   ; 8 uses
  %i.rs = add nsw i32 %i.rm, -1                   ; 8 uses
  %.not.i299.i = icmp ult i32 %i.rk, 65536        ; 2 uses
  %i.rt = lshr i32 %i.rk, 16
  %spec.select.i300.i = select i1 %.not.i299.i, i32 %i.rk, i32 %i.rt ; 3 uses
  %spec.select12.i301.i = select i1 %.not.i299.i, i32 0, i32 16 ; 2 uses
  %.not11.i302.i = icmp samesign ult i32 %spec.select.i300.i, 256 ; 2 uses
  %i.ru = lshr i32 %spec.select.i300.i, 8
  %i.rv = or disjoint i32 %spec.select12.i301.i, 8
  %.110.i303.i = select i1 %.not11.i302.i, i32 %spec.select.i300.i, i32 %i.ru
  %.1.i304.i = select i1 %.not11.i302.i, i32 %spec.select12.i301.i, i32 %i.rv
  %i.rw = zext nneg i32 %.110.i303.i to i64
  %i.rx = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !108
  %i.rz = zext i8 %i.ry to i32
  %i.sa = add nuw nsw i32 %.1.i304.i, %i.rz       ; 6 uses
  %.not.i.i87 = icmp ult i32 %i.rm, 65536         ; 2 uses
  %i.sb = lshr i32 %i.rm, 16
  %spec.select.i.i88 = select i1 %.not.i.i87, i32 %i.rm, i32 %i.sb ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i87, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i88, 256 ; 2 uses
  %i.sc = lshr i32 %spec.select.i.i88, 8
  %i.sd = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i88, i32 %i.sc
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.sd
  %i.se = zext nneg i32 %.110.i.i to i64
  %i.sf = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.se
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !108
  %i.sh = zext i8 %i.sg to i32
  %i.si = add nuw nsw i32 %.1.i.i, %i.sh          ; 6 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rf, i64 25
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !203
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rd, i64 116 ; 2 uses
  %i.sm = zext i8 %i.sk to i64                    ; 3 uses
  %i.sn = getelementptr inbounds nuw [128 x i8], ptr %i.sl, i64 %i.sm
  %i.so = load i8, ptr %i.sn, align 4, !tbaa !391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.sp = sext i32 %.fr.i86 to i64
  %i.sq = icmp slt i64 %i.rn, %i.sp
  br i1 %i.sq, label %.lr.ph.i91, label %.preheader.i89.thread

.lr.ph.i91:                                       ; preds = %bb.aw
  %i.sr = shl nuw i32 1, %i.sa                    ; 3 uses
  %i.ss = shl nuw i32 1, %i.si                    ; 3 uses
  %i.st = sext i32 %..i to i64                    ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bk, %.lr.ph.i91
  %.2 = phi i32 [ %.0109140, %.lr.ph.i91 ], [ %.3, %bb.bk ] ; 3 uses
  %indvars.iv.i92 = phi i64 [ %i.rn, %.lr.ph.i91 ], [ %indvars.iv.next.i93, %bb.bk ] ; 6 uses
  %i.su = trunc nsw i64 %indvars.iv.i92 to i32    ; 10 uses
  br i1 %.054, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.sv = and i32 %i.rr, %i.su
  %i.sw = and i32 %i.sr, %i.su
  %i.sx = icmp eq i32 %i.sw, 0
  %i.sy = select i1 %i.sx, i32 0, i32 %i.rr
  %i.sz = xor i32 %i.sy, %i.sv
  %i.ta = ashr i32 %i.su, %i.sa
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.tb = ashr i32 %i.su, %i.si
  %i.tc = and i32 %i.rs, %i.su
  %i.td = and i32 %i.ss, %i.su
  %i.te = icmp eq i32 %i.td, 0
  %i.tf = select i1 %i.te, i32 0, i32 %i.rs
  %i.tg = xor i32 %i.tf, %i.tc
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.th = phi i32 [ %i.sz, %bb.ay ], [ %i.tb, %bb.az ]
  %i.ti = phi i32 [ %i.ta, %bb.ay ], [ %i.tg, %bb.az ]
  %i.tj = icmp ne i64 %indvars.iv.i92, 0          ; 4 uses
  %or.cond.i = and i1 %i.ou, %i.tj
  %i.tk = getelementptr i8, ptr %i.c, i64 %indvars.iv.i92 ; 6 uses
  br i1 %or.cond.i, label %.thread306.i, label %bb.bb

.thread306.i:                                     ; preds = %bb.ba
  %i.tl = getelementptr i8, ptr %i.tk, i64 -1
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !108
  %i.tn = zext i8 %i.tm to i32
  %i.to = tail call zeroext i1 @ff_vvc_run_copy_flag(ptr noundef %0, i32 noundef %i.tn, i32 noundef %.2, i32 noundef %i.su) #14
  %i.tp = zext i1 %i.to to i8                     ; 2 uses
  %i.tq = sub nuw nsw i64 %indvars.iv.i92, %i.rn
  %i.tr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tq
  store i8 %i.tp, ptr %i.tr, align 1, !tbaa !108
  store i8 0, ptr %i.tk, align 1, !tbaa !108
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i8 0, ptr %i.tk, align 1, !tbaa !108
  br i1 %i.ou, label %._crit_edge.i94, label %bb.bi

._crit_edge.i94:                                  ; preds = %bb.bb
  %.pre.i95 = sub nuw nsw i64 %indvars.iv.i92, %i.rn
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre.i95
  %.pre154 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !108
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.i94, %.thread306.i
  %i.ts = phi i8 [ %.pre154, %._crit_edge.i94 ], [ %i.tp, %.thread306.i ]
  %.not293.i = icmp eq i8 %i.ts, 0
  br i1 %.not293.i, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.tt = icmp slt i32 %i.ti, 1
  %or.cond8.not.i = select i1 %.054, i1 true, i1 %i.tt
  br i1 %or.cond8.not.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.tu = icmp sgt i32 %i.th, 0
  %or.cond10.i = select i1 %.054, i1 %i.tu, i1 false
  %or.cond12.i = and i1 %i.tj, %or.cond10.i
  br i1 %or.cond12.i, label %bb.bg, label %bb.bk

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.tj, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.tv = getelementptr i8, ptr %i.tk, i64 -1
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !108
  %.not.i96 = icmp eq i8 %i.tw, 0
  br i1 %.not.i96, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.tx = tail call zeroext i1 @ff_vvc_copy_above_palette_indices_flag(ptr noundef %0) #14
  %i.ty = zext i1 %i.tx to i8
  br label %.sink.split

bb.bi:                                            ; preds = %bb.bc, %bb.bb
  br i1 %i.tj, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.tz = getelementptr i8, ptr %i.tk, i64 -1
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !108
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bj, %bb.bh
  %.sink = phi i8 [ %i.ty, %bb.bh ], [ %i.ua, %bb.bj ]
  %.3.ph = phi i32 [ %i.su, %bb.bh ], [ %.2, %bb.bj ]
  store i8 %.sink, ptr %i.tk, align 1, !tbaa !108
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split, %bb.be, %bb.bf, %bb.bg, %bb.bi
  %.3 = phi i32 [ %.2, %bb.bi ], [ 0, %bb.bf ], [ %i.su, %bb.be ], [ %i.su, %bb.bg ], [ %.3.ph, %.sink.split ] ; 3 uses
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i92, 1 ; 2 uses
  %i.ub = icmp slt i64 %indvars.iv.next.i93, %i.st
  br i1 %i.ub, label %bb.ax, label %.preheader325.i, !llvm.loop !385

.preheader.i89:                                   ; preds = %bb.cl
  %i.uc = getelementptr inbounds nuw i8, ptr %i.rf, i64 22 ; 2 uses
  %i.ud = load i8, ptr %i.uc, align 2, !tbaa !201
  %.not285335.not.i = icmp eq i8 %i.ud, 0
  br i1 %.not285335.not.i, label %.loopexit, label %.lr.ph337.i

.preheader.i89.thread:                            ; preds = %bb.aw
  %i.ue = getelementptr inbounds nuw i8, ptr %i.rf, i64 22 ; 2 uses
  %i.uf = load i8, ptr %i.ue, align 2, !tbaa !201
  %.not285335.not.i183 = icmp eq i8 %i.uf, 0
  br i1 %.not285335.not.i183, label %.loopexit, label %.critedge298.i

.lr.ph337.i:                                      ; preds = %.preheader.i89
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ri, i64 8 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.sm
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ri, i64 11 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 %i.sm
  %i.uk = shl nuw i32 1, %i.sa
  %i.ul = shl nuw i32 1, %i.si
  %i.um = getelementptr inbounds nuw i8, ptr %i.ri, i64 28 ; 3 uses
  %i.un = trunc nuw nsw i64 %i.rn to i32
  br label %.lr.ph334.us.i

.lr.ph334.us.i:                                   ; preds = %.lr.ph337.i, %..critedge298_crit_edge.us.i
  %indvars.iv347.i = phi i64 [ %indvars.iv.next348.i, %..critedge298_crit_edge.us.i ], [ 0, %.lr.ph337.i ] ; 2 uses
  %i.uo = getelementptr inbounds nuw [72 x i8], ptr %2, i64 %indvars.iv347.i ; 4 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 1
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !203
  %i.ur = zext i8 %i.uq to i64                    ; 3 uses
  %i.us = getelementptr inbounds nuw [128 x i8], ptr %i.sl, i64 %i.ur
  %i.ut = tail call i32 @ff_vvc_palette_derive_scale(ptr noundef %0, ptr noundef nonnull %i.rf, ptr noundef nonnull %i.uo) #14
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.ur
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !108
  %i.uw = zext i8 %i.uv to i32
  %i.ux = load i8, ptr %i.uh, align 1, !tbaa !108
  %i.uy = zext i8 %i.ux to i32
  %i.uz = sub nsw i32 %i.uw, %i.uy                ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.ui, i64 %i.ur
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !108
  %i.vc = zext i8 %i.vb to i32
  %i.vd = load i8, ptr %i.uj, align 1, !tbaa !108
  %i.ve = zext i8 %i.vd to i32
  %i.vf = sub nsw i32 %i.vc, %i.ve                ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uo, i64 64
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !222 ; 4 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uo, i64 12 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.us, i64 2
  br label %bb.bl

bb.bl:                                            ; preds = %.critedge.us.i, %.lr.ph334.us.i
  %.0333.us.i = phi i32 [ %i.un, %.lr.ph334.us.i ], [ %i.ya, %.critedge.us.i ] ; 7 uses
  br i1 %.054, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.vk = and i32 %.0333.us.i, %i.rr
  %i.vl = and i32 %.0333.us.i, %i.uk
  %i.vm = icmp eq i32 %i.vl, 0
  %i.vn = select i1 %i.vm, i32 0, i32 %i.rr
  %i.vo = xor i32 %i.vn, %i.vk
  %i.vp = lshr i32 %.0333.us.i, %i.sa
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.vq = lshr i32 %.0333.us.i, %i.si
  %i.vr = and i32 %.0333.us.i, %i.rs
  %i.vs = and i32 %.0333.us.i, %i.ul
  %i.vt = icmp eq i32 %i.vs, 0
  %i.vu = select i1 %i.vt, i32 0, i32 %i.rs
  %i.vv = xor i32 %i.vu, %i.vr
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.vw = phi i32 [ %i.vo, %bb.bm ], [ %i.vq, %bb.bn ] ; 4 uses
  %i.vx = phi i32 [ %i.vp, %bb.bm ], [ %i.vv, %bb.bn ] ; 4 uses
  %i.vy = and i32 %i.vw, %i.uz
  %.not282.us.i = icmp eq i32 %i.vy, 0
  %i.vz = and i32 %i.vx, %i.vf
  %.not283.us.i = icmp eq i32 %i.vz, 0
  %or.cond295.us.i = select i1 %.not282.us.i, i1 %.not283.us.i, i1 false
  br i1 %or.cond295.us.i, label %bb.bp, label %.critedge.us.i

bb.bp:                                            ; preds = %bb.bo
  %i.wa = mul nsw i32 %i.vx, %i.rk
  %i.wb = add nsw i32 %i.wa, %i.vw
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds i8, ptr %i.d, i64 %i.wc
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !108 ; 2 uses
  %i.wf = icmp eq i8 %i.we, %i.so
  br i1 %i.wf, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.wg = ashr i32 %i.vw, %i.uz
  %i.wh = ashr i32 %i.vx, %i.vf
  %i.wi = load i32, ptr %i.vi, align 4, !tbaa !207
  %i.wj = mul nsw i32 %i.wi, %i.wh
  %i.wk = add nsw i32 %i.wj, %i.wg                ; 2 uses
  %i.wl = load i8, ptr %i.um, align 4, !tbaa !110
  %i.wm = icmp eq i8 %i.wl, 8
  %i.wn = zext i8 %i.we to i64
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %i.vj, i64 %i.wn
  %i.wp = load i16, ptr %i.wo, align 2, !tbaa !83 ; 2 uses
  br i1 %i.wm, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.wq = sext i32 %i.wk to i64
  %i.wr = getelementptr inbounds [2 x i8], ptr %i.vh, i64 %i.wq
  store i16 %i.wp, ptr %i.wr, align 2, !tbaa !83
  br label %.critedge.us.i

bb.bs:                                            ; preds = %bb.bq
  %i.ws = trunc i16 %i.wp to i8
  %i.wt = sext i32 %i.wk to i64
  %i.wu = getelementptr inbounds i8, ptr %i.vh, i64 %i.wt
  store i8 %i.ws, ptr %i.wu, align 1, !tbaa !108
  br label %.critedge.us.i

bb.bt:                                            ; preds = %bb.bp
  %i.wv = load i8, ptr %i.um, align 4, !tbaa !110
  %i.ww = zext nneg i8 %i.wv to i32
  %notmask.us.i = shl nsw i32 -1, %i.ww
  %i.wx = xor i32 %notmask.us.i, -1
  %i.wy = tail call i32 @ff_vvc_palette_escape_val(ptr noundef %0, i32 noundef %i.wx) #14 ; 2 uses
  %i.wz = icmp sgt i32 %i.wy, -1
  br i1 %i.wz, label %bb.bu, label %palette_subblock_data.exit

bb.bu:                                            ; preds = %bb.bt
  %i.xa = mul nsw i32 %i.wy, %i.ut                ; 3 uses
  %i.xb = icmp sgt i32 %i.xa, 0
  %i.xc = add nuw nsw i32 %i.xa, 32
  %i.xd = lshr i32 %i.xc, 6
  %i.xe = add nsw i32 %i.xa, 31
  %i.xf = ashr i32 %i.xe, 6
  %i.xg = select i1 %i.xb, i32 %i.xd, i32 %i.xf   ; 3 uses
  %i.xh = load i8, ptr %i.um, align 4, !tbaa !110 ; 2 uses
  %i.xi = zext i8 %i.xh to i32                    ; 2 uses
  %i.xj = shl nuw i32 1, %i.xi                    ; 2 uses
  %i.xk = add i32 %i.xj, %i.xg
  %.neg.i.us.i = shl i32 -2, %i.xi
  %i.xl = and i32 %i.xk, %.neg.i.us.i
  %.not.i305.us.i = icmp eq i32 %i.xl, 0
  %i.xm = ashr i32 %i.xg, 31
  %i.xn = add nsw i32 %i.xj, -1
  %i.xo = xor i32 %i.xn, %i.xm
  %.0.i.us.i = select i1 %.not.i305.us.i, i32 %i.xg, i32 %i.xo ; 2 uses
  %i.xp = ashr i32 %i.vw, %i.uz
  %i.xq = ashr i32 %i.vx, %i.vf
  %i.xr = load i32, ptr %i.vi, align 4, !tbaa !207
  %i.xs = mul nsw i32 %i.xr, %i.xq
  %i.xt = add nsw i32 %i.xs, %i.xp
  %i.xu = icmp eq i8 %i.xh, 8
  %i.xv = sext i32 %i.xt to i64                   ; 2 uses
  br i1 %i.xu, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.xw = trunc i32 %.0.i.us.i to i16
  %i.xx = getelementptr inbounds [2 x i8], ptr %i.vh, i64 %i.xv
  store i16 %i.xw, ptr %i.xx, align 2, !tbaa !83
  br label %.critedge.us.i

bb.bw:                                            ; preds = %bb.bu
  %i.xy = trunc i32 %.0.i.us.i to i8
  %i.xz = getelementptr inbounds i8, ptr %i.vh, i64 %i.xv
  store i8 %i.xy, ptr %i.xz, align 1, !tbaa !108
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %bb.bw, %bb.bv, %bb.bs, %bb.br, %bb.bo
  %i.ya = add nuw nsw i32 %.0333.us.i, 1          ; 2 uses
  %.not284.us.i = icmp slt i32 %i.ya, %..i
  br i1 %.not284.us.i, label %bb.bl, label %..critedge298_crit_edge.us.i, !llvm.loop !386

..critedge298_crit_edge.us.i:                     ; preds = %.critedge.us.i
  %indvars.iv.next348.i = add nuw nsw i64 %indvars.iv347.i, 1 ; 2 uses
  %i.yb = load i8, ptr %i.uc, align 2, !tbaa !201
  %i.yc = zext i8 %i.yb to i64
  %.not285.us.i = icmp samesign ult i64 %indvars.iv.next348.i, %i.yc
  br i1 %.not285.us.i, label %.lr.ph334.us.i, label %.loopexit, !llvm.loop !387

.preheader325.i:                                  ; preds = %bb.bk, %bb.cl
  %.3114 = phi i8 [ %.4195, %bb.cl ], [ %.1112139, %bb.bk ] ; 4 uses
  %indvars.iv341.i = phi i64 [ %indvars.iv.next342.i, %bb.cl ], [ %i.rn, %bb.bk ] ; 6 uses
  %i.yd = trunc i64 %indvars.iv341.i to i32       ; 8 uses
  %.not180 = icmp eq i64 %indvars.iv341.i, 0      ; 2 uses
  br i1 %.054, label %bb.bx, label %.thread308.i

bb.bx:                                            ; preds = %.preheader325.i
  %i.ye = ashr i32 %i.yd, %i.si                   ; 2 uses
  %i.yf = and i32 %i.rs, %i.yd
  %i.yg = and i32 %i.ss, %i.yd
  %i.yh = icmp eq i32 %i.yg, 0
  %i.yi = select i1 %i.yh, i32 0, i32 %i.rs
  %i.yj = xor i32 %i.yi, %i.yf                    ; 2 uses
  br i1 %.not180, label %bb.bz, label %bb.by

.thread308.i:                                     ; preds = %.preheader325.i
  %i.yk = and i32 %i.rr, %i.yd
  %i.yl = and i32 %i.sr, %i.yd
  %i.ym = icmp eq i32 %i.yl, 0
  %i.yn = select i1 %i.ym, i32 0, i32 %i.rr
  %i.yo = xor i32 %i.yn, %i.yk                    ; 2 uses
  %i.yp = ashr i32 %i.yd, %i.sa                   ; 2 uses
  br i1 %.not180, label %bb.bz, label %.thread309.i

.thread309.i:                                     ; preds = %.thread308.i
  %i.yq = add i32 %i.yd, -1                       ; 3 uses
  %i.yr = and i32 %i.yq, %i.rr
  %i.ys = and i32 %i.yq, %i.sr
  %i.yt = icmp eq i32 %i.ys, 0
  %i.yu = select i1 %i.yt, i32 0, i32 %i.rr
  %i.yv = xor i32 %i.yu, %i.yr
  %i.yw = lshr i32 %i.yq, %i.sa
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.yx = add i32 %i.yd, -1                       ; 3 uses
  %i.yy = lshr i32 %i.yx, %i.si
  %i.yz = and i32 %i.yx, %i.rs
  %i.za = and i32 %i.yx, %i.ss
  %i.zb = icmp eq i32 %i.za, 0
  %i.zc = select i1 %i.zb, i32 0, i32 %i.rs
  %i.zd = xor i32 %i.zc, %i.yz
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.thread309.i, %.thread308.i, %bb.bx
  %i.ze = phi i32 [ %i.yy, %bb.by ], [ %i.yv, %.thread309.i ], [ 0, %bb.bx ], [ 0, %.thread308.i ] ; 2 uses
  %i.zf = phi i32 [ %i.ye, %bb.by ], [ %i.yo, %.thread309.i ], [ %i.ye, %bb.bx ], [ %i.yo, %.thread308.i ] ; 3 uses
  %i.zg = phi i32 [ %i.yj, %bb.by ], [ %i.yp, %.thread309.i ], [ %i.yj, %bb.bx ], [ %i.yp, %.thread308.i ] ; 3 uses
  %i.zh = phi i1 [ true, %bb.by ], [ true, %.thread309.i ], [ false, %bb.bx ], [ false, %.thread308.i ]
  %i.zi = phi i32 [ %i.zd, %bb.by ], [ %i.yw, %.thread309.i ], [ 0, %bb.bx ], [ 0, %.thread308.i ] ; 2 uses
  br i1 %i.ou, label %bb.ca, label %bb.cj

bb.ca:                                            ; preds = %bb.bz
  %i.zj = sub nuw nsw i64 %indvars.iv341.i, %i.rn
  %i.zk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zj
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !108
  %.not286.i = icmp eq i8 %i.zl, 0
  br i1 %.not286.i, label %bb.cb, label %bb.cj

bb.cb:                                            ; preds = %bb.ca
  %i.zm = getelementptr i8, ptr %i.c, i64 %indvars.iv341.i ; 2 uses
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !108
  %.not287.i = icmp eq i8 %i.zn, 0
  br i1 %.not287.i, label %bb.cc, label %bb.cj

bb.cc:                                            ; preds = %bb.cb
  %i.zo = zext nneg i8 %.3114 to i32
  %i.zp = icmp samesign ugt i32 %i.ot, %i.zo
  br i1 %i.zp, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.zq = trunc nuw i8 %.3114 to i1
  %i.zr = tail call i32 @ff_vvc_palette_idx_idc(ptr noundef %0, i32 noundef range(i32 -1, 256) %i.ot, i1 noundef zeroext %i.zq) #14
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.0264.i = phi i32 [ %i.zr, %bb.cd ], [ 0, %bb.cc ] ; 3 uses
  br i1 %i.zh, label %bb.cf, label %.thread

bb.cf:                                            ; preds = %bb.ce
  %i.zs = getelementptr i8, ptr %i.zm, i64 -1
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !108
  %.not288.i = icmp eq i8 %i.zt, 0
  br i1 %.not288.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.zu = mul nsw i32 %i.zi, %i.rk
  %i.zv = add nsw i32 %i.zu, %i.ze
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.zw = add i32 %i.zg, %.neg.i
  %i.zx = mul nsw i32 %i.zw, %i.rk
  %i.zy = add i32 %i.zf, %.neg289.i
  %i.zz = add nsw i32 %i.zy, %i.zx
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pn.in.i = phi i32 [ %i.zv, %bb.cg ], [ %i.zz, %bb.ch ]
  %.pn.i = sext i32 %.pn.in.i to i64
  %.in.in.i = getelementptr inbounds i8, ptr %i.d, i64 %.pn.i
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !108
  %i.aaa = zext i8 %.in.i to i32
  %i.aab = icmp sge i32 %.0264.i, %i.aaa
  %i.aac = zext i1 %i.aab to i32
  %i.aad = add nsw i32 %.0264.i, %i.aac
  br label %.thread

.thread:                                          ; preds = %bb.ce, %bb.ci
  %.1265.i = phi i32 [ %i.aad, %bb.ci ], [ %.0264.i, %bb.ce ]
  %i.aae = trunc i32 %.1265.i to i8
  br label %bb.cl

bb.cj:                                            ; preds = %bb.bz, %bb.ca, %bb.cb
  %i.aaf = mul nsw i32 %i.zi, %i.rk
  %i.aag = add nsw i32 %i.aaf, %i.ze
  %i.aah = sext i32 %i.aag to i64
  %i.aai = getelementptr inbounds i8, ptr %i.d, i64 %i.aah
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !108
  %.phi.trans.insert155 = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv341.i
  %.pre156 = load i8, ptr %.phi.trans.insert155, align 1, !tbaa !108
  %i.aak = icmp eq i8 %.pre156, 0
  br i1 %i.aak, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.aal = add i32 %i.zg, %.neg.i
  %i.aam = mul nsw i32 %i.aal, %i.rk
  %i.aan = add i32 %i.zf, %.neg289.i
  %i.aao = add nsw i32 %i.aan, %i.aam
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = getelementptr inbounds i8, ptr %i.d, i64 %i.aap
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !108
  br label %bb.cl

bb.cl:                                            ; preds = %.thread, %bb.ck, %bb.cj
  %.4195 = phi i8 [ %.3114, %bb.ck ], [ %.3114, %bb.cj ], [ 1, %.thread ] ; 3 uses
  %.sink.i = phi i8 [ %i.aar, %bb.ck ], [ %i.aaj, %bb.cj ], [ %i.aae, %.thread ]
  %i.aas = mul nsw i32 %i.zg, %i.rk
  %i.aat = add nsw i32 %i.aas, %i.zf
  %i.aau = sext i32 %i.aat to i64
  %i.aav = getelementptr inbounds i8, ptr %i.d, i64 %i.aau
  store i8 %.sink.i, ptr %i.aav, align 1, !tbaa !108
  %indvars.iv.next342.i = add nuw nsw i64 %indvars.iv341.i, 1 ; 2 uses
  %i.aaw = icmp slt i64 %indvars.iv.next342.i, %i.st
  br i1 %i.aaw, label %.preheader325.i, label %.preheader.i89, !llvm.loop !388

.critedge298.i:                                   ; preds = %.preheader.i89.thread, %.critedge298.i
  %indvars.iv344.i = phi i64 [ %indvars.iv.next345.i, %.critedge298.i ], [ 0, %.preheader.i89.thread ] ; 2 uses
  %i.aax = getelementptr inbounds nuw [72 x i8], ptr %2, i64 %indvars.iv344.i
  %i.aay = tail call i32 @ff_vvc_palette_derive_scale(ptr noundef %0, ptr noundef nonnull %i.rf, ptr noundef nonnull %i.aax) #14 ; 0 uses
  %indvars.iv.next345.i = add nuw nsw i64 %indvars.iv344.i, 1 ; 2 uses
  %i.aaz = load i8, ptr %i.ue, align 2, !tbaa !201
  %i.aba = zext i8 %i.aaz to i64
  %.not285.i = icmp samesign ult i64 %indvars.iv.next345.i, %i.aba
  br i1 %.not285.i, label %.critedge298.i, label %.loopexit, !llvm.loop !387

palette_subblock_data.exit:                       ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %palette_signaled.exit

.loopexit:                                        ; preds = %.critedge298.i, %..critedge298_crit_edge.us.i, %.preheader.i89.thread, %.preheader.i89
  %.1110187 = phi i32 [ %.0109140, %.preheader.i89.thread ], [ %.3, %..critedge298_crit_edge.us.i ], [ %.3, %.preheader.i89 ], [ %.0109140, %.critedge298.i ]
  %.2113185 = phi i8 [ %.1112139, %.preheader.i89.thread ], [ %.4195, %..critedge298_crit_edge.us.i ], [ %.4195, %.preheader.i89 ], [ %.1112139, %.critedge298.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.abb = load i32, ptr %i.qx, align 4, !tbaa !207
  %i.abc = load i32, ptr %i.qy, align 8, !tbaa !206
  %i.abd = mul nsw i32 %i.abc, %i.abb
  %i.abe = add nsw i32 %i.abd, -1
  %i.abf = ashr i32 %i.abe, 4
  %i.abg = sext i32 %i.abf to i64
  %.not65.not = icmp slt i64 %indvars.iv, %i.abg
  br i1 %.not65.not, label %bb.aw, label %palette_signaled.exit, !llvm.loop !389

palette_signaled.exit:                            ; preds = %.lr.ph69.split.us.i, %.lr.ph69.split.i, %.loopexit, %bb.av, %palette_subblock_data.exit, %bb.d, %bb.am, %bb.t
  %.1 = phi i32 [ %i.pp, %bb.am ], [ -12, %bb.d ], [ 0, %bb.av ], [ -1094995529, %bb.t ], [ %i.hm, %.lr.ph69.split.i ], [ -1094995529, %palette_subblock_data.exit ], [ 0, %.loopexit ], [ %i.gl, %.lr.ph69.split.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 %.1
}

declare void @ff_vvc_set_intra_mvf(ptr noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @ff_vvc_palette_escape_val_present_flag(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @ff_vvc_palette_transpose_flag(ptr noundef) local_unnamed_addr #2

declare i32 @ff_vvc_palette_predictor_run(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_vvc_num_signalled_palette_entries(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_vvc_new_palette_entries(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @set_qp_y(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2064
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !84  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !90  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2072
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76   ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !164
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1992103
  %i.m = load i8, ptr %i.l, align 1, !tbaa !166
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 458
  %i.q = load i8, ptr %i.p, align 2, !tbaa !395
  store i8 %i.q, ptr %i.f, align 8, !tbaa !396
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !88
  %.not55 = icmp eq i8 %i.s, 0                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !169  ; 2 uses
  br i1 %.not55, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre66 = load i32, ptr %.phi.trans.insert65, align 8, !tbaa !170
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i32 %i.u, %1
  br i1 %i.v, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !170
  %i.y = icmp eq i32 %i.x, %2
  br i1 %i.y, label %bb.f, label %bb.o

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.z = phi i32 [ %.pre66, %._crit_edge ], [ %2, %bb.e ] ; 3 uses
  %i.aa = phi i32 [ %i.u, %._crit_edge ], [ %1, %bb.e ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 30
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !79
  %i.ad = zext i8 %i.ac to i32                    ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 4034
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !163
  %i.ag = zext i16 %i.af to i32                   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !145 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 34
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !161
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %i.am = ashr i32 %i.ai, %i.al                   ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !138 ; 2 uses
  %i.ap = ashr i32 %i.ao, %i.al                   ; 3 uses
  %i.aq = ashr i32 %i.ai, %i.ad                   ; 2 uses
  %i.ar = ashr i32 %i.ao, %i.ad                   ; 2 uses
  %i.as = add nsw i32 %i.aa, -1
  %i.at = ashr i32 %i.as, %i.ad
  %i.au = icmp eq i32 %i.at, %i.aq
  %i.av = ashr i32 %i.z, %i.ad
  %i.aw = icmp eq i32 %i.av, %i.ar
  %i.ax = ashr i32 %i.aa, %i.ad                   ; 3 uses
  %i.ay = icmp eq i32 %i.ax, %i.aq
  %i.az = add nsw i32 %i.z, -1
  %i.ba = ashr i32 %i.az, %i.ad
  %i.bb = icmp eq i32 %i.ba, %i.ar
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32900
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32904
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !153 ; 2 uses
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %notmask.i = shl nsw i32 -1, %i.ad
  %i.bf = xor i32 %notmask.i, -1                  ; 2 uses
  %i.bg = and i32 %i.aa, %i.bf
  %.not71.i = icmp eq i32 %i.bg, 0
  %i.bh = and i32 %i.z, %i.bf
  %.not72.i = icmp eq i32 %i.bh, 0
  %i.bi = select i1 %.not71.i, i1 %.not72.i, i1 false
  br i1 %i.bi, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 21912
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !162
  %i.bl = add nsw i32 %i.ap, -1
  %i.bm = mul nsw i32 %i.bl, %i.ag
  %i.bn = add nsw i32 %i.bm, %i.am
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !108
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 4080
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !82
  %i.bt = sext i32 %i.ax to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !83
  %i.bw = zext i16 %i.bv to i32
  %i.bx = icmp eq i32 %i.ax, %i.bw
  br i1 %i.bx, label %get_qp_y_pred.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not55, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bz = load ptr, ptr %i.by, align 16, !tbaa !91
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 458
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread.i
  %.in.in.i = phi ptr [ %i.ca, %bb.i ], [ %i.f, %.thread.i ]
  %.in.i = load i8, ptr %.in.in.i, align 2, !tbaa !108
  %i.cb = sext i8 %.in.i to i16                   ; 2 uses
  %i.cc = icmp ne i32 %i.be, 0
  %i.cd = select i1 %i.cc, i1 %i.ay, i1 false
  %or.cond.i = select i1 %i.cd, i1 %i.bb, i1 false
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 21912
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !162
  %i.cg = add nsw i32 %i.ap, -1
  %i.ch = mul nsw i32 %i.cg, %i.ag
  %i.ci = add nsw i32 %i.ch, %i.am
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.cf, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !108
  %i.cm = sext i8 %i.cl to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.068.i = phi i16 [ %i.cm, %bb.k ], [ %i.cb, %bb.j ]
  %i.cn = load i32, ptr %i.bc, align 4, !tbaa !154
  %i.co = icmp ne i32 %i.cn, 0
  %i.cp = select i1 %i.co, i1 %i.au, i1 false
  %or.cond3.i = select i1 %i.cp, i1 %i.aw, i1 false
  br i1 %or.cond3.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 21912
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !162
end_hunk_0
