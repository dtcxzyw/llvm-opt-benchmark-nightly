Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_b44?download=true
inline.NumInlined: 10
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@compress_b44_impl:bb.a

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
  %i.d = load i16, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %compute_scratch_buffer_size.exit

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  br label %bb.b

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %4)
  br label %compute_scratch_buffer_size.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.02131.i = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %bb.b ]
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load <2 x i32>, ptr %i.j, align 8, !tbaa !31 ; 3 uses
  %i.l = srem <2 x i32> %i.k, splat (i32 4)       ; 2 uses
  %i.m = icmp eq <2 x i32> %i.l, zeroinitializer
  %i.n = add <2 x i32> %i.k, splat (i32 4)
  %i.o = sub <2 x i32> %i.n, %i.l
  %i.p = select <2 x i1> %i.m, <2 x i32> %i.k, <2 x i32> %i.o ; 2 uses
  %i.q = extractelement <2 x i32> %i.p, i64 0
  %i.r = sext i32 %i.q to i64
  %i.s = extractelement <2 x i32> %i.p, i64 1
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20
  %i.w = sext i8 %i.v to i64
  %i.x = mul nsw i64 %i.t, %i.w
  %i.y = mul i64 %i.x, %i.r
  %i.z = add i64 %i.y, %.02131.i                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.b, !llvm.loop !0

