Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@compute_ULong_sum:bb.a
  %i.aw = add nsw i32 %.030, -16
  %i.ax = getelementptr inbounds nuw i8, ptr %.12127, i64 3
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !29
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl i32 %i.az, %i.aw
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add i64 %i.av, %i.bb
  %i.bd = add nsw i32 %.030, -24
  %i.be = getelementptr inbounds nuw i8, ptr %.12127, i64 4 ; 2 uses
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !29
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl i32 %i.bg, %i.bd
  %i.bi = zext i32 %i.bh to i64
  %i.bj = add i64 %i.bc, %i.bi                    ; 3 uses
  %i.bk = add nsw i32 %.030, -32                  ; 2 uses
  %niter52.next.3 = add i64 %niter52, 4           ; 2 uses
  %niter52.ncmp.3 = icmp eq i64 %niter52.next.3, 0
  br i1 %niter52.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph31, !llvm.loop !10

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph31
  %lcmp.mod48.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod48.not, label %._crit_edge, label %.lr.ph31.epil.preheader

.lr.ph31.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph31.preheader
  %.030.epil.init = phi i32 [ 24, %.lr.ph31.preheader ], [ %i.bk, %._crit_edge.loopexit.unr-lcssa ]
  %.11928.epil.init = phi i64 [ %.018.lcssa, %.lr.ph31.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %.12127.epil.init = phi ptr [ %.020.lcssa, %.lr.ph31.preheader ], [ %i.be, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph31.epil

.lr.ph31.epil:                                    ; preds = %.lr.ph31.epil, %.lr.ph31.epil.preheader
  %.030.epil = phi i32 [ %i.br, %.lr.ph31.epil ], [ %.030.epil.init, %.lr.ph31.epil.preheader ] ; 2 uses
  %.11928.epil = phi i64 [ %i.bq, %.lr.ph31.epil ], [ %.11928.epil.init, %.lr.ph31.epil.preheader ]
  %.12127.epil = phi ptr [ %i.bl, %.lr.ph31.epil ], [ %.12127.epil.init, %.lr.ph31.epil.preheader ] ; 2 uses
  %epil.iter47 = phi i64 [ %epil.iter47.next, %.lr.ph31.epil ], [ 0, %.lr.ph31.epil.preheader ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.12127.epil, i64 1
  %i.bm = load i8, ptr %.12127.epil, align 1, !tbaa !29
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl i32 %i.bn, %.030.epil
  %i.bp = zext i32 %i.bo to i64
  %i.bq = add i64 %.11928.epil, %i.bp             ; 2 uses
  %i.br = add nsw i32 %.030.epil, -8
  %epil.iter47.next = add i64 %epil.iter47, 1     ; 2 uses
  %epil.iter47.cmp.not = icmp eq i64 %epil.iter47.next, %i.m
  br i1 %epil.iter47.cmp.not, label %._crit_edge, label %.lr.ph31.epil, !llvm.loop !671

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph31.epil, %.preheader
  %.119.lcssa = phi i64 [ %.018.lcssa, %.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ], [ %i.bq, %.lr.ph31.epil ]
  ret i64 %.119.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_tags(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !153
  %i.b = load ptr, ptr %1, align 8, !tbaa !153
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !146
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !146
  %.0 = tail call i32 @llvm.ucmp.i32.i32(i32 %i.d, i32 %i.f)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @reconstruct_font(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 19 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 26 uses
  %i.g = alloca i32, align 4                      ; 74 uses
  %i.h = alloca ptr, align 8                      ; 7 uses
  %i.i = alloca i64, align 8                      ; 9 uses
  %i.j = alloca i64, align 8                      ; 27 uses
  %i.k = alloca i16, align 2                      ; 8 uses
  %i.l = alloca i8, align 1                       ; 7 uses
  %i.m = alloca i16, align 2                      ; 10 uses
  %i.n = alloca i64, align 8                      ; 8 uses
  %i.o = alloca i16, align 2                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %i.q = alloca i16, align 2                      ; 7 uses
  %i.r = alloca i32, align 4                      ; 7 uses
  %i.s = alloca i32, align 4                      ; 6 uses
  %i.t = alloca i32, align 4                      ; 9 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #27
  store i32 0, ptr %i.t, align 4, !tbaa !30
  %i.v = load ptr, ptr %5, align 8, !tbaa !141    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load i16, ptr %i.w, align 8, !tbaa !144  ; 3 uses
  %i.y = zext i16 %i.x to i64                     ; 6 uses
  %i.z = shl nuw nsw i64 %i.y, 4
  %i.aa = or disjoint i64 %i.z, 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #27
  store i64 0, ptr %i.u, align 8, !tbaa !121
  %i.ab = load i64, ptr %4, align 8, !tbaa !157
  %.not.i = icmp eq i16 %i.x, 0                   ; 2 uses
  br i1 %.not.i, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.y
  br i1 %exitcond.not.i, label %find_table.exit, label %.lr.ph.i, !llvm.loop !672

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !153 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !146
  %i.ai = icmp eq i32 %i.ah, 1735162214
  br i1 %i.ai, label %find_table.exit, label %bb.b

find_table.exit:                                  ; preds = %bb.b, %.lr.ph.i
  %.08.i = phi ptr [ %i.af, %.lr.ph.i ], [ null, %bb.b ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %.08.i, ptr %i.aj, align 8, !tbaa !692
  br label %.lr.ph.i148

bb.c:                                             ; preds = %.lr.ph.i148
  %indvars.iv.next.i150 = add nuw nsw i64 %indvars.iv.i149, 1 ; 2 uses
  %exitcond.not.i151 = icmp eq i64 %indvars.iv.next.i150, %i.y
  br i1 %exitcond.not.i151, label %find_table.exit153.thr_comm, label %.lr.ph.i148, !llvm.loop !672

.lr.ph.i148:                                      ; preds = %find_table.exit, %bb.c
  %indvars.iv.i149 = phi i64 [ %indvars.iv.next.i150, %bb.c ], [ 0, %find_table.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i149
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !153 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !146
  %i.ao = icmp eq i32 %i.an, 1819239265
  br i1 %i.ao, label %find_table.exit153, label %bb.c

find_table.exit153.thr_comm:                      ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !693
  %.not = icmp eq ptr %.08.i, null
  br i1 %.not, label %bb.d, label %bb.en

find_table.exit153:                               ; preds = %.lr.ph.i148
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.al, ptr %i.aq, align 8, !tbaa !693
  %i.ar = icmp eq ptr %.08.i, null
  br i1 %i.ar, label %bb.en, label %.thread278

.thread278:                                       ; preds = %find_table.exit153
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !149
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !149
  %i.aw = xor i64 %i.av, %i.at
  %i.ax = and i64 %i.aw, 256
  %.not131 = icmp eq i64 %i.ax, 0
  br i1 %.not131, label %bb.d, label %bb.en

bb.d:                                             ; preds = %find_table.exit153.thr_comm, %.thread, %.thread278
  %i.ay = phi ptr [ %i.ac, %.thread ], [ %i.aj, %.thread278 ], [ %i.aj, %find_table.exit153.thr_comm ] ; 11 uses
  %i.az = phi ptr [ %i.ad, %.thread ], [ %i.aq, %.thread278 ], [ %i.ap, %find_table.exit153.thr_comm ] ; 5 uses
  %i.ba = call ptr @ft_mem_alloc(ptr noundef %7, i64 noundef 80, ptr noundef nonnull %i.t) #27 ; 69 uses
  %i.bb = load i32, ptr %i.t, align 4, !tbaa !30
  %.not132 = icmp eq i32 %i.bb, 0
  br i1 %.not132, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  call void @FT_Stream_OpenMemory(ptr noundef %i.ba, ptr noundef %0, i64 noundef %1) #27
  br i1 %.not.i, label %find_table.exit219.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %wide.trip.count = zext i16 %i.x to i64
  br label %bb.g

bb.f:                                             ; preds = %pad4.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.i213, label %bb.g, !llvm.loop !673

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.0124433 = phi i8 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 4 uses
  %.0125432 = phi i64 [ %i.ab, %.lr.ph ], [ %i.aah, %bb.f ]
  %.0247430 = phi i64 [ 12, %.lr.ph ], [ %.2249, %bb.f ] ; 4 uses
  %.0250429 = phi i16 [ 0, %.lr.ph ], [ %.1251290, %bb.f ] ; 7 uses
  %.0257428 = phi i64 [ %i.aa, %.lr.ph ], [ %.6263, %bb.f ] ; 27 uses
  %.0264427 = phi ptr [ %i.v, %.lr.ph ], [ %.8, %bb.f ] ; 13 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !153 ; 6 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !30 ; 5 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !121 ; 6 uses
  %.sroa.1713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %.sroa.1713.0.copyload = load i64, ptr %.sroa.1713.0..sroa_idx, align 8, !tbaa !121 ; 2 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !121 ; 4 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !121 ; 9 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %.sroa.27.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !121
  %i.bh = call i32 @FT_Stream_Seek(ptr noundef %i.ba, i64 noundef %.sroa.18.0.copyload) #27 ; 3 uses
  store i32 %i.bh, ptr %i.t, align 4, !tbaa !30
  %.not134 = icmp ne i32 %i.bh, 0
  %i.bi = add i64 %.sroa.23.0.copyload, %.sroa.18.0.copyload
  %i.bj = icmp ugt i64 %i.bi, %1
  %or.cond = select i1 %.not134, i1 true, i1 %i.bj
  br i1 %or.cond, label %.thread313, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = icmp eq i32 %.sroa.3.0.copyload, 1751672161
  br i1 %i.bk, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #27
  %i.bl = call i32 @FT_Stream_Skip(ptr noundef %i.ba, i64 noundef 34) #27 ; 2 uses
  store i32 %i.bl, ptr %i.s, align 4, !tbaa !30
  %.not.i154 = icmp eq i32 %i.bl, 0
  br i1 %.not.i154, label %bb.j, label %read_num_hmetrics.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bm = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.s) #27 ; 2 uses
  %i.bn = load i32, ptr %i.s, align 4, !tbaa !30
  %.not4.i = icmp eq i32 %i.bn, 0
  br i1 %.not4.i, label %.thread286, label %read_num_hmetrics.exit.thread

read_num_hmetrics.exit.thread:                    ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #27
  br label %.thread313thread-pre-split

bb.k:                                             ; preds = %bb.h
  store i16 %.0250429, ptr %i.bc, align 2, !tbaa !694
  %i.bo = and i64 %.sroa.1713.0.copyload, 256
  %.not136.not = icmp eq i64 %i.bo, 0
  br i1 %.not136.not, label %bb.l, label %bb.r

.thread286:                                       ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #27
  store i16 %i.bm, ptr %i.bc, align 2, !tbaa !694
  %i.bp = and i64 %.sroa.1713.0.copyload, 256
  %.not136.not288 = icmp eq i64 %i.bp, 0
  br i1 %.not136.not288, label %.thread292, label %.thread313thread-pre-split

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp eq i32 %.sroa.3.0.copyload, 1751474532
  br i1 %i.bq, label %bb.m, label %.thread292

bb.m:                                             ; preds = %bb.l
  %i.br = icmp ult i64 %.sroa.23.0.copyload, 12
  br i1 %i.br, label %.thread313thread-pre-split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.18.0.copyload
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 0, ptr %i.bt, align 1
  br label %.thread292

.thread292:                                       ; preds = %.thread286, %bb.n, %bb.l
  %.1251289294 = phi i16 [ %.0250429, %bb.l ], [ %.0250429, %bb.n ], [ %i.bm, %.thread286 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.18.0.copyload ; 4 uses
  %i.bv = and i64 %.sroa.23.0.copyload, -4        ; 3 uses
  %.not.i155 = icmp eq i64 %i.bv, 0
  br i1 %.not.i155, label %.preheader.i, label %.lr.ph.i156.preheader

.lr.ph.i156.preheader:                            ; preds = %.thread292
  %i.bw = add i64 %.sroa.23.0.copyload, -4        ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %xtraiter826 = and i64 %i.by, 3                 ; 3 uses
  %i.bz = icmp ult i64 %i.bw, 12
  br i1 %i.bz, label %.lr.ph.i156.epil.preheader, label %.lr.ph.i156.preheader.new

.lr.ph.i156.preheader.new:                        ; preds = %.lr.ph.i156.preheader
  %unroll_iter = and i64 %i.by, 9223372036854775804
  br label %.lr.ph.i156

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i156
  %lcmp.mod827.not = icmp eq i64 %xtraiter826, 0
  br i1 %lcmp.mod827.not, label %.preheader.i, label %.lr.ph.i156.epil.preheader

.lr.ph.i156.epil.preheader:                       ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i156.preheader
  %.01823.i.epil.init = phi i64 [ 0, %.lr.ph.i156.preheader ], [ %i.db, %.preheader.i.loopexit.unr-lcssa ]
  %.02022.i.epil.init = phi ptr [ %i.bu, %.lr.ph.i156.preheader ], [ %i.cx, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod830 = icmp ne i64 %xtraiter826, 0
  call void @llvm.assume(i1 %lcmp.mod830)
  br label %.lr.ph.i156.epil

.lr.ph.i156.epil:                                 ; preds = %.lr.ph.i156.epil, %.lr.ph.i156.epil.preheader
  %.01823.i.epil = phi i64 [ %i.ce, %.lr.ph.i156.epil ], [ %.01823.i.epil.init, %.lr.ph.i156.epil.preheader ]
  %.02022.i.epil = phi ptr [ %i.ca, %.lr.ph.i156.epil ], [ %.02022.i.epil.init, %.lr.ph.i156.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i156.epil ], [ 0, %.lr.ph.i156.epil.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.02022.i.epil, i64 4 ; 2 uses
  %i.cb = load i32, ptr %.02022.i.epil, align 1
  %i.cc = call i32 @llvm.bswap.i32(i32 %i.cb)
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add i64 %.01823.i.epil, %i.cd           ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter826
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i156.epil, !llvm.loop !674

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i156.epil, %.thread292
  %.020.lcssa.i = phi ptr [ %i.bu, %.thread292 ], [ %i.cx, %.preheader.i.loopexit.unr-lcssa ], [ %i.ca, %.lr.ph.i156.epil ] ; 2 uses
  %.018.lcssa.i = phi i64 [ 0, %.thread292 ], [ %i.db, %.preheader.i.loopexit.unr-lcssa ], [ %i.ce, %.lr.ph.i156.epil ] ; 3 uses
  %.not327 = icmp eq i64 %i.bv, %.sroa.23.0.copyload
  br i1 %.not327, label %compute_ULong_sum.exit, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %.preheader.i
  %i.cf = and i64 %.sroa.23.0.copyload, 3         ; 3 uses
  %i.cg = sub i64 %i.bv, %.sroa.23.0.copyload
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %.lr.ph31.i.epil.preheader, label %.lr.ph31.i

.lr.ph.i156:                                      ; preds = %.lr.ph.i156, %.lr.ph.i156.preheader.new
  %.01823.i = phi i64 [ 0, %.lr.ph.i156.preheader.new ], [ %i.db, %.lr.ph.i156 ]
  %.02022.i = phi ptr [ %i.bu, %.lr.ph.i156.preheader.new ], [ %i.cx, %.lr.ph.i156 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i156.preheader.new ], [ %niter.next.3, %.lr.ph.i156 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.02022.i, i64 4
  %i.cj = load i32, ptr %.02022.i, align 1
  %i.ck = call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cl = zext i32 %i.ck to i64
  %i.cm = add i64 %.01823.i, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.02022.i, i64 8
  %i.co = load i32, ptr %i.ci, align 1
  %i.cp = call i32 @llvm.bswap.i32(i32 %i.co)
  %i.cq = zext i32 %i.cp to i64
  %i.cr = add i64 %i.cm, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.02022.i, i64 12
  %i.ct = load i32, ptr %i.cn, align 1
  %i.cu = call i32 @llvm.bswap.i32(i32 %i.ct)
  %i.cv = zext i32 %i.cu to i64
  %i.cw = add i64 %i.cr, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.02022.i, i64 16 ; 3 uses
  %i.cy = load i32, ptr %i.cs, align 1
  %i.cz = call i32 @llvm.bswap.i32(i32 %i.cy)
  %i.da = zext i32 %i.cz to i64
  %i.db = add i64 %i.cw, %i.da                    ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i156, !llvm.loop !9

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %.030.i = phi i32 [ %i.ed, %.lr.ph31.i ], [ 24, %.lr.ph31.i.preheader ] ; 5 uses
  %.11928.i = phi i64 [ %i.ec, %.lr.ph31.i ], [ %.018.lcssa.i, %.lr.ph31.i.preheader ]
  %.12127.i = phi ptr [ %i.dx, %.lr.ph31.i ], [ %.020.lcssa.i, %.lr.ph31.i.preheader ] ; 5 uses
  %niter837 = phi i64 [ %niter837.next.3, %.lr.ph31.i ], [ 0, %.lr.ph31.i.preheader ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.12127.i, i64 1
  %i.dd = load i8, ptr %.12127.i, align 1, !tbaa !29
  %i.de = zext i8 %i.dd to i32
  %i.df = shl i32 %i.de, %.030.i
  %i.dg = zext i32 %i.df to i64
  %i.dh = add i64 %.11928.i, %i.dg
  %i.di = add nsw i32 %.030.i, -8
  %i.dj = getelementptr inbounds nuw i8, ptr %.12127.i, i64 2
  %i.dk = load i8, ptr %i.dc, align 1, !tbaa !29
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl i32 %i.dl, %i.di
  %i.dn = zext i32 %i.dm to i64
  %i.do = add i64 %i.dh, %i.dn
  %i.dp = add nsw i32 %.030.i, -16
  %i.dq = getelementptr inbounds nuw i8, ptr %.12127.i, i64 3
  %i.dr = load i8, ptr %i.dj, align 1, !tbaa !29
  %i.ds = zext i8 %i.dr to i32
  %i.dt = shl i32 %i.ds, %i.dp
  %i.du = zext i32 %i.dt to i64
  %i.dv = add i64 %i.do, %i.du
  %i.dw = add nsw i32 %.030.i, -24
  %i.dx = getelementptr inbounds nuw i8, ptr %.12127.i, i64 4 ; 2 uses
  %i.dy = load i8, ptr %i.dq, align 1, !tbaa !29
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl i32 %i.dz, %i.dw
  %i.eb = zext i32 %i.ea to i64
  %i.ec = add i64 %i.dv, %i.eb                    ; 3 uses
  %i.ed = add nsw i32 %.030.i, -32                ; 2 uses
  %niter837.next.3 = add i64 %niter837, 4         ; 2 uses
  %niter837.ncmp.3 = icmp eq i64 %niter837.next.3, 0
  br i1 %niter837.ncmp.3, label %compute_ULong_sum.exit.loopexit.unr-lcssa, label %.lr.ph31.i, !llvm.loop !10

compute_ULong_sum.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph31.i
  %lcmp.mod833.not = icmp eq i64 %i.cf, 0
  br i1 %lcmp.mod833.not, label %compute_ULong_sum.exit, label %.lr.ph31.i.epil.preheader

.lr.ph31.i.epil.preheader:                        ; preds = %compute_ULong_sum.exit.loopexit.unr-lcssa, %.lr.ph31.i.preheader
  %.030.i.epil.init = phi i32 [ 24, %.lr.ph31.i.preheader ], [ %i.ed, %compute_ULong_sum.exit.loopexit.unr-lcssa ]
  %.11928.i.epil.init = phi i64 [ %.018.lcssa.i, %.lr.ph31.i.preheader ], [ %i.ec, %compute_ULong_sum.exit.loopexit.unr-lcssa ]
  %.12127.i.epil.init = phi ptr [ %.020.lcssa.i, %.lr.ph31.i.preheader ], [ %i.dx, %compute_ULong_sum.exit.loopexit.unr-lcssa ]
  %lcmp.mod835 = icmp ne i64 %i.cf, 0
  call void @llvm.assume(i1 %lcmp.mod835)
  br label %.lr.ph31.i.epil

.lr.ph31.i.epil:                                  ; preds = %.lr.ph31.i.epil, %.lr.ph31.i.epil.preheader
  %.030.i.epil = phi i32 [ %i.ek, %.lr.ph31.i.epil ], [ %.030.i.epil.init, %.lr.ph31.i.epil.preheader ] ; 2 uses
end_hunk_0
begin_hunk_1_@reconstruct_font:bb.a
middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.wd, %n.vec
  br i1 %cmp.n, label %._crit_edge.i181, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.wf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph139.split.i.preheader, label %vec.epilog.ph, !prof !700

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec708 = and i64 %i.wd, -4                   ; 3 uses
  %i.wn = add nsw i64 %n.vec708, %i.uz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index709 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next711, %vec.epilog.vector.body ] ; 2 uses
  %i.wo = add nuw i64 %index709, %i.uz            ; 2 uses
  %i.wp = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %i.wo
  %wide.load710 = load <4 x i16>, ptr %i.wp, align 2, !tbaa !154
  %i.wq = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %i.wo
  store <4 x i16> %wide.load710, ptr %i.wq, align 2, !tbaa !154
  %index.next711 = add nuw i64 %index709, 4       ; 2 uses
  %i.wr = icmp eq i64 %index.next711, %n.vec708
  br i1 %i.wr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !686

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n712 = icmp eq i64 %i.wd, %n.vec708
  br i1 %cmp.n712, label %._crit_edge.i181, label %.lr.ph139.split.i.preheader

.lr.ph139.split.i.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv160.i.ph = phi i64 [ %i.uz, %iter.check ], [ %i.wg, %vec.epilog.iter.check ], [ %i.wn, %vec.epilog.middle.block ] ; 4 uses
  %i.ws = sub nsw i64 %i.va, %indvars.iv160.i.ph
  %xtraiter823 = and i64 %i.ws, 3                 ; 2 uses
  %lcmp.mod824.not = icmp eq i64 %xtraiter823, 0
  br i1 %lcmp.mod824.not, label %.lr.ph139.split.i.prol.loopexit, label %.lr.ph139.split.i.prol

.lr.ph139.split.i.prol:                           ; preds = %.lr.ph139.split.i.preheader, %.lr.ph139.split.i.prol
  %indvars.iv160.i.prol = phi i64 [ %indvars.iv.next161.i.prol, %.lr.ph139.split.i.prol ], [ %indvars.iv160.i.ph, %.lr.ph139.split.i.preheader ] ; 3 uses
  %prol.iter825 = phi i64 [ %prol.iter825.next, %.lr.ph139.split.i.prol ], [ 0, %.lr.ph139.split.i.preheader ]
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %indvars.iv160.i.prol
  %i.wu = load i16, ptr %i.wt, align 2, !tbaa !154
  %i.wv = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv160.i.prol
  store i16 %i.wu, ptr %i.wv, align 2, !tbaa !154
  %indvars.iv.next161.i.prol = add nuw nsw i64 %indvars.iv160.i.prol, 1 ; 2 uses
  %prol.iter825.next = add i64 %prol.iter825, 1   ; 2 uses
  %prol.iter825.cmp.not = icmp eq i64 %prol.iter825.next, %xtraiter823
  br i1 %prol.iter825.cmp.not, label %.lr.ph139.split.i.prol.loopexit, label %.lr.ph139.split.i.prol, !llvm.loop !687

.lr.ph139.split.i.prol.loopexit:                  ; preds = %.lr.ph139.split.i.prol, %.lr.ph139.split.i.preheader
  %indvars.iv160.i.unr = phi i64 [ %indvars.iv160.i.ph, %.lr.ph139.split.i.preheader ], [ %indvars.iv.next161.i.prol, %.lr.ph139.split.i.prol ]
  %i.ww = sub nsw i64 %indvars.iv160.i.ph, %i.va
  %i.wx = icmp ugt i64 %i.ww, -4
  br i1 %i.wx, label %._crit_edge.i181, label %.lr.ph139.split.i

.lr.ph139.split.us.i:                             ; preds = %.lr.ph139.i, %bb.dv
  %indvars.iv165.i = phi i64 [ %indvars.iv.next166.i, %bb.dv ], [ %i.uz, %.lr.ph139.i ] ; 2 uses
  %i.wy = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ba, ptr noundef nonnull %i.c) #27
  %i.wz = load i32, ptr %i.c, align 4, !tbaa !30
  %.not117.us.i = icmp eq i32 %i.wz, 0
  br i1 %.not117.us.i, label %bb.dv, label %.loopexit.i

bb.dv:                                            ; preds = %.lr.ph139.split.us.i
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv165.i
  store i16 %i.wy, ptr %i.xa, align 2, !tbaa !154
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 1 ; 2 uses
  %exitcond169.not.i = icmp eq i64 %indvars.iv.next166.i, %i.va
  br i1 %exitcond169.not.i, label %._crit_edge.i181, label %.lr.ph139.split.us.i, !llvm.loop !688

.lr.ph137.split.i:                                ; preds = %.lr.ph137.split.i.prol.loopexit, %.lr.ph137.split.i
  %indvars.iv149.i = phi i64 [ %indvars.iv.next150.i.3, %.lr.ph137.split.i ], [ %indvars.iv149.i.unr, %.lr.ph137.split.i.prol.loopexit ] ; 6 uses
  %i.xb = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %indvars.iv149.i
  %i.xc = load i16, ptr %i.xb, align 2, !tbaa !154
  %i.xd = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv149.i
  store i16 %i.xc, ptr %i.xd, align 2, !tbaa !154
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1 ; 2 uses
  %i.xe = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %indvars.iv.next150.i
  %i.xf = load i16, ptr %i.xe, align 2, !tbaa !154
  %i.xg = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv.next150.i
  store i16 %i.xf, ptr %i.xg, align 2, !tbaa !154
  %indvars.iv.next150.i.1 = add nuw nsw i64 %indvars.iv149.i, 2 ; 2 uses
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %indvars.iv.next150.i.1
  %i.xi = load i16, ptr %i.xh, align 2, !tbaa !154
  %i.xj = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv.next150.i.1
  store i16 %i.xi, ptr %i.xj, align 2, !tbaa !154
  %indvars.iv.next150.i.2 = add nuw nsw i64 %indvars.iv149.i, 3 ; 2 uses
  %i.xk = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %indvars.iv.next150.i.2
  %i.xl = load i16, ptr %i.xk, align 2, !tbaa !154
  %i.xm = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv.next150.i.2
  store i16 %i.xl, ptr %i.xm, align 2, !tbaa !154
  %indvars.iv.next150.i.3 = add nuw nsw i64 %indvars.iv149.i, 4 ; 2 uses
  %exitcond153.not.i.3 = icmp eq i64 %indvars.iv.next150.i.3, %i.uz
  br i1 %exitcond153.not.i.3, label %.preheader130.i, label %.lr.ph137.split.i, !llvm.loop !689

.lr.ph139.split.i:                                ; preds = %.lr.ph139.split.i.prol.loopexit, %.lr.ph139.split.i
  %indvars.iv160.i = phi i64 [ %indvars.iv.next161.i.3, %.lr.ph139.split.i ], [ %indvars.iv160.i.unr, %.lr.ph139.split.i.prol.loopexit ] ; 6 uses
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %indvars.iv160.i
  %i.xo = load i16, ptr %i.xn, align 2, !tbaa !154
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv160.i
  store i16 %i.xo, ptr %i.xp, align 2, !tbaa !154
  %indvars.iv.next161.i = add nuw nsw i64 %indvars.iv160.i, 1 ; 2 uses
  %i.xq = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %indvars.iv.next161.i
  %i.xr = load i16, ptr %i.xq, align 2, !tbaa !154
  %i.xs = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv.next161.i
  store i16 %i.xr, ptr %i.xs, align 2, !tbaa !154
  %indvars.iv.next161.i.1 = add nuw nsw i64 %indvars.iv160.i, 2 ; 2 uses
  %i.xt = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %indvars.iv.next161.i.1
  %i.xu = load i16, ptr %i.xt, align 2, !tbaa !154
  %i.xv = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv.next161.i.1
  store i16 %i.xu, ptr %i.xv, align 2, !tbaa !154
  %indvars.iv.next161.i.2 = add nuw nsw i64 %indvars.iv160.i, 3 ; 2 uses
  %i.xw = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %indvars.iv.next161.i.2
  %i.xx = load i16, ptr %i.xw, align 2, !tbaa !154
  %i.xy = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv.next161.i.2
  store i16 %i.xx, ptr %i.xy, align 2, !tbaa !154
  %indvars.iv.next161.i.3 = add nuw nsw i64 %indvars.iv160.i, 4 ; 2 uses
  %exitcond164.not.i.3 = icmp eq i64 %indvars.iv.next161.i.3, %i.va
  br i1 %exitcond164.not.i.3, label %._crit_edge.i181, label %.lr.ph139.split.i, !llvm.loop !690

._crit_edge.i181:                                 ; preds = %.lr.ph139.split.i.prol.loopexit, %.lr.ph139.split.i, %bb.dv, %middle.block, %vec.epilog.middle.block, %.preheader130.i
  %i.xz = add nuw nsw i64 %i.uz, %i.va
  %i.ya = shl nuw nsw i64 %i.xz, 1                ; 3 uses
  %i.yb = call ptr @ft_mem_qalloc(ptr noundef %7, i64 noundef %i.ya, ptr noundef nonnull %i.c) #27 ; 6 uses
  %i.yc = load i32, ptr %i.c, align 4, !tbaa !30
  %.not114.i = icmp eq i32 %i.yc, 0
  br i1 %.not114.i, label %.preheader.i182, label %.loopexit.i

.preheader.i182:                                  ; preds = %._crit_edge.i181, %bb.dx
  %indvars.iv170.i = phi i64 [ %indvars.iv.next171.i, %bb.dx ], [ 0, %._crit_edge.i181 ] ; 4 uses
  %.0100141.i = phi ptr [ %i.yt, %bb.dx ], [ %i.yb, %._crit_edge.i181 ] ; 4 uses
  %i.yd = icmp samesign ult i64 %indvars.iv170.i, %i.uz
  br i1 %i.yd, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %.preheader.i182
  %i.ye = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %indvars.iv170.i ; 2 uses
  %i.yf = load i16, ptr %i.ye, align 2, !tbaa !154
  %i.yg = lshr i16 %i.yf, 8
  %i.yh = trunc nuw i16 %i.yg to i8
  %i.yi = getelementptr inbounds nuw i8, ptr %.0100141.i, i64 1
  store i8 %i.yh, ptr %.0100141.i, align 1, !tbaa !29
  %i.yj = load i16, ptr %i.ye, align 2, !tbaa !154
  %i.yk = trunc i16 %i.yj to i8
  %i.yl = getelementptr inbounds nuw i8, ptr %.0100141.i, i64 2
  store i8 %i.yk, ptr %i.yi, align 1, !tbaa !29
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.preheader.i182
  %.1101.i = phi ptr [ %i.yl, %bb.dw ], [ %.0100141.i, %.preheader.i182 ] ; 3 uses
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %indvars.iv170.i ; 2 uses
  %i.yn = load i16, ptr %i.ym, align 2, !tbaa !154
  %i.yo = lshr i16 %i.yn, 8
  %i.yp = trunc nuw i16 %i.yo to i8
  %i.yq = getelementptr inbounds nuw i8, ptr %.1101.i, i64 1
  store i8 %i.yp, ptr %.1101.i, align 1, !tbaa !29
  %i.yr = load i16, ptr %i.ym, align 2, !tbaa !154
  %i.ys = trunc i16 %i.yr to i8
  %i.yt = getelementptr inbounds nuw i8, ptr %.1101.i, i64 2
  store i8 %i.ys, ptr %i.yq, align 1, !tbaa !29
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond174.not.i = icmp eq i64 %indvars.iv.next171.i, %i.va
  br i1 %exitcond174.not.i, label %bb.dy, label %.preheader.i182, !llvm.loop !691

bb.dy:                                            ; preds = %bb.dx
  %i.yu = call fastcc i64 @compute_ULong_sum(ptr noundef %i.yb, i64 noundef %i.ya)
  %i.yv = call fastcc i32 @write_buf(ptr noundef %i.d, ptr noundef nonnull %6, ptr noundef %i.e, ptr noundef %i.yb, i64 noundef %i.ya, ptr noundef %7)
  %.not115.i = icmp eq i32 %i.yv, 0
  br i1 %.not115.i, label %reconstruct_hmtx.exit, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.dy, %._crit_edge.i181, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %.lr.ph.i177, %.lr.ph137.split.us.i, %.lr.ph139.split.us.i
  %.0104.i = phi ptr [ %i.vc, %.lr.ph.i177 ], [ %i.vc, %.lr.ph137.split.us.i ], [ %i.vc, %.lr.ph139.split.us.i ], [ %i.vc, %bb.dy ], [ %i.vc, %bb.ds ], [ %i.vc, %bb.dr ], [ null, %bb.dq ], [ null, %bb.dp ], [ %i.vc, %._crit_edge.i181 ], [ null, %bb.do ]
  %.0103.i = phi ptr [ %i.ve, %.lr.ph.i177 ], [ %i.ve, %.lr.ph137.split.us.i ], [ %i.ve, %.lr.ph139.split.us.i ], [ %i.ve, %bb.dy ], [ %i.ve, %bb.ds ], [ null, %bb.dr ], [ null, %bb.dq ], [ null, %bb.dp ], [ %i.ve, %._crit_edge.i181 ], [ null, %bb.do ]
  %.0102.i = phi ptr [ null, %.lr.ph.i177 ], [ null, %.lr.ph137.split.us.i ], [ null, %.lr.ph139.split.us.i ], [ %i.yb, %bb.dy ], [ null, %bb.ds ], [ null, %bb.dr ], [ null, %bb.dq ], [ null, %bb.dp ], [ %i.yb, %._crit_edge.i181 ], [ null, %bb.do ]
  call void @ft_mem_free(ptr noundef %7, ptr noundef %.0104.i) #27
  call void @ft_mem_free(ptr noundef %7, ptr noundef %.0103.i) #27
  call void @ft_mem_free(ptr noundef %7, ptr noundef %.0102.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %.thread313thread-pre-split

reconstruct_hmtx.exit:                            ; preds = %bb.dy
  %i.yw = load ptr, ptr %i.d, align 8, !tbaa !141 ; 2 uses
  %i.yx = load i64, ptr %i.e, align 8, !tbaa !121
  call void @ft_mem_free(ptr noundef %7, ptr noundef %i.vc) #27
  call void @ft_mem_free(ptr noundef %7, ptr noundef nonnull %i.ve) #27
  call void @ft_mem_free(ptr noundef %7, ptr noundef %i.yb) #27
  %.0108.pre.i = load i32, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %.not139 = icmp eq i32 %.0108.pre.i, 0
  br i1 %.not139, label %bb.dz, label %.thread313thread-pre-split

bb.dz:                                            ; preds = %reconstruct_glyf.exit, %reconstruct_hmtx.exit, %bb.cr, %write_buf.exit
  %.1251290 = phi i16 [ %.1251289294, %write_buf.exit ], [ %.0250429, %reconstruct_glyf.exit ], [ %.0250429, %bb.cr ], [ %.0250429, %reconstruct_hmtx.exit ]
  %.1265 = phi ptr [ %.0.i158, %write_buf.exit ], [ %.5269, %reconstruct_glyf.exit ], [ %.0264427, %bb.cr ], [ %i.yw, %reconstruct_hmtx.exit ] ; 4 uses
  %.1258 = phi i64 [ %i.el, %write_buf.exit ], [ %.4261, %reconstruct_glyf.exit ], [ %.0257428, %bb.cr ], [ %i.yx, %reconstruct_hmtx.exit ] ; 6 uses
  %.0253 = phi i64 [ %.119.lcssa.i, %write_buf.exit ], [ %.5, %reconstruct_glyf.exit ], [ %i.sf, %bb.cr ], [ %i.yu, %reconstruct_hmtx.exit ] ; 6 uses
  %.1 = phi i8 [ %.0124433, %write_buf.exit ], [ 1, %reconstruct_glyf.exit ], [ %.0124433, %bb.cr ], [ %.0124433, %reconstruct_hmtx.exit ]
  %.sroa.27.0 = phi i64 [ %.0257428, %write_buf.exit ], [ %.0257428, %reconstruct_glyf.exit ], [ %.sroa.27.0.copyload, %bb.cr ], [ %.0257428, %reconstruct_hmtx.exit ] ; 6 uses
  %i.yy = add i64 %.0253, %.0125432
  %i.yz = lshr i64 %.0253, 24
  %i.za = trunc i64 %i.yz to i8
  %i.zb = lshr i64 %.0253, 16
  %i.zc = trunc i64 %i.zb to i8
  %i.zd = lshr i64 %.0253, 8
  %i.ze = trunc i64 %i.zd to i8
  %i.zf = trunc i64 %.0253 to i8
  %i.zg = lshr i64 %.sroa.27.0, 24
  %i.zh = trunc i64 %i.zg to i8
  %i.zi = lshr i64 %.sroa.27.0, 16
  %i.zj = trunc i64 %i.zi to i8
  %i.zk = lshr i64 %.sroa.27.0, 8
  %i.zl = trunc i64 %i.zk to i8
  %i.zm = trunc i64 %.sroa.27.0 to i8
  %i.zn = lshr i64 %.sroa.12.0.copyload, 24
  %i.zo = trunc i64 %i.zn to i8
  %i.zp = lshr i64 %.sroa.12.0.copyload, 16
  %i.zq = trunc i64 %i.zp to i8
  %i.zr = lshr i64 %.sroa.12.0.copyload, 8
  %i.zs = trunc i64 %i.zr to i8
  %i.zt = trunc i64 %.sroa.12.0.copyload to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 0, ptr %i.b, align 4, !tbaa !30
  %i.zu = add i64 %.0247430, 16                   ; 5 uses
  %i.zv = icmp ugt i64 %i.zu, 31457280
  br i1 %i.zv, label %write_buf.exit188, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.zw = load i64, ptr %6, align 8, !tbaa !121   ; 2 uses
  %i.zx = icmp ugt i64 %i.zu, %i.zw
  br i1 %i.zx, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.zy = call ptr @ft_mem_qrealloc(ptr noundef %7, i64 noundef 1, i64 noundef %i.zw, i64 noundef %i.zu, ptr noundef %.1265, ptr noundef nonnull %i.b) #27
  %i.zz = load i32, ptr %i.b, align 4, !tbaa !30
  %.not.i186 = icmp eq i32 %i.zz, 0
  br i1 %.not.i186, label %bb.ec, label %write_buf.exit188

bb.ec:                                            ; preds = %bb.eb
  store i64 %i.zu, ptr %6, align 8, !tbaa !121
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.ea
  %.0.i183 = phi ptr [ %i.zy, %bb.ec ], [ %.1265, %bb.ea ] ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i183, i64 %.0247430 ; 13 uses
  %8 = call i32 @llvm.bswap.i32(i32 %.sroa.3.0.copyload)
  store i32 %8, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx, i64 4
  store i8 %i.za, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx, i64 5
  store i8 %i.zc, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx, i64 6
  store i8 %i.ze, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx, i64 7
  store i8 %i.zf, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx, i64 8
  store i8 %i.zh, ptr %.sroa.19.0..sroa_idx, align 1
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx, i64 9
  store i8 %i.zj, ptr %.sroa.21.0..sroa_idx, align 1
  %.sroa.23.0..sroa_idx515 = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx, i64 10
  store i8 %i.zl, ptr %.sroa.23.0..sroa_idx515, align 1
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx, i64 11
  store i8 %i.zm, ptr %.sroa.25.0..sroa_idx, align 1
  %.sroa.27.0..sroa_idx517 = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx, i64 12
  store i8 %i.zo, ptr %.sroa.27.0..sroa_idx517, align 1
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx, i64 13
  store i8 %i.zq, ptr %.sroa.29.0..sroa_idx, align 1
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx, i64 14
  store i8 %i.zs, ptr %.sroa.31.0..sroa_idx, align 1
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx, i64 15
  store i8 %i.zt, ptr %.sroa.33.0..sroa_idx, align 1
  br label %write_buf.exit188

write_buf.exit188:                                ; preds = %bb.dz, %bb.eb, %bb.ed
  %.7271 = phi ptr [ %.1265, %bb.dz ], [ %.0.i183, %bb.ed ], [ %.1265, %bb.eb ] ; 6 uses
  %.2249 = phi i64 [ %.0247430, %bb.dz ], [ %i.zu, %bb.ed ], [ %.0247430, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.aaa = zext i32 %.sroa.3.0.copyload to i64
  %i.aab = and i64 %.0253, 4294967295
  %i.aac = add nuw nsw i64 %i.aab, %i.aaa
  %i.aad = and i64 %.sroa.27.0, 4294967295
  %i.aae = add nuw nsw i64 %i.aad, %i.aac
  %i.aaf = and i64 %.sroa.12.0.copyload, 4294967295
  %i.aag = add nuw nsw i64 %i.aaf, %i.aae
  %i.aah = add i64 %i.yy, %i.aag                  ; 2 uses
  %i.aai = icmp ugt i64 %.1258, -4
  br i1 %i.aai, label %.thread313thread-pre-split, label %bb.ee

bb.ee:                                            ; preds = %write_buf.exit188
  %i.aaj = add nuw i64 %.1258, 3
  %i.aak = and i64 %i.aaj, -4                     ; 7 uses
  %.not.i207 = icmp eq i64 %i.aak, %.1258
  br i1 %.not.i207, label %pad4.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.aal = sub i64 %i.aak, %.1258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !30
  %i.aam = icmp ugt i64 %i.aak, 31457280
  br i1 %i.aam, label %write_buf.exit.thread.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.aan = load i64, ptr %6, align 8, !tbaa !121  ; 2 uses
  %i.aao = icmp ugt i64 %i.aak, %i.aan
  br i1 %i.aao, label %bb.eh, label %write_buf.exit.i

bb.eh:                                            ; preds = %bb.eg
  %i.aap = call ptr @ft_mem_qrealloc(ptr noundef %7, i64 noundef 1, i64 noundef %i.aan, i64 noundef %i.aak, ptr noundef %.7271, ptr noundef nonnull %i.a) #27
  %i.aaq = load i32, ptr %i.a, align 4, !tbaa !30
  %.not.i.i209 = icmp eq i32 %i.aaq, 0
  br i1 %.not.i.i209, label %bb.ei, label %write_buf.exit.thread.i

bb.ei:                                            ; preds = %bb.eh
  store i64 %i.aak, ptr %6, align 8, !tbaa !121
  br label %write_buf.exit.i

write_buf.exit.thread.i:                          ; preds = %bb.eh, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.thread313thread-pre-split

write_buf.exit.i:                                 ; preds = %bb.ei, %bb.eg
  %.0.i.i = phi ptr [ %i.aap, %bb.ei ], [ %.7271, %bb.eg ] ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.1258
  call void @llvm.memset.p0.i64(ptr align 1 %i.aar, i8 0, i64 %i.aal, i1 false)
  %.pre25.i.i = load i32, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not11.i = icmp eq i32 %.pre25.i.i, 0
  br i1 %.not11.i, label %pad4.exit, label %.thread313thread-pre-split

pad4.exit:                                        ; preds = %write_buf.exit.i, %bb.ee
  %.8 = phi ptr [ %.7271, %bb.ee ], [ %.0.i.i, %write_buf.exit.i ] ; 6 uses
  %.6263 = phi i64 [ %.1258, %bb.ee ], [ %i.aak, %write_buf.exit.i ] ; 3 uses
  %i.aas = add i64 %.sroa.27.0, %.sroa.12.0.copyload
  %i.aat = icmp ugt i64 %i.aas, %.6263
  br i1 %i.aat, label %.thread313thread-pre-split, label %bb.f

bb.ej:                                            ; preds = %.lr.ph.i213
  %indvars.iv.next.i215 = add nuw nsw i64 %indvars.iv.i214, 1 ; 2 uses
  %exitcond.not.i216 = icmp eq i64 %indvars.iv.next.i215, %i.y
  br i1 %exitcond.not.i216, label %find_table.exit219.thread, label %.lr.ph.i213, !llvm.loop !672

.lr.ph.i213:                                      ; preds = %bb.f, %bb.ej
  %indvars.iv.i214 = phi i64 [ %indvars.iv.next.i215, %bb.ej ], [ 0, %bb.f ] ; 2 uses
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i214
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !153 ; 4 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 4
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !146
  %i.aay = icmp eq i32 %i.aax, 1751474532
  br i1 %i.aay, label %bb.ek, label %bb.ej

find_table.exit219.thread:                        ; preds = %bb.ej, %bb.e
  %.0264.lcssa549 = phi ptr [ %i.v, %bb.e ], [ %.8, %bb.ej ]
  %i.aaz = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.aaz, align 8, !tbaa !701
  br label %.thread313thread-pre-split

bb.ek:                                            ; preds = %.lr.ph.i213
  %i.aba = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.aav, ptr %i.aba, align 8, !tbaa !701
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.abc = load i64, ptr %i.abb, align 8, !tbaa !147
  %i.abd = icmp ult i64 %i.abc, 12
  br i1 %i.abd, label %.thread313thread-pre-split, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aav, i64 48
  %i.abf = load i64, ptr %i.abe, align 8, !tbaa !151
  %i.abg = getelementptr inbounds nuw i8, ptr %.8, i64 %i.abf ; 4 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abi = sub i64 2981146554, %i.aah             ; 4 uses
  %i.abj = lshr i64 %i.abi, 24
  %i.abk = trunc i64 %i.abj to i8
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abg, i64 9
  store i8 %i.abk, ptr %i.abh, align 1, !tbaa !29
  %i.abm = lshr i64 %i.abi, 16
  %i.abn = trunc i64 %i.abm to i8
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abg, i64 10
  store i8 %i.abn, ptr %i.abl, align 1, !tbaa !29
  %i.abp = lshr i64 %i.abi, 8
  %i.abq = trunc i64 %i.abp to i8
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abg, i64 11
  store i8 %i.abq, ptr %i.abo, align 1, !tbaa !29
  %i.abs = trunc i64 %i.abi to i8
  store i8 %i.abs, ptr %i.abr, align 1, !tbaa !29
  %i.abt = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %.6263, ptr %i.abt, align 8, !tbaa !158
  br label %.sink.split

.thread313thread-pre-split:                       ; preds = %reconstruct_hmtx.exit, %reconstruct_glyf.exit, %bb.m, %bb.r, %write_buf.exit, %.thread286, %write_buf.exit188, %write_buf.exit.i, %pad4.exit, %bb.ek, %find_table.exit219.thread, %read_num_hmetrics.exit.thread, %get_x_mins.exit.thread, %write_buf.exit.thread, %.loopexit.i, %write_buf.exit.thread.i
  %.3267.ph.ph = phi ptr [ %.8, %bb.ek ], [ %.0264.lcssa549, %find_table.exit219.thread ], [ %.7271, %write_buf.exit.thread.i ], [ %.0264427, %get_x_mins.exit.thread ], [ %.0264427, %read_num_hmetrics.exit.thread ], [ %.0264427, %write_buf.exit.thread ], [ %.0264427, %.loopexit.i ], [ %.7271, %write_buf.exit.i ], [ %i.yw, %reconstruct_hmtx.exit ], [ %.5269, %reconstruct_glyf.exit ], [ %.0264427, %bb.r ], [ %.0.i158, %write_buf.exit ], [ %.0264427, %.thread286 ], [ %.0264427, %bb.m ], [ %.7271, %write_buf.exit188 ], [ %.8, %pad4.exit ]
  %.pr.pr = load i32, ptr %i.t, align 4, !tbaa !30
  br label %.thread313

.thread313:                                       ; preds = %bb.g, %.thread313thread-pre-split
  %.pr = phi i32 [ %.pr.pr, %.thread313thread-pre-split ], [ %i.bh, %bb.g ]
  %.3267.ph = phi ptr [ %.3267.ph.ph, %.thread313thread-pre-split ], [ %.0264427, %bb.g ] ; 2 uses
  %.not143 = icmp eq i32 %.pr, 0
  br i1 %.not143, label %bb.em, label %.sink.split

bb.em:                                            ; preds = %.thread313
  store i32 8, ptr %i.t, align 4, !tbaa !30
  br label %.sink.split

.sink.split:                                      ; preds = %.thread313, %bb.em, %bb.d, %bb.el
  %.3267326.sink = phi ptr [ %.8, %bb.el ], [ %.3267.ph, %.thread313 ], [ %.3267.ph, %bb.em ], [ %i.v, %bb.d ]
  store ptr %.3267326.sink, ptr %5, align 8, !tbaa !141
  call void @FT_Stream_Close(ptr noundef %i.ba) #27
  call void @ft_mem_free(ptr noundef %7, ptr noundef %i.ba) #27
  %i.abu = load i32, ptr %i.t, align 4, !tbaa !30
  br label %bb.en

bb.en:                                            ; preds = %.sink.split, %find_table.exit153.thr_comm, %.thread278, %find_table.exit153
  %.0128 = phi i32 [ 8, %.thread278 ], [ 8, %find_table.exit153 ], [ 8, %find_table.exit153.thr_comm ], [ %i.abu, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #27
  ret i32 %.0128
}

; Function Attrs: nounwind uwtable
define internal void @stream_close(ptr nofree noundef captures(none) initializes((8, 16), (48, 56)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131
  %i.c = load ptr, ptr %0, align 8, !tbaa !341
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.c) #27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.d, align 8, !tbaa !138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @BrotliDecoderDecompress(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc i32 @write_buf(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !30
  %i.b = load ptr, ptr %0, align 8, !tbaa !141    ; 2 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !121    ; 2 uses
  %i.d = add i64 %i.c, %4                         ; 3 uses
  %i.e = icmp ugt i64 %i.d, 31457280
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !121    ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = call ptr @ft_mem_qrealloc(ptr noundef %5, i64 noundef 1, i64 noundef %i.f, i64 noundef %i.d, ptr noundef %i.b, ptr noundef nonnull %i.a) #27
  %i.i = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %2, align 8, !tbaa !121
  %i.k = add i64 %i.j, %4
  store i64 %i.k, ptr %1, align 8, !tbaa !121
  %.pre = load i64, ptr %2, align 8, !tbaa !121
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.l = phi i64 [ %.pre, %bb.d ], [ %i.c, %bb.b ]
  %.0 = phi ptr [ %i.h, %bb.d ], [ %i.b, %bb.b ]  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  %i.n = load i64, ptr %2, align 8, !tbaa !121
  %i.o = add i64 %i.n, %4
end_hunk_1
