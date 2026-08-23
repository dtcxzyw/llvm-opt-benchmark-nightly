Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/bytecode?download=true
inline.NumInlined: 105
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 54
begin_hunk_0_@cli_bytecode_context_setparam_int:bb.a
  store i32 %i.al, ptr %i.at, align 4, !tbaa !117
  br label %bb.j

bb.i:                                             ; preds = %.split
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !40
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.g
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !117
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba
  store i64 %2, ptr %i.bb, align 8, !tbaa !124
  br label %bb.j

bb.j:                                             ; preds = %.split, %bb.f, %bb.g, %bb.h, %bb.i, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 3, %bb.b ], [ 3, %bb.d ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef i32 @cli_bytecode_context_setparam_ptr(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.6) #24
  ret i32 3
}

; Function Attrs: nounwind uwtable
define void @cli_sigperf_print() local_unnamed_addr #0 {
bb.a:
  %0 = alloca [64 x %struct.sigperf_elem], align 16 ; 7 uses
  %1 = alloca %union.ev_val, align 8              ; 5 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  %i.b = load i32, ptr @g_sigid, align 4, !tbaa !117
  %i.c = icmp ne i32 %i.b, 0
  %i.d = load ptr, ptr @g_sigevents, align 8
  %i.e = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.7) #24
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %0, i8 0, i64 2048, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.j
  %.03349 = phi i32 [ 0, %bb.c ], [ %.2, %bb.j ]  ; 3 uses
  %.03448 = phi i32 [ 0, %bb.c ], [ %.135, %bb.j ] ; 3 uses
  %.03647 = phi i32 [ 0, %bb.c ], [ %i.y, %bb.j ] ; 2 uses
  %.03746 = phi ptr [ %0, %bb.c ], [ %.138, %bb.j ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.f = load ptr, ptr @g_sigevents, align 8, !tbaa !125
  %i.g = shl nuw nsw i32 %.03647, 1               ; 3 uses
  %i.h = call ptr @cli_event_get_name(ptr noundef %i.f, i32 noundef %i.g) #24 ; 4 uses
  %i.i = load ptr, ptr @g_sigevents, align 8, !tbaa !125
  call void @cli_event_get(ptr noundef %i.i, i32 noundef %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.a) #24
  %i.j = load i32, ptr %i.a, align 4, !tbaa !117  ; 2 uses
  %.not43 = icmp eq i32 %i.j, 0
  %.not44 = icmp eq ptr %i.h, null                ; 2 uses
  br i1 %.not43, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %.not44, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.h) #24
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  br i1 %.not44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #26
  %i.l = trunc i64 %i.k to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.m = phi ptr [ %i.h, %bb.h ], [ @.str.9, %bb.g ]
  %.0 = phi i32 [ %i.l, %bb.h ], [ 0, %bb.g ]
  %spec.select = call i32 @llvm.smax.i32(i32 %.0, i32 %.03349)
  store ptr %i.m, ptr %.03746, align 8, !tbaa !126
  %i.n = load i64, ptr %1, align 8, !tbaa !123
  %i.o = getelementptr inbounds nuw i8, ptr %.03746, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !128
  %i.p = zext i32 %i.j to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.03746, i64 16
  store i64 %i.p, ptr %i.q, align 8, !tbaa !129
  %i.r = load ptr, ptr @g_sigevents, align 8, !tbaa !125
  %i.s = or disjoint i32 %i.g, 1
  call void @cli_event_get(ptr noundef %i.r, i32 noundef %i.s, ptr noundef nonnull %1, ptr noundef nonnull %i.a) #24
  %i.t = load i32, ptr %i.a, align 4, !tbaa !117
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.03746, i64 24
  store i64 %i.u, ptr %i.v, align 8, !tbaa !130
  %i.w = getelementptr inbounds nuw i8, ptr %.03746, i64 32
  %i.x = add nsw i32 %.03448, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.i
  %.138 = phi ptr [ %i.w, %bb.i ], [ %.03746, %bb.f ], [ %.03746, %bb.e ]
  %.135 = phi i32 [ %i.x, %bb.i ], [ %.03448, %bb.f ], [ %.03448, %bb.e ] ; 2 uses
  %.2 = phi i32 [ %spec.select, %bb.i ], [ %.03349, %bb.f ], [ %.03349, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.y = add nuw nsw i32 %.03647, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, 64
  br i1 %exitcond.not, label %bb.k, label %bb.d

bb.k:                                             ; preds = %bb.j
  %spec.store.select = call i32 @llvm.smax.i32(i32 %.2, i32 13) ; 3 uses
  %i.z = sext i32 %.135 to i64
  call void @cli_qsort(ptr noundef nonnull %0, i64 noundef %i.z, i64 noundef 32, ptr noundef nonnull @sigelem_comp) #24
  call void (ptr, ptr, ...) @cli_infomsg(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef %spec.store.select, ptr noundef nonnull @.str.11, i32 noundef 8, ptr noundef nonnull @.str.12, i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef 12, ptr noundef nonnull @.str.14, i32 noundef 9, ptr noundef nonnull @.str.15) #24
  call void (ptr, ptr, ...) @cli_infomsg(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef %spec.store.select, ptr noundef nonnull @.str.16, i32 noundef 8, ptr noundef nonnull @.str.17, i32 noundef 8, ptr noundef nonnull @.str.18, i32 noundef 12, ptr noundef nonnull @.str.19, i32 noundef 9, ptr noundef nonnull @.str.20) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 16, !tbaa !129 ; 2 uses
  %.not50 = icmp eq i64 %i.ab, 0
  br i1 %.not50, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %i.ac = phi i64 [ %i.an, %.lr.ph ], [ %i.ab, %bb.k ] ; 2 uses
  %.23951 = phi ptr [ %i.al, %.lr.ph ], [ %0, %bb.k ] ; 5 uses
  %i.ad = load ptr, ptr %.23951, align 8, !tbaa !126
  %i.ae = getelementptr inbounds nuw i8, ptr %.23951, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !130
  %i.ag = getelementptr inbounds nuw i8, ptr %.23951, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !128 ; 2 uses
  %i.ai = uitofp i64 %i.ah to double
  %i.aj = uitofp i64 %i.ac to double
  %i.ak = fdiv double %i.ai, %i.aj
  call void (ptr, ptr, ...) @cli_infomsg(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef %spec.store.select, ptr noundef %i.ad, i32 noundef 8, i64 noundef %i.ac, i32 noundef 8, i64 noundef %i.af, i32 noundef 12, i64 noundef %i.ah, i32 noundef 9, double noundef %i.ak) #24
  %i.al = getelementptr inbounds nuw i8, ptr %.23951, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %.23951, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !129 ; 2 uses
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.k, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  ret void
}

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare ptr @cli_event_get_name(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cli_event_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare void @cli_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @sigelem_comp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !129
  %i.e = udiv i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !129
  %i.j = udiv i64 %i.g, %i.i
  %i.k = sub i64 %i.e, %i.j
  %i.l = trunc i64 %i.k to i32
  ret i32 %i.l
}

