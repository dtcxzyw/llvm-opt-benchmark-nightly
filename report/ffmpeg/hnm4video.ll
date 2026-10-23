Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hnm4video?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@hnm_decode_frame:bb.a
  %.pre.i93 = ptrtoint ptr %i.ld to i64
  br label %bytestream2_get_byte.exit90.i

bytestream2_get_byte.exit90.i:                    ; preds = %bb.at, %bb.as
  %.pre-phi.i94 = phi i64 [ %i.kd, %bb.as ], [ %.pre.i93, %bb.at ]
  %.sroa.0.4.i95 = phi ptr [ %i.kb, %bb.as ], [ %i.ld, %bb.at ] ; 2 uses
  %.0.i89.i = phi i8 [ 0, %bb.as ], [ %i.le, %bb.at ]
  %i.lf = load ptr, ptr %i.kh, align 8, !tbaa !36
  %i.lg = zext i32 %.076146.i to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lg
  store i8 %.0.i89.i, ptr %i.lh, align 1, !tbaa !30
  %i.li = sub i64 %i.kd, %.pre-phi.i94
  %i.lj = icmp slt i64 %i.li, 1
  br i1 %i.lj, label %bytestream2_get_byte.exit.i96, label %bb.au

bb.au:                                            ; preds = %bytestream2_get_byte.exit90.i
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.4.i95, i64 1
  %i.ll = load i8, ptr %.sroa.0.4.i95, align 1, !tbaa !30
  br label %bytestream2_get_byte.exit.i96

bytestream2_get_byte.exit.i96:                    ; preds = %bb.au, %bytestream2_get_byte.exit90.i
  %.sroa.0.3.i97 = phi ptr [ %i.lk, %bb.au ], [ %i.kb, %bytestream2_get_byte.exit90.i ]
  %.0.i.i = phi i8 [ %i.ll, %bb.au ], [ 0, %bytestream2_get_byte.exit90.i ]
  %i.lm = load ptr, ptr %i.kh, align 8, !tbaa !36
  %i.ln = load i32, ptr %i.ke, align 4, !tbaa !33
  %i.lo = add i32 %i.ln, %.076146.i
  %i.lp = zext i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.lp
  store i8 %.0.i.i, ptr %i.lq, align 1, !tbaa !30
  br label %bytestream2_get_byte.exit92.i

bb.av:                                            ; preds = %bytestream2_get_byte.exit94.i
  %i.lr = load i32, ptr %i.ke, align 4, !tbaa !33
  br label %bytestream2_get_byte.exit92.i

bytestream2_get_byte.exit92.i:                    ; preds = %bb.av, %bytestream2_get_byte.exit.i96, %bb.aq, %bytestream2_get_byte.exit94.thread.i
  %.sroa.0.1.i92 = phi ptr [ %i.kp, %bb.av ], [ %.sroa.0.3.i97, %bytestream2_get_byte.exit.i96 ], [ %i.kt, %bb.aq ], [ %i.kb, %bytestream2_get_byte.exit94.thread.i ]
  %.pn.i = phi i32 [ %i.lr, %bb.av ], [ 1, %bytestream2_get_byte.exit.i96 ], [ %i.kv, %bb.aq ], [ 0, %bytestream2_get_byte.exit94.thread.i ]
  %.177.i = add i32 %.pn.i, %.076146.i            ; 2 uses
  %i.ls = load i32, ptr %i.ke, align 4, !tbaa !33
  %i.lt = load i32, ptr %i.kf, align 8, !tbaa !34
  %i.lu = mul nsw i32 %i.lt, %i.ls
  %i.lv = icmp ugt i32 %.177.i, %i.lu
  br i1 %i.lv, label %.loopexit134.sink.split.i, label %.loopexit.i89

bytestream2_peek_byte.exit.i:                     ; preds = %bytestream2_peek_byte.exit100.i
  %i.lw = ptrtoint ptr %i.kp to i64
  %i.lx = sub i64 %i.kd, %i.lw
  %i.ly = icmp slt i64 %i.lx, 2
  br i1 %i.ly, label %bytestream2_get_le16.exit.i85, label %bb.aw

bb.aw:                                            ; preds = %bytestream2_peek_byte.exit.i
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0.0145.i, i64 3
  %i.ma = load i16, ptr %i.kp, align 1, !tbaa !30
  %i.mb = zext i16 %i.ma to i32
  br label %bytestream2_get_le16.exit.i85

bytestream2_get_le16.exit.i85:                    ; preds = %bb.aw, %bytestream2_peek_byte.exit.i
  %.sroa.0.7.i = phi ptr [ %i.lz, %bb.aw ], [ %i.kb, %bytestream2_peek_byte.exit.i ] ; 2 uses
  %.0.i95.i = phi i32 [ %i.mb, %bb.aw ], [ 0, %bytestream2_peek_byte.exit.i ]
  %i.mc = add i32 %.0.i95.i, %.076146.i           ; 3 uses
  %.not.i86 = icmp sgt i8 %i.kl, -1
  br i1 %.not.i86, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bytestream2_get_le16.exit.i85
  %i.md = icmp ult i32 %i.mc, 65536
  br i1 %i.md, label %.loopexit134.sink.split.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.me = add i32 %i.mc, -65536
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bytestream2_get_le16.exit.i85
  %.074.i = phi i32 [ %i.me, %bb.ay ], [ %i.mc, %bytestream2_get_le16.exit.i85 ] ; 3 uses
  %i.mf = load i32, ptr %i.ke, align 4, !tbaa !33 ; 3 uses
  %i.mg = add i32 %i.mf, %i.kn
  %i.mh = add i32 %i.mg, %.074.i
  %i.mi = load i32, ptr %i.kf, align 8, !tbaa !34
  %i.mj = mul nsw i32 %i.mi, %i.mf                ; 2 uses
  %.not83.i = icmp ult i32 %i.mh, %i.mj
  br i1 %.not83.i, label %bb.ba, label %.loopexit134.sink.split.i

bb.ba:                                            ; preds = %bb.az
  %i.mk = add i32 %.076146.i, %i.kn
  %i.ml = add i32 %i.mk, %i.mf
  %.not84.i = icmp ult i32 %i.ml, %i.mj
  br i1 %.not84.i, label %bb.bb, label %.loopexit134.sink.split.i

bb.bb:                                            ; preds = %bb.ba
  %i.mm = and i8 %i.kl, 64
  %.not85.i = icmp eq i8 %i.mm, 0
  br i1 %.not85.i, label %.lr.ph143.i, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %bb.bb, %.lr.ph.i88
  %.0138.i = phi i8 [ %i.ng, %.lr.ph.i88 ], [ %i.km, %bb.bb ]
  %.175137.i = phi i32 [ %i.nf, %.lr.ph.i88 ], [ %.074.i, %bb.bb ] ; 3 uses
  %.278136.i = phi i32 [ %i.ne, %.lr.ph.i88 ], [ %.076146.i, %bb.bb ] ; 3 uses
  %i.mn = load ptr, ptr %i.kg, align 8, !tbaa !37
  %i.mo = zext i32 %.175137.i to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !30
  %i.mr = load ptr, ptr %i.kh, align 8, !tbaa !36
  %i.ms = zext i32 %.278136.i to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.ms
  store i8 %i.mq, ptr %i.mt, align 1, !tbaa !30
  %i.mu = load ptr, ptr %i.kg, align 8, !tbaa !37
  %i.mv = load i32, ptr %i.ke, align 4, !tbaa !33 ; 2 uses
  %i.mw = add i32 %i.mv, %.175137.i
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !30
  %i.na = load ptr, ptr %i.kh, align 8, !tbaa !36
  %i.nb = add i32 %i.mv, %.278136.i
  %i.nc = zext i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nc
  store i8 %i.mz, ptr %i.nd, align 1, !tbaa !30
  %i.ne = add i32 %.278136.i, 1                   ; 2 uses
  %i.nf = add i32 %.175137.i, 1
  %i.ng = add nsw i8 %.0138.i, -1                 ; 2 uses
  %.not87.i = icmp eq i8 %i.ng, 0
  br i1 %.not87.i, label %.loopexit.i89, label %.lr.ph.i88, !llvm.loop !55

