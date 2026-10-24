Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/message?download=true
inline.NumInlined: 137
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@usb_disable_device:bb.a
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %bb.a
  tail call fastcc void @usb_disable_device_endpoints(ptr noundef %0, i32 noundef %1) #13, !srcloc !38
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_disable_usb2_hardware_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_unlocked_disable_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_disable_ltm(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_set_device_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @usb_disable_device_endpoints(ptr noundef %0, i32 noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 296
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 272
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i32 %1, 15
  %.not.i = icmp eq ptr %0, null
  %or.cond = or i1 %i.g, %.not.i
  br i1 %or.cond, label %._crit_edge.split, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.preheader, %usb_disable_endpoint.exit22
  %.036 = phi i32 [ %i.o, %usb_disable_endpoint.exit22 ], [ %1, %.preheader ] ; 3 uses
  %i.h = and i32 %.036, 15
  %i.i = and i32 %.036, 128
  %.not25.i = icmp eq i32 %i.i, 0                 ; 2 uses
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %. = select i1 %.not25.i, i64 1112, i64 984
  %i.k = getelementptr i8, ptr %0, i64 %.
  %.0.i.in = getelementptr [8 x i8], ptr %i.k, i64 %i.j
  %.0.i = load ptr, ptr %.0.i.in, align 8         ; 3 uses
  %.not26.i = icmp eq ptr %.0.i, null
  br i1 %.not26.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.l = getelementptr i8, ptr %.0.i, i64 76
  store i32 0, ptr %i.l, align 4
  tail call void @usb_hcd_flush_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %.0.i) #12
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.split, %bb.b
  %.35 = select i1 %.not25.i, i64 984, i64 1112
  %i.m = getelementptr i8, ptr %0, i64 %.35
  %.0.i20.in = getelementptr [8 x i8], ptr %i.m, i64 %i.j
  %.0.i20 = load ptr, ptr %.0.i20.in, align 8     ; 3 uses
  %.not26.i21 = icmp eq ptr %.0.i20, null
  br i1 %.not26.i21, label %usb_disable_endpoint.exit22, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %.0.i20, i64 76
  store i32 0, ptr %i.n, align 4
  tail call void @usb_hcd_flush_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %.0.i20) #12
  br label %usb_disable_endpoint.exit22

usb_disable_endpoint.exit22:                      ; preds = %bb.c, %bb.d
  %i.o = add nsw i32 %.036, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, 16
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph.split, !llvm.loop !39

