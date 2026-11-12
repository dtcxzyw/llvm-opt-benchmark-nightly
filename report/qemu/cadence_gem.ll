Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cadence_gem?download=true
inline.NumInlined: 181
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@gem_receive:bb.a
  %.not101.2.i = icmp eq i32 %i.mv, 0
  br i1 %.not101.2.i, label %bb.bj, label %bb.bi, !prof !12

bb.bi:                                            ; preds = %bb.bh
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.25, i32 noundef %i.mp) #8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.mw = shl nuw nsw i32 %i.mp, 1
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.mx ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 1792
  %i.na = load i32, ptr %i.mz, align 4            ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 1796
  %i.nc = load i32, ptr %i.nb, align 4            ; 3 uses
  %i.nd = and i32 %i.nc, 127                      ; 4 uses
  %i.ne = trunc i32 %i.nc to i16
  %i.nf = lshr i16 %i.ne, 7
  %trunc.2.i = and i16 %i.nf, 3
  switch i16 %trunc.2.i, label %default.unreachable [
    i16 3, label %bb.bk
    i16 2, label %bb.bn
    i16 1, label %bb.bo
    i16 0, label %bb.bp
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.ng = load i32, ptr @qemu_loglevel, align 4
  %i.nh = and i32 %i.ng, 1024
  %.not102.2.i = icmp eq i32 %i.nh, 0
  br i1 %.not102.2.i, label %bb.bm, label %bb.bl, !prof !12

bb.bl:                                            ; preds = %bb.bk
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26) #8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ni = add nuw nsw i32 %i.nd, 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bj
  %.0.2.i = phi i32 [ %i.ni, %bb.bm ], [ %i.nd, %bb.bj ]
  %i.nj = add nuw nsw i32 %.0.2.i, 20
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bj
  %.1.2.i = phi i32 [ %i.nj, %bb.bn ], [ %i.nd, %bb.bj ]
  %i.nk = add nuw nsw i32 %.1.2.i, 14
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bj
  %.2.2.i = phi i32 [ %i.nd, %bb.bj ], [ %i.nk, %bb.bo ]
  %i.nl = and i32 %i.nc, 512
  %.not93.2.i = icmp eq i32 %i.nl, 0
  %i.nm = zext nneg i32 %.2.2.i to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %.0155, i64 %i.nm ; 2 uses
  br i1 %.not93.2.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.val.2.i = load i32, ptr %i.nn, align 1
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %.val97.2.i = load i16, ptr %i.nn, align 1
  %i.no = zext i16 %.val97.2.i to i32
  %i.np = lshr i32 %i.na, 16
  %i.nq = and i32 %i.na, %i.no
  %i.nr = and i32 %i.np, %i.na
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.071.2.i = phi i32 [ %i.na, %bb.bq ], [ %i.nr, %bb.br ]
  %.070.2.i = phi i32 [ %.val.2.i, %bb.bq ], [ %i.nq, %bb.br ]
  %i.ns = icmp eq i32 %.070.2.i, %.071.2.i        ; 2 uses
  %..685.2.i = select i1 %i.ns, i1 true, i1 %.887.1.i
  %not.115.2.i = xor i1 %i.ns, true
  %.6..2.i = select i1 %not.115.2.i, i1 true, i1 %.8.1.i
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %extract32.exit.2.i
  %.887.2.i = phi i1 [ %..685.2.i, %bb.bs ], [ %.887.1.i, %extract32.exit.2.i ]
  %.8.2.i = phi i1 [ %.6..2.i, %bb.bs ], [ %.8.1.i, %extract32.exit.2.i ]
  %.not2.i = xor i1 %.887.2.i, true
  %or.cond4.i = select i1 %.not2.i, i1 true, i1 %.8.2.i
  br i1 %or.cond4.i, label %bb.aa, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nt = and i32 %i.jl, 15
  br label %get_queue_from_screen.exit

