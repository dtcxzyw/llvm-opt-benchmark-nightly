Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/reservation?download=true
inline.NumInlined: 103
inline.NumDeleted: 45
begin_hunk_0_@reservation_update_groups:bb.a
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @timer_compare_limit(i64 %i.c, i64 %i.d, i64 %i.q, i64 %i.r, ptr noundef nonnull @__func__.reservation_update_groups, ptr noundef nonnull byval(%struct.timespec) align 8 %1) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare i64 @get_group_tlm() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_update_resv_group_uid_access_list(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @get_groups_members(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #18 ; 3 uses
  store ptr %i.f, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = load i32, ptr %i.a, align 4
  %.not14 = icmp eq i32 %i.h, %i.i
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = sext i32 %i.h to i64
  %i.m = shl nsw i64 %i.l, 2
  %bcmp = call i32 @bcmp(ptr %i.f, ptr %i.k, i64 %i.m)
  %.not15 = icmp eq i32 %bcmp, 0
  br i1 %.not15, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call ptr @xstrdup(ptr noundef %i.o) #18  ; 2 uses
  store ptr %i.p, ptr %i.c, align 8
  %i.q = load i32, ptr %i.a, align 4
  store i32 %i.q, ptr %i.g, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.r) #18
  store ptr %i.f, ptr %i.r, align 8
  store ptr null, ptr %i.b, align 8
  %i.s = call fastcc i32 @_set_access(ptr noundef nonnull %0) ; 0 uses
  %i.t = call zeroext i1 @slurm_with_slurmdbd() #18
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.n, align 8
  %i.v = call i32 @xstrcmp(ptr noundef %i.p, ptr noundef %i.u) #18
  %.not16 = icmp eq i32 %i.v, 0
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 1, ptr %1, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @slurm_xfree(ptr noundef nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  call void @slurm_xfree(ptr noundef nonnull %i.b) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @set_reserved_license_count(ptr noundef initializes((28, 32)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.a, align 4
  %i.b = load ptr, ptr @resv_list, align 8
  %i.c = tail call i32 @list_for_each(ptr noundef %i.b, ptr noundef nonnull @_foreach_reservation_license_list, ptr noundef %0) #18 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_reservation_license_list(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @time(ptr noundef null) #18 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 33554432
  %.not9 = icmp eq i64 %i.f, 0
  br i1 %.not9, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp slt i64 %i.a, %i.h
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp sgt i64 %i.a, %i.k
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.m = tail call i32 @list_for_each(ptr noundef nonnull %i.c, ptr noundef nonnull @_foreach_reservation_license, ptr noundef %1) #18 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.e
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_magnetic_resv_count() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @magnetic_resv_list, align 8
  %i.b = tail call i32 @list_count(ptr noundef %i.a) #18
  ret i32 %i.b
}

declare i32 @list_delete_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @assoc_mgr_valid_tres_cnt(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @slurm_get_tres_sub_string(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

declare i32 @slurm_get_next_tres(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_xstrfmtcatat(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @xstrstr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @slurmdb_destroy_tres_rec(ptr noundef) #2

declare i32 @slurmdb_find_tres_in_list_by_type(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_create_str(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  tail call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.111, ptr noundef %i.c, ptr noundef %i.e, i64 noundef %i.g) #18
  ret i32 0
}

declare void @slurm_make_time_str(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @reservation_flags_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare i32 @assoc_mgr_fill_in_assoc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @uid_from_string(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @list_sort(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @list_find_part(ptr noundef, ptr noundef) #2

declare i32 @slurm_find_ptr_in_list(ptr noundef, ptr noundef) #2

declare ptr @license_validate(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_xstrcat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @_resv_time_overlap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.constraint_slot, align 8    ; 14 uses
  %3 = alloca %struct.constraint_slot, align 8    ; 14 uses
  %i.a = tail call i64 @time(ptr noundef null) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i64, ptr %i.b, align 8
  store i64 %i.c, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8
  store i64 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4
  store i32 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i64, ptr %i.l, align 8
  store i64 %i.m, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.o = load i64, ptr %i.n, align 8
  store i64 %i.o, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.r = load i64, ptr %i.q, align 8
  store i64 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = load i32, ptr %i.u, align 8
  store i32 %i.v, ptr %i.t, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.y = load i64, ptr %i.x, align 8
  store i64 %i.y, ptr %i.w, align 8
  %indvars.iv.sroa.phi.sroa.speculated.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %indvars.iv.sroa.phi.sroa.speculated.sroa.gep134 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %indvars.iv.sroa.phi.sroa.speculated.sroa.gep136 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %indvars.iv.sroa.phi.sroa.speculated.sroa.gep137 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %indvars.iv.sroa.phi.sroa.speculated.sroa.gep139 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %indvars.iv.sroa.phi.sroa.speculated.sroa.gep140 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %indvars.iv.sroa.phi.sroa.speculated.sroa.gep142 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %indvars.iv.sroa.phi.sroa.speculated.sroa.gep143 = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.c

bb.b:                                             ; preds = %bb.f
  br i1 %.not120.a, label %bb.c, label %.critedge, !llvm.loop !89

bb.c:                                             ; preds = %bb.a, %bb.b
  %.not120.a = phi i1 [ true, %bb.a ], [ false, %bb.b ]
  %indvars.iv.sroa.phi.sroa.speculated.sroa.phi = phi ptr [ %indvars.iv.sroa.phi.sroa.speculated.sroa.gep, %bb.a ], [ %indvars.iv.sroa.phi.sroa.speculated.sroa.gep134, %bb.b ]
  %indvars.iv.sroa.phi.sroa.speculated.sroa.phi135 = phi ptr [ %indvars.iv.sroa.phi.sroa.speculated.sroa.gep136, %bb.a ], [ %indvars.iv.sroa.phi.sroa.speculated.sroa.gep137, %bb.b ]
  %indvars.iv.sroa.phi.sroa.speculated.sroa.phi138 = phi ptr [ %indvars.iv.sroa.phi.sroa.speculated.sroa.gep139, %bb.a ], [ %indvars.iv.sroa.phi.sroa.speculated.sroa.gep140, %bb.b ]
  %indvars.iv.sroa.phi.sroa.speculated.sroa.phi141 = phi ptr [ %indvars.iv.sroa.phi.sroa.speculated.sroa.gep142, %bb.a ], [ %indvars.iv.sroa.phi.sroa.speculated.sroa.gep143, %bb.b ]
  %indvars.iv.sroa.phi.sroa.speculated = phi ptr [ %2, %bb.a ], [ %3, %bb.b ] ; 2 uses
  %4 = load i64, ptr %indvars.iv.sroa.phi.sroa.speculated.sroa.phi141, align 8
  %i.z = and i64 %4, 131072
  %.not = icmp eq i64 %i.z, 0
  %.pre = load i64, ptr %indvars.iv.sroa.phi.sroa.speculated, align 8 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add nsw i64 %.pre, %i.a                 ; 5 uses
  store i64 %i.aa, ptr %indvars.iv.sroa.phi.sroa.speculated, align 8
  %5 = load i32, ptr %indvars.iv.sroa.phi.sroa.speculated.sroa.phi135, align 4 ; 2 uses
  switch i32 %5, label %bb.e [
    i32 -1, label %.sink.split
    i32 0, label %bb.f
    i32 -2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.ab = mul i32 %5, 60
  %i.ac = zext i32 %i.ab to i64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink130 = phi i64 [ %i.ac, %bb.e ], [ 31536000, %bb.d ]
  %i.ad = add nsw i64 %i.aa, %.sink130
  store i64 %i.ad, ptr %indvars.iv.sroa.phi.sroa.speculated.sroa.phi, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %bb.d, %bb.c
  %i.ae = phi i64 [ %i.aa, %bb.d ], [ %i.aa, %bb.d ], [ %.pre, %bb.c ], [ %i.aa, %.sink.split ]
  %i.af = load i64, ptr %indvars.iv.sroa.phi.sroa.speculated.sroa.phi138, align 8
  %i.ag = icmp sgt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.g, label %bb.b

bb.g:                                             ; preds = %bb.f
  %i.ah = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__._resv_time_overlap) #18 ; 0 uses
  br label %_slots_overlap.exit88

.critedge:                                        ; preds = %bb.b
  %i.ai = load i64, ptr %i.p, align 8             ; 2 uses
  %i.aj = load i64, ptr %i.d, align 8             ; 2 uses
  %i.ak = icmp slt i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge
  %i.al = phi i64 [ %i.aj, %bb.h ], [ %i.ai, %.critedge ] ; 2 uses
  %.sroa.phi43 = phi ptr [ %i.d, %bb.h ], [ %i.p, %.critedge ] ; 3 uses
  %.sroa.phi46 = phi ptr [ %i.k, %bb.h ], [ %i.w, %.critedge ] ; 2 uses
  %i.am = phi ptr [ %2, %bb.h ], [ %3, %.critedge ] ; 5 uses
  %.sroa.phi = phi ptr [ %i.w, %bb.h ], [ %i.k, %.critedge ]
  %.sroa.phi89 = phi ptr [ %i.p, %bb.h ], [ %i.d, %.critedge ] ; 4 uses
  %i.an = phi ptr [ %3, %bb.h ], [ %2, %.critedge ] ; 6 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp slt i64 %i.ao, %i.al
  br i1 %i.ap, label %bb.j, label %_slots_overlap.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load i64, ptr %i.am, align 8
  %i.ar = load i64, ptr %.sroa.phi89, align 8
  %i.as = icmp slt i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.k, label %_slots_overlap.exit

bb.k:                                             ; preds = %bb.j
  %i.at = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.au = and i64 %i.at, 16384
  %.not80 = icmp eq i64 %i.au, 0
  br i1 %.not80, label %_slots_overlap.exit88, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = tail call i32 @get_log_level() #18
  %i.aw = icmp sgt i32 %i.av, 3
  br i1 %i.aw, label %bb.m, label %_slots_overlap.exit88

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.127, ptr noundef nonnull @__func__._resv_time_overlap) #18
  br label %_slots_overlap.exit88

_slots_overlap.exit:                              ; preds = %bb.j, %bb.i
  %i.ax = load i64, ptr %.sroa.phi, align 8
  %i.ay = and i64 %i.ax, 34370224148
  %.not71 = icmp eq i64 %i.ay, 0
  br i1 %.not71, label %_slots_overlap.exit88, label %bb.n

bb.n:                                             ; preds = %_slots_overlap.exit
  %i.az = load i64, ptr %.sroa.phi46, align 8
  %i.ba = and i64 %i.az, 34370224149
  %or.cond = icmp eq i64 %i.ba, 1
  br i1 %or.cond, label %bb.o, label %.critedge82

bb.o:                                             ; preds = %bb.n
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.a, i64 %i.ao)
  %i.bb = load i64, ptr %i.am, align 8
  %i.bc = sub nsw i64 %i.bb, %spec.select
  %i.bd = icmp slt i64 %i.bc, 604801
  br i1 %i.bd, label %.critedge82, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bf = and i64 %i.be, 16384
  %.not74 = icmp eq i64 %i.bf, 0
  br i1 %.not74, label %_slots_overlap.exit88, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = tail call i32 @get_log_level() #18
  %i.bh = icmp sgt i32 %i.bg, 3
  br i1 %i.bh, label %bb.r, label %_slots_overlap.exit88

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.128, ptr noundef nonnull @__func__._resv_time_overlap, ptr noundef %i.bj) #18
  br label %_slots_overlap.exit88

.critedge82:                                      ; preds = %bb.o, %bb.n
  call fastcc void @_advance_slot_until(ptr noundef %i.an, i64 noundef %i.al)
  %i.bk = load i64, ptr %i.an, align 8            ; 2 uses
  %i.bl = load i64, ptr %.sroa.phi43, align 8     ; 2 uses
  %i.bm = icmp sgt i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.critedge82
  %i.bn = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.129, ptr noundef nonnull @__func__._resv_time_overlap) #18 ; 0 uses
  br label %_slots_overlap.exit88

bb.t:                                             ; preds = %.critedge82
  %i.bo = icmp slt i64 %i.bk, %i.bl
  br i1 %i.bo, label %bb.u, label %_slots_overlap.exit84

bb.u:                                             ; preds = %bb.t
  %i.bp = load i64, ptr %i.am, align 8
  %i.bq = load i64, ptr %.sroa.phi89, align 8
  %i.br = icmp slt i64 %i.bp, %i.bq
  br i1 %i.br, label %bb.v, label %_slots_overlap.exit84

bb.v:                                             ; preds = %bb.u
  %i.bs = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bt = and i64 %i.bs, 16384
  %.not79 = icmp eq i64 %i.bt, 0
  br i1 %.not79, label %_slots_overlap.exit88, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = call i32 @get_log_level() #18
  %i.bv = icmp sgt i32 %i.bu, 3
  br i1 %i.bv, label %bb.x, label %_slots_overlap.exit88

bb.x:                                             ; preds = %bb.w
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.130, ptr noundef nonnull @__func__._resv_time_overlap) #18
  br label %_slots_overlap.exit88

_slots_overlap.exit84:                            ; preds = %bb.u, %bb.t
  %i.bw = call fastcc i32 @_advance_slot(ptr noundef %i.an)
  %.not75 = icmp eq i32 %i.bw, 0
  br i1 %.not75, label %bb.y, label %_slots_overlap.exit88

bb.y:                                             ; preds = %_slots_overlap.exit84
  %i.bx = load i64, ptr %i.an, align 8
  %i.by = load i64, ptr %.sroa.phi43, align 8
  %i.bz = icmp slt i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.z, label %_slots_overlap.exit86

bb.z:                                             ; preds = %bb.y
  %i.ca = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.131, ptr noundef nonnull @__func__._resv_time_overlap) #18 ; 0 uses
  br label %_slots_overlap.exit88

_slots_overlap.exit86:                            ; preds = %bb.y
  %i.cb = load i64, ptr %.sroa.phi46, align 8
  %i.cc = and i64 %i.cb, 34370224148
  %.not76 = icmp eq i64 %i.cc, 0
  br i1 %.not76, label %_slots_overlap.exit88, label %bb.aa

bb.aa:                                            ; preds = %_slots_overlap.exit86
  %i.cd = load i64, ptr %.sroa.phi89, align 8
  call fastcc void @_advance_slot_until(ptr noundef %i.am, i64 noundef %i.cd)
  %i.ce = load i64, ptr %i.am, align 8            ; 2 uses
  %i.cf = load i64, ptr %.sroa.phi89, align 8     ; 2 uses
  %i.cg = icmp sgt i64 %i.ce, %i.cf
  br i1 %i.cg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ch = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.133, ptr noundef nonnull @__func__._resv_time_overlap) #18 ; 0 uses
  br label %_slots_overlap.exit88

bb.ac:                                            ; preds = %bb.aa
  %i.ci = load i64, ptr %i.an, align 8
  %i.cj = load i64, ptr %.sroa.phi43, align 8
  %i.ck = icmp slt i64 %i.ci, %i.cj
  %i.cl = icmp slt i64 %i.ce, %i.cf
  %or.cond131 = and i1 %i.ck, %i.cl
  br i1 %or.cond131, label %bb.ad, label %_slots_overlap.exit88

bb.ad:                                            ; preds = %bb.ac
  %i.cm = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.cn = and i64 %i.cm, 16384
  %.not77 = icmp eq i64 %i.cn, 0
  br i1 %.not77, label %_slots_overlap.exit88, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.co = call i32 @get_log_level() #18
  %i.cp = icmp sgt i32 %i.co, 3
  br i1 %i.cp, label %bb.af, label %_slots_overlap.exit88

bb.af:                                            ; preds = %bb.ae
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.134, ptr noundef nonnull @__func__._resv_time_overlap) #18
  br label %_slots_overlap.exit88

_slots_overlap.exit88:                            ; preds = %bb.ac, %bb.q, %bb.r, %bb.p, %bb.g, %_slots_overlap.exit, %_slots_overlap.exit86, %bb.ad, %bb.af, %bb.ae, %_slots_overlap.exit84, %bb.v, %bb.x, %bb.w, %bb.k, %bb.m, %bb.l, %bb.ab, %bb.z, %bb.s
  %.2 = phi i1 [ true, %bb.g ], [ true, %bb.s ], [ true, %bb.k ], [ true, %bb.v ], [ true, %bb.z ], [ true, %_slots_overlap.exit84 ], [ true, %bb.ab ], [ false, %bb.p ], [ true, %bb.ad ], [ false, %_slots_overlap.exit ], [ true, %bb.l ], [ true, %bb.m ], [ true, %bb.w ], [ true, %bb.x ], [ false, %bb.ac ], [ false, %bb.r ], [ true, %bb.ae ], [ true, %bb.af ], [ false, %_slots_overlap.exit86 ], [ false, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_advance_slot_until(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.constraint_slot, align 8    ; 7 uses
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 34370224148
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8                ; 2 uses
  %i.e = icmp sgt i64 %i.d, %1
  br i1 %i.e, label %bb.c, label %bb.d
end_hunk_0
