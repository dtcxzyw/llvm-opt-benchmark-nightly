inline.NumInlined: 332
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rb_postponed_job_flush:bb.a
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !197
  %i.ab = or i32 %i.aa, 12
  store i32 %i.ab, ptr %i.l, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.0..0..0..0..0..0..i, ptr %i.f, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.ac, align 8, !tbaa !86
  store i64 36, ptr %2, align 8, !tbaa !88
  %i.ad = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !89
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !90
  %i.ag = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.0.10.val = load ptr, ptr %i.ag, align 8, !tbaa !38, !nonnull !71, !noundef !71 ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.10.val, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !49 ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.10.val, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !68
  %i.al = getelementptr i8, ptr %i.ai, i64 88
  %.val5.i = load ptr, ptr %i.al, align 8, !tbaa !91
  %i.am = icmp eq ptr %.val5.i, %i.ak
  br i1 %i.am, label %bb.b, label %rb_ec_vm_lock_rec.exit

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr i8, ptr %i.ai, i64 96
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !108
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.ao, %bb.b ], [ 0, %bb.a ]
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !109
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ar = call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ar, ptr %i.aq, align 8
  %i.as = call ptr @llvm.stacksave.p0()
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.as, ptr %i.at, align 8
  %i.au = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.aq)
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.c, label %.thread, !prof !81

.thread:                                          ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.11 = load volatile ptr, ptr %i.f, align 8, !tbaa !32
  %i.av = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.11) ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !199
  %i.aw = icmp eq ptr %.pre, %1
  br label %ccan_list_pop_.exit.thread

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %2, ptr %i.ad, align 8, !tbaa !89
  %.not3949 = icmp eq i32 %i.z, 0
  br i1 %.not3949, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.c
  %i.ax = load ptr, ptr %1, align 8, !tbaa !199   ; 2 uses
  %.not.i51 = icmp eq ptr %i.ax, %1
  br i1 %.not.i51, label %ccan_list_pop_.exit.thread, label %ccan_list_pop_.exit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.050 = phi i32 [ %i.bc, %.lr.ph ], [ %i.z, %bb.c ] ; 3 uses
  %i.ay = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.050, i1 true) ; 2 uses
  %i.az = xor i32 %i.ay, 31
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = lshr exact i32 -2147483648, %i.ay       ; 2 uses
  %i.bc = xor i32 %i.bb, %.050
  %i.bd = getelementptr [16 x i8], ptr %i.i, i64 %i.ba ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !200
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !202
  call void %i.be(ptr noundef %i.bg) #6
  %.not39 = icmp eq i32 %i.bb, %.050
  br i1 %.not39, label %.preheader, label %.lr.ph, !llvm.loop !203

ccan_list_pop_.exit:                              ; preds = %.preheader, %ccan_list_pop_.exit
  %i.bh = phi ptr [ %i.bq, %ccan_list_pop_.exit ], [ %i.ax, %.preheader ] ; 5 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !193 ; 2 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !188 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !193
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !188
  %i.bm = getelementptr i8, ptr %i.bh, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !190
  %i.bo = getelementptr i8, ptr %i.bh, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !192
  call void @free(ptr noundef nonnull %i.bh) #6
  call void %i.bn(ptr noundef %i.bp) #6
  %i.bq = load ptr, ptr %1, align 8, !tbaa !199   ; 2 uses
  %.not.i = icmp eq ptr %i.bq, %1
  br i1 %.not.i, label %ccan_list_pop_.exit.thread, label %ccan_list_pop_.exit, !llvm.loop !204

ccan_list_pop_.exit.thread:                       ; preds = %ccan_list_pop_.exit, %.preheader, %.thread
  %.not48 = phi i1 [ %i.aw, %.thread ], [ true, %.preheader ], [ true, %ccan_list_pop_.exit ]
  %.1 = phi i32 [ %i.z, %.thread ], [ 0, %.preheader ], [ 0, %ccan_list_pop_.exit ] ; 2 uses
  %i.br = load ptr, ptr %i.af, align 8, !tbaa !90
  store ptr %i.br, ptr %i.ad, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.0..0..0..0.20 = load volatile i32, ptr %i.d, align 4, !tbaa !7
  %i.bs = xor i32 %.0..0..0..0.20, -13
  %i.bt = load i32, ptr %i.l, align 4, !tbaa !197
  %i.bu = and i32 %i.bt, %i.bs
  store i32 %i.bu, ptr %i.l, align 4, !tbaa !197
  %.0..0..0..0.19 = load volatile i64, ptr %i.e, align 8, !tbaa !34
  store i64 %.0..0..0..0.19, ptr %i.o, align 8, !tbaa !83
  br i1 %.not48, label %bb.e, label %bb.d