declare void @cli_infomsg(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @cli_sigperf_events_destroy() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @g_sigevents, align 8, !tbaa !125
  tail call void @cli_events_free(ptr noundef %i.a) #24
  ret void
}

declare void @cli_events_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 23) i32 @cli_bytecode_load(ptr noundef initializes((0, 200)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 49 uses
  %i.b = alloca i32, align 4                      ; 49 uses
  %.sroa.38.i = alloca [3 x i8], align 1          ; 5 uses
  %.sroa.88.i = alloca [5 x i8], align 1          ; 5 uses
  %i.c = alloca i8, align 1                       ; 10 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i8, align 1                       ; 6 uses
  %i.g = alloca i8, align 1                       ; 14 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 12 uses
  %i.j = alloca i8, align 1                       ; 15 uses
  %i.k = alloca i32, align 4                      ; 11 uses
  %i.l = alloca i8, align 1                       ; 11 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i8, align 1                       ; 35 uses
  %i.p = alloca i32, align 4                      ; 25 uses
  %i.q = alloca ptr, align 8                      ; 6 uses
  %i.r = alloca [8192 x i8], align 16             ; 50 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %.not = icmp eq i32 %3, 0
  %i.s = select i1 %.not, ptr @.str.24, ptr @.str.23
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.s) #24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %3, ptr %i.t, align 8, !tbaa !131
  %i.u = icmp ne ptr %1, null
  %i.v = icmp ne ptr %2, null
  %or.cond = or i1 %i.u, %i.v
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.25) #24
  br label %bb.qb

bb.c:                                             ; preds = %bb.a
  %i.w = call ptr @cli_dbgets(ptr noundef nonnull %i.r, i32 noundef 8192, ptr noundef %1, ptr noundef %2) #24
  %.not121 = icmp eq ptr %i.w, null
  br i1 %.not121, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.26) #24
  br label %bb.qb

bb.e:                                             ; preds = %bb.c
  %i.x = call i32 @cli_chomp(ptr noundef nonnull %i.r) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #24
  store i8 1, ptr %i.o, align 1, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #24
  %i.y = load i32, ptr %i.r, align 16
  %i.z = xor i32 %i.y, 1835101251
  %i.aa = getelementptr i8, ptr %i.r, i64 4
  %i.ab = load i16, ptr %i.aa, align 4
  %i.ac = zext i16 %i.ab to i32
  %i.ad = xor i32 %i.ac, 17218
  %i.ae = or i32 %i.z, %i.ad
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %.not82.i = icmp eq i32 %i.ag, 0
  br i1 %.not82.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.270) #24
  br label %bb.cf

bb.g:                                             ; preds = %bb.e
  %i.ah = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #26
  %i.ai = trunc i64 %i.ah to i32                  ; 13 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !123
  %.fr4218 = freeze i8 %i.ak                      ; 3 uses
  %i.al = zext i8 %.fr4218 to i32                 ; 3 uses
  %i.am = add i8 %.fr4218, -113
  %i.an = icmp ult i8 %i.am, -17
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.al) #24
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.ao = add nsw i32 %i.al, -89                  ; 4 uses
  %i.ap = icmp ugt i32 %i.ao, %i.ai
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.aq = icmp eq i8 %.fr4218, 96
  br i1 %i.aq, label %.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.k
  %i.ar = zext i32 %i.ao to i64                   ; 2 uses
  %i.as = add nsw i64 %i.ar, -7                   ; 3 uses
  %xtraiter = and i64 %i.as, 1
  %i.at = icmp eq i32 %i.ao, 8
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.preheader.i.new

.lr.ph.i.preheader.i.new:                         ; preds = %.lr.ph.i.preheader.i
  %unroll_iter = and i64 %i.as, -2
  br label %.lr.ph.i.i

.thread.i:                                        ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.au, align 8, !tbaa !133
  br label %bb.o

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.preheader.i.new
  %indvars.iv254.i = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %indvars.iv.next255.i.1, %bb.l ] ; 3 uses
  %indvars.iv.i = phi i64 [ 7, %.lr.ph.i.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.l ] ; 3 uses
  %.03545.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %i.bk, %bb.l ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.i.new ], [ %niter.next.1, %bb.l ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !123 ; 2 uses
  %i.ax = zext i8 %i.aw to i64                    ; 2 uses
  %i.ay = and i64 %i.ax, 240
  %.not.i.i = icmp eq i64 %i.ay, 96
  br i1 %.not.i.i, label %.lr.ph.i.i.1, label %.thread.i.i, !prof !134

.thread.i.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.epil.preheader
  %.lcssa3957 = phi i8 [ %i.bn, %.lr.ph.i.i.epil.preheader ], [ %i.aw, %.lr.ph.i.i ], [ %i.bc, %.lr.ph.i.i.1 ]
  %i.az = sext i8 %.lcssa3957 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.az) #24
  br label %bb.m

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !123 ; 2 uses
  %i.bd = zext i8 %i.bc to i64                    ; 2 uses
  %i.be = and i64 %i.bd, 240
  %.not.i.i.1 = icmp eq i64 %i.be, 96
  br i1 %.not.i.i.1, label %bb.l, label %.thread.i.i, !prof !134

bb.l:                                             ; preds = %.lr.ph.i.i.1
  %indvars.iv.next255.i = or disjoint i64 %indvars.iv254.i, 4
  %i.bf = and i64 %i.ax, 15
  %i.bg = shl i64 %i.bf, %indvars.iv254.i
  %i.bh = or i64 %i.bg, %.03545.i.i
  %i.bi = and i64 %i.bd, 15
  %i.bj = shl i64 %i.bi, %indvars.iv.next255.i
  %i.bk = or i64 %i.bj, %i.bh                     ; 3 uses
  %indvars.iv.next255.i.1 = add nuw nsw i64 %indvars.iv254.i, 8 ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.lr.ph.i.i

bb.m:                                             ; preds = %.thread.i.i, %bb.j, %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.bl, align 8, !tbaa !133
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.271) #24
  br label %bb.cf

.unr-lcssa:                                       ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.n, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.unr-lcssa, %.lr.ph.i.preheader.i
  %indvars.iv254.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %indvars.iv.next255.i.1, %.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 7, %.lr.ph.i.preheader.i ], [ %indvars.iv.next.i.1, %.unr-lcssa ]
  %.03545.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %i.bk, %.unr-lcssa ]
  %lcmp.mod3961 = trunc i64 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod3961)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i.epil.init
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !123 ; 2 uses
  %i.bo = zext i8 %i.bn to i64                    ; 2 uses
  %i.bp = and i64 %i.bo, 240
  %.not.i.i.epil = icmp eq i64 %i.bp, 96
  br i1 %.not.i.i.epil, label %.epilog-lcssa, label %.thread.i.i, !prof !134

.epilog-lcssa:                                    ; preds = %.lr.ph.i.i.epil.preheader
  %i.bq = and i64 %i.bo, 15
  %i.br = shl i64 %i.bq, %indvars.iv254.i.epil.init
  %i.bs = or i64 %i.br, %.03545.i.i.epil.init
  br label %bb.n

