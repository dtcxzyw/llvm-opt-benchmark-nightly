Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@drwav_init__internal:bb.a
  %i.lt = zext i8 %i.ls to i32
  %i.lu = shl nuw nsw i32 %i.lt, 8
  %i.lv = or disjoint i32 %i.lu, %i.lr
  %i.lw = load i8, ptr %i.hn, align 1
  %i.lx = zext i8 %i.lw to i32
  %i.ly = shl nuw nsw i32 %i.lx, 16
  %i.lz = or disjoint i32 %i.lv, %i.ly
  %i.ma = load i8, ptr %i.hk, align 8
  %i.mb = zext i8 %i.ma to i32
  %i.mc = shl nuw i32 %i.mb, 24
  %i.md = or disjoint i32 %i.lz, %i.mc
  store i32 %i.md, ptr %i.gx, align 4
  %i.me = load i8, ptr %i.hp, align 1
  %i.mf = zext i8 %i.me to i16
  %i.mg = load i8, ptr %i.ho, align 4
  %i.mh = zext i8 %i.mg to i16
  %i.mi = shl nuw i16 %i.mh, 8
  %i.mj = or disjoint i16 %i.mi, %i.mf
  store i16 %i.mj, ptr %i.gw, align 4
  %i.mk = load i8, ptr %i.hr, align 1
  %i.ml = zext i8 %i.mk to i16
  %i.mm = load i8, ptr %i.hq, align 2
  %i.mn = zext i8 %i.mm to i16
  %i.mo = shl nuw i16 %i.mn, 8
  %i.mp = or disjoint i16 %i.mo, %i.ml
  br label %drwav_bytes_to_u16_ex.exit625

bb.ax:                                            ; preds = %bb.av
  %i.mq = load <2 x i16>, ptr %i.o, align 16
  store <2 x i16> %i.mq, ptr %4, align 4
  %i.mr = load <2 x i32>, ptr %i.hg, align 4
  store <2 x i32> %i.mr, ptr %i.gu, align 4
  %i.ms = load i16, ptr %i.ho, align 4
  store i16 %i.ms, ptr %i.gw, align 4
  %i.mt = load i16, ptr %i.hq, align 2
  br label %drwav_bytes_to_u16_ex.exit625

drwav_bytes_to_u16_ex.exit625:                    ; preds = %bb.aw, %bb.ax
  %.0.i624 = phi i16 [ %i.mp, %bb.aw ], [ %i.mt, %bb.ax ]
  store i16 %.0.i624, ptr %i.gv, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hs, i8 0, i64 24, i1 false)
  %i.mu = load i64, ptr %i.fz, align 8
  %i.mv = icmp ugt i64 %i.mu, 16
  br i1 %i.mv, label %bb.ay, label %bb.bm

bb.ay:                                            ; preds = %drwav_bytes_to_u16_ex.exit625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #61
  %i.mw = load ptr, ptr %0, align 8
  %i.mx = load ptr, ptr %i.z, align 8
  %i.my = call i64 %i.mw(ptr noundef %i.mx, ptr noundef nonnull %i.p, i64 noundef 2) #61
  %.not520 = icmp eq i64 %i.my, 2
  br i1 %.not520, label %bb.az, label %.critedge546

