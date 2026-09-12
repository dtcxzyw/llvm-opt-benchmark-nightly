Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/thread?download=true
inline.NumInlined: 1399
inline.NumDeleted: 321
begin_hunk_0_@rb_thread_shield_new:bb.a
  %i.u = load i64, ptr %i.o, align 8, !tbaa !54
  %i.v = and i64 %i.u, 95
  %or.cond.not.i.i.i.i = icmp eq i64 %i.v, 76
  br i1 %or.cond.not.i.i.i.i, label %bb.c, label %.critedge.i.i.i.i, !prof !166

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i
  %i.w = getelementptr i8, ptr %i.o, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !163  ; 2 uses
  %i.y = and i64 %i.x, -2                         ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = trunc i64 %i.x to i1
  %i.ab = getelementptr i8, ptr %i.o, i64 32      ; 2 uses
  br i1 %i.aa, label %RTYPEDDATA_GET_DATA.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !164
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i.i:                 ; preds = %bb.d, %bb.c
  %i.ad = phi ptr [ %i.ac, %bb.d ], [ %i.ab, %bb.c ] ; 2 uses
  %i.ae = icmp eq i64 %i.y, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.ae, label %rb_mutex_lock.exit, label %.preheader.i.i.i.i, !prof !56

.preheader.i.i.i.i:                               ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i.i, %bb.e
  %.015.i.i.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.z, %RTYPEDDATA_GET_DATA.exit.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.015.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i.i
  %i.af = getelementptr i8, ptr %.015.i.i.i.i, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !171 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, @mutex_data_type
  br i1 %i.ah, label %rb_mutex_lock.exit, label %.preheader.i.i.i.i, !llvm.loop !2

.critedge.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, %thread_shield_alloc.exit
  %i.ai = tail call ptr @rb_check_typeddata(i64 noundef %i.p, ptr noundef nonnull @mutex_data_type) #17
  br label %rb_mutex_lock.exit

rb_mutex_lock.exit:                               ; preds = %bb.e, %RTYPEDDATA_GET_DATA.exit.i.i.i.i, %.critedge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.ai, %.critedge.i.i.i.i ], [ %i.ad, %RTYPEDDATA_GET_DATA.exit.i.i.i.i ], [ %i.ad, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i.i.i, ptr %i.aj, align 8, !tbaa !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ak = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !143
  store volatile ptr %i.al, ptr %i.a, align 8, !tbaa !143
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, ptr %i.am, align 8, !tbaa !181
  %i.an = call fastcc i64 @do_mutex_lock(ptr noundef %0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define hidden zeroext i1 @rb_thread_shield_owned(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @thread_shield_data_type) #17 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = and i64 %i.c, 7
  %.not5 = icmp eq i64 %i.d, 0
  br i1 %.not5, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %.critedge.i.i, !prof !260

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.b
  %i.e = load i64, ptr %i.b, align 8, !tbaa !54
  %i.f = and i64 %i.e, 95
  %or.cond.not.i.i = icmp eq i64 %i.f, 76
  br i1 %or.cond.not.i.i, label %bb.c, label %.critedge.i.i, !prof !166

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.g = getelementptr i8, ptr %i.b, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !163  ; 2 uses
  %i.i = and i64 %i.h, -2                         ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = trunc i64 %i.h to i1
  %i.l = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.k, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !164
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.o = icmp eq i64 %i.i, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.o, label %mutex_ptr.exit, label %.preheader.i.i, !prof !56

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.e
  %.015.i.i = phi ptr [ %i.q, %bb.e ], [ %i.j, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.p = getelementptr i8, ptr %.015.i.i, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !171  ; 2 uses
  %i.r = icmp eq ptr %i.q, @mutex_data_type
  br i1 %i.r, label %mutex_ptr.exit, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.s = tail call ptr @rb_check_typeddata(i64 noundef %i.c, ptr noundef nonnull @mutex_data_type) #17
  br label %mutex_ptr.exit

mutex_ptr.exit:                                   ; preds = %bb.e, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.s, %.critedge.i.i ], [ %i.n, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.n, %bb.e ]
  %i.t = load i64, ptr %.1.i.i, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !143
  store volatile ptr %i.v, ptr %i.a, align 8, !tbaa !143
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 56
  %.val = load i64, ptr %i.w, align 8, !tbaa !174
  %i.x = icmp eq i64 %i.t, %.val
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %mutex_ptr.exit
  %.0 = phi i1 [ %i.x, %mutex_ptr.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 0, 21) i64 @rb_thread_shield_wait(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %struct.mutex_args, align 8         ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @thread_shield_data_type) #17 ; 11 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.e, 7
  %.not23 = icmp eq i64 %i.f, 0                   ; 3 uses
  br i1 %.not23, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %.critedge.i.i, !prof !260

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.b
  %i.g = load i64, ptr %i.d, align 8, !tbaa !54
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.c, label %.critedge.i.i, !prof !166

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.d, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !163  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !164
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.q, label %mutex_ptr.exit, label %.preheader.i.i, !prof !56

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.e
  %.015.i.i = phi ptr [ %i.s, %bb.e ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.015.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !171  ; 2 uses
  %i.t = icmp eq ptr %i.s, @mutex_data_type
  br i1 %i.t, label %mutex_ptr.exit, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %i.e, ptr noundef nonnull @mutex_data_type) #17
  br label %mutex_ptr.exit

mutex_ptr.exit:                                   ; preds = %bb.e, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.e ]
  %i.v = load i64, ptr %.1.i.i, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !143  ; 3 uses
  store volatile ptr %i.x, ptr %i.c, align 8, !tbaa !143
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.c, align 8, !tbaa !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 56
  %.val = load i64, ptr %i.y, align 8, !tbaa !174
  %i.z = icmp eq i64 %i.v, %.val
  br i1 %i.z, label %bb.q, label %bb.f

bb.f:                                             ; preds = %mutex_ptr.exit
  %i.aa = inttoptr i64 %0 to ptr                  ; 6 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !54 ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %2 = lshr i32 %i.ac, 12                         ; 2 uses
  %i.ad = icmp eq i32 %2, 1048575
  br i1 %i.ad, label %bb.g, label %rb_thread_shield_waiting_inc.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !140
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.229) #41
  unreachable

