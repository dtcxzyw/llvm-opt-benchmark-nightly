Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/blame?download=true
inline.NumInlined: 205
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@fill_origin_blob:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %.040.i.i.i, i64 16
  store i32 1, ptr %i.cr, align 8, !tbaa !222
  call void @hashmap_add(ptr noundef %i.bw, ptr noundef nonnull %.040.i.i.i) #20
  %i.cs = getelementptr inbounds nuw i8, ptr %.040.i.i.i, i64 24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %.1.i.i.i = phi ptr [ %.040.i.i.i, %bb.p ], [ %.040.i.i.i, %bb.r ], [ %i.cs, %bb.s ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.02839.i.i.i, i64 1 ; 2 uses
  %.not.i.i10.i = icmp ugt ptr %i.ct, %i.bv
  br i1 %.not.i.i10.i, label %get_fingerprint.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !319

get_fingerprint.exit.i.i:                         ; preds = %bb.t, %.lr.ph.i9.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bn
  br i1 %exitcond.not.i.i, label %get_line_fingerprints.exit.i, label %.lr.ph.i9.i, !llvm.loop !320

get_line_fingerprints.exit.i:                     ; preds = %get_fingerprint.exit.i.i, %find_line_starts.exit.i
  call void @free(ptr noundef %i.bg) #20
  br label %fill_origin_fingerprints.exit

fill_origin_fingerprints.exit:                    ; preds = %get_line_fingerprints.exit.i, %bb.j, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @blame_chunk_cb(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4) #2 {
bb.a:
  %i.a = sub nsw i64 %0, %2                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !217
  %.not = icmp eq i64 %i.a, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.24) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.f = trunc i64 %2 to i32
  %i.g = trunc i64 %i.a to i32
  %i.h = add nsw i64 %3, %2                       ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = trunc i64 %1 to i32
  %i.k = load ptr, ptr %4, align 8, !tbaa !215
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !216
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !218
  tail call fastcc void @blame_chunk(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.j, ptr noundef %i.k, ptr noundef %i.m, i32 noundef %i.o)
  %i.p = add nsw i64 %1, %0
  %i.q = sub i64 %i.p, %i.h
  store i64 %i.q, ptr %i.b, align 8, !tbaa !217
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @blame_chunk(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) unnamed_addr #2 {
bb.a:
  %9 = alloca %struct.hashmap_iter, align 8       ; 5 uses
  %10 = alloca %struct.line_number_mapping, align 4 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !124
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr null, ptr %i.b, align 8, !tbaa !51
  %.not140 = icmp eq ptr %i.d, null
  br i1 %.not140, label %reverse_blame.exit96, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %6, null
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %blame_origin_incref.exit
  %.0142 = phi ptr [ %i.d, %.lr.ph ], [ %i.i, %blame_origin_incref.exit ] ; 14 uses
  %.074141 = phi ptr [ null, %.lr.ph ], [ %.0142, %blame_origin_incref.exit ] ; 3 uses
  %i.e = phi ptr [ null, %.lr.ph ], [ %i.ai, %blame_origin_incref.exit ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0142, i64 24 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !67   ; 3 uses
  %i.h = icmp slt i32 %i.g, %2
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %.0142, align 8, !tbaa !53 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0142, i64 12 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !68
  %i.l = add nsw i32 %i.k, %i.g
  %i.m = icmp sgt i32 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = sub nsw i32 %2, %i.g                     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0142, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.q = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #20 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.p, ptr %i.r, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %.0142, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load <2 x i32>, ptr %i.s, align 8, !tbaa !43
  store <2 x i32> %i.u, ptr %i.t, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %.0142, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !54
  %i.x = add nsw i32 %i.w, %i.n
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.x, ptr %i.y, align 8, !tbaa !54
  %i.z = load i32, ptr %i.f, align 8, !tbaa !67
  %i.aa = add nsw i32 %i.z, %i.n
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !67
  %i.ac = load i32, ptr %i.j, align 4, !tbaa !68
  %i.ad = sub nsw i32 %i.ac, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !68
  store i32 %i.n, ptr %i.j, align 4, !tbaa !68
  %i.af = getelementptr inbounds nuw i8, ptr %.0142, i64 28
  store i32 0, ptr %i.af, align 4, !tbaa !71
  store ptr %i.e, ptr %i.q, align 8, !tbaa !53
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.0142, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !66
  tail call void @blame_origin_decref(ptr noundef %i.ah)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = phi ptr [ %i.e, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  br i1 %.not.i, label %blame_origin_incref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %6, align 8, !tbaa !43
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %6, align 8, !tbaa !43
  br label %blame_origin_incref.exit

blame_origin_incref.exit:                         ; preds = %bb.f, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.0142, i64 16
  store ptr %6, ptr %i.al, align 8, !tbaa !66
  %i.am = load i32, ptr %i.f, align 8, !tbaa !67
  %i.an = add nsw i32 %i.am, %3
  store i32 %i.an, ptr %i.f, align 8, !tbaa !67
  store ptr %.074141, ptr %.0142, align 8, !tbaa !53
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge.thread183, label %bb.b, !llvm.loop !323

.critedge.thread183:                              ; preds = %blame_origin_incref.exit
  store ptr %i.ai, ptr %i.a, align 8
  br label %bb.h

.critedge:                                        ; preds = %bb.b
  store ptr %i.e, ptr %i.a, align 8
  %.not84 = icmp eq ptr %.074141, null
  br i1 %.not84, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge.thread183, %.critedge
  %.0.lcssa189 = phi ptr [ null, %.critedge.thread183 ], [ %.0142, %.critedge ]
  %.074.lcssa188 = phi ptr [ %.0142, %.critedge.thread183 ], [ %.074141, %.critedge ] ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !124   ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !51
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.010.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %.074.lcssa188, %bb.h ] ; 4 uses
  %.079.i = phi ptr [ %.010.i, %.lr.ph.i ], [ %i.ap, %bb.h ]
  %i.aq = load ptr, ptr %.010.i, align 8, !tbaa !53 ; 2 uses
  store ptr %.079.i, ptr %.010.i, align 8, !tbaa !53
  %.not.i89 = icmp eq ptr %i.aq, null
  br i1 %.not.i89, label %reverse_blame.exit, label %.lr.ph.i, !llvm.loop !4

reverse_blame.exit:                               ; preds = %.lr.ph.i
  store ptr %.010.i, ptr %i.ao, align 8, !tbaa !51
  store ptr %.074.lcssa188, ptr %0, align 8, !tbaa !124
  %.0..0..0.132.pre = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %bb.i

bb.i:                                             ; preds = %reverse_blame.exit, %.critedge
  %.0.lcssa182 = phi ptr [ %.0.lcssa189, %reverse_blame.exit ], [ %.0142, %.critedge ] ; 2 uses
  %.0..0.132 = phi ptr [ %.0..0..0.132.pre, %reverse_blame.exit ], [ %i.e, %.critedge ] ; 2 uses
  %.not8.i90 = icmp eq ptr %.0..0.132, null
  br i1 %.not8.i90, label %reverse_blame.exit96, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.i, %.lr.ph.i91
  %.010.i92 = phi ptr [ %i.ar, %.lr.ph.i91 ], [ %.0..0.132, %bb.i ] ; 4 uses
  %.079.i93 = phi ptr [ %.010.i92, %.lr.ph.i91 ], [ %.0.lcssa182, %bb.i ]
  %i.ar = load ptr, ptr %.010.i92, align 8, !tbaa !53 ; 2 uses
  store ptr %.079.i93, ptr %.010.i92, align 8, !tbaa !53
  %.not.i94 = icmp eq ptr %i.ar, null
  br i1 %.not.i94, label %reverse_blame.exit96, label %.lr.ph.i91, !llvm.loop !4

reverse_blame.exit96:                             ; preds = %.lr.ph.i91, %bb.a, %bb.i
  %.07.lcssa.i95 = phi ptr [ %.0.lcssa182, %bb.i ], [ null, %bb.a ], [ %.010.i92, %.lr.ph.i91 ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !51
  %.not85 = icmp eq i32 %8, 0                     ; 2 uses
  br i1 %.not85, label %bb.u, label %bb.j

bb.j:                                             ; preds = %reverse_blame.exit96
  %i.as = sub nsw i32 %4, %2                      ; 5 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.au = zext nneg i32 %i.as to i64              ; 6 uses
  %i.av = tail call ptr @xcalloc(i64 noundef %i.au, i64 noundef 8) #20 ; 2 uses
  %i.aw = add nsw i32 %3, %2                      ; 3 uses
  %i.ax = getelementptr i8, ptr %6, i64 64        ; 2 uses
  %.val.i = load ptr, ptr %i.ax, align 8, !tbaa !134
  %i.ay = getelementptr i8, ptr %7, i64 64        ; 2 uses
  %.val37.i = load ptr, ptr %i.ay, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store i32 %i.aw, ptr %10, align 4, !tbaa !224
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %5, ptr %i.az, align 4, !tbaa !225
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %2, ptr %i.ba, align 4, !tbaa !226
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %i.as, ptr %i.bb, align 4, !tbaa !227
  %i.bc = icmp slt i32 %5, 1
  br i1 %i.bc, label %..lr.ph.i97_crit_edge, label %.preheader.i.i

..lr.ph.i97_crit_edge:                            ; preds = %bb.k
  %.pre = sext i32 %2 to i64
  br label %.lr.ph.i97

.preheader.i.i:                                   ; preds = %bb.k
  %11 = add nsw i32 %5, -1
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %11, i32 10) ; 2 uses
  %i.bd = shl nuw nsw i32 %spec.select.i.i, 1
  %i.be = or disjoint i32 %i.bd, 1
  %i.bf = mul i32 %i.be, %i.as                    ; 4 uses
  %i.bg = add nsw i32 %i.bf, -1
  %12 = sdiv i32 %i.bg, %5
  %i.bh = tail call ptr @xcalloc(i64 noundef %i.au, i64 noundef 4) #20 ; 3 uses
  %i.bi = tail call ptr @xcalloc(i64 noundef %i.au, i64 noundef 4) #20 ; 3 uses
  %i.bj = tail call ptr @xcalloc(i64 noundef %i.au, i64 noundef 4) #20 ; 3 uses
  %13 = sext i32 %i.bf to i64
  %i.bk = tail call ptr @xcalloc(i64 noundef %13, i64 noundef 4) #20 ; 3 uses
  %i.bl = shl nuw nsw i64 %i.au, 2                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bh, i8 -1, i64 %i.bl, i1 false), !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bi, i8 -1, i64 %i.bl, i1 false), !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bj, i8 -1, i64 %i.bl, i1 false), !tbaa !43
  %14 = icmp sgt i32 %i.bf, 0
  br i1 %14, label %.lr.ph5.preheader.i.i, label %._crit_edge.i.i

