Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/itt_notify?download=true
inline.NumInlined: 24
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@__itt_fini_ittlib:bb.a
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_ZL26__itt_nullify_all_pointersv.exit, label %.lr.ph.i, !llvm.loop !0

_ZL26__itt_nullify_all_pointersv.exit:            ; preds = %.lr.ph.i, %.thread
  store volatile i64 0, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 32), align 8, !tbaa !27
  store volatile i64 0, ptr @_ZZ17__itt_fini_ittlibE14current_thread, align 8, !tbaa !34
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %_ZL26__itt_nullify_all_pointersv.exit, %bb.n
  br i1 %or.cond6, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.al = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 56)) #17 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare extern_weak i32 @pthread_mutex_init(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare extern_weak i32 @pthread_mutex_lock(ptr noundef) #3

; Function Attrs: nounwind
declare extern_weak i32 @pthread_mutex_unlock(ptr noundef) #3

; Function Attrs: nounwind
declare extern_weak i32 @pthread_mutex_destroy(ptr noundef) #3

; Function Attrs: nounwind
declare extern_weak i32 @pthread_mutexattr_init(ptr noundef) #3

; Function Attrs: nounwind
declare extern_weak i32 @pthread_mutexattr_settype(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare extern_weak i32 @pthread_mutexattr_destroy(ptr noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare extern_weak i64 @pthread_self() #4

; Function Attrs: mustprogress sspstrong uwtable
define internal void @_ZL18__itt_report_erroriz(i32 noundef range(i32 1, 7) %0, ...) unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 104), align 8, !tbaa !76 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void %i.a(i32 noundef %0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #3

; Function Attrs: nounwind
declare extern_weak ptr @dlsym(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress sspstrong uwtable
define hidden range(i32 0, 2) i32 @__itt_init_ittlib(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [255 x i8], align 16              ; 31 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %2 = alloca %union.pthread_mutexattr_t, align 4 ; 6 uses
  %i.e = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 32), align 8, !tbaa !27
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.bl

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne ptr @pthread_mutex_init, null
  %i.g = icmp ne ptr @pthread_mutex_lock, null
  %or.cond = and i1 %i.f, %i.g
  %i.h = icmp ne ptr @pthread_mutex_unlock, null
  %or.cond1 = and i1 %i.h, %or.cond
  %i.i = icmp ne ptr @pthread_mutex_destroy, null
  %or.cond2 = and i1 %i.i, %or.cond1
  %i.j = icmp ne ptr @pthread_mutexattr_init, null
  %or.cond3 = and i1 %i.j, %or.cond2
  %i.k = icmp ne ptr @pthread_mutexattr_settype, null
  %or.cond4 = and i1 %i.k, %or.cond3
  %i.l = icmp ne ptr @pthread_mutexattr_destroy, null
  %or.cond5 = and i1 %i.l, %or.cond4
  %i.m = icmp ne ptr @pthread_self, null
  %or.cond6 = and i1 %i.m, %or.cond5              ; 3 uses
  br i1 %or.cond6, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.n = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 40), align 8, !tbaa !29
  %.not73 = icmp eq i64 %i.n, 0
  br i1 %.not73, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.o = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 48), i64 1, i64 0 seq_cst seq_cst, align 8
  %i.p = extractvalue { i64, i1 } %i.o, 0
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.r = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 40), align 8, !tbaa !29
  %.not74103 = icmp eq i64 %i.r, 0
  br i1 %.not74103, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.s = call i32 @pthread_mutexattr_init(ptr noundef nonnull %2) #17 ; 2 uses
  %.not75 = icmp eq i32 %i.s, 0
  br i1 %.not75, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (i32, ...) @_ZL18__itt_report_erroriz(i32 noundef 6, ptr noundef nonnull @.str, i32 noundef %i.s)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = call i32 @pthread_mutexattr_settype(ptr noundef nonnull %2, i32 noundef 1) #17 ; 2 uses
  %.not76 = icmp eq i32 %i.t, 0
  br i1 %.not76, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (i32, ...) @_ZL18__itt_report_erroriz(i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %i.t)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = call i32 @pthread_mutex_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 56), ptr noundef nonnull %2) #17 ; 2 uses
  %.not77 = icmp eq i32 %i.u, 0
  br i1 %.not77, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (i32, ...) @_ZL18__itt_report_erroriz(i32 noundef 6, ptr noundef nonnull @.str.2, i32 noundef %i.u)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = call i32 @pthread_mutexattr_destroy(ptr noundef nonnull %2) #17 ; 2 uses
  %.not78 = icmp eq i32 %i.v, 0
  br i1 %.not78, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (i32, ...) @_ZL18__itt_report_erroriz(i32 noundef 6, ptr noundef nonnull @.str.3, i32 noundef %i.v)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  store volatile i64 1, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 40), align 8, !tbaa !29
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.w = tail call i32 @sched_yield() #17         ; 0 uses
  %i.x = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 40), align 8, !tbaa !29
  %.not74 = icmp eq i64 %i.x, 0
  br i1 %.not74, label %.lr.ph, label %.loopexit, !llvm.loop !119

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.m, %bb.c
  %i.y = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 56)) #17 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.b
  %i.z = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 32), align 8, !tbaa !27
  %.not79 = icmp eq i64 %i.z, 0
  br i1 %.not79, label %bb.o, label %bb.bj