rb_thread_shield_waiting_inc.exit:                ; preds = %bb.f
  %i.af = add nuw nsw i32 %2, 1
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = and i64 %i.ab, -4294963201
  %i.ai = shl nuw nsw i64 %i.ag, 12
  %i.aj = or i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store i64 %i.e, ptr %1, align 8, !tbaa !179
  br i1 %.not23, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, label %.critedge.i.i.i.i, !prof !260

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i:           ; preds = %rb_thread_shield_waiting_inc.exit
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !54
  %i.al = and i64 %i.ak, 95
  %or.cond.not.i.i.i.i = icmp eq i64 %i.al, 76
  br i1 %or.cond.not.i.i.i.i, label %bb.h, label %.critedge.i.i.i.i, !prof !166

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i
  %i.am = getelementptr i8, ptr %i.d, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !163 ; 2 uses
  %i.ao = and i64 %i.an, -2                       ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = trunc i64 %i.an to i1
  %i.ar = getelementptr i8, ptr %i.d, i64 32      ; 2 uses
  br i1 %i.aq, label %RTYPEDDATA_GET_DATA.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !164
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i.i:                 ; preds = %bb.i, %bb.h
  %i.at = phi ptr [ %i.as, %bb.i ], [ %i.ar, %bb.h ] ; 2 uses
  %i.au = icmp eq i64 %i.ao, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.au, label %rb_mutex_lock.exit, label %.preheader.i.i.i.i, !prof !56

