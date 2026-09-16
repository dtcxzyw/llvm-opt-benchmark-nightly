Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_herringbone_wang_tile?download=true
inline.NumInlined: 76
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 43
begin_hunk_0_@stbhw__process_template:bb.a
  %i.oe = phi i32 [ %i.qk, %._crit_edge351 ], [ %i.nw, %.preheader250.lr.ph ] ; 3 uses
  %i.of = phi i32 [ %i.ql, %._crit_edge351 ], [ %i.nz, %.preheader250.lr.ph ] ; 3 uses
  %.13356 = phi i32 [ %.14.lcssa, %._crit_edge351 ], [ %.12362, %.preheader250.lr.ph ] ; 3 uses
  %.3122354 = phi i32 [ %i.qm, %._crit_edge351 ], [ 0, %.preheader250.lr.ph ] ; 2 uses
  %i.og = icmp sgt i32 %i.of, 0
  br i1 %i.og, label %.preheader.lr.ph, label %._crit_edge351

.preheader.lr.ph:                                 ; preds = %.preheader250
  %i.oh = load i32, ptr %i.nm, align 4, !tbaa !41 ; 4 uses
  %i.oi = icmp sgt i32 %i.oh, 0
  br i1 %i.oi, label %.preheader, label %._crit_edge351

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge343
  %i.oj = phi i32 [ %i.pz, %._crit_edge343 ], [ %i.oc, %.preheader.lr.ph ] ; 2 uses
  %i.ok = phi i32 [ %i.qa, %._crit_edge343 ], [ %i.oh, %.preheader.lr.ph ] ; 3 uses
  %i.ol = phi i32 [ %i.qb, %._crit_edge343 ], [ %i.od, %.preheader.lr.ph ] ; 3 uses
  %i.om = phi i32 [ %i.qc, %._crit_edge343 ], [ %i.oh, %.preheader.lr.ph ] ; 4 uses
  %i.on = phi i32 [ %i.qd, %._crit_edge343 ], [ %i.oe, %.preheader.lr.ph ] ; 3 uses
  %i.oo = phi i32 [ %i.qe, %._crit_edge343 ], [ %i.oh, %.preheader.lr.ph ] ; 2 uses
  %.14350 = phi i32 [ %.15.lcssa, %._crit_edge343 ], [ %.13356, %.preheader.lr.ph ] ; 3 uses
  %.3126348 = phi i32 [ %i.qf, %._crit_edge343 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.op = icmp sgt i32 %i.oo, 0
  br i1 %i.op, label %.lr.ph342, label %._crit_edge343

.lr.ph342:                                        ; preds = %.preheader
  %i.oq = load i32, ptr %i.no, align 4, !tbaa !42
  %i.or = icmp sgt i32 %i.oq, 0
  br i1 %i.or, label %.lr.ph342.split, label %.lr.ph342.split.us

.lr.ph342.split.us:                               ; preds = %.lr.ph342
  %i.os = shl i32 %i.on, 1                        ; 2 uses
  %invariant.op346 = add i32 %i.os, 3
  %i.ot = add i32 %.14350, 3
  %smax389 = tail call i32 @llvm.smax.i32(i32 %i.om, i32 1)
  %i.ou = add nsw i32 %smax389, -1
  %i.ov = mul i32 %i.ou, %invariant.op346
  %i.ow = add i32 %i.ot, %i.ov
  %i.ox = add i32 %i.ow, %i.os
  br label %._crit_edge343

.lr.ph342.split:                                  ; preds = %.lr.ph342, %stbhw__process_v_row.exit248
  %i.oy = phi i32 [ %i.ps, %stbhw__process_v_row.exit248 ], [ %i.ok, %.lr.ph342 ] ; 2 uses
  %i.oz = phi i32 [ %i.pt, %stbhw__process_v_row.exit248 ], [ %i.ol, %.lr.ph342 ] ; 2 uses
  %.15341 = phi i32 [ %i.pw, %stbhw__process_v_row.exit248 ], [ %.14350, %.lr.ph342 ] ; 2 uses
  %.3114340 = phi i32 [ %i.px, %stbhw__process_v_row.exit248 ], [ 0, %.lr.ph342 ]
  %i.pa = load i32, ptr %i.d, align 4, !tbaa !40  ; 2 uses
  %i.pb = add nsw i32 %i.pa, -1
  %i.pc = load i32, ptr %i.nn, align 4, !tbaa !40 ; 2 uses
  %i.pd = add nsw i32 %i.pc, -1
  %i.pe = load i32, ptr %i.nl, align 4, !tbaa !40 ; 2 uses
  %i.pf = add nsw i32 %i.pe, -1
  %i.pg = load i32, ptr %i.no, align 4, !tbaa !42 ; 2 uses
  %i.ph = icmp sgt i32 %i.pg, 0
  br i1 %i.ph, label %.preheader54.lr.ph.i207, label %stbhw__process_v_row.exit248

.preheader54.lr.ph.i207:                          ; preds = %.lr.ph342.split
  %.not4763.i208 = icmp slt i32 %i.pc, 1
  %.not4955.i210 = icmp slt i32 %i.pa, 1
  %.not4595.i211 = icmp slt i32 %i.pe, 1
  %brmerge200.i212 = or i1 %.not4763.i208, %.not4595.i211
  %brmerge202.i214 = or i1 %.not4955.i210, %brmerge200.i212
  br i1 %brmerge202.i214, label %stbhw__process_v_row.exit248, label %.preheader54.i215

.preheader54.i215:                                ; preds = %.preheader54.lr.ph.i207, %._crit_edge101.split.split.split.split.i244
  %.0155.i216 = phi i32 [ %i.pr, %._crit_edge101.split.split.split.split.i244 ], [ 0, %.preheader54.lr.ph.i207 ]
  %.044154.i217 = phi i32 [ %i.pn, %._crit_edge101.split.split.split.split.i244 ], [ 0, %.preheader54.lr.ph.i207 ]
  br label %.preheader52.i221

.preheader52.i221:                                ; preds = %._crit_edge67.split.split.i240, %.preheader54.i215
  %.03997.i222 = phi i32 [ 0, %.preheader54.i215 ], [ %i.pq, %._crit_edge67.split.split.i240 ] ; 3 uses
  %.296.i223 = phi i32 [ %.044154.i217, %.preheader54.i215 ], [ %i.pn, %._crit_edge67.split.split.i240 ]
  br label %.preheader50.i227

.preheader50.i227:                                ; preds = %._crit_edge.i236, %.preheader52.i221
  %.04165.i228 = phi i32 [ 0, %.preheader52.i221 ], [ %i.pp, %._crit_edge.i236 ] ; 3 uses
  %.464.i229 = phi i32 [ %.296.i223, %.preheader52.i221 ], [ %i.pn, %._crit_edge.i236 ]
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader50.i227
  %.04357.i233 = phi i32 [ 0, %.preheader50.i227 ], [ %i.po, %bb.j ] ; 3 uses
  %.656.i234 = phi i32 [ %.464.i229, %.preheader50.i227 ], [ %i.pn, %bb.j ] ; 2 uses
  %i.pi = load ptr, ptr %i.np, align 8, !tbaa !38
  tail call void %i.pi(ptr noundef %0, i32 noundef %.656.i234, i32 noundef %.15341, i32 noundef %.04357.i233, i32 noundef %.3126348, i32 noundef %.04165.i228, i32 noundef %.3122354, i32 noundef %.03997.i222, i32 noundef %.3118360) #16, !inline_history !93
  %i.pj = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 4
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !36
  %i.pm = add i32 %.656.i234, 3
  %i.pn = add i32 %i.pm, %i.pl                    ; 4 uses
  %i.po = add nuw nsw i32 %.04357.i233, 1
  %exitcond.not.i235 = icmp eq i32 %.04357.i233, %i.pb
  br i1 %exitcond.not.i235, label %._crit_edge.i236, label %bb.j, !llvm.loop !5

._crit_edge.i236:                                 ; preds = %bb.j
  %i.pp = add nuw nsw i32 %.04165.i228, 1
  %exitcond177.not.i239 = icmp eq i32 %.04165.i228, %i.pd
  br i1 %exitcond177.not.i239, label %._crit_edge67.split.split.i240, label %.preheader50.i227, !llvm.loop !7

._crit_edge67.split.split.i240:                   ; preds = %._crit_edge.i236
  %i.pq = add nuw nsw i32 %.03997.i222, 1
  %exitcond179.not.i243 = icmp eq i32 %.03997.i222, %i.pf
  br i1 %exitcond179.not.i243, label %._crit_edge101.split.split.split.split.i244, label %.preheader52.i221, !llvm.loop !8

._crit_edge101.split.split.split.split.i244:      ; preds = %._crit_edge67.split.split.i240
  %i.pr = add nuw nsw i32 %.0155.i216, 1          ; 2 uses
  %exitcond181.not.i247 = icmp eq i32 %i.pr, %i.pg
  br i1 %exitcond181.not.i247, label %stbhw__process_v_row.exit248.loopexit, label %.preheader54.i215, !llvm.loop !9

stbhw__process_v_row.exit248.loopexit:            ; preds = %._crit_edge101.split.split.split.split.i244
  %.pre404 = load i32, ptr %i.nq, align 4, !tbaa !36
  %.pre405 = load i32, ptr %i.nm, align 4, !tbaa !41
  br label %stbhw__process_v_row.exit248

stbhw__process_v_row.exit248:                     ; preds = %stbhw__process_v_row.exit248.loopexit, %.lr.ph342.split, %.preheader54.lr.ph.i207
  %i.ps = phi i32 [ %.pre405, %stbhw__process_v_row.exit248.loopexit ], [ %i.oy, %.lr.ph342.split ], [ %i.oy, %.preheader54.lr.ph.i207 ] ; 5 uses
  %i.pt = phi i32 [ %.pre404, %stbhw__process_v_row.exit248.loopexit ], [ %i.oz, %.lr.ph342.split ], [ %i.oz, %.preheader54.lr.ph.i207 ] ; 4 uses
  %i.pu = shl nsw i32 %i.pt, 1
  %i.pv = add i32 %.15341, 3
  %i.pw = add i32 %i.pv, %i.pu                    ; 2 uses
  %i.px = add nuw nsw i32 %.3114340, 1            ; 2 uses
  %i.py = icmp slt i32 %i.px, %i.ps
  br i1 %i.py, label %.lr.ph342.split, label %._crit_edge343.loopexit, !llvm.loop !87

._crit_edge343.loopexit:                          ; preds = %stbhw__process_v_row.exit248
  %.pre406 = load i32, ptr %i.nl, align 4, !tbaa !40
  br label %._crit_edge343

._crit_edge343:                                   ; preds = %.lr.ph342.split.us, %._crit_edge343.loopexit, %.preheader
  %i.pz = phi i32 [ %i.oj, %.preheader ], [ %.pre406, %._crit_edge343.loopexit ], [ %i.oj, %.lr.ph342.split.us ] ; 4 uses
  %i.qa = phi i32 [ %i.ok, %.preheader ], [ %i.ps, %._crit_edge343.loopexit ], [ %i.ok, %.lr.ph342.split.us ]
  %i.qb = phi i32 [ %i.ol, %.preheader ], [ %i.pt, %._crit_edge343.loopexit ], [ %i.ol, %.lr.ph342.split.us ] ; 2 uses
  %i.qc = phi i32 [ %i.om, %.preheader ], [ %i.ps, %._crit_edge343.loopexit ], [ %i.om, %.lr.ph342.split.us ]
  %i.qd = phi i32 [ %i.on, %.preheader ], [ %i.pt, %._crit_edge343.loopexit ], [ %i.on, %.lr.ph342.split.us ] ; 2 uses
  %i.qe = phi i32 [ %i.oo, %.preheader ], [ %i.ps, %._crit_edge343.loopexit ], [ %i.om, %.lr.ph342.split.us ]
  %.15.lcssa = phi i32 [ %.14350, %.preheader ], [ %i.pw, %._crit_edge343.loopexit ], [ %i.ox, %.lr.ph342.split.us ] ; 2 uses
  %i.qf = add nuw nsw i32 %.3126348, 1            ; 2 uses
  %i.qg = icmp slt i32 %i.qf, %i.pz
  br i1 %i.qg, label %.preheader, label %._crit_edge351.loopexit, !llvm.loop !88

._crit_edge351.loopexit:                          ; preds = %._crit_edge343
  %.pre407 = load i32, ptr %i.nk, align 4, !tbaa !40
  br label %._crit_edge351

._crit_edge351:                                   ; preds = %.preheader.lr.ph, %._crit_edge351.loopexit, %.preheader250
  %i.qh = phi i32 [ %i.ob, %.preheader250 ], [ %.pre407, %._crit_edge351.loopexit ], [ %i.ob, %.preheader.lr.ph ] ; 4 uses
  %i.qi = phi i32 [ %i.oc, %.preheader250 ], [ %i.pz, %._crit_edge351.loopexit ], [ %i.oc, %.preheader.lr.ph ]
  %i.qj = phi i32 [ %i.od, %.preheader250 ], [ %i.qb, %._crit_edge351.loopexit ], [ %i.od, %.preheader.lr.ph ] ; 2 uses
  %i.qk = phi i32 [ %i.oe, %.preheader250 ], [ %i.qd, %._crit_edge351.loopexit ], [ %i.oe, %.preheader.lr.ph ] ; 2 uses
  %i.ql = phi i32 [ %i.of, %.preheader250 ], [ %i.pz, %._crit_edge351.loopexit ], [ %i.of, %.preheader.lr.ph ]
  %.14.lcssa = phi i32 [ %.13356, %.preheader250 ], [ %.15.lcssa, %._crit_edge351.loopexit ], [ %.13356, %.preheader.lr.ph ] ; 2 uses
  %i.qm = add nuw nsw i32 %.3122354, 1            ; 2 uses
  %i.qn = icmp slt i32 %i.qm, %i.qh
  br i1 %i.qn, label %.preheader250, label %._crit_edge357.loopexit, !llvm.loop !89

._crit_edge357.loopexit:                          ; preds = %._crit_edge351
  %.pre408 = load i32, ptr %i.bm, align 4, !tbaa !40
  br label %._crit_edge357

._crit_edge357:                                   ; preds = %.preheader250.lr.ph, %._crit_edge357.loopexit, %.preheader251
  %i.qo = phi i32 [ %i.nt, %.preheader251 ], [ %.pre408, %._crit_edge357.loopexit ], [ %i.nt, %.preheader250.lr.ph ] ; 2 uses
  %i.qp = phi i32 [ %i.nu, %.preheader251 ], [ %i.qh, %._crit_edge357.loopexit ], [ %i.nu, %.preheader250.lr.ph ]
  %i.qq = phi i32 [ %i.nv, %.preheader251 ], [ %i.qj, %._crit_edge357.loopexit ], [ %i.nv, %.preheader250.lr.ph ]
  %i.qr = phi i32 [ %i.nw, %.preheader251 ], [ %i.qk, %._crit_edge357.loopexit ], [ %i.nw, %.preheader250.lr.ph ]
  %i.qs = phi i32 [ %i.nx, %.preheader251 ], [ %i.qh, %._crit_edge357.loopexit ], [ %i.nx, %.preheader250.lr.ph ]
  %.13.lcssa = phi i32 [ %.12362, %.preheader251 ], [ %.14.lcssa, %._crit_edge357.loopexit ], [ %.12362, %.preheader250.lr.ph ]
  %i.qt = add nuw nsw i32 %.3118360, 1            ; 2 uses
  %i.qu = icmp slt i32 %i.qt, %i.qo
  br i1 %i.qu, label %.preheader251, label %.loopexit, !llvm.loop !90

.loopexit:                                        ; preds = %._crit_edge308, %._crit_edge357, %.preheader255, %.preheader251.lr.ph, %.preheader258.lr.ph, %._crit_edge286, %._crit_edge337, %bb.e
  %.0127 = phi i32 [ 0, %bb.e ], [ 1, %._crit_edge337 ], [ 1, %.preheader251.lr.ph ], [ 1, %._crit_edge286 ], [ 1, %.preheader255 ], [ 1, %._crit_edge357 ], [ 1, %.preheader258.lr.ph ], [ 1, %._crit_edge308 ]
  ret i32 %.0127
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbhw__draw_pixel(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = mul nsw i32 %3, %1
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  %i.d = mul nsw i32 %2, 3
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.f, ptr noundef nonnull align 1 dereferenceable(3) %4, i64 3, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbhw__draw_h_tile(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7) local_unnamed_addr #5 {
bb.a:
  %factor.op.mul31 = shl i32 %7, 1                ; 2 uses
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.lr.ph33.split.us.preheader, label %._crit_edge

.lr.ph33.split.us.preheader:                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 6
  %i.c = sext i32 %4 to i64
  %i.d = sext i32 %2 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %factor.op.mul31, i32 1)
  %i.e = sext i32 %5 to i64
  %i.f = sext i32 %3 to i64
  %i.g = sext i32 %1 to i64
  %wide.trip.count39 = zext nneg i32 %7 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph33.split.us

.lr.ph33.split.us:                                ; preds = %.lr.ph33.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv36 = phi i64 [ 0, %.lr.ph33.split.us.preheader ], [ %indvars.iv.next37, %..loopexit_crit_edge.us ] ; 3 uses
  %i.h = add nsw i64 %indvars.iv36, %i.e          ; 3 uses
  %i.i = icmp sgt i64 %i.h, -1
  %i.j = icmp slt i64 %i.h, %i.f
  %or.cond.us = and i1 %i.i, %i.j
  br i1 %or.cond.us, label %.preheader.us, label %..loopexit_crit_edge.us

bb.b:                                             ; preds = %.preheader.us, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.k = add nsw i64 %indvars.iv, %i.c            ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  %i.m = icmp slt i64 %i.k, %i.d
  %or.cond29.us = and i1 %i.l, %i.m
  br i1 %or.cond29.us, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i64 %indvars.iv, %i.v
  %i.o = mul nsw i64 %i.n, 3
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 %i.o
  %i.q = mul nuw nsw i64 %i.k, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.r, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.p, i64 3, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !10

..loopexit_crit_edge.us:                          ; preds = %bb.d, %.lr.ph33.split.us
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge, label %.lr.ph33.split.us, !llvm.loop !11

.preheader.us:                                    ; preds = %.lr.ph33.split.us
  %i.s = trunc nuw nsw i64 %indvars.iv36 to i32
  %factor.op.mul.reass.us = mul i32 %factor.op.mul31, %i.s
  %i.t = mul nsw i64 %i.h, %i.g
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  %i.v = sext i32 %factor.op.mul.reass.us to i64
  br label %bb.b

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbhw__draw_v_tile(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.lr.ph33.split.us.preheader, label %._crit_edge

.lr.ph33.split.us.preheader:                      ; preds = %bb.a
  %i.b = shl nuw i32 %7, 1
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 6
  %i.d = sext i32 %4 to i64
  %i.e = sext i32 %2 to i64
  %i.f = sext i32 %5 to i64
  %i.g = sext i32 %3 to i64
  %i.h = sext i32 %1 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %wide.trip.count39 = zext nneg i32 %smax to i64
  %wide.trip.count = zext nneg i32 %7 to i64
  br label %.lr.ph33.split.us

.lr.ph33.split.us:                                ; preds = %.lr.ph33.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv36 = phi i64 [ 0, %.lr.ph33.split.us.preheader ], [ %indvars.iv.next37, %..loopexit_crit_edge.us ] ; 3 uses
  %i.i = add nsw i64 %indvars.iv36, %i.f          ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  %i.k = icmp slt i64 %i.i, %i.g
  %or.cond.us = and i1 %i.j, %i.k
  br i1 %or.cond.us, label %.preheader.us, label %..loopexit_crit_edge.us

bb.b:                                             ; preds = %.preheader.us, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.l = add nsw i64 %indvars.iv, %i.d            ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  %i.n = icmp slt i64 %i.l, %i.e
  %or.cond29.us = and i1 %i.m, %i.n
  br i1 %or.cond29.us, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = add nuw nsw i64 %indvars.iv, %i.x
  %i.p = mul nuw nsw i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.p
  %i.r = mul nuw nsw i64 %i.l, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.q, i64 3, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !12

..loopexit_crit_edge.us:                          ; preds = %bb.d, %.lr.ph33.split.us
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge, label %.lr.ph33.split.us, !llvm.loop !13

.preheader.us:                                    ; preds = %.lr.ph33.split.us
  %i.t = mul nsw i64 %i.i, %i.h
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  %i.v = trunc i64 %indvars.iv36 to i32
  %i.w = mul i32 %7, %i.v
  %i.x = zext i32 %i.w to i64
  br label %bb.b

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbhw__choose_tile(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  %.not = icmp eq ptr %8, null                    ; 4 uses
  br i1 %i.a, label %.preheader.us.preheader, label %.split87.us

.preheader.us.preheader:                          ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !45      ; 3 uses
  %i.c = icmp slt i8 %i.b, 0
  br i1 %i.c, label %.lr.ph.split.us.us, label %.lr.ph.split.us75.preheader

.lr.ph.split.us75.preheader:                      ; preds = %.preheader.us.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph.split.us75

.lr.ph.split.us75:                                ; preds = %.lr.ph.split.us75.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us75.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.05070.us76 = phi i32 [ 0, %.lr.ph.split.us75.preheader ], [ %.3.ph.us80, %bb.o ] ; 7 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 7 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !48
  %i.g = icmp eq i8 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.o

bb.b:                                             ; preds = %.lr.ph.split.us75
  %i.h = load i8, ptr %3, align 1, !tbaa !45      ; 2 uses
  %i.i = icmp slt i8 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !49
  %i.l = icmp eq i8 %i.h, %i.k
  br i1 %i.l, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = load i8, ptr %4, align 1, !tbaa !45      ; 2 uses
  %i.n = icmp slt i8 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !50
  %i.q = icmp eq i8 %i.m, %i.p
  br i1 %i.q, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = load i8, ptr %5, align 1, !tbaa !45      ; 2 uses
  %i.s = icmp slt i8 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !51
  %i.v = icmp eq i8 %i.r, %i.u
  br i1 %i.v, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = load i8, ptr %6, align 1, !tbaa !45      ; 2 uses
  %i.x = icmp slt i8 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.z = load i8, ptr %i.y, align 1, !tbaa !52
  %i.aa = icmp eq i8 %i.w, %i.z
  br i1 %i.aa, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = load i8, ptr %7, align 1, !tbaa !45     ; 2 uses
  %i.ac = icmp slt i8 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !53
  %i.af = icmp eq i8 %i.ab, %i.ae
  br i1 %i.af, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %8, align 8, !tbaa !55
end_hunk_0
begin_hunk_1_@stbhw_generate_image:bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv512 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !45
  %i.ek = getelementptr i8, ptr %i.ei, i64 107
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !45
  %.not447 = icmp eq i8 %i.ej, %i.el
  br i1 %.not447, label %bb.ae, label %bb.as

bb.ae:                                            ; preds = %bb.ad
  %i.em = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.dy
  %i.en = getelementptr i8, ptr %i.em, i64 107
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !45
  %.not448 = icmp eq i8 %i.dx, %i.eo
  br i1 %.not448, label %bb.af, label %bb.as

bb.af:                                            ; preds = %bb.ae
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ed ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 107
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !45
  %.not449 = icmp eq i8 %i.ea, %i.er
  br i1 %.not449, label %bb.ag, label %bb.as

bb.ag:                                            ; preds = %bb.af
  %i.es = sub i64 %i.ed, %indvars.iv518
  %i.et = and i64 %i.es, 3                        ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !40 ; 6 uses
  %i.ew = icmp sgt i32 %i.ev, 1
  br i1 %i.ew, label %bb.ah, label %bb.as

bb.ah:                                            ; preds = %bb.ag
  %i.ex = sext i8 %i.ea to i32                    ; 2 uses
  br i1 %.not313, label %.thread418, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.et
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !55 ; 7 uses
  %.not.i338 = icmp eq ptr %i.ez, null
  br i1 %.not.i338, label %.thread418, label %.lr.ph.preheader.i342

.lr.ph.preheader.i342:                            ; preds = %bb.ai
  %i.fa = zext i32 %i.ex to i64                   ; 6 uses
  %wide.trip.count.i343 = zext nneg i32 %i.ev to i64 ; 3 uses
  %xtraiter627 = and i64 %wide.trip.count.i343, 3 ; 3 uses
  %i.fb = icmp ult i32 %i.ev, 4
  br i1 %i.fb, label %.lr.ph.i344.epil.preheader, label %.lr.ph.preheader.i342.new

.lr.ph.preheader.i342.new:                        ; preds = %.lr.ph.preheader.i342
  %unroll_iter632 = and i64 %wide.trip.count.i343, 2147483644
  br label %.lr.ph.i344

.lr.ph.i344:                                      ; preds = %bb.an, %.lr.ph.preheader.i342.new
  %indvars.iv.i345 = phi i64 [ 0, %.lr.ph.preheader.i342.new ], [ %indvars.iv.next.i349.3, %bb.an ] ; 6 uses
  %.02534.i346 = phi i32 [ 0, %.lr.ph.preheader.i342.new ], [ %.1.i348.3, %bb.an ] ; 2 uses
  %niter633 = phi i64 [ 0, %.lr.ph.preheader.i342.new ], [ %niter633.next.3, %bb.an ]
  %.not32.i347 = icmp eq i64 %indvars.iv.i345, %i.fa
  br i1 %.not32.i347, label %.lr.ph.i344.1, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i344
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.i345
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !40
  %i.fe = add nsw i32 %i.fd, %.02534.i346
  br label %.lr.ph.i344.1

.lr.ph.i344.1:                                    ; preds = %bb.aj, %.lr.ph.i344
  %.1.i348 = phi i32 [ %i.fe, %bb.aj ], [ %.02534.i346, %.lr.ph.i344 ] ; 2 uses
  %indvars.iv.next.i349 = or disjoint i64 %indvars.iv.i345, 1 ; 2 uses
  %.not32.i347.1 = icmp eq i64 %indvars.iv.next.i349, %i.fa
  br i1 %.not32.i347.1, label %.lr.ph.i344.2, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i344.1
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.next.i349
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !40
  %i.fh = add nsw i32 %i.fg, %.1.i348
  br label %.lr.ph.i344.2

.lr.ph.i344.2:                                    ; preds = %bb.ak, %.lr.ph.i344.1
  %.1.i348.1 = phi i32 [ %i.fh, %bb.ak ], [ %.1.i348, %.lr.ph.i344.1 ] ; 2 uses
  %indvars.iv.next.i349.1 = or disjoint i64 %indvars.iv.i345, 2 ; 2 uses
  %.not32.i347.2 = icmp eq i64 %indvars.iv.next.i349.1, %i.fa
  br i1 %.not32.i347.2, label %.lr.ph.i344.3, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i344.2
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.next.i349.1
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !40
  %i.fk = add nsw i32 %i.fj, %.1.i348.1
  br label %.lr.ph.i344.3

.lr.ph.i344.3:                                    ; preds = %bb.al, %.lr.ph.i344.2
  %.1.i348.2 = phi i32 [ %i.fk, %bb.al ], [ %.1.i348.1, %.lr.ph.i344.2 ] ; 2 uses
  %indvars.iv.next.i349.2 = or disjoint i64 %indvars.iv.i345, 3 ; 2 uses
  %.not32.i347.3 = icmp eq i64 %indvars.iv.next.i349.2, %i.fa
  br i1 %.not32.i347.3, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i344.3
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.next.i349.2
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !40
  %i.fn = add nsw i32 %i.fm, %.1.i348.2
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i344.3
  %.1.i348.3 = phi i32 [ %i.fn, %bb.am ], [ %.1.i348.2, %.lr.ph.i344.3 ] ; 3 uses
  %indvars.iv.next.i349.3 = add nuw nsw i64 %indvars.iv.i345, 4 ; 2 uses
  %niter633.next.3 = add i64 %niter633, 4         ; 2 uses
  %niter633.ncmp.3 = icmp eq i64 %niter633.next.3, %unroll_iter632
  br i1 %niter633.ncmp.3, label %._crit_edge.i351.unr-lcssa, label %.lr.ph.i344, !llvm.loop !15

._crit_edge.i351.unr-lcssa:                       ; preds = %bb.an
  %lcmp.mod629.not = icmp eq i64 %xtraiter627, 0
  br i1 %lcmp.mod629.not, label %._crit_edge.i351, label %.lr.ph.i344.epil.preheader

.lr.ph.i344.epil.preheader:                       ; preds = %._crit_edge.i351.unr-lcssa, %.lr.ph.preheader.i342
  %indvars.iv.i345.epil.init = phi i64 [ 0, %.lr.ph.preheader.i342 ], [ %indvars.iv.next.i349.3, %._crit_edge.i351.unr-lcssa ]
  %.02534.i346.epil.init = phi i32 [ 0, %.lr.ph.preheader.i342 ], [ %.1.i348.3, %._crit_edge.i351.unr-lcssa ]
  %lcmp.mod631 = icmp ne i64 %xtraiter627, 0
  tail call void @llvm.assume(i1 %lcmp.mod631)
  br label %.lr.ph.i344.epil

.lr.ph.i344.epil:                                 ; preds = %bb.ap, %.lr.ph.i344.epil.preheader
  %indvars.iv.i345.epil = phi i64 [ %indvars.iv.i345.epil.init, %.lr.ph.i344.epil.preheader ], [ %indvars.iv.next.i349.epil, %bb.ap ] ; 3 uses
  %.02534.i346.epil = phi i32 [ %.02534.i346.epil.init, %.lr.ph.i344.epil.preheader ], [ %.1.i348.epil, %bb.ap ] ; 2 uses
  %epil.iter628 = phi i64 [ 0, %.lr.ph.i344.epil.preheader ], [ %epil.iter628.next, %bb.ap ]
  %.not32.i347.epil = icmp eq i64 %indvars.iv.i345.epil, %i.fa
  br i1 %.not32.i347.epil, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i344.epil
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.i345.epil
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !40
  %i.fq = add nsw i32 %i.fp, %.02534.i346.epil
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i344.epil
  %.1.i348.epil = phi i32 [ %i.fq, %bb.ao ], [ %.02534.i346.epil, %.lr.ph.i344.epil ] ; 2 uses
  %indvars.iv.next.i349.epil = add nuw nsw i64 %indvars.iv.i345.epil, 1
  %epil.iter628.next = add i64 %epil.iter628, 1   ; 2 uses
  %epil.iter628.cmp.not = icmp eq i64 %epil.iter628.next, %xtraiter627
  br i1 %epil.iter628.cmp.not, label %._crit_edge.i351, label %.lr.ph.i344.epil, !llvm.loop !103

._crit_edge.i351:                                 ; preds = %bb.ap, %._crit_edge.i351.unr-lcssa
  %.1.i348.lcssa = phi i32 [ %.1.i348.3, %._crit_edge.i351.unr-lcssa ], [ %.1.i348.epil, %bb.ap ]
  %i.fr = tail call i32 @rand() #16
  %i.fs = ashr i32 %i.fr, 4
  %i.ft = srem i32 %i.fs, %.1.i348.lcssa
  br label %.lr.ph38.i353

.lr.ph38.i353:                                    ; preds = %bb.ar, %._crit_edge.i351
  %indvars.iv43.i354 = phi i64 [ 0, %._crit_edge.i351 ], [ %indvars.iv.next44.i358, %bb.ar ] ; 4 uses
  %.236.i355 = phi i32 [ 0, %._crit_edge.i351 ], [ %.3.i357, %bb.ar ] ; 2 uses
  %.not31.i356 = icmp eq i64 %indvars.iv43.i354, %i.fa
  br i1 %.not31.i356, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph38.i353
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv43.i354
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !40
  %i.fw = add nsw i32 %i.fv, %.236.i355           ; 2 uses
  %i.fx = icmp slt i32 %i.ft, %i.fw
  br i1 %i.fx, label %.loopexit.loopexit.split.loop.exit53.i360, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph38.i353
  %.3.i357 = phi i32 [ %i.fw, %bb.aq ], [ %.236.i355, %.lr.ph38.i353 ]
  %indvars.iv.next44.i358 = add nuw nsw i64 %indvars.iv43.i354, 1 ; 2 uses
  %exitcond47.not.i359 = icmp eq i64 %indvars.iv.next44.i358, %wide.trip.count.i343
  br i1 %exitcond47.not.i359, label %stbhw__change_color.exit361, label %.lr.ph38.i353, !llvm.loop !16

.thread418:                                       ; preds = %bb.ah, %bb.ai
  %i.fy = tail call i32 @rand() #16
  %i.fz = ashr i32 %i.fy, 4
  %i.ga = add nsw i32 %i.ev, -1
  %i.gb = srem i32 %i.fz, %i.ga
  %i.gc = add nsw i32 %i.ex, 1
  %i.gd = add nsw i32 %i.gc, %i.gb
  %i.ge = srem i32 %i.gd, %i.ev
  br label %stbhw__change_color.exit361

.loopexit.loopexit.split.loop.exit53.i360:        ; preds = %bb.aq
  %i.gf = trunc nuw nsw i64 %indvars.iv43.i354 to i32
  br label %stbhw__change_color.exit361

stbhw__change_color.exit361:                      ; preds = %bb.ar, %.thread418, %.loopexit.loopexit.split.loop.exit53.i360
  %.0.i341 = phi i32 [ %i.ge, %.thread418 ], [ %i.gf, %.loopexit.loopexit.split.loop.exit53.i360 ], [ %i.ev, %bb.ar ]
  %i.gg = trunc i32 %.0.i341 to i8
  store i8 %i.gg, ptr %i.ep, align 1, !tbaa !45
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge544, %bb.ag, %stbhw__change_color.exit361, %.thread587, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %indvars.iv.next513.pre-phi = phi i64 [ %.pre545, %._crit_edge544 ], [ %i.dy, %bb.ag ], [ %i.dy, %stbhw__change_color.exit361 ], [ %i.dy, %.thread587 ], [ %i.dy, %bb.ac ], [ %i.dy, %bb.ad ], [ %i.dy, %bb.ae ], [ %i.dy, %bb.af ] ; 2 uses
  %exitcond517.not = icmp eq i64 %indvars.iv.next513.pre-phi, %wide.trip.count516
  br i1 %exitcond517.not, label %._crit_edge, label %bb.k, !llvm.loop !104

._crit_edge:                                      ; preds = %bb.as
  %exitcond523.not = icmp eq i64 %indvars.iv.next519, %wide.trip.count522
  br i1 %exitcond523.not, label %._crit_edge465.split, label %.preheader, !llvm.loop !105

._crit_edge465.split:                             ; preds = %._crit_edge, %bb.d, %.preheader.lr.ph, %.preheader454
  %i.gh = sub nsw i32 0, %i.b                     ; 2 uses
  %.not306470 = icmp sgt i32 %5, %i.gh
  br i1 %.not306470, label %.lr.ph474, label %.critedge324

.lr.ph474:                                        ; preds = %._crit_edge465.split
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %factor.op.mul31.i = shl i32 %i.b, 1            ; 2 uses
  %i.gk = icmp sgt i32 %i.b, 0                    ; 2 uses
  %i.gl = sext i32 %4 to i64                      ; 3 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %factor.op.mul31.i, i32 1)
  %i.gm = sext i32 %5 to i64                      ; 3 uses
  %i.gn = sext i32 %3 to i64                      ; 2 uses
  %wide.trip.count39.i = zext nneg i32 %i.b to i64 ; 2 uses
  %wide.trip.count.i363 = zext nneg i32 %smax.i to i64 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gq = sext i32 %i.b to i64                    ; 2 uses
  %i.gr = sext i32 %i.gh to i64
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph474, %._crit_edge469
  %indvars.iv529.a = phi i64 [ -1, %.lr.ph474 ], [ %indvars.iv.next530, %._crit_edge469 ] ; 3 uses
  %indvars.iv527 = phi i64 [ %i.gr, %.lr.ph474 ], [ %indvars.iv.next528, %._crit_edge469 ] ; 4 uses
  %i.gs = trunc nsw i64 %indvars.iv529.a to i32   ; 2 uses
  %i.gt = and i32 %i.gs, 3
  %i.gu = icmp eq i32 %i.gt, 0
  %i.gv = or i32 %i.gs, -4
  %.2261 = select i1 %i.gu, i32 0, i32 %i.gv      ; 2 uses
  %i.gw = mul nsw i32 %.2261, %i.b                ; 2 uses
  %.not303466 = icmp slt i32 %i.gw, %4
  br i1 %.not303466, label %.lr.ph, label %._crit_edge469

.lr.ph:                                           ; preds = %bb.at
  %i.gx = getelementptr [106 x i8], ptr @c_color, i64 %indvars.iv529.a ; 3 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 212    ; 5 uses
  %i.gz = getelementptr i8, ptr %i.gx, i64 318    ; 5 uses
  %i.ha = getelementptr i8, ptr %i.gx, i64 424    ; 2 uses
  %i.hb = sext i32 %.2261 to i64
  %i.hc = sext i32 %i.gw to i64
  %i.hd = trunc nsw i64 %indvars.iv527 to i32
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph, %.loopexit451
  %indvars.iv524 = phi i64 [ %i.hb, %.lr.ph ], [ %indvars.iv.next525, %.loopexit451 ] ; 6 uses
  %i.he = phi i64 [ %i.hc, %.lr.ph ], [ %i.jp, %.loopexit451 ]
  %i.hf = trunc nsw i64 %indvars.iv524 to i32
  %i.hg = add i32 %i.hf, 2                        ; 2 uses
  %i.hh = mul i32 %i.hg, %i.b                     ; 2 uses
  %i.hi = or i32 %i.hh, %i.hd
  %or.cond10 = icmp sgt i32 %i.hi, -1
  br i1 %or.cond10, label %bb.av, label %stbhw__draw_h_tile.exit

bb.av:                                            ; preds = %bb.au
  %i.hj = load ptr, ptr %i.gi, align 8, !tbaa !63
  %i.hk = load i32, ptr %i.gj, align 8, !tbaa !64
  %i.hl = sext i32 %i.hg to i64                   ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %i.gy, i64 %i.hl
  %i.hn = add nsw i64 %indvars.iv524, 3           ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %i.gy, i64 %i.hn
  %i.hp = add nsw i64 %indvars.iv524, 4           ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %i.gy, i64 %i.hp
  %i.hr = getelementptr inbounds i8, ptr %i.gz, i64 %i.hl
  %i.hs = getelementptr inbounds i8, ptr %i.gz, i64 %i.hn
  %i.ht = getelementptr inbounds i8, ptr %i.gz, i64 %i.hp
  %i.hu = tail call ptr @stbhw__choose_tile(ptr noundef %i.hj, i32 noundef %i.hk, ptr noundef %i.hm, ptr noundef %i.ho, ptr noundef %i.hq, ptr noundef %i.hr, ptr noundef %i.hs, ptr noundef %i.ht, ptr noundef %1) ; 2 uses
  %.not304 = icmp eq ptr %i.hu, null
  br i1 %.not304, label %.critedge324, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %i.gk, label %.lr.ph33.split.us.preheader.i, label %stbhw__draw_h_tile.exit

.lr.ph33.split.us.preheader.i:                    ; preds = %bb.aw
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 6
  br label %.lr.ph33.split.us.i

.lr.ph33.split.us.i:                              ; preds = %..loopexit_crit_edge.us.i, %.lr.ph33.split.us.preheader.i
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph33.split.us.preheader.i ], [ %indvars.iv.next37.i, %..loopexit_crit_edge.us.i ] ; 3 uses
  %i.hw = add nuw nsw i64 %indvars.iv36.i, %indvars.iv527 ; 2 uses
  %i.hx = icmp slt i64 %i.hw, %i.gm
  br i1 %i.hx, label %.preheader.us.i, label %..loopexit_crit_edge.us.i

bb.ax:                                            ; preds = %.preheader.us.i, %bb.az
  %indvars.iv.i364 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i365, %bb.az ] ; 3 uses
  %i.hy = add nsw i64 %indvars.iv.i364, %i.he     ; 3 uses
  %i.hz = icmp sgt i64 %i.hy, -1
  %i.ia = icmp slt i64 %i.hy, %i.gl
  %or.cond29.us.i = and i1 %i.hz, %i.ia
  br i1 %or.cond29.us.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ib = add nsw i64 %indvars.iv.i364, %i.ij
  %i.ic = mul nsw i64 %i.ib, 3
  %i.id = getelementptr inbounds i8, ptr %i.hv, i64 %i.ic
  %i.ie = mul nuw nsw i64 %i.hy, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ie
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.if, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.id, i64 3, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %indvars.iv.next.i365 = add nuw nsw i64 %indvars.iv.i364, 1 ; 2 uses
  %exitcond.not.i366 = icmp eq i64 %indvars.iv.next.i365, %wide.trip.count.i363
  br i1 %exitcond.not.i366, label %..loopexit_crit_edge.us.i, label %bb.ax, !llvm.loop !10