bb.n:                                             ; preds = %.unr-lcssa, %.epilog-lcssa
  %.lcssa3959 = phi i64 [ %i.bk, %.unr-lcssa ], [ %i.bs, %.epilog-lcssa ]
  %i.bt = trunc i64 %.lcssa3959 to i32            ; 3 uses
  store i32 %i.ao, ptr %i.p, align 4, !tbaa !117
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !133
  %i.bv = and i32 %i.bt, -2
  %switch.i = icmp eq i32 %i.bv, 6
  br i1 %switch.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i
  %.2.i315.i = phi i32 [ 0, %.thread.i ], [ %i.bt, %bb.n ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.272, i32 noundef %.2.i315.i, i32 noundef 7) #24
  br label %bb.cc

bb.p:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ar
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !123 ; 2 uses
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = add nsw i32 %i.by, -96                  ; 3 uses
  %i.ca = icmp ugt i32 %i.bz, 16
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
end_hunk_0
begin_hunk_1_@cli_bytecode_load:bb.a

.lr.ph.i101.preheader.i:                          ; preds = %bb.ij
  %i.bam = zext i32 %i.bah to i64                 ; 2 uses
  %i.ban = zext nneg i32 %i.baf to i64            ; 2 uses
  %xtraiter4117 = and i64 %i.ban, 1
  %i.bao = icmp eq i32 %i.baf, 1
  br i1 %i.bao, label %.lr.ph.i101.i.epil.preheader, label %.lr.ph.i101.preheader.i.new

.lr.ph.i101.preheader.i.new:                      ; preds = %.lr.ph.i101.preheader.i
  %unroll_iter4121 = and i64 %i.ban, 30
  br label %.lr.ph.i101.i

.lr.ph.i101.i:                                    ; preds = %bb.ik, %.lr.ph.i101.preheader.i.new
  %indvars.iv163.i = phi i64 [ %i.bam, %.lr.ph.i101.preheader.i.new ], [ %indvars.iv.next164.i.1, %bb.ik ] ; 3 uses
  %.03346.i103.i = phi i32 [ 0, %.lr.ph.i101.preheader.i.new ], [ %i.bbi, %bb.ik ] ; 3 uses
  %.03545.i104.i = phi i64 [ 0, %.lr.ph.i101.preheader.i.new ], [ %i.bbh, %bb.ik ]
  %niter4122 = phi i64 [ 0, %.lr.ph.i101.preheader.i.new ], [ %niter4122.next.1, %bb.ik ]
  %i.bap = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv163.i
  %i.baq = load i8, ptr %i.bap, align 1, !tbaa !123 ; 2 uses
  %i.bar = zext i8 %i.baq to i64                  ; 2 uses
  %i.bas = and i64 %i.bar, 240
  %.not.i105.i231 = icmp eq i64 %i.bas, 96
  br i1 %.not.i105.i231, label %.lr.ph.i101.i.1, label %.thread.i106.i, !prof !134

.thread.i106.i:                                   ; preds = %.lr.ph.i101.i.epil.preheader, %.lr.ph.i101.i, %.lr.ph.i101.i.1
  %.lcssa3696 = phi i8 [ %i.baw, %.lr.ph.i101.i.1 ], [ %i.baq, %.lr.ph.i101.i ], [ %i.bbk, %.lr.ph.i101.i.epil.preheader ]
  %i.bat = sext i8 %.lcssa3696 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bat) #24
  br label %readNumber.exit109.i.thread

.lr.ph.i101.i.1:                                  ; preds = %.lr.ph.i101.i
  %i.bau = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv163.i
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bau, i64 1
  %i.baw = load i8, ptr %i.bav, align 1, !tbaa !123 ; 2 uses
  %i.bax = zext i8 %i.baw to i64                  ; 2 uses
  %i.bay = and i64 %i.bax, 240
  %.not.i105.i231.1 = icmp eq i64 %i.bay, 96
  br i1 %.not.i105.i231.1, label %bb.ik, label %.thread.i106.i, !prof !134

bb.ik:                                            ; preds = %.lr.ph.i101.i.1
  %i.baz = or disjoint i32 %.03346.i103.i, 4
  %i.bba = and i64 %i.bar, 15
  %i.bbb = zext nneg i32 %.03346.i103.i to i64
  %i.bbc = shl i64 %i.bba, %i.bbb
  %i.bbd = or i64 %i.bbc, %.03545.i104.i
  %i.bbe = and i64 %i.bax, 15
  %i.bbf = zext nneg i32 %i.baz to i64
  %i.bbg = shl i64 %i.bbe, %i.bbf
  %i.bbh = or i64 %i.bbg, %i.bbd                  ; 3 uses
  %i.bbi = add i32 %.03346.i103.i, 8              ; 2 uses
  %indvars.iv.next164.i.1 = add nuw nsw i64 %indvars.iv163.i, 2 ; 2 uses
  %niter4122.next.1 = add i64 %niter4122, 2       ; 2 uses
  %niter4122.ncmp.1 = icmp eq i64 %niter4122.next.1, %unroll_iter4121
  br i1 %niter4122.ncmp.1, label %._crit_edge.i98.loopexit.i.unr-lcssa, label %.lr.ph.i101.i

._crit_edge.i98.loopexit.i.unr-lcssa:             ; preds = %bb.ik
  %lcmp.mod4118.not = icmp eq i64 %xtraiter4117, 0
  br i1 %lcmp.mod4118.not, label %._crit_edge.i98.loopexit.i, label %.lr.ph.i101.i.epil.preheader

.lr.ph.i101.i.epil.preheader:                     ; preds = %._crit_edge.i98.loopexit.i.unr-lcssa, %.lr.ph.i101.preheader.i
  %indvars.iv163.i.epil.init = phi i64 [ %i.bam, %.lr.ph.i101.preheader.i ], [ %indvars.iv.next164.i.1, %._crit_edge.i98.loopexit.i.unr-lcssa ]
  %.03346.i103.i.epil.init = phi i32 [ 0, %.lr.ph.i101.preheader.i ], [ %i.bbi, %._crit_edge.i98.loopexit.i.unr-lcssa ]
  %.03545.i104.i.epil.init = phi i64 [ 0, %.lr.ph.i101.preheader.i ], [ %i.bbh, %._crit_edge.i98.loopexit.i.unr-lcssa ]
  %lcmp.mod4120 = trunc i8 %.fr4268 to i1
  call void @llvm.assume(i1 %lcmp.mod4120)
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv163.i.epil.init
  %i.bbk = load i8, ptr %i.bbj, align 1, !tbaa !123 ; 2 uses
  %i.bbl = zext i8 %i.bbk to i64                  ; 2 uses
  %i.bbm = and i64 %i.bbl, 240
  %.not.i105.i231.epil = icmp eq i64 %i.bbm, 96
  br i1 %.not.i105.i231.epil, label %._crit_edge.i98.loopexit.i.epilog-lcssa, label %.thread.i106.i, !prof !134

