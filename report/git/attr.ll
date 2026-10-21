Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/attr?download=true
inline.NumInlined: 100
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@attr_check_dup:bb.a
copy_array.exit:                                  ; preds = %st_mult.exit.i, %st_mult.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.a, %st_mult.exit ], [ %i.a, %st_mult.exit.i ]
  ret ptr %.0
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @attr_check_append(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !52     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !53   ; 2 uses
  %.not = icmp slt i32 %i.a, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !54
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.a, 1
  %i.e = mul i32 %i.c, 3
  %i.f = add i32 %i.e, 48
  %i.g = sdiv i32 %i.f, 2
  %. = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %i.d) ; 3 uses
  store i32 %., ptr %i.b, align 4, !tbaa !53
  %i.h = sext i32 %. to i64                       ; 2 uses
  %mul.ov.i = icmp slt i32 %., 0
  br i1 %mul.ov.i, label %bb.c, label %st_mult.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.19, i64 noundef 16, i64 noundef %i.h) #23
  unreachable

st_mult.exit:                                     ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.k = shl nuw nsw i64 %i.h, 4
  %i.l = tail call ptr @xrealloc(ptr noundef %i.j, i64 noundef %i.k) #22 ; 2 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !54
  %.pre19 = load i32, ptr %0, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %st_mult.exit
  %i.m = phi i32 [ %i.a, %._crit_edge ], [ %.pre19, %st_mult.exit ] ; 2 uses
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %st_mult.exit ]
  %i.o = add nsw i32 %i.m, 1
  store i32 %i.o, ptr %0, align 8, !tbaa !52
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.p ; 2 uses
  store ptr %1, ptr %i.q, align 8, !tbaa !56
  ret ptr %i.q
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @attr_check_reset(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0) local_unnamed_addr #9 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @attr_check_clear(ptr nofree noundef captures(none) initializes((0, 8), (16, 20)) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.b) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.d) #22
  store ptr null, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %.not5.i = icmp eq ptr %i.g, null
  br i1 %.not5.i, label %drop_attr_stack.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.h = phi ptr [ %i.j, %.lr.ph.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  store ptr %i.i, ptr %i.f, align 8, !tbaa !59
  tail call fastcc void @attr_stack_free(ptr noundef nonnull %i.h)
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %drop_attr_stack.exit, label %.lr.ph.i, !llvm.loop !0

drop_attr_stack.exit:                             ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @attr_check_free(ptr noundef captures(address) %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @check_vector, i64 24)) #22 ; 0 uses
  %i.b = load i64, ptr @check_vector, align 8, !tbaa !44 ; 4 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @check_vector, i64 16), align 8, !tbaa !45 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %i.g = add i64 %i.b, -1                         ; 2 uses
  %i.h = icmp ugt i64 %i.g, %indvars.iv.i
  br i1 %i.h, label %.lr.ph15.i, label %check_vector_remove.exit

.lr.ph15.i:                                       ; preds = %.preheader.i
  %i.i = shl i64 %indvars.iv.i, 3                 ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.c, i64 %i.i ; 2 uses
  %scevgep20.i = getelementptr i8, ptr %scevgep.i, i64 8
  %i.j = shl i64 %i.b, 3
  %i.k = add i64 %i.j, -8
  %i.l = sub i64 %i.k, %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %scevgep20.i, i64 %i.l, i1 false), !tbaa !47
  br label %check_vector_remove.exit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !125

._crit_edge.i:                                    ; preds = %bb.d, %bb.b
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.4, i32 noundef 514, ptr noundef nonnull @.str.20) #23
  unreachable

check_vector_remove.exit:                         ; preds = %.preheader.i, %.lr.ph15.i
  store i64 %i.g, ptr @check_vector, align 8, !tbaa !44
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @check_vector, i64 24)) #22 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.o) #22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.q) #22
  store ptr null, ptr %i.p, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.t, null
  br i1 %.not5.i.i, label %attr_check_clear.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %check_vector_remove.exit, %.lr.ph.i.i
  %i.u = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.t, %check_vector_remove.exit ] ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62
  store ptr %i.v, ptr %i.s, align 8, !tbaa !59
  tail call fastcc void @attr_stack_free(ptr noundef nonnull %i.u)
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !59   ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %attr_check_clear.exit, label %.lr.ph.i.i, !llvm.loop !0

attr_check_clear.exit:                            ; preds = %.lr.ph.i.i, %check_vector_remove.exit
  tail call void @free(ptr noundef nonnull %0) #22
  br label %bb.e