..loopexit_crit_edge.us.i:                        ; preds = %bb.az, %.lr.ph33.split.us.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count39.i
  br i1 %exitcond40.not.i, label %stbhw__draw_h_tile.exit, label %.lr.ph33.split.us.i, !llvm.loop !11

.preheader.us.i:                                  ; preds = %.lr.ph33.split.us.i
  %i.ig = trunc nuw nsw i64 %indvars.iv36.i to i32
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul31.i, %i.ig
  %i.ih = mul nsw i64 %i.hw, %i.gn
  %i.ii = getelementptr inbounds i8, ptr %2, i64 %i.ih
  %i.ij = sext i32 %factor.op.mul.reass.us.i to i64
  br label %bb.ax

stbhw__draw_h_tile.exit:                          ; preds = %..loopexit_crit_edge.us.i, %bb.aw, %bb.au
  %i.ik = add nsw i32 %i.hh, %i.b                 ; 2 uses
  %i.il = icmp slt i32 %i.ik, %4
  br i1 %i.il, label %bb.ba, label %.loopexit451

bb.ba:                                            ; preds = %stbhw__draw_h_tile.exit
  %i.im = load ptr, ptr %i.go, align 8, !tbaa !65
  %i.in = load i32, ptr %i.gp, align 8, !tbaa !66
  %i.io = add nsw i64 %indvars.iv524, 5           ; 3 uses
  %i.ip = getelementptr inbounds i8, ptr %i.gy, i64 %i.io
  %i.iq = getelementptr inbounds i8, ptr %i.gz, i64 %i.io
  %i.ir = getelementptr inbounds i8, ptr %i.ha, i64 %i.io
  %i.is = add nsw i64 %indvars.iv524, 6           ; 3 uses
  %i.it = getelementptr inbounds i8, ptr %i.gy, i64 %i.is
  %i.iu = getelementptr inbounds i8, ptr %i.gz, i64 %i.is
  %i.iv = getelementptr inbounds i8, ptr %i.ha, i64 %i.is
  %i.iw = tail call ptr @stbhw__choose_tile(ptr noundef %i.im, i32 noundef %i.in, ptr noundef %i.ip, ptr noundef %i.iq, ptr noundef %i.ir, ptr noundef %i.it, ptr noundef %i.iu, ptr noundef %i.iv, ptr noundef %1) ; 2 uses
  %.not305 = icmp eq ptr %i.iw, null
  br i1 %.not305, label %.critedge324, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.gk, label %.lr.ph33.split.us.preheader.i368, label %.loopexit451

