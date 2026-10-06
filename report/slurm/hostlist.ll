Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/hostlist?download=true
inline.NumInlined: 142
inline.NumDeleted: 36
begin_hunk_0_@hostrange_shift:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = sext i32 %i.s to i64
  %i.u = add i64 %i.q, 16
  %i.v = add i64 %i.u, %i.t                       ; 4 uses
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #25 ; 7 uses
  %.not43 = icmp eq ptr %i.w, null
  br i1 %.not43, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @log_oom(ptr noundef nonnull @.str.8, i32 noundef 823, ptr noundef nonnull @__func__.hostrange_shift) #21
  tail call void @abort() #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = icmp sgt i32 %.0, 1
  %.pre = load i32, ptr %i.r, align 8             ; 2 uses
  %i.y = icmp eq i32 %.pre, %.0
  %or.cond59 = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond59, label %.lr.ph.preheader.i, label %bb.k

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.z = zext nneg i32 %.0 to i64                 ; 3 uses
  %i.aa = tail call ptr @llvm.stacksave.p0()
  %i.ab = alloca i32, i64 %i.z, align 16          ; 2 uses
  %i.ac = load i64, ptr %i.m, align 8
  %i.ad = trunc i64 %i.ac to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.z, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.012.i = phi i32 [ %i.ad, %.lr.ph.preheader.i ], [ %i.ag, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ae = srem i32 %.012.i, 36
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  store i32 %i.ae, ptr %i.af, align 4
  %i.ag = sdiv i32 %.012.i, 36
  %i.ah = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ah, label %.lr.ph.i, label %hostlist_parse_int_to_array.exit, !llvm.loop !6

hostlist_parse_int_to_array.exit:                 ; preds = %.lr.ph.i
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.w, i64 noundef %i.v, ptr noundef nonnull @.str.13, ptr noundef %i.ai) #21 ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, -1
  %i.al = add nuw nsw i32 %i.aj, %.0
  %i.am = zext nneg i32 %i.al to i64
  %i.an = icmp ugt i64 %i.v, %i.am
  %or.cond = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %or.cond, label %.lr.ph, label %bb.j

