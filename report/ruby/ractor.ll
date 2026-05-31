inline.NumInlined: 610
inline.NumDeleted: 187
begin_hunk_0_@rb_obj_set_shareable:bb.a
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
  %i.ap = and i32 %i.ao, 31                       ; 2 uses
  %3 = icmp samesign ult i32 %i.ap, 27
  %switch.shifted = lshr i32 67108879, %i.ap
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %3, i1 %switch.lobit, i1 false
  %4 = and i64 %i.am, 578712547822141440
  %.not9.i.i = icmp eq i64 %4, 0
  %or.cond58 = or i1 %or.cond, %.not9.i.i
  br i1 %or.cond58, label %rb_obj_set_shareable.exit, label %bb.m

bb.m:                                             ; preds = %rb_type.exit.i.i.i
  %i.aq = call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0) #21 ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = and i64 %i.aq, 7
  %i.at = icmp ne i64 %i.as, 0
  %i.au = or i1 %i.ar, %i.at
  br i1 %i.au, label %rb_obj_set_shareable.exit, label %imemo_type_p.exit.i.i, !prof !132

imemo_type_p.exit.i.i:                            ; preds = %bb.m
  %i.av = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !119 ; 2 uses
  %i.ax = and i64 %i.aw, 61471
  %.not.i.i = icmp eq i64 %i.ax, 53274
  br i1 %.not.i.i, label %bb.n, label %rb_obj_set_shareable.exit

bb.n:                                             ; preds = %imemo_type_p.exit.i.i
  %i.ay = or i64 %i.aw, 256
  store i64 %i.ay, ptr %i.av, align 8, !tbaa !119
  br label %rb_obj_set_shareable.exit

bb.o:                                             ; preds = %obj_refer_only_shareables_p.exit
  %i.az = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.az, ptr noundef nonnull @.str.108, i64 noundef %0) #22
  unreachable

bb.p:                                             ; preds = %allow_frozen_shareable_p.exit
  %i.ba = call i64 @rb_obj_is_proc(i64 noundef %0) #21
  %.not27 = icmp eq i64 %i.ba, 0
  br i1 %.not27, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = call i64 @rb_proc_ractor_make_shareable(i64 noundef %0, i64 noundef 36) #21 ; 0 uses
  br label %rb_obj_set_shareable.exit

bb.r:                                             ; preds = %bb.p
  %i.bc = load i64, ptr @rb_eRactorError, align 8, !tbaa !57
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bc, ptr noundef nonnull @.str.109, i64 noundef %0) #22
  unreachable

rb_type.exit:                                     ; preds = %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.bd = trunc i64 %i.t to i32
  %i.be = and i32 %i.bd, 31
  switch i32 %i.be, label %bb.u [
    i32 26, label %rb_obj_set_shareable.exit
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %rb_type.exit
  %i.bf = lshr i64 %i.t, 32                       ; 2 uses
  %i.bg = and i64 %i.t, 126100789566373888
  %.not.i.i36 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i36, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %bb.s
  %i.bh = and i64 %i.bf, 524287                   ; 2 uses
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
  %i.bt = and i64 %i.bf, 524287                   ; 2 uses
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

rb_obj_set_shareable.exit:                        ; preds = %rb_type.exit.i.i.i, %bb.b, %bb.a, %bb.y, %bb.x, %bb.n, %imemo_type_p.exit.i.i, %bb.m, %rb_ractor_shareable_p.exit.thread45, %rb_type.exit, %bb.q, %rb_ractor_shareable_p.exit
  %.1 = phi i32 [ 1, %rb_ractor_shareable_p.exit ], [ 1, %bb.n ], [ 0, %bb.q ], [ 1, %rb_ractor_shareable_p.exit.thread45 ], [ 1, %rb_type.exit ], [ 1, %bb.x ], [ 1, %bb.m ], [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %bb.y ], [ 1, %imemo_type_p.exit.i.i ], [ 1, %rb_type.exit.i.i.i ]
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

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @mark_shareable, ptr %2, align 8, !tbaa !164
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.n, align 8, !tbaa !166
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = ptrtoint ptr %2 to i64
  %i.q = call i32 @rb_st_foreach(ptr noundef nonnull %i.m, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.p) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %rb_ractor_make_shareable.exit

rb_ractor_make_shareable.exit:                    ; preds = %ractor_copy.exit, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_ractor_ensure_shareable(i64 noundef returned %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.obj_traverse_data, align 8  ; 8 uses
  %3 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_ractor_shareable_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !119
  %i.g = and i64 %i.f, 256
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %rb_ractor_shareable_p.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @shareable_p_enter, ptr %2, align 8, !tbaa !161
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @null_leave, ptr %i.h, align 8, !tbaa !163
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = call fastcc i32 @obj_traverse_i(i64 noundef %0, ptr noundef nonnull %2)
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %bb.d, label %rb_ractor_shareable_p.exit.thread7

rb_ractor_shareable_p.exit.thread7:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not8.i.i.i, label %rb_ractor_shareable_p.exit.thread5, label %rb_ractor_shareable_p.exit

rb_ractor_shareable_p.exit.thread5:               ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %rb_ractor_shareable_p.exit.thread

rb_ractor_shareable_p.exit:                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @mark_shareable, ptr %3, align 8, !tbaa !164
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !166
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.m, align 4
  %i.n = ptrtoint ptr %3 to i64
  %i.o = call i32 @rb_st_foreach(ptr noundef nonnull %i.k, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.n) #21 ; 0 uses
  %i.p = load i32, ptr %i.l, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.q = icmp eq i32 %i.p, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.q, label %rb_ractor_shareable_p.exit.thread, label %bb.e

bb.e:                                             ; preds = %rb_ractor_shareable_p.exit.thread7, %rb_ractor_shareable_p.exit
  %i.r = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.31, i64 noundef %1) #21
  %i.s = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !57
  %i.t = call i64 @rb_exc_new_str(i64 noundef %i.s, i64 noundef %i.r) #21
  call void @rb_exc_raise(i64 noundef %i.t) #22
  unreachable

rb_ractor_shareable_p.exit.thread:                ; preds = %bb.b, %bb.a, %rb_ractor_shareable_p.exit.thread5, %rb_ractor_shareable_p.exit
  ret i64 %0
}

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #10