.lr.ph143.i:                                      ; preds = %bb.bb, %.lr.ph143.i
  %.1142.i = phi i8 [ %i.ny, %.lr.ph143.i ], [ %i.km, %bb.bb ]
  %.2141.i = phi i32 [ %i.nx, %.lr.ph143.i ], [ %.074.i, %bb.bb ] ; 3 uses
  %.3140.i = phi i32 [ %i.nw, %.lr.ph143.i ], [ %.076146.i, %bb.bb ] ; 3 uses
  %i.nh = load ptr, ptr %i.kh, align 8, !tbaa !36 ; 2 uses
  %i.ni = zext i32 %.2141.i to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !30
  %i.nl = zext i32 %.3140.i to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.nl
  store i8 %i.nk, ptr %i.nm, align 1, !tbaa !30
  %i.nn = load ptr, ptr %i.kh, align 8, !tbaa !36 ; 2 uses
  %i.no = load i32, ptr %i.ke, align 4, !tbaa !33 ; 2 uses
  %i.np = add i32 %i.no, %.2141.i
  %i.nq = zext i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !30
  %i.nt = add i32 %i.no, %.3140.i
  %i.nu = zext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nu
  store i8 %i.ns, ptr %i.nv, align 1, !tbaa !30
  %i.nw = add i32 %.3140.i, 1                     ; 2 uses
  %i.nx = add i32 %.2141.i, 1
  %i.ny = add nsw i8 %.1142.i, -1                 ; 2 uses
  %.not86.i = icmp eq i8 %i.ny, 0
  br i1 %.not86.i, label %.loopexit.i89, label %.lr.ph143.i, !llvm.loop !56

.loopexit.i89:                                    ; preds = %.lr.ph.i88, %.lr.ph143.i, %bytestream2_get_byte.exit92.i
  %.sroa.0.2.i90 = phi ptr [ %.sroa.0.1.i92, %bytestream2_get_byte.exit92.i ], [ %.sroa.0.7.i, %.lr.ph143.i ], [ %.sroa.0.7.i, %.lr.ph.i88 ] ; 2 uses
  %.4.i91 = phi i32 [ %.177.i, %bytestream2_get_byte.exit92.i ], [ %i.nw, %.lr.ph143.i ], [ %i.ne, %.lr.ph.i88 ]
  %i.nz = ptrtoint ptr %.sroa.0.2.i90 to i64      ; 2 uses
  %i.oa = sub i64 %i.nz, %i.kc
  %i.ob = trunc i64 %i.oa to i32
  %i.oc = icmp ugt i32 %i.jx, %i.ob
  br i1 %i.oc, label %bb.ap, label %decode_interframe_v4a.exit, !llvm.loop !57

default.unreachable:                              ; preds = %bytestream2_get_byte.exit94.i
  unreachable

.loopexit134.sink.split.i:                        ; preds = %bb.ba, %bb.az, %bb.ax, %bytestream2_get_byte.exit92.i, %bb.ar
  %.str.9.sink.i87 = phi ptr [ @.str.10, %bb.az ], [ @.str.10, %bb.ax ], [ @.str.11, %bytestream2_get_byte.exit92.i ], [ @.str.11, %bb.ar ], [ @.str.9, %bb.ba ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull %.str.9.sink.i87) #7
  br label %decode_interframe_v4a.exit

decode_interframe_v4a.exit:                       ; preds = %bytestream2_get_byte.exit94.i, %.loopexit.i89, %bytestream2_init.exit.i84, %.loopexit134.sink.split.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !35
  %i.of = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !33
  %i.oj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !34
  %i.ol = mul nsw i32 %i.ok, %i.oi
  %i.om = sext i32 %i.ol to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oe, ptr align 1 %i.og, i64 %i.om, i1 false)
  br label %postprocess_current_frame.exit

bb.bc:                                            ; preds = %bb.am
  br i1 %i.jz, label %bytestream2_init.exit.i98, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 141) #7
  tail call void @abort() #8
  unreachable

bytestream2_init.exit.i98:                        ; preds = %bb.bc
  %i.on = zext nneg i32 %i.jx to i64
  %i.oo = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.on ; 9 uses
  %i.op = ptrtoint ptr %i.jv to i64               ; 2 uses
  %.not247.i = icmp eq i32 %i.jx, 0
  br i1 %.not247.i, label %.loopexit, label %.lr.ph246.i

.lr.ph246.i:                                      ; preds = %bytestream2_init.exit.i98
  %i.oq = ptrtoint ptr %i.oo to i64               ; 11 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.jy, i64 4 ; 8 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 6 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.jy, i64 24 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.jy, i64 16 ; 22 uses
  br label %bb.be

bb.be:                                            ; preds = %.loopexit.i106, %.lr.ph246.i
  %i.ov = phi i64 [ %i.op, %.lr.ph246.i ], [ %i.yb, %.loopexit.i106 ]
  %.0132245.i = phi i32 [ 0, %.lr.ph246.i ], [ %.9.i, %.loopexit.i106 ] ; 19 uses
  %.sroa.0.0244.i = phi ptr [ %i.jv, %.lr.ph246.i ], [ %.sroa.0.2.i107, %.loopexit.i106 ] ; 7 uses
  %i.ow = sub i64 %i.oq, %i.ov
  %i.ox = icmp slt i64 %i.ow, 1
  br i1 %i.ox, label %bytestream2_get_byte.exit156.thread.i, label %bytestream2_peek_byte.exit170.i

bytestream2_peek_byte.exit170.i:                  ; preds = %bb.be
  %i.oy = load i8, ptr %.sroa.0.0244.i, align 1, !tbaa !30 ; 6 uses
  %i.oz = and i8 %i.oy, 31                        ; 2 uses
  %i.pa = zext nneg i8 %i.oz to i32               ; 7 uses
  %i.pb = icmp eq i8 %i.oz, 0
  br i1 %i.pb, label %bytestream2_get_byte.exit156.i, label %bytestream2_peek_byte.exit162.i

bytestream2_get_byte.exit156.i:                   ; preds = %bytestream2_peek_byte.exit170.i
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.0.0244.i, i64 1 ; 7 uses
  %i.pd = lshr exact i8 %i.oy, 5
  switch i8 %i.pd, label %.loopexit.loopexit [
    i8 0, label %bytestream2_get_byte.exit156.thread.i
    i8 1, label %bb.bi
    i8 2, label %bb.bk
    i8 3, label %bb.bm
  ]

bytestream2_get_byte.exit156.thread.i:            ; preds = %bytestream2_get_byte.exit156.i, %bb.be
  %.sroa.0.7219.i = phi ptr [ %i.pc, %bytestream2_get_byte.exit156.i ], [ %i.oo, %bb.be ] ; 3 uses
  %i.pe = add i32 %.0132245.i, 2                  ; 2 uses
  %i.pf = load i32, ptr %i.or, align 4, !tbaa !33
  %i.pg = load i32, ptr %i.os, align 8, !tbaa !34
  %i.ph = mul nsw i32 %i.pg, %i.pf
  %i.pi = icmp ugt i32 %i.pe, %i.ph
  br i1 %i.pi, label %decode_interframe_v4.exit, label %bb.bf

bb.bf:                                            ; preds = %bytestream2_get_byte.exit156.thread.i
  %i.pj = ptrtoint ptr %.sroa.0.7219.i to i64
  %i.pk = sub i64 %i.oq, %i.pj
  %i.pl = icmp slt i64 %i.pk, 1
  br i1 %i.pl, label %bytestream2_get_byte.exit154.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.0.7219.i, i64 1 ; 2 uses
  %i.pn = load i8, ptr %.sroa.0.7219.i, align 1, !tbaa !30
  %.pre265.i = ptrtoint ptr %i.pm to i64
  br label %bytestream2_get_byte.exit154.i

bytestream2_get_byte.exit154.i:                   ; preds = %bb.bg, %bb.bf
  %.pre-phi.i116 = phi i64 [ %i.oq, %bb.bf ], [ %.pre265.i, %bb.bg ]
  %.sroa.0.6.i117 = phi ptr [ %i.oo, %bb.bf ], [ %i.pm, %bb.bg ] ; 2 uses
  %.0.i153.i = phi i8 [ 0, %bb.bf ], [ %i.pn, %bb.bg ]
  %i.po = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.pp = add i32 %.0132245.i, 1
  %i.pq = zext i32 %.0132245.i to i64
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pq
  store i8 %.0.i153.i, ptr %i.pr, align 1, !tbaa !30
  %i.ps = sub i64 %i.oq, %.pre-phi.i116
  %i.pt = icmp slt i64 %i.ps, 1
  br i1 %i.pt, label %bytestream2_get_byte.exit152.i, label %bb.bh

