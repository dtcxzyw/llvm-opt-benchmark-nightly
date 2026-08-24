Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/index-pack?download=true
inline.NumInlined: 142
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@threaded_second_pass:bb.a
bb.am:                                            ; preds = %bb.al
  %i.eq = call i32 @pthread_mutex_lock(ptr noundef nonnull @work_mutex) #24 ; 0 uses
  br label %lock_mutex.exit99

lock_mutex.exit99:                                ; preds = %bb.al, %bb.am
  %.not79 = icmp eq ptr %.062, null               ; 2 uses
  br i1 %.not79, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %lock_mutex.exit99
  %i.er = getelementptr inbounds nuw i8, ptr %.062, i64 32 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !235
  %i.et = add nsw i32 %i.es, -1
  store i32 %i.et, ptr %i.er, align 8, !tbaa !235
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %lock_mutex.exit99
  %.not80 = icmp eq ptr %.058, null
  br i1 %.not80, label %.critedge85, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eu = getelementptr inbounds nuw i8, ptr %.058, i64 56
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !236
  %.not81 = icmp eq ptr %i.ev, null
  br i1 %.not81, label %.preheader, label %bb.aq

.preheader:                                       ; preds = %bb.ap
  br i1 %.not79, label %.thread109, label %.lr.ph127

bb.aq:                                            ; preds = %bb.ap
  %i.ew = getelementptr inbounds nuw i8, ptr %.058, i64 40 ; 3 uses
  %i.ex = load ptr, ptr @work_head, align 8, !tbaa !222 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !234
  store ptr %i.ex, ptr %i.ew, align 8, !tbaa !222
  %i.ez = getelementptr inbounds nuw i8, ptr %.058, i64 48
  store ptr @work_head, ptr %i.ez, align 8, !tbaa !234
  store ptr %i.ew, ptr @work_head, align 8, !tbaa !222
  %i.fa = getelementptr inbounds nuw i8, ptr %.058, i64 64
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !237
  %i.fc = load i64, ptr @base_cache_used, align 8, !tbaa !31
  %i.fd = add i64 %i.fc, %i.fb
  store i64 %i.fd, ptr @base_cache_used, align 8, !tbaa !31
  call fastcc void @prune_base_data(ptr noundef null)
  br label %.critedge85

.lr.ph127:                                        ; preds = %.preheader, %bb.at
  %.0126 = phi ptr [ %i.fh, %bb.at ], [ %.062, %.preheader ] ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0126, i64 36 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !238
  %i.fg = add nsw i32 %i.ff, -1                   ; 2 uses
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !238
  %.not83 = icmp eq i32 %i.fg, 0
  br i1 %.not83, label %bb.ar, label %.thread109

bb.ar:                                            ; preds = %.lr.ph127
  %i.fh = load ptr, ptr %.0126, align 8, !tbaa !239 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0126, i64 56 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !236 ; 2 uses
  %.not.i100 = icmp eq ptr %i.fj, null
  br i1 %.not.i100, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.fj) #24
  store ptr null, ptr %i.fi, align 8, !tbaa !236
  %i.fk = getelementptr inbounds nuw i8, ptr %.0126, i64 64
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !237
  %i.fm = load i64, ptr @base_cache_used, align 8, !tbaa !31
  %i.fn = sub i64 %i.fm, %i.fl
  store i64 %i.fn, ptr @base_cache_used, align 8, !tbaa !31
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fo = getelementptr inbounds nuw i8, ptr %.0126, i64 40
  %.val = load ptr, ptr %i.fo, align 8, !tbaa !222 ; 2 uses
  %i.fp = getelementptr i8, ptr %.0126, i64 48
  %.val86 = load ptr, ptr %i.fp, align 8, !tbaa !234 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %.val86, ptr %i.fq, align 8, !tbaa !234
  store ptr %.val, ptr %.val86, align 8, !tbaa !222
  call void @free(ptr noundef nonnull %.0126) #24
  %.not82 = icmp eq ptr %i.fh, null
  br i1 %.not82, label %.thread109, label %.lr.ph127

.thread109:                                       ; preds = %bb.at, %.lr.ph127, %.preheader
  call void @free(ptr noundef %.058) #24
  br label %.critedge85