declare i64 @rb_exc_new_str(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ractor_ensure_main_ractor(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.e, align 8, !tbaa !11, !nonnull !25, !noundef !25 ; 2 uses
  %i.f = getelementptr i8, ptr %.val.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.h = getelementptr i8, ptr %.val.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !147
  %i.l = icmp eq ptr %i.g, %i.k
  br i1 %i.l, label %rb_ractor_main_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %rb_ractor_main_p.exit
  %i.m = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !57
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.32, ptr noundef %0) #22
  unreachable

rb_ractor_main_p.exit.thread:                     ; preds = %bb.a, %rb_ractor_main_p.exit
  ret void
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @rb_ractor_shareable_p_continue(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.obj_traverse_data, align 8  ; 6 uses
  %2 = alloca %struct.rb_obj_traverse_final_data, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr @shareable_p_enter, ptr %1, align 8, !tbaa !161
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
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !166
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.f, align 4
  %i.g = ptrtoint ptr %2 to i64
  %i.h = call i32 @rb_st_foreach(ptr noundef nonnull %i.d, ptr noundef nonnull @obj_traverse_final_i, i64 noundef %i.g) #21 ; 0 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.j = icmp eq i32 %i.i, 0
  br label %rb_obj_traverse.exit

rb_obj_traverse.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.a ], [ %i.j, %bb.c ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i1 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 3) i32 @shareable_p_enter(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !119  ; 7 uses
  %i.c = and i64 %i.b, 256
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %mark_shareable.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit13

rbimpl_RB_TYPE_P_fastpath.exit13:                 ; preds = %bb.b
  %i.h = and i64 %i.b, 31                         ; 3 uses
  %i.i = and i64 %i.b, 30
  %or.cond = icmp eq i64 %i.i, 2
  %i.j = icmp eq i64 %i.h, 28
  %or.cond28 = or i1 %i.j, %or.cond
  br i1 %or.cond28, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %.thread19

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit13
  %i.k = icmp eq i64 %i.h, 5
  br i1 %i.k, label %bb.c, label %rb_type.exit.i.i.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_make_independent(i64 noundef %0) #21
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !119
  br label %rb_type.exit.i.i.i

rb_type.exit.i.i.i:                               ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.l = phi i64 [ %.pre.i, %bb.c ], [ %i.b, %rbimpl_RB_TYPE_P_fastpath.exit.i ] ; 3 uses
  %i.m = or i64 %i.l, 256
  store i64 %i.m, ptr %i.a, align 8, !tbaa !119
  %i.n = trunc i64 %i.l to i32
  %i.o = and i32 %i.n, 31                         ; 2 uses
  %1 = icmp samesign ult i32 %i.o, 27
  %switch.shifted = lshr i32 67108879, %i.o
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond32 = select i1 %1, i1 %switch.lobit, i1 false
  %2 = and i64 %i.l, 578712547822141440
  %.not9.i.i = icmp eq i64 %2, 0
  %or.cond33 = or i1 %or.cond32, %.not9.i.i
  br i1 %or.cond33, label %mark_shareable.exit, label %bb.d

bb.d:                                             ; preds = %rb_type.exit.i.i.i
  %i.p = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0) #21 ; 3 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = and i64 %i.p, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = or i1 %i.q, %i.s
  br i1 %i.t, label %mark_shareable.exit, label %imemo_type_p.exit.i.i, !prof !132

imemo_type_p.exit.i.i:                            ; preds = %bb.d
  %i.u = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !119  ; 2 uses
  %i.w = and i64 %i.v, 61471
  %.not.i.i = icmp eq i64 %i.w, 53274
  br i1 %.not.i.i, label %bb.e, label %mark_shareable.exit

bb.e:                                             ; preds = %imemo_type_p.exit.i.i
  %i.x = or i64 %i.v, 256
  store i64 %i.x, ptr %i.u, align 8, !tbaa !119
  br label %mark_shareable.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b
  %i.y = and i64 %i.b, 2048
  %.not8 = icmp eq i64 %i.y, 0
  br i1 %.not8, label %mark_shareable.exit, label %allow_frozen_shareable_p.exit.thread

.thread19:                                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit13
  %i.z = and i64 %i.b, 2048
  %.not820 = icmp eq i64 %i.z, 0
  br i1 %.not820, label %mark_shareable.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i14

rbimpl_RB_TYPE_P_fastpath.exit.i14:               ; preds = %.thread19
  %i.aa = icmp eq i64 %i.h, 12
  br i1 %i.aa, label %bb.f, label %allow_frozen_shareable_p.exit.thread

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i14
  %i.ab = and i64 %i.b, 64
  %.not7.i = icmp eq i64 %i.ab, 0
  br i1 %.not7.i, label %mark_shareable.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %i.a, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !58
  %i.ae = and i64 %i.ad, -2
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr i8, ptr %i.af, i64 64
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !167
  %i.ai = and i64 %i.ah, 256
  %.not.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.not.i, label %mark_shareable.exit, label %allow_frozen_shareable_p.exit.thread

allow_frozen_shareable_p.exit.thread:             ; preds = %bb.g, %rbimpl_RB_TYPE_P_fastpath.exit.i14, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  br label %mark_shareable.exit

mark_shareable.exit:                              ; preds = %rb_type.exit.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %.thread19, %bb.f, %bb.g, %allow_frozen_shareable_p.exit.thread, %bb.e, %imemo_type_p.exit.i.i, %bb.d, %bb.a
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %allow_frozen_shareable_p.exit.thread ], [ 1, %bb.a ], [ 1, %imemo_type_p.exit.i.i ], [ 2, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ 2, %.thread19 ], [ 2, %bb.f ], [ 2, %bb.g ], [ 1, %rb_type.exit.i.i.i ], [ 1, %bb.d ]
  ret i32 %.0
}

