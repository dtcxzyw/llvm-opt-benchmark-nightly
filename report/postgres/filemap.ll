Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/filemap?download=true
inline.NumInlined: 83
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@calculate_totals:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8              ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %i.k = load i32, ptr %i.j, align 4
  %.not = icmp eq i32 %i.k, 1
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = load i64, ptr %0, align 8
  %i.o = add i64 %i.n, %i.m
  store i64 %i.o, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.q = load i32, ptr %i.p, align 8
  switch i32 %i.q, label %bb.f [
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.l, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = add i64 %i.s, %i.r
  store i64 %i.t, ptr %i.b, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.l, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.w = load i64, ptr %i.v, align 8
  %i.x = sub i64 %i.u, %i.w
  %i.y = load i64, ptr %i.b, align 8
  %i.z = add i64 %i.x, %i.y
  store i64 %i.z, ptr %i.b, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ae = call ptr @datapagemap_iterate(ptr noundef nonnull %i.ad) #13 ; 3 uses
  %i.af = call zeroext i1 @datapagemap_next(ptr noundef %i.ae, ptr noundef nonnull %i.a) #13
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %i.ag = load i64, ptr %i.b, align 8
  %i.ah = add i64 %i.ag, 8192
  store i64 %i.ah, ptr %i.b, align 8
  %i.ai = call zeroext i1 @datapagemap_next(ptr noundef %i.ae, ptr noundef nonnull %i.a) #13
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  call void @pg_free(ptr noundef %i.ae) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.pre = load i32, ptr %i.c, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %._crit_edge, %bb.b, %bb.d
  %i.aj = phi i32 [ %i.g, %bb.f ], [ %.pre, %._crit_edge ], [ %i.g, %bb.b ], [ %i.g, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %bb.b, label %._crit_edge25, !llvm.loop !12

._crit_edge25:                                    ; preds = %bb.h, %bb.a
  ret void
}

declare ptr @datapagemap_iterate(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @datapagemap_next(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pg_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @print_filemap(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq i32 %i.h, 4
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.o = load i32, ptr @__pg_log_level, align 4
  %i.p = icmp ult i32 %i.o, 2
  br i1 %i.p, label %bb.f, label %bb.g, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %switch.tableidx = add i32 %i.h, -1             ; 2 uses
  %i.s = icmp ult i32 %switch.tableidx, 6
  br i1 %i.s, label %switch.lookup, label %action_to_str.exit

switch.lookup:                                    ; preds = %bb.f
  %i.t = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.print_filemap, i64 %i.t
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %action_to_str.exit

action_to_str.exit:                               ; preds = %bb.f, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.13, %bb.f ]
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef %i.r, ptr noundef nonnull %.0.i) #13
  br label %bb.g

bb.g:                                             ; preds = %action_to_str.exit, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  tail call void @datapagemap_print(ptr noundef nonnull %i.x) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr %i.a, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %i.ab = load ptr, ptr @stdout, align 8
  %i.ac = tail call i32 @fflush(ptr noundef %i.ab) ; 0 uses
  ret void
}

declare void @datapagemap_print(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @decide_file_actions(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 24 uses
  %i.b = load ptr, ptr @filehash, align 8         ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not18.i = icmp eq i64 %i.c, 0
  br i1 %.not18.i, label %filehash_start_iterate.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.f = phi i64 [ 0, %.lr.ph.i ], [ %i.j, %bb.c ]
  %.01215.i = phi i32 [ 0, %.lr.ph.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8
  %.not.i = icmp eq i32 %i.h, 1
  br i1 %.not.i, label %bb.c, label %filehash_start_iterate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %.01215.i, 1                     ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %filehash_start_iterate.exit, !llvm.loop !14

filehash_start_iterate.exit:                      ; preds = %bb.b, %bb.c, %bb.a
  %.2.i = phi i32 [ -1, %bb.a ], [ %.01215.i, %bb.b ], [ -1, %bb.c ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %decide_file_action.exit, %filehash_start_iterate.exit
  %i.l = phi ptr [ %i.b, %filehash_start_iterate.exit ], [ %.pre, %decide_file_action.exit ] ; 3 uses
  %.sroa.12.0 = phi i1 [ false, %filehash_start_iterate.exit ], [ %spec.select, %decide_file_action.exit ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %.2.i, %filehash_start_iterate.exit ], [ %i.u, %decide_file_action.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.12.2 = phi i1 [ %.sroa.12.0, %bb.d ], [ %spec.select, %bb.f ]
  %.sroa.0.2 = phi i32 [ %.sroa.0.0, %bb.d ], [ %i.u, %bb.f ] ; 2 uses
  %i.o = phi i1 [ %.sroa.12.0, %bb.d ], [ %1, %bb.f ]
  br i1 %i.o, label %bb.ah, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = zext i32 %.sroa.0.2 to i64
  %i.r = getelementptr inbounds nuw [96 x i8], ptr %i.p, i64 %i.q ; 15 uses
  %i.s = add i32 %.sroa.0.2, -1                   ; 2 uses
  %i.t = load i32, ptr %i.n, align 4              ; 2 uses
  %i.u = and i32 %i.t, %i.s                       ; 2 uses
  %i.v = xor i32 %i.s, %.2.i
  %i.w = and i32 %i.t, %i.v
  %1 = icmp eq i32 %i.w, 0                        ; 2 uses
  %spec.select = select i1 %1, i1 true, i1 %.sroa.12.2 ; 2 uses
  %i.x = load i32, ptr %i.r, align 8
  %.not.i12 = icmp eq i32 %i.x, 1
  br i1 %.not.i12, label %filehash_iterate.exit, label %bb.e

filehash_iterate.exit:                            ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 33 uses
  %i.aa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(18) @.str.20) #15
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %decide_file_action.exit, label %bb.g

bb.g:                                             ; preds = %filehash_iterate.exit
  %i.ac = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(1) @.str.21) #15
  %.not.i14 = icmp eq ptr %i.ac, null
  br i1 %.not.i14, label %bb.h, label %decide_file_action.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ad = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(1) @.str.27) #15
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ae = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(1) @.str.28) #15
  %.not35.i.i = icmp eq ptr %i.ae, null
  br i1 %.not35.i.i, label %.critedge.preheader.i.i, label %bb.l

.critedge.preheader.i.i:                          ; preds = %bb.i
  %i.af = call ptr @last_dir_separator(ptr noundef nonnull %i.z) #13 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %.027.i.i = select i1 %i.ag, ptr %i.z, ptr %i.ah
  %i.ai = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.027.i.i, ptr noundef nonnull dereferenceable(25) @.str.32, i64 noundef 25) #15
  %.not38.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not38.i.i, label %bb.j, label %.critedge.1.i.i

.critedge.1.i.i:                                  ; preds = %.critedge.preheader.i.i
  %i.aj = call ptr @last_dir_separator(ptr noundef nonnull %i.z) #13 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %.027.1.i.i = select i1 %i.ak, ptr %i.z, ptr %i.al
  %i.am = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.027.1.i.i, ptr noundef nonnull dereferenceable(21) @.str.33, i64 noundef 21) #15
  %.not38.1.i.i = icmp eq i32 %i.am, 0
  br i1 %.not38.1.i.i, label %bb.j, label %.critedge.2.i.i

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.an = call ptr @last_dir_separator(ptr noundef nonnull %i.z) #13 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %.027.2.i.i = select i1 %i.ao, ptr %i.z, ptr %i.ap
  %i.aq = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.027.2.i.i, ptr noundef nonnull dereferenceable(17) @.str.34, i64 noundef 16) #15
  %.not38.2.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not38.2.i.i, label %bb.j, label %.critedge.3.i.i

