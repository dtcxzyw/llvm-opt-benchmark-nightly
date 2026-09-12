Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/autofit?download=true
inline.NumInlined: 210
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 37
begin_hunk_0_@af_cjk_compute_stem_width:bb.a
.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  %.02335.i.epil.init = phi i64 [ %spec.select, %.lr.ph.preheader.i ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ]
  %.02434.i.epil.init = phi i64 [ 98, %.lr.ph.preheader.i ], [ %.125.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod2 = trunc i32 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i.epil.init
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !286 ; 2 uses
  %i.ar = sub nsw i64 %spec.select, %i.aq
  %spec.select.i.epil = tail call i64 @llvm.abs.i64(i64 %i.ar, i1 true)
  %i.as = icmp samesign ult i64 %spec.select.i.epil, %.02434.i.epil.init
  %.1.i.epil = select i1 %i.as, i64 %i.aq, i64 %.02335.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.1.i.lcssa = phi i64 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ] ; 4 uses
  %i.at = add nsw i64 %.1.i.lcssa, 32
  %i.au = and i64 %i.at, -64                      ; 2 uses
  %.not.i = icmp slt i64 %spec.select, %.1.i.lcssa
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.av = phi i64 [ %i.ac, %._crit_edge.thread.i ], [ %i.au, %._crit_edge.i ]
  %.023.lcssa42.i = phi i64 [ %spec.select, %._crit_edge.thread.i ], [ %.1.i.lcssa, %._crit_edge.i ]
  %i.aw = or disjoint i64 %i.av, 48
  %i.ax = icmp slt i64 %spec.select, %i.aw
  %spec.select31.i = select i1 %i.ax, i64 %.023.lcssa42.i, i64 %spec.select
  br label %af_cjk_snap_width.exit

bb.q:                                             ; preds = %._crit_edge.i
  %i.ay = add nsw i64 %i.au, -48
  %i.az = icmp sgt i64 %spec.select, %i.ay
  %spec.select32.i = select i1 %i.az, i64 %.1.i.lcssa, i64 %spec.select
  br label %af_cjk_snap_width.exit

af_cjk_snap_width.exit:                           ; preds = %bb.p, %bb.q
  %.027.i = phi i64 [ %spec.select31.i, %bb.p ], [ %spec.select32.i, %bb.q ] ; 9 uses
  br i1 %.not71, label %bb.t, label %bb.r

bb.r:                                             ; preds = %af_cjk_snap_width.exit
  %i.ba = icmp sgt i64 %.027.i, 63
  br i1 %i.ba, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bb = add nuw nsw i64 %.027.i, 16
  %i.bc = and i64 %i.bb, 9223372036854775744
  br label %bb.ab

bb.t:                                             ; preds = %af_cjk_snap_width.exit
  %i.bd = and i32 %.5164.val, 8
  %.not76 = icmp eq i32 %i.bd, 0
  br i1 %.not76, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = icmp slt i64 %.027.i, 64
  br i1 %i.be, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = add nuw nsw i64 %.027.i, 32
  %i.bg = and i64 %i.bf, 9223372036854775744
  br label %bb.ab

bb.w:                                             ; preds = %bb.t
  %i.bh = icmp slt i64 %.027.i, 48
  br i1 %i.bh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bi = add nsw i64 %.027.i, 64
  %i.bj = ashr i64 %i.bi, 1
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.bk = icmp samesign ult i64 %.027.i, 128
  br i1 %i.bk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bl = add nuw nsw i64 %.027.i, 22
  %i.bm = and i64 %i.bl, 192
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bn = add nuw nsw i64 %.027.i, 32
  %i.bo = and i64 %i.bn, 9223372036854775744
  br label %bb.ab

bb.ab:                                            ; preds = %bb.n, %bb.u, %bb.r, %bb.m, %bb.k, %bb.j, %bb.i, %bb.v, %bb.z, %bb.aa, %bb.x, %bb.s, %bb.g
  %.2 = phi i64 [ %i.bc, %bb.s ], [ 64, %bb.u ], [ 64, %bb.r ], [ %i.bg, %bb.v ], [ %i.bj, %bb.x ], [ %i.bm, %bb.z ], [ %i.bo, %bb.aa ], [ %spec.store.select, %bb.g ], [ %i.q, %bb.i ], [ %spec.select, %bb.j ], [ %spec.select79, %bb.n ], [ %i.w, %bb.m ], [ %spec.select, %bb.k ] ; 2 uses
  %i.bp = sub nsw i64 0, %.2
  %i.bq = icmp slt i64 %1, 0
  %spec.select78 = select i1 %i.bq, i64 %i.bp, i64 %.2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  %.060 = phi i64 [ %spec.select78, %bb.ab ], [ %1, %bb.a ]
  ret i64 %.060
}

