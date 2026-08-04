inline.NumInlined: 10
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@compress_b44_impl:bb.a
  %i.og = trunc i32 %i.of to i8
  br label %pack.exit.us

pack.exit.us:                                     ; preds = %bb.cb, %bb.cc
  %.sink489.in.in = phi i16 [ %.sroa.0.1.i.us, %bb.cc ], [ %.sroa.0.0.i.us, %bb.cb ] ; 2 uses
  %.sink216.i.us = phi i64 [ 13, %bb.cc ], [ 2, %bb.cb ]
  %.sink.i.us = phi i8 [ %i.og, %bb.cc ], [ -4, %bb.cb ]
  %.065.i.us = phi i64 [ 14, %bb.cc ], [ 3, %bb.cb ] ; 2 uses
  %.sink = trunc i16 %.sink489.in.in to i8
  %.sink489.in = lshr i16 %.sink489.in.in, 8
  %.sink489 = trunc nuw i16 %.sink489.in to i8
  store i8 %.sink489, ptr %.2166308.us, align 1, !tbaa !38
  %i.oh = getelementptr inbounds nuw i8, ptr %.2166308.us, i64 1
  store i8 %.sink, ptr %i.oh, align 1, !tbaa !38
  %i.oi = getelementptr inbounds nuw i8, ptr %.2166308.us, i64 %.sink216.i.us
  store i8 %.sink.i.us, ptr %i.oi, align 1, !tbaa !38
  %i.oj = add i64 %.065.i.us, %.2182303.us        ; 4 uses
  %i.ok = add i64 %i.oj, 14
  %i.ol = load i64, ptr %i.t, align 8, !tbaa !39
  %.not221.us = icmp ugt i64 %i.ok, %i.ol
  br i1 %.not221.us, label %.thread247, label %bb.cd

bb.cd:                                            ; preds = %pack.exit.us
  %i.om = getelementptr inbounds nuw i8, ptr %.2166308.us, i64 %.065.i.us ; 3 uses
  %i.on = add nuw nsw i32 %.0163309.us, 4         ; 2 uses
  %.not222.us = icmp slt i32 %i.on, %i.bk
  br i1 %.not222.us, label %bb.l, label %..thread_crit_edge.us, !llvm.loop !40

.preheader.us:                                    ; preds = %bb.l
  %i.oo = xor i32 %.0163309.us, -1
  %i.op = add nsw i32 %i.bk, %i.oo                ; 4 uses
  %spec.select226.us = tail call i32 @llvm.smin.i32(i32 %i.op, i32 0)
  %i.oq = sext i32 %spec.select226.us to i64      ; 4 uses
  %i.or = getelementptr inbounds [2 x i8], ptr %.0178304.us, i64 %i.oq
  %i.os = load i16, ptr %i.or, align 2, !tbaa !36
  %.sroa.0.0.insert.ext372 = zext i16 %i.os to i64
  %i.ot = getelementptr inbounds [2 x i8], ptr %.2177305.us, i64 %i.oq
  %i.ou = load i16, ptr %i.ot, align 2, !tbaa !36
  %.sroa.19.8.insert.ext402 = zext i16 %i.ou to i64
  %i.ov = getelementptr inbounds [2 x i8], ptr %.2174306.us, i64 %i.oq
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !36
  %.sroa.36.16.insert.ext432 = zext i16 %i.ow to i64
  %i.ox = getelementptr inbounds [2 x i8], ptr %.1171307.us, i64 %i.oq
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !36
  %.sroa.53.24.insert.ext462 = zext i16 %i.oy to i64
  %spec.select226.us.1 = tail call i32 @llvm.smin.i32(i32 %i.op, i32 1)
  %i.oz = sext i32 %spec.select226.us.1 to i64    ; 4 uses
  %i.pa = getelementptr inbounds [2 x i8], ptr %.0178304.us, i64 %i.oz
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !36
  %.sroa.0.2.insert.ext379 = zext i16 %i.pb to i64
  %.sroa.0.2.insert.shift380 = shl nuw nsw i64 %.sroa.0.2.insert.ext379, 16
  %.sroa.0.2.insert.insert382 = or disjoint i64 %.sroa.0.2.insert.shift380, %.sroa.0.0.insert.ext372
  %i.pc = getelementptr inbounds [2 x i8], ptr %.2177305.us, i64 %i.oz
  %i.pd = load i16, ptr %i.pc, align 2, !tbaa !36
  %.sroa.19.10.insert.ext409 = zext i16 %i.pd to i64
  %.sroa.19.10.insert.shift410 = shl nuw nsw i64 %.sroa.19.10.insert.ext409, 16
  %.sroa.19.10.insert.insert412 = or disjoint i64 %.sroa.19.10.insert.shift410, %.sroa.19.8.insert.ext402
  %i.pe = getelementptr inbounds [2 x i8], ptr %.2174306.us, i64 %i.oz
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !36
  %.sroa.36.18.insert.ext439 = zext i16 %i.pf to i64
  %.sroa.36.18.insert.shift440 = shl nuw nsw i64 %.sroa.36.18.insert.ext439, 16
  %.sroa.36.18.insert.insert442 = or disjoint i64 %.sroa.36.18.insert.shift440, %.sroa.36.16.insert.ext432
  %i.pg = getelementptr inbounds [2 x i8], ptr %.1171307.us, i64 %i.oz
  %i.ph = load i16, ptr %i.pg, align 2, !tbaa !36
  %.sroa.53.26.insert.ext469 = zext i16 %i.ph to i64
  %.sroa.53.26.insert.shift470 = shl nuw nsw i64 %.sroa.53.26.insert.ext469, 16
  %.sroa.53.26.insert.insert472 = or disjoint i64 %.sroa.53.26.insert.shift470, %.sroa.53.24.insert.ext462
  %spec.select226.us.2 = tail call i32 @llvm.smin.i32(i32 %i.op, i32 2)
  %i.pi = sext i32 %spec.select226.us.2 to i64    ; 4 uses
  %i.pj = getelementptr inbounds [2 x i8], ptr %.0178304.us, i64 %i.pi
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !36
  %.sroa.0.4.insert.ext387 = zext i16 %i.pk to i64
  %.sroa.0.4.insert.shift388 = shl nuw nsw i64 %.sroa.0.4.insert.ext387, 32
  %.sroa.0.4.insert.insert390 = or disjoint i64 %.sroa.0.2.insert.insert382, %.sroa.0.4.insert.shift388
  %i.pl = getelementptr inbounds [2 x i8], ptr %.2177305.us, i64 %i.pi
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !36
  %.sroa.19.12.insert.ext417 = zext i16 %i.pm to i64
  %.sroa.19.12.insert.shift418 = shl nuw nsw i64 %.sroa.19.12.insert.ext417, 32
  %.sroa.19.12.insert.insert420 = or disjoint i64 %.sroa.19.10.insert.insert412, %.sroa.19.12.insert.shift418
  %i.pn = getelementptr inbounds [2 x i8], ptr %.2174306.us, i64 %i.pi
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !36
  %.sroa.36.20.insert.ext447 = zext i16 %i.po to i64
  %.sroa.36.20.insert.shift448 = shl nuw nsw i64 %.sroa.36.20.insert.ext447, 32
  %.sroa.36.20.insert.insert450 = or disjoint i64 %.sroa.36.18.insert.insert442, %.sroa.36.20.insert.shift448
  %i.pp = getelementptr inbounds [2 x i8], ptr %.1171307.us, i64 %i.pi
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !36
  %.sroa.53.28.insert.ext477 = zext i16 %i.pq to i64
  %.sroa.53.28.insert.shift478 = shl nuw nsw i64 %.sroa.53.28.insert.ext477, 32
  %.sroa.53.28.insert.insert480 = or disjoint i64 %.sroa.53.26.insert.insert472, %.sroa.53.28.insert.shift478
  %spec.select226.us.3 = tail call i32 @llvm.smin.i32(i32 %i.op, i32 3)
  %i.pr = sext i32 %spec.select226.us.3 to i64    ; 4 uses
  %i.ps = getelementptr inbounds [2 x i8], ptr %.0178304.us, i64 %i.pr
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !36
  %.sroa.0.6.insert.ext395 = zext i16 %i.pt to i64
  %.sroa.0.6.insert.shift396 = shl nuw i64 %.sroa.0.6.insert.ext395, 48
  %.sroa.0.6.insert.insert398 = or disjoint i64 %.sroa.0.4.insert.insert390, %.sroa.0.6.insert.shift396
  %i.pu = getelementptr inbounds [2 x i8], ptr %.2177305.us, i64 %i.pr
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !36
  %.sroa.19.14.insert.ext425 = zext i16 %i.pv to i64
  %.sroa.19.14.insert.shift426 = shl nuw i64 %.sroa.19.14.insert.ext425, 48
  %.sroa.19.14.insert.insert428 = or disjoint i64 %.sroa.19.12.insert.insert420, %.sroa.19.14.insert.shift426
  %i.pw = getelementptr inbounds [2 x i8], ptr %.2174306.us, i64 %i.pr
  %i.px = load i16, ptr %i.pw, align 2, !tbaa !36
  %.sroa.36.22.insert.ext455 = zext i16 %i.px to i64
  %.sroa.36.22.insert.shift456 = shl nuw i64 %.sroa.36.22.insert.ext455, 48
  %.sroa.36.22.insert.insert458 = or disjoint i64 %.sroa.36.20.insert.insert450, %.sroa.36.22.insert.shift456
  %i.py = getelementptr inbounds [2 x i8], ptr %.1171307.us, i64 %i.pr
  %i.pz = load i16, ptr %i.py, align 2, !tbaa !36
  %.sroa.53.30.insert.ext485 = zext i16 %i.pz to i64
  %.sroa.53.30.insert.shift486 = shl nuw i64 %.sroa.53.30.insert.ext485, 48
  %.sroa.53.30.insert.insert488 = or disjoint i64 %.sroa.53.28.insert.insert480, %.sroa.53.30.insert.shift486
  br label %.loopexit.us

