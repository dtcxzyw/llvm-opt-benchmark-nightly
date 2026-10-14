Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_dr_mp3dec_decode_frame:bb.a
  %.val121 = load i8, ptr %i.kr, align 1, !tbaa !119
  %i.ks = getelementptr i8, ptr %i.kj, i64 2      ; 3 uses
  %.val122 = load i8, ptr %i.ks, align 1, !tbaa !119
  %i.kt = lshr i8 %.val122, 2
  %i.ku = and i8 %i.kt, 3
  %i.kv = zext nneg i8 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_hdr_sample_rate_hz.g_hz, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !118
  %i.ky = zext i8 %.val121 to i32                 ; 2 uses
  %i.kz = lshr i32 %i.ky, 3
  %.lobit.i = and i32 %i.kz, 1
  %i.la = xor i32 %.lobit.i, 1
  %i.lb = lshr i32 %i.kx, %i.la
  %i.lc = lshr i32 %i.ky, 4
  %.lobit3.i = and i32 %i.lc, 1
  %i.ld = xor i32 %.lobit3.i, 1
  %i.le = lshr i32 %i.lb, %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !837
  %i.lg = load i8, ptr %i.kr, align 1, !tbaa !119
  %i.lh = lshr i8 %i.lg, 1
  %i.li = and i8 %i.lh, 3                         ; 2 uses
  %narrow = sub nuw nsw i8 4, %i.li
  %i.lj = zext nneg i8 %narrow to i32
  %i.lk = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.lj, ptr %i.lk, align 4, !tbaa !838
  %.val119 = load i8, ptr %i.kr, align 1, !tbaa !119
  %.val120 = load i8, ptr %i.ks, align 1, !tbaa !119
  %i.ll = zext i8 %.val119 to i32                 ; 2 uses
  %i.lm = lshr i32 %i.ll, 3
  %.lobit.i144 = and i32 %i.lm, 1
  %i.ln = zext nneg i32 %.lobit.i144 to i64
  %i.lo = getelementptr inbounds nuw [45 x i8], ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 %i.ln
  %i.lp = lshr i32 %i.ll, 1
  %i.lq = and i32 %i.lp, 3
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = getelementptr [15 x i8], ptr %i.lo, i64 %i.lr
  %i.lt = getelementptr i8, ptr %i.ls, i64 -15
  %i.lu = lshr i8 %.val120, 4
  %i.lv = zext nneg i8 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !119
  %i.ly = zext i8 %i.lx to i32
  %i.lz = shl nuw nsw i32 %i.ly, 1
  %i.ma = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !839
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kj, i64 4 ; 9 uses
  store ptr %i.mb, ptr %5, align 16, !tbaa !776
  %i.mc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.mc, align 8, !tbaa !777
  %i.md = shl i32 %.1, 3
  %i.me = add i32 %i.md, -32                      ; 10 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 %i.me, ptr %i.mf, align 4, !tbaa !778
  %i.mg = load i8, ptr %i.kr, align 1, !tbaa !119
  %.fr = freeze i8 %i.mg                          ; 4 uses
  %i.mh = and i8 %.fr, 1
  %.not114 = icmp eq i8 %i.mh, 0
  br i1 %.not114, label %bb.ag, label %ma_dr_mp3_bs_get_bits.exit

bb.ag:                                            ; preds = %.thread212
  store i32 16, ptr %i.mc, align 8, !tbaa !777
  br label %ma_dr_mp3_bs_get_bits.exit

ma_dr_mp3_bs_get_bits.exit:                       ; preds = %bb.ag, %.thread212
  %.promoted = phi i32 [ 0, %.thread212 ], [ 16, %bb.ag ]
  %i.mi = icmp eq i8 %i.li, 1
  br i1 %i.mi, label %bb.ah, label %bb.eo

bb.ah:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 6672 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 9504 ; 2 uses
  %i.ml = call fastcc i32 @ma_dr_mp3_L3_read_side_info(ptr noundef %5, ptr noundef nonnull %i.mk, ptr noundef nonnull %i.kj) ; 4 uses
  %i.mm = icmp slt i32 %i.ml, 0
  br i1 %i.mm, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mn = load i32, ptr %i.mc, align 8, !tbaa !777 ; 3 uses
  %i.mo = load i32, ptr %i.mf, align 4, !tbaa !778 ; 2 uses
  %i.mp = icmp sgt i32 %i.mn, %i.mo
  br i1 %i.mp, label %.critedge, label %bb.aj

.critedge:                                        ; preds = %bb.ai, %bb.ah
  store i8 0, ptr %i.d, align 8, !tbaa !119
  br label %bb.fz

bb.aj:                                            ; preds = %bb.ai
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 6144 ; 3 uses
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !3029 ; 2 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.mr, i32 range(i32 0, -2147483648) %i.ml) ; 2 uses
  %i.ms = sub nsw i32 %i.mr, %i.ml
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.ms, i32 0)
  %i.mt = zext nneg i32 %narrow.i to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 6156 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mt
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 6688 ; 4 uses
  %i.mx = sub nsw i32 %i.mo, %i.mn
  %i.my = lshr i32 %i.mx, 3                       ; 2 uses
  %i.mz = sext i32 %..i to i64                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mw, ptr nonnull readonly align 1 %i.mv, i64 %i.mz, i1 false)
  %i.na = getelementptr inbounds i8, ptr %i.mw, i64 %i.mz
  %i.nb = load ptr, ptr %5, align 16, !tbaa !776
  %i.nc = sdiv i32 %i.mn, 8
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds i8, ptr %i.nb, i64 %i.nd
  %i.nf = zext nneg i32 %i.my to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.na, ptr align 1 %i.ne, i64 %i.nf, i1 false)
  %i.ng = add nsw i32 %..i, %i.my
  store ptr %i.mw, ptr %i.mj, align 8, !tbaa !776
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 6680 ; 8 uses
  store i32 0, ptr %i.nh, align 8, !tbaa !777
  %i.ni = shl nsw i32 %i.ng, 3                    ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 6684 ; 6 uses
  store i32 %i.ni, ptr %i.nj, align 4, !tbaa !778
  %i.nk = load i32, ptr %i.mq, align 8, !tbaa !3029
  %i.nl = icmp sge i32 %i.nk, %i.ml               ; 2 uses
  %i.nm = zext i1 %i.nl to i32
  %i.nn = icmp ne ptr %3, null
  %or.cond = and i1 %i.nn, %i.nl
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.aj
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 9632 ; 9 uses
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 6155 ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 22848
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 14240 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 6153 ; 7 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.b, i64 11 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.b, i64 19 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 22887 ; 7 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 11936 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 6154
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 14400 ; 4 uses
  %i.oc = ptrtoint ptr %i.ob to i64               ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.oe = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.of = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader, %ma_dr_mp3_L3_decode.exit
  %i.og = phi i1 [ true, %.preheader ], [ false, %ma_dr_mp3_L3_decode.exit ]
  %.093324 = phi i32 [ 0, %.preheader ], [ 1, %ma_dr_mp3_L3_decode.exit ]
  %.0100323 = phi ptr [ %3, %.preheader ], [ %i.bks, %ma_dr_mp3_L3_decode.exit ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4608) %i.no, i8 0, i64 4608, i1 false)
  %i.oh = load i32, ptr %i.kq, align 4, !tbaa !840 ; 4 uses
  %i.oi = mul nuw nsw i32 %i.oh, %.093324
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [32 x i8], ptr %i.mk, i64 %i.oj ; 7 uses
  %i.ol = icmp sgt i32 %i.oh, 0                   ; 2 uses
  br i1 %i.ol, label %.lr.ph.i149, label %._crit_edge.i146

