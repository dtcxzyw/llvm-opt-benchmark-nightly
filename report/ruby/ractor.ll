inline.NumInlined: 610
inline.NumDeleted: 187
begin_hunk_0_@rb_ractor_stderr_set:bb.a
  store i64 %0, ptr @rb_stderr, align 8, !tbaa !57
  br label %rb_obj_write.exit

rb_current_ractor.exit:                           ; preds = %rb_ractor_main_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i3 = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i3, i64 48
  %.val.i.i4 = load ptr, ptr %i.n, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.o = getelementptr i8, ptr %.val.i.i4, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !85
  %i.r = getelementptr i8, ptr %i.p, i64 424
  store i64 %0, ptr %i.r, align 8, !tbaa !57
  %i.s = icmp eq i64 %0, 0
  %i.t = and i64 %0, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %rb_obj_write.exit, label %bb.b

bb.b:                                             ; preds = %rb_current_ractor.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.q, i64 noundef %0) #21
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.b, %rb_current_ractor.exit, %rb_ractor_main_p.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden noundef ptr @rb_ractor_hooks(ptr noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define hidden ptr @rb_ractor_targeted_hooks(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden noundef zeroext i1 @rb_ractor_verify_shareable(i64 noundef %0) local_unnamed_addr #9 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_obj_set_shareable(i64 noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !119  ; 3 uses
  %i.c = or i64 %i.b, 256
  store i64 %i.c, ptr %i.a, align 8, !tbaa !119
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rb_obj_gen_fields_p.exit.i, label %rb_type.exit.i.i

rb_type.exit.i.i:                                 ; preds = %bb.a
  %i.h = trunc i64 %i.b to i32
  %i.i = and i32 %i.h, 31
  switch i32 %i.i, label %rb_obj_gen_fields_p.exit.i [
    i32 0, label %rb_obj_set_shareable_no_assert.exit
    i32 1, label %rb_obj_set_shareable_no_assert.exit
    i32 2, label %rb_obj_set_shareable_no_assert.exit
    i32 3, label %rb_obj_set_shareable_no_assert.exit
    i32 26, label %rb_obj_set_shareable_no_assert.exit
  ]

rb_obj_gen_fields_p.exit.i:                       ; preds = %rb_type.exit.i.i, %bb.a
  %i.j = and i64 %i.b, 578712547822141440
  %.not9.i = icmp eq i64 %i.j, 0
  br i1 %.not9.i, label %rb_obj_set_shareable_no_assert.exit, label %bb.b

bb.b:                                             ; preds = %rb_obj_gen_fields_p.exit.i
  %i.k = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0) #21 ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = and i64 %i.k, 7
  %i.n = icmp ne i64 %i.m, 0
  %i.o = or i1 %i.l, %i.n
  br i1 %i.o, label %rb_obj_set_shareable_no_assert.exit, label %imemo_type_p.exit.i, !prof !132

imemo_type_p.exit.i:                              ; preds = %bb.b
  %i.p = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !119  ; 2 uses
  %i.r = and i64 %i.q, 61471
  %.not.i = icmp eq i64 %i.r, 53274
  br i1 %.not.i, label %bb.c, label %rb_obj_set_shareable_no_assert.exit

bb.c:                                             ; preds = %imemo_type_p.exit.i
  %i.s = or i64 %i.q, 256
  store i64 %i.s, ptr %i.p, align 8, !tbaa !119
  br label %rb_obj_set_shareable_no_assert.exit

rb_obj_set_shareable_no_assert.exit:              ; preds = %rb_type.exit.i.i, %rb_type.exit.i.i, %rb_type.exit.i.i, %rb_type.exit.i.i, %rb_type.exit.i.i, %rb_obj_gen_fields_p.exit.i, %bb.b, %imemo_type_p.exit.i, %bb.c
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_ractor_make_shareable(i64 noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.obj_traverse_data, align 8  ; 6 uses
  %2 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr @make_shareable_check_shareable, ptr %1, align 8, !tbaa !161
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @null_leave, ptr %i.a, align 8, !tbaa !163
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef nonnull %1)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %rb_obj_traverse.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.d, null
  br i1 %.not8.i, label %rb_obj_traverse.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @mark_shareable, ptr %2, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !166
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.f, align 4
  %i.g = ptrtoint ptr %2 to i64
  %i.h = call i32 @rb_st_foreach(ptr noundef nonnull %i.d, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.g) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %rb_obj_traverse.exit

rb_obj_traverse.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @make_shareable_check_shareable(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %struct.obj_traverse_data, align 8  ; 8 uses
  %2 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rb_obj_set_shareable.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !119
  %i.i = and i64 %i.h, 256
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %rb_obj_set_shareable.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr @shareable_p_enter, ptr %1, align 8, !tbaa !161
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @null_leave, ptr %i.j, align 8, !tbaa !163
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef nonnull %1)
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %bb.d, label %rb_ractor_shareable_p.exit.thread47

rb_ractor_shareable_p.exit.thread47:              ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not8.i.i.i, label %rb_ractor_shareable_p.exit.thread45, label %rb_ractor_shareable_p.exit

rb_ractor_shareable_p.exit.thread45:              ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %rb_obj_set_shareable.exit

rb_ractor_shareable_p.exit:                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @mark_shareable, ptr %2, align 8, !tbaa !164
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !166
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = ptrtoint ptr %2 to i64
  %i.q = call i32 @rb_st_foreach(ptr noundef nonnull %i.m, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.p) #21 ; 0 uses
  %i.r = load i32, ptr %i.n, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.s = icmp eq i32 %i.r, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %i.s, label %rb_obj_set_shareable.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rb_ractor_shareable_p.exit, %rb_ractor_shareable_p.exit.thread47
  %i.t = load i64, ptr %i.g, align 8, !tbaa !119  ; 9 uses
  %i.u = and i64 %i.t, 31
  %i.v = icmp eq i64 %i.u, 12
  br i1 %i.v, label %bb.e, label %rb_type.exit

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.w = and i64 %i.t, 64
  %.not7.i = icmp eq i64 %i.w, 0
  %.phi.trans.insert = getelementptr i8, ptr %i.g, i64 24
  %.pre51 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !58
  %.pre52 = and i64 %.pre51, -2
  %.pre53 = inttoptr i64 %.pre52 to ptr           ; 2 uses
  br i1 %.not7.i, label %allow_frozen_shareable_p.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %.pre53, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !167
  %i.z = and i64 %i.y, 256
  %.not.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.not.i, label %allow_frozen_shareable_p.exit, label %rb_type.exit

allow_frozen_shareable_p.exit:                    ; preds = %bb.e, %bb.f
  %i.aa = getelementptr i8, ptr %.pre53, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !167
  %i.ac = and i64 %i.ab, 128
  %.not26 = icmp eq i64 %i.ac, 0
  br i1 %.not26, label %bb.p, label %bb.g

bb.g:                                             ; preds = %allow_frozen_shareable_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ad = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i.i31 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i31, label %bb.h, label %rb_vm_lock_enter_nb.exit.i

bb.h:                                             ; preds = %bb.g
  call void @rb_vm_lock_enter_body_nb(ptr noundef nonnull %i.b) #21
  br label %rb_vm_lock_enter_nb.exit.i

rb_vm_lock_enter_nb.exit.i:                       ; preds = %bb.h, %bb.g
  call void @rb_objspace_reachable_objects_from(i64 noundef %0, ptr noundef nonnull @obj_refer_only_shareables_p_i, ptr noundef nonnull %i.a) #21
  %i.ae = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i2.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i2.i, label %bb.i, label %obj_refer_only_shareables_p.exit

bb.i:                                             ; preds = %rb_vm_lock_enter_nb.exit.i
  call void @rb_vm_lock_leave_body_nb(ptr noundef nonnull %i.b) #21
  br label %obj_refer_only_shareables_p.exit

obj_refer_only_shareables_p.exit:                 ; preds = %rb_vm_lock_enter_nb.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.af = load i32, ptr %i.a, align 4, !tbaa !7
  %.not = icmp eq i32 %i.af, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %.not, label %bb.j, label %bb.o

bb.j:                                             ; preds = %obj_refer_only_shareables_p.exit
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !119 ; 2 uses
  %i.ah = and i64 %i.ag, 2048
  %.not.i32 = icmp eq i64 %i.ah, 0
  br i1 %.not.i32, label %bb.k, label %rb_type.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ai = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 2801, i32 noundef 0) #21 ; 0 uses
  %i.aj = load i64, ptr %i.g, align 8, !tbaa !119 ; 2 uses
  %i.ak = and i64 %i.aj, 2048
  %.not6.i = icmp eq i64 %i.ak, 0
  br i1 %.not6.i, label %bb.l, label %rb_type.exit.i.i.i, !prof !132