.critedge.3.i.i:                                  ; preds = %.critedge.2.i.i
  %i.ar = call ptr @last_dir_separator(ptr noundef nonnull %i.z) #13 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %.027.3.i.i = select i1 %i.as, ptr %i.z, ptr %i.at
  %i.au = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.027.3.i.i, ptr noundef nonnull dereferenceable(13) @.str.35, i64 noundef 13) #15
  %.not38.3.i.i = icmp eq i32 %i.au, 0
  br i1 %.not38.3.i.i, label %bb.j, label %.critedge.4.i.i

.critedge.4.i.i:                                  ; preds = %.critedge.3.i.i
  %i.av = call ptr @last_dir_separator(ptr noundef nonnull %i.z) #13 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %.027.4.i.i = select i1 %i.aw, ptr %i.z, ptr %i.ax
  %i.ay = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.027.4.i.i, ptr noundef nonnull dereferenceable(15) @.str.36, i64 noundef 15) #15
  %.not38.4.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not38.4.i.i, label %bb.j, label %.critedge.5.i.i

.critedge.5.i.i:                                  ; preds = %.critedge.4.i.i
  %i.az = call ptr @last_dir_separator(ptr noundef nonnull %i.z) #13 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %.027.5.i.i = select i1 %i.ba, ptr %i.z, ptr %i.bb
  %i.bc = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.027.5.i.i, ptr noundef nonnull dereferenceable(16) @.str.37, i64 noundef 16) #15
  %.not38.5.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not38.5.i.i, label %bb.j, label %.critedge.6.i.i

