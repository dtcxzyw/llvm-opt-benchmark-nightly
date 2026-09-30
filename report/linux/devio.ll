Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/devio?download=true
inline.NumInlined: 376
inline.NumDeleted: 104
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@proc_resetdevice:bb.a
  %i.j = load i8, ptr %i.i, align 4               ; 2 uses
  %.not34 = icmp eq i8 %i.j, 0
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr i8, ptr %i.d, i64 152
  %i.l = getelementptr i8, ptr %0, i64 168
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.m = phi i8 [ %i.j, %.lr.ph ], [ %i.ag, %bb.c ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 184
  %.val = load ptr, ptr %i.p, align 8
  %.not29 = icmp eq ptr %.val, null
  br i1 %.not29, label %bb.c, label %arch_test_bit.exit

arch_test_bit.exit:                               ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 2               ; 2 uses
  %i.u = zext i8 %i.t to i64
  %i.v = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.l, i64 range(i64 0, 256) %i.u) #17, !srcloc !28 ; 2 uses
  %i.w = icmp ult i8 %i.v, 2
  tail call void @llvm.assume(i1 %i.w)
  %i.x = trunc nuw i8 %i.v to i1
  br i1 %i.x, label %arch_test_bit.exit._crit_edge39, label %split

arch_test_bit.exit._crit_edge39:                  ; preds = %arch_test_bit.exit
  %.pre40 = load i8, ptr %i.i, align 4
  br label %bb.c

split:                                            ; preds = %arch_test_bit.exit
  %i.y = zext i8 %i.t to i32
  %i.z = getelementptr i8, ptr %i.o, i64 184
  %.pre = load ptr, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 176
  %i.ac = load ptr, ptr %.pre, align 8
  %i.ad = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #20, !srcloc !25
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr i8, ptr %i.ae, i64 2008
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.ab, ptr noundef nonnull @.str.53, i32 noundef %i.y, ptr noundef %i.ac, ptr noundef %i.af) #18
  br label %bb.d

bb.c:                                             ; preds = %arch_test_bit.exit._crit_edge39, %bb.b
  %i.ag = phi i8 [ %.pre40, %arch_test_bit.exit._crit_edge39 ], [ %i.m, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = icmp samesign ult i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %bb.b, label %.loopexit.loopexit, !llvm.loop !93

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre41 = load ptr, ptr %i.a, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.a
  %i.aj = phi ptr [ %.pre41, %.loopexit.loopexit ], [ %i.b, %.preheader ], [ %i.b, %bb.a ]
  %i.ak = tail call i32 @usb_reset_device(ptr noundef %i.aj) #16
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %split
  %.027 = phi i32 [ -13, %split ], [ %i.ak, %.loopexit ]
  ret i32 %.027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @proc_clearhalt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @llvm.read_register.i64(metadata !5)
  %i.b = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %1, i64 4, i64 %i.a) #17, !srcloc !94 ; 3 uses
  %i.c = extractvalue { ptr, i32, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i32, i64 } %i.b, 1   ; 6 uses
  %i.e = extractvalue { ptr, i32, i64 } %i.b, 2
  %i.f = ptrtoint ptr %i.c to i64
  tail call void @llvm.write_register.i64(metadata !5, i64 %i.e)
  %sext.mask = and i64 %i.f, 4294967295
  %.not = icmp eq i64 %sext.mask, 0
  br i1 %.not, label %bb.b, label %findintfep.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = and i32 %i.d, -144
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.c, label %findintfep.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.h, i64 976
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not23.i = icmp eq ptr %i.k, null
  br i1 %.not23.i, label %findintfep.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %i.m = load i8, ptr %i.l, align 4               ; 2 uses
  %.not31.i = icmp eq i8 %i.m, 0
  br i1 %.not31.i, label %findintfep.exit.thread, label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.preheader.i
  %i.n = getelementptr i8, ptr %i.k, i64 152
  %wide.trip.count44.i = zext i8 %i.m to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge28.i, %.lr.ph30.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph30.i ], [ %indvars.iv.next42.i, %._crit_edge28.i ] ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv41.i
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %.not32.i = icmp eq i32 %i.r, 0
  br i1 %.not32.i, label %._crit_edge28.i, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.d
  %i.s = load ptr, ptr %i.p, align 8
  %wide.trip.count39.i = zext i32 %i.r to i64
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph27.i
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph27.i ], [ %indvars.iv.next37.i, %._crit_edge.i ] ; 2 uses
  %i.t = getelementptr [40 x i8], ptr %i.s, i64 %indvars.iv36.i ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = load i8, ptr %i.u, align 4               ; 2 uses
  %.not33.i = icmp eq i8 %i.v, 0
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.t, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %wide.trip.count.i = zext i8 %i.v to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.g, !llvm.loop !1

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.y = getelementptr [88 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.z = getelementptr i8, ptr %i.y, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = icmp eq i32 %i.d, %i.ab
  br i1 %i.ac, label %findintfep.exit, label %bb.f

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count39.i
  br i1 %exitcond40.not.i, label %._crit_edge28.i, label %bb.e, !llvm.loop !2

._crit_edge28.i:                                  ; preds = %._crit_edge.i, %bb.d
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %findintfep.exit.thread, label %bb.d, !llvm.loop !3

findintfep.exit:                                  ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %i.t, i64 2
  %i.ae = load i8, ptr %i.ad, align 2             ; 3 uses
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = getelementptr i8, ptr %i.h, i64 24
  %i.ah = load i32, ptr %i.ag, align 8
  %.not.i29 = icmp eq i32 %i.ah, 7
  br i1 %.not.i29, label %bb.h, label %findintfep.exit.thread

bb.h:                                             ; preds = %findintfep.exit
  %i.ai = icmp ugt i8 %i.ae, 63
  br i1 %i.ai, label %findintfep.exit.thread, label %arch_test_bit.exit.i

arch_test_bit.exit.i:                             ; preds = %bb.h
  %i.aj = zext nneg i8 %i.ae to i64
  %i.ak = getelementptr i8, ptr %0, i64 168
  %i.al = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ak, i64 range(i64 0, 256) %i.aj) #17, !srcloc !28 ; 2 uses
  %i.am = icmp ult i8 %i.al, 2
  tail call void @llvm.assume(i1 %i.am)
  %i.an = trunc nuw i8 %i.al to i1
  %.pre41 = load ptr, ptr %i.g, align 8           ; 2 uses
  br i1 %i.an, label %checkintf.exit.thread, label %checkintf.exit