bb.l:                                             ; preds = %bb.k
  %i.al = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.al, ptr noundef nonnull @.str.110) #22
  unreachable

rb_type.exit.i.i.i:                               ; preds = %bb.k, %bb.j
  %i.am = phi i64 [ %i.aj, %bb.k ], [ %i.ag, %bb.j ] ; 3 uses
  %i.an = or i64 %i.am, 256
  store i64 %i.an, ptr %i.g, align 8, !tbaa !119
  %i.ao = trunc i64 %i.am to i32
  %i.ap = and i32 %i.ao, 31
  switch i32 %i.ap, label %rb_obj_gen_fields_p.exit.i.i [
    i32 0, label %rb_obj_set_shareable.exit
    i32 1, label %rb_obj_set_shareable.exit
    i32 2, label %rb_obj_set_shareable.exit
    i32 3, label %rb_obj_set_shareable.exit
    i32 26, label %rb_obj_set_shareable.exit
  ]

rb_obj_gen_fields_p.exit.i.i:                     ; preds = %rb_type.exit.i.i.i
  %i.aq = and i64 %i.am, 578712547822141440
  %.not9.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not9.i.i, label %rb_obj_set_shareable.exit, label %bb.m

bb.m:                                             ; preds = %rb_obj_gen_fields_p.exit.i.i
  %i.ar = call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0) #21 ; 3 uses
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = and i64 %i.ar, 7
  %i.au = icmp ne i64 %i.at, 0
  %i.av = or i1 %i.as, %i.au
  br i1 %i.av, label %rb_obj_set_shareable.exit, label %imemo_type_p.exit.i.i, !prof !132

imemo_type_p.exit.i.i:                            ; preds = %bb.m
  %i.aw = inttoptr i64 %i.ar to ptr               ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !119 ; 2 uses
  %i.ay = and i64 %i.ax, 61471
  %.not.i.i = icmp eq i64 %i.ay, 53274
  br i1 %.not.i.i, label %bb.n, label %rb_obj_set_shareable.exit

bb.n:                                             ; preds = %imemo_type_p.exit.i.i
  %i.az = or i64 %i.ax, 256
  store i64 %i.az, ptr %i.aw, align 8, !tbaa !119
  br label %rb_obj_set_shareable.exit

bb.o:                                             ; preds = %obj_refer_only_shareables_p.exit
  %i.ba = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ba, ptr noundef nonnull @.str.108, i64 noundef %0) #22
  unreachable

bb.p:                                             ; preds = %allow_frozen_shareable_p.exit
  %i.bb = call i64 @rb_obj_is_proc(i64 noundef %0) #21
  %.not27 = icmp eq i64 %i.bb, 0
  br i1 %.not27, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = call i64 @rb_proc_ractor_make_shareable(i64 noundef %0, i64 noundef 36) #21 ; 0 uses
  br label %rb_obj_set_shareable.exit

bb.r:                                             ; preds = %bb.p
  %i.bd = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bd, ptr noundef nonnull @.str.109, i64 noundef %0) #22
  unreachable