bb.o:                                             ; preds = %bb.n
  %i.aa = load volatile i64, ptr @_ZZ17__itt_init_ittlibE14current_thread, align 8, !tbaa !34
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.p, label %bb.bj

bb.p:                                             ; preds = %bb.o
  br i1 %or.cond6, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ac = tail call i64 @pthread_self() #20
  store volatile i64 %i.ac, ptr @_ZZ17__itt_init_ittlibE14current_thread, align 8, !tbaa !34
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ad = icmp eq ptr %0, null
  br i1 %i.ad, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ae = call fastcc noundef ptr @_ZL18__itt_get_lib_namev()
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.065 = phi ptr [ %i.ae, %bb.s ], [ %0, %bb.r ] ; 4 uses
  %i.af = call ptr @getenv(ptr noundef nonnull @.str.159) #17, !inline_history !1 ; 3 uses
  %.not29.i.i = icmp eq ptr %i.af, null
  br i1 %.not29.i.i, label %_ZL17__itt_get_env_varPKc.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #18, !inline_history !1 ; 4 uses
  %i.ah = load ptr, ptr @_ZZL17__itt_get_env_varPKcE9env_value, align 8, !tbaa !77 ; 4 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.aj = sub i64 add (i64 ptrtoint (ptr @_ZZL17__itt_get_env_varPKcE8env_buff to i64), i64 4086), %i.ai
  %.not30.i.i = icmp ult i64 %i.ag, %i.aj
  br i1 %.not30.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = sub i64 add (i64 ptrtoint (ptr @_ZZL17__itt_get_env_varPKcE8env_buff to i64), i64 4085), %i.ai
  call void (i32, ...) @_ZL18__itt_report_erroriz(i32 noundef 5, ptr noundef nonnull @.str.159, i64 noundef %i.ag, i64 noundef %i.ak), !inline_history !1
  br label %_ZL17__itt_get_env_varPKc.exit.i

_ZL17__itt_get_env_varPKc.exit.i:                 ; preds = %bb.v, %bb.t
  %i.al = call ptr @getenv(ptr noundef nonnull @.str.177) #17, !inline_history !1 ; 3 uses
  %.not29.i45.i = icmp eq ptr %i.al, null
  br i1 %.not29.i45.i, label %bb.as, label %bb.ap

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.am = sub i64 add (i64 ptrtoint (ptr @_ZZL17__itt_get_env_varPKcE8env_buff to i64), i64 4085), %i.ai
  %i.an = add nuw i64 %i.ag, 1
  %i.ao = call i64 @llvm.umin.i64(i64 %i.am, i64 %i.an)
  store volatile i64 %i.ao, ptr %i.b, align 8, !tbaa !34
  %.0..0..0..0..0..0..0..0..i.i = load volatile i64, ptr %i.b, align 8, !tbaa !34
  %strncpy = call ptr @strncpy(ptr %i.ah, ptr nonnull %i.af, i64 %.0..0..0..0..0..0..0..0..i.i) ; 0 uses
  %i.ap = load ptr, ptr @_ZZL17__itt_get_env_varPKcE9env_value, align 8, !tbaa !77 ; 2 uses
  %.0..0..0..0..0..0..0..0.2.i.i = load volatile i64, ptr %i.b, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.0..0..0..0..0..0..0..0.2.i.i
  store i8 0, ptr %i.aq, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ar = getelementptr i8, ptr %i.ap, i64 %i.ag
  %i.as = getelementptr i8, ptr %i.ar, i64 1
  store ptr %i.as, ptr @_ZZL17__itt_get_env_varPKcE9env_value, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.at = load i8, ptr %i.ah, align 1, !tbaa !35  ; 2 uses
  %.not14.i.i104 = icmp eq i8 %i.at, 0
  br i1 %.not14.i.i104, label %_ZL12__itt_fsplitPKcS0_PS0_Pi.exit.thread.i, label %.preheader4.i.i.preheader

.preheader4.i.i.preheader:                        ; preds = %bb.w, %.loopexit62.i
  %i.au = phi i8 [ %i.fn, %.loopexit62.i ], [ %i.at, %bb.w ]
  %.0.i106 = phi ptr [ %i.bh, %.loopexit62.i ], [ %i.ah, %bb.w ] ; 5 uses
  %.026.i105 = phi i32 [ %.1.i, %.loopexit62.i ], [ 0, %bb.w ] ; 3 uses
  br label %.preheader4.i.i

.preheader4.i.i:                                  ; preds = %.preheader4.i.i.preheader, %bb.x
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.x ], [ 0, %.preheader4.i.i.preheader ] ; 3 uses
  %i.av = phi i8 [ %i.ay, %bb.x ], [ %i.au, %.preheader4.i.i.preheader ] ; 2 uses
  switch i8 %i.av, label %.preheader2.i.preheader.i [
    i8 44, label %bb.x
    i8 59, label %bb.x
    i8 32, label %bb.x
  ]

.preheader2.i.preheader.i:                        ; preds = %.preheader4.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i106, i64 %indvars.iv.i.i
  br label %.preheader2.i.i

