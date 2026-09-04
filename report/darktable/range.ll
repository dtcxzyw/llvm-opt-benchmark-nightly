Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/range?download=true
inline.NumInlined: 106
inline.NumDeleted: 21
begin_hunk_0_@dtgtk_range_select_get_raw_text:bb.a
  %i.at = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.24, i32 noundef %i.ai, i32 noundef %i.ak, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.aq, i32 noundef %i.as) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.033 = phi ptr [ %i.af, %bb.e ], [ %i.m, %bb.g ], [ %i.m, %bb.f ] ; 2 uses
  %.032 = phi ptr [ %i.o, %bb.e ], [ %i.at, %bb.g ], [ %i.o, %bb.f ]
  %i.au = and i32 %i.b, 8
  %.not39 = icmp eq i32 %i.au, 0
  br i1 %.not39, label %g_strdup_inline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = tail call noalias dereferenceable_or_null(4) ptr @g_malloc(i64 noundef 4) #18 ; 2 uses
  store i32 7827310, ptr %i.av, align 1
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.i, %bb.h, %bb.c
  %.134 = phi ptr [ %i.m, %bb.c ], [ %.033, %bb.h ], [ %.033, %bb.i ] ; 4 uses
  %.1 = phi ptr [ %i.o, %bb.c ], [ %.032, %bb.h ], [ %i.av, %bb.i ] ; 3 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %g_strdup_inline.exit
  %i.aw = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.29, ptr noundef %.134) #16
  br label %bb.p

bb.k:                                             ; preds = %g_strdup_inline.exit
  br i1 %.not36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.30, ptr noundef %.1) #16
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ay = and i32 %i.b, 4
  %.not41 = icmp eq i32 %i.ay, 0
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.26, ptr noundef %.134) #16
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ba = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.31, ptr noundef %.134, ptr noundef %.1) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o, %bb.n, %bb.j
  %.0 = phi ptr [ %i.aw, %bb.j ], [ %i.ax, %bb.l ], [ %i.az, %bb.n ], [ %i.ba, %bb.o ]
  tail call void @g_free(ptr noundef %.134) #16
  tail call void @g_free(ptr noundef %.1) #16
  br label %g_strdup_inline.exit43

g_strdup_inline.exit43:                           ; preds = %bb.b, %bb.p
  %.035 = phi ptr [ %.0, %bb.p ], [ %i.f, %bb.b ]
  ret ptr %.035
}

; Function Attrs: nounwind uwtable
define void @dtgtk_range_select_set_selection_from_raw_text(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca double, align 8                   ; 10 uses
  %i.c = alloca double, align 8                   ; 11 uses
  %strcmpload = load i8, ptr %1, align 1          ; 3 uses
  switch i8 %strcmpload, label %.tail.thread [
    i8 0, label %bb.b
    i8 37, label %.tail
  ]

.tail:                                            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a, %.tail
  tail call void @dtgtk_range_select_set_selection(ptr noundef %0, i32 noundef 3, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef %2, i32 noundef 0)
  br label %bb.x

.tail.thread:                                     ; preds = %bb.a
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %.critedge.thread

.thread:                                          ; preds = %.tail
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %.thread266, label %.critedge197

bb.c:                                             ; preds = %.tail.thread
  %i.k = load i16, ptr %1, align 1
  %i.l = icmp ne i16 %i.k, 15676
  %i.m = zext i1 %i.l to i32
  %.not252 = icmp eq i32 %i.m, 0
  br i1 %.not252, label %g_strdup_inline.exit232, label %.critedge

.thread266:                                       ; preds = %.thread
  %i.n = load i16, ptr %1, align 1
  %i.o = icmp ne i16 %i.n, 15676
  %i.p = zext i1 %i.o to i32
  %.not252268 = icmp eq i32 %i.p, 0
  br i1 %.not252268, label %g_strdup_inline.exit232, label %.critedge195

g_strdup_inline.exit232:                          ; preds = %.thread266, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.r = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.q) #16
  %i.s = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.q) #16
  br label %g_strdup_inline.exit227