.lr.ph33.split.us.preheader.i368:                 ; preds = %bb.bb
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 6
  %i.iy = sext i32 %i.ik to i64
  br label %.lr.ph33.split.us.i371

.lr.ph33.split.us.i371:                           ; preds = %..loopexit_crit_edge.us.i374, %.lr.ph33.split.us.preheader.i368
  %indvars.iv36.i372 = phi i64 [ 0, %.lr.ph33.split.us.preheader.i368 ], [ %indvars.iv.next37.i375, %..loopexit_crit_edge.us.i374 ] ; 3 uses
  %i.iz = add nsw i64 %indvars.iv36.i372, %indvars.iv527 ; 3 uses
  %i.ja = icmp sgt i64 %i.iz, -1
  %i.jb = icmp slt i64 %i.iz, %i.gm
  %or.cond.us.i373 = and i1 %i.ja, %i.jb
  br i1 %or.cond.us.i373, label %.preheader.us.i377, label %..loopexit_crit_edge.us.i374

bb.bc:                                            ; preds = %.preheader.us.i377, %bb.be
  %indvars.iv.i378 = phi i64 [ 0, %.preheader.us.i377 ], [ %indvars.iv.next.i380, %bb.be ] ; 3 uses
  %i.jc = add nsw i64 %indvars.iv.i378, %i.iy     ; 3 uses
  %i.jd = icmp sgt i64 %i.jc, -1
  %i.je = icmp slt i64 %i.jc, %i.gl
  %or.cond29.us.i379 = and i1 %i.jd, %i.je
  br i1 %or.cond29.us.i379, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jf = add nuw nsw i64 %indvars.iv.i378, %i.jo
  %i.jg = mul nuw nsw i64 %i.jf, 3
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.jg
  %i.ji = mul nuw nsw i64 %i.jc, 3
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ji
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.jj, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.jh, i64 3, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %indvars.iv.next.i380 = add nuw nsw i64 %indvars.iv.i378, 1 ; 2 uses
  %exitcond.not.i381 = icmp eq i64 %indvars.iv.next.i380, %wide.trip.count39.i
  br i1 %exitcond.not.i381, label %..loopexit_crit_edge.us.i374, label %bb.bc, !llvm.loop !12

