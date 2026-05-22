inline.NumInlined: 1396
inline.NumDeleted: 321
begin_hunk_0_@thgroup_add:bb.a
  br i1 %.not3.i10, label %RB_OBJ_FROZEN.exit12, label %RB_OBJ_FROZEN.exit12.thread

RB_OBJ_FROZEN.exit12:                             ; preds = %bb.f
  %i.ad = inttoptr i64 %i.z to ptr                ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %i.af = and i64 %i.ae, 2048
  %.not25 = icmp eq i64 %i.af, 0
  br i1 %.not25, label %rbimpl_RB_TYPE_P_fastpath.exit.i13, label %RB_OBJ_FROZEN.exit12.thread

RB_OBJ_FROZEN.exit12.thread:                      ; preds = %bb.f, %RB_OBJ_FROZEN.exit12
  %i.ag = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ag, ptr noundef nonnull @.str.261) #41
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i13:               ; preds = %RB_OBJ_FROZEN.exit12
  %i.ah = and i64 %i.ae, 95
  %or.cond.not.i14 = icmp eq i64 %i.ah, 76
  br i1 %or.cond.not.i14, label %bb.g, label %.critedge.i15, !prof !173

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i13
  %i.ai = getelementptr i8, ptr %i.ad, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !169 ; 2 uses
  %i.ak = and i64 %i.aj, -2                       ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = trunc i64 %i.aj to i1
  %i.an = getelementptr i8, ptr %i.ad, i64 32     ; 2 uses
  br i1 %i.am, label %RTYPEDDATA_GET_DATA.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i17

RTYPEDDATA_GET_DATA.exit.i17:                     ; preds = %bb.h, %bb.g
  %i.ap = phi ptr [ %i.ao, %bb.h ], [ %i.an, %bb.g ] ; 2 uses
  %i.aq = icmp eq i64 %i.ak, ptrtoint (ptr @thgroup_data_type to i64)
  br i1 %i.aq, label %rbimpl_check_typeddata.exit21, label %.preheader.i18, !prof !49

.preheader.i18:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i17, %bb.i
  %.016.i19 = phi ptr [ %i.as, %bb.i ], [ %i.al, %RTYPEDDATA_GET_DATA.exit.i17 ] ; 2 uses
  %.not.i20 = icmp eq ptr %.016.i19, null
  br i1 %.not.i20, label %.critedge.i15, label %bb.i

bb.i:                                             ; preds = %.preheader.i18
  %i.ar = getelementptr i8, ptr %.016.i19, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !174 ; 2 uses
  %i.at = icmp eq ptr %i.as, @thgroup_data_type
  br i1 %i.at, label %rbimpl_check_typeddata.exit21, label %.preheader.i18, !llvm.loop !179

.critedge.i15:                                    ; preds = %.preheader.i18, %rbimpl_RB_TYPE_P_fastpath.exit.i13
  %i.au = tail call ptr @rb_check_typeddata(i64 noundef %i.z, ptr noundef nonnull @thgroup_data_type) #17
  br label %rbimpl_check_typeddata.exit21

rbimpl_check_typeddata.exit21:                    ; preds = %bb.i, %RTYPEDDATA_GET_DATA.exit.i17, %.critedge.i15
  %.1.i16 = phi ptr [ %i.au, %.critedge.i15 ], [ %i.ap, %RTYPEDDATA_GET_DATA.exit.i17 ], [ %i.ap, %bb.i ]
  %i.av = load i32, ptr %.1.i16, align 4, !tbaa !412
  %.not9 = icmp eq i32 %i.av, 0
  br i1 %.not9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %rbimpl_check_typeddata.exit21
  %i.aw = load i64, ptr @rb_eThreadError, align 8, !tbaa !144
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aw, ptr noundef nonnull @.str.262) #41
  unreachable

bb.k:                                             ; preds = %rbimpl_check_typeddata.exit21
  store i64 %0, ptr %i.y, align 8, !tbaa !253
  ret i64 %0
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_obj_alloc(i64 noundef) local_unnamed_addr #4