.critedge.6.i.i:                                  ; preds = %.critedge.5.i.i
  %i.bd = call ptr @last_dir_separator(ptr noundef nonnull %i.z) #13 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %.027.6.i.i = select i1 %i.be, ptr %i.z, ptr %i.bf
  %i.bg = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.027.6.i.i, ptr noundef nonnull dereferenceable(15) @.str.38, i64 noundef 15) #15
  %.not38.6.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not38.6.i.i, label %bb.j, label %.critedge.7.i.i

.critedge.7.i.i:                                  ; preds = %.critedge.6.i.i
  %i.bh = call ptr @last_dir_separator(ptr noundef nonnull %i.z) #13 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %.027.7.i.i = select i1 %i.bi, ptr %i.z, ptr %i.bj
  %i.bk = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.027.7.i.i, ptr noundef nonnull dereferenceable(16) @.str.39, i64 noundef 16) #15
  %.not38.7.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not38.7.i.i, label %bb.j, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.critedge.7.i.i
  %i.bl = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.41) #13 ; 0 uses
  %strlen.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %strncmp.i.i = call i32 @strncmp(ptr nonnull %i.z, ptr nonnull %i.a, i64 %strlen.i.i)
  %cmp.i.i = icmp eq i32 %strncmp.i.i, 0
  br i1 %cmp.i.i, label %bb.k, label %.preheader.1.i.i

bb.j:                                             ; preds = %.critedge.7.i.i, %.critedge.6.i.i, %.critedge.5.i.i, %.critedge.4.i.i, %.critedge.3.i.i, %.critedge.2.i.i, %.critedge.1.i.i, %.critedge.preheader.i.i
  %i.bm = load i32, ptr @__pg_log_level, align 4
  %i.bn = icmp ult i32 %i.bm, 2
  br i1 %i.bn, label %.sink.split, label %bb.l, !prof !5

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.bo = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.42) #13 ; 0 uses
  %strlen.1.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %strncmp.1.i.i = call i32 @strncmp(ptr nonnull %i.z, ptr nonnull %i.a, i64 %strlen.1.i.i)
  %cmp.1.i.i = icmp eq i32 %strncmp.1.i.i, 0
  br i1 %cmp.1.i.i, label %bb.k, label %.preheader.2.i.i

.preheader.2.i.i:                                 ; preds = %.preheader.1.i.i
  %i.bp = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.43) #13 ; 0 uses
  %strlen.2.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %strncmp.2.i.i = call i32 @strncmp(ptr nonnull %i.z, ptr nonnull %i.a, i64 %strlen.2.i.i)
  %cmp.2.i.i = icmp eq i32 %strncmp.2.i.i, 0
  br i1 %cmp.2.i.i, label %bb.k, label %.preheader.3.i.i

.preheader.3.i.i:                                 ; preds = %.preheader.2.i.i
  %i.bq = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.44) #13 ; 0 uses
  %strlen.3.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %strncmp.3.i.i = call i32 @strncmp(ptr nonnull %i.z, ptr nonnull %i.a, i64 %strlen.3.i.i)
  %cmp.3.i.i = icmp eq i32 %strncmp.3.i.i, 0
  br i1 %cmp.3.i.i, label %bb.k, label %.preheader.4.i.i

