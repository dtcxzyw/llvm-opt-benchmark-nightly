inline.NumInlined: 55
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@manifest_files_delete_item:bb.a
  %i.y = add i32 %i.t, 1
  %i.z = and i32 %i.y, %.val30                    ; 2 uses
  %i.aa = load ptr, ptr %i.d, align 8
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %.not = icmp eq i32 %i.ad, 1
  br i1 %.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.026.lcssa = phi ptr [ %1, %bb.a ], [ %.02635, %.lr.ph ], [ %i.s, %bb.b ]
  store i32 0, ptr %.026.lcssa, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @manifest_files_start_iterate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %.not18 = icmp eq i64 %i.a, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.d = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.c ]
  %.01215 = phi i32 [ 0, %.lr.ph ], [ %i.g, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp eq i32 %i.f, 1
  br i1 %.not, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %.01215, 1                       ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %.01215, %bb.b ] ; 2 uses
  store i32 %.2, ptr %1, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.2, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.k, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @manifest_files_start_iterate_at(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 9)) %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, %2                         ; 2 uses
  store i32 %i.c, ptr %1, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.c, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.e, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @manifest_files_iterate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load i8, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.e = phi i8 [ %i.s, %bb.e ], [ %.promoted, %bb.a ]
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = load i32, ptr %1, align 4                ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %i.k = add i32 %i.h, -1
  %i.l = load i32, ptr %i.c, align 4
  %i.m = and i32 %i.k, %i.l                       ; 2 uses
  store i32 %i.m, ptr %1, align 4
  %i.n = load i32, ptr %i.c, align 4
  %i.o = load i32, ptr %i.d, align 4
  %i.p = xor i32 %i.o, %i.m
  %i.q = and i32 %i.p, %i.n
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = phi i8 [ 1, %bb.d ], [ 0, %bb.c ]
  %i.t = load i32, ptr %i.j, align 8
  %.not = icmp eq i32 %i.t, 1
  br i1 %.not, label %bb.f, label %bb.b

bb.f:                                             ; preds = %bb.e, %bb.b
  %.2 = phi ptr [ %i.j, %bb.e ], [ null, %bb.b ]
  ret ptr %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 -1, -9223372036854775769) i64 @manifest_files_estimate_space(double noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = fdiv double %0, 9.000000e-01             ; 2 uses
  %i.b = fcmp ult double %i.a, f0x41F0000000000000
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = fptoui double %i.a to i64
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 3 uses
  %i.e = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.d)
  %i.f = icmp samesign ult i64 %i.e, 2
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.h = sub nuw nsw i64 64, %i.g
  %i.i = shl nuw i64 1, %i.h
  %.0.i = select i1 %i.f, i64 %i.d, i64 %i.i
  %i.j = mul i64 %.0.i, 40                        ; 2 uses
  %i.k = icmp ugt i64 %i.j, 9223372036854775806
  %i.l = add nuw i64 %i.j, 40
  %spec.select = select i1 %i.k, i64 -1, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %spec.select, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @manifest_files_stat(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = shl i64 %i.a, 2
  %i.c = tail call ptr @palloc0(i64 noundef %i.b) #21 ; 3 uses
  %i.d = load i64, ptr %0, align 8                ; 2 uses
  %.not81 = icmp eq i64 %i.d, 0
  br i1 %.not81, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr i8, ptr %0, i64 12
  br label %bb.b

.preheader:                                       ; preds = %bb.c
  %.not82 = icmp eq i64 %i.v, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph78

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.g = phi i64 [ %i.d, %.lr.ph ], [ %i.v, %bb.c ] ; 2 uses
  %i.h = phi i64 [ 0, %.lr.ph ], [ %i.x, %bb.c ]
  %.05272 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.c ] ; 3 uses
  %.05671 = phi i32 [ 0, %.lr.ph ], [ %.157, %bb.c ] ; 2 uses
  %.05870 = phi i32 [ 0, %.lr.ph ], [ %.260, %bb.c ] ; 2 uses
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %.not67 = icmp eq i32 %i.k, 1
  br i1 %.not67, label %manifest_files_distance.exit, label %bb.c