rb_type.exit:                                     ; preds = %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.be = trunc i64 %i.t to i32
  %i.bf = and i32 %i.be, 31
  switch i32 %i.bf, label %bb.u [
    i32 26, label %rb_obj_set_shareable.exit
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %rb_type.exit
  %3 = lshr i64 %i.t, 32                          ; 2 uses
  %i.bg = and i64 %i.t, 126100789566373888
  %.not.i.i36 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i36, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %bb.s
  %i.bh = and i64 %3, 524287                      ; 2 uses
  %i.bi = load ptr, ptr @rb_shape_tree, align 8, !tbaa !171 ; 2 uses
  %i.bj = getelementptr [40 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 30
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !176
  br label %RSHAPE_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i:                  ; preds = %bb.s
  %i.bm = lshr i64 %i.t, 54
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !179
  %i.bo = and i64 %i.bm, 7
  %i.bp = add nuw nsw i64 %i.bo, 4294967295
  %i.bq = and i64 %i.bp, 4294967295
  %i.br = getelementptr [2 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !180
  %i.bt = and i64 %3, 524287                      ; 2 uses
  %i.bu = load ptr, ptr @rb_shape_tree, align 8, !tbaa !171 ; 2 uses
  %i.bv = getelementptr [40 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = getelementptr i8, ptr %i.bv, i64 30
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !176
  %spec.select.i37 = call i16 @llvm.umax.i16(i16 %i.bs, i16 %i.bx)
  br label %RSHAPE_CAPACITY.exit

RSHAPE_CAPACITY.exit:                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i
  %.pre-phi55 = phi i64 [ %i.bh, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ], [ %i.bt, %RSHAPE_EMBEDDED_CAPACITY.exit.i ]
  %i.by = phi ptr [ %i.bi, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ], [ %i.bu, %RSHAPE_EMBEDDED_CAPACITY.exit.i ]
  %.0.i38 = phi i16 [ %i.bl, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ], [ %spec.select.i37, %RSHAPE_EMBEDDED_CAPACITY.exit.i ] ; 2 uses
  %i.bz = getelementptr [40 x i8], ptr %i.by, i64 %.pre-phi55
  %i.ca = getelementptr i8, ptr %i.bz, i64 28
  %i.cb = load i16, ptr %i.ca, align 4, !tbaa !181
  %i.cc = and i64 %i.t, 288230376151711744
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = icmp eq i16 %.0.i38, 0
  %or.cond.not30 = select i1 %i.cd, i1 true, i1 %i.ce
  %i.cf = icmp ne i16 %.0.i38, %i.cb
  %or.cond4 = select i1 %or.cond.not30, i1 true, i1 %i.cf
  br i1 %or.cond4, label %bb.u, label %bb.t

bb.t:                                             ; preds = %RSHAPE_CAPACITY.exit
  %i.cg = call i64 @rb_obj_id(i64 noundef %0) #21 ; 0 uses
  %.pre = load i64, ptr %i.g, align 8, !tbaa !119
  br label %bb.u

bb.u:                                             ; preds = %RSHAPE_CAPACITY.exit, %bb.t, %rb_type.exit
  %i.ch = phi i64 [ %i.t, %RSHAPE_CAPACITY.exit ], [ %.pre, %bb.t ], [ %i.t, %rb_type.exit ]
  %i.ci = and i64 %i.ch, 2048
  %.not.i39 = icmp eq i64 %i.ci, 0
  br i1 %.not.i39, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cj = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 2801, i32 noundef 0) #21 ; 0 uses
  %i.ck = load i64, ptr %i.g, align 8, !tbaa !119 ; 2 uses
  %i.cl = and i64 %i.ck, 2048
  %.not6.i41 = icmp eq i64 %i.cl, 0
  br i1 %.not6.i41, label %bb.w, label %bb.x, !prof !132

bb.w:                                             ; preds = %bb.v
  %i.cm = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cm, ptr noundef nonnull @.str.110) #22
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cn = and i64 %i.ck, 256
  %.not7.i42 = icmp eq i64 %i.cn, 0
  br i1 %.not7.i42, label %bb.y, label %rb_obj_set_shareable.exit

bb.y:                                             ; preds = %bb.x, %bb.u
  br label %rb_obj_set_shareable.exit

rb_obj_set_shareable.exit:                        ; preds = %bb.b, %bb.a, %bb.y, %bb.x, %bb.n, %imemo_type_p.exit.i.i, %bb.m, %rb_obj_gen_fields_p.exit.i.i, %rb_type.exit.i.i.i, %rb_type.exit.i.i.i, %rb_type.exit.i.i.i, %rb_type.exit.i.i.i, %rb_type.exit.i.i.i, %rb_ractor_shareable_p.exit.thread45, %rb_type.exit, %bb.q, %rb_ractor_shareable_p.exit
  %.1 = phi i32 [ 1, %rb_ractor_shareable_p.exit ], [ 1, %bb.n ], [ 0, %bb.q ], [ 1, %rb_ractor_shareable_p.exit.thread45 ], [ 1, %rb_type.exit ], [ 1, %bb.x ], [ 1, %rb_type.exit.i.i.i ], [ 1, %rb_type.exit.i.i.i ], [ 1, %rb_type.exit.i.i.i ], [ 1, %rb_type.exit.i.i.i ], [ 1, %rb_type.exit.i.i.i ], [ 1, %rb_obj_gen_fields_p.exit.i.i ], [ 1, %bb.m ], [ 1, %imemo_type_p.exit.i.i ], [ 0, %bb.y ], [ 1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @null_leave(i64 %0) #9 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @mark_shareable(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  %i.e = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !119  ; 4 uses
  br i1 %i.d, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 5
  br i1 %i.h, label %bb.b, label %rb_type.exit.i.i

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  tail call void @rb_str_make_independent(i64 noundef %0) #21
  %.pre = load i64, ptr %i.e, align 8, !tbaa !119
  br label %rb_type.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.i = or i64 %i.f, 256
  store i64 %i.i, ptr %i.e, align 8, !tbaa !119
  br label %rb_obj_gen_fields_p.exit.i

rb_type.exit.i.i:                                 ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.j = phi i64 [ %.pre, %bb.b ], [ %i.f, %rbimpl_RB_TYPE_P_fastpath.exit ] ; 3 uses
  %i.k = or i64 %i.j, 256
  store i64 %i.k, ptr %i.e, align 8, !tbaa !119
  %i.l = trunc i64 %i.j to i32
  %i.m = and i32 %i.l, 31
  switch i32 %i.m, label %rb_obj_gen_fields_p.exit.i [
    i32 0, label %rb_obj_set_shareable_no_assert.exit
    i32 1, label %rb_obj_set_shareable_no_assert.exit
    i32 2, label %rb_obj_set_shareable_no_assert.exit
    i32 3, label %rb_obj_set_shareable_no_assert.exit
    i32 26, label %rb_obj_set_shareable_no_assert.exit
  ]

rb_obj_gen_fields_p.exit.i:                       ; preds = %bb.c, %rb_type.exit.i.i
  %i.n = phi i64 [ %i.j, %rb_type.exit.i.i ], [ %i.f, %bb.c ]
  %i.o = and i64 %i.n, 578712547822141440
  %.not9.i = icmp eq i64 %i.o, 0
  br i1 %.not9.i, label %rb_obj_set_shareable_no_assert.exit, label %bb.d

bb.d:                                             ; preds = %rb_obj_gen_fields_p.exit.i
  %i.p = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0) #21 ; 3 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = and i64 %i.p, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = or i1 %i.q, %i.s
  br i1 %i.t, label %rb_obj_set_shareable_no_assert.exit, label %imemo_type_p.exit.i, !prof !132

imemo_type_p.exit.i:                              ; preds = %bb.d
  %i.u = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !119  ; 2 uses
  %i.w = and i64 %i.v, 61471
  %.not.i = icmp eq i64 %i.w, 53274
  br i1 %.not.i, label %bb.e, label %rb_obj_set_shareable_no_assert.exit

bb.e:                                             ; preds = %imemo_type_p.exit.i
  %i.x = or i64 %i.v, 256
  store i64 %i.x, ptr %i.u, align 8, !tbaa !119
  br label %rb_obj_set_shareable_no_assert.exit

rb_obj_set_shareable_no_assert.exit:              ; preds = %rb_type.exit.i.i, %rb_type.exit.i.i, %rb_type.exit.i.i, %rb_type.exit.i.i, %rb_type.exit.i.i, %rb_obj_gen_fields_p.exit.i, %bb.d, %imemo_type_p.exit.i, %bb.e
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 37, 36) i64 @rb_ractor_make_shareable_copy(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.obj_traverse_data, align 8  ; 6 uses
  %2 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  %3 = alloca %struct.obj_traverse_replace_data, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @copy_enter, ptr %3, align 8, !tbaa !182
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @copy_leave, ptr %i.a, align 8, !tbaa !184
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i64 36, ptr %i.c, align 8, !tbaa !185
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.d, align 8
  %i.e = call fastcc i32 @obj_traverse_replace_i(i64 noundef %0, ptr noundef nonnull %3)
  %.not.i.i = icmp ne i32 %i.e, 0
  %i.f = load i64, ptr %i.c, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.g = icmp eq i64 %i.f, 36
  %i.h = select i1 %.not.i.i, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %ractor_copy.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.111) #22
  unreachable

ractor_copy.exit:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr @make_shareable_check_shareable, ptr %1, align 8, !tbaa !161
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @null_leave, ptr %i.j, align 8, !tbaa !163
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = call fastcc i32 @obj_traverse_i(i64 noundef %i.f, ptr noundef nonnull %1)
  %.not.i.i2 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i2, label %bb.c, label %rb_ractor_make_shareable.exit

bb.c:                                             ; preds = %ractor_copy.exit
  %i.m = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not8.i.i = icmp eq ptr %i.m, null
  br i1 %.not8.i.i, label %rb_ractor_make_shareable.exit, label %bb.d

end_hunk_0
begin_hunk_1_@ractor_send0:bb.a
ccan_list_pop_.exit.preheader.i.i:                ; preds = %ractor_lock.exit.i.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !112 ; 2 uses
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !111 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !112
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !111
  %i.cg = getelementptr i8, ptr %i.cb, i64 -16    ; 2 uses
  %.not.peel.not.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.peel.not.i.i, label %ccan_list_pop_.exit.thread.i.i, label %bb.l

bb.l:                                             ; preds = %ccan_list_pop_.exit.preheader.i.i
  store i32 1, ptr %i.cg, align 8, !tbaa !243
  %i.ch = getelementptr i8, ptr %i.cb, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !245
  call void @rb_ractor_sched_wakeup(ptr noundef nonnull %i.bt, ptr noundef %i.ci) #21
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !108 ; 2 uses
  %.not.i12.peel.i.i = icmp eq ptr %i.cj, %i.ca
  br i1 %.not.i12.peel.i.i, label %ccan_list_pop_.exit.thread.i.i, label %ccan_list_pop_.exit.i.i

ccan_list_pop_.exit.i.i:                          ; preds = %bb.l, %bb.m
  %i.ck = phi ptr [ %i.cs, %bb.m ], [ %i.cj, %bb.l ] ; 4 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !112 ; 2 uses
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !111 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !112
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !111
  %i.cp = getelementptr i8, ptr %i.ck, i64 -16    ; 2 uses
  %.not.i18.i = icmp eq ptr %i.cp, null
  br i1 %.not.i18.i, label %ccan_list_pop_.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %ccan_list_pop_.exit.i.i
  store i32 1, ptr %i.cp, align 8, !tbaa !243
  %i.cq = getelementptr i8, ptr %i.ck, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !245
  call void @rb_ractor_sched_wakeup(ptr noundef nonnull %i.bt, ptr noundef %i.cr) #21
  %i.cs = load ptr, ptr %i.ca, align 8, !tbaa !108 ; 2 uses
  %.not.i12.i.i = icmp eq ptr %i.cs, %i.ca
  br i1 %.not.i12.i.i, label %ccan_list_pop_.exit.thread.i.i, label %ccan_list_pop_.exit.i.i, !llvm.loop !249

ccan_list_pop_.exit.thread.i.i:                   ; preds = %bb.m, %ccan_list_pop_.exit.i.i, %bb.l, %ccan_list_pop_.exit.preheader.i.i, %ractor_lock.exit.i.i
  %i.ct = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i13.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i13.i.i, label %ractor_wakeup_all.exit.i, label %rb_ec_ractor_ptr.exit.i14.i.i

rb_ec_ractor_ptr.exit.i14.i.i:                    ; preds = %ccan_list_pop_.exit.thread.i.i
  %i.cu = getelementptr i8, ptr %i.ct, i64 48
  %.val.i15.i.i = load ptr, ptr %i.cu, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.cv = getelementptr i8, ptr %.val.i15.i.i, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !26
  %i.cx = getelementptr i8, ptr %i.cw, i64 448
  store i8 0, ptr %i.cx, align 8, !tbaa !47
  br label %ractor_wakeup_all.exit.i

ractor_wakeup_all.exit.i:                         ; preds = %rb_ec_ractor_ptr.exit.i14.i.i, %ccan_list_pop_.exit.thread.i.i
  call void @rb_native_mutex_unlock(ptr noundef %i.bu) #21
  br label %ractor_send_basket.exit

.critedge.i:                                      ; preds = %ractor_closed_port_p.exit.i, %ractor_closed_port_p.exit.thread.i
  %i.cy = phi ptr [ %.pre.i, %ractor_closed_port_p.exit.thread.i ], [ %.pre.pre.i, %ractor_closed_port_p.exit.i ]
  %i.cz = call ptr @rb_current_ec_noinline() #21  ; 2 uses
  %.not.i19.i = icmp eq ptr %i.cz, null
  br i1 %.not.i19.i, label %ractor_unlock.exit22.i, label %rb_ec_ractor_ptr.exit.i20.i

rb_ec_ractor_ptr.exit.i20.i:                      ; preds = %.critedge.i
  %i.da = getelementptr i8, ptr %i.cz, i64 48
  %.val.i21.i = load ptr, ptr %i.da, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.db = getelementptr i8, ptr %.val.i21.i, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !26
  %i.dd = getelementptr i8, ptr %i.dc, i64 448
  store i8 0, ptr %i.dd, align 8, !tbaa !47
  br label %ractor_unlock.exit22.i

ractor_unlock.exit22.i:                           ; preds = %rb_ec_ractor_ptr.exit.i20.i, %.critedge.i
  %i.de = getelementptr i8, ptr %i.cy, i64 56
  call void @rb_native_mutex_unlock(ptr noundef %i.de) #21
  br i1 %3, label %bb.n, label %ractor_send_basket.exit

bb.n:                                             ; preds = %ractor_unlock.exit22.i
  call fastcc void @ractor_basket_free(ptr noundef nonnull %i.an)
  %i.df = load i64, ptr @rb_eRactorClosedError, align 8, !tbaa !57
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.df, ptr noundef nonnull @.str.76) #22
  unreachable