._crit_edge.i98.loopexit.i.epilog-lcssa:          ; preds = %.lr.ph.i101.i.epil.preheader
  %i.bbn = and i64 %i.bbl, 15
  %i.bbo = zext nneg i32 %.03346.i103.i.epil.init to i64
  %i.bbp = shl i64 %i.bbn, %i.bbo
  %i.bbq = or i64 %i.bbp, %.03545.i104.i.epil.init
  br label %._crit_edge.i98.loopexit.i

._crit_edge.i98.loopexit.i:                       ; preds = %._crit_edge.i98.loopexit.i.unr-lcssa, %._crit_edge.i98.loopexit.i.epilog-lcssa
  %.lcssa3698 = phi i64 [ %i.bbh, %._crit_edge.i98.loopexit.i.unr-lcssa ], [ %i.bbq, %._crit_edge.i98.loopexit.i.epilog-lcssa ]
  %i.bbr = trunc i64 %.lcssa3698 to i32
  br label %readNumber.exit109.i

readNumber.exit109.i.thread:                      ; preds = %bb.ig, %bb.ii, %.thread.i106.i
  store i32 0, ptr %i.baa, align 8, !tbaa !169
  br label %.loopexit

readNumber.exit109.i:                             ; preds = %._crit_edge.i98.loopexit.i, %bb.ij
  %.2.i100.i = phi i32 [ 0, %bb.ij ], [ %i.bbr, %._crit_edge.i98.loopexit.i ]
  store i32 %i.bai, ptr %i.e, align 4, !tbaa !117
  store i32 %.2.i100.i, ptr %i.baa, align 8, !tbaa !169
  br label %bb.il

.thread343:                                       ; preds = %bb.ib, %bb.id, %.thread.i93.i
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.ayp, i64 16
  store i64 0, ptr %i.bbs, align 8, !tbaa !170
  br label %.loopexit

._crit_edge.i85.i.loopexit.unr-lcssa:             ; preds = %bb.if
  %lcmp.mod4108.not = icmp eq i64 %xtraiter4107, 0
  br i1 %lcmp.mod4108.not, label %._crit_edge.i85.i, label %.lr.ph.i88.i.epil.preheader

.lr.ph.i88.i.epil.preheader:                      ; preds = %._crit_edge.i85.i.loopexit.unr-lcssa, %.lr.ph.i88.preheader.i
  %indvars.iv160.i.epil.init = phi i64 [ %i.azb, %.lr.ph.i88.preheader.i ], [ %indvars.iv.next161.i.1, %._crit_edge.i85.i.loopexit.unr-lcssa ]
  %.03346.i90.i.epil.init = phi i32 [ 0, %.lr.ph.i88.preheader.i ], [ %i.azx, %._crit_edge.i85.i.loopexit.unr-lcssa ]
  %.03545.i91.i.epil.init = phi i64 [ 0, %.lr.ph.i88.preheader.i ], [ %i.azw, %._crit_edge.i85.i.loopexit.unr-lcssa ]
  %lcmp.mod4110 = trunc i8 %.fr4265 to i1
  call void @llvm.assume(i1 %lcmp.mod4110)
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv160.i.epil.init
  %i.bbu = load i8, ptr %i.bbt, align 1, !tbaa !123 ; 2 uses
  %i.bbv = zext i8 %i.bbu to i64                  ; 2 uses
  %i.bbw = and i64 %i.bbv, 240
  %.not.i92.i.epil = icmp eq i64 %i.bbw, 96
  br i1 %.not.i92.i.epil, label %._crit_edge.i85.i.loopexit.epilog-lcssa, label %.thread.i93.i, !prof !134

._crit_edge.i85.i.loopexit.epilog-lcssa:          ; preds = %.lr.ph.i88.i.epil.preheader
  %i.bbx = and i64 %i.bbv, 15
  %i.bby = zext nneg i32 %.03346.i90.i.epil.init to i64
  %i.bbz = shl i64 %i.bbx, %i.bby
  %i.bca = or i64 %i.bbz, %.03545.i91.i.epil.init
  br label %._crit_edge.i85.i

._crit_edge.i85.i:                                ; preds = %._crit_edge.i85.i.loopexit.epilog-lcssa, %._crit_edge.i85.i.loopexit.unr-lcssa, %bb.ie
  %.2.i87.i = phi i64 [ 0, %bb.ie ], [ %i.azw, %._crit_edge.i85.i.loopexit.unr-lcssa ], [ %i.bca, %._crit_edge.i85.i.loopexit.epilog-lcssa ]
  store i32 %i.ayx, ptr %i.e, align 4, !tbaa !117
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.ayp, i64 16
  store i64 %.2.i87.i, ptr %i.bcb, align 8, !tbaa !170
  br label %bb.il

bb.il:                                            ; preds = %readNumber.exit109.i, %._crit_edge.i85.i, %bb.ht
  %i.bcc = phi i32 [ %.pre.i232, %bb.ht ], [ %i.ayx, %._crit_edge.i85.i ], [ %i.bai, %readNumber.exit109.i ] ; 2 uses
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 2 uses
  %exitcond.not.i229 = icmp eq i64 %indvars.iv.next167.i, %i.awj
  br i1 %exitcond.not.i229, label %._crit_edge.i230, label %.lr.ph.i228

._crit_edge.i230:                                 ; preds = %bb.il, %.preheader.i226
  %i.bcd = phi i32 [ %i.auu, %.preheader.i226 ], [ %i.bcc, %bb.il ]
  %indvars.iv.next170.i = add nuw nsw i64 %indvars.iv169.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next170.i, %wide.trip.count172.i
  br i1 %exitcond173.not.i, label %parseMD.exit, label %.lr.ph130.i

parseMD.exit:                                     ; preds = %._crit_edge.i230, %.preheader112.i
  %i.bce = load i32, ptr %i.st, align 8, !tbaa !149
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.320, i32 noundef %i.bce) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.bcf = call ptr @cli_dbgets(ptr noundef nonnull %i.sj, i32 noundef %.2307315, ptr noundef %1, ptr noundef %2) #24
  %.not1261102.jt4.not = icmp eq ptr %i.bcf, null
  br i1 %.not1261102.jt4.not, label %.critedge, label %.lr.ph3166

.loopexit:                                        ; preds = %readNumber.exit.i224, %._crit_edge.i59.i, %bb.ht, %readNumber.exit109.i.thread, %bb.hm, %bb.hs, %readNumber.exit83.thread.i, %.thread343
  %.2.i215.ph = phi i32 [ 4, %readNumber.exit109.i.thread ], [ 4, %bb.hm ], [ 4, %.thread343 ], [ 4, %readNumber.exit83.thread.i ], [ 4, %bb.hs ], [ 20, %._crit_edge.i59.i ], [ 4, %bb.ht ], [ 20, %readNumber.exit.i224 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.28, i32 noundef %i.tp) #24
  call void @free(ptr noundef nonnull %i.sj) #24
  br label %bb.qb

