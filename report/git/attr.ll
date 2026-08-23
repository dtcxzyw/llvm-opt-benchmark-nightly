Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/attr?download=true
inline.NumInlined: 100
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@attr_check_initl:bb.a
bb.j:                                             ; preds = %bb.i
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = load i32, ptr %i.p, align 8, !tbaa !51
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.4, i32 noundef 573, ptr noundef nonnull @.str.5, i32 noundef %i.ak, i32 noundef %i.aj) #23
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.al = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #21
  %i.am = call fastcc ptr @git_attr_internal(ptr noundef nonnull %i.ai, i64 noundef %i.al) ; 2 uses
  %.not26 = icmp eq ptr %i.am, null
  br i1 %.not26, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.4, i32 noundef 576, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.ai) #23
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %indvars.iv
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.p, align 8, !tbaa !51
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.m, %bb.f
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret ptr %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @attr_check_dup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %copy_array.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @attr_check_alloc()        ; 4 uses
  %i.b = load <2 x i32>, ptr %0, align 8, !tbaa !28
  %i.c = load i32, ptr %0, align 8, !tbaa !51     ; 3 uses
  store <2 x i32> %i.b, ptr %i.a, align 8, !tbaa !28
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %mul.ov.i = icmp slt i32 %i.c, 0
  br i1 %mul.ov.i, label %bb.c, label %st_mult.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.19, i64 noundef 16, i64 noundef %i.d) #23
  unreachable

st_mult.exit:                                     ; preds = %bb.b
  %i.e = shl nuw nsw i64 %i.d, 4                  ; 2 uses
  %i.f = tail call ptr @xmalloc(i64 noundef %i.e) #22 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !57
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %copy_array.exit, label %st_mult.exit.i

st_mult.exit.i:                                   ; preds = %st_mult.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr readonly align 1 %i.i, i64 %i.e, i1 false)
  br label %copy_array.exit

copy_array.exit:                                  ; preds = %st_mult.exit.i, %st_mult.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.a, %st_mult.exit ], [ %i.a, %st_mult.exit.i ]
  ret ptr %.0
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @attr_check_append(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !51     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !56   ; 2 uses
  %.not = icmp slt i32 %i.a, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !57
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.a, 1
  %i.e = mul i32 %i.c, 3
  %i.f = add i32 %i.e, 48
  %i.g = sdiv i32 %i.f, 2
  %. = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %i.d) ; 3 uses
  store i32 %., ptr %i.b, align 4, !tbaa !56
  %i.h = sext i32 %. to i64                       ; 2 uses
  %mul.ov.i = icmp slt i32 %., 0
  br i1 %mul.ov.i, label %bb.c, label %st_mult.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.19, i64 noundef 16, i64 noundef %i.h) #23
  unreachable

st_mult.exit:                                     ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = shl nuw nsw i64 %i.h, 4
  %i.l = tail call ptr @xrealloc(ptr noundef %i.j, i64 noundef %i.k) #22 ; 2 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !57
  %.pre19 = load i32, ptr %0, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %st_mult.exit
  %i.m = phi i32 [ %i.a, %._crit_edge ], [ %.pre19, %st_mult.exit ] ; 2 uses
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %st_mult.exit ]
  %i.o = add nsw i32 %i.m, 1
  store i32 %i.o, ptr %0, align 8, !tbaa !51
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.p ; 2 uses
  store ptr %1, ptr %i.q, align 8, !tbaa !58
  ret ptr %i.q
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @attr_check_reset(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0) local_unnamed_addr #9 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !51
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @attr_check_clear(ptr nofree noundef captures(none) initializes((0, 8), (16, 20)) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.b) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  tail call void @free(ptr noundef %i.d) #22
  store ptr null, ptr %i.c, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %.not5.i = icmp eq ptr %i.g, null
  br i1 %.not5.i, label %drop_attr_stack.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.h = phi ptr [ %i.j, %.lr.ph.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  store ptr %i.i, ptr %i.f, align 8, !tbaa !63
  tail call fastcc void @attr_stack_free(ptr noundef nonnull %i.h)
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %drop_attr_stack.exit, label %.lr.ph.i, !llvm.loop !67

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
  %i.b = load i64, ptr @check_vector, align 8, !tbaa !43 ; 4 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @check_vector, i64 16), align 8, !tbaa !47 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %i.g = add i64 %i.b, -1                         ; 2 uses
  %i.h = icmp ugt i64 %i.g, %indvars.iv.i
  br i1 %i.h, label %.lr.ph15.i, label %check_vector_remove.exit

.lr.ph15.i:                                       ; preds = %.preheader.i
  %i.i = shl i64 %indvars.iv.i, 3                 ; 2 uses
  %scevgep.i = getelementptr nuw i8, ptr %i.c, i64 %i.i ; 2 uses
  %scevgep20.i = getelementptr nuw i8, ptr %scevgep.i, i64 8
  %i.j = shl i64 %i.b, 3
  %i.k = add i64 %i.j, -8
  %i.l = sub i64 %i.k, %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr nonnull align 8 %scevgep20.i, i64 %i.l, i1 false), !tbaa !48
  br label %check_vector_remove.exit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !68