ractor_send_basket.exit:                          ; preds = %ractor_wakeup_all.exit.i, %ractor_unlock.exit22.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %i.b, ptr %i.c, align 8, !tbaa !121
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #21, !srcloc !251
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.dh = load volatile i64, ptr %i.dg, align 8, !tbaa !57 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @move_enter(i64 noundef %0, ptr noundef writeonly captures(none) initializes((32, 40)) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.obj_traverse_data, align 8  ; 8 uses
  %3 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rb_ractor_shareable_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !119
  %i.h = and i64 %i.g, 256
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %rb_ractor_shareable_p.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @shareable_p_enter, ptr %2, align 8, !tbaa !161
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @null_leave, ptr %i.i, align 8, !tbaa !163
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef nonnull %2)
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.d, label %rb_ractor_shareable_p.exit.thread19

rb_ractor_shareable_p.exit.thread19:              ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not8.i.i.i, label %rb_ractor_shareable_p.exit.thread17, label %rb_ractor_shareable_p.exit

rb_ractor_shareable_p.exit.thread17:              ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit:                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @mark_shareable, ptr %3, align 8, !tbaa !164
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !166
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = ptrtoint ptr %3 to i64
  %i.p = call i32 @rb_st_foreach(ptr noundef nonnull %i.l, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.o) #21 ; 0 uses
  %i.q = load i32, ptr %i.m, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.r = icmp eq i32 %i.q, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.r, label %rb_ractor_shareable_p.exit.thread, label %bb.e