bb.d:                                             ; preds = %ccan_list_pop_.exit.thread
  call void @rb_nativethread_lock_lock(ptr noundef %i.r) #6
  %i.bv = load ptr, ptr %i.q, align 8, !tbaa !198 ; 2 uses
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !199 ; 2 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !199
  store ptr %i.s, ptr %i.q, align 8, !tbaa !198
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !193
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !188
  %i.by = load ptr, ptr %i.q, align 8, !tbaa !193 ; 2 uses
  %i.bz = load ptr, ptr %1, align 8, !tbaa !188   ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !193
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !188
  store ptr %1, ptr %i.q, align 8, !tbaa !198
  store ptr %1, ptr %1, align 8, !tbaa !199
  call void @rb_nativethread_lock_unlock(ptr noundef %i.r) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !32
  store volatile ptr %i.cb, ptr %i.b, align 8, !tbaa !32
  %.0..0..0..0..0..0..i44 = load volatile ptr, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cc = getelementptr i8, ptr %.0..0..0..0..0..0..i44, i64 32
  %i.cd = atomicrmw volatile or ptr %i.cc, i32 4 seq_cst, align 4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %ccan_list_pop_.exit.thread
  %.not42 = icmp eq i32 %.1, 0
  br i1 %.not42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ce = atomicrmw volatile or ptr %i.y, i32 %.1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !32
  store volatile ptr %i.cf, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..i45 = load volatile ptr, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cg = getelementptr i8, ptr %.0..0..0..0..0..0..i45, i64 32
  %i.ch = atomicrmw volatile or ptr %i.cg, i32 4 seq_cst, align 4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #17

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @update_global_event_hooks(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !32
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %.not = icmp ne ptr %.0..0..0..0..0..0..i, null ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !150
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.c, label %rb_vm_lock_enter.exit

bb.c:                                             ; preds = %bb.b
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #6
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %bb.c
  call void @rb_vm_barrier() #6
  br label %bb.d

bb.d:                                             ; preds = %rb_vm_lock_enter.exit, %bb.a
  %i.f = load i32, ptr @ruby_vm_event_enabled_global_flags, align 4, !tbaa !7 ; 2 uses
  %i.g = and i32 %1, 213887
  %i.h = xor i32 %i.f, -1
  %i.i = and i32 %i.g, %i.h
  %i.j = icmp ne i32 %i.i, 0                      ; 2 uses
  %4 = insertelement <4 x i32> poison, i32 %0, i64 0
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> zeroinitializer
  %6 = and <4 x i32> %5, <i32 8, i32 16, i32 32, i32 64>
  %7 = insertelement <4 x i32> poison, i32 %1, i64 0
  %8 = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> zeroinitializer
  %9 = and <4 x i32> %8, <i32 8, i32 16, i32 32, i32 64>
  %10 = icmp eq <4 x i32> %6, zeroinitializer
  %11 = icmp ne <4 x i32> %9, zeroinitializer
  %12 = and <4 x i1> %10, %11                     ; 3 uses
  %shift = shufflevector <4 x i1> %12, <4 x i1> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop = or <4 x i1> %12, %shift
  %13 = extractelement <4 x i1> %foldExtExtBinop, i64 2 ; 2 uses
  %i.k = load i32, ptr @ruby_vm_event_flags, align 4, !tbaa !7
  %i.l = xor i32 %0, -1
  %i.m = and i32 %i.k, %i.l
  %i.n = or i32 %i.m, %1                          ; 3 uses
  store i32 %i.n, ptr @ruby_vm_event_flags, align 4, !tbaa !7
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = or i32 %i.f, %1
  %i.p = and i32 %i.o, 213887
  call void @rb_iseq_trace_set_all(i32 noundef %i.p) #6
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  br i1 %13, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @rb_clear_attr_ccs() #6
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %.bc = bitcast <4 x i1> %12 to <2 x i2>
  %.extract = extractelement <2 x i2> %.bc, i64 0
  %or.cond.not = icmp eq i2 %.extract, 0
  br i1 %or.cond.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @rb_clear_bf_ccs() #6
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.e
  %i.q = load i32, ptr @ruby_vm_iseq_events_enabled, align 4, !tbaa !7
  %i.r = add i32 %i.q, %2
  store i32 %i.r, ptr @ruby_vm_iseq_events_enabled, align 4, !tbaa !7
  %i.s = load i32, ptr @ruby_vm_c_events_enabled, align 4, !tbaa !7
  %i.t = add i32 %i.s, %3
  store i32 %i.t, ptr @ruby_vm_c_events_enabled, align 4, !tbaa !7
  %i.u = load i32, ptr @ruby_vm_event_enabled_global_flags, align 4, !tbaa !7
  %i.v = or i32 %i.u, %1
  store i32 %i.v, ptr @ruby_vm_event_enabled_global_flags, align 4, !tbaa !7
  %.not30 = icmp ult i32 %i.n, 65536
  br i1 %.not30, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @rb_objspace_set_event_hook(i32 noundef %i.n) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %or.cond3 = or i1 %13, %i.j
  br i1 %or.cond3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @rb_yjit_tracing_invalidate_all() #6
  call void @rb_zjit_tracing_invalidate_all() #6
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.w = load ptr, ptr @ruby_single_main_ractor, align 8
  %.not.i.i31 = icmp eq ptr %i.w, null
  %or.cond1 = select i1 %.not, i1 %.not.i.i31, i1 false
  br i1 %or.cond1, label %bb.o, label %rb_vm_lock_leave.exit

bb.o:                                             ; preds = %bb.n
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #6
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret void
}