bb.bh:                                            ; preds = %bytestream2_get_byte.exit154.i
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.0.6.i117, i64 1
  %i.pv = load i8, ptr %.sroa.0.6.i117, align 1, !tbaa !30
  br label %bytestream2_get_byte.exit152.i

bytestream2_get_byte.exit152.i:                   ; preds = %bb.bh, %bytestream2_get_byte.exit154.i
  %.sroa.0.5.i = phi ptr [ %i.pu, %bb.bh ], [ %i.oo, %bytestream2_get_byte.exit154.i ]
  %.0.i151.i = phi i8 [ %i.pv, %bb.bh ], [ 0, %bytestream2_get_byte.exit154.i ]
  %i.pw = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.px = zext i32 %i.pp to i64
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.px
  store i8 %.0.i151.i, ptr %i.py, align 1, !tbaa !30
  br label %bb.bn

bb.bi:                                            ; preds = %bytestream2_get_byte.exit156.i
  %i.pz = ptrtoint ptr %i.pc to i64
  %i.qa = sub i64 %i.oq, %i.pz
  %i.qb = icmp slt i64 %i.qa, 1
  br i1 %i.qb, label %bytestream2_get_byte.exit150.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0.0244.i, i64 2
  %i.qd = load i8, ptr %i.pc, align 1, !tbaa !30
  %i.qe = zext i8 %i.qd to i32
  %i.qf = shl nuw nsw i32 %i.qe, 1
  br label %bytestream2_get_byte.exit150.i

bytestream2_get_byte.exit150.i:                   ; preds = %bb.bj, %bb.bi
  %.sroa.0.4.i115 = phi ptr [ %i.qc, %bb.bj ], [ %i.oo, %bb.bi ]
  %.0.i149.i = phi i32 [ %i.qf, %bb.bj ], [ 0, %bb.bi ]
  %i.qg = add i32 %.0.i149.i, %.0132245.i
  br label %bb.bn

bb.bk:                                            ; preds = %bytestream2_get_byte.exit156.i
  %i.qh = ptrtoint ptr %i.pc to i64
  %i.qi = sub i64 %i.oq, %i.qh
  %i.qj = icmp slt i64 %i.qi, 2
  br i1 %i.qj, label %bytestream2_get_le16.exit159.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.0.0244.i, i64 3
  %i.ql = load i16, ptr %i.pc, align 1, !tbaa !30
  %i.qm = zext i16 %i.ql to i32
  %i.qn = shl nuw nsw i32 %i.qm, 1
  br label %bytestream2_get_le16.exit159.i

bytestream2_get_le16.exit159.i:                   ; preds = %bb.bl, %bb.bk
  %.sroa.0.9.i114 = phi ptr [ %i.qk, %bb.bl ], [ %i.oo, %bb.bk ]
  %.0.i158.i = phi i32 [ %i.qn, %bb.bl ], [ 0, %bb.bk ]
  %i.qo = add i32 %.0.i158.i, %.0132245.i
  br label %bb.bn

bb.bm:                                            ; preds = %bytestream2_get_byte.exit156.i
  %i.qp = ptrtoint ptr %i.pc to i64
  %i.qq = sub i64 %i.oq, %i.qp
  %i.qr = icmp slt i64 %i.qq, 1
  br i1 %i.qr, label %bytestream2_get_byte.exit.thread.i, label %bytestream2_get_byte.exit.i109

bytestream2_get_byte.exit.i109:                   ; preds = %bb.bm
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0.0244.i, i64 2 ; 7 uses
  %i.qt = load i8, ptr %i.pc, align 1, !tbaa !30  ; 4 uses
  %i.qu = zext i8 %i.qt to i32
  %i.qv = shl nuw nsw i32 %i.qu, 1                ; 7 uses
  %i.qw = add i32 %i.qv, %.0132245.i
  %i.qx = load i32, ptr %i.or, align 4, !tbaa !33
  %i.qy = load i32, ptr %i.os, align 8, !tbaa !34
  %i.qz = mul nsw i32 %i.qy, %i.qx
  %i.ra = icmp ugt i32 %i.qw, %i.qz
  br i1 %i.ra, label %decode_interframe_v4.exit, label %.preheader.i110

bytestream2_get_byte.exit.thread.i:               ; preds = %bb.bm
  %i.rb = load i32, ptr %i.or, align 4, !tbaa !33
  %i.rc = load i32, ptr %i.os, align 8, !tbaa !34
  %i.rd = mul nsw i32 %i.rc, %i.rb
  %i.re = icmp ugt i32 %.0132245.i, %i.rd
  br i1 %i.re, label %decode_interframe_v4.exit, label %.preheader.._crit_edge_crit_edge.i

.preheader.i110:                                  ; preds = %bytestream2_get_byte.exit.i109
  %.not248.i = icmp eq i8 %i.qt, 0
  %.pre = ptrtoint ptr %i.qs to i64               ; 2 uses
  br i1 %.not248.i, label %.preheader.._crit_edge_crit_edge.i, label %.lr.ph.i111

.preheader.._crit_edge_crit_edge.i:               ; preds = %.preheader.i110, %bytestream2_get_byte.exit.thread.i
  %.pre266.i.pre-phi = phi i64 [ %i.oq, %bytestream2_get_byte.exit.thread.i ], [ %.pre, %.preheader.i110 ]
  %.sroa.0.3279285.i = phi ptr [ %i.oo, %bytestream2_get_byte.exit.thread.i ], [ %i.qs, %.preheader.i110 ]
  %.pre268.i = sub i64 %i.oq, %.pre266.i.pre-phi
  br label %._crit_edge.i

.lr.ph.i111:                                      ; preds = %.preheader.i110
  %i.rf = sub i64 %i.oq, %.pre                    ; 5 uses
  %i.rg = icmp slt i64 %i.rf, 1
  br i1 %i.rg, label %bytestream2_peek_byte.exit168.us.i.preheader, label %bytestream2_peek_byte.exit168.preheader.i

bytestream2_peek_byte.exit168.us.i.preheader:     ; preds = %.lr.ph.i111
  %xtraiter246 = and i32 %i.qv, 2                 ; 2 uses
  %lcmp.mod247.not = icmp eq i32 %xtraiter246, 0
  br i1 %lcmp.mod247.not, label %bytestream2_peek_byte.exit168.us.i.prol.loopexit, label %bytestream2_peek_byte.exit168.us.i.prol

bytestream2_peek_byte.exit168.us.i.prol:          ; preds = %bytestream2_peek_byte.exit168.us.i.preheader, %bytestream2_peek_byte.exit168.us.i.prol
  %.0131242.us.i.prol = phi i32 [ %i.rl, %bytestream2_peek_byte.exit168.us.i.prol ], [ %i.qv, %bytestream2_peek_byte.exit168.us.i.preheader ]
  %.1133241.us.i.prol = phi i32 [ %i.ri, %bytestream2_peek_byte.exit168.us.i.prol ], [ %.0132245.i, %bytestream2_peek_byte.exit168.us.i.preheader ] ; 2 uses
  %prol.iter248 = phi i32 [ %prol.iter248.next, %bytestream2_peek_byte.exit168.us.i.prol ], [ 0, %bytestream2_peek_byte.exit168.us.i.preheader ]
  %i.rh = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.ri = add i32 %.1133241.us.i.prol, 1          ; 3 uses
  %i.rj = zext i32 %.1133241.us.i.prol to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.rj
  store i8 0, ptr %i.rk, align 1, !tbaa !30
  %i.rl = add nsw i32 %.0131242.us.i.prol, -1     ; 2 uses
  %prol.iter248.next = add i32 %prol.iter248, 1   ; 2 uses
  %prol.iter248.cmp.not = icmp eq i32 %prol.iter248.next, %xtraiter246
  br i1 %prol.iter248.cmp.not, label %bytestream2_peek_byte.exit168.us.i.prol.loopexit, label %bytestream2_peek_byte.exit168.us.i.prol, !llvm.loop !58