.critedge85:                                      ; preds = %bb.ao, %.thread109, %bb.aq
  %.b.i101 = load i1, ptr @threads_active, align 4
  br i1 %.b.i101, label %bb.au, label %lock_mutex.exit

bb.au:                                            ; preds = %.critedge85
  %i.fr = call i32 @pthread_mutex_unlock(ptr noundef nonnull @work_mutex) #24 ; 0 uses
  %.b.i89.pre = load i1, ptr @threads_active, align 4
  br label %set_thread_data.exit

bb.av:                                            ; preds = %bb.g, %.critedge
  ret ptr null
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @init_recursive_mutex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_key_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_base_data(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !236  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !231  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  %i.f = load i8, ptr %i.e, align 1, !tbaa !85
  %i.g = and i8 %i.f, -2
  %.not5759 = icmp eq i8 %i.g, 6
  br i1 %.not5759, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.b ] ; 4 uses
  %.063 = phi i32 [ %.2, %bb.d ], [ 0, %bb.b ]    ; 3 uses
  %.04461 = phi ptr [ %.145, %bb.d ], [ null, %bb.b ] ; 3 uses
  %.04660 = phi ptr [ %i.r, %bb.d ], [ %0, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.04660, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !236
  %.not52 = icmp eq ptr %i.i, null
  br i1 %.not52, label %bb.c, label %.critedge.split.loop.exit

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.j = sext i32 %.063 to i64
  %.not55 = icmp slt i64 %indvars.iv, %i.j
  br i1 %.not55, label %bb.d, label %st_mult.exit

st_mult.exit:                                     ; preds = %bb.c
  %i.k = mul i32 %.063, 3
  %i.l = add i32 %i.k, 48
  %i.m = sdiv i32 %i.l, 2
  %. = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %indvars) ; 2 uses
  %i.n = zext nneg i32 %. to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = tail call ptr @xrealloc(ptr noundef %.04461, i64 noundef %i.o) #24
  br label %bb.d