checkintf.exit:                                   ; preds = %arch_test_bit.exit.i
  %i.ao = getelementptr i8, ptr %.pre41, i64 176
  %i.ap = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #20, !srcloc !25
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 1528
  %.val.i = load i32, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %i.aq, i64 2008
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.ao, ptr noundef nonnull @.str.38, i32 noundef %.val.i, ptr noundef %i.as, i32 noundef %i.af) #18
  %i.at = tail call fastcc i32 @claimintf(ptr noundef %0, i32 noundef %i.af) #19, !srcloc !33 ; 2 uses
  %.not26 = icmp eq i32 %i.at, 0
  br i1 %.not26, label %checkintf.exit.checkintf.exit.thread_crit_edge, label %findintfep.exit.thread

checkintf.exit.checkintf.exit.thread_crit_edge:   ; preds = %checkintf.exit
  %.pre = load ptr, ptr %i.g, align 8
  br label %checkintf.exit.thread

checkintf.exit.thread:                            ; preds = %checkintf.exit.checkintf.exit.thread_crit_edge, %arch_test_bit.exit.i
  %i.au = phi ptr [ %.pre, %checkintf.exit.checkintf.exit.thread_crit_edge ], [ %.pre41, %arch_test_bit.exit.i ] ; 2 uses
  %.not.i30 = icmp samesign ult i32 %i.d, 128     ; 2 uses
  %.v.i = select i1 %.not.i30, i64 1112, i64 984
  %i.av = getelementptr i8, ptr %i.au, i64 %.v.i
  %i.aw = and i32 %i.d, 15
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr [8 x i8], ptr %i.av, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not9.i = icmp eq ptr %i.az, null
  br i1 %.not9.i, label %check_reset_of_active_ep.exit, label %bb.i