bb.az:                                            ; preds = %bb.ay
  %i.mz = add i64 %i.iu, 18                       ; 3 uses
  store i64 %i.mz, ptr %i.d, align 8
  %i.na = load i32, ptr %i.dz, align 8
  switch i32 %i.na, label %bb.bb [
    i32 4, label %bb.ba
    i32 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.nb = load i8, ptr %i.hw, align 1
  %i.nc = zext i8 %i.nb to i16
  %i.nd = load i8, ptr %i.p, align 2
  %i.ne = zext i8 %i.nd to i16
  %i.nf = shl nuw i16 %i.ne, 8
  %i.ng = or disjoint i16 %i.nf, %i.nc
  br label %drwav_bytes_to_u16_ex.exit619

bb.bb:                                            ; preds = %bb.az
  %i.nh = load i16, ptr %i.p, align 2
  br label %drwav_bytes_to_u16_ex.exit619

drwav_bytes_to_u16_ex.exit619:                    ; preds = %bb.ba, %bb.bb
  %.0.i618 = phi i16 [ %i.ng, %bb.ba ], [ %i.nh, %bb.bb ] ; 5 uses
  store i16 %.0.i618, ptr %i.hs, align 4
  %i.ni = zext i16 %.0.i618 to i32
  %.not521 = icmp eq i16 %.0.i618, 0
  br i1 %.not521, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %drwav_bytes_to_u16_ex.exit619
  %i.nj = load i16, ptr %4, align 4
  %i.nk = icmp eq i16 %i.nj, -2                   ; 2 uses
  %i.nl = icmp ne i16 %.0.i618, 22
  %or.cond53 = and i1 %i.nl, %i.nk
  br i1 %or.cond53, label %.critedge546, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.nk, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #61
  %i.nm = load ptr, ptr %0, align 8
  %i.nn = load ptr, ptr %i.z, align 8
  %i.no = zext i16 %.0.i618 to i64
  %i.np = call i64 %i.nm(ptr noundef %i.nn, ptr noundef nonnull %i.q, i64 noundef %i.no) #61
  %i.nq = load i16, ptr %i.hs, align 4
  %i.nr = zext i16 %i.nq to i64                   ; 2 uses
  %.not522 = icmp eq i64 %i.np, %i.nr
  br i1 %.not522, label %bb.bf, label %.critedge544

bb.bf:                                            ; preds = %bb.be
  %i.ns = load i32, ptr %i.dz, align 8
  switch i32 %i.ns, label %bb.bh [
    i32 4, label %bb.bg
    i32 1, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf
  %i.nt = load i8, ptr %i.hx, align 1
  %i.nu = zext i8 %i.nt to i16
  %i.nv = load i8, ptr %i.q, align 16
  %i.nw = zext i8 %i.nv to i16
  %i.nx = shl nuw i16 %i.nw, 8
  %i.ny = or disjoint i16 %i.nx, %i.nu
  store i16 %i.ny, ptr %i.ht, align 2
  %i.nz = load i32, ptr %i.hy, align 2
  %i.oa = call i32 @llvm.bswap.i32(i32 %i.nz)
  br label %drwav_bytes_to_u32_ex.exit572

bb.bh:                                            ; preds = %bb.bf
  %i.ob = load i16, ptr %i.q, align 16
  store i16 %i.ob, ptr %i.ht, align 2
  %i.oc = load i32, ptr %i.hy, align 2
  br label %drwav_bytes_to_u32_ex.exit572

drwav_bytes_to_u32_ex.exit572:                    ; preds = %bb.bg, %bb.bh
  %.0.i571 = phi i32 [ %i.oa, %bb.bg ], [ %i.oc, %bb.bh ]
  store i32 %.0.i571, ptr %i.hu, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hv, ptr noundef nonnull align 2 dereferenceable(16) %i.hz, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #61
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bd
  %i.od = load ptr, ptr %i.gd, align 8
  %i.oe = load ptr, ptr %i.z, align 8
  %i.of = call i32 %i.od(ptr noundef %i.oe, i32 noundef %i.ni, i32 noundef 1) #61
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %.critedge546, label %._crit_edge1501

._crit_edge1501:                                  ; preds = %bb.bi
  %.pre1502 = load i16, ptr %i.hs, align 4
  %.pre1507 = zext i16 %.pre1502 to i64
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge1501, %drwav_bytes_to_u32_ex.exit572
  %.pre-phi = phi i64 [ %.pre1507, %._crit_edge1501 ], [ %i.nr, %drwav_bytes_to_u32_ex.exit572 ] ; 2 uses
  %i.oh = add i64 %i.mz, %.pre-phi
  %i.oi = add nuw nsw i64 %.pre-phi, 18
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %drwav_bytes_to_u16_ex.exit619
  %i.oj = phi i64 [ %i.oh, %bb.bj ], [ %i.mz, %drwav_bytes_to_u16_ex.exit619 ]
  %.0393 = phi i64 [ %i.oi, %bb.bj ], [ 18, %drwav_bytes_to_u16_ex.exit619 ] ; 2 uses
  %i.ok = load ptr, ptr %i.gd, align 8
  %i.ol = load ptr, ptr %i.z, align 8
  %i.om = load i64, ptr %i.fz, align 8
  %i.on = sub i64 %i.om, %.0393
  %i.oo = trunc i64 %i.on to i32
  %i.op = call i32 %i.ok(ptr noundef %i.ol, i32 noundef %i.oo, i32 noundef 1) #61
  %i.oq = icmp eq i32 %i.op, 0
  br i1 %i.oq, label %.critedge546, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.or = load i64, ptr %i.fz, align 8
  %i.os = sub i64 %i.or, %.0393
  %i.ot = add i64 %i.os, %i.oj                    ; 2 uses
  store i64 %i.ot, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #61
  br label %bb.bm

.critedge544:                                     ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #61
  br label %.critedge546

bb.bm:                                            ; preds = %bb.bl, %drwav_bytes_to_u16_ex.exit625
  %i.ou = phi i64 [ %i.ot, %bb.bl ], [ %i.ko, %drwav_bytes_to_u16_ex.exit625 ] ; 2 uses
  %i.ov = load i32, ptr %i.ga, align 8            ; 4 uses
  %.not523 = icmp eq i32 %i.ov, 0
  br i1 %.not523, label %drwav__seek_forward.exit684.thread.jt6, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ow = load ptr, ptr %i.gd, align 8            ; 2 uses
  %i.ox = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.oy = icmp slt i32 %i.ov, 0
  br i1 %i.oy, label %.lr.ph1405.preheader, label %drwav__seek_forward.exit684

.lr.ph1405.preheader:                             ; preds = %bb.bn
  %i.oz = zext i32 %i.ov to i64
  br label %.lr.ph1405

.lr.ph1405:                                       ; preds = %.lr.ph1405.preheader, %.lr.ph.i678
  %.013.i6791404 = phi i64 [ %i.pb, %.lr.ph.i678 ], [ %i.oz, %.lr.ph1405.preheader ]
  %i.pa = call i32 %i.ow(ptr noundef %i.ox, i32 noundef 2147483647, i32 noundef 1) #61, !inline_history !843
  %.not11.i683 = icmp eq i32 %i.pa, 0
  br i1 %.not11.i683, label %drwav__seek_forward.exit684.thread.jt5, label %.lr.ph.i678

.lr.ph.i678:                                      ; preds = %.lr.ph1405
  %i.pb = add i64 %.013.i6791404, -2147483647     ; 3 uses
  %i.pc = icmp ugt i64 %i.pb, 2147483647
  br i1 %i.pc, label %.lr.ph1405, label %drwav__seek_forward.exit684.loopexit

drwav__seek_forward.exit684.loopexit:             ; preds = %.lr.ph.i678
  %i.pd = trunc nuw nsw i64 %i.pb to i32
  br label %drwav__seek_forward.exit684

drwav__seek_forward.exit684:                      ; preds = %drwav__seek_forward.exit684.loopexit, %bb.bn
  %.013.i679.lcssa = phi i32 [ %i.ov, %bb.bn ], [ %i.pd, %drwav__seek_forward.exit684.loopexit ]
  %i.pe = call i32 %i.ow(ptr noundef %i.ox, i32 noundef %.013.i679.lcssa, i32 noundef 1) #61, !inline_history !843
  %.not10.i680.not = icmp eq i32 %i.pe, 0
  br i1 %.not10.i680.not, label %drwav__seek_forward.exit684.thread.jt5, label %bb.bo

bb.bo:                                            ; preds = %drwav__seek_forward.exit684
  %i.pf = load i32, ptr %i.ga, align 8
  %i.pg = zext i32 %i.pf to i64
  %i.ph = add i64 %i.ou, %i.pg                    ; 2 uses
  store i64 %i.ph, ptr %i.d, align 8
  br label %drwav__seek_forward.exit684.thread.jt6

.critedge546:                                     ; preds = %bb.bk, %bb.bc, %bb.bi, %bb.ay, %.critedge544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #61
  br label %drwav__seek_forward.exit684.thread.jt1

drwav__seek_forward.exit684.thread.jt6:           ; preds = %bb.bm, %bb.bo
  %i.pi = phi i64 [ %i.ph, %bb.bo ], [ %i.ou, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #61
  br label %.backedge

drwav__seek_forward.exit684.thread.jt5:           ; preds = %drwav__seek_forward.exit684, %.lr.ph1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #61
  br label %.loopexit1323

drwav__seek_forward.exit684.thread.jt1:           ; preds = %bb.au, %.critedge546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #61
  br label %bb.dj

bb.bp:                                            ; preds = %drwav_fourcc_equal.exit674.thread
  %i.pj = icmp eq i8 %i.jo, 100
  %i.pk = icmp eq i8 %i.jq, 97                    ; 2 uses
  %or.cond1102 = select i1 %i.pj, i1 %i.pk, i1 false
  %or.cond1106 = select i1 %or.cond1102, i1 %i.jt, i1 false
  %.not1220 = icmp eq i8 %i.ju, 97
  %or.cond1270 = select i1 %or.cond1106, i1 %.not1220, i1 false
  br i1 %or.cond1270, label %bb.bq, label %drwav_fourcc_equal.exit685.thread

drwav_guid_equal.exit.thread:                     ; preds = %bb.at, %bb.as
  %.not.i686 = icmp eq i8 %.pr1009, 100
  %.not.1.i688 = icmp eq i8 %.pre1486.fr, 97
  %.not.2.i689 = icmp eq i8 %.pre1487.fr, 116
  %i.pl = shufflevector <4 x i8> %i.jw, <4 x i8> %i.jx, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.pm = insertelement <8 x i8> %i.pl, i8 %.pre1488, i64 0
  %.fr1833 = freeze <8 x i8> %i.pm
  %i.pn = icmp eq <8 x i8> %.fr1833, <i8 97, i8 -13, i8 -84, i8 -45, i8 17, i8 -116, i8 -47, i8 0> ; 2 uses
  %i.po = icmp eq <4 x i8> %.fr1832, <i8 -64, i8 79, i8 -114, i8 -37>
  %.not.15.i702.not = icmp eq i8 %.pre1500, -118
  %i.pp = shufflevector <8 x i1> %i.pn, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.pp, %i.po
  %i.pq = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pr = shufflevector <8 x i1> %i.pq, <8 x i1> %i.pn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ps = bitcast <8 x i1> %i.pr to i8
  %i.pt = icmp eq i8 %i.ps, -1
  %op.rdx = select i1 %.not.i686, i1 %i.pt, i1 false
  %op.rdx1819 = and i1 %.not.1.i688, %.not.2.i689
  %i.pu = freeze i1 %op.rdx
  %op.rdx1820 = and i1 %i.pu, %op.rdx1819
  %op.rdx1821 = select i1 %op.rdx1820, i1 %.not.15.i702.not, i1 false
  br i1 %op.rdx1821, label %bb.bq, label %drwav_guid_equal.exit704.thread

bb.bq:                                            ; preds = %drwav_guid_equal.exit.thread, %bb.bp
  store i64 %i.iu, ptr %i.gh, align 8
  %.not518 = icmp eq i32 %i.jk, 3
  %spec.select = select i1 %.not518, i64 %.2413, i64 %i.it ; 4 uses
  br i1 %or.cond13, label %bb.br, label %.loopexit1323

bb.br:                                            ; preds = %bb.bq
  %i.pv = load i32, ptr %i.ga, align 8
  %i.pw = zext i32 %i.pv to i64
  %i.px = add i64 %i.it, %i.pw                    ; 5 uses
  %i.py = load ptr, ptr %i.gd, align 8            ; 2 uses
  %i.pz = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not12.i705 = icmp eq i64 %i.px, 0
  br i1 %.not12.i705, label %drwav__seek_forward.exit712.thread876, label %.lr.ph.i706.preheader

.lr.ph.i706.preheader:                            ; preds = %bb.br
  %i.qa = icmp ugt i64 %i.px, 2147483647
  br i1 %i.qa, label %.lr.ph1401, label %drwav__seek_forward.exit712

.lr.ph1401:                                       ; preds = %.lr.ph.i706.preheader, %.lr.ph.i706
  %.013.i7071400 = phi i64 [ %i.qc, %.lr.ph.i706 ], [ %i.px, %.lr.ph.i706.preheader ]
  %i.qb = call i32 %i.py(ptr noundef %i.pz, i32 noundef 2147483647, i32 noundef 1) #61, !inline_history !843
  %.not11.i711 = icmp eq i32 %i.qb, 0
  br i1 %.not11.i711, label %.loopexit1323, label %.lr.ph.i706

.lr.ph.i706:                                      ; preds = %.lr.ph1401
  %i.qc = add i64 %.013.i7071400, -2147483647     ; 3 uses
  %i.qd = icmp ugt i64 %i.qc, 2147483647
  br i1 %i.qd, label %.lr.ph1401, label %drwav__seek_forward.exit712

drwav__seek_forward.exit712:                      ; preds = %.lr.ph.i706, %.lr.ph.i706.preheader
  %.013.i707.lcssa = phi i64 [ %i.px, %.lr.ph.i706.preheader ], [ %i.qc, %.lr.ph.i706 ]
  %i.qe = trunc nuw nsw i64 %.013.i707.lcssa to i32
  %i.qf = call i32 %i.py(ptr noundef %i.pz, i32 noundef %i.qe, i32 noundef 1) #61, !inline_history !843
  %.not10.i708.not = icmp eq i32 %i.qf, 0
  br i1 %.not10.i708.not, label %.loopexit1323, label %drwav__seek_forward.exit712.thread876

drwav__seek_forward.exit712.thread876:            ; preds = %bb.br, %drwav__seek_forward.exit712
  %i.qg = add i64 %i.px, %i.iu                    ; 2 uses
  store i64 %i.qg, ptr %i.d, align 8
  br label %.backedge

drwav_fourcc_equal.exit685.thread:                ; preds = %bb.bp
  switch i32 %i.jk, label %drwav_fourcc_equal.exit713.thread [
    i32 0, label %bb.bs
    i32 1, label %bb.bs
    i32 3, label %bb.bs
  ]

bb.bs:                                            ; preds = %drwav_fourcc_equal.exit685.thread, %drwav_fourcc_equal.exit685.thread, %drwav_fourcc_equal.exit685.thread
  %or.cond1138 = select i1 %i.jp, i1 %i.pk, i1 false
  %i.qh = icmp eq i8 %i.js, 99
  %or.cond1142 = select i1 %or.cond1138, i1 %i.qh, i1 false
  %.not1234 = icmp eq i8 %i.ju, 116
  %or.cond1276 = select i1 %or.cond1142, i1 %.not1234, i1 false
  br i1 %or.cond1276, label %bb.bt, label %drwav_fourcc_equal.exit713.thread

drwav_guid_equal.exit704.thread:                  ; preds = %drwav_guid_equal.exit.thread
  %i.qi = call i32 @drwav_guid_equal(ptr noundef nonnull %7, ptr noundef nonnull @drwavGUID_W64_FACT)
  %.not496 = icmp eq i32 %i.qi, 0
  br i1 %.not496, label %drwav_fourcc_equal.exit713.thread, label %.thread883

bb.bt:                                            ; preds = %bb.bs
  switch i32 %i.jk, label %bb.cb [
    i32 0, label %bb.bu
    i32 1, label %bb.bu
    i32 2, label %.thread883
  ]

bb.bu:                                            ; preds = %bb.bt, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #61
  %i.qj = load ptr, ptr %0, align 8
  %i.qk = load ptr, ptr %i.z, align 8
  %i.ql = call i64 %i.qj(ptr noundef %i.qk, ptr noundef nonnull %i.r, i64 noundef 4) #61, !inline_history !842 ; 2 uses
  %i.qm = add i64 %i.iu, %i.ql                    ; 2 uses
  store i64 %i.qm, ptr %i.d, align 8
  %.not517 = icmp eq i64 %i.ql, 4
  br i1 %.not517, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.qn = add i64 %i.it, -4
  %i.qo = load i16, ptr %i.gy, align 4
  %i.qp = icmp eq i16 %i.qo, 2
  br i1 %i.qp, label %bb.bw, label %.thread884

bb.bw:                                            ; preds = %bb.bv
  %i.qq = load i32, ptr %i.dz, align 8
  switch i32 %i.qq, label %bb.by [
    i32 4, label %bb.bx
    i32 1, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw, %bb.bw
  %i.qr = load i32, ptr %i.r, align 4
  %i.qs = call i32 @llvm.bswap.i32(i32 %i.qr)
  br label %.thread884

bb.by:                                            ; preds = %bb.bw
  %i.qt = load i32, ptr %i.r, align 4
  br label %.thread884

.thread884:                                       ; preds = %bb.by, %bb.bx, %bb.bv
  %storemerge.shrunk = phi i32 [ 0, %bb.bv ], [ %i.qs, %bb.bx ], [ %i.qt, %bb.by ]
  %storemerge = zext i32 %storemerge.shrunk to i64
  store i64 %storemerge, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #61
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #61
  br label %.thread988

.thread883:                                       ; preds = %drwav_guid_equal.exit704.thread, %bb.bt
  %i.qu = load ptr, ptr %0, align 8
  %i.qv = load ptr, ptr %i.z, align 8
  %i.qw = call i64 %i.qu(ptr noundef %i.qv, ptr noundef nonnull %i.f, i64 noundef 8) #61, !inline_history !842 ; 2 uses
  %i.qx = add i64 %i.iu, %i.qw                    ; 2 uses
  store i64 %i.qx, ptr %i.d, align 8
  %.not516 = icmp eq i64 %i.qw, 8
  br i1 %.not516, label %bb.ca, label %.thread988

bb.ca:                                            ; preds = %.thread883
  %i.qy = add i64 %i.it, -8
  br label %bb.cb

bb.cb:                                            ; preds = %.thread884, %bb.bt, %bb.ca
  %i.qz = phi i64 [ %i.qm, %.thread884 ], [ %i.qx, %bb.ca ], [ %i.iu, %bb.bt ]
  %.1395 = phi i64 [ %i.qn, %.thread884 ], [ %i.qy, %bb.ca ], [ %i.it, %bb.bt ]
  %i.ra = load i32, ptr %i.ga, align 8
  %i.rb = zext i32 %i.ra to i64
  %i.rc = add i64 %.1395, %i.rb                   ; 5 uses
end_hunk_0
begin_hunk_1_@drwav_write_pcm_frames_be:bb.a
  store i8 %i.cn, ptr %i.ck, align 1
  store i8 %i.cl, ptr %i.cm, align 1
  br label %drwav_write_raw.exit

drwav_write_raw.exit:                             ; preds = %.lr.ph, %.lr.ph72.epil.preheader, %drwav_write_raw.exit.loopexit134.unr-lcssa, %.lr.ph74, %.lr.ph76, %middle.block129, %middle.block112, %vec.epilog.middle.block, %middle.block, %drwav__bswap_samples.exit
  %i.co = load ptr, ptr %i.al, align 8
  %i.cp = load ptr, ptr %i.am, align 8
  %i.cq = call i64 %i.co(ptr noundef %i.cp, ptr noundef nonnull %i.a, i64 noundef %spec.select) #61, !inline_history !64 ; 5 uses
  %i.cr = load i64, ptr %i.an, align 8
  %i.cs = add i64 %i.cr, %i.cq
  store i64 %i.cs, ptr %i.an, align 8
  %i.ct = icmp eq i64 %i.cq, 0
  br i1 %i.ct, label %.thread, label %bb.i

.thread:                                          ; preds = %drwav_write_raw.exit, %drwav__bswap_samples.exit
  %.04179.lcssa = phi i64 [ %.04179, %drwav_write_raw.exit ], [ 0, %drwav__bswap_samples.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %.loopexit

bb.i:                                             ; preds = %drwav_write_raw.exit
  %i.cu = sub i64 %.04378, %i.cq                  ; 2 uses
  %i.cv = add i64 %i.cq, %.04179                  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.04080, i64 %i.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %.not = icmp eq i64 %i.cu, 0
  br i1 %.not, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %bb.i, %.preheader67, %.thread
  %.04169 = phi i64 [ %.04179.lcssa, %.thread ], [ 0, %.preheader67 ], [ %i.cv, %bb.i ]
  %i.cx = shl i64 %.04169, 3
  %i.cy = load i16, ptr %i.f, align 2
  %i.cz = zext i16 %i.cy to i64
  %i.da = load i16, ptr %i.e, align 8
  %i.db = zext i16 %i.da to i64
  %i.dc = mul nuw nsw i64 %i.db, %i.cz
  %i.dd = udiv i64 %i.cx, %i.dc
  br label %bb.j

bb.j:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit, %bb.a, %.loopexit
  %.045 = phi i64 [ 0, %bb.a ], [ %i.dd, %.loopexit ], [ 0, %drwav_get_bytes_per_pcm_frame.exit ]
  ret i64 %.045
}

; Function Attrs: nounwind uwtable
define hidden range(i64 0, -7) i64 @drwav_write_pcm_frames(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond.i = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3.i = or i1 %or.cond.i, %i.c
  br i1 %or.cond3.i, label %drwav_write_pcm_frames_le.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 2 uses
  %i.f = load i16, ptr %i.d, align 8
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = mul i64 %1, %i.g
  %i.i = load i16, ptr %i.e, align 2
  %i.j = zext i16 %i.i to i64                     ; 2 uses
  %i.k = mul i64 %i.h, %i.j
  %i.l = lshr i64 %i.k, 3                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not43.i = icmp eq i64 %i.l, 0
  br i1 %.not43.i, label %.thread.i, label %drwav_write_raw.exit.lr.ph.i

drwav_write_raw.exit.lr.ph.i:                     ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br label %drwav_write_raw.exit.i

drwav_write_raw.exit.i:                           ; preds = %bb.c, %drwav_write_raw.exit.lr.ph.i
  %.02746.i = phi ptr [ %2, %drwav_write_raw.exit.lr.ph.i ], [ %i.x, %bb.c ] ; 2 uses
  %.02845.i = phi i64 [ 0, %drwav_write_raw.exit.lr.ph.i ], [ %i.w, %bb.c ] ; 2 uses
  %.03044.i = phi i64 [ %i.l, %drwav_write_raw.exit.lr.ph.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = load ptr, ptr %i.n, align 8
  %i.r = tail call i64 %i.p(ptr noundef %i.q, ptr noundef nonnull %.02746.i, i64 noundef %.03044.i) #61, !inline_history !861 ; 5 uses
  %i.s = load i64, ptr %i.o, align 8
  %i.t = add i64 %i.s, %i.r
  store i64 %i.t, ptr %i.o, align 8
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %.thread.loopexit.i, label %bb.c

bb.c:                                             ; preds = %drwav_write_raw.exit.i
  %i.v = sub i64 %.03044.i, %i.r                  ; 2 uses
  %i.w = add i64 %i.r, %.02845.i                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02746.i, i64 %i.r
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %.thread.loopexit.i, label %drwav_write_raw.exit.i

.thread.loopexit.i:                               ; preds = %bb.c, %drwav_write_raw.exit.i
  %.028.lcssa.ph.i = phi i64 [ %i.w, %bb.c ], [ %.02845.i, %drwav_write_raw.exit.i ]
  %.pre.i = load i16, ptr %i.e, align 2
  %.pre48.i = load i16, ptr %i.d, align 8
  %.pre49.i = zext i16 %.pre.i to i64
  %.pre50.i = zext i16 %.pre48.i to i64
  %i.y = shl i64 %.028.lcssa.ph.i, 3
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.b
  %.pre-phi51.i = phi i64 [ %.pre50.i, %.thread.loopexit.i ], [ %i.g, %bb.b ]
  %.pre-phi.i = phi i64 [ %.pre49.i, %.thread.loopexit.i ], [ %i.j, %bb.b ]
  %.028.lcssa.i = phi i64 [ %i.y, %.thread.loopexit.i ], [ 0, %bb.b ]
  %i.z = mul nuw nsw i64 %.pre-phi.i, %.pre-phi51.i
  %i.aa = udiv i64 %.028.lcssa.i, %i.z
  br label %drwav_write_pcm_frames_le.exit

drwav_write_pcm_frames_le.exit:                   ; preds = %bb.a, %.thread.i
  %.032.i = phi i64 [ %i.aa, %.thread.i ], [ 0, %bb.a ]
  ret i64 %.032.i
}

; Function Attrs: nounwind uwtable
define hidden i64 @drwav_read_pcm_frames_s16(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 9 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %i.c = alloca [4096 x i8], align 16             ; 9 uses
  %i.d = alloca [4096 x i8], align 16             ; 20 uses
  %i.e = icmp eq ptr %0, null
  %i.f = icmp eq i64 %1, 0
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %bb.ax

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.j = load i16, ptr %i.i, align 4
  switch i16 %i.j, label %bb.ax [
    i16 1, label %bb.e
    i16 3, label %bb.r
    i16 6, label %bb.af
    i16 7, label %bb.an
    i16 2, label %bb.av
    i16 17, label %bb.aw
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.d, i8 0, i64 4096, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.l = load i16, ptr %i.k, align 2              ; 2 uses
  %i.m = icmp eq i16 %i.l, 16
  br i1 %i.m, label %.split.i, label %._crit_edge.i

.split.i:                                         ; preds = %bb.e
  %i.n = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %1, ptr noundef nonnull %2)
  br label %drwav_read_pcm_frames_s16__pcm.exit

._crit_edge.i:                                    ; preds = %bb.e
  %i.o = zext i16 %i.l to i32                     ; 2 uses
  %i.p = and i32 %i.o, 7
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.s to i32
  %i.u = mul nuw nsw i32 %i.t, %i.o
  %i.v = lshr exact i32 %i.u, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load i16, ptr %i.w, align 4
  %i.y = zext i16 %i.x to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i

drwav_get_bytes_per_pcm_frame.exit.i:             ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.v, %bb.f ], [ %i.y, %bb.g ] ; 5 uses
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %drwav_read_pcm_frames_s16__pcm.exit, label %bb.h

bb.h:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = zext i16 %i.aa to i32                   ; 3 uses
  %i.ac = udiv i32 %.0.i.i, %i.ab                 ; 5 uses
  %i.ad = urem i32 %.0.i.i, %i.ab
  %i.ae = icmp samesign uge i32 %.0.i.i, %i.ab
  %.not.i = icmp eq i32 %i.ad, 0
  %or.cond218.a = and i1 %i.ae, %.not.i
  br i1 %or.cond218.a, label %.preheader.i, label %drwav_read_pcm_frames_s16__pcm.exit

.preheader.i:                                     ; preds = %bb.h
  %i.af = udiv i32 4096, %.0.i.i
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = zext nneg i32 %i.ac to i64              ; 4 uses
  %i.ai = icmp samesign ugt i32 %i.ac, 8
  %i.aj = shl nuw nsw i32 %i.ac, 3
  %i.ak = sub nuw nsw i32 64, %i.aj               ; 2 uses
  %xtraiter206 = and i64 %i.ah, 3                 ; 3 uses
  %i.al = add nsw i32 %i.ac, -1
  %i.am = icmp ult i32 %i.al, 3
  %unroll_iter211 = and i64 %i.ah, 12
  %lcmp.mod208.not = icmp eq i64 %xtraiter206, 0
  %lcmp.mod210 = icmp ne i64 %xtraiter206, 0
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.i, %.preheader.i
  %.03761.i = phi i64 [ 0, %.preheader.i ], [ %i.fq, %.loopexit.i ] ; 3 uses
  %.03860.i = phi ptr [ %2, %.preheader.i ], [ %i.fo, %.loopexit.i ] ; 11 uses
  %.04059.i = phi i64 [ %1, %.preheader.i ], [ %i.fp, %.loopexit.i ] ; 2 uses
  %.040..i = call i64 @llvm.umin.i64(i64 %.04059.i, i64 %i.ag)
  %i.an = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.040..i, ptr noundef nonnull %i.d) ; 5 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %drwav_read_pcm_frames_s16__pcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load i16, ptr %i.z, align 8
  %i.aq = zext i16 %i.ap to i64                   ; 2 uses
  %i.ar = mul i64 %i.an, %i.aq                    ; 25 uses
  %i.as = mul i64 %i.ar, %i.ah
  %i.at = icmp ugt i64 %i.as, 4096
  br i1 %i.at, label %drwav_read_pcm_frames_s16__pcm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  switch i32 %i.ac, label %bb.o [
    i32 1, label %bb.l
    i32 2, label %.preheader51.i.i
    i32 3, label %bb.m
    i32 4, label %bb.n
  ]

.preheader51.i.i:                                 ; preds = %bb.k
  %.not.i49.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i49.i, label %.loopexit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader51.i.i
  %i.au = shl i64 %i.an, 1
  %i.av = mul i64 %i.au, %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.03860.i, ptr nonnull align 16 %i.d, i64 %i.av, i1 false)
  br label %.loopexit.i

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.l
  %min.iters.check150 = icmp ult i64 %i.ar, 4
  br i1 %min.iters.check150, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check151 = icmp ult i64 %i.ar, 16
  br i1 %min.iters.check151, label %vec.epilog.ph, label %vector.ph152

vector.ph152:                                     ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %i.ar, 12
  %n.vec153 = and i64 %i.ar, -16                  ; 4 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.ph152, %vector.body154
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next158, %vector.body154 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 %index155 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %wide.load156 = load <8 x i8>, ptr %i.ax, align 16
  %wide.load157 = load <8 x i8>, ptr %i.ay, align 8
  %i.az = zext <8 x i8> %wide.load156 to <8 x i16>
  %i.ba = zext <8 x i8> %wide.load157 to <8 x i16>
  %i.bb = shl nuw <8 x i16> %i.az, splat (i16 8)
  %i.bc = shl nuw <8 x i16> %i.ba, splat (i16 8)
  %i.bd = xor <8 x i16> %i.bb, splat (i16 -32768)
  %i.be = xor <8 x i16> %i.bc, splat (i16 -32768)
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index155 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <8 x i16> %i.bd, ptr %i.bf, align 2
  store <8 x i16> %i.be, ptr %i.bg, align 2
  %index.next158 = add nuw i64 %index155, 16      ; 2 uses
  %i.bh = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.bh, label %middle.block159, label %vector.body154, !llvm.loop !862

middle.block159:                                  ; preds = %vector.body154
  %cmp.n160 = icmp eq i64 %i.ar, %n.vec153
  br i1 %cmp.n160, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block159
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec153, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec161 = and i64 %i.ar, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index162 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next164, %vec.epilog.vector.body ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 %index162
  %wide.load163 = load <4 x i8>, ptr %i.bi, align 4
  %i.bj = zext <4 x i8> %wide.load163 to <4 x i16>
  %i.bk = shl nuw <4 x i16> %i.bj, splat (i16 8)
  %i.bl = xor <4 x i16> %i.bk, splat (i16 -32768)
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index162
  store <4 x i16> %i.bl, ptr %i.bm, align 2
  %index.next164 = add nuw i64 %index162, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next164, %n.vec161
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !863

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n165 = icmp eq i64 %i.ar, %n.vec161
  br i1 %cmp.n165, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec153, %vec.epilog.iter.check ], [ %n.vec161, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.bu, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 %.09.i.i.i
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i16
  %i.br = shl nuw i16 %i.bq, 8
  %i.bs = xor i16 %i.br, -32768
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.09.i.i.i
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = add nuw nsw i64 %.09.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bu, %i.ar
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !864

bb.m:                                             ; preds = %bb.k
  %.not.i44.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i44.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader

.lr.ph.i45.i.i.preheader:                         ; preds = %bb.m
  %min.iters.check168 = icmp ult i64 %i.ar, 8
  br i1 %min.iters.check168, label %.lr.ph.i45.i.i.preheader190, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph.i45.i.i.preheader
  %n.vec170 = and i64 %i.ar, -8                   ; 3 uses
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next173, %vector.body171 ] ; 10 uses
  %i.bv = mul i64 %index172, 3
  %i.bw = mul i64 %index172, 3
  %i.bx = mul i64 %index172, 3
  %i.by = mul i64 %index172, 3
  %i.bz = mul i64 %index172, 3
  %i.ca = mul i64 %index172, 3
  %i.cb = mul i64 %index172, 3
  %i.cc = mul i64 %index172, 3
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.bv
  %i.ce = getelementptr i8, ptr %i.d, i64 %i.bw
  %i.cf = getelementptr i8, ptr %i.d, i64 %i.bx
  %i.cg = getelementptr i8, ptr %i.d, i64 %i.by
  %i.ch = getelementptr i8, ptr %i.d, i64 %i.bz
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.ca
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.cb
  %i.ck = getelementptr i8, ptr %i.d, i64 %i.cc
  %i.cl = getelementptr i8, ptr %i.cd, i64 1
  %i.cm = getelementptr i8, ptr %i.ce, i64 4
  %i.cn = getelementptr i8, ptr %i.cf, i64 7
  %i.co = getelementptr i8, ptr %i.cg, i64 10
  %i.cp = getelementptr i8, ptr %i.ch, i64 13
  %i.cq = getelementptr i8, ptr %i.ci, i64 16
  %i.cr = getelementptr i8, ptr %i.cj, i64 19
  %i.cs = getelementptr i8, ptr %i.ck, i64 22
  %i.ct = load i16, ptr %i.cl, align 1
  %i.cu = load i16, ptr %i.cm, align 4
  %i.cv = load i16, ptr %i.cn, align 1
  %i.cw = load i16, ptr %i.co, align 2
  %i.cx = load i16, ptr %i.cp, align 1
  %i.cy = load i16, ptr %i.cq, align 8
  %i.cz = load i16, ptr %i.cr, align 1
  %i.da = load i16, ptr %i.cs, align 2
  %i.db = insertelement <8 x i16> poison, i16 %i.ct, i64 0
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 1
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 2
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 3
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 4
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 5
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 6
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 7
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index172
  store <8 x i16> %i.di, ptr %i.dj, align 2
  %index.next173 = add nuw i64 %index172, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next173, %n.vec170
  br i1 %i.dk, label %middle.block174, label %vector.body171, !llvm.loop !865

middle.block174:                                  ; preds = %vector.body171
  %cmp.n175 = icmp eq i64 %i.ar, %n.vec170
  br i1 %cmp.n175, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader190

.lr.ph.i45.i.i.preheader190:                      ; preds = %.lr.ph.i45.i.i.preheader, %middle.block174
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i45.i.i.preheader ], [ %n.vec170, %middle.block174 ]
  br label %.lr.ph.i45.i.i

.lr.ph.i45.i.i:                                   ; preds = %.lr.ph.i45.i.i.preheader190, %.lr.ph.i45.i.i
  %.012.i.i.i = phi i64 [ %i.dq, %.lr.ph.i45.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i45.i.i.preheader190 ] ; 3 uses
  %i.dl = mul i64 %.012.i.i.i, 3
  %i.dm = getelementptr i8, ptr %i.d, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 1
  %i.do = load i16, ptr %i.dn, align 1
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.012.i.i.i
  store i16 %i.do, ptr %i.dp, align 2
  %i.dq = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i46.i.i = icmp eq i64 %i.dq, %i.ar
  br i1 %exitcond.not.i46.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i, !llvm.loop !866

bb.n:                                             ; preds = %bb.k
  %.not.i47.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i47.i.i, label %.loopexit.i, label %.lr.ph.i48.i.i.preheader

.lr.ph.i48.i.i.preheader:                         ; preds = %bb.n
  %min.iters.check178 = icmp ult i64 %i.ar, 8
  br i1 %min.iters.check178, label %.lr.ph.i48.i.i.preheader192, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph.i48.i.i.preheader
  %n.vec180 = and i64 %i.ar, -8                   ; 3 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next185, %vector.body181 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index182 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load183 = load <4 x i32>, ptr %i.dr, align 16
  %wide.load184 = load <4 x i32>, ptr %i.ds, align 16
  %i.dt = lshr <4 x i32> %wide.load183, splat (i32 16)
  %i.du = lshr <4 x i32> %wide.load184, splat (i32 16)
  %i.dv = trunc nuw <4 x i32> %i.dt to <4 x i16>
  %i.dw = trunc nuw <4 x i32> %i.du to <4 x i16>
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %index182 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store <4 x i16> %i.dv, ptr %i.dx, align 2
  store <4 x i16> %i.dw, ptr %i.dy, align 2
  %index.next185 = add nuw i64 %index182, 8       ; 2 uses
  %i.dz = icmp eq i64 %index.next185, %n.vec180
  br i1 %i.dz, label %middle.block186, label %vector.body181, !llvm.loop !867

middle.block186:                                  ; preds = %vector.body181
  %cmp.n187 = icmp eq i64 %i.ar, %n.vec180
  br i1 %cmp.n187, label %.loopexit.i, label %.lr.ph.i48.i.i.preheader192

.lr.ph.i48.i.i.preheader192:                      ; preds = %.lr.ph.i48.i.i.preheader, %middle.block186
  %.08.i.i.i.ph = phi i64 [ 0, %.lr.ph.i48.i.i.preheader ], [ %n.vec180, %middle.block186 ]
  br label %.lr.ph.i48.i.i

.lr.ph.i48.i.i:                                   ; preds = %.lr.ph.i48.i.i.preheader192, %.lr.ph.i48.i.i
  %.08.i.i.i = phi i64 [ %i.ef, %.lr.ph.i48.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i48.i.i.preheader192 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.08.i.i.i
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = lshr i32 %i.eb, 16
  %i.ed = trunc nuw i32 %i.ec to i16
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %.08.i.i.i
  store i16 %i.ed, ptr %i.ee, align 2
  %i.ef = add nuw nsw i64 %.08.i.i.i, 1           ; 2 uses
  %exitcond.not.i49.i.i = icmp eq i64 %i.ef, %i.ar
  br i1 %exitcond.not.i49.i.i, label %.loopexit.i, label %.lr.ph.i48.i.i, !llvm.loop !868

bb.o:                                             ; preds = %bb.k
  br i1 %i.ai, label %bb.p, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.o
  %.not64.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not64.i.i, label %.loopexit.i, label %.lr.ph63.i.i

bb.p:                                             ; preds = %bb.o
  %i.eg = shl i64 %i.ar, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %.03860.i, i8 0, i64 %i.eg, i1 false)
  br label %.loopexit.i

.lr.ph63.i.i:                                     ; preds = %.preheader.i.i, %.epilog-lcssa
  %.162.i.i = phi i64 [ %i.fn, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.14161.i.i = phi ptr [ %i.fm, %.epilog-lcssa ], [ %.03860.i, %.preheader.i.i ] ; 2 uses
  %.04260.i.i = phi ptr [ %i.fj, %.epilog-lcssa ], [ %i.d, %.preheader.i.i ] ; 6 uses
  br i1 %i.am, label %.epil.preheader, label %.lr.ph63.i.i.new

.lr.ph63.i.i.new:                                 ; preds = %.lr.ph63.i.i, %.lr.ph63.i.i.new
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ] ; 5 uses
  %.03758.i.i = phi i32 [ %10, %.lr.ph63.i.i.new ], [ %i.ak, %.lr.ph63.i.i ] ; 5 uses
  %.03857.i.i = phi i64 [ %i.fd, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ]
  %niter212 = phi i64 [ %niter212.next.3, %.lr.ph63.i.i.new ], [ 0, %.lr.ph63.i.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.a
  %i.ei = load i8, ptr %i.eh, align 1
  %3 = zext i8 %i.ei to i64
  %i.ej = zext nneg i32 %.03758.i.i to i64
  %i.ek = shl i64 %3, %i.ej
  %i.el = or i64 %i.ek, %.03857.i.i
  %4 = add i32 %.03758.i.i, 8
  %i.em = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.a
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.eo = load i8, ptr %i.en, align 1
  %5 = zext i8 %i.eo to i64
  %i.ep = zext nneg i32 %4 to i64
  %i.eq = shl i64 %5, %i.ep
  %i.er = or i64 %i.eq, %i.el
  %6 = add i32 %.03758.i.i, 16
  %i.es = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.a
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.eu = load i8, ptr %i.et, align 1
  %7 = zext i8 %i.eu to i64
  %i.ev = zext nneg i32 %6 to i64
  %i.ew = shl i64 %7, %i.ev
  %i.ex = or i64 %i.ew, %i.er
  %8 = add i32 %.03758.i.i, 24
  %i.ey = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.a
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 3
  %i.fa = load i8, ptr %i.ez, align 1
  %9 = zext i8 %i.fa to i64
  %i.fb = zext nneg i32 %8 to i64
  %i.fc = shl i64 %9, %i.fb
  %i.fd = or i64 %i.fc, %i.ex                     ; 3 uses
  %10 = add i32 %.03758.i.i, 32                   ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.a, 4 ; 2 uses
  %niter212.next.3 = add i64 %niter212, 4         ; 2 uses
  %niter212.ncmp.3 = icmp eq i64 %niter212.next.3, %unroll_iter211
  br i1 %niter212.ncmp.3, label %.unr-lcssa, label %.lr.ph63.i.i.new

.unr-lcssa:                                       ; preds = %.lr.ph63.i.i.new
  br i1 %lcmp.mod208.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph63.i.i
  %indvars.iv.i.i.epil.init.a = phi i64 [ 0, %.lr.ph63.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.03758.i.i.epil.init = phi i32 [ %i.ak, %.lr.ph63.i.i ], [ %10, %.unr-lcssa ]
  %.03857.i.i.epil.init = phi i64 [ 0, %.lr.ph63.i.i ], [ %i.fd, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod210)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.i.i.epil.a = phi i64 [ %indvars.iv.i.i.epil.init.a, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.q ] ; 2 uses
  %.03758.i.i.epil = phi i32 [ %.03758.i.i.epil.init, %.epil.preheader ], [ %12, %bb.q ] ; 2 uses
  %.03857.i.i.epil = phi i64 [ %.03857.i.i.epil.init, %.epil.preheader ], [ %i.fi, %bb.q ]
  %epil.iter207 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter207.next, %bb.q ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %indvars.iv.i.i.epil.a
  %i.ff = load i8, ptr %i.fe, align 1
  %11 = zext i8 %i.ff to i64
  %i.fg = zext nneg i32 %.03758.i.i.epil to i64
  %i.fh = shl i64 %11, %i.fg
  %i.fi = or i64 %i.fh, %.03857.i.i.epil          ; 2 uses
  %12 = add i32 %.03758.i.i.epil, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.a, 1
  %epil.iter207.next = add i64 %epil.iter207, 1   ; 2 uses
  %epil.iter207.cmp.not = icmp eq i64 %epil.iter207.next, %xtraiter206
  br i1 %epil.iter207.cmp.not, label %.epilog-lcssa, label %bb.q, !llvm.loop !869

.epilog-lcssa:                                    ; preds = %bb.q, %.unr-lcssa
  %.lcssa = phi i64 [ %i.fd, %.unr-lcssa ], [ %i.fi, %bb.q ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.04260.i.i, i64 %i.ah
  %i.fk = lshr i64 %.lcssa, 48
  %i.fl = trunc nuw i64 %i.fk to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %.14161.i.i, i64 2
  store i16 %i.fl, ptr %.14161.i.i, align 2
  %i.fn = add nuw i64 %.162.i.i, 1                ; 2 uses
  %exitcond72.not.i.i = icmp eq i64 %i.fn, %i.ar
  br i1 %exitcond72.not.i.i, label %.loopexit.i, label %.lr.ph63.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i48.i.i, %.lr.ph.i45.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block186, %middle.block174, %middle.block159, %vec.epilog.middle.block, %bb.p, %.preheader.i.i, %bb.n, %bb.m, %bb.l, %.lr.ph.i.preheader.i, %.preheader51.i.i
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %.03860.i, i64 %i.ar
  %i.fp = sub i64 %.04059.i, %i.an                ; 2 uses
  %i.fq = add i64 %i.an, %.03761.i                ; 2 uses
  %.not48.i = icmp eq i64 %i.fp, 0
  br i1 %.not48.i, label %drwav_read_pcm_frames_s16__pcm.exit, label %bb.i

drwav_read_pcm_frames_s16__pcm.exit:              ; preds = %bb.i, %bb.j, %.loopexit.i, %.split.i, %drwav_get_bytes_per_pcm_frame.exit.i, %bb.h
  %.042.i = phi i64 [ %i.n, %.split.i ], [ 0, %bb.h ], [ 0, %drwav_get_bytes_per_pcm_frame.exit.i ], [ %.03761.i, %bb.i ], [ %i.fq, %.loopexit.i ], [ %.03761.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #61
  br label %bb.ax

bb.r:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = zext i16 %i.fs to i32                   ; 2 uses
  %i.fu = and i32 %i.ft, 7
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.fx = load i16, ptr %i.fw, align 2
  %i.fy = zext i16 %i.fx to i32
  %i.fz = mul nuw nsw i32 %i.fy, %i.ft
  %i.ga = lshr exact i32 %i.fz, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i40

bb.t:                                             ; preds = %bb.r
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gc = load i16, ptr %i.gb, align 4
  %i.gd = zext i16 %i.gc to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i40

drwav_get_bytes_per_pcm_frame.exit.i40:           ; preds = %bb.s, %bb.t
  %.0.i.i38 = phi i32 [ %i.ga, %bb.s ], [ %i.gd, %bb.t ] ; 5 uses
  %.old.i41 = icmp eq i32 %.0.i.i38, 0
  br i1 %.old.i41, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.u

bb.u:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i40
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.gf = load i16, ptr %i.ge, align 8
  %i.gg = zext i16 %i.gf to i32                   ; 3 uses
  %i.gh = udiv i32 %.0.i.i38, %i.gg
  %i.gi = urem i32 %.0.i.i38, %i.gg
  %.fr.i = freeze i32 %i.gh                       ; 2 uses
  %i.gj = icmp samesign uge i32 %.0.i.i38, %i.gg
  %.not.i42 = icmp eq i32 %i.gi, 0
  %or.cond219.a = and i1 %i.gj, %.not.i42
  br i1 %or.cond219.a, label %.preheader.i43, label %drwav_read_pcm_frames_s16__ieee.exit

.preheader.i43:                                   ; preds = %bb.u
  %i.gk = udiv i32 4096, %.0.i.i38
  %i.gl = zext nneg i32 %i.gk to i64              ; 3 uses
  %i.gm = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us54.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i43, %.loopexit.us.i
  %.03353.us.i = phi i64 [ %i.hu, %.loopexit.us.i ], [ 0, %.preheader.i43 ] ; 3 uses
  %.03452.us.i = phi ptr [ %i.hs, %.loopexit.us.i ], [ %2, %.preheader.i43 ] ; 3 uses
  %.03651.us.i = phi i64 [ %i.ht, %.loopexit.us.i ], [ %1, %.preheader.i43 ] ; 2 uses
  %.036..us.i = call i64 @llvm.umin.i64(i64 %.03651.us.i, i64 %i.gl)
  %i.gn = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.036..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.v

bb.v:                                             ; preds = %.preheader.split.us.i
  %i.gp = load i16, ptr %i.ge, align 8
  %i.gq = zext i16 %i.gp to i64
  %i.gr = mul i64 %i.gn, %i.gq                    ; 7 uses
  %i.gs = mul i64 %i.gr, %i.gm
  %i.gt = icmp ugt i64 %i.gs, 4096
  br i1 %i.gt, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i.i.us.i = icmp eq i64 %i.gr, 0
  br i1 %.not.i.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader

.lr.ph.i.i.us.i.preheader:                        ; preds = %bb.w
  %min.iters.check = icmp ult i64 %i.gr, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.us.i.preheader194, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.us.i.preheader
  %n.vec = and i64 %i.gr, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index
  %wide.load = load <4 x float>, ptr %i.gu, align 16 ; 3 uses
  %i.gv = fcmp olt <4 x float> %wide.load, splat (float -1.000000e+00)
  %i.gw = fcmp ogt <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.gx = select <4 x i1> %i.gw, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load
  %i.gy = fadd <4 x float> %i.gx, splat (float 1.000000e+00)
  %i.gz = fmul <4 x float> %i.gy, splat (float 3.276750e+04)
  %i.ha = fptosi <4 x float> %i.gz to <4 x i32>
  %i.hb = trunc <4 x i32> %i.ha to <4 x i16>
  %i.hc = xor <4 x i16> %i.hb, splat (i16 -32768)
  %predphi = select <4 x i1> %i.gv, <4 x i16> splat (i16 -32768), <4 x i16> %i.hc
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %index
  store <4 x i16> %predphi, ptr %i.hd, align 2
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.he = icmp eq i64 %index.next, %n.vec
  br i1 %i.he, label %middle.block, label %vector.body, !llvm.loop !870

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec
  br i1 %cmp.n, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader194

.lr.ph.i.i.us.i.preheader194:                     ; preds = %.lr.ph.i.i.us.i.preheader, %middle.block
  %.014.i.i.us.i.ph = phi i64 [ 0, %.lr.ph.i.i.us.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.i.i.us.i.preheader194, %bb.y
  %.014.i.i.us.i = phi i64 [ %i.hr, %bb.y ], [ %.014.i.i.us.i.ph, %.lr.ph.i.i.us.i.preheader194 ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.014.i.i.us.i
  %i.hg = load float, ptr %i.hf, align 4          ; 3 uses
  %i.hh = fcmp olt float %i.hg, -1.000000e+00
  br i1 %i.hh, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.us.i
  %i.hi = fcmp ogt float %i.hg, 1.000000e+00
  %i.hj = select i1 %i.hi, float 1.000000e+00, float %i.hg
  %i.hk = fadd float %i.hj, 1.000000e+00
  %i.hl = fmul float %i.hk, 3.276750e+04
  %i.hm = fptosi float %i.hl to i32
  %i.hn = trunc i32 %i.hm to i16
  %i.ho = xor i16 %i.hn, -32768
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i.us.i
  %i.hp = phi i16 [ %i.ho, %bb.x ], [ -32768, %.lr.ph.i.i.us.i ]
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %.014.i.i.us.i
  store i16 %i.hp, ptr %i.hq, align 2
  %i.hr = add nuw nsw i64 %.014.i.i.us.i, 1       ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.hr, %i.gr
  br i1 %exitcond.not.i.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i, !llvm.loop !871

.loopexit.us.i:                                   ; preds = %bb.y, %middle.block, %bb.w
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %.03452.us.i, i64 %i.gr
  %i.ht = sub i64 %.03651.us.i, %i.gn             ; 2 uses
  %i.hu = add i64 %i.gn, %.03353.us.i             ; 2 uses
  %.not44.us.i = icmp eq i64 %i.ht, 0
  br i1 %.not44.us.i, label %drwav_read_pcm_frames_s16__ieee.exit, label %.preheader.split.us.i

.preheader.split.us54.i:                          ; preds = %.preheader.i43, %.loopexit50.us.i
  %.03353.us55.i = phi i64 [ %i.ir, %.loopexit50.us.i ], [ 0, %.preheader.i43 ] ; 3 uses
  %.03452.us56.i = phi ptr [ %i.ip, %.loopexit50.us.i ], [ %2, %.preheader.i43 ] ; 2 uses
  %.03651.us57.i = phi i64 [ %i.iq, %.loopexit50.us.i ], [ %1, %.preheader.i43 ] ; 2 uses
  %.036..us58.i = call i64 @llvm.umin.i64(i64 %.03651.us57.i, i64 %i.gl)
  %i.hv = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.036..us58.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.z

bb.z:                                             ; preds = %.preheader.split.us54.i
  %i.hx = load i16, ptr %i.ge, align 8
  %i.hy = zext i16 %i.hx to i64
  %i.hz = mul i64 %i.hv, %i.hy                    ; 4 uses
  %i.ia = mul i64 %i.hz, %i.gm
  %i.ib = icmp ugt i64 %i.ia, 4096
  br i1 %i.ib, label %drwav_read_pcm_frames_s16__ieee.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not.i9.i.us.i = icmp eq i64 %i.hz, 0
  br i1 %.not.i9.i.us.i, label %.loopexit50.us.i, label %.lr.ph.i10.i.us.i

.lr.ph.i10.i.us.i:                                ; preds = %bb.aa, %bb.ac
  %.014.i11.i.us.i = phi i64 [ %i.io, %bb.ac ], [ 0, %bb.aa ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.014.i11.i.us.i
  %i.id = load double, ptr %i.ic, align 8         ; 3 uses
  %i.ie = fcmp olt double %i.id, -1.000000e+00
  br i1 %i.ie, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i10.i.us.i
  %i.if = fcmp ogt double %i.id, 1.000000e+00
  %i.ig = select i1 %i.if, double 1.000000e+00, double %i.id
  %i.ih = fadd double %i.ig, 1.000000e+00
  %i.ii = fmul double %i.ih, 3.276750e+04
  %i.ij = fptosi double %i.ii to i32
  %i.ik = trunc i32 %i.ij to i16
end_hunk_1
begin_hunk_2_@drwav_alaw_to_s16:bb.a
  %i.z = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.v
  store i16 %i.aa, ptr %i.ab, align 2
  %i.ac = add nuw i64 %.06, 4                     ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.06.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.06.epil = phi i64 [ %i.aj, %.lr.ph.epil ], [ %.06.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.06.epil
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @g_drwavAlawTable, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.06.epil
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = add nuw i64 %.06.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !909

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @drwav_mulaw_to_s16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.a = icmp ult i64 %2, 4
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.06
  %i.c = load i8, ptr %i.b, align 1
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.06
  store i16 %i.f, ptr %i.g, align 2
  %i.h = or disjoint i64 %.06, 1                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.h
  store i16 %i.m, ptr %i.n, align 2
  %i.o = or disjoint i64 %.06, 2                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o
  store i16 %i.t, ptr %i.u, align 2
  %i.v = or disjoint i64 %.06, 3                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.v
  store i16 %i.aa, ptr %i.ab, align 2
  %i.ac = add nuw i64 %.06, 4                     ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.06.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.06.epil = phi i64 [ %i.aj, %.lr.ph.epil ], [ %.06.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.06.epil
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.06.epil
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = add nuw i64 %.06.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !910

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @drwav_read_pcm_frames_f32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 9 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %i.c = alloca [4096 x i8], align 16             ; 10 uses
  %i.d = alloca [2048 x i16], align 16            ; 5 uses
  %i.e = alloca [4096 x i8], align 16             ; 16 uses
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq i64 %1, 0
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %bb.av

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.k = load i16, ptr %i.j, align 4
  switch i16 %i.k, label %bb.av [
    i16 1, label %bb.e
    i16 2, label %bb.s
    i16 17, label %bb.s
    i16 3, label %bb.v
    i16 6, label %bb.af
    i16 7, label %bb.an
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %i.o = and i32 %i.n, 7
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.r to i32
  %i.t = mul nuw nsw i32 %i.s, %i.n
  %i.u = lshr exact i32 %i.t, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load i16, ptr %i.v, align 4
  %i.x = zext i16 %i.w to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i

drwav_get_bytes_per_pcm_frame.exit.i:             ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.u, %bb.f ], [ %i.x, %bb.g ] ; 5 uses
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %drwav_read_pcm_frames_f32__pcm.exit, label %bb.h

bb.h:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = zext i16 %i.z to i32                    ; 3 uses
  %i.ab = udiv i32 %.0.i.i, %i.aa                 ; 5 uses
  %i.ac = urem i32 %.0.i.i, %i.aa
  %i.ad = icmp samesign uge i32 %.0.i.i, %i.aa
  %.not.i = icmp eq i32 %i.ac, 0
  %or.cond278.a = and i1 %i.ad, %.not.i
  br i1 %or.cond278.a, label %.preheader.i, label %drwav_read_pcm_frames_f32__pcm.exit

.preheader.i:                                     ; preds = %bb.h
  %i.ae = udiv i32 4096, %.0.i.i
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = zext nneg i32 %i.ab to i64              ; 4 uses
  %i.ah = icmp samesign ugt i32 %i.ab, 8
  %i.ai = shl nuw nsw i32 %i.ab, 3
  %i.aj = sub nuw nsw i32 64, %i.ai               ; 2 uses
  %xtraiter264 = and i64 %i.ag, 3                 ; 3 uses
  %i.ak = add nsw i32 %i.ab, -1
  %i.al = icmp ult i32 %i.ak, 3
  %unroll_iter269 = and i64 %i.ag, 12
  %lcmp.mod266.not = icmp eq i64 %xtraiter264, 0
  %lcmp.mod268 = icmp ne i64 %xtraiter264, 0
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.i, %.preheader.i
  %.03053.i = phi i64 [ 0, %.preheader.i ], [ %i.gm, %.loopexit.i ] ; 3 uses
  %.03152.i = phi ptr [ %2, %.preheader.i ], [ %i.gk, %.loopexit.i ] ; 15 uses
  %.03351.i = phi i64 [ %1, %.preheader.i ], [ %i.gl, %.loopexit.i ] ; 2 uses
  %.033..i = call i64 @llvm.umin.i64(i64 %.03351.i, i64 %i.af)
  %i.am = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.033..i, ptr noundef nonnull %i.e) ; 4 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %drwav_read_pcm_frames_f32__pcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load i16, ptr %i.y, align 8
  %i.ap = zext i16 %i.ao to i64
  %i.aq = mul i64 %i.am, %i.ap                    ; 25 uses
  %i.ar = mul i64 %i.aq, %i.ag
  %i.as = icmp ugt i64 %i.ar, 4096
  br i1 %i.as, label %drwav_read_pcm_frames_f32__pcm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  switch i32 %i.ab, label %bb.p [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %.not50.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not50.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.l
  %min.iters.check190 = icmp ult i64 %i.aq, 8
  br i1 %min.iters.check190, label %.lr.ph.i.i.i.preheader242, label %vector.ph191

vector.ph191:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec192 = and i64 %i.aq, -8                   ; 4 uses
  %i.at = shl i64 %n.vec192, 2
  %i.au = getelementptr i8, ptr %.03152.i, i64 %i.at
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next198, %vector.body193 ] ; 3 uses
  %i.av = shl i64 %index194, 2
  %next.gep195 = getelementptr i8, ptr %.03152.i, i64 %i.av ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 %index194 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %wide.load196 = load <4 x i8>, ptr %i.aw, align 8
  %wide.load197 = load <4 x i8>, ptr %i.ax, align 4
  %i.ay = uitofp <4 x i8> %wide.load196 to <4 x float>
  %i.az = uitofp <4 x i8> %wide.load197 to <4 x float>
  %i.ba = fmul nnan <4 x float> %i.ay, splat (float f0x3C008081)
  %i.bb = fmul nnan <4 x float> %i.az, splat (float f0x3C008081)
  %i.bc = fadd <4 x float> %i.ba, splat (float -1.000000e+00)
  %i.bd = fadd <4 x float> %i.bb, splat (float -1.000000e+00)
  %i.be = getelementptr i8, ptr %next.gep195, i64 16
  store <4 x float> %i.bc, ptr %next.gep195, align 4
  store <4 x float> %i.bd, ptr %i.be, align 4
  %index.next198 = add nuw i64 %index194, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next198, %n.vec192
  br i1 %i.bf, label %middle.block199, label %vector.body193, !llvm.loop !911

middle.block199:                                  ; preds = %vector.body193
  %cmp.n200 = icmp eq i64 %i.aq, %n.vec192
  br i1 %cmp.n200, label %.loopexit.i, label %.lr.ph.i.i.i.preheader242

.lr.ph.i.i.i.preheader242:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block199
  %.015.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i.i.i.preheader ], [ %i.au, %middle.block199 ]
  %.01114.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec192, %middle.block199 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader242, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i.preheader242 ] ; 2 uses
  %.01114.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i ], [ %.01114.i.i.i.ph, %.lr.ph.i.i.i.preheader242 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01114.i.i.i
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = uitofp i8 %i.bh to float
  %i.bj = fmul nnan float %i.bi, f0x3C008081
  %i.bk = fadd float %i.bj, -1.000000e+00
  %i.bl = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  store float %i.bk, ptr %.015.i.i.i, align 4
  %i.bm = add nuw nsw i64 %.01114.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bm, %i.aq
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !912

bb.m:                                             ; preds = %bb.k
  %.not49.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not49.i.i, label %.loopexit.i, label %.lr.ph.i40.i.i.preheader

.lr.ph.i40.i.i.preheader:                         ; preds = %bb.m
  %min.iters.check204 = icmp ult i64 %i.aq, 8
  br i1 %min.iters.check204, label %.lr.ph.i40.i.i.preheader244, label %vector.ph205

vector.ph205:                                     ; preds = %.lr.ph.i40.i.i.preheader
  %n.vec206 = and i64 %i.aq, -8                   ; 4 uses
  %i.bn = shl i64 %n.vec206, 2
  %i.bo = getelementptr i8, ptr %.03152.i, i64 %i.bn
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next212, %vector.body207 ] ; 3 uses
  %i.bp = shl i64 %index208, 2
  %next.gep209 = getelementptr i8, ptr %.03152.i, i64 %i.bp ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index208 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %wide.load210 = load <4 x i16>, ptr %i.bq, align 16
  %wide.load211 = load <4 x i16>, ptr %i.br, align 8
  %i.bs = sitofp <4 x i16> %wide.load210 to <4 x float>
  %i.bt = sitofp <4 x i16> %wide.load211 to <4 x float>
  %i.bu = fmul nnan <4 x float> %i.bs, splat (float f0x38000000)
  %i.bv = fmul nnan <4 x float> %i.bt, splat (float f0x38000000)
  %i.bw = getelementptr i8, ptr %next.gep209, i64 16
  store <4 x float> %i.bu, ptr %next.gep209, align 4
  store <4 x float> %i.bv, ptr %i.bw, align 4
  %index.next212 = add nuw i64 %index208, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next212, %n.vec206
  br i1 %i.bx, label %middle.block213, label %vector.body207, !llvm.loop !913

middle.block213:                                  ; preds = %vector.body207
  %cmp.n214 = icmp eq i64 %i.aq, %n.vec206
  br i1 %cmp.n214, label %.loopexit.i, label %.lr.ph.i40.i.i.preheader244

.lr.ph.i40.i.i.preheader244:                      ; preds = %.lr.ph.i40.i.i.preheader, %middle.block213
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i40.i.i.preheader ], [ %n.vec206, %middle.block213 ]
  %.0811.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i40.i.i.preheader ], [ %i.bo, %middle.block213 ]
  br label %.lr.ph.i40.i.i

.lr.ph.i40.i.i:                                   ; preds = %.lr.ph.i40.i.i.preheader244, %.lr.ph.i40.i.i
  %.012.i.i.i = phi i64 [ %i.cd, %.lr.ph.i40.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i40.i.i.preheader244 ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i ], [ %.0811.i.i.i.ph, %.lr.ph.i40.i.i.preheader244 ] ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.012.i.i.i
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = sitofp i16 %i.bz to float
  %i.cb = fmul nnan float %i.ca, f0x38000000
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  store float %i.cb, ptr %.0811.i.i.i, align 4
  %i.cd = add nuw nsw i64 %.012.i.i.i, 1          ; 2 uses
  %exitcond.not.i41.i.i = icmp eq i64 %i.cd, %i.aq
  br i1 %exitcond.not.i41.i.i, label %.loopexit.i, label %.lr.ph.i40.i.i, !llvm.loop !914

bb.n:                                             ; preds = %bb.k
  %.not48.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not48.i.i, label %.loopexit.i, label %.lr.ph.i42.i.i.preheader

.lr.ph.i42.i.i.preheader:                         ; preds = %bb.n
  %min.iters.check218 = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check218, label %.lr.ph.i42.i.i.preheader246, label %vector.ph219

vector.ph219:                                     ; preds = %.lr.ph.i42.i.i.preheader
  %n.vec220 = and i64 %i.aq, -4                   ; 4 uses
  %i.ce = shl i64 %n.vec220, 2
  %i.cf = getelementptr i8, ptr %.03152.i, i64 %i.ce
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next224, %vector.body221 ] ; 6 uses
  %i.cg = shl i64 %index222, 2
  %next.gep223 = getelementptr i8, ptr %.03152.i, i64 %i.cg
  %i.ch = mul i64 %index222, 3
  %i.ci = mul i64 %index222, 3
  %i.cj = mul i64 %index222, 3
  %i.ck = mul i64 %index222, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ch ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ci ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 3
  %i.co = getelementptr i8, ptr %i.e, i64 %i.cj   ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 6
  %i.cq = getelementptr i8, ptr %i.e, i64 %i.ck   ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 9
  %i.cs = load i16, ptr %i.cl, align 4
  %i.ct = load i16, ptr %i.cn, align 1
  %i.cu = load i16, ptr %i.cp, align 2
  %i.cv = load i16, ptr %i.cr, align 1
  %i.cw = insertelement <4 x i16> poison, i16 %i.cs, i64 0
  %i.cx = insertelement <4 x i16> %i.cw, i16 %i.ct, i64 1
  %i.cy = insertelement <4 x i16> %i.cx, i16 %i.cu, i64 2
  %i.cz = insertelement <4 x i16> %i.cy, i16 %i.cv, i64 3
  %i.da = zext <4 x i16> %i.cz to <4 x i32>
  %i.db = shl nuw nsw <4 x i32> %i.da, splat (i32 8)
  %i.dc = getelementptr i8, ptr %i.cl, i64 2
  %i.dd = getelementptr i8, ptr %i.cm, i64 5
  %i.de = getelementptr i8, ptr %i.co, i64 8
  %i.df = getelementptr i8, ptr %i.cq, i64 11
  %i.dg = load i8, ptr %i.dc, align 2
  %i.dh = load i8, ptr %i.dd, align 1
  %i.di = load i8, ptr %i.de, align 4
  %i.dj = load i8, ptr %i.df, align 1
  %i.dk = insertelement <4 x i8> poison, i8 %i.dg, i64 0
  %i.dl = insertelement <4 x i8> %i.dk, i8 %i.dh, i64 1
  %i.dm = insertelement <4 x i8> %i.dl, i8 %i.di, i64 2
  %i.dn = insertelement <4 x i8> %i.dm, i8 %i.dj, i64 3
  %i.do = zext <4 x i8> %i.dn to <4 x i32>
  %i.dp = shl nuw <4 x i32> %i.do, splat (i32 24)
  %i.dq = or disjoint <4 x i32> %i.dp, %i.db
  %i.dr = ashr exact <4 x i32> %i.dq, splat (i32 8)
  %i.ds = sitofp <4 x i32> %i.dr to <4 x float>
  %i.dt = fmul nnan <4 x float> %i.ds, splat (float f0x34000000)
  store <4 x float> %i.dt, ptr %next.gep223, align 4
  %index.next224 = add nuw i64 %index222, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next224, %n.vec220
  br i1 %i.du, label %middle.block225, label %vector.body221, !llvm.loop !915

middle.block225:                                  ; preds = %vector.body221
  %cmp.n226 = icmp eq i64 %i.aq, %n.vec220
  br i1 %cmp.n226, label %.loopexit.i, label %.lr.ph.i42.i.i.preheader246

.lr.ph.i42.i.i.preheader246:                      ; preds = %.lr.ph.i42.i.i.preheader, %middle.block225
  %.020.i.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i42.i.i.preheader ], [ %i.cf, %middle.block225 ]
  %.01619.i.i.i.ph = phi i64 [ 0, %.lr.ph.i42.i.i.preheader ], [ %n.vec220, %middle.block225 ]
  br label %.lr.ph.i42.i.i

.lr.ph.i42.i.i:                                   ; preds = %.lr.ph.i42.i.i.preheader246, %.lr.ph.i42.i.i
  %.020.i.i.i = phi ptr [ %i.ei, %.lr.ph.i42.i.i ], [ %.020.i.i.i.ph, %.lr.ph.i42.i.i.preheader246 ] ; 2 uses
  %.01619.i.i.i = phi i64 [ %i.ej, %.lr.ph.i42.i.i ], [ %.01619.i.i.i.ph, %.lr.ph.i42.i.i.preheader246 ] ; 2 uses
  %i.dv = mul i64 %.01619.i.i.i, 3
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dv ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 1
  %i.dy = zext i16 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 8
  %i.ea = getelementptr i8, ptr %i.dw, i64 2
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = zext i8 %i.eb to i32
  %i.ed = shl nuw i32 %i.ec, 24
  %i.ee = or disjoint i32 %i.ed, %i.dz
  %i.ef = ashr exact i32 %i.ee, 8
  %i.eg = sitofp i32 %i.ef to float
  %i.eh = fmul nnan float %i.eg, f0x34000000
  %i.ei = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 4
  store float %i.eh, ptr %.020.i.i.i, align 4
  %i.ej = add nuw i64 %.01619.i.i.i, 1            ; 2 uses
  %exitcond.not.i43.i.i = icmp eq i64 %i.ej, %i.aq
  br i1 %exitcond.not.i43.i.i, label %.loopexit.i, label %.lr.ph.i42.i.i, !llvm.loop !916

bb.o:                                             ; preds = %bb.k
  %.not.i41.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i41.i, label %.loopexit.i, label %.lr.ph.i44.i.i.preheader

.lr.ph.i44.i.i.preheader:                         ; preds = %bb.o
  %min.iters.check230 = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check230, label %.lr.ph.i44.i.i.preheader248, label %vector.ph231

vector.ph231:                                     ; preds = %.lr.ph.i44.i.i.preheader
  %n.vec232 = and i64 %i.aq, -4                   ; 4 uses
  %i.ek = shl i64 %n.vec232, 2
  %i.el = getelementptr i8, ptr %.03152.i, i64 %i.ek
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next237, %vector.body233 ] ; 3 uses
  %i.em = shl i64 %index234, 2
  %next.gep235 = getelementptr i8, ptr %.03152.i, i64 %i.em
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index234
  %wide.load236 = load <4 x i32>, ptr %i.en, align 16
  %i.eo = sitofp <4 x i32> %wide.load236 to <4 x double>
  %i.ep = fmul nnan <4 x double> %i.eo, splat (double f0x3E00000000000000)
  %i.eq = fptrunc <4 x double> %i.ep to <4 x float>
  store <4 x float> %i.eq, ptr %next.gep235, align 4
  %index.next237 = add nuw i64 %index234, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next237, %n.vec232
  br i1 %i.er, label %middle.block238, label %vector.body233, !llvm.loop !917

middle.block238:                                  ; preds = %vector.body233
  %cmp.n239 = icmp eq i64 %i.aq, %n.vec232
  br i1 %cmp.n239, label %.loopexit.i, label %.lr.ph.i44.i.i.preheader248

.lr.ph.i44.i.i.preheader248:                      ; preds = %.lr.ph.i44.i.i.preheader, %middle.block238
  %.012.i45.i.i.ph = phi i64 [ 0, %.lr.ph.i44.i.i.preheader ], [ %n.vec232, %middle.block238 ]
  %.0811.i46.i.i.ph = phi ptr [ %.03152.i, %.lr.ph.i44.i.i.preheader ], [ %i.el, %middle.block238 ]
  br label %.lr.ph.i44.i.i

.lr.ph.i44.i.i:                                   ; preds = %.lr.ph.i44.i.i.preheader248, %.lr.ph.i44.i.i
  %.012.i45.i.i = phi i64 [ %i.ey, %.lr.ph.i44.i.i ], [ %.012.i45.i.i.ph, %.lr.ph.i44.i.i.preheader248 ] ; 2 uses
  %.0811.i46.i.i = phi ptr [ %i.ex, %.lr.ph.i44.i.i ], [ %.0811.i46.i.i.ph, %.lr.ph.i44.i.i.preheader248 ] ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.012.i45.i.i
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = sitofp i32 %i.et to double
  %i.ev = fmul nnan double %i.eu, f0x3E00000000000000
  %i.ew = fptrunc double %i.ev to float
  %i.ex = getelementptr inbounds nuw i8, ptr %.0811.i46.i.i, i64 4
  store float %i.ew, ptr %.0811.i46.i.i, align 4
  %i.ey = add nuw nsw i64 %.012.i45.i.i, 1        ; 2 uses
  %exitcond.not.i47.i.i = icmp eq i64 %i.ey, %i.aq
  br i1 %exitcond.not.i47.i.i, label %.loopexit.i, label %.lr.ph.i44.i.i, !llvm.loop !918

bb.p:                                             ; preds = %bb.k
  br i1 %i.ah, label %bb.q, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p
  %.not61.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not61.i.i, label %.loopexit.i, label %.lr.ph.i.i

bb.q:                                             ; preds = %bb.p
  %i.ez = shl i64 %i.aq, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.03152.i, i8 0, i64 %i.ez, i1 false)
  br label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.epilog-lcssa
  %.03660.i.i = phi i32 [ %i.gh, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.03759.i.i = phi ptr [ %i.gg, %.epilog-lcssa ], [ %.03152.i, %.preheader.i.i ] ; 2 uses
  %.03858.i.i = phi ptr [ %i.gc, %.epilog-lcssa ], [ %i.e, %.preheader.i.i ] ; 6 uses
  br i1 %i.al, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.new
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %.03456.i.i = phi i32 [ %10, %.lr.ph.i.i.new ], [ %i.aj, %.lr.ph.i.i ] ; 5 uses
  %.03555.i.i = phi i64 [ %i.fw, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %niter270 = phi i64 [ %niter270.next.3, %.lr.ph.i.i.new ], [ 0, %.lr.ph.i.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.a
  %i.fb = load i8, ptr %i.fa, align 1
  %3 = zext i8 %i.fb to i64
  %i.fc = zext nneg i32 %.03456.i.i to i64
  %i.fd = shl i64 %3, %i.fc
  %i.fe = or i64 %i.fd, %.03555.i.i
  %4 = add i32 %.03456.i.i, 8
  %i.ff = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.a
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fh = load i8, ptr %i.fg, align 1
  %5 = zext i8 %i.fh to i64
  %i.fi = zext nneg i32 %4 to i64
  %i.fj = shl i64 %5, %i.fi
  %i.fk = or i64 %i.fj, %i.fe
  %6 = add i32 %.03456.i.i, 16
  %i.fl = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.a
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.fn = load i8, ptr %i.fm, align 1
  %7 = zext i8 %i.fn to i64
  %i.fo = zext nneg i32 %6 to i64
  %i.fp = shl i64 %7, %i.fo
  %i.fq = or i64 %i.fp, %i.fk
  %8 = add i32 %.03456.i.i, 24
  %i.fr = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.a
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 3
  %i.ft = load i8, ptr %i.fs, align 1
  %9 = zext i8 %i.ft to i64
  %i.fu = zext nneg i32 %8 to i64
  %i.fv = shl i64 %9, %i.fu
  %i.fw = or i64 %i.fv, %i.fq                     ; 3 uses
  %10 = add i32 %.03456.i.i, 32                   ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.a, 4 ; 2 uses
  %niter270.next.3 = add i64 %niter270, 4         ; 2 uses
  %niter270.ncmp.3 = icmp eq i64 %niter270.next.3, %unroll_iter269
  br i1 %niter270.ncmp.3, label %.unr-lcssa, label %.lr.ph.i.i.new

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.new
  br i1 %lcmp.mod266.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init.a = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.03456.i.i.epil.init = phi i32 [ %i.aj, %.lr.ph.i.i ], [ %10, %.unr-lcssa ]
  %.03555.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.fw, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod268)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv.i.i.epil.a = phi i64 [ %indvars.iv.i.i.epil.init.a, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.r ] ; 2 uses
  %.03456.i.i.epil = phi i32 [ %.03456.i.i.epil.init, %.epil.preheader ], [ %12, %bb.r ] ; 2 uses
  %.03555.i.i.epil = phi i64 [ %.03555.i.i.epil.init, %.epil.preheader ], [ %i.gb, %bb.r ]
  %epil.iter265 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter265.next, %bb.r ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %indvars.iv.i.i.epil.a
  %i.fy = load i8, ptr %i.fx, align 1
  %11 = zext i8 %i.fy to i64
  %i.fz = zext nneg i32 %.03456.i.i.epil to i64
  %i.ga = shl i64 %11, %i.fz
  %i.gb = or i64 %i.ga, %.03555.i.i.epil          ; 2 uses
  %12 = add i32 %.03456.i.i.epil, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.a, 1
  %epil.iter265.next = add i64 %epil.iter265, 1   ; 2 uses
  %epil.iter265.cmp.not = icmp eq i64 %epil.iter265.next, %xtraiter264
  br i1 %epil.iter265.cmp.not, label %.epilog-lcssa, label %bb.r, !llvm.loop !919

.epilog-lcssa:                                    ; preds = %bb.r, %.unr-lcssa
  %.lcssa = phi i64 [ %i.fw, %.unr-lcssa ], [ %i.gb, %bb.r ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.03858.i.i, i64 %i.ag
  %i.gd = sitofp i64 %.lcssa to double
  %i.ge = fmul nnan double %i.gd, f0x3C00000000000000
  %i.gf = fptrunc double %i.ge to float
  %i.gg = getelementptr inbounds nuw i8, ptr %.03759.i.i, i64 4
  store float %i.gf, ptr %.03759.i.i, align 4
  %i.gh = add i32 %.03660.i.i, 1                  ; 2 uses
  %i.gi = zext i32 %i.gh to i64
  %i.gj = icmp ugt i64 %i.aq, %i.gi
  br i1 %i.gj, label %.lr.ph.i.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i44.i.i, %.lr.ph.i42.i.i, %.lr.ph.i40.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block238, %middle.block225, %middle.block213, %middle.block199, %bb.q, %.preheader.i.i, %bb.o, %bb.n, %bb.m, %bb.l
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.03152.i, i64 %i.aq
  %i.gl = sub i64 %.03351.i, %i.am                ; 2 uses
  %i.gm = add i64 %i.am, %.03053.i                ; 2 uses
  %.not40.i = icmp eq i64 %i.gl, 0
  br i1 %.not40.i, label %drwav_read_pcm_frames_f32__pcm.exit, label %bb.i

drwav_read_pcm_frames_f32__pcm.exit:              ; preds = %bb.i, %bb.j, %.loopexit.i, %drwav_get_bytes_per_pcm_frame.exit.i, %bb.h
  %.035.i = phi i64 [ 0, %bb.h ], [ 0, %drwav_get_bytes_per_pcm_frame.exit.i ], [ %.03053.i, %bb.i ], [ %i.gm, %.loopexit.i ], [ %.03053.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #61
  br label %bb.av

bb.s:                                             ; preds = %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #61
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %.pre.i = load i16, ptr %i.gn, align 8
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.i37, %bb.s
  %i.go = phi i16 [ %.pre.i, %bb.s ], [ %i.hn, %.loopexit.i37 ]
  %.01932.i = phi i64 [ 0, %bb.s ], [ %i.hq, %.loopexit.i37 ] ; 2 uses
  %.02031.i = phi ptr [ %2, %bb.s ], [ %i.ho, %.loopexit.i37 ] ; 4 uses
  %.02230.i = phi i64 [ %1, %bb.s ], [ %i.hp, %.loopexit.i37 ] ; 2 uses
  %i.gp = udiv i16 2048, %i.go
  %i.gq = zext nneg i16 %i.gp to i64
  %.022..i = call i64 @llvm.umin.i64(i64 %.02230.i, i64 %i.gq)
  %i.gr = call i64 @drwav_read_pcm_frames_s16(ptr noundef nonnull %0, i64 noundef %.022..i, ptr noundef nonnull %i.d) ; 5 uses
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %drwav_read_pcm_frames_f32__msadpcm_ima.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gt = load i16, ptr %i.gn, align 8            ; 2 uses
  %i.gu = zext i16 %i.gt to i64
  %i.gv = mul i64 %i.gr, %i.gu                    ; 5 uses
  %.not39.i = icmp eq i64 %i.gv, 0
  br i1 %.not39.i, label %.loopexit.i37, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.u
  %min.iters.check176 = icmp ult i64 %i.gv, 8
  br i1 %min.iters.check176, label %.lr.ph.i.i35.preheader250, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.i.i35.preheader
  %n.vec178 = and i64 %i.gv, -8                   ; 4 uses
  %i.gw = shl i64 %n.vec178, 2
  %i.gx = getelementptr i8, ptr %.02031.i, i64 %i.gw
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next184, %vector.body179 ] ; 3 uses
  %i.gy = shl i64 %index180, 2
  %next.gep181 = getelementptr i8, ptr %.02031.i, i64 %i.gy ; 2 uses
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index180 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %wide.load182 = load <4 x i16>, ptr %i.gz, align 16
  %wide.load183 = load <4 x i16>, ptr %i.ha, align 8
  %i.hb = sitofp <4 x i16> %wide.load182 to <4 x float>
  %i.hc = sitofp <4 x i16> %wide.load183 to <4 x float>
  %i.hd = fmul nnan <4 x float> %i.hb, splat (float f0x38000000)
  %i.he = fmul nnan <4 x float> %i.hc, splat (float f0x38000000)
  %i.hf = getelementptr i8, ptr %next.gep181, i64 16
  store <4 x float> %i.hd, ptr %next.gep181, align 4
  store <4 x float> %i.he, ptr %i.hf, align 4
  %index.next184 = add nuw i64 %index180, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.hg, label %middle.block185, label %vector.body179, !llvm.loop !920

middle.block185:                                  ; preds = %vector.body179
  %cmp.n186 = icmp eq i64 %i.gv, %n.vec178
  br i1 %cmp.n186, label %.loopexit.loopexit.i, label %.lr.ph.i.i35.preheader250

.lr.ph.i.i35.preheader250:                        ; preds = %.lr.ph.i.i35.preheader, %middle.block185
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i35.preheader ], [ %n.vec178, %middle.block185 ]
  %.0811.i.i.ph = phi ptr [ %.02031.i, %.lr.ph.i.i35.preheader ], [ %i.gx, %middle.block185 ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader250, %.lr.ph.i.i35
  %.012.i.i = phi i64 [ %i.hm, %.lr.ph.i.i35 ], [ %.012.i.i.ph, %.lr.ph.i.i35.preheader250 ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.hl, %.lr.ph.i.i35 ], [ %.0811.i.i.ph, %.lr.ph.i.i35.preheader250 ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.012.i.i
  %i.hi = load i16, ptr %i.hh, align 2
  %i.hj = sitofp i16 %i.hi to float
  %i.hk = fmul nnan float %i.hj, f0x38000000
  %i.hl = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  store float %i.hk, ptr %.0811.i.i, align 4
  %i.hm = add nuw nsw i64 %.012.i.i, 1            ; 2 uses
  %exitcond.not.i.i36 = icmp eq i64 %i.hm, %i.gv
  br i1 %exitcond.not.i.i36, label %.loopexit.loopexit.i, label %.lr.ph.i.i35, !llvm.loop !921

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i35, %middle.block185
  %.pre33.i = load i16, ptr %i.gn, align 8        ; 2 uses
  %.pre34.i = zext i16 %.pre33.i to i64
  %.pre35.i = mul i64 %i.gr, %.pre34.i
  br label %.loopexit.i37

.loopexit.i37:                                    ; preds = %.loopexit.loopexit.i, %bb.u
  %.pre-phi36.i = phi i64 [ %.pre35.i, %.loopexit.loopexit.i ], [ 0, %bb.u ]
  %i.hn = phi i16 [ %.pre33.i, %.loopexit.loopexit.i ], [ %i.gt, %bb.u ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.02031.i, i64 %.pre-phi36.i
  %i.hp = sub i64 %.02230.i, %i.gr                ; 2 uses
  %i.hq = add i64 %i.gr, %.01932.i                ; 2 uses
  %.not.i38 = icmp eq i64 %i.hp, 0
  br i1 %.not.i38, label %drwav_read_pcm_frames_f32__msadpcm_ima.exit, label %bb.t

drwav_read_pcm_frames_f32__msadpcm_ima.exit:      ; preds = %bb.t, %.loopexit.i37
  %.019.lcssa.i = phi i64 [ %.01932.i, %bb.t ], [ %i.hq, %.loopexit.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #61
  br label %bb.av

bb.v:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.hs = load i16, ptr %i.hr, align 2            ; 2 uses
  %i.ht = icmp eq i16 %i.hs, 32
  br i1 %i.ht, label %bb.w, label %._crit_edge.i

bb.w:                                             ; preds = %bb.v
  %i.hu = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %1, ptr noundef nonnull %2)
  br label %drwav_read_pcm_frames_f32__ieee.exit

._crit_edge.i:                                    ; preds = %bb.v
  %i.hv = zext i16 %i.hs to i32                   ; 2 uses
  %i.hw = and i32 %i.hv, 7
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.i
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.hz = load i16, ptr %i.hy, align 2
  %i.ia = zext i16 %i.hz to i32
  %i.ib = mul nuw nsw i32 %i.ia, %i.hv
  %i.ic = lshr exact i32 %i.ib, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i41

bb.y:                                             ; preds = %._crit_edge.i
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ie = load i16, ptr %i.id, align 4
  %i.if = zext i16 %i.ie to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i41

drwav_get_bytes_per_pcm_frame.exit.i41:           ; preds = %bb.x, %bb.y
  %.0.i.i39 = phi i32 [ %i.ic, %bb.x ], [ %i.if, %bb.y ] ; 5 uses
  %.old.i42 = icmp eq i32 %.0.i.i39, 0
  br i1 %.old.i42, label %drwav_read_pcm_frames_f32__ieee.exit, label %bb.z

bb.z:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i41
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ih = load i16, ptr %i.ig, align 8
  %i.ii = zext i16 %i.ih to i32                   ; 3 uses
  %i.ij = udiv i32 %.0.i.i39, %i.ii
  %i.ik = urem i32 %.0.i.i39, %i.ii
  %.fr.i = freeze i32 %i.ij                       ; 2 uses
  %i.il = icmp samesign uge i32 %.0.i.i39, %i.ii
  %.not.i43 = icmp eq i32 %i.ik, 0
  %or.cond279.a = and i1 %i.il, %.not.i43
  br i1 %or.cond279.a, label %.preheader.i44, label %drwav_read_pcm_frames_f32__ieee.exit

.preheader.i44:                                   ; preds = %bb.z
  %i.im = udiv i32 4096, %.0.i.i39
  %i.in = zext nneg i32 %i.im to i64              ; 3 uses
  %i.io = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us56.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i44, %.loopexit.us.i
  %.03555.us.i = phi i64 [ %i.js, %.loopexit.us.i ], [ 0, %.preheader.i44 ] ; 3 uses
  %.03654.us.i = phi ptr [ %i.jq, %.loopexit.us.i ], [ %2, %.preheader.i44 ] ; 5 uses
  %.03853.us.i = phi i64 [ %i.jr, %.loopexit.us.i ], [ %1, %.preheader.i44 ] ; 2 uses
  %.038..us.i = call i64 @llvm.umin.i64(i64 %.03853.us.i, i64 %i.in)
  %i.ip = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.038..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %drwav_read_pcm_frames_f32__ieee.exit, label %bb.aa

bb.aa:                                            ; preds = %.preheader.split.us.i
  %i.ir = load i16, ptr %i.ig, align 8
  %i.is = zext i16 %i.ir to i64
  %i.it = mul i64 %i.ip, %i.is                    ; 8 uses
  %i.iu = mul i64 %i.it, %i.io
  %i.iv = icmp ugt i64 %i.iu, 4096
  br i1 %i.iv, label %drwav_read_pcm_frames_f32__ieee.exit, label %.preheader.i.us.i

end_hunk_2
begin_hunk_3_@drwav_alaw_to_f32:bb.a
  %i.at = sitofp i16 %i.as to float
  %i.au = fmul nnan float %i.at, f0x38000000
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.epil, i64 4
  store float %i.au, ptr %.0811.epil, align 4
  %i.aw = add nuw i64 %.012.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !964

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @drwav_mulaw_to_f32(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not15 = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond13 = and i1 %or.cond.not15, %i.c
  br i1 %or.cond13, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.d = icmp ult i64 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.012 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.an, %.lr.ph ] ; 5 uses
  %.0811 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2
  %i.j = sitofp i16 %i.i to float
  %i.k = fmul nnan float %i.j, f0x38000000
  %i.l = getelementptr inbounds nuw i8, ptr %.0811, i64 4
  store float %i.k, ptr %.0811, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2
  %i.s = sitofp i16 %i.r to float
  %i.t = fmul nnan float %i.s, f0x38000000
  %i.u = getelementptr inbounds nuw i8, ptr %.0811, i64 8
  store float %i.t, ptr %i.l, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = sitofp i16 %i.aa to float
  %i.ac = fmul nnan float %i.ab, f0x38000000
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811, i64 12
  store float %i.ac, ptr %i.u, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = sitofp i16 %i.aj to float
  %i.al = fmul nnan float %i.ak, f0x38000000
  %i.am = getelementptr inbounds nuw i8, ptr %.0811, i64 16 ; 2 uses
  store float %i.al, ptr %i.ad, align 4
  %i.an = add nuw i64 %.012, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.012.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %.0811.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.am, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.012.epil = phi i64 [ %i.aw, %.lr.ph.epil ], [ %.012.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0811.epil = phi ptr [ %i.av, %.lr.ph.epil ], [ %.0811.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.012.epil
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr @g_drwavMulawTable, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = sitofp i16 %i.as to float
  %i.au = fmul nnan float %i.at, f0x38000000
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.epil, i64 4
  store float %i.au, ptr %.0811.epil, align 4
  %i.aw = add nuw i64 %.012.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !965

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @drwav_read_pcm_frames_s32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 9 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %i.c = alloca [4096 x i8], align 16             ; 10 uses
  %i.d = alloca [2048 x i16], align 16            ; 5 uses
  %i.e = alloca [4096 x i8], align 16             ; 16 uses
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq i64 %1, 0
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null)
  br label %bb.av

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.k = load i16, ptr %i.j, align 4
  switch i16 %i.k, label %bb.av [
    i16 1, label %bb.e
    i16 2, label %bb.s
    i16 17, label %bb.s
    i16 3, label %bb.v
    i16 6, label %bb.af
    i16 7, label %bb.an
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.e, i8 0, i64 4096, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = icmp eq i16 %i.m, 32
  br i1 %i.n, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %1, ptr noundef nonnull %2)
  br label %drwav_read_pcm_frames_s32__pcm.exit

._crit_edge.i:                                    ; preds = %bb.e
  %i.p = zext i16 %i.m to i32                     ; 2 uses
  %i.q = and i32 %i.p, 7
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i32
  %i.v = mul nuw nsw i32 %i.u, %i.p
  %i.w = lshr exact i32 %i.v, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load i16, ptr %i.x, align 4
  %i.z = zext i16 %i.y to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i

drwav_get_bytes_per_pcm_frame.exit.i:             ; preds = %bb.g, %bb.h
  %.0.i.i = phi i32 [ %i.w, %bb.g ], [ %i.z, %bb.h ] ; 5 uses
  %.old.i = icmp eq i32 %.0.i.i, 0
  br i1 %.old.i, label %drwav_read_pcm_frames_s32__pcm.exit, label %bb.i

bb.i:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = zext i16 %i.ab to i32                   ; 3 uses
  %i.ad = udiv i32 %.0.i.i, %i.ac                 ; 5 uses
  %i.ae = urem i32 %.0.i.i, %i.ac
  %i.af = icmp samesign uge i32 %.0.i.i, %i.ac
  %.not.i = icmp eq i32 %i.ae, 0
  %or.cond279.a = and i1 %i.af, %.not.i
  br i1 %or.cond279.a, label %.preheader.i, label %drwav_read_pcm_frames_s32__pcm.exit

.preheader.i:                                     ; preds = %bb.i
  %i.ag = udiv i32 4096, %.0.i.i
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = zext nneg i32 %i.ad to i64              ; 4 uses
  %i.aj = icmp samesign ugt i32 %i.ad, 8
  %i.ak = shl nuw nsw i32 %i.ad, 3
  %i.al = sub nuw nsw i32 64, %i.ak               ; 2 uses
  %xtraiter265 = and i64 %i.ai, 3                 ; 3 uses
  %i.am = add nsw i32 %i.ad, -1
  %i.an = icmp ult i32 %i.am, 3
  %unroll_iter270 = and i64 %i.ai, 12
  %lcmp.mod267.not = icmp eq i64 %xtraiter265, 0
  %lcmp.mod269 = icmp ne i64 %xtraiter265, 0
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.i, %.preheader.i
  %.03558.i = phi i64 [ 0, %.preheader.i ], [ %i.gm, %.loopexit.i ] ; 3 uses
  %.03657.i = phi ptr [ %2, %.preheader.i ], [ %i.gk, %.loopexit.i ] ; 16 uses
  %.03856.i = phi i64 [ %1, %.preheader.i ], [ %i.gl, %.loopexit.i ] ; 2 uses
  %.038..i = call i64 @llvm.umin.i64(i64 %.03856.i, i64 %i.ah)
  %i.ao = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.038..i, ptr noundef nonnull %i.e) ; 4 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %drwav_read_pcm_frames_s32__pcm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load i16, ptr %i.aa, align 8
  %i.ar = zext i16 %i.aq to i64
  %i.as = mul i64 %i.ao, %i.ar                    ; 26 uses
  %i.at = mul i64 %i.as, %i.ai
  %i.au = icmp ugt i64 %i.at, 4096
  br i1 %i.au, label %drwav_read_pcm_frames_s32__pcm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  switch i32 %i.ad, label %bb.p [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 4, label %.preheader56.i.i
  ]

.preheader56.i.i:                                 ; preds = %bb.l
  %.not67.i.i = icmp eq i64 %i.as, 0
  br i1 %.not67.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader56.i.i
  %min.iters.check229 = icmp ult i64 %i.as, 16
  br i1 %min.iters.check229, label %.lr.ph.i.i.preheader249, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.preheader
  %i.av = add i64 %i.as, -1                       ; 2 uses
  %i.aw = and i64 %i.av, 4294967295
  %i.ax = icmp eq i64 %i.aw, 4294967295
  %i.ay = icmp ugt i64 %i.av, 4294967295
  %i.az = or i1 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph.i.i.preheader249, label %vector.ph230

vector.ph230:                                     ; preds = %vector.scevcheck
  %n.vec231 = and i64 %i.as, 8589934584           ; 5 uses
  %i.ba = trunc i64 %n.vec231 to i32
  %i.bb = shl nuw nsw i64 %n.vec231, 2
  %i.bc = getelementptr i8, ptr %.03657.i, i64 %i.bb
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next237, %vector.body232 ] ; 3 uses
  %i.bd = shl i64 %index233, 2
  %next.gep234 = getelementptr i8, ptr %.03657.i, i64 %i.bd ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index233 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load235 = load <4 x i32>, ptr %i.be, align 16
  %wide.load236 = load <4 x i32>, ptr %i.bf, align 16
  %i.bg = getelementptr i8, ptr %next.gep234, i64 16
  store <4 x i32> %wide.load235, ptr %next.gep234, align 4
  store <4 x i32> %wide.load236, ptr %i.bg, align 4
  %index.next237 = add nuw i64 %index233, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next237, %n.vec231
  br i1 %i.bh, label %middle.block238, label %vector.body232, !llvm.loop !966

middle.block238:                                  ; preds = %vector.body232
  %cmp.n239 = icmp eq i64 %i.as, %n.vec231
  br i1 %cmp.n239, label %.loopexit.i, label %.lr.ph.i.i.preheader249

.lr.ph.i.i.preheader249:                          ; preds = %vector.scevcheck, %.lr.ph.i.i.preheader, %middle.block238
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec231, %middle.block238 ]
  %.03959.i.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %i.ba, %middle.block238 ]
  %.04058.i.i.ph = phi ptr [ %.03657.i, %vector.scevcheck ], [ %.03657.i, %.lr.ph.i.i.preheader ], [ %i.bc, %middle.block238 ]
  br label %.lr.ph.i.i

bb.m:                                             ; preds = %bb.l
  %.not52.i.i = icmp eq i64 %i.as, 0
  br i1 %.not52.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.m
  %min.iters.check189 = icmp ult i64 %i.as, 8
  br i1 %min.iters.check189, label %.lr.ph.i.i.i.preheader243, label %vector.ph190

vector.ph190:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec191 = and i64 %i.as, -8                   ; 4 uses
  %i.bi = shl i64 %n.vec191, 2
  %i.bj = getelementptr i8, ptr %.03657.i, i64 %i.bi
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next197, %vector.body192 ] ; 3 uses
  %i.bk = shl i64 %index193, 2
  %next.gep194 = getelementptr i8, ptr %.03657.i, i64 %i.bk ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 %index193 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %wide.load195 = load <4 x i8>, ptr %i.bl, align 8
  %wide.load196 = load <4 x i8>, ptr %i.bm, align 4
  %i.bn = zext <4 x i8> %wide.load195 to <4 x i32>
  %i.bo = zext <4 x i8> %wide.load196 to <4 x i32>
  %i.bp = shl nuw <4 x i32> %i.bn, splat (i32 24)
  %i.bq = shl nuw <4 x i32> %i.bo, splat (i32 24)
  %i.br = xor <4 x i32> %i.bp, splat (i32 -2147483648)
  %i.bs = xor <4 x i32> %i.bq, splat (i32 -2147483648)
  %i.bt = getelementptr i8, ptr %next.gep194, i64 16
  store <4 x i32> %i.br, ptr %next.gep194, align 4
  store <4 x i32> %i.bs, ptr %i.bt, align 4
  %index.next197 = add nuw i64 %index193, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next197, %n.vec191
  br i1 %i.bu, label %middle.block198, label %vector.body192, !llvm.loop !967

middle.block198:                                  ; preds = %vector.body192
  %cmp.n199 = icmp eq i64 %i.as, %n.vec191
  br i1 %cmp.n199, label %.loopexit.i, label %.lr.ph.i.i.i.preheader243

.lr.ph.i.i.i.preheader243:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block198
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec191, %middle.block198 ]
  %.0811.i.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i.i.i.preheader ], [ %i.bj, %middle.block198 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader243, %.lr.ph.i.i.i
  %.012.i.i.i = phi i64 [ %i.cb, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader243 ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i ], [ %.0811.i.i.i.ph, %.lr.ph.i.i.i.preheader243 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 %.012.i.i.i
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw i32 %i.bx, 24
  %i.bz = xor i32 %i.by, -2147483648
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  store i32 %i.bz, ptr %.0811.i.i.i, align 4
  %i.cb = add nuw nsw i64 %.012.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cb, %i.as
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !968

bb.n:                                             ; preds = %bb.l
  %.not51.i.i = icmp eq i64 %i.as, 0
  br i1 %.not51.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader

.lr.ph.i45.i.i.preheader:                         ; preds = %bb.n
  %min.iters.check203 = icmp ult i64 %i.as, 8
  br i1 %min.iters.check203, label %.lr.ph.i45.i.i.preheader245, label %vector.ph204

vector.ph204:                                     ; preds = %.lr.ph.i45.i.i.preheader
  %n.vec205 = and i64 %i.as, -8                   ; 4 uses
  %i.cc = shl i64 %n.vec205, 2
  %i.cd = getelementptr i8, ptr %.03657.i, i64 %i.cc
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph204
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next211, %vector.body206 ] ; 3 uses
  %i.ce = shl i64 %index207, 2
  %next.gep208 = getelementptr i8, ptr %.03657.i, i64 %i.ce ; 2 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index207 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %wide.load209 = load <4 x i16>, ptr %i.cf, align 16
  %wide.load210 = load <4 x i16>, ptr %i.cg, align 8
  %i.ch = sext <4 x i16> %wide.load209 to <4 x i32>
  %i.ci = sext <4 x i16> %wide.load210 to <4 x i32>
  %i.cj = shl nsw <4 x i32> %i.ch, splat (i32 16)
  %i.ck = shl nsw <4 x i32> %i.ci, splat (i32 16)
  %i.cl = getelementptr i8, ptr %next.gep208, i64 16
  store <4 x i32> %i.cj, ptr %next.gep208, align 4
  store <4 x i32> %i.ck, ptr %i.cl, align 4
  %index.next211 = add nuw i64 %index207, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next211, %n.vec205
  br i1 %i.cm, label %middle.block212, label %vector.body206, !llvm.loop !969

middle.block212:                                  ; preds = %vector.body206
  %cmp.n213 = icmp eq i64 %i.as, %n.vec205
  br i1 %cmp.n213, label %.loopexit.i, label %.lr.ph.i45.i.i.preheader245

.lr.ph.i45.i.i.preheader245:                      ; preds = %.lr.ph.i45.i.i.preheader, %middle.block212
  %.012.i46.i.i.ph = phi i64 [ 0, %.lr.ph.i45.i.i.preheader ], [ %n.vec205, %middle.block212 ]
  %.0811.i47.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i45.i.i.preheader ], [ %i.cd, %middle.block212 ]
  br label %.lr.ph.i45.i.i