get_queue_from_screen.exit:                       ; preds = %bb.aa, %.preheader.i, %bb.z, %bb.bu
  %.088.i = phi i32 [ %i.jf, %bb.z ], [ %i.nt, %bb.bu ], [ 0, %.preheader.i ], [ 0, %bb.aa ] ; 7 uses
  %i.nu = load i32, ptr %i.b, align 4             ; 2 uses
  %i.nv = and i32 %i.nu, 8
  %.not.i175 = icmp eq i32 %i.nv, 0
  br i1 %.not.i175, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %get_queue_from_screen.exit
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 9628
  %i.nx = load i32, ptr %i.nw, align 4            ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.a, i64 9552
  %i.nz = load i16, ptr %i.ny, align 16
  %i.oa = zext i16 %i.nz to i32                   ; 4 uses
  %i.ob = icmp ugt i32 %i.nx, %i.oa
  br i1 %i.ob, label %bb.bw, label %gem_get_max_buf_len.exit

bb.bw:                                            ; preds = %bb.bv
  %i.oc = load i32, ptr @qemu_loglevel, align 4
  %i.od = and i32 %i.oc, 2048
  %.not11.i = icmp eq i32 %i.od, 0
  br i1 %.not11.i, label %gem_get_max_buf_len.exit, label %bb.bx, !prof !12

bb.bx:                                            ; preds = %bb.bw
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.15, i32 noundef %i.oa) #8
  br label %gem_get_max_buf_len.exit

bb.by:                                            ; preds = %get_queue_from_screen.exit
  %i.oe = and i32 %i.nu, 256
  %.not10.i = icmp eq i32 %i.oe, 0
  %i.of = select i1 %.not10.i, i32 1518, i32 1538
  br label %gem_get_max_buf_len.exit

gem_get_max_buf_len.exit:                         ; preds = %bb.bv, %bb.bw, %bb.bx, %bb.by
  %.0.i176 = phi i32 [ %i.oa, %bb.bx ], [ %i.oa, %bb.bw ], [ %i.nx, %bb.bv ], [ %i.of, %bb.by ]
  %i.og = zext nneg i32 %.0.i176 to i64
  %i.oh = icmp ugt i64 %.0151, %i.og
  br i1 %i.oh, label %bb.bz, label %.preheader

.preheader:                                       ; preds = %gem_get_max_buf_len.exit
  %.not165219 = icmp eq i32 %.0152, 0
  br i1 %.not165219, label %.preheader.._crit_edge_crit_edge, label %.lr.ph

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre235 = trunc nuw nsw i64 %.0151 to i32
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.oi = getelementptr inbounds nuw i8, ptr %i.a, i64 1096 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.a, i64 52704
  %i.ok = zext nneg i32 %.088.i to i64            ; 3 uses
  %i.ol = getelementptr inbounds nuw [24 x i8], ptr %i.oj, i64 %i.ok ; 7 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.on = zext nneg i32 %i.hm to i64
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 4 ; 2 uses
  %i.op = trunc nuw nsw i64 %.0151 to i32         ; 2 uses
  %i.oq = shl nsw i32 %.1.i.ph, 25
  %i.or = and i32 %i.oq, 100663296
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 10792
  %.in.v.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 19872
  %.in.i.i = getelementptr inbounds nuw [4 x i8], ptr %.in.v.i.i, i64 %i.ok ; 3 uses
  %trunc.i189 = trunc nuw nsw i32 %.088.i to i16
  %i.ot = getelementptr [4 x i8], ptr %i.a, i64 %i.ok
  %i.ou = getelementptr i8, ptr %i.ot, i64 10704
  %i.ov = getelementptr inbounds nuw i8, ptr %i.a, i64 9580
  %invariant.op.a = or i32 %i.op, 32768
  %invariant.op258 = or disjoint i32 %i.or, 134217728
  br label %bb.ce

bb.bz:                                            ; preds = %gem_get_max_buf_len.exit
  %i.ow = load i32, ptr @qemu_loglevel, align 4
  %i.ox = and i32 %i.ow, 2048
  %.not207 = icmp eq i32 %i.ox, 0
  br i1 %.not207, label %bb.cb, label %bb.ca, !prof !12