bb.e:                                             ; preds = %attr_check_clear.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @git_attr_set_direction(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @is_bare_repository() #22
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i32 %0, 2
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.4, i32 noundef 685, ptr noundef nonnull @.str.7) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr @direction, align 4, !tbaa !29
  %.not = icmp eq i32 %0, %i.d
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @check_vector, i64 24)) #22 ; 0 uses
  %i.f = load i64, ptr @check_vector, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %drop_all_attr_stacks.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %.pre8.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @check_vector, i64 16), align 8, !tbaa !45
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %drop_attr_stack.exit.i, %.lr.ph.preheader.i
  %i.g = phi i64 [ %i.f, %.lr.ph.preheader.i ], [ %i.ao, %drop_attr_stack.exit.i ]
  %1 = phi ptr [ %.pre8.i, %.lr.ph.preheader.i ], [ %2, %drop_attr_stack.exit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %drop_attr_stack.exit.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.k, null
  br i1 %.not5.i.i, label %drop_attr_stack.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %attr_stack_free.exit.i
  %i.l = phi ptr [ %i.an, %attr_stack_free.exit.i ], [ %i.k, %.lr.ph.i ] ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62
  store ptr %i.m, ptr %i.j, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63
  tail call void @free(ptr noundef %i.o) #22
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !64
  %.not.i4.i = icmp eq i32 %i.q, 0
  br i1 %.not.i4.i, label %attr_stack_free.exit.i, label %.lr.ph28.i.i

.lr.ph28.i.i:                                     ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph28.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph28.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !67   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !37   ; 2 uses
  %.not30.i.i = icmp eq i64 %i.w, 0
  br i1 %.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %bb.e, %bb.g
  %i.x = phi i64 [ %i.af, %bb.g ], [ %i.w, %bb.e ]
  %.025.i.i = phi i64 [ %i.ag, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.025.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40  ; 2 uses
  %i.ab = insertelement <4 x ptr> poison, ptr %i.aa, i64 0
  %i.ac = shufflevector <4 x ptr> %i.ab, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ad = icmp eq <4 x ptr> %i.ac, <ptr @git_attr__true, ptr @git_attr__false, ptr null, ptr @git_attr__unknown>
  %i.ae = bitcast <4 x i1> %i.ad to i4
  %.not11 = icmp eq i4 %i.ae, 0
  br i1 %.not11, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i5.i
  tail call void @free(ptr noundef %i.aa) #22
  %.pre.i.i = load i64, ptr %i.v, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i5.i
  %i.af = phi i64 [ %i.x, %.lr.ph.i5.i ], [ %.pre.i.i, %bb.f ] ; 2 uses
  %i.ag = add nuw i64 %.025.i.i, 1                ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  br i1 %i.ah, label %.lr.ph.i5.i, label %._crit_edge.i.i, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.e
  tail call void @free(ptr noundef nonnull %i.u) #22
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ai = load i32, ptr %i.p, align 8, !tbaa !64
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next.i.i, %i.aj
  br i1 %i.ak, label %bb.e, label %attr_stack_free.exit.i, !llvm.loop !2

attr_stack_free.exit.i:                           ; preds = %._crit_edge.i.i, %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !65
  tail call void @free(ptr noundef %i.am) #22
  tail call void @free(ptr noundef nonnull %i.l) #22
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !59  ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %drop_attr_stack.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

drop_attr_stack.exit.loopexit.i:                  ; preds = %attr_stack_free.exit.i
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @check_vector, i64 16), align 8, !tbaa !45
  %.pre.i.a = load i64, ptr @check_vector, align 8, !tbaa !44
  br label %drop_attr_stack.exit.i

drop_attr_stack.exit.i:                           ; preds = %drop_attr_stack.exit.loopexit.i, %.lr.ph.i
  %i.ao = phi i64 [ %.pre.i.a, %drop_attr_stack.exit.loopexit.i ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %2 = phi ptr [ %.pre.i, %drop_attr_stack.exit.loopexit.i ], [ %1, %.lr.ph.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, %indvars.iv.next.i
  br i1 %i.ap, label %.lr.ph.i, label %drop_all_attr_stacks.exit, !llvm.loop !126

drop_all_attr_stacks.exit:                        ; preds = %drop_attr_stack.exit.i, %bb.d
  %i.aq = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @check_vector, i64 24)) #22 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %drop_all_attr_stacks.exit, %bb.c
  store i32 %0, ptr @direction, align 4, !tbaa !29
  ret void
}

declare i32 @is_bare_repository() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @git_attr_system_file() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @git_attr_system_file.system_wide, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @system_path(ptr noundef nonnull @.str.8) #22 ; 2 uses
  store ptr %i.b, ptr @git_attr_system_file.system_wide, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %i.c
}

declare ptr @system_path(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @git_attr_global_file() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !69
  %i.b = tail call ptr @repo_config_values(ptr noundef %i.a) #22 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @xdg_config_home(ptr noundef nonnull @.str.9) #22 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.c, %bb.a ]
  ret ptr %i.e
}

declare ptr @repo_config_values(ptr noundef) local_unnamed_addr #4