.lr.ph:                                           ; preds = %hostlist_parse_int_to_array.exit
  %i.ao = load ptr, ptr @alpha_num, align 8
  %i.ap = zext nneg i32 %i.aj to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv49 = phi i64 [ %i.ap, %.lr.ph ], [ %indvars.iv.next50, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv49
  store i8 %i.au, ptr %i.av, align 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next50
  store i8 0, ptr %i.aw, align 1
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %hostlist_parse_int_to_array.exit
  %i.ax = load i64, ptr %i.m, align 8
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.m, align 8
  call void @llvm.stackrestore.p0(ptr %i.aa)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.az = add i64 %i.n, 1
  store i64 %i.az, ptr %i.m, align 8
  %i.ba = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.w, i64 noundef %i.v, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.p, i32 noundef %.pre, i64 noundef %i.n) #21 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %hostrange_count.exit, %bb.k, %bb.j, %bb.d
  %.037 = phi ptr [ %i.j, %bb.d ], [ %i.w, %bb.j ], [ %i.w, %bb.k ], [ null, %hostrange_count.exit ]
  ret ptr %.037
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @_hostrange_string(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = load ptr, ptr %0, align 8
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 80, ptr noundef nonnull @.str.13, ptr noundef %i.b) #21 ; 5 uses
  %i.d = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21 ; 4 uses
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %i.f = icmp slt i32 %i.c, 0
  %i.g = add nuw nsw i32 %i.c, %i.e
  %i.h = icmp sgt i32 %i.g, 79
  %or.cond31 = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond31, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i8, ptr %i.i, align 4, !range !15, !noundef !16
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ugt i16 %i.d, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq i32 %i.n, %i.e
  %or.cond43 = select i1 %i.l, i1 %i.o, i1 false
  br i1 %or.cond43, label %.lr.ph.preheader.i, label %._crit_edge

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.p = zext i16 %i.d to i64                     ; 2 uses
  %i.q = tail call ptr @llvm.stacksave.p0()
  %i.r = alloca i32, i64 %i.p, align 16           ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i32
  %i.v = add i32 %1, %i.u
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.p, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.012.i = phi i32 [ %i.v, %.lr.ph.preheader.i ], [ %i.y, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.w = srem i32 %.012.i, 36
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i
  store i32 %i.w, ptr %i.x, align 4
  %i.y = sdiv i32 %.012.i, 36
  %i.z = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.z, label %.lr.ph.i, label %hostlist_parse_int_to_array.exit.preheader, !llvm.loop !6

hostlist_parse_int_to_array.exit.preheader:       ; preds = %.lr.ph.i
  %i.aa = load ptr, ptr @alpha_num, align 8
  %i.ab = zext nneg i32 %i.c to i64
  %wide.trip.count = zext i16 %i.d to i64
  br label %hostlist_parse_int_to_array.exit

hostlist_parse_int_to_array.exit:                 ; preds = %hostlist_parse_int_to_array.exit.preheader, %hostlist_parse_int_to_array.exit
  %indvars.iv34 = phi i64 [ %i.ab, %hostlist_parse_int_to_array.exit.preheader ], [ %indvars.iv.next35, %hostlist_parse_int_to_array.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %hostlist_parse_int_to_array.exit.preheader ], [ %indvars.iv.next, %hostlist_parse_int_to_array.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv34
  store i8 %i.ag, ptr %i.ah, align 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %hostlist_parse_int_to_array.exit, !llvm.loop !67

bb.d:                                             ; preds = %hostlist_parse_int_to_array.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next35
  store i8 0, ptr %i.ai, align 1
  call void @llvm.stackrestore.p0(ptr %i.q)
  br label %bb.e

._crit_edge:                                      ; preds = %bb.c
  %i.aj = zext nneg i32 %i.c to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %i.al = sub nsw i32 80, %i.c
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = sext i32 %1 to i64
  %i.aq = add i64 %i.ao, %i.ap
  %i.ar = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ak, i64 noundef %i.am, ptr noundef nonnull @.str.14, i32 noundef %i.n, i64 noundef %i.aq) #21
  %or.cond = icmp ugt i32 %i.ar, 79
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge, %bb.b
  %i.as = call noalias ptr @strdup(ptr noundef nonnull %i.a) #21
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a, %bb.e
  %.0 = phi ptr [ null, %bb.a ], [ %i.as, %bb.e ], [ null, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @hostrange_delete_host(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %1, 1
  store i64 %i.d, ptr %i.a, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq i64 %1, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add i64 %1, -1
  store i64 %i.h, ptr %i.e, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i8, ptr %i.i, align 4, !range !15, !noundef !16
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load ptr, ptr %0, align 8                ; 2 uses
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 567, ptr noundef nonnull @__func__.hostrange_new) #21 ; 4 uses
  %i.n = tail call ptr @xstrdup(ptr noundef %i.l) #21
  store ptr %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  store i8 1, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.p, i8 0, i64 20, i1 false)
  br label %hostrange_copy.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i32, ptr %i.q, align 8
  %i.s = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 567, ptr noundef nonnull @__func__.hostrange_new) #21 ; 6 uses
  %i.t = tail call ptr @xstrdup(ptr noundef %i.l) #21
  store ptr %i.t, ptr %i.s, align 8
  %2 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.b, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.f, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %i.r, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  store i8 0, ptr %i.w, align 4
  br label %hostrange_copy.exit

