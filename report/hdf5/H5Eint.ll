Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Eint?download=true
inline.NumInlined: 13
inline.NumDeleted: 3
begin_hunk_0_@H5E__walk2_cb:bb.a
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.p, !prof !12

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  %stderr. = select i1 %.not, ptr @stderr, ptr %2
  %.051 = load ptr, ptr %stderr., align 8, !tbaa !71 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25
  %i.i = tail call ptr @H5I_object_verify(i64 noundef %i.h, i32 noundef 13) #15 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26
  %i.l = tail call ptr @H5I_object_verify(i64 noundef %i.k, i32 noundef 13) #15 ; 2 uses
  %i.m = icmp ne ptr %i.i, null
  %i.n = icmp ne ptr %i.l, null
  %or.cond = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %.not66 = icmp eq ptr %i.p, null
  %spec.select = select i1 %.not66, ptr @.str.391, ptr %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50   ; 2 uses
  %.not67 = icmp eq ptr %i.r, null
  %.049 = select i1 %.not67, ptr @.str.392, ptr %i.r
  %i.s = load i64, ptr %1, align 8, !tbaa !24
  %i.t = tail call ptr @H5I_object_verify(i64 noundef %i.s, i32 noundef 12) #15 ; 5 uses
  %.not68 = icmp eq ptr %i.t, null
  br i1 %.not68, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !75   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %i.v) #16
  %.not69 = icmp eq i32 %i.z, 0
  br i1 %.not69, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42 ; 2 uses
  %.not70 = icmp eq ptr %i.ab, null
  br i1 %.not70, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !76
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !43 ; 2 uses
  %.not71 = icmp eq ptr %i.ae, null
  br i1 %.not71, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !75
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44 ; 2 uses
  %.not72 = icmp eq ptr %i.ag, null
  br i1 %.not72, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !77
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !44
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = phi ptr [ %.pre, %bb.k ], [ null, %bb.j ] ; 2 uses
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !42 ; 2 uses
  %.not73 = icmp eq ptr %i.aj, null
  %spec.select76 = select i1 %.not73, ptr @.str.394, ptr %i.aj
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !43 ; 2 uses
  %.not74 = icmp eq ptr %i.ak, null
  %i.al = select i1 %.not74, ptr @.str.394, ptr %i.ak
  %.not75 = icmp eq ptr %i.ai, null
  %i.am = select i1 %.not75, ptr @.str.394, ptr %i.ai
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.051, ptr noundef nonnull @.str.393, ptr noundef nonnull %spec.select76, ptr noundef nonnull %i.al, ptr noundef nonnull %i.am) #15 ; 0 uses
  %i.ao = tail call i64 @fwrite(ptr nonnull @.str.395, i64 2, i64 1, ptr %.051) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %char0 = load i8, ptr %i.aq, align 1
  %i.as = icmp eq i8 %char0, 0                    ; 2 uses
  %spec.select84 = select i1 %i.as, ptr @.str.397, ptr @.str.398
  %spec.select85 = select i1 %i.as, ptr @.str.397, ptr %i.aq
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.at = phi ptr [ @.str.397, %bb.m ], [ %spec.select84, %bb.n ]
  %i.au = phi ptr [ @.str.397, %bb.m ], [ %spec.select85, %bb.n ]
  %.in83 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %.in83, align 8, !tbaa !27
  %.in82 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i32, ptr %.in82, align 8, !tbaa !29
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load ptr, ptr %.in, align 8, !tbaa !28
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.051, ptr noundef nonnull @.str.401, i32 noundef 2, ptr noundef nonnull @.str.397, i32 noundef %0, ptr noundef %i.ax, i32 noundef %i.aw, ptr noundef %i.av, ptr noundef nonnull %i.at, ptr noundef nonnull %i.au) #15 ; 0 uses
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.051, ptr noundef nonnull @.str.399, i32 noundef 4, ptr noundef nonnull @.str.397, ptr noundef nonnull %spec.select) #15 ; 0 uses
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.051, ptr noundef nonnull @.str.400, i32 noundef 4, ptr noundef nonnull @.str.397, ptr noundef nonnull %.049) #15 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.b, %bb.o, %bb.a
  %.0 = phi i32 [ 0, %bb.o ], [ -1, %bb.b ], [ 0, %bb.a ], [ -1, %bb.c ]
  ret i32 %.0
}

declare i32 @H5_user_cb_prepare(ptr noundef) local_unnamed_addr #2