declare hidden i32 @find_unicode_charmap(ptr noundef) local_unnamed_addr #4

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ft_hash_num_init(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @FT_Get_Char_Index(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @ft_hash_num_insert(i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @ft_hash_num_iterator(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @ft_hash_num_lookup(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @add_substitute(i32 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = and i32 %i.a, 65535                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !552
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %i.f = tail call i32 @ft_hash_num_insert_no_overwrite(i32 noundef %i.b, i64 noundef %i.e, ptr noundef %3, ptr noundef %5) #18 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %.thread82

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.c, align 8, !tbaa !552
  %i.h = icmp ugt i32 %i.g, %i.d
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @ft_hash_num_lookup(i32 noundef %i.b, ptr noundef %4) #18 ; 2 uses
  %.not68 = icmp eq ptr %i.i, null
  br i1 %.not68, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !76
  %i.k = tail call fastcc i32 @add_substitute(i32 noundef %i.b, i64 noundef %i.j, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5) ; 2 uses
  %.not69 = icmp eq i32 %i.k, 0
  br i1 %.not69, label %.thread, label %.thread82

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b
  %i.l = and i64 %1, 4294901760
  %.not70 = icmp eq i64 %i.l, 0
  br i1 %.not70, label %.thread82, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.m = lshr i64 %1, 16
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %.not7184 = icmp eq i32 %i.n, 0
  br i1 %.not7184, label %.thread82, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %.085 = phi i32 [ %i.ae, %bb.i ], [ 1, %bb.e ]  ; 2 uses
  %i.o = shl i32 %.085, 16
  %i.p = add nsw i32 %i.o, %0
  %i.q = tail call ptr @ft_hash_num_lookup(i32 noundef %i.p, ptr noundef %4) #18 ; 3 uses
  %i.r = load i32, ptr %i.c, align 8, !tbaa !552
  %i.s = load i64, ptr %i.q, align 8, !tbaa !76
  %i.t = trunc i64 %i.s to i32
  %i.u = tail call i32 @ft_hash_num_insert_no_overwrite(i32 noundef %i.t, i64 noundef %i.e, ptr noundef nonnull %3, ptr noundef %5) #18 ; 2 uses
  %.not72 = icmp eq i32 %i.u, 0
  br i1 %.not72, label %bb.f, label %.thread82

bb.f:                                             ; preds = %.lr.ph
  %i.v = load i32, ptr %i.c, align 8, !tbaa !552
  %i.w = icmp ugt i32 %i.v, %i.r
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr %i.q, align 8, !tbaa !76
  %i.y = trunc i64 %i.x to i32
  %i.z = tail call ptr @ft_hash_num_lookup(i32 noundef %i.y, ptr noundef %4) #18 ; 2 uses
  %.not73 = icmp eq ptr %i.z, null
  br i1 %.not73, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !76
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !76
  %i.ad = tail call fastcc i32 @add_substitute(i32 noundef %i.ab, i64 noundef %i.ac, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5) ; 2 uses
  %.not74 = icmp eq i32 %i.ad, 0
  br i1 %.not74, label %bb.i, label %.thread82

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.ae = add i32 %.085, 1                        ; 2 uses
  %.not71 = icmp ugt i32 %i.ae, %i.n
  br i1 %.not71, label %.thread82, label %.lr.ph, !llvm.loop !549

.thread82:                                        ; preds = %bb.i, %.lr.ph, %bb.h, %bb.e, %.thread, %bb.d, %bb.a
  %.7 = phi i32 [ %i.f, %bb.a ], [ %i.k, %bb.d ], [ 0, %.thread ], [ 0, %bb.e ], [ %i.u, %.lr.ph ], [ 0, %bb.i ], [ %i.ad, %bb.h ]
  ret i32 %.7
}

declare void @ft_hash_str_free(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ft_hash_num_insert_no_overwrite(i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @af_latin_metrics_scale_dim(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %3 = icmp eq i32 %2, 0                          ; 5 uses
  %.0163.in.v = select i1 %3, i64 24, i64 32
  %.0163.in = getelementptr inbounds nuw i8, ptr %1, i64 %.0163.in.v
  %.0152.in.v = select i1 %3, i64 8, i64 16
  %.0152.in = getelementptr inbounds nuw i8, ptr %1, i64 %.0152.in.v
  %.0152 = load i64, ptr %.0152.in, align 8, !tbaa !76 ; 8 uses
  %.0163 = load i64, ptr %.0163.in, align 8, !tbaa !76 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = zext nneg i32 %2 to i64
  %i.c = getelementptr inbounds nuw [1024 x i8], ptr %i.a, i64 %i.b ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1008 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !559
  %i.f = icmp eq i64 %i.e, %.0152
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1016
  %i.h = load i64, ptr %i.g, align 8, !tbaa !560
  %i.i = icmp eq i64 %i.h, %.0163
  br i1 %i.i, label %.loopexit189, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 %.0152, ptr %i.d, align 8, !tbaa !559
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1016
  store i64 %.0163, ptr %i.j, align 8, !tbaa !560
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1540 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !163  ; 2 uses
  %.not208 = icmp eq i32 %i.l, 0
  br i1 %.not208, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 4 uses
  %wide.trip.count = zext i32 %i.l to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.e, !llvm.loop !553

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !167
  %i.q = and i32 %i.p, 16
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !203
  %i.t = mul i64 %i.s, %.0152                     ; 2 uses
  %i.u = ashr i64 %i.t, 63
  %i.v = add i64 %i.t, 32768
  %i.w = add i64 %i.v, %i.u
  %i.x = ashr i64 %i.w, 16                        ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !141
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !287 ; 2 uses
  %.not172 = icmp eq i32 %i.ab, 0
  br i1 %.not172, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !189
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !210
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !288 ; 2 uses
  %i.ai = zext i16 %i.ah to i32
  %i.aj = icmp uge i32 %i.ab, %i.ai
  %i.ak = icmp ugt i16 %i.ah, 5
  %or.cond = and i1 %i.ak, %i.aj
  %spec.select = select i1 %or.cond, i64 52, i64 40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0156 = phi i64 [ 40, %bb.f ], [ %spec.select, %bb.g ]
  %i.al = add nsw i64 %.0156, %i.x
  %i.am = and i64 %i.al, -64                      ; 2 uses
  %4 = icmp ne i64 %i.x, %i.am
  %i.an = icmp ne i32 %2, 0
  %or.cond7 = and i1 %i.an, %4
  br i1 %or.cond7, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call i64 @FT_MulDiv(i64 noundef %.0152, i64 noundef %i.am, i64 noundef %i.x) #18 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !130
  %i.ar = zext i32 %i.aq to i64                   ; 3 uses
  %i.as = load i32, ptr %i.k, align 4, !tbaa !163 ; 4 uses
  %.not209 = icmp eq i32 %i.as, 0
  br i1 %.not209, label %.thread.thread, label %.lr.ph197

.lr.ph197:                                        ; preds = %bb.i
  %wide.trip.count219 = zext i32 %i.as to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count219, 1
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %.epil.preheader, label %.lr.ph197.new

.lr.ph197.new:                                    ; preds = %.lr.ph197
  %unroll_iter = and i64 %wide.trip.count219, 4294967294
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph197.new
  %indvars.iv216 = phi i64 [ 0, %.lr.ph197.new ], [ %indvars.iv.next217.1, %bb.j ] ; 3 uses
  %.0155196 = phi i64 [ %i.ar, %.lr.ph197.new ], [ %i.bh, %bb.j ]
  %niter = phi i64 [ 0, %.lr.ph197.new ], [ %niter.next.1, %bb.j ]
  %i.au = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %indvars.iv216 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !165
  %.0155. = tail call i64 @llvm.smax.i64(i64 %.0155196, i64 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !166
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = tail call i64 @llvm.smax.i64(i64 %.0155., i64 %i.az)
  %i.bb = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %indvars.iv216 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 120
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !165
  %.0155..1 = tail call i64 @llvm.smax.i64(i64 %i.ba, i64 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !166
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = tail call i64 @llvm.smax.i64(i64 %.0155..1, i64 %i.bg) ; 3 uses
  %indvars.iv.next217.1 = add nuw nsw i64 %indvars.iv216, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.thread.loopexit.unr-lcssa, label %bb.j, !llvm.loop !554

.thread.thread.loopexit.unr-lcssa:                ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread.thread.loopexit.unr-lcssa, %.lr.ph197
  %indvars.iv216.epil.init = phi i64 [ 0, %.lr.ph197 ], [ %indvars.iv.next217.1, %.thread.thread.loopexit.unr-lcssa ]
  %.0155196.epil.init = phi i64 [ %i.ar, %.lr.ph197 ], [ %i.bh, %.thread.thread.loopexit.unr-lcssa ]
  %lcmp.mod262 = trunc i32 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod262)
  %i.bi = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %indvars.iv216.epil.init ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !165
  %.0155..epil = tail call i64 @llvm.smax.i64(i64 %.0155196.epil.init, i64 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !166
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = tail call i64 @llvm.smax.i64(i64 %.0155..epil, i64 %i.bn)
  br label %.thread.thread

.thread.thread:                                   ; preds = %.epil.preheader, %.thread.thread.loopexit.unr-lcssa, %bb.i
  %.0155.lcssa = phi i64 [ %i.ar, %bb.i ], [ %i.bh, %.thread.thread.loopexit.unr-lcssa ], [ %i.bo, %.epil.preheader ]
  %i.bp = sub nsw i64 %i.ao, %.0152
  %i.bq = mul i64 %.0155.lcssa, %i.bp             ; 2 uses
  %i.br = ashr i64 %i.bq, 63
  %i.bs = add i64 %i.bq, 32768
  %i.bt = add i64 %i.bs, %i.br
  %i.bu = ashr i64 %i.bt, 16
  %i.bv = add nsw i64 %i.bu, 127
  %or.cond3 = icmp ult i64 %i.bv, 255
  %spec.select180 = select i1 %or.cond3, i64 %i.ao, i64 %.0152 ; 2 uses
  store i64 %spec.select180, ptr %i.c, align 8, !tbaa !198
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.0163, ptr %i.bw, align 8, !tbaa !561
  br label %bb.k

.thread:                                          ; preds = %bb.d, %bb.c, %bb.h
  store i64 %.0152, ptr %i.c, align 8, !tbaa !198
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.0163, ptr %i.bx, align 8, !tbaa !561
  %spec.select255 = select i1 %3, i64 16, i64 24
  %spec.select256 = select i1 %3, i64 32, i64 40
  br label %bb.k

bb.k:                                             ; preds = %.thread, %.thread.thread
  %.sink254.a = phi i64 [ %spec.select255, %.thread ], [ 24, %.thread.thread ]
  %.0152.sink = phi i64 [ %.0152, %.thread ], [ %spec.select180, %.thread.thread ] ; 8 uses
  %.sink253 = phi i64 [ %spec.select256, %.thread ], [ 40, %.thread.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %.sink254.a
  store i64 %.0152.sink, ptr %i.by, align 8, !tbaa !76
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %.sink253
  store i64 %.0163, ptr %i.bz, align 8, !tbaa !76
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !134 ; 4 uses
  %.not210 = icmp eq i32 %i.cb, 0
  br i1 %.not210, label %._crit_edge201, label %.lr.ph200

.lr.ph200:                                        ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %wide.trip.count224 = zext i32 %i.cb to i64     ; 2 uses
  %xtraiter264 = and i64 %wide.trip.count224, 1
  %i.cd = icmp eq i32 %i.cb, 1
  br i1 %i.cd, label %.epil.preheader263, label %.lr.ph200.new

.lr.ph200.new:                                    ; preds = %.lr.ph200
  %unroll_iter267 = and i64 %wide.trip.count224, 4294967294
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph200.new
  %indvars.iv221 = phi i64 [ 0, %.lr.ph200.new ], [ %indvars.iv.next222.1, %bb.l ] ; 3 uses
  %niter268 = phi i64 [ 0, %.lr.ph200.new ], [ %niter268.next.1, %bb.l ]
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %indvars.iv221 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !156
  %i.cg = mul i64 %i.cf, %.0152.sink              ; 2 uses
  %i.ch = ashr i64 %i.cg, 63
  %i.ci = add i64 %i.cg, 32768
  %i.cj = add i64 %i.ci, %i.ch
  %i.ck = ashr i64 %i.cj, 16                      ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !286
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i64 %i.ck, ptr %i.cm, align 8, !tbaa !285
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %indvars.iv221 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !156
  %i.cq = mul i64 %i.cp, %.0152.sink              ; 2 uses
  %i.cr = ashr i64 %i.cq, 63
  %i.cs = add i64 %i.cq, 32768
  %i.ct = add i64 %i.cs, %i.cr
  %i.cu = ashr i64 %i.ct, 16                      ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !286
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  store i64 %i.cu, ptr %i.cw, align 8, !tbaa !285
  %indvars.iv.next222.1 = add nuw nsw i64 %indvars.iv221, 2 ; 2 uses
  %niter268.next.1 = add i64 %niter268, 2         ; 2 uses
  %niter268.ncmp.1 = icmp eq i64 %niter268.next.1, %unroll_iter267
  br i1 %niter268.ncmp.1, label %._crit_edge201.loopexit.unr-lcssa, label %bb.l, !llvm.loop !555

._crit_edge201.loopexit.unr-lcssa:                ; preds = %bb.l
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  br i1 %lcmp.mod265.not, label %._crit_edge201, label %.epil.preheader263

.epil.preheader263:                               ; preds = %._crit_edge201.loopexit.unr-lcssa, %.lr.ph200
  %indvars.iv221.epil.init = phi i64 [ 0, %.lr.ph200 ], [ %indvars.iv.next222.1, %._crit_edge201.loopexit.unr-lcssa ]
  %lcmp.mod266 = trunc i32 %i.cb to i1
  tail call void @llvm.assume(i1 %lcmp.mod266)
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %indvars.iv221.epil.init ; 3 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !156
  %i.cz = mul i64 %i.cy, %.0152.sink              ; 2 uses
  %i.da = ashr i64 %i.cz, 63
  %i.db = add i64 %i.cz, 32768
  %i.dc = add i64 %i.db, %i.da
  %i.dd = ashr i64 %i.dc, 16                      ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !286
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %i.dd, ptr %i.df, align 8, !tbaa !285
  br label %._crit_edge201

._crit_edge201:                                   ; preds = %.epil.preheader263, %._crit_edge201.loopexit.unr-lcssa, %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !158
  %i.di = mul i64 %i.dh, %.0152.sink              ; 2 uses
  %i.dj = ashr i64 %i.di, 63
  %i.dk = add i64 %i.di, 32768
  %i.dl = add i64 %i.dk, %i.dj
  %i.dm = icmp slt i64 %i.dl, 2621440
  %i.dn = zext i1 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 424
  store i8 %i.dn, ptr %i.do, align 8, !tbaa !159
  br i1 %3, label %.loopexit189, label %.preheader190

.preheader190:                                    ; preds = %._crit_edge201
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 428
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !163 ; 3 uses
  %.not211 = icmp eq i32 %i.dq, 0
  br i1 %.not211, label %.loopexit189, label %.lr.ph203

.lr.ph203:                                        ; preds = %.preheader190
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %wide.trip.count229 = zext i32 %i.dq to i64
  br label %bb.m

.lr.ph207:                                        ; preds = %bb.o
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 432 ; 2 uses
  %wide.trip.count239 = zext i32 %i.dq to i64     ; 2 uses
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph203, %bb.o
  %indvars.iv226 = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next227, %bb.o ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [72 x i8], ptr %i.dr, i64 %indvars.iv226 ; 7 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !202 ; 2 uses
  %i.dv = mul i64 %i.du, %.0152.sink              ; 2 uses
  %i.dw = ashr i64 %i.dv, 63
  %i.dx = add i64 %i.dv, 32768
  %i.dy = add i64 %i.dx, %i.dw
  %i.dz = ashr i64 %i.dy, 16
  %i.ea = add nsw i64 %i.dz, %.0163               ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !562
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  store i64 %i.ea, ptr %i.ec, align 8, !tbaa !563
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !203 ; 2 uses
  %i.ef = mul i64 %i.ee, %.0152.sink              ; 2 uses
  %i.eg = ashr i64 %i.ef, 63
  %i.eh = add i64 %i.ef, 32768
  %i.ei = add i64 %i.eh, %i.eg
  %i.ej = ashr i64 %i.ei, 16
  %i.ek = add nsw i64 %i.ej, %.0163               ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !196
  %i.em = getelementptr inbounds nuw i8, ptr %i.dt, i64 40 ; 2 uses
  store i64 %i.ek, ptr %i.em, align 8, !tbaa !564
  %i.en = getelementptr inbounds nuw i8, ptr %i.dt, i64 64 ; 3 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !167 ; 2 uses
  %i.ep = and i32 %i.eo, -2
  store i32 %i.ep, ptr %i.en, align 8, !tbaa !167
  %i.eq = sub nsw i64 %i.du, %i.ee
  %i.er = mul i64 %i.eq, %.0152.sink              ; 2 uses
  %i.es = ashr i64 %i.er, 63
  %i.et = add i64 %i.er, 32768
  %i.eu = add i64 %i.et, %i.es
  %i.ev = ashr i64 %i.eu, 16                      ; 3 uses
  %i.ew = add nsw i64 %i.ev, 48
  %or.cond5 = icmp ult i64 %i.ew, 97
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ex = icmp slt i64 %i.ev, 0
  %spec.select181 = tail call i64 @llvm.abs.i64(i64 %i.ev, i1 true) ; 2 uses
  %i.ey = icmp samesign ult i64 %spec.select181, 32
  %i.ez = icmp samesign ult i64 %spec.select181, 48
  %. = select i1 %i.ez, i64 32, i64 64
  %.1 = select i1 %i.ey, i64 0, i64 %.            ; 2 uses
  %i.fa = sub nsw i64 0, %.1
  %i.fb = select i1 %i.ex, i64 %.1, i64 %i.fa
  %i.fc = add nsw i64 %i.ea, 32
  %i.fd = and i64 %i.fc, -64                      ; 2 uses
  store i64 %i.fd, ptr %i.ec, align 8, !tbaa !563
  %i.fe = add i64 %i.fb, %i.fd
  store i64 %i.fe, ptr %i.em, align 8, !tbaa !564
  %i.ff = or i32 %i.eo, 1
  store i32 %i.ff, ptr %i.en, align 8, !tbaa !167
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count229
  br i1 %exitcond230.not, label %.lr.ph207, label %bb.m, !llvm.loop !556

bb.p:                                             ; preds = %.lr.ph207, %.loopexit
  %indvars.iv236 = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next237, %.loopexit ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [72 x i8], ptr %i.ds, i64 %indvars.iv236 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 64 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !167 ; 2 uses
  %i.fj = and i32 %i.fi, 5
  %or.cond182.not = icmp eq i32 %i.fj, 5
  br i1 %or.cond182.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.p
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %bb.u
  %indvars.iv231 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next232, %bb.u ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [72 x i8], ptr %i.ds, i64 %indvars.iv231 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !167
  %i.fp = and i32 %i.fo, 5
  %or.cond183.not = icmp eq i32 %i.fp, 1
  br i1 %or.cond183.not, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !563
  %i.fs = load i64, ptr %i.fk, align 8, !tbaa !564
  %.not178 = icmp sgt i64 %i.fr, %i.fs
  br i1 %.not178, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !564
  %i.fv = load i64, ptr %i.fl, align 8, !tbaa !563
  %.not179 = icmp slt i64 %i.fu, %i.fv
  br i1 %.not179, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fw = and i32 %i.fi, -2
  store i32 %i.fw, ptr %i.fh, align 8, !tbaa !167
  br label %.loopexit

bb.u:                                             ; preds = %bb.q, %bb.r, %bb.s
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count239
  br i1 %exitcond235.not, label %.loopexit, label %bb.q, !llvm.loop !557

.loopexit:                                        ; preds = %bb.u, %bb.t, %bb.p
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count239
  br i1 %exitcond240.not, label %.loopexit189, label %bb.p, !llvm.loop !558

.loopexit189:                                     ; preds = %.loopexit, %.preheader190, %._crit_edge201, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @af_latin_hints_detect_features(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call fastcc i32 @af_latin_hints_compute_segments(ptr noundef %0, i32 noundef %3) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %af_latin_hints_compute_edges.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @af_latin_hints_link_segments(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = zext nneg i32 %3 to i64                  ; 2 uses
  %i.e = getelementptr inbounds nuw [2536 x i8], ptr %i.c, i64 %i.d ; 6 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.i = getelementptr inbounds nuw [1024 x i8], ptr %i.h, i64 %i.d
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !181
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !135
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @af_script_classes, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !137
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !151  ; 5 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.e, align 8, !tbaa !152
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.t, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i32 0, ptr %i.v, align 8, !tbaa !107
  %i.w = icmp eq i32 %3, 0                        ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.in.i = select i1 %i.w, ptr %i.x, ptr %i.y
  %i.z = load i64, ptr %.in.i, align 8, !tbaa !76 ; 4 uses
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !289
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !254
  %i.ad = tail call i64 @FT_DivFix(i64 noundef 64, i64 noundef %i.ac) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0196246.i = phi i8 [ 0, %bb.f ], [ %i.ab, %bb.e ]
  %.0191.i = phi i64 [ %i.ad, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.ae = tail call i64 @FT_DivFix(i64 noundef 32, i64 noundef %i.z) #18
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 496
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !157
  %i.ah = mul i64 %i.ag, %i.z                     ; 2 uses
  %i.ai = ashr i64 %i.ah, 63
  %i.aj = add i64 %i.ah, 32768
end_hunk_0
begin_hunk_1_@af_latin_stretch_bottom_tilde:bb.a
bb.l:                                             ; preds = %bb.k
  %i.bd = sub i64 %i.m, %i.x
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.0 = phi i64 [ %i.ay, %bb.i ], [ %i.bd, %bb.l ] ; 3 uses
  %i.be = icmp slt i64 %.0, %i.p
  br i1 %i.be, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not93 = icmp eq i8 %.070, 0
  %i.bf = tail call i64 @llvm.smin.i64(i64 %.0, i64 %.071)
  %.172 = select i1 %.not93, i64 %.0, i64 %i.bf
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k, %bb.j, %bb.m, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.374 = phi i64 [ %.071, %bb.c ], [ %.071, %bb.d ], [ %.071, %bb.g ], [ %.071, %bb.f ], [ %.071, %bb.e ], [ %.071, %bb.j ], [ %.172, %bb.n ], [ %.071, %bb.k ], [ %.071, %bb.m ] ; 2 uses
  %.3 = phi i8 [ %.070, %bb.c ], [ %.070, %bb.d ], [ %.070, %bb.g ], [ %.070, %bb.f ], [ %.070, %bb.e ], [ %.070, %bb.j ], [ 1, %bb.n ], [ %.070, %bb.k ], [ %.070, %bb.m ] ; 2 uses
  %.not94 = icmp eq ptr %i.r, %i.e
  br i1 %.not94, label %bb.p, label %bb.c, !llvm.loop !580

bb.p:                                             ; preds = %bb.o
  %.not95 = icmp eq i8 %.3, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !191 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i, label %af_touch_bottom_contours.exit

.lr.ph.i:                                         ; preds = %bb.p
  %wide.trip.count.i = zext nneg i32 %i.bh to i64
  br label %bb.q

bb.q:                                             ; preds = %af_touch_contour.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %af_touch_contour.exit.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !76
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !76 ; 2 uses
  %i.bn = icmp sge i64 %i.bk, %i.bm
  %.not.i = icmp sgt i64 %i.bm, %i.i
  %or.cond.i = or i1 %i.bn, %.not.i
  br i1 %or.cond.i, label %af_touch_contour.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !115 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.0.i.i = phi ptr [ %i.bp, %bb.r ], [ %i.br, %bb.s ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !195 ; 4 uses
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !118 ; 2 uses
  %i.bt = and i16 %i.bs, 3
  %.not.i.i = icmp eq i16 %i.bt, 0
  %spec.select.v.i.i = select i1 %.not.i.i, i16 72, i16 64
  %spec.select.i.i = or i16 %spec.select.v.i.i, %i.bs
  store i16 %spec.select.i.i, ptr %i.br, align 8, !tbaa !118
  %.not9.i.i = icmp eq ptr %i.br, %i.bp
  br i1 %.not9.i.i, label %af_touch_contour.exit.i, label %bb.s, !llvm.loop !8

af_touch_contour.exit.i:                          ; preds = %bb.s, %bb.q
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %af_touch_bottom_contours.exit, label %bb.q, !llvm.loop !581

af_touch_bottom_contours.exit:                    ; preds = %af_touch_contour.exit.i, %bb.p
  %i.bu = add nsw i64 %.374, 64
  %i.bv = select i1 %.not95, i64 64, i64 %i.bu    ; 2 uses
  %.not96 = icmp slt i64 %i.o, %i.bv
  br i1 %.not96, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %af_touch_bottom_contours.exit, %.preheader
  %.176 = phi ptr [ %i.bx, %.preheader ], [ %i.e, %af_touch_bottom_contours.exit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.176, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !195 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !120
  %i.ca = sub i64 %i.bz, %i.m
  %i.cb = mul i64 %i.ca, %i.bv
  %i.cc = sdiv i64 %i.cb, %i.o
  %i.cd = add i64 %i.cc, %i.m
  store i64 %i.cd, ptr %i.by, align 8, !tbaa !120
  %.not97 = icmp eq ptr %i.bx, %i.e
  br i1 %.not97, label %.loopexit, label %.preheader, !llvm.loop !582

.loopexit:                                        ; preds = %.preheader, %af_touch_bottom_contours.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @af_move_contours_down(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !191  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !193
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !194
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.neg = mul i64 %2, -4294967296
  %i.i = ashr exact i64 %.neg, 32
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %af_move_contour_vertically.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %af_move_contour_vertically.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.m = load i64, ptr %i.l, align 8, !tbaa !76   ; 2 uses
  %i.n = icmp slt i64 %i.k, %i.m
  %i.o = icmp slt i64 %i.m, %1
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %bb.c, label %af_move_contour_vertically.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !192
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !115  ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %af_move_contour_vertically.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.0.i = phi ptr [ %i.w, %.preheader.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !120
  %i.u = add nsw i64 %i.t, %i.i
  store i64 %i.u, ptr %i.s, align 8, !tbaa !120
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !195  ; 2 uses
  %.not8.i = icmp eq ptr %i.w, %i.r
  br i1 %.not8.i, label %af_move_contour_vertically.exit, label %.preheader.i, !llvm.loop !3

af_move_contour_vertically.exit:                  ; preds = %.preheader.i, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !583

._crit_edge:                                      ; preds = %af_move_contour_vertically.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @af_latin_hint_edges(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [2536 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106  ; 17 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !107
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 8 uses
  %.not671 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not671, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 5168
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !181
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !135
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @af_script_classes, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !137
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i8, ptr %i.s, align 8, !tbaa !289
  %i.u = icmp eq i8 %i.t, 0                       ; 2 uses
  %i.v = icmp ult ptr %i.e, %i.j
  br i1 %i.v, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr i8, ptr %0, i64 5164
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.thread765
  %.0536822 = phi ptr [ null, %.lr.ph ], [ %.2538, %.thread765 ] ; 5 uses
  %.0543821 = phi ptr [ %i.e, %.lr.ph ], [ %i.bu, %.thread765 ] ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0543821, i64 24 ; 4 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !197   ; 3 uses
  %i.z = and i8 %i.y, 4
  %.not694 = icmp eq i8 %i.z, 0
  br i1 %.not694, label %bb.f, label %.thread765

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.0543821, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !284 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0543821, i64 40 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !204 ; 4 uses
  %i.ae = icmp ne ptr %i.ad, null
  %i.af = icmp ne ptr %i.ab, null                 ; 2 uses
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !204
  %.not695 = icmp eq ptr %i.ah, null
  br i1 %.not695, label %.thread885, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !197 ; 2 uses
  %i.ak = and i8 %i.aj, 8
  %.not696 = icmp eq i8 %i.ak, 0
  br i1 %.not696, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.ag, align 8, !tbaa !204
  %i.al = and i8 %i.aj, -9
  store i8 %i.al, ptr %i.ai, align 8, !tbaa !197
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !204
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.am = and i8 %i.y, 8
  %.not697 = icmp eq i8 %i.am, 0
  br i1 %.not697, label %.thread885, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.ac, align 8, !tbaa !204
  %i.an = and i8 %i.y, -13
  store i8 %i.an, ptr %i.x, align 8, !tbaa !197
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.f
  %i.ao = phi ptr [ %.pre, %bb.i ], [ null, %bb.k ], [ %i.ad, %bb.f ] ; 2 uses
  %.not698 = icmp eq ptr %i.ao, null              ; 2 uses
  %brmerge.not = select i1 %.not698, i1 %i.af, i1 false
  br i1 %brmerge.not, label %bb.m, label %.thread885

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !204 ; 2 uses
  %.not699 = icmp eq ptr %i.aq, null
  br i1 %.not699, label %.thread765, label %.thread889

.thread889:                                       ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !285 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.as, ptr %i.at, align 8, !tbaa !111
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !197
  %i.aw = or i8 %i.av, 4                          ; 2 uses
  store i8 %i.aw, ptr %i.au, align 8, !tbaa !197
  br label %bb.p

.thread885:                                       ; preds = %bb.g, %bb.j, %bb.l
  %.not698888 = phi i1 [ %.not698, %bb.l ], [ false, %bb.j ], [ false, %bb.g ]
  %i.ax = phi ptr [ %i.ao, %bb.l ], [ %i.ad, %bb.j ], [ %i.ad, %bb.g ]
  br i1 %.not698888, label %.thread765, label %bb.n

bb.n:                                             ; preds = %.thread885
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !285 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0543821, i64 16
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !111
  %i.bb = load i8, ptr %i.x, align 8, !tbaa !197
  %i.bc = or i8 %i.bb, 4                          ; 2 uses
  store i8 %i.bc, ptr %i.x, align 8, !tbaa !197
  %.not701810 = icmp eq ptr %i.ab, null
  br i1 %.not701810, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.pre847 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !204
  %i.bd = icmp eq ptr %.pre847, null
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread889, %bb.o
  %.0530777783894 = phi ptr [ %.0543821, %.thread889 ], [ %i.ab, %bb.o ] ; 3 uses
  %.0531776784893 = phi ptr [ %i.ab, %.thread889 ], [ %.0543821, %bb.o ]
  %i.be = phi i64 [ %i.as, %.thread889 ], [ %i.az, %bb.o ] ; 2 uses
  %i.bf = phi i8 [ %i.aw, %.thread889 ], [ %i.bc, %bb.o ]
  %.val759 = load i32, ptr %i.w, align 4, !tbaa !101
  %i.bg = getelementptr inbounds nuw i8, ptr %.0530777783894, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !112
  %i.bi = getelementptr inbounds nuw i8, ptr %.0531776784893, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !112 ; 2 uses
  %i.bk = sub nsw i64 %i.bh, %i.bj
  %i.bl = sub nsw i64 %i.be, %i.bj
  %i.bm = zext i8 %i.bf to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0530777783894, i64 24 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !197 ; 2 uses
  %i.bp = zext i8 %i.bo to i32
  %i.bq = tail call fastcc i64 @af_latin_compute_stem_width(i32 %.val759, ptr nonnull readonly %i.l, i32 noundef 1, i64 noundef %i.bk, i64 noundef %i.bl, i32 noundef %i.bm, i32 noundef %i.bp)
  %i.br = add nsw i64 %i.bq, %i.be
  %i.bs = getelementptr inbounds nuw i8, ptr %.0530777783894, i64 16
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !111
  %i.bt = or i8 %i.bo, 4
  store i8 %i.bt, ptr %i.bn, align 8, !tbaa !197
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.not703 = icmp eq ptr %.0536822, null
  %spec.select = select i1 %.not703, ptr %.0543821, ptr %.0536822
  br label %.thread765

.thread765:                                       ; preds = %bb.m, %.thread885, %bb.e, %bb.q
  %.2538 = phi ptr [ %.0536822, %bb.e ], [ %spec.select, %bb.q ], [ %.0536822, %.thread885 ], [ %.0536822, %bb.m ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0543821, i64 88 ; 2 uses
  %i.bv = icmp ult ptr %i.bu, %i.j
  br i1 %i.bv, label %bb.e, label %.thread, !llvm.loop !584

.thread:                                          ; preds = %.thread765, %bb.d, %bb.c
  %.0533764 = phi i1 [ true, %bb.c ], [ %i.u, %bb.d ], [ %i.u, %.thread765 ] ; 3 uses
  %.3539 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ %.2538, %.thread765 ] ; 2 uses
  %i.bw = icmp ult ptr %i.e, %i.j                 ; 2 uses
  br i1 %i.bw, label %.lr.ph826, label %._crit_edge

.lr.ph826:                                        ; preds = %.thread
  %i.bx = getelementptr i8, ptr %0, i64 5164      ; 3 uses
  %i.by = getelementptr i8, ptr %0, i64 5168      ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph826, %bb.al
  %.0534825 = phi i8 [ 0, %.lr.ph826 ], [ %.1535, %bb.al ] ; 8 uses
  %.4540824 = phi ptr [ %.3539, %.lr.ph826 ], [ %.6542, %bb.al ] ; 11 uses
  %.1544823 = phi ptr [ %i.e, %.lr.ph826 ], [ %i.gr, %bb.al ] ; 16 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1544823, i64 24 ; 4 uses
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !197 ; 4 uses
  %i.cb = zext i8 %i.ca to i32                    ; 4 uses
  %i.cc = and i32 %i.cb, 4
  %.not686 = icmp eq i32 %i.cc, 0
  br i1 %.not686, label %bb.s, label %bb.al

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.1544823, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !284 ; 15 uses
  %.not687 = icmp eq ptr %i.ce, null
  br i1 %.not687, label %bb.al, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !204
  %.not688 = icmp eq ptr %i.cg, null
  br i1 %.not688, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val757 = load i32, ptr %i.bx, align 4, !tbaa !101
  %.val758 = load ptr, ptr %i.by, align 8, !tbaa !97
  %i.ch = getelementptr inbounds nuw i8, ptr %.1544823, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !112
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !112 ; 2 uses
  %i.cl = sub nsw i64 %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !111 ; 2 uses
  %i.co = sub nsw i64 %i.cn, %i.ck
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !197
  %i.cr = zext i8 %i.cq to i32
  %i.cs = tail call fastcc i64 @af_latin_compute_stem_width(i32 %.val757, ptr readonly %.val758, i32 noundef range(i32 0, 2) %1, i64 noundef %i.cl, i64 noundef %i.co, i32 noundef %i.cr, i32 noundef %i.cb)
  %i.ct = add nsw i64 %i.cs, %i.cn
  %i.cu = getelementptr inbounds nuw i8, ptr %.1544823, i64 16
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !111
  %i.cv = or i8 %i.ca, 4
  store i8 %i.cv, ptr %i.bz, align 8, !tbaa !197
  br label %bb.al

bb.v:                                             ; preds = %bb.t
  %.not689 = icmp eq ptr %.4540824, null
  %i.cw = getelementptr inbounds nuw i8, ptr %.1544823, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !112 ; 6 uses
  br i1 %.not689, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !112
  %i.da = sub nsw i64 %i.cz, %i.cx                ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !197
  %i.dd = zext i8 %i.dc to i32
  %.val753 = load i32, ptr %i.bx, align 4, !tbaa !101 ; 2 uses
  %.val754 = load ptr, ptr %i.by, align 8, !tbaa !97 ; 2 uses
  %i.de = tail call fastcc i64 @af_latin_compute_stem_width(i32 %.val753, ptr %.val754, i32 noundef %1, i64 noundef %i.da, i64 noundef 0, i32 noundef %i.cb, i32 noundef %i.dd) ; 4 uses
  %i.df = icmp slt i64 %i.de, 96
  br i1 %i.df, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dg = icmp slt i64 %i.de, 65                  ; 2 uses
  %.706 = select i1 %i.dg, i64 32, i64 26
  %. = select i1 %i.dg, i64 -32, i64 -38
  %i.dh = ashr i64 %i.da, 1
  %i.di = add nsw i64 %i.dh, %i.cx                ; 3 uses
  %i.dj = add nsw i64 %i.di, 32
  %i.dk = and i64 %i.dj, -64                      ; 2 uses
  %i.dl = add i64 %., %i.dk                       ; 2 uses
  %i.dm = sub nsw i64 %i.di, %i.dl
  %spec.select707 = tail call i64 @llvm.abs.i64(i64 %i.dm, i1 true)
  %i.dn = or disjoint i64 %.706, %i.dk            ; 2 uses
  %i.do = sub nsw i64 %i.di, %i.dn
  %.0525 = tail call i64 @llvm.abs.i64(i64 %i.do, i1 true)
  %i.dp = icmp samesign ult i64 %spec.select707, %.0525
  %.0527 = select i1 %i.dp, i64 %i.dl, i64 %i.dn
  %.neg690 = sdiv i64 %i.de, -2
  %i.dq = add i64 %.0527, %.neg690                ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1544823, i64 16 ; 2 uses
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !111
  %i.ds = add nsw i64 %i.dq, %i.de
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !111
  %.pre849 = load i64, ptr %i.dr, align 8, !tbaa !111
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.du = add nsw i64 %i.cx, 32
  %i.dv = and i64 %i.du, -64                      ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.1544823, i64 16
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !111
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dx = phi i64 [ %i.dv, %bb.y ], [ %.pre849, %bb.x ] ; 2 uses
  %i.dy = or i8 %i.ca, 4                          ; 2 uses
  store i8 %i.dy, ptr %i.bz, align 8, !tbaa !197
  %i.dz = sub nsw i64 %i.dx, %i.cx
  %i.ea = zext i8 %i.dy to i32
  %i.eb = load i8, ptr %i.db, align 8, !tbaa !197
  %i.ec = zext i8 %i.eb to i32
  %i.ed = tail call fastcc i64 @af_latin_compute_stem_width(i32 %.val753, ptr readonly %.val754, i32 noundef range(i32 0, 2) %1, i64 noundef %i.da, i64 noundef %i.dz, i32 noundef %i.ea, i32 noundef %i.ec)
  %i.ee = add nsw i64 %i.ed, %i.dx
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !111
  br label %bb.al

bb.aa:                                            ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.4540824, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !111
  %i.ei = getelementptr inbounds nuw i8, ptr %.4540824, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !112
  %i.ek = sub nsw i64 %i.cx, %i.ej
  %i.el = add nsw i64 %i.ek, %i.eh                ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !112
  %i.eo = sub nsw i64 %i.en, %i.cx                ; 3 uses
  %i.ep = ashr i64 %i.eo, 1
  %i.eq = add nsw i64 %i.ep, %i.el                ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 3 uses
  %i.es = load i8, ptr %i.er, align 8, !tbaa !197
  %i.et = zext i8 %i.es to i32                    ; 2 uses
  %.val751 = load i32, ptr %i.bx, align 4, !tbaa !101
  %.val752 = load ptr, ptr %i.by, align 8, !tbaa !97
  %i.eu = tail call fastcc i64 @af_latin_compute_stem_width(i32 %.val751, ptr %.val752, i32 noundef %1, i64 noundef %i.eo, i64 noundef 0, i32 noundef %i.cb, i32 noundef %i.et) ; 7 uses
  %i.ev = and i32 %i.et, 4
  %.not691 = icmp eq i32 %i.ev, 0
  br i1 %.not691, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !111
  %i.ey = sub nsw i64 %i.ex, %i.eu
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.ez = icmp slt i64 %i.eu, 96
  br i1 %i.ez, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fa = add nsw i64 %i.eq, 32
  %i.fb = and i64 %i.fa, -64                      ; 2 uses
  %i.fc = icmp slt i64 %i.eu, 65                  ; 2 uses
end_hunk_1