bb.ca:                                            ; preds = %bb.bz
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.23) #8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.oy = icmp eq i32 %.088.i, 0
  br i1 %i.oy, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.oz = getelementptr inbounds nuw i8, ptr %i.a, i64 9604
  %i.pa = load i32, ptr %i.oz, align 4
  %i.pb = and i32 %i.pa, 64
  %i.pc = xor i32 %i.pb, 64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.a, i64 9592 ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 4
  %i.pf = or i32 %i.pc, %i.pe
  store i32 %i.pf, ptr %i.pd, align 4
  br label %.critedge168

bb.cd:                                            ; preds = %bb.cb
  %i.pg = getelementptr inbounds nuw i8, ptr %i.a, i64 9556
  %i.ph = zext nneg i32 %.088.i to i64
  %i.pi = getelementptr [4 x i8], ptr %i.pg, i64 %i.ph ; 2 uses
  %i.pj = getelementptr i8, ptr %i.pi, i64 1596
  %i.pk = load i32, ptr %i.pj, align 4
  %i.pl = and i32 %i.pk, 64
  %i.pm = xor i32 %i.pl, 64
  %i.pn = getelementptr i8, ptr %i.pi, i64 1020   ; 2 uses
  %i.po = load i32, ptr %i.pn, align 4
  %i.pp = or i32 %i.pm, %i.po
  store i32 %i.pp, ptr %i.pn, align 4
  br label %.critedge168

bb.ce:                                            ; preds = %.lr.ph, %bb.cx
  %.1153222 = phi i32 [ %.0152, %.lr.ph ], [ %i.qw, %bb.cx ] ; 2 uses
  %.1156221 = phi ptr [ %.0155, %.lr.ph ], [ %i.qv, %bb.cx ] ; 2 uses
  %i.pq = phi i32 [ 16384, %.lr.ph ], [ 0, %bb.cx ] ; 2 uses
  %i.pr = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #8 ; 6 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 9556
  %i.pt = load i32, ptr %i.ps, align 4
  %i.pu = and i32 %i.pt, 4
  %.not.i177 = icmp eq i32 %i.pu, 0
  br i1 %.not.i177, label %bb.cf, label %.preheader.i178

.preheader.i178:                                  ; preds = %bb.ce
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 52704
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pr, i64 9544
  %i.px = load i8, ptr %i.pw, align 8             ; 3 uses
  %i.py = zext i8 %i.px to i32
  %.not25.i = icmp eq i8 %i.px, 0
  br i1 %.not25.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i178
  %wide.trip.count.i179 = zext i8 %i.px to i64
  br label %.lr.ph.i180

bb.cf:                                            ; preds = %bb.ce
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pr, i64 19936 ; 2 uses
  %i.qa = load i8, ptr %i.pz, align 16
  %.not16.i = icmp eq i8 %i.qa, 1
  br i1 %.not16.i, label %.critedge168, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i8 1, ptr %i.pz, align 16
  br label %.critedge168

.lr.ph.i180:                                      ; preds = %bb.ch, %.lr.ph.preheader.i
  %indvars.iv.i181 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i183, %bb.ch ] ; 3 uses
  %i.qb = getelementptr inbounds nuw [24 x i8], ptr %i.pv, i64 %indvars.iv.i181
  %.val.i182 = load i32, ptr %i.qb, align 4
  %i.qc = and i32 %.val.i182, 1
  %.not17.not.i = icmp eq i32 %i.qc, 0
  br i1 %.not17.not.i, label %._crit_edge.loopexit.i, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i180
  %indvars.iv.next.i183 = add nuw nsw i64 %indvars.iv.i181, 1 ; 2 uses
  %exitcond.not.i184 = icmp eq i64 %indvars.iv.next.i183, %wide.trip.count.i179
  br i1 %exitcond.not.i184, label %._crit_edge.thread.i, label %.lr.ph.i180, !llvm.loop !1

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i180
  %i.qd = trunc nuw nsw i64 %indvars.iv.i181 to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i178
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i178 ], [ %i.qd, %._crit_edge.loopexit.i ]
  %i.qe = icmp eq i32 %.0.lcssa.i, %i.py
  br i1 %i.qe, label %._crit_edge.thread.i, label %bb.cj

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.ch
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pr, i64 19936 ; 2 uses
  %i.qg = load i8, ptr %i.qf, align 16
  %.not19.i = icmp eq i8 %i.qg, 2
  br i1 %.not19.i, label %.critedge168, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge.thread.i
  store i8 2, ptr %i.qf, align 16
  br label %.critedge168