.lr.ph.i149:                                      ; preds = %bb.ak
  %i.om = load ptr, ptr %i.mj, align 8, !tbaa !776 ; 6 uses
  %i.on = ptrtoint ptr %i.om to i64
  %wide.trip.count.i150 = zext nneg i32 %i.oh to i64
  %.pre.i = load i32, ptr %i.nh, align 8, !tbaa !3030
  br label %bb.al

bb.al:                                            ; preds = %ma_dr_mp3_L3_huffman.exit.i, %.lr.ph.i149
  %.promoted.i = phi i32 [ %.pre.i, %.lr.ph.i149 ], [ %i.os, %ma_dr_mp3_L3_huffman.exit.i ] ; 5 uses
  %indvars.iv.i151 = phi i64 [ 0, %.lr.ph.i149 ], [ %indvars.iv.next.i156, %ma_dr_mp3_L3_huffman.exit.i ] ; 5 uses
  %i.oo = getelementptr inbounds nuw [32 x i8], ptr %i.ok, i64 %indvars.iv.i151 ; 17 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load i16, ptr %i.op, align 8, !tbaa !1121
  %i.or = zext i16 %i.oq to i32
  %i.os = add nsw i32 %.promoted.i, %i.or         ; 3 uses
  %i.ot = getelementptr inbounds nuw [39 x i8], ptr %i.nq, i64 %indvars.iv.i151 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oo, i64 18 ; 2 uses
  %i.ov = load i8, ptr %i.ou, align 2, !tbaa !1122
  %i.ow = icmp ne i8 %i.ov, 0
  %i.ox = zext i1 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oo, i64 17 ; 3 uses
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !1123
  %.not.i.i152 = icmp eq i8 %i.oz, 0
  %i.pa = zext i1 %.not.i.i152 to i64
  %i.pb = getelementptr inbounds nuw [28 x i8], ptr @ma_dr_mp3_L3_decode_scalefactors.g_scf_partitions, i64 %i.ox
  %i.pc = getelementptr inbounds nuw [28 x i8], ptr %i.pb, i64 %i.pa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oo, i64 29
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !1124
  %i.pf = zext i8 %i.pe to i32                    ; 2 uses
  %i.pg = add nuw nsw i32 %i.pf, 1
  %i.ph = load i8, ptr %i.ns, align 1, !tbaa !119
  %i.pi = and i8 %i.ph, 8
  %.not78.i.i = icmp eq i8 %i.pi, 0
  br i1 %.not78.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oo, i64 31
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !1125
  %i.pl = zext i8 %i.pk to i32
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oo, i64 12
  %i.pn = load i16, ptr %i.pm, align 4, !tbaa !1126
  %i.po = zext i16 %i.pn to i64
  %i.pp = getelementptr inbounds nuw i8, ptr @ma_dr_mp3_L3_decode_scalefactors.g_scfc_decode, i64 %i.po
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !119 ; 2 uses
  %i.pr = lshr i8 %i.pq, 2                        ; 2 uses
  %i.ps = and i8 %i.pq, 3
  %7 = insertelement <2 x i8> poison, i8 %i.ps, i64 0
  %8 = shufflevector <2 x i8> %7, <2 x i8> poison, <2 x i32> zeroinitializer
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.pt = load i8, ptr %i.np, align 1, !tbaa !119
  %i.pu = and i8 %i.pt, 16
  %i.pv = icmp ne i8 %i.pu, 0
  %i.pw = icmp ne i64 %indvars.iv.i151, 0
  %i.px = and i1 %i.pw, %i.pv                     ; 2 uses
  %i.py = zext i1 %i.px to i32
  %i.pz = getelementptr inbounds nuw i8, ptr %i.oo, i64 12
  %i.qa = load i16, ptr %i.pz, align 4, !tbaa !1126
  %i.qb = zext i16 %i.qa to i32
  %i.qc = lshr i32 %i.qb, %i.py
  %i.qd = select i1 %i.px, i64 12, i64 0
  br label %.preheader88.i.i

.preheader88.i.i:                                 ; preds = %.preheader88.i.i, %bb.an
  %indvars.iv.i.i = phi i64 [ %i.qd, %bb.an ], [ %indvars.iv.next.i.i, %.preheader88.i.i ] ; 2 uses
  %.0105.i.i = phi i32 [ %i.qc, %bb.an ], [ %i.qo, %.preheader88.i.i ] ; 5 uses
  %i.qe = getelementptr inbounds nuw i8, ptr @ma_dr_mp3_L3_decode_scalefactors.g_mod, i64 %indvars.iv.i.i ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 2
  %9 = load <2 x i8>, ptr %i.qf, align 2, !tbaa !119
  %10 = zext <2 x i8> %9 to <2 x i32>             ; 3 uses
  %11 = extractelement <2 x i32> %10, i64 0
  %12 = extractelement <2 x i32> %10, i64 1       ; 2 uses
  %i.qg = mul nuw nsw i32 %11, %12                ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 1
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !119
  %i.qj = zext i8 %i.qi to i32                    ; 2 uses
  %i.qk = mul nuw nsw i32 %i.qg, %i.qj            ; 2 uses
  %i.ql = load i8, ptr %i.qe, align 4, !tbaa !119
  %i.qm = zext i8 %i.ql to i32                    ; 2 uses
  %i.qn = mul nuw nsw i32 %i.qk, %i.qm
  %i.qo = sub nsw i32 %.0105.i.i, %i.qn           ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.qp = icmp sgt i32 %i.qo, -1
  br i1 %i.qp, label %.preheader88.i.i, label %bb.ao, !llvm.loop !2976

