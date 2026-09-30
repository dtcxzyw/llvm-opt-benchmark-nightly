Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 86
begin_hunk_0_@tdefl_compress_normal:bb.a

bb.ay:                                            ; preds = %.thread254
  store i32 8, ptr %i.t, align 8
  %i.mw = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 1
  store ptr %i.mx, ptr %i.r, align 8
  store ptr %i.mw, ptr %i.s, align 8
  br label %tdefl_record_literal.exit

tdefl_record_literal.exit:                        ; preds = %.thread254, %bb.ay
  %i.my = zext i8 %i.mn to i64
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.my ; 2 uses
  %i.na = load i16, ptr %i.mz, align 2
  %i.nb = add i16 %i.na, 1
  store i16 %i.nb, ptr %i.mz, align 2
  br label %tdefl_record_match.exit

bb.az:                                            ; preds = %bb.ax
  %i.nc = load i32, ptr %i.x, align 4
  %.not210 = icmp eq i32 %i.nc, 0
  br i1 %.not210, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.nd = and i32 %i.dp, 65536
  %i.ne = icmp ne i32 %i.nd, 0
  %i.nf = icmp ugt i32 %.0, 127
  %or.cond9 = or i1 %i.ne, %i.nf
  br i1 %or.cond9, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ng = load i32, ptr %i.q, align 4
  %i.nh = add i32 %i.ng, %.0
  store i32 %i.nh, ptr %i.q, align 4
  %i.ni = add i32 %.0, -3                         ; 2 uses
  %i.nj = trunc i32 %i.ni to i8
  %i.nk = load ptr, ptr %i.r, align 8
  store i8 %i.nj, ptr %i.nk, align 1
  %i.nl = add nsw i32 %.0243, -1                  ; 3 uses
  %i.nm = trunc i32 %i.nl to i8
  %i.nn = load ptr, ptr %i.r, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 1
  store i8 %i.nm, ptr %i.no, align 1
  %i.np = lshr i32 %i.nl, 8                       ; 2 uses
  %i.nq = trunc nuw i32 %i.np to i8
  %i.nr = load ptr, ptr %i.r, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 2
  store i8 %i.nq, ptr %i.ns, align 1
  %i.nt = load ptr, ptr %i.r, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 3
  store ptr %i.nu, ptr %i.r, align 8
  %i.nv = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.nw = load i8, ptr %i.nv, align 1
  %i.nx = lshr i8 %i.nw, 1
  %i.ny = or disjoint i8 %i.nx, -128
  store i8 %i.ny, ptr %i.nv, align 1
  %i.nz = load i32, ptr %i.t, align 8
  %i.oa = add i32 %i.nz, -1                       ; 2 uses
  store i32 %i.oa, ptr %i.t, align 8
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 8, ptr %i.t, align 8
  %i.oc = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 1
  store ptr %i.od, ptr %i.r, align 8
  store ptr %i.oc, ptr %i.s, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.oe = and i32 %i.nl, 511
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr @s_tdefl_small_dist_sym, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1
  %i.oi = and i32 %i.np, 127
  %i.oj = zext nneg i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw i8, ptr @s_tdefl_large_dist_sym, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1
  %i.om = icmp ult i32 %.0243, 513
  %.v.i = select i1 %i.om, i8 %i.oh, i8 %i.ol
  %i.on = zext i8 %.v.i to i64
  %i.oo = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.on ; 2 uses
  %i.op = load i16, ptr %i.oo, align 2
  %i.oq = add i16 %i.op, 1
  store i16 %i.oq, ptr %i.oo, align 2
  %i.or = icmp ugt i32 %.0, 2
  br i1 %i.or, label %bb.be, label %tdefl_record_match.exit

bb.be:                                            ; preds = %bb.bd
  %i.os = zext i32 %i.ni to i64
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr @s_tdefl_len_sym, i64 %i.os
  %i.ou = load i16, ptr %i.ot, align 2
  %i.ov = zext i16 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ov ; 2 uses
  %i.ox = load i16, ptr %i.ow, align 2
  %i.oy = add i16 %i.ox, 1
  store i16 %i.oy, ptr %i.ow, align 2
  br label %tdefl_record_match.exit