bb.cj:                                            ; preds = %._crit_edge.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pr, i64 19936 ; 2 uses
  %i.qi = load i8, ptr %i.qh, align 16
  %.not18.i = icmp eq i8 %i.qi, 0
  br i1 %.not18.i, label %gem_can_receive.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  store i8 0, ptr %i.qh, align 16
  br label %gem_can_receive.exit

gem_can_receive.exit:                             ; preds = %bb.ck, %bb.cj
  %.val = load i32, ptr %i.hn, align 4
  %i.qj = load i32, ptr %i.ol, align 4
  %i.qk = and i32 %i.qj, -4
  %i.ql = zext i32 %i.qk to i64                   ; 2 uses
  %i.qm = and i32 %.val, 1073741824
  %.not.i185 = icmp eq i32 %i.qm, 0
  br i1 %.not.i185, label %rx_desc_get_buffer.exit, label %bb.cl

bb.cl:                                            ; preds = %gem_can_receive.exit
  %i.qn = load i32, ptr %i.om, align 4
  %i.qo = zext i32 %i.qn to i64
  %i.qp = shl nuw i64 %i.qo, 32
  %i.qq = or disjoint i64 %i.qp, %i.ql
  br label %rx_desc_get_buffer.exit

rx_desc_get_buffer.exit:                          ; preds = %gem_can_receive.exit, %bb.cl
  %.0.i186 = phi i64 [ %i.qq, %bb.cl ], [ %i.ql, %gem_can_receive.exit ]
  %i.qr = add nuw i64 %.0.i186, %i.on
  %i.qs = tail call i32 @llvm.umin.i32(i32 %.1153222, i32 %spec.store.select) ; 2 uses
  %i.qt = zext nneg i32 %i.qs to i64              ; 2 uses
  %i.qu = tail call i32 @address_space_write(ptr noundef nonnull %i.oi, i64 noundef %i.qr, i64 4294967296, ptr noundef %.1156221, i64 noundef %i.qt) #8 ; 0 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.1156221, i64 %i.qt
  %i.qw = sub nuw i32 %.1153222, %i.qs            ; 2 uses
  %i.qx = icmp eq i32 %i.qw, 0                    ; 2 uses
  %.reass.reass = or i32 %i.pq, %invariant.op.a
  %spec.select = select i1 %i.qx, i32 %.reass.reass, i32 %i.pq ; 5 uses
  store i32 %spec.select, ptr %i.oo, align 4
  %i.qy = load i32, ptr %i.ol, align 4
  %i.qz = or i32 %i.qy, 1
  store i32 %i.qz, ptr %i.ol, align 4
  switch i32 %.1.i.ph, label %bb.cq [
    i32 -2, label %bb.cr
    i32 -3, label %bb.cm
    i32 -5, label %bb.cn
    i32 -4, label %bb.co
    i32 -1, label %bb.cp
  ]

bb.cm:                                            ; preds = %rx_desc_get_buffer.exit
  %i.ra = or i32 %spec.select, -2147483648
  br label %.sink.split

bb.cn:                                            ; preds = %rx_desc_get_buffer.exit
  %i.rb = or i32 %spec.select, 536870912
  br label %.sink.split

bb.co:                                            ; preds = %rx_desc_get_buffer.exit
  %i.rc = or i32 %spec.select, 1073741824
  br label %.sink.split

bb.cp:                                            ; preds = %rx_desc_get_buffer.exit
  tail call void @abort() #9
  unreachable

bb.cq:                                            ; preds = %rx_desc_get_buffer.exit
  %i.rd = and i32 %spec.select, -234881025
  %.reass259 = or disjoint i32 %i.rd, %invariant.op258
  br label %.sink.split