compute_scratch_buffer_size.exit:                 ; preds = %bb.a, %._crit_edge.loopexit.i
  %.021.lcssa.i = phi i64 [ %4, %bb.a ], [ %i.h, %._crit_edge.loopexit.i ]
  %i.aa = tail call i32 @internal_decode_alloc_buffer(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %.021.lcssa.i) #5 ; 2 uses
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %compute_scratch_buffer_size.exit
  tail call void (...) @exrcore_ensure_b44_tables() #5
  %i.ab = tail call fastcc i32 @uncompress_b44_impl(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %compute_scratch_buffer_size.exit, %bb.c
  %.0 = phi i32 [ %i.ab, %bb.c ], [ %i.aa, %compute_scratch_buffer_size.exit ]
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %.not199355 = icmp sgt i16 %i.e, 0
  br i1 %.not199355, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.8..8..8..sroa_idx493 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx501 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.24..24..24..sroa_idx506 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.10..10..10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.18..18..18..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %.26..26..26..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.20..20..20..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.28..28..28..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.14..14..14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.22..22..22..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %.16..16..16..sroa_idx500 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16..16..sroa_idx499 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.6..6..6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.8..8..8..sroa_idx494 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.10..10..10..sroa_idx495 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.12..12..12..sroa_idx496 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.14..14..14..sroa_idx497 = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.16..16..16..sroa_idx502 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.18..18..18..sroa_idx503 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %.20..20..20..sroa_idx504 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.22..22..22..sroa_idx505 = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %.24..24..24..sroa_idx507 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.26..26..26..sroa_idx508 = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %.28..28..28..sroa_idx509 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.30..30..30..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.8..8..8..sroa_idx492 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx498 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

.critedge.preheader:                              ; preds = %.thread298, %bb.a
  %i.g = phi i16 [ %i.e, %bb.a ], [ %i.jz, %.thread298 ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !55   ; 2 uses
  %.not202367 = icmp sgt i32 %i.i, 0
  br i1 %.not202367, label %.lr.ph371, label %.critedge206

.lr.ph371:                                        ; preds = %.critedge.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.t

bb.b:                                             ; preds = %.lr.ph, %.thread298
  %indvars.iv376 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next377, %.thread298 ] ; 2 uses
  %.0151359 = phi i64 [ 0, %.lr.ph ], [ %.5156305, %.thread298 ] ; 5 uses
  %.0163357 = phi ptr [ %i.c, %.lr.ph ], [ %.1164304, %.thread298 ] ; 5 uses
  %.0171356 = phi ptr [ %1, %.lr.ph ], [ %.5176303, %.thread298 ] ; 6 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv376 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !18   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !19   ; 3 uses
  %i.r = sext i32 %i.q to i64                     ; 4 uses
  %i.s = sext i32 %i.o to i64                     ; 5 uses
  %i.t = mul nsw i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 25
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20
  %i.w = sext i8 %i.v to i64
  %i.x = mul i64 %i.t, %i.w                       ; 6 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.thread298, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 26
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !22
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
  %invariant.op = add nsw i64 %i.r, -3
  %invariant.op482 = add nsw i64 %i.r, -1
  %invariant.op483 = add nsw i64 %i.r, -2
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 5 uses
  %.1152349.us = phi i64 [ %.0151359, %.lr.ph.us.preheader ], [ %.3154.us, %._crit_edge.us ]
  %.1172348.us = phi ptr [ %.0171356, %.lr.ph.us.preheader ], [ %i.gt, %._crit_edge.us ]
  %i.ad = mul nuw nsw i64 %indvars.iv, %i.s
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.0163357, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.s ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.s ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.s
  %i.ai = icmp slt i64 %indvars.iv, %invariant.op
  %i.aj = icmp slt i64 %indvars.iv, %invariant.op482
  %i.ak = icmp slt i64 %indvars.iv, %invariant.op483
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us, %bb.q
  %.0147346.us = phi i32 [ 0, %.lr.ph.us ], [ %i.jr, %bb.q ] ; 3 uses
  %.2153345.us = phi i64 [ %.1152349.us, %.lr.ph.us ], [ %.3154.us, %bb.q ] ; 2 uses
  %.0158344.us = phi ptr [ %i.ah, %.lr.ph.us ], [ %i.jq, %bb.q ] ; 2 uses
  %.0159343.us = phi ptr [ %i.ag, %.lr.ph.us ], [ %i.jp, %bb.q ] ; 3 uses
  %.0160342.us = phi ptr [ %i.af, %.lr.ph.us ], [ %i.jo, %bb.q ] ; 3 uses
  %.0161341.us = phi ptr [ %i.ae, %.lr.ph.us ], [ %i.jn, %bb.q ] ; 2 uses
  %.2173340.us = phi ptr [ %.1172348.us, %.lr.ph.us ], [ %i.gt, %bb.q ] ; 17 uses
  %i.al = add i64 %.2153345.us, 3                 ; 2 uses
  %i.am = icmp ugt i64 %i.al, %2
  br i1 %i.am, label %.thread306, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.2173340.us, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !27  ; 2 uses
  %i.ap = icmp ugt i8 %i.ao, 51
  br i1 %i.ap, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i64 %.2153345.us, 14                ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, %2
  br i1 %i.ar, label %.thread306, label %bb.g

bb.g:                                             ; preds = %bb.f
  %5 = load i8, ptr %.2173340.us, align 1, !tbaa !27
  %6 = zext i8 %5 to i16
  %7 = shl nuw i16 %6, 8                          ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.2173340.us, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !27
  %10 = zext i8 %9 to i16
  %11 = or disjoint i16 %7, %10                   ; 2 uses
  %i.as = zext nneg i8 %i.ao to i32               ; 2 uses
  %i.at = lshr i32 %i.as, 2                       ; 16 uses
  %.neg106.i.us = shl nsw i32 -32, %i.at          ; 12 uses
  %i.au = zext i16 %11 to i32
  %i.av = shl nuw nsw i32 %i.as, 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.2173340.us, i64 3 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !27
  %i.ay = lshr i8 %i.ax, 4
  %i.az = zext nneg i8 %i.ay to i32
  %.masked.i.us = and i32 %i.av, 48
  %i.ba = or disjoint i32 %.masked.i.us, %i.az
  %i.bb = shl nuw nsw i32 %i.ba, %i.at
  %i.bc = add nsw i32 %.neg106.i.us, %i.au        ; 2 uses
  %i.bd = add nsw i32 %i.bb, %i.bc                ; 2 uses
  %12 = trunc i32 %i.bd to i16                    ; 2 uses
  store i16 %12, ptr %.8..8..8..sroa_idx493, align 8, !tbaa !26
  %13 = load i8, ptr %i.aw, align 1, !tbaa !27
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 2
  %i.be = getelementptr inbounds nuw i8, ptr %.2173340.us, i64 4 ; 2 uses
  %16 = load i8, ptr %i.be, align 1, !tbaa !27
  %17 = lshr i8 %16, 6
  %18 = zext nneg i8 %17 to i32
  %.masked97.i.us = and i32 %15, 60
  %19 = or disjoint i32 %.masked97.i.us, %18
  %20 = shl nuw nsw i32 %19, %i.at
  %21 = add nsw i32 %i.bd, %.neg106.i.us          ; 2 uses
  %22 = add nsw i32 %20, %21                      ; 3 uses
  %23 = getelementptr inbounds nuw i8, ptr %.2173340.us, i64 5
  %24 = getelementptr inbounds nuw i8, ptr %.2173340.us, i64 6 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %.2173340.us, i64 7 ; 2 uses
  %26 = add nsw i32 %22, %.neg106.i.us
  %27 = getelementptr inbounds nuw i8, ptr %.2173340.us, i64 8
  %28 = getelementptr inbounds nuw i8, ptr %.2173340.us, i64 9 ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %.2173340.us, i64 10 ; 2 uses
  %30 = getelementptr inbounds nuw i8, ptr %.2173340.us, i64 11
  %31 = getelementptr inbounds nuw i8, ptr %.2173340.us, i64 12 ; 2 uses
  %32 = getelementptr inbounds nuw i8, ptr %.2173340.us, i64 13 ; 2 uses
  %i.bf = trunc i32 %22 to i16                    ; 2 uses
  store i16 %i.bf, ptr %.16..16..16..sroa_idx501, align 16, !tbaa !26
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !27
  %i.bh = and i8 %i.bg, 63
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -32
  %i.bk = shl nsw i32 %i.bj, %i.at
  %i.bl = add nsw i32 %i.bk, %22                  ; 2 uses
  %i.bm = trunc i32 %i.bl to i16                  ; 2 uses
  store i16 %i.bm, ptr %.24..24..24..sroa_idx506, align 8, !tbaa !26
  %i.bn = load i8, ptr %23, align 1, !tbaa !27    ; 2 uses
  %i.bo = lshr i8 %i.bn, 2
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, %i.at
  %i.br = add nsw i32 %i.bq, %i.bc                ; 2 uses
  %i.bs = trunc i32 %i.br to i16
  %i.bt = zext i8 %i.bn to i32
  %i.bu = shl nuw nsw i32 %i.bt, 4
  %i.bv = load i8, ptr %24, align 1, !tbaa !27
  %i.bw = lshr i8 %i.bv, 4
  %i.bx = zext nneg i8 %i.bw to i32
  %.masked98.i.us = and i32 %i.bu, 48
  %i.by = or disjoint i32 %.masked98.i.us, %i.bx
  %i.bz = shl nuw nsw i32 %i.by, %i.at
  %i.ca = add nsw i32 %i.bz, %21                  ; 2 uses
  %i.cb = trunc i32 %i.ca to i16                  ; 2 uses
  store i16 %i.cb, ptr %.10..10..10..sroa_idx, align 2, !tbaa !26
  %i.cc = load i8, ptr %24, align 1, !tbaa !27
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 2
  %i.cf = load i8, ptr %25, align 1, !tbaa !27
  %i.cg = lshr i8 %i.cf, 6
  %i.ch = zext nneg i8 %i.cg to i32
  %.masked99.i.us = and i32 %i.ce, 60
  %i.ci = or disjoint i32 %.masked99.i.us, %i.ch
  %i.cj = shl nuw nsw i32 %i.ci, %i.at
  %i.ck = add nsw i32 %26, %i.cj                  ; 2 uses
  %i.cl = trunc i32 %i.ck to i16                  ; 2 uses
  store i16 %i.cl, ptr %.18..18..18..sroa_idx, align 2, !tbaa !26
  %i.cm = load i8, ptr %25, align 1, !tbaa !27
  %i.cn = and i8 %i.cm, 63
  %i.co = zext nneg i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, %i.at
  %i.cq = add nsw i32 %i.bl, %.neg106.i.us
  %i.cr = add nsw i32 %i.cq, %i.cp                ; 2 uses
  %i.cs = trunc i32 %i.cr to i16                  ; 2 uses
  store i16 %i.cs, ptr %.26..26..26..sroa_idx, align 2, !tbaa !26
  %i.ct = load i8, ptr %27, align 1, !tbaa !27    ; 2 uses
  %i.cu = lshr i8 %i.ct, 2
  %i.cv = zext nneg i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, %i.at
  %i.cx = add nsw i32 %i.br, %.neg106.i.us
  %i.cy = add nsw i32 %i.cx, %i.cw                ; 2 uses
  %i.cz = trunc i32 %i.cy to i16
  %i.da = zext i8 %i.ct to i32
  %i.db = shl nuw nsw i32 %i.da, 4
  %i.dc = load i8, ptr %28, align 1, !tbaa !27
  %i.dd = lshr i8 %i.dc, 4
  %i.de = zext nneg i8 %i.dd to i32
  %.masked100.i.us = and i32 %i.db, 48
  %i.df = or disjoint i32 %.masked100.i.us, %i.de
  %i.dg = shl nuw nsw i32 %i.df, %i.at
  %i.dh = add nsw i32 %i.ca, %.neg106.i.us
  %i.di = add nsw i32 %i.dh, %i.dg                ; 2 uses
  %i.dj = trunc i32 %i.di to i16                  ; 2 uses
  store i16 %i.dj, ptr %.12..12..12..sroa_idx, align 4, !tbaa !26
  %i.dk = load i8, ptr %28, align 1, !tbaa !27
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 2
  %i.dn = load i8, ptr %29, align 1, !tbaa !27
  %i.do = lshr i8 %i.dn, 6
  %i.dp = zext nneg i8 %i.do to i32
  %.masked101.i.us = and i32 %i.dm, 60
  %i.dq = or disjoint i32 %.masked101.i.us, %i.dp
  %i.dr = shl nuw nsw i32 %i.dq, %i.at
  %i.ds = add nsw i32 %i.ck, %.neg106.i.us
  %i.dt = add nsw i32 %i.ds, %i.dr                ; 2 uses
  %i.du = trunc i32 %i.dt to i16                  ; 2 uses
  store i16 %i.du, ptr %.20..20..20..sroa_idx, align 4, !tbaa !26
  %i.dv = load i8, ptr %29, align 1, !tbaa !27
  %i.dw = and i8 %i.dv, 63
  %i.dx = zext nneg i8 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, %i.at
  %i.dz = add nsw i32 %i.cr, %.neg106.i.us
  %i.ea = add nsw i32 %i.dz, %i.dy                ; 2 uses
  %i.eb = trunc i32 %i.ea to i16                  ; 2 uses
  store i16 %i.eb, ptr %.28..28..28..sroa_idx, align 4, !tbaa !26
  %i.ec = load i8, ptr %30, align 1, !tbaa !27    ; 2 uses
  %i.ed = lshr i8 %i.ec, 2
  %i.ee = zext nneg i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, %i.at
  %i.eg = add nsw i32 %i.cy, %.neg106.i.us
  %i.eh = add nsw i32 %i.eg, %i.ef
  %i.ei = trunc i32 %i.eh to i16
  %i.ej = zext i8 %i.ec to i32
  %i.ek = shl nuw nsw i32 %i.ej, 4
  %i.el = load i8, ptr %31, align 1, !tbaa !27
  %i.em = lshr i8 %i.el, 4
  %i.en = zext nneg i8 %i.em to i32
  %.masked102.i.us = and i32 %i.ek, 48
  %i.eo = or disjoint i32 %.masked102.i.us, %i.en
  %i.ep = shl nuw nsw i32 %i.eo, %i.at
  %i.eq = add nsw i32 %i.di, %.neg106.i.us
  %i.er = add nsw i32 %i.eq, %i.ep
  %i.es = trunc i32 %i.er to i16                  ; 2 uses
  store i16 %i.es, ptr %.14..14..14..sroa_idx, align 2, !tbaa !26
  %i.et = load i8, ptr %31, align 1, !tbaa !27
  %i.eu = zext i8 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 2
  %i.ew = load i8, ptr %32, align 1, !tbaa !27
  %i.ex = lshr i8 %i.ew, 6
  %i.ey = zext nneg i8 %i.ex to i32
  %.masked103.i.us = and i32 %i.ev, 60
  %i.ez = or disjoint i32 %.masked103.i.us, %i.ey
  %i.fa = shl nuw nsw i32 %i.ez, %i.at
  %i.fb = add nsw i32 %i.dt, %.neg106.i.us
  %i.fc = add nsw i32 %i.fb, %i.fa
  %i.fd = trunc i32 %i.fc to i16                  ; 2 uses
  store i16 %i.fd, ptr %.22..22..22..sroa_idx, align 2, !tbaa !26
  %i.fe = load i8, ptr %32, align 1, !tbaa !27
  %i.ff = and i8 %i.fe, 63
  %i.fg = zext nneg i8 %i.ff to i32
  %i.fh = shl nuw nsw i32 %i.fg, %i.at
  %i.fi = add nsw i32 %i.ea, %.neg106.i.us
  %i.fj = add nsw i32 %i.fi, %i.fh
  %i.fk = trunc i32 %i.fj to i16
  %i.fl = insertelement <16 x i16> poison, i16 %11, i64 0
  %i.fm = insertelement <16 x i16> %i.fl, i16 %i.bs, i64 1
  %i.fn = insertelement <16 x i16> %i.fm, i16 %i.cz, i64 2
  %i.fo = insertelement <16 x i16> %i.fn, i16 %i.ei, i64 3
  %i.fp = insertelement <16 x i16> %i.fo, i16 %12, i64 4
  %i.fq = insertelement <16 x i16> %i.fp, i16 %i.cb, i64 5
  %i.fr = insertelement <16 x i16> %i.fq, i16 %i.dj, i64 6
  %i.fs = insertelement <16 x i16> %i.fr, i16 %i.es, i64 7
  %i.ft = insertelement <16 x i16> %i.fs, i16 %i.bf, i64 8
  %i.fu = insertelement <16 x i16> %i.ft, i16 %i.cl, i64 9
  %i.fv = insertelement <16 x i16> %i.fu, i16 %i.du, i64 10
  %i.fw = insertelement <16 x i16> %i.fv, i16 %i.fd, i64 11
  %i.fx = insertelement <16 x i16> %i.fw, i16 %i.bm, i64 12
  %i.fy = insertelement <16 x i16> %i.fx, i16 %i.cs, i64 13
  %i.fz = insertelement <16 x i16> %i.fy, i16 %i.eb, i64 14
  %i.ga = insertelement <16 x i16> %i.fz, i16 %i.fk, i64 15 ; 3 uses
  %i.gb = xor <16 x i16> %i.ga, splat (i16 -1)
  %i.gc = and <16 x i16> %i.ga, splat (i16 32767)
  %33 = insertelement <16 x i16> %i.ga, i16 %7, i64 0
  %i.gd = icmp slt <16 x i16> %33, zeroinitializer
  %i.ge = select <16 x i1> %i.gd, <16 x i16> %i.gc, <16 x i16> %i.gb ; 3 uses
  %i.gf = shufflevector <16 x i16> %i.ge, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i16> %i.gf, ptr %i.a, align 16, !tbaa !26
  %i.gg = shufflevector <16 x i16> %i.ge, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i16> %i.gg, ptr %.16..16..16..sroa_idx500, align 16, !tbaa !26
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %.2173.val.us = load i8, ptr %.2173340.us, align 1, !tbaa !27
  %i.gh = getelementptr i8, ptr %.2173340.us, i64 1
  %.2173.val207.us = load i8, ptr %i.gh, align 1, !tbaa !27
  %i.gi = zext i8 %.2173.val.us to i16
  %i.gj = shl nuw i16 %i.gi, 8                    ; 2 uses
  %i.gk = zext i8 %.2173.val207.us to i16
  %i.gl = or disjoint i16 %i.gj, %i.gk            ; 2 uses
  %i.gm = xor i16 %i.gl, -1
  %i.gn = and i16 %i.gl, 32767
  %.not1.i.us = icmp slt i16 %i.gj, 0
  %storemerge.i.us = select i1 %.not1.i.us, i16 %i.gn, i16 %i.gm ; 2 uses
  %i.go = insertelement <8 x i16> poison, i16 %storemerge.i.us, i64 0
  %i.gp = shufflevector <8 x i16> %i.go, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  store <8 x i16> %i.gp, ptr %i.a, align 16, !tbaa !26
  store <8 x i16> %i.gp, ptr %.16..16..16..sroa_idx499, align 16, !tbaa !26
  %i.gq = insertelement <16 x i16> poison, i16 %storemerge.i.us, i64 0
  %i.gr = shufflevector <16 x i16> %i.gq, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i64 [ 3, %bb.h ], [ 14, %bb.g ]
  %.3154.us = phi i64 [ %i.al, %bb.h ], [ %i.aq, %bb.g ] ; 3 uses
  %i.gs = phi <16 x i16> [ %i.gr, %bb.h ], [ %i.ge, %bb.g ] ; 16 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.2173340.us, i64 %.sink ; 3 uses
  %i.gu = load i8, ptr %i.ac, align 8, !tbaa !23
  %.not197.us = icmp eq i8 %i.gu, 0
  br i1 %.not197.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gv = load ptr, ptr @exrcore_logTable, align 8, !tbaa !25 ; 16 uses
  %i.gw = extractelement <16 x i16> %i.gs, i64 0
  %i.gx = zext i16 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !26
  store i16 %i.gz, ptr %i.a, align 16, !tbaa !26
  %i.ha = extractelement <16 x i16> %i.gs, i64 1
  %i.hb = zext i16 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !26
  store i16 %i.hd, ptr %.2..2..2..sroa_idx, align 2, !tbaa !26
  %i.he = extractelement <16 x i16> %i.gs, i64 2
  %i.hf = zext i16 %i.he to i64
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.hf
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !26
  store i16 %i.hh, ptr %.4..4..4..sroa_idx, align 4, !tbaa !26
  %i.hi = extractelement <16 x i16> %i.gs, i64 3
  %i.hj = zext i16 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.hj
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !26
  store i16 %i.hl, ptr %.6..6..6..sroa_idx, align 2, !tbaa !26
  %i.hm = extractelement <16 x i16> %i.gs, i64 4
  %i.hn = zext i16 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.hn
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !26
  store i16 %i.hp, ptr %.8..8..8..sroa_idx494, align 8, !tbaa !26
  %i.hq = extractelement <16 x i16> %i.gs, i64 5
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !26
  store i16 %i.ht, ptr %.10..10..10..sroa_idx495, align 2, !tbaa !26
  %i.hu = extractelement <16 x i16> %i.gs, i64 6
  %i.hv = zext i16 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.hv
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !26
  store i16 %i.hx, ptr %.12..12..12..sroa_idx496, align 4, !tbaa !26
  %i.hy = extractelement <16 x i16> %i.gs, i64 7
  %i.hz = zext i16 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.hz
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !26
  store i16 %i.ib, ptr %.14..14..14..sroa_idx497, align 2, !tbaa !26
  %i.ic = extractelement <16 x i16> %i.gs, i64 8
  %i.id = zext i16 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.id
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !26
  store i16 %i.if, ptr %.16..16..16..sroa_idx502, align 16, !tbaa !26
  %i.ig = extractelement <16 x i16> %i.gs, i64 9
  %i.ih = zext i16 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.ih
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !26
  store i16 %i.ij, ptr %.18..18..18..sroa_idx503, align 2, !tbaa !26
  %i.ik = extractelement <16 x i16> %i.gs, i64 10
  %i.il = zext i16 %i.ik to i64
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.il
  %i.in = load i16, ptr %i.im, align 2, !tbaa !26
  store i16 %i.in, ptr %.20..20..20..sroa_idx504, align 4, !tbaa !26
  %i.io = extractelement <16 x i16> %i.gs, i64 11
  %i.ip = zext i16 %i.io to i64
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.ip
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !26
  store i16 %i.ir, ptr %.22..22..22..sroa_idx505, align 2, !tbaa !26
  %i.is = extractelement <16 x i16> %i.gs, i64 12
  %i.it = zext i16 %i.is to i64
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !26
  store i16 %i.iv, ptr %.24..24..24..sroa_idx507, align 8, !tbaa !26
  %i.iw = extractelement <16 x i16> %i.gs, i64 13
  %i.ix = zext i16 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.ix
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !26
  store i16 %i.iz, ptr %.26..26..26..sroa_idx508, align 2, !tbaa !26
  %i.ja = extractelement <16 x i16> %i.gs, i64 14
  %i.jb = zext i16 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.jb
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !26
  store i16 %i.jd, ptr %.28..28..28..sroa_idx509, align 4, !tbaa !26
  %i.je = extractelement <16 x i16> %i.gs, i64 15
  %i.jf = zext i16 %i.je to i64
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.jf
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !26
  store i16 %i.jh, ptr %.30..30..30..sroa_idx, align 2, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ji = or disjoint i32 %.0147346.us, 3
  %i.jj = icmp slt i32 %i.ji, %i.o
  %i.jk = sub nuw nsw i32 %i.o, %.0147346.us
  %i.jl = shl nuw i32 %i.jk, 1
  %narrow = select i1 %i.jj, i32 8, i32 %i.jl
  %i.jm = zext i32 %narrow to i64                 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0161341.us, ptr nonnull align 16 %i.a, i64 %i.jm, i1 false)
  br i1 %i.ai, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0160342.us, ptr nonnull align 8 %.8..8..8..sroa_idx, i64 %i.jm, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %i.ak, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0159343.us, ptr nonnull align 16 %.16..16..16..sroa_idx, i64 %i.jm, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0160342.us, ptr nonnull align 8 %.8..8..8..sroa_idx492, i64 %i.jm, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0159343.us, ptr nonnull align 16 %.16..16..16..sroa_idx498, i64 %i.jm, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0158344.us, ptr nonnull align 8 %.24..24..24..sroa_idx, i64 %i.jm, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.jn = getelementptr inbounds nuw i8, ptr %.0161341.us, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %.0160342.us, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %.0159343.us, i64 8
  %i.jq = getelementptr inbounds nuw i8, ptr %.0158344.us, i64 8
  %i.jr = add nuw nsw i32 %.0147346.us, 4         ; 2 uses
  %.not198.us = icmp slt i32 %i.jr, %i.o
  br i1 %.not198.us, label %bb.d, label %._crit_edge.us, !llvm.loop !49