bb.e:                                             ; preds = %rb_ractor_shareable_p.exit.thread19, %rb_ractor_shareable_p.exit
  %i.s = load i64, ptr %i.f, align 8, !tbaa !119
  %i.t = and i64 %i.s, 31                         ; 4 uses
  %i.u = call i64 @rb_gc_obj_slot_size(i64 noundef %0) #21 ; 3 uses
  %i.v = shl nuw nsw i64 1, %i.t
  %i.w = and i64 %i.v, 2147425293
  %.not.not = icmp eq i64 %i.w, 0
  br i1 %.not.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72
  store volatile ptr %i.y, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..i, i64 noundef 0, i64 noundef %i.t, i32 noundef 0, i64 noundef %i.u) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr @wb_protected_types, i64 %i.t
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !252, !range !77, !noundef !25
  %i.ac = shl nuw nsw i8 %i.ab, 5
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = or disjoint i64 %i.t, %i.ad
  %i.af = call i64 @rb_wb_unprotected_newobj_of(i64 noundef 0, i64 noundef %i.ae, i32 noundef 0, i64 noundef %i.u) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = phi i64 [ %i.z, %bb.f ], [ %i.af, %bb.g ] ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %i.aj = add i64 %i.u, -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ai, i8 noundef 0, i64 noundef %i.aj, i1 noundef false) #21
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit.thread:                ; preds = %rb_ractor_shareable_p.exit, %rb_ractor_shareable_p.exit.thread17, %bb.a, %bb.b, %bb.h
  %.sink = phi i64 [ %i.ag, %bb.h ], [ %0, %bb.b ], [ %0, %bb.a ], [ %0, %rb_ractor_shareable_p.exit.thread17 ], [ %0, %rb_ractor_shareable_p.exit ]
  %.0 = phi i32 [ 0, %bb.h ], [ 1, %bb.b ], [ 1, %bb.a ], [ 1, %rb_ractor_shareable_p.exit.thread17 ], [ 1, %rb_ractor_shareable_p.exit ]
  %i.ak = getelementptr i8, ptr %1, i64 32
  store i64 %.sink, ptr %i.ak, align 8, !tbaa !185
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @move_leave(i64 noundef %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !119
  %i.c = and i64 %i.b, -33
  %i.d = getelementptr i8, ptr %1, i64 32         ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !185
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !119
  %i.h = and i64 %i.g, 32
  %i.i = or disjoint i64 %i.h, %i.c
  store i64 %i.i, ptr %i.f, align 8, !tbaa !119
  %i.j = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.k = tail call i64 @rb_gc_obj_slot_size(i64 noundef %0) #21
  %i.l = add i64 %i.k, -8                         ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.f, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.m, ptr noundef nonnull readonly align 1 %i.j, i64 noundef range(i64 1, 0) %i.l, i1 noundef false) #21
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.a, %bb.b
  %i.n = load i64, ptr %i.d, align 8, !tbaa !185
  tail call void @rb_gc_writebarrier_remember(i64 noundef %i.n) #21
  %i.o = icmp eq i64 %0, 0
  %i.p = and i64 %0, 7
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  %.pre = load i64, ptr %i.a, align 8, !tbaa !119 ; 2 uses
  br i1 %i.r, label %rb_obj_gen_fields_p.exit, label %rb_type.exit.i

rb_type.exit.i:                                   ; preds = %ruby_nonempty_memcpy.exit
  %i.s = trunc i64 %.pre to i32
  %i.t = and i32 %i.s, 31
  switch i32 %i.t, label %rb_obj_gen_fields_p.exit [
    i32 0, label %rb_obj_gen_fields_p.exit.thread
    i32 1, label %rb_obj_gen_fields_p.exit.thread
    i32 2, label %rb_obj_gen_fields_p.exit.thread
    i32 3, label %rb_obj_gen_fields_p.exit.thread
    i32 26, label %rb_obj_gen_fields_p.exit.thread
  ]

rb_obj_gen_fields_p.exit:                         ; preds = %ruby_nonempty_memcpy.exit, %rb_type.exit.i
  %2 = and i64 %.pre, 578712547822141440
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %rb_obj_gen_fields_p.exit.thread, label %bb.c, !prof !253

bb.c:                                             ; preds = %rb_obj_gen_fields_p.exit
  %i.u = load i64, ptr %i.d, align 8, !tbaa !185
  tail call void @rb_replace_generic_ivar(i64 noundef %i.u, i64 noundef %0) #21
  br label %rb_obj_gen_fields_p.exit.thread