..loopexit_crit_edge.us.i374:                     ; preds = %bb.be, %.lr.ph33.split.us.i371
  %indvars.iv.next37.i375 = add nuw nsw i64 %indvars.iv36.i372, 1 ; 2 uses
  %exitcond40.not.i376 = icmp eq i64 %indvars.iv.next37.i375, %wide.trip.count.i363
  br i1 %exitcond40.not.i376, label %.loopexit451, label %.lr.ph33.split.us.i371, !llvm.loop !13

.preheader.us.i377:                               ; preds = %.lr.ph33.split.us.i371
  %i.jk = mul nsw i64 %i.iz, %i.gn
  %i.jl = getelementptr inbounds i8, ptr %2, i64 %i.jk
  %i.jm = trunc i64 %indvars.iv36.i372 to i32
  %i.jn = mul i32 %i.b, %i.jm
  %i.jo = zext i32 %i.jn to i64
  br label %bb.bc

.loopexit451:                                     ; preds = %..loopexit_crit_edge.us.i374, %stbhw__draw_h_tile.exit, %bb.bb
  %indvars.iv.next525 = add nsw i64 %indvars.iv524, 4 ; 2 uses
  %i.jp = mul nsw i64 %indvars.iv.next525, %i.gq  ; 2 uses
  %.not303 = icmp slt i64 %i.jp, %i.gl
  br i1 %.not303, label %bb.au, label %._crit_edge469