bb.x:                                             ; preds = %.preheader4.i.i, %.preheader4.i.i, %.preheader4.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i106, i64 %indvars.iv.next.i.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !35  ; 2 uses
  %.not.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i, label %_ZL12__itt_fsplitPKcS0_PS0_Pi.exit.thread.i, label %.preheader4.i.i, !llvm.loop !120

.preheader2.i.i:                                  ; preds = %.critedge83.i.i, %.preheader2.i.preheader.i
  %.154.i = phi i32 [ %i.az, %.critedge83.i.i ], [ 0, %.preheader2.i.preheader.i ] ; 3 uses
  %indvars.iv42.i.i = phi i64 [ %indvars.iv.next43.i.i, %.critedge83.i.i ], [ %indvars.iv.i.i, %.preheader2.i.preheader.i ] ; 2 uses
  %.pre.i.i = phi i8 [ %i.bb, %.critedge83.i.i ], [ %i.av, %.preheader2.i.preheader.i ] ; 2 uses
  switch i8 %.pre.i.i, label %.critedge83.i.i [
    i8 44, label %.preheader.preheader.i.i
    i8 59, label %.preheader.preheader.i.i
    i8 32, label %.preheader.preheader.i.i
  ]

.critedge83.i.i:                                  ; preds = %.preheader2.i.i
  %indvars.iv.next43.i.i = add nuw nsw i64 %indvars.iv42.i.i, 1 ; 3 uses
  %i.az = add nuw nsw i32 %.154.i, 1              ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i106, i64 %indvars.iv.next43.i.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !35  ; 2 uses
  %.not74.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not74.i.i, label %.loopexit.i.i, label %.preheader2.i.i, !llvm.loop !121

.loopexit.i.i:                                    ; preds = %.critedge83.i.i
  %i.bc = and i64 %indvars.iv.next43.i.i, 4294967295
  br label %_ZL12__itt_fsplitPKcS0_PS0_Pi.exit.i

.preheader.preheader.i.i:                         ; preds = %.preheader2.i.i, %.preheader2.i.i, %.preheader2.i.i
  %i.bd = and i64 %indvars.iv42.i.i, 4294967295
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.y, %.preheader.preheader.i.i
  %indvars.iv48.i.i = phi i64 [ %i.bd, %.preheader.preheader.i.i ], [ %indvars.iv.next49.i.i, %bb.y ] ; 2 uses
  %i.be = phi i8 [ %.pre.i.i, %.preheader.preheader.i.i ], [ %i.bg, %bb.y ]
  switch i8 %i.be, label %_ZL12__itt_fsplitPKcS0_PS0_Pi.exit.i [
    i8 44, label %bb.y
    i8 59, label %bb.y
    i8 32, label %bb.y
  ]

bb.y:                                             ; preds = %.preheader.i.i, %.preheader.i.i, %.preheader.i.i
  %indvars.iv.next49.i.i = add nuw nsw i64 %indvars.iv48.i.i, 1 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i106, i64 %indvars.iv.next49.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !35  ; 2 uses
  %.not77.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not77.i.i, label %_ZL12__itt_fsplitPKcS0_PS0_Pi.exit.i, label %.preheader.i.i, !llvm.loop !122