.sink.split:                                      ; preds = %bb.cm, %bb.cn, %bb.co, %bb.cq
  %.reass259.sink = phi i32 [ %.reass259, %bb.cq ], [ %i.rc, %bb.co ], [ %i.rb, %bb.cn ], [ %i.ra, %bb.cm ]
  store i32 %.reass259.sink, ptr %i.oo, align 4
  br label %bb.cr

bb.cr:                                            ; preds = %.sink.split, %rx_desc_get_buffer.exit
  %i.re = load i32, ptr %i.hn, align 4            ; 2 uses
  %i.rf = and i32 %i.re, 1073741824
  %.not.i.i = icmp eq i32 %i.rf, 0
  br i1 %.not.i.i, label %gem_get_rx_desc_addr.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.rg = load i32, ptr %i.os, align 4
  %i.rh = zext i32 %i.rg to i64
  %i.ri = shl nuw i64 %i.rh, 32
  br label %gem_get_rx_desc_addr.exit

gem_get_rx_desc_addr.exit:                        ; preds = %bb.cr, %bb.cs
  %spec.select.i = phi i32 [ 4, %bb.cs ], [ 2, %bb.cr ]
  %.0.i.i = phi i64 [ %i.ri, %bb.cs ], [ 0, %bb.cr ]
  %i.rj = load i32, ptr %.in.i.i, align 4
  %i.rk = zext i32 %i.rj to i64
  %i.rl = or disjoint i64 %.0.i.i, %i.rk
  %i.rm = lshr i32 %i.re, 27
  %i.rn = and i32 %i.rm, 2
  %.1.i188 = add nuw nsw i32 %spec.select.i, %i.rn
  %i.ro = shl nuw nsw i32 %.1.i188, 2
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = tail call i32 @address_space_write(ptr noundef nonnull %i.oi, i64 noundef %i.rl, i64 4294967296, ptr noundef nonnull %i.ol, i64 noundef %i.rp) #8 ; 0 uses
  %.val171 = load i32, ptr %i.ol, align 4
  %i.rr = and i32 %.val171, 2
  %.not166 = icmp eq i32 %i.rr, 0
  br i1 %.not166, label %bb.cw, label %bb.ct

bb.ct:                                            ; preds = %gem_get_rx_desc_addr.exit
  switch i16 %trunc.i189, label %bb.cv [
    i16 0, label %gem_get_rx_queue_base_addr.exit
    i16 1, label %bb.cu
    i16 2, label %bb.cu
    i16 3, label %bb.cu
    i16 4, label %bb.cu
    i16 5, label %bb.cu
    i16 6, label %bb.cu
    i16 7, label %bb.cu
  ]

bb.cu:                                            ; preds = %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct
  br label %gem_get_rx_queue_base_addr.exit

bb.cv:                                            ; preds = %bb.ct
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 998, ptr noundef nonnull @__func__.gem_get_queue_base_addr, ptr noundef null) #9
  unreachable

gem_get_rx_queue_base_addr.exit:                  ; preds = %bb.ct, %bb.cu
  %.0.in.i.i = phi ptr [ %i.ou, %bb.cu ], [ %i.ov, %bb.ct ]
  %.0.i.i190 = load i32, ptr %.0.in.i.i, align 4
  br label %bb.cx