._crit_edge469:                                   ; preds = %.loopexit451, %bb.at
  %indvars.iv.next528 = add nsw i64 %indvars.iv527, %i.gq ; 2 uses
  %indvars.iv.next530 = add nsw i64 %indvars.iv529.a, 1
  %.not306 = icmp slt i64 %indvars.iv.next528, %i.gm
  br i1 %.not306, label %bb.at, label %.critedge324, !llvm.loop !106

bb.bf:                                            ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11130) @v_color, i8 -1, i64 11130, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11130) @h_color, i8 -1, i64 11130, i1 false)
  %i.jq = sub nsw i32 0, %i.b                     ; 2 uses
  %.not302480 = icmp sgt i32 %5, %i.jq
  br i1 %.not302480, label %.lr.ph484, label %.critedge324

.lr.ph484:                                        ; preds = %bb.bf
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 48
  %factor.op.mul31.i382 = shl i32 %i.b, 1         ; 2 uses
  %i.jt = icmp sgt i32 %i.b, 0                    ; 2 uses
  %i.ju = sext i32 %4 to i64                      ; 3 uses
  %smax.i386 = tail call i32 @llvm.smax.i32(i32 %factor.op.mul31.i382, i32 1)
  %i.jv = sext i32 %5 to i64                      ; 3 uses
  %i.jw = sext i32 %3 to i64                      ; 2 uses
  %wide.trip.count39.i385 = zext nneg i32 %i.b to i64 ; 2 uses
  %wide.trip.count.i386 = zext nneg i32 %smax.i386 to i64 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jz = sext i32 %i.b to i64                    ; 2 uses
  %i.ka = sext i32 %i.jq to i64
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph484, %._crit_edge479
  %indvars.iv539.a = phi i64 [ -1, %.lr.ph484 ], [ %indvars.iv.next540, %._crit_edge479 ] ; 5 uses
  %indvars.iv537 = phi i64 [ %i.ka, %.lr.ph484 ], [ %indvars.iv.next538, %._crit_edge479 ] ; 4 uses
  %i.kb = trunc nsw i64 %indvars.iv539.a to i32   ; 2 uses
  %i.kc = and i32 %i.kb, 3
  %i.kd = icmp eq i32 %i.kc, 0
  %i.ke = or i32 %i.kb, -4
  %.0253 = select i1 %i.kd, i32 0, i32 %i.ke      ; 2 uses
  %i.kf = mul nsw i32 %.0253, %i.b                ; 2 uses
  %.not299475 = icmp slt i32 %i.kf, %4
  br i1 %.not299475, label %.lr.ph478, label %._crit_edge479