_ZL12__itt_fsplitPKcS0_PS0_Pi.exit.i:             ; preds = %bb.y, %.preheader.i.i, %.loopexit.i.i
  %indvars.iv48.i.lcssa.sink.i = phi i64 [ %i.bc, %.loopexit.i.i ], [ %indvars.iv.next49.i.i, %bb.y ], [ %indvars.iv48.i.i, %.preheader.i.i ]
  %.4.i = phi i32 [ %i.az, %.loopexit.i.i ], [ %.154.i, %.preheader.i.i ], [ %.154.i, %bb.y ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i106, i64 %indvars.iv48.i.lcssa.sink.i ; 2 uses
  %i.bi = call i32 @llvm.smin.i32(i32 %.4.i, i32 254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = call i64 @llvm.umin.i64(i64 %i.bj, i64 253)
  store volatile i64 %i.bk, ptr %i.d, align 8, !tbaa !34
  %.0..0..0..0..0..0..i = load volatile i64, ptr %i.d, align 8, !tbaa !34
  %i.bl = call ptr @__strncpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull %i.aw, i64 noundef %.0..0..0..0..0..0..i, i64 noundef 255) #17 ; 0 uses
  %.0..0..0..0..0..0.1.i = load volatile i64, ptr %i.d, align 8, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0..0..0..0..0..0.1.i
  store i8 0, ptr %i.bm, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds i8, ptr %i.c, i64 %i.bj
  store i8 0, ptr %i.bn, align 1, !tbaa !35
  %lhsv.i = load i32, ptr %i.c, align 16
  %.not.i = icmp eq i32 %lhsv.i, 7105633
  br i1 %.not.i, label %bb.ao, label %bb.z

bb.z:                                             ; preds = %_ZL12__itt_fsplitPKcS0_PS0_Pi.exit.i
  %lhsv108.i = load i64, ptr %i.c, align 16       ; 3 uses
  %.not110.i = icmp eq i64 %lhsv108.i, 30521834855100259
  br i1 %.not110.i, label %bb.ao, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = load i32, ptr %i.c, align 16
  %i.bp = xor i32 %i.bo, 1701996660
  %i.bq = getelementptr i8, ptr %i.c, i64 3
  %i.br = load i32, ptr %i.bq, align 1
  %i.bs = xor i32 %i.br, 6578533
  %i.bt = or i32 %i.bp, %i.bs
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %.not43.2.i = icmp eq i32 %i.bv, 0
  br i1 %.not43.2.i, label %bb.ao, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = load i32, ptr %i.c, align 16
  %i.bx = xor i32 %i.bw, 1802658157
  %i.by = getelementptr i8, ptr %i.c, i64 4
  %i.bz = load i8, ptr %i.by, align 4
  %i.ca = zext i8 %i.bz to i32
  %i.cb = or i32 %i.bx, %i.ca
  %i.cc = icmp ne i32 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %.not43.3.i = icmp eq i32 %i.cd, 0
  br i1 %.not43.3.i, label %bb.ao, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = load i32, ptr %i.c, align 16
  %i.cf = xor i32 %i.ce, 1668184435
  %i.cg = getelementptr i8, ptr %i.c, i64 4
  %i.ch = load i8, ptr %i.cg, align 4
  %i.ci = zext i8 %i.ch to i32
  %i.cj = or i32 %i.cf, %i.ci
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %.not43.4.i = icmp eq i32 %i.cl, 0
  br i1 %.not43.4.i, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cm = load i32, ptr %i.c, align 16
  %i.cn = xor i32 %i.cm, 1853453158
  %i.co = getelementptr i8, ptr %i.c, i64 4
  %i.cp = load i16, ptr %i.co, align 4
  %i.cq = zext i16 %i.cp to i32
  %i.cr = xor i32 %i.cq, 99
  %i.cs = or i32 %i.cn, %i.cr
  %i.ct = icmp ne i32 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %.not43.5.i = icmp eq i32 %i.cu, 0
  br i1 %.not43.5.i, label %bb.ao, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cv = and i64 %lhsv108.i, 4294967295
  %.not116.i = icmp eq i64 %i.cv, 7629162
  br i1 %.not116.i, label %bb.ao, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = load i32, ptr %i.c, align 16
  %i.cx = xor i32 %i.cw, 1701080941
  %i.cy = getelementptr i8, ptr %i.c, i64 4
  %i.cz = load i16, ptr %i.cy, align 4
  %i.da = zext i16 %i.cz to i32
  %i.db = xor i32 %i.da, 108
  %i.dc = or i32 %i.cx, %i.db
  %i.dd = icmp ne i32 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %.not43.7.i = icmp eq i32 %i.de, 0
  br i1 %.not43.7.i, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not120.i = icmp eq i64 %lhsv108.i, 32199698088816483
  br i1 %.not120.i, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.df = load i32, ptr %i.c, align 16
  %i.dg = xor i32 %i.df, 1835102822
  %i.dh = getelementptr i8, ptr %i.c, i64 4
  %i.di = load i16, ptr %i.dh, align 4
  %i.dj = zext i16 %i.di to i32
  %i.dk = xor i32 %i.dj, 101
  %i.dl = or i32 %i.dg, %i.dk
  %i.dm = icmp ne i32 %i.dl, 0
  %i.dn = zext i1 %i.dm to i32
  %.not43.9.i = icmp eq i32 %i.dn, 0
  br i1 %.not43.9.i, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.do = load i32, ptr %i.c, align 16
  %i.dp = xor i32 %i.do, 1953068147
  %i.dq = getelementptr i8, ptr %i.c, i64 3
  %i.dr = load i32, ptr %i.dq, align 1
  %i.ds = xor i32 %i.dr, 6841204
  %i.dt = or i32 %i.dp, %i.ds
  %i.du = icmp ne i32 %i.dt, 0
  %i.dv = zext i1 %i.du to i32
  %.not43.10.i = icmp eq i32 %i.dv, 0
  br i1 %.not43.10.i, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dw = load i32, ptr %i.c, align 16
  %i.dx = xor i32 %i.dw, 1885431144
  %i.dy = getelementptr i8, ptr %i.c, i64 4
  %i.dz = load i8, ptr %i.dy, align 4
  %i.ea = zext i8 %i.dz to i32
  %i.eb = or i32 %i.dx, %i.ea
  %i.ec = icmp ne i32 %i.eb, 0
  %i.ed = zext i1 %i.ec to i32
  %.not43.11.i = icmp eq i32 %i.ed, 0
  br i1 %.not43.11.i, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ee = load i64, ptr %i.c, align 16
  %i.ef = xor i64 %i.ee, 8247626263119950963
  %i.eg = getelementptr i8, ptr %i.c, i64 8
  %i.eh = load i16, ptr %i.eg, align 8
  %i.ei = zext i16 %i.eh to i64
  %i.ej = xor i64 %i.ei, 101
  %i.ek = or i64 %i.ef, %i.ej
  %i.el = icmp ne i64 %i.ek, 0
  %i.em = zext i1 %i.el to i32
  %.not43.12.i = icmp eq i32 %i.em, 0
  br i1 %.not43.12.i, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.en = load i64, ptr %i.c, align 16
  %i.eo = xor i64 %i.en, 8319104478870533491
  %i.ep = getelementptr i8, ptr %i.c, i64 8
  %i.eq = load i8, ptr %i.ep, align 8
  %i.er = zext i8 %i.eq to i64
  %i.es = or i64 %i.eo, %i.er
  %i.et = icmp ne i64 %i.es, 0
  %i.eu = zext i1 %i.et to i32
  %.not43.13.i = icmp eq i32 %i.eu, 0
  br i1 %.not43.13.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = load i32, ptr %i.c, align 16
  %i.ew = xor i32 %i.ev, 1634890337
  %i.ex = getelementptr i8, ptr %i.c, i64 3
  %i.ey = load i32, ptr %i.ex, align 1
  %i.ez = xor i32 %i.ey, 7567713
  %i.fa = or i32 %i.ew, %i.ez
  %i.fb = icmp ne i32 %i.fa, 0
  %i.fc = zext i1 %i.fb to i32
  %.not43.14.i = icmp eq i32 %i.fc, 0
  br i1 %.not43.14.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fd = load i32, ptr %i.c, align 16
  %i.fe = xor i32 %i.fd, 1969516397
  %i.ff = getelementptr i8, ptr %i.c, i64 3
  %i.fg = load i32, ptr %i.ff, align 1
  %i.fh = xor i32 %i.fg, 6646901
  %i.fi = or i32 %i.fe, %i.fh
  %i.fj = icmp ne i32 %i.fi, 0
  %i.fk = zext i1 %i.fj to i32
  %.not43.15.i = icmp eq i32 %i.fk, 0
  br i1 %.not43.15.i, label %bb.ao, label %.loopexit62.i

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %_ZL12__itt_fsplitPKcS0_PS0_Pi.exit.i
  %.lcssa89.i = phi ptr [ @_ZL10group_list, %_ZL12__itt_fsplitPKcS0_PS0_Pi.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL10group_list, i64 16), %bb.z ], [ getelementptr inbounds nuw (i8, ptr @_ZL10group_list, i64 32), %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @_ZL10group_list, i64 48), %bb.ab ], [ getelementptr inbounds nuw (i8, ptr @_ZL10group_list, i64 64), %bb.ac ], [ getelementptr inbounds nuw (i8, ptr @_ZL10group_list, i64 80), %bb.ad ], [ getelementptr inbounds nuw (i8, ptr @_ZL10group_list, i64 96), %bb.ae ], [ getelementptr inbounds nuw (i8, ptr @_ZL10group_list, i64 112), %bb.af ], [ getelementptr inbounds nuw (i8, ptr @_ZL10group_list, i64 128), %bb.ag ], [ getelementptr inbounds nuw (i8, ptr @_ZL10group_list, i64 144), %bb.ah ], [ getelementptr inbounds nuw (i8, ptr @_ZL10group_list, i64 160), %bb.ai ], [ getelementptr inbounds nuw (i8, ptr @_ZL10group_list, i64 176), %bb.aj ], [ getelementptr inbounds nuw (i8, ptr @_ZL10group_list, i64 192), %bb.ak ], [ getelementptr inbounds nuw (i8, ptr @_ZL10group_list, i64 208), %bb.al ], [ getelementptr inbounds nuw (i8, ptr @_ZL10group_list, i64 224), %bb.am ], [ getelementptr inbounds nuw (i8, ptr @_ZL10group_list, i64 240), %bb.an ]
  %i.fl = load i32, ptr %.lcssa89.i, align 16, !tbaa !127
  %i.fm = or i32 %i.fl, %.026.i105
  br label %.loopexit62.i