.critedge:                                        ; preds = %bb.c
  %.not253 = icmp eq i8 %strcmpload, 61
  br i1 %.not253, label %g_strdup_inline.exit222, label %.critedge195

.critedge.thread:                                 ; preds = %.tail.thread
  %.not251 = icmp eq i8 %strcmpload, 61
  br i1 %.not251, label %g_strdup_inline.exit222, label %.critedge197

g_strdup_inline.exit222:                          ; preds = %.critedge.thread, %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.u = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.t) #16
  %i.v = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.t) #16
  br label %g_strdup_inline.exit227

.critedge195:                                     ; preds = %.thread266, %.critedge
  %i.w = load i16, ptr %1, align 1
  %i.x = icmp ne i16 %i.w, 15678
  %i.y = zext i1 %i.x to i32
  %.not254 = icmp eq i32 %i.y, 0
  br i1 %.not254, label %g_strdup_inline.exit212, label %.critedge197

g_strdup_inline.exit212:                          ; preds = %.critedge195
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.aa = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.z) #16
  %i.ab = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.z) #16
  br label %g_strdup_inline.exit227

.critedge197:                                     ; preds = %.thread, %.critedge.thread, %.critedge195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ac = tail call ptr @g_regex_new(ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef 0, ptr noundef null) #16 ; 2 uses
  %i.ad = call i32 @g_regex_match_full(ptr noundef %i.ac, ptr noundef nonnull %1, i64 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null) #16 ; 0 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !187
  %i.af = call i32 @g_match_info_get_match_count(ptr noundef %i.ae) #16
  %i.ag = icmp eq i32 %i.af, 3
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge197
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !187
  %i.ai = call ptr @g_match_info_fetch(ptr noundef %i.ah, i32 noundef 1) #16
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !187
  %i.ak = call ptr @g_match_info_fetch(ptr noundef %i.aj, i32 noundef 2) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge197
  %.0141 = phi ptr [ %i.ak, %bb.d ], [ null, %.critedge197 ]
  %.0135 = phi ptr [ %i.ai, %bb.d ], [ null, %.critedge197 ]
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !187
  call void @g_match_info_free(ptr noundef %i.al) #16
  call void @g_regex_unref(ptr noundef %i.ac) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %g_strdup_inline.exit227

g_strdup_inline.exit227:                          ; preds = %g_strdup_inline.exit212, %g_strdup_inline.exit222, %g_strdup_inline.exit232, %bb.e
  %.1142 = phi ptr [ %.0141, %bb.e ], [ %i.s, %g_strdup_inline.exit232 ], [ %i.v, %g_strdup_inline.exit222 ], [ %i.ab, %g_strdup_inline.exit212 ] ; 2 uses
  %.1136 = phi ptr [ %.0135, %bb.e ], [ %i.r, %g_strdup_inline.exit232 ], [ %i.u, %g_strdup_inline.exit222 ], [ %i.aa, %g_strdup_inline.exit212 ] ; 2 uses
  %.0133 = phi i32 [ 0, %bb.e ], [ 1, %g_strdup_inline.exit232 ], [ 4, %g_strdup_inline.exit222 ], [ 2, %g_strdup_inline.exit212 ]
  %i.am = icmp ne ptr %.1136, null
  %i.an = icmp ne ptr %.1142, null
  %or.cond = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond, label %g_strdup_inline.exit, label %g_strdup_inline.exit202