bb.d:                                             ; preds = %st_mult.exit, %bb.c
  %.145 = phi ptr [ %i.p, %st_mult.exit ], [ %.04461, %bb.c ] ; 3 uses
  %.2 = phi i32 [ %., %st_mult.exit ], [ %.063, %bb.c ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.145, i64 %indvars.iv
  store ptr %.04660, ptr %i.q, align 8, !tbaa !240
  %i.r = load ptr, ptr %.04660, align 8, !tbaa !239 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !231
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 57
  %i.v = load i8, ptr %i.u, align 1, !tbaa !85
  %i.w = and i8 %i.v, -2
  %.not57 = icmp eq i8 %i.w, 6
  br i1 %.not57, label %.lr.ph, label %.critedge, !llvm.loop !241

.critedge.split.loop.exit:                        ; preds = %.lr.ph
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.split.loop.exit
  %.046.lcssa = phi ptr [ %.04660, %.critedge.split.loop.exit ], [ %i.r, %bb.d ] ; 2 uses
  %.044.lcssa = phi ptr [ %.04461, %.critedge.split.loop.exit ], [ %.145, %bb.d ] ; 4 uses
  %.042.lcssa = phi i32 [ %i.x, %.critedge.split.loop.exit ], [ %indvars, %bb.d ] ; 3 uses
  %.not53 = icmp eq i32 %.042.lcssa, 0
  br i1 %.not53, label %.thread, label %bb.e

.thread:                                          ; preds = %.critedge, %bb.b
  %.044.lcssa84 = phi ptr [ %.044.lcssa, %.critedge ], [ null, %bb.b ]
  %.046.lcssa81 = phi ptr [ %.046.lcssa, %.critedge ], [ %0, %bb.b ] ; 4 uses
  %i.y = tail call fastcc ptr @unpack_data(ptr noundef readonly %i.d, ptr noundef null, ptr noundef null)
  %i.z = getelementptr inbounds nuw i8, ptr %.046.lcssa81, i64 56
  store ptr %i.y, ptr %i.z, align 8, !tbaa !236
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !86 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.046.lcssa81, i64 64
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !237
  %i.ad = load i64, ptr @base_cache_used, align 8, !tbaa !31
  %i.ae = add i64 %i.ad, %i.ab
  store i64 %i.ae, ptr @base_cache_used, align 8, !tbaa !31
  tail call fastcc void @prune_base_data(ptr noundef nonnull %.046.lcssa81)
  br label %._crit_edge

bb.e:                                             ; preds = %.critedge
  %i.af = icmp sgt i32 %.042.lcssa, 0
  br i1 %i.af, label %.lr.ph71, label %._crit_edge

.lr.ph71:                                         ; preds = %bb.e, %bb.g
  %.14370 = phi i32 [ %2, %bb.g ], [ %.042.lcssa, %bb.e ] ; 3 uses
  %1 = zext nneg i32 %.14370 to i64
  %i.ag = getelementptr [8 x i8], ptr %.044.lcssa, i64 %1
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !240 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !231 ; 3 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !239
  %i.am = tail call fastcc ptr @get_base_data(ptr noundef %i.al)
  %i.an = tail call fastcc ptr @unpack_data(ptr noundef readonly %i.ak, ptr noundef null, ptr noundef null) ; 2 uses
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !239
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !237
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 64 ; 2 uses
  %i.au = tail call ptr @patch_delta(ptr noundef %i.am, i64 noundef %i.aq, ptr noundef %i.an, i64 noundef %i.as, ptr noundef nonnull %i.at) #24
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 56 ; 2 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !236
  tail call void @free(ptr noundef %i.an) #24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !236
  %.not54 = icmp eq ptr %i.aw, null
  br i1 %.not54, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph71
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !81
  %i.az = tail call fastcc ptr @_(ptr noundef nonnull @.str.97)
  tail call void (i64, ptr, ...) @bad_object(i64 noundef %i.ay, ptr noundef %i.az) #27
  unreachable

bb.g:                                             ; preds = %.lr.ph71
  %i.ba = load i64, ptr %i.at, align 8, !tbaa !237
  %i.bb = load i64, ptr @base_cache_used, align 8, !tbaa !31
  %i.bc = add i64 %i.bb, %i.ba
  store i64 %i.bc, ptr @base_cache_used, align 8, !tbaa !31
  tail call fastcc void @prune_base_data(ptr noundef nonnull %i.ai)
  %2 = add nsw i32 %.14370, -1
  %i.bd = icmp sgt i32 %.14370, 1
  br i1 %i.bd, label %.lr.ph71, label %._crit_edge, !llvm.loop !242

._crit_edge:                                      ; preds = %bb.g, %.thread, %bb.e
  %.044.lcssa8390 = phi ptr [ %.044.lcssa, %bb.e ], [ %.044.lcssa84, %.thread ], [ %.044.lcssa, %bb.g ]
  %.147.lcssa = phi ptr [ %.046.lcssa, %bb.e ], [ %.046.lcssa81, %.thread ], [ %i.ai, %bb.g ]
  tail call void @free(ptr noundef %.044.lcssa8390) #24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.147.lcssa, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !236
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  %i.be = phi ptr [ %i.b, %bb.a ], [ %.pre, %._crit_edge ]
  ret ptr %i.be
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @make_base(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #24 ; 8 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !239
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !231
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.e = load i32, ptr @nr_ref_deltas, align 4, !tbaa !15 ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i, label %find_ref_delta_children.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.g = load ptr, ptr @ref_deltas, align 8, !tbaa !113 ; 3 uses
  %i.h = load ptr, ptr @objects, align 8, !tbaa !73
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.01629.i.i = phi i32 [ %i.e, %.lr.ph.i.i ], [ %spec.select26.i.i, %bb.e ] ; 2 uses
  %.01728.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.e ] ; 3 uses
  %i.i = sub nsw i32 %.01629.i.i, %.01728.i.i
  %i.j = lshr i32 %i.i, 1
  %i.k = add nuw nsw i32 %i.j, %.01728.i.i        ; 4 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !115
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [64 x i8], ptr %i.h, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 57
  %i.s = load i8, ptr %i.r, align 1, !tbaa !85    ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.s, 7
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = sext i8 %i.s to i32
  %i.u = sub nsw i32 7, %i.t
  br label %compare_ref_delta_bases.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.v = tail call i32 @memcmp(ptr noundef nonnull readonly dereferenceable(32) %0, ptr noundef nonnull readonly dereferenceable(32) %i.m, i64 noundef 32) #26
  br label %compare_ref_delta_bases.exit.i.i

compare_ref_delta_bases.exit.i.i:                 ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi i32 [ %i.u, %bb.c ], [ %i.v, %bb.d ] ; 2 uses
  %.not.i.i = icmp eq i32 %.0.i.i.i, 0
  br i1 %.not.i.i, label %find_ref_delta.exit.i, label %bb.e

bb.e:                                             ; preds = %compare_ref_delta_bases.exit.i.i
  %i.w = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %i.x = add nuw nsw i32 %i.k, 1
  %spec.select.i.i = select i1 %i.w, i32 %.01728.i.i, i32 %i.x ; 3 uses
  %spec.select26.i.i = select i1 %i.w, i32 %i.k, i32 %.01629.i.i ; 2 uses
  %i.y = icmp slt i32 %spec.select.i.i, %spec.select26.i.i
  br i1 %i.y, label %bb.b, label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.e
  %i.z = xor i32 %spec.select.i.i, -1
  br label %find_ref_delta.exit.i

find_ref_delta.exit.i:                            ; preds = %compare_ref_delta_bases.exit.i.i, %._crit_edge.loopexit.i.i
  %.2.i.i = phi i32 [ %i.z, %._crit_edge.loopexit.i.i ], [ %i.k, %compare_ref_delta_bases.exit.i.i ] ; 4 uses
  %i.aa = add nsw i32 %i.e, -1                    ; 3 uses
  %i.ab = icmp slt i32 %.2.i.i, 0
  br i1 %i.ab, label %find_ref_delta_children.exit, label %.preheader.i

.preheader.i:                                     ; preds = %find_ref_delta.exit.i
  %.not.i = icmp eq i32 %.2.i.i, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ac = zext nneg i32 %.2.i.i to i64            ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 4 uses
  %i.ad = getelementptr [40 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 -40    ; 2 uses
  %i.af = load i128, ptr %i.ae, align 1
  %i.ag = load i128, ptr %0, align 1
  %i.ah = xor i128 %i.af, %i.ag
  %i.ai = getelementptr i8, ptr %i.ae, i64 16
  %i.aj = getelementptr i8, ptr %0, i64 16
  %i.ak = load i128, ptr %i.ai, align 1
  %i.al = load i128, ptr %i.aj, align 1
  %i.am = xor i128 %i.ak, %i.al
  %i.an = or i128 %i.ah, %i.am
  %i.ao = icmp ne i128 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %.not.i23.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i23.not.i, label %bb.g, label %.critedge.loopexit.split.loop.exit39.i

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.aq = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.aq, label %bb.f, label %.critedge.i, !llvm.loop !243

.critedge.loopexit.split.loop.exit39.i:           ; preds = %bb.f
  %i.ar = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %.critedge.loopexit.split.loop.exit39.i, %.preheader.i
  %.pre-phi.i = phi i64 [ 0, %.preheader.i ], [ %i.ac, %.critedge.loopexit.split.loop.exit39.i ], [ %i.ac, %bb.g ] ; 2 uses
  %.019.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.ar, %.critedge.loopexit.split.loop.exit39.i ], [ 0, %bb.g ] ; 3 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.2.i.i, i32 %i.aa) ; 2 uses
  %i.as = trunc nuw nsw i64 %.pre-phi.i to i32    ; 2 uses
  %i.at = icmp sgt i32 %i.aa, %i.as
  br i1 %i.at, label %.lr.ph, label %find_ref_delta_children.exit