..thread_crit_edge.us:                            ; preds = %bb.cd
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 4 ; 2 uses
  %i.qa = trunc nuw i64 %indvars.iv.next364 to i32
  %i.qb = icmp sgt i32 %i.bm, %i.qa
  br i1 %i.qb, label %.lr.ph317.split.us, label %select.unfold, !llvm.loop !41

bb.ce:                                            ; preds = %bb.k
  %i.qc = add i64 %i.bt, %.0180325                ; 2 uses
  %i.qd = load i64, ptr %i.t, align 8, !tbaa !39
  %i.qe = icmp ugt i64 %i.qc, %i.qd
  br i1 %i.qe, label %.thread247, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0164326, ptr align 1 %.2191322, i64 %i.bt, i1 false)
  %i.qf = getelementptr inbounds nuw i8, ptr %.0164326, i64 %i.bt
  %i.qg = getelementptr inbounds nuw i8, ptr %.2191322, i64 %i.bt
  br label %.thread234

select.unfold:                                    ; preds = %..thread_crit_edge.us, %.lr.ph317, %.preheader261
  %.1181.lcssa = phi i64 [ %.0180325, %.preheader261 ], [ %.0180325, %.lr.ph317 ], [ %i.oj, %..thread_crit_edge.us ]
  %.1165.lcssa = phi ptr [ %.0164326, %.preheader261 ], [ %.0164326, %.lr.ph317 ], [ %i.om, %..thread_crit_edge.us ]
  %i.qh = getelementptr inbounds nuw i8, ptr %.2191322, i64 %i.bt
  br label %.thread234

.thread234:                                       ; preds = %select.unfold, %bb.cf, %bb.j
  %.5169241 = phi ptr [ %.0164326, %bb.j ], [ %i.qf, %bb.cf ], [ %.1165.lcssa, %select.unfold ]
  %.5185240 = phi i64 [ %.0180325, %bb.j ], [ %i.qc, %bb.cf ], [ %.1181.lcssa, %select.unfold ] ; 3 uses
  %.3192239 = phi ptr [ %.2191322, %bb.j ], [ %i.qg, %bb.cf ], [ %i.qh, %select.unfold ]
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %i.qi = load i16, ptr %i.q, align 8, !tbaa !18
  %i.qj = sext i16 %i.qi to i64
  %.not223 = icmp slt i64 %indvars.iv.next367, %i.qj
  br i1 %.not223, label %bb.j, label %.thread249, !llvm.loop !42

.thread249:                                       ; preds = %.thread234
  %i.qk = load i64, ptr %i.e, align 8, !tbaa !16  ; 2 uses
  %i.ql = icmp ugt i64 %.5185240, %i.qk
  br i1 %i.ql, label %bb.cg, label %.thread249.thread

bb.cg:                                            ; preds = %.thread249
  %i.qm = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.qn = load ptr, ptr %i.h, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qm, ptr align 1 %i.qn, i64 %i.qk, i1 false)
  %i.qo = load i64, ptr %i.e, align 8, !tbaa !16
  br label %.thread249.thread