.preheader.i.i.i.i:                               ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i.i, %bb.j
  %.015.i.i.i.i = phi ptr [ %i.aw, %bb.j ], [ %i.ap, %RTYPEDDATA_GET_DATA.exit.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.015.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i.i.i
  %i.av = getelementptr i8, ptr %.015.i.i.i.i, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !171 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, @mutex_data_type
  br i1 %i.ax, label %rb_mutex_lock.exit, label %.preheader.i.i.i.i, !llvm.loop !2

.critedge.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, %rb_thread_shield_waiting_inc.exit
  %i.ay = tail call ptr @rb_check_typeddata(i64 noundef %i.e, ptr noundef nonnull @mutex_data_type) #17
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !143
  br label %rb_mutex_lock.exit

rb_mutex_lock.exit:                               ; preds = %bb.j, %RTYPEDDATA_GET_DATA.exit.i.i.i.i, %.critedge.i.i.i.i
  %i.az = phi ptr [ %.pre, %.critedge.i.i.i.i ], [ %i.x, %RTYPEDDATA_GET_DATA.exit.i.i.i.i ], [ %i.x, %bb.j ]
  %.1.i.i.i.i = phi ptr [ %i.ay, %.critedge.i.i.i.i ], [ %i.at, %RTYPEDDATA_GET_DATA.exit.i.i.i.i ], [ %i.at, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.1.i.i.i.i, ptr %i.ba, align 8, !tbaa !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile ptr %i.az, ptr %i.b, align 8, !tbaa !143
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, ptr %i.bb, align 8, !tbaa !181
  %i.bc = call fastcc i64 @do_mutex_lock(ptr noundef %1, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.bd = load i64, ptr %i.aa, align 8, !tbaa !54 ; 2 uses
  %i.be = trunc i64 %i.bd to i32
  %3 = lshr i32 %i.be, 12                         ; 2 uses
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %bb.k, label %rb_thread_shield_waiting_dec.exit

bb.k:                                             ; preds = %rb_mutex_lock.exit
  %i.bf = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !140
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bf, ptr noundef nonnull @.str.230) #41
  unreachable

rb_thread_shield_waiting_dec.exit:                ; preds = %rb_mutex_lock.exit
  %i.bg = add nsw i32 %3, -1
  %i.bh = and i64 %i.bd, -4294963201
  %i.bi = zext nneg i32 %i.bg to i64
  %i.bj = shl nuw nsw i64 %i.bi, 12
  %i.bk = or i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.aa, align 8, !tbaa !54
  %i.bl = getelementptr i8, ptr %i.aa, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !307
  %.not11 = icmp eq ptr %i.bm, null
  br i1 %.not11, label %bb.l, label %bb.q

bb.l:                                             ; preds = %rb_thread_shield_waiting_dec.exit
  br i1 %.not23, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i13, label %.critedge.i.i.i.i15, !prof !260

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i13:         ; preds = %bb.l
  %i.bn = load i64, ptr %i.d, align 8, !tbaa !54
  %i.bo = and i64 %i.bn, 95
  %or.cond.not.i.i.i.i14 = icmp eq i64 %i.bo, 76
  br i1 %or.cond.not.i.i.i.i14, label %bb.m, label %.critedge.i.i.i.i15, !prof !166

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i13
  %i.bp = getelementptr i8, ptr %i.d, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !163 ; 2 uses
  %i.br = and i64 %i.bq, -2                       ; 2 uses
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = trunc i64 %i.bq to i1
  %i.bu = getelementptr i8, ptr %i.d, i64 32      ; 2 uses
  br i1 %i.bt, label %RTYPEDDATA_GET_DATA.exit.i.i.i.i19, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !164
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i.i19

RTYPEDDATA_GET_DATA.exit.i.i.i.i19:               ; preds = %bb.n, %bb.m
  %i.bw = phi ptr [ %i.bv, %bb.n ], [ %i.bu, %bb.m ] ; 2 uses
  %i.bx = icmp eq i64 %i.br, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.bx, label %mutex_args_init.exit.i, label %.preheader.i.i.i.i20, !prof !56

.preheader.i.i.i.i20:                             ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i.i19, %bb.o
  %.015.i.i.i.i21 = phi ptr [ %i.bz, %bb.o ], [ %i.bs, %RTYPEDDATA_GET_DATA.exit.i.i.i.i19 ] ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %.015.i.i.i.i21, null
  br i1 %.not.i.i.i.i22, label %.critedge.i.i.i.i15, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i.i.i20
  %i.by = getelementptr i8, ptr %.015.i.i.i.i21, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !171 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, @mutex_data_type
  br i1 %i.ca, label %mutex_args_init.exit.i, label %.preheader.i.i.i.i20, !llvm.loop !2

.critedge.i.i.i.i15:                              ; preds = %.preheader.i.i.i.i20, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i13, %bb.l
  %i.cb = tail call ptr @rb_check_typeddata(i64 noundef %i.e, ptr noundef nonnull @mutex_data_type) #17
  br label %mutex_args_init.exit.i

mutex_args_init.exit.i:                           ; preds = %bb.o, %.critedge.i.i.i.i15, %RTYPEDDATA_GET_DATA.exit.i.i.i.i19
  %.1.i.i.i.i16 = phi ptr [ %i.cb, %.critedge.i.i.i.i15 ], [ %i.bw, %RTYPEDDATA_GET_DATA.exit.i.i.i.i19 ], [ %i.bw, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cc = load ptr, ptr %i.w, align 8, !tbaa !143
  store volatile ptr %i.cc, ptr %i.a, align 8, !tbaa !143
  %.0..0..0..0..0..0..0..0..0..0..i.i.i17 = load volatile ptr, ptr %i.a, align 8, !tbaa !143 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cd = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i17, i64 48
  %.val2.val.i = load ptr, ptr %i.cd, align 8, !tbaa !31
  %i.ce = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i17, i64 56
  %.val2.val3.i = load i64, ptr %i.ce, align 8, !tbaa !174
  %i.cf = tail call fastcc ptr @rb_mutex_unlock_th(ptr noundef %.1.i.i.i.i16, ptr noundef %.val2.val.i, i64 noundef %.val2.val3.i) ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i18, label %rb_mutex_unlock.exit, label %bb.p

bb.p:                                             ; preds = %mutex_args_init.exit.i
  %i.cg = load i64, ptr @rb_eThreadError, align 8, !tbaa !140
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cg, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.cf) #41
  unreachable

rb_mutex_unlock.exit:                             ; preds = %mutex_args_init.exit.i
  %i.ch = load i64, ptr %i.aa, align 8, !tbaa !54
  %i.ci = and i64 %i.ch, 4294963200
  %.not12 = icmp eq i64 %i.ci, 0
  %i.cj = select i1 %.not12, i64 0, i64 4
  br label %bb.q

bb.q:                                             ; preds = %rb_thread_shield_waiting_dec.exit, %mutex_ptr.exit, %bb.a, %rb_mutex_unlock.exit
  %.0 = phi i64 [ 0, %bb.a ], [ 4, %mutex_ptr.exit ], [ %i.cj, %rb_mutex_unlock.exit ], [ 20, %rb_thread_shield_waiting_dec.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 0, 21) i64 @rb_thread_shield_release(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @thread_shield_data_type) #17 ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %thread_shield_get_mutex.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eThreadError, align 8, !tbaa !140
  %i.d = inttoptr i64 %0 to ptr
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.231, ptr noundef %i.d) #41
  unreachable

thread_shield_get_mutex.exit:                     ; preds = %bb.a
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = and i64 %i.e, 7
  %.not3 = icmp eq i64 %i.f, 0
  br i1 %.not3, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, label %.critedge.i.i.i.i, !prof !260

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i:           ; preds = %thread_shield_get_mutex.exit
  %i.g = load i64, ptr %i.b, align 8, !tbaa !54
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i.i.i, label %bb.c, label %.critedge.i.i.i.i, !prof !166

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i
  %i.i = getelementptr i8, ptr %i.b, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !163  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !164
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i.i:                 ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @mutex_data_type to i64)
  br i1 %i.q, label %mutex_args_init.exit.i, label %.preheader.i.i.i.i, !prof !56