.lr.ph5.preheader.i.i:                            ; preds = %.preheader.i.i
  %15 = zext nneg i32 %i.bf to i64
  %16 = shl nuw nsw i64 %15, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bk, i8 -1, i64 %16, i1 false), !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph5.preheader.i.i, %.preheader.i.i
  %17 = sext i32 %i.aw to i64
  %18 = getelementptr inbounds [56 x i8], ptr %.val.i, i64 %17
  %19 = sext i32 %2 to i64                        ; 2 uses
  %20 = getelementptr inbounds [56 x i8], ptr %.val37.i, i64 %19
  call fastcc void @fuzzy_find_matching_lines_recurse(i32 noundef %i.aw, i32 noundef %2, i32 noundef %5, i32 noundef %i.as, ptr noundef %18, ptr noundef %20, ptr noundef %i.bk, ptr noundef %i.bj, ptr noundef %i.bi, ptr noundef %i.bh, i32 noundef %spec.select.i.i, i32 noundef %12, ptr noundef %10)
  call void @free(ptr noundef %i.bk) #20
  call void @free(ptr noundef %i.bj) #20
  call void @free(ptr noundef %i.bi) #20
  br label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %..lr.ph.i97_crit_edge, %._crit_edge.i.i
  %.pre-phi = phi i64 [ %.pre, %..lr.ph.i97_crit_edge ], [ %19, %._crit_edge.i.i ]
  %.058.i.i = phi ptr [ null, %..lr.ph.i97_crit_edge ], [ %i.bh, %._crit_edge.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %.not.i98 = icmp eq ptr %.058.i.i, null
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 56
  br label %bb.l

bb.l:                                             ; preds = %scan_parent_range.exit.thread.i, %.lr.ph.i97
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i97 ], [ %indvars.iv.next.i, %scan_parent_range.exit.thread.i ] ; 4 uses
  %i.bn = add nsw i64 %indvars.iv.i, %.pre-phi    ; 3 uses
  br i1 %.not.i98, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.058.i.i, i64 %indvars.iv.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !43 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, -1
  br i1 %i.bq, label %scan_parent_range.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.br = load ptr, ptr %i.ax, align 8, !tbaa !134
  %i.bs = load i32, ptr %i.bm, align 8, !tbaa !43 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i.i, label %.scan_parent_range.exit.thread41.i_crit_edge