.lr.ph.i45.i.i:                                   ; preds = %.lr.ph.i45.i.i.preheader245, %.lr.ph.i45.i.i
  %.012.i46.i.i = phi i64 [ %i.cs, %.lr.ph.i45.i.i ], [ %.012.i46.i.i.ph, %.lr.ph.i45.i.i.preheader245 ] ; 2 uses
  %.0811.i47.i.i = phi ptr [ %i.cr, %.lr.ph.i45.i.i ], [ %.0811.i47.i.i.ph, %.lr.ph.i45.i.i.preheader245 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.012.i46.i.i
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = sext i16 %i.co to i32
  %i.cq = shl nsw i32 %i.cp, 16
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i47.i.i, i64 4
  store i32 %i.cq, ptr %.0811.i47.i.i, align 4
  %i.cs = add nuw nsw i64 %.012.i46.i.i, 1        ; 2 uses
  %exitcond.not.i48.i.i = icmp eq i64 %i.cs, %i.as
  br i1 %exitcond.not.i48.i.i, label %.loopexit.i, label %.lr.ph.i45.i.i, !llvm.loop !970

bb.o:                                             ; preds = %bb.l
  %.not.i46.i = icmp eq i64 %i.as, 0
  br i1 %.not.i46.i, label %.loopexit.i, label %.lr.ph.i49.i.i.preheader

.lr.ph.i49.i.i.preheader:                         ; preds = %bb.o
  %min.iters.check217 = icmp ult i64 %i.as, 4
  br i1 %min.iters.check217, label %.lr.ph.i49.i.i.preheader247, label %vector.ph218

vector.ph218:                                     ; preds = %.lr.ph.i49.i.i.preheader
  %n.vec219 = and i64 %i.as, -4                   ; 4 uses
  %i.ct = shl i64 %n.vec219, 2
  %i.cu = getelementptr i8, ptr %.03657.i, i64 %i.ct
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph218
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next223, %vector.body220 ] ; 6 uses
  %i.cv = shl i64 %index221, 2
  %next.gep222 = getelementptr i8, ptr %.03657.i, i64 %i.cv
  %i.cw = mul i64 %index221, 3
  %i.cx = mul i64 %index221, 3
  %i.cy = mul i64 %index221, 3
  %i.cz = mul i64 %index221, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cw ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cx ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 3
  %i.dd = getelementptr i8, ptr %i.e, i64 %i.cy   ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 6
  %i.df = getelementptr i8, ptr %i.e, i64 %i.cz   ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 9
  %i.dh = load i16, ptr %i.da, align 4
  %i.di = load i16, ptr %i.dc, align 1
  %i.dj = load i16, ptr %i.de, align 2
  %i.dk = load i16, ptr %i.dg, align 1
  %i.dl = insertelement <4 x i16> poison, i16 %i.dh, i64 0
  %i.dm = insertelement <4 x i16> %i.dl, i16 %i.di, i64 1
  %i.dn = insertelement <4 x i16> %i.dm, i16 %i.dj, i64 2
  %i.do = insertelement <4 x i16> %i.dn, i16 %i.dk, i64 3
  %i.dp = zext <4 x i16> %i.do to <4 x i32>
  %i.dq = shl nuw nsw <4 x i32> %i.dp, splat (i32 8)
  %i.dr = getelementptr i8, ptr %i.da, i64 2
  %i.ds = getelementptr i8, ptr %i.db, i64 5
  %i.dt = getelementptr i8, ptr %i.dd, i64 8
  %i.du = getelementptr i8, ptr %i.df, i64 11
  %i.dv = load i8, ptr %i.dr, align 2
  %i.dw = load i8, ptr %i.ds, align 1
  %i.dx = load i8, ptr %i.dt, align 4
  %i.dy = load i8, ptr %i.du, align 1
  %i.dz = insertelement <4 x i8> poison, i8 %i.dv, i64 0
  %i.ea = insertelement <4 x i8> %i.dz, i8 %i.dw, i64 1
  %i.eb = insertelement <4 x i8> %i.ea, i8 %i.dx, i64 2
  %i.ec = insertelement <4 x i8> %i.eb, i8 %i.dy, i64 3
  %i.ed = zext <4 x i8> %i.ec to <4 x i32>
  %i.ee = shl nuw <4 x i32> %i.ed, splat (i32 24)
  %i.ef = or disjoint <4 x i32> %i.ee, %i.dq
  store <4 x i32> %i.ef, ptr %next.gep222, align 4
  %index.next223 = add nuw i64 %index221, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next223, %n.vec219
  br i1 %i.eg, label %middle.block224, label %vector.body220, !llvm.loop !971