bb.h:                                             ; preds = %.lr.ph
  %i.au = trunc nuw i64 %indvars.iv.next34.i to i32 ; 2 uses
  %i.av = icmp sgt i32 %i.aa, %i.au
  br i1 %i.av, label %.lr.ph, label %find_ref_delta_children.exit, !llvm.loop !244

.lr.ph:                                           ; preds = %.critedge.i, %bb.h
  %i.aw = phi i32 [ %i.au, %bb.h ], [ %i.as, %.critedge.i ]
  %indvars.iv33.i56 = phi i64 [ %indvars.iv.next34.i, %bb.h ], [ %.pre-phi.i, %.critedge.i ]
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i56, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %indvars.iv.next34.i ; 2 uses
  %i.ay = load i128, ptr %i.ax, align 1
  %i.az = load i128, ptr %0, align 1
  %i.ba = xor i128 %i.ay, %i.az
  %i.bb = getelementptr i8, ptr %i.ax, i64 16
  %i.bc = getelementptr i8, ptr %0, i64 16
  %i.bd = load i128, ptr %i.bb, align 1
  %i.be = load i128, ptr %i.bc, align 1
  %i.bf = xor i128 %i.bd, %i.be
  %i.bg = or i128 %i.ba, %i.bf
  %i.bh = icmp ne i128 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %.not.i25.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i25.not.i, label %bb.h, label %.find_ref_delta_children.exit.loopexit_crit_edge, !llvm.loop !244