hostrange_copy.exit:                              ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.m, %bb.f ], [ %i.s, %bb.g ] ; 2 uses
  %i.x = add i64 %1, -1
  store i64 %i.x, ptr %i.e, align 8
  %i.y = add i64 %1, 1
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 %i.y, ptr %i.z, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %hostrange_copy.exit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %.0.i, %hostrange_copy.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @hostlist_insert_range(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = icmp sgt i32 %2, %i.b
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, %i.b
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.b, 16                     ; 2 uses
  %i.h = sext i32 %i.g to i64
  store i32 %i.g, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = tail call ptr @slurm_xrecalloc(ptr noundef nonnull %i.i, i64 noundef range(i64 -2147483648, 2147483648) %i.h, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 1170, ptr noundef nonnull @__func__.hostlist_resize) #21 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %2 to i64                       ; 3 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = load i8, ptr %i.p, align 4, !range !15, !noundef !16
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = load ptr, ptr %1, align 8                ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 567, ptr noundef nonnull @__func__.hostrange_new) #21 ; 4 uses
  %i.u = tail call ptr @xstrdup(ptr noundef %i.s) #21
  store ptr %i.u, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  store i8 1, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br label %hostrange_copy.exit

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = load <2 x i64>, ptr %i.x, align 8
  %i.ab = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 567, ptr noundef nonnull @__func__.hostrange_new) #21 ; 5 uses
  %i.ac = tail call ptr @xstrdup(ptr noundef %i.s) #21
  store ptr %i.ac, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store <2 x i64> %i.aa, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i32 %i.z, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  store i8 0, ptr %i.af, align 4
  br label %hostrange_copy.exit

hostrange_copy.exit:                              ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.t, %bb.e ], [ %i.ab, %bb.f ]
  %i.ag = load ptr, ptr %i.k, align 8
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.m
  store ptr %.0.i, ptr %i.ah, align 8
  %i.ai = load i32, ptr %i.a, align 4             ; 2 uses
  %i.aj = icmp slt i32 %2, %i.ai
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %hostrange_copy.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.m, %hostrange_copy.exit ]
  %.03038 = phi ptr [ %i.am, %.lr.ph ], [ %i.o, %hostrange_copy.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ak = load ptr, ptr %i.k, align 8
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv.next ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  store ptr %.03038, ptr %i.al, align 8
  %i.an = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !4

._crit_edge:                                      ; preds = %.lr.ph, %hostrange_copy.exit
  %.lcssa = phi i32 [ %i.ai, %hostrange_copy.exit ], [ %i.an, %.lr.ph ]
  %i.aq = add nsw i32 %.lcssa, 1
  store i32 %i.aq, ptr %i.a, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.02939 = load ptr, ptr %i.ar, align 8          ; 2 uses
  %.not40 = icmp eq ptr %.02939, null
  br i1 %.not40, label %.loopexit, label %.lr.ph43

.lr.ph43:                                         ; preds = %._crit_edge, %bb.h
  %.02941 = phi ptr [ %.029, %bb.h ], [ %.02939, %._crit_edge ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.02941, i64 16 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8            ; 2 uses
  %.not36 = icmp slt i32 %i.at, %2
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph43
  %i.au = getelementptr inbounds nuw i8, ptr %.02941, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = add nsw i32 %i.at, 1                    ; 2 uses
  store i32 %i.ay, ptr %i.as, align 8
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.02941, i64 24
  store ptr %i.bb, ptr %i.bc, align 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph43, %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %.02941, i64 40
  %.029 = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %.loopexit, label %.lr.ph43, !llvm.loop !5

.loopexit:                                        ; preds = %bb.h, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hostlist_find_dims(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %0, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.e = zext i16 %i.d to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.032 = phi i32 [ %2, %bb.b ], [ %i.e, %bb.c ]  ; 2 uses
  %i.f = tail call fastcc ptr @hostname_create_dims(ptr noundef %1, i32 noundef %.032) ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.g) #21 ; 2 uses
  %.not39 = icmp eq i32 %i.h, 0
  br i1 %.not39, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %hostname_suffix_is_valid.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.pre = load ptr, ptr %i.l, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @__errno_location() #22
  store i32 %i.h, ptr %i.m, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_find_dims) #23
  unreachable

bb.f:                                             ; preds = %.lr.ph, %hostrange_count.exit
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.ae, %hostrange_count.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %hostrange_count.exit ] ; 4 uses
  %.03051 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %hostrange_count.exit ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call fastcc i32 @hostrange_hn_within(ptr noundef %i.p, ptr noundef %i.f, i32 noundef %.032)
  %.not40 = icmp eq i32 %i.q, 0
  br i1 %.not40, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %hostname_suffix_is_valid.exit.thread, label %hostname_suffix_is_valid.exit
end_hunk_0