bb.i:                                             ; preds = %checkintf.exit.thread
  %i.ba = getelementptr i8, ptr %i.az, i64 32     ; 2 uses
  %i.bb = load volatile ptr, ptr %i.ba, align 8
  %.not11.i = icmp eq ptr %i.bb, %i.ba
  br i1 %.not11.i, label %check_reset_of_active_ep.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr i8, ptr %i.au, i64 176
  %i.bd = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #20, !srcloc !25
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 1528
  %.val.i31 = load i32, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 2008
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.bc, ptr noundef nonnull @.str.52, i32 noundef %.val.i31, ptr noundef %i.bg, ptr noundef nonnull @.str.54, i32 noundef %i.d) #18
  br label %check_reset_of_active_ep.exit

check_reset_of_active_ep.exit:                    ; preds = %checkintf.exit.thread, %bb.i, %bb.j
  %i.bh = load ptr, ptr %i.g, align 8             ; 2 uses
  %.val = load i32, ptr %i.bh, align 8
  %i.bi = shl i32 %.val, 8
  %i.bj = shl nuw nsw i32 %i.d, 15                ; 2 uses
  %i.bk = and i32 %i.bj, 491520
  %2 = or disjoint i32 %i.bj, -1073741824
  %3 = or disjoint i32 %i.bk, -1073741696
  %4 = select i1 %.not.i30, i32 %2, i32 %3
  %i.bl = or i32 %4, %i.bi
  %i.bm = tail call i32 @usb_clear_halt(ptr noundef %i.bh, i32 noundef %i.bl) #16
  br label %findintfep.exit.thread

findintfep.exit.thread:                           ; preds = %._crit_edge28.i, %bb.h, %findintfep.exit, %.preheader.i, %bb.c, %bb.b, %checkintf.exit, %bb.a, %check_reset_of_active_ep.exit
  %.0 = phi i32 [ %i.bm, %check_reset_of_active_ep.exit ], [ -14, %bb.a ], [ -113, %findintfep.exit ], [ %i.at, %checkintf.exit ], [ -22, %bb.b ], [ -22, %bb.h ], [ -2, %.preheader.i ], [ -3, %bb.c ], [ -2, %._crit_edge28.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -61, 1) i32 @proc_getdriver(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
copy_from_user.exit:
  %2 = alloca %struct.usbdevfs_getdriver, align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %2, i8 0, i64 260, i1 false), !annotation !32
  %i.a = call i64 @_copy_from_user(ptr noundef nonnull %2, ptr noundef %1, i64 noundef 260) #16
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.a, label %bb.c

bb.a:                                             ; preds = %copy_from_user.exit
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i32, ptr %2, align 4
  %i.e = call ptr @usb_ifnum_to_if(ptr noundef %i.c, i32 noundef %i.d) #16 ; 2 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 184
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.g, null
  br i1 %.not11, label %bb.c, label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = call i64 @sized_strscpy(ptr noundef nonnull %i.h, ptr noundef %i.i, i64 noundef 256) #16 ; 0 uses
  %i.k = call i64 @_copy_to_user(ptr noundef %1, ptr noundef nonnull %2, i64 noundef 260) #16
  %.not12 = icmp eq i64 %i.k, 0
  %i.l = select i1 %.not12, i32 0, i32 -14
  br label %bb.c

bb.c:                                             ; preds = %copy_to_user.exit, %bb.b, %bb.a, %copy_from_user.exit
  %.07 = phi i32 [ -14, %copy_from_user.exit ], [ %i.l, %copy_to_user.exit ], [ -61, %bb.b ], [ -61, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.07
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @proc_setintf(ptr noundef %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
copy_from_user.exit:
  %2 = alloca %struct.list_head, align 8          ; 8 uses
  %3 = alloca %struct.usbdevfs_setinterface, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 0, ptr %3, align 8, !annotation !32
  %i.a = call i64 @_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 8) #16
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.a, label %checkintf.exit.thread16

bb.a:                                             ; preds = %copy_from_user.exit
  %i.b = load i32, ptr %3, align 8                ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %.not.i = icmp eq i32 %i.f, 7
  br i1 %.not.i, label %bb.b, label %checkintf.exit.thread16

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %i.b, 63
  br i1 %i.g, label %checkintf.exit.thread16, label %arch_test_bit.exit.i

arch_test_bit.exit.i:                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.b to i64
  %i.i = getelementptr i8, ptr %0, i64 168
  %i.j = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.i, i64 range(i64 0, 256) %i.h) #17, !srcloc !28 ; 2 uses
  %i.k = icmp ult i8 %i.j, 2
  call void @llvm.assume(i1 %i.k)
  %i.l = trunc nuw i8 %i.j to i1
  br i1 %i.l, label %checkintf.exit.thread, label %checkintf.exit