declare void @ruby_xfree(ptr noundef) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias noundef nonnull ptr @rb_ractor_local_storage_ptr_newkey(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias nonnull dereferenceable(16) ptr @ruby_xmalloc(i64 noundef 16) #24 ; 3 uses
  %.not = icmp eq ptr %0, null
  %i.b = select i1 %.not, ptr @ractor_local_storage_type_null, ptr %0
  store ptr %i.b, ptr %i.a, align 8, !tbaa !186
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 36 to ptr), ptr %i.c, align 8, !tbaa !189
  ret ptr %i.a
}

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias noundef nonnull ptr @rb_ractor_local_storage_value_newkey() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias nonnull dereferenceable(16) ptr @ruby_xmalloc(i64 noundef 16) #24 ; 3 uses
  store ptr @ractor_local_storage_type_value, ptr %i.a, align 8, !tbaa !186
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 36 to ptr), ptr %i.b, align 8, !tbaa !189
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_ractor_local_storage_delkey(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %bb.a
  %i.c = load i32, ptr @freed_ractor_local_keys.0, align 8, !tbaa !190 ; 4 uses
  %i.d = load i32, ptr @freed_ractor_local_keys.1, align 4, !tbaa !193
  %i.e = icmp eq i32 %i.c, %i.d
  %.pre = load ptr, ptr @freed_ractor_local_keys.2, align 8, !tbaa !194 ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_vm_lock_enter.exit
  %.not2 = icmp eq i32 %i.c, 0
  %i.f = shl i32 %i.c, 1
  %i.g = select i1 %.not2, i32 4, i32 %i.f        ; 2 uses
  store i32 %i.g, ptr @freed_ractor_local_keys.1, align 4, !tbaa !193
  %i.h = sext i32 %i.g to i64
  %i.i = call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre, i64 noundef %i.h, i64 noundef 8) #26 ; 2 uses
  store ptr %i.i, ptr @freed_ractor_local_keys.2, align 8, !tbaa !194
  %.pre4 = load i32, ptr @freed_ractor_local_keys.0, align 8, !tbaa !190
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %rb_vm_lock_enter.exit
  %i.j = phi i32 [ %.pre4, %bb.c ], [ %i.c, %rb_vm_lock_enter.exit ] ; 2 uses
  %i.k = phi ptr [ %i.i, %bb.c ], [ %.pre, %rb_vm_lock_enter.exit ]
  %i.l = add i32 %i.j, 1
  store i32 %i.l, ptr @freed_ractor_local_keys.0, align 8, !tbaa !190
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr [8 x i8], ptr %i.k, i64 %i.m
  store ptr %0, ptr %i.n, align 8, !tbaa !195
  %i.o = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i3 = icmp eq ptr %i.o, null
  br i1 %.not.i.i3, label %bb.e, label %rb_vm_lock_leave.exit