bb.ao:                                            ; preds = %.preheader88.i.i
  %i.qq = udiv i32 %.0105.i.i, %i.qk
  %i.qr = urem i32 %i.qq, %i.qm
  %i.qs = trunc nuw i32 %i.qr to i8
  %i.qt = udiv i32 %.0105.i.i, %i.qg
  %i.qu = urem i32 %i.qt, %i.qj
  %i.qv = trunc nuw i32 %i.qu to i8
  %i.qw = udiv i32 %.0105.i.i, %12
  %13 = insertelement <2 x i32> poison, i32 %i.qw, i64 0
  %14 = insertelement <2 x i32> %13, i32 %.0105.i.i, i64 1
  %15 = urem <2 x i32> %14, %10
  %16 = trunc nuw <2 x i32> %15 to <2 x i8>
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pc, i64 %indvars.iv.next.i.i
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %.sroa.5.0.i.i = phi i8 [ %i.qv, %bb.ao ], [ %i.pr, %bb.am ] ; 2 uses
  %.sroa.0.0.i.i = phi i8 [ %i.qs, %bb.ao ], [ %i.pr, %bb.am ] ; 2 uses
  %.076.i.i = phi i32 [ -16, %bb.ao ], [ %i.pl, %bb.am ] ; 8 uses
  %.075.i.i = phi ptr [ %i.qx, %bb.ao ], [ %i.pc, %bb.am ] ; 4 uses
  %17 = phi <2 x i8> [ %16, %bb.ao ], [ %8, %bb.am ] ; 2 uses
  %i.qy = load i8, ptr %.075.i.i, align 1, !tbaa !119 ; 4 uses
  %.not.i.i.i153 = icmp eq i8 %i.qy, 0
  br i1 %.not.i.i.i153, label %ma_dr_mp3_L3_read_scalefactors.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.qz = and i32 %.076.i.i, 8
  %.not45.i.i.i = icmp eq i32 %i.qz, 0
  br i1 %.not45.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ra = zext i8 %i.qy to i64                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %i.ot, i64 %i.ra, i1 false)
  br label %.loopexit.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.rb = zext i8 %.sroa.0.0.i.i to i32           ; 3 uses
  %.not46.i.i.i = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %.not46.i.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.rc = zext i8 %i.qy to i64                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.rc, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ot, i8 0, i64 %i.rc, i1 false)
  br label %.loopexit.i.i.i

bb.au:                                            ; preds = %bb.as
  %notmask.i.i.i = shl nsw i32 -1, %i.rb
  %i.rd = xor i32 %notmask.i.i.i, -1
  %.inv.i.i.i = icmp sgt i32 %.076.i.i, -1
  %i.re = select i1 %.inv.i.i.i, i32 -1, i32 %i.rd
  %wide.trip.count.i.i.i = zext i8 %i.qy to i64   ; 2 uses
  %i.rf = load i32, ptr %i.nj, align 4, !tbaa !778
  br label %bb.av

bb.av:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit.i.i.i, %bb.au
  %i.rg = phi i32 [ %.promoted.i, %bb.au ], [ %i.rh, %ma_dr_mp3_bs_get_bits.exit.i.i.i ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.au ], [ %indvars.iv.next.i.i.i, %ma_dr_mp3_bs_get_bits.exit.i.i.i ] ; 3 uses
  %i.rh = add nsw i32 %i.rg, %i.rb                ; 4 uses
  store i32 %i.rh, ptr %i.nh, align 8, !tbaa !777
  %i.ri = icmp sgt i32 %i.rh, %i.rf
  br i1 %i.ri, label %ma_dr_mp3_bs_get_bits.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.rj = ashr i32 %i.rg, 3
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr inbounds i8, ptr %i.om, i64 %i.rk ; 2 uses
  %i.rm = and i32 %i.rg, 7                        ; 2 uses
  %i.rn = add nuw nsw i32 %i.rm, %i.rb            ; 3 uses
  %i.ro = load i8, ptr %i.rl, align 1, !tbaa !119
  %i.rp = zext i8 %i.ro to i32
  %i.rq = lshr i32 255, %i.rm
  %i.rr = and i32 %i.rq, %i.rp                    ; 2 uses
  %i.rs = icmp samesign ugt i32 %i.rn, 8
  br i1 %i.rs, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aw, %.lr.ph.i.i.i.i
  %.pn26.i.i.i.i = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.rl, %bb.aw ]
  %.01825.i.i.i.i = phi i32 [ %i.rt, %.lr.ph.i.i.i.i ], [ %i.rn, %bb.aw ] ; 2 uses
  %.01924.i.i.i.i = phi i32 [ %i.rv, %.lr.ph.i.i.i.i ], [ 0, %bb.aw ]
  %.02023.i.i.i.i = phi i32 [ %i.rx, %.lr.ph.i.i.i.i ], [ %i.rr, %bb.aw ]
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn26.i.i.i.i, i64 1 ; 2 uses
  %i.rt = add nsw i32 %.01825.i.i.i.i, -8         ; 3 uses
  %i.ru = shl i32 %.02023.i.i.i.i, %i.rt
  %i.rv = or i32 %i.ru, %.01924.i.i.i.i           ; 2 uses
  %i.rw = load i8, ptr %.0.i.i.i.i, align 1, !tbaa !119
  %i.rx = zext i8 %i.rw to i32                    ; 2 uses
  %i.ry = icmp samesign ugt i32 %.01825.i.i.i.i, 16
  br i1 %i.ry, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2977

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.aw
  %.020.lcssa.i.i.i.i = phi i32 [ %i.rr, %bb.aw ], [ %i.rx, %.lr.ph.i.i.i.i ]
  %.019.lcssa.i.i.i.i = phi i32 [ 0, %bb.aw ], [ %i.rv, %.lr.ph.i.i.i.i ]
  %.018.lcssa.i.i.i.i = phi i32 [ %i.rn, %bb.aw ], [ %i.rt, %.lr.ph.i.i.i.i ]
  %i.rz = sub nuw nsw i32 8, %.018.lcssa.i.i.i.i
  %i.sa = lshr i32 %.020.lcssa.i.i.i.i, %i.rz
  %i.sb = or i32 %i.sa, %.019.lcssa.i.i.i.i
  br label %ma_dr_mp3_bs_get_bits.exit.i.i.i

ma_dr_mp3_bs_get_bits.exit.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.av
  %.021.i.i.i.i = phi i32 [ %i.sb, %._crit_edge.i.i.i.i ], [ 0, %bb.av ] ; 2 uses
  %i.sc = icmp eq i32 %.021.i.i.i.i, %i.re
  %i.sd = trunc i32 %.021.i.i.i.i to i8           ; 2 uses
  %i.se = select i1 %i.sc, i8 -1, i8 %i.sd
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ot, i64 %indvars.iv.i.i.i
  store i8 %i.se, ptr %i.sf, align 1, !tbaa !119
  %i.sg = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i.i
  store i8 %i.sd, ptr %i.sg, align 1, !tbaa !119
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %bb.av, !llvm.loop !2978

