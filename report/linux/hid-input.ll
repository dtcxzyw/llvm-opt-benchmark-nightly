Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hid-input?download=true
inline.NumInlined: 131
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@hidinput_change_resolution_multipliers:bb.a
  %i.br = getelementptr i8, ptr %i.bq, i64 56
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i45, label %hid_hw_wait.exit.i41, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = tail call i32 %i.bs(ptr noundef %0) #12, !inline_history !60 ; 0 uses
  br label %hid_hw_wait.exit.i41

hid_hw_wait.exit.i41:                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.2.i42 = phi i1 [ true, %bb.k ], [ false, %bb.l ], [ true, %bb.n ], [ true, %bb.o ]
  %i.bu = load ptr, ptr %i.ay, align 8
  %i.bv = getelementptr i8, ptr %i.bu, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %i.bj
  store i32 %i.bb, ptr %i.bx, align 4
  %.pre.i43 = load ptr, ptr %i.ay, align 8
  br label %bb.p

bb.p:                                             ; preds = %hid_hw_wait.exit.i41, %.lr.ph.i32
  %i.by = phi ptr [ %i.bg, %.lr.ph.i32 ], [ %.pre.i43, %hid_hw_wait.exit.i41 ] ; 2 uses
  %.3.i38 = phi i1 [ %.156.i34, %.lr.ph.i32 ], [ %.2.i42, %hid_hw_wait.exit.i41 ] ; 2 uses
  %i.bz = add nuw i32 %.03257.i33, 1              ; 2 uses
  %i.ca = getelementptr i8, ptr %i.by, i64 24
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = icmp ult i32 %i.bz, %i.cb
  br i1 %i.cc, label %.lr.ph.i32, label %.loopexit.loopexit.i39, !llvm.loop !61

.loopexit.loopexit.i39:                           ; preds = %bb.p
  %.pre67.i40 = load i32, ptr %i.d, align 8
  br label %.loopexit.i25

.loopexit.i25:                                    ; preds = %.loopexit.loopexit.i39, %.preheader.i30, %.lr.ph62.i20
  %i.cd = phi i32 [ %i.aw, %.lr.ph62.i20 ], [ %i.aw, %.preheader.i30 ], [ %.pre67.i40, %.loopexit.loopexit.i39 ] ; 2 uses
  %.4.ph.i27 = phi i1 [ %.03460.i22, %.lr.ph62.i20 ], [ %.03460.i22, %.preheader.i30 ], [ %.3.i38, %.loopexit.loopexit.i39 ]
  %i.ce = add nuw i32 %.03361.i21, 1              ; 2 uses
  %i.cf = icmp ult i32 %i.ce, %i.cd
  br i1 %i.cf, label %.lr.ph62.i20, label %__hidinput_change_resolution_multipliers.exit46, !llvm.loop !62

__hidinput_change_resolution_multipliers.exit.thread: ; preds = %bb.b, %._crit_edge.i, %bb.j, %__hidinput_change_resolution_multipliers.exit
  %.0 = load ptr, ptr %.053, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !63

._crit_edge:                                      ; preds = %__hidinput_change_resolution_multipliers.exit.thread, %bb.a
  tail call void @hid_setup_resolution_multiplier(ptr noundef %0) #12
  br label %__hidinput_change_resolution_multipliers.exit46