.lr.ph478:                                        ; preds = %bb.bg
  %i.kg = add nsw i64 %indvars.iv539.a, 2         ; 2 uses
  %i.kh = getelementptr inbounds [106 x i8], ptr @h_color, i64 %i.kg ; 3 uses
  %i.ki = getelementptr inbounds [105 x i8], ptr @v_color, i64 %i.kg ; 4 uses
  %i.kj = getelementptr [106 x i8], ptr @h_color, i64 %indvars.iv539.a ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kj, i64 318    ; 2 uses
  %i.kl = getelementptr [105 x i8], ptr @v_color, i64 %indvars.iv539.a
  %i.km = getelementptr i8, ptr %i.kl, i64 315    ; 2 uses
  %i.kn = getelementptr i8, ptr %i.kj, i64 424
  %i.ko = sext i32 %.0253 to i64
  %i.kp = sext i32 %i.kf to i64
  %i.kq = trunc nsw i64 %indvars.iv537 to i32
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph478, %.loopexit
  %indvars.iv534 = phi i64 [ %i.ko, %.lr.ph478 ], [ %indvars.iv.next535, %.loopexit ] ; 6 uses
  %i.kr = phi i64 [ %i.kp, %.lr.ph478 ], [ %i.nc, %.loopexit ]
  %i.ks = trunc nsw i64 %indvars.iv534 to i32
  %i.kt = add i32 %i.ks, 2                        ; 2 uses
  %i.ku = mul i32 %i.kt, %i.b                     ; 2 uses
  %i.kv = or i32 %i.ku, %i.kq
  %or.cond12 = icmp sgt i32 %i.kv, -1
  br i1 %or.cond12, label %bb.bi, label %stbhw__draw_h_tile.exit399

bb.bi:                                            ; preds = %bb.bh
  %i.kw = load ptr, ptr %i.jr, align 8, !tbaa !63
  %i.kx = load i32, ptr %i.js, align 8, !tbaa !64
  %i.ky = sext i32 %i.kt to i64                   ; 3 uses
  %i.kz = getelementptr inbounds i8, ptr %i.kh, i64 %i.ky
  %i.la = add nsw i64 %indvars.iv534, 3           ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %i.kh, i64 %i.la
  %i.lc = getelementptr inbounds i8, ptr %i.ki, i64 %i.ky
  %i.ld = getelementptr i8, ptr %i.ki, i64 %indvars.iv534
  %i.le = getelementptr i8, ptr %i.ld, i64 4
  %i.lf = getelementptr inbounds i8, ptr %i.kk, i64 %i.ky
  %i.lg = getelementptr inbounds i8, ptr %i.kk, i64 %i.la
  %i.lh = tail call ptr @stbhw__choose_tile(ptr noundef %i.kw, i32 noundef %i.kx, ptr noundef nonnull %i.kz, ptr noundef nonnull %i.lb, ptr noundef nonnull %i.lc, ptr noundef %i.le, ptr noundef %i.lf, ptr noundef %i.lg, ptr noundef %1) ; 2 uses
  %.not300 = icmp eq ptr %i.lh, null
  br i1 %.not300, label %.critedge324, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.jt, label %.lr.ph33.split.us.preheader.i384, label %stbhw__draw_h_tile.exit399