.loopexit.i.i.i:                                  ; preds = %ma_dr_mp3_bs_get_bits.exit.i.i.i, %bb.at, %bb.ar
  %.promoted146.i = phi i32 [ %.promoted.i, %bb.ar ], [ %.promoted.i, %bb.at ], [ %i.rh, %ma_dr_mp3_bs_get_bits.exit.i.i.i ] ; 4 uses
  %.pre-phi.i.i.i = phi i64 [ %i.ra, %bb.ar ], [ %i.rc, %bb.at ], [ %wide.trip.count.i.i.i, %ma_dr_mp3_bs_get_bits.exit.i.i.i ] ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ot, i64 %.pre-phi.i.i.i ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre-phi.i.i.i ; 5 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.075.i.i, i64 1
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !119 ; 4 uses
  %.not.1.i.i.i = icmp eq i8 %i.sk, 0
  br i1 %.not.1.i.i.i, label %ma_dr_mp3_L3_read_scalefactors.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %.loopexit.i.i.i
  %i.sl = and i32 %.076.i.i, 4
  %.not45.1.i.i.i = icmp eq i32 %i.sl, 0
  br i1 %.not45.1.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.sm = zext i8 %i.sk to i64                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.si, ptr nonnull align 1 %i.sh, i64 %i.sm, i1 false)
  br label %.loopexit.1.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.sn = zext i8 %.sroa.5.0.i.i to i32           ; 3 uses
  %.not46.1.i.i.i = icmp eq i8 %.sroa.5.0.i.i, 0
  br i1 %.not46.1.i.i.i, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %notmask.1.i.i.i = shl nsw i32 -1, %i.sn
  %i.so = xor i32 %notmask.1.i.i.i, -1
  %.inv.1.i.i.i = icmp sgt i32 %.076.i.i, -1
  %i.sp = select i1 %.inv.1.i.i.i, i32 -1, i32 %i.so
  %wide.trip.count.1.i.i.i = zext i8 %i.sk to i64 ; 2 uses
  %i.sq = load i32, ptr %i.nj, align 4, !tbaa !778
  br label %bb.bb

bb.bb:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit.1.i.i.i, %bb.ba
  %i.sr = phi i32 [ %.promoted146.i, %bb.ba ], [ %i.ss, %ma_dr_mp3_bs_get_bits.exit.1.i.i.i ] ; 3 uses
  %indvars.iv.1.i.i.i = phi i64 [ 0, %bb.ba ], [ %indvars.iv.next.1.i.i.i, %ma_dr_mp3_bs_get_bits.exit.1.i.i.i ] ; 3 uses
  %i.ss = add nsw i32 %i.sr, %i.sn                ; 4 uses
  store i32 %i.ss, ptr %i.nh, align 8, !tbaa !777
  %i.st = icmp sgt i32 %i.ss, %i.sq
  br i1 %i.st, label %ma_dr_mp3_bs_get_bits.exit.1.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.su = ashr i32 %i.sr, 3
  %i.sv = sext i32 %i.su to i64
  %i.sw = getelementptr inbounds i8, ptr %i.om, i64 %i.sv ; 2 uses
  %i.sx = and i32 %i.sr, 7                        ; 2 uses
  %i.sy = add nuw nsw i32 %i.sx, %i.sn            ; 3 uses
  %i.sz = load i8, ptr %i.sw, align 1, !tbaa !119
  %i.ta = zext i8 %i.sz to i32
  %i.tb = lshr i32 255, %i.sx
  %i.tc = and i32 %i.tb, %i.ta                    ; 2 uses
  %i.td = icmp samesign ugt i32 %i.sy, 8
  br i1 %i.td, label %.lr.ph.i.1.i.i.i, label %._crit_edge.i.1.i.i.i

.lr.ph.i.1.i.i.i:                                 ; preds = %bb.bc, %.lr.ph.i.1.i.i.i
  %.pn26.i.1.i.i.i = phi ptr [ %.0.i.1.i.i.i, %.lr.ph.i.1.i.i.i ], [ %i.sw, %bb.bc ]
  %.01825.i.1.i.i.i = phi i32 [ %i.te, %.lr.ph.i.1.i.i.i ], [ %i.sy, %bb.bc ] ; 2 uses
  %.01924.i.1.i.i.i = phi i32 [ %i.tg, %.lr.ph.i.1.i.i.i ], [ 0, %bb.bc ]
  %.02023.i.1.i.i.i = phi i32 [ %i.ti, %.lr.ph.i.1.i.i.i ], [ %i.tc, %bb.bc ]
  %.0.i.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn26.i.1.i.i.i, i64 1 ; 2 uses
  %i.te = add nsw i32 %.01825.i.1.i.i.i, -8       ; 3 uses
  %i.tf = shl i32 %.02023.i.1.i.i.i, %i.te
  %i.tg = or i32 %i.tf, %.01924.i.1.i.i.i         ; 2 uses
  %i.th = load i8, ptr %.0.i.1.i.i.i, align 1, !tbaa !119
  %i.ti = zext i8 %i.th to i32                    ; 2 uses
  %i.tj = icmp samesign ugt i32 %.01825.i.1.i.i.i, 16
  br i1 %i.tj, label %.lr.ph.i.1.i.i.i, label %._crit_edge.i.1.i.i.i, !llvm.loop !2977

._crit_edge.i.1.i.i.i:                            ; preds = %.lr.ph.i.1.i.i.i, %bb.bc
  %.020.lcssa.i.1.i.i.i = phi i32 [ %i.tc, %bb.bc ], [ %i.ti, %.lr.ph.i.1.i.i.i ]
  %.019.lcssa.i.1.i.i.i = phi i32 [ 0, %bb.bc ], [ %i.tg, %.lr.ph.i.1.i.i.i ]
  %.018.lcssa.i.1.i.i.i = phi i32 [ %i.sy, %bb.bc ], [ %i.te, %.lr.ph.i.1.i.i.i ]
  %i.tk = sub nuw nsw i32 8, %.018.lcssa.i.1.i.i.i
  %i.tl = lshr i32 %.020.lcssa.i.1.i.i.i, %i.tk
  %i.tm = or i32 %i.tl, %.019.lcssa.i.1.i.i.i
  br label %ma_dr_mp3_bs_get_bits.exit.1.i.i.i

