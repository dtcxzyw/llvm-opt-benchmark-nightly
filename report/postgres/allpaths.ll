Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/allpaths?download=true
inline.NumInlined: 95
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@make_one_rel:bb.a

bb.o:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.036 = phi double [ 0.000000e+00, %.lr.ph ], [ %.2, %bb.s ] ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = load ptr, ptr %i.bq, align 8            ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = call zeroext i1 @is_dummy_rel(ptr noundef nonnull %i.br) #11
  br i1 %i.bt, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bv = load i32, ptr %i.bu, align 4
  switch i32 %i.bv, label %bb.s [
    i32 0, label %bb.r
    i32 2, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 192
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = uitofp i32 %i.bx to double
  %i.bz = fadd double %.036, %i.by
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.2 = phi double [ %.036, %bb.p ], [ %.036, %bb.o ], [ %i.bz, %bb.r ], [ %.036, %bb.q ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ca = load i32, ptr %i.w, align 8             ; 3 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = icmp samesign ult i64 %indvars.iv.next, %i.cb
  br i1 %i.cc, label %bb.o, label %._crit_edge, !llvm.loop !10

._crit_edge.thread:                               ; preds = %setup_simple_grouped_rels.exit, %.preheader.i
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 608
  store double 0.000000e+00, ptr %i.cd, align 8
  br label %set_base_rel_pathlists.exit

._crit_edge:                                      ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 608
  store double %.2, ptr %i.ce, align 8
  %i.cf = icmp ugt i32 %i.ca, 1
  br i1 %i.cf, label %.lr.ph.i30, label %set_base_rel_pathlists.exit

.lr.ph.i30:                                       ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i30
  %i.ci = phi i32 [ %i.ca, %.lr.ph.i30 ], [ %i.ct, %bb.w ] ; 2 uses
  %indvars.iv.i31 = phi i64 [ 1, %.lr.ph.i30 ], [ %indvars.iv.next.i33, %bb.w ] ; 4 uses
  %i.cj = load ptr, ptr %i.cg, align 8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv.i31
  %i.cl = load ptr, ptr %i.ck, align 8            ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.co = load i32, ptr %i.cn, align 4
  %.not.i32 = icmp eq i32 %i.co, 0
  br i1 %.not.i32, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cp = load ptr, ptr %i.ch, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.i31
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = trunc nuw i64 %indvars.iv.i31 to i32
  call fastcc void @set_rel_pathlist(ptr noundef nonnull %0, ptr noundef nonnull %i.cl, i32 noundef %i.cs, ptr noundef %i.cr)
  %.pre.i34 = load i32, ptr %i.w, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.ct = phi i32 [ %i.ci, %bb.u ], [ %i.ci, %bb.t ], [ %.pre.i34, %bb.v ] ; 2 uses
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i31, 1 ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = icmp samesign ult i64 %indvars.iv.next.i33, %i.cu
  br i1 %i.cv, label %bb.t, label %set_base_rel_pathlists.exit, !llvm.loop !11

set_base_rel_pathlists.exit:                      ; preds = %bb.w, %._crit_edge.thread, %._crit_edge
  %i.cw = call fastcc ptr @make_rel_from_joinlist(ptr noundef nonnull %0, ptr noundef %1)
  ret ptr %i.cw
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @is_dummy_rel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_rel_from_joinlist(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %list_length.exit.thread, label %list_length.exit

list_length.exit:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 6 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %list_length.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %list_length.exit
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.03444 = phi ptr [ null, %.lr.ph ], [ %i.q, %bb.f ]
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = load i32, ptr %i.g, align 4
  switch i32 %i.h, label %bb.e [
    i32 65, label %bb.c
    i32 1, label %bb.d
  ]

.critedge:                                        ; preds = %bb.f
  %i.i = icmp eq i32 %i.b, 1
  br i1 %i.i, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = tail call ptr @find_base_rel(ptr noundef %0, i32 noundef %i.k) #11
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.m = tail call fastcc ptr @make_rel_from_joinlist(ptr noundef %0, ptr noundef nonnull %i.g)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.n = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.o = load i32, ptr %i.g, align 4
  %i.p = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10, i32 noundef %i.o) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 3888, ptr noundef nonnull @__func__.make_rel_from_joinlist) #11
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %.032 = phi ptr [ %i.l, %bb.c ], [ %i.m, %bb.d ]
  %i.q = tail call ptr @lappend(ptr noundef %.03444, ptr noundef %.032) #11 ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr %i.a, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.b, label %.critedge, !llvm.loop !12

bb.g:                                             ; preds = %.critedge
  %i.u = getelementptr i8, ptr %i.q, i64 16
  %.034.val = load ptr, ptr %i.u, align 8
  %i.v = load ptr, ptr %.034.val, align 8
  br label %list_length.exit.thread

bb.h:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.q, ptr %i.w, align 8
  %i.x = load ptr, ptr @join_search_hook, align 8 ; 2 uses
  %.not40 = icmp eq ptr %i.x, null
  br i1 %.not40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call ptr %i.x(ptr noundef nonnull %0, i32 noundef %i.b, ptr noundef %i.q) #11
  br label %list_length.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.z = load i8, ptr @enable_geqo, align 1, !range !5, !noundef !6
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = load i32, ptr @geqo_threshold, align 4
  %.not41 = icmp sge i32 %i.b, %i.ab
  %or.cond.not = select i1 %i.aa, i1 %.not41, i1 false
  br i1 %or.cond.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @geqo(ptr noundef nonnull %0, i32 noundef %i.b, ptr noundef %i.q) #11
  br label %list_length.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ad = tail call ptr @standard_join_search(ptr noundef nonnull %0, i32 noundef %i.b, ptr noundef %i.q)
  br label %list_length.exit.thread

list_length.exit.thread:                          ; preds = %bb.a, %list_length.exit, %bb.l, %bb.k, %bb.i, %bb.g
  %.0 = phi ptr [ %i.ad, %bb.l ], [ %i.v, %bb.g ], [ %i.y, %bb.i ], [ %i.ac, %bb.k ], [ null, %list_length.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @add_paths_to_append_rel(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %3 = alloca %struct.AppendPathInput, align 8    ; 14 uses
  %4 = alloca %struct.AppendPathInput, align 8    ; 14 uses
  %5 = alloca %struct.AppendPathInput, align 8    ; 11 uses
  %6 = alloca %struct.AppendPathInput, align 8    ; 6 uses
  %7 = alloca %struct.AppendPathInput, align 8    ; 6 uses
  %8 = alloca %struct.AppendPathInput, align 8    ; 7 uses
  %9 = alloca %struct.AppendPathInput, align 8    ; 11 uses
  %10 = alloca %struct.AppendPathInput, align 8   ; 11 uses
  %11 = alloca %struct.AppendPathInput, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.c = load i8, ptr @enable_parallel_append, align 1, !range !5, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.f = load i8, ptr %i.e, align 2, !range !5, !noundef !6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i8 [ 0, %bb.a ], [ %i.f, %bb.b ]     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 9 uses
  %.not = icmp eq ptr %2, null                    ; 7 uses
  br i1 %.not, label %.split487, label %.lr.ph356

.lr.ph356:                                        ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.h, align 4
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph513, label %.critedge

.lr.ph513:                                        ; preds = %.lr.ph356, %.critedge277
  %.0233349512 = phi i1 [ %.1234, %.critedge277 ], [ true, %.lr.ph356 ]
  %.0230350511 = phi i8 [ %.2232, %.critedge277 ], [ %i.g, %.lr.ph356 ]
  %.0226351510 = phi ptr [ %.1227.lcssa, %.critedge277 ], [ null, %.lr.ph356 ] ; 3 uses
  %.0223352509 = phi ptr [ %.1224.lcssa, %.critedge277 ], [ null, %.lr.ph356 ] ; 3 uses
  %.0195354508 = phi i1 [ %.1196, %.critedge277 ], [ true, %.lr.ph356 ]
  %.0355507 = phi i1 [ %.1, %.critedge277 ], [ true, %.lr.ph356 ]
  %indvars.iv408506.a = phi i64 [ %indvars.iv.next409.a, %.critedge277 ], [ 0, %.lr.ph356 ] ; 2 uses
  %i.t = load ptr, ptr %i.i, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv408506.a
  %i.v = load ptr, ptr %i.u, align 8              ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8
  %.not262 = icmp eq ptr %i.x, null
  br i1 %.not262, label %bb.f, label %bb.d

.critedge:                                        ; preds = %.critedge277, %.lr.ph356
  %.0355.lcssa = phi i1 [ true, %.lr.ph356 ], [ %.1, %.critedge277 ]
  %.0195354.lcssa = phi i1 [ true, %.lr.ph356 ], [ %.1196, %.critedge277 ] ; 2 uses
  %.0223352.lcssa = phi ptr [ null, %.lr.ph356 ], [ %.1224.lcssa, %.critedge277 ] ; 3 uses
  %.0226351.lcssa = phi ptr [ null, %.lr.ph356 ], [ %.1227.lcssa, %.critedge277 ] ; 3 uses
  %.0230350.lcssa = phi i8 [ %i.g, %.lr.ph356 ], [ %.2232, %.critedge277 ] ; 3 uses
  %.0233349.lcssa = phi i1 [ true, %.lr.ph356 ], [ %.1234, %.critedge277 ] ; 3 uses
  br i1 %.0355.lcssa, label %.split487, label %bb.x

bb.d:                                             ; preds = %.lr.ph513
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call fastcc void @accumulate_append_subpath(ptr noundef nonnull %i.z, ptr noundef %6, ptr noundef null, ptr noundef %i.j)
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph513, %bb.d, %bb.e
  %.1 = phi i1 [ %.0355507, %bb.e ], [ false, %bb.d ], [ false, %.lr.ph513 ] ; 2 uses
  %i.ad = load i8, ptr %i.k, align 8, !range !5, !noundef !6
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not263 = icmp eq ptr %i.ag, null
  br i1 %.not263, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load double, ptr %i.l, align 8          ; 2 uses
  %i.ai = fcmp ogt double %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = call ptr @get_cheapest_fractional_path(ptr noundef nonnull %i.v, double noundef %i.ah) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.0213 = phi ptr [ %i.aj, %bb.i ], [ %i.ag, %bb.h ]
  call fastcc void @accumulate_append_subpath(ptr noundef %.0213, ptr noundef %7, ptr noundef null, ptr noundef %i.m)
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.g, %bb.j
  %.1196 = phi i1 [ %.0195354508, %bb.j ], [ false, %bb.g ], [ false, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not264 = icmp eq ptr %i.al, null
  br i1 %.not264, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %.val292 = load ptr, ptr %i.am, align 8
  %i.an = load ptr, ptr %.val292, align 8         ; 2 uses
  call fastcc void @accumulate_append_subpath(ptr noundef %i.an, ptr noundef %i.n, ptr noundef null, ptr noundef %i.o)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1234 = phi i1 [ %.0233349512, %bb.l ], [ false, %bb.k ] ; 2 uses
  %.0214 = phi ptr [ %i.an, %bb.l ], [ null, %bb.k ] ; 4 uses
  %i.ao = trunc nuw i8 %.0230350511 to i1
  br i1 %i.ao, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.w, align 8
  %i.aq = call ptr @get_cheapest_parallel_safe_total_inner(ptr noundef %i.ap) #11 ; 3 uses
  %i.ar = icmp eq ptr %.0214, null                ; 2 uses
  %i.as = icmp eq ptr %i.aq, null                 ; 2 uses
  %or.cond = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.as, label %.split, label %bb.p

.split:                                           ; preds = %bb.o
  call fastcc void @accumulate_append_subpath(ptr noundef %.0214, ptr noundef %i.p, ptr noundef nonnull %9, ptr noundef %i.q)
  br label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %i.ar, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %.0214, i64 64
  %i.au = load double, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.aw = load double, ptr %i.av, align 8
  %i.ax = fcmp olt double %i.au, %i.aw
  br i1 %i.ax, label %.split235, label %bb.r

.split235:                                        ; preds = %bb.q
  call fastcc void @accumulate_append_subpath(ptr noundef nonnull %.0214, ptr noundef %i.p, ptr noundef nonnull %9, ptr noundef %i.q)
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  call fastcc void @accumulate_append_subpath(ptr noundef nonnull %i.aq, ptr noundef %9, ptr noundef null, ptr noundef %i.q)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n, %.split235, %.split, %bb.m
  %.2232 = phi i8 [ 0, %bb.m ], [ 1, %bb.r ], [ 0, %bb.n ], [ 1, %.split235 ], [ 1, %.split ] ; 2 uses
  %i.ay = load ptr, ptr %i.w, align 8             ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %.not266 = icmp eq ptr %i.ay, null
  br i1 %.not266, label %.critedge277, label %.lr.ph344

.lr.ph344:                                        ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bb = load i32, ptr %i.az, align 4
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph504, label %.critedge277

.lr.ph504:                                        ; preds = %.lr.ph344, %.critedge325
  %.1227337503 = phi ptr [ %.3229, %.critedge325 ], [ %.0226351510, %.lr.ph344 ] ; 6 uses
  %.1224340502 = phi ptr [ %.3, %.critedge325 ], [ %.0223352509, %.lr.ph344 ] ; 6 uses
  %indvars.iv405501 = phi i64 [ %indvars.iv.next406, %.critedge325 ], [ 0, %.lr.ph344 ] ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv405501
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not268 = icmp eq ptr %i.bj, null
  br i1 %.not268, label %bb.u, label %bb.t

.critedge277:                                     ; preds = %.critedge325, %.lr.ph344, %bb.s
  %.1227.lcssa = phi ptr [ %.0226351510, %bb.s ], [ %.0226351510, %.lr.ph344 ], [ %.3229, %.critedge325 ] ; 2 uses
  %.1224.lcssa = phi ptr [ %.0223352509, %bb.s ], [ %.0223352509, %.lr.ph344 ], [ %.3, %.critedge325 ] ; 2 uses
  %indvars.iv.next409.a = add nuw nsw i64 %indvars.iv408506.a, 1 ; 2 uses
  %i.bk = load i32, ptr %i.h, align 4
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next409.a, %i.bl
  br i1 %i.bm, label %.lr.ph513, label %.critedge

bb.t:                                             ; preds = %.lr.ph504
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  br label %bb.u
end_hunk_0
begin_hunk_1_@add_paths_to_append_rel:bb.a

.lr.ph386.new:                                    ; preds = %.lr.ph386
  %unroll_iter533 = and i64 %wide.trip.count416, 2147483644
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph386.new
  %indvars.iv413 = phi i64 [ 0, %.lr.ph386.new ], [ %indvars.iv.next414.3, %bb.ag ] ; 5 uses
  %.0200377385 = phi i32 [ 0, %.lr.ph386.new ], [ %i.fq, %bb.ag ]
  %niter534 = phi i64 [ 0, %.lr.ph386.new ], [ %niter534.next.3, %bb.ag ]
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv413
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 36
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = call i32 @llvm.smax.i32(i32 %.0200377385, i32 %i.ex)
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv413
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 36
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = call i32 @llvm.smax.i32(i32 %i.ey, i32 %i.fd)
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv413
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 36
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = call i32 @llvm.smax.i32(i32 %i.fe, i32 %i.fj)
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv413
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 36
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = call i32 @llvm.smax.i32(i32 %i.fk, i32 %i.fp) ; 3 uses
  %indvars.iv.next414.3 = add nuw nsw i64 %indvars.iv413, 4 ; 2 uses
  %niter534.next.3 = add i64 %niter534, 4         ; 2 uses
  %niter534.ncmp.3 = icmp eq i64 %niter534.next.3, %unroll_iter533
  br i1 %niter534.ncmp.3, label %.critedge285.loopexit.unr-lcssa, label %bb.ag

.critedge285.loopexit.unr-lcssa:                  ; preds = %bb.ag
  %lcmp.mod530.not = icmp eq i64 %xtraiter528, 0
  br i1 %lcmp.mod530.not, label %.critedge285, label %.epil.preheader527

.epil.preheader527:                               ; preds = %.critedge285.loopexit.unr-lcssa, %.lr.ph386
  %indvars.iv413.epil.init = phi i64 [ 0, %.lr.ph386 ], [ %indvars.iv.next414.3, %.critedge285.loopexit.unr-lcssa ]
  %.0200377385.epil.init = phi i32 [ 0, %.lr.ph386 ], [ %i.fq, %.critedge285.loopexit.unr-lcssa ]
  %lcmp.mod532 = icmp ne i64 %xtraiter528, 0
  call void @llvm.assume(i1 %lcmp.mod532)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.epil.preheader527
  %indvars.iv413.epil = phi i64 [ %indvars.iv413.epil.init, %.epil.preheader527 ], [ %indvars.iv.next414.epil, %bb.ah ] ; 2 uses
  %.0200377385.epil = phi i32 [ %.0200377385.epil.init, %.epil.preheader527 ], [ %i.fv, %bb.ah ]
  %epil.iter529 = phi i64 [ 0, %.epil.preheader527 ], [ %epil.iter529.next, %bb.ah ]
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv413.epil
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 36
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = call i32 @llvm.smax.i32(i32 %.0200377385.epil, i32 %i.fu) ; 2 uses
  %indvars.iv.next414.epil = add nuw nsw i64 %indvars.iv413.epil, 1
  %epil.iter529.next = add i64 %epil.iter529, 1   ; 2 uses
  %epil.iter529.cmp.not = icmp eq i64 %epil.iter529.next, %xtraiter528
  br i1 %epil.iter529.cmp.not, label %.critedge285, label %bb.ah, !llvm.loop !15

.critedge285:                                     ; preds = %.critedge285.loopexit.unr-lcssa, %bb.ah, %.lr.ph379, %bb.af
  %.0200.lcssa = phi i32 [ 0, %bb.af ], [ 0, %.lr.ph379 ], [ %i.fq, %.critedge285.loopexit.unr-lcssa ], [ %i.fv, %bb.ah ]
  br i1 %.not, label %list_length.exit298, label %list_length.exit296.thread

list_length.exit296.thread:                       ; preds = %.critedge285
  %i.fw = load i32, ptr %i.h, align 4
  %i.fx = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fw, i1 true)
  %i.fy = sub nuw nsw i32 32, %i.fx
  %spec.select499 = call i32 @llvm.smax.i32(i32 %.0200.lcssa, i32 %i.fy)
  br label %list_length.exit298

list_length.exit298:                              ; preds = %list_length.exit296.thread, %.critedge285
  %i.fz = phi i32 [ %spec.select499, %list_length.exit296.thread ], [ poison, %.critedge285 ]
  %i.ga = load i32, ptr @max_parallel_workers_per_gather, align 4
  %i.gb = call i32 @llvm.smin.i32(i32 %i.fz, i32 %i.ga)
  %i.gc = call ptr @create_append_path(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.AppendPathInput) align 8 %9, ptr noundef null, ptr noundef null, i32 noundef %i.gb, i1 noundef zeroext true, double noundef %.0219) #11
  call void @add_partial_path(ptr noundef %1, ptr noundef %i.gc) #11
  br label %bb.ai

bb.ai:                                            ; preds = %list_length.exit298, %bb.ae
  br i1 %.0.lcssa485488, label %bb.aj, label %bb.ck

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i8 1, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i8 1, ptr %i.b, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ge = load ptr, ptr %i.gd, align 8
  %.not.i299 = icmp eq ptr %i.ge, null
  br i1 %.not.i299, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gg = load i32, ptr %i.gf, align 4
  switch i32 %i.gg, label %bb.an [
    i32 0, label %bb.al
    i32 2, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = call zeroext i1 @partitions_are_ordered(ptr noundef %i.gi, ptr noundef %i.gk) #11
  br i1 %i.gl, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gm = call ptr @build_partition_pathkeys(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.a) #11
  %i.gn = call ptr @build_partition_pathkeys(ptr noundef %0, ptr noundef nonnull %1, i32 noundef -1, ptr noundef nonnull %i.b) #11
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.0113.i = phi ptr [ %i.gm, %bb.am ], [ null, %bb.al ], [ null, %bb.ak ], [ null, %bb.aj ] ; 2 uses
  %.0112.i = phi ptr [ %i.gn, %bb.am ], [ null, %bb.al ], [ null, %bb.ak ], [ null, %bb.aj ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0226.lcssa479492, i64 4 ; 2 uses
  %.not122.i = icmp eq ptr %.0226.lcssa479492, null
  br i1 %.not122.i, label %generate_orderedappend_paths.exit, label %.lr.ph169.i

.lr.ph169.i:                                      ; preds = %bb.an
  %i.gp = getelementptr inbounds nuw i8, ptr %.0226.lcssa479492, i64 16
  %i.gq = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.gv = load i32, ptr %i.go, align 4
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %.lr.ph389, label %generate_orderedappend_paths.exit

.lr.ph389:                                        ; preds = %.lr.ph169.i, %bb.cj
  %indvars.iv.i388 = phi i64 [ %indvars.iv.next.i, %bb.cj ], [ 0, %.lr.ph169.i ] ; 2 uses
  %i.gx = load ptr, ptr %i.gp, align 8
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv.i388
  %i.gz = load ptr, ptr %i.gy, align 8            ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ha = call zeroext i1 @pathkeys_contained_in(ptr noundef %i.gz, ptr noundef %.0113.i) #11
  br i1 %i.ha, label %.critedge130.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph389
  %i.hb = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %.thread158.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hd = call zeroext i1 @pathkeys_contained_in(ptr noundef %.0113.i, ptr noundef %i.gz) #11
  br i1 %i.hd, label %.critedge130.i, label %.thread158.i

.thread158.i:                                     ; preds = %bb.ap, %bb.ao
  %i.he = call zeroext i1 @pathkeys_contained_in(ptr noundef %i.gz, ptr noundef %.0112.i) #11
  br i1 %i.he, label %.critedge132.i, label %bb.aq

bb.aq:                                            ; preds = %.thread158.i
  %i.hf = load i8, ptr %i.b, align 1, !range !5, !noundef !6
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %.critedge130.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hh = call zeroext i1 @pathkeys_contained_in(ptr noundef %.0112.i, ptr noundef %i.gz) #11
  br i1 %i.hh, label %.critedge132.i, label %.critedge130.i

.critedge132.i:                                   ; preds = %bb.ar, %.thread158.i
  br i1 %.not, label %._crit_edge.thread.i, label %list_length.exit135.thread197.i

.critedge130.i:                                   ; preds = %bb.ar, %bb.aq, %bb.ap, %.lr.ph389
  %i.hi = phi i1 [ false, %bb.ar ], [ true, %bb.ap ], [ false, %bb.aq ], [ true, %.lr.ph389 ] ; 3 uses
  br i1 %.not, label %list_length.exit135.thread.i, label %list_length.exit135.i

list_length.exit135.thread.i:                     ; preds = %.critedge130.i
  br i1 %i.hi, label %._crit_edge.thread.i, label %._crit_edge.i.thread312

list_length.exit135.i:                            ; preds = %.critedge130.i
  %i.hj = load i32, ptr %i.h, align 4             ; 3 uses
  %.not124161.i = icmp eq i32 %i.hj, 0
  br i1 %.not124161.i, label %._crit_edge.i, label %.lr.ph.i

list_length.exit135.thread197.i:                  ; preds = %.critedge132.i
  %i.hk = load i32, ptr %i.h, align 4             ; 2 uses
  %i.hl = add i32 %i.hk, -1
  %.not124161202.i = icmp eq i32 %i.hk, 0
  br i1 %.not124161202.i, label %._crit_edge.thread.i, label %.lr.ph.split.us.preheader.i

.lr.ph.i:                                         ; preds = %list_length.exit135.i
  br i1 %i.hi, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i, %list_length.exit135.thread197.i
  %.0106204213.i = phi i32 [ %i.hj, %.lr.ph.i ], [ -1, %list_length.exit135.thread197.i ]
  %.0105205212.i = phi i32 [ 0, %.lr.ph.i ], [ %i.hl, %list_length.exit135.thread197.i ]
  %.0104206211.i = phi i32 [ 1, %.lr.ph.i ], [ -1, %list_length.exit135.thread197.i ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %accumulate_append_subpath.exit157.us.i, %.lr.ph.split.us.preheader.i
  %.0103164.us.i = phi i32 [ %i.la, %accumulate_append_subpath.exit157.us.i ], [ %.0105205212.i, %.lr.ph.split.us.preheader.i ] ; 2 uses
  %.0108163.us.i = phi i1 [ %.2.us.i, %accumulate_append_subpath.exit157.us.i ], [ false, %.lr.ph.split.us.preheader.i ] ; 3 uses
  %.0110162.us.i = phi i1 [ %spec.select133.us.i, %accumulate_append_subpath.exit157.us.i ], [ false, %.lr.ph.split.us.preheader.i ]
  %.val.us.i = load ptr, ptr %i.gq, align 8
  %i.hm = sext i32 %.0103164.us.i to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %.val.us.i, i64 %i.hm
  %i.ho = load ptr, ptr %i.hn, align 8            ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 48 ; 3 uses
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = call ptr @get_cheapest_path_for_pathkeys(ptr noundef %i.hq, ptr noundef %i.gz, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #11 ; 2 uses
  %i.hs = load ptr, ptr %i.hp, align 8
  %i.ht = call ptr @get_cheapest_path_for_pathkeys(ptr noundef %i.hs, ptr noundef %i.gz, ptr noundef null, i32 noundef 1, i1 noundef zeroext false) #11 ; 2 uses
  %i.hu = icmp eq ptr %i.hr, null
  %i.hv = icmp eq ptr %i.ht, null
  %or.cond.us.i = select i1 %i.hu, i1 true, i1 %i.hv
  br i1 %or.cond.us.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.split.us.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 80
  %i.hx = load ptr, ptr %i.hw, align 8            ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.split.us.i
  %.0102.us.i = phi ptr [ %i.hx, %bb.as ], [ %i.hr, %.lr.ph.split.us.i ] ; 11 uses
  %.0101.us.i = phi ptr [ %i.hx, %bb.as ], [ %i.ht, %.lr.ph.split.us.i ] ; 14 uses
  %i.hy = load double, ptr %i.gr, align 8         ; 4 uses
  %i.hz = fcmp ogt double %i.hy, 0.000000e+00
  br i1 %i.hz, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.ia = fcmp ult double %i.hy, 1.000000e+00
  br i1 %i.ia, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ib = getelementptr inbounds nuw i8, ptr %.0101.us.i, i64 40
  %i.ic = load double, ptr %i.ib, align 8
  %i.id = fdiv double %i.hy, %i.ic
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0.us.i = phi double [ %i.id, %bb.av ], [ %i.hy, %bb.au ]
  %i.ie = load ptr, ptr %i.hp, align 8
  %i.if = call ptr @get_cheapest_fractional_path_for_pathkeys(ptr noundef %i.ie, ptr noundef %i.gz, ptr noundef null, double noundef %.0.us.i) #11 ; 3 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not125.us.i = icmp ne ptr %i.if, %.0101.us.i
  %spec.select.us.i = select i1 %.not125.us.i, i1 true, i1 %.0108163.us.i
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.at
  %.2.us.i = phi i1 [ %.0108163.us.i, %bb.at ], [ %spec.select.us.i, %bb.ax ], [ %.0108163.us.i, %bb.aw ] ; 2 uses
  %.1.us.i = phi ptr [ null, %bb.at ], [ %i.if, %bb.ax ], [ %.0101.us.i, %bb.aw ] ; 11 uses
  %.not126.us.i = icmp ne ptr %.0102.us.i, %.0101.us.i
  %spec.select133.us.i = select i1 %.not126.us.i, i1 true, i1 %.0110162.us.i ; 2 uses
  %i.ih = load i32, ptr %.0102.us.i, align 4
  switch i32 %i.ih, label %get_singleton_append_subpath.exit.us.i [
    i32 307, label %bb.ba
    i32 308, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay
  %i.ii = getelementptr inbounds nuw i8, ptr %.0102.us.i, i64 80 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8            ; 2 uses
  %.not.i27.i.us.i = icmp eq ptr %i.ij, null
  br i1 %.not.i27.i.us.i, label %get_singleton_append_subpath.exit.us.i, label %list_length.exit28.i.us.i

list_length.exit28.i.us.i:                        ; preds = %bb.az
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.il = load i32, ptr %i.ik, align 4
  %i.im = icmp eq i32 %i.il, 1
  br i1 %i.im, label %.thread.sink.split.i.us.i, label %get_singleton_append_subpath.exit.us.i

bb.ba:                                            ; preds = %bb.ay
  %i.in = getelementptr inbounds nuw i8, ptr %.0102.us.i, i64 80 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8            ; 2 uses
  %.not.i.i.us.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.us.i, label %get_singleton_append_subpath.exit.us.i, label %list_length.exit.i.us.i

list_length.exit.i.us.i:                          ; preds = %bb.ba
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.iq = load i32, ptr %i.ip, align 4
  %i.ir = icmp eq i32 %i.iq, 1
  br i1 %i.ir, label %.thread.sink.split.i.us.i, label %get_singleton_append_subpath.exit.us.i

.thread.sink.split.i.us.i:                        ; preds = %list_length.exit.i.us.i, %list_length.exit28.i.us.i
  %.sink226.i = phi i64 [ 96, %list_length.exit28.i.us.i ], [ 104, %list_length.exit.i.us.i ]
  %.sink34.in.i.us.i = phi ptr [ %i.ii, %list_length.exit28.i.us.i ], [ %i.in, %list_length.exit.i.us.i ]
  %i.is = load ptr, ptr %i.gs, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %.0102.us.i, i64 8
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = call ptr @lappend(ptr noundef %i.is, ptr noundef %i.iw) #11
  %i.iy = getelementptr inbounds nuw i8, ptr %.0102.us.i, i64 %.sink226.i
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = call ptr @list_concat(ptr noundef %i.ix, ptr noundef %i.iz) #11
  store ptr %i.ja, ptr %i.gs, align 8
  %.sink34.i.us.i = load ptr, ptr %.sink34.in.i.us.i, align 8
  %i.jb = getelementptr i8, ptr %.sink34.i.us.i, i64 16
  %.val.i.us.i = load ptr, ptr %i.jb, align 8
  %i.jc = load ptr, ptr %.val.i.us.i, align 8
  br label %get_singleton_append_subpath.exit.us.i

get_singleton_append_subpath.exit.us.i:           ; preds = %.thread.sink.split.i.us.i, %list_length.exit.i.us.i, %bb.ba, %list_length.exit28.i.us.i, %bb.az, %bb.ay
  %.2.i.us.i = phi ptr [ %.0102.us.i, %list_length.exit28.i.us.i ], [ %.0102.us.i, %bb.az ], [ %.0102.us.i, %bb.ba ], [ %.0102.us.i, %bb.ay ], [ %.0102.us.i, %list_length.exit.i.us.i ], [ %i.jc, %.thread.sink.split.i.us.i ]
  %i.jd = load i32, ptr %.0101.us.i, align 4
  switch i32 %i.jd, label %get_singleton_append_subpath.exit145.us.i [
    i32 307, label %bb.bc
    i32 308, label %bb.bb
  ]

bb.bb:                                            ; preds = %get_singleton_append_subpath.exit.us.i
  %i.je = getelementptr inbounds nuw i8, ptr %.0101.us.i, i64 80 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8            ; 2 uses
  %.not.i27.i136.us.i = icmp eq ptr %i.jf, null
  br i1 %.not.i27.i136.us.i, label %get_singleton_append_subpath.exit145.us.i, label %list_length.exit28.i137.us.i

list_length.exit28.i137.us.i:                     ; preds = %bb.bb
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jh = load i32, ptr %i.jg, align 4
  %i.ji = icmp eq i32 %i.jh, 1
  br i1 %i.ji, label %.thread.sink.split.i139.us.i, label %get_singleton_append_subpath.exit145.us.i

bb.bc:                                            ; preds = %get_singleton_append_subpath.exit.us.i
  %i.jj = getelementptr inbounds nuw i8, ptr %.0101.us.i, i64 80 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8            ; 2 uses
  %.not.i.i143.us.i = icmp eq ptr %i.jk, null
  br i1 %.not.i.i143.us.i, label %get_singleton_append_subpath.exit145.us.i, label %list_length.exit.i144.us.i

list_length.exit.i144.us.i:                       ; preds = %bb.bc
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %i.jm = load i32, ptr %i.jl, align 4
  %i.jn = icmp eq i32 %i.jm, 1
  br i1 %i.jn, label %.thread.sink.split.i139.us.i, label %get_singleton_append_subpath.exit145.us.i

.thread.sink.split.i139.us.i:                     ; preds = %list_length.exit.i144.us.i, %list_length.exit28.i137.us.i
  %.sink232.i = phi i64 [ 96, %list_length.exit28.i137.us.i ], [ 104, %list_length.exit.i144.us.i ]
  %.sink34.in.i140.us.i = phi ptr [ %i.je, %list_length.exit28.i137.us.i ], [ %i.jj, %list_length.exit.i144.us.i ]
  %i.jo = load ptr, ptr %i.gt, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %.0101.us.i, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = call ptr @lappend(ptr noundef %i.jo, ptr noundef %i.js) #11
  %i.ju = getelementptr inbounds nuw i8, ptr %.0101.us.i, i64 %.sink232.i
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = call ptr @list_concat(ptr noundef %i.jt, ptr noundef %i.jv) #11
  store ptr %i.jw, ptr %i.gt, align 8
  %.sink34.i141.us.i = load ptr, ptr %.sink34.in.i140.us.i, align 8
  %i.jx = getelementptr i8, ptr %.sink34.i141.us.i, i64 16
  %.val.i142.us.i = load ptr, ptr %i.jx, align 8
  %i.jy = load ptr, ptr %.val.i142.us.i, align 8
  br label %get_singleton_append_subpath.exit145.us.i

get_singleton_append_subpath.exit145.us.i:        ; preds = %.thread.sink.split.i139.us.i, %list_length.exit.i144.us.i, %bb.bc, %list_length.exit28.i137.us.i, %bb.bb, %get_singleton_append_subpath.exit.us.i
  %.2.i138.us.i = phi ptr [ %.0101.us.i, %list_length.exit28.i137.us.i ], [ %.0101.us.i, %bb.bb ], [ %.0101.us.i, %bb.bc ], [ %.0101.us.i, %get_singleton_append_subpath.exit.us.i ], [ %.0101.us.i, %list_length.exit.i144.us.i ], [ %i.jy, %.thread.sink.split.i139.us.i ]
  %i.jz = load ptr, ptr %3, align 8
  %i.ka = call ptr @lappend(ptr noundef %i.jz, ptr noundef %.2.i.us.i) #11
  store ptr %i.ka, ptr %3, align 8
  %i.kb = load ptr, ptr %4, align 8
  %i.kc = call ptr @lappend(ptr noundef %i.kb, ptr noundef %.2.i138.us.i) #11
  store ptr %i.kc, ptr %4, align 8
  %.not128.us.i = icmp eq ptr %.1.us.i, null
  br i1 %.not128.us.i, label %accumulate_append_subpath.exit157.us.i, label %bb.bd

bb.bd:                                            ; preds = %get_singleton_append_subpath.exit145.us.i
  %i.kd = load i32, ptr %.1.us.i, align 4
  switch i32 %i.kd, label %get_singleton_append_subpath.exit155.us.i [
    i32 307, label %bb.bf
    i32 308, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd
  %i.ke = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 80 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8            ; 2 uses
  %.not.i27.i146.us.i = icmp eq ptr %i.kf, null
  br i1 %.not.i27.i146.us.i, label %get_singleton_append_subpath.exit155.us.i, label %list_length.exit28.i147.us.i

list_length.exit28.i147.us.i:                     ; preds = %bb.be
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kh = load i32, ptr %i.kg, align 4
  %i.ki = icmp eq i32 %i.kh, 1
  br i1 %i.ki, label %.thread.sink.split.i149.us.i, label %get_singleton_append_subpath.exit155.us.i

bb.bf:                                            ; preds = %bb.bd
  %i.kj = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 80 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8            ; 2 uses
  %.not.i.i153.us.i = icmp eq ptr %i.kk, null
  br i1 %.not.i.i153.us.i, label %get_singleton_append_subpath.exit155.us.i, label %list_length.exit.i154.us.i

list_length.exit.i154.us.i:                       ; preds = %bb.bf
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.km = load i32, ptr %i.kl, align 4
  %i.kn = icmp eq i32 %i.km, 1
  br i1 %i.kn, label %.thread.sink.split.i149.us.i, label %get_singleton_append_subpath.exit155.us.i

.thread.sink.split.i149.us.i:                     ; preds = %list_length.exit.i154.us.i, %list_length.exit28.i147.us.i
  %.sink238.i = phi i64 [ 96, %list_length.exit28.i147.us.i ], [ 104, %list_length.exit.i154.us.i ]
  %.sink34.in.i150.us.i = phi ptr [ %i.ke, %list_length.exit28.i147.us.i ], [ %i.kj, %list_length.exit.i154.us.i ]
  %i.ko = load ptr, ptr %i.gu, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = call ptr @lappend(ptr noundef %i.ko, ptr noundef %i.ks) #11
  %i.ku = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 %.sink238.i
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = call ptr @list_concat(ptr noundef %i.kt, ptr noundef %i.kv) #11
  store ptr %i.kw, ptr %i.gu, align 8
  %.sink34.i151.us.i = load ptr, ptr %.sink34.in.i150.us.i, align 8
  %i.kx = getelementptr i8, ptr %.sink34.i151.us.i, i64 16
  %.val.i152.us.i = load ptr, ptr %i.kx, align 8
  %i.ky = load ptr, ptr %.val.i152.us.i, align 8
  br label %get_singleton_append_subpath.exit155.us.i

get_singleton_append_subpath.exit155.us.i:        ; preds = %.thread.sink.split.i149.us.i, %list_length.exit.i154.us.i, %bb.bf, %list_length.exit28.i147.us.i, %bb.be, %bb.bd
  %.2.i148.us.i = phi ptr [ %.1.us.i, %list_length.exit28.i147.us.i ], [ %.1.us.i, %bb.be ], [ %.1.us.i, %bb.bf ], [ %.1.us.i, %bb.bd ], [ %.1.us.i, %list_length.exit.i154.us.i ], [ %i.ky, %.thread.sink.split.i149.us.i ]
  %12 = load ptr, ptr %5, align 8
  %i.kz = call ptr @lappend(ptr noundef %12, ptr noundef %.2.i148.us.i) #11
  store ptr %i.kz, ptr %5, align 8
  br label %accumulate_append_subpath.exit157.us.i

accumulate_append_subpath.exit157.us.i:           ; preds = %get_singleton_append_subpath.exit155.us.i, %get_singleton_append_subpath.exit145.us.i
  %i.la = add i32 %.0103164.us.i, %.0104206211.i  ; 2 uses
  %.not124.us.i = icmp eq i32 %i.la, %.0106204213.i
  br i1 %.not124.us.i, label %._crit_edge.thread.i, label %.lr.ph.split.us.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %list_length.exit135.i
  br i1 %i.hi, label %._crit_edge.thread.i, label %._crit_edge.i.thread312

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %accumulate_append_subpath.exit157.i
  %i.lb = phi ptr [ %i.pv, %accumulate_append_subpath.exit157.i ], [ null, %.lr.ph.i ] ; 4 uses
  %.0103164.i = phi i32 [ %i.pw, %accumulate_append_subpath.exit157.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.0108163.i = phi i1 [ %.2.i, %accumulate_append_subpath.exit157.i ], [ false, %.lr.ph.i ] ; 3 uses
  %.0110162.i = phi i1 [ %spec.select133.i, %accumulate_append_subpath.exit157.i ], [ false, %.lr.ph.i ]
  %.val.i = load ptr, ptr %i.gq, align 8
  %i.lc = sext i32 %.0103164.i to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.lc
  %i.le = load ptr, ptr %i.ld, align 8            ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 48 ; 3 uses
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = call ptr @get_cheapest_path_for_pathkeys(ptr noundef %i.lg, ptr noundef %i.gz, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #11 ; 2 uses
  %i.li = load ptr, ptr %i.lf, align 8
  %i.lj = call ptr @get_cheapest_path_for_pathkeys(ptr noundef %i.li, ptr noundef %i.gz, ptr noundef null, i32 noundef 1, i1 noundef zeroext false) #11 ; 2 uses
  %i.lk = icmp eq ptr %i.lh, null
  %i.ll = icmp eq ptr %i.lj, null
  %or.cond.i = select i1 %i.lk, i1 true, i1 %i.ll
  br i1 %or.cond.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.split.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.le, i64 80
  %i.ln = load ptr, ptr %i.lm, align 8            ; 2 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.lr.ph.split.i
  %.0102.i = phi ptr [ %i.ln, %bb.bg ], [ %i.lh, %.lr.ph.split.i ] ; 11 uses
  %.0101.i = phi ptr [ %i.ln, %bb.bg ], [ %i.lj, %.lr.ph.split.i ] ; 14 uses
  %i.lo = load double, ptr %i.gr, align 8         ; 4 uses
  %i.lp = fcmp ogt double %i.lo, 0.000000e+00
  br i1 %i.lp, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %i.lq = fcmp ult double %i.lo, 1.000000e+00
  br i1 %i.lq, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lr = getelementptr inbounds nuw i8, ptr %.0101.i, i64 40
  %i.ls = load double, ptr %i.lr, align 8
  %i.lt = fdiv double %i.lo, %i.ls
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0.i = phi double [ %i.lt, %bb.bj ], [ %i.lo, %bb.bi ]
  %i.lu = load ptr, ptr %i.lf, align 8
  %i.lv = call ptr @get_cheapest_fractional_path_for_pathkeys(ptr noundef %i.lu, ptr noundef %i.gz, ptr noundef null, double noundef %.0.i) #11 ; 3 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not125.i = icmp ne ptr %i.lv, %.0101.i
  %spec.select.i = select i1 %.not125.i, i1 true, i1 %.0108163.i
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bh
  %.2.i = phi i1 [ %.0108163.i, %bb.bh ], [ %spec.select.i, %bb.bl ], [ %.0108163.i, %bb.bk ] ; 2 uses
  %.1.i = phi ptr [ null, %bb.bh ], [ %i.lv, %bb.bl ], [ %.0101.i, %bb.bk ] ; 11 uses
  %.not126.i = icmp ne ptr %.0102.i, %.0101.i
  %spec.select133.i = select i1 %.not126.i, i1 true, i1 %.0110162.i ; 2 uses
  %i.lx = load i32, ptr %.0102.i, align 4
  switch i32 %i.lx, label %bb.br [
    i32 307, label %bb.bn
    i32 308, label %bb.bq
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.ly = getelementptr inbounds nuw i8, ptr %.0102.i, i64 32
  %i.lz = load i8, ptr %i.ly, align 8, !range !5, !noundef !6
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.mb = getelementptr inbounds nuw i8, ptr %.0102.i, i64 88
  %i.mc = load i32, ptr %i.mb, align 8
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.me = load ptr, ptr %3, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %.0102.i, i64 80
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = call ptr @list_concat(ptr noundef %i.me, ptr noundef %i.mg) #11
  store ptr %i.mh, ptr %3, align 8
  %i.mi = load ptr, ptr %i.gs, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %.0102.i, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = call ptr @lappend(ptr noundef %i.mi, ptr noundef %i.mm) #11
  %i.mo = getelementptr inbounds nuw i8, ptr %.0102.i, i64 104
  %i.mp = load ptr, ptr %i.mo, align 8
  %i.mq = call ptr @list_concat(ptr noundef %i.mn, ptr noundef %i.mp) #11
  store ptr %i.mq, ptr %i.gs, align 8
  br label %accumulate_append_subpath.exit.i

bb.bq:                                            ; preds = %bb.bm
  %i.mr = load ptr, ptr %3, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %.0102.i, i64 80
  %i.mt = load ptr, ptr %i.ms, align 8
  %i.mu = call ptr @list_concat(ptr noundef %i.mr, ptr noundef %i.mt) #11
  store ptr %i.mu, ptr %3, align 8
  %i.mv = load ptr, ptr %i.gs, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %.0102.i, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = call ptr @lappend(ptr noundef %i.mv, ptr noundef %i.mz) #11
  %i.nb = getelementptr inbounds nuw i8, ptr %.0102.i, i64 96
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = call ptr @list_concat(ptr noundef %i.na, ptr noundef %i.nc) #11
  store ptr %i.nd, ptr %i.gs, align 8
  br label %accumulate_append_subpath.exit.i

bb.br:                                            ; preds = %bb.bo, %bb.bm
  %i.ne = load ptr, ptr %3, align 8
  %i.nf = call ptr @lappend(ptr noundef %i.ne, ptr noundef nonnull %.0102.i) #11
  store ptr %i.nf, ptr %3, align 8
  br label %accumulate_append_subpath.exit.i

accumulate_append_subpath.exit.i:                 ; preds = %bb.br, %bb.bq, %bb.bp
  %i.ng = load i32, ptr %.0101.i, align 4
  switch i32 %i.ng, label %bb.bw [
    i32 307, label %bb.bs
    i32 308, label %bb.bv
  ]

bb.bs:                                            ; preds = %accumulate_append_subpath.exit.i
  %i.nh = getelementptr inbounds nuw i8, ptr %.0101.i, i64 32
  %i.ni = load i8, ptr %i.nh, align 8, !range !5, !noundef !6
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.nk = getelementptr inbounds nuw i8, ptr %.0101.i, i64 88
  %i.nl = load i32, ptr %i.nk, align 8
  %i.nm = icmp eq i32 %i.nl, 0
  br i1 %i.nm, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.nn = load ptr, ptr %4, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %.0101.i, i64 80
  %i.np = load ptr, ptr %i.no, align 8
  %i.nq = call ptr @list_concat(ptr noundef %i.nn, ptr noundef %i.np) #11
  store ptr %i.nq, ptr %4, align 8
  %i.nr = load ptr, ptr %i.gt, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %.0101.i, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = call ptr @lappend(ptr noundef %i.nr, ptr noundef %i.nv) #11
  %i.nx = getelementptr inbounds nuw i8, ptr %.0101.i, i64 104
  %i.ny = load ptr, ptr %i.nx, align 8
  %i.nz = call ptr @list_concat(ptr noundef %i.nw, ptr noundef %i.ny) #11
  store ptr %i.nz, ptr %i.gt, align 8
  br label %accumulate_append_subpath.exit156.i

bb.bv:                                            ; preds = %accumulate_append_subpath.exit.i
  %i.oa = load ptr, ptr %4, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %.0101.i, i64 80
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = call ptr @list_concat(ptr noundef %i.oa, ptr noundef %i.oc) #11
  store ptr %i.od, ptr %4, align 8
  %i.oe = load ptr, ptr %i.gt, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %.0101.i, i64 8
  %i.og = load ptr, ptr %i.of, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8
  %i.oj = call ptr @lappend(ptr noundef %i.oe, ptr noundef %i.oi) #11
  %i.ok = getelementptr inbounds nuw i8, ptr %.0101.i, i64 96
  %i.ol = load ptr, ptr %i.ok, align 8
  %i.om = call ptr @list_concat(ptr noundef %i.oj, ptr noundef %i.ol) #11
  store ptr %i.om, ptr %i.gt, align 8
  br label %accumulate_append_subpath.exit156.i

bb.bw:                                            ; preds = %bb.bt, %accumulate_append_subpath.exit.i
  %i.on = load ptr, ptr %4, align 8
  %i.oo = call ptr @lappend(ptr noundef %i.on, ptr noundef nonnull %.0101.i) #11
  store ptr %i.oo, ptr %4, align 8
  br label %accumulate_append_subpath.exit156.i

accumulate_append_subpath.exit156.i:              ; preds = %bb.bw, %bb.bv, %bb.bu
  %.not127.i = icmp eq ptr %.1.i, null
  br i1 %.not127.i, label %accumulate_append_subpath.exit157.i, label %bb.bx

bb.bx:                                            ; preds = %accumulate_append_subpath.exit156.i
  %i.op = load i32, ptr %.1.i, align 4
  switch i32 %i.op, label %bb.cc [
    i32 307, label %bb.by
    i32 308, label %bb.cb
  ]

bb.by:                                            ; preds = %bb.bx
  %i.oq = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %i.or = load i8, ptr %i.oq, align 8, !range !5, !noundef !6
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ot = getelementptr inbounds nuw i8, ptr %.1.i, i64 88
  %i.ou = load i32, ptr %i.ot, align 8
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ow = getelementptr inbounds nuw i8, ptr %.1.i, i64 80
  %i.ox = load ptr, ptr %i.ow, align 8
  %i.oy = call ptr @list_concat(ptr noundef %i.lb, ptr noundef %i.ox) #11 ; 2 uses
  store ptr %i.oy, ptr %5, align 8
  %i.oz = load ptr, ptr %i.gu, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = load ptr, ptr %i.pc, align 8
  %i.pe = call ptr @lappend(ptr noundef %i.oz, ptr noundef %i.pd) #11
  %i.pf = getelementptr inbounds nuw i8, ptr %.1.i, i64 104
  %i.pg = load ptr, ptr %i.pf, align 8
  %i.ph = call ptr @list_concat(ptr noundef %i.pe, ptr noundef %i.pg) #11
  store ptr %i.ph, ptr %i.gu, align 8
  br label %accumulate_append_subpath.exit157.i

bb.cb:                                            ; preds = %bb.bx
  %i.pi = getelementptr inbounds nuw i8, ptr %.1.i, i64 80
  %i.pj = load ptr, ptr %i.pi, align 8
  %i.pk = call ptr @list_concat(ptr noundef %i.lb, ptr noundef %i.pj) #11 ; 2 uses
  store ptr %i.pk, ptr %5, align 8
  %i.pl = load ptr, ptr %i.gu, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pp = load ptr, ptr %i.po, align 8
  %i.pq = call ptr @lappend(ptr noundef %i.pl, ptr noundef %i.pp) #11
  %i.pr = getelementptr inbounds nuw i8, ptr %.1.i, i64 96
  %i.ps = load ptr, ptr %i.pr, align 8
  %i.pt = call ptr @list_concat(ptr noundef %i.pq, ptr noundef %i.ps) #11
  store ptr %i.pt, ptr %i.gu, align 8
  br label %accumulate_append_subpath.exit157.i

bb.cc:                                            ; preds = %bb.bz, %bb.bx
  %i.pu = call ptr @lappend(ptr noundef %i.lb, ptr noundef nonnull %.1.i) #11 ; 2 uses
  store ptr %i.pu, ptr %5, align 8
  br label %accumulate_append_subpath.exit157.i

accumulate_append_subpath.exit157.i:              ; preds = %bb.cc, %bb.cb, %bb.ca, %accumulate_append_subpath.exit156.i
  %i.pv = phi ptr [ %i.pu, %bb.cc ], [ %i.pk, %bb.cb ], [ %i.oy, %bb.ca ], [ %i.lb, %accumulate_append_subpath.exit156.i ] ; 2 uses
  %i.pw = add nuw i32 %.0103164.i, 1              ; 2 uses
  %.not124.i = icmp eq i32 %i.pw, %i.hj
  br i1 %.not124.i, label %._crit_edge.i.thread312.loopexit, label %.lr.ph.split.i, !llvm.loop !16

._crit_edge.thread.i:                             ; preds = %accumulate_append_subpath.exit157.us.i, %._crit_edge.i, %list_length.exit135.thread197.i, %list_length.exit135.thread.i, %.critedge132.i
  %.0108.lcssa219.i = phi i1 [ false, %list_length.exit135.thread197.i ], [ false, %._crit_edge.i ], [ false, %list_length.exit135.thread.i ], [ false, %.critedge132.i ], [ %.2.us.i, %accumulate_append_subpath.exit157.us.i ]
  %.0110.lcssa218.i = phi i1 [ false, %list_length.exit135.thread197.i ], [ false, %._crit_edge.i ], [ false, %list_length.exit135.thread.i ], [ false, %.critedge132.i ], [ %spec.select133.us.i, %accumulate_append_subpath.exit157.us.i ]
  %i.px = call ptr @create_append_path(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.AppendPathInput) align 8 %3, ptr noundef %i.gz, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, double noundef -1.000000e+00) #11
  call void @add_path(ptr noundef %1, ptr noundef %i.px) #11
  br i1 %.0110.lcssa218.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %._crit_edge.thread.i
  %i.py = call ptr @create_append_path(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.AppendPathInput) align 8 %4, ptr noundef %i.gz, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, double noundef -1.000000e+00) #11
  call void @add_path(ptr noundef %1, ptr noundef %i.py) #11
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %._crit_edge.thread.i
  %13 = load ptr, ptr %5, align 8
  %14 = icmp ne ptr %13, null
  %or.cond3.i = select i1 %14, i1 %.0108.lcssa219.i, i1 false
  br i1 %or.cond3.i, label %bb.cf, label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  %i.pz = call ptr @create_append_path(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.AppendPathInput) align 8 %5, ptr noundef %i.gz, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, double noundef -1.000000e+00) #11
  br label %.sink.split.i

._crit_edge.i.thread312.loopexit:                 ; preds = %accumulate_append_subpath.exit157.i
  %.pre = load ptr, ptr %3, align 8
  %.pre427 = load ptr, ptr %i.gs, align 8
  br label %._crit_edge.i.thread312

._crit_edge.i.thread312:                          ; preds = %._crit_edge.i.thread312.loopexit, %._crit_edge.i, %list_length.exit135.thread.i
  %15 = phi ptr [ null, %list_length.exit135.thread.i ], [ null, %._crit_edge.i ], [ %i.pv, %._crit_edge.i.thread312.loopexit ] ; 2 uses
  %i.qa = phi ptr [ null, %list_length.exit135.thread.i ], [ null, %._crit_edge.i ], [ %.pre427, %._crit_edge.i.thread312.loopexit ]
  %i.qb = phi ptr [ null, %list_length.exit135.thread.i ], [ null, %._crit_edge.i ], [ %.pre, %._crit_edge.i.thread312.loopexit ]
  %.0108.lcssa221.i = phi i1 [ false, %list_length.exit135.thread.i ], [ false, %._crit_edge.i ], [ %.2.i, %._crit_edge.i.thread312.loopexit ]
  %.0110.lcssa220.i = phi i1 [ false, %list_length.exit135.thread.i ], [ false, %._crit_edge.i ], [ %spec.select133.i, %._crit_edge.i.thread312.loopexit ]
  %i.qc = call ptr @create_merge_append_path(ptr noundef %0, ptr noundef %1, ptr noundef %i.qb, ptr noundef %i.qa, ptr noundef %i.gz, ptr noundef null) #11
  call void @add_path(ptr noundef %1, ptr noundef %i.qc) #11
  br i1 %.0110.lcssa220.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %._crit_edge.i.thread312
  %i.qd = load ptr, ptr %4, align 8
  %i.qe = load ptr, ptr %i.gt, align 8
  %i.qf = call ptr @create_merge_append_path(ptr noundef %0, ptr noundef %1, ptr noundef %i.qd, ptr noundef %i.qe, ptr noundef %i.gz, ptr noundef null) #11
  call void @add_path(ptr noundef %1, ptr noundef %i.qf) #11
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %._crit_edge.i.thread312
  %i.qg = icmp ne ptr %15, null
  %or.cond5.i = select i1 %i.qg, i1 %.0108.lcssa221.i, i1 false
  br i1 %or.cond5.i, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.qh = load ptr, ptr %i.gu, align 8
  %i.qi = call ptr @create_merge_append_path(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %15, ptr noundef %i.qh, ptr noundef %i.gz, ptr noundef null) #11
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ci, %bb.cf
  %.sink.i = phi ptr [ %i.qi, %bb.ci ], [ %i.pz, %bb.cf ]
  call void @add_path(ptr noundef %1, ptr noundef %.sink.i) #11
  br label %bb.cj

bb.cj:                                            ; preds = %.sink.split.i, %bb.ch, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i388, 1 ; 2 uses
  %i.qj = load i32, ptr %i.go, align 4
  %i.qk = sext i32 %i.qj to i64
  %i.ql = icmp slt i64 %indvars.iv.next.i, %i.qk
  br i1 %i.ql, label %.lr.ph389, label %generate_orderedappend_paths.exit

generate_orderedappend_paths.exit:                ; preds = %bb.cj, %.lr.ph169.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ck

bb.ck:                                            ; preds = %generate_orderedappend_paths.exit, %bb.ai
  %i.qm = getelementptr inbounds nuw i8, ptr %.0223.lcssa481490, i64 4 ; 2 uses
  %.not257 = icmp eq ptr %.0223.lcssa481490, null
  br i1 %.not257, label %.critedge287, label %.lr.ph394

.lr.ph394:                                        ; preds = %bb.ck
  %i.qn = getelementptr inbounds nuw i8, ptr %.0223.lcssa481490, i64 16
  %i.qo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.qq = load i32, ptr %i.qm, align 4
  %i.qr = icmp sgt i32 %i.qq, 0
  br i1 %i.qr, label %.lr.ph523, label %.critedge287

.lr.ph523:                                        ; preds = %.lr.ph394, %.critedge289.thread
  %indvars.iv421522 = phi i64 [ %indvars.iv.next422, %.critedge289.thread ], [ 0, %.lr.ph394 ] ; 2 uses
  %i.qs = load ptr, ptr %i.qn, align 8
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv421522
  %i.qu = load ptr, ptr %i.qt, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br i1 %.not, label %.critedge289, label %.lr.ph391.preheader

.lr.ph391.preheader:                              ; preds = %.lr.ph523
  %i.qv = load i32, ptr %i.h, align 4
  %i.qw = icmp sgt i32 %i.qv, 0
  br i1 %i.qw, label %.lr.ph521, label %.critedge289

.critedge287:                                     ; preds = %.critedge289.thread, %.lr.ph394, %bb.ck
  br i1 %.not, label %.critedge291, label %list_length.exit301

list_length.exit301:                              ; preds = %.critedge287
  %i.qx = load i32, ptr %i.h, align 4
  %i.qy = icmp eq i32 %i.qx, 1
  br i1 %i.qy, label %bb.de, label %.critedge291

.lr.ph521:                                        ; preds = %.lr.ph391.preheader, %.lr.ph391
  %indvars.iv418520 = phi i64 [ %indvars.iv.next419, %.lr.ph391 ], [ 0, %.lr.ph391.preheader ] ; 2 uses
  %i.qz = load ptr, ptr %i.qo, align 8
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %indvars.iv418520
  %i.rb = load ptr, ptr %i.ra, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 48 ; 2 uses
  %i.rd = load ptr, ptr %i.rc, align 8            ; 2 uses
  %i.re = icmp eq ptr %i.rd, null
  br i1 %i.re, label %.critedge289.thread, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph521
  %i.rf = call ptr @get_cheapest_path_for_pathkeys(ptr noundef nonnull %i.rd, ptr noundef null, ptr noundef %i.qu, i32 noundef 1, i1 noundef zeroext false) #11 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 24
  %i.rh = load ptr, ptr %i.rg, align 8            ; 2 uses
  %.not.i302 = icmp eq ptr %i.rh, null
  br i1 %.not.i302, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.rk = phi ptr [ %i.rj, %bb.cm ], [ null, %bb.cl ]
  %i.rl = call zeroext i1 @bms_equal(ptr noundef %i.rk, ptr noundef %i.qu) #11
  br i1 %i.rl, label %get_cheapest_parameterized_child_path.exit.thread317, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rm = load ptr, ptr %i.rc, align 8            ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 4 ; 2 uses
  %.not39.i = icmp eq ptr %i.rm, null
  br i1 %.not39.i, label %.critedge289.thread, label %.lr.ph.i303

.lr.ph.i303:                                      ; preds = %bb.co
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.rp = load i32, ptr %i.rn, align 4
  %i.rq = icmp sgt i32 %i.rp, 0
  br i1 %i.rq, label %.lr.ph51.i, label %.critedge289.thread

.lr.ph51.i:                                       ; preds = %.lr.ph.i303, %bb.cy
  %indvars.iv.i304 = phi i64 [ %indvars.iv.next.i306, %bb.cy ], [ 0, %.lr.ph.i303 ] ; 2 uses
  %.0324450.i = phi ptr [ %.1.i305, %bb.cy ], [ null, %.lr.ph.i303 ] ; 7 uses
  %i.rr = load ptr, ptr %i.ro, align 8
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv.i304
  %i.rt = load ptr, ptr %i.rs, align 8            ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 24 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8            ; 2 uses
  %.not41.i = icmp eq ptr %i.rv, null
  br i1 %.not41.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph51.i
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.lr.ph51.i
  %i.ry = phi ptr [ %i.rx, %bb.cp ], [ null, %.lr.ph51.i ]
  %i.rz = call zeroext i1 @bms_is_subset(ptr noundef %i.ry, ptr noundef %i.qu) #11
  br i1 %i.rz, label %bb.cr, label %bb.cy

bb.cr:                                            ; preds = %bb.cq
  %.not42.i = icmp eq ptr %.0324450.i, null       ; 2 uses
  br i1 %.not42.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.sa = call i32 @compare_path_costs(ptr noundef nonnull %.0324450.i, ptr noundef nonnull %i.rt, i32 noundef 1) #11
  %i.sb = icmp slt i32 %i.sa, 1
  br i1 %i.sb, label %bb.cy, label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.sc = load ptr, ptr %i.ru, align 8            ; 2 uses
  %.not43.i = icmp eq ptr %i.sc, null
  br i1 %.not43.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.se = load ptr, ptr %i.sd, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.sf = phi ptr [ %i.se, %bb.cu ], [ null, %bb.ct ]
  %i.sg = call zeroext i1 @bms_equal(ptr noundef %i.sf, ptr noundef %i.qu) #11
  br i1 %i.sg, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.sh = call ptr @reparameterize_path(ptr noundef %0, ptr noundef nonnull %i.rt, ptr noundef %i.qu, double noundef 1.000000e+00) #11 ; 4 uses
  %i.si = icmp eq ptr %i.sh, null                 ; 2 uses
  %brmerge.i = or i1 %.not42.i, %i.si
  %.032.mux.i = select i1 %i.si, ptr %.0324450.i, ptr %i.sh
  br i1 %brmerge.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sj = call i32 @compare_path_costs(ptr noundef nonnull %.0324450.i, ptr noundef nonnull %i.sh, i32 noundef 1) #11
  %i.sk = icmp slt i32 %i.sj, 1
  %spec.select.i307 = select i1 %i.sk, ptr %.0324450.i, ptr %i.sh
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cs, %bb.cq
  %.1.i305 = phi ptr [ %.0324450.i, %bb.cq ], [ %spec.select.i307, %bb.cx ], [ %.0324450.i, %bb.cs ], [ %.032.mux.i, %bb.cw ], [ %i.rt, %bb.cv ] ; 3 uses
  %indvars.iv.next.i306 = add nuw nsw i64 %indvars.iv.i304, 1 ; 2 uses
  %i.sl = load i32, ptr %i.rn, align 4
  %i.sm = sext i32 %i.sl to i64
  %i.sn = icmp slt i64 %indvars.iv.next.i306, %i.sm
  br i1 %i.sn, label %.lr.ph51.i, label %get_cheapest_parameterized_child_path.exit

get_cheapest_parameterized_child_path.exit:       ; preds = %bb.cy
  %i.so = icmp eq ptr %.1.i305, null
  br i1 %i.so, label %.critedge289.thread, label %get_cheapest_parameterized_child_path.exit.thread317

get_cheapest_parameterized_child_path.exit.thread317: ; preds = %bb.cn, %get_cheapest_parameterized_child_path.exit
  %.033.i319 = phi ptr [ %.1.i305, %get_cheapest_parameterized_child_path.exit ], [ %i.rf, %bb.cn ] ; 10 uses
  %i.sp = load i32, ptr %.033.i319, align 4
  switch i32 %i.sp, label %bb.dd [
    i32 307, label %bb.cz
    i32 308, label %bb.dc
  ]

bb.cz:                                            ; preds = %get_cheapest_parameterized_child_path.exit.thread317
  %i.sq = getelementptr inbounds nuw i8, ptr %.033.i319, i64 32
  %i.sr = load i8, ptr %i.sq, align 8, !range !5, !noundef !6
  %i.ss = trunc nuw i8 %i.sr to i1
  br i1 %i.ss, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.st = getelementptr inbounds nuw i8, ptr %.033.i319, i64 88
  %i.su = load i32, ptr %i.st, align 8
  %i.sv = icmp eq i32 %i.su, 0
  br i1 %i.sv, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.sw = load ptr, ptr %10, align 8
  %i.sx = getelementptr inbounds nuw i8, ptr %.033.i319, i64 80
  %i.sy = load ptr, ptr %i.sx, align 8
  %i.sz = call ptr @list_concat(ptr noundef %i.sw, ptr noundef %i.sy) #11
  store ptr %i.sz, ptr %10, align 8
  %i.ta = load ptr, ptr %i.qp, align 8
  %i.tb = getelementptr inbounds nuw i8, ptr %.033.i319, i64 8
  %i.tc = load ptr, ptr %i.tb, align 8
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.te = load ptr, ptr %i.td, align 8
  %i.tf = call ptr @lappend(ptr noundef %i.ta, ptr noundef %i.te) #11
  %i.tg = getelementptr inbounds nuw i8, ptr %.033.i319, i64 104
  %i.th = load ptr, ptr %i.tg, align 8
end_hunk_1