middle.block224:                                  ; preds = %vector.body220
  %cmp.n225 = icmp eq i64 %i.as, %n.vec219
  br i1 %cmp.n225, label %.loopexit.i, label %.lr.ph.i49.i.i.preheader247

.lr.ph.i49.i.i.preheader247:                      ; preds = %.lr.ph.i49.i.i.preheader, %middle.block224
  %.020.i.i.i.ph = phi ptr [ %.03657.i, %.lr.ph.i49.i.i.preheader ], [ %i.cu, %middle.block224 ]
  %.01619.i.i.i.ph = phi i64 [ 0, %.lr.ph.i49.i.i.preheader ], [ %n.vec219, %middle.block224 ]
  br label %.lr.ph.i49.i.i

.lr.ph.i49.i.i:                                   ; preds = %.lr.ph.i49.i.i.preheader247, %.lr.ph.i49.i.i
  %.020.i.i.i = phi ptr [ %i.er, %.lr.ph.i49.i.i ], [ %.020.i.i.i.ph, %.lr.ph.i49.i.i.preheader247 ] ; 2 uses
  %.01619.i.i.i = phi i64 [ %i.es, %.lr.ph.i49.i.i ], [ %.01619.i.i.i.ph, %.lr.ph.i49.i.i.preheader247 ] ; 2 uses
  %i.eh = mul i64 %.01619.i.i.i, 3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.eh ; 2 uses
  %i.ej = load i16, ptr %i.ei, align 1
  %i.ek = zext i16 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 8
  %i.em = getelementptr i8, ptr %i.ei, i64 2
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw i32 %i.eo, 24
  %i.eq = or disjoint i32 %i.ep, %i.el
  %i.er = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 4
  store i32 %i.eq, ptr %.020.i.i.i, align 4
  %i.es = add nuw i64 %.01619.i.i.i, 1            ; 2 uses
  %exitcond.not.i50.i.i = icmp eq i64 %i.es, %i.as
  br i1 %exitcond.not.i50.i.i, label %.loopexit.i, label %.lr.ph.i49.i.i, !llvm.loop !972

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader249, %.lr.ph.i.i
  %i.et = phi i64 [ %i.ey, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader249 ]
  %.03959.i.i = phi i32 [ %i.ex, %.lr.ph.i.i ], [ %.03959.i.i.ph, %.lr.ph.i.i.preheader249 ]
  %.04058.i.i = phi ptr [ %i.ew, %.lr.ph.i.i ], [ %.04058.i.i.ph, %.lr.ph.i.i.preheader249 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %.04058.i.i, i64 4
  store i32 %i.ev, ptr %.04058.i.i, align 4
  %i.ex = add i32 %.03959.i.i, 1                  ; 2 uses
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %i.ez = icmp ugt i64 %i.as, %i.ey
  br i1 %i.ez, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !973

bb.p:                                             ; preds = %bb.l
  br i1 %i.aj, label %bb.q, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p
  %.not68.i.i = icmp eq i64 %i.as, 0
  br i1 %.not68.i.i, label %.loopexit.i, label %.lr.ph66.i.i

bb.q:                                             ; preds = %bb.p
  %i.fa = shl i64 %i.as, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.03657.i, i8 0, i64 %i.fa, i1 false)
  br label %.loopexit.i

.lr.ph66.i.i:                                     ; preds = %.preheader.i.i, %.epilog-lcssa
  %.165.i.i = phi i32 [ %i.gh, %.epilog-lcssa ], [ 0, %.preheader.i.i ]
  %.14164.i.i = phi ptr [ %i.gg, %.epilog-lcssa ], [ %.03657.i, %.preheader.i.i ] ; 2 uses
  %.04263.i.i = phi ptr [ %i.gd, %.epilog-lcssa ], [ %i.e, %.preheader.i.i ] ; 6 uses
  br i1 %i.an, label %.epil.preheader, label %.lr.ph66.i.i.new