ma_dr_mp3_bs_get_bits.exit.1.i.i.i:               ; preds = %._crit_edge.i.1.i.i.i, %bb.bb
  %.021.i.1.i.i.i = phi i32 [ %i.tm, %._crit_edge.i.1.i.i.i ], [ 0, %bb.bb ] ; 2 uses
  %i.tn = icmp eq i32 %.021.i.1.i.i.i, %i.sp
  %i.to = trunc i32 %.021.i.1.i.i.i to i8         ; 2 uses
  %i.tp = select i1 %i.tn, i8 -1, i8 %i.to
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sh, i64 %indvars.iv.1.i.i.i
  store i8 %i.tp, ptr %i.tq, align 1, !tbaa !119
  %i.tr = getelementptr inbounds nuw i8, ptr %i.si, i64 %indvars.iv.1.i.i.i
  store i8 %i.to, ptr %i.tr, align 1, !tbaa !119
  %indvars.iv.next.1.i.i.i = add nuw nsw i64 %indvars.iv.1.i.i.i, 1 ; 2 uses
  %exitcond.1.not.i.i.i = icmp eq i64 %indvars.iv.next.1.i.i.i, %wide.trip.count.1.i.i.i
  br i1 %exitcond.1.not.i.i.i, label %.loopexit.1.i.i.i, label %bb.bb, !llvm.loop !2978

bb.bd:                                            ; preds = %bb.az
  %i.ts = zext i8 %i.sk to i64                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.si, i8 0, i64 %i.ts, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.sh, i8 0, i64 %i.ts, i1 false)
  br label %.loopexit.1.i.i.i

.loopexit.1.i.i.i:                                ; preds = %ma_dr_mp3_bs_get_bits.exit.1.i.i.i, %bb.bd, %bb.ay
  %.promoted147.i = phi i32 [ %.promoted146.i, %bb.bd ], [ %.promoted146.i, %bb.ay ], [ %i.ss, %ma_dr_mp3_bs_get_bits.exit.1.i.i.i ] ; 4 uses
  %.pre-phi62.i.i.i = phi i64 [ %i.ts, %bb.bd ], [ %i.sm, %bb.ay ], [ %wide.trip.count.1.i.i.i, %ma_dr_mp3_bs_get_bits.exit.1.i.i.i ] ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.sh, i64 %.pre-phi62.i.i.i ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.si, i64 %.pre-phi62.i.i.i ; 5 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.075.i.i, i64 2
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !119 ; 4 uses
  %.not.2.i.i.i = icmp eq i8 %i.tw, 0
  br i1 %.not.2.i.i.i, label %ma_dr_mp3_L3_read_scalefactors.exit.i.i, label %bb.be

bb.be:                                            ; preds = %.loopexit.1.i.i.i
  %i.tx = and i32 %.076.i.i, 2
  %.not45.2.i.i.i = icmp eq i32 %i.tx, 0
  br i1 %.not45.2.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ty = zext i8 %i.tw to i64                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tu, ptr nonnull align 1 %i.tt, i64 %i.ty, i1 false)
  br label %.loopexit.2.i.i.i

bb.bg:                                            ; preds = %bb.be
  %18 = extractelement <2 x i8> %17, i64 0        ; 2 uses
  %i.tz = zext i8 %18 to i32                      ; 3 uses
  %.not46.2.i.i.i = icmp eq i8 %18, 0
  br i1 %.not46.2.i.i.i, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %notmask.2.i.i.i = shl nsw i32 -1, %i.tz
  %i.ua = xor i32 %notmask.2.i.i.i, -1
  %.mask.i.i.i158 = and i32 %.076.i.i, 536870912
  %.inv.2.i.i.i = icmp eq i32 %.mask.i.i.i158, 0
  %i.ub = select i1 %.inv.2.i.i.i, i32 -1, i32 %i.ua
  %wide.trip.count.2.i.i.i = zext i8 %i.tw to i64 ; 2 uses
  %i.uc = load i32, ptr %i.nj, align 4, !tbaa !778
  br label %bb.bi

bb.bi:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit.2.i.i.i, %bb.bh
  %i.ud = phi i32 [ %.promoted147.i, %bb.bh ], [ %i.ue, %ma_dr_mp3_bs_get_bits.exit.2.i.i.i ] ; 3 uses
  %indvars.iv.2.i.i.i = phi i64 [ 0, %bb.bh ], [ %indvars.iv.next.2.i.i.i, %ma_dr_mp3_bs_get_bits.exit.2.i.i.i ] ; 3 uses
  %i.ue = add nsw i32 %i.ud, %i.tz                ; 4 uses
  store i32 %i.ue, ptr %i.nh, align 8, !tbaa !777
  %i.uf = icmp sgt i32 %i.ue, %i.uc
  br i1 %i.uf, label %ma_dr_mp3_bs_get_bits.exit.2.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ug = ashr i32 %i.ud, 3
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr inbounds i8, ptr %i.om, i64 %i.uh ; 2 uses
  %i.uj = and i32 %i.ud, 7                        ; 2 uses
  %i.uk = add nuw nsw i32 %i.uj, %i.tz            ; 3 uses
  %i.ul = load i8, ptr %i.ui, align 1, !tbaa !119
  %i.um = zext i8 %i.ul to i32
  %i.un = lshr i32 255, %i.uj
  %i.uo = and i32 %i.un, %i.um                    ; 2 uses
  %i.up = icmp samesign ugt i32 %i.uk, 8
  br i1 %i.up, label %.lr.ph.i.2.i.i.i, label %._crit_edge.i.2.i.i.i

.lr.ph.i.2.i.i.i:                                 ; preds = %bb.bj, %.lr.ph.i.2.i.i.i
  %.pn26.i.2.i.i.i = phi ptr [ %.0.i.2.i.i.i, %.lr.ph.i.2.i.i.i ], [ %i.ui, %bb.bj ]
  %.01825.i.2.i.i.i = phi i32 [ %i.uq, %.lr.ph.i.2.i.i.i ], [ %i.uk, %bb.bj ] ; 2 uses
  %.01924.i.2.i.i.i = phi i32 [ %i.us, %.lr.ph.i.2.i.i.i ], [ 0, %bb.bj ]
  %.02023.i.2.i.i.i = phi i32 [ %i.uu, %.lr.ph.i.2.i.i.i ], [ %i.uo, %bb.bj ]
  %.0.i.2.i.i.i = getelementptr inbounds nuw i8, ptr %.pn26.i.2.i.i.i, i64 1 ; 2 uses
  %i.uq = add nsw i32 %.01825.i.2.i.i.i, -8       ; 3 uses
  %i.ur = shl i32 %.02023.i.2.i.i.i, %i.uq
  %i.us = or i32 %i.ur, %.01924.i.2.i.i.i         ; 2 uses
  %i.ut = load i8, ptr %.0.i.2.i.i.i, align 1, !tbaa !119
  %i.uu = zext i8 %i.ut to i32                    ; 2 uses
  %i.uv = icmp samesign ugt i32 %.01825.i.2.i.i.i, 16
  br i1 %i.uv, label %.lr.ph.i.2.i.i.i, label %._crit_edge.i.2.i.i.i, !llvm.loop !2977