.preheader.4.i.i:                                 ; preds = %.preheader.3.i.i
  %i.br = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.45) #13 ; 0 uses
  %strlen.4.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %strncmp.4.i.i = call i32 @strncmp(ptr nonnull %i.z, ptr nonnull %i.a, i64 %strlen.4.i.i)
  %cmp.4.i.i = icmp eq i32 %strncmp.4.i.i, 0
  br i1 %cmp.4.i.i, label %bb.k, label %.preheader.5.i.i

.preheader.5.i.i:                                 ; preds = %.preheader.4.i.i
  %i.bs = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.46) #13 ; 0 uses
  %strlen.5.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %strncmp.5.i.i = call i32 @strncmp(ptr nonnull %i.z, ptr nonnull %i.a, i64 %strlen.5.i.i)
  %cmp.5.i.i = icmp eq i32 %strncmp.5.i.i, 0
  br i1 %cmp.5.i.i, label %bb.k, label %.preheader.6.i.i

.preheader.6.i.i:                                 ; preds = %.preheader.5.i.i
  %i.bt = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.47) #13 ; 0 uses
  %strlen.6.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %strncmp.6.i.i = call i32 @strncmp(ptr nonnull %i.z, ptr nonnull %i.a, i64 %strlen.6.i.i)
  %cmp.6.i.i = icmp eq i32 %strncmp.6.i.i, 0
  br i1 %cmp.6.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.preheader.6.i.i, %.preheader.5.i.i, %.preheader.4.i.i, %.preheader.3.i.i, %.preheader.2.i.i, %.preheader.1.i.i, %.preheader.preheader.i.i
  %i.bu = load i32, ptr @__pg_log_level, align 4
  %i.bv = icmp ult i32 %i.bu, 2
  br i1 %i.bv, label %.sink.split, label %bb.l, !prof !5

.sink.split:                                      ; preds = %bb.k, %bb.j
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.z) #13
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k, %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.bx = load i8, ptr %i.bw, align 4, !range !7, !noundef !8
  %i.by = trunc nuw i8 %i.bx to i1
  %..i = select i1 %i.by, i32 6, i32 4
  br label %decide_file_action.exit

bb.m:                                             ; preds = %.preheader.6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.ca = load i8, ptr %i.bz, align 4, !range !7, !noundef !8
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.cd = load i8, ptr %i.cc, align 8, !range !7, !noundef !8
  %i.ce = trunc nuw i8 %i.cd to i1                ; 2 uses
  br i1 %i.cb, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.ce, label %bb.o, label %decide_file_action.exit

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 68
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  switch i32 %i.cg, label %.thread46.i [
    i32 2, label %decide_file_action.exit
    i32 3, label %decide_file_action.exit
    i32 1, label %bb.p
    i32 0, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  br label %decide_file_action.exit

bb.q:                                             ; preds = %bb.o
  %i.ch = load ptr, ptr %i.y, align 8
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef %i.ch) #13
  call void @exit(i32 noundef 1) #14
  unreachable

bb.r:                                             ; preds = %bb.m
  br i1 %i.ce, label %..thread46.i_crit_edge, label %bb.s

..thread46.i_crit_edge:                           ; preds = %bb.r
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 68
  %.pre77 = load i32, ptr %.phi.trans.insert, align 4
  br label %.thread46.i

bb.s:                                             ; preds = %bb.r
  %i.ci = load ptr, ptr @keepwal, align 8         ; 2 uses
  %i.cj = call fastcc i32 @hash_string(ptr noundef nonnull %i.z)
  %i.ck = getelementptr i8, ptr %i.ci, i64 12
  %.val.i.i.i.i = load i32, ptr %i.ck, align 4    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.01321.i.i.i.i = and i32 %.val.i.i.i.i, %i.cj  ; 2 uses
  %i.cn = zext i32 %.01321.i.i.i.i to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %decide_file_action.exit, label %.lr.ph.i.i.i.i