.lr.ph66.i.i.new:                                 ; preds = %.lr.ph66.i.i, %.lr.ph66.i.i.new
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ] ; 5 uses
  %.03761.i.i = phi i32 [ %10, %.lr.ph66.i.i.new ], [ %i.al, %.lr.ph66.i.i ] ; 5 uses
  %.03860.i.i = phi i64 [ %i.fx, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ]
  %niter271 = phi i64 [ %niter271.next.3, %.lr.ph66.i.i.new ], [ 0, %.lr.ph66.i.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv.i.i.a
  %i.fc = load i8, ptr %i.fb, align 1
  %3 = zext i8 %i.fc to i64
  %i.fd = zext nneg i32 %.03761.i.i to i64
  %i.fe = shl i64 %3, %i.fd
  %i.ff = or i64 %i.fe, %.03860.i.i
  %4 = add i32 %.03761.i.i, 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv.i.i.a
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %i.fi = load i8, ptr %i.fh, align 1
  %5 = zext i8 %i.fi to i64
  %i.fj = zext nneg i32 %4 to i64
  %i.fk = shl i64 %5, %i.fj
  %i.fl = or i64 %i.fk, %i.ff
  %6 = add i32 %.03761.i.i, 16
  %i.fm = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv.i.i.a
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fo = load i8, ptr %i.fn, align 1
  %7 = zext i8 %i.fo to i64
  %i.fp = zext nneg i32 %6 to i64
  %i.fq = shl i64 %7, %i.fp
  %i.fr = or i64 %i.fq, %i.fl
  %8 = add i32 %.03761.i.i, 24
  %i.fs = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv.i.i.a
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 3
  %i.fu = load i8, ptr %i.ft, align 1
  %9 = zext i8 %i.fu to i64
  %i.fv = zext nneg i32 %8 to i64
  %i.fw = shl i64 %9, %i.fv
  %i.fx = or i64 %i.fw, %i.fr                     ; 3 uses
  %10 = add i32 %.03761.i.i, 32                   ; 2 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.a, 4 ; 2 uses
  %niter271.next.3 = add i64 %niter271, 4         ; 2 uses
  %niter271.ncmp.3 = icmp eq i64 %niter271.next.3, %unroll_iter270
  br i1 %niter271.ncmp.3, label %.unr-lcssa, label %.lr.ph66.i.i.new

.unr-lcssa:                                       ; preds = %.lr.ph66.i.i.new
  br i1 %lcmp.mod267.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph66.i.i
  %indvars.iv.i.i.epil.init.a = phi i64 [ 0, %.lr.ph66.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.03761.i.i.epil.init = phi i32 [ %i.al, %.lr.ph66.i.i ], [ %10, %.unr-lcssa ]
  %.03860.i.i.epil.init = phi i64 [ 0, %.lr.ph66.i.i ], [ %i.fx, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod269)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv.i.i.epil.a = phi i64 [ %indvars.iv.i.i.epil.init.a, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.r ] ; 2 uses
  %.03761.i.i.epil = phi i32 [ %.03761.i.i.epil.init, %.epil.preheader ], [ %12, %bb.r ] ; 2 uses
  %.03860.i.i.epil = phi i64 [ %.03860.i.i.epil.init, %.epil.preheader ], [ %i.gc, %bb.r ]
  %epil.iter266 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter266.next, %bb.r ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %indvars.iv.i.i.epil.a
  %i.fz = load i8, ptr %i.fy, align 1
  %11 = zext i8 %i.fz to i64
  %i.ga = zext nneg i32 %.03761.i.i.epil to i64
  %i.gb = shl i64 %11, %i.ga
  %i.gc = or i64 %i.gb, %.03860.i.i.epil          ; 2 uses
  %12 = add i32 %.03761.i.i.epil, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.a, 1
  %epil.iter266.next = add i64 %epil.iter266, 1   ; 2 uses
  %epil.iter266.cmp.not = icmp eq i64 %epil.iter266.next, %xtraiter265
  br i1 %epil.iter266.cmp.not, label %.epilog-lcssa, label %bb.r, !llvm.loop !974

.epilog-lcssa:                                    ; preds = %bb.r, %.unr-lcssa
  %.lcssa = phi i64 [ %i.fx, %.unr-lcssa ], [ %i.gc, %bb.r ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 %i.ai
  %i.ge = lshr i64 %.lcssa, 32
  %i.gf = trunc nuw i64 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %.14164.i.i, i64 4
  store i32 %i.gf, ptr %.14164.i.i, align 4
  %i.gh = add i32 %.165.i.i, 1                    ; 2 uses
  %i.gi = zext i32 %i.gh to i64
  %i.gj = icmp ugt i64 %i.as, %i.gi
  br i1 %i.gj, label %.lr.ph66.i.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i49.i.i, %.lr.ph.i45.i.i, %.lr.ph.i.i.i, %.epilog-lcssa, %middle.block238, %middle.block224, %middle.block212, %middle.block198, %bb.q, %.preheader.i.i, %bb.o, %bb.n, %bb.m, %.preheader56.i.i
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.03657.i, i64 %i.as
  %i.gl = sub i64 %.03856.i, %i.ao                ; 2 uses
  %i.gm = add i64 %i.ao, %.03558.i                ; 2 uses
  %.not45.i = icmp eq i64 %i.gl, 0
  br i1 %.not45.i, label %drwav_read_pcm_frames_s32__pcm.exit, label %bb.j

drwav_read_pcm_frames_s32__pcm.exit:              ; preds = %bb.j, %bb.k, %.loopexit.i, %bb.f, %drwav_get_bytes_per_pcm_frame.exit.i, %bb.i
  %.040.i = phi i64 [ %i.o, %bb.f ], [ 0, %bb.i ], [ 0, %drwav_get_bytes_per_pcm_frame.exit.i ], [ %.03558.i, %bb.j ], [ %i.gm, %.loopexit.i ], [ %.03558.i, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #61
  br label %bb.av

bb.s:                                             ; preds = %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #61
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %.pre.i = load i16, ptr %i.gn, align 8
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.i37, %bb.s
  %i.go = phi i16 [ %.pre.i, %bb.s ], [ %i.hn, %.loopexit.i37 ]
  %.01932.i = phi i64 [ 0, %bb.s ], [ %i.hq, %.loopexit.i37 ] ; 2 uses
  %.02031.i = phi ptr [ %2, %bb.s ], [ %i.ho, %.loopexit.i37 ] ; 4 uses
  %.02230.i = phi i64 [ %1, %bb.s ], [ %i.hp, %.loopexit.i37 ] ; 2 uses
  %i.gp = udiv i16 2048, %i.go
  %i.gq = zext nneg i16 %i.gp to i64
  %.022..i = call i64 @llvm.umin.i64(i64 %.02230.i, i64 %i.gq)
  %i.gr = call i64 @drwav_read_pcm_frames_s16(ptr noundef nonnull %0, i64 noundef %.022..i, ptr noundef nonnull %i.d) ; 5 uses
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %drwav_read_pcm_frames_s32__msadpcm_ima.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gt = load i16, ptr %i.gn, align 8            ; 2 uses
  %i.gu = zext i16 %i.gt to i64
  %i.gv = mul i64 %i.gr, %i.gu                    ; 5 uses
  %.not39.i = icmp eq i64 %i.gv, 0
  br i1 %.not39.i, label %.loopexit.i37, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.u
  %min.iters.check175 = icmp ult i64 %i.gv, 8
  br i1 %min.iters.check175, label %.lr.ph.i.i35.preheader251, label %vector.ph176

vector.ph176:                                     ; preds = %.lr.ph.i.i35.preheader
  %n.vec177 = and i64 %i.gv, -8                   ; 4 uses
  %i.gw = shl i64 %n.vec177, 2
  %i.gx = getelementptr i8, ptr %.02031.i, i64 %i.gw
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next183, %vector.body178 ] ; 3 uses
  %i.gy = shl i64 %index179, 2
  %next.gep180 = getelementptr i8, ptr %.02031.i, i64 %i.gy ; 2 uses
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index179 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %wide.load181 = load <4 x i16>, ptr %i.gz, align 16
  %wide.load182 = load <4 x i16>, ptr %i.ha, align 8
  %i.hb = sext <4 x i16> %wide.load181 to <4 x i32>
  %i.hc = sext <4 x i16> %wide.load182 to <4 x i32>
  %i.hd = shl nsw <4 x i32> %i.hb, splat (i32 16)
  %i.he = shl nsw <4 x i32> %i.hc, splat (i32 16)
  %i.hf = getelementptr i8, ptr %next.gep180, i64 16
  store <4 x i32> %i.hd, ptr %next.gep180, align 4
  store <4 x i32> %i.he, ptr %i.hf, align 4
  %index.next183 = add nuw i64 %index179, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next183, %n.vec177
  br i1 %i.hg, label %middle.block184, label %vector.body178, !llvm.loop !975

middle.block184:                                  ; preds = %vector.body178
  %cmp.n185 = icmp eq i64 %i.gv, %n.vec177
  br i1 %cmp.n185, label %.loopexit.loopexit.i, label %.lr.ph.i.i35.preheader251

.lr.ph.i.i35.preheader251:                        ; preds = %.lr.ph.i.i35.preheader, %middle.block184
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i35.preheader ], [ %n.vec177, %middle.block184 ]
  %.0811.i.i.ph = phi ptr [ %.02031.i, %.lr.ph.i.i35.preheader ], [ %i.gx, %middle.block184 ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader251, %.lr.ph.i.i35
  %.012.i.i = phi i64 [ %i.hm, %.lr.ph.i.i35 ], [ %.012.i.i.ph, %.lr.ph.i.i35.preheader251 ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.hl, %.lr.ph.i.i35 ], [ %.0811.i.i.ph, %.lr.ph.i.i35.preheader251 ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.012.i.i
  %i.hi = load i16, ptr %i.hh, align 2
  %i.hj = sext i16 %i.hi to i32
  %i.hk = shl nsw i32 %i.hj, 16
  %i.hl = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  store i32 %i.hk, ptr %.0811.i.i, align 4
  %i.hm = add nuw nsw i64 %.012.i.i, 1            ; 2 uses
  %exitcond.not.i.i36 = icmp eq i64 %i.hm, %i.gv
  br i1 %exitcond.not.i.i36, label %.loopexit.loopexit.i, label %.lr.ph.i.i35, !llvm.loop !976

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i35, %middle.block184
  %.pre33.i = load i16, ptr %i.gn, align 8        ; 2 uses
  %.pre34.i = zext i16 %.pre33.i to i64
  %.pre35.i = mul i64 %i.gr, %.pre34.i
  br label %.loopexit.i37

.loopexit.i37:                                    ; preds = %.loopexit.loopexit.i, %bb.u
  %.pre-phi36.i = phi i64 [ %.pre35.i, %.loopexit.loopexit.i ], [ 0, %bb.u ]
  %i.hn = phi i16 [ %.pre33.i, %.loopexit.loopexit.i ], [ %i.gt, %bb.u ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.02031.i, i64 %.pre-phi36.i
  %i.hp = sub i64 %.02230.i, %i.gr                ; 2 uses
  %i.hq = add i64 %i.gr, %.01932.i                ; 2 uses
  %.not.i38 = icmp eq i64 %i.hp, 0
  br i1 %.not.i38, label %drwav_read_pcm_frames_s32__msadpcm_ima.exit, label %bb.t

drwav_read_pcm_frames_s32__msadpcm_ima.exit:      ; preds = %bb.t, %.loopexit.i37
  %.019.lcssa.i = phi i64 [ %.01932.i, %bb.t ], [ %i.hq, %.loopexit.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #61
  br label %bb.av

bb.v:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.hs = load i16, ptr %i.hr, align 2
  %i.ht = zext i16 %i.hs to i32                   ; 2 uses
  %i.hu = and i32 %i.ht, 7
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.hx = load i16, ptr %i.hw, align 2
  %i.hy = zext i16 %i.hx to i32
  %i.hz = mul nuw nsw i32 %i.hy, %i.ht
  %i.ia = lshr exact i32 %i.hz, 3
  br label %drwav_get_bytes_per_pcm_frame.exit.i41

bb.x:                                             ; preds = %bb.v
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ic = load i16, ptr %i.ib, align 4
  %i.id = zext i16 %i.ic to i32
  br label %drwav_get_bytes_per_pcm_frame.exit.i41

drwav_get_bytes_per_pcm_frame.exit.i41:           ; preds = %bb.w, %bb.x
  %.0.i.i39 = phi i32 [ %i.ia, %bb.w ], [ %i.id, %bb.x ] ; 5 uses
  %.old.i42 = icmp eq i32 %.0.i.i39, 0
  br i1 %.old.i42, label %drwav_read_pcm_frames_s32__ieee.exit, label %bb.y

bb.y:                                             ; preds = %drwav_get_bytes_per_pcm_frame.exit.i41
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.if = load i16, ptr %i.ie, align 8
  %i.ig = zext i16 %i.if to i32                   ; 3 uses
  %i.ih = udiv i32 %.0.i.i39, %i.ig
  %i.ii = urem i32 %.0.i.i39, %i.ig
  %.fr.i = freeze i32 %i.ih                       ; 2 uses
  %i.ij = icmp samesign uge i32 %.0.i.i39, %i.ig
  %.not.i43 = icmp eq i32 %i.ii, 0
  %or.cond280.a = and i1 %i.ij, %.not.i43
  br i1 %or.cond280.a, label %.preheader.i44, label %drwav_read_pcm_frames_s32__ieee.exit

.preheader.i44:                                   ; preds = %bb.y
  %i.ik = udiv i32 4096, %.0.i.i39
  %i.il = zext nneg i32 %i.ik to i64              ; 3 uses
  %i.im = zext nneg i32 %.fr.i to i64             ; 3 uses
  switch i32 %.fr.i, label %.preheader.split.i [
    i32 4, label %.preheader.split.us.i
    i32 8, label %.preheader.split.us51.i
  ]

.preheader.split.us.i:                            ; preds = %.preheader.i44, %.loopexit.us.i
  %.03050.us.i = phi i64 [ %i.jn, %.loopexit.us.i ], [ 0, %.preheader.i44 ] ; 3 uses
  %.03149.us.i = phi ptr [ %i.jl, %.loopexit.us.i ], [ %2, %.preheader.i44 ] ; 4 uses
  %.03348.us.i = phi i64 [ %i.jm, %.loopexit.us.i ], [ %1, %.preheader.i44 ] ; 2 uses
  %.033..us.i = call i64 @llvm.umin.i64(i64 %.03348.us.i, i64 %i.il)
  %i.in = call i64 @drwav_read_pcm_frames(ptr noundef nonnull %0, i64 noundef %.033..us.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %drwav_read_pcm_frames_s32__ieee.exit, label %bb.z

bb.z:                                             ; preds = %.preheader.split.us.i
  %i.ip = load i16, ptr %i.ie, align 8
  %i.iq = zext i16 %i.ip to i64
  %i.ir = mul i64 %i.in, %i.iq                    ; 7 uses
  %i.is = mul i64 %i.ir, %i.im
  %i.it = icmp ugt i64 %i.is, 4096
  br i1 %i.it, label %drwav_read_pcm_frames_s32__ieee.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not13.i.us.i = icmp eq i64 %i.ir, 0
  br i1 %.not13.i.us.i, label %.loopexit.us.i, label %.lr.ph.i.i.us.i.preheader

.lr.ph.i.i.us.i.preheader:                        ; preds = %bb.aa
  %min.iters.check161 = icmp ult i64 %i.ir, 8
  br i1 %min.iters.check161, label %.lr.ph.i.i.us.i.preheader252, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i.us.i.preheader
end_hunk_3
begin_hunk_4_@convert_samples_short:bb.a
  %.not.us.us.i.us.us.5 = icmp eq i32 %i.dv, 0
  br i1 %.not.us.us.i.us.us.5, label %..preheader39_crit_edge.us.i.us.us, label %.preheader.us.us.i.us.us.5

.preheader.us.us.i.us.us.5:                       ; preds = %.lr.ph42.split.us.us.i.us.us.5
  %i.dw = load ptr, ptr %i.x, align 8
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %indvars.iv73.i.us.us
  %i.dy = getelementptr [4 x i8], ptr %i.dx, i64 %i.m ; 2 uses
  %min.iters.check115.5 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check115.5, label %scalar.ph114.preheader.5, label %vector.ph116.5

vector.ph116.5:                                   ; preds = %.preheader.us.us.i.us.us.5
  %n.vec117.5 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body118.5

vector.body118.5:                                 ; preds = %vector.body118.5, %vector.ph116.5
  %index119.5 = phi i64 [ 0, %vector.ph116.5 ], [ %index.next124.5, %vector.body118.5 ] ; 3 uses
  %i.dz = getelementptr [4 x i8], ptr %i.dy, i64 %index119.5 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  %wide.load120.5 = load <4 x float>, ptr %i.dz, align 4
  %wide.load121.5 = load <4 x float>, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index119.5 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %wide.load122.5 = load <4 x float>, ptr %i.eb, align 16
  %wide.load123.5 = load <4 x float>, ptr %i.ec, align 16
  %i.ed = fadd <4 x float> %wide.load120.5, %wide.load122.5
  %i.ee = fadd <4 x float> %wide.load121.5, %wide.load123.5
  store <4 x float> %i.ed, ptr %i.eb, align 16
  store <4 x float> %i.ee, ptr %i.ec, align 16
  %index.next124.5 = add nuw i64 %index119.5, 8   ; 2 uses
  %i.ef = icmp eq i64 %index.next124.5, %n.vec117.5
  br i1 %i.ef, label %middle.block125.5, label %vector.body118.5, !llvm.loop !1049

middle.block125.5:                                ; preds = %vector.body118.5
  %cmp.n126.5 = icmp eq i64 %n.vec117.5, %wide.trip.count.i.us.us
  br i1 %cmp.n126.5, label %..preheader39_crit_edge.us.i.us.us, label %scalar.ph114.preheader.5

scalar.ph114.preheader.5:                         ; preds = %middle.block125.5, %.preheader.us.us.i.us.us.5
  %indvars.iv60.i.us.us.ph.5 = phi i64 [ 0, %.preheader.us.us.i.us.us.5 ], [ %n.vec117.5, %middle.block125.5 ]
  br label %scalar.ph114.5

scalar.ph114.5:                                   ; preds = %scalar.ph114.5, %scalar.ph114.preheader.5
  %indvars.iv60.i.us.us.5 = phi i64 [ %indvars.iv.next61.i.us.us.5, %scalar.ph114.5 ], [ %indvars.iv60.i.us.us.ph.5, %scalar.ph114.preheader.5 ] ; 3 uses
  %i.eg = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv60.i.us.us.5
  %i.eh = load float, ptr %i.eg, align 4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv60.i.us.us.5 ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4
  %i.ek = fadd float %i.eh, %i.ej
  store float %i.ek, ptr %i.ei, align 4
  %indvars.iv.next61.i.us.us.5 = add nuw nsw i64 %indvars.iv60.i.us.us.5, 1 ; 2 uses
  %exitcond.not.i.us.us.5 = icmp eq i64 %indvars.iv.next61.i.us.us.5, %wide.trip.count.i.us.us
  br i1 %exitcond.not.i.us.us.5, label %..preheader39_crit_edge.us.i.us.us, label %scalar.ph114.5, !llvm.loop !1050

..preheader39_crit_edge.us.i.us.us:               ; preds = %.lr.ph42.split.us.us.i.us.us.5, %middle.block125.5, %scalar.ph114.5, %..loopexit_crit_edge.us.us.i.us.us.4, %..loopexit_crit_edge.us.us.i.us.us.3, %..loopexit_crit_edge.us.us.i.us.us.2, %..loopexit_crit_edge.us.us.i.us.us.1, %..loopexit_crit_edge.us.us.i.us.us
  %invariant.gep78.i.us.us = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv73.i.us.us ; 2 uses
  %min.iters.check103 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check103, label %.lr.ph.us.i.us.us.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %..preheader39_crit_edge.us.i.us.us
  %n.vec105 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next110, %vector.body106 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index107 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load108 = load <4 x float>, ptr %i.el, align 16
  %wide.load109 = load <4 x float>, ptr %i.em, align 16
  %i.en = fadd <4 x float> %wide.load108, splat (float 3.840000e+02)
  %i.eo = fadd <4 x float> %wide.load109, splat (float 3.840000e+02)
  %i.ep = bitcast <4 x float> %i.en to <4 x i32>
  %i.eq = bitcast <4 x float> %i.eo to <4 x i32>
  %i.er = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ep, <4 x i32> splat (i32 1136623616))
  %i.es = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.eq, <4 x i32> splat (i32 1136623616))
  %i.et = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.er, <4 x i32> splat (i32 1136689151))
  %i.eu = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.es, <4 x i32> splat (i32 1136689151))
  %i.ev = trunc <4 x i32> %i.et to <4 x i16>
  %i.ew = trunc <4 x i32> %i.eu to <4 x i16>
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep78.i.us.us, i64 %index107 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store <4 x i16> %i.ev, ptr %i.ex, align 2
  store <4 x i16> %i.ew, ptr %i.ey, align 2
  %index.next110 = add nuw i64 %index107, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next110, %n.vec105
  br i1 %i.ez, label %middle.block111, label %vector.body106, !llvm.loop !1051

middle.block111:                                  ; preds = %vector.body106
  %cmp.n112 = icmp eq i64 %n.vec105, %wide.trip.count.i.us.us
  br i1 %cmp.n112, label %._crit_edge.us.i.us.us, label %.lr.ph.us.i.us.us.preheader

.lr.ph.us.i.us.us.preheader:                      ; preds = %..preheader39_crit_edge.us.i.us.us, %middle.block111
  %indvars.iv68.i.us.us.ph = phi i64 [ 0, %..preheader39_crit_edge.us.i.us.us ], [ %n.vec105, %middle.block111 ]
  br label %.lr.ph.us.i.us.us

.lr.ph.us.i.us.us:                                ; preds = %.lr.ph.us.i.us.us.preheader, %.lr.ph.us.i.us.us
  %indvars.iv68.i.us.us = phi i64 [ %indvars.iv.next69.i.us.us, %.lr.ph.us.i.us.us ], [ %indvars.iv68.i.us.us.ph, %.lr.ph.us.i.us.us.preheader ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv68.i.us.us
  %i.fb = load float, ptr %i.fa, align 4
  %i.fc = fadd float %i.fb, 3.840000e+02
  %i.fd = bitcast float %i.fc to i32
  %i.fe = tail call i32 @llvm.smax.i32(i32 %i.fd, i32 1136623616)
  %i.ff = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 1136689151)
  %i.fg = trunc i32 %i.ff to i16
  %gep79.i.us.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep78.i.us.us, i64 %indvars.iv68.i.us.us
  store i16 %i.fg, ptr %gep79.i.us.us, align 2
  %indvars.iv.next69.i.us.us = add nuw nsw i64 %indvars.iv68.i.us.us, 1 ; 2 uses
  %exitcond72.not.i.us.us = icmp eq i64 %indvars.iv.next69.i.us.us, %wide.trip.count.i.us.us
  br i1 %exitcond72.not.i.us.us, label %._crit_edge.us.i.us.us, label %.lr.ph.us.i.us.us, !llvm.loop !1052

._crit_edge.us.i.us.us:                           ; preds = %.lr.ph.us.i.us.us, %middle.block111, %.lr.ph42.us.i.us.us
  %indvars.iv.next74.i.us.us = add nuw nsw i64 %indvars.iv73.i.us.us, 32 ; 2 uses
  %i.fh = icmp samesign ult i64 %indvars.iv.next74.i.us.us, %i.l
  br i1 %i.fh, label %.lr.ph42.us.i.us.us, label %compute_samples.exit.loopexit.us.us

compute_samples.exit.loopexit.us.us:              ; preds = %._crit_edge.us.i.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %i.f
  br i1 %exitcond80.not, label %.loopexit, label %.lr.ph47.i.us.us

.lr.ph47.i.us:                                    ; preds = %.lr.ph55.split.us
  %i.fi = load ptr, ptr %1, align 8
  %i.fj = getelementptr inbounds [2 x i8], ptr %i.fi, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader39.i.us

.preheader39.i.us:                                ; preds = %._crit_edge.i.us, %.lr.ph47.i.us
  %indvars.iv67 = phi i32 [ %indvars.iv.next68, %._crit_edge.i.us ], [ 0, %.lr.ph47.i.us ] ; 2 uses
  %indvars.iv57.i.us = phi i64 [ %indvars.iv.next58.i.us, %._crit_edge.i.us ], [ 0, %.lr.ph47.i.us ] ; 3 uses
  %.03245.i.us = phi i32 [ %spec.select.i.us, %._crit_edge.i.us ], [ 32, %.lr.ph47.i.us ] ; 2 uses
  %indvars70 = trunc i64 %indvars.iv57.i.us to i32 ; 2 uses
  %i.fk = add nsw i32 %.03245.i.us, %indvars70    ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, %6
  %i.fm = sub nuw nsw i32 %6, %indvars70
  %spec.select.i.us = select i1 %i.fl, i32 %i.fm, i32 %.03245.i.us ; 2 uses
  %i.fn = icmp sgt i32 %spec.select.i.us, 0
  br i1 %i.fn, label %.lr.ph.preheader.i.us, label %._crit_edge.i.us

.lr.ph.preheader.i.us:                            ; preds = %.preheader39.i.us
  %invariant.gep.i.us = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %indvars.iv57.i.us ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %6, i32 %i.fk)
  %i.fo = add i32 %smin, %indvars.iv67            ; 2 uses
  %i.fp = zext i32 %i.fo to i64                   ; 3 uses
  %min.iters.check91 = icmp ult i32 %i.fo, 8
  br i1 %min.iters.check91, label %.lr.ph.i.us.preheader, label %vector.ph92

vector.ph92:                                      ; preds = %.lr.ph.preheader.i.us
  %n.vec93 = and i64 %i.fp, 4294967288            ; 3 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph92
  %index95 = phi i64 [ 0, %vector.ph92 ], [ %index.next98, %vector.body94 ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index95 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %wide.load96 = load <4 x float>, ptr %i.fq, align 16
  %wide.load97 = load <4 x float>, ptr %i.fr, align 16
  %i.fs = fadd <4 x float> %wide.load96, splat (float 3.840000e+02)
  %i.ft = fadd <4 x float> %wide.load97, splat (float 3.840000e+02)
  %i.fu = bitcast <4 x float> %i.fs to <4 x i32>
  %i.fv = bitcast <4 x float> %i.ft to <4 x i32>
  %i.fw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fu, <4 x i32> splat (i32 1136623616))
  %i.fx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fv, <4 x i32> splat (i32 1136623616))
  %i.fy = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fw, <4 x i32> splat (i32 1136689151))
  %i.fz = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fx, <4 x i32> splat (i32 1136689151))
  %i.ga = trunc <4 x i32> %i.fy to <4 x i16>
  %i.gb = trunc <4 x i32> %i.fz to <4 x i16>
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us, i64 %index95 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store <4 x i16> %i.ga, ptr %i.gc, align 2
  store <4 x i16> %i.gb, ptr %i.gd, align 2
  %index.next98 = add nuw i64 %index95, 8         ; 2 uses
  %i.ge = icmp eq i64 %index.next98, %n.vec93
  br i1 %i.ge, label %middle.block99, label %vector.body94, !llvm.loop !1053