checkintf.exit:                                   ; preds = %arch_test_bit.exit.i
  %.pre.i = load ptr, ptr %i.c, align 8
  %i.m = getelementptr i8, ptr %.pre.i, i64 176
  %i.n = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #20, !srcloc !25
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 1528
  %.val.i = load i32, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.o, i64 2008
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.m, ptr noundef nonnull @.str.38, i32 noundef %.val.i, ptr noundef %i.q, i32 noundef %i.b) #18
  %i.r = call fastcc i32 @claimintf(ptr noundef %0, i32 noundef %i.b) #19, !srcloc !33 ; 2 uses
  %.not7 = icmp eq i32 %i.r, 0
  br i1 %.not7, label %checkintf.exit.thread, label %checkintf.exit.thread16

checkintf.exit.thread:                            ; preds = %arch_test_bit.exit.i, %checkintf.exit
  %i.s = load i32, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store volatile ptr %2, ptr %2, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store volatile ptr %2, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.v = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.u) #16
  %i.w = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not16.i = icmp eq ptr %i.x, %i.w
  br i1 %.not16.i, label %destroy_async_on_interface.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %checkintf.exit.thread, %bb.d
  %.017.i = phi ptr [ %.01418.i, %bb.d ], [ %i.x, %checkintf.exit.thread ] ; 6 uses
  %.01418.i = load ptr, ptr %.017.i, align 8      ; 4 uses
  %i.y = getelementptr i8, ptr %.017.i, i64 44
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.s, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr i8, ptr %.017.i, i64 8    ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr i8, ptr %.01418.i, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  store volatile ptr %.01418.i, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.t, align 8             ; 2 uses
  store ptr %.017.i, ptr %i.t, align 8
  store ptr %2, ptr %.017.i, align 8
  store ptr %i.ae, ptr %i.ab, align 8
  store volatile ptr %.017.i, ptr %i.ae, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.not.i9 = icmp eq ptr %.01418.i, %i.w
  br i1 %.not.i9, label %destroy_async_on_interface.exit, label %.lr.ph.i, !llvm.loop !0

destroy_async_on_interface.exit:                  ; preds = %bb.d, %checkintf.exit.thread
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.u, i64 noundef %i.v) #16
  call fastcc void @destroy_async(ptr noundef %0, ptr noundef nonnull %2) #19, !srcloc !18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.af = load ptr, ptr %i.c, align 8
  %i.ag = load i32, ptr %3, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = call i32 @usb_set_interface(ptr noundef %i.af, i32 noundef %i.ag, i32 noundef %i.ai) #16
  br label %checkintf.exit.thread16

checkintf.exit.thread16:                          ; preds = %bb.b, %bb.a, %checkintf.exit, %copy_from_user.exit, %destroy_async_on_interface.exit
  %.0 = phi i32 [ %i.aj, %destroy_async_on_interface.exit ], [ -14, %copy_from_user.exit ], [ %i.r, %checkintf.exit ], [ -113, %bb.a ], [ -22, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @proc_setconfig(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @llvm.read_register.i64(metadata !5)
  %i.b = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %1, i64 4, i64 %i.a) #17, !srcloc !96 ; 3 uses
  %i.c = extractvalue { ptr, i32, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i32, i64 } %i.b, 1   ; 3 uses
  %i.e = extractvalue { ptr, i32, i64 } %i.b, 2
  %i.f = ptrtoint ptr %i.c to i64
  tail call void @llvm.write_register.i64(metadata !5, i64 %i.e)
  %sext.mask = and i64 %i.f, 4294967295
  %.not = icmp eq i64 %sext.mask, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 976
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %.not31 = icmp eq ptr %i.j, null
  br i1 %.not31, label %.thread34, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %i.l = load i8, ptr %i.k, align 4               ; 2 uses
  %.not37 = icmp eq i8 %i.l, 0
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr i8, ptr %i.j, i64 152
  %wide.trip.count = zext i8 %i.l to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !95

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 184
  %.val = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not35 = icmp eq ptr %.val, null
  br i1 %.not35, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.h, i64 176
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 2
end_hunk_0