._crit_edge.us:                                   ; preds = %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.js = trunc nuw i64 %indvars.iv.next to i32
  %i.jt = icmp sgt i32 %i.q, %i.js
  br i1 %i.jt, label %.lr.ph.us, label %select.unfold, !llvm.loop !50

bb.r:                                             ; preds = %bb.c
  %i.ju = add i64 %i.x, %.0151359                 ; 2 uses
  %i.jv = icmp ugt i64 %i.ju, %2
  br i1 %i.jv, label %.thread306, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0163357, ptr align 1 %.0171356, i64 %i.x, i1 false)
  %i.jw = getelementptr inbounds nuw i8, ptr %.0171356, i64 %i.x
  %i.jx = getelementptr inbounds nuw i8, ptr %.0163357, i64 %i.x
  br label %.thread298

select.unfold:                                    ; preds = %._crit_edge.us, %.lr.ph351, %.preheader
  %.1172.lcssa = phi ptr [ %.0171356, %.preheader ], [ %.0171356, %.lr.ph351 ], [ %i.gt, %._crit_edge.us ]
  %.1152.lcssa = phi i64 [ %.0151359, %.preheader ], [ %.0151359, %.lr.ph351 ], [ %.3154.us, %._crit_edge.us ]
  %i.jy = getelementptr inbounds nuw i8, ptr %.0163357, i64 %i.x
  br label %.thread298