.find_ref_delta_children.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %find_ref_delta_children.exit, !llvm.loop !244

find_ref_delta_children.exit:                     ; preds = %bb.h, %.critedge.i, %.find_ref_delta_children.exit.loopexit_crit_edge, %bb.a, %find_ref_delta.exit.i
  %storemerge22.i = phi i32 [ 0, %find_ref_delta.exit.i ], [ 0, %bb.a ], [ %.019.lcssa.i, %.critedge.i ], [ %.019.lcssa.i, %.find_ref_delta_children.exit.loopexit_crit_edge ], [ %.019.lcssa.i, %bb.h ] ; 2 uses
  %storemerge.i = phi i32 [ -1, %find_ref_delta.exit.i ], [ -1, %bb.a ], [ %smax.i, %.critedge.i ], [ %i.aw, %.find_ref_delta_children.exit.loopexit_crit_edge ], [ %smax.i, %bb.h ] ; 2 uses
  store i32 %storemerge22.i, ptr %i.c, align 8, !tbaa !15
  store i32 %storemerge.i, ptr %i.d, align 4, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !81 ; 3 uses
  %i.bl = load i32, ptr @nr_ofs_deltas, align 4, !tbaa !15 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i17, label %find_ofs_delta_children.exit

.lr.ph.i.i17:                                     ; preds = %find_ref_delta_children.exit
  %i.bn = load ptr, ptr @ofs_deltas, align 8, !tbaa !77 ; 3 uses
  %i.bo = load ptr, ptr @objects, align 8, !tbaa !73
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i.i17
  %.01629.i.i18 = phi i32 [ %i.bl, %.lr.ph.i.i17 ], [ %spec.select26.i.i24, %bb.l ] ; 2 uses
  %.01728.i.i19 = phi i32 [ 0, %.lr.ph.i.i17 ], [ %spec.select.i.i23, %bb.l ] ; 3 uses
  %i.bp = sub nsw i32 %.01629.i.i18, %.01728.i.i19
  %i.bq = lshr i32 %i.bp, 1
  %i.br = add nuw nsw i32 %i.bq, %.01728.i.i19    ; 4 uses
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !111
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [64 x i8], ptr %i.bo, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 57
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !85  ; 2 uses
  %.not.i.i.i20 = icmp eq i8 %i.bz, 6
  br i1 %.not.i.i.i20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = sext i8 %i.bz to i32
  %i.cb = sub nsw i32 6, %i.ca
  br label %compare_ofs_delta_bases.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.cc = load i64, ptr %i.bt, align 8, !tbaa !221
  %i.cd = tail call i32 @llvm.scmp.i32.i64(i64 %i.bk, i64 %i.cc)
  br label %compare_ofs_delta_bases.exit.i.i

compare_ofs_delta_bases.exit.i.i:                 ; preds = %bb.k, %bb.j
  %.0.i.i.i21 = phi i32 [ %i.cb, %bb.j ], [ %i.cd, %bb.k ] ; 2 uses
  %.not.i.i22 = icmp eq i32 %.0.i.i.i21, 0
  br i1 %.not.i.i22, label %find_ofs_delta.exit.i, label %bb.l