.loopexit62.i:                                    ; preds = %bb.ao, %bb.an
  %.1.i = phi i32 [ %i.fm, %bb.ao ], [ %.026.i105, %bb.an ] ; 2 uses
  %i.fn = load i8, ptr %i.bh, align 1, !tbaa !35  ; 2 uses
  %.not14.i.i = icmp eq i8 %i.fn, 0
  br i1 %.not14.i.i, label %_ZL12__itt_fsplitPKcS0_PS0_Pi.exit.thread.i, label %.preheader4.i.i.preheader, !llvm.loop !123

_ZL12__itt_fsplitPKcS0_PS0_Pi.exit.thread.i:      ; preds = %.loopexit62.i, %bb.x, %bb.w
  %.026.i102 = phi i32 [ %.026.i105, %bb.x ], [ 0, %bb.w ], [ %.1.i, %.loopexit62.i ]
  %spec.select.11.i = or i32 %.026.i102, 3840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %_ZL16__itt_get_groupsv.exit

bb.ap:                                            ; preds = %_ZL17__itt_get_env_varPKc.exit.i
  %i.fo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #18, !inline_history !1 ; 3 uses
  %i.fp = load ptr, ptr @_ZZL17__itt_get_env_varPKcE9env_value, align 8, !tbaa !77 ; 2 uses
  %i.fq = ptrtoint ptr %i.fp to i64               ; 3 uses
  %i.fr = sub i64 add (i64 ptrtoint (ptr @_ZZL17__itt_get_env_varPKcE8env_buff to i64), i64 4086), %i.fq
  %.not30.i46.i = icmp ult i64 %i.fo, %i.fr
  br i1 %.not30.i46.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fs = sub i64 add (i64 ptrtoint (ptr @_ZZL17__itt_get_env_varPKcE8env_buff to i64), i64 4085), %i.fq
  call void (i32, ...) @_ZL18__itt_report_erroriz(i32 noundef 5, ptr noundef nonnull @.str.177, i64 noundef %i.fo, i64 noundef %i.fs), !inline_history !1
  br label %bb.as