bytestream2_peek_byte.exit168.us.i.prol.loopexit: ; preds = %bytestream2_peek_byte.exit168.us.i.prol, %bytestream2_peek_byte.exit168.us.i.preheader
  %.0131242.us.i.unr = phi i32 [ %i.qv, %bytestream2_peek_byte.exit168.us.i.preheader ], [ %i.rl, %bytestream2_peek_byte.exit168.us.i.prol ]
  %.1133241.us.i.unr = phi i32 [ %.0132245.i, %bytestream2_peek_byte.exit168.us.i.preheader ], [ %i.ri, %bytestream2_peek_byte.exit168.us.i.prol ]
  %.lcssa245.unr = phi i32 [ poison, %bytestream2_peek_byte.exit168.us.i.preheader ], [ %i.ri, %bytestream2_peek_byte.exit168.us.i.prol ]
  %i.rm = icmp eq i8 %i.qt, 1
  br i1 %i.rm, label %._crit_edge.i, label %bytestream2_peek_byte.exit168.us.i

bytestream2_peek_byte.exit168.preheader.i:        ; preds = %.lr.ph.i111
  %.pre.i112 = load i8, ptr %i.qs, align 1, !tbaa !30 ; 5 uses
  %xtraiter.a = and i32 %i.qv, 2                  ; 2 uses
  %lcmp.mod.not.a = icmp eq i32 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %bytestream2_peek_byte.exit168.i.prol.loopexit, label %bytestream2_peek_byte.exit168.i.prol

bytestream2_peek_byte.exit168.i.prol:             ; preds = %bytestream2_peek_byte.exit168.preheader.i, %bytestream2_peek_byte.exit168.i.prol
  %.0131242.i.prol = phi i32 [ %i.rr, %bytestream2_peek_byte.exit168.i.prol ], [ %i.qv, %bytestream2_peek_byte.exit168.preheader.i ]
  %.1133241.i.prol = phi i32 [ %i.ro, %bytestream2_peek_byte.exit168.i.prol ], [ %.0132245.i, %bytestream2_peek_byte.exit168.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %bytestream2_peek_byte.exit168.i.prol ], [ 0, %bytestream2_peek_byte.exit168.preheader.i ]
  %i.rn = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.ro = add i32 %.1133241.i.prol, 1             ; 3 uses
  %i.rp = zext i32 %.1133241.i.prol to i64
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.rp
  store i8 %.pre.i112, ptr %i.rq, align 1, !tbaa !30
  %i.rr = add nsw i32 %.0131242.i.prol, -1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter.a
  br i1 %prol.iter.cmp.not, label %bytestream2_peek_byte.exit168.i.prol.loopexit, label %bytestream2_peek_byte.exit168.i.prol, !llvm.loop !59

bytestream2_peek_byte.exit168.i.prol.loopexit:    ; preds = %bytestream2_peek_byte.exit168.i.prol, %bytestream2_peek_byte.exit168.preheader.i
  %.0131242.i.unr = phi i32 [ %i.qv, %bytestream2_peek_byte.exit168.preheader.i ], [ %i.rr, %bytestream2_peek_byte.exit168.i.prol ]
  %.1133241.i.unr = phi i32 [ %.0132245.i, %bytestream2_peek_byte.exit168.preheader.i ], [ %i.ro, %bytestream2_peek_byte.exit168.i.prol ]
  %.lcssa244.unr = phi i32 [ poison, %bytestream2_peek_byte.exit168.preheader.i ], [ %i.ro, %bytestream2_peek_byte.exit168.i.prol ]
  %i.rs = icmp eq i8 %i.qt, 1
  br i1 %i.rs, label %._crit_edge.i, label %bytestream2_peek_byte.exit168.i

bytestream2_peek_byte.exit168.us.i:               ; preds = %bytestream2_peek_byte.exit168.us.i.prol.loopexit, %bytestream2_peek_byte.exit168.us.i
  %.0131242.us.i = phi i32 [ %i.sj, %bytestream2_peek_byte.exit168.us.i ], [ %.0131242.us.i.unr, %bytestream2_peek_byte.exit168.us.i.prol.loopexit ] ; 2 uses
  %.1133241.us.i = phi i32 [ %i.sg, %bytestream2_peek_byte.exit168.us.i ], [ %.1133241.us.i.unr, %bytestream2_peek_byte.exit168.us.i.prol.loopexit ] ; 5 uses
  %i.rt = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.ru = add i32 %.1133241.us.i, 1
  %i.rv = zext i32 %.1133241.us.i to i64
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.rv
  store i8 0, ptr %i.rw, align 1, !tbaa !30
  %i.rx = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.ry = add i32 %.1133241.us.i, 2
  %i.rz = zext i32 %i.ru to i64
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.rz
  store i8 0, ptr %i.sa, align 1, !tbaa !30
  %i.sb = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.sc = add i32 %.1133241.us.i, 3
  %i.sd = zext i32 %i.ry to i64
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.sd
  store i8 0, ptr %i.se, align 1, !tbaa !30
  %i.sf = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.sg = add i32 %.1133241.us.i, 4               ; 2 uses
  %i.sh = zext i32 %i.sc to i64
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.sh
  store i8 0, ptr %i.si, align 1, !tbaa !30
  %i.sj = add nsw i32 %.0131242.us.i, -4
  %i.sk = icmp sgt i32 %.0131242.us.i, 4
  br i1 %i.sk, label %bytestream2_peek_byte.exit168.us.i, label %._crit_edge.i, !llvm.loop !60

bytestream2_peek_byte.exit168.i:                  ; preds = %bytestream2_peek_byte.exit168.i.prol.loopexit, %bytestream2_peek_byte.exit168.i
  %.0131242.i = phi i32 [ %i.tb, %bytestream2_peek_byte.exit168.i ], [ %.0131242.i.unr, %bytestream2_peek_byte.exit168.i.prol.loopexit ] ; 2 uses
  %.1133241.i = phi i32 [ %i.sy, %bytestream2_peek_byte.exit168.i ], [ %.1133241.i.unr, %bytestream2_peek_byte.exit168.i.prol.loopexit ] ; 5 uses
  %i.sl = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.sm = add i32 %.1133241.i, 1
  %i.sn = zext i32 %.1133241.i to i64
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sn
  store i8 %.pre.i112, ptr %i.so, align 1, !tbaa !30
  %i.sp = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.sq = add i32 %.1133241.i, 2
  %i.sr = zext i32 %i.sm to i64
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 %i.sr
  store i8 %.pre.i112, ptr %i.ss, align 1, !tbaa !30
  %i.st = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.su = add i32 %.1133241.i, 3
  %i.sv = zext i32 %i.sq to i64
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.sv
  store i8 %.pre.i112, ptr %i.sw, align 1, !tbaa !30
  %i.sx = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.sy = add i32 %.1133241.i, 4                  ; 2 uses
  %i.sz = zext i32 %i.su to i64
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.sz
  store i8 %.pre.i112, ptr %i.ta, align 1, !tbaa !30
  %i.tb = add nsw i32 %.0131242.i, -4
  %i.tc = icmp sgt i32 %.0131242.i, 4
  br i1 %i.tc, label %bytestream2_peek_byte.exit168.i, label %._crit_edge.i, !llvm.loop !60