declare void @rb_iseq_trace_set_all(i32 noundef) local_unnamed_addr #2

declare void @rb_clear_attr_ccs() local_unnamed_addr #2

declare void @rb_clear_bf_ccs() local_unnamed_addr #2

declare void @rb_objspace_set_event_hook(i32 noundef) local_unnamed_addr #2

declare void @rb_yjit_tracing_invalidate_all() local_unnamed_addr #2

declare void @rb_zjit_tracing_invalidate_all() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @remove_event_hook_from_list(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(address) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.019 = load ptr, ptr %0, align 8, !tbaa !11    ; 9 uses
  %.not20 = icmp eq ptr %.019, null
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %1, inttoptr (i64 1 to ptr)  ; 4 uses
  %i.c = icmp eq i64 %3, 36                       ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 20         ; 8 uses
  br i1 %i.a, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.c, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %i.b, label %.lr.ph.split.us.split.us.split.us, label %.lr.ph.split.us.split.us.split

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us
  store i8 1, ptr %i.d, align 4, !tbaa !22
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.split.us.split.us.split.us
  %.022.us.us.us = phi ptr [ %.019, %.lr.ph.split.us.split.us.split.us ], [ %.0.us.us.us, %bb.b ] ; 3 uses
  %.01721.us.us.us = phi i32 [ 0, %.lr.ph.split.us.split.us.split.us ], [ %i.g, %bb.b ]
  %i.e = load i32, ptr %.022.us.us.us, align 8, !tbaa !27
  %i.f = or i32 %i.e, 2
  store i32 %i.f, ptr %.022.us.us.us, align 8, !tbaa !27
  %i.g = add i32 %.01721.us.us.us, 1              ; 2 uses
  %i.h = getelementptr i8, ptr %.022.us.us.us, i64 24
  %.0.us.us.us = load ptr, ptr %i.h, align 8, !tbaa !11 ; 2 uses
  %.not.us.us.us = icmp eq ptr %.0.us.us.us, null
  br i1 %.not.us.us.us, label %._crit_edge, label %bb.b, !llvm.loop !72

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us, %bb.d
  %.022.us.us = phi ptr [ %.0.us.us, %bb.d ], [ %.019, %.lr.ph.split.us.split.us ] ; 4 uses
  %.01721.us.us = phi i32 [ %.1.us.us, %bb.d ], [ 0, %.lr.ph.split.us.split.us ] ; 2 uses
  %i.i = getelementptr i8, ptr %.022.us.us, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.k = icmp eq ptr %i.j, %1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us.split.us.split
  %i.l = load i32, ptr %.022.us.us, align 8, !tbaa !27
  %i.m = or i32 %i.l, 2
  store i32 %i.m, ptr %.022.us.us, align 8, !tbaa !27
  store i8 1, ptr %i.d, align 4, !tbaa !22
  %i.n = add i32 %.01721.us.us, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.us.split.us.split
  %.1.us.us = phi i32 [ %i.n, %bb.c ], [ %.01721.us.us, %.lr.ph.split.us.split.us.split ] ; 2 uses
  %i.o = getelementptr i8, ptr %.022.us.us, i64 24
  %.0.us.us = load ptr, ptr %i.o, align 8, !tbaa !11 ; 2 uses
  %.not.us.us = icmp eq ptr %.0.us.us, null
  br i1 %.not.us.us, label %._crit_edge, label %.lr.ph.split.us.split.us.split, !llvm.loop !72

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %i.b, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split, %bb.f
  %.022.us.us41 = phi ptr [ %.0.us.us45, %bb.f ], [ %.019, %.lr.ph.split.us.split ] ; 4 uses
  %.01721.us.us42 = phi i32 [ %.1.us.us44, %bb.f ], [ 0, %.lr.ph.split.us.split ] ; 2 uses
  %i.p = getelementptr i8, ptr %.022.us.us41, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14
  %i.r = icmp eq i64 %i.q, %3
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us.split.split.us
  %i.s = load i32, ptr %.022.us.us41, align 8, !tbaa !27
  %i.t = or i32 %i.s, 2
  store i32 %i.t, ptr %.022.us.us41, align 8, !tbaa !27
  store i8 1, ptr %i.d, align 4, !tbaa !22
  %i.u = add i32 %.01721.us.us42, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us.split.split.us
  %.1.us.us44 = phi i32 [ %i.u, %bb.e ], [ %.01721.us.us42, %.lr.ph.split.us.split.split.us ] ; 2 uses
  %i.v = getelementptr i8, ptr %.022.us.us41, i64 24
  %.0.us.us45 = load ptr, ptr %i.v, align 8, !tbaa !11 ; 2 uses
  %.not.us.us46 = icmp eq ptr %.0.us.us45, null
  br i1 %.not.us.us46, label %._crit_edge, label %.lr.ph.split.us.split.split.us, !llvm.loop !72

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split, %bb.i
  %.022.us = phi ptr [ %.0.us, %bb.i ], [ %.019, %.lr.ph.split.us.split ] ; 5 uses
  %.01721.us = phi i32 [ %.1.us, %bb.i ], [ 0, %.lr.ph.split.us.split ] ; 3 uses
  %i.w = getelementptr i8, ptr %.022.us, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.y = icmp eq ptr %i.x, %1
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.split.us.split.split
  %i.z = getelementptr i8, ptr %.022.us, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !14
  %i.ab = icmp eq i64 %i.aa, %3
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i32, ptr %.022.us, align 8, !tbaa !27
  %i.ad = or i32 %i.ac, 2
  store i32 %i.ad, ptr %.022.us, align 8, !tbaa !27
  store i8 1, ptr %i.d, align 4, !tbaa !22
  %i.ae = add i32 %.01721.us, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.split.us.split.split
  %.1.us = phi i32 [ %i.ae, %bb.h ], [ %.01721.us, %bb.g ], [ %.01721.us, %.lr.ph.split.us.split.split ] ; 2 uses
  %i.af = getelementptr i8, ptr %.022.us, i64 24
  %.0.us = load ptr, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %.not.us = icmp eq ptr %.0.us, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us.split.split, !llvm.loop !72

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.c, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.b, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.k
  %.022.us23.us = phi ptr [ %.0.us27.us, %bb.k ], [ %.019, %.lr.ph.split.split.us ] ; 4 uses
  %.01721.us24.us = phi i32 [ %.1.us26.us, %bb.k ], [ 0, %.lr.ph.split.split.us ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.022.us23.us, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35
  %i.ai = icmp eq ptr %i.ah, %2
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.split.us.split.us
  %i.aj = load i32, ptr %.022.us23.us, align 8, !tbaa !27
  %i.ak = or i32 %i.aj, 2
  store i32 %i.ak, ptr %.022.us23.us, align 8, !tbaa !27
  store i8 1, ptr %i.d, align 4, !tbaa !22
  %i.al = add i32 %.01721.us24.us, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.split.us.split.us
  %.1.us26.us = phi i32 [ %i.al, %bb.j ], [ %.01721.us24.us, %.lr.ph.split.split.us.split.us ] ; 2 uses
  %i.am = getelementptr i8, ptr %.022.us23.us, i64 24
  %.0.us27.us = load ptr, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.not.us28.us = icmp eq ptr %.0.us27.us, null
  br i1 %.not.us28.us, label %._crit_edge, label %.lr.ph.split.split.us.split.us, !llvm.loop !72

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.n
  %.022.us23 = phi ptr [ %.0.us27, %bb.n ], [ %.019, %.lr.ph.split.split.us ] ; 5 uses
  %.01721.us24 = phi i32 [ %.1.us26, %bb.n ], [ 0, %.lr.ph.split.split.us ] ; 3 uses
  %i.an = getelementptr i8, ptr %.022.us23, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !35
  %i.ap = icmp eq ptr %i.ao, %2
  br i1 %i.ap, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph.split.split.us.split
  %i.aq = getelementptr i8, ptr %.022.us23, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !37
  %i.as = icmp eq ptr %i.ar, %1
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %.022.us23, align 8, !tbaa !27
  %i.au = or i32 %i.at, 2
  store i32 %i.au, ptr %.022.us23, align 8, !tbaa !27
  store i8 1, ptr %i.d, align 4, !tbaa !22
  %i.av = add i32 %.01721.us24, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph.split.split.us.split
end_hunk_0