.lr.ph3168:                                       ; preds = %.lr.ph3166, %thread-pre-split
  %i.bcg = phi i8 [ %.pr, %thread-pre-split ], [ %i.tq, %.lr.ph3166 ] ; 2 uses
  %.0103.ph111821023167 = phi i32 [ %i.cjy, %thread-pre-split ], [ 0, %.lr.ph3166 ] ; 6 uses
  %i.bch = phi i32 [ %i.tl, %thread-pre-split ], [ %i.tp, %.lr.ph3166 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.bci = load i32, ptr %i.sq, align 4, !tbaa !98 ; 2 uses
  %.not.i233 = icmp ult i32 %.0103.ph111821023167, %i.bci
  br i1 %.not.i233, label %bb.in, label %bb.im

bb.im:                                            ; preds = %.lr.ph3168
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.321, i32 noundef %.0103.ph111821023167, i32 noundef %i.bci) #24
  br label %bb.kc

bb.in:                                            ; preds = %.lr.ph3168
  %i.bcj = load ptr, ptr %i.sp, align 8, !tbaa !105
  %i.bck = zext i32 %.0103.ph111821023167 to i64
  %i.bcl = getelementptr inbounds nuw [72 x i8], ptr %i.bcj, i64 %i.bck ; 16 uses
  %i.bcm = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.sj) #26
  %i.bcn = trunc i64 %i.bcm to i32                ; 7 uses
  %.not65.i = icmp eq i8 %i.bcg, 65
  br i1 %.not65.i, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.bco = zext i8 %i.bcg to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.322, i32 noundef %i.bco) #24
  br label %bb.kc

bb.ip:                                            ; preds = %bb.in
  %i.bcp = icmp ult i32 %i.bcn, 2
  br i1 %i.bcp, label %bb.iq, label %.lr.ph.i.preheader.i234

.lr.ph.i.preheader.i234:                          ; preds = %bb.ip
  %i.bcq = load i8, ptr %i.sl, align 1, !tbaa !123 ; 2 uses
  %i.bcr = zext i8 %i.bcq to i32                  ; 2 uses
  %i.bcs = and i32 %i.bcr, 240
  %.not.i.i235 = icmp eq i32 %i.bcs, 96
  br i1 %.not.i.i235, label %._crit_edge.i.i263, label %bb.ir, !prof !134

bb.iq:                                            ; preds = %bb.ip
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.288) #24
  br label %readFixedNumber.exit.i236

bb.ir:                                            ; preds = %.lr.ph.i.preheader.i234
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bcr) #24
  store i8 0, ptr %i.c, align 1, !tbaa !132
  br label %readFixedNumber.exit.i236

._crit_edge.i.i263:                               ; preds = %.lr.ph.i.preheader.i234
  %i.bct = and i8 %i.bcq, 15
  store i32 2, ptr %i.d, align 4, !tbaa !117
  br label %readFixedNumber.exit.i236

readFixedNumber.exit.i236:                        ; preds = %._crit_edge.i.i263, %bb.ir, %bb.iq
  %i.bcu = phi i1 [ false, %bb.iq ], [ false, %bb.ir ], [ true, %._crit_edge.i.i263 ] ; 3 uses
  %i.bcv = phi i32 [ 1, %bb.iq ], [ 1, %bb.ir ], [ 2, %._crit_edge.i.i263 ] ; 5 uses
  %.2.i.i237 = phi i8 [ 0, %bb.iq ], [ 0, %bb.ir ], [ %i.bct, %._crit_edge.i.i263 ]
  store i8 %.2.i.i237, ptr %i.bcl, align 8, !tbaa !108
  %i.bcw = zext nneg i32 %i.bcv to i64            ; 2 uses
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bcw
  %i.bcy = load i8, ptr %i.bcx, align 1, !tbaa !123
  %i.bcz = zext i8 %i.bcy to i32                  ; 2 uses
  %i.bda = add nsw i32 %i.bcz, -96                ; 3 uses
  %i.bdb = icmp ugt i32 %i.bda, 16
  br i1 %i.bdb, label %bb.is, label %bb.it

bb.is:                                            ; preds = %readFixedNumber.exit.i236
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.bcz) #24
  br label %readNumber.exit.i.i244

bb.it:                                            ; preds = %readFixedNumber.exit.i236
  %i.bdc = add nuw nsw i32 %i.bcv, 1              ; 2 uses
  %i.bdd = add nuw nsw i32 %i.bda, %i.bdc         ; 5 uses
  %i.bde = icmp ugt i32 %i.bdd, %i.bcn
  br i1 %i.bde, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %readNumber.exit.i.i244

bb.iv:                                            ; preds = %bb.it
  %.not175.i = icmp eq i32 %i.bda, 0
  br i1 %.not175.i, label %readNumber.exit.i.i244, label %.lr.ph.i.preheader.i.i238

.lr.ph.i.preheader.i.i238:                        ; preds = %bb.iv
  %i.bdf = zext nneg i32 %i.bdc to i64            ; 2 uses
  %i.bdg = zext nneg i32 %i.bdd to i64
  %i.bdh = xor i64 %i.bcw, -1
  %i.bdi = add nsw i64 %i.bdh, %i.bdg
  %i.bdj = freeze i64 %i.bdi                      ; 4 uses
  %xtraiter4127 = and i64 %i.bdj, 1
  %i.bdk = icmp eq i64 %i.bdj, 1
  br i1 %i.bdk, label %.lr.ph.i.i.i239.epil.preheader, label %.lr.ph.i.preheader.i.i238.new

.lr.ph.i.preheader.i.i238.new:                    ; preds = %.lr.ph.i.preheader.i.i238
  %unroll_iter4131 = and i64 %i.bdj, -2
  br label %.lr.ph.i.i.i239

.lr.ph.i.i.i239:                                  ; preds = %bb.iw, %.lr.ph.i.preheader.i.i238.new
  %indvars.iv.i74.i = phi i64 [ %i.bdf, %.lr.ph.i.preheader.i.i238.new ], [ %indvars.iv.next.i75.i.1, %bb.iw ] ; 3 uses
  %.03346.i.i.i240 = phi i32 [ 0, %.lr.ph.i.preheader.i.i238.new ], [ %i.bee, %bb.iw ] ; 3 uses
  %.03545.i.i.i241 = phi i64 [ 0, %.lr.ph.i.preheader.i.i238.new ], [ %i.bed, %bb.iw ]
  %niter4132 = phi i64 [ 0, %.lr.ph.i.preheader.i.i238.new ], [ %niter4132.next.1, %bb.iw ]
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i74.i
  %i.bdm = load i8, ptr %i.bdl, align 1, !tbaa !123 ; 2 uses
  %i.bdn = zext i8 %i.bdm to i64                  ; 2 uses
  %i.bdo = and i64 %i.bdn, 240
  %.not.i.i.i242 = icmp eq i64 %i.bdo, 96
  br i1 %.not.i.i.i242, label %.lr.ph.i.i.i239.1, label %.thread.i.i.i243, !prof !134

