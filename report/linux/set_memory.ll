Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/set_memory?download=true
inline.NumInlined: 456
inline.NumDeleted: 190
loop-unroll.NumUnrolled: 2
begin_hunk_0_@set_memory_nx:bb.a
  store i64 %0, ptr %i.a, align 8
  %i.b = load i64, ptr @__supported_pte_mask, align 8
  %.not = icmp sgt i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc i32 @change_page_attr_set_clr(ptr noundef nonnull %i.a, i32 noundef %1, i64 -9223372036854775808, i64 0, i32 noundef 0, i32 noundef 0, ptr noundef null) #11, !srcloc !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @set_memory_ro(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %0, ptr %i.a, align 8
  %i.b = call fastcc i32 @change_page_attr_set_clr(ptr noundef nonnull %i.a, i32 noundef %1, i64 0, i64 66, i32 noundef 0, i32 noundef 0, ptr noundef null) #11, !srcloc !23
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @set_memory_rox(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %0, ptr %i.a, align 8
  %i.b = load i64, ptr @__supported_pte_mask, align 8
  %i.c = and i64 %i.b, -9223372036854775808
  %. = or disjoint i64 %i.c, 66
  %i.d = call fastcc i32 @change_page_attr_set_clr(ptr noundef nonnull %i.a, i32 noundef %1, i64 0, i64 %., i32 noundef 0, i32 noundef 16, ptr noundef null) #11
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @set_memory_rw(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %0, ptr %i.a, align 8
  %i.b = call fastcc i32 @change_page_attr_set_clr(ptr noundef nonnull %i.a, i32 noundef %1, i64 2, i64 0, i32 noundef 0, i32 noundef 0, ptr noundef null) #11, !srcloc !19
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @set_memory_np_noalias(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %0, ptr %i.a, align 8
  %i.b = call fastcc i32 @change_page_attr_set_clr(ptr noundef nonnull %i.a, i32 noundef %1, i64 0, i64 1, i32 noundef 0, i32 noundef 8, ptr noundef null) #11, !srcloc !57
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @set_memory_4k(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %0, ptr %i.a, align 8
  %i.b = call fastcc i32 @change_page_attr_set_clr(ptr noundef nonnull %i.a, i32 noundef %1, i64 2048, i64 0, i32 noundef 1, i32 noundef 0, ptr noundef null) #11, !srcloc !58
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @set_memory_nonglobal(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %0, ptr %i.a, align 8
  %i.b = call fastcc i32 @change_page_attr_set_clr(ptr noundef nonnull %i.a, i32 noundef %1, i64 0, i64 256, i32 noundef 0, i32 noundef 0, ptr noundef null) #11, !srcloc !23
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @set_memory_global(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %0, ptr %i.a, align 8
  %i.b = call fastcc i32 @change_page_attr_set_clr(ptr noundef nonnull %i.a, i32 noundef %1, i64 256, i64 0, i32 noundef 0, i32 noundef 0, ptr noundef null) #11, !srcloc !19
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @set_memory_enc_stop_conversion() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @oops_in_progress, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @down_write_trylock(ptr noundef nonnull @mem_enc_lock) #9
  %i.c = icmp ne i32 %i.b, 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @down_write(ptr noundef nonnull @mem_enc_lock) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef i32 @set_memory_encrypted(i64 %0, i32 %1) #4 align 16 prefalign(16) {
bb.a:
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef i32 @set_memory_decrypted(i64 %0, i32 %1) #4 align 16 prefalign(16) {
bb.a:
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @set_pages_uc(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr @vmemmap_base, align 8
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = shl i64 %i.c, 6
  %i.e = load i64, ptr @page_offset_base, align 8
  %i.f = add i64 %i.d, %i.e
  %i.g = tail call i32 @set_memory_uc(i64 noundef %i.f, i32 noundef %1) #11
  ret i32 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @set_pages_array_uc(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @_set_pages_array(ptr noundef %0, i32 noundef %1, i32 noundef 2) #11, !srcloc !59
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @_set_pages_array(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 1, 3) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.b = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr @vmemmap_base, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.e, %i.d
  %i.g = shl i64 %i.f, 6                          ; 2 uses
  %i.h = add i64 %i.g, 4096
  %i.i = tail call i32 @memtype_reserve(i64 noundef %i.g, i64 noundef %i.h, i32 noundef %2, ptr noundef null) #9
  %.not38 = icmp eq i32 %i.i, 0
  br i1 %.not38, label %bb.b, label %.loopexit39.loopexit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.036.lcssa = phi i32 [ 0, %bb.a ], [ %1, %bb.b ]
  %i.j = icmp eq i32 %2, 1                        ; 2 uses
  %i.k = select i1 %i.j, i32 2, i32 %2
  %i.l = tail call i64 @cachemode2protval(i32 noundef range(i32 1, 5) %i.k) #9
  %i.m = tail call fastcc i32 @change_page_attr_set_clr(ptr noundef null, i32 noundef %1, i64 %i.l, i64 0, i32 noundef 0, i32 noundef 4, ptr noundef %0) #11, !srcloc !62 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  %or.cond = and i1 %i.j, %i.n
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.o = tail call i64 @cachemode2protval(i32 noundef 1) #9
  %i.p = tail call fastcc i32 @change_page_attr_set_clr(ptr noundef null, i32 noundef %1, i64 %i.o, i64 152, i32 noundef 0, i32 noundef 4, ptr noundef %0) #11, !srcloc !63
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.035 = phi i32 [ %i.p, %bb.c ], [ %i.m, %._crit_edge ]
  %.not = icmp eq i32 %.035, 0
  br i1 %.not, label %.loopexit, label %.loopexit39

.loopexit39.loopexit:                             ; preds = %.lr.ph
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit39

.loopexit39:                                      ; preds = %.loopexit39.loopexit, %bb.d
  %.03641 = phi i32 [ %.036.lcssa, %bb.d ], [ %i.q, %.loopexit39.loopexit ] ; 2 uses
  %.not46 = icmp eq i32 %.03641, 0
  br i1 %.not46, label %.loopexit, label %.lr.ph45.preheader

.lr.ph45.preheader:                               ; preds = %.loopexit39
  %wide.trip.count52 = zext i32 %.03641 to i64
  br label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %.lr.ph45
  %indvars.iv49 = phi i64 [ 0, %.lr.ph45.preheader ], [ %indvars.iv.next50, %.lr.ph45 ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %0, i64 %indvars.iv49
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load i64, ptr @vmemmap_base, align 8
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.u, %i.t
  %i.w = shl i64 %i.v, 6                          ; 2 uses
  %i.x = add i64 %i.w, 4096
  %i.y = tail call i32 @memtype_free(i64 noundef %i.w, i64 noundef %i.x) #9 ; 0 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %.loopexit, label %.lr.ph45, !llvm.loop !61

.loopexit:                                        ; preds = %.lr.ph45, %.loopexit39, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -22, %.loopexit39 ], [ -22, %.lr.ph45 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @set_pages_array_wc(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @_set_pages_array(ptr noundef %0, i32 noundef %1, i32 noundef 1) #11, !srcloc !64
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @set_pages_wb(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i64, ptr @vmemmap_base, align 8
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = shl i64 %i.d, 6
  %i.f = load i64, ptr @page_offset_base, align 8
  %i.g = add i64 %i.e, %i.f                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.a, align 8
  %i.h = call fastcc i32 @change_page_attr_set_clr(ptr noundef nonnull %i.a, i32 noundef %1, i64 0, i64 152, i32 noundef 0, i32 noundef 0, ptr noundef null) #11, !srcloc !23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.b, label %set_memory_wb.exit

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.g, 2147483648
  %i.j = icmp ugt i64 %i.g, -2147483649
  %i.k = load i64, ptr @phys_base, align 8
  %i.l = load i64, ptr @page_offset_base, align 8
  %i.m = sub i64 -2147483648, %i.l
  %i.n = select i1 %i.j, i64 %i.k, i64 %i.m
  %i.o = add i64 %i.i, %i.n                       ; 2 uses
  %i.p = sext i32 %1 to i64
  %i.q = shl nsw i64 %i.p, 12
  %i.r = add i64 %i.o, %i.q
  %i.s = call i32 @memtype_free(i64 noundef %i.o, i64 noundef %i.r) #9 ; 0 uses
  br label %set_memory_wb.exit

set_memory_wb.exit:                               ; preds = %bb.a, %bb.b
  ret i32 %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @set_pages_array_wb(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @change_page_attr_set_clr(ptr noundef null, i32 noundef %1, i64 0, i64 152, i32 noundef 0, i32 noundef 4, ptr noundef %0) #11, !srcloc !66 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  %i.b = icmp sgt i32 %1, 0
  %or.cond = and i1 %.not, %i.b
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.c = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr @vmemmap_base, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = shl i64 %i.g, 6                          ; 2 uses
  %i.i = add i64 %i.h, 4096
  %i.j = tail call i32 @memtype_free(i64 noundef %i.h, i64 noundef %i.i) #9 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !65

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @set_pages_ro(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i64, ptr @vmemmap_base, align 8
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = shl i64 %i.d, 6
  %i.f = load i64, ptr @page_offset_base, align 8
  %i.g = add i64 %i.e, %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.a, align 8
  %i.h = call fastcc i32 @change_page_attr_set_clr(ptr noundef nonnull %i.a, i32 noundef %1, i64 0, i64 66, i32 noundef 0, i32 noundef 0, ptr noundef null) #11, !srcloc !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @set_pages_rw(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i64, ptr @vmemmap_base, align 8
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = shl i64 %i.d, 6
  %i.f = load i64, ptr @page_offset_base, align 8
  %i.g = add i64 %i.e, %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.a, align 8
  %i.h = call fastcc i32 @change_page_attr_set_clr(ptr noundef nonnull %i.a, i32 noundef %1, i64 2, i64 0, i32 noundef 0, i32 noundef 0, ptr noundef null) #11, !srcloc !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @set_direct_map_invalid_noflush(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.cpa_data, align 8           ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i64, ptr @vmemmap_base, align 8
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = shl i64 %i.d, 6
  %i.f = load i64, ptr @page_offset_base, align 8
  %i.g = add i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store ptr %i.a, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i64 67, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 8, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, i8 0, i64 12, i1 false)
  %i.n = call fastcc i32 @__change_page_attr_set_clr(ptr noundef nonnull %1, i32 noundef 1) #11, !srcloc !24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.n
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @set_direct_map_default_noflush(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.cpa_data, align 8           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i64, ptr @vmemmap_base, align 8
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = shl i64 %i.d, 6
  %i.f = load i64, ptr @page_offset_base, align 8
  %i.g = add i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store ptr %i.a, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 8, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.n, i8 0, i64 12, i1 false)
  %i.o = call fastcc i32 @__change_page_attr_set_clr(ptr noundef nonnull %1, i32 noundef 1) #11, !srcloc !25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.o
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @set_direct_map_valid_noflush(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
end_hunk_0
begin_hunk_1_@__unmap_pmd_range:bb.a
  %i.ay = lshr i64 %i.at, 58
  %i.az = getelementptr [8 x i8], ptr @node_data, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void @mod_node_page_state(ptr noundef %i.ba, i32 noundef 38, i64 noundef %.0.i.neg.i.i.i.i.i.i) #9
  %i.bb = load volatile i64, ptr %i.ap, align 16
  %.in.in.i.i.i.i.i.i = and i64 %i.bb, 4
  %.in.i.not.i.i.i.i.i = icmp eq i64 %.in.in.i.i.i.i.i.i, 0
  br i1 %.in.i.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %pagetable_dtor.exit.i.i.i.i
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ap, i32 -5, ptr elementtype(i8) %i.ap) #10, !srcloc !22
  tail call void @pagetable_free_kernel(ptr noundef %i.ap) #9
  br label %bb.m

bb.k:                                             ; preds = %pagetable_dtor.exit.i.i.i.i
  %i.bc = load volatile i64, ptr %i.ap, align 16
  %i.bd = and i64 %i.bc, 64
  %.not.i.i.i2.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i2.i.i.i.i, label %__pagetable_free.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr i8, ptr %i.ap, i64 64
  %.val.i.i.i3.i.i.i.i = load i64, ptr %i.be, align 16
  %i.bf = trunc i64 %.val.i.i.i3.i.i.i.i to i32
  %i.bg = and i32 %i.bf, 255
  br label %__pagetable_free.exit.i.i.i.i.i

__pagetable_free.exit.i.i.i.i.i:                  ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bg, %bb.l ], [ 0, %bb.k ]
  tail call void @__free_pages(ptr noundef %i.ap, i32 noundef %.0.i.i.i.i.i.i.i) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %__pagetable_free.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  store i64 0, ptr %.sroa.0.i.i.i, align 8
  %.sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i = load volatile i64, ptr %.sroa.0.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bh = load i64, ptr %0, align 8               ; 2 uses
  %i.bi = and i64 %i.bh, 128
  %.not.i.i = icmp eq i64 %i.bi, 0
  %..i.i = select i1 %.not.i.i, i64 4503599627366400, i64 4503598553628672
  %i.bj = and i64 %..i.i, %i.bh
  %i.bk = load i64, ptr @page_offset_base, align 8
  %i.bl = add i64 %i.bj, %i.bk
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = tail call fastcc zeroext i1 @try_to_free_pmd_page(ptr noundef %i.bm) #11, !srcloc !118
  br i1 %i.bn, label %bb.n, label %unmap_pte_range.exit

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i4)
  store i64 0, ptr %.sroa.0.i.i4, align 8
  %.sroa.0.i.i4.0..sroa.0.i.i4.0..sroa.0.i.i4.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i5 = load volatile i64, ptr %.sroa.0.i.i4, align 8
  store volatile i64 %.sroa.0.i.i4.0..sroa.0.i.i4.0..sroa.0.i.i4.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i4)
  br label %unmap_pte_range.exit

unmap_pte_range.exit:                             ; preds = %bb.f, %bb.b, %bb.c, %bb.d, %bb.m, %bb.n
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @try_to_free_pmd_page(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  br label %bb.f

bb.b:                                             ; preds = %bb.f
  %i.a = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, -97
  %.not.1 = icmp eq i64 %i.d, 0
  br i1 %.not.1, label %bb.c, label %pmd_free.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, -97
  %.not.2 = icmp eq i64 %i.h, 0
  br i1 %.not.2, label %bb.d, label %pmd_free.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, -97
  %.not.3 = icmp eq i64 %i.l, 0
  br i1 %.not.3, label %bb.e, label %pmd_free.exit

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.3 = icmp eq i64 %indvars.iv.next.3, 512
  br i1 %exitcond.3, label %bb.g, label %bb.f, !llvm.loop !119

bb.f:                                             ; preds = %bb.e, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %i.m = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, -97
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.b, label %pmd_free.exit

bb.g:                                             ; preds = %bb.e
  %i.p = load i64, ptr @vmemmap_base, align 8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.s = add i64 %i.r, 2147483648
  %i.t = icmp ugt ptr %0, inttoptr (i64 -2147483649 to ptr)
  %i.u = load i64, ptr @phys_base, align 8
  %i.v = load i64, ptr @page_offset_base, align 8
  %i.w = sub i64 -2147483648, %i.v
  %i.x = select i1 %i.t, i64 %i.u, i64 %i.w
  %i.y = add i64 %i.s, %i.x
  %i.z = lshr i64 %i.y, 12
  %i.aa = getelementptr [64 x i8], ptr %i.q, i64 %i.z ; 10 uses
  %i.ab = and i64 %i.r, 4095
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "560: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 560b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 560) #10, !srcloc !120
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.12, i32 164, i32 0, i64 16) #10, !srcloc !121
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.aa, i64 48     ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 16
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %__folio_clear_pgtable.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 -1, ptr %i.ac, align 16
  br label %__folio_clear_pgtable.exit.i.i.i

__folio_clear_pgtable.exit.i.i.i:                 ; preds = %bb.j, %bb.i
  %i.af = load volatile i64, ptr %i.aa, align 16  ; 2 uses
  %i.ag = and i64 %i.af, 64
  %.not.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %pagetable_dtor.exit.i.i, label %bb.k

bb.k:                                             ; preds = %__folio_clear_pgtable.exit.i.i.i
  %i.ah = getelementptr i8, ptr %i.aa, i64 64
  %.val.i.i.i.i.i = load i64, ptr %i.ah, align 16
  %i.ai = and i64 %.val.i.i.i.i.i, 255
  %sext.i.i.i.i = shl i64 -4294967296, %i.ai
  %i.aj = ashr exact i64 %sext.i.i.i.i, 32
  br label %pagetable_dtor.exit.i.i

pagetable_dtor.exit.i.i:                          ; preds = %bb.k, %__folio_clear_pgtable.exit.i.i.i
  %.0.i.neg.i.i.i.i = phi i64 [ %i.aj, %bb.k ], [ -1, %__folio_clear_pgtable.exit.i.i.i ]
  %i.ak = lshr i64 %i.af, 58
  %i.al = getelementptr [8 x i8], ptr @node_data, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8
  tail call void @mod_node_page_state(ptr noundef %i.am, i32 noundef 38, i64 noundef %.0.i.neg.i.i.i.i) #9
  %i.an = load volatile i64, ptr %i.aa, align 16
  %.in.in.i.i.i.i = and i64 %i.an, 4
  %.in.i.not.i.i.i = icmp eq i64 %.in.in.i.i.i.i, 0
  br i1 %.in.i.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %pagetable_dtor.exit.i.i
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.aa, i32 -5, ptr elementtype(i8) %i.aa) #10, !srcloc !22
  tail call void @pagetable_free_kernel(ptr noundef %i.aa) #9
  br label %pmd_free.exit

bb.m:                                             ; preds = %pagetable_dtor.exit.i.i
  %i.ao = load volatile i64, ptr %i.aa, align 16
  %i.ap = and i64 %i.ao, 64
  %.not.i.i.i2.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i2.i.i, label %__pagetable_free.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr i8, ptr %i.aa, i64 64
  %.val.i.i.i3.i.i = load i64, ptr %i.aq, align 16
  %i.ar = trunc i64 %.val.i.i.i3.i.i to i32
  %i.as = and i32 %i.ar, 255
  br label %__pagetable_free.exit.i.i.i

__pagetable_free.exit.i.i.i:                      ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i = phi i32 [ %i.as, %bb.n ], [ 0, %bb.m ]
  tail call void @__free_pages(ptr noundef %i.aa, i32 noundef %.0.i.i.i.i.i) #9
  br label %pmd_free.exit

pmd_free.exit:                                    ; preds = %bb.f, %bb.b, %bb.c, %bb.d, %__pagetable_free.exit.i.i.i, %bb.l
  %.not16 = phi i1 [ true, %bb.l ], [ true, %__pagetable_free.exit.i.i.i ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.f ]
  ret i1 %.not16
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { nounwind }
attributes #11 = { noredzone "no-builtin-wcslen" }
attributes #12 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !13}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{i64 2157305467}
!12 = !{i64 2149985933, i64 2149985962, i64 2149985968, i64 2149985984, i64 2149986000, i64 2149986027, i64 2149986127, i64 2149986200, i64 2149986314, i64 2149986362, i64 2149986410, i64 2149986474, i64 2149986531, i64 2149986583, i64 2149986709, i64 2149986937, i64 2149986795, i64 2149986826, i64 2149986832, i64 2149986848, i64 2149986864}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{i64 2157305555}
!15 = !{i64 2150065219, i64 2150065248, i64 2150065254, i64 2150065450, i64 2150065456, i64 2150065472, i64 2150065488, i64 2150065515, i64 2150065627, i64 2150065636, i64 2150065710, i64 2150065758, i64 2150065806, i64 2150065861, i64 2150065915, i64 2150065970, i64 2150065986, i64 2150066033, i64 2150066144, i64 2150066175, i64 2150066181, i64 2150066203, i64 2150066219, i64 2150065268, i64 2150065270, i64 2150065286, i64 2150065313, i64 2150065413, i64 2150066283, i64 2150066397, i64 2150066445, i64 2150066493, i64 2150066557, i64 2150066614, i64 2150066666, i64 2150066795, i64 2150067010, i64 2150066881, i64 2150066912, i64 2150066918, i64 2150066934, i64 2150066950, i64 2574955, i64 2574995, i64 2150067469, i64 2575033, i64 2575070, i64 2575091, i64 2575111}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{i64 53583}
!20 = !{i64 55358}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{i64 2148630835, i64 2148630874, i64 2148630895, i64 2148630932, i64 2148630955, i64 2148630826}
!23 = !{i64 53801}
!24 = !{i64 66792}
!25 = !{i64 66144}
!26 = !{i64 2153389389, i64 2153389264}
!27 = !{i64 2153389912, i64 2153391012, i64 2153391045, i64 2153391080, i64 2153391096, i64 2153392023, i64 2153392081, i64 2153392130, i64 2153391940, i64 2153391155, i64 2153391187, i64 2153391270}
!28 = !{i64 2153392440, i64 2153392316}
!29 = !{i64 2155244766}
!30 = !{i64 2148629523, i64 2148629562, i64 2148629583, i64 2148629620, i64 2148629643, i64 2148629514}
!31 = !{i64 2157314539, i64 2157314414}
!32 = !{i64 2157315062, i64 2157316137, i64 2157316170, i64 2157316205, i64 2157316221, i64 2157317148, i64 2157317206, i64 2157317255, i64 2157317065, i64 2157316280, i64 2157316312, i64 2157316395}
!33 = !{i64 2157317563, i64 2157317439}
!34 = !{i64 2157349937, i64 2157349812}
!35 = !{i64 2157350460, i64 2157350936, i64 2157350969, i64 2157351004, i64 2157351020, i64 2157351861, i64 2157351919, i64 2157351968, i64 2157351778, i64 2157351079, i64 2157351111}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = !{i64 2157407695, i64 2157407570}
!42 = !{i64 2157408218, i64 2157409257, i64 2157409290, i64 2157409325, i64 2157409341, i64 2157410268, i64 2157410326, i64 2157410375, i64 2157410185, i64 2157409400, i64 2157409432, i64 2157409515}
!43 = !{i64 2157410684, i64 2157410560}
!44 = !{i64 2157412136, i64 2157412011}
!45 = !{i64 2157412659, i64 2157413698, i64 2157413731, i64 2157413766, i64 2157413782, i64 2157414709, i64 2157414767, i64 2157414816, i64 2157414626, i64 2157413841, i64 2157413873, i64 2157413956}
!46 = !{i64 2157415125, i64 2157415001}
!47 = !{i64 53045}
!48 = !{i64 2157322046, i64 2157321921}
!49 = !{i64 2157322569, i64 2157323045, i64 2157323078, i64 2157323113, i64 2157323129, i64 2157323970, i64 2157324028, i64 2157324077, i64 2157323887, i64 2157323188, i64 2157323220}
!50 = !{i64 2157335110, i64 2157334985}
!51 = !{i64 2157335633, i64 2157336109, i64 2157336142, i64 2157336177, i64 2157336193, i64 2157337034, i64 2157337092, i64 2157337141, i64 2157336951, i64 2157336252, i64 2157336284}
!52 = !{i64 1328135, i64 1328156}
!53 = !{i64 2157338469}
!54 = !{i64 2157338709}
!55 = !{i64 10669}
!56 = !{i64 10921}
!57 = !{i64 58887}
!58 = !{i64 59203}
!59 = !{i64 64270}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = !{i64 54010}
!63 = !{i64 63747}
!64 = !{i64 64438}
!65 = distinct !{!65, !13}
!66 = !{i64 54209}
!67 = !{i64 2157461002, i64 2157461029, i64 2157461425, i64 2157461458, i64 2157461493, i64 2157461509, i64 2157462350, i64 2157462408, i64 2157462457, i64 2157462267, i64 2157461568, i64 2157461600}
!68 = !{i64 2157459373}
!69 = !{!"auto-init"}
!70 = !{i64 68932}
!71 = distinct !{!71, !13}
!72 = distinct !{null}
!73 = distinct !{!73, !13}
!74 = !{i64 46905}
!75 = !{i64 47001}
!76 = !{i64 47427}
!77 = !{i64 2157345056, i64 2157345083, i64 2157345529, i64 2157345562, i64 2157345597, i64 2157345613, i64 2157346454, i64 2157346512, i64 2157346561, i64 2157346371, i64 2157345672, i64 2157345704}
!78 = !{i64 2157343097}
!79 = !{i64 26796}
!80 = !{i64 2157355923, i64 2157355798}
!81 = !{i64 2157356446, i64 2157357528, i64 2157357561, i64 2157357596, i64 2157357612, i64 2157358539, i64 2157358597, i64 2157358646, i64 2157358456, i64 2157357671, i64 2157357703, i64 2157357786}
!82 = !{i64 2157358955, i64 2157358831}
!83 = !{i64 29499}
!84 = !{i64 49465}
!85 = !{i64 50451}
!86 = !{i64 2157404502, i64 2157404377}
!87 = !{i64 2157405025, i64 2157405501, i64 2157405534, i64 2157405569, i64 2157405585, i64 2157406426, i64 2157406484, i64 2157406533, i64 2157406343, i64 2157405644, i64 2157405676}
!88 = !{i64 2157465565, i64 2157465592, i64 2157465988, i64 2157466021, i64 2157466056, i64 2157466072, i64 2157466913, i64 2157466971, i64 2157467020, i64 2157466830, i64 2157466131, i64 2157466163}
!89 = !{i64 2157463936}
!90 = !{i64 69961}
!91 = !{i64 1277525}
!92 = distinct !{!92, !13}
!93 = !{i64 37147}
!94 = !{i64 37218}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = !{i64 42956}
!100 = !{i64 43007}
!101 = !{i64 43764}
!102 = !{i64 43809}
!103 = !{i64 39403}
!104 = !{i64 39601}
!105 = !{i64 39730}
!106 = !{i64 2157401227, i64 2157401254, i64 2157401690, i64 2157401723, i64 2157401758, i64 2157401774, i64 2157402615, i64 2157402673, i64 2157402722, i64 2157402532, i64 2157401833, i64 2157401865}
!107 = !{i64 2157395435}
!108 = distinct !{!108, !13}
!109 = !{i64 41762}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = !{i64 38533}
!113 = !{i64 38737}
!114 = !{i64 38880}
!115 = !{i64 39022}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
!118 = !{i64 38151}
!119 = distinct !{!119, !13}
!120 = !{i64 2157233213, i64 2157233088}
!121 = !{i64 2157233736, i64 2157234212, i64 2157234245, i64 2157234280, i64 2157234296, i64 2157235137, i64 2157235195, i64 2157235244, i64 2157235054, i64 2157234355, i64 2157234387}
end_hunk_1