bb.e:                                             ; preds = %bb.d
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #21
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_ractor_local_storage_value(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.d = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  store volatile ptr %i.f, ptr %i.b, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !11, !nonnull !25, !noundef !25 ; 2 uses
  %i.h = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = getelementptr i8, ptr %.val.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !113
  %i.l = getelementptr i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !147
  %i.n = icmp eq ptr %i.i, %i.m
  br i1 %i.n, label %rb_ractor_main_p.exit.thread.i, label %rb_current_ractor.exit.i

rb_ractor_main_p.exit.thread.i:                   ; preds = %rb_ractor_main_p.exit.i, %bb.a
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !189  ; 2 uses
  %i.q = icmp eq ptr %i.p, inttoptr (i64 36 to ptr)
  br i1 %i.q, label %ractor_local_ref.exit, label %bb.c

rb_current_ractor.exit.i:                         ; preds = %rb_ractor_main_p.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.f, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i10.i = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i10.i, i64 48
  %.val.i.i11.i = load ptr, ptr %i.r, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.s = getelementptr i8, ptr %.val.i.i11.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = getelementptr i8, ptr %i.t, i64 384
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !197  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %ractor_local_ref.exit, label %bb.b

bb.b:                                             ; preds = %rb_current_ractor.exit.i
  %i.w = ptrtoint ptr %0 to i64
  %i.x = call i32 @rb_st_lookup(ptr noundef nonnull %i.v, i64 noundef %i.w, ptr noundef nonnull %i.c) #21
  %.not9.i = icmp eq i32 %i.x, 0
  br i1 %.not9.i, label %ractor_local_ref.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %rb_ractor_main_p.exit.thread.i, %._crit_edge
  %i.y = phi ptr [ %.pre, %._crit_edge ], [ %i.p, %rb_ractor_main_p.exit.thread.i ]
  %i.z = ptrtoint ptr %i.y to i64
  br label %ractor_local_ref.exit

ractor_local_ref.exit:                            ; preds = %rb_ractor_main_p.exit.thread.i, %bb.b, %rb_current_ractor.exit.i, %bb.c
  %i.aa = phi i64 [ %i.z, %bb.c ], [ 4, %rb_current_ractor.exit.i ], [ 4, %bb.b ], [ 4, %rb_ractor_main_p.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  ret i64 %i.aa
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @rb_ractor_local_storage_value_lookup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  store volatile ptr %i.e, ptr %i.b, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !11, !nonnull !25, !noundef !25 ; 2 uses
  %i.g = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr i8, ptr %.val.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.m = icmp eq ptr %i.h, %i.l
  br i1 %i.m, label %rb_ractor_main_p.exit.thread.i, label %rb_current_ractor.exit.i

rb_ractor_main_p.exit.thread.i:                   ; preds = %rb_ractor_main_p.exit.i, %bb.a
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !189  ; 2 uses
  %i.p = icmp eq ptr %i.o, inttoptr (i64 36 to ptr)
  br i1 %i.p, label %ractor_local_ref.exit, label %bb.b

bb.b:                                             ; preds = %rb_ractor_main_p.exit.thread.i
  store ptr %i.o, ptr %1, align 8, !tbaa !198
  br label %ractor_local_ref.exit

rb_current_ractor.exit.i:                         ; preds = %rb_ractor_main_p.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !72
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i10.i = load volatile ptr, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i10.i, i64 48
  %.val.i.i11.i = load ptr, ptr %i.q, align 8, !tbaa !11, !nonnull !25, !noundef !25
  %i.r = getelementptr i8, ptr %.val.i.i11.i, i64 24
end_hunk_0