bb.cw:                                            ; preds = %gem_get_rx_desc_addr.exit
  %.val169 = load i32, ptr %i.hn, align 4         ; 2 uses
  %i.rs = and i32 %.val169, 1073741824
  %.not.i191 = icmp eq i32 %i.rs, 0
  %spec.select.i192 = select i1 %.not.i191, i32 2, i32 4
  %i.rt = lshr i32 %.val169, 27
  %i.ru = and i32 %i.rt, 2
  %.1.i194 = add nuw nsw i32 %spec.select.i192, %i.ru
  %i.rv = shl nuw nsw i32 %.1.i194, 2
  %i.rw = load i32, ptr %.in.i.i, align 4
  %i.rx = add i32 %i.rv, %i.rw
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %gem_get_rx_queue_base_addr.exit
  %storemerge = phi i32 [ %.0.i.i190, %gem_get_rx_queue_base_addr.exit ], [ %i.rx, %bb.cw ]
  store i32 %storemerge, ptr %.in.i.i, align 4
  tail call fastcc void @gem_get_rx_desc(ptr noundef nonnull %i.a, i32 noundef %.088.i)
  br i1 %i.qx, label %._crit_edge, label %bb.ce, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.cx, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre235, %.preheader.._crit_edge_crit_edge ], [ %i.op, %bb.cx ] ; 6 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.a, i64 9892 ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 4
  %i.sa = zext i32 %i.rz to i64
  %i.sb = shl nuw i64 %i.sa, 32
  %i.sc = getelementptr inbounds nuw i8, ptr %i.a, i64 9896 ; 2 uses
  %i.sd = load i32, ptr %i.sc, align 4
  %i.se = zext i32 %i.sd to i64
  %i.sf = or disjoint i64 %i.sb, %i.se
  %i.sg = add i64 %i.sf, %.0151                   ; 2 uses
  %i.sh = lshr i64 %i.sg, 32
  %i.si = trunc nuw i64 %i.sh to i32
  store i32 %i.si, ptr %i.ry, align 4
  %i.sj = trunc i64 %i.sg to i32
  store i32 %i.sj, ptr %i.sc, align 4
  %i.sk = getelementptr inbounds nuw i8, ptr %i.a, i64 9900 ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4
  %i.sm = add i32 %i.sl, 1
  store i32 %i.sm, ptr %i.sk, align 4
  %i.sn = load i32, ptr %1, align 1
  %i.so = xor i32 %i.sn, -1
  %i.sp = getelementptr i8, ptr %1, i64 4
  %i.sq = load i16, ptr %i.sp, align 1
  %i.sr = zext i16 %i.sq to i32
  %i.ss = xor i32 %i.sr, 65535
  %i.st = or i32 %i.so, %i.ss
  %i.su = icmp ne i32 %i.st, 0
  %i.sv = zext i1 %i.su to i32
  %.not.i196 = icmp eq i32 %i.sv, 0
  br i1 %.not.i196, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %._crit_edge
  %i.sw = getelementptr inbounds nuw i8, ptr %i.a, i64 9904 ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 4
  %i.sy = add i32 %i.sx, 1
  store i32 %i.sy, ptr %i.sw, align 4
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %._crit_edge
  %i.sz = load i8, ptr %1, align 1
  %i.ta = icmp eq i8 %i.sz, 1
  br i1 %i.ta, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.a, i64 9908 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 4
  %i.td = add i32 %i.tc, 1
  store i32 %i.td, ptr %i.tb, align 4
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.te = icmp ult i32 %.pre-phi, 65
  br i1 %i.te, label %gem_receive_updatestats.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.tf = icmp ult i32 %.pre-phi, 128
  br i1 %i.tf, label %gem_receive_updatestats.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.tg = icmp ult i32 %.pre-phi, 256
  br i1 %i.tg, label %gem_receive_updatestats.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.th = icmp ult i32 %.pre-phi, 512
  br i1 %i.th, label %gem_receive_updatestats.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ti = icmp ult i32 %.pre-phi, 1024
  br i1 %i.ti, label %gem_receive_updatestats.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.tj = icmp ult i32 %.pre-phi, 1519
  %..i197 = select i1 %i.tj, i64 9936, i64 9940
  br label %gem_receive_updatestats.exit

gem_receive_updatestats.exit:                     ; preds = %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.df, %bb.dg
  %.sink27.i = phi i64 [ 9916, %bb.db ], [ 9924, %bb.dd ], [ %..i197, %bb.dg ], [ 9932, %bb.df ], [ 9928, %bb.de ], [ 9920, %bb.dc ]
  %i.tk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink27.i ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 4
  %i.tm = add i32 %i.tl, 1
  store i32 %i.tm, ptr %i.tk, align 4
  %i.tn = getelementptr inbounds nuw i8, ptr %i.a, i64 9588 ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4
  %i.tp = or i32 %i.to, 2
  store i32 %i.tp, ptr %i.tn, align 4
  %i.tq = icmp eq i32 %.088.i, 0
  br i1 %i.tq, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %gem_receive_updatestats.exit
end_hunk_0