bb.t:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cs = add i32 %.01322.i.i.i.i, 1
  %.013.i.i.i.i = and i32 %i.cs, %.val.i.i.i.i    ; 2 uses
  %i.ct = zext i32 %.013.i.i.i.i to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i32, ptr %i.cv, align 8
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %decide_file_action.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %bb.t
  %i.cy = phi ptr [ %i.cu, %bb.t ], [ %i.co, %bb.s ]
  %.01322.i.i.i.i = phi i32 [ %.013.i.i.i.i, %bb.t ], [ %.01321.i.i.i.i, %bb.s ]
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cz, ptr noundef nonnull readonly dereferenceable(1) %i.z) #15
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %keepwal_entry_exists.exit.i, label %bb.t

keepwal_entry_exists.exit.i:                      ; preds = %.lr.ph.i.i.i.i
  %i.dc = load i32, ptr @__pg_log_level, align 4
  %i.dd = icmp ult i32 %i.dc, 2
  br i1 %i.dd, label %bb.u, label %decide_file_action.exit, !prof !5

bb.u:                                             ; preds = %keepwal_entry_exists.exit.i
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.z) #13
  br label %decide_file_action.exit

.thread46.i:                                      ; preds = %..thread46.i_crit_edge, %bb.o
  %i.de = phi i32 [ %.pre77, %..thread46.i_crit_edge ], [ %i.cg, %bb.o ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.r, i64 68
  %i.dg = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.dh = load i32, ptr %i.dg, align 8
  %.not41.i = icmp eq i32 %i.de, %i.dh
  %i.di = load ptr, ptr %i.y, align 8             ; 2 uses
  br i1 %.not41.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread46.i
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef %i.di) #13
  call void @exit(i32 noundef 1) #14
  unreachable

bb.w:                                             ; preds = %.thread46.i
  %i.dj = call zeroext i1 @pg_str_endswith(ptr noundef %i.di, ptr noundef nonnull @.str.25) #13
  br i1 %i.dj, label %decide_file_action.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = load i32, ptr %i.df, align 4
  switch i32 %i.dk, label %bb.ag [
    i32 2, label %decide_file_action.exit
    i32 3, label %decide_file_action.exit
    i32 1, label %bb.y
    i32 0, label %bb.af
  ]

bb.y:                                             ; preds = %bb.x
  %i.dl = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dm = load i32, ptr %i.dl, align 8
  switch i32 %i.dm, label %decide_file_action.exit [
    i32 2, label %bb.z
    i32 1, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y
  %i.dn = load ptr, ptr %i.y, align 8
  %i.do = call ptr @last_dir_separator(ptr noundef %i.dn) #13 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dq = load ptr, ptr %i.y, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0.i = phi ptr [ %i.dq, %bb.aa ], [ %i.dr, %bb.ab ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = call fastcc i32 @decide_wal_file_action(ptr noundef %.0.i, i64 noundef %0, i64 noundef %i.dt, i64 noundef %i.dv)
  br label %decide_file_action.exit

bb.ad:                                            ; preds = %bb.y
  %i.dx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.dy = load i64, ptr %i.dx, align 8            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.ea = load i64, ptr %i.dz, align 8            ; 2 uses
  %i.eb = icmp ult i64 %i.dy, %i.ea
  br i1 %i.eb, label %decide_file_action.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ec = icmp ugt i64 %i.dy, %i.ea
  %.43.i = select i1 %i.ec, i32 5, i32 4
  br label %decide_file_action.exit

bb.af:                                            ; preds = %bb.x
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.z) #13
  call void @exit(i32 noundef 1) #14
  unreachable

bb.ag:                                            ; preds = %bb.x
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.z) #13
  call void @exit(i32 noundef 1) #14
  unreachable