.thread298:                                       ; preds = %select.unfold, %bb.s, %bb.b
  %.5156305 = phi i64 [ %.0151359, %bb.b ], [ %i.ju, %bb.s ], [ %.1152.lcssa, %select.unfold ]
  %.1164304 = phi ptr [ %.0163357, %bb.b ], [ %i.jx, %bb.s ], [ %i.jy, %select.unfold ]
  %.5176303 = phi ptr [ %.0171356, %bb.b ], [ %i.jw, %bb.s ], [ %.1172.lcssa, %select.unfold ]
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %i.jz = load i16, ptr %i.d, align 8, !tbaa !29  ; 2 uses
  %i.ka = sext i16 %i.jz to i64
  %.not199 = icmp slt i64 %indvars.iv.next377, %i.ka
  br i1 %.not199, label %bb.b, label %.critedge.preheader, !llvm.loop !51

bb.t:                                             ; preds = %.lr.ph371, %.critedge
  %i.kb = phi i32 [ %i.i, %.lr.ph371 ], [ %i.lk, %.critedge ]
  %i.kc = phi i16 [ %i.g, %.lr.ph371 ], [ %i.ll, %.critedge ] ; 2 uses
  %i.kd = phi i16 [ %i.g, %.lr.ph371 ], [ %i.lm, %.critedge ] ; 2 uses
  %.0146370 = phi i32 [ 0, %.lr.ph371 ], [ %i.ln, %.critedge ] ; 4 uses
  %.6157369 = phi i64 [ 0, %.lr.ph371 ], [ %.7.lcssa, %.critedge ] ; 2 uses
  %.0167368 = phi ptr [ %3, %.lr.ph371 ], [ %.1168.lcssa, %.critedge ] ; 2 uses
  %i.ke = load i32, ptr %i.j, align 8, !tbaa !56
  %i.kf = add nsw i32 %i.ke, %.0146370
  %i.kg = icmp sgt i16 %i.kd, 0
  br i1 %i.kg, label %.lr.ph365.preheader, label %.critedge