._crit_edge.split:                                ; preds = %usb_disable_endpoint.exit22, %.preheader
  %i.p = getelementptr i8, ptr %i.b, i64 512      ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @mutex_lock(ptr noundef %i.q) #12
  %i.r = tail call i32 @usb_hcd_alloc_bandwidth(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #12 ; 0 uses
  %i.s = load ptr, ptr %i.p, align 8
  tail call void @mutex_unlock(ptr noundef %i.s) #12
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.split, %bb.a
  %i.t = icmp slt i32 %1, 16
  br i1 %i.t, label %.lr.ph39, label %._crit_edge40.split

.lr.ph39:                                         ; preds = %bb.e
  %.not.i23 = icmp eq ptr %0, null
  %i.u = getelementptr i8, ptr %0, i64 984        ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 1112       ; 2 uses
  br i1 %.not.i23, label %._crit_edge40.split, label %.lr.ph39.split

.lr.ph39.split:                                   ; preds = %.lr.ph39, %usb_disable_endpoint.exit32
  %.137 = phi i32 [ %i.aj, %usb_disable_endpoint.exit32 ], [ %1, %.lr.ph39 ] ; 3 uses
  %i.w = and i32 %.137, 15                        ; 2 uses
  %i.x = and i32 %.137, 128
  %.not25.i24 = icmp eq i32 %i.x, 0               ; 2 uses
  %i.y = zext nneg i32 %i.w to i64                ; 4 uses
  %.not33 = icmp eq i32 %i.w, 0                   ; 4 uses
  br i1 %.not25.i24, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph39.split
  %i.z = getelementptr [8 x i8], ptr %i.v, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  br i1 %.not33, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.z, align 8
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph39.split
  %i.ab = getelementptr [8 x i8], ptr %i.u, i64 %i.y ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  br i1 %.not33, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.ab, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i25 = phi ptr [ %i.ac, %bb.i ], [ %i.ac, %bb.h ], [ %i.aa, %bb.g ], [ %i.aa, %bb.f ] ; 4 uses
  %.not26.i26 = icmp eq ptr %.0.i25, null
  br i1 %.not26.i26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr i8, ptr %.0.i25, i64 76
  store i32 0, ptr %i.ad, align 4
  tail call void @usb_hcd_flush_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %.0.i25) #12
  tail call void @usb_hcd_disable_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %.0.i25) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  br i1 %.not25.i24, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr [8 x i8], ptr %i.v, i64 %i.y ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  br i1 %.not33, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.ae, align 8
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.ag = getelementptr [8 x i8], ptr %i.u, i64 %i.y ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  br i1 %.not33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.ag, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.0.i30 = phi ptr [ %i.ah, %bb.p ], [ %i.ah, %bb.o ], [ %i.af, %bb.n ], [ %i.af, %bb.m ] ; 4 uses
  %.not26.i31 = icmp eq ptr %.0.i30, null
  br i1 %.not26.i31, label %usb_disable_endpoint.exit32, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = getelementptr i8, ptr %.0.i30, i64 76
  store i32 0, ptr %i.ai, align 4
  tail call void @usb_hcd_flush_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %.0.i30) #12
  tail call void @usb_hcd_disable_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %.0.i30) #12
  br label %usb_disable_endpoint.exit32

usb_disable_endpoint.exit32:                      ; preds = %bb.q, %bb.r
  %i.aj = add nsw i32 %.137, 1                    ; 2 uses
  %exitcond41.not = icmp eq i32 %i.aj, 16
  br i1 %exitcond41.not, label %._crit_edge40.split, label %.lr.ph39.split, !llvm.loop !40