middle.block99:                                   ; preds = %vector.body94
  %cmp.n100 = icmp eq i64 %n.vec93, %i.fp
  br i1 %cmp.n100, label %._crit_edge.i.us, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.preheader.i.us, %middle.block99
  %indvars.iv.i.us.ph = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %n.vec93, %middle.block99 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.lr.ph.i.us ], [ %indvars.iv.i.us.ph, %.lr.ph.i.us.preheader ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.gg = load float, ptr %i.gf, align 4
  %i.gh = fadd float %i.gg, 3.840000e+02
  %i.gi = bitcast float %i.gh to i32
  %i.gj = tail call i32 @llvm.smax.i32(i32 %i.gi, i32 1136623616)
  %i.gk = tail call i32 @llvm.umin.i32(i32 %i.gj, i32 1136689151)
  %i.gl = trunc i32 %i.gk to i16
  %gep.i.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  store i16 %i.gl, ptr %gep.i.us, align 2
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next.i.us, %i.fp
  br i1 %exitcond69.not, label %._crit_edge.i.us, label %.lr.ph.i.us, !llvm.loop !1054

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us, %middle.block99, %.preheader39.i.us
  %indvars.iv.next58.i.us = add nuw nsw i64 %indvars.iv57.i.us, 32 ; 2 uses
  %i.gm = icmp samesign ult i64 %indvars.iv.next58.i.us, %i.l
  %indvars.iv.next68 = add i32 %indvars.iv67, -32
  br i1 %i.gm, label %.preheader39.i.us, label %compute_samples.exit.loopexit48.us

compute_samples.exit.loopexit48.us:               ; preds = %._crit_edge.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %exitcond75.not = icmp eq i32 %0, 1
  br i1 %exitcond75.not, label %.loopexit, label %.lr.ph47.i.us.1

.lr.ph47.i.us.1:                                  ; preds = %compute_samples.exit.loopexit48.us
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.go, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader39.i.us.1

.preheader39.i.us.1:                              ; preds = %._crit_edge.i.us.1, %.lr.ph47.i.us.1
  %indvars.iv67.1 = phi i32 [ %indvars.iv.next68.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph47.i.us.1 ] ; 2 uses
  %indvars.iv57.i.us.1 = phi i64 [ %indvars.iv.next58.i.us.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph47.i.us.1 ] ; 3 uses
  %.03245.i.us.1 = phi i32 [ %spec.select.i.us.1, %._crit_edge.i.us.1 ], [ 32, %.lr.ph47.i.us.1 ] ; 2 uses
  %indvars70.1 = trunc i64 %indvars.iv57.i.us.1 to i32 ; 2 uses
  %i.gq = add nsw i32 %.03245.i.us.1, %indvars70.1 ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, %6
  %i.gs = sub nuw nsw i32 %6, %indvars70.1
  %spec.select.i.us.1 = select i1 %i.gr, i32 %i.gs, i32 %.03245.i.us.1 ; 2 uses
  %i.gt = icmp sgt i32 %spec.select.i.us.1, 0
  br i1 %i.gt, label %.lr.ph.preheader.i.us.1, label %._crit_edge.i.us.1

.lr.ph.preheader.i.us.1:                          ; preds = %.preheader39.i.us.1
  %invariant.gep.i.us.1 = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %indvars.iv57.i.us.1 ; 2 uses
  %smin.1 = tail call i32 @llvm.smin.i32(i32 %6, i32 %i.gq)
  %i.gu = add i32 %smin.1, %indvars.iv67.1        ; 2 uses
  %i.gv = zext i32 %i.gu to i64                   ; 3 uses
  %min.iters.check91.1 = icmp ult i32 %i.gu, 8
  br i1 %min.iters.check91.1, label %.lr.ph.i.us.preheader.1, label %vector.ph92.1

vector.ph92.1:                                    ; preds = %.lr.ph.preheader.i.us.1
  %n.vec93.1 = and i64 %i.gv, 4294967288          ; 3 uses
  br label %vector.body94.1

vector.body94.1:                                  ; preds = %vector.body94.1, %vector.ph92.1
  %index95.1 = phi i64 [ 0, %vector.ph92.1 ], [ %index.next98.1, %vector.body94.1 ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index95.1 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load96.1 = load <4 x float>, ptr %i.gw, align 16
  %wide.load97.1 = load <4 x float>, ptr %i.gx, align 16
  %i.gy = fadd <4 x float> %wide.load96.1, splat (float 3.840000e+02)
  %i.gz = fadd <4 x float> %wide.load97.1, splat (float 3.840000e+02)
  %i.ha = bitcast <4 x float> %i.gy to <4 x i32>
  %i.hb = bitcast <4 x float> %i.gz to <4 x i32>
  %i.hc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ha, <4 x i32> splat (i32 1136623616))
  %i.hd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hb, <4 x i32> splat (i32 1136623616))
  %i.he = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.hc, <4 x i32> splat (i32 1136689151))
  %i.hf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.hd, <4 x i32> splat (i32 1136689151))
  %i.hg = trunc <4 x i32> %i.he to <4 x i16>
  %i.hh = trunc <4 x i32> %i.hf to <4 x i16>
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us.1, i64 %index95.1 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store <4 x i16> %i.hg, ptr %i.hi, align 2
  store <4 x i16> %i.hh, ptr %i.hj, align 2
  %index.next98.1 = add nuw i64 %index95.1, 8     ; 2 uses
  %i.hk = icmp eq i64 %index.next98.1, %n.vec93.1
  br i1 %i.hk, label %middle.block99.1, label %vector.body94.1, !llvm.loop !1053

middle.block99.1:                                 ; preds = %vector.body94.1
  %cmp.n100.1 = icmp eq i64 %n.vec93.1, %i.gv
  br i1 %cmp.n100.1, label %._crit_edge.i.us.1, label %.lr.ph.i.us.preheader.1

.lr.ph.i.us.preheader.1:                          ; preds = %middle.block99.1, %.lr.ph.preheader.i.us.1
  %indvars.iv.i.us.ph.1 = phi i64 [ 0, %.lr.ph.preheader.i.us.1 ], [ %n.vec93.1, %middle.block99.1 ]
  br label %.lr.ph.i.us.1

.lr.ph.i.us.1:                                    ; preds = %.lr.ph.i.us.1, %.lr.ph.i.us.preheader.1
  %indvars.iv.i.us.1 = phi i64 [ %indvars.iv.next.i.us.1, %.lr.ph.i.us.1 ], [ %indvars.iv.i.us.ph.1, %.lr.ph.i.us.preheader.1 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us.1
  %i.hm = load float, ptr %i.hl, align 4
  %i.hn = fadd float %i.hm, 3.840000e+02
  %i.ho = bitcast float %i.hn to i32
  %i.hp = tail call i32 @llvm.smax.i32(i32 %i.ho, i32 1136623616)
  %i.hq = tail call i32 @llvm.umin.i32(i32 %i.hp, i32 1136689151)
  %i.hr = trunc i32 %i.hq to i16
  %gep.i.us.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us.1, i64 %indvars.iv.i.us.1
  store i16 %i.hr, ptr %gep.i.us.1, align 2
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us.1, 1 ; 2 uses
  %exitcond69.not.1 = icmp eq i64 %indvars.iv.next.i.us.1, %i.gv
  br i1 %exitcond69.not.1, label %._crit_edge.i.us.1, label %.lr.ph.i.us.1, !llvm.loop !1054

._crit_edge.i.us.1:                               ; preds = %.lr.ph.i.us.1, %middle.block99.1, %.preheader39.i.us.1
  %indvars.iv.next58.i.us.1 = add nuw nsw i64 %indvars.iv57.i.us.1, 32 ; 2 uses
  %i.hs = icmp samesign ult i64 %indvars.iv.next58.i.us.1, %i.l
  %indvars.iv.next68.1 = add i32 %indvars.iv67.1, -32
  br i1 %i.hs, label %.preheader39.i.us.1, label %compute_samples.exit.loopexit48.us.1

compute_samples.exit.loopexit48.us.1:             ; preds = %._crit_edge.i.us.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.ht = tail call i32 @llvm.smin.i32(i32 %0, i32 %3) ; 4 uses
  %i.hu = icmp sgt i32 %i.ht, 0
  br i1 %i.hu, label %.lr.ph, label %.preheader49

.lr.ph:                                           ; preds = %bb.b
  %i.hv = sext i32 %2 to i64                      ; 2 uses
  %i.hw = sext i32 %5 to i64                      ; 2 uses
  %i.hx = icmp sgt i32 %6, 0
  %wide.trip.count.i43 = zext i32 %6 to i64       ; 7 uses
  br i1 %i.hx, label %.lr.ph.preheader.i42.us.preheader, label %.preheader49

.lr.ph.preheader.i42.us.preheader:                ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.ht to i64
  %i.hy = add nsw i64 %i.hv, %wide.trip.count.i43
  %i.hz = shl nsw i64 %i.hy, 1
  %i.ia = add nsw i64 %i.hw, %wide.trip.count.i43
  %i.ib = shl nsw i64 %i.ia, 2
  %min.iters.check = icmp ult i32 %6, 8
  %n.vec = and i64 %wide.trip.count.i43, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i43
  %xtraiter = and i64 %wide.trip.count.i43, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ic = add nsw i64 %wide.trip.count.i43, -1
  br label %.lr.ph.preheader.i42.us

.lr.ph.preheader.i42.us:                          ; preds = %.lr.ph.preheader.i42.us.preheader, %copy_samples.exit.loopexit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i42.us.preheader ], [ %indvars.iv.next, %copy_samples.exit.loopexit.us ] ; 3 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ie = load ptr, ptr %i.id, align 8            ; 2 uses
  %i.if = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.hv ; 5 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.ih = load ptr, ptr %i.ig, align 8            ; 2 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.hw ; 5 uses
  br i1 %min.iters.check, label %.lr.ph.i44.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i42.us
  %scevgep = getelementptr i8, ptr %i.ie, i64 %i.hz
  %scevgep88 = getelementptr i8, ptr %i.ih, i64 %i.ib
  %bound0 = icmp ult ptr %i.if, %scevgep88
  %bound1 = icmp ult ptr %i.ii, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i44.us.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %index ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load = load <4 x float>, ptr %i.ij, align 4, !alias.scope !1061
  %wide.load89 = load <4 x float>, ptr %i.ik, align 4, !alias.scope !1061
  %i.il = fadd <4 x float> %wide.load, splat (float 3.840000e+02)
  %i.im = fadd <4 x float> %wide.load89, splat (float 3.840000e+02)
  %i.in = bitcast <4 x float> %i.il to <4 x i32>
  %i.io = bitcast <4 x float> %i.im to <4 x i32>
  %i.ip = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.in, <4 x i32> splat (i32 1136623616))
  %i.iq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.io, <4 x i32> splat (i32 1136623616))
  %i.ir = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ip, <4 x i32> splat (i32 1136689151))
  %i.is = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.iq, <4 x i32> splat (i32 1136689151))
  %i.it = trunc <4 x i32> %i.ir to <4 x i16>
  %i.iu = trunc <4 x i32> %i.is to <4 x i16>
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %index ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store <4 x i16> %i.it, ptr %i.iv, align 2, !alias.scope !1062, !noalias !1061
  store <4 x i16> %i.iu, ptr %i.iw, align 2, !alias.scope !1062, !noalias !1061
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ix = icmp eq i64 %index.next, %n.vec
  br i1 %i.ix, label %middle.block, label %vector.body, !llvm.loop !1058

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %copy_samples.exit.loopexit.us, label %.lr.ph.i44.us.preheader

.lr.ph.i44.us.preheader:                          ; preds = %vector.memcheck, %.lr.ph.preheader.i42.us, %middle.block
  %indvars.iv.i45.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i42.us ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i44.us.prol.loopexit, label %.lr.ph.i44.us.prol

.lr.ph.i44.us.prol:                               ; preds = %.lr.ph.i44.us.preheader
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.i45.us.ph
  %i.iz = load float, ptr %i.iy, align 4
  %i.ja = fadd float %i.iz, 3.840000e+02
  %i.jb = bitcast float %i.ja to i32
  %i.jc = tail call i32 @llvm.smax.i32(i32 %i.jb, i32 1136623616)
  %i.jd = tail call i32 @llvm.umin.i32(i32 %i.jc, i32 1136689151)
  %i.je = trunc i32 %i.jd to i16
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %indvars.iv.i45.us.ph
  store i16 %i.je, ptr %i.jf, align 2
  %indvars.iv.next.i46.us.prol = or disjoint i64 %indvars.iv.i45.us.ph, 1
  br label %.lr.ph.i44.us.prol.loopexit

.lr.ph.i44.us.prol.loopexit:                      ; preds = %.lr.ph.i44.us.prol, %.lr.ph.i44.us.preheader
  %indvars.iv.i45.us.unr = phi i64 [ %indvars.iv.i45.us.ph, %.lr.ph.i44.us.preheader ], [ %indvars.iv.next.i46.us.prol, %.lr.ph.i44.us.prol ]
  %i.jg = icmp eq i64 %indvars.iv.i45.us.ph, %i.ic
  br i1 %i.jg, label %copy_samples.exit.loopexit.us, label %.lr.ph.i44.us

.lr.ph.i44.us:                                    ; preds = %.lr.ph.i44.us.prol.loopexit, %.lr.ph.i44.us
  %indvars.iv.i45.us = phi i64 [ %indvars.iv.next.i46.us.1, %.lr.ph.i44.us ], [ %indvars.iv.i45.us.unr, %.lr.ph.i44.us.prol.loopexit ] ; 4 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.i45.us
  %i.ji = load float, ptr %i.jh, align 4
  %i.jj = fadd float %i.ji, 3.840000e+02
  %i.jk = bitcast float %i.jj to i32
  %i.jl = tail call i32 @llvm.smax.i32(i32 %i.jk, i32 1136623616)
  %i.jm = tail call i32 @llvm.umin.i32(i32 %i.jl, i32 1136689151)
  %i.jn = trunc i32 %i.jm to i16
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %indvars.iv.i45.us
  store i16 %i.jn, ptr %i.jo, align 2
  %indvars.iv.next.i46.us = add nuw nsw i64 %indvars.iv.i45.us, 1 ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.next.i46.us
  %i.jq = load float, ptr %i.jp, align 4
  %i.jr = fadd float %i.jq, 3.840000e+02
  %i.js = bitcast float %i.jr to i32
  %i.jt = tail call i32 @llvm.smax.i32(i32 %i.js, i32 1136623616)
  %i.ju = tail call i32 @llvm.umin.i32(i32 %i.jt, i32 1136689151)
  %i.jv = trunc i32 %i.ju to i16
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %indvars.iv.next.i46.us
  store i16 %i.jv, ptr %i.jw, align 2
  %indvars.iv.next.i46.us.1 = add nuw nsw i64 %indvars.iv.i45.us, 2 ; 2 uses
  %exitcond.not.i47.us.1 = icmp eq i64 %indvars.iv.next.i46.us.1, %wide.trip.count.i43
  br i1 %exitcond.not.i47.us.1, label %copy_samples.exit.loopexit.us, label %.lr.ph.i44.us, !llvm.loop !1059

copy_samples.exit.loopexit.us:                    ; preds = %.lr.ph.i44.us.prol.loopexit, %.lr.ph.i44.us, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader49, label %.lr.ph.preheader.i42.us

.preheader49:                                     ; preds = %copy_samples.exit.loopexit.us, %.lr.ph, %bb.b
  %.1.lcssa = phi i32 [ 0, %bb.b ], [ %i.ht, %.lr.ph ], [ %i.ht, %copy_samples.exit.loopexit.us ] ; 4 uses
  %i.jx = icmp slt i32 %.1.lcssa, %0
  br i1 %i.jx, label %.lr.ph53, label %.loopexit

.lr.ph53:                                         ; preds = %.preheader49
  %i.jy = sext i32 %2 to i64                      ; 9 uses
  %i.jz = sext i32 %6 to i64
  %i.ka = shl nsw i64 %i.jz, 1                    ; 9 uses
  %i.kb = zext nneg i32 %.1.lcssa to i64          ; 2 uses
  %i.kc = sub i32 %0, %.1.lcssa
  %xtraiter130 = and i32 %i.kc, 7                 ; 2 uses
  %lcmp.mod131.not = icmp eq i32 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph53, %.prol.preheader
  %indvars.iv62.prol = phi i64 [ %indvars.iv.next63.prol, %.prol.preheader ], [ %i.kb, %.lr.ph53 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph53 ]
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62.prol
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = getelementptr inbounds [2 x i8], ptr %i.ke, i64 %i.jy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.kf, i8 0, i64 %i.ka, i1 false)
  %indvars.iv.next63.prol = add nuw nsw i64 %indvars.iv62.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter130
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1060

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph53
  %indvars.iv62.unr = phi i64 [ %i.kb, %.lr.ph53 ], [ %indvars.iv.next63.prol, %.prol.preheader ]
  %i.kg = sub i32 %.1.lcssa, %0
  %i.kh = icmp ugt i32 %i.kg, -8
  br i1 %i.kh, label %.loopexit, label %.lr.ph53.new

.lr.ph53.new:                                     ; preds = %.prol.loopexit, %.lr.ph53.new
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.7, %.lr.ph53.new ], [ %indvars.iv62.unr, %.prol.loopexit ] ; 9 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = getelementptr inbounds [2 x i8], ptr %i.kj, i64 %i.jy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.kk, i8 0, i64 %i.ka, i1 false)
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = getelementptr inbounds [2 x i8], ptr %i.kn, i64 %i.jy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.ko, i8 0, i64 %i.ka, i1 false)
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = getelementptr inbounds [2 x i8], ptr %i.kr, i64 %i.jy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.ks, i8 0, i64 %i.ka, i1 false)
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = getelementptr inbounds [2 x i8], ptr %i.kv, i64 %i.jy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.kw, i8 0, i64 %i.ka, i1 false)
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = getelementptr inbounds [2 x i8], ptr %i.kz, i64 %i.jy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.la, i8 0, i64 %i.ka, i1 false)
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 40
  %i.ld = load ptr, ptr %i.lc, align 8
  %i.le = getelementptr inbounds [2 x i8], ptr %i.ld, i64 %i.jy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.le, i8 0, i64 %i.ka, i1 false)
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 48
  %i.lh = load ptr, ptr %i.lg, align 8
  %i.li = getelementptr inbounds [2 x i8], ptr %i.lh, i64 %i.jy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.li, i8 0, i64 %i.ka, i1 false)
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 56
end_hunk_4
begin_hunk_5_@convert_channels_short_interleaved:bb.a
  %i.au = extractelement <4 x float> %i.ar, i64 2
  store float %i.au, ptr %i.ap, align 4
  %i.av = extractelement <4 x float> %i.ar, i64 3
  store float %i.av, ptr %i.aq, align 4
  %index.next156 = add nuw i64 %index152, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next156, %n.vec150
  br i1 %i.aw, label %scalar.ph147.preheader, label %vector.body151, !llvm.loop !1065

scalar.ph147.preheader:                           ; preds = %vector.body151, %.lr.ph.us.i.us.us
  %indvars.iv94.i.us.us.ph = phi i64 [ 0, %.lr.ph.us.i.us.us ], [ %n.vec150, %vector.body151 ]
  br label %scalar.ph147

scalar.ph147:                                     ; preds = %scalar.ph147.preheader, %scalar.ph147
  %indvars.iv94.i.us.us = phi i64 [ %indvars.iv.next95.i.us.us, %scalar.ph147 ], [ %indvars.iv94.i.us.us.ph, %scalar.ph147.preheader ] ; 3 uses
  %i.ax = getelementptr [4 x i8], ptr %i.ad, i64 %indvars.iv94.i.us.us
  %i.ay = load float, ptr %i.ax, align 4
  %.idx.i.us.us = shl nuw nsw i64 %indvars.iv94.i.us.us, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i.us.us
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = fadd float %i.ay, %i.bb
  store float %i.bc, ptr %i.ba, align 4
  %indvars.iv.next95.i.us.us = add nuw nsw i64 %indvars.iv94.i.us.us, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next95.i.us.us, %i.r
  br i1 %exitcond88.not, label %.loopexit.us.i.us.us, label %scalar.ph147, !llvm.loop !1066

.preheader67.us.i.us.us:                          ; preds = %bb.b
  br i1 %i.o, label %.lr.ph74.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph74.us.i.us.us:                              ; preds = %.preheader67.us.i.us.us
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv103.i.us.us
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.p ; 2 uses
  br i1 %min.iters.check136, label %scalar.ph135.preheader, label %vector.body139

vector.body139:                                   ; preds = %.lr.ph74.us.i.us.us, %vector.body139
  %index140 = phi i64 [ %index.next144, %vector.body139 ], [ 0, %.lr.ph74.us.i.us.us ] ; 6 uses
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %index140
  %wide.load141 = load <4 x float>, ptr %i.bg, align 4
  %i.bh = shl nuw nsw i64 %index140, 3
  %i.bi = shl i64 %index140, 3
  %i.bj = shl i64 %index140, 3
  %i.bk = shl i64 %index140, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %wide.vec142 = load <8 x float>, ptr %i.bl, align 16
  %strided.vec143 = shufflevector <8 x float> %wide.vec142, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bs = fadd <4 x float> %wide.load141, %strided.vec143 ; 4 uses
  %i.bt = extractelement <4 x float> %i.bs, i64 0
  store float %i.bt, ptr %i.bl, align 16
  %i.bu = extractelement <4 x float> %i.bs, i64 1
  store float %i.bu, ptr %i.bn, align 8
  %i.bv = extractelement <4 x float> %i.bs, i64 2
  store float %i.bv, ptr %i.bp, align 16
  %i.bw = extractelement <4 x float> %i.bs, i64 3
  store float %i.bw, ptr %i.br, align 8
  %index.next144 = add nuw i64 %index140, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next144, %n.vec138
  br i1 %i.bx, label %scalar.ph135.preheader, label %vector.body139, !llvm.loop !1067

scalar.ph135.preheader:                           ; preds = %vector.body139, %.lr.ph74.us.i.us.us
  %indvars.iv97.i.us.us.ph = phi i64 [ 0, %.lr.ph74.us.i.us.us ], [ %n.vec138, %vector.body139 ]
  br label %scalar.ph135

scalar.ph135:                                     ; preds = %scalar.ph135.preheader, %scalar.ph135
  %indvars.iv97.i.us.us = phi i64 [ %indvars.iv.next98.i.us.us, %scalar.ph135 ], [ %indvars.iv97.i.us.us.ph, %scalar.ph135.preheader ] ; 3 uses
  %i.by = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv97.i.us.us
  %i.bz = load float, ptr %i.by, align 4
  %.idx115.i.us.us = shl nuw nsw i64 %indvars.iv97.i.us.us, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx115.i.us.us ; 2 uses
  %i.cb = load float, ptr %i.ca, align 8
  %i.cc = fadd float %i.bz, %i.cb
  store float %i.cc, ptr %i.ca, align 8
  %indvars.iv.next98.i.us.us = add nuw nsw i64 %indvars.iv97.i.us.us, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next98.i.us.us, %i.r
  br i1 %exitcond90.not, label %.loopexit.us.i.us.us, label %scalar.ph135, !llvm.loop !1068

.preheader.us.i.us.us:                            ; preds = %bb.b
  br i1 %i.o, label %.lr.ph76.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph76.us.i.us.us:                              ; preds = %.preheader.us.i.us.us
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv103.i.us.us
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr [4 x i8], ptr %i.ce, i64 %i.p ; 2 uses
  br i1 %min.iters.check124, label %scalar.ph123.preheader, label %vector.body127

vector.body127:                                   ; preds = %.lr.ph76.us.i.us.us, %vector.body127
  %index128 = phi i64 [ %index.next131, %vector.body127 ], [ 0, %.lr.ph76.us.i.us.us ] ; 3 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %index128
  %wide.load129 = load <2 x float>, ptr %i.cg, align 4
  %i.ch = shl nuw nsw i64 %index128, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ch ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.ci, align 16
  %i.cj = shufflevector <2 x float> %wide.load129, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec = fadd <4 x float> %i.cj, %wide.vec
  store <4 x float> %interleaved.vec, ptr %i.ci, align 16
  %index.next131 = add nuw i64 %index128, 2       ; 2 uses
  %i.ck = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.ck, label %middle.block132, label %vector.body127, !llvm.loop !1069

middle.block132:                                  ; preds = %vector.body127
  br i1 %cmp.n133, label %.loopexit.us.i.us.us, label %scalar.ph123.preheader

scalar.ph123.preheader:                           ; preds = %.lr.ph76.us.i.us.us, %middle.block132
  %indvars.iv100.i.us.us.ph = phi i64 [ 0, %.lr.ph76.us.i.us.us ], [ %n.vec126, %middle.block132 ]
  br label %scalar.ph123

scalar.ph123:                                     ; preds = %scalar.ph123.preheader, %scalar.ph123
  %indvars.iv100.i.us.us = phi i64 [ %indvars.iv.next101.i.us.us, %scalar.ph123 ], [ %indvars.iv100.i.us.us.ph, %scalar.ph123.preheader ] ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.cf, i64 %indvars.iv100.i.us.us
  %i.cm = load float, ptr %i.cl, align 4
  %.idx116.i.us.us = shl nuw nsw i64 %indvars.iv100.i.us.us, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx116.i.us.us ; 2 uses
  %i.co = load <2 x float>, ptr %i.cn, align 8
  %i.cp = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fadd <2 x float> %i.cq, %i.co
  store <2 x float> %i.cr, ptr %i.cn, align 8
  %indvars.iv.next101.i.us.us = add nuw nsw i64 %indvars.iv100.i.us.us, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next101.i.us.us, %i.r
  br i1 %exitcond92.not, label %.loopexit.us.i.us.us, label %scalar.ph123, !llvm.loop !1070

.loopexit.us.i.us.us:                             ; preds = %scalar.ph147, %scalar.ph135, %scalar.ph123, %middle.block132, %.preheader.us.i.us.us, %.preheader67.us.i.us.us, %.preheader69.us.i.us.us, %bb.b
  %indvars.iv.next104.i.us.us = add nuw nsw i64 %indvars.iv103.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next104.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %..preheader71_crit_edge.us.i.us.us, label %bb.b

..preheader71_crit_edge.us.i.us.us:               ; preds = %.loopexit.us.i.us.us
  %i.cs = shl nuw i32 %spec.select.us.i.us.us, 1
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph80.us.preheader.i.us.us, label %._crit_edge.us.i.us.us

.lr.ph80.us.preheader.i.us.us:                    ; preds = %..preheader71_crit_edge.us.i.us.us
  %i.cu = shl nuw i32 %indvars95, 1
  %i.cv = sext i32 %i.cu to i64
  %invariant.gep120.i.us.us = getelementptr [2 x i8], ptr %1, i64 %i.cv ; 2 uses
  %i.cw = shl i32 %i.q, 1                         ; 2 uses
  %i.cx = zext i32 %i.cw to i64                   ; 3 uses
  %min.iters.check112 = icmp ult i32 %i.cw, 8
  br i1 %min.iters.check112, label %.lr.ph80.us.i.us.us.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph80.us.preheader.i.us.us
  %n.vec114 = and i64 %i.cx, 4294967288           ; 3 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next119, %vector.body115 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index116 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load117 = load <4 x float>, ptr %i.cy, align 16
  %wide.load118 = load <4 x float>, ptr %i.cz, align 16
  %i.da = fadd <4 x float> %wide.load117, splat (float 3.840000e+02)
  %i.db = fadd <4 x float> %wide.load118, splat (float 3.840000e+02)
  %i.dc = bitcast <4 x float> %i.da to <4 x i32>
  %i.dd = bitcast <4 x float> %i.db to <4 x i32>
  %i.de = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dc, <4 x i32> splat (i32 1136623616))
  %i.df = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dd, <4 x i32> splat (i32 1136623616))
  %i.dg = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.de, <4 x i32> splat (i32 1136689151))
  %i.dh = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.df, <4 x i32> splat (i32 1136689151))
  %i.di = trunc <4 x i32> %i.dg to <4 x i16>
  %i.dj = trunc <4 x i32> %i.dh to <4 x i16>
  %i.dk = getelementptr [2 x i8], ptr %invariant.gep120.i.us.us, i64 %index116 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  store <4 x i16> %i.di, ptr %i.dk, align 2
  store <4 x i16> %i.dj, ptr %i.dl, align 2
  %index.next119 = add nuw i64 %index116, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next119, %n.vec114
  br i1 %i.dm, label %middle.block120, label %vector.body115, !llvm.loop !1071

middle.block120:                                  ; preds = %vector.body115
  %cmp.n121 = icmp eq i64 %n.vec114, %i.cx
  br i1 %cmp.n121, label %._crit_edge.us.i.us.us, label %.lr.ph80.us.i.us.us.preheader

.lr.ph80.us.i.us.us.preheader:                    ; preds = %.lr.ph80.us.preheader.i.us.us, %middle.block120
  %indvars.iv106.i.us.us.ph = phi i64 [ 0, %.lr.ph80.us.preheader.i.us.us ], [ %n.vec114, %middle.block120 ]
  br label %.lr.ph80.us.i.us.us