rb_obj_gen_fields_p.exit.thread:                  ; preds = %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %bb.c, %rb_obj_gen_fields_p.exit
  %i.v = load i64, ptr %i.d, align 8, !tbaa !185
  tail call void @rb_gc_obj_id_moved(i64 noundef %i.v) #21
  %i.w = load i64, ptr %i.a, align 8, !tbaa !119
  %i.x = and i64 %i.w, 32
  %i.y = or disjoint i64 %i.x, 2049
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, i8 noundef 0, i64 noundef 16, i1 noundef false) #21
  store i64 %i.y, ptr %i.a, align 8, !tbaa !119
  %i.z = load i64, ptr @rb_cRactorMovedObject, align 8, !tbaa !57
  store i64 %i.z, ptr %i.j, align 8, !tbaa !57
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @obj_traverse_replace_i(i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %2 = alloca %struct.obj_traverse_replace_callback_data, align 8 ; 7 uses
  %3 = alloca %struct.obj_traverse_replace_callback_data, align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.obj_traverse_replace_callback_data, align 8 ; 9 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 32
  store i64 %0, ptr %i.h, align 8, !tbaa !185
  br label %.critedge209

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !182
  %i.j = tail call i32 %i.i(i64 noundef %0, ptr noundef nonnull %1) #21
  switch i32 %i.j, label %bb.e [
    i32 2, label %bb.d
    i32 1, label %.critedge209
  ]

bb.d:                                             ; preds = %bb.c
  br label %.critedge209

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 32         ; 13 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !185
  store i64 %i.l, ptr %i.b, align 8, !tbaa !57
  %i.m = getelementptr i8, ptr %1, i64 16         ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !254  ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.f, label %obj_traverse_replace_rec.exit, !prof !132

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i64 @rb_ident_hash_new() #21   ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !255
  %i.q = add i64 %i.o, 24
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  store ptr %i.r, ptr %i.m, align 8, !tbaa !254
  br label %obj_traverse_replace_rec.exit

obj_traverse_replace_rec.exit:                    ; preds = %bb.e, %bb.f
  %i.s = phi ptr [ %i.r, %bb.f ], [ %i.n, %bb.e ]
  %i.t = call i32 @rb_st_lookup(ptr noundef %i.s, i64 noundef %0, ptr noundef nonnull %i.b) #21
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.h, label %bb.g, !prof !256

bb.g:                                             ; preds = %obj_traverse_replace_rec.exit
  %i.u = load i64, ptr %i.b, align 8, !tbaa !57
  store i64 %i.u, ptr %i.k, align 8, !tbaa !185
  br label %.critedge209

bb.h:                                             ; preds = %obj_traverse_replace_rec.exit
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !254  ; 2 uses
  %.not.i218 = icmp eq ptr %i.v, null
  br i1 %.not.i218, label %bb.i, label %rb_obj_written.exit, !prof !132

bb.i:                                             ; preds = %bb.h
  %i.w = call i64 @rb_ident_hash_new() #21        ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 24
  store i64 %i.w, ptr %i.x, align 8, !tbaa !255
  %i.y = add i64 %i.w, 24
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  store ptr %i.z, ptr %i.m, align 8, !tbaa !254
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.h, %bb.i
  %i.aa = phi ptr [ %i.z, %bb.i ], [ %i.v, %bb.h ]
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !57
  %i.ac = call i32 @rb_st_insert(ptr noundef %i.aa, i64 noundef %0, i64 noundef %i.ab) #21 ; 0 uses
  %i.ad = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !255
  call void @rb_gc_writebarrier(i64 noundef %i.ae, i64 noundef %0) #21
  %i.af = load i64, ptr %i.b, align 8, !tbaa !57  ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = and i64 %i.af, 7
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = or i1 %i.ag, %i.ai
  br i1 %i.aj, label %rb_obj_written.exit220, label %bb.j

bb.j:                                             ; preds = %rb_obj_written.exit
  %i.ak = load i64, ptr %i.ad, align 8, !tbaa !255
  call void @rb_gc_writebarrier(i64 noundef %i.ak, i64 noundef %i.af) #21
  br label %rb_obj_written.exit220

rb_obj_written.exit220:                           ; preds = %rb_obj_written.exit, %bb.j
  %i.al = getelementptr i8, ptr %1, i64 40        ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !247, !range !77, !noundef !25
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rb_obj_written.exit220
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !57  ; 2 uses
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !57
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %rb_obj_written.exit220
  %i.ap = phi i64 [ %i.ao, %bb.k ], [ %0, %rb_obj_written.exit220 ] ; 48 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = and i64 %i.ap, 7                        ; 2 uses
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = or i1 %i.aq, %i.as                      ; 2 uses
  %.pre.i = inttoptr i64 %i.ap to ptr             ; 14 uses
  %.pre = load i64, ptr %.pre.i, align 8, !tbaa !119 ; 2 uses
  br i1 %i.at, label %rb_obj_gen_fields_p.exit, label %rb_type.exit.i

rb_type.exit.i:                                   ; preds = %bb.l
  %i.au = trunc i64 %.pre to i32
  %i.av = and i32 %i.au, 31
  switch i32 %i.av, label %rb_obj_gen_fields_p.exit [
    i32 0, label %rb_obj_gen_fields_p.exit.thread
    i32 1, label %rb_obj_gen_fields_p.exit.thread
    i32 2, label %rb_obj_gen_fields_p.exit.thread
    i32 3, label %rb_obj_gen_fields_p.exit.thread
    i32 26, label %rb_obj_gen_fields_p.exit.thread
  ]

rb_obj_gen_fields_p.exit:                         ; preds = %bb.l, %rb_type.exit.i
  %5 = and i64 %.pre, 578712547822141440
  %.not248 = icmp eq i64 %5, 0
  br i1 %.not248, label %rb_obj_gen_fields_p.exit.thread, label %bb.m, !prof !253

bb.m:                                             ; preds = %rb_obj_gen_fields_p.exit
  %i.aw = call i64 @rb_obj_fields(i64 noundef %i.ap, i64 noundef 0) #21 ; 5 uses
  %.pre283 = load i64, ptr %.pre.i, align 8, !tbaa !119 ; 2 uses
  %6 = and i64 %.pre283, 576460752303423488
  %.not249 = icmp eq i64 %6, 0
  %or.cond308 = select i1 %i.at, i1 true, i1 %.not249, !prof !257
  %.not.i223 = icmp eq i64 %i.aw, 0               ; 2 uses
  br i1 %or.cond308, label %rb_shape_obj_too_complex_p.exit.thread, label %bb.n, !prof !257

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %2, align 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !258
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.ay, align 8, !tbaa !261
  br i1 %.not.i223, label %rb_imemo_fields_complex_tbl.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = inttoptr i64 %i.aw to ptr
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !145
  br label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %bb.n, %bb.o
  %.0.i222 = phi ptr [ %i.bb, %bb.o ], [ null, %bb.n ]
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = call i32 @rb_st_foreach_with_replace(ptr noundef %.0.i222, ptr noundef nonnull @obj_iv_hash_traverse_replace_foreach_i, ptr noundef nonnull @obj_iv_hash_traverse_replace_i, i64 noundef %i.bc) #21 ; 0 uses
  %i.be = load i8, ptr %2, align 8, !tbaa !262, !range !77, !noundef !25
  %i.bf = trunc nuw i8 %i.be to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.bf, label %.critedge209, label %rb_obj_gen_fields_p.exit.thread

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.m
  %7 = lshr i64 %.pre283, 32
  %8 = and i64 %7, 524287
  %9 = load ptr, ptr @rb_shape_tree, align 8, !tbaa !171
  %i.bg = getelementptr [40 x i8], ptr %9, i64 %8
  %i.bh = getelementptr i8, ptr %i.bg, i64 28
  %i.bi = load i16, ptr %i.bh, align 4, !tbaa !181 ; 2 uses
  br i1 %.not.i223, label %rb_imemo_fields_ptr.exit, label %bb.p

bb.p:                                             ; preds = %rb_shape_obj_too_complex_p.exit.thread
  %i.bj = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !119
  %i.bl = and i64 %i.bk, 65536
  %.not5.i = icmp eq i64 %i.bl, 0
  %i.bm = getelementptr i8, ptr %i.bj, i64 16     ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.q, !prof !256

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !145
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %rb_shape_obj_too_complex_p.exit.thread, %bb.p, %bb.q
  %.0.i224 = phi ptr [ %i.bn, %bb.q ], [ null, %rb_shape_obj_too_complex_p.exit.thread ], [ %i.bm, %bb.p ]
  %.not172259.not = icmp eq i16 %i.bi, 0
  br i1 %.not172259.not, label %rb_obj_gen_fields_p.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %rb_imemo_fields_ptr.exit
  %wide.trip.count = zext i16 %i.bi to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %rb_obj_write.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %rb_obj_write.exit ] ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %.0.i224, i64 %indvars.iv ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !57 ; 2 uses
  %i.bq = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.bp, ptr noundef nonnull %1)
  %.not170 = icmp eq i32 %i.bq, 0
  br i1 %.not170, label %bb.r, label %.critedge209