._crit_edge.i:                                    ; preds = %bytestream2_peek_byte.exit168.i.prol.loopexit, %bytestream2_peek_byte.exit168.i, %bytestream2_peek_byte.exit168.us.i.prol.loopexit, %bytestream2_peek_byte.exit168.us.i, %.preheader.._crit_edge_crit_edge.i
  %.sroa.0.3279284.i = phi ptr [ %.sroa.0.3279285.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.qs, %bytestream2_peek_byte.exit168.us.i.prol.loopexit ], [ %i.qs, %bytestream2_peek_byte.exit168.us.i ], [ %i.qs, %bytestream2_peek_byte.exit168.i ], [ %i.qs, %bytestream2_peek_byte.exit168.i.prol.loopexit ]
  %.pre-phi269.i = phi i64 [ %.pre268.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.rf, %bytestream2_peek_byte.exit168.us.i.prol.loopexit ], [ %i.rf, %bytestream2_peek_byte.exit168.us.i ], [ %i.rf, %bytestream2_peek_byte.exit168.i ], [ %i.rf, %bytestream2_peek_byte.exit168.i.prol.loopexit ]
  %.1133.lcssa.i = phi i32 [ %.0132245.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.sg, %bytestream2_peek_byte.exit168.us.i ], [ %.lcssa245.unr, %bytestream2_peek_byte.exit168.us.i.prol.loopexit ], [ %.lcssa244.unr, %bytestream2_peek_byte.exit168.i.prol.loopexit ], [ %i.sy, %bytestream2_peek_byte.exit168.i ]
  %..i171.i = tail call i64 @llvm.smin.i64(i64 %.pre-phi269.i, i64 1)
  %i.td = getelementptr inbounds i8, ptr %.sroa.0.3279284.i, i64 %..i171.i
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.i, %bytestream2_get_le16.exit159.i, %bytestream2_get_byte.exit150.i, %bytestream2_get_byte.exit152.i
  %.sroa.0.1.i113 = phi ptr [ %.sroa.0.5.i, %bytestream2_get_byte.exit152.i ], [ %.sroa.0.4.i115, %bytestream2_get_byte.exit150.i ], [ %.sroa.0.9.i114, %bytestream2_get_le16.exit159.i ], [ %i.td, %._crit_edge.i ]
  %.2134.i = phi i32 [ %i.pe, %bytestream2_get_byte.exit152.i ], [ %i.qg, %bytestream2_get_byte.exit150.i ], [ %i.qo, %bytestream2_get_le16.exit159.i ], [ %.1133.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.te = load i32, ptr %i.or, align 4, !tbaa !33
  %i.tf = load i32, ptr %i.os, align 8, !tbaa !34
  %i.tg = mul nsw i32 %i.tf, %i.te
  %i.th = icmp ugt i32 %.2134.i, %i.tg
  br i1 %i.th, label %decode_interframe_v4.exit, label %.loopexit.i106

bytestream2_peek_byte.exit162.i:                  ; preds = %bytestream2_peek_byte.exit170.i
  %i.ti = and i8 %i.oy, 64                        ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.0.0244.i, i64 1 ; 3 uses
  %i.tk = ptrtoint ptr %i.tj to i64
  %i.tl = sub i64 %i.oq, %i.tk                    ; 2 uses
  %i.tm = icmp slt i64 %i.tl, 1
  br i1 %i.tm, label %bytestream2_get_le16.exit.i100, label %bytestream2_peek_byte.exit.i99

bytestream2_peek_byte.exit.i99:                   ; preds = %bytestream2_peek_byte.exit162.i
  %i.tn = load i8, ptr %i.tj, align 1, !tbaa !30  ; 2 uses
  %i.to = icmp eq i64 %i.tl, 1
  br i1 %i.to, label %bytestream2_get_le16.exit.i100, label %bb.bo

bb.bo:                                            ; preds = %bytestream2_peek_byte.exit.i99
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.0.0244.i, i64 3
  %i.tq = load i16, ptr %i.tj, align 1, !tbaa !30
  %i.tr = and i16 %i.tq, -2
  %i.ts = zext i16 %i.tr to i32
  br label %bytestream2_get_le16.exit.i100

bytestream2_get_le16.exit.i100:                   ; preds = %bb.bo, %bytestream2_peek_byte.exit.i99, %bytestream2_peek_byte.exit162.i
  %.0.i160221.shrunk.i = phi i8 [ %i.tn, %bb.bo ], [ %i.tn, %bytestream2_peek_byte.exit.i99 ], [ 0, %bytestream2_peek_byte.exit162.i ]
  %.sroa.0.8.i = phi ptr [ %i.tp, %bb.bo ], [ %i.oo, %bytestream2_peek_byte.exit.i99 ], [ %i.oo, %bytestream2_peek_byte.exit162.i ] ; 2 uses
  %.0.i157.i = phi i32 [ %i.ts, %bb.bo ], [ 0, %bytestream2_peek_byte.exit.i99 ], [ 0, %bytestream2_peek_byte.exit162.i ]
  %i.tt = add i32 %.0.i157.i, %.0132245.i         ; 2 uses
  %i.tu = add i32 %i.tt, -32768                   ; 4 uses
  %.not.i101 = icmp sgt i8 %i.oy, -1
  br i1 %.not.i101, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bytestream2_get_le16.exit.i100
  %i.tv = shl nuw nsw i32 %i.pa, 1                ; 3 uses
  %i.tw = add nsw i32 %i.tu, %i.tv
  %i.tx = load i32, ptr %i.or, align 4, !tbaa !33 ; 2 uses
  %i.ty = load i32, ptr %i.os, align 8, !tbaa !34
  %i.tz = mul nsw i32 %i.ty, %i.tx                ; 2 uses
  %i.ua = icmp sgt i32 %i.tw, %i.tz
  br i1 %i.ua, label %decode_interframe_v4.exit, label %.thread223.i

bb.bq:                                            ; preds = %bytestream2_get_le16.exit.i100
  %i.ub = add i32 %i.tt, -32767
  %i.uc = load i32, ptr %i.or, align 4, !tbaa !33 ; 2 uses
  %i.ud = load i32, ptr %i.os, align 8, !tbaa !34
  %i.ue = mul nsw i32 %i.ud, %i.uc                ; 2 uses
  %.not142.i102 = icmp slt i32 %i.ub, %i.ue
  br i1 %.not142.i102, label %.thread224.i, label %decode_interframe_v4.exit

.thread223.i:                                     ; preds = %bb.bp
  %i.uf = add i32 %i.tv, %.0132245.i
  %i.ug = icmp ugt i32 %i.uf, %i.tz
  br i1 %i.ug, label %decode_interframe_v4.exit, label %bb.br

.thread224.i:                                     ; preds = %bb.bq
  %i.uh = shl nuw nsw i32 %i.pa, 1                ; 3 uses
  %i.ui = add i32 %i.uh, %.0132245.i
  %i.uj = icmp ugt i32 %i.ui, %i.ue
  br i1 %i.uj, label %decode_interframe_v4.exit, label %.thread225.i

.thread225.i:                                     ; preds = %.thread224.i
  %.lobit143.i = lshr exact i8 %i.ti, 6
  %i.uk = zext nneg i8 %.lobit143.i to i32
  %i.ul = shl nsw i32 %i.uc, 1
  %i.um = add nsw i32 %i.ul, -1
  %i.un = mul nuw nsw i32 %i.um, %i.uk
  %i.uo = add nsw i32 %i.uh, -2
  %i.up = add nsw i32 %i.uo, %i.un
  %i.uq = icmp slt i32 %i.tu, %i.up
  br i1 %i.uq, label %decode_interframe_v4.exit, label %bb.bs

bb.br:                                            ; preds = %.thread223.i
  %.lobit.i = lshr i8 %i.oy, 6
  %i.ur = zext nneg i8 %.lobit.i to i32
  %i.us = shl nsw i32 %i.tx, 1
  %i.ut = add nsw i32 %i.us, -1
  %i.uu = mul nuw nsw i32 %i.ut, %i.ur
  %i.uv = icmp slt i32 %i.tu, %i.uu
  br i1 %i.uv, label %decode_interframe_v4.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.thread225.i
  %spec.select148.v.i = phi i64 [ 2, %bb.br ], [ -2, %.thread225.i ] ; 4 uses
  %i.uw = phi i32 [ %i.tv, %bb.br ], [ %i.uh, %.thread225.i ]
  %i.ux = and i8 %i.oy, 32
  %.not144.i = icmp eq i8 %i.ux, 0
  %.not145.i = icmp eq i8 %i.ti, 0                ; 2 uses
  %i.uy = sext i32 %i.tu to i64                   ; 4 uses
  br i1 %.not144.i, label %.preheader227.i.a, label %.preheader229.i

.preheader229.i:                                  ; preds = %bb.bs
  br i1 %.not145.i, label %.preheader229.split.us.i, label %.preheader229.split.i

.preheader229.split.us.i:                         ; preds = %.preheader229.i, %.preheader229.split.us.i
  %indvars.iv256.i = phi i64 [ %indvars.iv.next257.i, %.preheader229.split.us.i ], [ %i.uy, %.preheader229.i ] ; 3 uses
  %.0128233.us.i = phi i32 [ %i.vn, %.preheader229.split.us.i ], [ %i.pa, %.preheader229.i ] ; 2 uses
  %.3135232.us.i = phi i32 [ %.4136.us.i, %.preheader229.split.us.i ], [ %.0132245.i, %.preheader229.i ] ; 3 uses
  %i.uz = load ptr, ptr %i.ot, align 8, !tbaa !37
  %i.va = getelementptr inbounds i8, ptr %i.uz, i64 %indvars.iv256.i
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !30
  %i.vc = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.vd = add i32 %.3135232.us.i, 1
  %i.ve = zext i32 %.3135232.us.i to i64
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.ve
  store i8 %i.vb, ptr %i.vf, align 1, !tbaa !30
  %i.vg = load ptr, ptr %i.ot, align 8, !tbaa !37
  %i.vh = getelementptr i8, ptr %i.vg, i64 %indvars.iv256.i
  %i.vi = getelementptr i8, ptr %i.vh, i64 1
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !30
  %i.vk = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.vl = zext i32 %i.vd to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vk, i64 %i.vl
  store i8 %i.vj, ptr %i.vm, align 1, !tbaa !30
  %.4136.us.i = add i32 %.3135232.us.i, 2         ; 2 uses
  %indvars.iv.next257.i = add nsw i64 %indvars.iv256.i, %spec.select148.v.i
  %i.vn = add nsw i32 %.0128233.us.i, -1
  %i.vo = icmp samesign ugt i32 %.0128233.us.i, 1
  br i1 %i.vo, label %.preheader229.split.us.i, label %.loopexit228.i, !llvm.loop !61

.preheader227.i.a:                                ; preds = %bb.bs
  br i1 %.not145.i, label %.preheader227.split.us.i, label %.preheader227.split.i

.preheader227.split.us.i:                         ; preds = %.preheader227.i.a, %.preheader227.split.us.i
  %indvars.iv262.i = phi i64 [ %indvars.iv.next263.i.a, %.preheader227.split.us.i ], [ %i.uy, %.preheader227.i.a ] ; 3 uses
  %.1129236.us.i = phi i32 [ %i.wb, %.preheader227.split.us.i ], [ %i.pa, %.preheader227.i.a ] ; 2 uses
  %.5137235.us.i = phi i32 [ %.6.us.i.a, %.preheader227.split.us.i ], [ %.0132245.i, %.preheader227.i.a ] ; 3 uses
  %i.vp = load ptr, ptr %i.ou, align 8, !tbaa !36 ; 2 uses
  %i.vq = getelementptr inbounds i8, ptr %i.vp, i64 %indvars.iv262.i
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !30
  %i.vs = add i32 %.5137235.us.i, 1
  %i.vt = zext i32 %.5137235.us.i to i64
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vp, i64 %i.vt
  store i8 %i.vr, ptr %i.vu, align 1, !tbaa !30
  %i.vv = load ptr, ptr %i.ou, align 8, !tbaa !36 ; 2 uses
  %i.vw = getelementptr i8, ptr %i.vv, i64 %indvars.iv262.i
  %i.vx = getelementptr i8, ptr %i.vw, i64 1
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !30
  %i.vz = zext i32 %i.vs to i64
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vv, i64 %i.vz
  store i8 %i.vy, ptr %i.wa, align 1, !tbaa !30
  %.6.us.i.a = add i32 %.5137235.us.i, 2          ; 2 uses
  %indvars.iv.next263.i.a = add nsw i64 %indvars.iv262.i, %spec.select148.v.i
  %i.wb = add nsw i32 %.1129236.us.i, -1
  %4 = icmp samesign ugt i32 %.1129236.us.i, 1
  br i1 %4, label %.preheader227.split.us.i, label %.loopexit228.i, !llvm.loop !62

.preheader229.split.i:                            ; preds = %.preheader229.i, %.preheader229.split.i
  %indvars.iv.i104 = phi i64 [ %indvars.iv.next.i105, %.preheader229.split.i ], [ %i.uy, %.preheader229.i ] ; 3 uses
  %.0128233.i = phi i32 [ %i.wu, %.preheader229.split.i ], [ %i.pa, %.preheader229.i ] ; 2 uses
  %.3135232.i = phi i32 [ %.4136.i, %.preheader229.split.i ], [ %.0132245.i, %.preheader229.i ] ; 3 uses
  %i.wc = load ptr, ptr %i.ot, align 8, !tbaa !37
  %i.wd = load i32, ptr %i.or, align 4, !tbaa !33
  %i.we = shl nsw i32 %i.wd, 1
  %i.wf = sext i32 %i.we to i64
  %i.wg = sub nsw i64 %indvars.iv.i104, %i.wf
  %i.wh = getelementptr i8, ptr %i.wc, i64 %i.wg
  %i.wi = getelementptr i8, ptr %i.wh, i64 1
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !30
  %i.wk = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.wl = add i32 %.3135232.i, 1
  %i.wm = zext i32 %.3135232.i to i64
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wk, i64 %i.wm
  store i8 %i.wj, ptr %i.wn, align 1, !tbaa !30
  %i.wo = load ptr, ptr %i.ot, align 8, !tbaa !37
  %i.wp = getelementptr inbounds i8, ptr %i.wo, i64 %indvars.iv.i104
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !30
  %i.wr = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.ws = zext i32 %i.wl to i64
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.ws
  store i8 %i.wq, ptr %i.wt, align 1, !tbaa !30
  %.4136.i = add i32 %.3135232.i, 2               ; 2 uses
  %indvars.iv.next.i105 = add nsw i64 %indvars.iv.i104, %spec.select148.v.i
  %i.wu = add nsw i32 %.0128233.i, -1
  %i.wv = icmp samesign ugt i32 %.0128233.i, 1
  br i1 %i.wv, label %.preheader229.split.i, label %.loopexit228.i, !llvm.loop !61

.preheader227.split.i:                            ; preds = %.preheader227.i.a, %.preheader227.split.i
  %indvars.iv259.i = phi i64 [ %indvars.iv.next260.i, %.preheader227.split.i ], [ %i.uy, %.preheader227.i.a ] ; 3 uses
  %.1129236.i = phi i32 [ %i.xm, %.preheader227.split.i ], [ %i.pa, %.preheader227.i.a ] ; 2 uses
  %.5137235.i = phi i32 [ %.6.i108, %.preheader227.split.i ], [ %.0132245.i, %.preheader227.i.a ] ; 3 uses
  %i.ww = load ptr, ptr %i.ou, align 8, !tbaa !36 ; 2 uses
  %i.wx = load i32, ptr %i.or, align 4, !tbaa !33
  %i.wy = shl nsw i32 %i.wx, 1
  %i.wz = sext i32 %i.wy to i64
  %i.xa = sub nsw i64 %indvars.iv259.i, %i.wz
  %i.xb = getelementptr i8, ptr %i.ww, i64 %i.xa
  %i.xc = getelementptr i8, ptr %i.xb, i64 1
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !30
  %i.xe = add i32 %.5137235.i, 1
  %i.xf = zext i32 %.5137235.i to i64
  %i.xg = getelementptr inbounds nuw i8, ptr %i.ww, i64 %i.xf
  store i8 %i.xd, ptr %i.xg, align 1, !tbaa !30
  %i.xh = load ptr, ptr %i.ou, align 8, !tbaa !36 ; 2 uses
  %i.xi = getelementptr inbounds i8, ptr %i.xh, i64 %indvars.iv259.i
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !30
  %i.xk = zext i32 %i.xe to i64
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.xk
  store i8 %i.xj, ptr %i.xl, align 1, !tbaa !30
  %.6.i108 = add i32 %.5137235.i, 2               ; 2 uses
  %indvars.iv.next260.i = add nsw i64 %indvars.iv259.i, %spec.select148.v.i
  %i.xm = add nsw i32 %.1129236.i, -1
  %i.xn = icmp samesign ugt i32 %.1129236.i, 1
  br i1 %i.xn, label %.preheader227.split.i, label %.loopexit228.i, !llvm.loop !62

.loopexit228.i:                                   ; preds = %.preheader229.split.i, %.preheader229.split.us.i, %.preheader227.split.i, %.preheader227.split.us.i
  %.7.i = phi i32 [ %.4136.us.i, %.preheader229.split.us.i ], [ %.6.i108, %.preheader227.split.i ], [ %.6.us.i.a, %.preheader227.split.us.i ], [ %.4136.i, %.preheader229.split.i ] ; 2 uses
  %i.xo = and i8 %.0.i160221.shrunk.i, 1
  %.not146.i = icmp eq i8 %i.xo, 0
  br i1 %.not146.i, label %.loopexit.i106, label %bb.bt

bb.bt:                                            ; preds = %.loopexit228.i
  %5 = sub i32 %.7.i, %i.uw
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %bb.bt
  %.2130240.i = phi i32 [ %i.pa, %bb.bt ], [ %i.xz, %bb.bu ] ; 2 uses
  %.8239.i = phi i32 [ %5, %bb.bt ], [ %i.ya, %bb.bu ] ; 3 uses
  %i.xp = load ptr, ptr %i.ou, align 8, !tbaa !36 ; 2 uses
  %i.xq = zext i32 %.8239.i to i64
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 %i.xq ; 2 uses
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !30
  %i.xt = add i32 %.8239.i, 1
  %i.xu = zext i32 %i.xt to i64                   ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xp, i64 %i.xu
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !30
  store i8 %i.xw, ptr %i.xr, align 1, !tbaa !30
  %i.xx = load ptr, ptr %i.ou, align 8, !tbaa !36
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.xu
  store i8 %i.xs, ptr %i.xy, align 1, !tbaa !30
  %i.xz = add nsw i32 %.2130240.i, -1
  %i.ya = add i32 %.8239.i, 2                     ; 2 uses
  %6 = icmp samesign ugt i32 %.2130240.i, 1
  br i1 %6, label %bb.bu, label %.loopexit.i106, !llvm.loop !63

.loopexit.i106:                                   ; preds = %bb.bu, %.loopexit228.i, %bb.bn
  %.sroa.0.2.i107 = phi ptr [ %.sroa.0.1.i113, %bb.bn ], [ %.sroa.0.8.i, %.loopexit228.i ], [ %.sroa.0.8.i, %bb.bu ] ; 2 uses
  %.9.i = phi i32 [ %.2134.i, %bb.bn ], [ %.7.i, %.loopexit228.i ], [ %i.ya, %bb.bu ]
  %i.yb = ptrtoint ptr %.sroa.0.2.i107 to i64     ; 2 uses
  %i.yc = sub i64 %i.yb, %i.op
  %i.yd = trunc i64 %i.yc to i32
  %i.ye = icmp ugt i32 %i.jx, %i.yd
  br i1 %i.ye, label %bb.be, label %.loopexit.loopexit, !llvm.loop !64

decode_interframe_v4.exit:                        ; preds = %bytestream2_get_byte.exit156.thread.i, %bytestream2_get_byte.exit.i109, %bytestream2_get_byte.exit.thread.i, %bb.bn, %bb.bp, %bb.bq, %.thread223.i, %.thread224.i, %.thread225.i, %bb.br
  %.str.10.sink.i = phi ptr [ @.str.10, %.thread225.i ], [ @.str.9, %.thread223.i ], [ @.str.10, %bb.bq ], [ @.str.10, %bb.bp ], [ @.str.11, %bb.bn ], [ @.str.11, %bytestream2_get_byte.exit.i109 ], [ @.str.11, %bytestream2_get_byte.exit156.thread.i ], [ @.str.11, %bytestream2_get_byte.exit.thread.i ], [ @.str.9, %.thread224.i ], [ @.str.10, %bb.br ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull %.str.10.sink.i) #7
  br label %.critedge

.loopexit.loopexit:                               ; preds = %bytestream2_get_byte.exit156.i, %.loopexit.i106
  %.val72.pre = load ptr, ptr %i.a, align 8, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bytestream2_init.exit.i98
  %.val72 = phi ptr [ %.val72.pre, %.loopexit.loopexit ], [ %i.jy, %bytestream2_init.exit.i98 ] ; 4 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.val72, i64 4
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !33 ; 7 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.val72, i64 8 ; 2 uses
  %i.yi = load i32, ptr %i.yh, align 8, !tbaa !34
  %.not.i118 = icmp eq i32 %i.yi, 0
  br i1 %.not.i118, label %postprocess_current_frame.exit, label %.lr.ph5.i

.lr.ph5.i:                                        ; preds = %.loopexit
  %i.yj = getelementptr inbounds nuw i8, ptr %.val72, i64 48
  %i.yk = getelementptr inbounds nuw i8, ptr %.val72, i64 16
  %.not7.i = icmp eq i32 %i.yg, 0
  br i1 %.not7.i, label %postprocess_current_frame.exit, label %.lr.ph.preheader.i119

.lr.ph.preheader.i119:                            ; preds = %.lr.ph5.i
  %wide.trip.count.i = zext i32 %i.yg to i64      ; 9 uses
  %i.yl = shl i32 %i.yg, 1
  %i.ym = shl nuw nsw i64 %wide.trip.count.i, 1
  %min.iters.check = icmp ult i32 %i.yg, 9
  %min.iters.check206 = icmp ult i32 %i.yg, 17
  %i.yn = and i64 %wide.trip.count.i, 15          ; 2 uses
  %i.yo = icmp eq i64 %i.yn, 0
  %i.yp = select i1 %i.yo, i64 16, i64 %i.yn      ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.yp  ; 4 uses
  %i.yq = shl nsw i64 %n.vec, 1
  %min.epilog.iters.check = icmp samesign ult i64 %i.yp, 9
  %i.yr = and i64 %wide.trip.count.i, 7           ; 2 uses
  %i.ys = icmp eq i64 %i.yr, 0
  %i.yt = select i1 %i.ys, i64 8, i64 %i.yr
  %n.vec222 = sub nsw i64 %wide.trip.count.i, %i.yt ; 3 uses
  %i.yu = shl nsw i64 %n.vec222, 1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i123, %.lr.ph.preheader.i119
  %indvars.iv9.i = phi i64 [ 0, %.lr.ph.preheader.i119 ], [ %indvars.iv.next10.i, %._crit_edge.i123 ] ; 4 uses
  %i.yv = load ptr, ptr %i.yj, align 8, !tbaa !35 ; 2 uses
  %i.yw = trunc nuw i64 %indvars.iv9.i to i32     ; 3 uses
  %i.yx = mul i32 %i.yg, %i.yw
  %i.yy = zext i32 %i.yx to i64                   ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yv, i64 %i.yy ; 8 uses
  %i.za = load ptr, ptr %i.yk, align 8, !tbaa !36 ; 3 uses
  %i.zb = and i32 %i.yw, 1
  %i.zc = and i32 %i.yw, -2
  %i.zd = mul i32 %i.zc, %i.yg
  %i.ze = or disjoint i32 %i.zd, %i.zb
  %i.zf = zext i32 %i.ze to i64
  %i.zg = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.zf ; 28 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.zh = trunc i64 %indvars.iv9.i to i32
  %i.zi = lshr i32 %i.zh, 1
  %i.zj = mul i32 %i.yl, %i.zi
  %i.zk = trunc i64 %indvars.iv9.i to i32
  %i.zl = and i32 %i.zk, 1
  %i.zm = or disjoint i32 %i.zj, %i.zl
  %i.zn = zext i32 %i.zm to i64                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.yv, i64 %wide.trip.count.i
  %scevgep202 = getelementptr i8, ptr %scevgep, i64 %i.yy
  %scevgep203 = getelementptr i8, ptr %i.za, i64 %i.zn
  %i.zo = getelementptr i8, ptr %i.za, i64 %i.ym
  %scevgep204 = getelementptr i8, ptr %i.zo, i64 -1
  %scevgep205 = getelementptr i8, ptr %scevgep204, i64 %i.zn
  %bound0 = icmp ult ptr %i.yz, %scevgep205
  %bound1 = icmp ult ptr %scevgep203, %scevgep202
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check206, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zp = getelementptr i8, ptr %i.zg, i64 %i.yq
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.zq = shl i64 %index, 1                       ; 16 uses
  %next.gep = getelementptr i8, ptr %i.zg, i64 %i.zq
  %i.zr = getelementptr i8, ptr %i.zg, i64 %i.zq
  %next.gep207.a = getelementptr i8, ptr %i.zr, i64 2
  %i.zs = getelementptr i8, ptr %i.zg, i64 %i.zq
  %next.gep208.a = getelementptr i8, ptr %i.zs, i64 4
  %i.zt = getelementptr i8, ptr %i.zg, i64 %i.zq
  %next.gep209.a = getelementptr i8, ptr %i.zt, i64 6
  %i.zu = getelementptr i8, ptr %i.zg, i64 %i.zq
  %next.gep210.a = getelementptr i8, ptr %i.zu, i64 8
  %i.zv = getelementptr i8, ptr %i.zg, i64 %i.zq
  %next.gep211.a = getelementptr i8, ptr %i.zv, i64 10
  %i.zw = getelementptr i8, ptr %i.zg, i64 %i.zq
  %next.gep212.a = getelementptr i8, ptr %i.zw, i64 12
  %i.zx = getelementptr i8, ptr %i.zg, i64 %i.zq
  %next.gep213.a = getelementptr i8, ptr %i.zx, i64 14
  %i.zy = getelementptr i8, ptr %i.zg, i64 %i.zq
  %next.gep214.a = getelementptr i8, ptr %i.zy, i64 16
  %i.zz = getelementptr i8, ptr %i.zg, i64 %i.zq
  %next.gep215.a = getelementptr i8, ptr %i.zz, i64 18
  %i.aaa = getelementptr i8, ptr %i.zg, i64 %i.zq
  %next.gep216.a = getelementptr i8, ptr %i.aaa, i64 20
  %i.aab = getelementptr i8, ptr %i.zg, i64 %i.zq
  %next.gep217.a = getelementptr i8, ptr %i.aab, i64 22
  %i.aac = getelementptr i8, ptr %i.zg, i64 %i.zq
  %next.gep218 = getelementptr i8, ptr %i.aac, i64 24
  %i.aad = getelementptr i8, ptr %i.zg, i64 %i.zq
  %next.gep219 = getelementptr i8, ptr %i.aad, i64 26
  %i.aae = getelementptr i8, ptr %i.zg, i64 %i.zq
  %next.gep220.a = getelementptr i8, ptr %i.aae, i64 28
  %i.aaf = getelementptr i8, ptr %i.zg, i64 %i.zq
  %next.gep221.a = getelementptr i8, ptr %i.aaf, i64 30
  %i.aag = load i8, ptr %next.gep, align 1, !tbaa !30, !alias.scope !83
  %i.aah = load i8, ptr %next.gep207.a, align 1, !tbaa !30, !alias.scope !83
  %i.aai = load i8, ptr %next.gep208.a, align 1, !tbaa !30, !alias.scope !83
  %i.aaj = load i8, ptr %next.gep209.a, align 1, !tbaa !30, !alias.scope !83
  %i.aak = load i8, ptr %next.gep210.a, align 1, !tbaa !30, !alias.scope !83
  %i.aal = load i8, ptr %next.gep211.a, align 1, !tbaa !30, !alias.scope !83
  %i.aam = load i8, ptr %next.gep212.a, align 1, !tbaa !30, !alias.scope !83
  %i.aan = load i8, ptr %next.gep213.a, align 1, !tbaa !30, !alias.scope !83
  %i.aao = load i8, ptr %next.gep214.a, align 1, !tbaa !30, !alias.scope !83
  %i.aap = load i8, ptr %next.gep215.a, align 1, !tbaa !30, !alias.scope !83
  %i.aaq = load i8, ptr %next.gep216.a, align 1, !tbaa !30, !alias.scope !83
  %i.aar = load i8, ptr %next.gep217.a, align 1, !tbaa !30, !alias.scope !83
  %i.aas = load i8, ptr %next.gep218, align 1, !tbaa !30, !alias.scope !83
  %i.aat = load i8, ptr %next.gep219, align 1, !tbaa !30, !alias.scope !83
  %i.aau = load i8, ptr %next.gep220.a, align 1, !tbaa !30, !alias.scope !83
  %i.aav = load i8, ptr %next.gep221.a, align 1, !tbaa !30, !alias.scope !83
  %i.aaw = insertelement <16 x i8> poison, i8 %i.aag, i64 0
  %i.aax = insertelement <16 x i8> %i.aaw, i8 %i.aah, i64 1
  %i.aay = insertelement <16 x i8> %i.aax, i8 %i.aai, i64 2
  %i.aaz = insertelement <16 x i8> %i.aay, i8 %i.aaj, i64 3
  %i.aba = insertelement <16 x i8> %i.aaz, i8 %i.aak, i64 4
  %i.abb = insertelement <16 x i8> %i.aba, i8 %i.aal, i64 5
  %i.abc = insertelement <16 x i8> %i.abb, i8 %i.aam, i64 6
  %i.abd = insertelement <16 x i8> %i.abc, i8 %i.aan, i64 7
  %i.abe = insertelement <16 x i8> %i.abd, i8 %i.aao, i64 8
  %i.abf = insertelement <16 x i8> %i.abe, i8 %i.aap, i64 9
  %i.abg = insertelement <16 x i8> %i.abf, i8 %i.aaq, i64 10
  %i.abh = insertelement <16 x i8> %i.abg, i8 %i.aar, i64 11
  %i.abi = insertelement <16 x i8> %i.abh, i8 %i.aas, i64 12
  %i.abj = insertelement <16 x i8> %i.abi, i8 %i.aat, i64 13
  %i.abk = insertelement <16 x i8> %i.abj, i8 %i.aau, i64 14
  %i.abl = insertelement <16 x i8> %i.abk, i8 %i.aav, i64 15
  %i.abm = getelementptr inbounds nuw i8, ptr %i.yz, i64 %index
  store <16 x i8> %i.abl, ptr %i.abm, align 1, !tbaa !30, !alias.scope !84, !noalias !83
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.abn = icmp eq i64 %index.next, %n.vec
  br i1 %i.abn, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !68

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.abo = getelementptr i8, ptr %i.zg, i64 %i.yu
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index223 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next232, %vec.epilog.vector.body ] ; 3 uses
  %i.abp = shl i64 %index223, 1                   ; 8 uses
  %next.gep224.a = getelementptr i8, ptr %i.zg, i64 %i.abp
  %i.abq = getelementptr i8, ptr %i.zg, i64 %i.abp
  %next.gep225.a = getelementptr i8, ptr %i.abq, i64 2
  %i.abr = getelementptr i8, ptr %i.zg, i64 %i.abp
  %next.gep226.a = getelementptr i8, ptr %i.abr, i64 4
  %i.abs = getelementptr i8, ptr %i.zg, i64 %i.abp
  %next.gep227.a = getelementptr i8, ptr %i.abs, i64 6
  %i.abt = getelementptr i8, ptr %i.zg, i64 %i.abp
  %next.gep228 = getelementptr i8, ptr %i.abt, i64 8
  %i.abu = getelementptr i8, ptr %i.zg, i64 %i.abp
  %next.gep229 = getelementptr i8, ptr %i.abu, i64 10
  %i.abv = getelementptr i8, ptr %i.zg, i64 %i.abp
  %next.gep230 = getelementptr i8, ptr %i.abv, i64 12
  %i.abw = getelementptr i8, ptr %i.zg, i64 %i.abp
  %next.gep231 = getelementptr i8, ptr %i.abw, i64 14
  %i.abx = load i8, ptr %next.gep224.a, align 1, !tbaa !30, !alias.scope !83
  %i.aby = load i8, ptr %next.gep225.a, align 1, !tbaa !30, !alias.scope !83
  %i.abz = load i8, ptr %next.gep226.a, align 1, !tbaa !30, !alias.scope !83
  %i.aca = load i8, ptr %next.gep227.a, align 1, !tbaa !30, !alias.scope !83
  %i.acb = load i8, ptr %next.gep228, align 1, !tbaa !30, !alias.scope !83
  %i.acc = load i8, ptr %next.gep229, align 1, !tbaa !30, !alias.scope !83
  %i.acd = load i8, ptr %next.gep230, align 1, !tbaa !30, !alias.scope !83
  %i.ace = load i8, ptr %next.gep231, align 1, !tbaa !30, !alias.scope !83
  %i.acf = insertelement <8 x i8> poison, i8 %i.abx, i64 0
  %i.acg = insertelement <8 x i8> %i.acf, i8 %i.aby, i64 1
  %i.ach = insertelement <8 x i8> %i.acg, i8 %i.abz, i64 2
end_hunk_0