.lr.ph80.us.i.us.us:                              ; preds = %.lr.ph80.us.i.us.us.preheader, %.lr.ph80.us.i.us.us
  %indvars.iv106.i.us.us = phi i64 [ %indvars.iv.next107.i.us.us, %.lr.ph80.us.i.us.us ], [ %indvars.iv106.i.us.us.ph, %.lr.ph80.us.i.us.us.preheader ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv106.i.us.us
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = fadd float %i.do, 3.840000e+02
  %i.dq = bitcast float %i.dp to i32
  %i.dr = tail call i32 @llvm.smax.i32(i32 %i.dq, i32 1136623616)
  %i.ds = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 1136689151)
  %i.dt = trunc i32 %i.ds to i16
  %gep121.i.us.us = getelementptr [2 x i8], ptr %invariant.gep120.i.us.us, i64 %indvars.iv106.i.us.us
  store i16 %i.dt, ptr %gep121.i.us.us, align 2
  %indvars.iv.next107.i.us.us = add nuw nsw i64 %indvars.iv106.i.us.us, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next107.i.us.us, %i.cx
  br i1 %exitcond94.not, label %._crit_edge.us.i.us.us, label %.lr.ph80.us.i.us.us, !llvm.loop !1072

._crit_edge.us.i.us.us:                           ; preds = %.lr.ph80.us.i.us.us, %middle.block120, %..preheader71_crit_edge.us.i.us.us
  %indvars.iv.next110.i.us.us = add nuw nsw i64 %indvars.iv109.i.us.us, 16 ; 2 uses
  %i.du = icmp samesign ult i64 %indvars.iv.next110.i.us.us, %i.i
  %indvars.iv.next87 = add i32 %indvars.iv86, -16
  br i1 %i.du, label %.lr.ph78.us.i.us.us, label %compute_stereo_samples.exit.loopexit.us.us

compute_stereo_samples.exit.loopexit.us.us:       ; preds = %._crit_edge.us.i.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %i.dv = add nuw nsw i32 %.03859.us.us, 1        ; 2 uses
  %exitcond96.not = icmp eq i32 %i.dv, %0
  br i1 %exitcond96.not, label %.loopexit, label %.lr.ph84.i.us.us

.unreachabledefault:                              ; preds = %bb.b
  unreachable

.lr.ph84.i.us:                                    ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader71.i.us

.preheader71.i.us:                                ; preds = %._crit_edge.i.us, %.lr.ph84.i.us
  %indvars.iv78 = phi i32 [ %indvars.iv.next79, %._crit_edge.i.us ], [ 0, %.lr.ph84.i.us ] ; 2 uses
  %indvars.iv91.i.us = phi i64 [ %indvars.iv.next92.i.us, %._crit_edge.i.us ], [ 0, %.lr.ph84.i.us ] ; 2 uses
  %.05982.i.us = phi i32 [ %spec.select.i.us, %._crit_edge.i.us ], [ 16, %.lr.ph84.i.us ] ; 2 uses
  %indvars81 = trunc i64 %indvars.iv91.i.us to i32 ; 3 uses
  %i.dw = add nsw i32 %.05982.i.us, %indvars81    ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, %5
  %i.dy = sub i32 %5, %indvars81
  %spec.select.i.us = select i1 %i.dx, i32 %i.dy, i32 %.05982.i.us ; 2 uses
  %i.dz = shl nuw i32 %spec.select.i.us, 1
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %.lr.ph80.preheader.i.us, label %._crit_edge.i.us

.lr.ph80.preheader.i.us:                          ; preds = %.preheader71.i.us
  %i.eb = shl nuw i32 %indvars81, 1
  %i.ec = sext i32 %i.eb to i64
  %invariant.gep.i.us = getelementptr [2 x i8], ptr %1, i64 %i.ec ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.dw)
  %i.ed = add i32 %smin, %indvars.iv78            ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 1                ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ef, i64 1) ; 2 uses
  %min.iters.check = icmp ult i32 %i.ed, 4
  br i1 %min.iters.check, label %.lr.ph80.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.preheader.i.us
  %n.vec = and i64 %umax, 8589934584              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %wide.load = load <4 x float>, ptr %i.eg, align 16
  %wide.load110 = load <4 x float>, ptr %i.eh, align 16
  %i.ei = fadd <4 x float> %wide.load, splat (float 3.840000e+02)
  %i.ej = fadd <4 x float> %wide.load110, splat (float 3.840000e+02)
  %i.ek = bitcast <4 x float> %i.ei to <4 x i32>
  %i.el = bitcast <4 x float> %i.ej to <4 x i32>
  %i.em = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ek, <4 x i32> splat (i32 1136623616))
  %i.en = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.el, <4 x i32> splat (i32 1136623616))
  %i.eo = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.em, <4 x i32> splat (i32 1136689151))
  %i.ep = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.en, <4 x i32> splat (i32 1136689151))
  %i.eq = trunc <4 x i32> %i.eo to <4 x i16>
  %i.er = trunc <4 x i32> %i.ep to <4 x i16>
  %i.es = getelementptr [2 x i8], ptr %invariant.gep.i.us, i64 %index ; 2 uses
  %i.et = getelementptr i8, ptr %i.es, i64 8
  store <4 x i16> %i.eq, ptr %i.es, align 2
  store <4 x i16> %i.er, ptr %i.et, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !1073

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.us, label %.lr.ph80.i.us.preheader

.lr.ph80.i.us.preheader:                          ; preds = %.lr.ph80.preheader.i.us, %middle.block
  %indvars.iv.i.us.ph = phi i64 [ 0, %.lr.ph80.preheader.i.us ], [ %n.vec, %middle.block ]
  br label %.lr.ph80.i.us

.lr.ph80.i.us:                                    ; preds = %.lr.ph80.i.us.preheader, %.lr.ph80.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.lr.ph80.i.us ], [ %indvars.iv.i.us.ph, %.lr.ph80.i.us.preheader ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.ew = load float, ptr %i.ev, align 4
  %i.ex = fadd float %i.ew, 3.840000e+02
  %i.ey = bitcast float %i.ex to i32
  %i.ez = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 1136623616)
  %i.fa = tail call i32 @llvm.umin.i32(i32 %i.ez, i32 1136689151)
  %i.fb = trunc i32 %i.fa to i16
  %gep.i.us = getelementptr [2 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  store i16 %i.fb, ptr %gep.i.us, align 2
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next.i.us, %umax
  br i1 %exitcond80.not, label %._crit_edge.i.us, label %.lr.ph80.i.us, !llvm.loop !1074

._crit_edge.i.us:                                 ; preds = %.lr.ph80.i.us, %middle.block, %.preheader71.i.us
  %indvars.iv.next92.i.us = add nuw nsw i64 %indvars.iv91.i.us, 16 ; 2 uses
  %i.fc = icmp samesign ult i64 %indvars.iv.next92.i.us, %i.i
  %indvars.iv.next79 = add i32 %indvars.iv78, -16
  br i1 %i.fc, label %.preheader71.i.us, label %compute_stereo_samples.exit.loopexit46.us

compute_stereo_samples.exit.loopexit46.us:        ; preds = %._crit_edge.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %exitcond82.not = icmp eq i32 %0, 1
  br i1 %exitcond82.not, label %.loopexit, label %.lr.ph84.i.us.1

.lr.ph84.i.us.1:                                  ; preds = %compute_stereo_samples.exit.loopexit46.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader71.i.us.1

.preheader71.i.us.1:                              ; preds = %._crit_edge.i.us.1, %.lr.ph84.i.us.1
  %indvars.iv78.1 = phi i32 [ %indvars.iv.next79.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph84.i.us.1 ] ; 2 uses
  %indvars.iv91.i.us.1 = phi i64 [ %indvars.iv.next92.i.us.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph84.i.us.1 ] ; 2 uses
  %.05982.i.us.1 = phi i32 [ %spec.select.i.us.1, %._crit_edge.i.us.1 ], [ 16, %.lr.ph84.i.us.1 ] ; 2 uses
  %indvars81.1 = trunc i64 %indvars.iv91.i.us.1 to i32 ; 3 uses
  %i.fd = add nsw i32 %.05982.i.us.1, %indvars81.1 ; 2 uses
  %i.fe = icmp sgt i32 %i.fd, %5
  %i.ff = sub i32 %5, %indvars81.1
  %spec.select.i.us.1 = select i1 %i.fe, i32 %i.ff, i32 %.05982.i.us.1 ; 2 uses
  %i.fg = shl nuw i32 %spec.select.i.us.1, 1
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph80.preheader.i.us.1, label %._crit_edge.i.us.1

.lr.ph80.preheader.i.us.1:                        ; preds = %.preheader71.i.us.1
  %i.fi = shl nuw i32 %indvars81.1, 1
  %i.fj = sext i32 %i.fi to i64
  %invariant.gep.i.us.1 = getelementptr [2 x i8], ptr %1, i64 %i.fj ; 2 uses
  %smin.1 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.fd)
  %i.fk = add i32 %smin.1, %indvars.iv78.1        ; 2 uses
  %i.fl = zext i32 %i.fk to i64
  %i.fm = shl nuw nsw i64 %i.fl, 1                ; 2 uses
  %umax.1 = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 1) ; 2 uses
  %min.iters.check.1 = icmp ult i32 %i.fk, 4
  br i1 %min.iters.check.1, label %.lr.ph80.i.us.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %.lr.ph80.preheader.i.us.1
  %n.vec.1 = and i64 %umax.1, 8589934584          ; 3 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.1 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load.1 = load <4 x float>, ptr %i.fn, align 16
  %wide.load110.1 = load <4 x float>, ptr %i.fo, align 16
  %i.fp = fadd <4 x float> %wide.load.1, splat (float 3.840000e+02)
  %i.fq = fadd <4 x float> %wide.load110.1, splat (float 3.840000e+02)
  %i.fr = bitcast <4 x float> %i.fp to <4 x i32>
  %i.fs = bitcast <4 x float> %i.fq to <4 x i32>
  %i.ft = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fr, <4 x i32> splat (i32 1136623616))
  %i.fu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fs, <4 x i32> splat (i32 1136623616))
  %i.fv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ft, <4 x i32> splat (i32 1136689151))
  %i.fw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fu, <4 x i32> splat (i32 1136689151))
  %i.fx = trunc <4 x i32> %i.fv to <4 x i16>
  %i.fy = trunc <4 x i32> %i.fw to <4 x i16>
  %i.fz = getelementptr [2 x i8], ptr %invariant.gep.i.us.1, i64 %index.1 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 8
  store <4 x i16> %i.fx, ptr %i.fz, align 2
  store <4 x i16> %i.fy, ptr %i.ga, align 2
  %index.next.1 = add nuw i64 %index.1, 8         ; 2 uses
  %i.gb = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.gb, label %middle.block.1, label %vector.body.1, !llvm.loop !1073

middle.block.1:                                   ; preds = %vector.body.1
  %cmp.n.1 = icmp eq i64 %i.fm, %n.vec.1
  br i1 %cmp.n.1, label %._crit_edge.i.us.1, label %.lr.ph80.i.us.preheader.1

.lr.ph80.i.us.preheader.1:                        ; preds = %middle.block.1, %.lr.ph80.preheader.i.us.1
  %indvars.iv.i.us.ph.1 = phi i64 [ 0, %.lr.ph80.preheader.i.us.1 ], [ %n.vec.1, %middle.block.1 ]
  br label %.lr.ph80.i.us.1

.lr.ph80.i.us.1:                                  ; preds = %.lr.ph80.i.us.1, %.lr.ph80.i.us.preheader.1
  %indvars.iv.i.us.1 = phi i64 [ %indvars.iv.next.i.us.1, %.lr.ph80.i.us.1 ], [ %indvars.iv.i.us.ph.1, %.lr.ph80.i.us.preheader.1 ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us.1
  %i.gd = load float, ptr %i.gc, align 4
  %i.ge = fadd float %i.gd, 3.840000e+02
  %i.gf = bitcast float %i.ge to i32
  %i.gg = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 1136623616)
  %i.gh = tail call i32 @llvm.umin.i32(i32 %i.gg, i32 1136689151)
  %i.gi = trunc i32 %i.gh to i16
  %gep.i.us.1 = getelementptr [2 x i8], ptr %invariant.gep.i.us.1, i64 %indvars.iv.i.us.1
  store i16 %i.gi, ptr %gep.i.us.1, align 2
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us.1, 1 ; 2 uses
  %exitcond80.not.1 = icmp eq i64 %indvars.iv.next.i.us.1, %umax.1
  br i1 %exitcond80.not.1, label %._crit_edge.i.us.1, label %.lr.ph80.i.us.1, !llvm.loop !1074

._crit_edge.i.us.1:                               ; preds = %.lr.ph80.i.us.1, %middle.block.1, %.preheader71.i.us.1
  %indvars.iv.next92.i.us.1 = add nuw nsw i64 %indvars.iv91.i.us.1, 16 ; 2 uses
  %i.gj = icmp samesign ult i64 %indvars.iv.next92.i.us.1, %i.i
  %indvars.iv.next79.1 = add i32 %indvars.iv78.1, -16
  br i1 %i.gj, label %.preheader71.i.us.1, label %compute_stereo_samples.exit.loopexit46.us.1

compute_stereo_samples.exit.loopexit46.us.1:      ; preds = %._crit_edge.i.us.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.gk = tail call i32 @llvm.smin.i32(i32 %0, i32 %2) ; 7 uses
  %i.gl = icmp sgt i32 %5, 0
  br i1 %i.gl, label %.preheader48.lr.ph, label %.loopexit

.preheader48.lr.ph:                               ; preds = %bb.c
  %i.gm = icmp sgt i32 %i.gk, 0
  br i1 %i.gm, label %.preheader48.us.preheader, label %.preheader48.lr.ph.split

.preheader48.us.preheader:                        ; preds = %.preheader48.lr.ph
  %i.gn = add nuw i32 %i.gk, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 %i.gn)
  %i.go = xor i32 %i.gk, -1
  %i.gp = add i32 %smax, %i.go
  %i.gq = zext i32 %i.gp to i64                   ; 2 uses
  %i.gr = shl nuw nsw i64 %i.gq, 1
  %i.gs = add nuw nsw i64 %i.gr, 2
  %i.gt = add nsw i32 %i.gk, -1
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = add nuw nsw i64 %i.gq, %i.gu
  %i.gw = shl nuw nsw i64 %i.gv, 1
  %i.gx = sext i32 %4 to i64                      ; 3 uses
  %wide.trip.count74 = zext nneg i32 %5 to i64
  %wide.trip.count = zext nneg i32 %i.gk to i64   ; 2 uses
  %i.gy = icmp slt i32 %2, %0
  %xtraiter = and i64 %wide.trip.count, 1
  %i.gz = icmp eq i32 %i.gk, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod164 = trunc i32 %i.gk to i1
  br label %.preheader48.us

.preheader48.us:                                  ; preds = %.preheader48.us.preheader, %._crit_edge.us
  %indvars.iv71 = phi i64 [ 0, %.preheader48.us.preheader ], [ %indvars.iv.next72, %._crit_edge.us ] ; 4 uses
  %.03957.us = phi ptr [ %1, %.preheader48.us.preheader ], [ %.241.lcssa.us, %._crit_edge.us ] ; 3 uses
  br i1 %i.gz, label %.epil.preheader, label %.preheader48.us.new

.preheader48.us.new:                              ; preds = %.preheader48.us, %.preheader48.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader48.us.new ], [ 0, %.preheader48.us ] ; 3 uses
  %.14050.us = phi ptr [ %i.hw, %.preheader48.us.new ], [ %.03957.us, %.preheader48.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader48.us.new ], [ 0, %.preheader48.us ]
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr [4 x i8], ptr %i.hb, i64 %indvars.iv71
  %i.hd = getelementptr [4 x i8], ptr %i.hc, i64 %i.gx
  %i.he = load float, ptr %i.hd, align 4
  %i.hf = fadd float %i.he, 3.840000e+02
  %i.hg = bitcast float %i.hf to i32
  %i.hh = tail call i32 @llvm.smax.i32(i32 %i.hg, i32 1136623616)
  %i.hi = tail call i32 @llvm.umin.i32(i32 %i.hh, i32 1136689151)
  %i.hj = trunc i32 %i.hi to i16
  %i.hk = getelementptr i8, ptr %.14050.us, i64 2
  store i16 %i.hj, ptr %.14050.us, align 2
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = getelementptr [4 x i8], ptr %i.hn, i64 %indvars.iv71
  %i.hp = getelementptr [4 x i8], ptr %i.ho, i64 %i.gx
  %i.hq = load float, ptr %i.hp, align 4
  %i.hr = fadd float %i.hq, 3.840000e+02
  %i.hs = bitcast float %i.hr to i32
  %i.ht = tail call i32 @llvm.smax.i32(i32 %i.hs, i32 1136623616)
  %i.hu = tail call i32 @llvm.umin.i32(i32 %i.ht, i32 1136689151)
  %i.hv = trunc i32 %i.hu to i16
  %i.hw = getelementptr i8, ptr %.14050.us, i64 4 ; 3 uses
  store i16 %i.hv, ptr %i.hk, align 2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader47_crit_edge.us.unr-lcssa, label %.preheader48.us.new

._crit_edge.us:                                   ; preds = %.lr.ph55.us.preheader, %..preheader47_crit_edge.us
  %.241.lcssa.us = phi ptr [ %.lcssa, %..preheader47_crit_edge.us ], [ %scevgep, %.lr.ph55.us.preheader ]
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %.loopexit, label %.preheader48.us

..preheader47_crit_edge.us.unr-lcssa:             ; preds = %.preheader48.us.new
  br i1 %lcmp.mod.not, label %..preheader47_crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader47_crit_edge.us.unr-lcssa, %.preheader48.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader48.us ], [ %indvars.iv.next.1, %..preheader47_crit_edge.us.unr-lcssa ]
  %.14050.us.epil.init = phi ptr [ %.03957.us, %.preheader48.us ], [ %i.hw, %..preheader47_crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = getelementptr [4 x i8], ptr %i.hy, i64 %indvars.iv71
  %i.ia = getelementptr [4 x i8], ptr %i.hz, i64 %i.gx
  %i.ib = load float, ptr %i.ia, align 4
  %i.ic = fadd float %i.ib, 3.840000e+02
  %i.id = bitcast float %i.ic to i32
  %i.ie = tail call i32 @llvm.smax.i32(i32 %i.id, i32 1136623616)
  %i.if = tail call i32 @llvm.umin.i32(i32 %i.ie, i32 1136689151)
  %i.ig = trunc i32 %i.if to i16
  %i.ih = getelementptr i8, ptr %.14050.us.epil.init, i64 2
  store i16 %i.ig, ptr %.14050.us.epil.init, align 2
  br label %..preheader47_crit_edge.us

..preheader47_crit_edge.us:                       ; preds = %..preheader47_crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi ptr [ %i.hw, %..preheader47_crit_edge.us.unr-lcssa ], [ %i.ih, %.epil.preheader ] ; 2 uses
  br i1 %i.gy, label %.lr.ph55.us.preheader, label %._crit_edge.us

.lr.ph55.us.preheader:                            ; preds = %..preheader47_crit_edge.us
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %.lcssa, i8 0, i64 %i.gs, i1 false)
  %i.ii = getelementptr i8, ptr %.03957.us, i64 %i.gw
  %scevgep = getelementptr i8, ptr %i.ii, i64 4
  br label %._crit_edge.us

.preheader48.lr.ph.split:                         ; preds = %.preheader48.lr.ph
  %i.ij = icmp sgt i32 %0, 0
  br i1 %i.ij, label %.preheader48.preheader, label %.loopexit

.preheader48.preheader:                           ; preds = %.preheader48.lr.ph.split
  %i.ik = zext nneg i32 %0 to i64
  %i.il = zext nneg i32 %5 to i64
  %i.im = mul nuw nsw i64 %i.il, %i.ik
  %i.in = shl nuw nsw i64 %i.im, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1, i8 0, i64 %i.in, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.us, %compute_stereo_samples.exit.loopexit46.us, %compute_stereo_samples.exit.loopexit46.us.1, %compute_stereo_samples.exit.loopexit.us.us, %.lr.ph, %.preheader48.preheader, %bb.c, %.preheader48.lr.ph.split, %.preheader
  ret void
}

; Function Attrs: nofree nounwind uwtable
define hidden i32 @stb_vorbis_get_samples_short_interleaved(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = sdiv i32 %3, %1                          ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1896 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1892 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %stb_vorbis_get_frame_float.exit, %bb.a
  %.031 = phi ptr [ %2, %bb.a ], [ %i.u, %stb_vorbis_get_frame_float.exit ] ; 2 uses
  %.030 = phi i32 [ 0, %bb.a ], [ %i.v, %stb_vorbis_get_frame_float.exit ] ; 5 uses
  %i.k = icmp slt i32 %.030, %i.d
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.e, align 8
  %i.m = load i32, ptr %i.f, align 4              ; 3 uses
  %i.n = sub nsw i32 %i.l, %i.m                   ; 2 uses
  %i.o = add nsw i32 %i.n, %.030
  %.not = icmp slt i32 %i.o, %i.d
  %i.p = sub nsw i32 %i.d, %.030
  %spec.select = select i1 %.not, i32 %i.n, i32 %i.p ; 5 uses
  %.not33 = icmp eq i32 %spec.select, 0
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.g, align 4
  tail call fastcc void @convert_channels_short_interleaved(i32 noundef %1, ptr noundef %.031, i32 noundef %i.q, ptr noundef nonnull %i.h, i32 noundef %i.m, i32 noundef %spec.select)
  %.pre = load i32, ptr %i.f, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %.pre, %bb.d ], [ %i.m, %bb.c ]
  %i.s = mul nsw i32 %spec.select, %1
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %.031, i64 %i.t
  %i.v = add nsw i32 %spec.select, %.030          ; 4 uses
  %i.w = add nsw i32 %i.r, %spec.select
  store i32 %i.w, ptr %i.f, align 4
  %i.x = icmp eq i32 %i.v, %i.d
  br i1 %i.x, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  %i.y = load i8, ptr %i.i, align 4
  %.not.i = icmp eq i8 %i.y, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 2, ptr %i.z, align 4
  br label %stb_vorbis_get_frame_float.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.aa = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b)
  %.not24.i = icmp eq i32 %i.aa, 0
  br i1 %.not24.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.e, align 8
  store i32 0, ptr %i.f, align 4
end_hunk_5
begin_hunk_6_@drmp3dec_decode_frame:bb.a
  %i.bvm = load i8, ptr %.0.i.2.i.i, align 1
  %i.bvn = zext i8 %i.bvm to i32
  br label %._crit_edge.i.2.i.i

._crit_edge.i.2.i.i:                              ; preds = %.lr.ph.i.preheader.2.i.i, %bb.fm
  %.020.lcssa.i.2.i.i = phi i32 [ %i.bvi, %bb.fm ], [ %i.bvn, %.lr.ph.i.preheader.2.i.i ]
  %.019.lcssa.i.2.i.i = phi i32 [ 0, %bb.fm ], [ %i.bvl, %.lr.ph.i.preheader.2.i.i ]
  %.018.lcssa.i.2.i.i = phi i32 [ %i.bve, %bb.fm ], [ %i.bvk, %.lr.ph.i.preheader.2.i.i ]
  %i.bvo = sub nuw nsw i32 8, %.018.lcssa.i.2.i.i
  %i.bvp = lshr i32 %.020.lcssa.i.2.i.i, %i.bvo
  %i.bvq = or i32 %i.bvp, %.019.lcssa.i.2.i.i
  %i.bvr = trunc nuw nsw i32 %i.bvq to i16
  br label %drmp3_bs_get_bits.exit.2.i.i

drmp3_bs_get_bits.exit.2.i.i:                     ; preds = %._crit_edge.i.2.i.i, %bb.fl
  %.021.i.2.i.i = phi i16 [ %i.bvr, %._crit_edge.i.2.i.i ], [ 0, %bb.fl ] ; 2 uses
  %i.bvs = urem i16 %.021.i.2.i.i, 3
  %.zext.i.i = zext nneg i16 %i.bvs to i32
  %i.bvt = add nsw i32 %i.bsn, %.zext.i.i
  %i.bvu = sext i32 %i.bvt to i64
  %i.bvv = getelementptr inbounds [4 x i8], ptr @drmp3_L12_read_scalefactors.g_deq_L12, i64 %i.bvu
  %i.bvw = load float, ptr %i.bvv, align 4
  %i.bvx = udiv i16 %.021.i.2.i.i, 3
  %.zext47.i.i = zext nneg i16 %i.bvx to i32
  %i.bvy = lshr i32 2097152, %.zext47.i.i
  %i.bvz = uitofp nneg i32 %i.bvy to float
  %i.bwa = fmul float %i.bvw, %i.bvz
  br label %bb.fn

bb.fn:                                            ; preds = %drmp3_bs_get_bits.exit.2.i.i, %bb.fk, %.thread43.i.i
  %.promoted323 = phi i32 [ %i.buy, %drmp3_bs_get_bits.exit.2.i.i ], [ %i.buw, %bb.fk ], [ %i.bse, %.thread43.i.i ] ; 2 uses
  %.1.2.i.i = phi float [ %i.bwa, %drmp3_bs_get_bits.exit.2.i.i ], [ %.1.1.i.i, %bb.fk ], [ 0.000000e+00, %.thread43.i.i ]
  %i.bwb = getelementptr inbounds nuw i8, ptr %.01928.i.i, i64 8
  %i.bwc = getelementptr inbounds nuw i8, ptr %.01928.i.i, i64 12
  store float %.1.2.i.i, ptr %i.bwb, align 4
  %indvars.iv.next.i.i175 = add nuw nsw i64 %indvars.iv.i.i174, 1 ; 2 uses
  %exitcond.not.i.i176 = icmp eq i64 %indvars.iv.next.i.i175, %i.boa
  br i1 %exitcond.not.i.i176, label %drmp3_L12_read_scalefactors.exit.i, label %.lr.ph.i81.i

drmp3_L12_read_scalefactors.exit.i:               ; preds = %bb.fn
  %.pre121.i = load i8, ptr %i.bnr, align 16      ; 7 uses
  %i.bwd = load i8, ptr %i.bnu, align 1           ; 3 uses
  %i.bwe = icmp ult i8 %i.bwd, %.pre121.i
  br i1 %i.bwe, label %.lr.ph104.preheader.i, label %drmp3_L12_read_scalefactors.exit.i.drmp3_L12_read_scale_info.exit_crit_edge

drmp3_L12_read_scalefactors.exit.i.drmp3_L12_read_scale_info.exit_crit_edge: ; preds = %drmp3_L12_read_scalefactors.exit.i
  %.pre420 = zext i8 %.pre121.i to i64
  br label %drmp3_L12_read_scale_info.exit

.lr.ph104.preheader.i:                            ; preds = %drmp3_L12_read_scalefactors.exit.i
  %i.bwf = zext i8 %i.bwd to i64                  ; 4 uses
  %wide.trip.count.i177 = zext i8 %.pre121.i to i64 ; 5 uses
  %i.bwg = sub nsw i64 %wide.trip.count.i177, %i.bwf
  %xtraiter = and i64 %i.bwg, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph104.i.prol.loopexit, label %.lr.ph104.i.prol

.lr.ph104.i.prol:                                 ; preds = %.lr.ph104.preheader.i, %.lr.ph104.i.prol
  %indvars.iv118.i.prol = phi i64 [ %indvars.iv.next119.i.prol, %.lr.ph104.i.prol ], [ %i.bwf, %.lr.ph104.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph104.i.prol ], [ 0, %.lr.ph104.preheader.i ]
  %i.bwh = shl nuw nsw i64 %indvars.iv118.i.prol, 1
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bnv, i64 %i.bwh
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwi, i64 1
  store i8 0, ptr %i.bwj, align 1
  %indvars.iv.next119.i.prol = add nuw nsw i64 %indvars.iv118.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph104.i.prol.loopexit, label %.lr.ph104.i.prol, !llvm.loop !1096