bb.r:                                             ; preds = %.lr.ph
  %i.br = load i64, ptr %i.k, align 8, !tbaa !185 ; 5 uses
  %.not171 = icmp eq i64 %i.br, %i.bp
  br i1 %.not171, label %rb_obj_write.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.br, ptr %i.bo, align 8, !tbaa !57
  %i.bs = icmp eq i64 %i.br, 0
  %i.bt = and i64 %i.br, 7
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = or i1 %i.bs, %i.bu
  br i1 %i.bv, label %rb_obj_write.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @rb_gc_writebarrier(i64 noundef %i.aw, i64 noundef %i.br) #21
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.r, %bb.s, %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %rb_obj_gen_fields_p.exit.thread, label %.lr.ph, !llvm.loop !263

rb_obj_gen_fields_p.exit.thread:                  ; preds = %rb_obj_write.exit, %rb_imemo_fields_ptr.exit, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_imemo_fields_complex_tbl.exit, %rb_obj_gen_fields_p.exit
  %i.bw = load i64, ptr %.pre.i, align 8, !tbaa !119 ; 6 uses
  %i.bx = trunc i64 %i.bw to i32
  %i.by = and i32 %i.bx, 31
  switch i32 %i.by, label %bb.br [
    i32 4, label %.critedge197
    i32 10, label %.critedge197
    i32 6, label %.critedge197
    i32 11, label %.critedge197
    i32 20, label %.critedge197
    i32 5, label %bb.u
    i32 1, label %bb.v
    i32 7, label %bb.ab
    i32 8, label %bb.al
    i32 9, label %bb.aq
    i32 13, label %bb.aw
    i32 15, label %bb.ba
    i32 14, label %bb.bh
    i32 12, label %bb.bo
    i32 26, label %.critedge209
  ]

bb.u:                                             ; preds = %rb_obj_gen_fields_p.exit.thread
  call void @rb_str_make_independent(i64 noundef %i.ap) #21
  br label %.critedge197

bb.v:                                             ; preds = %rb_obj_gen_fields_p.exit.thread
  %10 = icmp ne i64 %i.ap, 0
  %i.bz = icmp eq i64 %i.ar, 0
  %.not252 = and i1 %10, %i.bz
  %11 = and i64 %i.bw, 576460752303423488
  %12 = icmp ne i64 %11, 0
  %or.cond = and i1 %.not252, %12
  br i1 %or.cond, label %bb.w, label %rb_shape_obj_too_complex_p.exit225.thread

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %3, align 8
  store i64 %i.ap, ptr %i.ca, align 8, !tbaa !258
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.cb, align 8, !tbaa !261
  %13 = getelementptr i8, ptr %.pre.i, i64 16
  %i.cc = load ptr, ptr %13, align 8, !tbaa !145
  %i.cd = ptrtoint ptr %3 to i64
  %i.ce = call i32 @rb_st_foreach_with_replace(ptr noundef %i.cc, ptr noundef nonnull @obj_iv_hash_traverse_replace_foreach_i, ptr noundef nonnull @obj_iv_hash_traverse_replace_i, i64 noundef %i.cd) #21 ; 0 uses
  %i.cf = load i8, ptr %3, align 8, !tbaa !262, !range !77, !noundef !25
  %i.cg = trunc nuw i8 %i.cf to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %i.cg, label %.critedge209, label %.critedge197

rb_shape_obj_too_complex_p.exit225.thread:        ; preds = %bb.v
  %14 = lshr i64 %i.bw, 32
  %i.ch = and i64 %14, 524287
  %i.ci = load ptr, ptr @rb_shape_tree, align 8, !tbaa !171
  %i.cj = getelementptr [40 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = getelementptr i8, ptr %i.cj, i64 28
  %i.cl = load i16, ptr %i.ck, align 4, !tbaa !181 ; 2 uses
  %i.cm = and i64 %i.bw, 65536
  %.not.i226 = icmp eq i64 %i.cm, 0
  %15 = getelementptr i8, ptr %.pre.i, i64 16     ; 2 uses
  br i1 %.not.i226, label %ROBJECT_FIELDS.exit, label %bb.x, !prof !256

bb.x:                                             ; preds = %rb_shape_obj_too_complex_p.exit225.thread
  %i.cn = load ptr, ptr %15, align 8, !tbaa !145
  br label %ROBJECT_FIELDS.exit

ROBJECT_FIELDS.exit:                              ; preds = %rb_shape_obj_too_complex_p.exit225.thread, %bb.x
  %.0.i227 = phi ptr [ %i.cn, %bb.x ], [ %15, %rb_shape_obj_too_complex_p.exit225.thread ]
  %.not194264.not = icmp eq i16 %i.cl, 0
  br i1 %.not194264.not, label %.critedge197, label %.lr.ph266.preheader

.lr.ph266.preheader:                              ; preds = %ROBJECT_FIELDS.exit
  %wide.trip.count281 = zext i16 %i.cl to i64
  br label %.lr.ph266

.lr.ph266:                                        ; preds = %.lr.ph266.preheader, %rb_obj_write.exit228
  %indvars.iv278 = phi i64 [ 0, %.lr.ph266.preheader ], [ %indvars.iv.next279, %rb_obj_write.exit228 ] ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %.0.i227, i64 %indvars.iv278 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !57 ; 2 uses
  %i.cq = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.cp, ptr noundef nonnull %1)
  %.not192 = icmp eq i32 %i.cq, 0
  br i1 %.not192, label %bb.y, label %.critedge209

bb.y:                                             ; preds = %.lr.ph266
  %i.cr = load i64, ptr %i.k, align 8, !tbaa !185 ; 5 uses
  %.not193 = icmp eq i64 %i.cr, %i.cp
  br i1 %.not193, label %rb_obj_write.exit228, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.cr, ptr %i.co, align 8, !tbaa !57
  %i.cs = icmp eq i64 %i.cr, 0
  %i.ct = and i64 %i.cr, 7
  %i.cu = icmp ne i64 %i.ct, 0
  %i.cv = or i1 %i.cs, %i.cu
  br i1 %i.cv, label %rb_obj_write.exit228, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.cr) #21
  br label %rb_obj_write.exit228

rb_obj_write.exit228:                             ; preds = %bb.y, %bb.z, %bb.aa
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281
  br i1 %exitcond282.not, label %.critedge197, label %.lr.ph266, !llvm.loop !264