._crit_edge.i.2.i.i.i:                            ; preds = %.lr.ph.i.2.i.i.i, %bb.bj
  %.020.lcssa.i.2.i.i.i = phi i32 [ %i.uo, %bb.bj ], [ %i.uu, %.lr.ph.i.2.i.i.i ]
  %.019.lcssa.i.2.i.i.i = phi i32 [ 0, %bb.bj ], [ %i.us, %.lr.ph.i.2.i.i.i ]
  %.018.lcssa.i.2.i.i.i = phi i32 [ %i.uk, %bb.bj ], [ %i.uq, %.lr.ph.i.2.i.i.i ]
  %i.uw = sub nuw nsw i32 8, %.018.lcssa.i.2.i.i.i
  %i.ux = lshr i32 %.020.lcssa.i.2.i.i.i, %i.uw
  %i.uy = or i32 %i.ux, %.019.lcssa.i.2.i.i.i
  br label %ma_dr_mp3_bs_get_bits.exit.2.i.i.i

ma_dr_mp3_bs_get_bits.exit.2.i.i.i:               ; preds = %._crit_edge.i.2.i.i.i, %bb.bi
  %.021.i.2.i.i.i = phi i32 [ %i.uy, %._crit_edge.i.2.i.i.i ], [ 0, %bb.bi ] ; 2 uses
  %i.uz = icmp eq i32 %.021.i.2.i.i.i, %i.ub
  %i.va = trunc i32 %.021.i.2.i.i.i to i8         ; 2 uses
  %i.vb = select i1 %i.uz, i8 -1, i8 %i.va
  %i.vc = getelementptr inbounds nuw i8, ptr %i.tt, i64 %indvars.iv.2.i.i.i
  store i8 %i.vb, ptr %i.vc, align 1, !tbaa !119
  %i.vd = getelementptr inbounds nuw i8, ptr %i.tu, i64 %indvars.iv.2.i.i.i
  store i8 %i.va, ptr %i.vd, align 1, !tbaa !119
  %indvars.iv.next.2.i.i.i = add nuw nsw i64 %indvars.iv.2.i.i.i, 1 ; 2 uses
  %exitcond.2.not.i.i.i = icmp eq i64 %indvars.iv.next.2.i.i.i, %wide.trip.count.2.i.i.i
  br i1 %exitcond.2.not.i.i.i, label %.loopexit.2.i.i.i, label %bb.bi, !llvm.loop !2978

bb.bk:                                            ; preds = %bb.bg
  %i.ve = zext i8 %i.tw to i64                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.tu, i8 0, i64 %i.ve, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.tt, i8 0, i64 %i.ve, i1 false)
  br label %.loopexit.2.i.i.i

.loopexit.2.i.i.i:                                ; preds = %ma_dr_mp3_bs_get_bits.exit.2.i.i.i, %bb.bk, %bb.bf
  %.promoted148.i = phi i32 [ %.promoted147.i, %bb.bk ], [ %.promoted147.i, %bb.bf ], [ %i.ue, %ma_dr_mp3_bs_get_bits.exit.2.i.i.i ] ; 4 uses
  %.pre-phi64.i.i.i = phi i64 [ %i.ve, %bb.bk ], [ %i.ty, %bb.bf ], [ %wide.trip.count.2.i.i.i, %ma_dr_mp3_bs_get_bits.exit.2.i.i.i ] ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.tt, i64 %.pre-phi64.i.i.i ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.tu, i64 %.pre-phi64.i.i.i ; 5 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.075.i.i, i64 3
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !119 ; 4 uses
  %.not.3.i.i.i = icmp eq i8 %i.vi, 0
  br i1 %.not.3.i.i.i, label %ma_dr_mp3_L3_read_scalefactors.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %.loopexit.2.i.i.i
  %i.vj = and i32 %.076.i.i, 1
  %.not45.3.i.i.i = icmp eq i32 %i.vj, 0
  br i1 %.not45.3.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.vk = zext i8 %i.vi to i64                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vg, ptr nonnull align 1 %i.vf, i64 %i.vk, i1 false)
  br label %.loopexit.3.i.i.i

bb.bn:                                            ; preds = %bb.bl
  %19 = extractelement <2 x i8> %17, i64 1        ; 2 uses
  %i.vl = zext i8 %19 to i32                      ; 3 uses
  %.not46.3.i.i.i = icmp eq i8 %19, 0
  br i1 %.not46.3.i.i.i, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %notmask.3.i.i.i = shl nsw i32 -1, %i.vl
  %i.vm = xor i32 %notmask.3.i.i.i, -1
  %.mask77.i.i.i = and i32 %.076.i.i, 268435456
  %.inv.3.i.i.i = icmp eq i32 %.mask77.i.i.i, 0
  %i.vn = select i1 %.inv.3.i.i.i, i32 -1, i32 %i.vm
  %wide.trip.count.3.i.i.i = zext i8 %i.vi to i64 ; 2 uses
  %i.vo = load i32, ptr %i.nj, align 4, !tbaa !778
  br label %bb.bp

bb.bp:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit.3.i.i.i, %bb.bo
  %i.vp = phi i32 [ %.promoted148.i, %bb.bo ], [ %i.vq, %ma_dr_mp3_bs_get_bits.exit.3.i.i.i ] ; 3 uses
  %indvars.iv.3.i.i.i = phi i64 [ 0, %bb.bo ], [ %indvars.iv.next.3.i.i.i, %ma_dr_mp3_bs_get_bits.exit.3.i.i.i ] ; 3 uses
  %i.vq = add nsw i32 %i.vp, %i.vl                ; 4 uses
  store i32 %i.vq, ptr %i.nh, align 8, !tbaa !777
  %i.vr = icmp sgt i32 %i.vq, %i.vo
  br i1 %i.vr, label %ma_dr_mp3_bs_get_bits.exit.3.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.vs = ashr i32 %i.vp, 3
  %i.vt = sext i32 %i.vs to i64
  %i.vu = getelementptr inbounds i8, ptr %i.om, i64 %i.vt ; 2 uses
  %i.vv = and i32 %i.vp, 7                        ; 2 uses
  %i.vw = add nuw nsw i32 %i.vv, %i.vl            ; 3 uses
  %i.vx = load i8, ptr %i.vu, align 1, !tbaa !119
  %i.vy = zext i8 %i.vx to i32
  %i.vz = lshr i32 255, %i.vv
  %i.wa = and i32 %i.vz, %i.vy                    ; 2 uses
  %i.wb = icmp samesign ugt i32 %i.vw, 8
  br i1 %i.wb, label %.lr.ph.i.3.i.i.i, label %._crit_edge.i.3.i.i.i