bb.bf:                                            ; preds = %bb.ba
  %i.oz = zext nneg i32 %i.do to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1
  %i.pc = zext i8 %i.pb to i32
  store i32 %i.pc, ptr %i.p, align 4
  store i32 %.0243, ptr %i.v, align 4
  store i32 %.0, ptr %i.m, align 8
  br label %tdefl_record_match.exit

tdefl_record_match.exit:                          ; preds = %bb.be, %bb.bd, %tdefl_record_literal.exit, %bb.bf, %tdefl_record_match.exit221, %bb.at, %tdefl_record_match.exit223
  %.0178 = phi i32 [ %.0, %tdefl_record_match.exit223 ], [ 1, %bb.at ], [ %i.mi, %tdefl_record_match.exit221 ], [ 1, %tdefl_record_literal.exit ], [ 1, %bb.bf ], [ %.0, %bb.bd ], [ %.0, %bb.be ] ; 3 uses
  %i.pd = load i32, ptr %i.i, align 4
  %i.pe = add i32 %i.pd, %.0178
  store i32 %i.pe, ptr %i.i, align 4
  %i.pf = load i32, ptr %i.g, align 8
  %i.pg = sub i32 %i.pf, %.0178
  store i32 %i.pg, ptr %i.g, align 8
  %i.ph = load i32, ptr %i.h, align 4
  %i.pi = add i32 %i.ph, %.0178
  %spec.select217 = tail call i32 @llvm.umin.i32(i32 %i.pi, i32 32768)
  store i32 %spec.select217, ptr %i.h, align 4
  %i.pj = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.pk = icmp ugt ptr %i.pj, %i.z
  br i1 %i.pk, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %tdefl_record_match.exit
  %i.pl = load i32, ptr %i.q, align 4             ; 2 uses
  %i.pm = icmp ugt i32 %i.pl, 31744
  br i1 %i.pm, label %bb.bh, label %select.unfold.backedge

bb.bh:                                            ; preds = %bb.bg
  %i.pn = ptrtoint ptr %i.pj to i64
  %i.po = sub i64 %i.pn, %i.aa
  %i.pp = trunc i64 %i.po to i32
  %i.pq = mul i32 %i.pp, 115
  %i.pr = lshr i32 %i.pq, 7
  %.not211 = icmp ult i32 %i.pr, %i.pl
  br i1 %.not211, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ps = load i32, ptr %i.n, align 8
  %i.pt = and i32 %i.ps, 524288
  %.not212 = icmp eq i32 %i.pt, 0
  br i1 %.not212, label %select.unfold.backedge, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %tdefl_record_match.exit
  store ptr %.3173392, ptr %i.a, align 8
  store i64 %.2181391, ptr %i.c, align 8
  %i.pu = tail call fastcc i32 @tdefl_flush_block(ptr noundef %0, i32 noundef 0) ; 2 uses
  %.not213 = icmp eq i32 %i.pu, 0
  br i1 %.not213, label %select.unfold.backedge, label %.thread258.loopexit

select.unfold.backedge:                           ; preds = %bb.bj, %bb.bg, %bb.bi
  br label %select.unfold

.critedge2:                                       ; preds = %.critedge4, %bb.b, %bb.c
  %.3182 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %.2181, %.critedge4 ]
  %.4174 = phi ptr [ %.0170, %bb.b ], [ %.0170, %bb.c ], [ %.3173, %.critedge4 ]
  store ptr %.4174, ptr %i.a, align 8
  store i64 %.3182, ptr %i.c, align 8
  br label %.thread258

.thread258.loopexit:                              ; preds = %bb.bj
  %i.pv = icmp sgt i32 %i.pu, -1
  %i.pw = zext i1 %i.pv to i32
  br label %.thread258