bb.ab:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  call void @rb_ary_cancel_sharing(i64 noundef %i.ap) #21
  %i.cw = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ak, %bb.ab
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %bb.ak ], [ 0, %bb.ab ] ; 4 uses
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !119 ; 2 uses
  %i.cz = and i64 %i.cy, 8192
  %.not.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = lshr i64 %i.cy, 15
  %i.db = and i64 %i.da, 127
  br label %rb_array_len.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.dc = load i64, ptr %i.cx, align 8, !tbaa !145
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.ae, %bb.ad
  %.0.i.i = phi i64 [ %i.db, %bb.ad ], [ %i.dc, %bb.ae ] ; 3 uses
  %i.dd = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.dd, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.af

bb.af:                                            ; preds = %rb_array_len.exit.i
  call void @rb_out_of_int(i64 noundef %.0.i.i) #23
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %.not191 = icmp slt i64 %indvars.iv275, %.0.i.i
  br i1 %.not191, label %bb.ag, label %.critedge200

bb.ag:                                            ; preds = %RARRAY_LENINT.exit
  %i.de = call i64 @rb_ary_entry(i64 noundef %i.ap, i64 noundef %indvars.iv275) #25 ; 2 uses
  %i.df = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.de, ptr noundef nonnull %1)
  %.not189 = icmp eq i32 %i.df, 0
  br i1 %.not189, label %bb.ah, label %.critedge209

bb.ah:                                            ; preds = %bb.ag
  %i.dg = load i64, ptr %i.k, align 8, !tbaa !185 ; 5 uses
  %.not190 = icmp eq i64 %i.de, %i.dg
  br i1 %.not190, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dh = call ptr @rb_ary_ptr_use_start(i64 noundef %i.ap) #21
  %i.di = getelementptr [8 x i8], ptr %i.dh, i64 %indvars.iv275
  store i64 %i.dg, ptr %i.di, align 8, !tbaa !57
  %i.dj = icmp eq i64 %i.dg, 0
  %i.dk = and i64 %i.dg, 7
  %i.dl = icmp ne i64 %i.dk, 0
  %i.dm = or i1 %i.dj, %i.dl
  br i1 %i.dm, label %RARRAY_ASET.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.dg) #21
  br label %RARRAY_ASET.exit

RARRAY_ASET.exit:                                 ; preds = %bb.ai, %bb.aj
  call void @rb_ary_ptr_use_end(i64 noundef %i.ap) #21
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %RARRAY_ASET.exit
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1
  br label %bb.ac, !llvm.loop !265

.critedge200:                                     ; preds = %RARRAY_LENINT.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %i.a, ptr %i.c, align 8, !tbaa !121
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #21, !srcloc !266
  %i.dn = load ptr, ptr %i.c, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.do = load volatile i64, ptr %i.dn, align 8, !tbaa !57 ; 0 uses
  %.pre285 = load i64, ptr %i.a, align 8, !tbaa !57
  br label %.critedge197

bb.al:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %4, align 8
  store i64 %i.ap, ptr %i.dp, align 8, !tbaa !258
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.dq, align 8, !tbaa !261
  %i.dr = ptrtoint ptr %4 to i64
  %i.ds = call i32 @rb_hash_stlike_foreach_with_replace(i64 noundef %i.ap, ptr noundef nonnull @obj_hash_traverse_replace_foreach_i, ptr noundef nonnull @obj_hash_traverse_replace_i, i64 noundef %i.dr) #21 ; 0 uses
  %i.dt = load i8, ptr %4, align 8, !tbaa !262, !range !77, !noundef !25
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %.critedge202, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dv = getelementptr i8, ptr %.pre.i, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !267 ; 2 uses
  %i.dx = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.dw, ptr noundef nonnull %1)
  %.not187 = icmp eq i32 %i.dx, 0
  br i1 %.not187, label %bb.an, label %.critedge204

bb.an:                                            ; preds = %bb.am
  %i.dy = load i64, ptr %i.k, align 8, !tbaa !185 ; 2 uses
  %.not188 = icmp eq i64 %i.dw, %i.dy
  br i1 %.not188, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dz = call i64 @rb_hash_set_ifnone(i64 noundef %i.ap, i64 noundef %i.dy) #21 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.critedge197

bb.aq:                                            ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.ea = and i64 %i.bw, 1040384
  %.not.i229 = icmp eq i64 %i.ea, 0
  br i1 %.not.i229, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eb = lshr i64 %i.bw, 13
  %i.ec = and i64 %i.eb, 127
  %i.ed = getelementptr i8, ptr %.pre.i, i64 16
  br label %RSTRUCT_CONST_PTR.exit

bb.as:                                            ; preds = %bb.aq
  %i.ee = getelementptr i8, ptr %.pre.i, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !145
  %i.eg = getelementptr i8, ptr %.pre.i, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !145
  br label %RSTRUCT_CONST_PTR.exit

RSTRUCT_CONST_PTR.exit:                           ; preds = %bb.ar, %bb.as
  %.0.i230244 = phi i64 [ %i.ec, %bb.ar ], [ %i.ef, %bb.as ] ; 2 uses
  %.0.i232 = phi ptr [ %i.ed, %bb.ar ], [ %i.eh, %bb.as ]
  %.not186261 = icmp sgt i64 %.0.i230244, 0
  br i1 %.not186261, label %.lr.ph263, label %.critedge197

.lr.ph263:                                        ; preds = %RSTRUCT_CONST_PTR.exit, %rb_obj_write.exit233
  %.0160262 = phi i64 [ %i.eq, %rb_obj_write.exit233 ], [ 0, %RSTRUCT_CONST_PTR.exit ] ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %.0.i232, i64 %.0160262 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !57 ; 2 uses
  %i.ek = call fastcc i32 @obj_traverse_replace_i(i64 noundef %i.ej, ptr noundef nonnull %1)
  %.not184 = icmp eq i32 %i.ek, 0
  br i1 %.not184, label %bb.at, label %.critedge209

bb.at:                                            ; preds = %.lr.ph263
  %i.el = load i64, ptr %i.k, align 8, !tbaa !185 ; 5 uses
  %.not185 = icmp eq i64 %i.el, %i.ej
  br i1 %.not185, label %rb_obj_write.exit233, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i64 %i.el, ptr %i.ei, align 8, !tbaa !57
  %i.em = icmp eq i64 %i.el, 0
  %i.en = and i64 %i.el, 7
  %i.eo = icmp ne i64 %i.en, 0
  %i.ep = or i1 %i.em, %i.eo
  br i1 %i.ep, label %rb_obj_write.exit233, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.el) #21
  br label %rb_obj_write.exit233

rb_obj_write.exit233:                             ; preds = %bb.at, %bb.au, %bb.av
  %i.eq = add nuw nsw i64 %.0160262, 1            ; 2 uses
end_hunk_1