.lr.ph33.split.us.preheader.i384:                 ; preds = %bb.bj
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 6
  br label %.lr.ph33.split.us.i387

.lr.ph33.split.us.i387:                           ; preds = %..loopexit_crit_edge.us.i390, %.lr.ph33.split.us.preheader.i384
  %indvars.iv36.i388 = phi i64 [ 0, %.lr.ph33.split.us.preheader.i384 ], [ %indvars.iv.next37.i391, %..loopexit_crit_edge.us.i390 ] ; 3 uses
  %i.lj = add nuw nsw i64 %indvars.iv36.i388, %indvars.iv537 ; 2 uses
  %i.lk = icmp slt i64 %i.lj, %i.jv
  br i1 %i.lk, label %.preheader.us.i393, label %..loopexit_crit_edge.us.i390

bb.bk:                                            ; preds = %.preheader.us.i393, %bb.bm
  %indvars.iv.i395 = phi i64 [ 0, %.preheader.us.i393 ], [ %indvars.iv.next.i397, %bb.bm ] ; 3 uses
  %i.ll = add nsw i64 %indvars.iv.i395, %i.kr     ; 3 uses
  %i.lm = icmp sgt i64 %i.ll, -1
  %i.ln = icmp slt i64 %i.ll, %i.ju
  %or.cond29.us.i396 = and i1 %i.lm, %i.ln
  br i1 %or.cond29.us.i396, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.lo = add nsw i64 %indvars.iv.i395, %i.lw
  %i.lp = mul nsw i64 %i.lo, 3
  %i.lq = getelementptr inbounds i8, ptr %i.li, i64 %i.lp
  %i.lr = mul nuw nsw i64 %i.ll, 3
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ls, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.lq, i64 3, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %indvars.iv.next.i397 = add nuw nsw i64 %indvars.iv.i395, 1 ; 2 uses
  %exitcond.not.i398 = icmp eq i64 %indvars.iv.next.i397, %wide.trip.count.i386
  br i1 %exitcond.not.i398, label %..loopexit_crit_edge.us.i390, label %bb.bk, !llvm.loop !10

..loopexit_crit_edge.us.i390:                     ; preds = %bb.bm, %.lr.ph33.split.us.i387
  %indvars.iv.next37.i391 = add nuw nsw i64 %indvars.iv36.i388, 1 ; 2 uses
  %exitcond40.not.i392 = icmp eq i64 %indvars.iv.next37.i391, %wide.trip.count39.i385
  br i1 %exitcond40.not.i392, label %stbhw__draw_h_tile.exit399, label %.lr.ph33.split.us.i387, !llvm.loop !11

.preheader.us.i393:                               ; preds = %.lr.ph33.split.us.i387
  %i.lt = trunc nuw nsw i64 %indvars.iv36.i388 to i32
  %factor.op.mul.reass.us.i394 = mul i32 %factor.op.mul31.i382, %i.lt
  %i.lu = mul nsw i64 %i.lj, %i.jw
  %i.lv = getelementptr inbounds i8, ptr %2, i64 %i.lu
  %i.lw = sext i32 %factor.op.mul.reass.us.i394 to i64
  br label %bb.bk

stbhw__draw_h_tile.exit399:                       ; preds = %..loopexit_crit_edge.us.i390, %bb.bj, %bb.bh
  %i.lx = add nsw i32 %i.ku, %i.b                 ; 2 uses
  %i.ly = icmp slt i32 %i.lx, %4
  br i1 %i.ly, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %stbhw__draw_h_tile.exit399
  %i.lz = load ptr, ptr %i.jx, align 8, !tbaa !65
  %i.ma = load i32, ptr %i.jy, align 8, !tbaa !66
  %i.mb = add nsw i64 %indvars.iv534, 5           ; 4 uses
  %i.mc = getelementptr inbounds i8, ptr %i.kh, i64 %i.mb
  %i.md = getelementptr inbounds i8, ptr %i.ki, i64 %i.mb
  %i.me = add nsw i64 %indvars.iv534, 6           ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr %i.ki, i64 %i.me
  %i.mg = getelementptr inbounds i8, ptr %i.km, i64 %i.mb
  %i.mh = getelementptr inbounds i8, ptr %i.km, i64 %i.me
  %i.mi = getelementptr inbounds i8, ptr %i.kn, i64 %i.mb
  %i.mj = tail call ptr @stbhw__choose_tile(ptr noundef %i.lz, i32 noundef %i.ma, ptr noundef nonnull %i.mc, ptr noundef nonnull %i.md, ptr noundef nonnull %i.mf, ptr noundef %i.mg, ptr noundef %i.mh, ptr noundef %i.mi, ptr noundef %1) ; 2 uses
  %.not301 = icmp eq ptr %i.mj, null
  br i1 %.not301, label %.critedge324, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.jt, label %.lr.ph33.split.us.preheader.i401, label %.loopexit

.lr.ph33.split.us.preheader.i401:                 ; preds = %bb.bo
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 6
  %i.ml = sext i32 %i.lx to i64
  br label %.lr.ph33.split.us.i405

.lr.ph33.split.us.i405:                           ; preds = %..loopexit_crit_edge.us.i408, %.lr.ph33.split.us.preheader.i401
  %indvars.iv36.i406 = phi i64 [ 0, %.lr.ph33.split.us.preheader.i401 ], [ %indvars.iv.next37.i409, %..loopexit_crit_edge.us.i408 ] ; 3 uses
  %i.mm = add nsw i64 %indvars.iv36.i406, %indvars.iv537 ; 3 uses
  %i.mn = icmp sgt i64 %i.mm, -1
  %i.mo = icmp slt i64 %i.mm, %i.jv
  %or.cond.us.i407 = and i1 %i.mn, %i.mo
  br i1 %or.cond.us.i407, label %.preheader.us.i411, label %..loopexit_crit_edge.us.i408

bb.bp:                                            ; preds = %.preheader.us.i411, %bb.br
  %indvars.iv.i412 = phi i64 [ 0, %.preheader.us.i411 ], [ %indvars.iv.next.i414, %bb.br ] ; 3 uses
  %i.mp = add nsw i64 %indvars.iv.i412, %i.ml     ; 3 uses
  %i.mq = icmp sgt i64 %i.mp, -1
  %i.mr = icmp slt i64 %i.mp, %i.ju
  %or.cond29.us.i413 = and i1 %i.mq, %i.mr
  br i1 %or.cond29.us.i413, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ms = add nuw nsw i64 %indvars.iv.i412, %i.nb
  %i.mt = mul nuw nsw i64 %i.ms, 3
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mt
  %i.mv = mul nuw nsw i64 %i.mp, 3
  %i.mw = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.mw, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.mu, i64 3, i1 false)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %indvars.iv.next.i414 = add nuw nsw i64 %indvars.iv.i412, 1 ; 2 uses
  %exitcond.not.i415 = icmp eq i64 %indvars.iv.next.i414, %wide.trip.count39.i385
  br i1 %exitcond.not.i415, label %..loopexit_crit_edge.us.i408, label %bb.bp, !llvm.loop !12

..loopexit_crit_edge.us.i408:                     ; preds = %bb.br, %.lr.ph33.split.us.i405
  %indvars.iv.next37.i409 = add nuw nsw i64 %indvars.iv36.i406, 1 ; 2 uses
  %exitcond40.not.i410 = icmp eq i64 %indvars.iv.next37.i409, %wide.trip.count.i386
  br i1 %exitcond40.not.i410, label %.loopexit, label %.lr.ph33.split.us.i405, !llvm.loop !13

.preheader.us.i411:                               ; preds = %.lr.ph33.split.us.i405
  %i.mx = mul nsw i64 %i.mm, %i.jw
  %i.my = getelementptr inbounds i8, ptr %2, i64 %i.mx
  %i.mz = trunc i64 %indvars.iv36.i406 to i32
  %i.na = mul i32 %i.b, %i.mz
  %i.nb = zext i32 %i.na to i64
  br label %bb.bp

.loopexit:                                        ; preds = %..loopexit_crit_edge.us.i408, %stbhw__draw_h_tile.exit399, %bb.bo
  %indvars.iv.next535 = add nsw i64 %indvars.iv534, 4 ; 2 uses
  %i.nc = mul nsw i64 %indvars.iv.next535, %i.jz  ; 2 uses
  %.not299 = icmp slt i64 %i.nc, %i.ju
  br i1 %.not299, label %bb.bh, label %._crit_edge479

._crit_edge479:                                   ; preds = %.loopexit, %bb.bg
  %indvars.iv.next538 = add nsw i64 %indvars.iv537, %i.jz ; 2 uses
  %indvars.iv.next540 = add nsw i64 %indvars.iv539.a, 1
  %.not302 = icmp slt i64 %indvars.iv.next538, %i.jv
  br i1 %.not302, label %bb.bg, label %.critedge324, !llvm.loop !107