.lr.ph104.i.prol.loopexit:                        ; preds = %.lr.ph104.i.prol, %.lr.ph104.preheader.i
  %indvars.iv118.i.unr = phi i64 [ %i.bwf, %.lr.ph104.preheader.i ], [ %indvars.iv.next119.i.prol, %.lr.ph104.i.prol ]
  %i.bwk = sub nsw i64 %i.bwf, %wide.trip.count.i177
  %i.bwl = icmp ugt i64 %i.bwk, -8
  br i1 %i.bwl, label %drmp3_L12_read_scale_info.exit, label %.lr.ph104.i

.lr.ph104.i:                                      ; preds = %.lr.ph104.i.prol.loopexit, %.lr.ph104.i
  %indvars.iv118.i = phi i64 [ %indvars.iv.next119.i.7, %.lr.ph104.i ], [ %indvars.iv118.i.unr, %.lr.ph104.i.prol.loopexit ] ; 9 uses
  %i.bwm = shl nuw nsw i64 %indvars.iv118.i, 1
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bnv, i64 %i.bwm
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bwn, i64 1
  store i8 0, ptr %i.bwo, align 1
  %indvars.iv.next119.i = shl i64 %indvars.iv118.i, 1
  %i.bwp = getelementptr i8, ptr %i.bnv, i64 %indvars.iv.next119.i
  %i.bwq = getelementptr i8, ptr %i.bwp, i64 3
  store i8 0, ptr %i.bwq, align 1
  %indvars.iv.next119.i.1 = shl i64 %indvars.iv118.i, 1
  %i.bwr = getelementptr i8, ptr %i.bnv, i64 %indvars.iv.next119.i.1
  %i.bws = getelementptr i8, ptr %i.bwr, i64 5
  store i8 0, ptr %i.bws, align 1
  %indvars.iv.next119.i.2 = shl i64 %indvars.iv118.i, 1
  %i.bwt = getelementptr i8, ptr %i.bnv, i64 %indvars.iv.next119.i.2
  %i.bwu = getelementptr i8, ptr %i.bwt, i64 7
  store i8 0, ptr %i.bwu, align 1
  %indvars.iv.next119.i.3 = shl i64 %indvars.iv118.i, 1
  %i.bwv = getelementptr i8, ptr %i.bnv, i64 %indvars.iv.next119.i.3
  %i.bww = getelementptr i8, ptr %i.bwv, i64 9
  store i8 0, ptr %i.bww, align 1
  %indvars.iv.next119.i.4 = shl i64 %indvars.iv118.i, 1
  %i.bwx = getelementptr i8, ptr %i.bnv, i64 %indvars.iv.next119.i.4
  %i.bwy = getelementptr i8, ptr %i.bwx, i64 11
  store i8 0, ptr %i.bwy, align 1
  %indvars.iv.next119.i.5 = shl i64 %indvars.iv118.i, 1
  %i.bwz = getelementptr i8, ptr %i.bnv, i64 %indvars.iv.next119.i.5
  %i.bxa = getelementptr i8, ptr %i.bwz, i64 13
  store i8 0, ptr %i.bxa, align 1
  %indvars.iv.next119.i.6 = shl i64 %indvars.iv118.i, 1
  %i.bxb = getelementptr i8, ptr %i.bnv, i64 %indvars.iv.next119.i.6
  %i.bxc = getelementptr i8, ptr %i.bxb, i64 15
  store i8 0, ptr %i.bxc, align 1
  %indvars.iv.next119.i.7 = add nuw nsw i64 %indvars.iv118.i, 8 ; 2 uses
  %exitcond.not.i178.7 = icmp eq i64 %indvars.iv.next119.i.7, %wide.trip.count.i177
  br i1 %exitcond.not.i178.7, label %drmp3_L12_read_scale_info.exit, label %.lr.ph104.i

drmp3_L12_read_scale_info.exit:                   ; preds = %.lr.ph104.i.prol.loopexit, %.lr.ph104.i, %drmp3_L12_read_scalefactors.exit.i.drmp3_L12_read_scale_info.exit_crit_edge
  %.pre-phi421 = phi i64 [ %.pre420, %drmp3_L12_read_scalefactors.exit.i.drmp3_L12_read_scale_info.exit_crit_edge ], [ %wide.trip.count.i177, %.lr.ph104.i ], [ %wide.trip.count.i177, %.lr.ph104.i.prol.loopexit ]
  %i.bxd = getelementptr inbounds nuw i8, ptr %0, i64 9632 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4608) %i.bxd, i8 0, i64 4608, i1 false)
  %i.bxe = shl nuw nsw i64 %.pre-phi421, 1
  %i.bxf = getelementptr inbounds nuw i8, ptr %0, i64 11936
  %i.bxg = zext i8 %i.bwd to i32                  ; 2 uses
  %i.bxh = mul nuw nsw i32 %i.bxg, 18
  %i.bxi = zext nneg i32 %i.bxh to i64            ; 2 uses
  %i.bxj = getelementptr inbounds nuw [4 x i8], ptr %i.bxf, i64 %i.bxi
  %i.bxk = getelementptr inbounds nuw [4 x i8], ptr %i.bxd, i64 %i.bxi
  %i.bxl = zext i8 %.pre121.i to i32              ; 2 uses
  %i.bxm = sub nsw i32 %i.bxl, %i.bxg
  %i.bxn = mul nsw i32 %i.bxm, 18
  %i.bxo = sext i32 %i.bxn to i64
  %i.bxp = shl nsw i64 %i.bxo, 2
  %.not.i205 = icmp eq i8 %.pre121.i, 0
  %i.bxq = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.bxr = getelementptr inbounds nuw i8, ptr %0, i64 14400
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bxe, i64 1)
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fx
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond416.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond416.not, label %bb.fz, label %bb.fp

bb.fp:                                            ; preds = %drmp3_L12_read_scale_info.exit, %bb.fo
  %indvars.iv = phi i64 [ 0, %drmp3_L12_read_scale_info.exit ], [ %indvars.iv.next, %bb.fo ] ; 2 uses
  %.196327 = phi i32 [ 0, %drmp3_L12_read_scale_info.exit ], [ %.2, %bb.fo ] ; 2 uses
  %.1101326 = phi ptr [ %3, %drmp3_L12_read_scale_info.exit ], [ %.2102, %bb.fo ] ; 3 uses
  %.lcssa316318.lcssa321.lcssa324325 = phi i32 [ %.promoted323, %drmp3_L12_read_scale_info.exit ], [ %.lcssa316318.lcssa321, %bb.fo ]
  %i.bxs = sext i32 %.196327 to i64
  %i.bxt = getelementptr inbounds [4 x i8], ptr %i.bxd, i64 %i.bxs
  %i.bxu = load i32, ptr %i.lk, align 4           ; 3 uses
  %i.bxv = or i32 %i.bxu, 1                       ; 3 uses
  %i.bxw = icmp sgt i32 %i.bxu, -1                ; 2 uses
  %i.bxx = sext i32 %i.bxv to i64
  %wide.trip.count.i185 = zext i32 %i.bxv to i64  ; 2 uses
  %i.bxy = icmp ult i32 %i.bxu, 2
  %i.bxz = add nsw i64 %wide.trip.count.i185, -3
  br label %bb.fq

bb.fq:                                            ; preds = %._crit_edge.i187, %bb.fp
  %.lcssa316318.lcssa322 = phi i32 [ %.lcssa316318.lcssa321.lcssa324325, %bb.fp ], [ %.lcssa316318.lcssa321, %._crit_edge.i187 ] ; 2 uses
  %i.bya = phi i8 [ %.pre121.i, %bb.fp ], [ %i.cba, %._crit_edge.i187 ]
  %indvars.iv92.i = phi i64 [ 0, %bb.fp ], [ %indvars.iv.next93.i, %._crit_edge.i187 ] ; 2 uses
  %.03974.i = phi i32 [ 576, %bb.fp ], [ %.1.lcssa.i, %._crit_edge.i187 ] ; 2 uses
  %.not75.i = icmp eq i8 %i.bya, 0
  br i1 %.not75.i, label %._crit_edge.i187, label %.lr.ph72.preheader.i

.lr.ph72.preheader.i:                             ; preds = %bb.fq
  %i.byb = mul nsw i64 %indvars.iv92.i, %i.bxx
  %i.byc = getelementptr inbounds [4 x i8], ptr %i.bxt, i64 %i.byb
  br label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %.loopexit.i, %.lr.ph72.preheader.i
  %.lcssa316319 = phi i32 [ %.lcssa316318.lcssa322, %.lr.ph72.preheader.i ], [ %.lcssa316318, %.loopexit.i ] ; 6 uses
  %indvars.iv89.i = phi i64 [ 0, %.lr.ph72.preheader.i ], [ %indvars.iv.next90.i, %.loopexit.i ] ; 2 uses
  %.03870.i = phi ptr [ %i.byc, %.lr.ph72.preheader.i ], [ %i.cay, %.loopexit.i ] ; 5 uses
  %.169.i = phi i32 [ %.03974.i, %.lr.ph72.preheader.i ], [ %i.caz, %.loopexit.i ] ; 2 uses
  %i.byd = getelementptr inbounds nuw i8, ptr %i.bnv, i64 %indvars.iv89.i
  %i.bye = load i8, ptr %i.byd, align 1           ; 3 uses
  %i.byf = zext i8 %i.bye to i32                  ; 4 uses
  %.not.i186 = icmp eq i8 %i.bye, 0
  br i1 %.not.i186, label %.loopexit.i, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph72.i
  %i.byg = icmp ult i8 %i.bye, 17
  br i1 %i.byg, label %bb.fs, label %bb.fu

bb.fs:                                            ; preds = %bb.fr
  %i.byh = add nsw i32 %i.byf, -1
  %notmask.i = shl nsw i32 -1, %i.byh
  %.neg.i192 = add nsw i32 %notmask.i, 1
  br i1 %i.bxw, label %.lr.ph67.i, label %.loopexit.i

.lr.ph67.i:                                       ; preds = %bb.fs, %drmp3_bs_get_bits.exit.i197
  %i.byi = phi i32 [ %i.byj, %drmp3_bs_get_bits.exit.i197 ], [ %.lcssa316319, %bb.fs ] ; 3 uses
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %drmp3_bs_get_bits.exit.i197 ], [ 0, %bb.fs ] ; 2 uses
  %i.byj = add nsw i32 %i.byi, %i.byf             ; 3 uses
  %i.byk = icmp sgt i32 %i.byj, %i.me
  br i1 %i.byk, label %drmp3_bs_get_bits.exit.i197, label %bb.ft

bb.ft:                                            ; preds = %.lr.ph67.i
  %i.byl = ashr i32 %i.byi, 3
  %i.bym = sext i32 %i.byl to i64
  %i.byn = getelementptr inbounds i8, ptr %i.mb, i64 %i.bym ; 2 uses
  %i.byo = and i32 %i.byi, 7                      ; 2 uses
  %i.byp = add nuw nsw i32 %i.byo, %i.byf         ; 3 uses
  %i.byq = load i8, ptr %i.byn, align 1
  %i.byr = zext i8 %i.byq to i32
  %i.bys = lshr i32 255, %i.byo
  %i.byt = and i32 %i.bys, %i.byr                 ; 2 uses
  %i.byu = icmp samesign ugt i32 %i.byp, 8
  br i1 %i.byu, label %.lr.ph.i.i199, label %._crit_edge.i.i193

.lr.ph.i.i199:                                    ; preds = %bb.ft, %.lr.ph.i.i199
  %.pn26.i.i200 = phi ptr [ %.0.i.i204, %.lr.ph.i.i199 ], [ %i.byn, %bb.ft ]
  %.01825.i.i201 = phi i32 [ %i.byv, %.lr.ph.i.i199 ], [ %i.byp, %bb.ft ] ; 2 uses
  %.01924.i.i202 = phi i32 [ %7, %.lr.ph.i.i199 ], [ 0, %bb.ft ]
  %.02023.i.i203 = phi i32 [ %i.byy, %.lr.ph.i.i199 ], [ %i.byt, %bb.ft ]
  %.0.i.i204 = getelementptr inbounds nuw i8, ptr %.pn26.i.i200, i64 1 ; 2 uses
  %i.byv = add nsw i32 %.01825.i.i201, -8         ; 3 uses
  %i.byw = shl i32 %.02023.i.i203, %i.byv
  %7 = or i32 %i.byw, %.01924.i.i202              ; 2 uses
  %i.byx = load i8, ptr %.0.i.i204, align 1
  %i.byy = zext i8 %i.byx to i32                  ; 2 uses
  %i.byz = icmp samesign ugt i32 %.01825.i.i201, 16
  br i1 %i.byz, label %.lr.ph.i.i199, label %._crit_edge.i.i193

._crit_edge.i.i193:                               ; preds = %.lr.ph.i.i199, %bb.ft
  %.020.lcssa.i.i194 = phi i32 [ %i.byt, %bb.ft ], [ %i.byy, %.lr.ph.i.i199 ]
  %.019.lcssa.i.i195 = phi i32 [ 0, %bb.ft ], [ %7, %.lr.ph.i.i199 ]
  %.018.lcssa.i.i196 = phi i32 [ %i.byp, %bb.ft ], [ %i.byv, %.lr.ph.i.i199 ]
  %i.bza = sub nuw nsw i32 8, %.018.lcssa.i.i196
  %i.bzb = lshr i32 %.020.lcssa.i.i194, %i.bza
  %i.bzc = or i32 %i.bzb, %.019.lcssa.i.i195
  br label %drmp3_bs_get_bits.exit.i197

drmp3_bs_get_bits.exit.i197:                      ; preds = %._crit_edge.i.i193, %.lr.ph67.i
  %.021.i.i198 = phi i32 [ %i.bzc, %._crit_edge.i.i193 ], [ 0, %.lr.ph67.i ]
  %i.bzd = add i32 %.neg.i192, %.021.i.i198
  %i.bze = sitofp i32 %i.bzd to float
  %i.bzf = getelementptr inbounds nuw [4 x i8], ptr %.03870.i, i64 %indvars.iv84.i
  store float %i.bze, ptr %i.bzf, align 4
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %exitcond88.not.i = icmp eq i64 %indvars.iv.next85.i, %wide.trip.count.i185
  br i1 %exitcond88.not.i, label %.loopexit.i, label %.lr.ph67.i

bb.fu:                                            ; preds = %bb.fr
  %i.bzg = add nsw i32 %i.byf, -17
  %i.bzh = shl i32 2, %i.bzg                      ; 4 uses
  %i.bzi = or disjoint i32 %i.bzh, 1              ; 5 uses
  %i.bzj = add nuw i32 %i.bzh, 3
  %i.bzk = lshr i32 %i.bzh, 3
  %i.bzl = sub i32 %i.bzj, %i.bzk                 ; 2 uses
  %i.bzm = add nsw i32 %.lcssa316319, %i.bzl      ; 3 uses
  %i.bzn = icmp sgt i32 %i.bzm, %i.me
  br i1 %i.bzn, label %drmp3_bs_get_bits.exit56.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.bzo = ashr i32 %.lcssa316319, 3
  %i.bzp = sext i32 %i.bzo to i64
  %i.bzq = getelementptr inbounds i8, ptr %i.mb, i64 %i.bzp ; 2 uses
  %i.bzr = and i32 %.lcssa316319, 7               ; 2 uses
  %i.bzs = add i32 %i.bzr, %i.bzl                 ; 3 uses
  %i.bzt = load i8, ptr %i.bzq, align 1
  %i.bzu = zext i8 %i.bzt to i32
  %i.bzv = lshr i32 255, %i.bzr
  %i.bzw = and i32 %i.bzv, %i.bzu                 ; 2 uses
  %i.bzx = icmp sgt i32 %i.bzs, 8
  br i1 %i.bzx, label %.lr.ph.i50.i, label %._crit_edge.i45.i

.lr.ph.i50.i:                                     ; preds = %bb.fv, %.lr.ph.i50.i
  %.pn26.i51.i = phi ptr [ %.0.i55.i, %.lr.ph.i50.i ], [ %i.bzq, %bb.fv ]
  %.01825.i52.i = phi i32 [ %i.bzy, %.lr.ph.i50.i ], [ %i.bzs, %bb.fv ] ; 2 uses
  %.01924.i53.i = phi i32 [ %i.caa, %.lr.ph.i50.i ], [ 0, %bb.fv ]
  %.02023.i54.i = phi i32 [ %i.cac, %.lr.ph.i50.i ], [ %i.bzw, %bb.fv ]
  %.0.i55.i = getelementptr inbounds nuw i8, ptr %.pn26.i51.i, i64 1 ; 2 uses
  %i.bzy = add nsw i32 %.01825.i52.i, -8          ; 3 uses
  %i.bzz = shl i32 %.02023.i54.i, %i.bzy
  %i.caa = or i32 %i.bzz, %.01924.i53.i           ; 2 uses
  %i.cab = load i8, ptr %.0.i55.i, align 1
  %i.cac = zext i8 %i.cab to i32                  ; 2 uses
  %i.cad = icmp samesign ugt i32 %.01825.i52.i, 16
  br i1 %i.cad, label %.lr.ph.i50.i, label %._crit_edge.i45.i

._crit_edge.i45.i:                                ; preds = %.lr.ph.i50.i, %bb.fv
  %.020.lcssa.i46.i = phi i32 [ %i.bzw, %bb.fv ], [ %i.cac, %.lr.ph.i50.i ]
  %.019.lcssa.i47.i = phi i32 [ 0, %bb.fv ], [ %i.caa, %.lr.ph.i50.i ]
  %.018.lcssa.i48.i = phi i32 [ %i.bzs, %bb.fv ], [ %i.bzy, %.lr.ph.i50.i ]
  %i.cae = sub nsw i32 8, %.018.lcssa.i48.i
  %i.caf = lshr i32 %.020.lcssa.i46.i, %i.cae
  %i.cag = or i32 %i.caf, %.019.lcssa.i47.i
  br label %drmp3_bs_get_bits.exit56.i

drmp3_bs_get_bits.exit56.i:                       ; preds = %._crit_edge.i45.i, %bb.fu
  %.021.i49.i = phi i32 [ %i.cag, %._crit_edge.i45.i ], [ 0, %bb.fu ] ; 2 uses
  br i1 %i.bxw, label %.lr.ph.i188, label %.loopexit.i

.lr.ph.i188:                                      ; preds = %drmp3_bs_get_bits.exit56.i
  %i.cah = lshr exact i32 %i.bzh, 1               ; 3 uses
  br i1 %i.bxy, label %.loopexit.i.loopexit740.epilog-lcssa, label %.lr.ph.i188.new

.lr.ph.i188.new:                                  ; preds = %.lr.ph.i188, %.lr.ph.i188.new
  %indvars.iv.i189 = phi i64 [ %indvars.iv.next.i190.1, %.lr.ph.i188.new ], [ 0, %.lr.ph.i188 ] ; 3 uses
  %.065.i = phi i32 [ %i.cas, %.lr.ph.i188.new ], [ %.021.i49.i, %.lr.ph.i188 ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i188.new ], [ 0, %.lr.ph.i188 ] ; 2 uses
  %i.cai = urem i32 %.065.i, %i.bzi
  %i.caj = sub i32 %i.cai, %i.cah
  %i.cak = sitofp i32 %i.caj to float
  %i.cal = getelementptr inbounds nuw [4 x i8], ptr %.03870.i, i64 %indvars.iv.i189
  store float %i.cak, ptr %i.cal, align 4
  %i.cam = udiv i32 %.065.i, %i.bzi               ; 2 uses
  %i.can = urem i32 %i.cam, %i.bzi
  %i.cao = sub i32 %i.can, %i.cah
  %i.cap = sitofp i32 %i.cao to float
  %i.caq = getelementptr inbounds nuw [4 x i8], ptr %.03870.i, i64 %indvars.iv.i189
  %i.car = getelementptr inbounds nuw i8, ptr %i.caq, i64 4
  store float %i.cap, ptr %i.car, align 4
  %indvars.iv.next.i190.1 = add nuw nsw i64 %indvars.iv.i189, 2 ; 2 uses
  %i.cas = udiv i32 %i.cam, %i.bzi                ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.bxz
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit740.epilog-lcssa, label %.lr.ph.i188.new

.loopexit.i.loopexit740.epilog-lcssa:             ; preds = %.lr.ph.i188, %.lr.ph.i188.new
  %indvars.iv.i189.epil.init = phi i64 [ 0, %.lr.ph.i188 ], [ %indvars.iv.next.i190.1, %.lr.ph.i188.new ]
  %.065.i.epil.init = phi i32 [ %.021.i49.i, %.lr.ph.i188 ], [ %i.cas, %.lr.ph.i188.new ]
  %i.cat = urem i32 %.065.i.epil.init, %i.bzi
  %i.cau = sub i32 %i.cat, %i.cah
  %i.cav = sitofp i32 %i.cau to float
  %i.caw = getelementptr inbounds nuw [4 x i8], ptr %.03870.i, i64 %indvars.iv.i189.epil.init
  store float %i.cav, ptr %i.caw, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %drmp3_bs_get_bits.exit.i197, %.loopexit.i.loopexit740.epilog-lcssa, %drmp3_bs_get_bits.exit56.i, %bb.fs, %.lr.ph72.i
  %.lcssa316318 = phi i32 [ %i.bzm, %.loopexit.i.loopexit740.epilog-lcssa ], [ %.lcssa316319, %.lr.ph72.i ], [ %i.bzm, %drmp3_bs_get_bits.exit56.i ], [ %.lcssa316319, %bb.fs ], [ %i.byj, %drmp3_bs_get_bits.exit.i197 ] ; 2 uses
  %i.cax = sext i32 %.169.i to i64
  %i.cay = getelementptr inbounds [4 x i8], ptr %.03870.i, i64 %i.cax
  %i.caz = sub nsw i32 18, %.169.i                ; 2 uses
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %exitcond414.not = icmp eq i64 %indvars.iv.next90.i, %umax
  br i1 %exitcond414.not, label %._crit_edge.i187, label %.lr.ph72.i

._crit_edge.i187:                                 ; preds = %.loopexit.i, %bb.fq
  %.lcssa316318.lcssa321 = phi i32 [ %.lcssa316318.lcssa322, %bb.fq ], [ %.lcssa316318, %.loopexit.i ] ; 3 uses
  %i.cba = phi i8 [ 0, %bb.fq ], [ %.pre121.i, %.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.03974.i, %bb.fq ], [ %i.caz, %.loopexit.i ]
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %exitcond95.not.i = icmp eq i64 %indvars.iv.next93.i, 4
  br i1 %exitcond95.not.i, label %drmp3_L12_dequantize_granule.exit, label %bb.fq

drmp3_L12_dequantize_granule.exit:                ; preds = %._crit_edge.i187
  %i.cbb = shl nsw i32 %i.bxv, 2
  %i.cbc = add nsw i32 %i.cbb, %.196327           ; 2 uses
  %i.cbd = icmp eq i32 %i.cbc, 12
  br i1 %i.cbd, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %drmp3_L12_dequantize_granule.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bxj, ptr nonnull align 4 %i.bxk, i64 %i.bxp, i1 false)
  br i1 %.not.i205, label %drmp3_L12_apply_scf_384.exit, label %.preheader.i206.preheader

.preheader.i206.preheader:                        ; preds = %bb.fw
  %i.cbe = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  br label %.preheader.i206

.preheader.i206:                                  ; preds = %.preheader.i206.preheader, %.preheader.i206
  %.0184.i = phi i32 [ %i.ccd, %.preheader.i206 ], [ 0, %.preheader.i206.preheader ]
  %.0193.i = phi ptr [ %i.cce, %.preheader.i206 ], [ %i.bxd, %.preheader.i206.preheader ] ; 8 uses
  %.0202.i = phi ptr [ %i.ccf, %.preheader.i206 ], [ %i.cbe, %.preheader.i206.preheader ] ; 3 uses
  %i.cbf = getelementptr inbounds nuw i8, ptr %.0202.i, i64 12
  %i.cbg = load float, ptr %.0202.i, align 4
  %i.cbh = load float, ptr %i.cbf, align 4
  %i.cbi = getelementptr inbounds nuw i8, ptr %.0193.i, i64 2304 ; 2 uses
  %i.cbj = load <4 x float>, ptr %.0193.i, align 4
  %i.cbk = insertelement <4 x float> poison, float %i.cbg, i64 0
  %i.cbl = shufflevector <4 x float> %i.cbk, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cbm = fmul <4 x float> %i.cbl, %i.cbj
  store <4 x float> %i.cbm, ptr %.0193.i, align 4
  %i.cbn = load <4 x float>, ptr %i.cbi, align 4
  %i.cbo = insertelement <4 x float> poison, float %i.cbh, i64 0
  %i.cbp = shufflevector <4 x float> %i.cbo, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cbq = fmul <4 x float> %i.cbp, %i.cbn
  store <4 x float> %i.cbq, ptr %i.cbi, align 4
  %i.cbr = getelementptr inbounds nuw i8, ptr %.0193.i, i64 16 ; 2 uses
  %i.cbs = getelementptr inbounds nuw i8, ptr %.0193.i, i64 2320 ; 2 uses
  %i.cbt = load <4 x float>, ptr %i.cbr, align 4
  %i.cbu = fmul <4 x float> %i.cbl, %i.cbt
  store <4 x float> %i.cbu, ptr %i.cbr, align 4
  %i.cbv = load <4 x float>, ptr %i.cbs, align 4
  %i.cbw = fmul <4 x float> %i.cbp, %i.cbv
  store <4 x float> %i.cbw, ptr %i.cbs, align 4
  %i.cbx = getelementptr inbounds nuw i8, ptr %.0193.i, i64 32 ; 2 uses
  %i.cby = getelementptr inbounds nuw i8, ptr %.0193.i, i64 2336 ; 2 uses
  %i.cbz = load <4 x float>, ptr %i.cbx, align 4
  %i.cca = fmul <4 x float> %i.cbl, %i.cbz
  store <4 x float> %i.cca, ptr %i.cbx, align 4
  %i.ccb = load <4 x float>, ptr %i.cby, align 4
  %i.ccc = fmul <4 x float> %i.cbp, %i.ccb
  store <4 x float> %i.ccc, ptr %i.cby, align 4
  %i.ccd = add nuw nsw i32 %.0184.i, 1            ; 2 uses
  %i.cce = getelementptr inbounds nuw i8, ptr %.0193.i, i64 72
  %i.ccf = getelementptr inbounds nuw i8, ptr %.0202.i, i64 24
  %exitcond.not.i207 = icmp eq i32 %i.ccd, %i.bxl
  br i1 %exitcond.not.i207, label %drmp3_L12_apply_scf_384.exit, label %.preheader.i206

drmp3_L12_apply_scf_384.exit:                     ; preds = %.preheader.i206, %bb.fw
  %i.ccg = load i32, ptr %i.kq, align 4
  tail call fastcc void @drmp3d_synth_granule(ptr noundef nonnull %i.bxq, ptr noundef nonnull %i.bxd, i32 noundef 12, i32 noundef %i.ccg, ptr noundef %.1101326, ptr noundef nonnull %i.bxr)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4608) %i.bxd, i8 0, i64 4608, i1 false)
  %i.cch = load i32, ptr %i.kq, align 4
  %i.cci = sext i32 %i.cch to i64
  %i.ccj = mul nsw i64 %i.cci, 768
  %i.cck = getelementptr inbounds nuw i8, ptr %.1101326, i64 %i.ccj
  br label %bb.fx

bb.fx:                                            ; preds = %drmp3_L12_apply_scf_384.exit, %drmp3_L12_dequantize_granule.exit
  %.2102 = phi ptr [ %i.cck, %drmp3_L12_apply_scf_384.exit ], [ %.1101326, %drmp3_L12_dequantize_granule.exit ]
  %.2 = phi i32 [ 0, %drmp3_L12_apply_scf_384.exit ], [ %i.cbc, %drmp3_L12_dequantize_granule.exit ]
  %i.ccl = icmp sgt i32 %.lcssa316318.lcssa321, %i.me
  br i1 %i.ccl, label %bb.fy, label %bb.fo

bb.fy:                                            ; preds = %bb.fx
  store i8 0, ptr %i.d, align 8
  br label %.thread228

.thread228:                                       ; preds = %bb.ep, %bb.fy
  %.198.ph = phi i32 [ 0, %bb.fy ], [ %i.bmi, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #61
  br label %bb.gb

bb.fz:                                            ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #61
end_hunk_6