__hidinput_change_resolution_multipliers.exit46:  ; preds = %.loopexit.i25, %bb.m, %.critedge, %._crit_edge
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @hidinput_disconnect(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 7184       ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.b, %i.a
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.022 = phi ptr [ %.01923, %bb.d ], [ %i.b, %bb.a ] ; 7 uses
  %.01923 = load ptr, ptr %.022, align 8          ; 4 uses
  %i.c = getelementptr i8, ptr %.022, i64 8       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %.01923, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store volatile ptr %.01923, ptr %i.d, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.022, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.c, align 8
  %i.f = getelementptr i8, ptr %.022, i64 60
  %i.g = load i8, ptr %i.f, align 4, !range !18, !noundef !19
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr i8, ptr %.022, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @input_unregister_device(ptr noundef %i.j) #12
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  tail call void @input_free_device(ptr noundef %i.j) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr i8, ptr %.022, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @kfree(ptr noundef %i.l) #12
  tail call void @kfree(ptr noundef %.022) #12
  %.not = icmp eq ptr %.01923, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.m = getelementptr i8, ptr %0, i64 6296
  %i.n = tail call zeroext i1 @cancel_work_sync(ptr noundef %i.m) #12 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @hidinput_reset_resume(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  tail call fastcc void @hidinput_change_resolution_multipliers(ptr noundef %0) #13, !srcloc !64
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @hid_alloc_report_buf(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @hid_output_report(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hidinput_input_event(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 656
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  switch i32 %1, label %bb.i [
    i32 21, label %bb.b
    i32 17, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @input_ff_event(ptr noundef %0, i32 noundef 21, i32 noundef %2, i32 noundef %3) #12
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.val, i64 2160    ; 3 uses
  %.02433.i = load ptr, ptr %i.c, align 8         ; 2 uses
  %.not34.i = icmp eq ptr %.02433.i, %i.c
  br i1 %.not34.i, label %hidinput_find_field.exit.thread, label %.preheader.i

.loopexit27.i:                                    ; preds = %._crit_edge.i, %.preheader.i
  %.024.i = load ptr, ptr %.02435.i, align 8      ; 2 uses
  %.not.i = icmp eq ptr %.024.i, %i.c
  br i1 %.not.i, label %hidinput_find_field.exit.thread, label %.preheader.i, !llvm.loop !65

.preheader.i:                                     ; preds = %bb.c, %.loopexit27.i
  %.02435.i = phi ptr [ %.024.i, %.loopexit27.i ], [ %.02433.i, %bb.c ] ; 3 uses
  %i.d = getelementptr i8, ptr %.02435.i, i64 2120
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not36.i = icmp eq i32 %i.e, 0
  br i1 %.not36.i, label %.loopexit27.i, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.preheader.i
  %i.f = getelementptr i8, ptr %.02435.i, i64 64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph32.i
  %.02531.i = phi i32 [ 0, %.lr.ph32.i ], [ %i.x, %._crit_edge.i ] ; 2 uses
  %i.g = sext i32 %.02531.i to i64
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %.not37.i = icmp eq i32 %i.k, 0
  br i1 %.not37.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %.02630.i = phi i32 [ 0, %.lr.ph.i ], [ %i.w, %bb.g ] ; 3 uses
  %i.n = sext i32 %.02630.i to i64
  %i.o = getelementptr [28 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = load i8, ptr %i.p, align 4
  %i.r = icmp eq i8 %i.q, 17
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.o, i64 14
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i32
  %i.v = icmp eq i32 %2, %i.u
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = add nuw i32 %.02630.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.w, %i.k
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !66

._crit_edge.i:                                    ; preds = %bb.g, %bb.d
  %i.x = add nuw i32 %.02531.i, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %i.e
  br i1 %exitcond.not, label %.loopexit27.i, label %bb.d, !llvm.loop !67

hidinput_find_field.exit.thread:                  ; preds = %.loopexit27.i, %bb.c
  %i.y = getelementptr i8, ptr %0, i64 536
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.y, ptr noundef nonnull @.str.15) #16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = tail call i32 @hid_set_field(ptr noundef %i.i, i32 noundef %.02630.i, i32 noundef %3) #12 ; 0 uses
  %i.aa = getelementptr i8, ptr %.val, i64 6296
  %i.ab = load ptr, ptr @system_percpu_wq, align 8
  %i.ac = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.ab, ptr noundef %i.aa) #12 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %hidinput_find_field.exit.thread, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.h ], [ -1, %hidinput_find_field.exit.thread ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hidinput_open(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 656
  %.val = load ptr, ptr %i.a, align 8
  %i.b = tail call i32 @hid_hw_open(ptr noundef %.val) #12
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hidinput_close(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 656
  %.val = load ptr, ptr %i.a, align 8
  tail call void @hid_hw_close(ptr noundef %.val) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @hidinput_setkeycode(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 656
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.b = tail call fastcc ptr @hidinput_locate_usage(ptr noundef %.val, ptr noundef %1, ptr noundef null) #13, !srcloc !68 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %arch_set_bit.exit20, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.c, label %arch_clear_bit.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 14
  %i.g = load i16, ptr %i.f, align 2
  %i.h = zext i16 %i.g to i32
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %bb.b, %bb.c
  %i.i = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ]
  store i32 %i.i, ptr %2, align 4
  store i8 1, ptr %i.c, align 4
  %i.j = getelementptr i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = trunc i32 %i.k to i16
  %i.m = getelementptr i8, ptr %i.b, i64 14       ; 2 uses
  store i16 %i.l, ptr %i.m, align 2
  %i.n = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.o = load i32, ptr %2, align 4
  %i.p = zext i32 %i.o to i64
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.n, i64 range(i64 0, 4294967296) %i.p) #14, !srcloc !21
  %i.q = load i16, ptr %i.m, align 2
  %i.r = zext i16 %i.q to i64
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.n, i64 range(i64 0, 4294967296) %i.r) #14, !srcloc !22
  %i.s = load i32, ptr %2, align 4                ; 3 uses
  %i.t = getelementptr i8, ptr %.val, i64 88      ; 3 uses
  %.03651.i = load ptr, ptr %i.t, align 8         ; 2 uses
  %.not52.i = icmp eq ptr %.03651.i, %i.t
  br i1 %.not52.i, label %._crit_edge55.i, label %.preheader41.i

.loopexit.i:                                      ; preds = %._crit_edge.i, %.preheader41.i
  %.036.i = load ptr, ptr %.03654.i, align 8      ; 2 uses
  %.not.i = icmp eq ptr %.036.i, %i.t
  br i1 %.not.i, label %._crit_edge55.i, label %.preheader41.i, !llvm.loop !4

.preheader41.i:                                   ; preds = %arch_clear_bit.exit, %.loopexit.i
  %.03654.i = phi ptr [ %.036.i, %.loopexit.i ], [ %.03651.i, %arch_clear_bit.exit ] ; 3 uses
  %i.u = getelementptr i8, ptr %.03654.i, i64 2120
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %.not59.i = icmp eq i32 %i.v, 0
  br i1 %.not59.i, label %.loopexit.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader41.i
  %i.w = getelementptr i8, ptr %.03654.i, i64 64
  %i.x = zext i32 %i.v to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %indvars.iv64.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next65.i, %._crit_edge.i ] ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %i.w, i64 %indvars.iv64.i
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %.not60.i = icmp eq i32 %i.ab, 0
  br i1 %.not60.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.ac = getelementptr i8, ptr %i.z, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = zext i32 %i.ab to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %match_keycode.exit21.thread
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %match_keycode.exit21.thread ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.af = getelementptr [28 x i8], ptr %i.ad, i64 %indvars.iv.i ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = icmp eq i8 %i.ah, 1
  br i1 %i.ai, label %match_keycode.exit21, label %match_keycode.exit21.thread

match_keycode.exit21:                             ; preds = %.lr.ph.i
  %i.aj = getelementptr i8, ptr %i.af, i64 14
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = zext i16 %i.ak to i32
  %i.am = icmp eq i32 %i.s, %i.al
  br i1 %i.am, label %hidinput_find_key.exit, label %match_keycode.exit21.thread

match_keycode.exit21.thread:                      ; preds = %match_keycode.exit21, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next.i, %i.ae
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %match_keycode.exit21.thread, %.preheader.i
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next65.i, %i.x
  br i1 %exitcond.not, label %.loopexit.i, label %.preheader.i, !llvm.loop !6

._crit_edge55.i:                                  ; preds = %.loopexit.i, %arch_clear_bit.exit
  %i.ao = getelementptr i8, ptr %.val, i64 2160   ; 3 uses
  %.03651.1.i = load ptr, ptr %i.ao, align 8      ; 2 uses
  %.not52.1.i = icmp eq ptr %.03651.1.i, %i.ao
  br i1 %.not52.1.i, label %arch_set_bit.exit20, label %.preheader41.1.i

.preheader41.1.i:                                 ; preds = %._crit_edge55.i, %.loopexit.1.i
  %.03654.1.i = phi ptr [ %.036.1.i, %.loopexit.1.i ], [ %.03651.1.i, %._crit_edge55.i ] ; 3 uses
  %i.ap = getelementptr i8, ptr %.03654.1.i, i64 2120
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  %.not59.1.i = icmp eq i32 %i.aq, 0
  br i1 %.not59.1.i, label %.loopexit.1.i, label %.preheader.lr.ph.1.i

.preheader.lr.ph.1.i:                             ; preds = %.preheader41.1.i
  %i.ar = getelementptr i8, ptr %.03654.1.i, i64 64
  %i.as = zext i32 %i.aq to i64
  br label %.preheader.1.i

.preheader.1.i:                                   ; preds = %._crit_edge.1.i, %.preheader.lr.ph.1.i
  %indvars.iv64.1.i = phi i64 [ 0, %.preheader.lr.ph.1.i ], [ %indvars.iv.next65.1.i, %._crit_edge.1.i ] ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.ar, i64 %indvars.iv64.1.i
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 24
  %i.aw = load i32, ptr %i.av, align 8            ; 2 uses
  %.not60.1.i = icmp eq i32 %i.aw, 0
  br i1 %.not60.1.i, label %._crit_edge.1.i, label %.lr.ph.1.i.preheader

.lr.ph.1.i.preheader:                             ; preds = %.preheader.1.i
  %i.ax = getelementptr i8, ptr %i.au, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = zext i32 %i.aw to i64
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %.lr.ph.1.i.preheader, %match_keycode.exit.thread
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %match_keycode.exit.thread ], [ 0, %.lr.ph.1.i.preheader ] ; 2 uses
  %i.ba = getelementptr [28 x i8], ptr %i.ay, i64 %indvars.iv.1.i ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  %i.bc = load i8, ptr %i.bb, align 4
  %i.bd = icmp eq i8 %i.bc, 1
  br i1 %i.bd, label %match_keycode.exit, label %match_keycode.exit.thread

match_keycode.exit:                               ; preds = %.lr.ph.1.i
  %i.be = getelementptr i8, ptr %i.ba, i64 14
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = zext i16 %i.bf to i32
  %i.bh = icmp eq i32 %i.s, %i.bg
  br i1 %i.bh, label %hidinput_find_key.exit, label %match_keycode.exit.thread

match_keycode.exit.thread:                        ; preds = %match_keycode.exit, %.lr.ph.1.i
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %i.bi = icmp samesign ult i64 %indvars.iv.next.1.i, %i.az
  br i1 %i.bi, label %.lr.ph.1.i, label %._crit_edge.1.i, !llvm.loop !5

._crit_edge.1.i:                                  ; preds = %match_keycode.exit.thread, %.preheader.1.i
  %indvars.iv.next65.1.i = add nuw nsw i64 %indvars.iv64.1.i, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next65.1.i, %i.as
  br i1 %exitcond32.not, label %.loopexit.1.i, label %.preheader.1.i, !llvm.loop !6

.loopexit.1.i:                                    ; preds = %._crit_edge.1.i, %.preheader41.1.i
  %.036.1.i = load ptr, ptr %.03654.1.i, align 8  ; 2 uses
  %.not.1.i = icmp eq ptr %.036.1.i, %i.ao
  br i1 %.not.1.i, label %arch_set_bit.exit20, label %.preheader41.1.i, !llvm.loop !4

hidinput_find_key.exit:                           ; preds = %match_keycode.exit21, %match_keycode.exit
  %.0.i = phi ptr [ %i.ba, %match_keycode.exit ], [ %i.af, %match_keycode.exit21 ]
  %.not19 = icmp eq ptr %.0.i, null
  br i1 %.not19, label %arch_set_bit.exit20, label %bb.d

bb.d:                                             ; preds = %hidinput_find_key.exit
  %i.bj = zext nneg i32 %i.s to i64
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.n, i64 range(i64 0, 4294967296) %i.bj) #14, !srcloc !22
end_hunk_0