.thread249.thread:                                ; preds = %._crit_edge300, %bb.cg, %.thread249
  %.7187 = phi i64 [ %i.qo, %bb.cg ], [ %.5185240, %.thread249 ], [ 0, %._crit_edge300 ]
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.7187, ptr %i.qp, align 8, !tbaa !43
  br label %.thread247

.thread247:                                       ; preds = %bb.ce, %pack.exit.us, %bb.a, %.thread249.thread
  %.8 = phi i32 [ 1, %pack.exit.us ], [ 0, %.thread249.thread ], [ %i.g, %bb.a ], [ 1, %bb.ce ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_apply_b44a(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @compress_b44_impl(ptr noundef %0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_undo_b44(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i16, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %compute_scratch_buffer_size.exit

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  br label %bb.b

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %4)
  br label %compute_scratch_buffer_size.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.02131.i = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %bb.b ]
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv.i ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %6 = load i32, ptr %5, align 4, !tbaa !25       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %7 = load i32, ptr %i.j, align 8, !tbaa !28     ; 3 uses
  %8 = srem i32 %6, 4                             ; 2 uses
  %.not.i = icmp eq i32 %8, 0
  %reass.sub.i = add i32 %6, 4
  %9 = sub i32 %reass.sub.i, %8
  %.024.i = select i1 %.not.i, i32 %6, i32 %9
  %10 = srem i32 %7, 4                            ; 2 uses
  %.not28.i = icmp eq i32 %10, 0
  %reass.sub29.i = add i32 %7, 4
  %11 = sub i32 %reass.sub29.i, %10
  %.023.i = select i1 %.not28.i, i32 %7, i32 %11
  %12 = sext i32 %.023.i to i64
  %i.k = sext i32 %.024.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29
  %i.n = sext i8 %i.m to i64
  %i.o = mul nsw i64 %i.k, %i.n
  %i.p = mul i64 %i.o, %12
  %i.q = add i64 %i.p, %.02131.i                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.b, !llvm.loop !47

compute_scratch_buffer_size.exit:                 ; preds = %bb.a, %._crit_edge.loopexit.i
  %.021.lcssa.i = phi i64 [ %4, %bb.a ], [ %i.h, %._crit_edge.loopexit.i ]
  %i.r = tail call i32 @internal_decode_alloc_buffer(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %.021.lcssa.i) #5 ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %compute_scratch_buffer_size.exit
  tail call void (...) @exrcore_ensure_b44_tables() #5
  %i.s = tail call fastcc i32 @uncompress_b44_impl(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %compute_scratch_buffer_size.exit, %bb.c
  %.0 = phi i32 [ %i.s, %bb.c ], [ %i.r, %compute_scratch_buffer_size.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @internal_decode_alloc_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @exrcore_ensure_b44_tables(...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @uncompress_b44_impl(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i16], align 16              ; 39 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %.not199355 = icmp sgt i16 %i.e, 0
  br i1 %.not199355, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.8..8..8..sroa_idx495 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx503 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.24..24..24..sroa_idx508 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.10..10..10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.18..18..18..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %.26..26..26..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.20..20..20..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.28..28..28..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.14..14..14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.22..22..22..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %.16..16..16..sroa_idx502 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16..16..sroa_idx501 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.6..6..6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.8..8..8..sroa_idx496 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.10..10..10..sroa_idx497 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.12..12..12..sroa_idx498 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.14..14..14..sroa_idx499 = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.16..16..16..sroa_idx504 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.18..18..18..sroa_idx505 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %.20..20..20..sroa_idx506 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.22..22..22..sroa_idx507 = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %.24..24..24..sroa_idx509 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.26..26..26..sroa_idx510 = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %.28..28..28..sroa_idx511 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.30..30..30..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.8..8..8..sroa_idx494 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx500 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

.critedge.preheader:                              ; preds = %.thread298, %bb.a
  %i.g = phi i16 [ %i.e, %bb.a ], [ %i.la, %.thread298 ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49   ; 2 uses
  %.not202367 = icmp sgt i32 %i.i, 0
  br i1 %.not202367, label %.lr.ph371, label %.critedge206

.lr.ph371:                                        ; preds = %.critedge.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.t

bb.b:                                             ; preds = %.lr.ph, %.thread298
  %indvars.iv379 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next380, %.thread298 ] ; 2 uses
  %.0147360 = phi ptr [ %1, %.lr.ph ], [ %.5152305, %.thread298 ] ; 6 uses
  %.0160358 = phi ptr [ %i.c, %.lr.ph ], [ %.1161304, %.thread298 ] ; 5 uses
  %.0172356 = phi i64 [ 0, %.lr.ph ], [ %.5177303, %.thread298 ] ; 5 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv379 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !25   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !28   ; 3 uses
  %i.r = sext i32 %i.q to i64                     ; 4 uses
  %i.s = sext i32 %i.o to i64                     ; 8 uses
  %i.t = mul nsw i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 25
  %i.v = load i8, ptr %i.u, align 1, !tbaa !29
  %i.w = sext i8 %i.v to i64
  %i.x = mul i64 %i.t, %i.w                       ; 6 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.thread298, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 26
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !32
  %.not = icmp eq i16 %i.aa, 1
  br i1 %.not, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.q, 0
  br i1 %i.ab, label %.lr.ph351, label %select.unfold

.lr.ph351:                                        ; preds = %.preheader
  %.not198339 = icmp sgt i32 %i.o, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  br i1 %.not198339, label %.lr.ph.us.preheader, label %select.unfold

.lr.ph.us.preheader:                              ; preds = %.lr.ph351
  %invariant.op483 = add nsw i64 %i.r, -3
  %invariant.op484 = add nsw i64 %i.r, -1
  %invariant.op485 = add nsw i64 %i.r, -2
  %invariant.op = add nsw i64 %i.s, -3
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv376 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next377, %._crit_edge.us ] ; 5 uses
  %.1148350.us = phi ptr [ %.0147360, %.lr.ph.us.preheader ], [ %i.hw, %._crit_edge.us ]
  %.1173348.us = phi i64 [ %.0172356, %.lr.ph.us.preheader ], [ %.3175.us, %._crit_edge.us ]
  %i.ad = mul nuw nsw i64 %indvars.iv376, %i.s
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.0160358, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.s ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.s ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.s
  %i.ai = icmp slt i64 %indvars.iv376, %invariant.op483
  %i.aj = icmp slt i64 %indvars.iv376, %invariant.op484
  %i.ak = icmp slt i64 %indvars.iv376, %invariant.op485
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %.2149346.us = phi ptr [ %.1148350.us, %.lr.ph.us ], [ %i.hw, %bb.q ] ; 17 uses
  %.2174344.us = phi i64 [ %.1173348.us, %.lr.ph.us ], [ %.3175.us, %bb.q ] ; 2 uses
  %.0183343.us = phi ptr [ %i.ah, %.lr.ph.us ], [ %i.ks, %bb.q ] ; 2 uses
  %.0184342.us = phi ptr [ %i.ag, %.lr.ph.us ], [ %i.kr, %bb.q ] ; 3 uses
  %.0185341.us = phi ptr [ %i.af, %.lr.ph.us ], [ %i.kq, %bb.q ] ; 3 uses
  %.0186340.us = phi ptr [ %i.ae, %.lr.ph.us ], [ %i.kp, %bb.q ] ; 2 uses
  %i.al = add i64 %.2174344.us, 3                 ; 2 uses
  %i.am = icmp ugt i64 %i.al, %2
  br i1 %i.am, label %.thread306, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.2149346.us, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !38  ; 2 uses
  %i.ap = icmp ugt i8 %i.ao, 51
  br i1 %i.ap, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i64 %.2174344.us, 14                ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, %2
  br i1 %i.ar, label %.thread306, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load i8, ptr %.2149346.us, align 1, !tbaa !38
  %i.at = zext i8 %i.as to i16
  %i.au = shl nuw i16 %i.at, 8                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.2149346.us, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !38
  %i.ax = zext i8 %i.aw to i16
  %i.ay = or disjoint i16 %i.au, %i.ax            ; 2 uses
  %i.az = zext nneg i8 %i.ao to i32               ; 2 uses
  %i.ba = lshr i32 %i.az, 2                       ; 16 uses
  %.neg106.i.us = shl nsw i32 -32, %i.ba          ; 12 uses
  %i.bb = zext i16 %i.ay to i32
  %i.bc = shl nuw nsw i32 %i.az, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.2149346.us, i64 3 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !38
  %i.bf = lshr i8 %i.be, 4
  %i.bg = zext nneg i8 %i.bf to i32
  %.masked.i.us = and i32 %i.bc, 48
  %i.bh = or disjoint i32 %.masked.i.us, %i.bg
  %i.bi = shl nuw nsw i32 %i.bh, %i.ba
  %i.bj = add nsw i32 %.neg106.i.us, %i.bb        ; 2 uses
  %i.bk = add nsw i32 %i.bi, %i.bj                ; 2 uses
  %i.bl = trunc i32 %i.bk to i16                  ; 2 uses
  store i16 %i.bl, ptr %.8..8..8..sroa_idx495, align 8, !tbaa !36
  %i.bm = load i8, ptr %i.bd, align 1, !tbaa !38
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 2
  %i.bp = getelementptr inbounds nuw i8, ptr %.2149346.us, i64 4 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !38
  %i.br = lshr i8 %i.bq, 6
  %i.bs = zext nneg i8 %i.br to i32
  %.masked97.i.us = and i32 %i.bo, 60
  %i.bt = or disjoint i32 %.masked97.i.us, %i.bs
  %i.bu = shl nuw nsw i32 %i.bt, %i.ba
  %i.bv = add nsw i32 %i.bk, %.neg106.i.us        ; 2 uses
  %i.bw = add nsw i32 %i.bu, %i.bv                ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.2149346.us, i64 5
  %i.by = getelementptr inbounds nuw i8, ptr %.2149346.us, i64 6 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.2149346.us, i64 7 ; 2 uses
  %i.ca = add nsw i32 %i.bw, %.neg106.i.us
  %i.cb = getelementptr inbounds nuw i8, ptr %.2149346.us, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.2149346.us, i64 9 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.2149346.us, i64 10 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.2149346.us, i64 11
  %i.cf = getelementptr inbounds nuw i8, ptr %.2149346.us, i64 12 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.2149346.us, i64 13 ; 2 uses
  %i.ch = trunc i32 %i.bw to i16                  ; 2 uses
  store i16 %i.ch, ptr %.16..16..16..sroa_idx503, align 16, !tbaa !36
  %i.ci = load i8, ptr %i.bp, align 1, !tbaa !38
  %i.cj = and i8 %i.ci, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = add nsw i32 %i.ck, -32
  %i.cm = shl nsw i32 %i.cl, %i.ba
  %i.cn = add nsw i32 %i.cm, %i.bw                ; 2 uses
  %i.co = trunc i32 %i.cn to i16                  ; 2 uses
  store i16 %i.co, ptr %.24..24..24..sroa_idx508, align 8, !tbaa !36
  %i.cp = load i8, ptr %i.bx, align 1, !tbaa !38  ; 2 uses
  %i.cq = lshr i8 %i.cp, 2
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, %i.ba
  %i.ct = add nsw i32 %i.cs, %i.bj                ; 2 uses
  %i.cu = trunc i32 %i.ct to i16
  %i.cv = zext i8 %i.cp to i32
  %i.cw = shl nuw nsw i32 %i.cv, 4
  %i.cx = load i8, ptr %i.by, align 1, !tbaa !38
  %i.cy = lshr i8 %i.cx, 4
  %i.cz = zext nneg i8 %i.cy to i32
  %.masked98.i.us = and i32 %i.cw, 48
  %i.da = or disjoint i32 %.masked98.i.us, %i.cz
  %i.db = shl nuw nsw i32 %i.da, %i.ba
  %i.dc = add nsw i32 %i.db, %i.bv                ; 2 uses
  %i.dd = trunc i32 %i.dc to i16                  ; 2 uses
  store i16 %i.dd, ptr %.10..10..10..sroa_idx, align 2, !tbaa !36
  %i.de = load i8, ptr %i.by, align 1, !tbaa !38
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 2
  %i.dh = load i8, ptr %i.bz, align 1, !tbaa !38
  %i.di = lshr i8 %i.dh, 6
  %i.dj = zext nneg i8 %i.di to i32
  %.masked99.i.us = and i32 %i.dg, 60
  %i.dk = or disjoint i32 %.masked99.i.us, %i.dj
  %i.dl = shl nuw nsw i32 %i.dk, %i.ba
  %i.dm = add nsw i32 %i.ca, %i.dl                ; 2 uses
  %i.dn = trunc i32 %i.dm to i16                  ; 2 uses
  store i16 %i.dn, ptr %.18..18..18..sroa_idx, align 2, !tbaa !36
  %i.do = load i8, ptr %i.bz, align 1, !tbaa !38
  %i.dp = and i8 %i.do, 63
  %i.dq = zext nneg i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, %i.ba
  %i.ds = add nsw i32 %i.cn, %.neg106.i.us
  %i.dt = add nsw i32 %i.ds, %i.dr                ; 2 uses
  %i.du = trunc i32 %i.dt to i16                  ; 2 uses
  store i16 %i.du, ptr %.26..26..26..sroa_idx, align 2, !tbaa !36
  %i.dv = load i8, ptr %i.cb, align 1, !tbaa !38  ; 2 uses
  %i.dw = lshr i8 %i.dv, 2
  %i.dx = zext nneg i8 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, %i.ba
  %i.dz = add nsw i32 %i.ct, %.neg106.i.us
  %i.ea = add nsw i32 %i.dz, %i.dy                ; 2 uses
  %i.eb = trunc i32 %i.ea to i16
  %i.ec = zext i8 %i.dv to i32
  %i.ed = shl nuw nsw i32 %i.ec, 4
  %i.ee = load i8, ptr %i.cc, align 1, !tbaa !38
  %i.ef = lshr i8 %i.ee, 4
  %i.eg = zext nneg i8 %i.ef to i32
  %.masked100.i.us = and i32 %i.ed, 48
  %i.eh = or disjoint i32 %.masked100.i.us, %i.eg
  %i.ei = shl nuw nsw i32 %i.eh, %i.ba
  %i.ej = add nsw i32 %i.dc, %.neg106.i.us
  %i.ek = add nsw i32 %i.ej, %i.ei                ; 2 uses
  %i.el = trunc i32 %i.ek to i16                  ; 2 uses
  store i16 %i.el, ptr %.12..12..12..sroa_idx, align 4, !tbaa !36
end_hunk_0
begin_hunk_1_@uncompress_b44_impl:bb.a
  %i.fr = shl nuw nsw i32 %i.fq, %i.ba
  %i.fs = add nsw i32 %i.ek, %.neg106.i.us
  %i.ft = add nsw i32 %i.fs, %i.fr
  %i.fu = trunc i32 %i.ft to i16                  ; 2 uses
  store i16 %i.fu, ptr %.14..14..14..sroa_idx, align 2, !tbaa !36
  %i.fv = load i8, ptr %i.cf, align 1, !tbaa !38
  %i.fw = zext i8 %i.fv to i32
  %i.fx = shl nuw nsw i32 %i.fw, 2
  %i.fy = load i8, ptr %i.cg, align 1, !tbaa !38
  %i.fz = lshr i8 %i.fy, 6
  %i.ga = zext nneg i8 %i.fz to i32
  %.masked103.i.us = and i32 %i.fx, 60
  %i.gb = or disjoint i32 %.masked103.i.us, %i.ga
  %i.gc = shl nuw nsw i32 %i.gb, %i.ba
  %i.gd = add nsw i32 %i.ev, %.neg106.i.us
  %i.ge = add nsw i32 %i.gd, %i.gc
  %i.gf = trunc i32 %i.ge to i16                  ; 2 uses
  store i16 %i.gf, ptr %.22..22..22..sroa_idx, align 2, !tbaa !36
  %i.gg = load i8, ptr %i.cg, align 1, !tbaa !38
  %i.gh = and i8 %i.gg, 63
  %i.gi = zext nneg i8 %i.gh to i32
  %i.gj = shl nuw nsw i32 %i.gi, %i.ba
  %i.gk = add nsw i32 %i.fc, %.neg106.i.us
  %i.gl = add nsw i32 %i.gk, %i.gj
  %i.gm = trunc i32 %i.gl to i16
  %i.gn = insertelement <16 x i16> poison, i16 %i.ay, i64 0
  %i.go = insertelement <16 x i16> %i.gn, i16 %i.cu, i64 1
  %i.gp = insertelement <16 x i16> %i.go, i16 %i.eb, i64 2
  %i.gq = insertelement <16 x i16> %i.gp, i16 %i.fk, i64 3
  %i.gr = insertelement <16 x i16> %i.gq, i16 %i.bl, i64 4
  %i.gs = insertelement <16 x i16> %i.gr, i16 %i.dd, i64 5
  %i.gt = insertelement <16 x i16> %i.gs, i16 %i.el, i64 6
  %i.gu = insertelement <16 x i16> %i.gt, i16 %i.fu, i64 7
  %i.gv = insertelement <16 x i16> %i.gu, i16 %i.ch, i64 8
  %i.gw = insertelement <16 x i16> %i.gv, i16 %i.dn, i64 9
  %i.gx = insertelement <16 x i16> %i.gw, i16 %i.ew, i64 10
  %i.gy = insertelement <16 x i16> %i.gx, i16 %i.gf, i64 11
  %i.gz = insertelement <16 x i16> %i.gy, i16 %i.co, i64 12
  %i.ha = insertelement <16 x i16> %i.gz, i16 %i.du, i64 13
  %i.hb = insertelement <16 x i16> %i.ha, i16 %i.fd, i64 14
  %i.hc = insertelement <16 x i16> %i.hb, i16 %i.gm, i64 15 ; 3 uses
  %i.hd = xor <16 x i16> %i.hc, splat (i16 -1)
  %i.he = and <16 x i16> %i.hc, splat (i16 32767)
  %i.hf = insertelement <16 x i16> %i.hc, i16 %i.au, i64 0
  %i.hg = icmp slt <16 x i16> %i.hf, zeroinitializer
  %i.hh = select <16 x i1> %i.hg, <16 x i16> %i.he, <16 x i16> %i.hd ; 3 uses
  %i.hi = shufflevector <16 x i16> %i.hh, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i16> %i.hi, ptr %i.a, align 16, !tbaa !36
  %i.hj = shufflevector <16 x i16> %i.hh, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i16> %i.hj, ptr %.16..16..16..sroa_idx502, align 16, !tbaa !36
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %.2149.val.us = load i8, ptr %.2149346.us, align 1, !tbaa !38
  %i.hk = getelementptr i8, ptr %.2149346.us, i64 1
  %.2149.val207.us = load i8, ptr %i.hk, align 1, !tbaa !38
  %i.hl = zext i8 %.2149.val.us to i16
  %i.hm = shl nuw i16 %i.hl, 8                    ; 2 uses
  %i.hn = zext i8 %.2149.val207.us to i16
  %i.ho = or disjoint i16 %i.hm, %i.hn            ; 2 uses
  %i.hp = xor i16 %i.ho, -1
  %i.hq = and i16 %i.ho, 32767
  %.not1.i.us = icmp slt i16 %i.hm, 0
  %storemerge.i.us = select i1 %.not1.i.us, i16 %i.hq, i16 %i.hp ; 2 uses
  %i.hr = insertelement <8 x i16> poison, i16 %storemerge.i.us, i64 0
  %i.hs = shufflevector <8 x i16> %i.hr, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  store <8 x i16> %i.hs, ptr %i.a, align 16, !tbaa !36
  store <8 x i16> %i.hs, ptr %.16..16..16..sroa_idx501, align 16, !tbaa !36
  %i.ht = insertelement <16 x i16> poison, i16 %storemerge.i.us, i64 0
  %i.hu = shufflevector <16 x i16> %i.ht, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i64 [ 3, %bb.h ], [ 14, %bb.g ]
  %.3175.us = phi i64 [ %i.al, %bb.h ], [ %i.aq, %bb.g ] ; 3 uses
  %i.hv = phi <16 x i16> [ %i.hu, %bb.h ], [ %i.hh, %bb.g ] ; 16 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.2149346.us, i64 %.sink ; 3 uses
  %i.hx = load i8, ptr %i.ac, align 8, !tbaa !33
  %.not197.us = icmp eq i8 %i.hx, 0
  br i1 %.not197.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hy = load ptr, ptr @exrcore_logTable, align 8, !tbaa !34 ; 16 uses
  %i.hz = extractelement <16 x i16> %i.hv, i64 0
  %i.ia = zext i16 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.ia
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !36
  store i16 %i.ic, ptr %i.a, align 16, !tbaa !36
  %i.id = extractelement <16 x i16> %i.hv, i64 1
  %i.ie = zext i16 %i.id to i64
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !36
  store i16 %i.ig, ptr %.2..2..2..sroa_idx, align 2, !tbaa !36
  %i.ih = extractelement <16 x i16> %i.hv, i64 2
  %i.ii = zext i16 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.ii
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !36
  store i16 %i.ik, ptr %.4..4..4..sroa_idx, align 4, !tbaa !36
  %i.il = extractelement <16 x i16> %i.hv, i64 3
  %i.im = zext i16 %i.il to i64
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.im
  %i.io = load i16, ptr %i.in, align 2, !tbaa !36
  store i16 %i.io, ptr %.6..6..6..sroa_idx, align 2, !tbaa !36
  %i.ip = extractelement <16 x i16> %i.hv, i64 4
  %i.iq = zext i16 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.iq
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !36
  store i16 %i.is, ptr %.8..8..8..sroa_idx496, align 8, !tbaa !36
  %i.it = extractelement <16 x i16> %i.hv, i64 5
  %i.iu = zext i16 %i.it to i64
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.iu
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !36
  store i16 %i.iw, ptr %.10..10..10..sroa_idx497, align 2, !tbaa !36
  %i.ix = extractelement <16 x i16> %i.hv, i64 6
  %i.iy = zext i16 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !36
  store i16 %i.ja, ptr %.12..12..12..sroa_idx498, align 4, !tbaa !36
  %i.jb = extractelement <16 x i16> %i.hv, i64 7
  %i.jc = zext i16 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.jc
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !36
  store i16 %i.je, ptr %.14..14..14..sroa_idx499, align 2, !tbaa !36
  %i.jf = extractelement <16 x i16> %i.hv, i64 8
  %i.jg = zext i16 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !36
  store i16 %i.ji, ptr %.16..16..16..sroa_idx504, align 16, !tbaa !36
  %i.jj = extractelement <16 x i16> %i.hv, i64 9
  %i.jk = zext i16 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.jk
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !36
  store i16 %i.jm, ptr %.18..18..18..sroa_idx505, align 2, !tbaa !36
  %i.jn = extractelement <16 x i16> %i.hv, i64 10
  %i.jo = zext i16 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.jo
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !36
  store i16 %i.jq, ptr %.20..20..20..sroa_idx506, align 4, !tbaa !36
  %i.jr = extractelement <16 x i16> %i.hv, i64 11
  %i.js = zext i16 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.js
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !36
  store i16 %i.ju, ptr %.22..22..22..sroa_idx507, align 2, !tbaa !36
  %i.jv = extractelement <16 x i16> %i.hv, i64 12
  %i.jw = zext i16 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.jw
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !36
  store i16 %i.jy, ptr %.24..24..24..sroa_idx509, align 8, !tbaa !36
  %i.jz = extractelement <16 x i16> %i.hv, i64 13
  %i.ka = zext i16 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.ka
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !36
  store i16 %i.kc, ptr %.26..26..26..sroa_idx510, align 2, !tbaa !36
  %i.kd = extractelement <16 x i16> %i.hv, i64 14
  %i.ke = zext i16 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.ke
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !36
  store i16 %i.kg, ptr %.28..28..28..sroa_idx511, align 4, !tbaa !36
  %i.kh = extractelement <16 x i16> %i.hv, i64 15
  %i.ki = zext i16 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.ki
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !36
  store i16 %i.kk, ptr %.30..30..30..sroa_idx, align 2, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.kl = icmp slt i64 %indvars.iv, %invariant.op
  %i.km = sub nsw i64 %i.s, %indvars.iv
  %i.kn = shl nsw i64 %i.km, 1
  %i.ko = select i1 %i.kl, i64 8, i64 %i.kn       ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0186340.us, ptr nonnull align 16 %i.a, i64 %i.ko, i1 false)
  br i1 %i.ai, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0185341.us, ptr nonnull align 8 %.8..8..8..sroa_idx, i64 %i.ko, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %i.ak, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0184342.us, ptr nonnull align 16 %.16..16..16..sroa_idx, i64 %i.ko, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0185341.us, ptr nonnull align 8 %.8..8..8..sroa_idx494, i64 %i.ko, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0184342.us, ptr nonnull align 16 %.16..16..16..sroa_idx500, i64 %i.ko, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0183343.us, ptr nonnull align 8 %.24..24..24..sroa_idx, i64 %i.ko, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.kp = getelementptr inbounds nuw i8, ptr %.0186340.us, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %.0185341.us, i64 8
  %i.kr = getelementptr inbounds nuw i8, ptr %.0184342.us, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %.0183343.us, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not198.us = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %.not198.us, label %bb.d, label %._crit_edge.us, !llvm.loop !50

._crit_edge.us:                                   ; preds = %bb.q
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 4 ; 2 uses
  %i.kt = trunc nuw i64 %indvars.iv.next377 to i32
  %i.ku = icmp sgt i32 %i.q, %i.kt
  br i1 %i.ku, label %.lr.ph.us, label %select.unfold, !llvm.loop !51

bb.r:                                             ; preds = %bb.c
  %i.kv = add i64 %i.x, %.0172356                 ; 2 uses
  %i.kw = icmp ugt i64 %i.kv, %2
  br i1 %i.kw, label %.thread306, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0160358, ptr align 1 %.0147360, i64 %i.x, i1 false)
  %i.kx = getelementptr inbounds nuw i8, ptr %.0147360, i64 %i.x
  %i.ky = getelementptr inbounds nuw i8, ptr %.0160358, i64 %i.x
  br label %.thread298

select.unfold:                                    ; preds = %._crit_edge.us, %.lr.ph351, %.preheader
  %.1173.lcssa = phi i64 [ %.0172356, %.preheader ], [ %.0172356, %.lr.ph351 ], [ %.3175.us, %._crit_edge.us ]
  %.1148.lcssa = phi ptr [ %.0147360, %.preheader ], [ %.0147360, %.lr.ph351 ], [ %i.hw, %._crit_edge.us ]
  %i.kz = getelementptr inbounds nuw i8, ptr %.0160358, i64 %i.x
  br label %.thread298

.thread298:                                       ; preds = %select.unfold, %bb.s, %bb.b
  %.5152305 = phi ptr [ %.0147360, %bb.b ], [ %i.kx, %bb.s ], [ %.1148.lcssa, %select.unfold ]
  %.1161304 = phi ptr [ %.0160358, %bb.b ], [ %i.ky, %bb.s ], [ %i.kz, %select.unfold ]
  %.5177303 = phi i64 [ %.0172356, %bb.b ], [ %i.kv, %bb.s ], [ %.1173.lcssa, %select.unfold ]
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %i.la = load i16, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.lb = sext i16 %i.la to i64
  %.not199 = icmp slt i64 %indvars.iv.next380, %i.lb
  br i1 %.not199, label %bb.b, label %.critedge.preheader, !llvm.loop !52

bb.t:                                             ; preds = %.lr.ph371, %.critedge
  %i.lc = phi i32 [ %i.i, %.lr.ph371 ], [ %i.ml, %.critedge ]
  %i.ld = phi i16 [ %i.g, %.lr.ph371 ], [ %i.mm, %.critedge ] ; 2 uses
  %i.le = phi i16 [ %i.g, %.lr.ph371 ], [ %i.mn, %.critedge ] ; 2 uses
  %.0153370 = phi i32 [ 0, %.lr.ph371 ], [ %i.mo, %.critedge ] ; 4 uses
  %.0155369 = phi ptr [ %3, %.lr.ph371 ], [ %.1156.lcssa, %.critedge ] ; 2 uses
  %.6178368 = phi i64 [ 0, %.lr.ph371 ], [ %.7179.lcssa, %.critedge ] ; 2 uses
  %i.lf = load i32, ptr %i.j, align 8, !tbaa !53
  %i.lg = add nsw i32 %i.lf, %.0153370
  %i.lh = icmp sgt i16 %i.le, 0
  br i1 %i.lh, label %.lr.ph365.preheader, label %.critedge

.lr.ph365.preheader:                              ; preds = %bb.t
  %i.li = load ptr, ptr %i.b, align 8, !tbaa !48
  br label %.lr.ph365

.lr.ph365:                                        ; preds = %.lr.ph365.preheader, %bb.aa
  %i.lj = phi i16 [ %i.ld, %.lr.ph365.preheader ], [ %i.mi, %bb.aa ] ; 2 uses
  %indvars.iv382 = phi i64 [ 0, %.lr.ph365.preheader ], [ %indvars.iv.next383, %bb.aa ] ; 2 uses
  %.1156363 = phi ptr [ %.0155369, %.lr.ph365.preheader ], [ %.2157.ph, %bb.aa ] ; 4 uses
  %.2162362 = phi ptr [ %i.li, %.lr.ph365.preheader ], [ %.3163.ph, %bb.aa ] ; 4 uses
  %.7179361 = phi i64 [ %.6178368, %.lr.ph365.preheader ], [ %.8180.ph, %bb.aa ] ; 3 uses
  %i.lk = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.ll = getelementptr inbounds nuw [48 x i8], ptr %i.lk, i64 %indvars.iv382 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 12
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !25
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !28
  %i.lq = sext i32 %i.ln to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 25
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !29
  %i.lt = sext i8 %i.ls to i64
  %i.lu = mul nsw i64 %i.lt, %i.lq                ; 5 uses
  %i.lv = sext i32 %i.lp to i64
  %i.lw = mul i64 %i.lu, %i.lv                    ; 3 uses
  %i.lx = icmp eq i64 %i.lw, 0
  br i1 %i.lx, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %.lr.ph365
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ll, i64 20
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !30 ; 3 uses
  %i.ma = icmp sgt i32 %i.lz, 1
  br i1 %i.ma, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.mb = srem i32 %i.lg, %i.lz
  %.not200 = icmp eq i32 %i.mb, 0
  br i1 %.not200, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.mc = getelementptr inbounds nuw i8, ptr %.2162362, i64 %i.lw
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.md = udiv i32 %.0153370, %i.lz
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x
  %.pn201.in = phi i32 [ %i.md, %bb.x ], [ %.0153370, %bb.u ]
  %i.me = add i64 %i.lu, %.7179361                ; 2 uses
  %i.mf = icmp ugt i64 %i.me, %4
  br i1 %i.mf, label %.thread306, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.pn201 = zext i32 %.pn201.in to i64
  %.pn = mul i64 %i.lu, %.pn201
  %.0182 = getelementptr inbounds nuw i8, ptr %.2162362, i64 %.pn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1156363, ptr align 1 %.0182, i64 %i.lu, i1 false)
  %i.mg = getelementptr inbounds nuw i8, ptr %.1156363, i64 %i.lu
  %i.mh = getelementptr inbounds nuw i8, ptr %.2162362, i64 %i.lw
  %.pre = load i16, ptr %i.d, align 8, !tbaa !44
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w, %.lr.ph365
  %i.mi = phi i16 [ %i.lj, %.lr.ph365 ], [ %i.lj, %bb.w ], [ %.pre, %bb.z ] ; 4 uses
  %.8180.ph = phi i64 [ %.7179361, %.lr.ph365 ], [ %.7179361, %bb.w ], [ %i.me, %bb.z ] ; 2 uses
  %.3163.ph = phi ptr [ %.2162362, %.lr.ph365 ], [ %i.mc, %bb.w ], [ %i.mh, %bb.z ]
  %.2157.ph = phi ptr [ %.1156363, %.lr.ph365 ], [ %.1156363, %bb.w ], [ %i.mg, %bb.z ] ; 2 uses
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1 ; 2 uses
  %i.mj = sext i16 %i.mi to i64
  %i.mk = icmp slt i64 %indvars.iv.next383, %i.mj
  br i1 %i.mk, label %.lr.ph365, label %.critedge.loopexit, !llvm.loop !54

.critedge.loopexit:                               ; preds = %bb.aa
  %.pre465 = load i32, ptr %i.h, align 4, !tbaa !49
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.t
  %i.ml = phi i32 [ %i.lc, %bb.t ], [ %.pre465, %.critedge.loopexit ] ; 2 uses
  %i.mm = phi i16 [ %i.ld, %bb.t ], [ %i.mi, %.critedge.loopexit ]
  %i.mn = phi i16 [ %i.le, %bb.t ], [ %i.mi, %.critedge.loopexit ]
  %.7179.lcssa = phi i64 [ %.6178368, %bb.t ], [ %.8180.ph, %.critedge.loopexit ]
  %.1156.lcssa = phi ptr [ %.0155369, %bb.t ], [ %.2157.ph, %.critedge.loopexit ]
  %i.mo = add nuw nsw i32 %.0153370, 1            ; 2 uses
  %.not202 = icmp slt i32 %i.mo, %i.ml
  br i1 %.not202, label %bb.t, label %.critedge206, !llvm.loop !55

.critedge206:                                     ; preds = %.critedge, %.critedge.preheader
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %4, ptr %i.mp, align 8, !tbaa !56
  br label %.thread306

.thread306:                                       ; preds = %bb.r, %bb.f, %bb.d, %bb.y, %.critedge206
  %.11 = phi i32 [ 0, %.critedge206 ], [ 1, %bb.y ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_undo_b44a(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i16, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %compute_scratch_buffer_size.exit

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  br label %bb.b

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %4)
  br label %compute_scratch_buffer_size.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.02131.i = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %bb.b ]
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv.i ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %6 = load i32, ptr %5, align 4, !tbaa !25       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %7 = load i32, ptr %i.j, align 8, !tbaa !28     ; 3 uses
  %8 = srem i32 %6, 4                             ; 2 uses
  %.not.i = icmp eq i32 %8, 0
  %reass.sub.i = add i32 %6, 4
  %9 = sub i32 %reass.sub.i, %8
  %.024.i = select i1 %.not.i, i32 %6, i32 %9
  %10 = srem i32 %7, 4                            ; 2 uses
  %.not28.i = icmp eq i32 %10, 0
  %reass.sub29.i = add i32 %7, 4
  %11 = sub i32 %reass.sub29.i, %10
  %.023.i = select i1 %.not28.i, i32 %7, i32 %11
  %12 = sext i32 %.023.i to i64
  %i.k = sext i32 %.024.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29
  %i.n = sext i8 %i.m to i64
  %i.o = mul nsw i64 %i.k, %i.n
  %i.p = mul i64 %i.o, %12
  %i.q = add i64 %i.p, %.02131.i                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.b, !llvm.loop !47

compute_scratch_buffer_size.exit:                 ; preds = %bb.a, %._crit_edge.loopexit.i
  %.021.lcssa.i = phi i64 [ %4, %bb.a ], [ %i.h, %._crit_edge.loopexit.i ]
  %i.r = tail call i32 @internal_decode_alloc_buffer(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %.021.lcssa.i) #5 ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %compute_scratch_buffer_size.exit
  tail call void (...) @exrcore_ensure_b44_tables() #5
  %i.s = tail call fastcc i32 @uncompress_b44_impl(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %compute_scratch_buffer_size.exit, %bb.c
  %.0 = phi i32 [ %i.s, %bb.c ], [ %i.r, %compute_scratch_buffer_size.exit ]
  ret i32 %.0
}

declare i32 @internal_encode_alloc_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v8i32(<8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v12i32(<12 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 168}
!9 = !{!"_exr_encode_pipeline", !10, i64 0, !11, i64 8, !12, i64 16, !12, i64 18, !5, i64 20, !13, i64 24, !14, i64 32, !11, i64 96, !11, i64 104, !10, i64 112, !10, i64 120, !15, i64 128, !10, i64 136, !11, i64 144, !10, i64 152, !10, i64 160, !11, i64 168, !10, i64 176, !10, i64 184, !11, i64 192, !10, i64 200, !11, i64 208, !10, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !6, i64 272}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!"p1 _ZTS19_priv_exr_context_t", !11, i64 0}
!14 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20, !6, i64 21, !6, i64 22, !6, i64 23, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!15 = !{!"p1 int", !11, i64 0}
!16 = !{!9, !10, i64 112}
!17 = !{!9, !5, i64 44}
!18 = !{!9, !12, i64 16}
!19 = !{!9, !11, i64 104}
!20 = !{!9, !11, i64 192}
!21 = !{!9, !5, i64 40}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!9, !11, i64 8}
!25 = !{!26, !5, i64 12}
!26 = !{!"", !27, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 25, !12, i64 26, !12, i64 28, !12, i64 30, !5, i64 32, !5, i64 36, !6, i64 40}
!27 = !{!"p1 omnipotent char", !11, i64 0}
!28 = !{!26, !5, i64 8}
!29 = !{!26, !6, i64 25}
!30 = !{!26, !5, i64 20}
!31 = distinct !{!31, !23}
!32 = !{!26, !12, i64 26}
!33 = !{!26, !6, i64 24}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 short", !11, i64 0}
!36 = !{!12, !12, i64 0}
!37 = distinct !{!37, !23}
!38 = !{!6, !6, i64 0}
!39 = !{!9, !10, i64 184}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !23}
!43 = !{!9, !10, i64 176}
!44 = !{!45, !12, i64 16}
!45 = !{!"_exr_decode_pipeline", !10, i64 0, !11, i64 8, !12, i64 16, !12, i64 18, !5, i64 20, !13, i64 24, !14, i64 32, !5, i64 96, !5, i64 100, !10, i64 104, !11, i64 112, !11, i64 120, !10, i64 128, !11, i64 136, !10, i64 144, !11, i64 152, !10, i64 160, !15, i64 168, !10, i64 176, !11, i64 184, !10, i64 192, !11, i64 200, !10, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !6, i64 264}
!46 = !{!45, !11, i64 8}
!47 = distinct !{!47, !23}
!48 = !{!45, !11, i64 184}
!49 = !{!45, !5, i64 44}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23}
!52 = distinct !{!52, !23}
!53 = !{!45, !5, i64 40}
!54 = distinct !{!54, !23}
!55 = distinct !{!55, !23}
!56 = !{!45, !10, i64 104}
end_hunk_1