.lr.ph365.preheader:                              ; preds = %bb.t
  %i.kh = load ptr, ptr %i.b, align 8, !tbaa !54
  br label %.lr.ph365

.lr.ph365:                                        ; preds = %.lr.ph365.preheader, %bb.aa
  %i.ki = phi i16 [ %i.kc, %.lr.ph365.preheader ], [ %i.lh, %bb.aa ] ; 2 uses
  %indvars.iv379 = phi i64 [ 0, %.lr.ph365.preheader ], [ %indvars.iv.next380, %bb.aa ] ; 2 uses
  %.7363 = phi i64 [ %.6157369, %.lr.ph365.preheader ], [ %.8.ph, %bb.aa ] ; 3 uses
  %.2165362 = phi ptr [ %i.kh, %.lr.ph365.preheader ], [ %.3166.ph, %bb.aa ] ; 4 uses
  %.1168361 = phi ptr [ %.0167368, %.lr.ph365.preheader ], [ %.2169.ph, %bb.aa ] ; 4 uses
  %i.kj = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.kk = getelementptr inbounds nuw [48 x i8], ptr %i.kj, i64 %indvars.iv379 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 12
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !18
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !19
  %i.kp = sext i32 %i.km to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kk, i64 25
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !20
  %i.ks = sext i8 %i.kr to i64
  %i.kt = mul nsw i64 %i.ks, %i.kp                ; 5 uses
  %i.ku = sext i32 %i.ko to i64
  %i.kv = mul i64 %i.kt, %i.ku                    ; 3 uses
  %i.kw = icmp eq i64 %i.kv, 0
  br i1 %i.kw, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %.lr.ph365
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kk, i64 20
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !21 ; 3 uses
  %i.kz = icmp sgt i32 %i.ky, 1
  br i1 %i.kz, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.la = srem i32 %i.kf, %i.ky
  %.not200 = icmp eq i32 %i.la, 0
  br i1 %.not200, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.lb = getelementptr inbounds nuw i8, ptr %.2165362, i64 %i.kv
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.lc = udiv i32 %.0146370, %i.ky
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x
  %.pn201.in = phi i32 [ %i.lc, %bb.x ], [ %.0146370, %bb.u ]
  %i.ld = add i64 %i.kt, %.7363                   ; 2 uses
  %i.le = icmp ugt i64 %i.ld, %4
  br i1 %i.le, label %.thread306, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.pn201 = zext i32 %.pn201.in to i64
  %.pn = mul i64 %i.kt, %.pn201
  %.0162 = getelementptr inbounds nuw i8, ptr %.2165362, i64 %.pn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1168361, ptr align 1 %.0162, i64 %i.kt, i1 false)
  %i.lf = getelementptr inbounds nuw i8, ptr %.1168361, i64 %i.kt
  %i.lg = getelementptr inbounds nuw i8, ptr %.2165362, i64 %i.kv
  %.pre = load i16, ptr %i.d, align 8, !tbaa !29
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w, %.lr.ph365
  %i.lh = phi i16 [ %i.ki, %.lr.ph365 ], [ %i.ki, %bb.w ], [ %.pre, %bb.z ] ; 4 uses
  %.2169.ph = phi ptr [ %.1168361, %.lr.ph365 ], [ %.1168361, %bb.w ], [ %i.lf, %bb.z ] ; 2 uses
  %.3166.ph = phi ptr [ %.2165362, %.lr.ph365 ], [ %i.lb, %bb.w ], [ %i.lg, %bb.z ]
  %.8.ph = phi i64 [ %.7363, %.lr.ph365 ], [ %.7363, %bb.w ], [ %i.ld, %bb.z ] ; 2 uses
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %i.li = sext i16 %i.lh to i64
  %i.lj = icmp slt i64 %indvars.iv.next380, %i.li
  br i1 %i.lj, label %.lr.ph365, label %.critedge.loopexit, !llvm.loop !52