decide_file_action.exit:                          ; preds = %bb.t, %filehash_iterate.exit, %bb.g, %bb.l, %bb.n, %bb.o, %bb.o, %bb.p, %bb.s, %keepwal_entry_exists.exit.i, %bb.u, %bb.w, %bb.x, %bb.x, %bb.y, %bb.ac, %bb.ad, %bb.ae
  %.036.i = phi i32 [ 2, %bb.p ], [ 4, %filehash_iterate.exit ], [ %..i, %bb.l ], [ 4, %bb.g ], [ 4, %bb.n ], [ 4, %bb.w ], [ 4, %bb.x ], [ %i.dw, %bb.ac ], [ 4, %bb.x ], [ 2, %bb.y ], [ %.43.i, %bb.ae ], [ 3, %bb.ad ], [ 4, %bb.u ], [ 1, %bb.o ], [ 4, %keepwal_entry_exists.exit.i ], [ 1, %bb.o ], [ 6, %bb.s ], [ 6, %bb.t ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  store i32 %.036.i, ptr %i.ed, align 8
  %.pre = load ptr, ptr @filehash, align 8
  br label %bb.d, !llvm.loop !15

bb.ah:                                            ; preds = %bb.e
  %i.ee = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = zext i32 %i.ef to i64
  %i.eh = shl nuw nsw i64 %i.eg, 3
  %i.ei = add nuw nsw i64 %i.eh, 24
  %i.ej = call ptr @pg_malloc(i64 noundef %i.ei) #13 ; 3 uses
  %i.ek = load ptr, ptr @filehash, align 8        ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i32, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  store i32 %i.em, ptr %i.en, align 8
  %i.eo = load i64, ptr %i.ek, align 8            ; 2 uses
  %.not18.i15 = icmp eq i64 %i.eo, 0
  br i1 %.not18.i15, label %filehash_start_iterate.exit20, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.ah
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %.lr.ph.i16
  %i.er = phi i64 [ 0, %.lr.ph.i16 ], [ %i.ev, %bb.aj ]
  %.01215.i17 = phi i32 [ 0, %.lr.ph.i16 ], [ %i.eu, %bb.aj ] ; 2 uses
  %i.es = getelementptr inbounds nuw [96 x i8], ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 8
  %.not.i18 = icmp eq i32 %i.et, 1
  br i1 %.not.i18, label %bb.aj, label %filehash_start_iterate.exit20

bb.aj:                                            ; preds = %bb.ai
  %i.eu = add i32 %.01215.i17, 1                  ; 2 uses
  %i.ev = zext i32 %i.eu to i64                   ; 2 uses
  %i.ew = icmp ugt i64 %i.eo, %i.ev
  br i1 %i.ew, label %bb.ai, label %filehash_start_iterate.exit20, !llvm.loop !14

filehash_start_iterate.exit20:                    ; preds = %bb.ai, %bb.aj, %bb.ah
  %.2.i19 = phi i32 [ -1, %bb.ah ], [ %.01215.i17, %bb.ai ], [ -1, %bb.aj ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ej, i64 24 ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %filehash_iterate.exit24, %filehash_start_iterate.exit20
  %.sroa.12.1 = phi i1 [ false, %filehash_start_iterate.exit20 ], [ %spec.select37, %filehash_iterate.exit24 ] ; 2 uses
  %.sroa.0.1 = phi i32 [ %.2.i19, %filehash_start_iterate.exit20 ], [ %i.fg, %filehash_iterate.exit24 ]
  %.0 = phi i32 [ 0, %filehash_start_iterate.exit20 ], [ %i.fk, %filehash_iterate.exit24 ] ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %.sroa.12.5 = phi i1 [ %.sroa.12.1, %bb.ak ], [ %spec.select37, %bb.am ]
  %.sroa.0.4 = phi i32 [ %.sroa.0.1, %bb.ak ], [ %i.fg, %bb.am ] ; 2 uses
  %i.fa = phi i1 [ %.sroa.12.1, %bb.ak ], [ %2, %bb.am ]
  br i1 %i.fa, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fb = load ptr, ptr %i.ex, align 8
  %i.fc = zext i32 %.sroa.0.4 to i64
  %i.fd = getelementptr inbounds nuw [96 x i8], ptr %i.fb, i64 %i.fc ; 2 uses
  %i.fe = add i32 %.sroa.0.4, -1                  ; 2 uses
  %i.ff = load i32, ptr %i.ey, align 4            ; 2 uses
  %i.fg = and i32 %i.ff, %i.fe                    ; 2 uses
  %i.fh = xor i32 %i.fe, %.2.i19
  %i.fi = and i32 %i.ff, %i.fh
  %2 = icmp eq i32 %i.fi, 0                       ; 2 uses
  %spec.select37 = select i1 %2, i1 true, i1 %.sroa.12.5 ; 2 uses
  %i.fj = load i32, ptr %i.fd, align 8
  %.not.i22 = icmp eq i32 %i.fj, 1
  br i1 %.not.i22, label %filehash_iterate.exit24, label %bb.al

filehash_iterate.exit24:                          ; preds = %bb.am
  %i.fk = add i32 %.0, 1
  %i.fl = sext i32 %.0 to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fl
  store ptr %i.fd, ptr %i.fm, align 8
  br label %bb.ak, !llvm.loop !16

bb.an:                                            ; preds = %bb.al
  %i.fn = load i32, ptr %i.en, align 8
  %i.fo = sext i32 %i.fn to i64
  call void @pg_qsort(ptr noundef nonnull %i.ez, i64 noundef %i.fo, i64 noundef 8, ptr noundef nonnull @final_filemap_cmp) #13
  ret ptr %i.ej
}

declare ptr @pg_malloc(i64 noundef) local_unnamed_addr #2

declare void @pg_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @final_filemap_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = load ptr, ptr %1, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ugt i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %i.d, %i.f
  br i1 %i.h, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b
  %i.i = icmp eq i32 %i.d, 6                      ; 2 uses
  %. = select i1 %i.i, ptr %i.b, ptr %i.a
  %.19 = select i1 %i.i, ptr %i.a, ptr %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %., i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.19, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(1) %i.m) #15
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ 1, %bb.a ], [ %i.n, %.sink.split ]
  ret i32 %.0
}