.thread.i.i.i243:                                 ; preds = %.lr.ph.i.i.i239, %.lr.ph.i.i.i239.1, %.lr.ph.i.i.i239.epil.preheader
  %.lcssa = phi i8 [ %i.beg, %.lr.ph.i.i.i239.epil.preheader ], [ %i.bdm, %.lr.ph.i.i.i239 ], [ %i.bds, %.lr.ph.i.i.i239.1 ]
  %i.bdp = sext i8 %.lcssa to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bdp) #24
  br label %readNumber.exit.i.i244

.lr.ph.i.i.i239.1:                                ; preds = %.lr.ph.i.i.i239
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i74.i
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 1
  %i.bds = load i8, ptr %i.bdr, align 1, !tbaa !123 ; 2 uses
  %i.bdt = zext i8 %i.bds to i64                  ; 2 uses
  %i.bdu = and i64 %i.bdt, 240
  %.not.i.i.i242.1 = icmp eq i64 %i.bdu, 96
  br i1 %.not.i.i.i242.1, label %bb.iw, label %.thread.i.i.i243, !prof !134

bb.iw:                                            ; preds = %.lr.ph.i.i.i239.1
  %i.bdv = or disjoint i32 %.03346.i.i.i240, 4
  %i.bdw = and i64 %i.bdn, 15
  %i.bdx = zext nneg i32 %.03346.i.i.i240 to i64
  %i.bdy = shl i64 %i.bdw, %i.bdx
  %i.bdz = or i64 %i.bdy, %.03545.i.i.i241
  %i.bea = and i64 %i.bdt, 15
  %i.beb = zext nneg i32 %i.bdv to i64
  %i.bec = shl i64 %i.bea, %i.beb
  %i.bed = or i64 %i.bec, %i.bdz                  ; 3 uses
  %i.bee = add i32 %.03346.i.i.i240, 8            ; 2 uses
  %indvars.iv.next.i75.i.1 = add nuw nsw i64 %indvars.iv.i74.i, 2 ; 2 uses
  %niter4132.next.1 = add i64 %niter4132, 2       ; 2 uses
  %niter4132.ncmp.1 = icmp eq i64 %niter4132.next.1, %unroll_iter4131
  br i1 %niter4132.ncmp.1, label %readNumber.exit.i.i244.loopexit.unr-lcssa, label %.lr.ph.i.i.i239

readNumber.exit.i.i244.loopexit.unr-lcssa:        ; preds = %bb.iw
  %lcmp.mod4128.not = icmp eq i64 %xtraiter4127, 0
  br i1 %lcmp.mod4128.not, label %readNumber.exit.i.i244, label %.lr.ph.i.i.i239.epil.preheader

.lr.ph.i.i.i239.epil.preheader:                   ; preds = %readNumber.exit.i.i244.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i238
  %indvars.iv.i74.i.epil.init = phi i64 [ %i.bdf, %.lr.ph.i.preheader.i.i238 ], [ %indvars.iv.next.i75.i.1, %readNumber.exit.i.i244.loopexit.unr-lcssa ]
  %.03346.i.i.i240.epil.init = phi i32 [ 0, %.lr.ph.i.preheader.i.i238 ], [ %i.bee, %readNumber.exit.i.i244.loopexit.unr-lcssa ]
  %.03545.i.i.i241.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i238 ], [ %i.bed, %readNumber.exit.i.i244.loopexit.unr-lcssa ]
  %lcmp.mod4130 = trunc i64 %i.bdj to i1
  call void @llvm.assume(i1 %lcmp.mod4130)
  %i.bef = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i74.i.epil.init
  %i.beg = load i8, ptr %i.bef, align 1, !tbaa !123 ; 2 uses
  %i.beh = zext i8 %i.beg to i64                  ; 2 uses
  %i.bei = and i64 %i.beh, 240
  %.not.i.i.i242.epil = icmp eq i64 %i.bei, 96
  br i1 %.not.i.i.i242.epil, label %readNumber.exit.i.i244.loopexit.epilog-lcssa, label %.thread.i.i.i243, !prof !134

readNumber.exit.i.i244.loopexit.epilog-lcssa:     ; preds = %.lr.ph.i.i.i239.epil.preheader
  %i.bej = and i64 %i.beh, 15
  %i.bek = zext nneg i32 %.03346.i.i.i240.epil.init to i64
  %i.bel = shl i64 %i.bej, %i.bek
  %i.bem = or i64 %i.bel, %.03545.i.i.i241.epil.init
  br label %readNumber.exit.i.i244

readNumber.exit.i.i244:                           ; preds = %readNumber.exit.i.i244.loopexit.epilog-lcssa, %readNumber.exit.i.i244.loopexit.unr-lcssa, %.thread.i.i.i243, %bb.iv, %bb.iu, %bb.is
  %i.ben = phi i1 [ false, %bb.is ], [ false, %bb.iu ], [ %i.bcu, %bb.iv ], [ false, %.thread.i.i.i243 ], [ %i.bcu, %readNumber.exit.i.i244.loopexit.unr-lcssa ], [ %i.bcu, %readNumber.exit.i.i244.loopexit.epilog-lcssa ]
  %i.beo = phi i32 [ %i.bcv, %bb.is ], [ %i.bcv, %bb.iu ], [ %i.bdd, %bb.iv ], [ %i.bcv, %.thread.i.i.i243 ], [ %i.bdd, %readNumber.exit.i.i244.loopexit.unr-lcssa ], [ %i.bdd, %readNumber.exit.i.i244.loopexit.epilog-lcssa ] ; 3 uses
  %.2.i.i.i245 = phi i64 [ 0, %bb.is ], [ 0, %bb.iu ], [ 0, %bb.iv ], [ 0, %.thread.i.i.i243 ], [ %i.bed, %readNumber.exit.i.i244.loopexit.unr-lcssa ], [ %i.bem, %readNumber.exit.i.i244.loopexit.epilog-lcssa ] ; 3 uses
  %i.bep = load i32, ptr %i.sr, align 8, !tbaa !145
  %i.beq = load i16, ptr %i.ss, align 4, !tbaa !154
  %i.ber = zext i16 %i.beq to i32
  %i.bes = add i32 %i.bep, %i.ber
  %i.bet = zext i32 %i.bes to i64
  %.not.i73.i246 = icmp ult i64 %.2.i.i.i245, %i.bet
  br i1 %.not.i73.i246, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %readNumber.exit.i.i244
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.297, i64 noundef %.2.i.i.i245) #24
  br label %readTypeID.exit.i247

bb.iy:                                            ; preds = %readNumber.exit.i.i244
  %i.beu = trunc i64 %.2.i.i.i245 to i16
  br label %readTypeID.exit.i247