.critedge.loopexit:                               ; preds = %bb.aa
  %.pre462 = load i32, ptr %i.h, align 4, !tbaa !55
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.t
  %i.lk = phi i32 [ %i.kb, %bb.t ], [ %.pre462, %.critedge.loopexit ] ; 2 uses
  %i.ll = phi i16 [ %i.kc, %bb.t ], [ %i.lh, %.critedge.loopexit ]
  %i.lm = phi i16 [ %i.kd, %bb.t ], [ %i.lh, %.critedge.loopexit ]
  %.1168.lcssa = phi ptr [ %.0167368, %bb.t ], [ %.2169.ph, %.critedge.loopexit ]
  %.7.lcssa = phi i64 [ %.6157369, %bb.t ], [ %.8.ph, %.critedge.loopexit ]
  %i.ln = add nuw nsw i32 %.0146370, 1            ; 2 uses
  %.not202 = icmp slt i32 %i.ln, %i.lk
  br i1 %.not202, label %bb.t, label %.critedge206, !llvm.loop !53

.critedge206:                                     ; preds = %.critedge, %.critedge.preheader
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %4, ptr %i.lo, align 8, !tbaa !57
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
  %i.d = load i16, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %compute_scratch_buffer_size.exit

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  br label %bb.b

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %4)
  br label %compute_scratch_buffer_size.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.02131.i = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %bb.b ]
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load <2 x i32>, ptr %i.j, align 8, !tbaa !31 ; 3 uses
  %i.l = srem <2 x i32> %i.k, splat (i32 4)       ; 2 uses
  %i.m = icmp eq <2 x i32> %i.l, zeroinitializer
  %i.n = add <2 x i32> %i.k, splat (i32 4)
  %i.o = sub <2 x i32> %i.n, %i.l
  %i.p = select <2 x i1> %i.m, <2 x i32> %i.k, <2 x i32> %i.o ; 2 uses
  %i.q = extractelement <2 x i32> %i.p, i64 0
  %i.r = sext i32 %i.q to i64
  %i.s = extractelement <2 x i32> %i.p, i64 1
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20
  %i.w = sext i8 %i.v to i64
  %i.x = mul nsw i64 %i.t, %i.w
  %i.y = mul i64 %i.x, %i.r
  %i.z = add i64 %i.y, %.02131.i                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.b, !llvm.loop !0