bb.ar:                                            ; preds = %bb.at, %bb.ap
  %.lcssa81.i = phi ptr [ @_ZL11group_alias, %bb.ap ], [ getelementptr inbounds nuw (i8, ptr @_ZL11group_alias, i64 16), %bb.at ]
  %.lcssa79.i = phi ptr [ %i.al, %bb.ap ], [ %i.gc, %bb.at ]
  %.lcssa78.i = phi i64 [ %i.fo, %bb.ap ], [ %i.gd, %bb.at ] ; 2 uses
  %.lcssa77.i = phi ptr [ %i.fp, %bb.ap ], [ %i.ge, %bb.at ]
  %.lcssa.i = phi i64 [ %i.fq, %bb.ap ], [ %i.gf, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ft = sub i64 add (i64 ptrtoint (ptr @_ZZL17__itt_get_env_varPKcE8env_buff to i64), i64 4085), %.lcssa.i
  %i.fu = add nuw i64 %.lcssa78.i, 1
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 %i.fu)
  store volatile i64 %i.fv, ptr %i.a, align 8, !tbaa !34
  %.0..0..0..0..0..0..0..0..i48.i = load volatile i64, ptr %i.a, align 8, !tbaa !34
  %strncpy169 = call ptr @strncpy(ptr %.lcssa77.i, ptr nonnull %.lcssa79.i, i64 %.0..0..0..0..0..0..0..0..i48.i) ; 0 uses
  %i.fw = load ptr, ptr @_ZZL17__itt_get_env_varPKcE9env_value, align 8, !tbaa !77 ; 2 uses
  %.0..0..0..0..0..0..0..0.2.i49.i = load volatile i64, ptr %i.a, align 8, !tbaa !34
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.0..0..0..0..0..0..0..0.2.i49.i
  store i8 0, ptr %i.fx, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fy = getelementptr i8, ptr %i.fw, i64 %.lcssa78.i
  %i.fz = getelementptr i8, ptr %i.fy, i64 1
  store ptr %i.fz, ptr @_ZZL17__itt_get_env_varPKcE9env_value, align 8, !tbaa !77
  %i.ga = getelementptr inbounds nuw i8, ptr %.lcssa81.i, i64 8
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !129
  br label %_ZL16__itt_get_groupsv.exit

bb.as:                                            ; preds = %bb.aq, %_ZL17__itt_get_env_varPKc.exit.i
  %i.gc = call ptr @getenv(ptr noundef nonnull @.str.178) #17, !inline_history !1 ; 3 uses
  %.not29.i45.1.i = icmp eq ptr %i.gc, null
  br i1 %.not29.i45.1.i, label %_ZL16__itt_get_groupsv.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gc) #18, !inline_history !1 ; 3 uses
  %i.ge = load ptr, ptr @_ZZL17__itt_get_env_varPKcE9env_value, align 8, !tbaa !77 ; 2 uses
  %i.gf = ptrtoint ptr %i.ge to i64               ; 3 uses
  %i.gg = sub i64 add (i64 ptrtoint (ptr @_ZZL17__itt_get_env_varPKcE8env_buff to i64), i64 4086), %i.gf
  %.not30.i46.1.i = icmp ult i64 %i.gd, %i.gg
  br i1 %.not30.i46.1.i, label %bb.ar, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gh = sub i64 add (i64 ptrtoint (ptr @_ZZL17__itt_get_env_varPKcE8env_buff to i64), i64 4085), %i.gf
  call void (i32, ...) @_ZL18__itt_report_erroriz(i32 noundef 5, ptr noundef nonnull @.str.178, i64 noundef %i.gd, i64 noundef %i.gh), !inline_history !1
  br label %_ZL16__itt_get_groupsv.exit

_ZL16__itt_get_groupsv.exit:                      ; preds = %_ZL12__itt_fsplitPKcS0_PS0_Pi.exit.thread.i, %bb.ar, %bb.as, %bb.au
  %.030.i = phi i32 [ %spec.select.11.i, %_ZL12__itt_fsplitPKcS0_PS0_Pi.exit.thread.i ], [ %i.gb, %bb.ar ], [ 0, %bb.au ], [ 0, %bb.as ] ; 2 uses
  %i.gi = icmp ne ptr @dlopen, null
  %i.gj = icmp ne ptr @dlsym, null
  %or.cond14 = and i1 %i.gi, %i.gj
  %i.gk = icmp ne ptr @dlclose, null
  %or.cond15 = and i1 %i.gk, %or.cond14
  br i1 %or.cond15, label %bb.av, label %bb.bi