readTypeID.exit.i247:                             ; preds = %bb.iy, %bb.ix
  %i.bev = phi i1 [ false, %bb.ix ], [ %i.ben, %bb.iy ] ; 2 uses
  %.0.i.i248 = phi i16 [ -1, %bb.ix ], [ %i.beu, %bb.iy ]
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bcl, i64 22
  store i16 %.0.i.i248, ptr %i.bew, align 2, !tbaa !171
  %i.bex = zext nneg i32 %i.beo to i64
  %i.bey = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bex
  %i.bez = load i8, ptr %i.bey, align 1, !tbaa !123 ; 2 uses
  %.not66.i = icmp eq i8 %i.bez, 76
  br i1 %.not66.i, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %readTypeID.exit.i247
  %i.bfa = zext i8 %i.bez to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.323, i32 noundef %i.bfa) #24
  br label %bb.kc

bb.ja:                                            ; preds = %readTypeID.exit.i247
  %5 = zext nneg i32 %i.beo to i64
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.sj, i64 %5
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 1
  %i.bfd = load i8, ptr %i.bfc, align 1, !tbaa !123 ; 2 uses
  %i.bfe = zext i8 %i.bfd to i32                  ; 2 uses
  %i.bff = add nsw i32 %i.bfe, -96                ; 3 uses
  %i.bfg = icmp ugt i32 %i.bff, 16
  br i1 %i.bfg, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.bfe) #24
  br label %readNumber.exit.thread.i253

bb.jc:                                            ; preds = %bb.ja
  %i.bfh = add nuw nsw i32 %i.beo, 2              ; 2 uses
  %i.bfi = add nuw nsw i32 %i.bff, %i.bfh         ; 4 uses
  %i.bfj = icmp ugt i32 %i.bfi, %i.bcn
  br i1 %i.bfj, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %readNumber.exit.thread.i253

bb.je:                                            ; preds = %bb.jc
  %i.bfk = icmp eq i8 %i.bfd, 96
  br i1 %i.bfk, label %.split.i, label %.preheader.i76.i

.preheader.i76.i:                                 ; preds = %bb.je
  %.not176.i = icmp eq i32 %i.bff, 0
  br i1 %.not176.i, label %readNumber.exit.i255, label %.lr.ph.i79.preheader.i

.lr.ph.i79.preheader.i:                           ; preds = %.preheader.i76.i
  %i.bfl = zext i32 %i.bfh to i64                 ; 3 uses
  %i.bfm = zext i32 %i.bfi to i64
  %i.bfn = sub nsw i64 %i.bfm, %i.bfl
  %i.bfo = freeze i64 %i.bfn                      ; 4 uses
  %xtraiter4133 = and i64 %i.bfo, 1
  %i.bfp = icmp eq i64 %i.bfo, 1
  br i1 %i.bfp, label %.lr.ph.i79.i.epil.preheader, label %.lr.ph.i79.preheader.i.new

.lr.ph.i79.preheader.i.new:                       ; preds = %.lr.ph.i79.preheader.i
  %unroll_iter4137 = and i64 %i.bfo, -2
  br label %.lr.ph.i79.i

.split.i:                                         ; preds = %bb.je
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bcl, i64 2 ; 2 uses
  store i16 0, ptr %i.bfq, align 2, !tbaa !172
  br i1 %i.bev, label %bb.jg, label %.loopexit361

.lr.ph.i79.i:                                     ; preds = %bb.jf, %.lr.ph.i79.preheader.i.new
  %indvars.iv.i249 = phi i64 [ %i.bfl, %.lr.ph.i79.preheader.i.new ], [ %indvars.iv.next.i254.1, %bb.jf ] ; 3 uses
  %.03346.i.i250 = phi i32 [ 0, %.lr.ph.i79.preheader.i.new ], [ %i.bgk, %bb.jf ] ; 3 uses
  %.03545.i.i251 = phi i64 [ 0, %.lr.ph.i79.preheader.i.new ], [ %i.bgj, %bb.jf ]
  %niter4138 = phi i64 [ 0, %.lr.ph.i79.preheader.i.new ], [ %niter4138.next.1, %bb.jf ]
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i249
  %i.bfs = load i8, ptr %i.bfr, align 1, !tbaa !123 ; 2 uses
  %i.bft = zext i8 %i.bfs to i64                  ; 2 uses
  %i.bfu = and i64 %i.bft, 240
  %.not.i80.i = icmp eq i64 %i.bfu, 96
  br i1 %.not.i80.i, label %.lr.ph.i79.i.1, label %.thread.i.i252, !prof !134

.thread.i.i252:                                   ; preds = %.lr.ph.i79.i.epil.preheader, %.lr.ph.i79.i, %.lr.ph.i79.i.1
  %.lcssa3174 = phi i8 [ %i.bfy, %.lr.ph.i79.i.1 ], [ %i.bfs, %.lr.ph.i79.i ], [ %i.bgn, %.lr.ph.i79.i.epil.preheader ]
  %i.bfv = sext i8 %.lcssa3174 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.bfv) #24
  br label %readNumber.exit.thread.i253

.lr.ph.i79.i.1:                                   ; preds = %.lr.ph.i79.i
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i249
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfw, i64 1
  %i.bfy = load i8, ptr %i.bfx, align 1, !tbaa !123 ; 2 uses
  %i.bfz = zext i8 %i.bfy to i64                  ; 2 uses
  %i.bga = and i64 %i.bfz, 240
  %.not.i80.i.1 = icmp eq i64 %i.bga, 96
  br i1 %.not.i80.i.1, label %bb.jf, label %.thread.i.i252, !prof !134

bb.jf:                                            ; preds = %.lr.ph.i79.i.1
  %i.bgb = or disjoint i32 %.03346.i.i250, 4
  %i.bgc = and i64 %i.bft, 15
  %i.bgd = zext nneg i32 %.03346.i.i250 to i64
  %i.bge = shl i64 %i.bgc, %i.bgd
  %i.bgf = or i64 %i.bge, %.03545.i.i251
  %i.bgg = and i64 %i.bfz, 15
  %i.bgh = zext nneg i32 %i.bgb to i64
  %i.bgi = shl i64 %i.bgg, %i.bgh
  %i.bgj = or i64 %i.bgi, %i.bgf                  ; 3 uses
  %i.bgk = add i32 %.03346.i.i250, 8              ; 2 uses
  %indvars.iv.next.i254.1 = add nuw nsw i64 %indvars.iv.i249, 2 ; 2 uses
  %niter4138.next.1 = add i64 %niter4138, 2       ; 2 uses
  %niter4138.ncmp.1 = icmp eq i64 %niter4138.next.1, %unroll_iter4137
  br i1 %niter4138.ncmp.1, label %readNumber.exit.i255.loopexit.unr-lcssa, label %.lr.ph.i79.i

readNumber.exit.thread.i253:                      ; preds = %.thread.i.i252, %bb.jd, %bb.jb
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bcl, i64 2
  store i16 0, ptr %i.bgl, align 2, !tbaa !172
  br label %.loopexit361

readNumber.exit.i255.loopexit.unr-lcssa:          ; preds = %bb.jf
  %lcmp.mod4134.not = icmp eq i64 %xtraiter4133, 0
  br i1 %lcmp.mod4134.not, label %readNumber.exit.i255, label %.lr.ph.i79.i.epil.preheader