declare ptr @xdg_config_home(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @git_attr_system_is_enabled() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @git_env_bool(ptr noundef nonnull @.str.10, i32 noundef 0) #22
  %.not = icmp eq i32 %i.a, 0
  %i.b = zext i1 %.not to i32
  ret i32 %i.b
}

declare i32 @git_env_bool(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @set_git_attr_source(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @xstrdup(ptr noundef %0) #22
  store ptr %i.a, ptr @default_attr_source_tree_object_name, align 8, !tbaa !33
  ret void
}

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @git_check_attr(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.object_id, align 4          ; 3 uses
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = tail call fastcc ptr @default_attr_source()
  tail call fastcc void @collect_some_attrs(ptr noundef %0, ptr noundef %i.a, ptr noundef %1, ptr noundef %2)
  %i.b = load i32, ptr %2, align 8, !tbaa !52
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !54
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %compute_builtin_attr.exit
  %i.g = phi ptr [ %.pre, %.lr.ph ], [ %i.bk, %compute_builtin_attr.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %compute_builtin_attr.exit ] ; 3 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.j = load i32, ptr %i.i, align 4, !tbaa !29
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73   ; 2 uses
  %i.p = icmp eq ptr %i.o, @git_attr__unknown
  br i1 %i.p, label %bb.c, label %compute_builtin_attr.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.r = load ptr, ptr @compute_builtin_attr.object_mode_attr, align 8, !tbaa !128 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = call fastcc ptr @git_attr_internal(ptr noundef nonnull @.str.39, i64 noundef 18) ; 2 uses
  store ptr %i.s, ptr @compute_builtin_attr.object_mode_attr, align 8, !tbaa !128
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi ptr [ %i.s, %bb.d ], [ %i.r, %bb.c ]
  %i.u = icmp eq ptr %i.q, %i.t
  br i1 %i.u, label %bb.f, label %compute_builtin_attr.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr @direction, align 4, !tbaa !29
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.x = call i32 @lstat64(ptr noundef %1, ptr noundef nonnull %4) #22
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = call fastcc ptr @_(ptr noundef nonnull @.str.40)
  call void (ptr, ...) @die_errno(ptr noundef %i.y, ptr noundef %1) #23
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = load i32, ptr %i.f, align 8, !tbaa !129  ; 2 uses
  %i.aa = trunc i32 %i.z to i16
  %trunc.i.i.i = and i16 %i.aa, -4096
  switch i16 %trunc.i.i.i, label %bb.j [
    i16 -32768, label %canon_mode.exit.i.i
    i16 -24576, label %canon_mode.exit.thread.i.i
    i16 16384, label %canon_mode.exit.thread28.i.i
  ]

bb.j:                                             ; preds = %bb.i
  br label %canon_mode.exit.thread.i.i

canon_mode.exit.i.i:                              ; preds = %bb.i
  %i.ab = and i32 %i.z, 64
  %.not.i.i.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i.i.i, i32 33188, i32 33261
  br label %canon_mode.exit.thread.i.i

canon_mode.exit.thread28.i.i:                     ; preds = %bb.i
  %i.ad = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %i.ae = trunc i64 %i.ad to i32
  %i.af = call i32 @index_name_pos(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.ae) #22 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %canon_mode.exit.thread28.i.i
  %i.ah = load ptr, ptr %0, align 8, !tbaa !89
  %i.ai = zext nneg i32 %i.af to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 52
  %i.am = load i32, ptr %i.al, align 4, !tbaa !29 ; 2 uses
  %i.an = and i32 %i.am, 61440
  %i.ao = icmp eq i32 %i.an, 57344
  %spec.select.i.i = select i1 %i.ao, i32 %i.am, i32 16384
  br label %canon_mode.exit.thread.i.i

bb.l:                                             ; preds = %canon_mode.exit.thread28.i.i
  %i.ap = load ptr, ptr @the_repository, align 8, !tbaa !69
  %i.aq = call i32 @repo_resolve_gitlink_ref(ptr noundef %i.ap, ptr noundef nonnull %1, ptr noundef nonnull @.str.41, ptr noundef nonnull %3) #22
  %i.ar = icmp eq i32 %i.aq, 0
  %spec.select25.i.i = select i1 %i.ar, i32 57344, i32 16384
  br label %canon_mode.exit.thread.i.i

canon_mode.exit.thread.i.i:                       ; preds = %bb.l, %bb.k, %canon_mode.exit.i.i, %bb.j, %bb.i
  %.1.i.i = phi i32 [ %i.ac, %canon_mode.exit.i.i ], [ %spec.select.i.i, %bb.k ], [ %spec.select25.i.i, %bb.l ], [ 40960, %bb.i ], [ 57344, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.o

bb.m:                                             ; preds = %bb.f
  %i.as = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %i.at = trunc i64 %i.as to i32
  %i.au = call i32 @index_name_pos(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.at) #22 ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.n, label %compute_builtin_attr.exit
end_hunk_0