.lr.ph.i.3.i.i.i:                                 ; preds = %bb.bq, %.lr.ph.i.3.i.i.i
  %.pn26.i.3.i.i.i = phi ptr [ %.0.i.3.i.i.i, %.lr.ph.i.3.i.i.i ], [ %i.vu, %bb.bq ]
  %.01825.i.3.i.i.i = phi i32 [ %i.wc, %.lr.ph.i.3.i.i.i ], [ %i.vw, %bb.bq ] ; 2 uses
  %.01924.i.3.i.i.i = phi i32 [ %i.we, %.lr.ph.i.3.i.i.i ], [ 0, %bb.bq ]
  %.02023.i.3.i.i.i = phi i32 [ %i.wg, %.lr.ph.i.3.i.i.i ], [ %i.wa, %bb.bq ]
  %.0.i.3.i.i.i = getelementptr inbounds nuw i8, ptr %.pn26.i.3.i.i.i, i64 1 ; 2 uses
  %i.wc = add nsw i32 %.01825.i.3.i.i.i, -8       ; 3 uses
  %i.wd = shl i32 %.02023.i.3.i.i.i, %i.wc
  %i.we = or i32 %i.wd, %.01924.i.3.i.i.i         ; 2 uses
  %i.wf = load i8, ptr %.0.i.3.i.i.i, align 1, !tbaa !119
  %i.wg = zext i8 %i.wf to i32                    ; 2 uses
  %i.wh = icmp samesign ugt i32 %.01825.i.3.i.i.i, 16
  br i1 %i.wh, label %.lr.ph.i.3.i.i.i, label %._crit_edge.i.3.i.i.i, !llvm.loop !2977

._crit_edge.i.3.i.i.i:                            ; preds = %.lr.ph.i.3.i.i.i, %bb.bq
  %.020.lcssa.i.3.i.i.i = phi i32 [ %i.wa, %bb.bq ], [ %i.wg, %.lr.ph.i.3.i.i.i ]
  %.019.lcssa.i.3.i.i.i = phi i32 [ 0, %bb.bq ], [ %i.we, %.lr.ph.i.3.i.i.i ]
  %.018.lcssa.i.3.i.i.i = phi i32 [ %i.vw, %bb.bq ], [ %i.wc, %.lr.ph.i.3.i.i.i ]
  %i.wi = sub nuw nsw i32 8, %.018.lcssa.i.3.i.i.i
  %i.wj = lshr i32 %.020.lcssa.i.3.i.i.i, %i.wi
  %i.wk = or i32 %i.wj, %.019.lcssa.i.3.i.i.i
  br label %ma_dr_mp3_bs_get_bits.exit.3.i.i.i

ma_dr_mp3_bs_get_bits.exit.3.i.i.i:               ; preds = %._crit_edge.i.3.i.i.i, %bb.bp
  %.021.i.3.i.i.i = phi i32 [ %i.wk, %._crit_edge.i.3.i.i.i ], [ 0, %bb.bp ] ; 2 uses
  %i.wl = icmp eq i32 %.021.i.3.i.i.i, %i.vn
  %i.wm = trunc i32 %.021.i.3.i.i.i to i8         ; 2 uses
  %i.wn = select i1 %i.wl, i8 -1, i8 %i.wm
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vf, i64 %indvars.iv.3.i.i.i
  store i8 %i.wn, ptr %i.wo, align 1, !tbaa !119
  %i.wp = getelementptr inbounds nuw i8, ptr %i.vg, i64 %indvars.iv.3.i.i.i
  store i8 %i.wm, ptr %i.wp, align 1, !tbaa !119
  %indvars.iv.next.3.i.i.i = add nuw nsw i64 %indvars.iv.3.i.i.i, 1 ; 2 uses
  %exitcond.3.not.i.i.i = icmp eq i64 %indvars.iv.next.3.i.i.i, %wide.trip.count.3.i.i.i
  br i1 %exitcond.3.not.i.i.i, label %.loopexit.3.i.i.i, label %bb.bp, !llvm.loop !2978

bb.br:                                            ; preds = %bb.bn
  %i.wq = zext i8 %i.vi to i64                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.vg, i8 0, i64 %i.wq, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.vf, i8 0, i64 %i.wq, i1 false)
  br label %.loopexit.3.i.i.i

.loopexit.3.i.i.i:                                ; preds = %ma_dr_mp3_bs_get_bits.exit.3.i.i.i, %bb.br, %bb.bm
  %i.wr = phi i32 [ %.promoted148.i, %bb.br ], [ %.promoted148.i, %bb.bm ], [ %i.vq, %ma_dr_mp3_bs_get_bits.exit.3.i.i.i ]
  %.pre-phi66.i.i.i = phi i64 [ %i.wq, %bb.br ], [ %i.vk, %bb.bm ], [ %wide.trip.count.3.i.i.i, %ma_dr_mp3_bs_get_bits.exit.3.i.i.i ]
  %i.ws = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.pre-phi66.i.i.i
  br label %ma_dr_mp3_L3_read_scalefactors.exit.i.i