.lr.ph.i79.i.epil.preheader:                      ; preds = %readNumber.exit.i255.loopexit.unr-lcssa, %.lr.ph.i79.preheader.i
  %indvars.iv.i249.epil.init = phi i64 [ %i.bfl, %.lr.ph.i79.preheader.i ], [ %indvars.iv.next.i254.1, %readNumber.exit.i255.loopexit.unr-lcssa ]
  %.03346.i.i250.epil.init = phi i32 [ 0, %.lr.ph.i79.preheader.i ], [ %i.bgk, %readNumber.exit.i255.loopexit.unr-lcssa ]
  %.03545.i.i251.epil.init = phi i64 [ 0, %.lr.ph.i79.preheader.i ], [ %i.bgj, %readNumber.exit.i255.loopexit.unr-lcssa ]
  %lcmp.mod4136 = trunc i64 %i.bfo to i1
  call void @llvm.assume(i1 %lcmp.mod4136)
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i249.epil.init
  %i.bgn = load i8, ptr %i.bgm, align 1, !tbaa !123 ; 2 uses
  %i.bgo = zext i8 %i.bgn to i64                  ; 2 uses
  %i.bgp = and i64 %i.bgo, 240
  %.not.i80.i.epil = icmp eq i64 %i.bgp, 96
  br i1 %.not.i80.i.epil, label %readNumber.exit.i255.loopexit.epilog-lcssa, label %.thread.i.i252, !prof !134

readNumber.exit.i255.loopexit.epilog-lcssa:       ; preds = %.lr.ph.i79.i.epil.preheader
  %i.bgq = and i64 %i.bgo, 15
  %i.bgr = zext nneg i32 %.03346.i.i250.epil.init to i64
  %i.bgs = shl i64 %i.bgq, %i.bgr
  %i.bgt = or i64 %i.bgs, %.03545.i.i251.epil.init
  br label %readNumber.exit.i255

readNumber.exit.i255:                             ; preds = %readNumber.exit.i255.loopexit.epilog-lcssa, %readNumber.exit.i255.loopexit.unr-lcssa, %.preheader.i76.i
  %.035.lcssa.i.i = phi i64 [ 0, %.preheader.i76.i ], [ %i.bgj, %readNumber.exit.i255.loopexit.unr-lcssa ], [ %i.bgt, %readNumber.exit.i255.loopexit.epilog-lcssa ] ; 2 uses
  %i.bgu = trunc i64 %.035.lcssa.i.i to i16
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bcl, i64 2 ; 2 uses
  store i16 %i.bgu, ptr %i.bgv, align 2, !tbaa !172
  br i1 %i.bev, label %bb.jg, label %.loopexit361

.loopexit361:                                     ; preds = %readNumber.exit.i255, %.split.i, %readNumber.exit.thread.i253
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.324) #24
  br label %bb.kc

bb.jg:                                            ; preds = %readNumber.exit.i255, %.split.i
  %i.bgw = phi ptr [ %i.bfq, %.split.i ], [ %i.bgv, %readNumber.exit.i255 ]
  %.2.i78181.i = phi i64 [ 0, %.split.i ], [ %.035.lcssa.i.i, %readNumber.exit.i255 ]
  %i.bgx = load i8, ptr %i.bcl, align 8, !tbaa !108
  %i.bgy = zext i8 %i.bgx to i32
  %i.bgz = trunc i64 %.2.i78181.i to i32
  %i.bha = and i32 %i.bgz, 65535
  %i.bhb = add nuw nsw i32 %i.bha, %i.bgy         ; 2 uses
  %.not67.i = icmp eq i32 %i.bhb, 0
  br i1 %.not67.i, label %._crit_edge.thread.i261, label %bb.jh

._crit_edge.thread.i261:                          ; preds = %bb.jg
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bcl, i64 24
  store ptr null, ptr %i.bhc, align 8, !tbaa !112
  store i8 1, ptr %i.c, align 1
  br label %bb.js

bb.jh:                                            ; preds = %bb.jg
  %i.bhd = zext nneg i32 %i.bhb to i64            ; 2 uses
  %i.bhe = call noalias ptr @calloc(i64 noundef %i.bhd, i64 noundef 2) #23 ; 2 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bcl, i64 24 ; 2 uses
  store ptr %i.bhe, ptr %i.bhf, align 8, !tbaa !112
  %.not68.i = icmp eq ptr %i.bhe, null
  br i1 %.not68.i, label %bb.ji, label %.lr.ph.i256

bb.ji:                                            ; preds = %bb.jh
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.325) #24
  br label %bb.kc

.lr.ph.i256:                                      ; preds = %bb.jh, %readFixedNumber.exit108.thread.i
  %indvars.iv155.i = phi i64 [ %indvars.iv.next156.i, %readFixedNumber.exit108.thread.i ], [ 0, %bb.jh ] ; 2 uses
  %i.bhg = phi i32 [ %i.bjo, %readFixedNumber.exit108.thread.i ], [ %i.bfi, %bb.jh ] ; 5 uses
  %i.bhh = phi i8 [ %i.bjn, %readFixedNumber.exit108.thread.i ], [ 1, %bb.jh ] ; 2 uses
  %i.bhi = zext i32 %i.bhg to i64
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.bhi
  %i.bhk = load i8, ptr %i.bhj, align 1, !tbaa !123
  %.fr4271 = freeze i8 %i.bhk                     ; 3 uses
  %i.bhl = zext i8 %.fr4271 to i32                ; 2 uses
  %i.bhm = add nsw i32 %i.bhl, -96                ; 4 uses
  %i.bhn = icmp ugt i32 %i.bhm, 16
  br i1 %i.bhn, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %.lr.ph.i256
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.bhl) #24
  br label %readNumber.exit94.i

bb.jk:                                            ; preds = %.lr.ph.i256
  %i.bho = add i32 %i.bhg, 1                      ; 3 uses
  %i.bhp = add i32 %i.bhm, %i.bho                 ; 4 uses
  %i.bhq = icmp ugt i32 %i.bhp, %i.bcn
  br i1 %i.bhq, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %readNumber.exit94.i

bb.jm:                                            ; preds = %bb.jk
  %i.bhr = icmp ne i8 %.fr4271, 96
  %i.bhs = icmp ult i32 %i.bho, %i.bhp
  %or.cond.i258 = and i1 %i.bhr, %i.bhs
  br i1 %or.cond.i258, label %.lr.ph.i86.preheader.i, label %readNumber.exit94.i

.lr.ph.i86.preheader.i:                           ; preds = %bb.jm
  %i.bht = zext i32 %i.bho to i64                 ; 2 uses
  %i.bhu = zext nneg i32 %i.bhm to i64            ; 2 uses
  %xtraiter4143 = and i64 %i.bhu, 1
  %i.bhv = icmp eq i32 %i.bhm, 1
  br i1 %i.bhv, label %.lr.ph.i86.i.epil.preheader, label %.lr.ph.i86.preheader.i.new

end_hunk_1
