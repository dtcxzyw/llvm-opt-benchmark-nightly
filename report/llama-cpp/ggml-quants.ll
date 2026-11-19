Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 272
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 328
begin_hunk_0_@iq2xs_init_impl.omp_outlined:bb.a
  store i32 %i.eb, ptr %6, align 4, !tbaa !47
  call void @__kmpc_end_reduce_nowait(ptr nonnull @3, i32 %i.m, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge92
  %i.ec = load i32, ptr %i.a, align 4, !tbaa !47
  %i.ed = atomicrmw add ptr %9, i32 %i.ec monotonic, align 4 ; 0 uses
  %i.ee = load i32, ptr %i.b, align 4, !tbaa !47
  %i.ef = atomicrmw add ptr %6, i32 %i.ee monotonic, align 4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_dispatch_init_4(ptr, i32, i32, i32, i32, i32, i32) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @__kmpc_dispatch_next_4(ptr, i32, ptr, ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @iq2_compare_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !47     ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !47     ; 2 uses
  %i.c = icmp slt i32 %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.a, %i.b
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !47   ; 2 uses
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp sgt i32 %i.f, %i.h
  %i.k = zext i1 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %i.l = phi i32 [ -1, %bb.a ], [ 1, %bb.b ], [ %i.k, %bb.d ], [ -1, %bb.c ]
  ret i32 %i.l
}

; Function Attrs: nounwind
declare void @__kmpc_dispatch_deinit(ptr, i32) local_unnamed_addr #14

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @iq2xs_init_impl.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #19 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load i32, ptr %i.b, align 4, !tbaa !47
  %i.h = load i32, ptr %i.a, align 4, !tbaa !47
  %i.i = add nsw i32 %i.h, %i.g
  store i32 %i.i, ptr %i.b, align 4, !tbaa !47
  %i.j = load i32, ptr %i.f, align 4, !tbaa !47
  %i.k = load i32, ptr %i.d, align 4, !tbaa !47
  %i.l = add nsw i32 %i.k, %i.j
  store i32 %i.l, ptr %i.f, align 4, !tbaa !47
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) local_unnamed_addr #17

; Function Attrs: nounwind
declare !callback !80 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #14

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @iq2xs_init_impl.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree nonnull readnone align 4 captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #13 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !47
  %i.f = shl nsw i32 %i.e, 1
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #25 ; 6 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3218, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 43691, ptr %i.b, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 1, ptr %i.c, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !47
  %i.j = load i32, ptr %0, align 4, !tbaa !47     ; 5 uses
  tail call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %i.j, i32 1073741859, i32 0, i32 43691, i32 1, i32 64)
  %i.k = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %i.j, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not7396 = icmp eq i32 %i.k, 0
  br i1 %.not7396, label %._crit_edge99, label %.lr.ph98

.loopexit:                                        ; preds = %bb.h, %.lr.ph98
  %i.l = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %i.j, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not73 = icmp eq i32 %i.l, 0
  br i1 %.not73, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.c, %.loopexit
  %i.m = load i32, ptr %i.a, align 4, !tbaa !47   ; 2 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !47, !llvm.access.group !522 ; 2 uses
  %.not7492 = icmp sgt i32 %i.m, %i.n
  br i1 %.not7492, label %.loopexit, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %.lr.ph98
  %i.o = sext i32 %i.m to i64
  %.pre = load ptr, ptr %4, align 8, !tbaa !75
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %bb.h
  %i.p = phi i32 [ %i.n, %.lr.ph95.preheader ], [ %i.dq, %bb.h ]
  %i.q = phi ptr [ %.pre, %.lr.ph95.preheader ], [ %i.dr, %bb.h ] ; 2 uses
  %indvars.iv110 = phi i64 [ %i.o, %.lr.ph95.preheader ], [ %indvars.iv.next111, %bb.h ] ; 13 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv110
  %i.s = load i32, ptr %i.r, align 4, !tbaa !47, !llvm.access.group !522
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.h, label %.preheader75.preheader