bb.av:                                            ; preds = %_ZL16__itt_get_groupsv.exit
  %i.gl = icmp ne i32 %.030.i, 0
  %i.gm = icmp ne ptr %.065, null                 ; 2 uses
  %or.cond17 = or i1 %i.gm, %i.gl
  br i1 %or.cond17, label %bb.aw, label %bb.bi

bb.aw:                                            ; preds = %bb.av
  %i.gn = select i1 %i.gm, ptr %.065, ptr @.str.179
  %i.go = call ptr @dlopen(ptr noundef nonnull %i.gn, i32 noundef 1) #17 ; 3 uses
  store ptr %i.go, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 96), align 8, !tbaa !69
  %.not80 = icmp eq ptr %i.go, null
  br i1 %.not80, label %bb.bh, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 160), align 8, !tbaa !78
  %i.gp = call fastcc noundef i32 @_ZL17__itt_lib_versionPv(ptr noundef nonnull %i.go)
  switch i32 %i.gp, label %default.unreachable152 [
    i32 0, label %bb.ay
    i32 1, label %bb.az
    i32 2, label %bb.bf
  ]

bb.ay:                                            ; preds = %bb.ax
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0 = phi i32 [ 1, %bb.ay ], [ %.030.i, %bb.ax ] ; 2 uses
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 120), align 8, !tbaa !70 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !73 ; 2 uses
  %.not82107 = icmp eq ptr %i.gr, null
  br i1 %.not82107, label %._crit_edge, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %bb.az
  %invariant.op = and i32 %.0, %1
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %bb.bd
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bd ], [ 0, %.lr.ph109.preheader ] ; 4 uses
  %i.gs = phi ptr [ %i.ht, %bb.bd ], [ %i.gr, %.lr.ph109.preheader ]
  %i.gt = phi ptr [ %i.hs, %bb.bd ], [ %i.gq, %.lr.ph109.preheader ] ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !130
  %.reass.reass = and i32 %i.gv, %invariant.op
  %.not83 = icmp eq i32 %.reass.reass, 0
  br i1 %.not83, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph109
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 96), align 8, !tbaa !69
  %i.gx = call ptr @dlsym(ptr noundef %i.gw, ptr noundef nonnull %i.gs) #17
  %i.gy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 120), align 8, !tbaa !70
  %i.gz = getelementptr inbounds nuw [40 x i8], ptr %i.gy, i64 %indvars.iv
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !75
  store ptr %i.gx, ptr %i.hb, align 8, !tbaa !28
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 120), align 8, !tbaa !70
  %i.hd = getelementptr inbounds nuw [40 x i8], ptr %i.hc, i64 %indvars.iv ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !75 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !28
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !74
  store ptr %i.hj, ptr %i.hf, align 8, !tbaa !28
  %i.hk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 120), align 8, !tbaa !70
  %i.hl = getelementptr inbounds nuw [40 x i8], ptr %i.hk, i64 %indvars.iv
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !73
  call void (i32, ...) @_ZL18__itt_report_erroriz(i32 noundef 2, ptr noundef %.065, ptr noundef %i.hm)
  br label %bb.bd

bb.bc:                                            ; preds = %.lr.ph109
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !74
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !75
  store ptr %i.ho, ptr %i.hq, align 8, !tbaa !28
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 120), align 8, !tbaa !70
  %i.hs = getelementptr inbounds nuw [40 x i8], ptr %i.hr, i64 %indvars.iv.next ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !73 ; 2 uses
  %.not82 = icmp eq ptr %i.ht, null
  br i1 %.not82, label %._crit_edge, label %.lr.ph109, !llvm.loop !124

._crit_edge:                                      ; preds = %bb.bd, %bb.az
  %i.hu = icmp eq i32 %.0, 1
  br i1 %i.hu, label %bb.be, label %_ZL26__itt_nullify_all_pointersv.exit93

bb.be:                                            ; preds = %._crit_edge
  %i.hv = load ptr, ptr @__itt_thr_ignore_ptr__3_0, align 8, !tbaa !28
  store ptr %i.hv, ptr @__itt_thread_ignore_ptr__3_0, align 8, !tbaa !28
  %i.hw = load ptr, ptr @__itt_sync_set_name_ptr__3_0, align 8, !tbaa !28
  store ptr %i.hw, ptr @__itt_sync_create_ptr__3_0, align 8, !tbaa !28
  %i.hx = load ptr, ptr @__itt_notify_sync_prepare_ptr__3_0, align 8, !tbaa !28
  store ptr %i.hx, ptr @__itt_sync_prepare_ptr__3_0, align 8, !tbaa !28
  %i.hy = load ptr, ptr @__itt_notify_sync_cancel_ptr__3_0, align 8, !tbaa !28
  store ptr %i.hy, ptr @__itt_sync_cancel_ptr__3_0, align 8, !tbaa !28
  %i.hz = load ptr, ptr @__itt_notify_sync_acquired_ptr__3_0, align 8, !tbaa !28
  store ptr %i.hz, ptr @__itt_sync_acquired_ptr__3_0, align 8, !tbaa !28
  %i.ia = load ptr, ptr @__itt_notify_sync_releasing_ptr__3_0, align 8, !tbaa !28
  store ptr %i.ia, ptr @__itt_sync_releasing_ptr__3_0, align 8, !tbaa !28
  br label %_ZL26__itt_nullify_all_pointersv.exit93