.scan_parent_range.exit.thread41.i_crit_edge:     ; preds = %bb.n
  %.pre159 = trunc nsw i64 %i.bn to i32
  br label %scan_parent_range.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.bu = load ptr, ptr %i.ay, align 8, !tbaa !134
  %i.bv = getelementptr inbounds [56 x i8], ptr %i.bu, i64 %i.bn
  %wide.trip.count.i.i = zext nneg i32 %i.bs to i64
  %i.bw = trunc nsw i64 %i.bn to i32              ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.t, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.t ] ; 4 uses
  %.027.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 4 uses
  %.02126.i.i = phi i32 [ 10, %.lr.ph.i.i ], [ %.122.i.i, %bb.t ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [56 x i8], ptr %i.br, i64 %indvars.iv.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @hashmap_iter_init(ptr noundef %i.bx, ptr noundef nonnull %9) #20
  %i.by = call ptr @hashmap_iter_next(ptr noundef nonnull %9) #20 ; 2 uses
  %.not15.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not15.i.i.i, label %fingerprint_similarity.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %bb.q
  %.017.i.i.i = phi ptr [ %i.cf, %bb.q ], [ %i.by, %bb.o ] ; 2 uses
  %.01016.i.i.i = phi i32 [ %.1.i.i.i, %bb.q ], [ 0, %bb.o ] ; 2 uses
  %i.bz = call ptr @hashmap_get(ptr noundef %i.bv, ptr noundef nonnull %.017.i.i.i, ptr noundef null) #20 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not14.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !222
  %i.cc = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 16
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !222
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.cd)
  %i.ce = add nsw i32 %..i.i.i, %.01016.i.i.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.i
  %.1.i.i.i = phi i32 [ %i.ce, %bb.p ], [ %.01016.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.cf = call ptr @hashmap_iter_next(ptr noundef nonnull %9) #20 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %fingerprint_similarity.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !12

fingerprint_similarity.exit.i.i:                  ; preds = %bb.q, %bb.o
  %.010.lcssa.i.i.i = phi i32 [ 0, %bb.o ], [ %.1.i.i.i, %bb.q ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.cg = icmp slt i32 %.010.lcssa.i.i.i, %.02126.i.i
  br i1 %i.cg, label %bb.t, label %bb.r

bb.r:                                             ; preds = %fingerprint_similarity.exit.i.i
  %i.ch = icmp eq i32 %.010.lcssa.i.i.i, %.02126.i.i
  %i.ci = icmp ne i32 %.027.i.i, -1
  %or.cond.i.i = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond.i.i, label %bb.s, label %._crit_edge45.i

._crit_edge45.i:                                  ; preds = %bb.r
  %.pre.i = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = sub nsw i32 %.027.i.i, %i.bw
  %i.ck = call i32 @llvm.abs.i32(i32 %i.cj, i1 true)
  %i.cl = trunc i64 %indvars.iv.i.i to i32        ; 2 uses
  %i.cm = sub i32 %i.cl, %i.bw
  %i.cn = call i32 @llvm.abs.i32(i32 %i.cm, i1 true)
  %i.co = icmp samesign ult i32 %i.ck, %i.cn
  %spec.select52.i = select i1 %i.co, i32 %.027.i.i, i32 %i.cl
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge45.i, %fingerprint_similarity.exit.i.i
  %.122.i.i = phi i32 [ %.02126.i.i, %fingerprint_similarity.exit.i.i ], [ %.02126.i.i, %bb.s ], [ %.010.lcssa.i.i.i, %._crit_edge45.i ]
  %.1.i.i = phi i32 [ %.027.i.i, %fingerprint_similarity.exit.i.i ], [ %spec.select52.i, %bb.s ], [ %.pre.i, %._crit_edge45.i ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %scan_parent_range.exit.i, label %bb.o, !llvm.loop !324

scan_parent_range.exit.i:                         ; preds = %bb.t
  %i.cp = icmp sgt i32 %.1.i.i, -1                ; 2 uses
  %spec.select = zext i1 %i.cp to i32
  %spec.select199 = select i1 %i.cp, i32 %.1.i.i, i32 %i.bw
  br label %scan_parent_range.exit.thread.i

scan_parent_range.exit.thread.i:                  ; preds = %scan_parent_range.exit.i, %.scan_parent_range.exit.thread41.i_crit_edge, %bb.m
  %.sink = phi i32 [ 1, %bb.m ], [ %spec.select, %scan_parent_range.exit.i ], [ 0, %.scan_parent_range.exit.thread41.i_crit_edge ]
  %.pre-phi160.sink = phi i32 [ %i.bp, %bb.m ], [ %spec.select199, %scan_parent_range.exit.i ], [ %.pre159, %.scan_parent_range.exit.thread41.i_crit_edge ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i ; 2 uses
  store i32 %.sink, ptr %i.cq, align 4, !tbaa !329
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 %.pre-phi160.sink, ptr %i.cr, align 4, !tbaa !330
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.au
  br i1 %exitcond.not.i, label %guess_line_blames.exit, label %bb.l, !llvm.loop !325

guess_line_blames.exit:                           ; preds = %scan_parent_range.exit.thread.i
  call void @free(ptr noundef %.058.i.i) #20
  br label %bb.u

bb.u:                                             ; preds = %guess_line_blames.exit, %bb.j, %reverse_blame.exit96
  %.076 = phi ptr [ %i.av, %guess_line_blames.exit ], [ null, %bb.j ], [ null, %reverse_blame.exit96 ] ; 2 uses
  %.not86149 = icmp eq ptr %.07.lcssa.i95, null
  br i1 %.not86149, label %.critedge2, label %.lr.ph152

.lr.ph152:                                        ; preds = %bb.u
  %i.cs = sext i32 %2 to i64
  %i.ct = sub nsw i64 0, %i.cs
  %invariant.gep = getelementptr [8 x i8], ptr %.076, i64 %i.ct
  %.not.i44.i = icmp eq ptr %6, null
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph152, %ignore_blame_entry.exit
  %.1151 = phi ptr [ %.07.lcssa.i95, %.lr.ph152 ], [ %i.cx, %ignore_blame_entry.exit ] ; 11 uses
  %.175150 = phi ptr [ null, %.lr.ph152 ], [ %.2, %ignore_blame_entry.exit ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1151, i64 24 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !67 ; 3 uses
  %i.cw = icmp slt i32 %i.cv, %4
  br i1 %i.cw, label %bb.w, label %.critedge2

bb.w:                                             ; preds = %bb.v
  %i.cx = load ptr, ptr %.1151, align 8, !tbaa !53 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1151, i64 12 ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !68 ; 2 uses
  %i.da = add nsw i32 %i.cz, %i.cv
  %i.db = icmp sgt i32 %i.da, %4
  br i1 %i.db, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dc = sub nsw i32 %4, %i.cv                   ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.1151, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !66 ; 4 uses
  %.not.i99 = icmp eq ptr %i.de, null
  br i1 %.not.i99, label %blame_origin_incref.exit100, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = load i32, ptr %i.de, align 8, !tbaa !43
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !43
  br label %blame_origin_incref.exit100

blame_origin_incref.exit100:                      ; preds = %bb.x, %bb.y
  %i.dh = call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #20 ; 7 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store ptr %i.de, ptr %i.di, align 8, !tbaa !66
  %i.dj = getelementptr inbounds nuw i8, ptr %.1151, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dl = load <2 x i32>, ptr %i.dj, align 8, !tbaa !43
  store <2 x i32> %i.dl, ptr %i.dk, align 8, !tbaa !43
  %i.dm = getelementptr inbounds nuw i8, ptr %.1151, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !54
  %i.do = add nsw i32 %i.dn, %i.dc
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 %i.do, ptr %i.dp, align 8, !tbaa !54
  %i.dq = load i32, ptr %i.cu, align 8, !tbaa !67
  %i.dr = add nsw i32 %i.dq, %i.dc
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i32 %i.dr, ptr %i.ds, align 8, !tbaa !67
  %i.dt = load i32, ptr %i.cy, align 4, !tbaa !68
  %i.du = sub nsw i32 %i.dt, %i.dc
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !68
  store i32 %i.dc, ptr %i.cy, align 4, !tbaa !68
  %i.dw = getelementptr inbounds nuw i8, ptr %.1151, i64 28
  store i32 0, ptr %i.dw, align 4, !tbaa !71
  store ptr %.175150, ptr %i.dh, align 8, !tbaa !53
  br label %bb.z

bb.z:                                             ; preds = %blame_origin_incref.exit100, %bb.w
  %i.dx = phi i32 [ %i.dc, %blame_origin_incref.exit100 ], [ %i.cz, %bb.w ] ; 2 uses
  %.2 = phi ptr [ %i.dh, %blame_origin_incref.exit100 ], [ %.175150, %bb.w ] ; 2 uses
  br i1 %.not85, label %bb.am, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dy = load i32, ptr %i.cu, align 8, !tbaa !67
  %i.dz = sext i32 %i.dy to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dz ; 4 uses
  %i.ea = icmp sgt i32 %i.dx, 0
  br i1 %i.ea, label %.lr.ph.i101, label %._crit_edge.thread.i

end_hunk_0