bb.l:                                             ; preds = %compare_ofs_delta_bases.exit.i.i
  %i.ce = icmp slt i32 %.0.i.i.i21, 0             ; 2 uses
  %i.cf = add nuw nsw i32 %i.br, 1
  %spec.select.i.i23 = select i1 %i.ce, i32 %.01728.i.i19, i32 %i.cf ; 3 uses
  %spec.select26.i.i24 = select i1 %i.ce, i32 %i.br, i32 %.01629.i.i18 ; 2 uses
  %i.cg = icmp slt i32 %spec.select.i.i23, %spec.select26.i.i24
  br i1 %i.cg, label %bb.i, label %._crit_edge.loopexit.i.i25

._crit_edge.loopexit.i.i25:                       ; preds = %bb.l
  %i.ch = xor i32 %spec.select.i.i23, -1
  br label %find_ofs_delta.exit.i

find_ofs_delta.exit.i:                            ; preds = %compare_ofs_delta_bases.exit.i.i, %._crit_edge.loopexit.i.i25
  %.2.i.i26 = phi i32 [ %i.ch, %._crit_edge.loopexit.i.i25 ], [ %i.br, %compare_ofs_delta_bases.exit.i.i ] ; 7 uses
  %i.ci = add nsw i32 %i.bl, -1                   ; 3 uses
  %i.cj = icmp slt i32 %.2.i.i26, 0
  br i1 %i.cj, label %find_ofs_delta_children.exit, label %.preheader.i27

.preheader.i27:                                   ; preds = %find_ofs_delta.exit.i
  %.not.i28 = icmp eq i32 %.2.i.i26, 0
  br i1 %.not.i28, label %.critedge.i30, label %.lr.ph.i29.a

.lr.ph.i29.a:                                     ; preds = %.preheader.i27, %bb.m
  %.01924.i = phi i32 [ %3, %bb.m ], [ %.2.i.i26, %.preheader.i27 ] ; 4 uses
  %2 = zext nneg i32 %.01924.i to i64
  %i.ck = getelementptr [16 x i8], ptr %i.bn, i64 %2
  %i.cl = getelementptr i8, ptr %i.ck, i64 -16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !221
  %i.cn = icmp eq i64 %i.cm, %i.bk
  br i1 %i.cn, label %bb.m, label %.critedge.i30

bb.m:                                             ; preds = %.lr.ph.i29.a
  %3 = add nsw i32 %.01924.i, -1
  %i.co = icmp sgt i32 %.01924.i, 1
  br i1 %i.co, label %.lr.ph.i29.a, label %.critedge.i30, !llvm.loop !245

.critedge.i30:                                    ; preds = %bb.m, %.lr.ph.i29.a, %.preheader.i27
  %.019.lcssa.i31 = phi i32 [ 0, %.preheader.i27 ], [ %.01924.i, %.lr.ph.i29.a ], [ 0, %bb.m ] ; 3 uses
  %smax.i32 = tail call i32 @llvm.smax.i32(i32 %.2.i.i26, i32 %i.ci) ; 2 uses
  %i.cp = icmp sgt i32 %i.ci, %.2.i.i26
  br i1 %i.cp, label %.lr.ph60, label %find_ofs_delta_children.exit

.lr.ph60:                                         ; preds = %.critedge.i30
  %4 = zext nneg i32 %.2.i.i26 to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %i.cq = trunc nuw i64 %indvars.iv.next.i34 to i32 ; 2 uses
  %i.cr = icmp sgt i32 %i.ci, %i.cq
  br i1 %i.cr, label %bb.o, label %find_ofs_delta_children.exit, !llvm.loop !246

bb.o:                                             ; preds = %.lr.ph60, %bb.n
  %i.cs = phi i32 [ %.2.i.i26, %.lr.ph60 ], [ %i.cq, %bb.n ]
  %indvars.iv.i3359 = phi i64 [ %4, %.lr.ph60 ], [ %indvars.iv.next.i34, %bb.n ]
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i3359, 1 ; 3 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %indvars.iv.next.i34
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !221
  %i.cv = icmp eq i64 %i.cu, %i.bk
  br i1 %i.cv, label %bb.n, label %.find_ofs_delta_children.exit.loopexit_crit_edge, !llvm.loop !246