bb.bf:                                            ; preds = %bb.ax
  %i.ib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 96), align 8, !tbaa !69
  %i.ic = call ptr @dlsym(ptr noundef %i.ib, ptr noundef nonnull @.str.5) #17 ; 2 uses
  %.not81 = icmp eq ptr %i.ic, null
  br i1 %.not81, label %_ZL26__itt_nullify_all_pointersv.exit93, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void %i.ic(ptr noundef nonnull @__itt__ittapi_global, i32 noundef %1)
  br label %_ZL26__itt_nullify_all_pointersv.exit93

default.unreachable152:                           ; preds = %bb.ax
  unreachable

bb.bh:                                            ; preds = %bb.aw
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 160), align 8, !tbaa !78
  call fastcc void @_ZL30__itt_free_allocated_resourcesv()
  %i.id = load ptr, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 120), align 8, !tbaa !70 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !73
  %.not4.i = icmp eq ptr %i.ie, null
  br i1 %.not4.i, label %_ZL26__itt_nullify_all_pointersv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bh, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.bh ]
  %i.if = phi ptr [ %i.il, %.lr.ph.i ], [ %i.id, %bb.bh ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !74
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !75
  store ptr %i.ih, ptr %i.ij, align 8, !tbaa !28
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ik = load ptr, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 120), align 8, !tbaa !70
  %i.il = getelementptr inbounds nuw [40 x i8], ptr %i.ik, i64 %indvars.iv.next.i ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !73
  %.not.i87 = icmp eq ptr %i.im, null
  br i1 %.not.i87, label %_ZL26__itt_nullify_all_pointersv.exit, label %.lr.ph.i, !llvm.loop !0

_ZL26__itt_nullify_all_pointersv.exit:            ; preds = %.lr.ph.i, %bb.bh
  %i.in = call ptr @dlerror() #17
  call void (i32, ...) @_ZL18__itt_report_erroriz(i32 noundef 1, ptr noundef %.065, ptr noundef %i.in)
  br label %_ZL26__itt_nullify_all_pointersv.exit93

bb.bi:                                            ; preds = %bb.av, %_ZL16__itt_get_groupsv.exit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 160), align 8, !tbaa !78
  %i.io = load ptr, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 120), align 8, !tbaa !70 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !73
  %.not4.i88 = icmp eq ptr %i.ip, null
  br i1 %.not4.i88, label %_ZL26__itt_nullify_all_pointersv.exit93, label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %bb.bi, %.lr.ph.i89
  %indvars.iv.i90 = phi i64 [ %indvars.iv.next.i91, %.lr.ph.i89 ], [ 0, %bb.bi ]
  %i.iq = phi ptr [ %i.iw, %.lr.ph.i89 ], [ %i.io, %bb.bi ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !74
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !75
  store ptr %i.is, ptr %i.iu, align 8, !tbaa !28
  %indvars.iv.next.i91 = add nuw nsw i64 %indvars.iv.i90, 1 ; 2 uses
  %i.iv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 120), align 8, !tbaa !70
  %i.iw = getelementptr inbounds nuw [40 x i8], ptr %i.iv, i64 %indvars.iv.next.i91 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !73
  %.not.i92 = icmp eq ptr %i.ix, null
  br i1 %.not.i92, label %_ZL26__itt_nullify_all_pointersv.exit93, label %.lr.ph.i89, !llvm.loop !0

_ZL26__itt_nullify_all_pointersv.exit93:          ; preds = %.lr.ph.i89, %bb.bi, %bb.be, %._crit_edge, %bb.bg, %bb.bf, %_ZL26__itt_nullify_all_pointersv.exit
  store volatile i64 1, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 32), align 8, !tbaa !27
  store volatile i64 0, ptr @_ZZ17__itt_init_ittlibE14current_thread, align 8, !tbaa !34
  store volatile i64 0, ptr @_ZZ17__itt_init_ittlibE14current_thread, align 8, !tbaa !34
  br label %bb.bj

bb.bj:                                            ; preds = %bb.o, %_ZL26__itt_nullify_all_pointersv.exit93, %bb.n
  br i1 %or.cond6, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.iy = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 56)) #17 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk, %bb.a
  %i.iz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @__itt__ittapi_global, i64 120), align 8, !tbaa !70 ; 3 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !73
  %.not84110 = icmp eq ptr %i.ja, null
  br i1 %.not84110, label %._crit_edge114, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.bl, %bb.bn
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %bb.bn ], [ 0, %bb.bl ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [40 x i8], ptr %i.iz, i64 %indvars.iv127 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !75
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !28
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !74
  %.not85 = icmp eq ptr %i.je, %i.jg
  br i1 %.not85, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph113
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !130
  %i.jj = and i32 %i.ji, %1
  %.not86 = icmp eq i32 %i.jj, 0
  br i1 %.not86, label %bb.bn, label %._crit_edge114

bb.bn:                                            ; preds = %.lr.ph113, %bb.bm
end_hunk_0