declare i32 @H5_user_cb_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @H5E__get_auto(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.f, !prof !12

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !tbaa.struct !53
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not7 = icmp eq ptr %2, null
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  store ptr %i.i, ptr %2, align 8, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5E_get_default_auto_func(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5E_init_g, align 1, !tbaa !8
  %i.f = tail call i32 @H5E__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10
  %.pre4 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre5 = trunc nuw i8 %.pre to i1
  %.pre6 = trunc nuw i8 %.pre4 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5E_init_g, align 1, !tbaa !8
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !13
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !13
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5E_get_default_auto_func, i32 noundef 1484, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi7 = phi i1 [ %.pre6, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre5, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi7, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %H5E__get_auto.exit, label %bb.e, !prof !12

H5E__get_auto.exit:                               ; preds = %bb.d
  %.sroa.3.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @H5E_stack_g, i64 2072), align 8, !tbaa !55
  %1 = inttoptr i64 %.sroa.3.0.copyload to ptr
  store ptr %1, ptr %0, align 8, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %H5E__get_auto.exit, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.d ], [ 0, %H5E__get_auto.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @H5E__set_auto(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2096
  store ptr %2, ptr %i.h, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5E__push_stack(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = zext i1 %1 to i8
  %i.c = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %bb.f, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.j = icmp ult i64 %i.i, 32
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %i.i ; 9 uses
  store i8 %i.b, ptr %i.l, align 8, !tbaa !20
  %i.m = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = xor i1 %i.p, true
  %i.r = select i1 %i.n, i1 true, i1 %i.q
  br i1 %i.r, label %bb.d, label %H5E__set_stack_entry.exit.thread, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.not.i = icmp eq ptr %3, null
  %spec.store.select.i = select i1 %.not.i, ptr @.str.407, ptr %3
  %.not28.i = icmp eq ptr %2, null
  %spec.store.select2.i = select i1 %.not28.i, ptr @.str.408, ptr %2
  %.not29.i = icmp eq ptr %8, null
  %spec.store.select1.i = select i1 %.not29.i, ptr @.str.409, ptr %8 ; 2 uses
  store i64 %5, ptr %i.s, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %6, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %7, ptr %i.u, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %spec.store.select.i, ptr %i.v, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %spec.store.select2.i, ptr %i.w, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i32 %4, ptr %i.x, align 8, !tbaa !29
  %.not30.i = icmp eq ptr %9, null
  br i1 %.not30.i, label %.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !30
  %i.y = call i32 @vasprintf(ptr noundef nonnull %i.a, ptr noundef nonnull %spec.store.select1.i, ptr noundef nonnull %9) #15
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %H5E__set_stack_entry.exit.thread19, label %H5E__set_stack_entry.exit

H5E__set_stack_entry.exit.thread19:               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.f

.split:                                           ; preds = %bb.d
  %i.aa = tail call noalias ptr @strdup(ptr noundef nonnull %spec.store.select1.i) #15 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !31
  %i.ac = icmp eq ptr %i.aa, null
  br i1 %i.ac, label %bb.f, label %H5E__set_stack_entry.exit.H5E__set_stack_entry.exit.thread_crit_edge

H5E__set_stack_entry.exit:                        ; preds = %bb.e
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %H5E__set_stack_entry.exit.H5E__set_stack_entry.exit.thread_crit_edge

H5E__set_stack_entry.exit.H5E__set_stack_entry.exit.thread_crit_edge: ; preds = %H5E__set_stack_entry.exit, %.split
  %.pre = load i64, ptr %0, align 8, !tbaa !16
  br label %H5E__set_stack_entry.exit.thread

H5E__set_stack_entry.exit.thread:                 ; preds = %H5E__set_stack_entry.exit.H5E__set_stack_entry.exit.thread_crit_edge, %bb.c
  %i.af = phi i64 [ %.pre, %H5E__set_stack_entry.exit.H5E__set_stack_entry.exit.thread_crit_edge ], [ %i.i, %bb.c ]
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %0, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %H5E__set_stack_entry.exit.thread19, %.split, %H5E__set_stack_entry.exit.thread, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %H5E__set_stack_entry.exit.thread ], [ 0, %bb.b ], [ -1, %H5E__set_stack_entry.exit.thread19 ], [ -1, %.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5E__clear_entries(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5E_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %.preheader, label %.thread, !prof !12

.preheader:                                       ; preds = %bb.a
  %.not44 = icmp eq i64 %1, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.02946 = phi i32 [ 0, %.lr.ph ], [ %i.i, %bb.m ]
  %.03045 = phi i64 [ %1, %.lr.ph ], [ %i.bc, %bb.m ]
  %i.h = load i64, ptr %0, align 8, !tbaa !16
  %i.i = add i32 %.02946, 1                       ; 3 uses
  %i.j = zext i32 %i.i to i64
  %i.k = sub i64 %i.h, %i.j
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.k ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !60   ; 3 uses
  %i.p = load i64, ptr @H5E_first_min_id_g, align 8, !tbaa !13
  %i.q = icmp slt i64 %i.o, %i.p
  %i.r = load i64, ptr @H5E_last_min_id_g, align 8
  %i.s = icmp sgt i64 %i.o, %i.r
  %or.cond = select i1 %i.q, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = tail call i32 @H5I_dec_ref(i64 noundef %i.o) #15
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr @H5E_ERROR_g, align 8, !tbaa !13
  %i.w = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !13
  %i.x = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5E__clear_entries, i32 noundef 1796, i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.410) ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.b, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !59   ; 3 uses
  %i.aa = load i64, ptr @H5E_first_maj_id_g, align 8, !tbaa !13
  %i.ab = icmp slt i64 %i.z, %i.aa
  %i.ac = load i64, ptr @H5E_last_maj_id_g, align 8
  %i.ad = icmp sgt i64 %i.z, %i.ac
  %or.cond38 = select i1 %i.ab, i1 true, i1 %i.ad
  br i1 %or.cond38, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call i32 @H5I_dec_ref(i64 noundef %i.z) #15
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = load i64, ptr @H5E_ERROR_g, align 8, !tbaa !13
  %i.ah = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !13
  %i.ai = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5E__clear_entries, i32 noundef 1799, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.410) ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !58  ; 2 uses
  %i.ak = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !13
  %.not35 = icmp eq i64 %i.aj, %i.ak
end_hunk_0