manifest_files_distance.exit:                     ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val = load ptr, ptr %i.l, align 8
  %i.m = tail call fastcc i32 @hash_string(ptr noundef readonly %.val)
  %.val69 = load i32, ptr %i.f, align 4
  %i.n = and i32 %.val69, %i.m                    ; 3 uses
  %.not.i = icmp ugt i32 %i.n, %.05272
  %i.o = trunc i64 %i.g to i32
  %i.p = select i1 %.not.i, i32 %i.o, i32 0
  %.pn.i = sub i32 %.05272, %i.n
  %.0.i = add i32 %.pn.i, %i.p                    ; 2 uses
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.0.i, i32 %.05870)
  %i.q = add i32 %.0.i, %.05671
  %i.r = zext i32 %i.n to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4
  %.pre = load i64, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %manifest_files_distance.exit
  %i.v = phi i64 [ %.pre, %manifest_files_distance.exit ], [ %i.g, %bb.b ] ; 4 uses
  %.260 = phi i32 [ %spec.select, %manifest_files_distance.exit ], [ %.05870, %bb.b ] ; 3 uses
  %.157 = phi i32 [ %i.q, %manifest_files_distance.exit ], [ %.05671, %bb.b ] ; 3 uses
  %i.w = add i32 %.05272, 1                       ; 2 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %.preheader, !llvm.loop !12

.lr.ph78:                                         ; preds = %.preheader, %.lr.ph78
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph78 ], [ 0, %.preheader ] ; 2 uses
  %.04977.a = phi i32 [ %.2, %.lr.ph78 ], [ 0, %.preheader ] ; 2 uses
  %.05076 = phi i32 [ %.151, %.lr.ph78 ], [ 0, %.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4             ; 3 uses
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = add i32 %i.aa, -1
  %spec.select68 = tail call i32 @llvm.umax.i32(i32 %i.ac, i32 %.04977.a)
  %i.ad = tail call i32 @llvm.usub.sat.i32(i32 %i.aa, i32 1)
  %.151 = add i32 %i.ad, %.05076                  ; 2 uses
  %.2 = select i1 %i.ab, i32 %.04977.a, i32 %spec.select68 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %1 = and i64 %indvars.iv.next, 4294967295
  %i.ae = icmp samesign ugt i64 %i.v, %1
  br i1 %i.ae, label %.lr.ph78, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph78, %bb.a, %.preheader
  %.056.lcssa95 = phi i32 [ %.157, %.preheader ], [ 0, %bb.a ], [ %.157, %.lr.ph78 ] ; 2 uses
  %.058.lcssa94 = phi i32 [ %.260, %.preheader ], [ 0, %bb.a ], [ %.260, %.lr.ph78 ]
  %.050.lcssa = phi i32 [ 0, %.preheader ], [ 0, %bb.a ], [ %.151, %.lr.ph78 ] ; 2 uses
  %.049.lcssa = phi i32 [ 0, %.preheader ], [ 0, %bb.a ], [ %.2, %.lr.ph78 ]
  tail call void @pfree(ptr noundef %i.c) #21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i32, ptr %i.af, align 8            ; 3 uses
  %.not = icmp eq i32 %i.ag, 0
  %.pre85 = load i64, ptr %0, align 8             ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ah = uitofp i32 %i.ag to double              ; 3 uses
  %i.ai = uitofp i64 %.pre85 to double
  %i.aj = uitofp i32 %.056.lcssa95 to double
  %i.ak = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ai, i64 1
  %i.am = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.ah, i64 1
  %i.ao = fdiv <2 x double> %i.an, %i.al
  %i.ap = uitofp i32 %.050.lcssa to double
  %i.aq = fdiv double %i.ap, %i.ah
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.0 = phi double [ %i.aq, %bb.d ], [ 0.000000e+00, %._crit_edge ]
  %i.ar = phi <2 x double> [ %i.ao, %bb.d ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %i.as = extractelement <2 x double> %i.ar, i64 0
  %i.at = extractelement <2 x double> %i.ar, i64 1
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 2, i32 noundef 0, ptr noundef nonnull @.str, i64 noundef %.pre85, i32 noundef %i.ag, double noundef %i.at, i32 noundef %.056.lcssa95, i32 noundef %.058.lcssa94, double noundef %i.as, i32 noundef %.050.lcssa, i32 noundef %.049.lcssa, double noundef %.0) #21
  ret void
}

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