.find_ofs_delta_children.exit.loopexit_crit_edge: ; preds = %bb.o
  br label %find_ofs_delta_children.exit, !llvm.loop !246

find_ofs_delta_children.exit:                     ; preds = %bb.n, %.critedge.i30, %.find_ofs_delta_children.exit.loopexit_crit_edge, %find_ref_delta_children.exit, %find_ofs_delta.exit.i
  %storemerge21.i = phi i32 [ 0, %find_ofs_delta.exit.i ], [ 0, %find_ref_delta_children.exit ], [ %.019.lcssa.i31, %.critedge.i30 ], [ %.019.lcssa.i31, %.find_ofs_delta_children.exit.loopexit_crit_edge ], [ %.019.lcssa.i31, %bb.n ] ; 2 uses
  %storemerge.i16 = phi i32 [ -1, %find_ofs_delta.exit.i ], [ -1, %find_ref_delta_children.exit ], [ %smax.i32, %.critedge.i30 ], [ %i.cs, %.find_ofs_delta_children.exit.loopexit_crit_edge ], [ %smax.i32, %bb.n ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %storemerge21.i, ptr %i.cx, align 8, !tbaa !15
  store i32 %storemerge.i16, ptr %i.cw, align 4, !tbaa !15
  %i.cy = add i32 %storemerge.i, 2
  %i.cz = add i32 %storemerge22.i, %storemerge21.i
  %i.da = sub i32 %i.cy, %i.cz
  %i.db = add i32 %i.da, %storemerge.i16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !238
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @prune_base_data(ptr nofree noundef readnone captures(address) %0) unnamed_addr #18 {
bb.a:
  %i.a = load i64, ptr @base_cache_used, align 8, !tbaa !31 ; 4 uses
  %i.b = load i64, ptr @base_cache_limit, align 8, !tbaa !31 ; 3 uses
  %.not = icmp ugt i64 %i.a, %i.b
  br i1 %.not, label %.preheader36, label %.loopexit

.preheader36:                                     ; preds = %bb.a
  %.01738 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @done_head, i64 8), align 8, !tbaa !234 ; 2 uses
  %.not2139 = icmp eq ptr %.01738, @done_head
  br i1 %.not2139, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.c, %.preheader36
  %base_cache_used.promoted42 = phi i64 [ %i.a, %.preheader36 ], [ %base_cache_used.promoted4250, %bb.c ]
  %.11843 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @work_head, i64 8), align 8, !tbaa !234 ; 2 uses
  %.not2244 = icmp eq ptr %.11843, @work_head
  br i1 %.not2244, label %.loopexit, label %.lr.ph47

.lr.ph:                                           ; preds = %.preheader36, %bb.c
  %base_cache_used.promoted4251 = phi i64 [ %base_cache_used.promoted4250, %bb.c ], [ %i.a, %.preheader36 ] ; 2 uses
  %.01740 = phi ptr [ %.017, %bb.c ], [ %.01738, %.preheader36 ] ; 5 uses
  %i.c = phi i64 [ %i.m, %bb.c ], [ %i.a, %.preheader36 ] ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %.01740, i64 -40
  %i.e = getelementptr inbounds i8, ptr %.01740, i64 -8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !235
  %.not26 = icmp ne i32 %i.f, 0
  %i.g = icmp eq ptr %i.d, %0
  %or.cond = select i1 %.not26, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.01740, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !236  ; 2 uses
  %.not27 = icmp eq ptr %i.i, null
  br i1 %.not27, label %bb.c, label %free_base_data.exit