._crit_edge40.split:                              ; preds = %usb_disable_endpoint.exit32, %.lr.ph39, %bb.e
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @usb_enable_endpoint(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 2
  %.val = load i8, ptr %i.a, align 1              ; 2 uses
  %i.b = and i8 %.val, 15                         ; 2 uses
  %i.c = icmp sgt i8 %.val, -1                    ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 3
  %.val20 = load i8, ptr %i.d, align 1
  %i.e = and i8 %.val20, 3
  %i.f = icmp eq i8 %i.e, 0                       ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @usb_hcd_reset_endpoint(ptr noundef %0, ptr noundef %1) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.d, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = zext nneg i8 %i.b to i64
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 1112
  %i.h = zext nneg i8 %i.b to i64                 ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h
  store ptr %1, ptr %i.i, align 8
  %i.j = xor i1 %i.c, true
  %or.cond3 = select i1 %i.j, i1 true, i1 %i.f
  br i1 %or.cond3, label %.thread, label %bb.e

.thread:                                          ; preds = %..thread_crit_edge, %bb.d
  %.pre-phi = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.h, %bb.d ]
  %3 = getelementptr i8, ptr %0, i64 984
  %i.k = getelementptr [8 x i8], ptr %3, i64 %.pre-phi
  store ptr %1, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.l = getelementptr i8, ptr %1, i64 76
  store i32 1, ptr %i.l, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @usb_enable_interface(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.d = load i8, ptr %i.c, align 4
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 1112       ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 984        ; 2 uses
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %usb_enable_endpoint.exit.us
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %usb_enable_endpoint.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = getelementptr [88 x i8], ptr %i.h, i64 %indvars.iv10 ; 6 uses
  %i.j = getelementptr i8, ptr %i.i, i64 2
  %.val.i.us = load i8, ptr %i.j, align 1         ; 2 uses
  %i.k = and i8 %.val.i.us, 15
  %i.l = icmp sgt i8 %.val.i.us, -1               ; 2 uses
  %i.m = getelementptr i8, ptr %i.i, i64 3
  %.val20.i.us = load i8, ptr %i.m, align 1
  %i.n = and i8 %.val20.i.us, 3
  %i.o = icmp eq i8 %i.n, 0                       ; 2 uses
  tail call void @usb_hcd_reset_endpoint(ptr noundef %0, ptr noundef %i.i) #12
  %or.cond.i.us = select i1 %i.l, i1 true, i1 %i.o
  %i.p = zext nneg i8 %i.k to i64                 ; 2 uses
  br i1 %or.cond.i.us, label %bb.b, label %.thread.i.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.q = getelementptr [8 x i8], ptr %i.f, i64 %i.p
  store ptr %i.i, ptr %i.q, align 8
  %i.r = xor i1 %i.l, true
  %or.cond3.i.us = select i1 %i.r, i1 true, i1 %i.o
  br i1 %or.cond3.i.us, label %.thread.i.us, label %usb_enable_endpoint.exit.us

.thread.i.us:                                     ; preds = %.lr.ph.split.us, %bb.b
  %i.s = getelementptr [8 x i8], ptr %i.g, i64 %i.p
  store ptr %i.i, ptr %i.s, align 8
  br label %usb_enable_endpoint.exit.us

usb_enable_endpoint.exit.us:                      ; preds = %.thread.i.us, %bb.b
  %i.t = getelementptr i8, ptr %i.i, i64 76
  store i32 1, ptr %i.t, align 4
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 2 uses
  %i.u = load i8, ptr %i.c, align 4
  %i.v = zext i8 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv.next11, %i.v
  br i1 %i.w, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !3

.lr.ph.split:                                     ; preds = %.lr.ph, %usb_enable_endpoint.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %usb_enable_endpoint.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.x = load ptr, ptr %i.e, align 8
  %i.y = getelementptr [88 x i8], ptr %i.x, i64 %indvars.iv ; 5 uses
  %i.z = getelementptr i8, ptr %i.y, i64 2
  %.val.i = load i8, ptr %i.z, align 1            ; 2 uses
  %i.aa = and i8 %.val.i, 15
  %i.ab = icmp sgt i8 %.val.i, -1                 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.y, i64 3
  %.val20.i = load i8, ptr %i.ac, align 1
  %i.ad = and i8 %.val20.i, 3
  %i.ae = icmp eq i8 %i.ad, 0                     ; 2 uses
  %or.cond.i = select i1 %i.ab, i1 true, i1 %i.ae
  %i.af = zext nneg i8 %i.aa to i64               ; 2 uses
  br i1 %or.cond.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %.lr.ph.split
  %i.ag = getelementptr [8 x i8], ptr %i.f, i64 %i.af
  store ptr %i.y, ptr %i.ag, align 8
  %i.ah = xor i1 %i.ab, true
  %or.cond3.i = select i1 %i.ah, i1 true, i1 %i.ae
  br i1 %or.cond3.i, label %.thread.i, label %usb_enable_endpoint.exit

.thread.i:                                        ; preds = %.lr.ph.split, %bb.c
  %i.ai = getelementptr [8 x i8], ptr %i.g, i64 %i.af
  store ptr %i.y, ptr %i.ai, align 8
  br label %usb_enable_endpoint.exit

usb_enable_endpoint.exit:                         ; preds = %bb.c, %.thread.i
  %i.aj = getelementptr i8, ptr %i.y, i64 76
  store i32 1, ptr %i.aj, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i8, ptr %i.c, align 4
  %i.al = zext i8 %i.ak to i64
  %i.am = icmp samesign ult i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %.lr.ph.split, label %._crit_edge, !llvm.loop !3

._crit_edge:                                      ; preds = %usb_enable_endpoint.exit, %usb_enable_endpoint.exit.us, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @usb_set_interface(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 8
  br i1 %i.e, label %create_intf_ep_devs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @usb_ifnum_to_if(ptr noundef %0, i32 noundef %1) #12 ; 11 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %create_intf_ep_devs.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.f, i64 40       ; 7 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 4
  %.not76 = icmp eq i8 %i.i, 0
  br i1 %.not76, label %bb.d, label %create_intf_ep_devs.exit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @usb_altnum_to_altsetting(ptr noundef nonnull %i.f, i32 noundef %2) #12 ; 7 uses
  %.not77 = icmp eq ptr %i.j, null
  br i1 %.not77, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 176
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.k, ptr noundef @.str.1, i32 noundef %2) #16
  br label %create_intf_ep_devs.exit

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.f, i64 8        ; 9 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4        ; 2 uses
  %i.o = load i8, ptr %i.n, align 4               ; 2 uses
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %usb_disable_interface.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.not.i.i = icmp eq ptr %0, null
  %i.p = getelementptr i8, ptr %i.m, i64 24
  br i1 %.not.i.i, label %usb_disable_interface.exit, label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i, %usb_disable_endpoint.exit.i
  %i.q = phi i8 [ %i.z, %usb_disable_endpoint.exit.i ], [ %i.o, %.lr.ph.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %usb_disable_endpoint.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8
  %i.s = getelementptr [88 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.t = getelementptr i8, ptr %i.s, i64 2
  %i.u = load i8, ptr %i.t, align 2               ; 2 uses
  %i.v = and i8 %i.u, 15
  %.not25.i.i = icmp sgt i8 %i.u, -1
  %i.w = zext nneg i8 %i.v to i64
  %spec.select.i = select i1 %.not25.i.i, i64 1112, i64 984
  %i.x = getelementptr i8, ptr %0, i64 %spec.select.i
  %.0.i.in.i = getelementptr [8 x i8], ptr %i.x, i64 %i.w
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8     ; 3 uses
  %.not26.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not26.i.i, label %usb_disable_endpoint.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split.i
  %i.y = getelementptr i8, ptr %.0.i.i, i64 76
  store i32 0, ptr %i.y, align 4
  tail call void @usb_hcd_flush_endpoint(ptr noundef nonnull %0, ptr noundef nonnull %.0.i.i) #12
  %.pre.i = load i8, ptr %i.n, align 4
  br label %usb_disable_endpoint.exit.i

usb_disable_endpoint.exit.i:                      ; preds = %bb.g, %.lr.ph.split.split.i
  %i.z = phi i8 [ %.pre.i, %bb.g ], [ %i.q, %.lr.ph.split.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aa = zext i8 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next.i, %i.aa
  br i1 %i.ab, label %.lr.ph.split.split.i, label %usb_disable_interface.exit, !llvm.loop !1

usb_disable_interface.exit:                       ; preds = %usb_disable_endpoint.exit.i, %bb.f, %.lr.ph.i
  %i.ac = getelementptr i8, ptr %i.b, i64 512     ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @mutex_lock(ptr noundef %i.ad) #12
  %i.ae = tail call i32 @usb_disable_lpm(ptr noundef %0) #12
  %.not78 = icmp eq i32 %i.ae, 0
  br i1 %.not78, label %.preheader114, label %bb.h

.preheader114:                                    ; preds = %usb_disable_interface.exit
  %i.af = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %i.ah = load i8, ptr %i.ag, align 4
  %.not118 = icmp eq i8 %i.ah, 0
  br i1 %.not118, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %usb_disable_interface.exit
  %i.ai = getelementptr i8, ptr %i.f, i64 80
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ai, ptr noundef @.str.2, ptr noundef @__func__.usb_set_interface) #16
  %i.aj = load ptr, ptr %i.ac, align 8
  tail call void @mutex_unlock(ptr noundef %i.aj) #12
end_hunk_0