.critedge324:                                     ; preds = %._crit_edge469, %bb.ba, %bb.av, %._crit_edge479, %bb.bn, %bb.bi, %._crit_edge465.split, %bb.bf, %bb.b
  %.16 = phi i32 [ 0, %bb.b ], [ 1, %._crit_edge479 ], [ 1, %bb.bf ], [ 0, %bb.ba ], [ 1, %._crit_edge465.split ], [ 0, %bb.bn ], [ 0, %bb.bi ], [ 0, %bb.av ], [ 1, %._crit_edge469 ]
  ret i32 %.16
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define void @stbhw__parse_h_rect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 5 uses
  %i.e = mul nsw i32 %i.d, 6                      ; 2 uses
  %i.f = mul nsw i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64
  %i.h = add nsw i64 %i.g, 6
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #17 ; 8 uses
  %i.j = trunc i32 %3 to i8
  store i8 %i.j, ptr %i.i, align 1, !tbaa !48
  %i.k = trunc i32 %4 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !49
  %i.m = trunc i32 %5 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !50
  %i.o = trunc i32 %6 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.o, ptr %i.p, align 1, !tbaa !51
  %i.q = trunc i32 %7 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i8 %i.q, ptr %i.r, align 1, !tbaa !52
  %i.s = trunc i32 %8 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store i8 %i.s, ptr %i.t, align 1, !tbaa !53
  %i.u = icmp sgt i32 %i.d, 0
  br i1 %i.u, label %.preheader.lr.ph.split, label %._crit_edge39.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.v = add nsw i32 %2, 1
  %i.w = add nsw i32 %1, 1
  %i.x = shl nuw i32 %i.d, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !67
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !68
  %i.ad = sext i32 %i.w to i64                    ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1) ; 3 uses
  %i.ae = zext nneg i32 %i.e to i64
  %i.af = sext i32 %i.v to i64
  %i.ag = sext i32 %i.ac to i64
  %wide.trip.count44 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %9 = icmp eq i32 %smax, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod46 = trunc i32 %smax to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv41 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next42, %._crit_edge ] ; 3 uses
  %i.ah = mul nuw nsw i64 %indvars.iv41, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ah ; 3 uses
  %i.aj = add nsw i64 %indvars.iv41, %i.af
  %i.ak = mul nsw i64 %i.aj, %i.ag
  %i.al = getelementptr inbounds i8, ptr %i.ab, i64 %i.ak ; 3 uses
  br i1 %9, label %.epil.preheader, label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.b ], [ 0, %.preheader ] ; 4 uses
  %indvars.iv.a = phi i64 [ %indvars.iv.next.1.a, %bb.b ], [ 0, %.preheader ]
  %i.am = mul nuw nsw i64 %indvars.iv, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am
  %i.ao = add nsw i64 %indvars.iv, %i.ad
  %i.ap = mul nsw i64 %i.ao, 3
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.an, ptr noundef nonnull align 1 dereferenceable(3) %i.aq, i64 3, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ar = mul nuw nsw i64 %indvars.iv.next, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ar
  %i.at = add nsw i64 %indvars.iv.next, %i.ad
  %i.au = mul nsw i64 %i.at, 3
  %i.av = getelementptr inbounds i8, ptr %i.al, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.as, ptr noundef nonnull align 1 dereferenceable(3) %i.av, i64 3, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next.1.a = add i64 %indvars.iv.a, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1.a, %unroll_iter
  br i1 %exitcond.not.1, label %._crit_edge.unr-lcssa, label %bb.b, !llvm.loop !108

._crit_edge.unr-lcssa:                            ; preds = %bb.b
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %10 = mul nuw nsw i64 %indvars.iv.epil.init, 3
  %11 = getelementptr inbounds nuw i8, ptr %i.ai, i64 %10
  %12 = add nsw i64 %indvars.iv.epil.init, %i.ad
  %13 = mul nsw i64 %12, 3
  %14 = getelementptr inbounds i8, ptr %i.al, i64 %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %11, ptr noundef nonnull align 1 dereferenceable(3) %14, i64 3, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge39.split, label %.preheader, !llvm.loop !109

._crit_edge39.split:                              ; preds = %._crit_edge, %bb.a
  %i.aw = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !63
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !64 ; 2 uses
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !64
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bc
  store ptr %i.i, ptr %i.bd, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define void @stbhw__parse_v_rect(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 8 uses
  %i.e = mul nsw i32 %i.d, 6
  %i.f = mul nsw i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64
  %i.h = add nsw i64 %i.g, 6
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #17 ; 8 uses
  %i.j = trunc i32 %3 to i8
  store i8 %i.j, ptr %i.i, align 1, !tbaa !48
  %i.k = trunc i32 %4 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !49
  %i.m = trunc i32 %5 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !50
  %i.o = trunc i32 %6 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.o, ptr %i.p, align 1, !tbaa !51
  %i.q = trunc i32 %7 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i8 %i.q, ptr %i.r, align 1, !tbaa !52
  %i.s = trunc i32 %8 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store i8 %i.s, ptr %i.t, align 1, !tbaa !53
  %factor.op.mul38 = mul i32 %i.d, 3
  %i.u = icmp sgt i32 %i.d, 0
  br i1 %i.u, label %.preheader.lr.ph.split, label %._crit_edge40.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.v = add nsw i32 %2, 1
  %i.w = add nsw i32 %1, 1
  %i.x = shl nuw i32 %i.d, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !67
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !68
  %i.ad = sext i32 %i.w to i64                    ; 3 uses
  %i.ae = sext i32 %i.v to i64
  %i.af = sext i32 %i.ac to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %wide.trip.count45 = zext nneg i32 %smax to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ag = icmp eq i32 %i.d, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod47 = trunc i32 %i.d to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv42 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next43, %._crit_edge ] ; 3 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv42 to i32
  %factor.op.mul.reass = mul i32 %factor.op.mul38, %i.ah
  %i.ai = sext i32 %factor.op.mul.reass to i64
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 %i.ai ; 3 uses
  %i.ak = add nsw i64 %indvars.iv42, %i.ae
  %i.al = mul nsw i64 %i.ak, %i.af
  %i.am = getelementptr inbounds i8, ptr %i.ab, i64 %i.al ; 3 uses
  br i1 %i.ag, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.an = mul nuw nsw i64 %indvars.iv, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  %i.ap = add nsw i64 %indvars.iv, %i.ad
  %i.aq = mul nsw i64 %i.ap, 3
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ao, ptr noundef nonnull align 1 dereferenceable(3) %i.ar, i64 3, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.as = mul nuw nsw i64 %indvars.iv.next, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.as
  %i.au = add nsw i64 %indvars.iv.next, %i.ad
  %i.av = mul nsw i64 %i.au, 3
  %i.aw = getelementptr inbounds i8, ptr %i.am, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.at, ptr noundef nonnull align 1 dereferenceable(3) %i.aw, i64 3, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !110

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.ax = mul nuw nsw i64 %indvars.iv.epil.init, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ax
  %i.az = add nsw i64 %indvars.iv.epil.init, %i.ad
  %i.ba = mul nsw i64 %i.az, 3
  %i.bb = getelementptr inbounds i8, ptr %i.am, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ay, ptr noundef nonnull align 1 dereferenceable(3) %i.bb, i64 3, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %._crit_edge40.split, label %.preheader, !llvm.loop !111

._crit_edge40.split:                              ; preds = %._crit_edge, %bb.a
  %i.bc = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !65
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 56 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !66 ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !66
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bi
  store ptr %i.i, ptr %i.bj, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbhw_build_tileset_from_image(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbhw_config, align 4       ; 23 uses
  %6 = alloca %struct.stbhw__process, align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %5, i8 0, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 0, ptr %i.a, align 8
  %i.b = mul nsw i32 %3, 3                        ; 9 uses
  %i.c = add i32 %i.b, -1
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45    ; 2 uses
  %i.g = add i32 %i.b, -2
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !45
  %i.k = xor i8 %i.j, 55                          ; 2 uses
  %i.l = add i32 %i.b, -3
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !45
  %i.p = xor i8 %i.o, 110                         ; 2 uses
  %i.q = add i32 %i.b, -4
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %1, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !45
  %i.u = xor i8 %i.t, -91                         ; 2 uses
  %i.v = add i32 %i.b, -5
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !45
  %i.z = xor i8 %i.y, -36                         ; 2 uses
  %i.aa = add i32 %i.b, -6
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !45
  %i.ae = xor i8 %i.ad, 19                        ; 2 uses
  %i.af = add i32 %i.b, -7
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %1, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !45
  %i.aj = xor i8 %i.ai, 74                        ; 2 uses
  %i.ak = add i32 %i.b, -8
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !45  ; 2 uses
  %.not = icmp eq i8 %i.an, 65                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %5, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = zext i8 %i.f to i32                     ; 2 uses
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !40
  %i.aq = zext i8 %i.k to i32                     ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 12
end_hunk_1