free_base_data.exit:                              ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.i) #24
  store ptr null, ptr %i.h, align 8, !tbaa !236
  %i.j = getelementptr inbounds nuw i8, ptr %.01740, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !237
  %i.l = sub i64 %i.c, %i.k                       ; 4 uses
  store i64 %i.l, ptr @base_cache_used, align 8, !tbaa !31
  %.not28 = icmp ugt i64 %i.l, %i.b
  br i1 %.not28, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %free_base_data.exit, %.lr.ph
  %base_cache_used.promoted4250 = phi i64 [ %base_cache_used.promoted4251, %bb.b ], [ %i.l, %free_base_data.exit ], [ %base_cache_used.promoted4251, %.lr.ph ] ; 2 uses
  %i.m = phi i64 [ %i.c, %bb.b ], [ %i.l, %free_base_data.exit ], [ %i.c, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %.01740, i64 8
  %.017 = load ptr, ptr %i.n, align 8, !tbaa !234 ; 2 uses
  %.not21 = icmp eq ptr %.017, @done_head
  br i1 %.not21, label %.preheader, label %.lr.ph, !llvm.loop !247

.lr.ph47:                                         ; preds = %.preheader, %bb.e
  %.11845 = phi ptr [ %.118, %bb.e ], [ %.11843, %.preheader ] ; 5 uses
  %i.o = phi i64 [ %i.y, %bb.e ], [ %base_cache_used.promoted42, %.preheader ] ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.11845, i64 -40
  %i.q = getelementptr inbounds i8, ptr %.11845, i64 -8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !235
  %.not23 = icmp ne i32 %i.r, 0
  %i.s = icmp eq ptr %i.p, %0
  %or.cond29 = select i1 %.not23, i1 true, i1 %i.s
  br i1 %or.cond29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph47
  %i.t = getelementptr inbounds nuw i8, ptr %.11845, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !236  ; 2 uses
  %.not24 = icmp eq ptr %i.u, null
  br i1 %.not24, label %bb.e, label %free_base_data.exit31

free_base_data.exit31:                            ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.u) #24
  store ptr null, ptr %i.t, align 8, !tbaa !236
  %i.v = getelementptr inbounds nuw i8, ptr %.11845, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !237
  %i.x = sub i64 %i.o, %i.w                       ; 3 uses
  store i64 %i.x, ptr @base_cache_used, align 8, !tbaa !31
  %.not25 = icmp ugt i64 %i.x, %i.b
  br i1 %.not25, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %free_base_data.exit31, %.lr.ph47
  %i.y = phi i64 [ %i.o, %bb.d ], [ %i.x, %free_base_data.exit31 ], [ %i.o, %.lr.ph47 ]
  %i.z = getelementptr inbounds nuw i8, ptr %.11845, i64 8
  %.118 = load ptr, ptr %i.z, align 8, !tbaa !234 ; 2 uses
  %.not22 = icmp eq ptr %.118, @work_head
  br i1 %.not22, label %.loopexit, label %.lr.ph47, !llvm.loop !248

.loopexit:                                        ; preds = %free_base_data.exit, %bb.e, %free_base_data.exit31, %.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @patch_delta(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @hash_object_file(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_key_delete(i32 noundef) local_unnamed_addr #3

declare ptr @hashfd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @strbuf_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @finalize_hashfile(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @fixup_pack_header_footer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @delta_pos_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #19 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !113
  %i.b = load ptr, ptr %1, align 8, !tbaa !113
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !115
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !115
  %i.g = sub nsw i32 %i.d, %i.f
  ret i32 %i.g
}

declare i32 @repo_has_promisor_remote(ptr noundef) local_unnamed_addr #2

declare i32 @odb_read_object_info_extended(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @oid_array_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @promisor_remote_get_direct(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @oid_array_clear(ptr noundef) local_unnamed_addr #2

declare i32 @check_object_signature(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @crc32_begin(ptr noundef) local_unnamed_addr #2

declare void @hashwrite(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @crc32_end(ptr noundef) local_unnamed_addr #2

declare void @hashflush(ptr noundef) local_unnamed_addr #2

declare ptr @repo_config_values(ptr noundef) local_unnamed_addr #2

declare void @git_deflate_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @git_deflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @git_deflate_end(ptr noundef) local_unnamed_addr #2

declare i32 @get_max_object_index(ptr noundef) local_unnamed_addr #2

declare ptr @start_delayed_progress(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @get_indexed_object(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #12

declare i32 @printf_ln(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

declare void @fsync_component_or_die(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_special_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.strbuf, align 8             ; 6 uses
end_hunk_0