.preheader75.preheader:                           ; preds = %.lr.ph95
  %.tr = trunc i64 %indvars.iv110 to i32
  %i.u = shl i32 %.tr, 1
  %i.v = and i32 %i.u, 6
  %.neg = xor i32 %i.v, -1
  %i.w = trunc i64 %indvars.iv110 to i32
  %i.x = lshr i32 %i.w, 1
  %i.y = and i32 %i.x, 6
  %.neg125.a = xor i32 %i.y, -1
  %i.z = trunc i64 %indvars.iv110 to i32
  %i.aa = lshr i32 %i.z, 3
  %i.ab = and i32 %i.aa, 6
  %.neg126.a = xor i32 %i.ab, -1
  %i.ac = trunc i64 %indvars.iv110 to i32
  %i.ad = lshr i32 %i.ac, 7
  %i.ae = and i32 %i.ad, 6
  %.neg128.a = xor i32 %i.ae, -1
  %i.af = trunc i64 %indvars.iv110 to i32
  %i.ag = lshr i32 %i.af, 9
  %i.ah = and i32 %i.ag, 6
  %.neg129.a = xor i32 %i.ah, -1
  %i.ai = trunc i64 %indvars.iv110 to i32
  %i.aj = lshr i32 %i.ai, 11
  %i.ak = and i32 %i.aj, 6
  %.neg130 = xor i32 %i.ak, -1
  %i.al = trunc i64 %indvars.iv110 to i32
  %i.am = lshr i32 %i.al, 13
  %i.an = and i32 %i.am, 6
  %.neg131 = xor i32 %i.an, -1
  %i.ao = load i32, ptr %2, align 4, !tbaa !47, !llvm.access.group !522 ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader75.preheader
  %i.aq = trunc i64 %indvars.iv110 to i32
  %i.ar = lshr i32 %i.aq, 5
  %i.as = load ptr, ptr %5, align 8, !tbaa !74, !llvm.access.group !522
  %wide.trip.count = zext nneg i32 %i.ao to i64
  %i.at = and i32 %i.ar, 6
  %.neg127 = xor i32 %i.at, -1
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %.preheader75.preheader
  %i.au = sext i32 %i.ao to i64
  call void @qsort(ptr noundef nonnull %i.i, i64 noundef %i.au, i64 noundef 8, ptr noundef nonnull @iq2_compare_func) #14, !llvm.access.group !522
  %i.av = load ptr, ptr %6, align 8, !tbaa !75, !llvm.access.group !522
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %indvars.iv110
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !47, !llvm.access.group !522 ; 3 uses
  %i.ay = xor i32 %i.ax, -1
  %i.az = load ptr, ptr %4, align 8, !tbaa !75, !llvm.access.group !522 ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv110
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !47, !llvm.access.group !522
  %i.bb = load ptr, ptr %7, align 8, !tbaa !77, !llvm.access.group !522 ; 2 uses
  %i.bc = sext i32 %i.ax to i64
  %i.bd = getelementptr inbounds [2 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %2, align 4, !tbaa !47, !llvm.access.group !522 ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph87.preheader, label %._crit_edge88

.lr.ph87.preheader:                               ; preds = %._crit_edge
  %i.bg = load i32, ptr %i.i, align 4, !tbaa !47, !llvm.access.group !522
  %wide.trip.count108 = zext nneg i32 %i.be to i64
  br label %.lr.ph87

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv ; 8 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !34, !llvm.access.group !522
  %i.bj = sext i8 %i.bi to i32
  %i.bk = add nsw i32 %.neg, %i.bj                ; 2 uses
  %i.bl = mul nsw i32 %i.bk, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !34, !llvm.access.group !522
  %i.bo = sext i8 %i.bn to i32
  %i.bp = add nsw i32 %.neg125.a, %i.bo           ; 2 uses
  %i.bq = mul nsw i32 %i.bp, %i.bp
  %i.br = add nuw nsw i32 %i.bq, %i.bl
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !34, !llvm.access.group !522
  %i.bu = sext i8 %i.bt to i32
  %i.bv = add nsw i32 %.neg126.a, %i.bu           ; 2 uses
  %i.bw = mul nsw i32 %i.bv, %i.bv
  %i.bx = add nuw nsw i32 %i.bw, %i.br
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !34, !llvm.access.group !522
  %i.ca = sext i8 %i.bz to i32
  %i.cb = add nsw i32 %.neg127, %i.ca             ; 2 uses
  %i.cc = mul nsw i32 %i.cb, %i.cb
  %i.cd = add nuw nsw i32 %i.cc, %i.bx
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !34, !llvm.access.group !522
  %i.cg = sext i8 %i.cf to i32
  %i.ch = add nsw i32 %.neg128.a, %i.cg           ; 2 uses
  %i.ci = mul nsw i32 %i.ch, %i.ch
  %i.cj = add nuw nsw i32 %i.ci, %i.cd
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 5
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !34, !llvm.access.group !522
  %i.cm = sext i8 %i.cl to i32
  %i.cn = add nsw i32 %.neg129.a, %i.cm           ; 2 uses
  %i.co = mul nsw i32 %i.cn, %i.cn
  %i.cp = add nuw nsw i32 %i.co, %i.cj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !34, !llvm.access.group !522
  %i.cs = sext i8 %i.cr to i32
  %i.ct = add nsw i32 %.neg130, %i.cs             ; 2 uses
  %i.cu = mul nsw i32 %i.ct, %i.ct
  %i.cv = add nuw nsw i32 %i.cu, %i.cp
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bh, i64 7
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !34, !llvm.access.group !522
  %i.cy = sext i8 %i.cx to i32
  %i.cz = add nsw i32 %.neg131, %i.cy             ; 2 uses
  %i.da = mul nsw i32 %i.cz, %i.cz
  %i.db = add nuw nsw i32 %i.da, %i.cv
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !47, !llvm.access.group !522
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !47, !llvm.access.group !522
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !523

.lr.ph87:                                         ; preds = %.lr.ph87.preheader, %bb.g
  %indvars.iv105 = phi i64 [ 0, %.lr.ph87.preheader ], [ %indvars.iv.next106, %bb.g ] ; 2 uses
  %.06485.in = phi i32 [ %i.ax, %.lr.ph87.preheader ], [ %.06485, %bb.g ]
  %.084 = phi i32 [ 0, %.lr.ph87.preheader ], [ %i.dp, %bb.g ] ; 2 uses
  %.06083 = phi i32 [ 1, %.lr.ph87.preheader ], [ %.1, %bb.g ] ; 3 uses
  %.06281 = phi i32 [ %i.bg, %.lr.ph87.preheader ], [ %.163, %bb.g ] ; 2 uses
  %.06485 = add nsw i32 %.06485.in, 1             ; 2 uses
  %.idx132 = shl nuw nsw i64 %indvars.iv105, 3
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx132 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !47, !llvm.access.group !522 ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, %.06281
  br i1 %i.dh, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph87
  %i.di = load i32, ptr %8, align 4, !tbaa !47, !llvm.access.group !522
  %i.dj = icmp eq i32 %.06083, %i.di
  br i1 %i.dj, label %._crit_edge88.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dk = add nsw i32 %.06083, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph87
  %.163 = phi i32 [ %i.dg, %bb.f ], [ %.06281, %.lr.ph87 ]
  %.1 = phi i32 [ %i.dk, %bb.f ], [ %.06083, %.lr.ph87 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !47, !llvm.access.group !522
  %i.dn = trunc i32 %i.dm to i16
  %9 = sext i32 %.06485 to i64
  %i.do = getelementptr inbounds [2 x i8], ptr %i.bb, i64 %9
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !57, !llvm.access.group !522
  %i.dp = add nuw nsw i32 %.084, 1
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge88.loopexit, label %.lr.ph87, !llvm.loop !524

._crit_edge88.loopexit:                           ; preds = %bb.e, %bb.g
  %.061.lcssa.ph.in = phi i32 [ %i.be, %bb.g ], [ %.084, %bb.e ]
  %.061.lcssa.ph = trunc i32 %.061.lcssa.ph.in to i16
  br label %._crit_edge88

._crit_edge88:                                    ; preds = %._crit_edge88.loopexit, %._crit_edge
  %.061.lcssa = phi i16 [ 0, %._crit_edge ], [ %.061.lcssa.ph, %._crit_edge88.loopexit ]
  store i16 %.061.lcssa, ptr %i.bd, align 2, !tbaa !57, !llvm.access.group !522
  %.pre113 = load i32, ptr %i.b, align 4, !tbaa !47, !llvm.access.group !522
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge88, %.lr.ph95
  %i.dq = phi i32 [ %.pre113, %._crit_edge88 ], [ %i.p, %.lr.ph95 ] ; 2 uses
  %i.dr = phi ptr [ %i.az, %._crit_edge88 ], [ %i.q, %.lr.ph95 ]
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1
  %i.ds = sext i32 %i.dq to i64
  %.not74.not = icmp slt i64 %indvars.iv110, %i.ds
  br i1 %.not74.not, label %.lr.ph95, label %.loopexit, !llvm.loop !525

._crit_edge99:                                    ; preds = %.loopexit, %bb.c
  call void @__kmpc_dispatch_deinit(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @__kmpc_barrier(ptr nonnull @2, i32 %i.j)
  call void @free(ptr noundef %i.i) #14
  ret void
}

; Function Attrs: nounwind uwtable
define void @iq2xs_free_impl(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %switch.tableidx = add i32 %0, -16              ; 3 uses
  %i.a = icmp ult i32 %switch.tableidx, 14
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 8267, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3261, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #24
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.iq2xs_free_impl, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = getelementptr inbounds nuw [24 x i8], ptr @iq2_data, i64 %switch.ext ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  tail call void @free(ptr noundef nonnull %i.d) #14
  store ptr null, ptr %i.c, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  tail call void @free(ptr noundef %i.f) #14
  store ptr null, ptr %i.e, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  tail call void @free(ptr noundef %i.h) #14
  store ptr null, ptr %i.g, align 8, !tbaa !78
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %switch.lookup
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @quantize_iq2_xxs(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 6 uses
  %i.b = alloca [32 x float], align 16            ; 17 uses
  %i.c = alloca [32 x float], align 16            ; 42 uses
  %i.d = alloca [32 x i8], align 16               ; 14 uses
  %i.e = alloca [32 x i8], align 16               ; 5 uses
  %i.f = alloca [32 x float], align 16            ; 36 uses
  %i.g = alloca [4 x i8], align 4                 ; 9 uses
  %i.h = alloca [16 x i32], align 16              ; 13 uses
  %i.i = and i64 %3, 255
  %i.j = icmp eq i64 %i.i, 0
  %.0273380.lcssa.wide.i.sroa.gep18 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.0273380.lcssa.wide.i.sroa.gep19 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.0273380.lcssa.wide.i.sroa.gep20 = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3653, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = ashr exact i64 %3, 8                     ; 4 uses
  %i.l = icmp sgt i64 %2, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.not.i = icmp eq ptr %4, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.co = mul nsw i64 %i.k, 66
  br i1 %.not.i, label %bb.ag, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cp = icmp sgt i64 %i.k, 0
  br i1 %i.cp, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %quantize_row_iq2_xxs_impl.exit.loopexit.us
  %.062.us = phi i64 [ %i.acj, %quantize_row_iq2_xxs_impl.exit.loopexit.us ], [ 0, %.lr.ph.split ]
  %.01561.us = phi ptr [ %i.aci, %quantize_row_iq2_xxs_impl.exit.loopexit.us ], [ %1, %.lr.ph.split ] ; 2 uses
  %.01660.us = phi ptr [ %i.ach, %quantize_row_iq2_xxs_impl.exit.loopexit.us ], [ %0, %.lr.ph.split ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
end_hunk_0
begin_hunk_1_@iq3xs_init_impl.omp_outlined:bb.a
._crit_edge81:                                    ; preds = %bb.h, %._crit_edge81.loopexit.split.loop.exit, %._crit_edge
  %.060.lcssa = phi i32 [ 0, %._crit_edge ], [ %indvars100.le, %._crit_edge81.loopexit.split.loop.exit ], [ %i.au, %bb.h ] ; 2 uses
  %i.cd = load ptr, ptr %5, align 8, !tbaa !75, !llvm.access.group !566
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %indvars.iv103
  store i32 %.060.lcssa, ptr %i.ce, align 4, !tbaa !47, !llvm.access.group !566
  %i.cf = add nsw i32 %i.w, %.060.lcssa           ; 2 uses
  store i32 %i.cf, ptr %i.a, align 4, !tbaa !47, !llvm.access.group !566
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %._crit_edge81
  %i.cg = phi i32 [ %i.w, %bb.d ], [ %i.cf, %._crit_edge81 ] ; 2 uses
  %i.ch = phi i32 [ %i.x, %bb.d ], [ %i.ae, %._crit_edge81 ] ; 2 uses
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, 1
  %i.ci = load i32, ptr %i.d, align 4, !tbaa !47, !llvm.access.group !566
  %i.cj = sext i32 %i.ci to i64
  %.not70.not = icmp slt i64 %indvars.iv103, %i.cj
  br i1 %.not70.not, label %.lr.ph88, label %.loopexit, !llvm.loop !569

._crit_edge92:                                    ; preds = %.loopexit, %bb.c
  call void @__kmpc_dispatch_deinit(ptr nonnull @1, i32 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @__kmpc_barrier(ptr nonnull @2, i32 %i.m)
  call void @free(ptr noundef %i.l) #14
  store ptr %i.a, ptr %i.g, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.b, ptr %i.ck, align 8
  %i.cl = call i32 @__kmpc_reduce_nowait(ptr nonnull @3, i32 %i.m, i32 2, i64 16, ptr nonnull %i.g, ptr nonnull @iq3xs_init_impl.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.cl, label %bb.l [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %._crit_edge92
  %i.cm = load i32, ptr %9, align 4, !tbaa !47
  %i.cn = load i32, ptr %i.a, align 4, !tbaa !47
  %i.co = add nsw i32 %i.cn, %i.cm
  store i32 %i.co, ptr %9, align 4, !tbaa !47
  %i.cp = load i32, ptr %6, align 4, !tbaa !47
  %i.cq = load i32, ptr %i.b, align 4, !tbaa !47
  %i.cr = add nsw i32 %i.cq, %i.cp
  store i32 %i.cr, ptr %6, align 4, !tbaa !47
  call void @__kmpc_end_reduce_nowait(ptr nonnull @3, i32 %i.m, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge92
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !47
  %i.ct = atomicrmw add ptr %9, i32 %i.cs monotonic, align 4 ; 0 uses
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !47
  %i.cv = atomicrmw add ptr %6, i32 %i.cu monotonic, align 4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @iq3_compare_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !47     ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !47     ; 2 uses
  %i.c = icmp slt i32 %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.a, %i.b
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !47   ; 2 uses
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp sgt i32 %i.f, %i.h
  %i.k = zext i1 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %i.l = phi i32 [ -1, %bb.a ], [ 1, %bb.b ], [ %i.k, %bb.d ], [ -1, %bb.c ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @iq3xs_init_impl.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #19 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load i32, ptr %i.b, align 4, !tbaa !47
  %i.h = load i32, ptr %i.a, align 4, !tbaa !47
  %i.i = add nsw i32 %i.h, %i.g
  store i32 %i.i, ptr %i.b, align 4, !tbaa !47
  %i.j = load i32, ptr %i.f, align 4, !tbaa !47
  %i.k = load i32, ptr %i.d, align 4, !tbaa !47
  %i.l = add nsw i32 %i.k, %i.j
  store i32 %i.l, ptr %i.f, align 4, !tbaa !47
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @iq3xs_init_impl.omp_outlined.23(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree nonnull readnone align 4 captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #13 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !47
  %i.f = shl nsw i32 %i.e, 1
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #25 ; 6 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3862, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 4095, ptr %i.b, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 1, ptr %i.c, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !47
  %i.j = load i32, ptr %0, align 4, !tbaa !47     ; 5 uses
  tail call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %i.j, i32 1073741859, i32 0, i32 4095, i32 1, i32 64)
  %i.k = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %i.j, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not7396 = icmp eq i32 %i.k, 0
  br i1 %.not7396, label %._crit_edge99, label %.lr.ph98

.loopexit:                                        ; preds = %bb.h, %.lr.ph98
  %i.l = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %i.j, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not73 = icmp eq i32 %i.l, 0
  br i1 %.not73, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.c, %.loopexit
  %i.m = load i32, ptr %i.a, align 4, !tbaa !47   ; 2 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !47, !llvm.access.group !571 ; 2 uses
  %.not7492 = icmp sgt i32 %i.m, %i.n
  br i1 %.not7492, label %.loopexit, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %.lr.ph98
  %i.o = sext i32 %i.m to i64
  %.pre = load ptr, ptr %4, align 8, !tbaa !75
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %bb.h
  %i.p = phi i32 [ %i.n, %.lr.ph95.preheader ], [ %i.cg, %bb.h ]
  %i.q = phi ptr [ %.pre, %.lr.ph95.preheader ], [ %i.ch, %bb.h ] ; 2 uses
  %indvars.iv110 = phi i64 [ %i.o, %.lr.ph95.preheader ], [ %indvars.iv.next111, %bb.h ] ; 9 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv110
  %i.s = load i32, ptr %i.r, align 4, !tbaa !47, !llvm.access.group !571
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.h, label %.preheader75.preheader

.preheader75.preheader:                           ; preds = %.lr.ph95
  %.tr = trunc i64 %indvars.iv110 to i32
  %i.u = shl i32 %.tr, 1
  %i.v = and i32 %i.u, 14
  %.neg = xor i32 %i.v, -1
  %i.w = trunc i64 %indvars.iv110 to i32
  %i.x = lshr i32 %i.w, 2
  %i.y = and i32 %i.x, 14
  %.neg121.a = xor i32 %i.y, -1
  %i.z = trunc i64 %indvars.iv110 to i32
  %i.aa = lshr i32 %i.z, 5
  %i.ab = and i32 %i.aa, 14
  %.neg122 = xor i32 %i.ab, -1
  %i.ac = trunc i64 %indvars.iv110 to i32
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = and i32 %i.ad, 14
  %.neg123 = xor i32 %i.ae, -1
  %i.af = load i32, ptr %2, align 4, !tbaa !47, !llvm.access.group !571 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader75.preheader
  %i.ah = load ptr, ptr %5, align 8, !tbaa !75, !llvm.access.group !571
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %.preheader75.preheader
  %i.ai = sext i32 %i.af to i64
  call void @qsort(ptr noundef nonnull %i.i, i64 noundef %i.ai, i64 noundef 8, ptr noundef nonnull @iq3_compare_func) #14, !llvm.access.group !571
  %i.aj = load ptr, ptr %6, align 8, !tbaa !75, !llvm.access.group !571
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv110
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !47, !llvm.access.group !571 ; 3 uses
  %i.am = xor i32 %i.al, -1
  %i.an = load ptr, ptr %4, align 8, !tbaa !75, !llvm.access.group !571 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %indvars.iv110
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !47, !llvm.access.group !571
  %i.ap = load ptr, ptr %7, align 8, !tbaa !77, !llvm.access.group !571 ; 2 uses
  %i.aq = sext i32 %i.al to i64
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i32, ptr %2, align 4, !tbaa !47, !llvm.access.group !571 ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph87.preheader, label %._crit_edge88

.lr.ph87.preheader:                               ; preds = %._crit_edge
  %i.au = load i32, ptr %i.i, align 4, !tbaa !47, !llvm.access.group !571
  %wide.trip.count108 = zext nneg i32 %i.as to i64
  br label %.lr.ph87

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv ; 4 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !34, !llvm.access.group !571
  %i.ax = sext i8 %i.aw to i32
  %i.ay = add nsw i32 %.neg, %i.ax                ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !34, !llvm.access.group !571
  %i.bc = sext i8 %i.bb to i32
  %i.bd = add nsw i32 %.neg121.a, %i.bc           ; 2 uses
  %i.be = mul nsw i32 %i.bd, %i.bd
  %i.bf = add nuw nsw i32 %i.be, %i.az
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !34, !llvm.access.group !571
  %i.bi = sext i8 %i.bh to i32
  %i.bj = add nsw i32 %.neg122, %i.bi             ; 2 uses
  %i.bk = mul nsw i32 %i.bj, %i.bj
  %i.bl = add nuw nsw i32 %i.bk, %i.bf
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !34, !llvm.access.group !571
  %i.bo = sext i8 %i.bn to i32
  %i.bp = add nsw i32 %.neg123, %i.bo             ; 2 uses
  %i.bq = mul nsw i32 %i.bp, %i.bp
  %i.br = add nuw nsw i32 %i.bq, %i.bl
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !47, !llvm.access.group !571
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !47, !llvm.access.group !571
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !572

.lr.ph87:                                         ; preds = %.lr.ph87.preheader, %bb.g
  %indvars.iv105 = phi i64 [ 0, %.lr.ph87.preheader ], [ %indvars.iv.next106, %bb.g ] ; 2 uses
  %.06485.in = phi i32 [ %i.al, %.lr.ph87.preheader ], [ %.06485, %bb.g ]
  %.084 = phi i32 [ 0, %.lr.ph87.preheader ], [ %i.cf, %bb.g ] ; 2 uses
  %.06083 = phi i32 [ 1, %.lr.ph87.preheader ], [ %.1, %bb.g ] ; 3 uses
  %.06281 = phi i32 [ %i.au, %.lr.ph87.preheader ], [ %.163, %bb.g ] ; 2 uses
  %.06485 = add nsw i32 %.06485.in, 1             ; 2 uses
  %.idx124 = shl nuw nsw i64 %indvars.iv105, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx124 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !47, !llvm.access.group !571 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, %.06281
  br i1 %i.bx, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph87
  %i.by = load i32, ptr %8, align 4, !tbaa !47, !llvm.access.group !571
  %i.bz = icmp eq i32 %.06083, %i.by
  br i1 %i.bz, label %._crit_edge88.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = add nsw i32 %.06083, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph87
  %.163 = phi i32 [ %i.bw, %bb.f ], [ %.06281, %.lr.ph87 ]
  %.1 = phi i32 [ %i.ca, %bb.f ], [ %.06083, %.lr.ph87 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !47, !llvm.access.group !571
  %i.cd = trunc i32 %i.cc to i16
  %9 = sext i32 %.06485 to i64
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %9
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !57, !llvm.access.group !571
  %i.cf = add nuw nsw i32 %.084, 1
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge88.loopexit, label %.lr.ph87, !llvm.loop !573

._crit_edge88.loopexit:                           ; preds = %bb.e, %bb.g
  %.061.lcssa.ph.in = phi i32 [ %i.as, %bb.g ], [ %.084, %bb.e ]
  %.061.lcssa.ph = trunc i32 %.061.lcssa.ph.in to i16
  br label %._crit_edge88

._crit_edge88:                                    ; preds = %._crit_edge88.loopexit, %._crit_edge
  %.061.lcssa = phi i16 [ 0, %._crit_edge ], [ %.061.lcssa.ph, %._crit_edge88.loopexit ]
  store i16 %.061.lcssa, ptr %i.ar, align 2, !tbaa !57, !llvm.access.group !571
  %.pre113 = load i32, ptr %i.b, align 4, !tbaa !47, !llvm.access.group !571
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge88, %.lr.ph95
  %i.cg = phi i32 [ %.pre113, %._crit_edge88 ], [ %i.p, %.lr.ph95 ] ; 2 uses
  %i.ch = phi ptr [ %i.an, %._crit_edge88 ], [ %i.q, %.lr.ph95 ]
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1
  %i.ci = sext i32 %i.cg to i64
  %.not74.not = icmp slt i64 %indvars.iv110, %i.ci
  br i1 %.not74.not, label %.lr.ph95, label %.loopexit, !llvm.loop !574

._crit_edge99:                                    ; preds = %.loopexit, %bb.c
  call void @__kmpc_dispatch_deinit(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @__kmpc_barrier(ptr nonnull @2, i32 %i.j)
  call void @free(ptr noundef %i.i) #14
  ret void
}

; Function Attrs: nounwind uwtable
define void @iq3xs_free_impl(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 512, label %iq3_data_index.exit
    i32 256, label %iq3_data_index.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3905, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #24
  unreachable

iq3_data_index.exit:                              ; preds = %bb.a, %bb.a
  %i.a = icmp ne i32 %0, 256
  %i.b = zext i1 %i.a to i64
  %i.c = getelementptr inbounds nuw [24 x i8], ptr @iq3_data, i64 %i.b ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %iq3_data_index.exit
  tail call void @free(ptr noundef nonnull %i.d) #14
  store ptr null, ptr %i.c, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83
  tail call void @free(ptr noundef %i.f) #14
  store ptr null, ptr %i.e, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84
  tail call void @free(ptr noundef %i.h) #14
  store ptr null, ptr %i.g, align 8, !tbaa !84
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %iq3_data_index.exit
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @quantize_iq3_xxs(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = and i64 %3, 255
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4153, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = ashr exact i64 %3, 8                     ; 2 uses
  %i.d = icmp sgt i64 %2, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.e = mul nsw i64 %i.c, 98
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.f = mul i64 %2, 98
  %i.g = mul i64 %i.f, %i.c
  ret i64 %i.g

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.020 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.d ]
  %.01519 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.d ] ; 2 uses
  %.01618 = phi ptr [ %0, %.lr.ph ], [ %i.h, %bb.d ] ; 2 uses
  tail call fastcc void @quantize_row_iq3_xxs_impl(ptr noundef %.01618, ptr noundef %.01519, i64 noundef %3, ptr noundef %4)
  %i.h = getelementptr inbounds [4 x i8], ptr %.01618, i64 %3
  %i.i = getelementptr inbounds nuw i8, ptr %.01519, i64 %i.e
  %i.j = add nuw nsw i64 %.020, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !576
}

; Function Attrs: nounwind uwtable
define internal fastcc void @quantize_row_iq3_xxs_impl(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(address_is_null) %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 6 uses
  %i.b = alloca [32 x float], align 16            ; 24 uses
  %i.c = alloca [32 x float], align 16            ; 41 uses
  %i.d = alloca [32 x i8], align 16               ; 70 uses
  %i.e = alloca [32 x i8], align 16               ; 5 uses
  %i.f = alloca [32 x float], align 16            ; 36 uses
  %i.g = alloca [8 x i8], align 8                 ; 12 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 4                 ; 9 uses
  %i.j = alloca [104 x i8], align 16              ; 14 uses
  %i.k = load ptr, ptr @iq3_data, align 16, !tbaa !82 ; 5 uses
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq3_data, i64 8), align 8, !tbaa !83 ; 11 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq3_data, i64 16), align 16, !tbaa !84 ; 3 uses
  %.not = icmp eq ptr %i.k, null
  %.0320484.lcssa.wide.sroa.gep23 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0320484.lcssa.wide.sroa.gep24 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0320484.lcssa.wide.sroa.gep25 = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.0320484.lcssa.wide.sroa.gep26 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.0320484.lcssa.wide.sroa.gep27 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.0320484.lcssa.wide.sroa.gep28 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.0320484.lcssa.wide.sroa.gep29 = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.0320484.lcssa.wide.sroa.gep32 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0320484.lcssa.wide.sroa.gep33 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0320484.lcssa.wide.sroa.gep34 = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.0320484.lcssa.wide.sroa.gep35 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.0320484.lcssa.wide.sroa.gep36 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.0320484.lcssa.wide.sroa.gep37 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.0320484.lcssa.wide.sroa.gep38 = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.0320484.lcssa.wide.sroa.gep41 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0320484.lcssa.wide.sroa.gep42 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0320484.lcssa.wide.sroa.gep43 = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.0320484.lcssa.wide.sroa.gep44 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.0320484.lcssa.wide.sroa.gep45 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.0320484.lcssa.wide.sroa.gep46 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.0320484.lcssa.wide.sroa.gep47 = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.0320484.lcssa.wide.sroa.gep50 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0320484.lcssa.wide.sroa.gep51 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0320484.lcssa.wide.sroa.gep52 = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.0320484.lcssa.wide.sroa.gep53 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.0320484.lcssa.wide.sroa.gep54 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.0320484.lcssa.wide.sroa.gep55 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.0320484.lcssa.wide.sroa.gep56 = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3948, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not388 = icmp eq ptr %i.l, null
  br i1 %.not388, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3949, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not389 = icmp eq ptr %i.m, null
  br i1 %.not389, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3950, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = and i64 %2, 255
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3951, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = ashr exact i64 %2, 8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 3 uses
  %i.r = icmp sgt i64 %i.p, 0
end_hunk_1