.thread258:                                       ; preds = %.thread258.loopexit, %.critedge2
  %.4 = phi i32 [ 1, %.critedge2 ], [ %i.pw, %.thread258.loopexit ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i64 0, 4294967296) i64 @mz_adler32(i64 noundef range(i64 0, 4294967296) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = trunc nuw i64 %0 to i32
  %i.b = and i32 %i.a, 65535                      ; 2 uses
  %i.c = lshr i64 %0, 16
  %i.d = trunc nuw nsw i64 %i.c to i32            ; 2 uses
  %.not82 = icmp eq i64 %2, 0
  br i1 %.not82, label %._crit_edge88, label %.preheader66.preheader

.preheader66.preheader:                           ; preds = %bb.a
  %i.e = urem i64 %2, 5552
  br label %.preheader66

.preheader66:                                     ; preds = %.preheader66.preheader, %._crit_edge
  %.087 = phi i64 [ 5552, %._crit_edge ], [ %i.e, %.preheader66.preheader ] ; 8 uses
  %.05486 = phi i32 [ %i.cd, %._crit_edge ], [ %i.d, %.preheader66.preheader ] ; 2 uses
  %.05585 = phi i32 [ %i.cc, %._crit_edge ], [ %i.b, %.preheader66.preheader ] ; 2 uses
  %.06084 = phi i64 [ %i.ce, %._crit_edge ], [ %2, %.preheader66.preheader ]
  %.06183 = phi ptr [ %.263.lcssa, %._crit_edge ], [ %1, %.preheader66.preheader ] ; 2 uses
  %i.f = icmp samesign ugt i64 %.087, 7
  br i1 %i.f, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader66
  %i.g = trunc nuw nsw i64 %.087 to i32
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.h = zext i32 %i.be to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader66
  %.162.lcssa = phi ptr [ %.06183, %.preheader66 ], [ %i.bf, %.preheader.loopexit ] ; 4 uses
  %.058.lcssa = phi i64 [ 0, %.preheader66 ], [ %i.h, %.preheader.loopexit ] ; 6 uses
  %.156.lcssa = phi i32 [ %.05585, %.preheader66 ], [ %i.bc, %.preheader.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.05486, %.preheader66 ], [ %i.bd, %.preheader.loopexit ] ; 3 uses
  %i.i = icmp samesign ugt i64 %.087, %.058.lcssa
  br i1 %i.i, label %.lr.ph78.preheader, label %._crit_edge

.lr.ph78.preheader:                               ; preds = %.preheader
  %i.j = sub nuw nsw i64 %.087, %.058.lcssa
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph78.prol.loopexit, label %.lr.ph78.prol

.lr.ph78.prol:                                    ; preds = %.lr.ph78.preheader, %.lr.ph78.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph78.prol ], [ %.058.lcssa, %.lr.ph78.preheader ]
  %.277.prol = phi i32 [ %i.o, %.lr.ph78.prol ], [ %.1.lcssa, %.lr.ph78.preheader ]
  %.25776.prol = phi i32 [ %i.n, %.lr.ph78.prol ], [ %.156.lcssa, %.lr.ph78.preheader ]
  %.26374.prol = phi ptr [ %i.k, %.lr.ph78.prol ], [ %.162.lcssa, %.lr.ph78.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph78.prol ], [ 0, %.lr.ph78.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.26374.prol, i64 1 ; 2 uses
  %i.l = load i8, ptr %.26374.prol, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = add i32 %.25776.prol, %i.m               ; 4 uses
  %i.o = add i32 %i.n, %.277.prol                 ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph78.prol.loopexit, label %.lr.ph78.prol, !llvm.loop !276

.lr.ph78.prol.loopexit:                           ; preds = %.lr.ph78.prol, %.lr.ph78.preheader
  %.lcssa120.unr = phi i32 [ poison, %.lr.ph78.preheader ], [ %i.n, %.lr.ph78.prol ]
  %.lcssa119.unr = phi i32 [ poison, %.lr.ph78.preheader ], [ %i.o, %.lr.ph78.prol ]
  %indvars.iv.unr = phi i64 [ %.058.lcssa, %.lr.ph78.preheader ], [ %indvars.iv.next.prol, %.lr.ph78.prol ]
  %.277.unr = phi i32 [ %.1.lcssa, %.lr.ph78.preheader ], [ %i.o, %.lr.ph78.prol ]
  %.25776.unr = phi i32 [ %.156.lcssa, %.lr.ph78.preheader ], [ %i.n, %.lr.ph78.prol ]
  %.26374.unr = phi ptr [ %.162.lcssa, %.lr.ph78.preheader ], [ %i.k, %.lr.ph78.prol ]
  %i.p = sub nsw i64 %.058.lcssa, %.087
  %i.q = icmp ugt i64 %i.p, -4
  br i1 %i.q, label %._crit_edge.loopexit, label %.lr.ph78

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.170 = phi i32 [ %i.bd, %.lr.ph ], [ %.05486, %.lr.ph.preheader ]
  %.15669 = phi i32 [ %i.bc, %.lr.ph ], [ %.05585, %.lr.ph.preheader ]
  %.05868 = phi i32 [ %i.be, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.16267 = phi ptr [ %i.bf, %.lr.ph ], [ %.06183, %.lr.ph.preheader ] ; 9 uses
  %i.r = load i8, ptr %.16267, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = add i32 %.15669, %i.s                    ; 2 uses
  %i.u = add i32 %i.t, %.170
  %i.v = getelementptr inbounds nuw i8, ptr %.16267, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = add i32 %i.t, %i.x                       ; 2 uses
  %i.z = add i32 %i.u, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.16267, i64 2
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add i32 %i.y, %i.ac                     ; 2 uses
  %i.ae = add i32 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.16267, i64 3
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add i32 %i.ad, %i.ah                    ; 2 uses
  %i.aj = add i32 %i.ae, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.16267, i64 4
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = add i32 %i.ai, %i.am                    ; 2 uses
  %i.ao = add i32 %i.aj, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.16267, i64 5
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = add i32 %i.an, %i.ar                    ; 2 uses
  %i.at = add i32 %i.ao, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.16267, i64 6
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = add i32 %i.as, %i.aw                    ; 2 uses
  %i.ay = add i32 %i.at, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.16267, i64 7
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add i32 %i.ax, %i.bb                    ; 3 uses
  %i.bd = add i32 %i.ay, %i.bc                    ; 2 uses
  %i.be = add nuw i32 %.05868, 8                  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.16267, i64 8 ; 2 uses
  %3 = add nuw i32 %.05868, 15
  %i.bg = icmp ult i32 %3, %i.g
  br i1 %i.bg, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !277

.lr.ph78:                                         ; preds = %.lr.ph78.prol.loopexit, %.lr.ph78
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph78 ], [ %indvars.iv.unr, %.lr.ph78.prol.loopexit ]
  %.277 = phi i32 [ %i.ca, %.lr.ph78 ], [ %.277.unr, %.lr.ph78.prol.loopexit ]
  %.25776 = phi i32 [ %i.bz, %.lr.ph78 ], [ %.25776.unr, %.lr.ph78.prol.loopexit ]
  %.26374 = phi ptr [ %i.bw, %.lr.ph78 ], [ %.26374.unr, %.lr.ph78.prol.loopexit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.26374, i64 1
  %i.bi = load i8, ptr %.26374, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add i32 %.25776, %i.bj                  ; 2 uses
  %i.bl = add i32 %i.bk, %.277
  %i.bm = getelementptr inbounds nuw i8, ptr %.26374, i64 2
  %i.bn = load i8, ptr %i.bh, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add i32 %i.bk, %i.bo                    ; 2 uses
  %i.bq = add i32 %i.bp, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %.26374, i64 3
  %i.bs = load i8, ptr %i.bm, align 1
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add i32 %i.bp, %i.bt                    ; 2 uses
  %i.bv = add i32 %i.bu, %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %.26374, i64 4
  %i.bx = load i8, ptr %i.br, align 1
  %i.by = zext i8 %i.bx to i32
  %i.bz = add i32 %i.bu, %i.by                    ; 3 uses
  %i.ca = add i32 %i.bz, %i.bv                    ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %.087
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %.lr.ph78, !llvm.loop !278

._crit_edge.loopexit:                             ; preds = %.lr.ph78, %.lr.ph78.prol.loopexit
  %.lcssa120 = phi i32 [ %.lcssa120.unr, %.lr.ph78.prol.loopexit ], [ %i.bz, %.lr.ph78 ]
  %.lcssa119 = phi i32 [ %.lcssa119.unr, %.lr.ph78.prol.loopexit ], [ %i.ca, %.lr.ph78 ]
  %i.cb = sub nsw i64 %.087, %.058.lcssa
  %scevgep = getelementptr i8, ptr %.162.lcssa, i64 %i.cb
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.263.lcssa = phi ptr [ %.162.lcssa, %.preheader ], [ %scevgep, %._crit_edge.loopexit ]
  %.257.lcssa = phi i32 [ %.156.lcssa, %.preheader ], [ %.lcssa120, %._crit_edge.loopexit ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader ], [ %.lcssa119, %._crit_edge.loopexit ]
  %i.cc = urem i32 %.257.lcssa, 65521             ; 2 uses
  %i.cd = urem i32 %.2.lcssa, 65521               ; 2 uses
  %i.ce = sub i64 %.06084, %.087                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %._crit_edge88, label %.preheader66, !llvm.loop !279

._crit_edge88:                                    ; preds = %._crit_edge, %bb.a
  %.055.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.cc, %._crit_edge ]
  %.054.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.cd, %._crit_edge ]
  %i.cf = shl nuw i32 %.054.lcssa, 16
  %i.cg = or disjoint i32 %i.cf, %.055.lcssa
  %i.ch = zext i32 %i.cg to i64
  ret i64 %i.ch
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tdefl_flush_block(ptr noundef nonnull %0, i32 noundef range(i32 0, 5) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 524288
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8
  %i.h = sub i32 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp ule i32 %i.h, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ugt i64 %i.t, 85195
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 234154
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = phi ptr [ %i.x, %bb.e ], [ %i.y, %bb.f ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 49 uses
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 85180
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 27 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  store i32 0, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = lshr i32 %i.ai, %i.ak
  %i.am = trunc nuw i32 %i.al to i8
  store i8 %i.am, ptr %i.ag, align 1
  %i.an = load i32, ptr %i.aj, align 8
  %i.ao = icmp eq i32 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %.neg = sext i1 %i.ao to i64
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %.neg
  store ptr %i.ar, ptr %i.ap, align 8
  %i.as = load i32, ptr %i.a, align 8
  %i.at = and i32 %i.as, 4096
  %.not299 = icmp eq i32 %i.at, 0
  br i1 %.not299, label %.loopexit342, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.av = load i32, ptr %i.au, align 4
  %.not300 = icmp eq i32 %i.av, 0
  br i1 %.not300, label %bb.i, label %.loopexit342

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 7 uses
  %i.ax = load i32, ptr %i.aw, align 4            ; 3 uses
  %i.ay = shl i32 120, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = or i32 %i.ba, %i.ay                     ; 3 uses
  store i32 %i.bb, ptr %i.az, align 8
  %i.bc = add i32 %i.ax, 8                        ; 3 uses
  store i32 %i.bc, ptr %i.aw, align 4
  %i.bd = icmp ult i32 %i.ax, -8
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i, %bb.k
  %i.be = phi i32 [ %i.bo, %bb.k ], [ %i.bc, %bb.i ]
  %i.bf = phi i32 [ %i.bn, %bb.k ], [ %i.bb, %bb.i ] ; 2 uses
  %i.bg = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.bh = load ptr, ptr %i.ac, align 8
  %i.bi = icmp ult ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.bj = trunc i32 %i.bf to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store ptr %i.bk, ptr %i.aa, align 8
  store i8 %i.bj, ptr %i.bg, align 1
  %.pre = load i32, ptr %i.az, align 8
  %.pre401 = load i32, ptr %i.aw, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %i.bl = phi i32 [ %.pre401, %bb.j ], [ %i.be, %.lr.ph ]
  %i.bm = phi i32 [ %.pre, %bb.j ], [ %i.bf, %.lr.ph ]
  %i.bn = lshr i32 %i.bm, 8                       ; 3 uses
  store i32 %i.bn, ptr %i.az, align 8
  %i.bo = add i32 %i.bl, -8                       ; 4 uses
  store i32 %i.bo, ptr %i.aw, align 4
  %i.bp = icmp ugt i32 %i.bo, 7
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !llvm.loop !280

._crit_edge:                                      ; preds = %bb.k, %bb.i
  %i.bq = phi i32 [ %i.bb, %bb.i ], [ %i.bn, %bb.k ]
  %storemerge.lcssa = phi i32 [ %i.bc, %bb.i ], [ %i.bo, %bb.k ] ; 2 uses
  %i.br = shl nuw nsw i32 1, %storemerge.lcssa
  %i.bs = or i32 %i.bq, %i.br                     ; 2 uses
  store i32 %i.bs, ptr %i.az, align 8
  %i.bt = or disjoint i32 %storemerge.lcssa, 8    ; 2 uses
  store i32 %i.bt, ptr %i.aw, align 4
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.n
  %i.bu = phi i32 [ %i.bt, %._crit_edge ], [ %i.ce, %bb.n ]
  %i.bv = phi i32 [ %i.bs, %._crit_edge ], [ %i.cd, %bb.n ] ; 2 uses
  %i.bw = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.bx = load ptr, ptr %i.ac, align 8
  %i.by = icmp ult ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
end_hunk_0