.preheader.i.i.i.i:                               ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i.i, %bb.e
  %.015.i.i.i.i = phi ptr [ %i.s, %bb.e ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.015.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i.i
  %i.r = getelementptr i8, ptr %.015.i.i.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !171  ; 2 uses
  %i.t = icmp eq ptr %i.s, @mutex_data_type
  br i1 %i.t, label %mutex_args_init.exit.i, label %.preheader.i.i.i.i, !llvm.loop !2

.critedge.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, %thread_shield_get_mutex.exit
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %i.e, ptr noundef nonnull @mutex_data_type) #17
  br label %mutex_args_init.exit.i

mutex_args_init.exit.i:                           ; preds = %bb.e, %.critedge.i.i.i.i, %RTYPEDDATA_GET_DATA.exit.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.u, %.critedge.i.i.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i.i.i ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !143
  store volatile ptr %i.w, ptr %i.a, align 8, !tbaa !143
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !143 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val2.val.i = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.y = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 56
  %.val2.val3.i = load i64, ptr %i.y, align 8, !tbaa !174
  %i.z = tail call fastcc ptr @rb_mutex_unlock_th(ptr noundef %.1.i.i.i.i, ptr noundef %.val2.val.i, i64 noundef %.val2.val3.i) ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %rb_mutex_unlock.exit, label %bb.f

bb.f:                                             ; preds = %mutex_args_init.exit.i
  %i.aa = load i64, ptr @rb_eThreadError, align 8, !tbaa !140
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.z) #41
  unreachable

rb_mutex_unlock.exit:                             ; preds = %mutex_args_init.exit.i
  %i.ab = inttoptr i64 %0 to ptr
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !54
  %i.ad = and i64 %i.ac, 4294963200
  %.not = icmp eq i64 %i.ad, 0
  %i.ae = select i1 %.not, i64 0, i64 20
  ret i64 %i.ae
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 0, 21) i64 @rb_thread_shield_destroy(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @thread_shield_data_type) #17 ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = inttoptr i64 %0 to ptr                   ; 3 uses
  br i1 %.not.i, label %bb.b, label %thread_shield_get_mutex.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eThreadError, align 8, !tbaa !140
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.231, ptr noundef %i.c) #41
  unreachable

thread_shield_get_mutex.exit:                     ; preds = %bb.a
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = getelementptr i8, ptr %i.c, i64 32
  store ptr null, ptr %i.f, align 8, !tbaa !307
  %i.g = and i64 %i.e, 7
  %.not4 = icmp eq i64 %i.g, 0
  br i1 %.not4, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, label %.critedge.i.i.i.i, !prof !260

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i:           ; preds = %thread_shield_get_mutex.exit
  %i.h = load i64, ptr %i.b, align 8, !tbaa !54
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i.i.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i.i.i.i, label %bb.c, label %.critedge.i.i.i.i, !prof !166
end_hunk_0