compute_scratch_buffer_size.exit:                 ; preds = %bb.a, %._crit_edge.loopexit.i
  %.021.lcssa.i = phi i64 [ %4, %bb.a ], [ %i.h, %._crit_edge.loopexit.i ]
  %i.aa = tail call i32 @internal_decode_alloc_buffer(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %.021.lcssa.i) #5 ; 2 uses
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %compute_scratch_buffer_size.exit
  tail call void (...) @exrcore_ensure_b44_tables() #5
  %i.ab = tail call fastcc i32 @uncompress_b44_impl(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %compute_scratch_buffer_size.exit, %bb.c
  %.0 = phi i32 [ %i.ab, %bb.c ], [ %i.aa, %compute_scratch_buffer_size.exit ]
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
declare i32 @llvm.vector.reduce.smin.v8i32(<8 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !15}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"short", !5, i64 0}
!12 = !{!"p1 _ZTS19_priv_exr_context_t", !10, i64 0}
!13 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!14 = !{!"p1 int", !10, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"p1 omnipotent char", !10, i64 0}
!17 = !{!"", !16, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24, !5, i64 25, !11, i64 26, !11, i64 28, !11, i64 30, !6, i64 32, !6, i64 36, !5, i64 40}
!18 = !{!17, !6, i64 12}
!19 = !{!17, !6, i64 8}
!20 = !{!17, !5, i64 25}
!21 = !{!17, !6, i64 20}
!22 = !{!17, !11, i64 26}
!23 = !{!17, !5, i64 24}
!24 = !{!"p1 short", !10, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!11, !11, i64 0}
!27 = !{!5, !5, i64 0}
!28 = !{!"_exr_decode_pipeline", !9, i64 0, !10, i64 8, !11, i64 16, !11, i64 18, !6, i64 20, !12, i64 24, !13, i64 32, !6, i64 96, !6, i64 100, !9, i64 104, !10, i64 112, !10, i64 120, !9, i64 128, !10, i64 136, !9, i64 144, !10, i64 152, !9, i64 160, !14, i64 168, !9, i64 176, !10, i64 184, !9, i64 192, !10, i64 200, !9, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !5, i64 264}
!29 = !{!28, !11, i64 16}
!30 = !{!28, !10, i64 8}
!31 = !{!6, !6, i64 0}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = !{!"_exr_encode_pipeline", !9, i64 0, !10, i64 8, !11, i64 16, !11, i64 18, !6, i64 20, !12, i64 24, !13, i64 32, !10, i64 96, !10, i64 104, !9, i64 112, !9, i64 120, !14, i64 128, !9, i64 136, !10, i64 144, !9, i64 152, !9, i64 160, !10, i64 168, !9, i64 176, !9, i64 184, !10, i64 192, !9, i64 200, !10, i64 208, !9, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !5, i64 272}
!39 = !{!38, !10, i64 168}
!40 = !{!38, !9, i64 112}
!41 = !{!38, !6, i64 44}
!42 = !{!38, !11, i64 16}
!43 = !{!38, !10, i64 104}
!44 = !{!38, !10, i64 192}
!45 = !{!38, !6, i64 40}
!46 = !{!38, !10, i64 8}
!47 = !{!38, !9, i64 184}
!48 = !{!38, !9, i64 176}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = !{!28, !10, i64 184}
!55 = !{!28, !6, i64 44}
!56 = !{!28, !6, i64 40}
!57 = !{!28, !9, i64 104}
end_hunk_0