declare ptr @pg_malloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i32 @hash_string(ptr noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 7
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8                ; 4 uses
  %i.e = sub i64 72340172838076672, %i.d
  %i.f = or i64 %i.e, %i.d
  %i.g = and i64 %i.f, -9187201950435737472
  %.not19.i.i = icmp eq i64 %i.g, -9187201950435737472
  br i1 %.not19.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.h = phi i64 [ %i.p, %.lr.ph.i.i ], [ -8645972361240307355, %bb.b ]
  %i.i = phi i64 [ %i.r, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.01520.i.i = phi ptr [ %i.q, %.lr.ph.i.i ], [ %0, %bb.b ]
  %i.j = lshr i64 %i.i, 23
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, 2388976653695081527        ; 2 uses
  %i.m = lshr i64 %i.l, 47
  %i.n = xor i64 %i.h, %i.m
  %i.o = xor i64 %i.n, %i.l
  %i.p = mul i64 %i.o, -8645972361240307355       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01520.i.i, i64 8 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8              ; 4 uses
  %i.s = sub i64 72340172838076672, %i.r
  %i.t = or i64 %i.s, %i.r
  %i.u = and i64 %i.t, -9187201950435737472
  %.not.i.i = icmp eq i64 %i.u, -9187201950435737472
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.sroa.20.0 = phi i64 [ -8645972361240307355, %bb.b ], [ %i.p, %.lr.ph.i.i ] ; 2 uses
  %.in.i.i = phi i64 [ %i.d, %bb.b ], [ %i.r, %.lr.ph.i.i ] ; 2 uses
  %.015.lcssa.i.i = phi ptr [ %0, %bb.b ], [ %i.q, %.lr.ph.i.i ] ; 2 uses
  %i.v = and i64 %.in.i.i, 255
  %.not15.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not15.i.i.i, label %fasthash_accum_cstring.exit, label %.preheader.lr.ph.i.i.i.preheader

.preheader.lr.ph.i.i.i.preheader:                 ; preds = %._crit_edge.i.i
  %i.w = trunc i64 %.in.i.i to i8
  br label %.preheader.lr.ph.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %.preheader.lr.ph.i.i.i.preheader, %fasthash_accum.exit.i.i.i
  %i.x = phi i8 [ %i.bn, %fasthash_accum.exit.i.i.i ], [ %i.w, %.preheader.lr.ph.i.i.i.preheader ]
  %i.y = phi i64 [ %i.bl, %fasthash_accum.exit.i.i.i ], [ %.sroa.20.0, %.preheader.lr.ph.i.i.i.preheader ]
  %.01216.i.i.i = phi ptr [ %i.bm, %fasthash_accum.exit.i.i.i ], [ %.015.lcssa.i.i, %.preheader.lr.ph.i.i.i.preheader ] ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01216.i.i.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  %.not13.1.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not13.1.i.i.i, label %.critedge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.preheader.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.01216.i.i.i, i64 2
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %.not13.2.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not13.2.i.i.i, label %.critedge.thread40.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.01216.i.i.i, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %.not13.3.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not13.3.i.i.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.01216.i.i.i, i64 4
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %.not13.4.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not13.4.i.i.i, label %.critedge.thread33.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.01216.i.i.i, i64 5
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  %.not13.5.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not13.5.i.i.i, label %.critedge.thread31.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.01216.i.i.i, i64 6
  %i.ak = load i8, ptr %i.aj, align 1             ; 2 uses
  %.not13.6.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not13.6.i.i.i, label %.critedge.thread29.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.01216.i.i.i, i64 7
  %i.am = load i8, ptr %i.al, align 1
  %.not13.7.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not13.7.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %.01216.i.i.i, align 1
  br label %fasthash_accum.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ao = sext i8 %i.ak to i64
  %i.ap = shl nsw i64 %i.ao, 48
  br label %.critedge.thread29.i.i.i

.critedge.thread29.i.i.i:                         ; preds = %bb.j, %bb.g
  %.sink.i.i.i = phi i64 [ %i.ap, %bb.j ], [ 0, %bb.g ]
  %.0.lcssa27.i.i.i = phi i64 [ 7, %bb.j ], [ 6, %bb.g ]
  %i.aq = sext i8 %i.ai to i64
  %i.ar = shl nsw i64 %i.aq, 40
  %i.as = or i64 %.sink.i.i.i, %i.ar
  br label %.critedge.thread31.i.i.i

.critedge.thread31.i.i.i:                         ; preds = %.critedge.thread29.i.i.i, %bb.f
  %.sink42.i.i.i = phi i64 [ %i.as, %.critedge.thread29.i.i.i ], [ 0, %bb.f ]
  %.0.lcssa26.i.i.i = phi i64 [ %.0.lcssa27.i.i.i, %.critedge.thread29.i.i.i ], [ 5, %bb.f ]
  %i.at = sext i8 %i.ag to i64
  %i.au = shl nsw i64 %i.at, 32
  %i.av = or i64 %.sink42.i.i.i, %i.au
  br label %.critedge.thread33.i.i.i

.critedge.thread33.i.i.i:                         ; preds = %.critedge.thread31.i.i.i, %bb.e
  %.sink43.i.i.i = phi i64 [ %i.av, %.critedge.thread31.i.i.i ], [ 0, %bb.e ]
  %.0.lcssa25.i.i.i = phi i64 [ %.0.lcssa26.i.i.i, %.critedge.thread31.i.i.i ], [ 4, %bb.e ]
  %.0.copyload.i.i.i.i = load i32, ptr %.01216.i.i.i, align 1
  %i.aw = zext i32 %.0.copyload.i.i.i.i to i64
  %i.ax = or i64 %.sink43.i.i.i, %i.aw
  br label %fasthash_accum.exit.i.i.i

bb.k:                                             ; preds = %bb.d
  %i.ay = sext i8 %i.ac to i64
  %i.az = shl nsw i64 %i.ay, 16
  br label %.critedge.thread40.i.i.i

.critedge.thread40.i.i.i:                         ; preds = %bb.k, %bb.c
  %.sink44.i.i.i = phi i64 [ %i.az, %bb.k ], [ 0, %bb.c ]
  %.0.lcssa38.i.i.i = phi i64 [ 3, %bb.k ], [ 2, %bb.c ]
  %i.ba = sext i8 %i.aa to i64
  %i.bb = shl nsw i64 %i.ba, 8
  %i.bc = or i64 %.sink44.i.i.i, %i.bb
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.thread40.i.i.i, %.preheader.lr.ph.i.i.i
  %.sink45.i.i.i = phi i64 [ %i.bc, %.critedge.thread40.i.i.i ], [ 0, %.preheader.lr.ph.i.i.i ]
  %.0.lcssa37.i.i.i = phi i64 [ %.0.lcssa38.i.i.i, %.critedge.thread40.i.i.i ], [ 1, %.preheader.lr.ph.i.i.i ]
end_hunk_0