._crit_edge.i:                                    ; preds = %bb.d, %bb.b
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.4, i32 noundef 514, ptr noundef nonnull @.str.20) #23
  unreachable

check_vector_remove.exit:                         ; preds = %.preheader.i, %.lr.ph15.i
  store i64 %i.g, ptr @check_vector, align 8, !tbaa !43
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @check_vector, i64 24)) #22 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.o) #22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61
  tail call void @free(ptr noundef %i.q) #22
  store ptr null, ptr %i.p, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.t, null
  br i1 %.not5.i.i, label %attr_check_clear.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %check_vector_remove.exit, %.lr.ph.i.i
  %i.u = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.t, %check_vector_remove.exit ] ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64
  store ptr %i.v, ptr %i.s, align 8, !tbaa !63
  tail call fastcc void @attr_stack_free(ptr noundef nonnull %i.u)
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !63   ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %attr_check_clear.exit, label %.lr.ph.i.i, !llvm.loop !67

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
  %i.d = load i32, ptr @direction, align 4, !tbaa !28
  %.not = icmp eq i32 %0, %i.d
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @check_vector, i64 24)) #22 ; 0 uses
  %i.f = load i64, ptr @check_vector, align 8, !tbaa !43 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %drop_all_attr_stacks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %drop_attr_stack.exit.i
  %i.g = phi i64 [ %i.ap, %drop_attr_stack.exit.i ], [ %i.f, %bb.d ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %drop_attr_stack.exit.i ], [ 0, %bb.d ] ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @check_vector, i64 16), align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.l, null
  br i1 %.not5.i.i, label %drop_attr_stack.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %attr_stack_free.exit.i
  %i.m = phi ptr [ %i.ao, %attr_stack_free.exit.i ], [ %i.l, %.lr.ph.i ] ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64
  store ptr %i.n, ptr %i.k, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.p) #22
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70
  %.not.i4.i = icmp eq i32 %i.r, 0
  br i1 %.not.i4.i, label %attr_stack_free.exit.i, label %.lr.ph28.i.i

.lr.ph28.i.i:                                     ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph28.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph28.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !37   ; 2 uses
  %.not30.i.i = icmp eq i64 %i.x, 0
  br i1 %.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %bb.e, %bb.g
  %i.y = phi i64 [ %i.ag, %bb.g ], [ %i.x, %bb.e ]
  %.025.i.i = phi i64 [ %i.ah, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.025.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 2 uses
  %i.ac = insertelement <4 x ptr> poison, ptr %i.ab, i64 0
  %i.ad = shufflevector <4 x ptr> %i.ac, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ae = icmp eq <4 x ptr> %i.ad, <ptr @git_attr__true, ptr @git_attr__false, ptr null, ptr @git_attr__unknown>
  %i.af = bitcast <4 x i1> %i.ae to i4
  %.not11 = icmp eq i4 %i.af, 0
  br i1 %.not11, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i5.i
  tail call void @free(ptr noundef %i.ab) #22
  %.pre.i.i = load i64, ptr %i.w, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i5.i
  %i.ag = phi i64 [ %i.y, %.lr.ph.i5.i ], [ %.pre.i.i, %bb.f ] ; 2 uses
  %i.ah = add nuw i64 %.025.i.i, 1                ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  br i1 %i.ai, label %.lr.ph.i5.i, label %._crit_edge.i.i, !llvm.loop !74

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.e
  tail call void @free(ptr noundef nonnull %i.v) #22
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aj = load i32, ptr %i.q, align 8, !tbaa !70
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ak
  br i1 %i.al, label %bb.e, label %attr_stack_free.exit.i, !llvm.loop !75

attr_stack_free.exit.i:                           ; preds = %._crit_edge.i.i, %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.an) #22
  tail call void @free(ptr noundef nonnull %i.m) #22
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %drop_attr_stack.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !67

drop_attr_stack.exit.loopexit.i:                  ; preds = %attr_stack_free.exit.i
  %.pre.i = load i64, ptr @check_vector, align 8, !tbaa !43
  br label %drop_attr_stack.exit.i

drop_attr_stack.exit.i:                           ; preds = %drop_attr_stack.exit.loopexit.i, %.lr.ph.i
  %i.ap = phi i64 [ %.pre.i, %drop_attr_stack.exit.loopexit.i ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, %indvars.iv.next.i
  br i1 %i.aq, label %.lr.ph.i, label %drop_all_attr_stacks.exit, !llvm.loop !76

drop_all_attr_stacks.exit:                        ; preds = %drop_attr_stack.exit.i, %bb.d
  %i.ar = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @check_vector, i64 24)) #22 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %drop_all_attr_stacks.exit, %bb.c
  store i32 %0, ptr @direction, align 4, !tbaa !28
  ret void
}

declare i32 @is_bare_repository() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @git_attr_system_file() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @git_attr_system_file.system_wide, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @system_path(ptr noundef nonnull @.str.8) #22 ; 2 uses
  store ptr %i.b, ptr @git_attr_system_file.system_wide, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %i.c
}

declare ptr @system_path(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @git_attr_global_file() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !77
  %i.b = tail call ptr @repo_config_values(ptr noundef %i.a) #22 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @xdg_config_home(ptr noundef nonnull @.str.9) #22 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !79
end_hunk_0
