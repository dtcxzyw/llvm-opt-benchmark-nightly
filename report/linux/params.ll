inline.NumInlined: 49
inline.NumDeleted: 23
begin_hunk_0_@param_free_charp:bb.a
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %.0.i, align 8             ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %i.g, align 8
  store volatile ptr %i.f, ptr %i.e, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.0.i, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.d, align 8
  tail call void @kfree(ptr noundef %.0.i) #15
  br label %maybe_kfree_parameter.exit

maybe_kfree_parameter.exit:                       ; preds = %bb.b, %bb.d
  tail call void @_raw_spin_unlock(ptr noundef nonnull @kmalloced_params_lock) #15
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @param_set_bool(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #3 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  %spec.store.select = select i1 %.not, ptr @.str.17, ptr %0
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @kstrtobool(ptr noundef nonnull %spec.store.select, ptr noundef %i.b) #15
  ret i32 %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @param_get_bool(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i8, ptr %i.b, align 1, !range !18, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.d, i32 89, i32 78
  %i.f = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.e) #15
  ret i32 %i.f
}

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @param_set_bool_enable_only(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1, !annotation !12
  %i.b = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i8, ptr %i.c, align 1, !range !18, !noundef !19
  %.not.i = icmp eq ptr %0, null
  %spec.store.select.i = select i1 %.not.i, ptr @.str.17, ptr %0 ; 2 uses
  %i.e = call i32 @kstrtobool(ptr noundef nonnull %spec.store.select.i, ptr noundef nonnull %i.a) #15 ; 2 uses
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i8 %i.d to i1
  %i.g = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %.not = xor i1 %i.h, true
  %or.cond = and i1 %i.f, %.not
  %.mux = select i1 %or.cond, i32 -30, i32 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = call i32 @kstrtobool(ptr noundef nonnull %spec.store.select.i, ptr noundef %i.i) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.010 = phi i32 [ %.mux, %bb.b ], [ %i.e, %bb.a ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.010
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @param_set_invbool(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1, !annotation !12
  %.not.i = icmp eq ptr %0, null
  %spec.store.select.i = select i1 %.not.i, ptr @.str.17, ptr %0
  %i.b = call i32 @kstrtobool(ptr noundef nonnull %spec.store.select.i, ptr noundef nonnull %i.a) #15 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.e = xor i8 %i.d, 1
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  store i8 %i.e, ptr %i.g, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @param_get_invbool(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i8, ptr %i.b, align 1, !range !18, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.d, i32 78, i32 89
  %i.f = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.e) #15
  ret i32 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @param_set_bint(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1, !annotation !12
  %.not.i = icmp eq ptr %0, null
  %spec.store.select.i = select i1 %.not.i, ptr @.str.17, ptr %0
  %i.b = call i32 @kstrtobool(ptr noundef nonnull %spec.store.select.i, ptr noundef nonnull %i.a) #15 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.e = zext nneg i8 %i.d to i32
  %i.f = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  store i32 %i.e, ptr %i.f, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @param_array_set(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #3 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.kernel_param, align 8       ; 8 uses
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = load ptr, ptr %1, align 8                ; 3 uses
  %i.f = load i32, ptr %i.b, align 8              ; 4 uses
  %i.g = getelementptr i8, ptr %i.b, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.b, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = getelementptr i8, ptr %i.b, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 26
  %i.p = load i8, ptr %i.o, align 2
  %i.q = getelementptr i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 4 uses
  %.not = icmp eq ptr %i.r, null
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false), !annotation !12
  store ptr %i.e, ptr %2, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  store ptr %i.h, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 %i.p, ptr %i.u, align 2
  br i1 %.not, label %.cont12.split.us.preheader, label %.cont12.split.preheader

.cont12.split.preheader:                          ; preds = %bb.a
  store i32 0, ptr %i.r, align 4
  %.not.i.i = icmp eq ptr %i.d, null
  %i.v = getelementptr i8, ptr %i.d, i64 248
  %i.w = select i1 %.not.i.i, ptr @param_lock, ptr %i.v
  %i.x = sext i32 %i.j to i64
  br label %.cont12.split

.cont12.split.us.preheader:                       ; preds = %bb.a
  %.not.i.i33 = icmp eq ptr %i.d, null
  %i.y = getelementptr i8, ptr %i.d, i64 248
  %i.z = select i1 %.not.i.i33, ptr @param_lock, ptr %i.y
  %i.aa = sext i32 %i.j to i64
  %i.ab = icmp eq i32 %i.f, 0
  br i1 %i.ab, label %.split.us, label %.lr.ph

.cont12.split.us:                                 ; preds = %.then.us
  %sext36.i.us = add i64 %sext.i.us, 4294967296
  %i.ac = ashr exact i64 %sext36.i.us, 32
  %i.ad = getelementptr i8, ptr %.029.i.us53, i64 %i.ac
  %i.ae = icmp eq i32 %3, %i.f
  br i1 %i.ae, label %.split.us, label %.lr.ph, !llvm.loop !20

.lr.ph:                                           ; preds = %.cont12.split.us.preheader, %.cont12.split.us
  %.029.i.us53 = phi ptr [ %i.ad, %.cont12.split.us ], [ %0, %.cont12.split.us.preheader ] ; 4 uses
  %.0.us52 = phi i32 [ %3, %.cont12.split.us ], [ 0, %.cont12.split.us.preheader ]
  %i.af = call i64 @strcspn(ptr noundef %.029.i.us53, ptr noundef nonnull @.str.25) #18
  %sext.i.us = shl i64 %i.af, 32                  ; 2 uses
  %i.ag = ashr exact i64 %sext.i.us, 32
  %i.ah = getelementptr i8, ptr %.029.i.us53, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1
  store i8 0, ptr %i.ah, align 1
  %i.aj = call zeroext i1 @mutex_is_locked(ptr noundef %i.z) #15
  br i1 %i.aj, label %check_kparam_locked.exit.i.us, label %.split18.us, !prof !21

check_kparam_locked.exit.i.us:                    ; preds = %.lr.ph
  %i.ak = call i32 %i.n(ptr noundef %.029.i.us53, ptr noundef nonnull %2) #15, !inline_history !22 ; 2 uses
  %.not.i.us = icmp eq i32 %i.ak, 0
  br i1 %.not.i.us, label %.then.us, label %param_array.exit

.then.us:                                         ; preds = %check_kparam_locked.exit.i.us
  %i.al = load ptr, ptr %i.t, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 %i.aa
  store ptr %i.am, ptr %i.t, align 8
  %3 = add i32 %.0.us52, 1                        ; 3 uses
  %i.an = icmp eq i8 %i.ai, 44
  br i1 %i.an, label %.cont12.split.us, label %.split20.us, !llvm.loop !20

.cont12.split:                                    ; preds = %.cont12.split.preheader, %.else
  %i.ao = phi i32 [ %i.bb, %.else ], [ 0, %.cont12.split.preheader ]
  %.029.i = phi ptr [ %i.ba, %.else ], [ %0, %.cont12.split.preheader ] ; 4 uses
  %i.ap = icmp eq i32 %i.ao, %i.f
  br i1 %i.ap, label %.split.us, label %bb.b

.split.us:                                        ; preds = %.cont12.split, %.cont12.split.us, %.cont12.split.us.preheader
  %i.aq = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %i.e, i32 noundef %i.f) #17 ; 0 uses
  br label %param_array.exit

bb.b:                                             ; preds = %.cont12.split
  %i.ar = call i64 @strcspn(ptr noundef %.029.i, ptr noundef nonnull @.str.25) #18
  %sext.i = shl i64 %i.ar, 32                     ; 2 uses
  %i.as = ashr exact i64 %sext.i, 32
  %i.at = getelementptr i8, ptr %.029.i, i64 %i.as ; 2 uses
  %i.au = load i8, ptr %i.at, align 1
  store i8 0, ptr %i.at, align 1
  %i.av = call zeroext i1 @mutex_is_locked(ptr noundef %i.w) #15
  br i1 %i.av, label %check_kparam_locked.exit.i, label %.split18.us, !prof !21

.split18.us:                                      ; preds = %bb.b, %.lr.ph
  call void asm sideeffect "611: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 611b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 611) #16, !srcloc !23
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.27, i32 32, i32 0, i64 16) #16, !srcloc !24
  unreachable

check_kparam_locked.exit.i:                       ; preds = %bb.b
  %i.aw = call i32 %i.n(ptr noundef %.029.i, ptr noundef nonnull %2) #15, !inline_history !22 ; 2 uses
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %.else, label %param_array.exit

.else:                                            ; preds = %check_kparam_locked.exit.i
  %i.ax = load ptr, ptr %i.t, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.x
  store ptr %i.ay, ptr %i.t, align 8
  %sext36.i = add i64 %sext.i, 4294967296
  %i.az = ashr exact i64 %sext36.i, 32
  %i.ba = getelementptr i8, ptr %.029.i, i64 %i.az
  %.else.val = load i32, ptr %i.r, align 4
  %i.bb = add i32 %.else.val, 1                   ; 3 uses
  store i32 %i.bb, ptr %i.r, align 4
  %i.bc = icmp eq i8 %i.au, 44
  br i1 %i.bc, label %.cont12.split, label %.split20.us, !llvm.loop !20

.split20.us:                                      ; preds = %.else, %.then.us
  %.us-phi21 = phi i32 [ %3, %.then.us ], [ %i.bb, %.else ]
  %i.bd = icmp eq i32 %.us-phi21, 0
  br i1 %i.bd, label %bb.c, label %param_array.exit

bb.c:                                             ; preds = %.split20.us
  %i.be = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %i.e, i32 noundef 1) #17 ; 0 uses
  br label %param_array.exit

param_array.exit:                                 ; preds = %check_kparam_locked.exit.i, %check_kparam_locked.exit.i.us, %.split.us, %.split20.us, %bb.c
  %.2.i = phi i32 [ -22, %bb.c ], [ 0, %.split20.us ], [ -22, %.split.us ], [ %i.ak, %check_kparam_locked.exit.i.us ], [ %i.aw, %check_kparam_locked.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i32 %.2.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @param_array_get(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #3 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.kernel_param, align 8       ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef align 8 dereferenceable(40) %1, i64 32, i1 false)
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not30 = icmp eq ptr %i.d, null
  %.31 = select i1 %.not30, ptr %i.b, ptr %i.d
  %i.e = load i32, ptr %.31, align 4
  %.not34 = icmp eq i32 %i.e, 0
  br i1 %.not34, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  %i.g = getelementptr i8, ptr %i.b, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %.pre = load ptr, ptr %i.f, align 8
  store ptr %.pre, ptr %i.h, align 8
  %i.k = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.peel = icmp eq ptr %i.k, null
  %i.l = getelementptr i8, ptr %i.k, i64 248
  %i.m = select i1 %.not.i.peel, ptr @param_lock, ptr %i.l
  %i.n = tail call zeroext i1 @mutex_is_locked(ptr noundef %i.m) #15
  br i1 %i.n, label %check_kparam_locked.exit.peel, label %.loopexit38, !prof !21

check_kparam_locked.exit.peel:                    ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call i32 %i.q(ptr noundef %0, ptr noundef nonnull %2) #15 ; 4 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %check_kparam_locked.exit.peel
  %i.t = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.peel = icmp eq ptr %i.t, null
  %..peel = select i1 %.not.peel, ptr %i.b, ptr %i.t
  %i.u = load i32, ptr %..peel, align 4
  %i.v = icmp ugt i32 %i.u, 1
  br i1 %i.v, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.c, %bb.d
  %.033 = phi i32 [ %i.ap, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
  %.02332 = phi i32 [ %i.aq, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.w = add i32 %.033, -1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr i8, ptr %0, i64 %i.x
  store i8 44, ptr %i.y, align 1
  %i.z = load ptr, ptr %i.f, align 8
  %i.aa = load i32, ptr %i.g, align 4
  %i.ab = mul i32 %i.aa, %.02332
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr i8, ptr %i.z, i64 %i.ac
  store ptr %i.ad, ptr %i.h, align 8
  %i.ae = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr i8, ptr %i.ae, i64 248
  %i.ag = select i1 %.not.i, ptr @param_lock, ptr %i.af
  %i.ah = call zeroext i1 @mutex_is_locked(ptr noundef %i.ag) #15
  br i1 %i.ah, label %check_kparam_locked.exit, label %.loopexit38, !prof !21

.loopexit38:                                      ; preds = %.peel.next, %bb.b
  call void asm sideeffect "611: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 611b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 611) #16, !srcloc !23
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.27, i32 32, i32 0, i64 16) #16, !srcloc !24
  unreachable

check_kparam_locked.exit:                         ; preds = %.peel.next
  %i.ai = load ptr, ptr %i.j, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = sext i32 %.033 to i64
  %i.am = getelementptr i8, ptr %0, i64 %i.al
  %i.an = call i32 %i.ak(ptr noundef %i.am, ptr noundef nonnull %2) #15 ; 3 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %check_kparam_locked.exit
  %i.ap = add i32 %i.an, %.033                    ; 2 uses
  %i.aq = add nuw i32 %.02332, 1                  ; 2 uses
  %i.ar = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  %. = select i1 %.not, ptr %i.b, ptr %i.ar
  %i.as = load i32, ptr %., align 4
  %i.at = icmp ult i32 %i.aq, %i.as
  br i1 %i.at, label %.peel.next, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.d, %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.r, %bb.c ], [ %i.ap, %bb.d ] ; 2 uses
  %i.au = sext i32 %.0.lcssa to i64
  %i.av = getelementptr i8, ptr %0, i64 %i.au
  store i8 0, ptr %i.av, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %check_kparam_locked.exit, %check_kparam_locked.exit.peel, %._crit_edge
  %.024 = phi i32 [ %.0.lcssa, %._crit_edge ], [ %i.r, %check_kparam_locked.exit.peel ], [ %i.an, %check_kparam_locked.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i32 %.024
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @param_array_free(ptr nofree noundef readonly captures(none) %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not1112 = icmp eq ptr %i.f, null
  %.13 = select i1 %.not1112, ptr %0, ptr %i.f
  %i.g = load i32, ptr %.13, align 4
  %.not15 = icmp eq i32 %i.g, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.014 = phi i32 [ 0, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.h, align 8
  %i.n = load i32, ptr %i.i, align 4
  %i.o = mul i32 %i.n, %.014
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr i8, ptr %i.m, i64 %i.p
  tail call void %i.l(ptr noundef %i.q) #15
  %i.r = add nuw i32 %.014, 1                     ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.s, null
  %. = select i1 %.not11, ptr %0, ptr %i.s
  %i.t = load i32, ptr %., align 4
  %i.u = icmp ult i32 %i.r, %i.t
  br i1 %i.u, label %bb.b, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -28, 1) i32 @param_set_copystring(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = tail call i64 @strnlen(ptr noundef %0, i64 noundef %i.d) #18 ; 2 uses
  %i.f = icmp eq i64 %i.e, %i.d
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8
  %i.h = add i32 %i.c, -1
  %i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %i.g, i32 noundef %i.h) #17 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = add i64 %i.e, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %0, i64 %i.l, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -28, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @param_get_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef 4096, ptr noundef nonnull @.str.16, ptr noundef %i.d) #15
  ret i32 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @kernel_param_lock(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
end_hunk_0