g_strdup_inline.exit202:                          ; preds = %g_strdup_inline.exit227
  %i.ao = call noalias ptr @g_strdup(ptr noundef nonnull %1) #16
  %i.ap = call noalias ptr @g_strdup(ptr noundef nonnull %1) #16
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %g_strdup_inline.exit202, %g_strdup_inline.exit227
  %.2143 = phi ptr [ %.1142, %g_strdup_inline.exit227 ], [ %i.ap, %g_strdup_inline.exit202 ] ; 9 uses
  %.2137 = phi ptr [ %.1136, %g_strdup_inline.exit227 ], [ %i.ao, %g_strdup_inline.exit202 ] ; 7 uses
  %.1134 = phi i32 [ %.0133, %g_strdup_inline.exit227 ], [ 4, %g_strdup_inline.exit202 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !39
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.f, label %bb.t

bb.f:                                             ; preds = %g_strdup_inline.exit
  %i.at = call i64 @dt_datetime_now_to_gtimespan() #16
  %i.au = sitofp reassoc nsz arcp contract afn i64 %i.at to double ; 2 uses
  store double %i.au, ptr %i.c, align 8, !tbaa !54
  store double %i.au, ptr %i.b, align 8, !tbaa !54
  %.not168.not = icmp eq ptr %.2137, null         ; 2 uses
  br i1 %.not168.not, label %.split, label %bb.g, !prof !188

.split:                                           ; preds = %bb.f
  %i.av = call i32 @g_str_has_prefix(ptr noundef null, ptr noundef nonnull @.str.37) #16
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.split264, label %bb.h

bb.g:                                             ; preds = %bb.f
  %char0169 = load i8, ptr %.2137, align 1
  %cond = icmp eq i8 %char0169, 45
  br i1 %cond, label %bb.h, label %.thread242

bb.h:                                             ; preds = %bb.g, %.split
  %.not174 = icmp eq ptr %.2143, null
  br i1 %.not174, label %.split258, label %bb.i, !prof !188

.split258:                                        ; preds = %bb.h
  %i.ax = call i32 @g_str_has_prefix(ptr noundef null, ptr noundef nonnull @.str.38) #16
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.thread235, label %bb.s

bb.i:                                             ; preds = %bb.h
  %char0175 = load i8, ptr %.2143, align 1
  %cond.a = icmp eq i8 %char0175, 43
  br i1 %cond.a, label %bb.s, label %.thread235

.thread235:                                       ; preds = %bb.i, %.split258
  br i1 %.not168.not, label %.split264, label %bb.j, !prof !221

.split264:                                        ; preds = %.split, %.thread235
  %i.az = call i32 @g_str_has_prefix(ptr noundef null, ptr noundef nonnull @.str.37) #16
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.thread242, label %bb.k

bb.j:                                             ; preds = %.thread235
  %char0180.pr.pr = load i8, ptr %.2137, align 1
  %.not181 = icmp eq i8 %char0180.pr.pr, 45
  br i1 %.not181, label %bb.k, label %.thread242

bb.k:                                             ; preds = %bb.j, %.split264
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %.2137, i64 1
  %i.bd = call i32 @dt_datetime_exif_to_numbers_raw(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc) #16
  %.not184 = icmp eq i32 %i.bd, 0
  %spec.select = select i1 %.not184, i32 %.1134, i32 16
  br label %bb.l

.thread242:                                       ; preds = %bb.j, %bb.g, %.split264
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !64
  %i.bg = call i32 %i.bf(ptr noundef %.2137, ptr noundef nonnull %i.b) #16 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread242
  %.2 = phi i32 [ %.1134, %.thread242 ], [ %spec.select, %bb.k ] ; 3 uses
  %.not186 = icmp eq ptr %.2143, null
  br i1 %.not186, label %.split265, label %bb.m, !prof !188

.split265:                                        ; preds = %bb.l
  %i.bh = call i32 @g_str_has_prefix(ptr noundef null, ptr noundef nonnull @.str.38) #16
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.thread245, label %bb.n

bb.m:                                             ; preds = %bb.l
  %char0187 = load i8, ptr %.2143, align 1
  %cond273 = icmp eq i8 %char0187, 43
  br i1 %cond273, label %bb.n, label %.thread245

bb.n:                                             ; preds = %bb.m, %.split265
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.2143, i64 1
  %i.bl = call i32 @dt_datetime_exif_to_numbers_raw(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bk) #16
  %.not192 = icmp eq i32 %i.bl, 0
  br i1 %.not192, label %bb.q, label %.thread248

.thread248:                                       ; preds = %bb.n
  %i.bm = load double, ptr %i.b, align 8, !tbaa !54
  %i.bn = fptosi double %i.bm to i64
  %i.bo = call i64 @dt_datetime_gtimespan_add_numbers(i64 noundef %i.bn, ptr noundef nonnull byval(%struct.dt_datetime_t) align 8 %i.bj, i32 noundef 1) #16
  br label %.sink.split

.thread245:                                       ; preds = %bb.m, %.split265
  %i.bp = call i32 @g_strcmp0(ptr noundef %.2143, ptr noundef nonnull @.str.25) #16
  %.not191 = icmp eq i32 %i.bp, 0
  br i1 %.not191, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread245
  %i.bq = or i32 %.2, 8
  %i.br = call i64 @dt_datetime_now_to_gtimespan() #16
  %i.bs = sitofp reassoc nsz arcp contract afn i64 %i.br to double
  store double %i.bs, ptr %i.c, align 8, !tbaa !54
  br label %bb.q

bb.p:                                             ; preds = %.thread245
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !64
  %i.bv = call i32 %i.bu(ptr noundef %.2143, ptr noundef nonnull %i.c) #16 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.3 = phi i32 [ %i.bq, %bb.o ], [ %.2, %bb.n ], [ %.2, %bb.p ] ; 3 uses
  %i.bw = and i32 %.3, 16
  %.not193 = icmp eq i32 %i.bw, 0
  br i1 %.not193, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = load double, ptr %i.c, align 8, !tbaa !54
  %i.by = fptosi double %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ca = call i64 @dt_datetime_gtimespan_add_numbers(i64 noundef %i.by, ptr noundef nonnull byval(%struct.dt_datetime_t) align 8 %i.bz, i32 noundef 0) #16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %.thread248
  %.sink272.a = phi i64 [ %i.bo, %.thread248 ], [ %i.ca, %bb.r ]
  %.sink271 = phi ptr [ %i.c, %.thread248 ], [ %i.b, %bb.r ]
  %.4.ph = phi i32 [ 32, %.thread248 ], [ %.3, %bb.r ]
  %i.cb = sitofp reassoc nsz arcp contract afn i64 %.sink272.a to double
  store double %i.cb, ptr %.sink271, align 8, !tbaa !54
  br label %bb.s

bb.s:                                             ; preds = %bb.i, %.sink.split, %.split258, %bb.q
  %.4 = phi i32 [ %.1134, %bb.i ], [ %.1134, %.split258 ], [ %.3, %bb.q ], [ %.4.ph, %.sink.split ]
  %i.cc = load double, ptr %i.b, align 8, !tbaa !54
  %i.cd = load double, ptr %i.c, align 8, !tbaa !54
  br label %bb.w

bb.t:                                             ; preds = %g_strdup_inline.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !64
  %i.cg = call i32 %i.cf(ptr noundef %.2137, ptr noundef nonnull %i.b) #16
  %.not165 = icmp eq i32 %i.cg, 0
  br i1 %.not165, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !64
  %i.ci = call i32 %i.ch(ptr noundef %.2143, ptr noundef nonnull %i.c) #16
  %.not166 = icmp eq i32 %i.ci, 0
  br i1 %.not166, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = load double, ptr %i.b, align 8, !tbaa !54 ; 2 uses
  %i.ck = load double, ptr %i.c, align 8, !tbaa !54 ; 2 uses
  %i.cl = call reassoc nsz arcp contract afn double @llvm.minnum.f64(double %i.cj, double %i.ck)
  %i.cm = call reassoc nsz arcp contract afn double @llvm.maxnum.f64(double %i.cj, double %i.ck)
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v, %bb.s
  %.5 = phi i32 [ %.4, %bb.s ], [ %.1134, %bb.v ], [ %.1134, %bb.u ], [ %.1134, %bb.t ]
  %.0130 = phi nsz double [ %i.cd, %bb.s ], [ %i.cm, %bb.v ], [ 0.000000e+00, %bb.u ], [ 0.000000e+00, %bb.t ]
  %.0 = phi nsz double [ %i.cc, %bb.s ], [ %i.cl, %bb.v ], [ 0.000000e+00, %bb.u ], [ 0.000000e+00, %bb.t ]
  call void @g_free(ptr noundef %.2137) #16
  call void @g_free(ptr noundef %.2143) #16
  call void @dtgtk_range_select_set_selection(ptr noundef nonnull %0, i32 noundef %.5, double noundef %.0, double noundef %.0130, i32 noundef %2, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.b
  ret void
}

declare i32 @g_str_has_prefix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare ptr @g_regex_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @g_regex_match_full(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @g_match_info_get_match_count(ptr noundef) local_unnamed_addr #2

declare ptr @g_match_info_fetch(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @g_match_info_free(ptr noundef) local_unnamed_addr #2

declare void @g_regex_unref(ptr noundef) local_unnamed_addr #2

declare i64 @dt_datetime_now_to_gtimespan() local_unnamed_addr #2

declare i32 @dt_datetime_exif_to_numbers_raw(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @dt_datetime_gtimespan_add_numbers(i64 noundef, ptr noundef byval(%struct.dt_datetime_t) align 8, i32 noundef) local_unnamed_addr #2

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #10

declare i64 @g_type_register_static_simple(i64 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_event_box_get_type() local_unnamed_addr #11

declare ptr @g_intern_static_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @dtgtk_range_select_class_intern_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @g_type_class_peek_parent(ptr noundef %0) #16
  store ptr %i.a, ptr @dtgtk_range_select_parent_class, align 8, !tbaa !49
  %i.b = load i32, ptr @GtkDarktableRangeSelect_private_offset, align 4, !tbaa !48
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_type_class_adjust_private_offset(ptr noundef %0, ptr noundef nonnull @GtkDarktableRangeSelect_private_offset) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_range_select_destroy, ptr %i.c, align 8, !tbaa !194
  %i.d = load i64, ptr %0, align 8, !tbaa !195
  %i.e = tail call i32 (ptr, i64, i32, i32, ptr, ptr, ptr, i64, i32, ...) @g_signal_new(ptr noundef nonnull @.str.27, i64 noundef %i.d, i32 noundef 2, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull @g_cclosure_marshal_VOID__VOID, i64 noundef 4, i32 noundef 0) #16, !inline_history !222 ; 0 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !195
  %i.g = tail call i32 (ptr, i64, i32, i32, ptr, ptr, ptr, i64, i32, ...) @g_signal_new(ptr noundef nonnull @.str.40, i64 noundef %i.f, i32 noundef 2, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull @g_cclosure_marshal_VOID__VOID, i64 noundef 4, i32 noundef 0) #16, !inline_history !222 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @dtgtk_range_select_init(ptr nofree readnone captures(none) %0) #4 {
bb.a:
  ret void
}

declare ptr @g_type_class_peek_parent(ptr noundef) local_unnamed_addr #2

declare void @g_type_class_adjust_private_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @_range_select_destroy(ptr noundef %0) #0 {
bb.a:
  %i.a = load atomic i64, ptr @dtgtk_range_select_get_type.static_g_define_type_id seq_cst, align 8
  %.not.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i, label %bb.b, label %dtgtk_range_select_get_type.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_once_init_enter(ptr noundef nonnull @dtgtk_range_select_get_type.static_g_define_type_id) #16, !inline_history !223
  %.not4.i.i = icmp eq i32 %i.b, 0
  br i1 %.not4.i.i, label %dtgtk_range_select_get_type.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc i64 @dtgtk_range_select_get_type_once(), !inline_history !223
  tail call void @g_once_init_leave(ptr noundef nonnull @dtgtk_range_select_get_type.static_g_define_type_id, i64 noundef %i.c) #16, !inline_history !223
  br label %dtgtk_range_select_get_type.exit.i
end_hunk_0