declare void @pg_log_generic(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @load_backup_manifests(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call ptr @pg_malloc_mul(i64 noundef 8, i64 noundef %i.a) #21 ; 2 uses
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr @load_backup_manifest(ptr noundef %i.e)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr %i.f, ptr %i.g, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %i.b
}

declare ptr @pg_malloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @load_backup_manifest(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 11 uses
  %1 = alloca %struct.stat, align 8               ; 4 uses
  %2 = alloca %struct.JsonManifestParseContext, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.b = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.1, ptr noundef %0) #21 ; 0 uses
  %i.c = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0) #21 ; 6 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #24
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 3, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a) #21
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) #21
  call void @exit(i32 noundef 1) #22
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.h = call i32 @fstat(i32 noundef %i.c, ptr noundef nonnull %1) #21
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) #21
  call void @exit(i32 noundef 1) #22
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8              ; 10 uses
  %i.k = sdiv i64 %i.j, 100
  %i.l = call i64 @llvm.smax.i64(i64 %i.k, i64 256)
  %i.m = call i64 @llvm.umin.i64(i64 %i.l, i64 4294967295)
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = call ptr @manifest_files_create(i32 noundef %i.n, ptr noundef null)
  %i.p = call ptr @pg_malloc0(i64 noundef 32) #21 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %i.q, align 8
  store ptr %i.p, ptr %2, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @combinebackup_version_cb, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @combinebackup_system_identifier_cb, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @combinebackup_per_file_cb, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @combinebackup_per_wal_range_cb, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @report_manifest_error, ptr %i.v, align 8
  %i.w = icmp slt i64 %i.j, 131073
  br i1 %i.w, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.x = call ptr @pg_malloc(i64 noundef %i.j) #21 ; 3 uses
  %i.y = call i64 @read(i32 noundef %i.c, ptr noundef %i.x, i64 noundef %i.j) #21 ; 2 uses
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %sext = shl i64 %i.y, 32
  %i.aa = ashr exact i64 %sext, 32
  %.not54 = icmp eq i64 %i.aa, %i.j
  br i1 %.not54, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp slt i32 %i.z, 0
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a) #21
  call void @exit(i32 noundef 1) #22
  unreachable

bb.k:                                             ; preds = %bb.i
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, i32 noundef %i.z, i64 noundef %i.j) #21
  call void @exit(i32 noundef 1) #22
  unreachable

bb.l:                                             ; preds = %bb.h
  %i.ac = call i32 @close(i32 noundef %i.c) #21   ; 0 uses
  call void @json_parse_manifest(ptr noundef nonnull %2, ptr noundef %i.x, i64 noundef %i.j) #21
  br label %bb.r

bb.m:                                             ; preds = %bb.g
  %i.ad = trunc i64 %i.j to i32                   ; 2 uses
  %i.ae = call ptr @json_parse_manifest_incremental_init(ptr noundef nonnull %2) #21 ; 2 uses
  %i.af = call ptr @pg_malloc(i64 noundef 131073) #21 ; 3 uses
  %i.ag = icmp sgt i32 %i.ad, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m, %bb.q
  %.04557 = phi i32 [ %i.ar, %bb.q ], [ %i.ad, %bb.m ] ; 5 uses
  %i.ah = icmp samesign ult i32 %.04557, 131072
  %i.ai = call i32 @llvm.umin.i32(i32 %.04557, i32 262144)
  %spec.select = lshr i32 %i.ai, 1
  %.0 = select i1 %i.ah, i32 %.04557, i32 %spec.select ; 3 uses
  %i.aj = zext nneg i32 %.0 to i64
  %i.ak = call i64 @read(i32 noundef %i.c, ptr noundef %i.af, i64 noundef %i.aj) #21 ; 3 uses
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %.not53 = icmp eq i32 %.0, %i.al
  br i1 %.not53, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a) #21
  call void @exit(i32 noundef 1) #22
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.an = and i64 %i.ak, 2147483647
  %i.ao = zext nneg i32 %.04557 to i64
  %i.ap = sub nsw i64 %i.j, %i.ao
  %i.aq = add i64 %i.ap, %i.an
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, i64 noundef %i.aq, i64 noundef %i.j) #21
  call void @exit(i32 noundef 1) #22
  unreachable

bb.q:                                             ; preds = %.lr.ph
  %i.ar = sub nsw i32 %.04557, %.0                ; 3 uses
end_hunk_0