declare void @rb_define_const(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_hidden_new(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ruby_native_thread_p() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_native_thread)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = icmp ne ptr %i.b, null
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_resolve_me_location(ptr noundef readonly captures(ret: address, provenance) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a, %.backedge
  %i.c = phi ptr [ %.pre, %.backedge ], [ %i.b, %bb.a ] ; 5 uses
  %.037 = phi ptr [ %.037.be, %.backedge ], [ %0, %bb.a ] ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 15
  switch i8 %i.e, label %.thread [
    i8 0, label %bb.b
    i8 4, label %bb.c
    i8 6, label %bb.e
    i8 11, label %bb.f
  ]

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !418
  %i.j = tail call i64 @rb_iseq_path(ptr noundef %i.g) #17
  br label %bb.g

bb.c:                                             ; preds = %.preheader
  %i.k = getelementptr i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48
  %i.m = tail call ptr @rb_proc_get_iseq(i64 noundef %i.l, ptr noundef null) #17 ; 3 uses
  %.not52.not = icmp eq ptr %i.m, null
  br i1 %.not52.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i64 @rb_iseq_path(ptr noundef nonnull %i.m) #17
  %i.o = getelementptr i8, ptr %i.m, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !418
  br label %bb.g

bb.e:                                             ; preds = %.preheader
  %i.q = getelementptr i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  br label %.backedge

.backedge:                                        ; preds = %bb.e, %bb.f
  %.037.be = phi ptr [ %i.t, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.037.be, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !415
  br label %.preheader

bb.f:                                             ; preds = %.preheader
  %i.s = getelementptr i8, ptr %i.c, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48   ; 2 uses
  %.not51 = icmp eq ptr %i.t, null
  br i1 %.not51, label %.thread, label %.backedge

bb.g:                                             ; preds = %bb.d, %bb.b
  %.pn = phi ptr [ %i.i, %bb.b ], [ %i.p, %bb.d ] ; 2 uses
  %.139 = phi i64 [ %i.j, %bb.b ], [ %i.n, %bb.d ] ; 6 uses
  %.141.in.in.in.in = getelementptr i8, ptr %.pn, i64 96
  %.146.in.in.in.in = getelementptr i8, ptr %.pn, i64 104
  %i.u = load <2 x i32>, ptr %.146.in.in.in.in, align 8, !tbaa !7
  %i.v = sext <2 x i32> %i.u to <2 x i64>
  %i.w = shl nsw <2 x i64> %i.v, splat (i64 1)
  %i.x = or disjoint <2 x i64> %i.w, splat (i64 1)
  %i.y = load <2 x i32>, ptr %.141.in.in.in.in, align 8, !tbaa !7
  %i.z = sext <2 x i32> %i.y to <2 x i64>
  %i.aa = shl nsw <2 x i64> %i.z, splat (i64 1)
  %i.ab = or disjoint <2 x i64> %i.aa, splat (i64 1)
  %i.ac = icmp eq i64 %.139, 0
  %i.ad = and i64 %.139, 7
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = or i1 %i.ac, %i.ae
  br i1 %i.af, label %rbimpl_RB_TYPE_P_fastpath.exit55.thread, label %rbimpl_RB_TYPE_P_fastpath.exit55

rbimpl_RB_TYPE_P_fastpath.exit55:                 ; preds = %bb.g
  %i.ag = inttoptr i64 %.139 to ptr
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !46
  %i.ai = and i64 %i.ah, 31
  %i.aj = icmp eq i64 %i.ai, 7
  br i1 %i.aj, label %bb.h, label %rbimpl_RB_TYPE_P_fastpath.exit55.thread

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit55
  %i.ak = tail call i64 @rb_ary_entry(i64 noundef %.139, i64 noundef 1) #54 ; 4 uses
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = and i64 %i.ak, 7
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = or i1 %i.al, %i.an
  br i1 %i.ao, label %.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.h
  %i.ap = inttoptr i64 %i.ak to ptr
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !46
  %i.ar = and i64 %i.aq, 31
  %i.as = icmp eq i64 %i.ar, 5
  br i1 %i.as, label %rbimpl_RB_TYPE_P_fastpath.exit55.thread, label %.thread

rbimpl_RB_TYPE_P_fastpath.exit55.thread:          ; preds = %bb.g, %rbimpl_RB_TYPE_P_fastpath.exit, %rbimpl_RB_TYPE_P_fastpath.exit55
  %.2 = phi i64 [ %i.ak, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %.139, %rbimpl_RB_TYPE_P_fastpath.exit55 ], [ %.139, %bb.g ]
  %.not53 = icmp eq ptr %1, null
  br i1 %.not53, label %.thread, label %bb.i

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit55.thread
  store i64 %.2, ptr %1, align 8, !tbaa !144
  %i.at = getelementptr i8, ptr %1, i64 8
  store <2 x i64> %i.ab, ptr %i.at, align 8, !tbaa !144
  %i.au = getelementptr i8, ptr %1, i64 24
  store <2 x i64> %i.x, ptr %i.au, align 8, !tbaa !144
  br label %.thread

.thread:                                          ; preds = %.preheader, %bb.f, %bb.h, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit55.thread, %bb.i, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.a
  %.1 = phi ptr [ %.037, %rbimpl_RB_TYPE_P_fastpath.exit55.thread ], [ null, %rbimpl_RB_TYPE_P_fastpath.exit ], [ null, %bb.h ], [ null, %bb.c ], [ null, %bb.a ], [ %.037, %bb.i ], [ null, %bb.f ], [ null, %.preheader ]
  ret ptr %.1
}

declare i64 @rb_iseq_path(ptr noundef) local_unnamed_addr #4

declare ptr @rb_proc_get_iseq(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_get_coverage_mode() local_unnamed_addr #23 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145
  %i.b = getelementptr i8, ptr %i.a, i64 1240
  %i.c = load i32, ptr %i.b, align 8, !tbaa !379
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @rb_set_coverages(i64 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #33 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145 ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 1224
  store i64 %0, ptr %i.b, align 8, !tbaa !378
  %i.c = getelementptr i8, ptr %i.a, i64 1232
  store i64 %2, ptr %i.c, align 8, !tbaa !421
  %i.d = getelementptr i8, ptr %i.a, i64 1240
  store i32 %1, ptr %i.d, align 8, !tbaa !379
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_resume_coverages() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 1240
  %i.c = load i32, ptr %i.b, align 8, !tbaa !379  ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 1232
  %i.e = load i64, ptr %i.d, align 8, !tbaa !421
  tail call void @rb_add_event_hook2(ptr noundef nonnull @update_line_coverage, i32 noundef 65536, i64 noundef 4, i32 noundef 5) #17
  %i.f = and i32 %i.c, 2
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_add_event_hook2(ptr noundef nonnull @update_branch_coverage, i32 noundef 131072, i64 noundef 4, i32 noundef 5) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = and i32 %i.c, 4
  %.not3 = icmp eq i32 %i.g, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_add_event_hook2(ptr noundef nonnull @update_method_coverage, i32 noundef 8, i64 noundef %i.e, i32 noundef 5) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @rb_add_event_hook2(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal void @update_line_coverage(i64 %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !147
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !328  ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !422
  %i.h = tail call i64 @rb_iseq_coverage(ptr noundef %i.g) #17 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = and i64 %i.h, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %.critedge, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr                 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !46   ; 2 uses
  %i.o = and i64 %i.n, 31
  %i.p = icmp eq i64 %i.o, 7
  br i1 %i.p, label %bb.b, label %.critedge

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !312
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.s = and i64 %i.n, 8192
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.m, i64 16
  br label %RARRAY_AREF.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.m, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.t, %bb.d ], [ %i.v, %bb.e ]
  %i.w = load i64, ptr %.0.i.i, align 8, !tbaa !144 ; 4 uses
  %.not25 = icmp eq i64 %i.w, 0
  br i1 %.not25, label %.critedge, label %bb.f

bb.f:                                             ; preds = %RARRAY_AREF.exit
  %i.x = tail call i32 @rb_sourceline() #17
  %i.y = add i32 %i.x, -1
  %i.z = sext i32 %i.y to i64                     ; 5 uses
  %i.aa = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145
  %i.ab = getelementptr i8, ptr %i.aa, i64 1240
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !379
  %i.ad = and i32 %i.ac, 8
  %.not26 = icmp eq i32 %i.ad, 0
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !422 ; 2 uses
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !423
  %i.ag = getelementptr i8, ptr %i.ae, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !418
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !424
  %i.ak = ptrtoint ptr %i.af to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = add nsw i64 %i.an, -1
  tail call void @rb_iseq_clear_event_flags(ptr noundef %i.ae, i64 noundef %i.ao, i32 noundef 65536) #17
  %i.ap = shl nsw i64 %i.z, 1
  %i.aq = add nsw i64 %i.ap, 3
  %i.ar = tail call i64 @rb_ary_push(i64 noundef %i.w, i64 noundef %i.aq) #17 ; 0 uses
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.as = inttoptr i64 %i.w to ptr                ; 4 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !46 ; 2 uses
  %i.au = and i64 %i.at, 8192
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.h
  %i.av = getelementptr i8, ptr %i.as, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !48
  %.not27 = icmp sgt i64 %i.aw, %i.z
  br i1 %.not27, label %bb.i, label %.critedge

rb_array_len.exit.thread:                         ; preds = %bb.h
  %i.ax = lshr i64 %i.at, 15
  %i.ay = and i64 %i.ax, 127
  %.not2735 = icmp sgt i64 %i.ay, %i.z
  br i1 %.not2735, label %.thread, label %.critedge

.thread:                                          ; preds = %rb_array_len.exit.thread
  %i.az = getelementptr i8, ptr %i.as, i64 16
  br label %RARRAY_AREF.exit32

bb.i:                                             ; preds = %rb_array_len.exit
  %i.ba = getelementptr i8, ptr %i.as, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !48
  br label %RARRAY_AREF.exit32

RARRAY_AREF.exit32:                               ; preds = %.thread, %bb.i
  %.0.i.i31 = phi ptr [ %i.az, %.thread ], [ %i.bb, %bb.i ]
  %i.bc = getelementptr [8 x i8], ptr %.0.i.i31, i64 %i.z
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !144 ; 3 uses
  %i.be = trunc i64 %i.bd to i1
  %i.bf = icmp slt i64 %i.bd, 9223372036854775806
  %or.cond = and i1 %i.bf, %i.be
  br i1 %or.cond, label %bb.j, label %.critedge

bb.j:                                             ; preds = %RARRAY_AREF.exit32
  %i.bg = add nsw i64 %i.bd, 2
  tail call fastcc void @RARRAY_ASET(i64 noundef %i.w, i64 noundef %i.z, i64 noundef %i.bg)
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %rb_array_len.exit.thread, %RARRAY_AREF.exit, %bb.j, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.b, %RARRAY_AREF.exit32, %rb_array_len.exit, %bb.g
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @update_branch_coverage(i64 %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
end_hunk_0
begin_hunk_1_@thread_join_sleep:bb.a
  %.2 = phi i64 [ 0, %.hrtime_update_expire.exit_crit_edge44 ], [ 20, %bb.c ], [ 20, %vm_check_ints_blocking.exit ], [ 20, %thread_finished.exit ]
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @remove_from_join_list(i64 noundef %0) #42 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !502  ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 248
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 3
  %.not = icmp eq i8 %i.f, 3
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 384
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.d ]  ; 2 uses
  %i.h = load ptr, ptr %.0, align 8, !tbaa !451   ; 4 uses
  %.not10 = icmp eq ptr %i.h, null
  br i1 %.not10, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !500
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.c, !llvm.loop !506

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !480
  store ptr %i.k, ptr %.0, align 8, !tbaa !451
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.e, %bb.a
  ret i64 4
}

declare i64 @rb_float_new(double noundef) local_unnamed_addr #4

declare i64 @rb_check_id(ptr noundef) local_unnamed_addr #4

declare i64 @rb_to_id(i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint noreturn nounwind sspstrong uwtable
define internal fastcc void @rb_key_err_raise(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #43 {
bb.a:
  %i.a = tail call i64 @rb_key_err_new(i64 noundef %0, i64 noundef %1, i64 noundef %2) #17
  tail call void @rb_exc_raise(i64 noundef %i.a) #41
  unreachable
}

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #4

declare i64 @rb_key_err_new(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_new() local_unnamed_addr #4

declare void @rb_id_table_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @thread_keys_i(i64 noundef %0, i64 %1, ptr noundef %2) #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = tail call i64 @rb_id2sym(i64 noundef %0) #17
  %i.c = tail call i64 @rb_ary_push(i64 noundef %i.a, i64 noundef %i.b) #17 ; 0 uses
  ret i32 0
}

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #4

declare i64 @rb_to_symbol(i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @rb_thread_local_storage(i64 noundef %0) unnamed_addr #18 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %i.c = and i64 %i.b, 33554432
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_hash_new() #17
  %i.e = tail call i64 @rb_ivar_set(i64 noundef %0, i64 noundef 3521, i64 noundef %i.d) #17 ; 0 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !46
  %i.g = or i64 %i.f, 33554432
  store i64 %i.g, ptr %i.a, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i64 @rb_ivar_get(i64 noundef %0, i64 noundef 3521) #17
  ret i64 %i.h
}

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ivar_get(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @keys_i(i64 noundef %0, i64 %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_ary_push(i64 noundef %2, i64 noundef %0) #17 ; 0 uses
  ret i32 0
}

declare i64 @rb_vm_thread_backtrace(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_vm_thread_backtrace_locations(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #4

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_new_frozen(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #32

declare i64 @rb_class_path(i64 noundef) local_unnamed_addr #4

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #4

declare i64 @rb_intern(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @queue_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %0, i64 noundef 36, ptr noundef nonnull @queue_data_type) #17 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !169
  %i.e = trunc i64 %i.d to i1
  %i.f = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.e, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !59
  store ptr %i.h, ptr %i.h, align 8, !tbaa !58
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_queue_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %i.b = and i64 %2, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !172

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !173

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !169  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @queue_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !49

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174  ; 2 uses
  %i.s = icmp eq ptr %i.r, @queue_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !179

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @queue_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 11 uses
  %i.u = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145
  %i.v = getelementptr i8, ptr %i.u, i64 496
  %i.w = load i64, ptr %i.v, align 8, !tbaa !203  ; 2 uses
  %i.x = getelementptr i8, ptr %.1.i.i, i64 16    ; 2 uses
  %i.y = load i64, ptr %i.x, align 1, !tbaa !204
  %i.z = icmp eq i64 %i.y, %i.w
  br i1 %i.z, label %queue_ptr.exit, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  store i64 %i.w, ptr %i.x, align 1, !tbaa !204
  %i.aa = getelementptr i8, ptr %.1.i.i, i64 8
  store ptr %.1.i.i, ptr %i.aa, align 8, !tbaa !59
  store ptr %.1.i.i, ptr %.1.i.i, align 8, !tbaa !58
  %i.ab = getelementptr i8, ptr %.1.i.i, i64 32
  store i32 0, ptr %i.ab, align 8, !tbaa !206
  br label %queue_ptr.exit

queue_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i, %bb.e
  %i.ac = icmp slt i32 %0, 0
  br i1 %i.ac, label %bb.f, label %.preheader.split.split.a

.preheader.split.split.a:                         ; preds = %queue_ptr.exit
  %.not.not = icmp eq i32 %0, 0                   ; 2 uses
  br i1 %.not.not, label %rb_scan_args_set.exit, label %.split.us

.split.us:                                        ; preds = %.preheader.split.split.a
  %i.ad = icmp eq i32 %0, 1
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split.us, %queue_ptr.exit
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #41
  unreachable

bb.g:                                             ; preds = %.split.us
  %3 = load i64, ptr %1, align 8, !tbaa !144
  %4 = tail call i64 @rb_to_array(i64 noundef %3) #17
  br label %rb_scan_args_set.exit

rb_scan_args_set.exit:                            ; preds = %.preheader.split.split.a, %bb.g
  %.sink = phi i64 [ %4, %bb.g ], [ 4, %.preheader.split.split.a ]
  %i.ae = getelementptr i8, ptr %.1.i.i, i64 24   ; 2 uses
  %i.af = tail call i64 @rb_ary_hidden_new(i64 noundef 1) #17 ; 4 uses
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !144
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = and i64 %i.af, 7
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = or i1 %i.ag, %i.ai
  br i1 %i.aj, label %rb_obj_write.exit, label %bb.h

bb.h:                                             ; preds = %rb_scan_args_set.exit
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.af) #17
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %rb_scan_args_set.exit, %bb.h
  %i.ak = getelementptr i8, ptr %.1.i.i, i64 8
  store ptr %.1.i.i, ptr %i.ak, align 8, !tbaa !59
  store ptr %.1.i.i, ptr %.1.i.i, align 8, !tbaa !58
  br i1 %.not.not, label %bb.i, label %5

5:                                                ; preds = %rb_obj_write.exit
  %6 = load i64, ptr %i.ae, align 1, !tbaa !209
  %7 = tail call i64 @rb_ary_concat(i64 noundef %6, i64 noundef %.sink) #17 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %5, %rb_obj_write.exit
  ret i64 %2
}

declare void @rb_undef_method(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal noundef i64 @undumpable(i64 noundef %0) #24 {
bb.a:
  %i.a = load i64, ptr @rb_eTypeError, align 8, !tbaa !144
  %i.b = tail call i64 @rb_obj_class(i64 noundef %0) #17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.286, i64 noundef %i.b) #41
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_queue_close(i64 noundef returned %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7                            ; 2 uses
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !172

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !173

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !169  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @queue_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !49

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174  ; 2 uses
  %i.s = icmp eq ptr %i.r, @queue_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !179

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @queue_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 7 uses
  %i.u = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145
  %i.v = getelementptr i8, ptr %i.u, i64 496
  %i.w = load i64, ptr %i.v, align 8, !tbaa !203  ; 2 uses
  %i.x = getelementptr i8, ptr %.1.i.i, i64 16    ; 2 uses
  %i.y = load i64, ptr %i.x, align 1, !tbaa !204
  %i.z = icmp eq i64 %i.y, %i.w
  br i1 %i.z, label %queue_ptr.exit, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  store i64 %i.w, ptr %i.x, align 1, !tbaa !204
  %i.aa = getelementptr i8, ptr %.1.i.i, i64 8
  store ptr %.1.i.i, ptr %i.aa, align 8, !tbaa !59
  store ptr %.1.i.i, ptr %.1.i.i, align 8, !tbaa !58
  %i.ab = getelementptr i8, ptr %.1.i.i, i64 32
  store i32 0, ptr %i.ab, align 8, !tbaa !206
  br label %queue_ptr.exit

queue_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i, %bb.e
  %i.ac = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !46 ; 2 uses
  %i.ae = and i64 %i.ad, 131072
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %queue_ptr.exit
  %i.af = icmp ne i64 %0, 0
  %i.ag = icmp eq i64 %i.b, 0
  %.not4.i = and i1 %i.af, %i.ag
  br i1 %.not4.i, label %bb.g, label %RB_FL_SET.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = or disjoint i64 %i.ad, 131072
  store i64 %i.ah, ptr %i.ac, align 8, !tbaa !46
  br label %RB_FL_SET.exit

RB_FL_SET.exit:                                   ; preds = %bb.f, %bb.g
  tail call fastcc void @sync_wakeup(ptr noundef nonnull readonly %.1.i.i, i64 noundef 9223372036854775807)
  br label %bb.h

bb.h:                                             ; preds = %RB_FL_SET.exit, %queue_ptr.exit
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @rb_queue_closed_p(i64 noundef %0) #23 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %i.c = and i64 %i.b, 131072
  %.not = icmp eq i64 %i.c, 0
  %i.d = select i1 %.not, i64 0, i64 20
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_queue_push(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !172

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !173

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !169  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !171
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @queue_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !49

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174  ; 2 uses
  %i.s = icmp eq ptr %i.r, @queue_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !179

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @queue_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.u = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !145
  %i.v = getelementptr i8, ptr %i.u, i64 496
  %i.w = load i64, ptr %i.v, align 8, !tbaa !203  ; 2 uses
  %i.x = getelementptr i8, ptr %.1.i.i, i64 16    ; 2 uses
  %i.y = load i64, ptr %i.x, align 1, !tbaa !204
  %i.z = icmp eq i64 %i.y, %i.w
  br i1 %i.z, label %queue_ptr.exit, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  store i64 %i.w, ptr %i.x, align 1, !tbaa !204
  %i.aa = getelementptr i8, ptr %.1.i.i, i64 8
  store ptr %.1.i.i, ptr %i.aa, align 8, !tbaa !59
  store ptr %.1.i.i, ptr %.1.i.i, align 8, !tbaa !58
  %i.ab = getelementptr i8, ptr %.1.i.i, i64 32
  store i32 0, ptr %i.ab, align 8, !tbaa !206
  br label %queue_ptr.exit

queue_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i, %bb.e
  %i.ac = inttoptr i64 %0 to ptr
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.ae = and i64 %i.ad, 131072
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %queue_ptr.exit
  tail call fastcc void @raise_closed_queue_error() #47
  unreachable

bb.g:                                             ; preds = %queue_ptr.exit
  %i.af = getelementptr i8, ptr %.1.i.i, i64 24
end_hunk_1