ma_dr_mp3_L3_read_scalefactors.exit.i.i:          ; preds = %.loopexit.3.i.i.i, %.loopexit.2.i.i.i, %.loopexit.1.i.i.i, %.loopexit.i.i.i, %bb.ap
  %i.wt = phi i32 [ %i.wr, %.loopexit.3.i.i.i ], [ %.promoted.i, %bb.ap ], [ %.promoted146.i, %.loopexit.i.i.i ], [ %.promoted148.i, %.loopexit.2.i.i.i ], [ %.promoted147.i, %.loopexit.1.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi ptr [ %i.ws, %.loopexit.3.i.i.i ], [ %i.b, %bb.ap ], [ %i.si, %.loopexit.i.i.i ], [ %i.vg, %.loopexit.2.i.i.i ], [ %i.tu, %.loopexit.1.i.i.i ] ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 2
  store i8 0, ptr %i.wu, align 1, !tbaa !119
  %i.wv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 1
  store i8 0, ptr %i.wv, align 1, !tbaa !119
  store i8 0, ptr %.0.lcssa.i.i.i, align 1, !tbaa !119
  %i.ww = load i8, ptr %i.ou, align 2, !tbaa !1122 ; 3 uses
  %.not79.i.i = icmp eq i8 %i.ww, 0
  br i1 %.not79.i.i, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %ma_dr_mp3_L3_read_scalefactors.exit.i.i
  %i.wx = sub nsw i32 2, %i.pf                    ; 3 uses
  %i.wy = load i8, ptr %i.oy, align 1, !tbaa !1123
  %i.wz = getelementptr inbounds nuw i8, ptr %i.oo, i64 25
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !119
  %i.xb = zext i8 %i.xa to i32
  %i.xc = shl nuw nsw i32 %i.xb, %i.wx
  %i.xd = trunc i32 %i.xc to i8
  %i.xe = getelementptr inbounds nuw i8, ptr %i.oo, i64 26
  %i.xf = load i8, ptr %i.xe, align 2, !tbaa !119
  %i.xg = zext i8 %i.xf to i32
  %i.xh = shl nuw nsw i32 %i.xg, %i.wx
  %i.xi = trunc i32 %i.xh to i8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.oo, i64 27
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !119
  %i.xl = zext i8 %i.xk to i32
  %i.xm = shl nuw nsw i32 %i.xl, %i.wx
  %i.xn = trunc i32 %i.xm to i8
  %i.xo = zext i8 %i.wy to i64
  %i.xp = zext i8 %i.ww to i64
  %invariant.gep.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xo
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %bb.bs
  %indvars.iv129.i.i = phi i64 [ 0, %bb.bs ], [ %indvars.iv.next130.i.i, %bb.bt ] ; 2 uses
  %gep.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %indvars.iv129.i.i ; 4 uses
  %i.xq = load i8, ptr %gep.i.i, align 1, !tbaa !119
  %i.xr = add i8 %i.xq, %i.xd
  store i8 %i.xr, ptr %gep.i.i, align 1, !tbaa !119
  %i.xs = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 1 ; 2 uses
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !119
  %i.xu = add i8 %i.xt, %i.xi
  store i8 %i.xu, ptr %i.xs, align 1, !tbaa !119
  %i.xv = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 2 ; 2 uses
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !119
  %i.xx = add i8 %i.xw, %i.xn
  store i8 %i.xx, ptr %i.xv, align 1, !tbaa !119
  %indvars.iv.next130.i.i = add nuw nsw i64 %indvars.iv129.i.i, 3 ; 2 uses
  %i.xy = icmp samesign ult i64 %indvars.iv.next130.i.i, %i.xp
  br i1 %i.xy, label %bb.bt, label %.loopexit.i.i, !llvm.loop !2979

bb.bu:                                            ; preds = %ma_dr_mp3_L3_read_scalefactors.exit.i.i
  %i.xz = getelementptr inbounds nuw i8, ptr %i.oo, i64 28
  %i.ya = load i8, ptr %i.xz, align 4, !tbaa !1127
  %.not80.i.i = icmp eq i8 %i.ya, 0
  br i1 %.not80.i.i, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.bu
  %i.yb = load <8 x i8>, ptr %i.nt, align 1, !tbaa !119
  %i.yc = add <8 x i8> %i.yb, <i8 1, i8 1, i8 1, i8 1, i8 2, i8 2, i8 3, i8 3>
  store <8 x i8> %i.yc, ptr %i.nt, align 1, !tbaa !119
  %i.yd = load i8, ptr %i.nu, align 1, !tbaa !119
  %i.ye = add i8 %i.yd, 3
  store i8 %i.ye, ptr %i.nu, align 1, !tbaa !119
  %i.yf = load i8, ptr %i.nv, align 4, !tbaa !119
  %i.yg = add i8 %i.yf, 2
  store i8 %i.yg, ptr %i.nv, align 4, !tbaa !119
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.bt, %.preheader.preheader.i.i, %bb.bu
  %i.yh = getelementptr inbounds nuw i8, ptr %i.oo, i64 14
  %i.yi = load i8, ptr %i.yh, align 2, !tbaa !1128
  %i.yj = zext i8 %i.yi to i32
  %i.yk = load i8, ptr %i.np, align 1, !tbaa !119
  %i.yl = and i8 %i.yk, -32
  %i.ym = icmp eq i8 %i.yl, 96
  %.neg.neg109.i.i = select i1 %i.ym, i32 2, i32 0
  %reass.sub = sub nsw i32 %.neg.neg109.i.i, %i.yj
  %i.yn = add nsw i32 %reass.sub, 258
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.loopexit.i.i
  %.07.i.i.i = phi float [ 2.048000e+03, %.loopexit.i.i ], [ %i.yx, %bb.bv ]
  %.0.i.i.i = phi i32 [ %i.yn, %.loopexit.i.i ], [ %i.yy, %bb.bv ] ; 2 uses
  %i.yo = tail call i32 @llvm.umin.i32(i32 %.0.i.i.i, i32 120) ; 3 uses
  %i.yp = and i32 %i.yo, 3
  %i.yq = zext nneg i32 %i.yp to i64
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_mp3_L3_ldexp_q2.g_expfrac, i64 %i.yq
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !349
  %i.yt = lshr i32 %i.yo, 2
  %i.yu = lshr i32 1073741824, %i.yt
  %i.yv = uitofp nneg i32 %i.yu to float
  %i.yw = fmul float %i.ys, %i.yv
  %i.yx = fmul float %.07.i.i.i, %i.yw            ; 2 uses
  %i.yy = sub nuw nsw i32 %.0.i.i.i, %i.yo        ; 2 uses
  %.not169.i.i = icmp eq i32 %i.yy, 0
  br i1 %.not169.i.i, label %ma_dr_mp3_L3_ldexp_q2.exit.preheader.i.i, label %bb.bv, !llvm.loop !2980

ma_dr_mp3_L3_ldexp_q2.exit.preheader.i.i:         ; preds = %bb.bv
  %i.yz = load i8, ptr %i.oy, align 1, !tbaa !1123
  %i.za = zext i8 %i.yz to i32
  %i.zb = zext i8 %i.ww to i32
  %i.zc = add nuw nsw i32 %i.za, %i.zb            ; 2 uses
  %.not110.i.i = icmp eq i32 %i.zc, 0
  br i1 %.not110.i.i, label %ma_dr_mp3_L3_decode_scalefactors.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %ma_dr_mp3_L3_ldexp_q2.exit.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.zc to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %ma_dr_mp3_L3_ldexp_q2.exit83.i.i, %.lr.ph.preheader.i.i
  %indvars.iv135.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next136.i.i, %ma_dr_mp3_L3_ldexp_q2.exit83.i.i ] ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv135.i.i
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !119
  %i.zf = zext i8 %i.ze to i32
  %i.zg = shl i32 %i.zf, %i.pg
  br label %bb.bw
end_hunk_0
